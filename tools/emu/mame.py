"""Run a MAME set with mame_helpers.lua and a Lua body, unthrottled with no video or sound.

Usage: python tools/emu/mame.py SET body.lua ROMPATH [extra MAME args]
Set MAME to the MAME executable. log.txt and PNG shots go next to the body; NVRAM and config go to its nvram/ and cfg/.
"""
import subprocess, sys, os, glob, struct
from PIL import Image
EXE = os.environ.get("MAME", "mame")
HERE = os.path.dirname(os.path.abspath(__file__))
sset, body, rompath = sys.argv[1], os.path.abspath(sys.argv[2]), sys.argv[3]
OUT = os.path.dirname(body).replace("\\", "/") + "/"
run = OUT + "_run.lua"
open(run, "w").write(f'OUT="{OUT}"\n' + open(os.path.join(HERE, "mame_helpers.lua")).read() + open(body).read())
subprocess.run([EXE, sset, "-nowriteconfig", "-rompath", rompath, "-cfg_directory", OUT + "cfg", "-nvram_directory", OUT + "nvram",
                "-snapshot_directory", OUT, "-str", "0", "-autoboot_script", run, "-video", "none", "-sound", "none",
                "-nothrottle", "-skip_gameinfo"] + sys.argv[4:], cwd=os.path.dirname(EXE) or None, capture_output=True, timeout=3600)
for f in glob.glob(OUT + "*.raw"):
    d = open(f, "rb").read(); w, h = struct.unpack("<II", d[:8])
    Image.frombytes("RGBA", (w, h), d[8:8 + w * h * 4], "raw", "BGRA").convert("RGB").save(f[:-4] + ".png"); os.remove(f)
print(open(OUT + "log.txt").read() if os.path.exists(OUT + "log.txt") else "no log")
