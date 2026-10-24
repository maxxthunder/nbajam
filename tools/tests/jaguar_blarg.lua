-- Tournament Edition (Jaguar): BLARG ($8D) on the ROOKIES team. Set BLARG=0 in the environment for the control run.
-- python tools/emu/bizhawk.py tools/tests/jaguar_blarg.lua <Jaguar ROM>
-- With BLARG the emulator itself hangs on the press that would show him (no r1 shot; stop it by hand); without,
-- r1 shows Dumas and Montross.
BLARG=os.getenv("BLARG")~="0"
local L="ABCDEFGHIJKLMNOPQRSTUVWXYZ_"
local cur=0
local function moveto(idx)
  local dr=(idx//4)-(cur//4); local dc=(idx%4)-(cur%4)
  for i=1,math.abs(dr) do press({[dr>0 and "Down" or "Up"]=true},4) wait(8) end
  for i=1,math.abs(dc) do press({[dc>0 and "Right" or "Left"]=true},4) wait(8) end
  cur=idx
end
wait(600)
if BLARG then  -- ROOKIES pair list at $81D01A: Dumas ($8E) -> BLARG ($8D), in cartridge memory (a patched file fails the boot check)
  for a=0x1D01A,0x1D048,2 do if memory.read_u16_be(a,"ROM")==0x8E then memory.write_u16_be(a,0x8D,"ROM") end end
end
wait(1400) press({B=true},5) wait(120) press({B=true},5) wait(120) press({B=true},5) wait(120)
for i=1,3 do moveto(L:find("Q",1,true)-1) press({B=true},5) wait(25) end
wait(150) press({B=true},5) wait(330)
for i=1,4 do press({Left=true},5) wait(40) end for i=1,4 do press({Down=true},5) wait(40) end
press({Up=true},5) wait(60) shot("r0") log("ROOKIES")       -- Montross and Kidd
press({B=true},5) wait(60) shot("r1") log("second pair")    -- Dumas (or BLARG) and Montross
