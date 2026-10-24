-- NBA Jam TE (Super Nintendo): which head each player ID uses. Forces every ID into slot 1 ($7E169F, the override
-- published codes use), plays to tip-off and logs the player struct's ID ($7E07D8) and head field ($7E07DA = head x 32).
-- python tools/emu/bizhawk.py tools/tests/snes_te_heads.lua "roms/NBA Jam - Tournament Edition (USA).sfc"
local function p(b,n) local t={} for k,v in pairs(b) do t["P1 "..k]=v end for f=1,(n or 6) do joypad.set(t) emu.frameadvance() end end
local function ovr(id) memory.write_u8(0x169F,id,"WRAM") memory.write_u8(0x16A0,0,"WRAM") end
wait(1960)
local st=memorysavestate.savecorestate()
for id=0,0xA9 do
  memorysavestate.loadcorestate(st) wait(2) ovr(id)
  p({Start=true}) wait(100) ovr(id) p({Start=true}) wait(160) p({Down=true},10) wait(40) ovr(id) p({Start=true}) wait(100)
  for i=2,9 do ovr(id) p({Start=true}) wait(120) end
  wait(150)
  log(string.format("%02X id=%02X da=%04X", id, memory.read_u8(0x7D8,"WRAM"), memory.read_u16_le(0x7DA,"WRAM")))
end
