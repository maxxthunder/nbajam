-- Tournament Edition (32X): enters each match-up code and dumps player 1's struct after tip-off (fields $12E-$14A).
-- python tools/emu/bizhawk.py tools/tests/32x_matchup_fields.lua <32X ROM>  -> compare each line with the 'none' line.
local L="ABCDEFGHIJKLMNOPQRSTUVWXYZ_"
local cur=0
local function moveto(idx)
  local dr=(idx//4)-(cur//4); local dc=(idx%4)-(cur%4)
  for i=1,math.abs(dr) do press({[dr>0 and "Down" or "Up"]=true},3) wait(6) end
  for i=1,math.abs(dc) do press({[dc>0 and "Right" or "Left"]=true},3) wait(6) end
  cur=idx
end
-- spec: 3 entries like "SA","A","SC" (S=start held)
local function enter(ini,spec)
  for i=1,3 do
    moveto(L:find(ini:sub(i,i),1,true)-1)
    local s=spec[i]; local t={}
    if s:sub(1,1)=="S" then t.Start=true; s=s:sub(2) end
    t[s]=true
    press(t,4) wait(20)
  end
end
local C={
 {"shot",{"Down","Up","Down","B","Up"}},{"steals",{"Left","Right","A","B","Right","Left"}},{"power",{"Right","Up","Left","Right","B","Down","A"}},
 {"goaltend",{"Right","Up","Down","Down","Right","Up"}},{"fire",{"Down","Right","A","A","B","Left"}},{"turbo",{"B","B","Down","Down","A","A","Up","Left"}},
 {"offense",{"A","Up","B","Down","B","Left","Right"}},{"threes",{"Up","Down","Down","Left","Left","Right","Up"}},{"dunks",{"Right","Left","B","A","B","A"}},
 {"blocks",{"B","Right","A","Down","A","Right","B"}},{"pushboth",{"Down","Up","Down","Up","Left","Left","Left","Left","A","A"}},
 {"pushmate",{"Down","Left","Right","Up","Left","Left","Left","Left","A","B"}},{"speed",{"Up","Up","Down","Down","Left","Right","Left","Left","B","A"}},
 {"teleport",{"Down","Right","Right","A","A","Down","Left","Left","Right","B"}},{"slippery",{"B","A","Down","A","B","Right","Right","Right","Right","Right"}},
 {"cut15",{"Down","Up","Down","Up","Down","Up","Left","Left","B","B"}},{"rainbow",{"Up","Left","Left","Down","Right","Up","A","B","A","A","Down"}},
 {"baby",{"B","A","B","Up","Down","Left","Right"}},{"turbo_rq87",{"B","B","Down","A","A","Up","Left"}}}
wait(1300) press({Start=true}) wait(120) press({Start=true}) wait(120) press({A=true}) wait(150) press({A=true}) wait(200)
enter("XYZ",{"A","A","A"}) wait(240)
for k=1,3 do press({Start=true},20) wait(150) end shot("x32mu")
local st=memorysavestate.savecorestate()
local function dump() local t={} for a=0x6730,0x6878,2 do t[#t+1]=string.format("%04X",memory.read_u16_be(a,"68K RAM")) end return table.concat(t," ") end
table.insert(C,1,{"none",{}})
for _,c in ipairs(C) do memorysavestate.loadcorestate(st)
  for _,b in ipairs(c[2]) do press({[b]=true},8) wait(8) end
  wait(900) log(c[1].." "..dump())
end
