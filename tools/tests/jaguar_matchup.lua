-- Tournament Edition (Jaguar): all 24 match-up sequences from the pointer table at $81C36C.
-- python tools/emu/bizhawk.py tools/tests/jaguar_matchup.lua <Jaguar ROM>  -> each code's bit in the masks at $6922.
local L="ABCDEFGHIJKLMNOPQRSTUVWXYZ_"
local cur=0
local function moveto(idx)
  local dr=(idx//4)-(cur//4); local dc=(idx%4)-(cur%4)
  for i=1,math.abs(dr) do press({[dr>0 and "Down" or "Up"]=true},4) wait(8) end
  for i=1,math.abs(dc) do press({[dc>0 and "Right" or "Left"]=true},4) wait(8) end
  cur=idx
end
local function enter(ini,code)
  for i=1,3 do
    moveto(L:find(ini:sub(i,i),1,true)-1)
    local b=code:sub(i,i)
    if b=="-" then press({B=true},5) else press({Option=true},4) press({Option=true,[b]=true},5) end
    wait(25)
  end
end
local function r16(a) return memory.read_u16_be(a,"System Bus") end
wait(2000) press({B=true},5) wait(120) press({B=true},5) wait(120) press({B=true},5) wait(120)
enter("QQQ","---") wait(150) press({B=true},5) wait(330) shot("jm_a")
local function hx(a,n) local t="" for k=0,n-1 do t=t..string.format("%02X",memory.read_u8(a+k,"System Bus")) end return t end
for r=1,3 do press({A=true,C=true},12) wait(40) end wait(10) shot("jmu_start")
local st=memorysavestate.savecorestate()
local C={{"C","Down","C","Down","C","Down","C","Down","C","Down"},{"B","A","B","Up","Down","Left","Right"},{"Down","Up","Down","B","Up"},{"Left","Right","A","B","Right","Left"},{"Right","Up","Down","Down","Right","Up"},{"Down","Right","A","A","B","Left"},{"B","B","Down","Down","A","A","Up","Left"},{"A","Up","B","Down","B","Left","Right"},{"Up","Down","Down","Left","Left","Right","Up"},{"Right","Left","B","A","B","A"},{"B","Right","A","Down","A","Right","B"},{"Down","Up","Down","Up","Left","Left","Left","Left","A","A"},{"Down","Left","Right","Up","Left","Left","Left","Left","A","B"},{"Down","Right","Right","A","A","Down","Left","Left","Right","B"},{"Up","Left","Left","Down","Right","Up","A","B","A","A","A","Down"},{"Up","Up","Down","Down","Left","Right","Left","Left","B","A"},{"B","A","Down","A","B","Right","Right","Right","Right","Right"},{"Up","C","A"},{"Up","Up","Up","B","C","A","A","A","A","A","A"},{"Right","Right","Right","Right","Right","Right","B","B","B"},{"A","B","C","Down","Down","Down","Down","Down","Down","Down"},{"A","Left","Left","Down","Right","A","A","B","B","Left"},{"A","B","C","C","B","A","A","B","C","C","B","A"},{"Right","Up","Left","Right","B","Down","A"}}
for i,c in ipairs(C) do memorysavestate.loadcorestate(st)
  for _,b in ipairs(c) do press({[b]=true},6) wait(6) end
  local m="" for k=1,60 do wait(15) m=hx(0x6914,12).." "..hx(0x6922,20) if hx(0x6922,20)~=string.rep("0",40) or hx(0x6914,12)~=string.rep("0",24) then break end end
  log((i-1).." "..m)
end
