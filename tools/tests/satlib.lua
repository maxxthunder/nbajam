local L="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
HOLD={L=true,R=true}
function p(b,n) local t={} for k,v in pairs(HOLD) do t[k]=v end for k,v in pairs(b) do t[k]=v end press(t,n) end
POS=0
local function curidx() local v=memory.read_u8(0x673B4+POS,"Work Ram High") if v>=65 and v<=90 then return v-65 elseif v==32 then return 26 end return v end
function letter(ch)
  local idx=(ch==" " or ch=="_") and 26 or L:find(ch,1,true)-1
  for tries=1,30 do
    local c=curidx(); if DBG then log("pos "..POS.." c="..c.." want="..idx) end if c==idx then break end
    local dr=(idx//4)-(c//4); local dc=(idx%4)-(c%4)
    if dc~=0 then press({[dc>0 and "Right" or "Left"]=true},4) else press({[dr>0 and "Down" or "Up"]=true},4) end
    wait(30)
  end
  wait(30) press(HOLD,6) p({A=true},8) wait(40)
  POS=POS+1
end
function boot() for k=1,6 do wait(400) end for k=7,11 do press({Start=true},8) wait(200) end end
function gridpick(idx, cols, addr)
  for tries=1,40 do
    local c=memory.read_u8(addr,"Work Ram High"); if c==idx then break end
    local dr=(idx//cols)-(c//cols); local dc=(idx%cols)-(c%cols)
    if dr~=0 then press({[dr>0 and "Down" or "Up"]=true},6) else press({[dc>0 and "Right" or "Left"]=true},6) end
    wait(40)
  end
  wait(30) press(HOLD,6) p({A=true},8) wait(60)
end
function code(ini,m,d) POS=0 for i=1,3 do letter(ini:sub(i,i)) end wait(180) gridpick(m-1,2,0x1FAB) gridpick(d-1,4,0x1FB3) end
