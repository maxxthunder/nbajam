-- Tournament Edition (Saturn): all 19 match-up sequences (Saturn buttons) from a savestate at Tonight's Match-Up.
-- python tools/emu/bizhawk.py tools/tests/saturn_matchup.lua <Saturn CHD>  -> masks at $06070B94 and global bytes.
dofile(OUT.."satlib.lua")
local W="Work Ram High"
local function fl() local s="" for i=0,3 do s=s..string.format("%08X ",memory.read_u32_be(0x70B94+4*i,W)) end
  for _,a in ipairs({0x6F554,0x7141C,0x6D768,0x727E0,0x728C0}) do s=s..string.format("%02X",memory.read_u8(a,W)) end return s end
local C={{"Up","Up","Down","Down","A"},{"Left","Left","Left","Left","Y","Right"},{"Right","Right","Left","Right","C","C","Right"},{"Right","Up","Down","Right","Down","Up"},{"Down","Right","Right","Y","A","Left"},{"Y","Y","Y","B","Down","Down","Up","Left"},{"B","Y","Up","B","Y","Up","Down"},{"Up","Down","Left","Right","Left","Down","Up"},{"Left","Right","C","Y","Y","C"},{"Down","Right","C","Y","C","Right","Down"},{"Up","Up","Up","Up","Left","Left","Left","Left","Y","Y"},{"Up","Up","Up","Up","Left","Left","Left","Left","Y","A"},{"Up","Right","Right","Left","Y","Down","Left","Left","Y","B"},{"Up","Down","Up","Down","Right","Up","Y","Y","Y","Y","Down"},{"Up","Up","Up","Up","Left","Left","Left","Left","C","A"},{"Y","B","Y","B","Y","B"},{"A","C","A","C","A","C","A","C","A","C","A","C","A","C"},{"A","B","C","Y","A","B","C","Y"},{"Y","C","B","A","Y","C","B","A","Y","C","B","A","Y","C","B","A"}}
boot() HOLD={}
code("XYZ",1,1) wait(240) press({A=true},8) wait(150) press({Start=true},8) wait(300) shot("sm_start")
local st=memorysavestate.savecorestate()
for i,c in ipairs(C) do memorysavestate.loadcorestate(st)
  for _,b in ipairs(c) do press({[b]=true},6) wait(4) end
  local seen=fl() for k=1,30 do wait(20) seen=fl() if seen:find("[1-9A-F]") then break end end
  local h="" for k=0,9 do h=h..string.format("%04X ",memory.read_u16_be(0x73E38+2*k,W)) end
  log((i-1).." "..seen.." hist "..h)
end
