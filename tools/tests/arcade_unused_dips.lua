-- NBA Jam arcade rev 3.01: the three "UNUSED" DIP switches (raw 0x04, 0x08, 0x10), flipped by a read tap on the
-- switch word. Run once per FLIP (0, 4, 8, 16) with the same NVRAM and compare the shots: all identical. Do one run
-- first to set up the NVRAM: on fresh NVRAM the board stops on its CMOS INVALID screen.
-- FLIP=4 python tools/emu/mame.py nbajam tools/tests/arcade_unused_dips.lua roms
local FLIP=tonumber(os.getenv("FLIP") or "0")
local cpu=manager.machine.devices[":maincpu"]
local pcs={}
TAP=mem:install_read_tap(0x1600030,0x160003F,"dsw",function(off,data,mask)  -- bit addresses
  local pc=cpu.state["PC"].value pcs[pc]=(pcs[pc] or 0)+1
  if FLIP~=0 then return data ~ FLIP end
end)
for k=1,4 do wait(500) shot(string.format("dip%02X_%d",FLIP,k)) end
run(function() for pc,n in pairs(pcs) do log(string.format("read at %08X x%d",pc,n)) end end)
