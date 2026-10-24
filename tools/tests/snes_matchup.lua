-- NBA Jam (Super Nintendo): the seven match-up power-ups and the published shot % slip.
-- python tools/emu/mesen.py tools/tests/snes_matchup.lua "roms/NBA Jam (USA).sfc"  -> RES lines with the flags ($0AC6-$0AF0, $1D39).
local W=emu.memType.snesWorkRam
local function rd16(a) return emu.read(a,W)|emu.read(a+1,W)<<8 end
local DIRS={{up=true},{up=true,right=true},{right=true},{down=true,right=true},{down=true},{down=true,left=true},{left=true},{up=true,left=true}}
local function code(taps, hold, rot)
  local f={} local n=0
  for i=1,taps do for k=1,4 do local t={b=true} if rot then for d,v in pairs(DIRS[(n//4)%8+1]) do t[d]=v end end f[#f+1]=t n=n+1 end
    for k=1,4 do local t={} if rot then for d,v in pairs(DIRS[(n//4)%8+1]) do t[d]=v end end f[#f+1]=t n=n+1 end end
  return f, hold
end
local C={
 {"defense",4,{b=true}},{"steals",14,{b=true},true},{"shot",1,{b=true,a=true,down=true}},{"shot_pub",1,{b=true,a=true}},
 {"dunks",12,{b=true},true},{"fire",7,{b=true,y=true,up=true}},{"turbo",6,{y=true,b=true,a=true}},{"juice",13,{b=true,x=true}},{"none",0,nil}}
wait(1900) press({start=true}) wait(60) press({start=true}) wait(90)
press({a=true}) wait(90) press({a=true}) wait(20) press({a=true}) wait(20) press({a=true}) wait(60)
press({a=true}) wait(60) press({a=true}) wait(150)
for k=1,4 do press({start=true},6) wait(150) end
local st
atframe(function() st=emu.createSavestate() end) wait(10)
for _,c in ipairs(C) do
  atframe(function() emu.loadSavestate(st) end) wait(10)
  local f=code(c[2],c[3],c[4]) for _,t in ipairs(f) do q[#q+1]=t end
  if c[3] then for k=1,500 do q[#q+1]=c[3] end else wait(500) end
  at(function() local s=c[1].." cnt="..rd16(0x1CF9).." dirs="..string.format("%02X",emu.read(0x1D01,W)).." held="..string.format("%04X",rd16(0x1D09))
    for _,a in ipairs({0x0AC6,0x0AC8,0x0AD0,0x0AD8,0x0AE0,0x0AE8,0x0AF0,0x1D39}) do s=s..string.format(" %04X=%d",a,rd16(a)) end print("RES "..s) end) wait(2)
end
