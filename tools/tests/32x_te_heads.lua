-- NBA Jam TE (32X): which head each player ID uses. Writes every ID ($00-$A9) into team select's first slot ($FF1F24),
-- plays to tip-off and logs player 1's head-frame pointer ($FF6730 + $58), an entry in the frame table at cartridge
-- 0x324F0 ($8B24F0 to the 68000; head x 64 + facing x 4).
-- python tools/emu/bizhawk.py tools/tests/32x_te_heads.lua "roms/NBA Jam - Tournament Edition (World).32x"
local L="ABCDEFGHIJKLMNOPQRSTUVWXYZ_"
local cur=0
local function moveto(idx)
  local dr=(idx//4)-(cur//4); local dc=(idx%4)-(cur%4)
  for i=1,math.abs(dr) do press({[dr>0 and "Down" or "Up"]=true},3) wait(6) end
  for i=1,math.abs(dc) do press({[dc>0 and "Right" or "Left"]=true},3) wait(6) end
  cur=idx
end
wait(1300) press({Start=true}) wait(120) press({Start=true}) wait(120) press({A=true}) wait(150) press({A=true}) wait(200)
for i=1,3 do moveto(L:find(("XYZ"):sub(i,i),1,true)-1) press({A=true},4) wait(20) end
wait(240)
local st=memorysavestate.savecorestate()
for id=0,0xA9 do memorysavestate.loadcorestate(st)
  memory.write_u16_be(0x1F24,id,"68K RAM")
  for k=1,3 do press({Start=true},20) wait(150) memory.write_u16_be(0x1F24,id,"68K RAM") end
  wait(300)
  local p=memory.read_u32_be(0x6730+0x58,"68K RAM")
  log(string.format("%02X ptr=%08X head=%d", id, p, (p-0x8B24F0)//64))
end
