-- NBA Jam (Genesis): the two hidden screens, patched in through cartridge memory.
-- python tools/emu/bizhawk.py tools/tests/genesis_screens.lua <Genesis ROM>
-- Original: the Team Player device-error screen ($1D9F24). Rev 1: the region-lock screen (Sega's check at $2FA).
if memory.read_u8(0x1F0,"MD CART")==0x45 then  -- header region "EU": original
  wait(300)
  memory.write_u8(0x1D9DA6,0x60,"MD CART")     -- pad ID check always takes the Team Player path
  for i,v in ipairs({0x4E,0xF9,0x00,0x1D,0x9F,0x24}) do memory.write_u8(0x1D9DCE+i-1,v,"MD CART") end  -- jmp $1D9F24
  wait(360) shot("genesis_device_error")
else                                            -- "UE": Rev 1
  memory.write_u8(0x42C,0x58,"MD CART")         -- region table: a US console no longer matches
  wait(5)
  joypad.set({["Reset"]=true}) emu.frameadvance() joypad.set({["Reset"]=false})
  wait(120) shot("genesis_rev1_region")
end
