"""68000 linear disassembly of a file range (offsets = addresses). Usage: m68k.py file start end"""
import sys,capstone
d=open(sys.argv[1],'rb').read(); a=int(sys.argv[2],16); b=int(sys.argv[3],16)
md=capstone.Cs(capstone.CS_ARCH_M68K,capstone.CS_MODE_BIG_ENDIAN|capstone.CS_MODE_M68K_000)
while a<b:
    got=False
    for i in md.disasm(d[a:min(b,a+64)],a):
        print('%06x  %-8s %s'%(i.address,i.mnemonic,i.op_str)); a=i.address+i.size; got=True
        break
    if not got: print('%06x  dc.w %s'%(a,d[a:a+2].hex())); a+=2
