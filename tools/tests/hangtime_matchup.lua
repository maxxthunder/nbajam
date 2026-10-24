-- NBA Hangtime (arcade): the 13 Tonight's Match-Up codes (table FFB624C0h). Enters each on player 1's buttons and logs
-- the 13 flag words (@1136C20h + 10h per code) once play starts; each code sets only its own word (to F).
-- python tools/emu/mame.py nbahangt tools/tests/hangtime_matchup.lua roms   (needs set-up NVRAM, like hangtime_names.lua)
local C={"111","025","048","937","616","709","802","284","552","273","461","390","120"}
local B={"P1 Turbo","P1 Shoot / Block","P1 Pass / Steal"}
wait(600) hold({"Coin 1"},6) wait(60) hold({"Coin 1"},6) wait(60) hold({"1 Player Start"},6) wait(240)
hold({"P1 Shoot / Block"},6) wait(120)
for k=1,10 do hold({"P1 Shoot / Block"},6) wait(40) end    -- AAAAAA 0000
wait(300) hold({"P1 Shoot / Block"},6) wait(60)            -- team select -> Tonight's Match-Up
run(function() manager.machine:save("htmu") end) wait(5)
for _,c in ipairs(C) do
  run(function() manager.machine:load("htmu") end) wait(20)
  hold({"P1 Up"},4) wait(10)                                -- the first input after a load is dropped; the joystick alone counts nothing
  for j=1,3 do for k=1,tonumber(c:sub(j,j)) do hold({B[j]},4) wait(10) end end
  wait(20) shot("mu_"..c)
  wait(500)
  run(function() local t={} for k=0,12 do t[#t+1]=string.format("%X",mem:read_u16(0x1136C20+0x10*k)) end log(c.." flags "..table.concat(t," ")) end)
  for k=1,6 do hold({"P1 Shoot / Block"},6) wait(40) end   -- page through the tip boxes
  wait(20) shot("mu_"..c.."_tipoff")
end
