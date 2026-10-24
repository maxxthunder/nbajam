"""SH-2 linear disassembly of a binary at a base; resolves mov.l @(disp,pc) literals. Usage: sh2.py file base out"""
import sys, struct, capstone as c
d=open(sys.argv[1],'rb').read(); base=int(sys.argv[2],16)
md=c.Cs(c.CS_ARCH_SH, c.CS_MODE_SH2|c.CS_MODE_BIG_ENDIAN)
out=open(sys.argv[3],'w')
for a in range(0,len(d)-1,2):
    w=struct.unpack('>H',d[a:a+2])[0]; pc=base+a
    ins=next(md.disasm(d[a:a+2],pc),None)
    txt=f'{ins.mnemonic} {ins.op_str}' if ins else f'.word 0x{w:04x}'
    if w>>12==0xD:  # mov.l @(disp,pc),Rn
        la=((pc+4)&~3)+(w&0xFF)*4-base
        if 0<=la<len(d)-3: txt+=f'  ; ={struct.unpack(">I",d[la:la+4])[0]:08x}'
    elif w>>12==0x9:  # mov.w @(disp,pc),Rn
        la=pc+4+(w&0xFF)*2-base
        if 0<=la<len(d)-1: txt+=f'  ; ={struct.unpack(">h",d[la:la+2])[0]&0xffff:04x}'
    out.write(f'{pc:08x} {w:04x} {txt}\n')
