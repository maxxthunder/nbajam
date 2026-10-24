local L="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
HOLD={}
PICK="X"
function p(b,n) local t={} for k,v in pairs(HOLD) do t[k]=v end for k,v in pairs(b) do t[k]=v end press(t,n) end
POS=0
local function curidx() local v=memory.read_u8(0x1EA01C+POS,"System Bus") if v>=65 and v<=90 then return v-65 elseif v==32 then return 26 elseif v==92 then return 27 end return v end
function letter(ch)
  local idx=(ch==" " or ch=="_") and 26 or L:find(ch,1,true)-1
  for tries=1,30 do
    local c=curidx(); if DBG then log("pos "..POS.." c="..c.." want="..idx) end if c==idx then break end
    local dr=(idx//4)-(c//4); local dc=(idx%4)-(c%4)
    if dc~=0 and not (c//4==6 and dr~=0) then press({[dc>0 and "D-Pad Right" or "D-Pad Left"]=true},4) else press({[dr>0 and "D-Pad Down" or "D-Pad Up"]=true},4) end
    wait(30)
  end
  wait(30) press(HOLD,6) p({[PICK]=true},8) wait(40)
  POS=POS+1
end
function boot() wait(3400) for k=1,5 do press({Start=true},8) wait(200) end end
function gridpick(idx, cols)
  for tries=1,40 do
    local c=memory.read_u8(0x1F3264,"System Bus")*cols+memory.read_u8(0x1F3250,"System Bus"); if c==idx then break end
    local dr=(idx//cols)-(c//cols); local dc=(idx%cols)-(c%cols)
    if dc~=0 then press({[dc>0 and "D-Pad Right" or "D-Pad Left"]=true},6) else press({[dr>0 and "D-Pad Down" or "D-Pad Up"]=true},6) end
    wait(40)
  end
  wait(30) press(HOLD,6) p({[PICK]=true},8) wait(60)
end
function code(ini,m,d) POS=0 for i=1,3 do letter(ini:sub(i,i)) end wait(180) gridpick(m-1,2) wait(60) gridpick(d-1,4) end
