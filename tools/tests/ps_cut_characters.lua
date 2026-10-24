-- Tournament Edition (PlayStation): the three roster records no code points to (WRIGHT, KITA, SPRITE BOY).
-- Points the CAT entry of the secret table ($801EE324) at each record, enters CAT January 2 and shoots team select.
-- python tools/emu/bizhawk.py tools/tests/ps_cut_characters.lua <PlayStation CHD>
dofile(OUT.."pslib.lua")
boot()
local st=memorysavestate.savecorestate()
for _,c in ipairs({{"cat",0x801EAE38},{"wright",0x801EAE6C},{"kita",0x801EB248},{"sprite_boy",0x801EB318}}) do
  memorysavestate.loadcorestate(st)
  memory.write_u32_le(0x1EE324,c[2],"System Bus")
  HOLD={L1=true,R1=true}
  code("CAT",1,2) HOLD={} wait(500) press({X=true},8) wait(250) shot("cut_"..c[1])
  press({X=true},8) for k=1,12 do wait(150) press({X=true},8) end wait(600) shot("cut_"..c[1].."_play")
  log(c[1].." "..string.format("%08X",memory.read_u32_le(0x1EE324,"System Bus")))
end
