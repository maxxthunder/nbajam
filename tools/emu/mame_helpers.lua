-- Prepended by mame.py. OUT is set by the runner. Queue-based input: hold(names, frames), wait(frames), run(fn),
-- shot(name) (raw frames, converted to PNG afterwards), log(s), rd16/wr16 on the main CPU, keep(names) to hold
-- fields every frame, everyframe = function() ... end for per-frame logic.
local logf=io.open(OUT.."log.txt","w")
function log(s) logf:write(tostring(s).."\n") logf:flush() end
local q={}
local scr=manager.machine.screens[":screen"]
local ports=manager.machine.ioport.ports
local mem=manager.machine.devices[":maincpu"].spaces["program"]
function field(name) for tag,p in pairs(ports) do if p.fields[name] then return p.fields[name] end end log("NOFIELD "..name) end
function hold(names,n) q[#q+1]={hold=names,n=n or 6} end
function wait(n) q[#q+1]={hold={},n=n} end
function run(fn) q[#q+1]={fn=fn} end
function shot(name) run(function() local px,w,h=scr:pixels() local fh=io.open(OUT..name..".raw","wb") fh:write(string.pack("<I4I4",w,h)) fh:write(px) fh:close() end) end
function rd16(a) return mem:read_u16(a) end
function wr16(a,v) mem:write_u16(a,v) end
local left=0; local held={}
everyframe=nil
local extra={}
function keep(names) extra={} for _,n in ipairs(names) do extra[#extra+1]=field(n) end end
sub=emu.add_machine_frame_notifier(function()
  if everyframe then everyframe() end
  for _,fl in ipairs(extra) do fl:set_value(1) end
  if left<=0 then
    for _,fl in ipairs(held) do fl:set_value(0) end held={}
    local cur=table.remove(q,1)
    if not cur then logf:close() manager.machine:exit() return end
    if cur.fn then local ok,e=pcall(cur.fn) if not ok then log("ERR "..tostring(e)) end return end
    for _,n in ipairs(cur.hold) do local fl=field(n) if fl then fl:set_value(1) held[#held+1]=fl end end
    left=cur.n
  end
  left=left-1
end)
