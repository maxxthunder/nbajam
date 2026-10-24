"""Run a Mesen 2 Lua snippet headless (Mesen.exe --testrunner). Set MESEN to Mesen.exe.
Usage: python tools/emu/mesen.py script.lua rom -> writes <name>.png for each shot(name) and <name>.ram for dump(name)."""
import subprocess, sys, re, binascii, os
HERE=os.path.dirname(os.path.abspath(sys.argv[1]))  # output goes next to the script
PRE=r'''
function hex(s) return (s:gsub('.', function(c) return string.format('%02x', c:byte()) end)) end
function dump(name) local t={} for a=0,0x1FFFF do t[#t+1]=string.format('%02x',emu.read(a,emu.memType.snesWorkRam)) end print('DUMP '..name..' '..table.concat(t)) end
function shot(name) print("SHOT "..name.." "..hex(emu.takeScreenshot())) end
q={} ; local fr=0
function wait(n) for i=1,n do q[#q+1]={} end end
function press(b,n) n=n or 4; for i=1,n do q[#q+1]=b end; wait(6) end
function at(fn) q[#q+1]=fn end
function typeidx(idx)
  at(function()
    local c=rd(0x16C4); local moves={}
    local dr=(idx//4)-(c//4); local dc=(idx%4)-(c%4)
    local function add(b,n) for i=1,math.abs(n) do for k=1,4 do moves[#moves+1]=b end for k=1,8 do moves[#moves+1]={} end end end
    add(dr>0 and {down=true} or {up=true}, dr)
    add(dc>0 and {right=true} or {left=true}, dc)
    for k=1,4 do moves[#moves+1]={a=true} end for k=1,12 do moves[#moves+1]={} end
    for i=#moves,1,-1 do table.insert(q,1,moves[i]) end
  end)
end
function typestr(s, abc) for i=1,#s do typeidx(abc:find(s:sub(i,i),1,true)-1) end end
INI="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
PW="BCDFGHJKLMNPQRSTVWXYZ12345"
local pend=nil
function atframe(fn) at(function() pend=fn end) end
local NMI=emu.read(0xFFEA,emu.memType.snesMemory)+emu.read(0xFFEB,emu.memType.snesMemory)*256
emu.addMemoryCallback(function() if pend then local f=pend; pend=nil; local ok,e=pcall(f); if not ok then print("ERR "..tostring(e)) end end end, emu.callbackType.exec, NMI, NMI, emu.cpuType.snes, emu.memType.snesMemory)
function rd(a) return emu.read(a, emu.memType.snesWorkRam) end
emu.addEventCallback(function()
  local s=table.remove(q,1)
  if s==nil then emu.stop(0) return end
  if type(s)=="function" then s() s={} end
  emu.setInput(s,0)
end, emu.eventType.inputPolled)
'''
src=PRE+open(sys.argv[1]).read()
open(os.path.join(HERE,'_s.lua'),'w').write(src)
rom=sys.argv[2]
p=subprocess.run([os.environ.get("MESEN", "Mesen.exe"),"--testrunner",rom,os.path.join(HERE,'_s.lua')],capture_output=True,text=True,timeout=600)
for line in p.stdout.splitlines():
    if line.startswith("SHOT "):
        _,n,h=line.split(" ",2); open(os.path.join(HERE,n+".png"),"wb").write(binascii.unhexlify(h)); print("wrote",n)
    elif line.startswith("DUMP "):
        _,n,h=line.split(" ",2); open(os.path.join(HERE,n+".ram"),"wb").write(binascii.unhexlify(h)); print("dumped",n)
    elif "Uninitialized" not in line: print(line)
print("rc",p.returncode)
