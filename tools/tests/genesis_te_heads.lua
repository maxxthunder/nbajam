-- NBA Jam TE (Genesis): which head each player ID uses. Writes every ID ($00-$A9) over Phoenix's first player in the
-- team pair table (cartridge 0x2DC8CC), plays to tip-off and logs player 1's head-frame pointer ($FF4446 + $58), an
-- entry in the frame table at 0x29C144 (head x 64 + facing x 4).
-- python tools/emu/bizhawk.py tools/tests/genesis_te_heads.lua "roms/NBA Jam - Tournament Edition (World).md"
local L="ABCDEFGHIJKLMNOPQRSTUVWXYZ_"
local cur=0
local function moveto(idx)
  local dr=(idx//4)-(cur//4); local dc=(idx%4)-(cur%4)
  for i=1,math.abs(dr) do press({[dr>0 and "Down" or "Up"]=true},3) wait(6) end
  for i=1,math.abs(dc) do press({[dc>0 and "Right" or "Left"]=true},3) wait(6) end
  cur=idx
end
wait(2000) press({Start=true}) wait(120)
press({Start=true}) wait(120) press({A=true}) wait(120) press({A=true}) wait(120)
for i=1,3 do moveto(L:find(("XYZ"):sub(i,i),1,true)-1) press({A=true},4) wait(20) end
wait(240)
local st=memorysavestate.savecorestate()
for id=0,0xA9 do
  memorysavestate.loadcorestate(st)
  memory.write_u16_be(0x2DC8CC,id,"MD CART")
  for k=1,2 do press({Start=true},6) wait(150) end
  wait(400)
  local p=memory.read_u32_be(0x4446+0x58,"68K RAM")
  log(string.format("%02X ptr=%08X head=%d", id, p, (p-0x29C144)//64))
end
