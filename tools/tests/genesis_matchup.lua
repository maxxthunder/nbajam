-- NBA Jam (Genesis): the seven match-up power-ups, tapping B until the press counter ($FF1D28) reaches the target.
-- python tools/emu/bizhawk.py tools/tests/genesis_matchup.lua "roms/NBA Jam (USA, Europe).md"  -> one log line per code with its flag set.
local L="ABCDEFGHIJKLMNOPQRSTUVWXYZ "
local cur=0
local function moveto(idx)
  local dr=(idx//4)-(cur//4); local dc=(idx%4)-(cur%4)
  for i=1,math.abs(dr) do press({[dr>0 and "Down" or "Up"]=true},3) wait(6) end
  for i=1,math.abs(dc) do press({[dc>0 and "Right" or "Left"]=true},3) wait(6) end
  cur=idx
end
local DIRS={{"Up"},{"Up","Right"},{"Right"},{"Down","Right"},{"Down"},{"Down","Left"},{"Left"},{"Up","Left"}}
local function frame(t) local u={} for k,v in pairs(t) do u["P1 "..k]=v end joypad.set(u) emu.frameadvance() end
local function run(taps, hold, rot)
  local n=0 local done=(taps==0) local k=0
  while k<700 do
    local t={}
    if not done then
      if n%8<4 then t.B=true end
      if rot then for _,d in ipairs(DIRS[(n//4)%8+1]) do t[d]=true end end
      n=n+1
      if n%8==0 and (memory.read_u16_be(0x1d28,"68K RAM")&0x7FFF)>=taps then done=true end
      if n>800 then done=true end
    else t=hold or {} k=k+1 end
    frame(t)
  end
end
local C={{"defense",4,{B=true}},{"intercept",14,{B=true},true},{"shot",1,{B=true,A=true,Down=true}},{"shot_pub",1,{B=true,A=true}},{"dunks",12,{B=true},true},
 {"fire",7,{B=true,C=true,Up=true}},{"turbo",6,{A=true,B=true,C=true}},{"juice",13,{B=true,C=true}},{"none",0,nil}}
wait(1700) press({Start=true}) wait(90) press({Start=true}) wait(150) press({A=true}) wait(150)
for i,c in ipairs({"Q","Q","Q"}) do moveto(L:find(c,1,true)-1) press({A=true},4) wait(20) end
wait(200) press({Start=true},6) wait(150) press({Start=true},6) wait(60)
local st=memorysavestate.savecorestate()
local function r8(a) return memory.read_u8(a,"68K RAM") end
for _,c in ipairs(C) do memorysavestate.loadcorestate(st)
  run(c[2],c[3],c[4])
  local s=c[1] for _,a in ipairs({0x1d28,0x1d29,0x1e12,0x1e16,0x1e1a,0x1d38,0x1d39,0x1d5a,0x1d5b}) do s=s..string.format(" %04X=%d",a,r8(a)) end log(s)
end
