-- NBA Jam arcade rev 3.01: Tonight's Match-Up codes. Set CODE (def, int, bighead, shot, assist) at the top.
-- python tools/emu/mame.py nbajam tools/tests/arcade_matchup.lua roms  -> log and tip-off shots.
local function flags(tag) run(function() log(string.format("%s pw=%d %d %d %d 59C0=%04X 59D0=%04X 1290=%d 12A0=%d 5340=%04X 83C0=%04X", tag, rd16(0x10F1250), rd16(0x10F1260), rd16(0x10F1270), rd16(0x10F1280), rd16(0x10E59C0), rd16(0x10E59D0), rd16(0x10F1290), rd16(0x10F12A0), rd16(0x10E5340), rd16(0x10F83C0))) end) end
function taps(b,n) for i=1,n do hold({b},3) wait(3) end end
function start(two)
  wait(1200) hold({"Coin 1"},8) wait(30) hold({"Coin 1"},8) wait(60)
  if two then hold({"Coin 3"},8) wait(60) end
  hold({"1 Player Start"},8) wait(two and 60 or 400)
  if two then hold({"3 Players Start"},8) wait(400) end
  hold({"P1 Down"},6) wait(30) hold({"P1 Shoot / Block"},6) wait(120)
  if two then hold({"P3 Up"},6) wait(30) hold({"P3 Shoot / Block"},6) wait(120) end
  flags("teamsel") hold({"P1 Shoot / Block"},6) if two then hold({"P3 Shoot / Block"},6) wait(30) hold({"1 Player Start"},8) wait(30) hold({"3 Players Start"},8) wait(30) hold({"1 Player Start","3 Players Start"},8) end wait(two and 1 or 100) flags("mu")
end
function finish(tag) wait(1) for i=1,30 do wait(40) flags(tag..i) shot(tag..i) end end
-- taps n times once the match-up counter window (@10F83C0) opens; hold=fields held after the taps
function dtaps(b,n,holdafter,rot)
  run(function()
    local fl=field(b) local k,t,on=0,0,false
    local hf={} for _,h in ipairs(holdafter or {}) do hf[#hf+1]=field(h) end
    local dirs={field("P1 Up"),field("P1 Right"),field("P1 Down"),field("P1 Left")}
    everyframe=function()
      if rd16(0x10F83C0)==0 and k==0 then return end
      t=t+1
      if rot then for i,d in ipairs(dirs) do d:set_value(((t//8)%4)+1==i and 1 or 0) end end
      if k<n then
        if t%8==1 then fl:set_value(1) elseif t%8==5 then fl:set_value(0) k=rd16(0x10F1250) if k>=n then log("taps done t="..t.." pw="..rd16(0x10F1250)) end end
      else for _,h in ipairs(hf) do h:set_value(1) end end
    end
  end)
end
-- after the match-up: tap Shoot until the help boxes are gone (@10E4920 = 0), then capture while the messages print
function tip(tag)
  wait(1) flags(tag.."_mu")
  run(function()
    local n,press,cleared,shots=0,0,nil,0 local sh=field("P1 Shoot / Block") local s3=field("P3 Shoot / Block")
    local prev,opened=everyframe,false
    everyframe=function()
      if prev then prev() end
      if rd16(0x10F83C0)==1 then opened=true end
      if not opened or rd16(0x10F83C0)==1 then return end
      n=n+1
      if press>0 then press=press-1 sh:set_value(press>0 and 1 or 0) if BOTH then s3:set_value(press>0 and 1 or 0) end end
      if n%10==0 then log(n.." 4920="..rd16(0x10E4920)) end
      if not NOPRESS and n<700 and n%40==0 then press=4 sh:set_value(1) if BOTH then s3:set_value(1) end end
      if shots<40 and n%25==0 then
        shots=shots+1 local px,w,h=scr:pixels() local fh=io.open(OUT..tag..shots..".raw","wb") fh:write(string.pack("<I4I4",w,h)) fh:write(px) fh:close()
      end
    end
  end)
  wait(1500) flags(tag.."_end") run(function() everyframe=nil end)
end

-- rev 3.01 checks: each run enters one code, then captures the tip-off messages (shots named after the code)
local which = CODE or "def"
if which=="def" then start() dtaps("P1 Pass / Steal",8) tip("def")
elseif which=="int" then NOPRESS=1 start() dtaps("P1 Pass / Steal",4,{"P1 Down","P1 Shoot / Block","P1 Pass / Steal","P1 Turbo"}) tip("int")
elseif which=="bighead" then NOPRESS=1 start() dtaps("P1 Pass / Steal",0,{"P1 Up","P1 Turbo","P1 Pass / Steal"}) tip("bighead")
elseif which=="shot" then start() dtaps("P1 Pass / Steal",15,nil,true) tip("shot")
elseif which=="assist" then BOTH=1 start(true) dtaps("P1 Pass / Steal",10) tip("assist") end
