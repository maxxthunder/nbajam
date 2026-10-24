"""mips.py FILE FROM TO [base fileoff]: disassemble a PS-X EXE range (file offsets) with addresses."""
import sys, capstone
d = open(sys.argv[1], 'rb').read(); a, b = int(sys.argv[2], 16), int(sys.argv[3], 16)
base = int(sys.argv[4], 16) if len(sys.argv) > 4 else 0x80010000; fo = int(sys.argv[5], 16) if len(sys.argv) > 5 else 0x800
md = capstone.Cs(capstone.CS_ARCH_MIPS, capstone.CS_MODE_MIPS32 | capstone.CS_MODE_LITTLE_ENDIAN)
for i in md.disasm(d[a:b], base + a - fo): print(f'{i.address:08x} {i.mnemonic:8} {i.op_str}')
