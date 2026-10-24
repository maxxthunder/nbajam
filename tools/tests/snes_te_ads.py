"""NBA Jam TE (Super Nintendo): show each unused courtside ad on the scorer's table.
Points all 16 ad slots ($3F:D418, file 0x1FD418) at one ad in a copy of the ROM and shoots the attract-mode tip-off.
python tools/tests/snes_te_ads.py "roms/NBA Jam - Tournament Edition (USA).sfc"  (EMUHAWK set) -> ad_<n>.png here
"""
import os, shutil, subprocess, sys
HERE = os.path.dirname(os.path.abspath(__file__))
rom = open(sys.argv[1], 'rb').read()
open(os.path.join(HERE, '_ads.lua'), 'w').write('wait(2830) shot("tip")\n')
for n in (4, 11, 12, 15, 16):  # MK II, shoe ad, "Winners dont use drugs", MK dragon, MK II fighters
    patched = bytearray(rom)
    for k in range(16):
        patched[0x1FD418 + 3 * k:0x1FD418 + 3 * k + 3] = (0x588000 + n * 0x5A0).to_bytes(3, 'little')
    path = os.path.join(HERE, '_ads.sfc')
    open(path, 'wb').write(patched)
    subprocess.run([sys.executable, os.path.join(HERE, '..', 'emu', 'bizhawk.py'), os.path.join(HERE, '_ads.lua'), path], capture_output=True)
    shutil.move(os.path.join(HERE, 'tip.png'), os.path.join(HERE, f'ad_{n}.png'))
os.remove(path)
