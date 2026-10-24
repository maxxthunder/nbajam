-- NBA Hang Time (Genesis): the six match-up joystick codes (detectors listed at $12B10). Enters each from a savestate
-- at Tonight's Match-Up, logs the flags, then tips off with Start (B presses could land the numbers on 1-1-1,
-- tournament mode, which clears every joystick flag) and logs them again with a shot of play.
-- python tools/emu/bizhawk.py tools/tests/genesis_hangtime_joystick.lua "roms/NBA Hang Time (USA).md"
local function fl() return string.format("court=%X hawaii=%X arrows=%X drift=%X assist=%X aba=%X", r8(0x297D), r8(0x297F), r16(0x1194), r16(0x1196), r16(0x1198), r16(0x119A)) end
wait(2100) press({Start=true},6) wait(120) press({Start=true},6) wait(120) press({A=true},6) wait(120) press({A=true},6) wait(120) press({Start=true},6) wait(90)
for k=1,10 do press({A=true},6) wait(25) end
wait(90) press({A=true},6) wait(150) press({Start=true},6) wait(60)
local id=memorysavestate.savecorestate()
local C={
 {"none",{}},
 {"rooftop",{{Left=true},{Left=true,B=true},{Left=true},{Left=true,B=true}}},
 {"hawaii",{{B=true},{A=true},{Right=true},{Right=true},{A=true},{C=true},{Up=true},{Down=true},{A=true}}},
 {"noarrows",{{Left=true},{Left=true},{C=true},{A=true}}},
 {"nodrift",{{Down=true},{Down=true},{B=true},{A=true}}},
 {"noassist",{{Right=true},{Right=true,C=true},{Right=true},{Right=true,C=true}}},
 {"aba",{{Right=true},{Right=true,A=true},{Right=true},{Right=true,B=true},{Right=true},{Right=true,C=true}}},
}
for _,c in ipairs(C) do
  memorysavestate.loadcorestate(id) wait(2) press({Mode=true},2) wait(10)  -- the first input after a load is dropped
  for _,b in ipairs(c[2]) do press(b,4) wait(6) end
  wait(10) log(c[1].." "..fl())
  for k=1,8 do press({Start=true},4) wait(40) end
  wait(300) shot("gen_ht_"..c[1]) log(c[1].." in play "..fl())
end
