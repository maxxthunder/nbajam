-- Tournament Edition (Genesis): which player field each match-up code sets after tip-off (the unused code sets none).
-- python tools/emu/bizhawk.py tools/tests/genesis_te_matchup_fields.lua <TE Genesis ROM>
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
wait(2000) press({Start=true}) wait(120)
press({Start=true}) wait(120) press({A=true}) wait(120) press({A=true}) wait(120)
enter("XYZ",{"A","A","A"}) wait(240)
for k=1,2 do press({Start=true},6) wait(150) shot("gmu_s"..k) end wait(20)
local st=memorysavestate.savecorestate()
local C={{"none",{}},{"Display shot percentage",{"Up","Up","Down","Down","B"}},{"Quick hands",{"Left","Left","Left","Left","A","Right"}},{"Maximum power",{"Right","Right","Left","Right","B","B","Right"}},{"Power-up goaltending",{"Right","Up","Down","Right","Down","Up"}},{"Power-up on fire",{"Down","Right","Right","B","A","Left"}},{"Power-up turbo",{"B","B","B","A","Down","Down","Up","Left"}},{"Power-up offense",{"A","B","Up","A","B","Up","Down"}},{"Power-up three pointers",{"Up","Down","Left","Right","Left","Down","Up"}},{"Power-up dunks",{"Left","Right","A","B","B","A"}},{"Power-up push",{"Down","Right","A","B","A","Right","Down"}},{"Push one opponent, both fall",{"Up","Up","Up","Up","Left","Left","Left","Left","A","A"}},{"Push one opponent, teammate falls",{"Up","Up","Up","Up","Left","Left","Left","Left","A","B"}},{"Super speed",{"Up","Up","Up","Up","Left","Left","Left","Left","B","A"}},{"Teleport pass",{"Up","Right","Right","Left","A","Down","Left","Left","Right","B"}},{"Slippery court",{"A","A","A","A","A","Right","Right","Right","Right","Right"}},{"Unused code",{"Down","Up","Down","Up","Down","Up","Left","Left","B","B"}},{"Rainbow arc shots",{"Up","Down","Up","Down","Right","Up","A","A","A","A","Down"}}}
for _,c in ipairs(C) do memorysavestate.loadcorestate(st)
  for _,b in ipairs(c[2]) do press({[b]=true},6) wait(6) end
  local seen={} for k=1,12 do wait(75) for a=0x12C,0x14E,2 do local v=memory.read_u16_be(0x4446+a,"68K RAM") if v==1 then seen[a]=true end end end
  local t={} for a=0x12C,0x14E,2 do if seen[a] then t[#t+1]=string.format("%X",a) end end
  log(c[1]..": "..table.concat(t," "))
end
