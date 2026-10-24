"""Run a BizHawk Lua body with helpers, headless enough for scripted tests.

Usage: python tools/emu/bizhawk.py body.lua rom
Set EMUHAWK to EmuHawk.exe. The body gets press(btns, n), wait(n), shot(name), log(s) and r8/r16 (domain DOMAIN,
default "68K RAM"); output (log.txt, PNG shots) goes next to the body. With DUMP=name set, BizHawk also dumps a WAV.
"""
import subprocess, sys, os
EXE = os.environ.get("EMUHAWK", r"C:\BizHawk\EmuHawk.exe")
body_path = os.path.abspath(sys.argv[1]); OUT = os.path.dirname(body_path).replace("\\", "/") + "/"
PRE = r'''
local OUT="%s"
DOMAIN=DOMAIN or "68K RAM"
local logf=io.open(OUT.."log.txt","w")
function log(s) logf:write(tostring(s).."\n") logf:flush() end
function wait(n) for i=1,n do emu.frameadvance() end end
function press(b,n) n=n or 4; for i=1,n do local t={} for k,v in pairs(b) do t[(PFX or "P1 ")..(MAP and MAP[k] or k)]=v end joypad.set(t) emu.frameadvance() end wait(8) end
function shot(name) client.screenshot(OUT..name..".png") end
function r16(a) return memory.read_u16_be(a,DOMAIN) end
function r8(a) return memory.read_u8(a,DOMAIN) end
''' % OUT
dump = os.environ.get("DUMP")
tail = "\nlogf:close()\nwhile true do emu.frameadvance() end\n" if dump else "\nlogf:close()\nclient.exit()\n"
run = OUT + "_run.lua"
open(run, "w").write(PRE + open(body_path).read() + tail)
args = [EXE, "--lua=" + run]
if dump: args += ["--dump-type=wave", "--dump-name=" + dump, "--dump-length=" + os.environ.get("DUMPLEN", "2700"), "--dump-close"]
p = subprocess.run(args + [sys.argv[2]], capture_output=True, text=True, timeout=3600, cwd=os.path.dirname(EXE))
out = "\n".join(l for l in (p.stdout + p.stderr).splitlines() if "opcode" not in l and "DEVICE" not in l)
print(out[-1500:])
print(open(OUT + "log.txt").read() if os.path.exists(OUT + "log.txt") else "no log")
