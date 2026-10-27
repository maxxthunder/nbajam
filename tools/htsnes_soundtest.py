"""Rebuilds the sound-test program packed, with nothing pointing at it, in Super Nintendo NBA Hang Time.

Usage: python tools/htsnes_soundtest.py "NBA Hang Time (USA).sfc" out.sfc

The RNC block at file offset 0x2192A2 unpacks to a 32 KB LoROM image with its own sound driver and song: it uploads
0x559F bytes to the sound chip at $0400, then loops showing the APU ports. The packed copy starts one byte early (a
stray 0x18) and has lost the 'E' from its hex-digit table, so the code before the table is one byte off. This fixes
both, points the upload at the ROM copy of the data (the program expected it in RAM at $7E:8282) and turns the RTL
after the upload into a NOP so the reset entry falls through into the main loop. The result plays in an emulator.
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import rnc

BLOCK = 0x2192A2


def build(rom):
    raw = rnc.unpack(rom, BLOCK)
    img = bytearray(raw[1:0x204] + b"E" + raw[0x204:])
    assert len(img) == 0x8000 and img[0x7FFC:0x7FFE] == b"\x00\x80"
    upload = img.find(bytes.fromhex("08e220a97e85ff"))   # PHP / SEP #$20 / LDA #$7E / STA $FF
    img[upload + 4] = 0x00
    assert img[7] == 0x6B                                # RTL after JSR $8205
    img[7] = 0xEA
    return bytes(img)


if __name__ == "__main__":
    open(sys.argv[2], "wb").write(build(open(sys.argv[1], "rb").read()))
