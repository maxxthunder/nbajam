-- NBA Jam (Super Nintendo): a 27-team password turns juice mode ($1D39) on at the second stats page.
-- python tools/emu/mesen.py tools/tests/snes_juice27.lua "roms/NBA Jam (USA).sfc"  (prints J1-J8: $1D39 after each step)
INI_S=INI_S or 'HRY' PW_S=PW_S or 'QF3B43TQJY55TF'
function w8(a,v) emu.write(a,v,emu.memType.snesWorkRam) end
wait(1900) press({start = true}) wait(60) press({start = true}) wait(90)
press({a = true}) wait(90)
press({a = true}) wait(20) press({a = true}) wait(20) press({a = true}) wait(60) press({a = true}) wait(60)
atframe(function()
  local r = rd(0x1724) + rd(0x1725) * 256
  for i = 1, 3 do w8(0x172E + r + i - 1, INI:find(INI_S:sub(i, i), 1, true) - 1) end
  for i = 0, 12 do local v = PW:find(PW_S:sub(i + 1, i + 1), 1, true) - 1
    w8((i % 2 == 0 and 0x16ED or 0x16EC) + 8 * (i // 2), v) end
  w8(0x16E4, 49) w8(0x16E5, 0) w8(0x16C4, PW:find(PW_S:sub(14, 14), 1, true) - 1) w8(0x16C5, 0)
end)
press({a = true})
for k=1,6 do wait(150) at(function() print("J"..k.." "..rd(0x1D39).." "..rd(0x16BC)) shot("j"..k) end) end
press({a=true}) wait(200) at(function() print("J7 "..rd(0x1D39)) shot("j7") end)
press({start=true}) wait(300) at(function() print("J8 "..rd(0x1D39)) shot("j8") end)
