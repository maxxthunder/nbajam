; bank $A6  (file offset $130000)
org $A68000

L_A68000:
    PHK                             ; $A68000  4B           Mx
    PLB                             ; $A68001  AB           Mx
    LDX $08C1                       ; $A68002  AE C1 08     Mx
    BEQ L_A6800D                    ; $A68005  F0 06        Mx
    LDA $0006,X                     ; $A68007  BD 06 00     Mx
    JMP L_A68D19                    ; $A6800A  4C 19 8D     Mx
L_A6800D:
    PHP                             ; $A6800D  08           Mx
    REP #$30                        ; $A6800E  C2 30        Mx
    LDA $4212                       ; $A68010  AD 12 42     MX
    SEP #$20                        ; $A68013  E2 20        MX
    CLC                             ; $A68015  18           mX
    ADC $1D57                       ; $A68016  6D 57 1D     mX
    STA $1D57                       ; $A68019  8D 57 1D     mX
    REP #$20                        ; $A6801C  C2 20        mX
    LDA $4212                       ; $A6801E  AD 12 42     MX
    TAX                             ; $A68021  AA           MX
    SEP #$20                        ; $A68022  E2 20        MX
    EOR $1D58                       ; $A68024  4D 58 1D     mX
    STA $1D58                       ; $A68027  8D 58 1D     mX
    TXA                             ; $A6802A  8A           mX
    ADC $1D59                       ; $A6802B  6D 59 1D     mX
    REP #$20                        ; $A6802E  C2 20        mX
    LDA $1D56                       ; $A68030  AD 56 1D     MX
    INC                             ; $A68033  1A           MX
    ROR                             ; $A68034  6A           MX
    LSR $1D58                       ; $A68035  4E 58 1D     MX
    EOR #$2B41                      ; $A68038  49 41 2B     MX
    SBC #$000F                      ; $A6803B  E9 0F 00     MX
    STA $1D56                       ; $A6803E  8D 56 1D     MX
    LDA $1D58                       ; $A68041  AD 58 1D     MX
    EOR #$1D87                      ; $A68044  49 87 1D     MX
    STA $1D58                       ; $A68047  8D 58 1D     MX
    LDA $1D52                       ; $A6804A  AD 52 1D     MX
    EOR $1D56                       ; $A6804D  4D 56 1D     MX
    STA $0002                       ; $A68050  8D 02 00     MX
    INC                             ; $A68053  1A           MX
    STA $1D52                       ; $A68054  8D 52 1D     MX
    LDA $1D54                       ; $A68057  AD 54 1D     MX
    EOR $1D58                       ; $A6805A  4D 58 1D     MX
    ADC #$0000                      ; $A6805D  69 00 00     MX
    STA $1D52                       ; $A68060  8D 52 1D     MX
    STA $0004                       ; $A68063  8D 04 00     MX
    PLP                             ; $A68066  28           MX
    LDA $093C                       ; $A68067  AD 3C 09     Mx
    STA $0A90                       ; $A6806A  8D 90 0A     Mx
    LDA $08D2                       ; $A6806D  AD D2 08     Mx
    BNE L_A6807E                    ; $A68070  D0 0C        Mx
    LDA $0A9A                       ; $A68072  AD 9A 0A     Mx
    BNE L_A6807E                    ; $A68075  D0 07        Mx
    LDA $0972                       ; $A68077  AD 72 09     Mx
    BNE L_A6807E                    ; $A6807A  D0 02        Mx
    BRA L_A68087                    ; $A6807C  80 09        Mx
L_A6807E:
    STZ $097C                       ; $A6807E  9C 7C 09     Mx
    STZ $0A90                       ; $A68081  9C 90 0A     Mx
    JMP L_A68D16                    ; $A68084  4C 16 8D     Mx
L_A68087:
    LDX $00C0                       ; $A68087  AE C0 00     Mx
    BEQ L_A680DD                    ; $A6808A  F0 51        Mx
    LDA $08C0                       ; $A6808C  AD C0 08     Mx
    CMP $0C19                       ; $A6808F  CD 19 0C     Mx
    BNE L_A680DA                    ; $A68092  D0 46        Mx
    LDX $09A9                       ; $A68094  AE A9 09     Mx
    BEQ L_A680DA                    ; $A68097  F0 41        Mx
    LDA $0A2C                       ; $A68099  AD 2C 0A     Mx
    BEQ L_A680B1                    ; $A6809C  F0 13        Mx
    INC                             ; $A6809E  1A           Mx
    BEQ L_A680B1                    ; $A6809F  F0 10        Mx
    LDA $0A3E                       ; $A680A1  AD 3E 0A     Mx
    BNE L_A680B1                    ; $A680A4  D0 0B        Mx
    STZ $0946                       ; $A680A6  9C 46 09     Mx
    LDA $09A0                       ; $A680A9  AD A0 09     Mx
    STA $00B7                       ; $A680AC  8D B7 00     Mx
    BRA L_A680C2                    ; $A680AF  80 11        Mx
L_A680B1:
    LDA $0A28                       ; $A680B1  AD 28 0A     Mx
    BEQ L_A680DA                    ; $A680B4  F0 24        Mx
    LDA #$0003                      ; $A680B6  A9 03 00     Mx
    STA $097C                       ; $A680B9  8D 7C 09     Mx
    LDA $09A2                       ; $A680BC  AD A2 09     Mx
    STA $00B7                       ; $A680BF  8D B7 00     Mx
L_A680C2:
    LDA $0A90                       ; $A680C2  AD 90 0A     Mx
    AND #$0F00                      ; $A680C5  29 00 0F     Mx
    ORA $09A4                       ; $A680C8  0D A4 09     Mx
    ORA $00B7                       ; $A680CB  0D B7 00     Mx
    STA $0A90                       ; $A680CE  8D 90 0A     Mx
    STZ $0978                       ; $A680D1  9C 78 09     Mx
    LDA #$0014                      ; $A680D4  A9 14 00     Mx
    STA $0958                       ; $A680D7  8D 58 09     Mx
L_A680DA:
    JMP L_A68D16                    ; $A680DA  4C 16 8D     Mx
L_A680DD:
    LDA $0C19                       ; $A680DD  AD 19 0C     Mx
    BNE L_A680E5                    ; $A680E0  D0 03        Mx
    JMP L_A68AD9                    ; $A680E2  4C D9 8A     Mx
L_A680E5:
    LDA $094E                       ; $A680E5  AD 4E 09     Mx
    BEQ L_A680FD                    ; $A680E8  F0 13        Mx
    LDA $0C19                       ; $A680EA  AD 19 0C     Mx
    CMP $08C0                       ; $A680ED  CD C0 08     Mx
    BEQ L_A68100                    ; $A680F0  F0 0E        Mx
    AND #$00FF                      ; $A680F2  29 FF 00     Mx
    CMP #$0004                      ; $A680F5  C9 04 00     Mx
    BNE L_A680FD                    ; $A680F8  D0 03        Mx
    JMP L_A684F8                    ; $A680FA  4C F8 84     Mx
L_A680FD:
    JMP L_A68775                    ; $A680FD  4C 75 87     Mx
L_A68100:
    LDX $09A9                       ; $A68100  AE A9 09     Mx
    BEQ L_A6814A                    ; $A68103  F0 45        Mx
    LDA $0A2C                       ; $A68105  AD 2C 0A     Mx
    BEQ L_A6811E                    ; $A68108  F0 14        Mx
    INC                             ; $A6810A  1A           Mx
    BEQ L_A6811E                    ; $A6810B  F0 11        Mx
    LDA $0A3E                       ; $A6810D  AD 3E 0A     Mx
    BNE L_A6811E                    ; $A68110  D0 0C        Mx
    STZ $0946                       ; $A68112  9C 46 09     Mx
    LDA $09A0                       ; $A68115  AD A0 09     Mx
    STA $00B7                       ; $A68118  8D B7 00     Mx
    JMP L_A6812F                    ; $A6811B  4C 2F 81     Mx
L_A6811E:
    LDA $0A28                       ; $A6811E  AD 28 0A     Mx
    BEQ L_A6814A                    ; $A68121  F0 27        Mx
    LDA #$0003                      ; $A68123  A9 03 00     Mx
    STA $097C                       ; $A68126  8D 7C 09     Mx
    LDA $09A2                       ; $A68129  AD A2 09     Mx
    STA $00B7                       ; $A6812C  8D B7 00     Mx
L_A6812F:
    LDA $0A90                       ; $A6812F  AD 90 0A     Mx
    AND #$0F00                      ; $A68132  29 00 0F     Mx
    ORA $09A4                       ; $A68135  0D A4 09     Mx
    ORA $00B7                       ; $A68138  0D B7 00     Mx
    STA $0A90                       ; $A6813B  8D 90 0A     Mx
    STZ $0978                       ; $A6813E  9C 78 09     Mx
    LDA #$0014                      ; $A68141  A9 14 00     Mx
    STA $0958                       ; $A68144  8D 58 09     Mx
    JMP L_A68D16                    ; $A68147  4C 16 8D     Mx
L_A6814A:
    LDA #$0001                      ; $A6814A  A9 01 00     Mx
    STA $097A                       ; $A6814D  8D 7A 09     Mx
    LDA $08C8                       ; $A68150  AD C8 08     Mx
    BIT #$0002                      ; $A68153  89 02 00     Mx
    BNE L_A68168                    ; $A68156  D0 10        Mx
    LDA $08F2                       ; $A68158  AD F2 08     Mx
    BNE L_A6816B                    ; $A6815B  D0 0E        Mx
    LDA $0A90                       ; $A6815D  AD 90 0A     Mx
    BIT $09A2                       ; $A68160  2C A2 09     Mx
    BEQ L_A6816E                    ; $A68163  F0 09        Mx
    JMP L_A68465                    ; $A68165  4C 65 84     Mx
L_A68168:
    JMP L_A684F2                    ; $A68168  4C F2 84     Mx
L_A6816B:
    JMP L_A684A3                    ; $A6816B  4C A3 84     Mx
L_A6816E:
    LDA $08C8                       ; $A6816E  AD C8 08     Mx
    BIT #$0001                      ; $A68171  89 01 00     Mx
    BNE L_A6816B                    ; $A68174  D0 F5        Mx
    LDA $0950                       ; $A68176  AD 50 09     Mx
    BEQ L_A6817E                    ; $A68179  F0 03        Mx
    JMP L_A681E8                    ; $A6817B  4C E8 81     Mx
L_A6817E:
    LDA $0840                       ; $A6817E  AD 40 08     Mx
    CMP $0924                       ; $A68181  CD 24 09     Mx
    BCC L_A681A9                    ; $A68184  90 23        Mx
    LDA $0758                       ; $A68186  AD 58 07     Mx
    CMP $0924                       ; $A68189  CD 24 09     Mx
    BCC L_A681A9                    ; $A6818C  90 1B        Mx
    LDA $0922                       ; $A6818E  AD 22 09     Mx
    STA $00D0                       ; $A68191  8D D0 00     Mx
    LDA #$0374                      ; $A68194  A9 74 03     Mx
    STA $00D3                       ; $A68197  8D D3 00     Mx
    JSR L_A68C90                    ; $A6819A  20 90 8C     Mx
    LDA $0986                       ; $A6819D  AD 86 09     Mx
    BPL L_A681AC                    ; $A681A0  10 0A        Mx
    CMP #$FFF3                      ; $A681A2  C9 F3 FF     Mx
    BCC L_A681B5                    ; $A681A5  90 0E        Mx
    BRA L_A681AC                    ; $A681A7  80 03        Mx
L_A681A9:
    JMP L_A68218                    ; $A681A9  4C 18 82     Mx
L_A681AC:
    LDA $0A90                       ; $A681AC  AD 90 0A     Mx
    ORA $09A4                       ; $A681AF  0D A4 09     Mx
    STA $0A90                       ; $A681B2  8D 90 0A     Mx
L_A681B5:
    LDA $0CCB                       ; $A681B5  AD CB 0C     Mx
    CMP #$0002                      ; $A681B8  C9 02 00     Mx
    BCC L_A681CA                    ; $A681BB  90 0D        Mx
    LDA $0CCD                       ; $A681BD  AD CD 0C     Mx
    BNE L_A681CD                    ; $A681C0  D0 0B        Mx
    LDA $0CCF                       ; $A681C2  AD CF 0C     Mx
    CMP #$0003                      ; $A681C5  C9 03 00     Mx
    BCS L_A681CD                    ; $A681C8  B0 03        Mx
L_A681CA:
    JMP L_A6843B                    ; $A681CA  4C 3B 84     Mx
L_A681CD:
    LDA $0924                       ; $A681CD  AD 24 09     Mx
    CMP #$0088                      ; $A681D0  C9 88 00     Mx
    BCC L_A681D8                    ; $A681D3  90 03        Mx
L_A681D5:
    JMP L_A68D16                    ; $A681D5  4C 16 8D     Mx
L_A681D8:
    CMP #$0028                      ; $A681D8  C9 28 00     Mx
    BCC L_A681CA                    ; $A681DB  90 ED        Mx
    LDA $1D56                       ; $A681DD  AD 56 1D     Mx
    AND #$000F                      ; $A681E0  29 0F 00     Mx
    BNE L_A681D5                    ; $A681E3  D0 F0        Mx
    JMP L_A6843B                    ; $A681E5  4C 3B 84     Mx
L_A681E8:
    LDA $0A90                       ; $A681E8  AD 90 0A     Mx
    AND #$FEFF                      ; $A681EB  29 FF FE     Mx
    STA $0A90                       ; $A681EE  8D 90 0A     Mx
    STZ $097C                       ; $A681F1  9C 7C 09     Mx
    LDA $0924                       ; $A681F4  AD 24 09     Mx
    CMP #$00B8                      ; $A681F7  C9 B8 00     Mx
    BCS L_A681FF                    ; $A681FA  B0 03        Mx
    JMP L_A6843B                    ; $A681FC  4C 3B 84     Mx
L_A681FF:
    STZ $0944                       ; $A681FF  9C 44 09     Mx
    STZ $0946                       ; $A68202  9C 46 09     Mx
    JSR L_A686CF                    ; $A68205  20 CF 86     Mx
    BNE L_A68215                    ; $A68208  D0 0B        Mx
    LDA $1D56                       ; $A6820A  AD 56 1D     Mx
    AND #$000F                      ; $A6820D  29 0F 00     Mx
    BNE L_A68215                    ; $A68210  D0 03        Mx
    JMP L_A6843B                    ; $A68212  4C 3B 84     Mx
L_A68215:
    JMP L_A68D16                    ; $A68215  4C 16 8D     Mx
L_A68218:
    LDA $0CCB                       ; $A68218  AD CB 0C     Mx
    CMP #$0002                      ; $A6821B  C9 02 00     Mx
    BCS L_A68223                    ; $A6821E  B0 03        Mx
    JMP L_A6843B                    ; $A68220  4C 3B 84     Mx
L_A68223:
    LDA $0CCD                       ; $A68223  AD CD 0C     Mx
    BNE L_A68233                    ; $A68226  D0 0B        Mx
    LDA $0CCF                       ; $A68228  AD CF 0C     Mx
    CMP #$0003                      ; $A6822B  C9 03 00     Mx
    BCS L_A68233                    ; $A6822E  B0 03        Mx
    JMP L_A6843B                    ; $A68230  4C 3B 84     Mx
L_A68233:
    LDA $0938                       ; $A68233  AD 38 09     Mx
    CMP #$0040                      ; $A68236  C9 40 00     Mx
    BCS L_A6826B                    ; $A68239  B0 30        Mx
    LDA $0924                       ; $A6823B  AD 24 09     Mx
    CMP $0938                       ; $A6823E  CD 38 09     Mx
    BCC L_A6826B                    ; $A68241  90 28        Mx
    LDA $0932                       ; $A68243  AD 32 09     Mx
    SEC                             ; $A68246  38           Mx
    SBC $0926                       ; $A68247  ED 26 09     Mx
    BPL L_A68253                    ; $A6824A  10 07        Mx
    EOR #$FFFF                      ; $A6824C  49 FF FF     Mx
    CLC                             ; $A6824F  18           Mx
    ADC #$0001                      ; $A68250  69 01 00     Mx
L_A68253:
    CMP #$0041                      ; $A68253  C9 41 00     Mx
    BCC L_A68265                    ; $A68256  90 0D        Mx
    SEC                             ; $A68258  38           Mx
    SBC #$0080                      ; $A68259  E9 80 00     Mx
    BPL L_A68265                    ; $A6825C  10 07        Mx
    EOR #$FFFF                      ; $A6825E  49 FF FF     Mx
    CLC                             ; $A68261  18           Mx
    ADC #$0001                      ; $A68262  69 01 00     Mx
L_A68265:
    SEC                             ; $A68265  38           Mx
    SBC #$0020                      ; $A68266  E9 20 00     Mx
    BMI L_A682A6                    ; $A68269  30 3B        Mx
L_A6826B:
    LDA $093A                       ; $A6826B  AD 3A 09     Mx
    CMP #$0040                      ; $A6826E  C9 40 00     Mx
    BCS L_A682A3                    ; $A68271  B0 30        Mx
    LDA $0924                       ; $A68273  AD 24 09     Mx
    CMP $093A                       ; $A68276  CD 3A 09     Mx
    BCC L_A682A3                    ; $A68279  90 28        Mx
    LDA $0934                       ; $A6827B  AD 34 09     Mx
    SEC                             ; $A6827E  38           Mx
    SBC $0926                       ; $A6827F  ED 26 09     Mx
    BPL L_A6828B                    ; $A68282  10 07        Mx
    EOR #$FFFF                      ; $A68284  49 FF FF     Mx
    CLC                             ; $A68287  18           Mx
    ADC #$0001                      ; $A68288  69 01 00     Mx
L_A6828B:
    CMP #$0041                      ; $A6828B  C9 41 00     Mx
    BCC L_A6829D                    ; $A6828E  90 0D        Mx
    SEC                             ; $A68290  38           Mx
    SBC #$0080                      ; $A68291  E9 80 00     Mx
    BPL L_A6829D                    ; $A68294  10 07        Mx
    EOR #$FFFF                      ; $A68296  49 FF FF     Mx
    CLC                             ; $A68299  18           Mx
    ADC #$0001                      ; $A6829A  69 01 00     Mx
L_A6829D:
    SEC                             ; $A6829D  38           Mx
    SBC #$0020                      ; $A6829E  E9 20 00     Mx
    BMI L_A682A6                    ; $A682A1  30 03        Mx
L_A682A3:
    JMP L_A68339                    ; $A682A3  4C 39 83     Mx
L_A682A6:
    LDA $0936                       ; $A682A6  AD 36 09     Mx
    CMP #$0038                      ; $A682A9  C9 38 00     Mx
    BCC L_A682B6                    ; $A682AC  90 08        Mx
    JSR L_A686CF                    ; $A682AE  20 CF 86     Mx
    BEQ L_A682B6                    ; $A682B1  F0 03        Mx
    JMP L_A68D16                    ; $A682B3  4C 16 8D     Mx
L_A682B6:
    LDA $0A92                       ; $A682B6  AD 92 0A     Mx
    SEC                             ; $A682B9  38           Mx
    SBC #$0002                      ; $A682BA  E9 02 00     Mx
    STA $00D0                       ; $A682BD  8D D0 00     Mx
    BEQ L_A682C4                    ; $A682C0  F0 02        Mx
    BPL L_A682FF                    ; $A682C2  10 3B        Mx
L_A682C4:
    LDA $1D56                       ; $A682C4  AD 56 1D     Mx
    AND #$0001                      ; $A682C7  29 01 00     Mx
    STA $0A94                       ; $A682CA  8D 94 0A     Mx
    LDA #$002B                      ; $A682CD  A9 2B 00     Mx
    STA $00D0                       ; $A682D0  8D D0 00     Mx
    LDA $1D57                       ; $A682D3  AD 57 1D     Mx
    STA $00BA                       ; $A682D6  8D BA 00     Mx
    INC $00D0                       ; $A682D9  EE D0 00     Mx
    SEP #$20                        ; $A682DC  E2 20        Mx
    LDA $00D0                       ; $A682DE  AD D0 00     mx
    STA $4202                       ; $A682E1  8D 02 42     mx
    LDA $00BA                       ; $A682E4  AD BA 00     mx
    STA $4203                       ; $A682E7  8D 03 42     mx
    NOP                             ; $A682EA  EA           mx
    NOP                             ; $A682EB  EA           mx
    NOP                             ; $A682EC  EA           mx
    REP #$20                        ; $A682ED  C2 20        mx
    LDA $4216                       ; $A682EF  AD 16 42     Mx
    STA $00BA                       ; $A682F2  8D BA 00     Mx
    LDA $00BB                       ; $A682F5  AD BB 00     Mx
    AND #$00FF                      ; $A682F8  29 FF 00     Mx
    CLC                             ; $A682FB  18           Mx
    ADC #$000A                      ; $A682FC  69 0A 00     Mx
L_A682FF:
    STA $0A92                       ; $A682FF  8D 92 0A     Mx
    LDA $0922                       ; $A68302  AD 22 09     Mx
    STA $00D0                       ; $A68305  8D D0 00     Mx
    LDA #$0374                      ; $A68308  A9 74 03     Mx
    STA $00D3                       ; $A6830B  8D D3 00     Mx
    JSR L_A68C90                    ; $A6830E  20 90 8C     Mx
    BNE L_A68316                    ; $A68311  D0 03        Mx
    JMP L_A6843B                    ; $A68313  4C 3B 84     Mx
L_A68316:
    LDA $00D1                       ; $A68316  AD D1 00     Mx
    LDX $0A94                       ; $A68319  AE 94 0A     Mx
    BEQ L_A68322                    ; $A6831C  F0 04        Mx
    CLC                             ; $A6831E  18           Mx
    ADC #$0010                      ; $A6831F  69 10 00     Mx
L_A68322:
    SEP #$20                        ; $A68322  E2 20        Mx
    TAX                             ; $A68324  AA           mx
    LDA $A7E957,X                   ; $A68325  BF 57 E9 A7  mx
    STA $0A91                       ; $A68329  8D 91 0A     mx
    REP #$20                        ; $A6832C  C2 20        mx
    LDA $0924                       ; $A6832E  AD 24 09     Mx
    CMP #$0040                      ; $A68331  C9 40 00     Mx
    BCS L_A68371                    ; $A68334  B0 3B        Mx
    JMP L_A6843B                    ; $A68336  4C 3B 84     Mx
L_A68339:
    LDA $0938                       ; $A68339  AD 38 09     Mx
    CMP #$0034                      ; $A6833C  C9 34 00     Mx
    BCC L_A6836E                    ; $A6833F  90 2D        Mx
    LDA $093A                       ; $A68341  AD 3A 09     Mx
    CMP #$0034                      ; $A68344  C9 34 00     Mx
    BCC L_A6836E                    ; $A68347  90 25        Mx
    LDA $0922                       ; $A68349  AD 22 09     Mx
    STA $00D0                       ; $A6834C  8D D0 00     Mx
    LDA #$0374                      ; $A6834F  A9 74 03     Mx
    STA $00D3                       ; $A68352  8D D3 00     Mx
    JSR L_A68C90                    ; $A68355  20 90 8C     Mx
    LDA $0986                       ; $A68358  AD 86 09     Mx
    BPL L_A68362                    ; $A6835B  10 05        Mx
    CMP #$FFF3                      ; $A6835D  C9 F3 FF     Mx
    BCC L_A68371                    ; $A68360  90 0F        Mx
L_A68362:
    LDA $0A90                       ; $A68362  AD 90 0A     Mx
    ORA $09A4                       ; $A68365  0D A4 09     Mx
    STA $0A90                       ; $A68368  8D 90 0A     Mx
    JMP L_A68371                    ; $A6836B  4C 71 83     Mx
L_A6836E:
    JMP L_A682B6                    ; $A6836E  4C B6 82     Mx
L_A68371:
    LDA $0924                       ; $A68371  AD 24 09     Mx
    CMP #$0028                      ; $A68374  C9 28 00     Mx
    BCC L_A68381                    ; $A68377  90 08        Mx
    LDX $09A9                       ; $A68379  AE A9 09     Mx
    BEQ L_A68384                    ; $A6837C  F0 06        Mx
    JMP L_A68D16                    ; $A6837E  4C 16 8D     Mx
L_A68381:
    JMP L_A6843B                    ; $A68381  4C 3B 84     Mx
L_A68384:
    LDA $08F6                       ; $A68384  AD F6 08     Mx
    SEC                             ; $A68387  38           Mx
    SBC #$0310                      ; $A68388  E9 10 03     Mx
    LSR                             ; $A6838B  4A           Mx
    BPL L_A68391                    ; $A6838C  10 03        Mx
    LDA #$0000                      ; $A6838E  A9 00 00     Mx
L_A68391:
    CMP #$0070                      ; $A68391  C9 70 00     Mx
    BCC L_A68399                    ; $A68394  90 03        Mx
    LDA #$0070                      ; $A68396  A9 70 00     Mx
L_A68399:
    ASL                             ; $A68399  0A           Mx
    TAX                             ; $A6839A  AA           Mx
    LDA $08EE                       ; $A6839B  AD EE 08     Mx
    BPL L_A683A9                    ; $A6839E  10 09        Mx
    CMP $A7E714,X                   ; $A683A0  DF 14 E7 A7  Mx
    BCS L_A683A9                    ; $A683A4  B0 03        Mx
    JMP L_A683F0                    ; $A683A6  4C F0 83     Mx
L_A683A9:
    LDA $0924                       ; $A683A9  AD 24 09     Mx
    CMP #$00F5                      ; $A683AC  C9 F5 00     Mx
    BCS L_A683F0                    ; $A683AF  B0 3F        Mx
    LDA #$0006                      ; $A683B1  A9 06 00     Mx
    STA $00D3                       ; $A683B4  8D D3 00     Mx
    LDA $0CCB                       ; $A683B7  AD CB 0C     Mx
    CMP #$0046                      ; $A683BA  C9 46 00     Mx
    BCS L_A683C5                    ; $A683BD  B0 06        Mx
    LDA #$0003                      ; $A683BF  A9 03 00     Mx
    STA $00D3                       ; $A683C2  8D D3 00     Mx
L_A683C5:
    LDA $099A                       ; $A683C5  AD 9A 09     Mx
    BMI L_A683F0                    ; $A683C8  30 26        Mx
    CMP $00D3                       ; $A683CA  CD D3 00     Mx
    BMI L_A683F0                    ; $A683CD  30 21        Mx
    LDA $0CCB                       ; $A683CF  AD CB 0C     Mx
    CMP #$0028                      ; $A683D2  C9 28 00     Mx
    BCC L_A6843B                    ; $A683D5  90 64        Mx
    LDA #$0008                      ; $A683D7  A9 08 00     Mx
    STA $00D0                       ; $A683DA  8D D0 00     Mx
    LDA $0938                       ; $A683DD  AD 38 09     Mx
    CMP #$0038                      ; $A683E0  C9 38 00     Mx
    BCC L_A68406                    ; $A683E3  90 21        Mx
    LDA $093A                       ; $A683E5  AD 3A 09     Mx
    CMP #$0038                      ; $A683E8  C9 38 00     Mx
    BCC L_A68406                    ; $A683EB  90 19        Mx
    JMP L_A6843B                    ; $A683ED  4C 3B 84     Mx
L_A683F0:
    LDA #$0019                      ; $A683F0  A9 19 00     Mx
    STA $00D0                       ; $A683F3  8D D0 00     Mx
    LDA $0986                       ; $A683F6  AD 86 09     Mx
    BPL L_A68406                    ; $A683F9  10 0B        Mx
    CMP #$FFF8                      ; $A683FB  C9 F8 FF     Mx
    BCS L_A68406                    ; $A683FE  B0 06        Mx
    LDA #$000F                      ; $A68400  A9 0F 00     Mx
    STA $00D0                       ; $A68403  8D D0 00     Mx
L_A68406:
    LDA $1D57                       ; $A68406  AD 57 1D     Mx
    STA $00BA                       ; $A68409  8D BA 00     Mx
    INC $00D0                       ; $A6840C  EE D0 00     Mx
    SEP #$20                        ; $A6840F  E2 20        Mx
    LDA $00D0                       ; $A68411  AD D0 00     mx
    STA $4202                       ; $A68414  8D 02 42     mx
    LDA $00BA                       ; $A68417  AD BA 00     mx
    STA $4203                       ; $A6841A  8D 03 42     mx
    NOP                             ; $A6841D  EA           mx
    NOP                             ; $A6841E  EA           mx
    NOP                             ; $A6841F  EA           mx
    REP #$20                        ; $A68420  C2 20        mx
    LDA $4216                       ; $A68422  AD 16 42     Mx
    STA $00BA                       ; $A68425  8D BA 00     Mx
    LDA $00BB                       ; $A68428  AD BB 00     Mx
    AND #$00FF                      ; $A6842B  29 FF 00     Mx
    BEQ L_A68433                    ; $A6842E  F0 03        Mx
L_A68430:
    JMP L_A68D16                    ; $A68430  4C 16 8D     Mx
L_A68433:
    LDA $0924                       ; $A68433  AD 24 09     Mx
    CMP #$00C0                      ; $A68436  C9 C0 00     Mx
    BCS L_A68430                    ; $A68439  B0 F5        Mx
L_A6843B:
    LDA $08C0                       ; $A6843B  AD C0 08     Mx
    CMP $0C19                       ; $A6843E  CD 19 0C     Mx
    BNE L_A68450                    ; $A68441  D0 0D        Mx
    LDX $09A9                       ; $A68443  AE A9 09     Mx
    BEQ L_A68450                    ; $A68446  F0 08        Mx
    LDA $0924                       ; $A68448  AD 24 09     Mx
    CMP #$0080                      ; $A6844B  C9 80 00     Mx
    BCS L_A68462                    ; $A6844E  B0 12        Mx
L_A68450:
    LDA $0A90                       ; $A68450  AD 90 0A     Mx
    ORA $09A2                       ; $A68453  0D A2 09     Mx
    ORA $09A4                       ; $A68456  0D A4 09     Mx
    STA $0A90                       ; $A68459  8D 90 0A     Mx
    LDA #$0001                      ; $A6845C  A9 01 00     Mx
    STA $097C                       ; $A6845F  8D 7C 09     Mx
L_A68462:
    JMP L_A68D16                    ; $A68462  4C 16 8D     Mx
L_A68465:
    LDA $097C                       ; $A68465  AD 7C 09     Mx
    STA $00D6                       ; $A68468  8D D6 00     Mx
    BEQ L_A68462                    ; $A6846B  F0 F5        Mx
    BMI L_A68462                    ; $A6846D  30 F3        Mx
    LDX $09A9                       ; $A6846F  AE A9 09     Mx
    BNE L_A68462                    ; $A68472  D0 EE        Mx
    LDA $1D58                       ; $A68474  AD 58 1D     Mx
    AND #$000F                      ; $A68477  29 0F 00     Mx
    CMP #$0009                      ; $A6847A  C9 09 00     Mx
    BNE L_A68462                    ; $A6847D  D0 E3        Mx
    LDA $0CCB                       ; $A6847F  AD CB 0C     Mx
    CMP #$0002                      ; $A68482  C9 02 00     Mx
    BCC L_A68462                    ; $A68485  90 DB        Mx
    LDA $0CCD                       ; $A68487  AD CD 0C     Mx
    BNE L_A68494                    ; $A6848A  D0 08        Mx
    LDA $0CCF                       ; $A6848C  AD CF 0C     Mx
    CMP #$0003                      ; $A6848F  C9 03 00     Mx
    BCC L_A68462                    ; $A68492  90 CE        Mx
L_A68494:
    DEC $00D6                       ; $A68494  CE D6 00     Mx
    DEC $00D6                       ; $A68497  CE D6 00     Mx
    LDA $00D6                       ; $A6849A  AD D6 00     Mx
    STA $097C                       ; $A6849D  8D 7C 09     Mx
    JMP L_A684F2                    ; $A684A0  4C F2 84     Mx
L_A684A3:
    LDX $09A9                       ; $A684A3  AE A9 09     Mx
    BEQ L_A684B3                    ; $A684A6  F0 0B        Mx
    LDA $0A24                       ; $A684A8  AD 24 0A     Mx
    AND $09A2                       ; $A684AB  2D A2 09     Mx
    BNE L_A68462                    ; $A684AE  D0 B2        Mx
L_A684B0:
    JMP L_A684F2                    ; $A684B0  4C F2 84     Mx
L_A684B3:
    LDA $08C4                       ; $A684B3  AD C4 08     Mx
    CMP #$0022                      ; $A684B6  C9 22 00     Mx
    BEQ L_A684B0                    ; $A684B9  F0 F5        Mx
    LDA $1D57                       ; $A684BB  AD 57 1D     Mx
    AND #$0007                      ; $A684BE  29 07 00     Mx
    BEQ L_A684B0                    ; $A684C1  F0 ED        Mx
    LDA $1D56                       ; $A684C3  AD 56 1D     Mx
    AND #$000F                      ; $A684C6  29 0F 00     Mx
    BNE L_A684F5                    ; $A684C9  D0 2A        Mx
    LDA $099A                       ; $A684CB  AD 9A 09     Mx
    CLC                             ; $A684CE  18           Mx
    ADC #$0005                      ; $A684CF  69 05 00     Mx
    BMI L_A684E4                    ; $A684D2  30 10        Mx
    LDA $08C8                       ; $A684D4  AD C8 08     Mx
    AND #$0004                      ; $A684D7  29 04 00     Mx
    BNE L_A684F5                    ; $A684DA  D0 19        Mx
    LDA $0CCB                       ; $A684DC  AD CB 0C     Mx
    CMP #$0002                      ; $A684DF  C9 02 00     Mx
    BCC L_A684F5                    ; $A684E2  90 11        Mx
L_A684E4:
    LDA $08C8                       ; $A684E4  AD C8 08     Mx
    BIT #$000C                      ; $A684E7  89 0C 00     Mx
    BNE L_A684F5                    ; $A684EA  D0 09        Mx
    JSR L_A686CF                    ; $A684EC  20 CF 86     Mx
    JMP L_A68D16                    ; $A684EF  4C 16 8D     Mx
L_A684F2:
    STZ $0A90                       ; $A684F2  9C 90 0A     Mx
L_A684F5:
    JMP L_A68D16                    ; $A684F5  4C 16 8D     Mx
L_A684F8:
    STZ $0978                       ; $A684F8  9C 78 09     Mx
    LDA $097A                       ; $A684FB  AD 7A 09     Mx
    CMP #$0001                      ; $A684FE  C9 01 00     Mx
    BCS L_A68543                    ; $A68501  B0 40        Mx
    LDA #$0001                      ; $A68503  A9 01 00     Mx
    STA $097A                       ; $A68506  8D 7A 09     Mx
    JSR L_A68CFB                    ; $A68509  20 FB 8C     Mx
    TAX                             ; $A6850C  AA           Mx
    LDA $A7E838,X                   ; $A6850D  BF 38 E8 A7  Mx
    AND #$00FF                      ; $A68511  29 FF 00     Mx
    STA $00D0                       ; $A68514  8D D0 00     Mx
    LDA $1D56                       ; $A68517  AD 56 1D     Mx
    STA $00BA                       ; $A6851A  8D BA 00     Mx
    INC $00D0                       ; $A6851D  EE D0 00     Mx
    SEP #$20                        ; $A68520  E2 20        Mx
    LDA $00D0                       ; $A68522  AD D0 00     mx
    STA $4202                       ; $A68525  8D 02 42     mx
    LDA $00BA                       ; $A68528  AD BA 00     mx
    STA $4203                       ; $A6852B  8D 03 42     mx
    NOP                             ; $A6852E  EA           mx
    NOP                             ; $A6852F  EA           mx
    NOP                             ; $A68530  EA           mx
    REP #$20                        ; $A68531  C2 20        mx
    LDA $4216                       ; $A68533  AD 16 42     Mx
    STA $00BA                       ; $A68536  8D BA 00     Mx
    LDA $00BB                       ; $A68539  AD BB 00     Mx
    AND #$00FF                      ; $A6853C  29 FF 00     Mx
    INC                             ; $A6853F  1A           Mx
    STA $097C                       ; $A68540  8D 7C 09     Mx
L_A68543:
    LDA $08D8                       ; $A68543  AD D8 08     Mx
    ASL                             ; $A68546  0A           Mx
    ASL                             ; $A68547  0A           Mx
    ASL                             ; $A68548  0A           Mx
    ASL                             ; $A68549  0A           Mx
    STA $00D9                       ; $A6854A  8D D9 00     Mx
    LDA $0938                       ; $A6854D  AD 38 09     Mx
    CMP #$0028                      ; $A68550  C9 28 00     Mx
    BPL L_A6857D                    ; $A68553  10 28        Mx
    LDA $0932                       ; $A68555  AD 32 09     Mx
    SEC                             ; $A68558  38           Mx
    SBC $00D9                       ; $A68559  ED D9 00     Mx
    BPL L_A68565                    ; $A6855C  10 07        Mx
    EOR #$FFFF                      ; $A6855E  49 FF FF     Mx
    CLC                             ; $A68561  18           Mx
    ADC #$0001                      ; $A68562  69 01 00     Mx
L_A68565:
    CMP #$0041                      ; $A68565  C9 41 00     Mx
    BCC L_A68577                    ; $A68568  90 0D        Mx
    SEC                             ; $A6856A  38           Mx
    SBC #$0080                      ; $A6856B  E9 80 00     Mx
    BPL L_A68577                    ; $A6856E  10 07        Mx
    EOR #$FFFF                      ; $A68570  49 FF FF     Mx
    CLC                             ; $A68573  18           Mx
    ADC #$0001                      ; $A68574  69 01 00     Mx
L_A68577:
    SEC                             ; $A68577  38           Mx
    SBC #$0010                      ; $A68578  E9 10 00     Mx
    BMI L_A685B3                    ; $A6857B  30 36        Mx
L_A6857D:
    LDA $093A                       ; $A6857D  AD 3A 09     Mx
    CMP #$0028                      ; $A68580  C9 28 00     Mx
    BMI L_A68588                    ; $A68583  30 03        Mx
    JMP L_A6861A                    ; $A68585  4C 1A 86     Mx
L_A68588:
    LDA $0934                       ; $A68588  AD 34 09     Mx
    SEC                             ; $A6858B  38           Mx
    SBC $00D9                       ; $A6858C  ED D9 00     Mx
    BPL L_A68598                    ; $A6858F  10 07        Mx
    EOR #$FFFF                      ; $A68591  49 FF FF     Mx
    CLC                             ; $A68594  18           Mx
    ADC #$0001                      ; $A68595  69 01 00     Mx
L_A68598:
    CMP #$0041                      ; $A68598  C9 41 00     Mx
    BCC L_A685AA                    ; $A6859B  90 0D        Mx
    SEC                             ; $A6859D  38           Mx
    SBC #$0080                      ; $A6859E  E9 80 00     Mx
    BPL L_A685AA                    ; $A685A1  10 07        Mx
    EOR #$FFFF                      ; $A685A3  49 FF FF     Mx
    CLC                             ; $A685A6  18           Mx
    ADC #$0001                      ; $A685A7  69 01 00     Mx
L_A685AA:
    SEC                             ; $A685AA  38           Mx
    SBC #$0010                      ; $A685AB  E9 10 00     Mx
    BMI L_A685B3                    ; $A685AE  30 03        Mx
    JMP L_A6861A                    ; $A685B0  4C 1A 86     Mx
L_A685B3:
    LDA #$0037                      ; $A685B3  A9 37 00     Mx
    STA $00D0                       ; $A685B6  8D D0 00     Mx
    LDA $1D58                       ; $A685B9  AD 58 1D     Mx
    STA $00BA                       ; $A685BC  8D BA 00     Mx
    INC $00D0                       ; $A685BF  EE D0 00     Mx
    SEP #$20                        ; $A685C2  E2 20        Mx
    LDA $00D0                       ; $A685C4  AD D0 00     mx
    STA $4202                       ; $A685C7  8D 02 42     mx
    LDA $00BA                       ; $A685CA  AD BA 00     mx
    STA $4203                       ; $A685CD  8D 03 42     mx
    NOP                             ; $A685D0  EA           mx
    NOP                             ; $A685D1  EA           mx
    NOP                             ; $A685D2  EA           mx
    REP #$20                        ; $A685D3  C2 20        mx
    LDA $4216                       ; $A685D5  AD 16 42     Mx
    STA $00BA                       ; $A685D8  8D BA 00     Mx
    LDA $00BB                       ; $A685DB  AD BB 00     Mx
    AND #$00FF                      ; $A685DE  29 FF 00     Mx
    STA $00D0                       ; $A685E1  8D D0 00     Mx
    LDA $099A                       ; $A685E4  AD 9A 09     Mx
    CLC                             ; $A685E7  18           Mx
    ADC $0986                       ; $A685E8  6D 86 09     Mx
    BMI L_A685F5                    ; $A685EB  30 08        Mx
    CMP #$0010                      ; $A685ED  C9 10 00     Mx
    BMI L_A685F5                    ; $A685F0  30 03        Mx
    LDA #$000F                      ; $A685F2  A9 0F 00     Mx
L_A685F5:
    CLC                             ; $A685F5  18           Mx
    ADC #$000F                      ; $A685F6  69 0F 00     Mx
    BPL L_A685FE                    ; $A685F9  10 03        Mx
    LDA #$0000                      ; $A685FB  A9 00 00     Mx
L_A685FE:
    TAX                             ; $A685FE  AA           Mx
    LDA $A7E857,X                   ; $A685FF  BF 57 E8 A7  Mx
    AND #$00FF                      ; $A68603  29 FF 00     Mx
    CMP $00D0                       ; $A68606  CD D0 00     Mx
    BCC L_A68633                    ; $A68609  90 28        Mx
    LDA $0A90                       ; $A6860B  AD 90 0A     Mx
    ORA $09A4                       ; $A6860E  0D A4 09     Mx
    ORA $09A0                       ; $A68611  0D A0 09     Mx
    STA $0A90                       ; $A68614  8D 90 0A     Mx
    JMP L_A686CC                    ; $A68617  4C CC 86     Mx
L_A6861A:
    LDA $1D56                       ; $A6861A  AD 56 1D     Mx
    AND #$003F                      ; $A6861D  29 3F 00     Mx
    BEQ L_A68633                    ; $A68620  F0 11        Mx
    LDA $097C                       ; $A68622  AD 7C 09     Mx
    SEC                             ; $A68625  38           Mx
    SBC #$0002                      ; $A68626  E9 02 00     Mx
    STA $00D0                       ; $A68629  8D D0 00     Mx
    BEQ L_A68633                    ; $A6862C  F0 05        Mx
    BMI L_A68633                    ; $A6862E  30 03        Mx
    JMP L_A686A7                    ; $A68630  4C A7 86     Mx
L_A68633:
    LDA #$0010                      ; $A68633  A9 10 00     Mx
    STA $00D0                       ; $A68636  8D D0 00     Mx
    LDA $1D57                       ; $A68639  AD 57 1D     Mx
    STA $00BA                       ; $A6863C  8D BA 00     Mx
    INC $00D0                       ; $A6863F  EE D0 00     Mx
    SEP #$20                        ; $A68642  E2 20        Mx
    LDA $00D0                       ; $A68644  AD D0 00     mx
    STA $4202                       ; $A68647  8D 02 42     mx
    LDA $00BA                       ; $A6864A  AD BA 00     mx
    STA $4203                       ; $A6864D  8D 03 42     mx
    NOP                             ; $A68650  EA           mx
    NOP                             ; $A68651  EA           mx
    NOP                             ; $A68652  EA           mx
    REP #$20                        ; $A68653  C2 20        mx
    LDA $4216                       ; $A68655  AD 16 42     Mx
    STA $00BA                       ; $A68658  8D BA 00     Mx
    LDA $00BB                       ; $A6865B  AD BB 00     Mx
    AND #$00FF                      ; $A6865E  29 FF 00     Mx
    ASL                             ; $A68661  0A           Mx
    ASL                             ; $A68662  0A           Mx
    TAX                             ; $A68663  AA           Mx
    LDA $A7E877,X                   ; $A68664  BF 77 E8 A7  Mx
    STA $097E                       ; $A68668  8D 7E 09     Mx
    LDA $A7E879,X                   ; $A6866B  BF 79 E8 A7  Mx
    STA $0980                       ; $A6866F  8D 80 09     Mx
    LDA #$009F                      ; $A68672  A9 9F 00     Mx
    STA $00D0                       ; $A68675  8D D0 00     Mx
    LDA $1D58                       ; $A68678  AD 58 1D     Mx
    STA $00BA                       ; $A6867B  8D BA 00     Mx
    INC $00D0                       ; $A6867E  EE D0 00     Mx
    SEP #$20                        ; $A68681  E2 20        Mx
    LDA $00D0                       ; $A68683  AD D0 00     mx
    STA $4202                       ; $A68686  8D 02 42     mx
    LDA $00BA                       ; $A68689  AD BA 00     mx
    STA $4203                       ; $A6868C  8D 03 42     mx
    NOP                             ; $A6868F  EA           mx
    NOP                             ; $A68690  EA           mx
    NOP                             ; $A68691  EA           mx
    REP #$20                        ; $A68692  C2 20        mx
    LDA $4216                       ; $A68694  AD 16 42     Mx
    STA $00BA                       ; $A68697  8D BA 00     Mx
    LDA $00BB                       ; $A6869A  AD BB 00     Mx
    AND #$00FF                      ; $A6869D  29 FF 00     Mx
    CLC                             ; $A686A0  18           Mx
    ADC #$001A                      ; $A686A1  69 1A 00     Mx
    STA $00D0                       ; $A686A4  8D D0 00     Mx
L_A686A7:
    LDA $00D0                       ; $A686A7  AD D0 00     Mx
    STA $097C                       ; $A686AA  8D 7C 09     Mx
    LDA $097E                       ; $A686AD  AD 7E 09     Mx
    STA $00D0                       ; $A686B0  8D D0 00     Mx
    LDA $0980                       ; $A686B3  AD 80 09     Mx
    STA $00D3                       ; $A686B6  8D D3 00     Mx
    JSR L_A68C90                    ; $A686B9  20 90 8C     Mx
    BNE L_A686CC                    ; $A686BC  D0 0E        Mx
    LDA $0006                       ; $A686BE  AD 06 00     Mx
    AND #$000F                      ; $A686C1  29 0F 00     Mx
    CMP #$000C                      ; $A686C4  C9 0C 00     Mx
    BNE L_A686CC                    ; $A686C7  D0 03        Mx
    STZ $097C                       ; $A686C9  9C 7C 09     Mx
L_A686CC:
    JMP L_A68D16                    ; $A686CC  4C 16 8D     Mx
L_A686CF:
    LDX $09A9                       ; $A686CF  AE A9 09     Mx
    BEQ L_A686D7                    ; $A686D2  F0 03        Mx
    JMP L_A6876E                    ; $A686D4  4C 6E 87     Mx
L_A686D7:
    LDA $0936                       ; $A686D7  AD 36 09     Mx
    CLC                             ; $A686DA  18           Mx
    ADC #$000A                      ; $A686DB  69 0A 00     Mx
    STA $00D0                       ; $A686DE  8D D0 00     Mx
    CMP $0938                       ; $A686E1  CD 38 09     Mx
    BCC L_A6870E                    ; $A686E4  90 28        Mx
    LDA $0932                       ; $A686E6  AD 32 09     Mx
    SEC                             ; $A686E9  38           Mx
    SBC $0930                       ; $A686EA  ED 30 09     Mx
    BPL L_A686F6                    ; $A686ED  10 07        Mx
    EOR #$FFFF                      ; $A686EF  49 FF FF     Mx
    CLC                             ; $A686F2  18           Mx
    ADC #$0001                      ; $A686F3  69 01 00     Mx
L_A686F6:
    CMP #$0041                      ; $A686F6  C9 41 00     Mx
    BCC L_A68708                    ; $A686F9  90 0D        Mx
    SEC                             ; $A686FB  38           Mx
    SBC #$0080                      ; $A686FC  E9 80 00     Mx
    BPL L_A68708                    ; $A686FF  10 07        Mx
    EOR #$FFFF                      ; $A68701  49 FF FF     Mx
    CLC                             ; $A68704  18           Mx
    ADC #$0001                      ; $A68705  69 01 00     Mx
L_A68708:
    SEC                             ; $A68708  38           Mx
    SBC #$0010                      ; $A68709  E9 10 00     Mx
    BMI L_A6875F                    ; $A6870C  30 51        Mx
L_A6870E:
    LDA $00D0                       ; $A6870E  AD D0 00     Mx
    CMP $093A                       ; $A68711  CD 3A 09     Mx
    BCC L_A6873E                    ; $A68714  90 28        Mx
    LDA $0934                       ; $A68716  AD 34 09     Mx
    SEC                             ; $A68719  38           Mx
    SBC $0930                       ; $A6871A  ED 30 09     Mx
    BPL L_A68726                    ; $A6871D  10 07        Mx
    EOR #$FFFF                      ; $A6871F  49 FF FF     Mx
    CLC                             ; $A68722  18           Mx
    ADC #$0001                      ; $A68723  69 01 00     Mx
L_A68726:
    CMP #$0041                      ; $A68726  C9 41 00     Mx
    BCC L_A68738                    ; $A68729  90 0D        Mx
    SEC                             ; $A6872B  38           Mx
    SBC #$0080                      ; $A6872C  E9 80 00     Mx
    BPL L_A68738                    ; $A6872F  10 07        Mx
    EOR #$FFFF                      ; $A68731  49 FF FF     Mx
    CLC                             ; $A68734  18           Mx
    ADC #$0001                      ; $A68735  69 01 00     Mx
L_A68738:
    SEC                             ; $A68738  38           Mx
    SBC #$0010                      ; $A68739  E9 10 00     Mx
    BMI L_A6875F                    ; $A6873C  30 21        Mx
L_A6873E:
    LDA $09AC                       ; $A6873E  AD AC 09     Mx
    LSR                             ; $A68741  4A           Mx
    TAX                             ; $A68742  AA           Mx
    LDA $82DF6E,X                   ; $A68743  BF 6E DF 82  Mx
    AND #$00FF                      ; $A68747  29 FF 00     Mx
    BEQ L_A6876E                    ; $A6874A  F0 22        Mx
L_A6874C:
    LDA #$0014                      ; $A6874C  A9 14 00     Mx
    STA $0958                       ; $A6874F  8D 58 09     Mx
    LDA $0A90                       ; $A68752  AD 90 0A     Mx
    ORA $09A4                       ; $A68755  0D A4 09     Mx
    ORA $09A0                       ; $A68758  0D A0 09     Mx
    STA $0A90                       ; $A6875B  8D 90 0A     Mx
    RTS                             ; $A6875E  60           Mx
L_A6875F:
    LDA $0950                       ; $A6875F  AD 50 09     Mx
    BEQ L_A6876E                    ; $A68762  F0 0A        Mx
    LDA $1D56                       ; $A68764  AD 56 1D     Mx
    AND #$00C0                      ; $A68767  29 C0 00     Mx
    BNE L_A6876E                    ; $A6876A  D0 02        Mx
    BRA L_A6874C                    ; $A6876C  80 DE        Mx
L_A6876E:
    LDA #$0000                      ; $A6876E  A9 00 00     Mx
    STA $00D0                       ; $A68771  8D D0 00     Mx
    RTS                             ; $A68774  60           Mx
L_A68775:
    JSR L_A68CFB                    ; $A68775  20 FB 8C     Mx
    STA $00E5                       ; $A68778  8D E5 00     Mx
    STZ $0978                       ; $A6877B  9C 78 09     Mx
    LDA $097A                       ; $A6877E  AD 7A 09     Mx
    BMI L_A687CB                    ; $A68781  30 48        Mx
    LDA #$FFFF                      ; $A68783  A9 FF FF     Mx
    STA $097A                       ; $A68786  8D 7A 09     Mx
    LDX $00E5                       ; $A68789  AE E5 00     Mx
    LDA $A7E8BB,X                   ; $A6878C  BF BB E8 A7  Mx
    AND #$00FF                      ; $A68790  29 FF 00     Mx
    STA $00D0                       ; $A68793  8D D0 00     Mx
    LSR                             ; $A68796  4A           Mx
    LSR                             ; $A68797  4A           Mx
    STA $00D6                       ; $A68798  8D D6 00     Mx
    LDA $1D56                       ; $A6879B  AD 56 1D     Mx
    STA $00BA                       ; $A6879E  8D BA 00     Mx
    INC $00D0                       ; $A687A1  EE D0 00     Mx
    SEP #$20                        ; $A687A4  E2 20        Mx
    LDA $00D0                       ; $A687A6  AD D0 00     mx
    STA $4202                       ; $A687A9  8D 02 42     mx
    LDA $00BA                       ; $A687AC  AD BA 00     mx
    STA $4203                       ; $A687AF  8D 03 42     mx
    NOP                             ; $A687B2  EA           mx
    NOP                             ; $A687B3  EA           mx
    NOP                             ; $A687B4  EA           mx
    REP #$20                        ; $A687B5  C2 20        mx
    LDA $4216                       ; $A687B7  AD 16 42     Mx
    STA $00BA                       ; $A687BA  8D BA 00     Mx
    LDA $00BB                       ; $A687BD  AD BB 00     Mx
    AND #$00FF                      ; $A687C0  29 FF 00     Mx
    INC                             ; $A687C3  1A           Mx
    CLC                             ; $A687C4  18           Mx
    ADC $00D6                       ; $A687C5  6D D6 00     Mx
    STA $097C                       ; $A687C8  8D 7C 09     Mx
L_A687CB:
    LDA $097C                       ; $A687CB  AD 7C 09     Mx
    SEC                             ; $A687CE  38           Mx
    SBC #$0002                      ; $A687CF  E9 02 00     Mx
    BEQ L_A687DC                    ; $A687D2  F0 08        Mx
    BMI L_A687DC                    ; $A687D4  30 06        Mx
    STA $00D0                       ; $A687D6  8D D0 00     Mx
    JMP L_A68934                    ; $A687D9  4C 34 89     Mx
L_A687DC:
    LDA #$06F0                      ; $A687DC  A9 F0 06     Mx
    STA $00DC                       ; $A687DF  8D DC 00     Mx
    CMP $00CC                       ; $A687E2  CD CC 00     Mx
    BNE L_A687EA                    ; $A687E5  D0 03        Mx
    JMP L_A68845                    ; $A687E7  4C 45 88     Mx
L_A687EA:
    LDY #$64                        ; $A687EA  A0 64        Mx
    LDA ($CC),Y                     ; $A687EC  B1 CC        Mx
    CMP #$00F0                      ; $A687EE  C9 F0 00     Mx
    BCC L_A687F6                    ; $A687F1  90 03        Mx
    JMP L_A68845                    ; $A687F3  4C 45 88     Mx
L_A687F6:
    LDY #$08                        ; $A687F6  A0 08        Mx
    LDA ($CC),Y                     ; $A687F8  B1 CC        Mx
    AND #$0004                      ; $A687FA  29 04 00     Mx
    BNE L_A6883F                    ; $A687FD  D0 40        Mx
    LDA $09AC                       ; $A687FF  AD AC 09     Mx
    CMP #$0030                      ; $A68802  C9 30 00     Mx
    BNE L_A6880A                    ; $A68805  D0 03        Mx
    JMP L_A6883F                    ; $A68807  4C 3F 88     Mx
L_A6880A:
    LDA $0A12                       ; $A6880A  AD 12 0A     Mx
    SEC                             ; $A6880D  38           Mx
    SBC $0A1A                       ; $A6880E  ED 1A 0A     Mx
    BPL L_A6881A                    ; $A68811  10 07        Mx
    EOR #$FFFF                      ; $A68813  49 FF FF     Mx
    CLC                             ; $A68816  18           Mx
    ADC #$0001                      ; $A68817  69 01 00     Mx
L_A6881A:
    CMP #$0041                      ; $A6881A  C9 41 00     Mx
    BMI L_A6882C                    ; $A6881D  30 0D        Mx
    SEC                             ; $A6881F  38           Mx
    SBC #$0080                      ; $A68820  E9 80 00     Mx
    BPL L_A6882C                    ; $A68823  10 07        Mx
    EOR #$FFFF                      ; $A68825  49 FF FF     Mx
    CLC                             ; $A68828  18           Mx
    ADC #$0001                      ; $A68829  69 01 00     Mx
L_A6882C:
    SEC                             ; $A6882C  38           Mx
    SBC #$001C                      ; $A6882D  E9 1C 00     Mx
    BMI L_A6883F                    ; $A68830  30 0D        Mx
    BEQ L_A6883F                    ; $A68832  F0 0B        Mx
    LDA $0A20                       ; $A68834  AD 20 0A     Mx
    CMP #$0080                      ; $A68837  C9 80 00     Mx
    BCS L_A6883F                    ; $A6883A  B0 03        Mx
    JMP L_A68845                    ; $A6883C  4C 45 88     Mx
L_A6883F:
    LDA $00CC                       ; $A6883F  AD CC 00     Mx
    STA $00DC                       ; $A68842  8D DC 00     Mx
L_A68845:
    LDY #$2E                        ; $A68845  A0 2E        Mx
    LDA ($DC),Y                     ; $A68847  B1 DC        Mx
    STA $00D0                       ; $A68849  8D D0 00     Mx
    LDY #$36                        ; $A6884C  A0 36        Mx
    LDA ($DC),Y                     ; $A6884E  B1 DC        Mx
    STA $00D3                       ; $A68850  8D D3 00     Mx
    LDA $0CCB                       ; $A68853  AD CB 0C     Mx
    CMP #$0008                      ; $A68856  C9 08 00     Mx
    BCS L_A6885E                    ; $A68859  B0 03        Mx
L_A6885B:
    JMP L_A688D8                    ; $A6885B  4C D8 88     Mx
L_A6885E:
    LDA $0CCD                       ; $A6885E  AD CD 0C     Mx
    BNE L_A6886B                    ; $A68861  D0 08        Mx
    LDA $0CCF                       ; $A68863  AD CF 0C     Mx
    CMP #$0006                      ; $A68866  C9 06 00     Mx
    BCC L_A6885B                    ; $A68869  90 F0        Mx
L_A6886B:
    LDY #$08                        ; $A6886B  A0 08        Mx
    LDA ($CC),Y                     ; $A6886D  B1 CC        Mx
    AND #$0001                      ; $A6886F  29 01 00     Mx
    BNE L_A6885B                    ; $A68872  D0 E7        Mx
    LDY #$39                        ; $A68874  A0 39        Mx
    LDA ($DC),Y                     ; $A68876  B1 DC        Mx
    CMP #$8000                      ; $A68878  C9 00 80     Mx
    ROR                             ; $A6887B  6A           Mx
    CMP #$8000                      ; $A6887C  C9 00 80     Mx
    ROR                             ; $A6887F  6A           Mx
    CMP #$8000                      ; $A68880  C9 00 80     Mx
    ROR                             ; $A68883  6A           Mx
    CMP #$8000                      ; $A68884  C9 00 80     Mx
    ROR                             ; $A68887  6A           Mx
    CLC                             ; $A68888  18           Mx
    ADC $00D0                       ; $A68889  6D D0 00     Mx
    STA $00D0                       ; $A6888C  8D D0 00     Mx
    LDY #$41                        ; $A6888F  A0 41        Mx
    LDA ($DC),Y                     ; $A68891  B1 DC        Mx
    CMP #$8000                      ; $A68893  C9 00 80     Mx
    ROR                             ; $A68896  6A           Mx
    CMP #$8000                      ; $A68897  C9 00 80     Mx
    ROR                             ; $A6889A  6A           Mx
    CMP #$8000                      ; $A6889B  C9 00 80     Mx
    ROR                             ; $A6889E  6A           Mx
    CLC                             ; $A6889F  18           Mx
    ADC $00D3                       ; $A688A0  6D D3 00     Mx
    STA $00D3                       ; $A688A3  8D D3 00     Mx
    LDA $0752                       ; $A688A6  AD 52 07     Mx
    CLC                             ; $A688A9  18           Mx
    ADC $00D0                       ; $A688AA  6D D0 00     Mx
    ASL $00D0                       ; $A688AD  0E D0 00     Mx
    CLC                             ; $A688B0  18           Mx
    ADC $00D0                       ; $A688B1  6D D0 00     Mx
    CMP #$8000                      ; $A688B4  C9 00 80     Mx
    ROR                             ; $A688B7  6A           Mx
    CMP #$8000                      ; $A688B8  C9 00 80     Mx
    ROR                             ; $A688BB  6A           Mx
    STA $00D0                       ; $A688BC  8D D0 00     Mx
    LDA #$0374                      ; $A688BF  A9 74 03     Mx
    CLC                             ; $A688C2  18           Mx
    ADC $00D3                       ; $A688C3  6D D3 00     Mx
    ASL $00D3                       ; $A688C6  0E D3 00     Mx
    CLC                             ; $A688C9  18           Mx
    ADC $00D3                       ; $A688CA  6D D3 00     Mx
    CMP #$8000                      ; $A688CD  C9 00 80     Mx
    ROR                             ; $A688D0  6A           Mx
    CMP #$8000                      ; $A688D1  C9 00 80     Mx
    ROR                             ; $A688D4  6A           Mx
    STA $00D3                       ; $A688D5  8D D3 00     Mx
L_A688D8:
    LDA $00D0                       ; $A688D8  AD D0 00     Mx
    STA $097E                       ; $A688DB  8D 7E 09     Mx
    LDA $00D3                       ; $A688DE  AD D3 00     Mx
    STA $0980                       ; $A688E1  8D 80 09     Mx
    LDA #$0019                      ; $A688E4  A9 19 00     Mx
    STA $00D0                       ; $A688E7  8D D0 00     Mx
    LDY #$68                        ; $A688EA  A0 68        Mx
    LDA ($CC),Y                     ; $A688EC  B1 CC        Mx
    CMP #$00F8                      ; $A688EE  C9 F8 00     Mx
    BCS L_A68934                    ; $A688F1  B0 41        Mx
    LDX $00E5                       ; $A688F3  AE E5 00     Mx
    LDA $A7E8DA,X                   ; $A688F6  BF DA E8 A7  Mx
    AND #$00FF                      ; $A688FA  29 FF 00     Mx
    STA $00D0                       ; $A688FD  8D D0 00     Mx
    LSR                             ; $A68900  4A           Mx
    LSR                             ; $A68901  4A           Mx
    STA $00D6                       ; $A68902  8D D6 00     Mx
    LDA $1D58                       ; $A68905  AD 58 1D     Mx
    STA $00BA                       ; $A68908  8D BA 00     Mx
    INC $00D0                       ; $A6890B  EE D0 00     Mx
    SEP #$20                        ; $A6890E  E2 20        Mx
    LDA $00D0                       ; $A68910  AD D0 00     mx
    STA $4202                       ; $A68913  8D 02 42     mx
    LDA $00BA                       ; $A68916  AD BA 00     mx
    STA $4203                       ; $A68919  8D 03 42     mx
    NOP                             ; $A6891C  EA           mx
    NOP                             ; $A6891D  EA           mx
    NOP                             ; $A6891E  EA           mx
    REP #$20                        ; $A6891F  C2 20        mx
    LDA $4216                       ; $A68921  AD 16 42     Mx
    STA $00BA                       ; $A68924  8D BA 00     Mx
    LDA $00BB                       ; $A68927  AD BB 00     Mx
    AND #$00FF                      ; $A6892A  29 FF 00     Mx
    CLC                             ; $A6892D  18           Mx
    ADC $00D6                       ; $A6892E  6D D6 00     Mx
    STA $00D0                       ; $A68931  8D D0 00     Mx
L_A68934:
    LDA $00D0                       ; $A68934  AD D0 00     Mx
    STA $097C                       ; $A68937  8D 7C 09     Mx
    LDA $097E                       ; $A6893A  AD 7E 09     Mx
    STA $00D0                       ; $A6893D  8D D0 00     Mx
    LDA $0980                       ; $A68940  AD 80 09     Mx
    STA $00D3                       ; $A68943  8D D3 00     Mx
    JSR L_A68C90                    ; $A68946  20 90 8C     Mx
    STA $00D6                       ; $A68949  8D D6 00     Mx
    LDA $0754                       ; $A6894C  AD 54 07     Mx
    SEC                             ; $A6894F  38           Mx
    SBC #$0008                      ; $A68950  E9 08 00     Mx
    STA $00D0                       ; $A68953  8D D0 00     Mx
    CMP #$00F0                      ; $A68956  C9 F0 00     Mx
    BCC L_A68962                    ; $A68959  90 07        Mx
    SEC                             ; $A6895B  38           Mx
    SBC #$0040                      ; $A6895C  E9 40 00     Mx
    STA $00D0                       ; $A6895F  8D D0 00     Mx
L_A68962:
    LDA $0928                       ; $A68962  AD 28 09     Mx
    CMP $00D0                       ; $A68965  CD D0 00     Mx
    BCC L_A68973                    ; $A68968  90 09        Mx
    LDA $00D6                       ; $A6896A  AD D6 00     Mx
    ORA $09A4                       ; $A6896D  0D A4 09     Mx
    STA $00D6                       ; $A68970  8D D6 00     Mx
L_A68973:
    LDA $092C                       ; $A68973  AD 2C 09     Mx
    CMP #$001A                      ; $A68976  C9 1A 00     Mx
    BCS L_A68993                    ; $A68979  B0 18        Mx
    LDA $0CCB                       ; $A6897B  AD CB 0C     Mx
    CMP #$0008                      ; $A6897E  C9 08 00     Mx
    BCC L_A68990                    ; $A68981  90 0D        Mx
    LDA $0CCD                       ; $A68983  AD CD 0C     Mx
    BNE L_A68993                    ; $A68986  D0 0B        Mx
    LDA $0CCF                       ; $A68988  AD CF 0C     Mx
    CMP #$0006                      ; $A6898B  C9 06 00     Mx
    BCS L_A68993                    ; $A6898E  B0 03        Mx
L_A68990:
    JMP L_A68A17                    ; $A68990  4C 17 8A     Mx
L_A68993:
    LDX $00E5                       ; $A68993  AE E5 00     Mx
    LDA $A7E8F9,X                   ; $A68996  BF F9 E8 A7  Mx
    AND #$00FF                      ; $A6899A  29 FF 00     Mx
    CMP $092C                       ; $A6899D  CD 2C 09     Mx
    BCS L_A689A5                    ; $A689A0  B0 03        Mx
    JMP L_A68A34                    ; $A689A2  4C 34 8A     Mx
L_A689A5:
    LDA #$0104                      ; $A689A5  A9 04 01     Mx
    STA $00BA                       ; $A689A8  8D BA 00     Mx
    SEP #$20                        ; $A689AB  E2 20        Mx
    LDA $1D56                       ; $A689AD  AD 56 1D     mx
    STA $4202                       ; $A689B0  8D 02 42     mx
    LDA $00BA                       ; $A689B3  AD BA 00     mx
    STA $4203                       ; $A689B6  8D 03 42     mx
    NOP                             ; $A689B9  EA           mx
    NOP                             ; $A689BA  EA           mx
    NOP                             ; $A689BB  EA           mx
    REP #$20                        ; $A689BC  C2 20        mx
    LDA $4216                       ; $A689BE  AD 16 42     Mx
    STA $00BA                       ; $A689C1  8D BA 00     Mx
    STA $00A8                       ; $A689C4  8D A8 00     Mx
    LDA #$0104                      ; $A689C7  A9 04 01     Mx
    STA $00BA                       ; $A689CA  8D BA 00     Mx
    SEP #$20                        ; $A689CD  E2 20        Mx
    LDA $1D56                       ; $A689CF  AD 56 1D     mx
    STA $4202                       ; $A689D2  8D 02 42     mx
    LDA $00BB                       ; $A689D5  AD BB 00     mx
    STA $4203                       ; $A689D8  8D 03 42     mx
    NOP                             ; $A689DB  EA           mx
    NOP                             ; $A689DC  EA           mx
    NOP                             ; $A689DD  EA           mx
    REP #$20                        ; $A689DE  C2 20        mx
    LDA $4216                       ; $A689E0  AD 16 42     Mx
    STA $00BB                       ; $A689E3  8D BB 00     Mx
    STZ $00F4                       ; $A689E6  9C F4 00     Mx
    STZ $00F2                       ; $A689E9  9C F2 00     Mx
    STA $00F3                       ; $A689EC  8D F3 00     Mx
    LDA $00F2                       ; $A689EF  AD F2 00     Mx
    CLC                             ; $A689F2  18           Mx
    ADC $00A8                       ; $A689F3  6D A8 00     Mx
    STA $00F2                       ; $A689F6  8D F2 00     Mx
    LDA $00F4                       ; $A689F9  AD F4 00     Mx
    ADC #$0000                      ; $A689FC  69 00 00     Mx
    STA $00F4                       ; $A689FF  8D F4 00     Mx
    LDA $00F3                       ; $A68A02  AD F3 00     Mx
    STA $00D0                       ; $A68A05  8D D0 00     Mx
    LDX $00E5                       ; $A68A08  AE E5 00     Mx
    LDA $A7E919,X                   ; $A68A0B  BF 19 E9 A7  Mx
    AND #$00FF                      ; $A68A0F  29 FF 00     Mx
    CMP $00D0                       ; $A68A12  CD D0 00     Mx
    BCC L_A68A34                    ; $A68A15  90 1D        Mx
L_A68A17:
    LDA $00D6                       ; $A68A17  AD D6 00     Mx
    AND #$0F00                      ; $A68A1A  29 00 0F     Mx
    ORA $09A0                       ; $A68A1D  0D A0 09     Mx
    STA $00D6                       ; $A68A20  8D D6 00     Mx
    LDA $1D56                       ; $A68A23  AD 56 1D     Mx
    AND #$0001                      ; $A68A26  29 01 00     Mx
    BNE L_A68A34                    ; $A68A29  D0 09        Mx
    LDA $00D6                       ; $A68A2B  AD D6 00     Mx
    ORA $09A4                       ; $A68A2E  0D A4 09     Mx
    STA $00D6                       ; $A68A31  8D D6 00     Mx
L_A68A34:
    LDA $092C                       ; $A68A34  AD 2C 09     Mx
    CMP #$002F                      ; $A68A37  C9 2F 00     Mx
    BCC L_A68A3F                    ; $A68A3A  90 03        Mx
    JMP L_A68AD0                    ; $A68A3C  4C D0 8A     Mx
L_A68A3F:
    LDY #$04                        ; $A68A3F  A0 04        Mx
    LDA ($CC),Y                     ; $A68A41  B1 CC        Mx
    CMP #$0030                      ; $A68A43  C9 30 00     Mx
    BEQ L_A68A4E                    ; $A68A46  F0 06        Mx
    LDY #$32                        ; $A68A48  A0 32        Mx
    LDA ($CC),Y                     ; $A68A4A  B1 CC        Mx
    BNE L_A68A8A                    ; $A68A4C  D0 3C        Mx
L_A68A4E:
    LDY #$08                        ; $A68A4E  A0 08        Mx
    LDA ($CC),Y                     ; $A68A50  B1 CC        Mx
    AND #$0001                      ; $A68A52  29 01 00     Mx
    BEQ L_A68AD0                    ; $A68A55  F0 79        Mx
    LDA #$0005                      ; $A68A57  A9 05 00     Mx
    STA $00D0                       ; $A68A5A  8D D0 00     Mx
    LDA $1D57                       ; $A68A5D  AD 57 1D     Mx
    STA $00BA                       ; $A68A60  8D BA 00     Mx
    INC $00D0                       ; $A68A63  EE D0 00     Mx
    SEP #$20                        ; $A68A66  E2 20        Mx
    LDA $00D0                       ; $A68A68  AD D0 00     mx
    STA $4202                       ; $A68A6B  8D 02 42     mx
    LDA $00BA                       ; $A68A6E  AD BA 00     mx
    STA $4203                       ; $A68A71  8D 03 42     mx
    NOP                             ; $A68A74  EA           mx
    NOP                             ; $A68A75  EA           mx
    NOP                             ; $A68A76  EA           mx
    REP #$20                        ; $A68A77  C2 20        mx
    LDA $4216                       ; $A68A79  AD 16 42     Mx
    STA $00BA                       ; $A68A7C  8D BA 00     Mx
    LDA $00BB                       ; $A68A7F  AD BB 00     Mx
    AND #$00FF                      ; $A68A82  29 FF 00     Mx
    BNE L_A68AD0                    ; $A68A85  D0 49        Mx
    JMP L_A68AC7                    ; $A68A87  4C C7 8A     Mx
L_A68A8A:
    LDA #$003C                      ; $A68A8A  A9 3C 00     Mx
    STA $00D0                       ; $A68A8D  8D D0 00     Mx
    LDA $1D56                       ; $A68A90  AD 56 1D     Mx
    STA $00BA                       ; $A68A93  8D BA 00     Mx
    INC $00D0                       ; $A68A96  EE D0 00     Mx
    SEP #$20                        ; $A68A99  E2 20        Mx
    LDA $00D0                       ; $A68A9B  AD D0 00     mx
    STA $4202                       ; $A68A9E  8D 02 42     mx
    LDA $00BA                       ; $A68AA1  AD BA 00     mx
    STA $4203                       ; $A68AA4  8D 03 42     mx
    NOP                             ; $A68AA7  EA           mx
    NOP                             ; $A68AA8  EA           mx
    NOP                             ; $A68AA9  EA           mx
    REP #$20                        ; $A68AAA  C2 20        mx
    LDA $4216                       ; $A68AAC  AD 16 42     Mx
    STA $00BA                       ; $A68AAF  8D BA 00     Mx
    LDA $00BB                       ; $A68AB2  AD BB 00     Mx
    AND #$00FF                      ; $A68AB5  29 FF 00     Mx
    STA $00D0                       ; $A68AB8  8D D0 00     Mx
    LDX $00E5                       ; $A68ABB  AE E5 00     Mx
    LDA $A7E938,X                   ; $A68ABE  BF 38 E9 A7  Mx
    CMP $00D0                       ; $A68AC2  CD D0 00     Mx
    BCC L_A68AD0                    ; $A68AC5  90 09        Mx
L_A68AC7:
    LDA $00D6                       ; $A68AC7  AD D6 00     Mx
    ORA $09A2                       ; $A68ACA  0D A2 09     Mx
    STA $00D6                       ; $A68ACD  8D D6 00     Mx
L_A68AD0:
    LDA $00D6                       ; $A68AD0  AD D6 00     Mx
    STA $0A90                       ; $A68AD3  8D 90 0A     Mx
    JMP L_A68D16                    ; $A68AD6  4C 16 8D     Mx
L_A68AD9:
    LDA $0972                       ; $A68AD9  AD 72 09     Mx
    BEQ L_A68AE1                    ; $A68ADC  F0 03        Mx
L_A68ADE:
    JMP L_A684F8                    ; $A68ADE  4C F8 84     Mx
L_A68AE1:
    LDA $0A5A                       ; $A68AE1  AD 5A 0A     Mx
    BNE L_A68ADE                    ; $A68AE4  D0 F8        Mx
    STZ $0978                       ; $A68AE6  9C 78 09     Mx
    LDA $097A                       ; $A68AE9  AD 7A 09     Mx
    BEQ L_A68B45                    ; $A68AEC  F0 57        Mx
    STZ $097A                       ; $A68AEE  9C 7A 09     Mx
    LDA $0986                       ; $A68AF1  AD 86 09     Mx
    CLC                             ; $A68AF4  18           Mx
    ADC $099A                       ; $A68AF5  6D 9A 09     Mx
    BMI L_A68B02                    ; $A68AF8  30 08        Mx
    CMP #$0010                      ; $A68AFA  C9 10 00     Mx
    BMI L_A68B02                    ; $A68AFD  30 03        Mx
    LDA #$000F                      ; $A68AFF  A9 0F 00     Mx
L_A68B02:
    CLC                             ; $A68B02  18           Mx
    ADC #$000F                      ; $A68B03  69 0F 00     Mx
    BPL L_A68B0B                    ; $A68B06  10 03        Mx
    LDA #$0000                      ; $A68B08  A9 00 00     Mx
L_A68B0B:
    TAX                             ; $A68B0B  AA           Mx
    LDA $A7E7FA,X                   ; $A68B0C  BF FA E7 A7  Mx
    AND #$00FF                      ; $A68B10  29 FF 00     Mx
    STA $00D0                       ; $A68B13  8D D0 00     Mx
    LDA $1D56                       ; $A68B16  AD 56 1D     Mx
    STA $00BA                       ; $A68B19  8D BA 00     Mx
    INC $00D0                       ; $A68B1C  EE D0 00     Mx
    SEP #$20                        ; $A68B1F  E2 20        Mx
    LDA $00D0                       ; $A68B21  AD D0 00     mx
    STA $4202                       ; $A68B24  8D 02 42     mx
    LDA $00BA                       ; $A68B27  AD BA 00     mx
    STA $4203                       ; $A68B2A  8D 03 42     mx
    NOP                             ; $A68B2D  EA           mx
    NOP                             ; $A68B2E  EA           mx
    NOP                             ; $A68B2F  EA           mx
    REP #$20                        ; $A68B30  C2 20        mx
    LDA $4216                       ; $A68B32  AD 16 42     Mx
    STA $00BA                       ; $A68B35  8D BA 00     Mx
    LDA $00BB                       ; $A68B38  AD BB 00     Mx
    AND #$00FF                      ; $A68B3B  29 FF 00     Mx
    CLC                             ; $A68B3E  18           Mx
    ADC #$0002                      ; $A68B3F  69 02 00     Mx
    STA $097C                       ; $A68B42  8D 7C 09     Mx
L_A68B45:
    LDA $097C                       ; $A68B45  AD 7C 09     Mx
    SEC                             ; $A68B48  38           Mx
    SBC #$0002                      ; $A68B49  E9 02 00     Mx
    BEQ L_A68B56                    ; $A68B4C  F0 08        Mx
    BMI L_A68B56                    ; $A68B4E  30 06        Mx
    STA $00D0                       ; $A68B50  8D D0 00     Mx
    JMP L_A68C42                    ; $A68B53  4C 42 8C     Mx
L_A68B56:
    LDA $09AC                       ; $A68B56  AD AC 09     Mx
    CMP #$0030                      ; $A68B59  C9 30 00     Mx
    BNE L_A68B61                    ; $A68B5C  D0 03        Mx
    JMP L_A68B78                    ; $A68B5E  4C 78 8B     Mx
L_A68B61:
    LDA $092C                       ; $A68B61  AD 2C 09     Mx
    CMP $0A14                       ; $A68B64  CD 14 0A     Mx
    BCS L_A68B6C                    ; $A68B67  B0 03        Mx
    JMP L_A68B78                    ; $A68B69  4C 78 8B     Mx
L_A68B6C:
    STZ $00D0                       ; $A68B6C  9C D0 00     Mx
    LDA #$0374                      ; $A68B6F  A9 74 03     Mx
    STA $00D3                       ; $A68B72  8D D3 00     Mx
    JMP L_A68BE2                    ; $A68B75  4C E2 8B     Mx
L_A68B78:
    LDA $0BE5                       ; $A68B78  AD E5 0B     Mx
    STA $00DF                       ; $A68B7B  8D DF 00     Mx
    LDA $0BE3                       ; $A68B7E  AD E3 0B     Mx
    ASL                             ; $A68B81  0A           Mx
    ROL $00DF                       ; $A68B82  2E DF 00     Mx
    ASL                             ; $A68B85  0A           Mx
    ROL $00DF                       ; $A68B86  2E DF 00     Mx
    ASL                             ; $A68B89  0A           Mx
    ROL $00DF                       ; $A68B8A  2E DF 00     Mx
    CLC                             ; $A68B8D  18           Mx
    ADC $0BD7                       ; $A68B8E  6D D7 0B     Mx
    STA $00A4                       ; $A68B91  8D A4 00     Mx
    LDA $0BD9                       ; $A68B94  AD D9 0B     Mx
    ADC $00DF                       ; $A68B97  6D DF 00     Mx
    STA $00D0                       ; $A68B9A  8D D0 00     Mx
    LDA $00A4                       ; $A68B9D  AD A4 00     Mx
    CLC                             ; $A68BA0  18           Mx
    ADC $0BE3                       ; $A68BA1  6D E3 0B     Mx
    LDA $00D0                       ; $A68BA4  AD D0 00     Mx
    ADC $0BE5                       ; $A68BA7  6D E5 0B     Mx
    STA $00D0                       ; $A68BAA  8D D0 00     Mx
    LDA $0BED                       ; $A68BAD  AD ED 0B     Mx
    STA $00DC                       ; $A68BB0  8D DC 00     Mx
    LDA $0BEB                       ; $A68BB3  AD EB 0B     Mx
    ASL                             ; $A68BB6  0A           Mx
    ROL $00DC                       ; $A68BB7  2E DC 00     Mx
    ASL                             ; $A68BBA  0A           Mx
    ROL $00DC                       ; $A68BBB  2E DC 00     Mx
    ASL                             ; $A68BBE  0A           Mx
    ROL $00DC                       ; $A68BBF  2E DC 00     Mx
    CLC                             ; $A68BC2  18           Mx
    ADC $0BDF                       ; $A68BC3  6D DF 0B     Mx
    STA $00A4                       ; $A68BC6  8D A4 00     Mx
    LDA $0BE1                       ; $A68BC9  AD E1 0B     Mx
    ADC $00DC                       ; $A68BCC  6D DC 00     Mx
    STA $00D3                       ; $A68BCF  8D D3 00     Mx
    LDA $00A4                       ; $A68BD2  AD A4 00     Mx
    CLC                             ; $A68BD5  18           Mx
    ADC $0BEB                       ; $A68BD6  6D EB 0B     Mx
    LDA $00D3                       ; $A68BD9  AD D3 00     Mx
    ADC $0BED                       ; $A68BDC  6D ED 0B     Mx
    STA $00D3                       ; $A68BDF  8D D3 00     Mx
L_A68BE2:
    LDA $00D0                       ; $A68BE2  AD D0 00     Mx
    STA $097E                       ; $A68BE5  8D 7E 09     Mx
    LDA $00D3                       ; $A68BE8  AD D3 00     Mx
    STA $0980                       ; $A68BEB  8D 80 09     Mx
    LDA $099A                       ; $A68BEE  AD 9A 09     Mx
    CLC                             ; $A68BF1  18           Mx
    ADC $0986                       ; $A68BF2  6D 86 09     Mx
    BMI L_A68BFF                    ; $A68BF5  30 08        Mx
    CMP #$0010                      ; $A68BF7  C9 10 00     Mx
    BMI L_A68BFF                    ; $A68BFA  30 03        Mx
    LDA #$000F                      ; $A68BFC  A9 0F 00     Mx
L_A68BFF:
    CLC                             ; $A68BFF  18           Mx
    ADC #$000F                      ; $A68C00  69 0F 00     Mx
    BPL L_A68C08                    ; $A68C03  10 03        Mx
    LDA #$0000                      ; $A68C05  A9 00 00     Mx
L_A68C08:
    TAX                             ; $A68C08  AA           Mx
    LDA $A7E819,X                   ; $A68C09  BF 19 E8 A7  Mx
    AND #$00FF                      ; $A68C0D  29 FF 00     Mx
    STA $00D0                       ; $A68C10  8D D0 00     Mx
    LDA $1D58                       ; $A68C13  AD 58 1D     Mx
    STA $00BA                       ; $A68C16  8D BA 00     Mx
    INC $00D0                       ; $A68C19  EE D0 00     Mx
    SEP #$20                        ; $A68C1C  E2 20        Mx
    LDA $00D0                       ; $A68C1E  AD D0 00     mx
    STA $4202                       ; $A68C21  8D 02 42     mx
    LDA $00BA                       ; $A68C24  AD BA 00     mx
    STA $4203                       ; $A68C27  8D 03 42     mx
    NOP                             ; $A68C2A  EA           mx
    NOP                             ; $A68C2B  EA           mx
    NOP                             ; $A68C2C  EA           mx
    REP #$20                        ; $A68C2D  C2 20        mx
    LDA $4216                       ; $A68C2F  AD 16 42     Mx
    STA $00BA                       ; $A68C32  8D BA 00     Mx
    LDA $00BB                       ; $A68C35  AD BB 00     Mx
    AND #$00FF                      ; $A68C38  29 FF 00     Mx
    CLC                             ; $A68C3B  18           Mx
    ADC #$0005                      ; $A68C3C  69 05 00     Mx
    STA $00D0                       ; $A68C3F  8D D0 00     Mx
L_A68C42:
    LDA $00D0                       ; $A68C42  AD D0 00     Mx
    STA $097C                       ; $A68C45  8D 7C 09     Mx
    LDA $097E                       ; $A68C48  AD 7E 09     Mx
    STA $00D0                       ; $A68C4B  8D D0 00     Mx
    LDA $0980                       ; $A68C4E  AD 80 09     Mx
    STA $00D3                       ; $A68C51  8D D3 00     Mx
    JSR L_A68C90                    ; $A68C54  20 90 8C     Mx
    LDA $092C                       ; $A68C57  AD 2C 09     Mx
    CMP #$0018                      ; $A68C5A  C9 18 00     Mx
    BCS L_A68C8D                    ; $A68C5D  B0 2E        Mx
    LDA $0BDD                       ; $A68C5F  AD DD 0B     Mx
    CMP #$0038                      ; $A68C62  C9 38 00     Mx
    BCC L_A68C8D                    ; $A68C65  90 26        Mx
    CMP #$006A                      ; $A68C67  C9 6A 00     Mx
    BCS L_A68C8D                    ; $A68C6A  B0 21        Mx
    LDX $0C1F                       ; $A68C6C  AE 1F 0C     Mx
    CPX $08C0                       ; $A68C6F  EC C0 08     Mx
    BEQ L_A68C8D                    ; $A68C72  F0 19        Mx
    CPX $09A8                       ; $A68C74  EC A8 09     Mx
    BEQ L_A68C8D                    ; $A68C77  F0 14        Mx
    LDA $1D57                       ; $A68C79  AD 57 1D     Mx
    AND #$0003                      ; $A68C7C  29 03 00     Mx
    CMP #$0002                      ; $A68C7F  C9 02 00     Mx
    BNE L_A68C8D                    ; $A68C82  D0 09        Mx
    LDA $0A90                       ; $A68C84  AD 90 0A     Mx
    ORA $09A2                       ; $A68C87  0D A2 09     Mx
    STA $0A90                       ; $A68C8A  8D 90 0A     Mx
L_A68C8D:
    JMP L_A68D16                    ; $A68C8D  4C 16 8D     Mx
L_A68C90:
    LDA $08EE                       ; $A68C90  AD EE 08     Mx
    SEC                             ; $A68C93  38           Mx
    SBC $00D0                       ; $A68C94  ED D0 00     Mx
    STZ $00D0                       ; $A68C97  9C D0 00     Mx
    STA $00B7                       ; $A68C9A  8D B7 00     Mx
    BPL L_A68CA6                    ; $A68C9D  10 07        Mx
    EOR #$FFFF                      ; $A68C9F  49 FF FF     Mx
    CLC                             ; $A68CA2  18           Mx
    ADC #$0001                      ; $A68CA3  69 01 00     Mx
L_A68CA6:
    SEC                             ; $A68CA6  38           Mx
    SBC #$000A                      ; $A68CA7  E9 0A 00     Mx
    BMI L_A68CBF                    ; $A68CAA  30 13        Mx
    LDA $00B7                       ; $A68CAC  AD B7 00     Mx
    BMI L_A68CB9                    ; $A68CAF  30 08        Mx
    LDA #$0200                      ; $A68CB1  A9 00 02     Mx
    STA $00D0                       ; $A68CB4  8D D0 00     Mx
    BRA L_A68CBF                    ; $A68CB7  80 06        Mx
L_A68CB9:
    LDA #$0100                      ; $A68CB9  A9 00 01     Mx
    STA $00D0                       ; $A68CBC  8D D0 00     Mx
L_A68CBF:
    LDA $08F6                       ; $A68CBF  AD F6 08     Mx
    SEC                             ; $A68CC2  38           Mx
    SBC $00D3                       ; $A68CC3  ED D3 00     Mx
    STA $00B7                       ; $A68CC6  8D B7 00     Mx
    BPL L_A68CD2                    ; $A68CC9  10 07        Mx
    EOR #$FFFF                      ; $A68CCB  49 FF FF     Mx
    CLC                             ; $A68CCE  18           Mx
    ADC #$0001                      ; $A68CCF  69 01 00     Mx
L_A68CD2:
    SEC                             ; $A68CD2  38           Mx
    SBC #$000A                      ; $A68CD3  E9 0A 00     Mx
    BMI L_A68CF1                    ; $A68CD6  30 19        Mx
    LDA $00B7                       ; $A68CD8  AD B7 00     Mx
    BMI L_A68CE8                    ; $A68CDB  30 0B        Mx
    LDA #$0800                      ; $A68CDD  A9 00 08     Mx
    ORA $00D0                       ; $A68CE0  0D D0 00     Mx
    STA $00D0                       ; $A68CE3  8D D0 00     Mx
    BRA L_A68CF1                    ; $A68CE6  80 09        Mx
L_A68CE8:
    LDA #$0400                      ; $A68CE8  A9 00 04     Mx
    ORA $00D0                       ; $A68CEB  0D D0 00     Mx
    STA $00D0                       ; $A68CEE  8D D0 00     Mx
L_A68CF1:
    LDA $00D0                       ; $A68CF1  AD D0 00     Mx
    STA $0A90                       ; $A68CF4  8D 90 0A     Mx
    LDA $00D0                       ; $A68CF7  AD D0 00     Mx
    RTS                             ; $A68CFA  60           Mx
L_A68CFB:
    LDA $099A                       ; $A68CFB  AD 9A 09     Mx
    CLC                             ; $A68CFE  18           Mx
    ADC $0986                       ; $A68CFF  6D 86 09     Mx
    BMI L_A68D0C                    ; $A68D02  30 08        Mx
    CMP #$0010                      ; $A68D04  C9 10 00     Mx
    BMI L_A68D0C                    ; $A68D07  30 03        Mx
    LDA #$000F                      ; $A68D09  A9 0F 00     Mx
L_A68D0C:
    CLC                             ; $A68D0C  18           Mx
    ADC #$000F                      ; $A68D0D  69 0F 00     Mx
    BPL L_A68D15                    ; $A68D10  10 03        Mx
    LDA #$0000                      ; $A68D12  A9 00 00     Mx
L_A68D15:
    RTS                             ; $A68D15  60           Mx
L_A68D16:
    LDA $0A90                       ; $A68D16  AD 90 0A     Mx
L_A68D19:
    JSR L_A69C09                    ; $A68D19  20 09 9C     Mx
    LDA $08F8                       ; $A68D1C  AD F8 08     Mx
    CLC                             ; $A68D1F  18           Mx
    ADC $08EC                       ; $A68D20  6D EC 08     Mx
    STA $08E2                       ; $A68D23  8D E2 08     Mx
    LDA $08FA                       ; $A68D26  AD FA 08     Mx
    ADC $08EE                       ; $A68D29  6D EE 08     Mx
    STA $08E0                       ; $A68D2C  8D E0 08     Mx
    SEC                             ; $A68D2F  38           Mx
    SBC #$0006                      ; $A68D30  E9 06 00     Mx
    STA $0916                       ; $A68D33  8D 16 09     Mx
    CLC                             ; $A68D36  18           Mx
    ADC #$000C                      ; $A68D37  69 0C 00     Mx
    STA $0918                       ; $A68D3A  8D 18 09     Mx
    LDA $0900                       ; $A68D3D  AD 00 09     Mx
    CLC                             ; $A68D40  18           Mx
    ADC $08F4                       ; $A68D41  6D F4 08     Mx
    STA $08EA                       ; $A68D44  8D EA 08     Mx
    LDA $0902                       ; $A68D47  AD 02 09     Mx
    ADC $08F6                       ; $A68D4A  6D F6 08     Mx
    STA $08E8                       ; $A68D4D  8D E8 08     Mx
    LDA $08FC                       ; $A68D50  AD FC 08     Mx
    CLC                             ; $A68D53  18           Mx
    ADC $08F0                       ; $A68D54  6D F0 08     Mx
    STA $08E6                       ; $A68D57  8D E6 08     Mx
    LDA $08FE                       ; $A68D5A  AD FE 08     Mx
    ADC $08F2                       ; $A68D5D  6D F2 08     Mx
    STA $08E4                       ; $A68D60  8D E4 08     Mx
    LDA $08C4                       ; $A68D63  AD C4 08     Mx
    STA $00AA                       ; $A68D66  8D AA 00     Mx
    LDA $0BD9                       ; $A68D69  AD D9 0B     Mx
    STA $00A8                       ; $A68D6C  8D A8 00     Mx
    LDA $0BF9                       ; $A68D6F  AD F9 0B     Mx
    BNE L_A68DB9                    ; $A68D72  D0 45        Mx
    LDA $0C19                       ; $A68D74  AD 19 0C     Mx
    BNE L_A68DBC                    ; $A68D77  D0 43        Mx
    LDA $08D2                       ; $A68D79  AD D2 08     Mx
    BEQ L_A68D86                    ; $A68D7C  F0 08        Mx
    LDX $0C1B                       ; $A68D7E  AE 1B 0C     Mx
    CPX $08C0                       ; $A68D81  EC C0 08     Mx
    BNE L_A68DB9                    ; $A68D84  D0 33        Mx
L_A68D86:
    LDA $08C4                       ; $A68D86  AD C4 08     Mx
    CMP #$0032                      ; $A68D89  C9 32 00     Mx
    BNE L_A68D91                    ; $A68D8C  D0 03        Mx
    JMP L_A6942B                    ; $A68D8E  4C 2B 94     Mx
L_A68D91:
    CMP #$0030                      ; $A68D91  C9 30 00     Mx
    BEQ L_A68DB9                    ; $A68D94  F0 23        Mx
    LDX $0A9A                       ; $A68D96  AE 9A 0A     Mx
    BEQ L_A68DA7                    ; $A68D99  F0 0C        Mx
    LDA $08C0                       ; $A68D9B  AD C0 08     Mx
    SEC                             ; $A68D9E  38           Mx
    SBC $0C1B                       ; $A68D9F  ED 1B 0C     Mx
    AND #$00FF                      ; $A68DA2  29 FF 00     Mx
    BNE L_A68DB9                    ; $A68DA5  D0 12        Mx
L_A68DA7:
    LDA $092C                       ; $A68DA7  AD 2C 09     Mx
    CMP #$0020                      ; $A68DAA  C9 20 00     Mx
    BCS L_A68DB9                    ; $A68DAD  B0 0A        Mx
    LDA $08C8                       ; $A68DAF  AD C8 08     Mx
    BNE L_A68DB9                    ; $A68DB2  D0 05        Mx
    LDA $094A                       ; $A68DB4  AD 4A 09     Mx
    BEQ L_A68DE6                    ; $A68DB7  F0 2D        Mx
L_A68DB9:
    JMP L_A6985C                    ; $A68DB9  4C 5C 98     Mx
L_A68DBC:
    CMP $08C0                       ; $A68DBC  CD C0 08     Mx
    BEQ L_A68DB9                    ; $A68DBF  F0 F8        Mx
    LDA $094E                       ; $A68DC1  AD 4E 09     Mx
    AND #$007F                      ; $A68DC4  29 7F 00     Mx
    BNE L_A68DB9                    ; $A68DC7  D0 F0        Mx
    LDY #$54                        ; $A68DC9  A0 54        Mx
    LDA $00A8                       ; $A68DCB  AD A8 00     Mx
    SEC                             ; $A68DCE  38           Mx
    SBC ($CC),Y                     ; $A68DCF  F1 CC        Mx
    STA $00A8                       ; $A68DD1  8D A8 00     Mx
    LDA $08C4                       ; $A68DD4  AD C4 08     Mx
    CMP #$002C                      ; $A68DD7  C9 2C 00     Mx
    BEQ L_A68DE6                    ; $A68DDA  F0 0A        Mx
    CMP #$0020                      ; $A68DDC  C9 20 00     Mx
    BCC L_A68DB9                    ; $A68DDF  90 D8        Mx
    CMP #$0025                      ; $A68DE1  C9 25 00     Mx
    BCS L_A68DB9                    ; $A68DE4  B0 D3        Mx
L_A68DE6:
    LDA $00A8                       ; $A68DE6  AD A8 00     Mx
    CLC                             ; $A68DE9  18           Mx
    ADC $0BEF                       ; $A68DEA  6D EF 0B     Mx
    STA $00EA                       ; $A68DED  8D EA 00     Mx
    CLC                             ; $A68DF0  18           Mx
    ADC #$0012                      ; $A68DF1  69 12 00     Mx
    STA $00EC                       ; $A68DF4  8D EC 00     Mx
    LDA $0916                       ; $A68DF7  AD 16 09     Mx
    SEC                             ; $A68DFA  38           Mx
    SBC #$0002                      ; $A68DFB  E9 02 00     Mx
    SEC                             ; $A68DFE  38           Mx
    SBC $00EC                       ; $A68DFF  ED EC 00     Mx
    BMI L_A68E07                    ; $A68E02  30 03        Mx
    JMP L_A6985C                    ; $A68E04  4C 5C 98     Mx
L_A68E07:
    LDA $0918                       ; $A68E07  AD 18 09     Mx
    CLC                             ; $A68E0A  18           Mx
    ADC #$0006                      ; $A68E0B  69 06 00     Mx
    SEC                             ; $A68E0E  38           Mx
    SBC $00EA                       ; $A68E0F  ED EA 00     Mx
    BPL L_A68E17                    ; $A68E12  10 03        Mx
    JMP L_A6985C                    ; $A68E14  4C 5C 98     Mx
L_A68E17:
    LDA $08E8                       ; $A68E17  AD E8 08     Mx
    SEC                             ; $A68E1A  38           Mx
    SBC $0BF3                       ; $A68E1B  ED F3 0B     Mx
    BMI L_A68E27                    ; $A68E1E  30 07        Mx
    CMP #$0018                      ; $A68E20  C9 18 00     Mx
    BCS L_A68DB9                    ; $A68E23  B0 94        Mx
    BCC L_A68E2F                    ; $A68E25  90 08        Mx
L_A68E27:
    CMP #$FFF0                      ; $A68E27  C9 F0 FF     Mx
    BCS L_A68E2F                    ; $A68E2A  B0 03        Mx
L_A68E2C:
    JMP L_A6985C                    ; $A68E2C  4C 5C 98     Mx
L_A68E2F:
    LDA $08E4                       ; $A68E2F  AD E4 08     Mx
    SEC                             ; $A68E32  38           Mx
    SBC $0BDD                       ; $A68E33  ED DD 0B     Mx
    BMI L_A68E45                    ; $A68E36  30 0D        Mx
    CMP #$000D                      ; $A68E38  C9 0D 00     Mx
    BCS L_A68E2C                    ; $A68E3B  B0 EF        Mx
    LDA $08E4                       ; $A68E3D  AD E4 08     Mx
    BNE L_A68E2C                    ; $A68E40  D0 EA        Mx
    JMP L_A68E6B                    ; $A68E42  4C 6B 8E     Mx
L_A68E45:
    STA $00B2                       ; $A68E45  8D B2 00     Mx
    LDX $08F2                       ; $A68E48  AE F2 08     Mx
    BEQ L_A68E57                    ; $A68E4B  F0 0A        Mx
    CMP #$FFE2                      ; $A68E4D  C9 E2 FF     Mx
    BCS L_A68E68                    ; $A68E50  B0 16        Mx
    LDA #$FFAF                      ; $A68E52  A9 AF FF     Mx
    BRA L_A68E5A                    ; $A68E55  80 03        Mx
L_A68E57:
    LDA #$FFC8                      ; $A68E57  A9 C8 FF     Mx
L_A68E5A:
    LDX $098A                       ; $A68E5A  AE 8A 09     Mx
    BEQ L_A68E63                    ; $A68E5D  F0 04        Mx
    CLC                             ; $A68E5F  18           Mx
    ADC #$000E                      ; $A68E60  69 0E 00     Mx
L_A68E63:
    CMP $00B2                       ; $A68E63  CD B2 00     Mx
    BCC L_A68E6B                    ; $A68E66  90 03        Mx
L_A68E68:
    JMP L_A6985C                    ; $A68E68  4C 5C 98     Mx
L_A68E6B:
    LDA $08F2                       ; $A68E6B  AD F2 08     Mx
    BEQ L_A68EB9                    ; $A68E6E  F0 49        Mx
    LDA #$0005                      ; $A68E70  A9 05 00     Mx
    STA $094A                       ; $A68E73  8D 4A 09     Mx
    LDA #$012C                      ; $A68E76  A9 2C 01     Mx
    STA $0C3F                       ; $A68E79  8D 3F 0C     Mx
    LDA $092C                       ; $A68E7C  AD 2C 09     Mx
    CMP #$0010                      ; $A68E7F  C9 10 00     Mx
    BCS L_A68E68                    ; $A68E82  B0 E4        Mx
    LDA $0C19                       ; $A68E84  AD 19 0C     Mx
    BNE L_A68EB9                    ; $A68E87  D0 30        Mx
    LDA $0C2B                       ; $A68E89  AD 2B 0C     Mx
    BMI L_A68EB9                    ; $A68E8C  30 2B        Mx
    LDA $08D8                       ; $A68E8E  AD D8 08     Mx
    ASL                             ; $A68E91  0A           Mx
    ASL                             ; $A68E92  0A           Mx
    ASL                             ; $A68E93  0A           Mx
    ASL                             ; $A68E94  0A           Mx
    SEC                             ; $A68E95  38           Mx
    SBC $092E                       ; $A68E96  ED 2E 09     Mx
    BPL L_A68EA2                    ; $A68E99  10 07        Mx
    EOR #$FFFF                      ; $A68E9B  49 FF FF     Mx
    CLC                             ; $A68E9E  18           Mx
    ADC #$0001                      ; $A68E9F  69 01 00     Mx
L_A68EA2:
    CMP #$0040                      ; $A68EA2  C9 40 00     Mx
    BCC L_A68EB4                    ; $A68EA5  90 0D        Mx
    SEC                             ; $A68EA7  38           Mx
    SBC #$0080                      ; $A68EA8  E9 80 00     Mx
    BPL L_A68EB4                    ; $A68EAB  10 07        Mx
    EOR #$FFFF                      ; $A68EAD  49 FF FF     Mx
    CLC                             ; $A68EB0  18           Mx
    ADC #$0001                      ; $A68EB1  69 01 00     Mx
L_A68EB4:
    CMP #$0020                      ; $A68EB4  C9 20 00     Mx
    BCS L_A68E68                    ; $A68EB7  B0 AF        Mx
L_A68EB9:
    LDA $0C25                       ; $A68EB9  AD 25 0C     Mx
    CMP #$08C0                      ; $A68EBC  C9 C0 08     Mx
    BNE L_A68EC4                    ; $A68EBF  D0 03        Mx
    JMP L_A6914D                    ; $A68EC1  4C 4D 91     Mx
L_A68EC4:
    LDA $06F8                       ; $A68EC4  AD F8 06     Mx
    ORA $07E0                       ; $A68EC7  0D E0 07     Mx
    AND #$0004                      ; $A68ECA  29 04 00     Mx
    BNE L_A68ED2                    ; $A68ECD  D0 03        Mx
    JMP L_A69100                    ; $A68ECF  4C 00 91     Mx
L_A68ED2:
    LDA $0C19                       ; $A68ED2  AD 19 0C     Mx
    BNE L_A68EDA                    ; $A68ED5  D0 03        Mx
    JMP L_A69142                    ; $A68ED7  4C 42 91     Mx
L_A68EDA:
    LDA $1D56                       ; $A68EDA  AD 56 1D     Mx
    AND $0003                       ; $A68EDD  2D 03 00     Mx
    BEQ L_A68EE5                    ; $A68EE0  F0 03        Mx
    JMP L_A6985C                    ; $A68EE2  4C 5C 98     Mx
L_A68EE5:
    LDY #$32                        ; $A68EE5  A0 32        Mx
    LDA ($CC),Y                     ; $A68EE7  B1 CC        Mx
    CMP $08F2                       ; $A68EE9  CD F2 08     Mx
    BCC L_A68EF1                    ; $A68EEC  90 03        Mx
    JMP L_A69100                    ; $A68EEE  4C 00 91     Mx
L_A68EF1:
    LDY #$06                        ; $A68EF1  A0 06        Mx
    LDA ($CC),Y                     ; $A68EF3  B1 CC        Mx
    BNE L_A68EFA                    ; $A68EF5  D0 03        Mx
    JMP L_A69100                    ; $A68EF7  4C 00 91     Mx
L_A68EFA:
    LDA $0006                       ; $A68EFA  AD 06 00     Mx
    AND #$000F                      ; $A68EFD  29 0F 00     Mx
    BNE L_A68F1A                    ; $A68F00  D0 18        Mx
    LDA #$0014                      ; $A68F02  A9 14 00     Mx
    STA $0C3D                       ; $A68F05  8D 3D 0C     Mx
    LDA $1611                       ; $A68F08  AD 11 16     Mx
    BNE L_A68F1A                    ; $A68F0B  D0 0D        Mx
    LDA #$0011                      ; $A68F0D  A9 11 00     Mx
    JSL L_BDFDF3                    ; $A68F10  22 F3 FD BD  Mx
    LDA #$0064                      ; $A68F14  A9 64 00     Mx
    STA $1611                       ; $A68F17  8D 11 16     Mx
L_A68F1A:
    LDA #$0004                      ; $A68F1A  A9 04 00     Mx
    LDX $08C0                       ; $A68F1D  AE C0 08     Mx
    CPX $0A96                       ; $A68F20  EC 96 0A     Mx
    BNE L_A68F28                    ; $A68F23  D0 03        Mx
    LDA #$000A                      ; $A68F25  A9 0A 00     Mx
L_A68F28:
    LDX $08C1                       ; $A68F28  AE C1 08     Mx
    BNE L_A68F30                    ; $A68F2B  D0 03        Mx
    LDA #$0004                      ; $A68F2D  A9 04 00     Mx
L_A68F30:
    STA $00D0                       ; $A68F30  8D D0 00     Mx
    LDA $099A                       ; $A68F33  AD 9A 09     Mx
    BMI L_A68F47                    ; $A68F36  30 0F        Mx
    CMP #$0064                      ; $A68F38  C9 64 00     Mx
    BCC L_A68F40                    ; $A68F3B  90 03        Mx
    LDA #$0064                      ; $A68F3D  A9 64 00     Mx
L_A68F40:
    CLC                             ; $A68F40  18           Mx
    ADC $00D0                       ; $A68F41  6D D0 00     Mx
    STA $00D0                       ; $A68F44  8D D0 00     Mx
L_A68F47:
    LDA #$0064                      ; $A68F47  A9 64 00     Mx
    STA $00D3                       ; $A68F4A  8D D3 00     Mx
    LDA $1D56                       ; $A68F4D  AD 56 1D     Mx
    STA $00BA                       ; $A68F50  8D BA 00     Mx
    INC $00D3                       ; $A68F53  EE D3 00     Mx
    SEP #$20                        ; $A68F56  E2 20        Mx
    LDA $00D3                       ; $A68F58  AD D3 00     mx
    STA $4202                       ; $A68F5B  8D 02 42     mx
    LDA $00BA                       ; $A68F5E  AD BA 00     mx
    STA $4203                       ; $A68F61  8D 03 42     mx
    NOP                             ; $A68F64  EA           mx
    NOP                             ; $A68F65  EA           mx
    NOP                             ; $A68F66  EA           mx
    REP #$20                        ; $A68F67  C2 20        mx
    LDA $4216                       ; $A68F69  AD 16 42     Mx
    STA $00BA                       ; $A68F6C  8D BA 00     Mx
    LDA $00BB                       ; $A68F6F  AD BB 00     Mx
    AND #$00FF                      ; $A68F72  29 FF 00     Mx
    INC                             ; $A68F75  1A           Mx
    CMP $00D0                       ; $A68F76  CD D0 00     Mx
    BCC L_A68F7E                    ; $A68F79  90 03        Mx
    JMP L_A69100                    ; $A68F7B  4C 00 91     Mx
L_A68F7E:
    LDA #$0087                      ; $A68F7E  A9 87 00     Mx
    STA $0982                       ; $A68F81  8D 82 09     Mx
    LDA $08C4                       ; $A68F84  AD C4 08     Mx
    CMP #$0024                      ; $A68F87  C9 24 00     Mx
    BEQ L_A68FE6                    ; $A68F8A  F0 5A        Mx
    LDA $1D58                       ; $A68F8C  AD 58 1D     Mx
    CMP #$3333                      ; $A68F8F  C9 33 33     Mx
    BCC L_A68FE6                    ; $A68F92  90 52        Mx
    LDY #$3E                        ; $A68F94  A0 3E        Mx
    LDA ($CC),Y                     ; $A68F96  B1 CC        Mx
    BMI L_A68FE6                    ; $A68F98  30 4C        Mx
L_A68F9A:
    LDA $08C4                       ; $A68F9A  AD C4 08     Mx
    CMP #$0024                      ; $A68F9D  C9 24 00     Mx
    BNE L_A68FA5                    ; $A68FA0  D0 03        Mx
    JMP L_A68FEE                    ; $A68FA2  4C EE 8F     Mx
L_A68FA5:
    LDA $0B50                       ; $A68FA5  AD 50 0B     Mx
    BNE L_A68FDA                    ; $A68FA8  D0 30        Mx
    LDA $0BF9                       ; $A68FAA  AD F9 0B     Mx
    BNE L_A68FDA                    ; $A68FAD  D0 2B        Mx
    LDA $0C25                       ; $A68FAF  AD 25 0C     Mx
    BNE L_A68FC9                    ; $A68FB2  D0 15        Mx
    LDA $0BC1                       ; $A68FB4  AD C1 0B     Mx
    CMP #$0001                      ; $A68FB7  C9 01 00     Mx
    BNE L_A68FC1                    ; $A68FBA  D0 05        Mx
    LDA $0C2B                       ; $A68FBC  AD 2B 0C     Mx
    BMI L_A68FDA                    ; $A68FBF  30 19        Mx
L_A68FC1:
    LDA $08C4                       ; $A68FC1  AD C4 08     Mx
    CMP #$0032                      ; $A68FC4  C9 32 00     Mx
    BEQ L_A68FDA                    ; $A68FC7  F0 11        Mx
L_A68FC9:
    LDA $1615                       ; $A68FC9  AD 15 16     Mx
    BNE L_A68FDA                    ; $A68FCC  D0 0C        Mx
    LDA $08D2                       ; $A68FCE  AD D2 08     Mx
    BNE L_A68FDA                    ; $A68FD1  D0 07        Mx
    LDA #$000A                      ; $A68FD3  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $A68FD6  22 D5 BB 9A  Mx
L_A68FDA:
    LDA #$0002                      ; $A68FDA  A9 02 00     Mx
    STA $0BC1                       ; $A68FDD  8D C1 0B     Mx
    STZ $0C2B                       ; $A68FE0  9C 2B 0C     Mx
    JMP L_A69616                    ; $A68FE3  4C 16 96     Mx
L_A68FE6:
    LDA $1D58                       ; $A68FE6  AD 58 1D     Mx
    CMP #$3333                      ; $A68FE9  C9 33 33     Mx
    BCC L_A68F9A                    ; $A68FEC  90 AC        Mx
L_A68FEE:
    LDA $08D2                       ; $A68FEE  AD D2 08     Mx
    BNE L_A69017                    ; $A68FF1  D0 24        Mx
    LDA $0B50                       ; $A68FF3  AD 50 0B     Mx
    BNE L_A69017                    ; $A68FF6  D0 1F        Mx
    LDA $0CD3                       ; $A68FF8  AD D3 0C     Mx
    BNE L_A69017                    ; $A68FFB  D0 1A        Mx
    LDA $0C19                       ; $A68FFD  AD 19 0C     Mx
    BEQ L_A69017                    ; $A69000  F0 15        Mx
    LDA $0BF9                       ; $A69002  AD F9 0B     Mx
    BNE L_A69017                    ; $A69005  D0 10        Mx
    LDY #$06                        ; $A69007  A0 06        Mx
    LDA ($CC),Y                     ; $A69009  B1 CC        Mx
    CMP #$0006                      ; $A6900B  C9 06 00     Mx
    BCC L_A69017                    ; $A6900E  90 07        Mx
    LDA #$0010                      ; $A69010  A9 10 00     Mx
    JSL L_9ABBD5                    ; $A69013  22 D5 BB 9A  Mx
L_A69017:
    LDY #$88                        ; $A69017  A0 88        Mx
    LDA #$000F                      ; $A69019  A9 0F 00     Mx
    STA ($CC),Y                     ; $A6901C  91 CC        Mx
    LDY #$8A                        ; $A6901E  A0 8A        Mx
    STA ($CC),Y                     ; $A69020  91 CC        Mx
    LDA #$000F                      ; $A69022  A9 0F 00     Mx
    STA $0948                       ; $A69025  8D 48 09     Mx
    LDA #$000F                      ; $A69028  A9 0F 00     Mx
    STA $094A                       ; $A6902B  8D 4A 09     Mx
    REP #$10                        ; $A6902E  C2 10        Mx
    LDY #$0066                      ; $A69030  A0 66 00     MX
    LDA ($CC),Y                     ; $A69033  B1 CC        MX
    AND #$007F                      ; $A69035  29 7F 00     MX
    PHA                             ; $A69038  48           MX
    LDA $0C19                       ; $A69039  AD 19 0C     MX
    BEQ L_A690A5                    ; $A6903C  F0 67        MX
    LDA $0BD9                       ; $A6903E  AD D9 0B     MX
    CLC                             ; $A69041  18           MX
    ADC $0BEF                       ; $A69042  6D EF 0B     MX
    LDY #$0054                      ; $A69045  A0 54 00     MX
    SEC                             ; $A69048  38           MX
    SBC ($CC),Y                     ; $A69049  F1 CC        MX
    BPL L_A69057                    ; $A6904B  10 0A        MX
    CMP #$FEF4                      ; $A6904D  C9 F4 FE     MX
    BCS L_A6905F                    ; $A69050  B0 0D        MX
    LDA #$FEF4                      ; $A69052  A9 F4 FE     MX
    BRA L_A6905F                    ; $A69055  80 08        MX
L_A69057:
    CMP #$010C                      ; $A69057  C9 0C 01     MX
    BCC L_A6905F                    ; $A6905A  90 03        MX
    LDA #$010C                      ; $A6905C  A9 0C 01     MX
L_A6905F:
    STA $0BD9                       ; $A6905F  8D D9 0B     MX
    LDA $0BDD                       ; $A69062  AD DD 0B     MX
    CLC                             ; $A69065  18           MX
    ADC $0BF1                       ; $A69066  6D F1 0B     MX
    STA $0BDD                       ; $A69069  8D DD 0B     MX
    LDA $0BF3                       ; $A6906C  AD F3 0B     MX
    CMP #$0310                      ; $A6906F  C9 10 03     MX
    BCC L_A6907E                    ; $A69072  90 0A        MX
    CMP #$03F0                      ; $A69074  C9 F0 03     MX
    BCC L_A69081                    ; $A69077  90 08        MX
    LDA #$03F0                      ; $A69079  A9 F0 03     MX
    BRA L_A69081                    ; $A6907C  80 03        MX
L_A6907E:
    LDA #$0310                      ; $A6907E  A9 10 03     MX
L_A69081:
    STA $0BE1                       ; $A69081  8D E1 0B     MX
    STA $0BF3                       ; $A69084  8D F3 0B     MX
    STZ $0C19                       ; $A69087  9C 19 0C     MX
    STZ $00CC                       ; $A6908A  9C CC 00     MX
    STZ $0C2B                       ; $A6908D  9C 2B 0C     MX
    STZ $0BEF                       ; $A69090  9C EF 0B     MX
    STZ $0BF1                       ; $A69093  9C F1 0B     MX
    STZ $0C11                       ; $A69096  9C 11 0C     MX
    LDA #$0002                      ; $A69099  A9 02 00     MX
    STA $0BBF                       ; $A6909C  8D BF 0B     MX
    LDA #$0002                      ; $A6909F  A9 02 00     MX
    STA $0BC1                       ; $A690A2  8D C1 0B     MX
L_A690A5:
    PLA                             ; $A690A5  68           MX
    ASL                             ; $A690A6  0A           MX
    TAX                             ; $A690A7  AA           MX
    LDY #$0000                      ; $A690A8  A0 00 00     MX
    STZ $0BED                       ; $A690AB  9C ED 0B     MX
    LDA $9AABEB,X                   ; $A690AE  BF EB AB 9A  MX
    BPL L_A690B7                    ; $A690B2  10 03        MX
    DEC $0BED                       ; $A690B4  CE ED 0B     MX
L_A690B7:
    ASL                             ; $A690B7  0A           MX
    ROL $0BED                       ; $A690B8  2E ED 0B     MX
    ASL                             ; $A690BB  0A           MX
    ROL $0BED                       ; $A690BC  2E ED 0B     MX
    ASL                             ; $A690BF  0A           MX
    ROL $0BED                       ; $A690C0  2E ED 0B     MX
    ASL                             ; $A690C3  0A           MX
    ROL $0BED                       ; $A690C4  2E ED 0B     MX
    STA $0BEB                       ; $A690C7  8D EB 0B     MX
    LDY #$0000                      ; $A690CA  A0 00 00     MX
    STZ $0BE5                       ; $A690CD  9C E5 0B     MX
    LDA $9AABAB,X                   ; $A690D0  BF AB AB 9A  MX
    BPL L_A690D9                    ; $A690D4  10 03        MX
    DEC $0BE5                       ; $A690D6  CE E5 0B     MX
L_A690D9:
    ASL                             ; $A690D9  0A           MX
    ROL $0BE5                       ; $A690DA  2E E5 0B     MX
    ASL                             ; $A690DD  0A           MX
    ROL $0BE5                       ; $A690DE  2E E5 0B     MX
    ASL                             ; $A690E1  0A           MX
    ROL $0BE5                       ; $A690E2  2E E5 0B     MX
    ASL                             ; $A690E5  0A           MX
    ROL $0BE5                       ; $A690E6  2E E5 0B     MX
    STA $0BE3                       ; $A690E9  8D E3 0B     MX
    LDA #$FFFC                      ; $A690EC  A9 FC FF     MX
    STA $0BE9                       ; $A690EF  8D E9 0B     MX
    LDA #$F700                      ; $A690F2  A9 00 F7     MX
    STA $0BE7                       ; $A690F5  8D E7 0B     MX
    SEP #$10                        ; $A690F8  E2 10        MX
    JMP L_A69121                    ; $A690FA  4C 21 91     Mx
L_A690FD:
    JMP L_A6960E                    ; $A690FD  4C 0E 96     Mx
L_A69100:
    LDA $0C19                       ; $A69100  AD 19 0C     Mx
    BEQ L_A69142                    ; $A69103  F0 3D        Mx
    LDY #$32                        ; $A69105  A0 32        Mx
    LDA ($CC),Y                     ; $A69107  B1 CC        Mx
    BEQ L_A69136                    ; $A69109  F0 2B        Mx
    LDY #$08                        ; $A6910B  A0 08        Mx
    LDA ($CC),Y                     ; $A6910D  B1 CC        Mx
    AND #$0004                      ; $A6910F  29 04 00     Mx
    BEQ L_A69136                    ; $A69112  F0 22        Mx
    LDA $08F2                       ; $A69114  AD F2 08     Mx
    BEQ L_A69136                    ; $A69117  F0 1D        Mx
    LDA $1D56                       ; $A69119  AD 56 1D     Mx
    AND #$0007                      ; $A6911C  29 07 00     Mx
    BNE L_A69133                    ; $A6911F  D0 12        Mx
L_A69121:
    LDA #$0002                      ; $A69121  A9 02 00     Mx
    STA $0954                       ; $A69124  8D 54 09     Mx
    STZ $08C6                       ; $A69127  9C C6 08     Mx
    LDA #$0030                      ; $A6912A  A9 30 00     Mx
    STA $08C4                       ; $A6912D  8D C4 08     Mx
    STA $08C2                       ; $A69130  8D C2 08     Mx
L_A69133:
    JMP L_A68E68                    ; $A69133  4C 68 8E     Mx
L_A69136:
    LDA $08C4                       ; $A69136  AD C4 08     Mx
    CMP #$002C                      ; $A69139  C9 2C 00     Mx
    BEQ L_A6914D                    ; $A6913C  F0 0F        Mx
    BRA L_A6914A                    ; $A6913E  80 0A        Mx
L_A69140:
    BRA L_A6914D                    ; $A69140  80 0B        Mx
L_A69142:
    LDA $1D56                       ; $A69142  AD 56 1D     Mx
    AND #$0003                      ; $A69145  29 03 00     Mx
    BEQ L_A6914D                    ; $A69148  F0 03        Mx
L_A6914A:
    JMP L_A6985C                    ; $A6914A  4C 5C 98     Mx
L_A6914D:
    LDA $0C19                       ; $A6914D  AD 19 0C     Mx
    BEQ L_A69155                    ; $A69150  F0 03        Mx
L_A69152:
    JMP L_A691C9                    ; $A69152  4C C9 91     Mx
L_A69155:
    LDA $1607                       ; $A69155  AD 07 16     Mx
    BNE L_A69152                    ; $A69158  D0 F8        Mx
    LDA $09A6                       ; $A6915A  AD A6 09     Mx
    AND #$0002                      ; $A6915D  29 02 00     Mx
    BNE L_A69152                    ; $A69160  D0 F0        Mx
    LDA $0C2B                       ; $A69162  AD 2B 0C     Mx
    BMI L_A691C9                    ; $A69165  30 62        Mx
    LDA $0928                       ; $A69167  AD 28 09     Mx
    CMP #$0046                      ; $A6916A  C9 46 00     Mx
    BCS L_A691C9                    ; $A6916D  B0 5A        Mx
    LDA $0BC1                       ; $A6916F  AD C1 0B     Mx
    CMP #$0001                      ; $A69172  C9 01 00     Mx
    BNE L_A691C9                    ; $A69175  D0 52        Mx
    LDA $0C1F                       ; $A69177  AD 1F 0C     Mx
    AND #$00FF                      ; $A6917A  29 FF 00     Mx
    CMP #$0003                      ; $A6917D  C9 03 00     Mx
    BCS L_A691C6                    ; $A69180  B0 44        Mx
    LDA $0BE8                       ; $A69182  AD E8 0B     Mx
    LSR                             ; $A69185  4A           Mx
    LSR                             ; $A69186  4A           Mx
    LSR                             ; $A69187  4A           Mx
    LSR                             ; $A69188  4A           Mx
    LSR                             ; $A69189  4A           Mx
    LSR                             ; $A6918A  4A           Mx
    BEQ L_A691C9                    ; $A6918B  F0 3C        Mx
    BMI L_A691C9                    ; $A6918D  30 3A        Mx
    LDX $0A96                       ; $A6918F  AE 96 0A     Mx
    CPX $08C0                       ; $A69192  EC C0 08     Mx
    BEQ L_A691C9                    ; $A69195  F0 32        Mx
    LDA $099A                       ; $A69197  AD 9A 09     Mx
    SEC                             ; $A6919A  38           Mx
    SBC #$0005                      ; $A6919B  E9 05 00     Mx
    BMI L_A691AA                    ; $A6919E  30 0A        Mx
    LDA $0BE8                       ; $A691A0  AD E8 0B     Mx
    CMP #$0380                      ; $A691A3  C9 80 03     Mx
    BMI L_A691C9                    ; $A691A6  30 21        Mx
    BRA L_A691B2                    ; $A691A8  80 08        Mx
L_A691AA:
    LDA $0BE8                       ; $A691AA  AD E8 0B     Mx
    CMP #$0280                      ; $A691AD  C9 80 02     Mx
    BMI L_A691C9                    ; $A691B0  30 17        Mx
L_A691B2:
    LDA $0006                       ; $A691B2  AD 06 00     Mx
    AND #$0004                      ; $A691B5  29 04 00     Mx
    BNE L_A691C6                    ; $A691B8  D0 0C        Mx
    LDX $08C0                       ; $A691BA  AE C0 08     Mx
    STX $0A98                       ; $A691BD  8E 98 0A     Mx
    JSL L_A7EBCB                    ; $A691C0  22 CB EB A7  Mx
    BRA L_A691C9                    ; $A691C4  80 03        Mx
L_A691C6:
    JMP L_A6985C                    ; $A691C6  4C 5C 98     Mx
L_A691C9:
    LDA $08C4                       ; $A691C9  AD C4 08     Mx
    CMP #$0024                      ; $A691CC  C9 24 00     Mx
    BEQ L_A691D9                    ; $A691CF  F0 08        Mx
    CMP #$0020                      ; $A691D1  C9 20 00     Mx
    BEQ L_A69205                    ; $A691D4  F0 2F        Mx
    JMP L_A69290                    ; $A691D6  4C 90 92     Mx
L_A691D9:
    LDA #$FFFC                      ; $A691D9  A9 FC FF     Mx
    STA $0BE9                       ; $A691DC  8D E9 0B     Mx
    LDA #$F700                      ; $A691DF  A9 00 F7     Mx
    STA $0BE7                       ; $A691E2  8D E7 0B     Mx
    LDA $08D2                       ; $A691E5  AD D2 08     Mx
    BNE L_A69202                    ; $A691E8  D0 18        Mx
    LDA $0B50                       ; $A691EA  AD 50 0B     Mx
    BNE L_A69202                    ; $A691ED  D0 13        Mx
    LDA $0BF9                       ; $A691EF  AD F9 0B     Mx
    BNE L_A69202                    ; $A691F2  D0 0E        Mx
    LDA #$0010                      ; $A691F4  A9 10 00     Mx
    JSL L_9ABBD5                    ; $A691F7  22 D5 BB 9A  Mx
    LDA #$0003                      ; $A691FB  A9 03 00     Mx
    JSL L_BDFDF3                    ; $A691FE  22 F3 FD BD  Mx
L_A69202:
    JMP L_A69253                    ; $A69202  4C 53 92     Mx
L_A69205:
    LDA $0C19                       ; $A69205  AD 19 0C     Mx
    BEQ L_A6920D                    ; $A69208  F0 03        Mx
    JMP L_A6985C                    ; $A6920A  4C 5C 98     Mx
L_A6920D:
    LDA #$FFFD                      ; $A6920D  A9 FD FF     Mx
    STA $0BE9                       ; $A69210  8D E9 0B     Mx
    LDA #$6600                      ; $A69213  A9 00 66     Mx
    STA $0BE7                       ; $A69216  8D E7 0B     Mx
    LDA $0B50                       ; $A69219  AD 50 0B     Mx
    BNE L_A69253                    ; $A6921C  D0 35        Mx
    LDA $0BF9                       ; $A6921E  AD F9 0B     Mx
    BNE L_A69253                    ; $A69221  D0 30        Mx
    LDA $1615                       ; $A69223  AD 15 16     Mx
    BNE L_A69253                    ; $A69226  D0 2B        Mx
    LDA $0C19                       ; $A69228  AD 19 0C     Mx
    BNE L_A69253                    ; $A6922B  D0 26        Mx
    LDA $08D2                       ; $A6922D  AD D2 08     Mx
    BNE L_A69253                    ; $A69230  D0 21        Mx
    LDA $0C25                       ; $A69232  AD 25 0C     Mx
    BNE L_A6924C                    ; $A69235  D0 15        Mx
    LDA $0BC1                       ; $A69237  AD C1 0B     Mx
    CMP #$0001                      ; $A6923A  C9 01 00     Mx
    BNE L_A69244                    ; $A6923D  D0 05        Mx
    LDA $0C2B                       ; $A6923F  AD 2B 0C     Mx
    BMI L_A69253                    ; $A69242  30 0F        Mx
L_A69244:
    LDA $08C4                       ; $A69244  AD C4 08     Mx
    CMP #$0032                      ; $A69247  C9 32 00     Mx
    BEQ L_A69253                    ; $A6924A  F0 07        Mx
L_A6924C:
    LDA #$000A                      ; $A6924C  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $A6924F  22 D5 BB 9A  Mx
L_A69253:
    LDA $08D8                       ; $A69253  AD D8 08     Mx
    ASL                             ; $A69256  0A           Mx
    ASL                             ; $A69257  0A           Mx
    TAX                             ; $A69258  AA           Mx
    LDA $A7E489,X                   ; $A69259  BF 89 E4 A7  Mx
    STA $0BE5                       ; $A6925D  8D E5 0B     Mx
    STZ $0BE3                       ; $A69260  9C E3 0B     Mx
    LDA $A7E48B,X                   ; $A69263  BF 8B E4 A7  Mx
    STA $0BED                       ; $A69267  8D ED 0B     Mx
    STZ $0BEB                       ; $A6926A  9C EB 0B     Mx
    LDA #$0002                      ; $A6926D  A9 02 00     Mx
    STA $0BC1                       ; $A69270  8D C1 0B     Mx
    STZ $0C2B                       ; $A69273  9C 2B 0C     Mx
    LDA $0A98                       ; $A69276  AD 98 0A     Mx
    BNE L_A69287                    ; $A69279  D0 0C        Mx
    LDA $08C0                       ; $A6927B  AD C0 08     Mx
    DEC                             ; $A6927E  3A           Mx
    AND #$0003                      ; $A6927F  29 03 00     Mx
    ASL                             ; $A69282  0A           Mx
    TAX                             ; $A69283  AA           Mx
    INC $1CB9,X                     ; $A69284  FE B9 1C     Mx
L_A69287:
    LDA #$0019                      ; $A69287  A9 19 00     Mx
    STA $094A                       ; $A6928A  8D 4A 09     Mx
    JMP L_A697B8                    ; $A6928D  4C B8 97     Mx
L_A69290:
    CMP #$002C                      ; $A69290  C9 2C 00     Mx
    BEQ L_A69298                    ; $A69293  F0 03        Mx
    JMP L_A693C9                    ; $A69295  4C C9 93     Mx
L_A69298:
    LDA #$00B9                      ; $A69298  A9 B9 00     Mx
    STA $00D0                       ; $A6929B  8D D0 00     Mx
    LDA $1D57                       ; $A6929E  AD 57 1D     Mx
    STA $00BA                       ; $A692A1  8D BA 00     Mx
    INC $00D0                       ; $A692A4  EE D0 00     Mx
    SEP #$20                        ; $A692A7  E2 20        Mx
    LDA $00D0                       ; $A692A9  AD D0 00     mx
    STA $4202                       ; $A692AC  8D 02 42     mx
    LDA $00BA                       ; $A692AF  AD BA 00     mx
    STA $4203                       ; $A692B2  8D 03 42     mx
    NOP                             ; $A692B5  EA           mx
    NOP                             ; $A692B6  EA           mx
    NOP                             ; $A692B7  EA           mx
    REP #$20                        ; $A692B8  C2 20        mx
    LDA $4216                       ; $A692BA  AD 16 42     Mx
    STA $00BA                       ; $A692BD  8D BA 00     Mx
    LDA $00BB                       ; $A692C0  AD BB 00     Mx
    AND #$00FF                      ; $A692C3  29 FF 00     Mx
    CMP $0990                       ; $A692C6  CD 90 09     Mx
    BCC L_A692CE                    ; $A692C9  90 03        Mx
    JMP L_A6985C                    ; $A692CB  4C 5C 98     Mx
L_A692CE:
    LDA #$0014                      ; $A692CE  A9 14 00     Mx
    STA $0948                       ; $A692D1  8D 48 09     Mx
    LDA $0C19                       ; $A692D4  AD 19 0C     Mx
    BNE L_A692DC                    ; $A692D7  D0 03        Mx
    JMP L_A69307                    ; $A692D9  4C 07 93     Mx
L_A692DC:
    LDY #$04                        ; $A692DC  A0 04        Mx
    LDA #$0000                      ; $A692DE  A9 00 00     Mx
    STA ($CC),Y                     ; $A692E1  91 CC        Mx
    LDY #$02                        ; $A692E3  A0 02        Mx
    STA ($CC),Y                     ; $A692E5  91 CC        Mx
    LDY #$8A                        ; $A692E7  A0 8A        Mx
    LDA #$0032                      ; $A692E9  A9 32 00     Mx
    STA ($CC),Y                     ; $A692EC  91 CC        Mx
    LDA $08C0                       ; $A692EE  AD C0 08     Mx
    DEC                             ; $A692F1  3A           Mx
    AND #$0003                      ; $A692F2  29 03 00     Mx
    ASL                             ; $A692F5  0A           Mx
    TAX                             ; $A692F6  AA           Mx
    INC $1CB1,X                     ; $A692F7  FE B1 1C     Mx
    LDA $0C3F                       ; $A692FA  AD 3F 0C     Mx
    BNE L_A69307                    ; $A692FD  D0 08        Mx
    LDA $1D57                       ; $A692FF  AD 57 1D     Mx
    CMP #$2E14                      ; $A69302  C9 14 2E     Mx
    BCS L_A69325                    ; $A69305  B0 1E        Mx
L_A69307:
    LDA #$000C                      ; $A69307  A9 0C 00     Mx
    STA $08C4                       ; $A6930A  8D C4 08     Mx
    LDA #$FFFF                      ; $A6930D  A9 FF FF     Mx
    STA $08CA                       ; $A69310  8D CA 08     Mx
    STZ $08CC                       ; $A69313  9C CC 08     Mx
    STZ $0912                       ; $A69316  9C 12 09     Mx
    STZ $08C8                       ; $A69319  9C C8 08     Mx
    LDA #$FFF8                      ; $A6931C  A9 F8 FF     Mx
    STA $08CE                       ; $A6931F  8D CE 08     Mx
    JMP L_A69436                    ; $A69322  4C 36 94     Mx
L_A69325:
    LDA #$012C                      ; $A69325  A9 2C 01     Mx
    STA $0C3F                       ; $A69328  8D 3F 0C     Mx
    LDA #$0019                      ; $A6932B  A9 19 00     Mx
    STA $094A                       ; $A6932E  8D 4A 09     Mx
    LDA #$001E                      ; $A69331  A9 1E 00     Mx
    STA $0BF1                       ; $A69334  8D F1 0B     Mx
    LDA $0C19                       ; $A69337  AD 19 0C     Mx
    BEQ L_A693A2                    ; $A6933A  F0 66        Mx
    LDA $0BD9                       ; $A6933C  AD D9 0B     Mx
    CLC                             ; $A6933F  18           Mx
    ADC $0BEF                       ; $A69340  6D EF 0B     Mx
    LDY #$54                        ; $A69343  A0 54        Mx
    SEC                             ; $A69345  38           Mx
    SBC ($CC),Y                     ; $A69346  F1 CC        Mx
    BPL L_A69354                    ; $A69348  10 0A        Mx
    CMP #$FEF4                      ; $A6934A  C9 F4 FE     Mx
    BCS L_A6935C                    ; $A6934D  B0 0D        Mx
    LDA #$FEF4                      ; $A6934F  A9 F4 FE     Mx
    BRA L_A6935C                    ; $A69352  80 08        Mx
L_A69354:
    CMP #$010C                      ; $A69354  C9 0C 01     Mx
    BCC L_A6935C                    ; $A69357  90 03        Mx
    LDA #$010C                      ; $A69359  A9 0C 01     Mx
L_A6935C:
    STA $0BD9                       ; $A6935C  8D D9 0B     Mx
    LDA $0BDD                       ; $A6935F  AD DD 0B     Mx
    CLC                             ; $A69362  18           Mx
    ADC $0BF1                       ; $A69363  6D F1 0B     Mx
    STA $0BDD                       ; $A69366  8D DD 0B     Mx
    LDA $0BF3                       ; $A69369  AD F3 0B     Mx
    CMP #$0310                      ; $A6936C  C9 10 03     Mx
    BCC L_A6937B                    ; $A6936F  90 0A        Mx
    CMP #$03F0                      ; $A69371  C9 F0 03     Mx
    BCC L_A6937E                    ; $A69374  90 08        Mx
    LDA #$03F0                      ; $A69376  A9 F0 03     Mx
    BRA L_A6937E                    ; $A69379  80 03        Mx
L_A6937B:
    LDA #$0310                      ; $A6937B  A9 10 03     Mx
L_A6937E:
    STA $0BE1                       ; $A6937E  8D E1 0B     Mx
    STA $0BF3                       ; $A69381  8D F3 0B     Mx
    STZ $0C19                       ; $A69384  9C 19 0C     Mx
    STZ $00CC                       ; $A69387  9C CC 00     Mx
    STZ $0C2B                       ; $A6938A  9C 2B 0C     Mx
    STZ $0BEF                       ; $A6938D  9C EF 0B     Mx
    STZ $0BF1                       ; $A69390  9C F1 0B     Mx
    STZ $0C11                       ; $A69393  9C 11 0C     Mx
    LDA #$0002                      ; $A69396  A9 02 00     Mx
    STA $0BBF                       ; $A69399  8D BF 0B     Mx
    LDA #$0002                      ; $A6939C  A9 02 00     Mx
    STA $0BC1                       ; $A6939F  8D C1 0B     Mx
L_A693A2:
    LDA $0006                       ; $A693A2  AD 06 00     Mx
    AND #$0007                      ; $A693A5  29 07 00     Mx
    ASL                             ; $A693A8  0A           Mx
    TAX                             ; $A693A9  AA           Mx
    LDA $A7E479,X                   ; $A693AA  BF 79 E4 A7  Mx
    STA $0BE5                       ; $A693AE  8D E5 0B     Mx
    STZ $0BE3                       ; $A693B1  9C E3 0B     Mx
    LDA $1D56                       ; $A693B4  AD 56 1D     Mx
    AND #$0007                      ; $A693B7  29 07 00     Mx
    ASL                             ; $A693BA  0A           Mx
    TAX                             ; $A693BB  AA           Mx
    LDA $A7E479,X                   ; $A693BC  BF 79 E4 A7  Mx
    STA $0BED                       ; $A693C0  8D ED 0B     Mx
    STZ $0BEB                       ; $A693C3  9C EB 0B     Mx
    JMP L_A697B8                    ; $A693C6  4C B8 97     Mx
L_A693C9:
    LDA $08C4                       ; $A693C9  AD C4 08     Mx
    CMP #$0002                      ; $A693CC  C9 02 00     Mx
    BEQ L_A693DB                    ; $A693CF  F0 0A        Mx
    CMP #$0000                      ; $A693D1  C9 00 00     Mx
    BEQ L_A693DB                    ; $A693D4  F0 05        Mx
    CMP #$0014                      ; $A693D6  C9 14 00     Mx
    BNE L_A69436                    ; $A693D9  D0 5B        Mx
L_A693DB:
    LDA $08F2                       ; $A693DB  AD F2 08     Mx
    BNE L_A69436                    ; $A693DE  D0 56        Mx
    LDA $0BDD                       ; $A693E0  AD DD 0B     Mx
    BNE L_A69436                    ; $A693E3  D0 51        Mx
    LDA $0BE9                       ; $A693E5  AD E9 0B     Mx
    ORA $0BE7                       ; $A693E8  0D E7 0B     Mx
    BNE L_A69436                    ; $A693EB  D0 49        Mx
    LDA $08FE                       ; $A693ED  AD FE 08     Mx
    ORA $08FC                       ; $A693F0  0D FC 08     Mx
    BNE L_A69436                    ; $A693F3  D0 41        Mx
    LDA #$0032                      ; $A693F5  A9 32 00     Mx
    STA $08C4                       ; $A693F8  8D C4 08     Mx
    LDA #$FFFF                      ; $A693FB  A9 FF FF     Mx
    STA $08CA                       ; $A693FE  8D CA 08     Mx
    STZ $08CC                       ; $A69401  9C CC 08     Mx
    STZ $0912                       ; $A69404  9C 12 09     Mx
    STZ $08C8                       ; $A69407  9C C8 08     Mx
    LDA #$FFF8                      ; $A6940A  A9 F8 FF     Mx
    STA $08CE                       ; $A6940D  8D CE 08     Mx
    STZ $0BE5                       ; $A69410  9C E5 0B     Mx
    STZ $0BE3                       ; $A69413  9C E3 0B     Mx
    STZ $0BEB                       ; $A69416  9C EB 0B     Mx
    STZ $0BED                       ; $A69419  9C ED 0B     Mx
    STZ $08FA                       ; $A6941C  9C FA 08     Mx
    STZ $08F8                       ; $A6941F  9C F8 08     Mx
    STZ $0902                       ; $A69422  9C 02 09     Mx
    STZ $0900                       ; $A69425  9C 00 09     Mx
L_A69428:
    JMP L_A6985C                    ; $A69428  4C 5C 98     Mx
L_A6942B:
    LDA $08CA                       ; $A6942B  AD CA 08     Mx
    CMP #$0002                      ; $A6942E  C9 02 00     Mx
    BNE L_A69428                    ; $A69431  D0 F5        Mx
    JMP L_A6960E                    ; $A69433  4C 0E 96     Mx
L_A69436:
    LDA $0C25                       ; $A69436  AD 25 0C     Mx
    BNE L_A6943E                    ; $A69439  D0 03        Mx
    JMP L_A695E8                    ; $A6943B  4C E8 95     Mx
L_A6943E:
    CMP #$08C0                      ; $A6943E  C9 C0 08     Mx
    BNE L_A69446                    ; $A69441  D0 03        Mx
    JMP L_A695E8                    ; $A69443  4C E8 95     Mx
L_A69446:
    LDA #$00A0                      ; $A69446  A9 A0 00     Mx
    STA $00D0                       ; $A69449  8D D0 00     Mx
    PHP                             ; $A6944C  08           Mx
    REP #$30                        ; $A6944D  C2 30        Mx
    LDA $4212                       ; $A6944F  AD 12 42     MX
    SEP #$20                        ; $A69452  E2 20        MX
    CLC                             ; $A69454  18           mX
    ADC $1D57                       ; $A69455  6D 57 1D     mX
    STA $1D57                       ; $A69458  8D 57 1D     mX
    REP #$20                        ; $A6945B  C2 20        mX
    LDA $4212                       ; $A6945D  AD 12 42     MX
    TAX                             ; $A69460  AA           MX
    SEP #$20                        ; $A69461  E2 20        MX
    EOR $1D58                       ; $A69463  4D 58 1D     mX
    STA $1D58                       ; $A69466  8D 58 1D     mX
    TXA                             ; $A69469  8A           mX
    ADC $1D59                       ; $A6946A  6D 59 1D     mX
    REP #$20                        ; $A6946D  C2 20        mX
    LDA $1D56                       ; $A6946F  AD 56 1D     MX
    INC                             ; $A69472  1A           MX
    ROR                             ; $A69473  6A           MX
    LSR $1D58                       ; $A69474  4E 58 1D     MX
    EOR #$2B41                      ; $A69477  49 41 2B     MX
    SBC #$000F                      ; $A6947A  E9 0F 00     MX
    STA $1D56                       ; $A6947D  8D 56 1D     MX
    LDA $1D58                       ; $A69480  AD 58 1D     MX
    EOR #$1D87                      ; $A69483  49 87 1D     MX
    STA $1D58                       ; $A69486  8D 58 1D     MX
    LDA $1D52                       ; $A69489  AD 52 1D     MX
    EOR $1D56                       ; $A6948C  4D 56 1D     MX
    STA $0002                       ; $A6948F  8D 02 00     MX
    INC                             ; $A69492  1A           MX
    STA $1D52                       ; $A69493  8D 52 1D     MX
    LDA $1D54                       ; $A69496  AD 54 1D     MX
    EOR $1D58                       ; $A69499  4D 58 1D     MX
    ADC #$0000                      ; $A6949C  69 00 00     MX
    STA $1D52                       ; $A6949F  8D 52 1D     MX
    STA $0004                       ; $A694A2  8D 04 00     MX
    PLP                             ; $A694A5  28           MX
    INC $00D0                       ; $A694A6  EE D0 00     Mx
    LDA $1D56                       ; $A694A9  AD 56 1D     Mx
    STA $00BA                       ; $A694AC  8D BA 00     Mx
    SEP #$20                        ; $A694AF  E2 20        Mx
    LDA $00D0                       ; $A694B1  AD D0 00     mx
    STA $4202                       ; $A694B4  8D 02 42     mx
    LDA $00BA                       ; $A694B7  AD BA 00     mx
    STA $4203                       ; $A694BA  8D 03 42     mx
    NOP                             ; $A694BD  EA           mx
    NOP                             ; $A694BE  EA           mx
    NOP                             ; $A694BF  EA           mx
    REP #$20                        ; $A694C0  C2 20        mx
    LDA $4216                       ; $A694C2  AD 16 42     Mx
    STA $00BA                       ; $A694C5  8D BA 00     Mx
    LDA $00BB                       ; $A694C8  AD BB 00     Mx
    AND #$00FF                      ; $A694CB  29 FF 00     Mx
    STA $00D0                       ; $A694CE  8D D0 00     Mx
    LDA $09A6                       ; $A694D1  AD A6 09     Mx
    AND #$0001                      ; $A694D4  29 01 00     Mx
    BEQ L_A694DC                    ; $A694D7  F0 03        Mx
    STZ $00D0                       ; $A694D9  9C D0 00     Mx
L_A694DC:
    STZ $00B7                       ; $A694DC  9C B7 00     Mx
    LDA $099A                       ; $A694DF  AD 9A 09     Mx
    BMI L_A694F4                    ; $A694E2  30 10        Mx
    CMP #$0010                      ; $A694E4  C9 10 00     Mx
    BCC L_A694EC                    ; $A694E7  90 03        Mx
    LDA #$000F                      ; $A694E9  A9 0F 00     Mx
L_A694EC:
    ASL                             ; $A694EC  0A           Mx
    TAX                             ; $A694ED  AA           Mx
    LDA $95EE,X                     ; $A694EE  BD EE 95     Mx
    STA $00B7                       ; $A694F1  8D B7 00     Mx
L_A694F4:
    LDA $0C27                       ; $A694F4  AD 27 0C     Mx
    SEC                             ; $A694F7  38           Mx
    SBC #$0003                      ; $A694F8  E9 03 00     Mx
    BPL L_A69504                    ; $A694FB  10 07        Mx
    EOR #$FFFF                      ; $A694FD  49 FF FF     Mx
    CLC                             ; $A69500  18           Mx
    ADC #$0001                      ; $A69501  69 01 00     Mx
L_A69504:
    LSR                             ; $A69504  4A           Mx
    CLC                             ; $A69505  18           Mx
    ADC $00B7                       ; $A69506  6D B7 00     Mx
    INC                             ; $A69509  1A           Mx
    CMP $00D0                       ; $A6950A  CD D0 00     Mx
    BCS L_A69512                    ; $A6950D  B0 03        Mx
    JMP L_A695EB                    ; $A6950F  4C EB 95     Mx
L_A69512:
    LDA $1D56                       ; $A69512  AD 56 1D     Mx
    CMP #$CCCC                      ; $A69515  C9 CC CC     Mx
    BCC L_A6951D                    ; $A69518  90 03        Mx
    JMP L_A695EB                    ; $A6951A  4C EB 95     Mx
L_A6951D:
    JSR L_A69833                    ; $A6951D  20 33 98     Mx
    LDA $08C0                       ; $A69520  AD C0 08     Mx
    DEC                             ; $A69523  3A           Mx
    AND #$0003                      ; $A69524  29 03 00     Mx
    ASL                             ; $A69527  0A           Mx
    TAX                             ; $A69528  AA           Mx
    INC $1CB1,X                     ; $A69529  FE B1 1C     Mx
    LDA $0C25                       ; $A6952C  AD 25 0C     Mx
    BNE L_A69555                    ; $A6952F  D0 24        Mx
    LDA $0BC1                       ; $A69531  AD C1 0B     Mx
    CMP #$0001                      ; $A69534  C9 01 00     Mx
    BNE L_A6953E                    ; $A69537  D0 05        Mx
    LDA $0C2B                       ; $A69539  AD 2B 0C     Mx
    BMI L_A6956B                    ; $A6953C  30 2D        Mx
L_A6953E:
    LDA $08C4                       ; $A6953E  AD C4 08     Mx
    CMP #$0032                      ; $A69541  C9 32 00     Mx
    BEQ L_A6956B                    ; $A69544  F0 25        Mx
    LDA $0B50                       ; $A69546  AD 50 0B     Mx
    BNE L_A6956B                    ; $A69549  D0 20        Mx
    LDA $08D2                       ; $A6954B  AD D2 08     Mx
    BNE L_A6956B                    ; $A6954E  D0 1B        Mx
    LDA $0BF9                       ; $A69550  AD F9 0B     Mx
    BNE L_A6956B                    ; $A69553  D0 16        Mx
L_A69555:
    LDA $1615                       ; $A69555  AD 15 16     Mx
    BNE L_A6956B                    ; $A69558  D0 11        Mx
    LDA $0C25                       ; $A6955A  AD 25 0C     Mx
    BNE L_A69564                    ; $A6955D  D0 05        Mx
    LDA $0C2B                       ; $A6955F  AD 2B 0C     Mx
    BMI L_A6956B                    ; $A69562  30 07        Mx
L_A69564:
    LDA #$000A                      ; $A69564  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $A69567  22 D5 BB 9A  Mx
L_A6956B:
    LDA $0003                       ; $A6956B  AD 03 00     Mx
    CMP #$051E                      ; $A6956E  C9 1E 05     Mx
    BCS L_A695DD                    ; $A69571  B0 6A        Mx
    JMP L_A695EB                    ; $A69573  4C EB 95     Mx
L_A69576:
    REP #$10                        ; $A69576  C2 10        Mx
    LDA $092E                       ; $A69578  AD 2E 09     MX
    AND #$007F                      ; $A6957B  29 7F 00     MX
    ASL                             ; $A6957E  0A           MX
    TAX                             ; $A6957F  AA           MX
    LDY #$0000                      ; $A69580  A0 00 00     MX
    STZ $0BE5                       ; $A69583  9C E5 0B     MX
    LDA $9AABEB,X                   ; $A69586  BF EB AB 9A  MX
    BPL L_A6958F                    ; $A6958A  10 03        MX
    DEC $0BE5                       ; $A6958C  CE E5 0B     MX
L_A6958F:
    ASL                             ; $A6958F  0A           MX
    ROL $0BE5                       ; $A69590  2E E5 0B     MX
    ASL                             ; $A69593  0A           MX
    ROL $0BE5                       ; $A69594  2E E5 0B     MX
    ASL                             ; $A69597  0A           MX
    ROL $0BE5                       ; $A69598  2E E5 0B     MX
    ASL                             ; $A6959B  0A           MX
    ROL $0BE5                       ; $A6959C  2E E5 0B     MX
    ASL                             ; $A6959F  0A           MX
    ROL $0BE5                       ; $A695A0  2E E5 0B     MX
    STA $0BE3                       ; $A695A3  8D E3 0B     MX
    LDY #$0000                      ; $A695A6  A0 00 00     MX
    STZ $0BED                       ; $A695A9  9C ED 0B     MX
    LDA $9AABAB,X                   ; $A695AC  BF AB AB 9A  MX
    BPL L_A695B5                    ; $A695B0  10 03        MX
    DEC $0BED                       ; $A695B2  CE ED 0B     MX
L_A695B5:
    ASL                             ; $A695B5  0A           MX
    ROL $0BED                       ; $A695B6  2E ED 0B     MX
    ASL                             ; $A695B9  0A           MX
    ROL $0BED                       ; $A695BA  2E ED 0B     MX
    ASL                             ; $A695BD  0A           MX
    ROL $0BED                       ; $A695BE  2E ED 0B     MX
    ASL                             ; $A695C1  0A           MX
    ROL $0BED                       ; $A695C2  2E ED 0B     MX
    ASL                             ; $A695C5  0A           MX
    ROL $0BED                       ; $A695C6  2E ED 0B     MX
    STA $0BEB                       ; $A695C9  8D EB 0B     MX
    LDA #$FFFC                      ; $A695CC  A9 FC FF     MX
    STA $0BE9                       ; $A695CF  8D E9 0B     MX
    LDA #$6300                      ; $A695D2  A9 00 63     MX
    STA $0BE7                       ; $A695D5  8D E7 0B     MX
    SEP #$10                        ; $A695D8  E2 10        MX
    JMP L_A695EB                    ; $A695DA  4C EB 95     Mx
L_A695DD:
    LDA $08C4                       ; $A695DD  AD C4 08     Mx
    CMP #$0032                      ; $A695E0  C9 32 00     Mx
    BNE L_A695E8                    ; $A695E3  D0 03        Mx
    JSR L_A6D1C7                    ; $A695E5  20 C7 D1     Mx
L_A695E8:
    JMP L_A6960E                    ; $A695E8  4C 0E 96     Mx
L_A695EB:
    JMP L_A6985C                    ; $A695EB  4C 5C 98     Mx
    db $00,$00,$04,$00,$07,$00,$0A,$00,$0C,$00,$0F,$00,$13,$00,$16,$00 ; $A695EE
    db $19,$00,$1E,$00,$24,$00,$28,$00,$2A,$00,$2D,$00,$2F,$00,$32,$00 ; $A695FE
L_A6960E:
    LDA $0C19                       ; $A6960E  AD 19 0C     Mx
    BEQ L_A69616                    ; $A69611  F0 03        Mx
    JMP L_A6985C                    ; $A69613  4C 5C 98     Mx
L_A69616:
    STZ $0C25                       ; $A69616  9C 25 0C     Mx
    STZ $0C27                       ; $A69619  9C 27 0C     Mx
    STZ $0BFF                       ; $A6961C  9C FF 0B     Mx
    REP #$10                        ; $A6961F  C2 10        Mx
    LDA $08C0                       ; $A69621  AD C0 08     MX
    AND #$FF00                      ; $A69624  29 00 FF     MX
    BEQ L_A6962C                    ; $A69627  F0 03        MX
    JMP L_A696FE                    ; $A69629  4C FE 96     MX
L_A6962C:
    LDA $1CE9                       ; $A6962C  AD E9 1C     MX
    BNE L_A69634                    ; $A6962F  D0 03        MX
L_A69631:
    JMP L_A696FE                    ; $A69631  4C FE 96     MX
L_A69634:
    LDA $09A8                       ; $A69634  AD A8 09     MX
    AND #$FF00                      ; $A69637  29 00 FF     MX
    BEQ L_A69631                    ; $A6963A  F0 F5        MX
    STA $00A4                       ; $A6963C  8D A4 00     MX
    LDA $08C0                       ; $A6963F  AD C0 08     MX
    AND #$00FF                      ; $A69642  29 FF 00     MX
    ORA $00A4                       ; $A69645  0D A4 00     MX
    STA $08C0                       ; $A69648  8D C0 08     MX
    LDA $09A8                       ; $A6964B  AD A8 09     MX
    AND #$00FF                      ; $A6964E  29 FF 00     MX
    STA $09A8                       ; $A69651  8D A8 09     MX
    STZ $0A62                       ; $A69654  9C 62 0A     MX
    STZ $0A64                       ; $A69657  9C 64 0A     MX
    LDA $0A2E                       ; $A6965A  AD 2E 0A     MX
    STA $0946                       ; $A6965D  8D 46 09     MX
    LDA $0A2A                       ; $A69660  AD 2A 0A     MX
    STA $0942                       ; $A69663  8D 42 09     MX
    LDA $09A2                       ; $A69666  AD A2 09     MX
    LDX $0A8A                       ; $A69669  AE 8A 0A     MX
    STA $0A8A                       ; $A6966C  8D 8A 0A     MX
    STX $09A2                       ; $A6966F  8E A2 09     MX
    LDA $09A0                       ; $A69672  AD A0 09     MX
    LDX $0A88                       ; $A69675  AE 88 0A     MX
    STA $0A88                       ; $A69678  8D 88 0A     MX
    STX $09A0                       ; $A6967B  8E A0 09     MX
    LDA $09A4                       ; $A6967E  AD A4 09     MX
    LDX $0A8C                       ; $A69681  AE 8C 0A     MX
    STA $0A8C                       ; $A69684  8D 8C 0A     MX
    STX $09A4                       ; $A69687  8E A4 09     MX
    LDA $09A6                       ; $A6968A  AD A6 09     MX
    LDX $0A8E                       ; $A6968D  AE 8E 0A     MX
    STA $0A8E                       ; $A69690  8D 8E 0A     MX
    STX $09A6                       ; $A69693  8E A6 09     MX
    LDA $1C5D                       ; $A69696  AD 5D 1C     MX
    CMP #$0002                      ; $A69699  C9 02 00     MX
    BEQ L_A696FE                    ; $A6969C  F0 60        MX
    LDA $0B2A                       ; $A6969E  AD 2A 0B     MX
    LDX $0B3A                       ; $A696A1  AE 3A 0B     MX
    STA $0B3A                       ; $A696A4  8D 3A 0B     MX
    STX $0B2A                       ; $A696A7  8E 2A 0B     MX
    LDA $0B2C                       ; $A696AA  AD 2C 0B     MX
    LDX $0B3C                       ; $A696AD  AE 3C 0B     MX
    STA $0B3C                       ; $A696B0  8D 3C 0B     MX
    STX $0B2C                       ; $A696B3  8E 2C 0B     MX
    LDA $0B2E                       ; $A696B6  AD 2E 0B     MX
    LDX $0B3E                       ; $A696B9  AE 3E 0B     MX
    STA $0B3E                       ; $A696BC  8D 3E 0B     MX
    STX $0B2E                       ; $A696BF  8E 2E 0B     MX
    LDA $0B30                       ; $A696C2  AD 30 0B     MX
    LDX $0B40                       ; $A696C5  AE 40 0B     MX
    STA $0B40                       ; $A696C8  8D 40 0B     MX
    STX $0B30                       ; $A696CB  8E 30 0B     MX
    LDA $0B32                       ; $A696CE  AD 32 0B     MX
    LDX $0B42                       ; $A696D1  AE 42 0B     MX
    STA $0B42                       ; $A696D4  8D 42 0B     MX
    STX $0B32                       ; $A696D7  8E 32 0B     MX
    LDA $0B34                       ; $A696DA  AD 34 0B     MX
    LDX $0B44                       ; $A696DD  AE 44 0B     MX
    STA $0B44                       ; $A696E0  8D 44 0B     MX
    STX $0B34                       ; $A696E3  8E 34 0B     MX
    LDA $0B36                       ; $A696E6  AD 36 0B     MX
    LDX $0B46                       ; $A696E9  AE 46 0B     MX
    STA $0B46                       ; $A696EC  8D 46 0B     MX
    STX $0B36                       ; $A696EF  8E 36 0B     MX
    LDA $0B38                       ; $A696F2  AD 38 0B     MX
    LDX $0B48                       ; $A696F5  AE 48 0B     MX
    STA $0B48                       ; $A696F8  8D 48 0B     MX
    STX $0B38                       ; $A696FB  8E 38 0B     MX
L_A696FE:
    LDA $08C0                       ; $A696FE  AD C0 08     MX
    STA $0C19                       ; $A69701  8D 19 0C     MX
    LDA #$08C0                      ; $A69704  A9 C0 08     MX
    STA $00CC                       ; $A69707  8D CC 00     MX
    LDA #$0032                      ; $A6970A  A9 32 00     MX
    STA $0958                       ; $A6970D  8D 58 09     MX
    LDX $08D0                       ; $A69710  AE D0 08     MX
    LDA #$2500                      ; $A69713  A9 00 25     MX
    STA $00D1                       ; $A69716  8D D1 00     MX
    LDA $A58000,X                   ; $A69719  BF 00 80 A5  MX
    CLC                             ; $A6971D  18           MX
    ADC $08CE                       ; $A6971E  6D CE 08     MX
    STA $00D0                       ; $A69721  8D D0 00     MX
    LDA #$0020                      ; $A69724  A9 20 00     MX
    STA $0BEF                       ; $A69727  8D EF 0B     MX
    LDA $08E0                       ; $A6972A  AD E0 08     MX
    STA $0BD9                       ; $A6972D  8D D9 0B     MX
    LDA $08C4                       ; $A69730  AD C4 08     MX
    CMP #$0022                      ; $A69733  C9 22 00     MX
    BNE L_A6974D                    ; $A69736  D0 15        MX
    LDA $098A                       ; $A69738  AD 8A 09     MX
    BEQ L_A69745                    ; $A6973B  F0 08        MX
    LDA #$002D                      ; $A6973D  A9 2D 00     MX
    STA $0BF1                       ; $A69740  8D F1 0B     MX
    BRA L_A69753                    ; $A69743  80 0E        MX
L_A69745:
    LDA #$0041                      ; $A69745  A9 41 00     MX
    STA $0BF1                       ; $A69748  8D F1 0B     MX
    BRA L_A69753                    ; $A6974B  80 06        MX
L_A6974D:
    LDA #$001E                      ; $A6974D  A9 1E 00     MX
    STA $0BF1                       ; $A69750  8D F1 0B     MX
L_A69753:
    LDA $08E4                       ; $A69753  AD E4 08     MX
    STA $0BDD                       ; $A69756  8D DD 0B     MX
    LDY #$0004                      ; $A69759  A0 04 00     MX
    LDA [$D0],Y                     ; $A6975C  B7 D0        MX
    STA $0BF5                       ; $A6975E  8D F5 0B     MX
    CLC                             ; $A69761  18           MX
    ADC $08E8                       ; $A69762  6D E8 08     MX
    STA $0BF3                       ; $A69765  8D F3 0B     MX
    STA $0BE1                       ; $A69768  8D E1 0B     MX
    STZ $0950                       ; $A6976B  9C 50 09     MX
    STZ $0952                       ; $A6976E  9C 52 09     MX
    STZ $0C11                       ; $A69771  9C 11 0C     MX
    STZ $097C                       ; $A69774  9C 7C 09     MX
    STZ $093C                       ; $A69777  9C 3C 09     MX
    LDA #$000A                      ; $A6977A  A9 0A 00     MX
    STA $0958                       ; $A6977D  8D 58 09     MX
    SEP #$10                        ; $A69780  E2 10        MX
    LDA #$0004                      ; $A69782  A9 04 00     Mx
    STA $0BBF                       ; $A69785  8D BF 0B     Mx
    LDA $08F2                       ; $A69788  AD F2 08     Mx
    BNE L_A697B8                    ; $A6978B  D0 2B        Mx
    STZ $0BC1                       ; $A6978D  9C C1 0B     Mx
    LDA $08C4                       ; $A69790  AD C4 08     Mx
    CMP #$0032                      ; $A69793  C9 32 00     Mx
    BEQ L_A697B8                    ; $A69796  F0 20        Mx
    CMP #$002E                      ; $A69798  C9 2E 00     Mx
    BEQ L_A697B8                    ; $A6979B  F0 1B        Mx
    LDA #$000C                      ; $A6979D  A9 0C 00     Mx
    STA $08C4                       ; $A697A0  8D C4 08     Mx
    LDA #$FFFF                      ; $A697A3  A9 FF FF     Mx
    STA $08CA                       ; $A697A6  8D CA 08     Mx
    STZ $08CC                       ; $A697A9  9C CC 08     Mx
    STZ $0912                       ; $A697AC  9C 12 09     Mx
    STZ $08C8                       ; $A697AF  9C C8 08     Mx
    LDA #$FFF8                      ; $A697B2  A9 F8 FF     Mx
    STA $08CE                       ; $A697B5  8D CE 08     Mx
L_A697B8:
    LDA #$0087                      ; $A697B8  A9 87 00     Mx
    STA $0982                       ; $A697BB  8D 82 09     Mx
    LDA #$003C                      ; $A697BE  A9 3C 00     Mx
    STA $08C6                       ; $A697C1  8D C6 08     Mx
    LDA $08C4                       ; $A697C4  AD C4 08     Mx
    CMP #$0022                      ; $A697C7  C9 22 00     Mx
    BNE L_A6981C                    ; $A697CA  D0 50        Mx
    LDA $0BC1                       ; $A697CC  AD C1 0B     Mx
    CMP #$0001                      ; $A697CF  C9 01 00     Mx
    BNE L_A6981C                    ; $A697D2  D0 48        Mx
    LDA $0C2B                       ; $A697D4  AD 2B 0C     Mx
    BPL L_A6981C                    ; $A697D7  10 43        Mx
    CMP #$FF4C                      ; $A697D9  C9 4C FF     Mx
    BCC L_A6981C                    ; $A697DC  90 3E        Mx
    LDA $0A98                       ; $A697DE  AD 98 0A     Mx
    BNE L_A697EF                    ; $A697E1  D0 0C        Mx
    LDA $08C0                       ; $A697E3  AD C0 08     Mx
    DEC                             ; $A697E6  3A           Mx
    AND #$0003                      ; $A697E7  29 03 00     Mx
    ASL                             ; $A697EA  0A           Mx
    TAX                             ; $A697EB  AA           Mx
    INC $1CC1,X                     ; $A697EC  FE C1 1C     Mx
L_A697EF:
    LDA $0B50                       ; $A697EF  AD 50 0B     Mx
    BNE L_A6981C                    ; $A697F2  D0 28        Mx
    LDA $0BF9                       ; $A697F4  AD F9 0B     Mx
    BNE L_A6981C                    ; $A697F7  D0 23        Mx
    LDA $08D2                       ; $A697F9  AD D2 08     Mx
    BNE L_A6981C                    ; $A697FC  D0 1E        Mx
    LDA $0C2B                       ; $A697FE  AD 2B 0C     Mx
    BPL L_A6981C                    ; $A69801  10 19        Mx
    LDA $0B52                       ; $A69803  AD 52 0B     Mx
    CMP #$003A                      ; $A69806  C9 3A 00     Mx
    BEQ L_A6981C                    ; $A69809  F0 11        Mx
    LDA $1615                       ; $A6980B  AD 15 16     Mx
    BNE L_A6981C                    ; $A6980E  D0 0C        Mx
    LDA $08D2                       ; $A69810  AD D2 08     Mx
    BNE L_A6981C                    ; $A69813  D0 07        Mx
    LDA #$0009                      ; $A69815  A9 09 00     Mx
    JSL L_9ABBD5                    ; $A69818  22 D5 BB 9A  Mx
L_A6981C:
    STZ $0C2B                       ; $A6981C  9C 2B 0C     Mx
    LDA $094E                       ; $A6981F  AD 4E 09     Mx
    BNE L_A6985C                    ; $A69822  D0 38        Mx
    LDX $00AA                       ; $A69824  AE AA 00     Mx
    LDA $A7E4B9,X                   ; $A69827  BF B9 E4 A7  Mx
    BEQ L_A6985C                    ; $A6982B  F0 2F        Mx
    JSR L_A69833                    ; $A6982D  20 33 98     Mx
    JMP L_A6985C                    ; $A69830  4C 5C 98     Mx
L_A69833:
    LDA $0C3D                       ; $A69833  AD 3D 0C     Mx
    BNE L_A6985B                    ; $A69836  D0 23        Mx
    LDA $0C1F                       ; $A69838  AD 1F 0C     Mx
    AND #$00FF                      ; $A6983B  29 FF 00     Mx
    CMP #$0003                      ; $A6983E  C9 03 00     Mx
    BCS L_A6985B                    ; $A69841  B0 18        Mx
    LDA #$0014                      ; $A69843  A9 14 00     Mx
    STA $0C3D                       ; $A69846  8D 3D 0C     Mx
    LDA $1611                       ; $A69849  AD 11 16     Mx
    BNE L_A6985B                    ; $A6984C  D0 0D        Mx
    LDA #$0011                      ; $A6984E  A9 11 00     Mx
    JSL L_BDFDF3                    ; $A69851  22 F3 FD BD  Mx
    LDA #$0064                      ; $A69855  A9 64 00     Mx
    STA $1611                       ; $A69858  8D 11 16     Mx
L_A6985B:
    RTS                             ; $A6985B  60           Mx
L_A6985C:
    LDA $0984                       ; $A6985C  AD 84 09     Mx
    BNE L_A69886                    ; $A6985F  D0 25        Mx
    LDA $08D2                       ; $A69861  AD D2 08     Mx
    BNE L_A69886                    ; $A69864  D0 20        Mx
    LDA $0974                       ; $A69866  AD 74 09     Mx
    BNE L_A69886                    ; $A69869  D0 1B        Mx
    LDA $08C4                       ; $A6986B  AD C4 08     Mx
    CMP #$0020                      ; $A6986E  C9 20 00     Mx
    BCC L_A69878                    ; $A69871  90 05        Mx
    CMP #$0025                      ; $A69873  C9 25 00     Mx
    BCC L_A69886                    ; $A69876  90 0E        Mx
L_A69878:
    LDA $08F8                       ; $A69878  AD F8 08     Mx
    ORA $0900                       ; $A6987B  0D 00 09     Mx
    ORA $0902                       ; $A6987E  0D 02 09     Mx
    ORA $08FA                       ; $A69881  0D FA 08     Mx
    BNE L_A69889                    ; $A69884  D0 03        Mx
L_A69886:
    JMP L_A69A88                    ; $A69886  4C 88 9A     Mx
L_A69889:
    LDA $08F2                       ; $A69889  AD F2 08     Mx
    BNE L_A69886                    ; $A6988C  D0 F8        Mx
    LDA $0954                       ; $A6988E  AD 54 09     Mx
    BNE L_A69886                    ; $A69891  D0 F3        Mx
    LDA $08C8                       ; $A69893  AD C8 08     Mx
    BNE L_A69886                    ; $A69896  D0 EE        Mx
    LDA $0722                       ; $A69898  AD 22 07     Mx
    BNE L_A698C1                    ; $A6989B  D0 24        Mx
    LDA $0784                       ; $A6989D  AD 84 07     Mx
    BNE L_A698C1                    ; $A698A0  D0 1F        Mx
    LDA $0938                       ; $A698A2  AD 38 09     Mx
    CMP #$0025                      ; $A698A5  C9 25 00     Mx
    BCS L_A698C1                    ; $A698A8  B0 17        Mx
    CMP #$000A                      ; $A698AA  C9 0A 00     Mx
    BCC L_A698C1                    ; $A698AD  90 12        Mx
    LDA $0916                       ; $A698AF  AD 16 09     Mx
    SEC                             ; $A698B2  38           Mx
    SBC $0748                       ; $A698B3  ED 48 07     Mx
    BPL L_A698C1                    ; $A698B6  10 09        Mx
    LDA $0918                       ; $A698B8  AD 18 09     Mx
    SEC                             ; $A698BB  38           Mx
    SBC $0746                       ; $A698BC  ED 46 07     Mx
    BPL L_A698C4                    ; $A698BF  10 03        Mx
L_A698C1:
    JMP L_A69990                    ; $A698C1  4C 90 99     Mx
L_A698C4:
    LDA $08E8                       ; $A698C4  AD E8 08     Mx
    SEC                             ; $A698C7  38           Mx
    SBC $0718                       ; $A698C8  ED 18 07     Mx
    BCC L_A698D5                    ; $A698CB  90 08        Mx
    CMP #$000C                      ; $A698CD  C9 0C 00     Mx
    BCC L_A698DD                    ; $A698D0  90 0B        Mx
    JMP L_A69990                    ; $A698D2  4C 90 99     Mx
L_A698D5:
    CMP #$FFF4                      ; $A698D5  C9 F4 FF     Mx
    BCS L_A698DD                    ; $A698D8  B0 03        Mx
    JMP L_A69990                    ; $A698DA  4C 90 99     Mx
L_A698DD:
    LDA $08EE                       ; $A698DD  AD EE 08     Mx
    SEC                             ; $A698E0  38           Mx
    SBC $071E                       ; $A698E1  ED 1E 07     Mx
    CMP #$000C                      ; $A698E4  C9 0C 00     Mx
    BPL L_A6994F                    ; $A698E7  10 66        Mx
    CMP #$FFF4                      ; $A698E9  C9 F4 FF     Mx
    BMI L_A6994F                    ; $A698EC  30 61        Mx
    STZ $0900                       ; $A698EE  9C 00 09     Mx
    STZ $0902                       ; $A698F1  9C 02 09     Mx
    LDA $08EE                       ; $A698F4  AD EE 08     Mx
    SEC                             ; $A698F7  38           Mx
    SBC $071E                       ; $A698F8  ED 1E 07     Mx
    BMI L_A69926                    ; $A698FB  30 29        Mx
    LDA $08F8                       ; $A698FD  AD F8 08     Mx
    CLC                             ; $A69900  18           Mx
    ADC #$C000                      ; $A69901  69 00 C0     Mx
    STA $08F8                       ; $A69904  8D F8 08     Mx
    LDA $08FA                       ; $A69907  AD FA 08     Mx
    ADC #$0000                      ; $A6990A  69 00 00     Mx
    STA $08FA                       ; $A6990D  8D FA 08     Mx
    LDA $0728                       ; $A69910  AD 28 07     Mx
    SEC                             ; $A69913  38           Mx
    SBC #$2000                      ; $A69914  E9 00 20     Mx
    STA $0728                       ; $A69917  8D 28 07     Mx
    LDA $072A                       ; $A6991A  AD 2A 07     Mx
    SBC #$0000                      ; $A6991D  E9 00 00     Mx
    STA $072A                       ; $A69920  8D 2A 07     Mx
    JMP L_A69990                    ; $A69923  4C 90 99     Mx
L_A69926:
    LDA $08F8                       ; $A69926  AD F8 08     Mx
    SEC                             ; $A69929  38           Mx
    SBC #$C000                      ; $A6992A  E9 00 C0     Mx
    STA $08F8                       ; $A6992D  8D F8 08     Mx
    LDA $08FA                       ; $A69930  AD FA 08     Mx
    SBC #$0000                      ; $A69933  E9 00 00     Mx
    STA $08FA                       ; $A69936  8D FA 08     Mx
    LDA $0728                       ; $A69939  AD 28 07     Mx
    CLC                             ; $A6993C  18           Mx
    ADC #$2000                      ; $A6993D  69 00 20     Mx
    STA $0728                       ; $A69940  8D 28 07     Mx
    LDA $072A                       ; $A69943  AD 2A 07     Mx
    ADC #$0000                      ; $A69946  69 00 00     Mx
    STA $072A                       ; $A69949  8D 2A 07     Mx
    JMP L_A69990                    ; $A6994C  4C 90 99     Mx
L_A6994F:
    STZ $08F8                       ; $A6994F  9C F8 08     Mx
    STZ $08FA                       ; $A69952  9C FA 08     Mx
    LDA $08F6                       ; $A69955  AD F6 08     Mx
    CMP $0726                       ; $A69958  CD 26 07     Mx
    BMI L_A69978                    ; $A6995B  30 1B        Mx
    CMP #$03E4                      ; $A6995D  C9 E4 03     Mx
    BCS L_A6997D                    ; $A69960  B0 1B        Mx
L_A69962:
    LDA $0900                       ; $A69962  AD 00 09     Mx
    CLC                             ; $A69965  18           Mx
    ADC #$A000                      ; $A69966  69 00 A0     Mx
    STA $0900                       ; $A69969  8D 00 09     Mx
    LDA $0902                       ; $A6996C  AD 02 09     Mx
    ADC #$0000                      ; $A6996F  69 00 00     Mx
    STA $0902                       ; $A69972  8D 02 09     Mx
    JMP L_A69990                    ; $A69975  4C 90 99     Mx
L_A69978:
    CMP #$031C                      ; $A69978  C9 1C 03     Mx
    BCC L_A69962                    ; $A6997B  90 E5        Mx
L_A6997D:
    LDA $0900                       ; $A6997D  AD 00 09     Mx
    SEC                             ; $A69980  38           Mx
    SBC #$A000                      ; $A69981  E9 00 A0     Mx
    STA $0900                       ; $A69984  8D 00 09     Mx
    LDA $0902                       ; $A69987  AD 02 09     Mx
    SBC #$0000                      ; $A6998A  E9 00 00     Mx
    STA $0902                       ; $A6998D  8D 02 09     Mx
L_A69990:
    LDA $080A                       ; $A69990  AD 0A 08     Mx
    BNE L_A699B9                    ; $A69993  D0 24        Mx
    LDA $086C                       ; $A69995  AD 6C 08     Mx
    BNE L_A699B9                    ; $A69998  D0 1F        Mx
    LDA $093A                       ; $A6999A  AD 3A 09     Mx
    CMP #$0025                      ; $A6999D  C9 25 00     Mx
    BCS L_A699B9                    ; $A699A0  B0 17        Mx
    CMP #$000A                      ; $A699A2  C9 0A 00     Mx
    BCC L_A699B9                    ; $A699A5  90 12        Mx
    LDA $0916                       ; $A699A7  AD 16 09     Mx
    SEC                             ; $A699AA  38           Mx
    SBC $0830                       ; $A699AB  ED 30 08     Mx
    BPL L_A699B9                    ; $A699AE  10 09        Mx
    LDA $0918                       ; $A699B0  AD 18 09     Mx
    SEC                             ; $A699B3  38           Mx
    SBC $082E                       ; $A699B4  ED 2E 08     Mx
    BPL L_A699BC                    ; $A699B7  10 03        Mx
L_A699B9:
    JMP L_A69A88                    ; $A699B9  4C 88 9A     Mx
L_A699BC:
    LDA $08E8                       ; $A699BC  AD E8 08     Mx
    SEC                             ; $A699BF  38           Mx
    SBC $0800                       ; $A699C0  ED 00 08     Mx
    BCC L_A699CD                    ; $A699C3  90 08        Mx
    CMP #$000C                      ; $A699C5  C9 0C 00     Mx
    BCC L_A699D5                    ; $A699C8  90 0B        Mx
    JMP L_A69A88                    ; $A699CA  4C 88 9A     Mx
L_A699CD:
    CMP #$FFF4                      ; $A699CD  C9 F4 FF     Mx
    BCS L_A699D5                    ; $A699D0  B0 03        Mx
    JMP L_A69A88                    ; $A699D2  4C 88 9A     Mx
L_A699D5:
    LDA $08EE                       ; $A699D5  AD EE 08     Mx
    SEC                             ; $A699D8  38           Mx
    SBC $0806                       ; $A699D9  ED 06 08     Mx
    CMP #$000C                      ; $A699DC  C9 0C 00     Mx
    BPL L_A69A47                    ; $A699DF  10 66        Mx
    CMP #$FFF4                      ; $A699E1  C9 F4 FF     Mx
    BMI L_A69A47                    ; $A699E4  30 61        Mx
    STZ $0900                       ; $A699E6  9C 00 09     Mx
    STZ $0902                       ; $A699E9  9C 02 09     Mx
    LDA $08EE                       ; $A699EC  AD EE 08     Mx
    SEC                             ; $A699EF  38           Mx
    SBC $0806                       ; $A699F0  ED 06 08     Mx
    BMI L_A69A1E                    ; $A699F3  30 29        Mx
    LDA $08F8                       ; $A699F5  AD F8 08     Mx
    CLC                             ; $A699F8  18           Mx
    ADC #$C000                      ; $A699F9  69 00 C0     Mx
    STA $08F8                       ; $A699FC  8D F8 08     Mx
    LDA $08FA                       ; $A699FF  AD FA 08     Mx
    ADC #$0000                      ; $A69A02  69 00 00     Mx
    STA $08FA                       ; $A69A05  8D FA 08     Mx
    LDA $0810                       ; $A69A08  AD 10 08     Mx
    SEC                             ; $A69A0B  38           Mx
    SBC #$2000                      ; $A69A0C  E9 00 20     Mx
    STA $0810                       ; $A69A0F  8D 10 08     Mx
    LDA $0812                       ; $A69A12  AD 12 08     Mx
    SBC #$0000                      ; $A69A15  E9 00 00     Mx
    STA $0812                       ; $A69A18  8D 12 08     Mx
    JMP L_A69A88                    ; $A69A1B  4C 88 9A     Mx
L_A69A1E:
    LDA $08F8                       ; $A69A1E  AD F8 08     Mx
    SEC                             ; $A69A21  38           Mx
    SBC #$C000                      ; $A69A22  E9 00 C0     Mx
    STA $08F8                       ; $A69A25  8D F8 08     Mx
    LDA $08FA                       ; $A69A28  AD FA 08     Mx
    SBC #$0000                      ; $A69A2B  E9 00 00     Mx
    STA $08FA                       ; $A69A2E  8D FA 08     Mx
    LDA $0810                       ; $A69A31  AD 10 08     Mx
    CLC                             ; $A69A34  18           Mx
    ADC #$2000                      ; $A69A35  69 00 20     Mx
    STA $0810                       ; $A69A38  8D 10 08     Mx
    LDA $0812                       ; $A69A3B  AD 12 08     Mx
    ADC #$0000                      ; $A69A3E  69 00 00     Mx
    STA $0812                       ; $A69A41  8D 12 08     Mx
    JMP L_A69A88                    ; $A69A44  4C 88 9A     Mx
L_A69A47:
    STZ $08F8                       ; $A69A47  9C F8 08     Mx
    STZ $08FA                       ; $A69A4A  9C FA 08     Mx
    LDA $08F6                       ; $A69A4D  AD F6 08     Mx
    CMP $080E                       ; $A69A50  CD 0E 08     Mx
    BMI L_A69A70                    ; $A69A53  30 1B        Mx
    CMP #$03E4                      ; $A69A55  C9 E4 03     Mx
    BCS L_A69A75                    ; $A69A58  B0 1B        Mx
L_A69A5A:
    LDA $0900                       ; $A69A5A  AD 00 09     Mx
    CLC                             ; $A69A5D  18           Mx
    ADC #$A000                      ; $A69A5E  69 00 A0     Mx
    STA $0900                       ; $A69A61  8D 00 09     Mx
    LDA $0902                       ; $A69A64  AD 02 09     Mx
    ADC #$0000                      ; $A69A67  69 00 00     Mx
    STA $0902                       ; $A69A6A  8D 02 09     Mx
    JMP L_A69A88                    ; $A69A6D  4C 88 9A     Mx
L_A69A70:
    CMP #$031C                      ; $A69A70  C9 1C 03     Mx
    BCC L_A69A5A                    ; $A69A73  90 E5        Mx
L_A69A75:
    LDA $0900                       ; $A69A75  AD 00 09     Mx
    SEC                             ; $A69A78  38           Mx
    SBC #$A000                      ; $A69A79  E9 00 A0     Mx
    STA $0900                       ; $A69A7C  8D 00 09     Mx
    LDA $0902                       ; $A69A7F  AD 02 09     Mx
    SBC #$0000                      ; $A69A82  E9 00 00     Mx
    STA $0902                       ; $A69A85  8D 02 09     Mx
L_A69A88:
    LDA $08F4                       ; $A69A88  AD F4 08     Mx
    CLC                             ; $A69A8B  18           Mx
    ADC $0900                       ; $A69A8C  6D 00 09     Mx
    STA $08EA                       ; $A69A8F  8D EA 08     Mx
    LDA $08F6                       ; $A69A92  AD F6 08     Mx
    ADC $0902                       ; $A69A95  6D 02 09     Mx
    STA $08E8                       ; $A69A98  8D E8 08     Mx
    CMP #$0310                      ; $A69A9B  C9 10 03     Mx
    BCC L_A69AB1                    ; $A69A9E  90 11        Mx
    CMP #$03F0                      ; $A69AA0  C9 F0 03     Mx
    BCC L_A69AC3                    ; $A69AA3  90 1E        Mx
    LDA $093E                       ; $A69AA5  AD 3E 09     Mx
    AND #$FBFF                      ; $A69AA8  29 FF FB     Mx
    STA $093E                       ; $A69AAB  8D 3E 09     Mx
    JMP L_A69ABA                    ; $A69AAE  4C BA 9A     Mx
L_A69AB1:
    LDA $093E                       ; $A69AB1  AD 3E 09     Mx
    AND #$F7FF                      ; $A69AB4  29 FF F7     Mx
    STA $093E                       ; $A69AB7  8D 3E 09     Mx
L_A69ABA:
    STZ $0902                       ; $A69ABA  9C 02 09     Mx
    STZ $0900                       ; $A69ABD  9C 00 09     Mx
    JMP L_A69ADB                    ; $A69AC0  4C DB 9A     Mx
L_A69AC3:
    LDA $0902                       ; $A69AC3  AD 02 09     Mx
    BEQ L_A69ADB                    ; $A69AC6  F0 13        Mx
    BPL L_A69AD2                    ; $A69AC8  10 08        Mx
    LDA $093E                       ; $A69ACA  AD 3E 09     Mx
    ORA #$0400                      ; $A69ACD  09 00 04     Mx
    BNE L_A69AD8                    ; $A69AD0  D0 06        Mx
L_A69AD2:
    LDA $093E                       ; $A69AD2  AD 3E 09     Mx
    ORA #$0800                      ; $A69AD5  09 00 08     Mx
L_A69AD8:
    STA $093E                       ; $A69AD8  8D 3E 09     Mx
L_A69ADB:
    LDA $08D2                       ; $A69ADB  AD D2 08     Mx
    BEQ L_A69AEB                    ; $A69ADE  F0 0B        Mx
    LDA $08F2                       ; $A69AE0  AD F2 08     Mx
    CMP #$0001                      ; $A69AE3  C9 01 00     Mx
    BPL L_A69AEB                    ; $A69AE6  10 03        Mx
    JMP L_A69B3D                    ; $A69AE8  4C 3D 9B     Mx
L_A69AEB:
    LDA $08E0                       ; $A69AEB  AD E0 08     Mx
    BPL L_A69AFD                    ; $A69AEE  10 0D        Mx
    CMP #$FF00                      ; $A69AF0  C9 00 FF     Mx
    BCS L_A69B25                    ; $A69AF3  B0 30        Mx
    LDA $08FA                       ; $A69AF5  AD FA 08     Mx
    BPL L_A69B25                    ; $A69AF8  10 2B        Mx
    JMP L_A69B13                    ; $A69AFA  4C 13 9B     Mx
L_A69AFD:
    CMP #$010C                      ; $A69AFD  C9 0C 01     Mx
    BCC L_A69B25                    ; $A69B00  90 23        Mx
    LDA $08FA                       ; $A69B02  AD FA 08     Mx
    BMI L_A69B25                    ; $A69B05  30 1E        Mx
    LDA $093E                       ; $A69B07  AD 3E 09     Mx
    AND #$FEFF                      ; $A69B0A  29 FF FE     Mx
    STA $093E                       ; $A69B0D  8D 3E 09     Mx
    JMP L_A69B1C                    ; $A69B10  4C 1C 9B     Mx
L_A69B13:
    LDA $093E                       ; $A69B13  AD 3E 09     Mx
    AND #$FDFF                      ; $A69B16  29 FF FD     Mx
    STA $093E                       ; $A69B19  8D 3E 09     Mx
L_A69B1C:
    STZ $08FA                       ; $A69B1C  9C FA 08     Mx
    STZ $08F8                       ; $A69B1F  9C F8 08     Mx
    JMP L_A69B3D                    ; $A69B22  4C 3D 9B     Mx
L_A69B25:
    LDA $08FA                       ; $A69B25  AD FA 08     Mx
    BEQ L_A69B3D                    ; $A69B28  F0 13        Mx
    BPL L_A69B34                    ; $A69B2A  10 08        Mx
    LDA $093E                       ; $A69B2C  AD 3E 09     Mx
    ORA #$0100                      ; $A69B2F  09 00 01     Mx
    BNE L_A69B3A                    ; $A69B32  D0 06        Mx
L_A69B34:
    LDA $093E                       ; $A69B34  AD 3E 09     Mx
    ORA #$0200                      ; $A69B37  09 00 02     Mx
L_A69B3A:
    STA $093E                       ; $A69B3A  8D 3E 09     Mx
L_A69B3D:
    LDA $08E4                       ; $A69B3D  AD E4 08     Mx
    BNE L_A69B54                    ; $A69B40  D0 12        Mx
    LDA $08C8                       ; $A69B42  AD C8 08     Mx
    AND #$0004                      ; $A69B45  29 04 00     Mx
    BNE L_A69B6B                    ; $A69B48  D0 21        Mx
    LDA $0964                       ; $A69B4A  AD 64 09     Mx
    BEQ L_A69B6B                    ; $A69B4D  F0 1C        Mx
    STZ $0C11                       ; $A69B4F  9C 11 0C     Mx
    BRA L_A69B6B                    ; $A69B52  80 17        Mx
L_A69B54:
    BMI L_A69B5F                    ; $A69B54  30 09        Mx
    LDX $08C4                       ; $A69B56  AE C4 08     Mx
    LDA $02DF90,X                   ; $A69B59  BF 90 DF 02  Mx
    BNE L_A69B6B                    ; $A69B5D  D0 0C        Mx
L_A69B5F:
    STZ $08F2                       ; $A69B5F  9C F2 08     Mx
    STZ $08F0                       ; $A69B62  9C F0 08     Mx
    STZ $08E4                       ; $A69B65  9C E4 08     Mx
    STZ $08E6                       ; $A69B68  9C E6 08     Mx
L_A69B6B:
    LDA $08F8                       ; $A69B6B  AD F8 08     Mx
    CLC                             ; $A69B6E  18           Mx
    ADC $08EC                       ; $A69B6F  6D EC 08     Mx
    STA $08EC                       ; $A69B72  8D EC 08     Mx
    LDA $08FA                       ; $A69B75  AD FA 08     Mx
    ADC $08EE                       ; $A69B78  6D EE 08     Mx
    STA $08EE                       ; $A69B7B  8D EE 08     Mx
    LDA $0900                       ; $A69B7E  AD 00 09     Mx
    CLC                             ; $A69B81  18           Mx
    ADC $08F4                       ; $A69B82  6D F4 08     Mx
    STA $08F4                       ; $A69B85  8D F4 08     Mx
    LDA $0902                       ; $A69B88  AD 02 09     Mx
    ADC $08F6                       ; $A69B8B  6D F6 08     Mx
    STA $08F6                       ; $A69B8E  8D F6 08     Mx
    LDA $08FC                       ; $A69B91  AD FC 08     Mx
    CLC                             ; $A69B94  18           Mx
    ADC $08F0                       ; $A69B95  6D F0 08     Mx
    STA $08F0                       ; $A69B98  8D F0 08     Mx
    LDA $08FE                       ; $A69B9B  AD FE 08     Mx
    ADC $08F2                       ; $A69B9E  6D F2 08     Mx
    BPL L_A69BA6                    ; $A69BA1  10 03        Mx
    LDA #$0000                      ; $A69BA3  A9 00 00     Mx
L_A69BA6:
    STA $08F2                       ; $A69BA6  8D F2 08     Mx
    LDX $08C4                       ; $A69BA9  AE C4 08     Mx
    LDA $82DFD4,X                   ; $A69BAC  BF D4 DF 82  Mx
    BEQ L_A69BBE                    ; $A69BB0  F0 0C        Mx
    STZ $08FA                       ; $A69BB2  9C FA 08     Mx
    STZ $08F8                       ; $A69BB5  9C F8 08     Mx
    STZ $0902                       ; $A69BB8  9C 02 09     Mx
    STZ $0900                       ; $A69BBB  9C 00 09     Mx
L_A69BBE:
    REP #$10                        ; $A69BBE  C2 10        Mx
    LDA $08C4                       ; $A69BC0  AD C4 08     MX
    ASL                             ; $A69BC3  0A           MX
    ASL                             ; $A69BC4  0A           MX
    ASL                             ; $A69BC5  0A           MX
    CLC                             ; $A69BC6  18           MX
    ADC $08D8                       ; $A69BC7  6D D8 08     MX
    ADC $08D8                       ; $A69BCA  6D D8 08     MX
    STA $08D0                       ; $A69BCD  8D D0 08     MX
    TAX                             ; $A69BD0  AA           MX
    DEC $08CC                       ; $A69BD1  CE CC 08     MX
    BPL L_A69BFB                    ; $A69BD4  10 25        MX
    LDA $998210,X                   ; $A69BD6  BF 10 82 99  MX
    STA $08CC                       ; $A69BDA  8D CC 08     MX
    INC $08CA                       ; $A69BDD  EE CA 08     MX
    LDA $08CE                       ; $A69BE0  AD CE 08     MX
    CLC                             ; $A69BE3  18           MX
    ADC #$0008                      ; $A69BE4  69 08 00     MX
    STA $08CE                       ; $A69BE7  8D CE 08     MX
    LDA $998420,X                   ; $A69BEA  BF 20 84 99  MX
    CMP $08CA                       ; $A69BEE  CD CA 08     MX
    BEQ L_A69BF5                    ; $A69BF1  F0 02        MX
    BCS L_A69BFB                    ; $A69BF3  B0 06        MX
L_A69BF5:
    STZ $08CA                       ; $A69BF5  9C CA 08     MX
    STZ $08CE                       ; $A69BF8  9C CE 08     MX
L_A69BFB:
    LDA $998000,X                   ; $A69BFB  BF 00 80 99  MX
    CLC                             ; $A69BFF  18           MX
    ADC $08CE                       ; $A69C00  6D CE 08     MX
    STA $099C                       ; $A69C03  8D 9C 09     MX
    SEP #$10                        ; $A69C06  E2 10        MX
    RTL                             ; $A69C08  6B           Mx
L_A69C09:
    LDX $08D2                       ; $A69C09  AE D2 08     Mx
    BNE L_A69C44                    ; $A69C0C  D0 36        Mx
    LDX $0A9A                       ; $A69C0E  AE 9A 0A     Mx
    BEQ L_A69C16                    ; $A69C11  F0 03        Mx
    JMP L_A69DE9                    ; $A69C13  4C E9 9D     Mx
L_A69C16:
    LDX $0972                       ; $A69C16  AE 72 09     Mx
    BEQ L_A69C41                    ; $A69C19  F0 26        Mx
    DEC $0972                       ; $A69C1B  CE 72 09     Mx
    BNE L_A69C2E                    ; $A69C1E  D0 0E        Mx
    PHA                             ; $A69C20  48           Mx
    LDA #$FFFF                      ; $A69C21  A9 FF FF     Mx
    STA $093E                       ; $A69C24  8D 3E 09     Mx
    STZ $0974                       ; $A69C27  9C 74 09     Mx
    PLA                             ; $A69C2A  68           Mx
    JMP L_A69EA1                    ; $A69C2B  4C A1 9E     Mx
L_A69C2E:
    LDX $0974                       ; $A69C2E  AE 74 09     Mx
    BEQ L_A69C36                    ; $A69C31  F0 03        Mx
    JMP L_A69EA4                    ; $A69C33  4C A4 9E     Mx
L_A69C36:
    PHA                             ; $A69C36  48           Mx
    LDA $093E                       ; $A69C37  AD 3E 09     Mx
    AND #$F0FF                      ; $A69C3A  29 FF F0     Mx
    STA $093E                       ; $A69C3D  8D 3E 09     Mx
    PLA                             ; $A69C40  68           Mx
L_A69C41:
    JMP L_A69EA1                    ; $A69C41  4C A1 9E     Mx
L_A69C44:
    LDA #$FFFF                      ; $A69C44  A9 FF FF     Mx
    STA $093E                       ; $A69C47  8D 3E 09     Mx
    STZ $00A4                       ; $A69C4A  9C A4 00     Mx
    LDA $08F2                       ; $A69C4D  AD F2 08     Mx
    BEQ L_A69C58                    ; $A69C50  F0 06        Mx
    LDA #$0000                      ; $A69C52  A9 00 00     Mx
    JMP L_A69EA1                    ; $A69C55  4C A1 9E     Mx
L_A69C58:
    LDA $0964                       ; $A69C58  AD 64 09     Mx
    BNE L_A69CBE                    ; $A69C5B  D0 61        Mx
    LDX $0C1B                       ; $A69C5D  AE 1B 0C     Mx
    CPX $08C0                       ; $A69C60  EC C0 08     Mx
    BNE L_A69CC8                    ; $A69C63  D0 63        Mx
    STZ $00D0                       ; $A69C65  9C D0 00     Mx
    LDA $08EE                       ; $A69C68  AD EE 08     Mx
    SEC                             ; $A69C6B  38           Mx
    SBC $0BFB                       ; $A69C6C  ED FB 0B     Mx
    AND #$FFFC                      ; $A69C6F  29 FC FF     Mx
    BMI L_A69C87                    ; $A69C72  30 13        Mx
    BNE L_A69C7E                    ; $A69C74  D0 08        Mx
    STZ $08FA                       ; $A69C76  9C FA 08     Mx
    STZ $08F8                       ; $A69C79  9C F8 08     Mx
    BRA L_A69C8D                    ; $A69C7C  80 0F        Mx
L_A69C7E:
    LDA #$0200                      ; $A69C7E  A9 00 02     Mx
    STA $00A4                       ; $A69C81  8D A4 00     Mx
    JMP L_A69C8D                    ; $A69C84  4C 8D 9C     Mx
L_A69C87:
    LDA #$0100                      ; $A69C87  A9 00 01     Mx
    STA $00A4                       ; $A69C8A  8D A4 00     Mx
L_A69C8D:
    LDA $08F6                       ; $A69C8D  AD F6 08     Mx
    SEC                             ; $A69C90  38           Mx
    SBC $0BFD                       ; $A69C91  ED FD 0B     Mx
    AND #$FFFC                      ; $A69C94  29 FC FF     Mx
    BMI L_A69CAF                    ; $A69C97  30 16        Mx
    BNE L_A69CA3                    ; $A69C99  D0 08        Mx
    STZ $0902                       ; $A69C9B  9C 02 09     Mx
    STZ $0900                       ; $A69C9E  9C 00 09     Mx
    BRA L_A69CB8                    ; $A69CA1  80 15        Mx
L_A69CA3:
    LDA #$0800                      ; $A69CA3  A9 00 08     Mx
    ORA $00A4                       ; $A69CA6  0D A4 00     Mx
    STA $00A4                       ; $A69CA9  8D A4 00     Mx
    JMP L_A69CB8                    ; $A69CAC  4C B8 9C     Mx
L_A69CAF:
    LDA #$0400                      ; $A69CAF  A9 00 04     Mx
    ORA $00A4                       ; $A69CB2  0D A4 00     Mx
    STA $00A4                       ; $A69CB5  8D A4 00     Mx
L_A69CB8:
    LDA $00A4                       ; $A69CB8  AD A4 00     Mx
    JMP L_A69EA1                    ; $A69CBB  4C A1 9E     Mx
L_A69CBE:
    LDX $0C1B                       ; $A69CBE  AE 1B 0C     Mx
    BEQ L_A69CC8                    ; $A69CC1  F0 05        Mx
    CPX $08C0                       ; $A69CC3  EC C0 08     Mx
    BNE L_A69CCB                    ; $A69CC6  D0 03        Mx
L_A69CC8:
    JMP L_A69D5F                    ; $A69CC8  4C 5F 9D     Mx
L_A69CCB:
    LDA $0C19                       ; $A69CCB  AD 19 0C     Mx
    BEQ L_A69D36                    ; $A69CCE  F0 66        Mx
    LDA $0BD9                       ; $A69CD0  AD D9 0B     Mx
    CLC                             ; $A69CD3  18           Mx
    ADC $0BEF                       ; $A69CD4  6D EF 0B     Mx
    LDY #$54                        ; $A69CD7  A0 54        Mx
    SEC                             ; $A69CD9  38           Mx
    SBC ($CC),Y                     ; $A69CDA  F1 CC        Mx
    BPL L_A69CE8                    ; $A69CDC  10 0A        Mx
    CMP #$FEF4                      ; $A69CDE  C9 F4 FE     Mx
    BCS L_A69CF0                    ; $A69CE1  B0 0D        Mx
    LDA #$FEF4                      ; $A69CE3  A9 F4 FE     Mx
    BRA L_A69CF0                    ; $A69CE6  80 08        Mx
L_A69CE8:
    CMP #$010C                      ; $A69CE8  C9 0C 01     Mx
    BCC L_A69CF0                    ; $A69CEB  90 03        Mx
    LDA #$010C                      ; $A69CED  A9 0C 01     Mx
L_A69CF0:
    STA $0BD9                       ; $A69CF0  8D D9 0B     Mx
    LDA $0BDD                       ; $A69CF3  AD DD 0B     Mx
    CLC                             ; $A69CF6  18           Mx
    ADC $0BF1                       ; $A69CF7  6D F1 0B     Mx
    STA $0BDD                       ; $A69CFA  8D DD 0B     Mx
    LDA $0BF3                       ; $A69CFD  AD F3 0B     Mx
    CMP #$0310                      ; $A69D00  C9 10 03     Mx
    BCC L_A69D0F                    ; $A69D03  90 0A        Mx
    CMP #$03F0                      ; $A69D05  C9 F0 03     Mx
    BCC L_A69D12                    ; $A69D08  90 08        Mx
    LDA #$03F0                      ; $A69D0A  A9 F0 03     Mx
    BRA L_A69D12                    ; $A69D0D  80 03        Mx
L_A69D0F:
    LDA #$0310                      ; $A69D0F  A9 10 03     Mx
L_A69D12:
    STA $0BE1                       ; $A69D12  8D E1 0B     Mx
    STA $0BF3                       ; $A69D15  8D F3 0B     Mx
    STZ $0C19                       ; $A69D18  9C 19 0C     Mx
    STZ $00CC                       ; $A69D1B  9C CC 00     Mx
    STZ $0C2B                       ; $A69D1E  9C 2B 0C     Mx
    STZ $0BEF                       ; $A69D21  9C EF 0B     Mx
    STZ $0BF1                       ; $A69D24  9C F1 0B     Mx
    STZ $0C11                       ; $A69D27  9C 11 0C     Mx
    LDA #$0002                      ; $A69D2A  A9 02 00     Mx
    STA $0BBF                       ; $A69D2D  8D BF 0B     Mx
    LDA #$0002                      ; $A69D30  A9 02 00     Mx
    STA $0BC1                       ; $A69D33  8D C1 0B     Mx
L_A69D36:
    LDA $0C1B                       ; $A69D36  AD 1B 0C     Mx
    AND #$00FF                      ; $A69D39  29 FF 00     Mx
    DEC                             ; $A69D3C  3A           Mx
    ASL                             ; $A69D3D  0A           Mx
    TAX                             ; $A69D3E  AA           Mx
    LDA $9ABBCD,X                   ; $A69D3F  BF CD BB 9A  Mx
    STA $00CC                       ; $A69D43  8D CC 00     Mx
    LDY #$2E                        ; $A69D46  A0 2E        Mx
    LDA ($CC),Y                     ; $A69D48  B1 CC        Mx
    STA $0BD9                       ; $A69D4A  8D D9 0B     Mx
    LDY #$36                        ; $A69D4D  A0 36        Mx
    LDA ($CC),Y                     ; $A69D4F  B1 CC        Mx
    STA $0BE1                       ; $A69D51  8D E1 0B     Mx
    LDY #$32                        ; $A69D54  A0 32        Mx
    LDA ($CC),Y                     ; $A69D56  B1 CC        Mx
    CLC                             ; $A69D58  18           Mx
    ADC #$0019                      ; $A69D59  69 19 00     Mx
    STA $0BDD                       ; $A69D5C  8D DD 0B     Mx
L_A69D5F:
    STZ $00D0                       ; $A69D5F  9C D0 00     Mx
    LDA $08EE                       ; $A69D62  AD EE 08     Mx
    SEC                             ; $A69D65  38           Mx
    SBC $08D4                       ; $A69D66  ED D4 08     Mx
    AND #$FFFC                      ; $A69D69  29 FC FF     Mx
    BMI L_A69D84                    ; $A69D6C  30 16        Mx
    BNE L_A69D78                    ; $A69D6E  D0 08        Mx
    STZ $08FA                       ; $A69D70  9C FA 08     Mx
    STZ $08F8                       ; $A69D73  9C F8 08     Mx
    BRA L_A69D94                    ; $A69D76  80 1C        Mx
L_A69D78:
    STA $00D0                       ; $A69D78  8D D0 00     Mx
    LDA #$0200                      ; $A69D7B  A9 00 02     Mx
    STA $00A4                       ; $A69D7E  8D A4 00     Mx
    JMP L_A69D94                    ; $A69D81  4C 94 9D     Mx
L_A69D84:
    EOR #$FFFF                      ; $A69D84  49 FF FF     Mx
    CLC                             ; $A69D87  18           Mx
    ADC #$0001                      ; $A69D88  69 01 00     Mx
    STA $00D0                       ; $A69D8B  8D D0 00     Mx
    LDA #$0100                      ; $A69D8E  A9 00 01     Mx
    STA $00A4                       ; $A69D91  8D A4 00     Mx
L_A69D94:
    LDA $08F6                       ; $A69D94  AD F6 08     Mx
    SEC                             ; $A69D97  38           Mx
    SBC $08D6                       ; $A69D98  ED D6 08     Mx
    AND #$FFFC                      ; $A69D9B  29 FC FF     Mx
    BMI L_A69DB6                    ; $A69D9E  30 16        Mx
    BNE L_A69DAA                    ; $A69DA0  D0 08        Mx
    STZ $0902                       ; $A69DA2  9C 02 09     Mx
    STZ $0900                       ; $A69DA5  9C 00 09     Mx
    BRA L_A69DBF                    ; $A69DA8  80 15        Mx
L_A69DAA:
    LDA #$0800                      ; $A69DAA  A9 00 08     Mx
    ORA $00A4                       ; $A69DAD  0D A4 00     Mx
    STA $00A4                       ; $A69DB0  8D A4 00     Mx
    JMP L_A69DBF                    ; $A69DB3  4C BF 9D     Mx
L_A69DB6:
    LDA #$0400                      ; $A69DB6  A9 00 04     Mx
    ORA $00A4                       ; $A69DB9  0D A4 00     Mx
    STA $00A4                       ; $A69DBC  8D A4 00     Mx
L_A69DBF:
    LDA $00A4                       ; $A69DBF  AD A4 00     Mx
    BEQ L_A69DC7                    ; $A69DC2  F0 03        Mx
    JMP L_A69EA1                    ; $A69DC4  4C A1 9E     Mx
L_A69DC7:
    LDX $092E                       ; $A69DC7  AE 2E 09     Mx
    LDA $A7E377,X                   ; $A69DCA  BF 77 E3 A7  Mx
    AND #$0007                      ; $A69DCE  29 07 00     Mx
    STA $08D8                       ; $A69DD1  8D D8 08     Mx
    STZ $08FA                       ; $A69DD4  9C FA 08     Mx
    STZ $08F8                       ; $A69DD7  9C F8 08     Mx
    STZ $0902                       ; $A69DDA  9C 02 09     Mx
    STZ $0900                       ; $A69DDD  9C 00 09     Mx
    STZ $08FE                       ; $A69DE0  9C FE 08     Mx
    STZ $08FC                       ; $A69DE3  9C FC 08     Mx
    STZ $08D2                       ; $A69DE6  9C D2 08     Mx
L_A69DE9:
    LDA #$0087                      ; $A69DE9  A9 87 00     Mx
    STA $0982                       ; $A69DEC  8D 82 09     Mx
    LDA #$FFFF                      ; $A69DEF  A9 FF FF     Mx
    STA $093E                       ; $A69DF2  8D 3E 09     Mx
    LDA $0702                       ; $A69DF5  AD 02 07     Mx
    ORA $07EA                       ; $A69DF8  0D EA 07     Mx
    ORA $08D2                       ; $A69DFB  0D D2 08     Mx
    ORA $09BA                       ; $A69DFE  0D BA 09     Mx
    BEQ L_A69E06                    ; $A69E01  F0 03        Mx
    JMP L_A69E9E                    ; $A69E03  4C 9E 9E     Mx
L_A69E06:
    LDA $0C3B                       ; $A69E06  AD 3B 0C     Mx
    BNE L_A69E10                    ; $A69E09  D0 05        Mx
    STZ $0CD3                       ; $A69E0B  9C D3 0C     Mx
    BRA L_A69E16                    ; $A69E0E  80 06        Mx
L_A69E10:
    LDA #$003C                      ; $A69E10  A9 3C 00     Mx
    STA $0CD3                       ; $A69E13  8D D3 0C     Mx
L_A69E16:
    LDA $0B50                       ; $A69E16  AD 50 0B     Mx
    BNE L_A69E39                    ; $A69E19  D0 1E        Mx
    LDA $0C19                       ; $A69E1B  AD 19 0C     Mx
    AND #$00FF                      ; $A69E1E  29 FF 00     Mx
    SEC                             ; $A69E21  38           Mx
    SBC $0C1B                       ; $A69E22  ED 1B 0C     Mx
    AND #$00FF                      ; $A69E25  29 FF 00     Mx
    BNE L_A69E3C                    ; $A69E28  D0 12        Mx
    LDA $0C19                       ; $A69E2A  AD 19 0C     Mx
    AND #$00FF                      ; $A69E2D  29 FF 00     Mx
    SEC                             ; $A69E30  38           Mx
    SBC $08C0                       ; $A69E31  ED C0 08     Mx
    AND #$00FF                      ; $A69E34  29 FF 00     Mx
    BEQ L_A69E53                    ; $A69E37  F0 1A        Mx
L_A69E39:
    JMP L_A69E9E                    ; $A69E39  4C 9E 9E     Mx
L_A69E3C:
    LDY #$2E                        ; $A69E3C  A0 2E        Mx
    LDA ($CC),Y                     ; $A69E3E  B1 CC        Mx
    STA $0BD9                       ; $A69E40  8D D9 0B     Mx
    LDY #$36                        ; $A69E43  A0 36        Mx
    LDA ($CC),Y                     ; $A69E45  B1 CC        Mx
    STA $0BE1                       ; $A69E47  8D E1 0B     Mx
    STA $0BF3                       ; $A69E4A  8D F3 0B     Mx
    STZ $0BDD                       ; $A69E4D  9C DD 0B     Mx
    JMP L_A69E9E                    ; $A69E50  4C 9E 9E     Mx
L_A69E53:
    LDX $0926                       ; $A69E53  AE 26 09     Mx
    LDA $A7E377,X                   ; $A69E56  BF 77 E3 A7  Mx
    AND #$0007                      ; $A69E5A  29 07 00     Mx
    STA $08D8                       ; $A69E5D  8D D8 08     Mx
    LDA $0A9A                       ; $A69E60  AD 9A 0A     Mx
    BEQ L_A69E6D                    ; $A69E63  F0 08        Mx
    DEC $0A9A                       ; $A69E65  CE 9A 0A     Mx
    BEQ L_A69E6D                    ; $A69E68  F0 03        Mx
    JMP L_A69E9E                    ; $A69E6A  4C 9E 9E     Mx
L_A69E6D:
    STZ $0C1B                       ; $A69E6D  9C 1B 0C     Mx
    LDA $08EE                       ; $A69E70  AD EE 08     Mx
    SEC                             ; $A69E73  38           Mx
    SBC #$001E                      ; $A69E74  E9 1E 00     Mx
    STA $08D4                       ; $A69E77  8D D4 08     Mx
    LDA #$001E                      ; $A69E7A  A9 1E 00     Mx
    STA $0A5A                       ; $A69E7D  8D 5A 0A     Mx
    STA $07A2                       ; $A69E80  8D A2 07     Mx
    STA $088A                       ; $A69E83  8D 8A 08     Mx
    STZ $0A5C                       ; $A69E86  9C 5C 0A     Mx
    STZ $07A4                       ; $A69E89  9C A4 07     Mx
    STZ $088C                       ; $A69E8C  9C 8C 08     Mx
    LDA #$0001                      ; $A69E8F  A9 01 00     Mx
    STA $08D2                       ; $A69E92  8D D2 08     Mx
    STZ $0948                       ; $A69E95  9C 48 09     Mx
    LDA $09A0                       ; $A69E98  AD A0 09     Mx
    JMP L_A69EA1                    ; $A69E9B  4C A1 9E     Mx
L_A69E9E:
    LDA #$0000                      ; $A69E9E  A9 00 00     Mx
L_A69EA1:
    JMP L_A69EA7                    ; $A69EA1  4C A7 9E     Mx
L_A69EA4:
    LDA $093C                       ; $A69EA4  AD 3C 09     Mx
L_A69EA7:
    AND $093E                       ; $A69EA7  2D 3E 09     Mx
    STA $00A4                       ; $A69EAA  8D A4 00     Mx
    AND #$0F00                      ; $A69EAD  29 00 0F     Mx
    BEQ L_A69EC5                    ; $A69EB0  F0 13        Mx
    STA $00A6                       ; $A69EB2  8D A6 00     Mx
    LDA $093C                       ; $A69EB5  AD 3C 09     Mx
    AND #$0F00                      ; $A69EB8  29 00 0F     Mx
    CMP $00A6                       ; $A69EBB  CD A6 00     Mx
    BNE L_A69EC5                    ; $A69EBE  D0 05        Mx
    INC $0976                       ; $A69EC0  EE 76 09     Mx
    BNE L_A69EF5                    ; $A69EC3  D0 30        Mx
L_A69EC5:
    LDA $1D56                       ; $A69EC5  AD 56 1D     Mx
    AND #$000F                      ; $A69EC8  29 0F 00     Mx
    BNE L_A69EF2                    ; $A69ECB  D0 25        Mx
    LDA $08F2                       ; $A69ECD  AD F2 08     Mx
    BNE L_A69EF2                    ; $A69ED0  D0 20        Mx
    LDA $08FA                       ; $A69ED2  AD FA 08     Mx
    ORA $0902                       ; $A69ED5  0D 02 09     Mx
    BEQ L_A69EF2                    ; $A69ED8  F0 18        Mx
    LDA $1D58                       ; $A69EDA  AD 58 1D     Mx
    AND #$0001                      ; $A69EDD  29 01 00     Mx
    BEQ L_A69EEB                    ; $A69EE0  F0 09        Mx
    LDA #$000D                      ; $A69EE2  A9 0D 00     Mx
    JSL L_BDFDF3                    ; $A69EE5  22 F3 FD BD  Mx
    BRA L_A69EF2                    ; $A69EE9  80 07        Mx
L_A69EEB:
    LDA #$000E                      ; $A69EEB  A9 0E 00     Mx
    JSL L_BDFDF3                    ; $A69EEE  22 F3 FD BD  Mx
L_A69EF2:
    STZ $0976                       ; $A69EF2  9C 76 09     Mx
L_A69EF5:
    LDA $0CCB                       ; $A69EF5  AD CB 0C     Mx
    ORA $0CC9                       ; $A69EF8  0D C9 0C     Mx
    BNE L_A69F05                    ; $A69EFB  D0 08        Mx
    LDA $093C                       ; $A69EFD  AD 3C 09     Mx
    AND #$F0FF                      ; $A69F00  29 FF F0     Mx
    BRA L_A69F08                    ; $A69F03  80 03        Mx
L_A69F05:
    LDA $00A4                       ; $A69F05  AD A4 00     Mx
L_A69F08:
    STA $093C                       ; $A69F08  8D 3C 09     Mx
    LDA $09A6                       ; $A69F0B  AD A6 09     Mx
    AND #$0008                      ; $A69F0E  29 08 00     Mx
    BEQ L_A69F27                    ; $A69F11  F0 14        Mx
    LDA $0964                       ; $A69F13  AD 64 09     Mx
    BEQ L_A69F27                    ; $A69F16  F0 0F        Mx
    LDA $08C0                       ; $A69F18  AD C0 08     Mx
    STA $0A96                       ; $A69F1B  8D 96 0A     Mx
    STA $0C21                       ; $A69F1E  8D 21 0C     Mx
    LDA #$0003                      ; $A69F21  A9 03 00     Mx
    STA $0C23                       ; $A69F24  8D 23 0C     Mx
L_A69F27:
    LDA $08C2                       ; $A69F27  AD C2 08     Mx
    BEQ L_A69F72                    ; $A69F2A  F0 46        Mx
    LDA $08C4                       ; $A69F2C  AD C4 08     Mx
    STA $08C4                       ; $A69F2F  8D C4 08     Mx
    LDA #$FFFF                      ; $A69F32  A9 FF FF     Mx
    STA $08CA                       ; $A69F35  8D CA 08     Mx
    STZ $08CC                       ; $A69F38  9C CC 08     Mx
    STZ $0912                       ; $A69F3B  9C 12 09     Mx
    STZ $08C8                       ; $A69F3E  9C C8 08     Mx
    LDA #$FFF8                      ; $A69F41  A9 F8 FF     Mx
    STA $08CE                       ; $A69F44  8D CE 08     Mx
    LDA $08C4                       ; $A69F47  AD C4 08     Mx
    CMP #$0030                      ; $A69F4A  C9 30 00     Mx
    BNE L_A69F6F                    ; $A69F4D  D0 20        Mx
    LDA $08FA                       ; $A69F4F  AD FA 08     Mx
    BPL L_A69F61                    ; $A69F52  10 0D        Mx
    LDX #$02                        ; $A69F54  A2 02        Mx
    LDA $0902                       ; $A69F56  AD 02 09     Mx
    BMI L_A69F5E                    ; $A69F59  30 03        Mx
    DEX                             ; $A69F5B  CA           Mx
    BRA L_A69F6C                    ; $A69F5C  80 0E        Mx
L_A69F5E:
    INX                             ; $A69F5E  E8           Mx
    BRA L_A69F6C                    ; $A69F5F  80 0B        Mx
L_A69F61:
    LDX #$06                        ; $A69F61  A2 06        Mx
    LDA $0902                       ; $A69F63  AD 02 09     Mx
    BMI L_A69F6B                    ; $A69F66  30 03        Mx
    INX                             ; $A69F68  E8           Mx
    BRA L_A69F6C                    ; $A69F69  80 01        Mx
L_A69F6B:
    DEX                             ; $A69F6B  CA           Mx
L_A69F6C:
    STX $08D8                       ; $A69F6C  8E D8 08     Mx
L_A69F6F:
    STZ $08C2                       ; $A69F6F  9C C2 08     Mx
L_A69F72:
    LDA $0954                       ; $A69F72  AD 54 09     Mx
    BEQ L_A69F82                    ; $A69F75  F0 0B        Mx
    LDA $08C4                       ; $A69F77  AD C4 08     Mx
    CMP #$0030                      ; $A69F7A  C9 30 00     Mx
    BEQ L_A69F82                    ; $A69F7D  F0 03        Mx
    STZ $0954                       ; $A69F7F  9C 54 09     Mx
L_A69F82:
    LDA $093C                       ; $A69F82  AD 3C 09     Mx
    AND $09A4                       ; $A69F85  2D A4 09     Mx
    BEQ L_A69F9B                    ; $A69F88  F0 11        Mx
    INC $0956                       ; $A69F8A  EE 56 09     Mx
    LDA $0958                       ; $A69F8D  AD 58 09     Mx
    CMP #$0005                      ; $A69F90  C9 05 00     Mx
    BCC L_A69FA4                    ; $A69F93  90 0F        Mx
    STZ $0958                       ; $A69F95  9C 58 09     Mx
    JMP L_A6A023                    ; $A69F98  4C 23 A0     Mx
L_A69F9B:
    STZ $0956                       ; $A69F9B  9C 56 09     Mx
    INC $0958                       ; $A69F9E  EE 58 09     Mx
    JMP L_A6A023                    ; $A69FA1  4C 23 A0     Mx
L_A69FA4:
    LDA $0956                       ; $A69FA4  AD 56 09     Mx
    CMP #$0001                      ; $A69FA7  C9 01 00     Mx
    BNE L_A6A023                    ; $A69FAA  D0 77        Mx
    LDA $0958                       ; $A69FAC  AD 58 09     Mx
    BEQ L_A6A023                    ; $A69FAF  F0 72        Mx
    LDA $0964                       ; $A69FB1  AD 64 09     Mx
    BEQ L_A6A023                    ; $A69FB4  F0 6D        Mx
    LDA $08F2                       ; $A69FB6  AD F2 08     Mx
    BNE L_A6A023                    ; $A69FB9  D0 68        Mx
    LDA $08C4                       ; $A69FBB  AD C4 08     Mx
    CMP #$002E                      ; $A69FBE  C9 2E 00     Mx
    BEQ L_A6A023                    ; $A69FC1  F0 60        Mx
    LDA $0CCB                       ; $A69FC3  AD CB 0C     Mx
    CMP #$00A9                      ; $A69FC6  C9 A9 00     Mx
    BCS L_A6A023                    ; $A69FC9  B0 58        Mx
    LDX $08C1                       ; $A69FCB  AE C1 08     Mx
    BNE L_A69FE0                    ; $A69FCE  D0 10        Mx
    LDA $0938                       ; $A69FD0  AD 38 09     Mx
    CMP #$0046                      ; $A69FD3  C9 46 00     Mx
    BCC L_A69FE0                    ; $A69FD6  90 08        Mx
    LDA $093A                       ; $A69FD8  AD 3A 09     Mx
    CMP #$0046                      ; $A69FDB  C9 46 00     Mx
    BCS L_A6A023                    ; $A69FDE  B0 43        Mx
L_A69FE0:
    LDX $08C0                       ; $A69FE0  AE C0 08     Mx
    CPX $0A96                       ; $A69FE3  EC 96 0A     Mx
    BEQ L_A69FF7                    ; $A69FE6  F0 0F        Mx
    LDA $095A                       ; $A69FE8  AD 5A 09     Mx
    CMP #$0004                      ; $A69FEB  C9 04 00     Mx
    BCC L_A6A023                    ; $A69FEE  90 33        Mx
    SEC                             ; $A69FF0  38           Mx
    SBC #$0003                      ; $A69FF1  E9 03 00     Mx
    STA $095A                       ; $A69FF4  8D 5A 09     Mx
L_A69FF7:
    STZ $0950                       ; $A69FF7  9C 50 09     Mx
    LDA $08C4                       ; $A69FFA  AD C4 08     Mx
    CMP #$000C                      ; $A69FFD  C9 0C 00     Mx
    BEQ L_A6A008                    ; $A6A000  F0 06        Mx
    LDA #$0001                      ; $A6A002  A9 01 00     Mx
    STA $0950                       ; $A6A005  8D 50 09     Mx
L_A6A008:
    LDA #$002E                      ; $A6A008  A9 2E 00     Mx
    STA $08C4                       ; $A6A00B  8D C4 08     Mx
    LDA #$FFFF                      ; $A6A00E  A9 FF FF     Mx
    STA $08CA                       ; $A6A011  8D CA 08     Mx
    STZ $08CC                       ; $A6A014  9C CC 08     Mx
    STZ $0912                       ; $A6A017  9C 12 09     Mx
    STZ $08C8                       ; $A6A01A  9C C8 08     Mx
    LDA #$FFF8                      ; $A6A01D  A9 F8 FF     Mx
    STA $08CE                       ; $A6A020  8D CE 08     Mx
L_A6A023:
    LDA $09A6                       ; $A6A023  AD A6 09     Mx
    AND #$0004                      ; $A6A026  29 04 00     Mx
    BEQ L_A6A036                    ; $A6A029  F0 0B        Mx
    LDA #$0020                      ; $A6A02B  A9 20 00     Mx
    STA $095A                       ; $A6A02E  8D 5A 09     Mx
    STZ $095C                       ; $A6A031  9C 5C 09     Mx
    BRA L_A6A093                    ; $A6A034  80 5D        Mx
L_A6A036:
    LDA $0956                       ; $A6A036  AD 56 09     Mx
    BEQ L_A6A06E                    ; $A6A039  F0 33        Mx
    LDA $08D2                       ; $A6A03B  AD D2 08     Mx
    BNE L_A6A06E                    ; $A6A03E  D0 2E        Mx
    LDX $08C0                       ; $A6A040  AE C0 08     Mx
    CPX $0A96                       ; $A6A043  EC 96 0A     Mx
    BEQ L_A6A06E                    ; $A6A046  F0 26        Mx
    LDA $095C                       ; $A6A048  AD 5C 09     Mx
    SEC                             ; $A6A04B  38           Mx
    SBC $0960                       ; $A6A04C  ED 60 09     Mx
    STA $095C                       ; $A6A04F  8D 5C 09     Mx
    LDA $095A                       ; $A6A052  AD 5A 09     Mx
    BEQ L_A6A068                    ; $A6A055  F0 11        Mx
    SBC #$0000                      ; $A6A057  E9 00 00     Mx
    STA $095A                       ; $A6A05A  8D 5A 09     Mx
    BNE L_A6A065                    ; $A6A05D  D0 06        Mx
    LDA #$000A                      ; $A6A05F  A9 0A 00     Mx
    STA $0962                       ; $A6A062  8D 62 09     Mx
L_A6A065:
    JMP L_A6A093                    ; $A6A065  4C 93 A0     Mx
L_A6A068:
    STZ $0956                       ; $A6A068  9C 56 09     Mx
    JMP L_A6A093                    ; $A6A06B  4C 93 A0     Mx
L_A6A06E:
    LDA $0962                       ; $A6A06E  AD 62 09     Mx
    BEQ L_A6A078                    ; $A6A071  F0 05        Mx
    DEC $0962                       ; $A6A073  CE 62 09     Mx
    BRA L_A6A093                    ; $A6A076  80 1B        Mx
L_A6A078:
    LDA $095C                       ; $A6A078  AD 5C 09     Mx
    CLC                             ; $A6A07B  18           Mx
    ADC $095E                       ; $A6A07C  6D 5E 09     Mx
    STA $095C                       ; $A6A07F  8D 5C 09     Mx
    LDA $095A                       ; $A6A082  AD 5A 09     Mx
    ADC #$0000                      ; $A6A085  69 00 00     Mx
    CMP #$0020                      ; $A6A088  C9 20 00     Mx
    BCC L_A6A090                    ; $A6A08B  90 03        Mx
    LDA #$0020                      ; $A6A08D  A9 20 00     Mx
L_A6A090:
    STA $095A                       ; $A6A090  8D 5A 09     Mx
L_A6A093:
    LDA $0940                       ; $A6A093  AD 40 09     Mx
    STA $0942                       ; $A6A096  8D 42 09     Mx
    LDA $093C                       ; $A6A099  AD 3C 09     Mx
    AND $09A2                       ; $A6A09C  2D A2 09     Mx
    BEQ L_A6A0A4                    ; $A6A09F  F0 03        Mx
    LDA #$0001                      ; $A6A0A1  A9 01 00     Mx
L_A6A0A4:
    STA $0940                       ; $A6A0A4  8D 40 09     Mx
    LDA $093C                       ; $A6A0A7  AD 3C 09     Mx
    AND $09A0                       ; $A6A0AA  2D A0 09     Mx
    BEQ L_A6A0BC                    ; $A6A0AD  F0 0D        Mx
    LDA $0946                       ; $A6A0AF  AD 46 09     Mx
    BEQ L_A6A0B9                    ; $A6A0B2  F0 05        Mx
    LDA #$FFFF                      ; $A6A0B4  A9 FF FF     Mx
    BRA L_A6A0BC                    ; $A6A0B7  80 03        Mx
L_A6A0B9:
    LDA #$0001                      ; $A6A0B9  A9 01 00     Mx
L_A6A0BC:
    STA $0946                       ; $A6A0BC  8D 46 09     Mx
    LDA $0946                       ; $A6A0BF  AD 46 09     Mx
    STA $0944                       ; $A6A0C2  8D 44 09     Mx
    LDA $094A                       ; $A6A0C5  AD 4A 09     Mx
    BEQ L_A6A0CE                    ; $A6A0C8  F0 04        Mx
    DEC                             ; $A6A0CA  3A           Mx
    STA $094A                       ; $A6A0CB  8D 4A 09     Mx
L_A6A0CE:
    LDA $0948                       ; $A6A0CE  AD 48 09     Mx
    BEQ L_A6A0DD                    ; $A6A0D1  F0 0A        Mx
    STZ $0940                       ; $A6A0D3  9C 40 09     Mx
    STZ $0944                       ; $A6A0D6  9C 44 09     Mx
    DEC                             ; $A6A0D9  3A           Mx
    STA $0948                       ; $A6A0DA  8D 48 09     Mx
L_A6A0DD:
    LDA $08C4                       ; $A6A0DD  AD C4 08     Mx
    CMP #$0038                      ; $A6A0E0  C9 38 00     Mx
    BEQ L_A6A151                    ; $A6A0E3  F0 6C        Mx
    LDA $0964                       ; $A6A0E5  AD 64 09     Mx
    BEQ L_A6A151                    ; $A6A0E8  F0 67        Mx
    LDA $08F2                       ; $A6A0EA  AD F2 08     Mx
    BEQ L_A6A151                    ; $A6A0ED  F0 62        Mx
    LDA $09DA                       ; $A6A0EF  AD DA 09     Mx
    BNE L_A6A151                    ; $A6A0F2  D0 5D        Mx
    LDA $0944                       ; $A6A0F4  AD 44 09     Mx
    BEQ L_A6A151                    ; $A6A0F7  F0 58        Mx
    INC                             ; $A6A0F9  1A           Mx
    BEQ L_A6A151                    ; $A6A0FA  F0 55        Mx
    STZ $15EB                       ; $A6A0FC  9C EB 15     Mx
    STZ $15F5                       ; $A6A0FF  9C F5 15     Mx
    LDA $0930                       ; $A6A102  AD 30 09     Mx
    TAX                             ; $A6A105  AA           Mx
    CLC                             ; $A6A106  18           Mx
    ADC #$0040                      ; $A6A107  69 40 00     Mx
    AND #$007F                      ; $A6A10A  29 7F 00     Mx
    TAY                             ; $A6A10D  A8           Mx
    LDA $A7E377,X                   ; $A6A10E  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6A112  29 07 00     Mx
    STA $08D8                       ; $A6A115  8D D8 08     Mx
    LDA #$0038                      ; $A6A118  A9 38 00     Mx
    STA $08C4                       ; $A6A11B  8D C4 08     Mx
    LDA #$FFFF                      ; $A6A11E  A9 FF FF     Mx
    STA $08CA                       ; $A6A121  8D CA 08     Mx
    STZ $08CC                       ; $A6A124  9C CC 08     Mx
    STZ $0912                       ; $A6A127  9C 12 09     Mx
    STZ $08C8                       ; $A6A12A  9C C8 08     Mx
    LDA #$FFF8                      ; $A6A12D  A9 F8 FF     Mx
    STA $08CE                       ; $A6A130  8D CE 08     Mx
    LDA #$0002                      ; $A6A133  A9 02 00     Mx
    STA $08C8                       ; $A6A136  8D C8 08     Mx
    LDA #$0087                      ; $A6A139  A9 87 00     Mx
    STA $0A6A                       ; $A6A13C  8D 6A 0A     Mx
    STZ $0C39                       ; $A6A13F  9C 39 0C     Mx
    LDA $08C0                       ; $A6A142  AD C0 08     Mx
    AND #$00FF                      ; $A6A145  29 FF 00     Mx
    STA $0AA0                       ; $A6A148  8D A0 0A     Mx
    LDA #$00D2                      ; $A6A14B  A9 D2 00     Mx
    STA $0A9E                       ; $A6A14E  8D 9E 0A     Mx
L_A6A151:
    LDA $0982                       ; $A6A151  AD 82 09     Mx
    BEQ L_A6A159                    ; $A6A154  F0 03        Mx
    DEC $0982                       ; $A6A156  CE 82 09     Mx
L_A6A159:
    LDA $0C19                       ; $A6A159  AD 19 0C     Mx
    BNE L_A6A195                    ; $A6A15C  D0 37        Mx
    LDA $1607                       ; $A6A15E  AD 07 16     Mx
    BNE L_A6A195                    ; $A6A161  D0 32        Mx
    LDA $0BC1                       ; $A6A163  AD C1 0B     Mx
    CMP #$0001                      ; $A6A166  C9 01 00     Mx
    BNE L_A6A195                    ; $A6A169  D0 2A        Mx
    LDA $08C4                       ; $A6A16B  AD C4 08     Mx
    LSR                             ; $A6A16E  4A           Mx
    TAX                             ; $A6A16F  AA           Mx
    LDA $82DF6E,X                   ; $A6A170  BF 6E DF 82  Mx
    AND #$00FF                      ; $A6A174  29 FF 00     Mx
    BEQ L_A6A195                    ; $A6A177  F0 1C        Mx
    LDA $0C2B                       ; $A6A179  AD 2B 0C     Mx
    BPL L_A6A195                    ; $A6A17C  10 17        Mx
    LDA $092C                       ; $A6A17E  AD 2C 09     Mx
    CMP #$0050                      ; $A6A181  C9 50 00     Mx
    BCS L_A6A195                    ; $A6A184  B0 0F        Mx
    LDA $0C25                       ; $A6A186  AD 25 0C     Mx
    BNE L_A6A195                    ; $A6A189  D0 0A        Mx
    LDA $0948                       ; $A6A18B  AD 48 09     Mx
    BNE L_A6A195                    ; $A6A18E  D0 05        Mx
    LDA $08D2                       ; $A6A190  AD D2 08     Mx
    BEQ L_A6A198                    ; $A6A193  F0 03        Mx
L_A6A195:
    JMP L_A6A6D3                    ; $A6A195  4C D3 A6     Mx
L_A6A198:
    LDA $0A9C                       ; $A6A198  AD 9C 0A     Mx
    BEQ L_A6A1A0                    ; $A6A19B  F0 03        Mx
L_A6A19D:
    JMP L_A6A6D3                    ; $A6A19D  4C D3 A6     Mx
L_A6A1A0:
    LDA $0A9A                       ; $A6A1A0  AD 9A 0A     Mx
    BNE L_A6A19D                    ; $A6A1A3  D0 F8        Mx
    LDA $0B50                       ; $A6A1A5  AD 50 0B     Mx
    BNE L_A6A19D                    ; $A6A1A8  D0 F3        Mx
    LDA $0BD9                       ; $A6A1AA  AD D9 0B     Mx
    BPL L_A6A1C7                    ; $A6A1AD  10 18        Mx
    LDA $0CCB                       ; $A6A1AF  AD CB 0C     Mx
    CMP #$0002                      ; $A6A1B2  C9 02 00     Mx
    BCC L_A6A19D                    ; $A6A1B5  90 E6        Mx
    LDA $092C                       ; $A6A1B7  AD 2C 09     Mx
    CMP $075C                       ; $A6A1BA  CD 5C 07     Mx
    BCS L_A6A1C7                    ; $A6A1BD  B0 08        Mx
    CMP $0844                       ; $A6A1BF  CD 44 08     Mx
    BCS L_A6A1C7                    ; $A6A1C2  B0 03        Mx
    JMP L_A6A19D                    ; $A6A1C4  4C 9D A1     Mx
L_A6A1C7:
    LDA $08F6                       ; $A6A1C7  AD F6 08     Mx
    SEC                             ; $A6A1CA  38           Mx
    SBC #$0374                      ; $A6A1CB  E9 74 03     Mx
    BPL L_A6A1D7                    ; $A6A1CE  10 07        Mx
    EOR #$FFFF                      ; $A6A1D0  49 FF FF     Mx
    CLC                             ; $A6A1D3  18           Mx
    ADC #$0001                      ; $A6A1D4  69 01 00     Mx
L_A6A1D7:
    STA $00D3                       ; $A6A1D7  8D D3 00     Mx
    CMP #$0020                      ; $A6A1DA  C9 20 00     Mx
    BCS L_A6A203                    ; $A6A1DD  B0 24        Mx
    LDA $08EE                       ; $A6A1DF  AD EE 08     Mx
    BPL L_A6A1EB                    ; $A6A1E2  10 07        Mx
    EOR #$FFFF                      ; $A6A1E4  49 FF FF     Mx
    CLC                             ; $A6A1E7  18           Mx
    ADC #$0001                      ; $A6A1E8  69 01 00     Mx
L_A6A1EB:
    STA $00D0                       ; $A6A1EB  8D D0 00     Mx
    CMP #$010C                      ; $A6A1EE  C9 0C 01     Mx
    BCS L_A6A19D                    ; $A6A1F1  B0 AA        Mx
    LDA $00D3                       ; $A6A1F3  AD D3 00     Mx
    CMP #$000A                      ; $A6A1F6  C9 0A 00     Mx
    BCS L_A6A203                    ; $A6A1F9  B0 08        Mx
    LDA $00D0                       ; $A6A1FB  AD D0 00     Mx
    CMP #$00FC                      ; $A6A1FE  C9 FC 00     Mx
    BCS L_A6A19D                    ; $A6A201  B0 9A        Mx
L_A6A203:
    LDA $0BE8                       ; $A6A203  AD E8 0B     Mx
    STA $00B2                       ; $A6A206  8D B2 00     Mx
    BPL L_A6A215                    ; $A6A209  10 0A        Mx
    EOR #$FFFF                      ; $A6A20B  49 FF FF     Mx
    CLC                             ; $A6A20E  18           Mx
    ADC #$0001                      ; $A6A20F  69 01 00     Mx
    STA $00A6                       ; $A6A212  8D A6 00     Mx
L_A6A215:
    LDX #$19                        ; $A6A215  A2 19        Mx
    STX $4202                       ; $A6A217  8E 02 42     Mx
    LDX $00A6                       ; $A6A21A  AE A6 00     Mx
    STX $4203                       ; $A6A21D  8E 03 42     Mx
    NOP                             ; $A6A220  EA           Mx
    NOP                             ; $A6A221  EA           Mx
    NOP                             ; $A6A222  EA           Mx
    NOP                             ; $A6A223  EA           Mx
    LDA $4216                       ; $A6A224  AD 16 42     Mx
    STA $00A8                       ; $A6A227  8D A8 00     Mx
    LDX #$19                        ; $A6A22A  A2 19        Mx
    STX $4202                       ; $A6A22C  8E 02 42     Mx
    LDX $00A7                       ; $A6A22F  AE A7 00     Mx
    STX $4203                       ; $A6A232  8E 03 42     Mx
    NOP                             ; $A6A235  EA           Mx
    NOP                             ; $A6A236  EA           Mx
    STZ $00F4                       ; $A6A237  9C F4 00     Mx
    STZ $00F2                       ; $A6A23A  9C F2 00     Mx
    LDA $4216                       ; $A6A23D  AD 16 42     Mx
    STA $00F3                       ; $A6A240  8D F3 00     Mx
    LDA $00F2                       ; $A6A243  AD F2 00     Mx
    CLC                             ; $A6A246  18           Mx
    ADC $00A8                       ; $A6A247  6D A8 00     Mx
    STA $00F2                       ; $A6A24A  8D F2 00     Mx
    LDA $00F4                       ; $A6A24D  AD F4 00     Mx
    ADC #$0000                      ; $A6A250  69 00 00     Mx
    STA $00F4                       ; $A6A253  8D F4 00     Mx
    LDA $00B2                       ; $A6A256  AD B2 00     Mx
    BPL L_A6A274                    ; $A6A259  10 19        Mx
    LDA $00F2                       ; $A6A25B  AD F2 00     Mx
    EOR #$FFFF                      ; $A6A25E  49 FF FF     Mx
    CLC                             ; $A6A261  18           Mx
    ADC #$0001                      ; $A6A262  69 01 00     Mx
    STA $00F2                       ; $A6A265  8D F2 00     Mx
    LDA $00F4                       ; $A6A268  AD F4 00     Mx
    EOR #$FFFF                      ; $A6A26B  49 FF FF     Mx
    ADC #$0000                      ; $A6A26E  69 00 00     Mx
    STA $00F4                       ; $A6A271  8D F4 00     Mx
L_A6A274:
    LDX $00F2                       ; $A6A274  AE F2 00     Mx
    LDA $00F3                       ; $A6A277  AD F3 00     Mx
    STZ $00F2                       ; $A6A27A  9C F2 00     Mx
    STX $00F3                       ; $A6A27D  8E F3 00     Mx
    STA $00F4                       ; $A6A280  8D F4 00     Mx
    LDA $0BDB                       ; $A6A283  AD DB 0B     Mx
    SEC                             ; $A6A286  38           Mx
    SBC $00F2                       ; $A6A287  ED F2 00     Mx
    STA $0B8C                       ; $A6A28A  8D 8C 0B     Mx
    LDA $0BDD                       ; $A6A28D  AD DD 0B     Mx
    SBC $00F4                       ; $A6A290  ED F4 00     Mx
    STA $00DC                       ; $A6A293  8D DC 00     Mx
    LDA $0B8C                       ; $A6A296  AD 8C 0B     Mx
    SEC                             ; $A6A299  38           Mx
    SBC #$5C00                      ; $A6A29A  E9 00 5C     Mx
    STA $0B8C                       ; $A6A29D  8D 8C 0B     Mx
    LDA $00DC                       ; $A6A2A0  AD DC 00     Mx
    SBC #$002B                      ; $A6A2A3  E9 2B 00     Mx
    STA $00DC                       ; $A6A2A6  8D DC 00     Mx
    LDA $00DC                       ; $A6A2A9  AD DC 00     Mx
    CMP #$0070                      ; $A6A2AC  C9 70 00     Mx
    BCS L_A6A2DD                    ; $A6A2AF  B0 2C        Mx
    SEC                             ; $A6A2B1  38           Mx
    SBC #$0050                      ; $A6A2B2  E9 50 00     Mx
    BMI L_A6A2DD                    ; $A6A2B5  30 26        Mx
    LDA $08F6                       ; $A6A2B7  AD F6 08     Mx
    SEC                             ; $A6A2BA  38           Mx
    SBC #$0374                      ; $A6A2BB  E9 74 03     Mx
    BPL L_A6A2C7                    ; $A6A2BE  10 07        Mx
    EOR #$FFFF                      ; $A6A2C0  49 FF FF     Mx
    CLC                             ; $A6A2C3  18           Mx
    ADC #$0001                      ; $A6A2C4  69 01 00     Mx
L_A6A2C7:
    CMP #$000A                      ; $A6A2C7  C9 0A 00     Mx
    BPL L_A6A2E0                    ; $A6A2CA  10 14        Mx
    LDA $08EE                       ; $A6A2CC  AD EE 08     Mx
    BPL L_A6A2D8                    ; $A6A2CF  10 07        Mx
    EOR #$FFFF                      ; $A6A2D1  49 FF FF     Mx
    CLC                             ; $A6A2D4  18           Mx
    ADC #$0001                      ; $A6A2D5  69 01 00     Mx
L_A6A2D8:
    CMP #$00FA                      ; $A6A2D8  C9 FA 00     Mx
    BCC L_A6A2E0                    ; $A6A2DB  90 03        Mx
L_A6A2DD:
    JMP L_A6A6D3                    ; $A6A2DD  4C D3 A6     Mx
L_A6A2E0:
    LDA $0BE4                       ; $A6A2E0  AD E4 0B     Mx
    STA $00B2                       ; $A6A2E3  8D B2 00     Mx
    BPL L_A6A2F2                    ; $A6A2E6  10 0A        Mx
    EOR #$FFFF                      ; $A6A2E8  49 FF FF     Mx
    CLC                             ; $A6A2EB  18           Mx
    ADC #$0001                      ; $A6A2EC  69 01 00     Mx
    STA $00A6                       ; $A6A2EF  8D A6 00     Mx
L_A6A2F2:
    LDX #$19                        ; $A6A2F2  A2 19        Mx
    STX $4202                       ; $A6A2F4  8E 02 42     Mx
    LDX $00A6                       ; $A6A2F7  AE A6 00     Mx
    STX $4203                       ; $A6A2FA  8E 03 42     Mx
    NOP                             ; $A6A2FD  EA           Mx
    NOP                             ; $A6A2FE  EA           Mx
    NOP                             ; $A6A2FF  EA           Mx
    NOP                             ; $A6A300  EA           Mx
    LDA $4216                       ; $A6A301  AD 16 42     Mx
    STA $00A8                       ; $A6A304  8D A8 00     Mx
    LDX #$19                        ; $A6A307  A2 19        Mx
    STX $4202                       ; $A6A309  8E 02 42     Mx
    LDX $00A7                       ; $A6A30C  AE A7 00     Mx
    STX $4203                       ; $A6A30F  8E 03 42     Mx
    NOP                             ; $A6A312  EA           Mx
    NOP                             ; $A6A313  EA           Mx
    STZ $00F4                       ; $A6A314  9C F4 00     Mx
    STZ $00F2                       ; $A6A317  9C F2 00     Mx
    LDA $4216                       ; $A6A31A  AD 16 42     Mx
    STA $00F3                       ; $A6A31D  8D F3 00     Mx
    LDA $00F2                       ; $A6A320  AD F2 00     Mx
    CLC                             ; $A6A323  18           Mx
    ADC $00A8                       ; $A6A324  6D A8 00     Mx
    STA $00F2                       ; $A6A327  8D F2 00     Mx
    LDA $00F4                       ; $A6A32A  AD F4 00     Mx
    ADC #$0000                      ; $A6A32D  69 00 00     Mx
    STA $00F4                       ; $A6A330  8D F4 00     Mx
    LDA $00B2                       ; $A6A333  AD B2 00     Mx
    BPL L_A6A351                    ; $A6A336  10 19        Mx
    LDA $00F2                       ; $A6A338  AD F2 00     Mx
    EOR #$FFFF                      ; $A6A33B  49 FF FF     Mx
    CLC                             ; $A6A33E  18           Mx
    ADC #$0001                      ; $A6A33F  69 01 00     Mx
    STA $00F2                       ; $A6A342  8D F2 00     Mx
    LDA $00F4                       ; $A6A345  AD F4 00     Mx
    EOR #$FFFF                      ; $A6A348  49 FF FF     Mx
    ADC #$0000                      ; $A6A34B  69 00 00     Mx
    STA $00F4                       ; $A6A34E  8D F4 00     Mx
L_A6A351:
    LDA $0BD9                       ; $A6A351  AD D9 0B     Mx
    CLC                             ; $A6A354  18           Mx
    ADC $00F3                       ; $A6A355  6D F3 00     Mx
    STA $00E2                       ; $A6A358  8D E2 00     Mx
    LDA $0BEC                       ; $A6A35B  AD EC 0B     Mx
    STA $00B2                       ; $A6A35E  8D B2 00     Mx
    BPL L_A6A36D                    ; $A6A361  10 0A        Mx
    EOR #$FFFF                      ; $A6A363  49 FF FF     Mx
    CLC                             ; $A6A366  18           Mx
    ADC #$0001                      ; $A6A367  69 01 00     Mx
    STA $00A6                       ; $A6A36A  8D A6 00     Mx
L_A6A36D:
    LDX #$19                        ; $A6A36D  A2 19        Mx
    STX $4202                       ; $A6A36F  8E 02 42     Mx
    LDX $00A6                       ; $A6A372  AE A6 00     Mx
    STX $4203                       ; $A6A375  8E 03 42     Mx
    NOP                             ; $A6A378  EA           Mx
    NOP                             ; $A6A379  EA           Mx
    NOP                             ; $A6A37A  EA           Mx
    NOP                             ; $A6A37B  EA           Mx
    LDA $4216                       ; $A6A37C  AD 16 42     Mx
    STA $00A8                       ; $A6A37F  8D A8 00     Mx
    LDX #$19                        ; $A6A382  A2 19        Mx
    STX $4202                       ; $A6A384  8E 02 42     Mx
    LDX $00A7                       ; $A6A387  AE A7 00     Mx
    STX $4203                       ; $A6A38A  8E 03 42     Mx
    NOP                             ; $A6A38D  EA           Mx
    NOP                             ; $A6A38E  EA           Mx
    STZ $00F4                       ; $A6A38F  9C F4 00     Mx
    STZ $00F2                       ; $A6A392  9C F2 00     Mx
    LDA $4216                       ; $A6A395  AD 16 42     Mx
    STA $00F3                       ; $A6A398  8D F3 00     Mx
    LDA $00F2                       ; $A6A39B  AD F2 00     Mx
    CLC                             ; $A6A39E  18           Mx
    ADC $00A8                       ; $A6A39F  6D A8 00     Mx
    STA $00F2                       ; $A6A3A2  8D F2 00     Mx
    LDA $00F4                       ; $A6A3A5  AD F4 00     Mx
    ADC #$0000                      ; $A6A3A8  69 00 00     Mx
    STA $00F4                       ; $A6A3AB  8D F4 00     Mx
    LDA $00B2                       ; $A6A3AE  AD B2 00     Mx
    BPL L_A6A3CC                    ; $A6A3B1  10 19        Mx
    LDA $00F2                       ; $A6A3B3  AD F2 00     Mx
    EOR #$FFFF                      ; $A6A3B6  49 FF FF     Mx
    CLC                             ; $A6A3B9  18           Mx
    ADC #$0001                      ; $A6A3BA  69 01 00     Mx
    STA $00F2                       ; $A6A3BD  8D F2 00     Mx
    LDA $00F4                       ; $A6A3C0  AD F4 00     Mx
    EOR #$FFFF                      ; $A6A3C3  49 FF FF     Mx
    ADC #$0000                      ; $A6A3C6  69 00 00     Mx
    STA $00F4                       ; $A6A3C9  8D F4 00     Mx
L_A6A3CC:
    LDA $0BE1                       ; $A6A3CC  AD E1 0B     Mx
    CLC                             ; $A6A3CF  18           Mx
    ADC $00F3                       ; $A6A3D0  6D F3 00     Mx
    STA $00E5                       ; $A6A3D3  8D E5 00     Mx
    LDA $00E5                       ; $A6A3D6  AD E5 00     Mx
    SEC                             ; $A6A3D9  38           Mx
    SBC #$0374                      ; $A6A3DA  E9 74 03     Mx
    BPL L_A6A3E6                    ; $A6A3DD  10 07        Mx
    EOR #$FFFF                      ; $A6A3DF  49 FF FF     Mx
    CLC                             ; $A6A3E2  18           Mx
    ADC #$0001                      ; $A6A3E3  69 01 00     Mx
L_A6A3E6:
    STA $00D3                       ; $A6A3E6  8D D3 00     Mx
    CMP #$0020                      ; $A6A3E9  C9 20 00     Mx
    BPL L_A6A415                    ; $A6A3EC  10 27        Mx
    LDA $00E2                       ; $A6A3EE  AD E2 00     Mx
    BPL L_A6A3FA                    ; $A6A3F1  10 07        Mx
    EOR #$FFFF                      ; $A6A3F3  49 FF FF     Mx
    CLC                             ; $A6A3F6  18           Mx
    ADC #$0001                      ; $A6A3F7  69 01 00     Mx
L_A6A3FA:
    CMP #$00F8                      ; $A6A3FA  C9 F8 00     Mx
    BCS L_A6A415                    ; $A6A3FD  B0 16        Mx
    STA $00D0                       ; $A6A3FF  8D D0 00     Mx
    LDA $00D3                       ; $A6A402  AD D3 00     Mx
    CMP #$000C                      ; $A6A405  C9 0C 00     Mx
    BCC L_A6A40D                    ; $A6A408  90 03        Mx
L_A6A40A:
    JMP L_A6A6D3                    ; $A6A40A  4C D3 A6     Mx
L_A6A40D:
    LDA $00D0                       ; $A6A40D  AD D0 00     Mx
    CMP #$00FA                      ; $A6A410  C9 FA 00     Mx
    BCS L_A6A40A                    ; $A6A413  B0 F5        Mx
L_A6A415:
    LDA $08EE                       ; $A6A415  AD EE 08     Mx
    STA $00D0                       ; $A6A418  8D D0 00     Mx
    LDA $08F6                       ; $A6A41B  AD F6 08     Mx
    STA $00D3                       ; $A6A41E  8D D3 00     Mx
    JSL $00AEF9                     ; $A6A421  22 F9 AE 00  Mx
    LDA $00D3                       ; $A6A425  AD D3 00     Mx
    CMP #$0030                      ; $A6A428  C9 30 00     Mx
    BCS L_A6A40A                    ; $A6A42B  B0 DD        Mx
    LDX $00D0                       ; $A6A42D  AE D0 00     Mx
    LDA $A7E377,X                   ; $A6A430  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6A434  29 07 00     Mx
    STA $08D8                       ; $A6A437  8D D8 08     Mx
    LDA #$0001                      ; $A6A43A  A9 01 00     Mx
    STA $0940                       ; $A6A43D  8D 40 09     Mx
    LDA $08C0                       ; $A6A440  AD C0 08     Mx
    AND #$00FF                      ; $A6A443  29 FF 00     Mx
    STA $0A9C                       ; $A6A446  8D 9C 0A     Mx
    JMP L_A6A6D3                    ; $A6A449  4C D3 A6     Mx
L_A6A44C:
    LDA $00DC                       ; $A6A44C  AD DC 00     Mx
    STA $00F6                       ; $A6A44F  8D F6 00     Mx
    LDA #$0019                      ; $A6A452  A9 19 00     Mx
    STA $00DC                       ; $A6A455  8D DC 00     Mx
    LDA $08EE                       ; $A6A458  AD EE 08     Mx
    SEC                             ; $A6A45B  38           Mx
    SBC $00E2                       ; $A6A45C  ED E2 00     Mx
    BPL L_A6A468                    ; $A6A45F  10 07        Mx
    EOR #$FFFF                      ; $A6A461  49 FF FF     Mx
    CLC                             ; $A6A464  18           Mx
    ADC #$0001                      ; $A6A465  69 01 00     Mx
L_A6A468:
    STA $00D9                       ; $A6A468  8D D9 00     Mx
    LDA $08F6                       ; $A6A46B  AD F6 08     Mx
    SEC                             ; $A6A46E  38           Mx
    SBC $00E5                       ; $A6A46F  ED E5 00     Mx
    BPL L_A6A47B                    ; $A6A472  10 07        Mx
    EOR #$FFFF                      ; $A6A474  49 FF FF     Mx
    CLC                             ; $A6A477  18           Mx
    ADC #$0001                      ; $A6A478  69 01 00     Mx
L_A6A47B:
    STA $00DF                       ; $A6A47B  8D DF 00     Mx
    LDA $00D9                       ; $A6A47E  AD D9 00     Mx
    STA $00E5                       ; $A6A481  8D E5 00     Mx
    BPL L_A6A490                    ; $A6A484  10 0A        Mx
    EOR #$FFFF                      ; $A6A486  49 FF FF     Mx
    CLC                             ; $A6A489  18           Mx
    ADC #$0001                      ; $A6A48A  69 01 00     Mx
    STA $00D9                       ; $A6A48D  8D D9 00     Mx
L_A6A490:
    LDX $00DC                       ; $A6A490  AE DC 00     Mx
    STX $00EE                       ; $A6A493  8E EE 00     Mx
    LDA #$0000                      ; $A6A496  A9 00 00     Mx
    STA $00EA                       ; $A6A499  8D EA 00     Mx
    LDA $00D9                       ; $A6A49C  AD D9 00     Mx
    STA $4204                       ; $A6A49F  8D 04 42     Mx
    LDX $00EE                       ; $A6A4A2  AE EE 00     Mx
    STX $4206                       ; $A6A4A5  8E 06 42     Mx
    NOP                             ; $A6A4A8  EA           Mx
    NOP                             ; $A6A4A9  EA           Mx
    NOP                             ; $A6A4AA  EA           Mx
    NOP                             ; $A6A4AB  EA           Mx
    NOP                             ; $A6A4AC  EA           Mx
    NOP                             ; $A6A4AD  EA           Mx
    NOP                             ; $A6A4AE  EA           Mx
    STZ $00F0                       ; $A6A4AF  9C F0 00     Mx
    LDA $4214                       ; $A6A4B2  AD 14 42     Mx
    STA $00F2                       ; $A6A4B5  8D F2 00     Mx
    LDX $4216                       ; $A6A4B8  AE 16 42     Mx
    STX $00EC                       ; $A6A4BB  8E EC 00     Mx
    LDA $00EB                       ; $A6A4BE  AD EB 00     Mx
    STA $4204                       ; $A6A4C1  8D 04 42     Mx
    LDX $00EE                       ; $A6A4C4  AE EE 00     Mx
    STX $4206                       ; $A6A4C7  8E 06 42     Mx
    NOP                             ; $A6A4CA  EA           Mx
    NOP                             ; $A6A4CB  EA           Mx
    NOP                             ; $A6A4CC  EA           Mx
    NOP                             ; $A6A4CD  EA           Mx
    NOP                             ; $A6A4CE  EA           Mx
    NOP                             ; $A6A4CF  EA           Mx
    NOP                             ; $A6A4D0  EA           Mx
    STZ $00F0                       ; $A6A4D1  9C F0 00     Mx
    LDA $4214                       ; $A6A4D4  AD 14 42     Mx
    ORA $00F1                       ; $A6A4D7  0D F1 00     Mx
    STA $00F1                       ; $A6A4DA  8D F1 00     Mx
    LDX $4216                       ; $A6A4DD  AE 16 42     Mx
    STX $00EB                       ; $A6A4E0  8E EB 00     Mx
    LDA $00EA                       ; $A6A4E3  AD EA 00     Mx
    STA $4204                       ; $A6A4E6  8D 04 42     Mx
    LDX $00EE                       ; $A6A4E9  AE EE 00     Mx
    STX $4206                       ; $A6A4EC  8E 06 42     Mx
    NOP                             ; $A6A4EF  EA           Mx
    NOP                             ; $A6A4F0  EA           Mx
    NOP                             ; $A6A4F1  EA           Mx
    NOP                             ; $A6A4F2  EA           Mx
    NOP                             ; $A6A4F3  EA           Mx
    NOP                             ; $A6A4F4  EA           Mx
    NOP                             ; $A6A4F5  EA           Mx
    NOP                             ; $A6A4F6  EA           Mx
    LDA $4214                       ; $A6A4F7  AD 14 42     Mx
    ORA $00F0                       ; $A6A4FA  0D F0 00     Mx
    STA $00F0                       ; $A6A4FD  8D F0 00     Mx
    LDA $00F0                       ; $A6A500  AD F0 00     Mx
    STA $00C2                       ; $A6A503  8D C2 00     Mx
    LDA $00F2                       ; $A6A506  AD F2 00     Mx
    STA $00C4                       ; $A6A509  8D C4 00     Mx
    LDA $00E5                       ; $A6A50C  AD E5 00     Mx
    BPL L_A6A52A                    ; $A6A50F  10 19        Mx
    LDA $00C2                       ; $A6A511  AD C2 00     Mx
    EOR #$FFFF                      ; $A6A514  49 FF FF     Mx
    CLC                             ; $A6A517  18           Mx
    ADC #$0001                      ; $A6A518  69 01 00     Mx
    STA $00C2                       ; $A6A51B  8D C2 00     Mx
    LDA $00C4                       ; $A6A51E  AD C4 00     Mx
    EOR #$FFFF                      ; $A6A521  49 FF FF     Mx
    ADC #$0000                      ; $A6A524  69 00 00     Mx
    STA $00C4                       ; $A6A527  8D C4 00     Mx
L_A6A52A:
    LDA $00DF                       ; $A6A52A  AD DF 00     Mx
    STA $00E5                       ; $A6A52D  8D E5 00     Mx
    BPL L_A6A53C                    ; $A6A530  10 0A        Mx
    EOR #$FFFF                      ; $A6A532  49 FF FF     Mx
    CLC                             ; $A6A535  18           Mx
    ADC #$0001                      ; $A6A536  69 01 00     Mx
    STA $00DF                       ; $A6A539  8D DF 00     Mx
L_A6A53C:
    LDX $00DC                       ; $A6A53C  AE DC 00     Mx
    STX $00EE                       ; $A6A53F  8E EE 00     Mx
    LDA #$0000                      ; $A6A542  A9 00 00     Mx
    STA $00EA                       ; $A6A545  8D EA 00     Mx
    LDA $00DF                       ; $A6A548  AD DF 00     Mx
    STA $4204                       ; $A6A54B  8D 04 42     Mx
    LDX $00EE                       ; $A6A54E  AE EE 00     Mx
    STX $4206                       ; $A6A551  8E 06 42     Mx
    NOP                             ; $A6A554  EA           Mx
    NOP                             ; $A6A555  EA           Mx
    NOP                             ; $A6A556  EA           Mx
    NOP                             ; $A6A557  EA           Mx
    NOP                             ; $A6A558  EA           Mx
    NOP                             ; $A6A559  EA           Mx
    NOP                             ; $A6A55A  EA           Mx
    STZ $00F0                       ; $A6A55B  9C F0 00     Mx
    LDA $4214                       ; $A6A55E  AD 14 42     Mx
    STA $00F2                       ; $A6A561  8D F2 00     Mx
    LDX $4216                       ; $A6A564  AE 16 42     Mx
    STX $00EC                       ; $A6A567  8E EC 00     Mx
    LDA $00EB                       ; $A6A56A  AD EB 00     Mx
    STA $4204                       ; $A6A56D  8D 04 42     Mx
    LDX $00EE                       ; $A6A570  AE EE 00     Mx
    STX $4206                       ; $A6A573  8E 06 42     Mx
    NOP                             ; $A6A576  EA           Mx
    NOP                             ; $A6A577  EA           Mx
    NOP                             ; $A6A578  EA           Mx
    NOP                             ; $A6A579  EA           Mx
    NOP                             ; $A6A57A  EA           Mx
    NOP                             ; $A6A57B  EA           Mx
    NOP                             ; $A6A57C  EA           Mx
    STZ $00F0                       ; $A6A57D  9C F0 00     Mx
    LDA $4214                       ; $A6A580  AD 14 42     Mx
    ORA $00F1                       ; $A6A583  0D F1 00     Mx
    STA $00F1                       ; $A6A586  8D F1 00     Mx
    LDX $4216                       ; $A6A589  AE 16 42     Mx
    STX $00EB                       ; $A6A58C  8E EB 00     Mx
    LDA $00EA                       ; $A6A58F  AD EA 00     Mx
    STA $4204                       ; $A6A592  8D 04 42     Mx
    LDX $00EE                       ; $A6A595  AE EE 00     Mx
    STX $4206                       ; $A6A598  8E 06 42     Mx
    NOP                             ; $A6A59B  EA           Mx
    NOP                             ; $A6A59C  EA           Mx
    NOP                             ; $A6A59D  EA           Mx
    NOP                             ; $A6A59E  EA           Mx
    NOP                             ; $A6A59F  EA           Mx
    NOP                             ; $A6A5A0  EA           Mx
    NOP                             ; $A6A5A1  EA           Mx
    NOP                             ; $A6A5A2  EA           Mx
    LDA $4214                       ; $A6A5A3  AD 14 42     Mx
    ORA $00F0                       ; $A6A5A6  0D F0 00     Mx
    STA $00F0                       ; $A6A5A9  8D F0 00     Mx
    LDA $00F0                       ; $A6A5AC  AD F0 00     Mx
    STA $00C6                       ; $A6A5AF  8D C6 00     Mx
    LDA $00F2                       ; $A6A5B2  AD F2 00     Mx
    STA $00C8                       ; $A6A5B5  8D C8 00     Mx
    LDA $00E5                       ; $A6A5B8  AD E5 00     Mx
    BPL L_A6A5D6                    ; $A6A5BB  10 19        Mx
    LDA $00C6                       ; $A6A5BD  AD C6 00     Mx
    EOR #$FFFF                      ; $A6A5C0  49 FF FF     Mx
    CLC                             ; $A6A5C3  18           Mx
    ADC #$0001                      ; $A6A5C4  69 01 00     Mx
    STA $00C6                       ; $A6A5C7  8D C6 00     Mx
    LDA $00C8                       ; $A6A5CA  AD C8 00     Mx
    EOR #$FFFF                      ; $A6A5CD  49 FF FF     Mx
    ADC #$0000                      ; $A6A5D0  69 00 00     Mx
    STA $00C8                       ; $A6A5D3  8D C8 00     Mx
L_A6A5D6:
    LDA $00C2                       ; $A6A5D6  AD C2 00     Mx
    STA $08F8                       ; $A6A5D9  8D F8 08     Mx
    LDA $00C4                       ; $A6A5DC  AD C4 00     Mx
    STA $08FA                       ; $A6A5DF  8D FA 08     Mx
    LDA $00C6                       ; $A6A5E2  AD C6 00     Mx
    STA $0900                       ; $A6A5E5  8D 00 09     Mx
    LDA $00C8                       ; $A6A5E8  AD C8 00     Mx
    STA $0902                       ; $A6A5EB  8D 02 09     Mx
    LDA #$0080                      ; $A6A5EE  A9 80 00     Mx
    STA $00D3                       ; $A6A5F1  8D D3 00     Mx
    SEP #$20                        ; $A6A5F4  E2 20        Mx
    LDA $00DC                       ; $A6A5F6  AD DC 00     mx
    STA $4202                       ; $A6A5F9  8D 02 42     mx
    LDA $00D3                       ; $A6A5FC  AD D3 00     mx
    STA $4203                       ; $A6A5FF  8D 03 42     mx
    NOP                             ; $A6A602  EA           mx
    NOP                             ; $A6A603  EA           mx
    NOP                             ; $A6A604  EA           mx
    REP #$20                        ; $A6A605  C2 20        mx
    LDA $4216                       ; $A6A607  AD 16 42     Mx
    STA $00D3                       ; $A6A60A  8D D3 00     Mx
    STA $00A8                       ; $A6A60D  8D A8 00     Mx
    LDA #$0012                      ; $A6A610  A9 12 00     Mx
    STA $00D3                       ; $A6A613  8D D3 00     Mx
    SEP #$20                        ; $A6A616  E2 20        Mx
    LDA $00DC                       ; $A6A618  AD DC 00     mx
    STA $4202                       ; $A6A61B  8D 02 42     mx
    LDA $00D3                       ; $A6A61E  AD D3 00     mx
    STA $4203                       ; $A6A621  8D 03 42     mx
    NOP                             ; $A6A624  EA           mx
    NOP                             ; $A6A625  EA           mx
    NOP                             ; $A6A626  EA           mx
    REP #$20                        ; $A6A627  C2 20        mx
    LDA $4216                       ; $A6A629  AD 16 42     Mx
    STA $00D3                       ; $A6A62C  8D D3 00     Mx
    STZ $0B82                       ; $A6A62F  9C 82 0B     Mx
    STZ $0B80                       ; $A6A632  9C 80 0B     Mx
    STA $0B81                       ; $A6A635  8D 81 0B     Mx
    LDA $0B80                       ; $A6A638  AD 80 0B     Mx
    CLC                             ; $A6A63B  18           Mx
    ADC $00A8                       ; $A6A63C  6D A8 00     Mx
    STA $0B80                       ; $A6A63F  8D 80 0B     Mx
    LDA $0B82                       ; $A6A642  AD 82 0B     Mx
    ADC #$0000                      ; $A6A645  69 00 00     Mx
    STA $0B82                       ; $A6A648  8D 82 0B     Mx
    LDA $00F6                       ; $A6A64B  AD F6 00     Mx
    SEC                             ; $A6A64E  38           Mx
    SBC #$0038                      ; $A6A64F  E9 38 00     Mx
    STA $00F6                       ; $A6A652  8D F6 00     Mx
    LDA $08F0                       ; $A6A655  AD F0 08     Mx
    SEC                             ; $A6A658  38           Mx
    SBC #$0000                      ; $A6A659  E9 00 00     Mx
    STA $00C2                       ; $A6A65C  8D C2 00     Mx
    LDA $08F2                       ; $A6A65F  AD F2 08     Mx
    SBC $00F6                       ; $A6A662  ED F6 00     Mx
    STA $00C4                       ; $A6A665  8D C4 00     Mx
    STA $00E5                       ; $A6A668  8D E5 00     Mx
    BPL L_A6A686                    ; $A6A66B  10 19        Mx
    LDA $00C2                       ; $A6A66D  AD C2 00     Mx
    EOR #$FFFF                      ; $A6A670  49 FF FF     Mx
    CLC                             ; $A6A673  18           Mx
    ADC #$0001                      ; $A6A674  69 01 00     Mx
    STA $00C2                       ; $A6A677  8D C2 00     Mx
    LDA $00C4                       ; $A6A67A  AD C4 00     Mx
    EOR #$FFFF                      ; $A6A67D  49 FF FF     Mx
    ADC #$0000                      ; $A6A680  69 00 00     Mx
    STA $00C4                       ; $A6A683  8D C4 00     Mx
L_A6A686:
    LDA $00C3                       ; $A6A686  AD C3 00     Mx
    STA $4204                       ; $A6A689  8D 04 42     Mx
    LDX $00DC                       ; $A6A68C  AE DC 00     Mx
    STX $4206                       ; $A6A68F  8E 06 42     Mx
    NOP                             ; $A6A692  EA           Mx
    NOP                             ; $A6A693  EA           Mx
    NOP                             ; $A6A694  EA           Mx
    NOP                             ; $A6A695  EA           Mx
    STZ $00EA                       ; $A6A696  9C EA 00     Mx
    STZ $00EC                       ; $A6A699  9C EC 00     Mx
    LDA $00E5                       ; $A6A69C  AD E5 00     Mx
    BPL L_A6A6AE                    ; $A6A69F  10 0D        Mx
    LDA $4214                       ; $A6A6A1  AD 14 42     Mx
    EOR #$FFFF                      ; $A6A6A4  49 FF FF     Mx
    CLC                             ; $A6A6A7  18           Mx
    ADC #$0001                      ; $A6A6A8  69 01 00     Mx
    JMP L_A6A6B1                    ; $A6A6AB  4C B1 A6     Mx
L_A6A6AE:
    LDA $4214                       ; $A6A6AE  AD 14 42     Mx
L_A6A6B1:
    STA $00EB                       ; $A6A6B1  8D EB 00     Mx
    LDA $0B80                       ; $A6A6B4  AD 80 0B     Mx
    CLC                             ; $A6A6B7  18           Mx
    ADC $00EA                       ; $A6A6B8  6D EA 00     Mx
    STA $0B80                       ; $A6A6BB  8D 80 0B     Mx
    LDA $0B82                       ; $A6A6BE  AD 82 0B     Mx
    ADC $00EC                       ; $A6A6C1  6D EC 00     Mx
    STA $0B82                       ; $A6A6C4  8D 82 0B     Mx
    LDA $0B80                       ; $A6A6C7  AD 80 0B     Mx
    STA $08FC                       ; $A6A6CA  8D FC 08     Mx
    LDA $0B82                       ; $A6A6CD  AD 82 0B     Mx
    STA $08FE                       ; $A6A6D0  8D FE 08     Mx
L_A6A6D3:
    LDX $08C4                       ; $A6A6D3  AE C4 08     Mx
    JSR ($A6DA,X)                   ; $A6A6D6  FC DA A6     Mx
    RTS                             ; $A6A6D9  60           Mx
    db $1C,$A7,$CF,$A7,$CF,$A7,$52,$AB,$6C,$AC,$8C,$B1,$6F,$B2,$97,$AF ; $A6A6DA
    db $5D,$AE,$8C,$B1,$1C,$A7,$8C,$B1,$52,$AB,$8C,$B1,$97,$AF,$30,$B1 ; $A6A6EA
    db $29,$B4,$29,$B4,$2F,$B3,$CF,$A7,$CF,$A7,$1C,$A7,$9E,$B5,$12,$B6 ; $A6A6FA
    db $2F,$B8,$4A,$B9,$5D,$AE,$A7,$B9,$F3,$C7,$FA,$BF,$EA,$C8,$8C,$B1 ; $A6A70A
    db $8C,$B1                                                         ; $A6A71A
L_A6A71C:
    LDA $0964                       ; $A6A71C  AD 64 09     Mx
    BEQ L_A6A727                    ; $A6A71F  F0 06        Mx
    LDA #$000C                      ; $A6A721  A9 0C 00     Mx
    JMP L_A6A782                    ; $A6A724  4C 82 A7     Mx
L_A6A727:
    LDA $093C                       ; $A6A727  AD 3C 09     Mx
    AND #$0F00                      ; $A6A72A  29 00 0F     Mx
    BEQ L_A6A735                    ; $A6A72D  F0 06        Mx
L_A6A72F:
    LDA #$0002                      ; $A6A72F  A9 02 00     Mx
    JMP L_A6A782                    ; $A6A732  4C 82 A7     Mx
L_A6A735:
    LDA $08FA                       ; $A6A735  AD FA 08     Mx
    ORA $08F8                       ; $A6A738  0D F8 08     Mx
    ORA $0902                       ; $A6A73B  0D 02 09     Mx
    ORA $0900                       ; $A6A73E  0D 00 09     Mx
    ORA $08FE                       ; $A6A741  0D FE 08     Mx
    ORA $08FC                       ; $A6A744  0D FC 08     Mx
    BNE L_A6A72F                    ; $A6A747  D0 E6        Mx
    LDA $08C6                       ; $A6A749  AD C6 08     Mx
    BEQ L_A6A753                    ; $A6A74C  F0 05        Mx
    DEC $08C6                       ; $A6A74E  CE C6 08     Mx
    BNE L_A6A761                    ; $A6A751  D0 0E        Mx
L_A6A753:
    LDA $092E                       ; $A6A753  AD 2E 09     Mx
    TAX                             ; $A6A756  AA           Mx
    LDA $A7E377,X                   ; $A6A757  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6A75B  29 07 00     Mx
    STA $08D8                       ; $A6A75E  8D D8 08     Mx
L_A6A761:
    LDA $0940                       ; $A6A761  AD 40 09     Mx
    BEQ L_A6A76C                    ; $A6A764  F0 06        Mx
    JSR L_A6CA1C                    ; $A6A766  20 1C CA     Mx
    JMP L_A6A7CE                    ; $A6A769  4C CE A7     Mx
L_A6A76C:
    LDA $0944                       ; $A6A76C  AD 44 09     Mx
    BEQ L_A6A777                    ; $A6A76F  F0 06        Mx
    JSR L_A6D247                    ; $A6A771  20 47 D2     Mx
    JMP L_A6A7CE                    ; $A6A774  4C CE A7     Mx
L_A6A777:
    LDA $092C                       ; $A6A777  AD 2C 09     Mx
    CMP #$0046                      ; $A6A77A  C9 46 00     Mx
    BCC L_A6A79D                    ; $A6A77D  90 1E        Mx
    LDA #$0000                      ; $A6A77F  A9 00 00     Mx
L_A6A782:
    STA $08C4                       ; $A6A782  8D C4 08     Mx
    LDA #$FFFF                      ; $A6A785  A9 FF FF     Mx
    STA $08CA                       ; $A6A788  8D CA 08     Mx
    STZ $08CC                       ; $A6A78B  9C CC 08     Mx
    STZ $0912                       ; $A6A78E  9C 12 09     Mx
    STZ $08C8                       ; $A6A791  9C C8 08     Mx
    LDA #$FFF8                      ; $A6A794  A9 F8 FF     Mx
    STA $08CE                       ; $A6A797  8D CE 08     Mx
    JMP L_A6A7CE                    ; $A6A79A  4C CE A7     Mx
L_A6A79D:
    LDA $094E                       ; $A6A79D  AD 4E 09     Mx
    BNE L_A6A7BF                    ; $A6A7A0  D0 1D        Mx
    LDA $0C19                       ; $A6A7A2  AD 19 0C     Mx
    BEQ L_A6A7BF                    ; $A6A7A5  F0 18        Mx
    LDA $08EE                       ; $A6A7A7  AD EE 08     Mx
    SEC                             ; $A6A7AA  38           Mx
    SBC $0BD9                       ; $A6A7AB  ED D9 0B     Mx
    BCC L_A6A7BF                    ; $A6A7AE  90 0F        Mx
    LDA $08EE                       ; $A6A7B0  AD EE 08     Mx
    BMI L_A6A7BF                    ; $A6A7B3  30 0A        Mx
    SEC                             ; $A6A7B5  38           Mx
    SBC $A7E69E                     ; $A6A7B6  EF 9E E6 A7  Mx
    BCC L_A6A7BF                    ; $A6A7BA  90 03        Mx
    JMP L_A6A7C8                    ; $A6A7BC  4C C8 A7     Mx
L_A6A7BF:
    LDA #$0014                      ; $A6A7BF  A9 14 00     Mx
    STA $08C4                       ; $A6A7C2  8D C4 08     Mx
    JMP L_A6A7CE                    ; $A6A7C5  4C CE A7     Mx
L_A6A7C8:
    LDA #$002A                      ; $A6A7C8  A9 2A 00     Mx
    STA $08C4                       ; $A6A7CB  8D C4 08     Mx
L_A6A7CE:
    RTS                             ; $A6A7CE  60           Mx
L_A6A7CF:
    STZ $08FC                       ; $A6A7CF  9C FC 08     Mx
    STZ $08FE                       ; $A6A7D2  9C FE 08     Mx
    LDX $08D8                       ; $A6A7D5  AE D8 08     Mx
    LDA $A7E35F,X                   ; $A6A7D8  BF 5F E3 A7  Mx
    STA $00EA                       ; $A6A7DC  8D EA 00     Mx
    SEP #$20                        ; $A6A7DF  E2 20        Mx
    LDA $093D                       ; $A6A7E1  AD 3D 09     mx
    AND #$0F                        ; $A6A7E4  29 0F        mx
    BNE L_A6A7EB                    ; $A6A7E6  D0 03        mx
    LDA $00EA                       ; $A6A7E8  AD EA 00     mx
L_A6A7EB:
    TAX                             ; $A6A7EB  AA           mx
    LDA $A7E367,X                   ; $A6A7EC  BF 67 E3 A7  mx
    AND #$07                        ; $A6A7F0  29 07        mx
    STA $08D8                       ; $A6A7F2  8D D8 08     mx
    REP #$20                        ; $A6A7F5  C2 20        mx
    LDA $094E                       ; $A6A7F7  AD 4E 09     Mx
    BNE L_A6A81E                    ; $A6A7FA  D0 22        Mx
    LDA $0C19                       ; $A6A7FC  AD 19 0C     Mx
    BEQ L_A6A81E                    ; $A6A7FF  F0 1D        Mx
    LDA $08EE                       ; $A6A801  AD EE 08     Mx
    SEC                             ; $A6A804  38           Mx
    SBC $0BD9                       ; $A6A805  ED D9 0B     Mx
    BCC L_A6A81E                    ; $A6A808  90 14        Mx
    LDA $08EE                       ; $A6A80A  AD EE 08     Mx
    BMI L_A6A81E                    ; $A6A80D  30 0F        Mx
    SEC                             ; $A6A80F  38           Mx
    SBC $A7E69E                     ; $A6A810  EF 9E E6 A7  Mx
    BCC L_A6A81E                    ; $A6A814  90 08        Mx
    LDA $092C                       ; $A6A816  AD 2C 09     Mx
    CMP #$0046                      ; $A6A819  C9 46 00     Mx
    BCC L_A6A83B                    ; $A6A81C  90 1D        Mx
L_A6A81E:
    LDA $0964                       ; $A6A81E  AD 64 09     Mx
    BNE L_A6A82C                    ; $A6A821  D0 09        Mx
    LDA #$0002                      ; $A6A823  A9 02 00     Mx
    STA $08C4                       ; $A6A826  8D C4 08     Mx
    JMP L_A6A8AC                    ; $A6A829  4C AC A8     Mx
L_A6A82C:
    LDA #$0004                      ; $A6A82C  A9 04 00     Mx
    STA $08C4                       ; $A6A82F  8D C4 08     Mx
    LDA #$0001                      ; $A6A832  A9 01 00     Mx
    STA $0952                       ; $A6A835  8D 52 09     Mx
    JMP L_A6A8AC                    ; $A6A838  4C AC A8     Mx
L_A6A83B:
    LDX $092E                       ; $A6A83B  AE 2E 09     Mx
    LDA $A7E377,X                   ; $A6A83E  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6A842  29 07 00     Mx
    STA $00A6                       ; $A6A845  8D A6 00     Mx
    CMP $08D8                       ; $A6A848  CD D8 08     Mx
    BEQ L_A6A893                    ; $A6A84B  F0 46        Mx
    CLC                             ; $A6A84D  18           Mx
    ADC #$0004                      ; $A6A84E  69 04 00     Mx
    AND #$0007                      ; $A6A851  29 07 00     Mx
    CMP $08D8                       ; $A6A854  CD D8 08     Mx
    BEQ L_A6A893                    ; $A6A857  F0 3A        Mx
    LDA $08C4                       ; $A6A859  AD C4 08     Mx
    CMP #$0026                      ; $A6A85C  C9 26 00     Mx
    BEQ L_A6A8A6                    ; $A6A85F  F0 45        Mx
    CMP #$0002                      ; $A6A861  C9 02 00     Mx
    BEQ L_A6A875                    ; $A6A864  F0 0F        Mx
    LDA #$0026                      ; $A6A866  A9 26 00     Mx
    STA $08C4                       ; $A6A869  8D C4 08     Mx
    JMP L_A6A8A6                    ; $A6A86C  4C A6 A8     Mx
L_A6A86F:
    LDA #$0028                      ; $A6A86F  A9 28 00     Mx
    JMP L_A6A878                    ; $A6A872  4C 78 A8     Mx
L_A6A875:
    LDA #$0026                      ; $A6A875  A9 26 00     Mx
L_A6A878:
    STA $08C4                       ; $A6A878  8D C4 08     Mx
    LDA #$FFFF                      ; $A6A87B  A9 FF FF     Mx
    STA $08CA                       ; $A6A87E  8D CA 08     Mx
    STZ $08CC                       ; $A6A881  9C CC 08     Mx
    STZ $0912                       ; $A6A884  9C 12 09     Mx
    STZ $08C8                       ; $A6A887  9C C8 08     Mx
    LDA #$FFF8                      ; $A6A88A  A9 F8 FF     Mx
    STA $08CE                       ; $A6A88D  8D CE 08     Mx
    JMP L_A6A8A6                    ; $A6A890  4C A6 A8     Mx
L_A6A893:
    LDA $08C4                       ; $A6A893  AD C4 08     Mx
    CMP #$0028                      ; $A6A896  C9 28 00     Mx
    BEQ L_A6A8A6                    ; $A6A899  F0 0B        Mx
    CMP #$0002                      ; $A6A89B  C9 02 00     Mx
    BEQ L_A6A86F                    ; $A6A89E  F0 CF        Mx
    LDA #$0028                      ; $A6A8A0  A9 28 00     Mx
    STA $08C4                       ; $A6A8A3  8D C4 08     Mx
L_A6A8A6:
    LDA $00A6                       ; $A6A8A6  AD A6 00     Mx
    STA $08D8                       ; $A6A8A9  8D D8 08     Mx
L_A6A8AC:
    LDX #$00                        ; $A6A8AC  A2 00        Mx
    LDA $093C                       ; $A6A8AE  AD 3C 09     Mx
    STA $00E8                       ; $A6A8B1  8D E8 00     Mx
    AND #$0F00                      ; $A6A8B4  29 00 0F     Mx
    BNE L_A6A8F6                    ; $A6A8B7  D0 3D        Mx
    LDA $08FA                       ; $A6A8B9  AD FA 08     Mx
    ORA $08F8                       ; $A6A8BC  0D F8 08     Mx
    ORA $0902                       ; $A6A8BF  0D 02 09     Mx
    ORA $0900                       ; $A6A8C2  0D 00 09     Mx
    BNE L_A6A8F6                    ; $A6A8C5  D0 2F        Mx
    LDA #$003C                      ; $A6A8C7  A9 3C 00     Mx
    STA $08C6                       ; $A6A8CA  8D C6 08     Mx
    LDA $0964                       ; $A6A8CD  AD 64 09     Mx
    BNE L_A6A8D8                    ; $A6A8D0  D0 06        Mx
    LDA #$0000                      ; $A6A8D2  A9 00 00     Mx
    JMP L_A6A8DB                    ; $A6A8D5  4C DB A8     Mx
L_A6A8D8:
    LDA #$0006                      ; $A6A8D8  A9 06 00     Mx
L_A6A8DB:
    STA $08C4                       ; $A6A8DB  8D C4 08     Mx
    LDA #$FFFF                      ; $A6A8DE  A9 FF FF     Mx
    STA $08CA                       ; $A6A8E1  8D CA 08     Mx
    STZ $08CC                       ; $A6A8E4  9C CC 08     Mx
    STZ $0912                       ; $A6A8E7  9C 12 09     Mx
    STZ $08C8                       ; $A6A8EA  9C C8 08     Mx
    LDA #$FFF8                      ; $A6A8ED  A9 F8 FF     Mx
    STA $08CE                       ; $A6A8F0  8D CE 08     Mx
    JMP L_A6AB50                    ; $A6A8F3  4C 50 AB     Mx
L_A6A8F6:
    LDA $08D2                       ; $A6A8F6  AD D2 08     Mx
    BEQ L_A6A904                    ; $A6A8F9  F0 09        Mx
    LDA #$0400                      ; $A6A8FB  A9 00 04     Mx
    STA $00E5                       ; $A6A8FE  8D E5 00     Mx
    JMP L_A6A961                    ; $A6A901  4C 61 A9     Mx
L_A6A904:
    LDA $0992                       ; $A6A904  AD 92 09     Mx
    STA $00E5                       ; $A6A907  8D E5 00     Mx
    LDA $0CCB                       ; $A6A90A  AD CB 0C     Mx
    CMP #$0032                      ; $A6A90D  C9 32 00     Mx
    BCS L_A6A921                    ; $A6A910  B0 0F        Mx
    LDA $099A                       ; $A6A912  AD 9A 09     Mx
    BMI L_A6A921                    ; $A6A915  30 0A        Mx
    LDA $00E5                       ; $A6A917  AD E5 00     Mx
    CLC                             ; $A6A91A  18           Mx
    ADC #$0038                      ; $A6A91B  69 38 00     Mx
    STA $00E5                       ; $A6A91E  8D E5 00     Mx
L_A6A921:
    LDA $0984                       ; $A6A921  AD 84 09     Mx
    BEQ L_A6A935                    ; $A6A924  F0 0F        Mx
    LDA $094E                       ; $A6A926  AD 4E 09     Mx
    BNE L_A6A935                    ; $A6A929  D0 0A        Mx
    LDA $00E5                       ; $A6A92B  AD E5 00     Mx
    CLC                             ; $A6A92E  18           Mx
    ADC #$0200                      ; $A6A92F  69 00 02     Mx
    STA $00E5                       ; $A6A932  8D E5 00     Mx
L_A6A935:
    LDA $094E                       ; $A6A935  AD 4E 09     Mx
    BMI L_A6A952                    ; $A6A938  30 18        Mx
    BEQ L_A6A952                    ; $A6A93A  F0 16        Mx
    LDA $00E5                       ; $A6A93C  AD E5 00     Mx
    SEC                             ; $A6A93F  38           Mx
    SBC #$0028                      ; $A6A940  E9 28 00     Mx
    STA $00E5                       ; $A6A943  8D E5 00     Mx
    LDY $0964                       ; $A6A946  AC 64 09     Mx
    BEQ L_A6A952                    ; $A6A949  F0 07        Mx
    SEC                             ; $A6A94B  38           Mx
    SBC #$0040                      ; $A6A94C  E9 40 00     Mx
    STA $00E5                       ; $A6A94F  8D E5 00     Mx
L_A6A952:
    LDA $0956                       ; $A6A952  AD 56 09     Mx
    BEQ L_A6A961                    ; $A6A955  F0 0A        Mx
    LDA $00E5                       ; $A6A957  AD E5 00     Mx
    CLC                             ; $A6A95A  18           Mx
    ADC #$00FC                      ; $A6A95B  69 FC 00     Mx
    STA $00E5                       ; $A6A95E  8D E5 00     Mx
L_A6A961:
    LDA $00E5                       ; $A6A961  AD E5 00     Mx
    LSR                             ; $A6A964  4A           Mx
    LSR                             ; $A6A965  4A           Mx
    STA $00A4                       ; $A6A966  8D A4 00     Mx
    LDA $00E5                       ; $A6A969  AD E5 00     Mx
    SEC                             ; $A6A96C  38           Mx
    SBC $00A4                       ; $A6A96D  ED A4 00     Mx
    STA $00E2                       ; $A6A970  8D E2 00     Mx
    LDA $093C                       ; $A6A973  AD 3C 09     Mx
    AND #$0100                      ; $A6A976  29 00 01     Mx
    BNE L_A6A97E                    ; $A6A979  D0 03        Mx
    JMP L_A6A9C2                    ; $A6A97B  4C C2 A9     Mx
L_A6A97E:
    LDX #$01                        ; $A6A97E  A2 01        Mx
    LDA $08F8                       ; $A6A980  AD F8 08     Mx
    CLC                             ; $A6A983  18           Mx
    ADC #$8000                      ; $A6A984  69 00 80     Mx
    STA $08F8                       ; $A6A987  8D F8 08     Mx
    LDA $08FA                       ; $A6A98A  AD FA 08     Mx
    ADC #$0000                      ; $A6A98D  69 00 00     Mx
    STA $08FA                       ; $A6A990  8D FA 08     Mx
    BPL L_A6A998                    ; $A6A993  10 03        Mx
    JMP L_A6A9BF                    ; $A6A995  4C BF A9     Mx
L_A6A998:
    LDY $0900                       ; $A6A998  AC 00 09     Mx
    BEQ L_A6A9AE                    ; $A6A99B  F0 11        Mx
    LDA $00E5                       ; $A6A99D  AD E5 00     Mx
    LSR                             ; $A6A9A0  4A           Mx
    STA $00B2                       ; $A6A9A1  8D B2 00     Mx
    LDA $00E5                       ; $A6A9A4  AD E5 00     Mx
    SEC                             ; $A6A9A7  38           Mx
    SBC $00B2                       ; $A6A9A8  ED B2 00     Mx
    STA $00E5                       ; $A6A9AB  8D E5 00     Mx
L_A6A9AE:
    LDA $08F9                       ; $A6A9AE  AD F9 08     Mx
    CMP $00E5                       ; $A6A9B1  CD E5 00     Mx
    BCC L_A6AA19                    ; $A6A9B4  90 63        Mx
    LDA $00E5                       ; $A6A9B6  AD E5 00     Mx
    STZ $08F8                       ; $A6A9B9  9C F8 08     Mx
    STA $08F9                       ; $A6A9BC  8D F9 08     Mx
L_A6A9BF:
    JMP L_A6AA19                    ; $A6A9BF  4C 19 AA     Mx
L_A6A9C2:
    LDA $093C                       ; $A6A9C2  AD 3C 09     Mx
    AND #$0200                      ; $A6A9C5  29 00 02     Mx
    BEQ L_A6A9BF                    ; $A6A9C8  F0 F5        Mx
    LDX #$01                        ; $A6A9CA  A2 01        Mx
    LDA $08F8                       ; $A6A9CC  AD F8 08     Mx
    SEC                             ; $A6A9CF  38           Mx
    SBC #$8000                      ; $A6A9D0  E9 00 80     Mx
    STA $08F8                       ; $A6A9D3  8D F8 08     Mx
    LDA $08FA                       ; $A6A9D6  AD FA 08     Mx
    SBC #$0000                      ; $A6A9D9  E9 00 00     Mx
    STA $08FA                       ; $A6A9DC  8D FA 08     Mx
    BMI L_A6A9E4                    ; $A6A9DF  30 03        Mx
    JMP L_A6AA19                    ; $A6A9E1  4C 19 AA     Mx
L_A6A9E4:
    LDY $0900                       ; $A6A9E4  AC 00 09     Mx
    BEQ L_A6A9FA                    ; $A6A9E7  F0 11        Mx
    LDA $00E5                       ; $A6A9E9  AD E5 00     Mx
    LSR                             ; $A6A9EC  4A           Mx
    STA $00B2                       ; $A6A9ED  8D B2 00     Mx
    LDA $00E5                       ; $A6A9F0  AD E5 00     Mx
    SEC                             ; $A6A9F3  38           Mx
    SBC $00B2                       ; $A6A9F4  ED B2 00     Mx
    STA $00E5                       ; $A6A9F7  8D E5 00     Mx
L_A6A9FA:
    LDA $08F9                       ; $A6A9FA  AD F9 08     Mx
    CLC                             ; $A6A9FD  18           Mx
    ADC $00E5                       ; $A6A9FE  6D E5 00     Mx
    BCS L_A6AA19                    ; $A6AA01  B0 16        Mx
    LDA $00E5                       ; $A6AA03  AD E5 00     Mx
    EOR #$FFFF                      ; $A6AA06  49 FF FF     Mx
    CLC                             ; $A6AA09  18           Mx
    ADC #$0001                      ; $A6AA0A  69 01 00     Mx
    STZ $08F8                       ; $A6AA0D  9C F8 08     Mx
    STZ $08FA                       ; $A6AA10  9C FA 08     Mx
    DEC $08FA                       ; $A6AA13  CE FA 08     Mx
    STA $08F9                       ; $A6AA16  8D F9 08     Mx
L_A6AA19:
    CPX #$00                        ; $A6AA19  E0 00        Mx
    BNE L_A6AA5B                    ; $A6AA1B  D0 3E        Mx
    LDA $08FA                       ; $A6AA1D  AD FA 08     Mx
    BMI L_A6AA40                    ; $A6AA20  30 1E        Mx
    LDA $08F8                       ; $A6AA22  AD F8 08     Mx
    SEC                             ; $A6AA25  38           Mx
    SBC #$8000                      ; $A6AA26  E9 00 80     Mx
    STA $08F8                       ; $A6AA29  8D F8 08     Mx
    LDA $08FA                       ; $A6AA2C  AD FA 08     Mx
    SBC #$0000                      ; $A6AA2F  E9 00 00     Mx
    STA $08FA                       ; $A6AA32  8D FA 08     Mx
    BCS L_A6AA5B                    ; $A6AA35  B0 24        Mx
    STZ $08FA                       ; $A6AA37  9C FA 08     Mx
    STZ $08F8                       ; $A6AA3A  9C F8 08     Mx
    JMP L_A6AA5B                    ; $A6AA3D  4C 5B AA     Mx
L_A6AA40:
    LDA $08F8                       ; $A6AA40  AD F8 08     Mx
    CLC                             ; $A6AA43  18           Mx
    ADC #$8000                      ; $A6AA44  69 00 80     Mx
    STA $08F8                       ; $A6AA47  8D F8 08     Mx
    LDA $08FA                       ; $A6AA4A  AD FA 08     Mx
    ADC #$0000                      ; $A6AA4D  69 00 00     Mx
    STA $08FA                       ; $A6AA50  8D FA 08     Mx
    BCC L_A6AA5B                    ; $A6AA53  90 06        Mx
    STZ $08FA                       ; $A6AA55  9C FA 08     Mx
    STZ $08F8                       ; $A6AA58  9C F8 08     Mx
L_A6AA5B:
    LDX #$00                        ; $A6AA5B  A2 00        Mx
    LDA $093C                       ; $A6AA5D  AD 3C 09     Mx
    AND #$0400                      ; $A6AA60  29 00 04     Mx
    BNE L_A6AA68                    ; $A6AA63  D0 03        Mx
    JMP L_A6AA96                    ; $A6AA65  4C 96 AA     Mx
L_A6AA68:
    LDX #$01                        ; $A6AA68  A2 01        Mx
    LDA $0900                       ; $A6AA6A  AD 00 09     Mx
    CLC                             ; $A6AA6D  18           Mx
    ADC #$4000                      ; $A6AA6E  69 00 40     Mx
    STA $0900                       ; $A6AA71  8D 00 09     Mx
    LDA $0902                       ; $A6AA74  AD 02 09     Mx
    ADC #$0000                      ; $A6AA77  69 00 00     Mx
    STA $0902                       ; $A6AA7A  8D 02 09     Mx
    BPL L_A6AA82                    ; $A6AA7D  10 03        Mx
    JMP L_A6AAD7                    ; $A6AA7F  4C D7 AA     Mx
L_A6AA82:
    LDA $0901                       ; $A6AA82  AD 01 09     Mx
    CMP $00E2                       ; $A6AA85  CD E2 00     Mx
    BCC L_A6AAD7                    ; $A6AA88  90 4D        Mx
    LDA $00E2                       ; $A6AA8A  AD E2 00     Mx
    STZ $0900                       ; $A6AA8D  9C 00 09     Mx
    STA $0901                       ; $A6AA90  8D 01 09     Mx
    JMP L_A6AAD7                    ; $A6AA93  4C D7 AA     Mx
L_A6AA96:
    LDA $093C                       ; $A6AA96  AD 3C 09     Mx
    AND #$0800                      ; $A6AA99  29 00 08     Mx
    BEQ L_A6AAD7                    ; $A6AA9C  F0 39        Mx
    LDX #$01                        ; $A6AA9E  A2 01        Mx
    LDA $0900                       ; $A6AAA0  AD 00 09     Mx
    SEC                             ; $A6AAA3  38           Mx
    SBC #$4000                      ; $A6AAA4  E9 00 40     Mx
    STA $0900                       ; $A6AAA7  8D 00 09     Mx
    LDA $0902                       ; $A6AAAA  AD 02 09     Mx
    SBC #$0000                      ; $A6AAAD  E9 00 00     Mx
    STA $0902                       ; $A6AAB0  8D 02 09     Mx
    BMI L_A6AAB8                    ; $A6AAB3  30 03        Mx
    JMP L_A6AAD7                    ; $A6AAB5  4C D7 AA     Mx
L_A6AAB8:
    LDA $0901                       ; $A6AAB8  AD 01 09     Mx
    CLC                             ; $A6AABB  18           Mx
    ADC $00E2                       ; $A6AABC  6D E2 00     Mx
    BCS L_A6AAD7                    ; $A6AABF  B0 16        Mx
    LDA $00E2                       ; $A6AAC1  AD E2 00     Mx
    EOR #$FFFF                      ; $A6AAC4  49 FF FF     Mx
    CLC                             ; $A6AAC7  18           Mx
    ADC #$0001                      ; $A6AAC8  69 01 00     Mx
    STZ $0900                       ; $A6AACB  9C 00 09     Mx
    STZ $0902                       ; $A6AACE  9C 02 09     Mx
    DEC $0902                       ; $A6AAD1  CE 02 09     Mx
    STA $0901                       ; $A6AAD4  8D 01 09     Mx
L_A6AAD7:
    CPX #$00                        ; $A6AAD7  E0 00        Mx
    BNE L_A6AB19                    ; $A6AAD9  D0 3E        Mx
    LDA $0902                       ; $A6AADB  AD 02 09     Mx
    BMI L_A6AAFE                    ; $A6AADE  30 1E        Mx
    LDA $0900                       ; $A6AAE0  AD 00 09     Mx
    SEC                             ; $A6AAE3  38           Mx
    SBC #$8000                      ; $A6AAE4  E9 00 80     Mx
    STA $0900                       ; $A6AAE7  8D 00 09     Mx
    LDA $0902                       ; $A6AAEA  AD 02 09     Mx
    SBC #$0000                      ; $A6AAED  E9 00 00     Mx
    STA $0902                       ; $A6AAF0  8D 02 09     Mx
    BCS L_A6AB19                    ; $A6AAF3  B0 24        Mx
    STZ $0902                       ; $A6AAF5  9C 02 09     Mx
    STZ $0900                       ; $A6AAF8  9C 00 09     Mx
    JMP L_A6AB19                    ; $A6AAFB  4C 19 AB     Mx
L_A6AAFE:
    LDA $0900                       ; $A6AAFE  AD 00 09     Mx
    CLC                             ; $A6AB01  18           Mx
    ADC #$8000                      ; $A6AB02  69 00 80     Mx
    STA $0900                       ; $A6AB05  8D 00 09     Mx
    LDA $0902                       ; $A6AB08  AD 02 09     Mx
    ADC #$0000                      ; $A6AB0B  69 00 00     Mx
    STA $0902                       ; $A6AB0E  8D 02 09     Mx
    BCC L_A6AB19                    ; $A6AB11  90 06        Mx
    STZ $0902                       ; $A6AB13  9C 02 09     Mx
    STZ $0900                       ; $A6AB16  9C 00 09     Mx
L_A6AB19:
    LDA $0964                       ; $A6AB19  AD 64 09     Mx
    BEQ L_A6AB2F                    ; $A6AB1C  F0 11        Mx
    LDA $08CA                       ; $A6AB1E  AD CA 08     Mx
    CMP #$0006                      ; $A6AB21  C9 06 00     Mx
    BNE L_A6AB2F                    ; $A6AB24  D0 09        Mx
    LDA $08CC                       ; $A6AB26  AD CC 08     Mx
    BNE L_A6AB2F                    ; $A6AB29  D0 04        Mx
    JSL L_9A9608                    ; $A6AB2B  22 08 96 9A  Mx
L_A6AB2F:
    LDA $0940                       ; $A6AB2F  AD 40 09     Mx
    BNE L_A6AB37                    ; $A6AB32  D0 03        Mx
    JMP L_A6AB48                    ; $A6AB34  4C 48 AB     Mx
L_A6AB37:
    LDA $0964                       ; $A6AB37  AD 64 09     Mx
    BNE L_A6AB42                    ; $A6AB3A  D0 06        Mx
    JSR L_A6CA1C                    ; $A6AB3C  20 1C CA     Mx
    JMP L_A6AB50                    ; $A6AB3F  4C 50 AB     Mx
L_A6AB42:
    JSR L_A6D582                    ; $A6AB42  20 82 D5     Mx
    JMP L_A6AB50                    ; $A6AB45  4C 50 AB     Mx
L_A6AB48:
    LDA $0944                       ; $A6AB48  AD 44 09     Mx
    BEQ L_A6AB50                    ; $A6AB4B  F0 03        Mx
    JSR L_A6D247                    ; $A6AB4D  20 47 D2     Mx
L_A6AB50:
    RTS                             ; $A6AB50  60           Mx
L_A6AB51:
    RTS                             ; $A6AB51  60           Mx
L_A6AB52:
    LDA $0C19                       ; $A6AB52  AD 19 0C     Mx
    CMP $08C0                       ; $A6AB55  CD C0 08     Mx
    BEQ L_A6AB60                    ; $A6AB58  F0 06        Mx
    LDA #$0000                      ; $A6AB5A  A9 00 00     Mx
    JMP L_A6AB6B                    ; $A6AB5D  4C 6B AB     Mx
L_A6AB60:
    LDA $093C                       ; $A6AB60  AD 3C 09     Mx
    AND #$0F00                      ; $A6AB63  29 00 0F     Mx
    BEQ L_A6AB86                    ; $A6AB66  F0 1E        Mx
L_A6AB68:
    LDA #$0004                      ; $A6AB68  A9 04 00     Mx
L_A6AB6B:
    STA $08C4                       ; $A6AB6B  8D C4 08     Mx
    LDA #$FFFF                      ; $A6AB6E  A9 FF FF     Mx
    STA $08CA                       ; $A6AB71  8D CA 08     Mx
    STZ $08CC                       ; $A6AB74  9C CC 08     Mx
    STZ $0912                       ; $A6AB77  9C 12 09     Mx
    STZ $08C8                       ; $A6AB7A  9C C8 08     Mx
    LDA #$FFF8                      ; $A6AB7D  A9 F8 FF     Mx
    STA $08CE                       ; $A6AB80  8D CE 08     Mx
    JMP L_A6AC6B                    ; $A6AB83  4C 6B AC     Mx
L_A6AB86:
    LDA $08CA                       ; $A6AB86  AD CA 08     Mx
    CMP #$0002                      ; $A6AB89  C9 02 00     Mx
    BNE L_A6AB96                    ; $A6AB8C  D0 08        Mx
    LDA $08C4                       ; $A6AB8E  AD C4 08     Mx
    CMP #$0018                      ; $A6AB91  C9 18 00     Mx
    BEQ L_A6ABAC                    ; $A6AB94  F0 16        Mx
L_A6AB96:
    LDA $08D8                       ; $A6AB96  AD D8 08     Mx
    ASL                             ; $A6AB99  0A           Mx
    TAX                             ; $A6AB9A  AA           Mx
    LDA $08CA                       ; $A6AB9B  AD CA 08     Mx
    CMP $A6DBF3,X                   ; $A6AB9E  DF F3 DB A6  Mx
    BNE L_A6ABB5                    ; $A6ABA2  D0 11        Mx
    LDA $08C4                       ; $A6ABA4  AD C4 08     Mx
    CMP #$0018                      ; $A6ABA7  C9 18 00     Mx
    BEQ L_A6ABB5                    ; $A6ABAA  F0 09        Mx
L_A6ABAC:
    LDA $08CC                       ; $A6ABAC  AD CC 08     Mx
    BNE L_A6ABB5                    ; $A6ABAF  D0 04        Mx
    JSL L_9A9608                    ; $A6ABB1  22 08 96 9A  Mx
L_A6ABB5:
    LDA $08FA                       ; $A6ABB5  AD FA 08     Mx
    ORA $08F8                       ; $A6ABB8  0D F8 08     Mx
    ORA $0902                       ; $A6ABBB  0D 02 09     Mx
    ORA $0900                       ; $A6ABBE  0D 00 09     Mx
    ORA $08FE                       ; $A6ABC1  0D FE 08     Mx
    ORA $08FC                       ; $A6ABC4  0D FC 08     Mx
    BNE L_A6AB68                    ; $A6ABC7  D0 9F        Mx
    LDA $08C6                       ; $A6ABC9  AD C6 08     Mx
    BEQ L_A6ABE1                    ; $A6ABCC  F0 13        Mx
    DEC $08C6                       ; $A6ABCE  CE C6 08     Mx
    BNE L_A6ABE1                    ; $A6ABD1  D0 0E        Mx
    LDA $0926                       ; $A6ABD3  AD 26 09     Mx
    TAX                             ; $A6ABD6  AA           Mx
    LDA $A7E377,X                   ; $A6ABD7  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6ABDB  29 07 00     Mx
    STA $08D8                       ; $A6ABDE  8D D8 08     Mx
L_A6ABE1:
    LDA $0940                       ; $A6ABE1  AD 40 09     Mx
    BNE L_A6ABE9                    ; $A6ABE4  D0 03        Mx
    JMP L_A6ABEF                    ; $A6ABE6  4C EF AB     Mx
L_A6ABE9:
    JSR L_A6D582                    ; $A6ABE9  20 82 D5     Mx
    JMP L_A6AC6B                    ; $A6ABEC  4C 6B AC     Mx
L_A6ABEF:
    LDA $0944                       ; $A6ABEF  AD 44 09     Mx
    BEQ L_A6ABFA                    ; $A6ABF2  F0 06        Mx
    JSR L_A6D247                    ; $A6ABF4  20 47 D2     Mx
    JMP L_A6AC6B                    ; $A6ABF7  4C 6B AC     Mx
L_A6ABFA:
    LDA $08C6                       ; $A6ABFA  AD C6 08     Mx
    BEQ L_A6AC02                    ; $A6ABFD  F0 03        Mx
    JMP L_A6AC6B                    ; $A6ABFF  4C 6B AC     Mx
L_A6AC02:
    LDA $0938                       ; $A6AC02  AD 38 09     Mx
    CMP #$0046                      ; $A6AC05  C9 46 00     Mx
    BCC L_A6AC12                    ; $A6AC08  90 08        Mx
    LDA $093A                       ; $A6AC0A  AD 3A 09     Mx
    CMP #$0046                      ; $A6AC0D  C9 46 00     Mx
    BCS L_A6AC48                    ; $A6AC10  B0 36        Mx
L_A6AC12:
    LDA $08C4                       ; $A6AC12  AD C4 08     Mx
    CMP #$0018                      ; $A6AC15  C9 18 00     Mx
    BNE L_A6AC1D                    ; $A6AC18  D0 03        Mx
    JMP L_A6AC6B                    ; $A6AC1A  4C 6B AC     Mx
L_A6AC1D:
    LDA #$0018                      ; $A6AC1D  A9 18 00     Mx
    STA $08C4                       ; $A6AC20  8D C4 08     Mx
    LDA #$FFFF                      ; $A6AC23  A9 FF FF     Mx
    STA $08CA                       ; $A6AC26  8D CA 08     Mx
    STZ $08CC                       ; $A6AC29  9C CC 08     Mx
    STZ $0912                       ; $A6AC2C  9C 12 09     Mx
    STZ $08C8                       ; $A6AC2F  9C C8 08     Mx
    LDA #$FFF8                      ; $A6AC32  A9 F8 FF     Mx
    STA $08CE                       ; $A6AC35  8D CE 08     Mx
    LDX $08D8                       ; $A6AC38  AE D8 08     Mx
    LDA $A7E503,X                   ; $A6AC3B  BF 03 E5 A7  Mx
    AND #$0007                      ; $A6AC3F  29 07 00     Mx
    STA $08D8                       ; $A6AC42  8D D8 08     Mx
    JMP L_A6AC6B                    ; $A6AC45  4C 6B AC     Mx
L_A6AC48:
    LDA $08C4                       ; $A6AC48  AD C4 08     Mx
    CMP #$0006                      ; $A6AC4B  C9 06 00     Mx
    BEQ L_A6AC6B                    ; $A6AC4E  F0 1B        Mx
    LDA #$0006                      ; $A6AC50  A9 06 00     Mx
    STA $08C4                       ; $A6AC53  8D C4 08     Mx
    LDA #$FFFF                      ; $A6AC56  A9 FF FF     Mx
    STA $08CA                       ; $A6AC59  8D CA 08     Mx
    STZ $08CC                       ; $A6AC5C  9C CC 08     Mx
    STZ $0912                       ; $A6AC5F  9C 12 09     Mx
    STZ $08C8                       ; $A6AC62  9C C8 08     Mx
    LDA #$FFF8                      ; $A6AC65  A9 F8 FF     Mx
    STA $08CE                       ; $A6AC68  8D CE 08     Mx
L_A6AC6B:
    RTS                             ; $A6AC6B  60           Mx
L_A6AC6C:
    LDA $0912                       ; $A6AC6C  AD 12 09     Mx
    CMP #$0001                      ; $A6AC6F  C9 01 00     Mx
    BEQ L_A6AC9A                    ; $A6AC72  F0 26        Mx
    CMP #$0002                      ; $A6AC74  C9 02 00     Mx
    BEQ L_A6AC81                    ; $A6AC77  F0 08        Mx
    CMP #$0003                      ; $A6AC79  C9 03 00     Mx
    BNE L_A6AC84                    ; $A6AC7C  D0 06        Mx
    JMP L_A6ADC9                    ; $A6AC7E  4C C9 AD     Mx
L_A6AC81:
    JMP L_A6ACE9                    ; $A6AC81  4C E9 AC     Mx
L_A6AC84:
    LDA $0956                       ; $A6AC84  AD 56 09     Mx
    BEQ L_A6AC8E                    ; $A6AC87  F0 05        Mx
    LDA #$003E                      ; $A6AC89  A9 3E 00     Mx
    BNE L_A6AC91                    ; $A6AC8C  D0 03        Mx
L_A6AC8E:
    LDA #$0036                      ; $A6AC8E  A9 36 00     Mx
L_A6AC91:
    STA $08C6                       ; $A6AC91  8D C6 08     Mx
    LDA #$0001                      ; $A6AC94  A9 01 00     Mx
    STA $0912                       ; $A6AC97  8D 12 09     Mx
L_A6AC9A:
    LDA $08CA                       ; $A6AC9A  AD CA 08     Mx
    CMP #$0002                      ; $A6AC9D  C9 02 00     Mx
    BCS L_A6ACB0                    ; $A6ACA0  B0 0E        Mx
    LDA $0940                       ; $A6ACA2  AD 40 09     Mx
    BNE L_A6ACC2                    ; $A6ACA5  D0 1B        Mx
    LDA #$0001                      ; $A6ACA7  A9 01 00     Mx
    STA $0950                       ; $A6ACAA  8D 50 09     Mx
    JMP L_A6ACC2                    ; $A6ACAD  4C C2 AC     Mx
L_A6ACB0:
    CMP #$0004                      ; $A6ACB0  C9 04 00     Mx
    BCS L_A6ACC5                    ; $A6ACB3  B0 10        Mx
    CMP #$0003                      ; $A6ACB5  C9 03 00     Mx
    BNE L_A6ACC2                    ; $A6ACB8  D0 08        Mx
    LDA $0950                       ; $A6ACBA  AD 50 09     Mx
    BEQ L_A6ACC5                    ; $A6ACBD  F0 06        Mx
    JMP L_A6AE04                    ; $A6ACBF  4C 04 AE     Mx
L_A6ACC2:
    JMP L_A6AE5C                    ; $A6ACC2  4C 5C AE     Mx
L_A6ACC5:
    DEC $08C6                       ; $A6ACC5  CE C6 08     Mx
    DEC $08C6                       ; $A6ACC8  CE C6 08     Mx
    BPL L_A6ACD9                    ; $A6ACCB  10 0C        Mx
    STZ $08C6                       ; $A6ACCD  9C C6 08     Mx
    LDA #$0002                      ; $A6ACD0  A9 02 00     Mx
    STA $0912                       ; $A6ACD3  8D 12 09     Mx
    JMP L_A6ACE9                    ; $A6ACD6  4C E9 AC     Mx
L_A6ACD9:
    LDX $08C6                       ; $A6ACD9  AE C6 08     Mx
    LDA $A7E3F7,X                   ; $A6ACDC  BF F7 E3 A7  Mx
    STA $08FE                       ; $A6ACE0  8D FE 08     Mx
    STZ $08FC                       ; $A6ACE3  9C FC 08     Mx
    JMP L_A6AD47                    ; $A6ACE6  4C 47 AD     Mx
L_A6ACE9:
    LDA #$0003                      ; $A6ACE9  A9 03 00     Mx
    STA $08CC                       ; $A6ACEC  8D CC 08     Mx
    LDA $08C6                       ; $A6ACEF  AD C6 08     Mx
    CLC                             ; $A6ACF2  18           Mx
    ADC #$0002                      ; $A6ACF3  69 02 00     Mx
    CMP #$003E                      ; $A6ACF6  C9 3E 00     Mx
    BCC L_A6ACFE                    ; $A6ACF9  90 03        Mx
    LDA #$003C                      ; $A6ACFB  A9 3C 00     Mx
L_A6ACFE:
    STA $08C6                       ; $A6ACFE  8D C6 08     Mx
    TAX                             ; $A6AD01  AA           Mx
    LDA $A7E3F7,X                   ; $A6AD02  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $A6AD06  49 FF FF     Mx
    CLC                             ; $A6AD09  18           Mx
    ADC #$0001                      ; $A6AD0A  69 01 00     Mx
    STA $08FE                       ; $A6AD0D  8D FE 08     Mx
    STZ $08FC                       ; $A6AD10  9C FC 08     Mx
    LDA $08F0                       ; $A6AD13  AD F0 08     Mx
    CLC                             ; $A6AD16  18           Mx
    ADC $08FC                       ; $A6AD17  6D FC 08     Mx
    STA $00E8                       ; $A6AD1A  8D E8 00     Mx
    LDA $08F2                       ; $A6AD1D  AD F2 08     Mx
    ADC $08FE                       ; $A6AD20  6D FE 08     Mx
    BPL L_A6AD40                    ; $A6AD23  10 1B        Mx
    STZ $08F2                       ; $A6AD25  9C F2 08     Mx
    STZ $08F0                       ; $A6AD28  9C F0 08     Mx
    STZ $08E4                       ; $A6AD2B  9C E4 08     Mx
    STZ $08E6                       ; $A6AD2E  9C E6 08     Mx
    STZ $08FE                       ; $A6AD31  9C FE 08     Mx
    STZ $08FC                       ; $A6AD34  9C FC 08     Mx
    LDA #$0003                      ; $A6AD37  A9 03 00     Mx
    STA $0912                       ; $A6AD3A  8D 12 09     Mx
    JMP L_A6ADC9                    ; $A6AD3D  4C C9 AD     Mx
L_A6AD40:
    CPX #$2E                        ; $A6AD40  E0 2E        Mx
    BCC L_A6AD47                    ; $A6AD42  90 03        Mx
    JMP L_A6AD51                    ; $A6AD44  4C 51 AD     Mx
L_A6AD47:
    LDA $0940                       ; $A6AD47  AD 40 09     Mx
    BNE L_A6ADC3                    ; $A6AD4A  D0 77        Mx
    LDA $0C19                       ; $A6AD4C  AD 19 0C     Mx
    BEQ L_A6ADC3                    ; $A6AD4F  F0 72        Mx
L_A6AD51:
    STZ $08CC                       ; $A6AD51  9C CC 08     Mx
    LDA $08C0                       ; $A6AD54  AD C0 08     Mx
    CMP $0C19                       ; $A6AD57  CD 19 0C     Mx
    BNE L_A6ADC0                    ; $A6AD5A  D0 64        Mx
    LDX $08D0                       ; $A6AD5C  AE D0 08     Mx
    LDA $098A                       ; $A6AD5F  AD 8A 09     Mx
    BEQ L_A6AD93                    ; $A6AD62  F0 2F        Mx
    LDA #$2800                      ; $A6AD64  A9 00 28     Mx
    STA $00D1                       ; $A6AD67  8D D1 00     Mx
    LDA $A88000,X                   ; $A6AD6A  BF 00 80 A8  Mx
    CLC                             ; $A6AD6E  18           Mx
    ADC $08CE                       ; $A6AD6F  6D CE 08     Mx
    STA $00D0                       ; $A6AD72  8D D0 00     Mx
    LDY #$00                        ; $A6AD75  A0 00        Mx
    LDA [$D0],Y                     ; $A6AD77  B7 D0        Mx
    STA $0BEF                       ; $A6AD79  8D EF 0B     Mx
    LDY #$02                        ; $A6AD7C  A0 02        Mx
    LDA [$D0],Y                     ; $A6AD7E  B7 D0        Mx
    STA $0BF1                       ; $A6AD80  8D F1 0B     Mx
    LDY #$04                        ; $A6AD83  A0 04        Mx
    LDA [$D0],Y                     ; $A6AD85  B7 D0        Mx
    STA $0BF5                       ; $A6AD87  8D F5 0B     Mx
    CLC                             ; $A6AD8A  18           Mx
    ADC $08E8                       ; $A6AD8B  6D E8 08     Mx
    STA $0BF3                       ; $A6AD8E  8D F3 0B     Mx
    BRA L_A6ADC0                    ; $A6AD91  80 2D        Mx
L_A6AD93:
    LDA #$2500                      ; $A6AD93  A9 00 25     Mx
    STA $00D1                       ; $A6AD96  8D D1 00     Mx
    LDA $A58000,X                   ; $A6AD99  BF 00 80 A5  Mx
    CLC                             ; $A6AD9D  18           Mx
    ADC $08CE                       ; $A6AD9E  6D CE 08     Mx
    STA $00D0                       ; $A6ADA1  8D D0 00     Mx
    LDY #$00                        ; $A6ADA4  A0 00        Mx
    LDA [$D0],Y                     ; $A6ADA6  B7 D0        Mx
    STA $0BEF                       ; $A6ADA8  8D EF 0B     Mx
    LDY #$02                        ; $A6ADAB  A0 02        Mx
    LDA [$D0],Y                     ; $A6ADAD  B7 D0        Mx
    STA $0BF1                       ; $A6ADAF  8D F1 0B     Mx
    LDY #$04                        ; $A6ADB2  A0 04        Mx
    LDA [$D0],Y                     ; $A6ADB4  B7 D0        Mx
    STA $0BF5                       ; $A6ADB6  8D F5 0B     Mx
    CLC                             ; $A6ADB9  18           Mx
    ADC $08E8                       ; $A6ADBA  6D E8 08     Mx
    STA $0BF3                       ; $A6ADBD  8D F3 0B     Mx
L_A6ADC0:
    JMP L_A6ADC9                    ; $A6ADC0  4C C9 AD     Mx
L_A6ADC3:
    LDA #$0003                      ; $A6ADC3  A9 03 00     Mx
    STA $08CC                       ; $A6ADC6  8D CC 08     Mx
L_A6ADC9:
    LDA $08CA                       ; $A6ADC9  AD CA 08     Mx
    CMP #$0008                      ; $A6ADCC  C9 08 00     Mx
    BNE L_A6ADD9                    ; $A6ADCF  D0 08        Mx
    LDA $08CC                       ; $A6ADD1  AD CC 08     Mx
    BNE L_A6AE01                    ; $A6ADD4  D0 2B        Mx
    JMP L_A6AE2D                    ; $A6ADD6  4C 2D AE     Mx
L_A6ADD9:
    CMP #$0004                      ; $A6ADD9  C9 04 00     Mx
    BNE L_A6AE01                    ; $A6ADDC  D0 23        Mx
    LDA $0C19                       ; $A6ADDE  AD 19 0C     Mx
    BEQ L_A6AE01                    ; $A6ADE1  F0 1E        Mx
    LDA $0964                       ; $A6ADE3  AD 64 09     Mx
    BEQ L_A6AE01                    ; $A6ADE6  F0 19        Mx
    LDA #$0002                      ; $A6ADE8  A9 02 00     Mx
    STA $0BBF                       ; $A6ADEB  8D BF 0B     Mx
    STZ $0BC1                       ; $A6ADEE  9C C1 0B     Mx
    LDX $08C6                       ; $A6ADF1  AE C6 08     Mx
    LDA $A7E435,X                   ; $A6ADF4  BF 35 E4 A7  Mx
    STA $0BC9                       ; $A6ADF8  8D C9 0B     Mx
    LDA #$0019                      ; $A6ADFB  A9 19 00     Mx
    STA $094A                       ; $A6ADFE  8D 4A 09     Mx
L_A6AE01:
    JMP L_A6AE5C                    ; $A6AE01  4C 5C AE     Mx
L_A6AE04:
    LDA #$000C                      ; $A6AE04  A9 0C 00     Mx
    STA $08C4                       ; $A6AE07  8D C4 08     Mx
    LDA #$FFFF                      ; $A6AE0A  A9 FF FF     Mx
    STA $08CA                       ; $A6AE0D  8D CA 08     Mx
    STZ $08CC                       ; $A6AE10  9C CC 08     Mx
    STZ $0912                       ; $A6AE13  9C 12 09     Mx
    STZ $08C8                       ; $A6AE16  9C C8 08     Mx
    LDA #$FFF8                      ; $A6AE19  A9 F8 FF     Mx
    STA $08CE                       ; $A6AE1C  8D CE 08     Mx
    LDA $0952                       ; $A6AE1F  AD 52 09     Mx
    BNE L_A6AE27                    ; $A6AE22  D0 03        Mx
    STZ $0950                       ; $A6AE24  9C 50 09     Mx
L_A6AE27:
    JSR L_A6D1C7                    ; $A6AE27  20 C7 D1     Mx
    JMP L_A6AE5C                    ; $A6AE2A  4C 5C AE     Mx
L_A6AE2D:
    LDA $08F2                       ; $A6AE2D  AD F2 08     Mx
    BEQ L_A6AE3B                    ; $A6AE30  F0 09        Mx
    LDA #$0003                      ; $A6AE32  A9 03 00     Mx
    STA $08CC                       ; $A6AE35  8D CC 08     Mx
    JMP L_A6AE5C                    ; $A6AE38  4C 5C AE     Mx
L_A6AE3B:
    LDA #$0000                      ; $A6AE3B  A9 00 00     Mx
    STA $08C4                       ; $A6AE3E  8D C4 08     Mx
    LDA #$FFFF                      ; $A6AE41  A9 FF FF     Mx
    STA $08CA                       ; $A6AE44  8D CA 08     Mx
    STZ $08CC                       ; $A6AE47  9C CC 08     Mx
    STZ $0912                       ; $A6AE4A  9C 12 09     Mx
    STZ $08C8                       ; $A6AE4D  9C C8 08     Mx
    LDA #$FFF8                      ; $A6AE50  A9 F8 FF     Mx
    STA $08CE                       ; $A6AE53  8D CE 08     Mx
    LDA #$0014                      ; $A6AE56  A9 14 00     Mx
    STA $0948                       ; $A6AE59  8D 48 09     Mx
L_A6AE5C:
    RTS                             ; $A6AE5C  60           Mx
L_A6AE5D:
    LDA $0912                       ; $A6AE5D  AD 12 09     Mx
    CMP #$0001                      ; $A6AE60  C9 01 00     Mx
    BEQ L_A6AE88                    ; $A6AE63  F0 23        Mx
    CMP #$0002                      ; $A6AE65  C9 02 00     Mx
    BEQ L_A6AEC6                    ; $A6AE68  F0 5C        Mx
    CMP #$0003                      ; $A6AE6A  C9 03 00     Mx
    BNE L_A6AE72                    ; $A6AE6D  D0 03        Mx
    JMP L_A6AF31                    ; $A6AE6F  4C 31 AF     Mx
L_A6AE72:
    LDA $0956                       ; $A6AE72  AD 56 09     Mx
    BEQ L_A6AE7C                    ; $A6AE75  F0 05        Mx
    LDA #$0036                      ; $A6AE77  A9 36 00     Mx
    BNE L_A6AE7F                    ; $A6AE7A  D0 03        Mx
L_A6AE7C:
    LDA #$0030                      ; $A6AE7C  A9 30 00     Mx
L_A6AE7F:
    STA $08C6                       ; $A6AE7F  8D C6 08     Mx
    LDA #$0001                      ; $A6AE82  A9 01 00     Mx
    STA $0912                       ; $A6AE85  8D 12 09     Mx
L_A6AE88:
    DEC $08C6                       ; $A6AE88  CE C6 08     Mx
    DEC $08C6                       ; $A6AE8B  CE C6 08     Mx
    BPL L_A6AE9C                    ; $A6AE8E  10 0C        Mx
    STZ $08C6                       ; $A6AE90  9C C6 08     Mx
    LDA #$0002                      ; $A6AE93  A9 02 00     Mx
    STA $0912                       ; $A6AE96  8D 12 09     Mx
    JMP L_A6AEC6                    ; $A6AE99  4C C6 AE     Mx
L_A6AE9C:
    LDX $08C6                       ; $A6AE9C  AE C6 08     Mx
    LDA $A7E3F7,X                   ; $A6AE9F  BF F7 E3 A7  Mx
    STA $08FE                       ; $A6AEA3  8D FE 08     Mx
    STZ $08FC                       ; $A6AEA6  9C FC 08     Mx
    CPX #$14                        ; $A6AEA9  E0 14        Mx
    BMI L_A6AEB8                    ; $A6AEAB  30 0B        Mx
    LDA $08CA                       ; $A6AEAD  AD CA 08     Mx
    CMP #$0003                      ; $A6AEB0  C9 03 00     Mx
    BCS L_A6AF2B                    ; $A6AEB3  B0 76        Mx
    JMP L_A6AF41                    ; $A6AEB5  4C 41 AF     Mx
L_A6AEB8:
    LDA $0C19                       ; $A6AEB8  AD 19 0C     Mx
    BEQ L_A6AF2B                    ; $A6AEBB  F0 6E        Mx
    LDA #$0000                      ; $A6AEBD  A9 00 00     Mx
    STA $08CC                       ; $A6AEC0  8D CC 08     Mx
    JMP L_A6AF31                    ; $A6AEC3  4C 31 AF     Mx
L_A6AEC6:
    LDA #$0003                      ; $A6AEC6  A9 03 00     Mx
    STA $08CC                       ; $A6AEC9  8D CC 08     Mx
    LDA $08C6                       ; $A6AECC  AD C6 08     Mx
    CLC                             ; $A6AECF  18           Mx
    ADC #$0002                      ; $A6AED0  69 02 00     Mx
    CMP #$0036                      ; $A6AED3  C9 36 00     Mx
    BCC L_A6AEDB                    ; $A6AED6  90 03        Mx
    LDA #$0034                      ; $A6AED8  A9 34 00     Mx
L_A6AEDB:
    STA $08C6                       ; $A6AEDB  8D C6 08     Mx
    TAX                             ; $A6AEDE  AA           Mx
    LDA $A7E3F7,X                   ; $A6AEDF  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $A6AEE3  49 FF FF     Mx
    CLC                             ; $A6AEE6  18           Mx
    ADC #$0001                      ; $A6AEE7  69 01 00     Mx
    STA $08FE                       ; $A6AEEA  8D FE 08     Mx
    STZ $08FC                       ; $A6AEED  9C FC 08     Mx
    LDA $08F0                       ; $A6AEF0  AD F0 08     Mx
    CLC                             ; $A6AEF3  18           Mx
    ADC $08FC                       ; $A6AEF4  6D FC 08     Mx
    STA $00E8                       ; $A6AEF7  8D E8 00     Mx
    LDA $08F2                       ; $A6AEFA  AD F2 08     Mx
    ADC $08FE                       ; $A6AEFD  6D FE 08     Mx
    BPL L_A6AF1D                    ; $A6AF00  10 1B        Mx
    STZ $08F2                       ; $A6AF02  9C F2 08     Mx
    STZ $08F0                       ; $A6AF05  9C F0 08     Mx
    STZ $08E4                       ; $A6AF08  9C E4 08     Mx
    STZ $08E6                       ; $A6AF0B  9C E6 08     Mx
    STZ $08FE                       ; $A6AF0E  9C FE 08     Mx
    STZ $08FC                       ; $A6AF11  9C FC 08     Mx
    LDA #$0003                      ; $A6AF14  A9 03 00     Mx
    STA $0912                       ; $A6AF17  8D 12 09     Mx
    JMP L_A6AF31                    ; $A6AF1A  4C 31 AF     Mx
L_A6AF1D:
    LDA $0C19                       ; $A6AF1D  AD 19 0C     Mx
    BEQ L_A6AF2B                    ; $A6AF20  F0 09        Mx
    LDA #$0000                      ; $A6AF22  A9 00 00     Mx
    STA $08CC                       ; $A6AF25  8D CC 08     Mx
    JMP L_A6AF31                    ; $A6AF28  4C 31 AF     Mx
L_A6AF2B:
    LDA #$0003                      ; $A6AF2B  A9 03 00     Mx
    STA $08CC                       ; $A6AF2E  8D CC 08     Mx
L_A6AF31:
    LDA $08CA                       ; $A6AF31  AD CA 08     Mx
    CMP #$0005                      ; $A6AF34  C9 05 00     Mx
    BNE L_A6AF41                    ; $A6AF37  D0 08        Mx
    LDA $08CC                       ; $A6AF39  AD CC 08     Mx
    BNE L_A6AF96                    ; $A6AF3C  D0 58        Mx
    JMP L_A6AF67                    ; $A6AF3E  4C 67 AF     Mx
L_A6AF41:
    CMP #$0003                      ; $A6AF41  C9 03 00     Mx
    BNE L_A6AF96                    ; $A6AF44  D0 50        Mx
    LDA $0C19                       ; $A6AF46  AD 19 0C     Mx
    BEQ L_A6AF96                    ; $A6AF49  F0 4B        Mx
    LDA $0964                       ; $A6AF4B  AD 64 09     Mx
    BEQ L_A6AF64                    ; $A6AF4E  F0 14        Mx
    LDA $0964                       ; $A6AF50  AD 64 09     Mx
    BEQ L_A6AF96                    ; $A6AF53  F0 41        Mx
    LDA #$0002                      ; $A6AF55  A9 02 00     Mx
    STA $0BBF                       ; $A6AF58  8D BF 0B     Mx
    STZ $0BC1                       ; $A6AF5B  9C C1 0B     Mx
    LDA #$0019                      ; $A6AF5E  A9 19 00     Mx
    STA $094A                       ; $A6AF61  8D 4A 09     Mx
L_A6AF64:
    JMP L_A6AF96                    ; $A6AF64  4C 96 AF     Mx
L_A6AF67:
    LDA $08F2                       ; $A6AF67  AD F2 08     Mx
    BEQ L_A6AF75                    ; $A6AF6A  F0 09        Mx
    LDA #$0003                      ; $A6AF6C  A9 03 00     Mx
    STA $08CC                       ; $A6AF6F  8D CC 08     Mx
    JMP L_A6AF96                    ; $A6AF72  4C 96 AF     Mx
L_A6AF75:
    LDA #$0000                      ; $A6AF75  A9 00 00     Mx
    STA $08C4                       ; $A6AF78  8D C4 08     Mx
    LDA #$FFFF                      ; $A6AF7B  A9 FF FF     Mx
    STA $08CA                       ; $A6AF7E  8D CA 08     Mx
    STZ $08CC                       ; $A6AF81  9C CC 08     Mx
    STZ $0912                       ; $A6AF84  9C 12 09     Mx
    STZ $08C8                       ; $A6AF87  9C C8 08     Mx
    LDA #$FFF8                      ; $A6AF8A  A9 F8 FF     Mx
    STA $08CE                       ; $A6AF8D  8D CE 08     Mx
    LDA #$0014                      ; $A6AF90  A9 14 00     Mx
    STA $0948                       ; $A6AF93  8D 48 09     Mx
L_A6AF96:
    RTS                             ; $A6AF96  60           Mx
L_A6AF97:
    LDA $0912                       ; $A6AF97  AD 12 09     Mx
    CMP #$0001                      ; $A6AF9A  C9 01 00     Mx
    BEQ L_A6AFD2                    ; $A6AF9D  F0 33        Mx
    CMP #$0002                      ; $A6AF9F  C9 02 00     Mx
    BEQ L_A6B01C                    ; $A6AFA2  F0 78        Mx
    CMP #$0003                      ; $A6AFA4  C9 03 00     Mx
    BNE L_A6AFAC                    ; $A6AFA7  D0 03        Mx
    JMP L_A6B099                    ; $A6AFA9  4C 99 B0     Mx
L_A6AFAC:
    LDA $0956                       ; $A6AFAC  AD 56 09     Mx
    BEQ L_A6AFB6                    ; $A6AFAF  F0 05        Mx
    LDA #$003E                      ; $A6AFB1  A9 3E 00     Mx
    BNE L_A6AFB9                    ; $A6AFB4  D0 03        Mx
L_A6AFB6:
    LDA #$0036                      ; $A6AFB6  A9 36 00     Mx
L_A6AFB9:
    STA $08C6                       ; $A6AFB9  8D C6 08     Mx
    LDA $08CA                       ; $A6AFBC  AD CA 08     Mx
    CMP #$0001                      ; $A6AFBF  C9 01 00     Mx
    BEQ L_A6AFCC                    ; $A6AFC2  F0 08        Mx
    LDA $0940                       ; $A6AFC4  AD 40 09     Mx
    BNE L_A6AFD4                    ; $A6AFC7  D0 0B        Mx
    JMP L_A6B0E4                    ; $A6AFC9  4C E4 B0     Mx
L_A6AFCC:
    LDA #$0001                      ; $A6AFCC  A9 01 00     Mx
    STA $0912                       ; $A6AFCF  8D 12 09     Mx
L_A6AFD2:
    BRA L_A6AFD7                    ; $A6AFD2  80 03        Mx
L_A6AFD4:
    JMP L_A6B12F                    ; $A6AFD4  4C 2F B1     Mx
L_A6AFD7:
    LDA $08C4                       ; $A6AFD7  AD C4 08     Mx
    CMP #$001C                      ; $A6AFDA  C9 1C 00     Mx
    BNE L_A6AFE5                    ; $A6AFDD  D0 06        Mx
    LDA #$FFFF                      ; $A6AFDF  A9 FF FF     Mx
    STA $08FA                       ; $A6AFE2  8D FA 08     Mx
L_A6AFE5:
    DEC $08C6                       ; $A6AFE5  CE C6 08     Mx
    DEC $08C6                       ; $A6AFE8  CE C6 08     Mx
    BPL L_A6AFF9                    ; $A6AFEB  10 0C        Mx
    STZ $08C6                       ; $A6AFED  9C C6 08     Mx
    LDA #$0002                      ; $A6AFF0  A9 02 00     Mx
    STA $0912                       ; $A6AFF3  8D 12 09     Mx
    JMP L_A6B01C                    ; $A6AFF6  4C 1C B0     Mx
L_A6AFF9:
    LDX $08C6                       ; $A6AFF9  AE C6 08     Mx
    LDA $A7E3F7,X                   ; $A6AFFC  BF F7 E3 A7  Mx
    STA $08FE                       ; $A6B000  8D FE 08     Mx
    STZ $08FC                       ; $A6B003  9C FC 08     Mx
    LDA $0940                       ; $A6B006  AD 40 09     Mx
    BNE L_A6B019                    ; $A6B009  D0 0E        Mx
    LDA $0C19                       ; $A6B00B  AD 19 0C     Mx
    BEQ L_A6B019                    ; $A6B00E  F0 09        Mx
    LDA #$0000                      ; $A6B010  A9 00 00     Mx
    STA $08CC                       ; $A6B013  8D CC 08     Mx
    JMP L_A6B099                    ; $A6B016  4C 99 B0     Mx
L_A6B019:
    JMP L_A6B093                    ; $A6B019  4C 93 B0     Mx
L_A6B01C:
    LDA #$0003                      ; $A6B01C  A9 03 00     Mx
    STA $08CC                       ; $A6B01F  8D CC 08     Mx
    LDA $08C6                       ; $A6B022  AD C6 08     Mx
    CLC                             ; $A6B025  18           Mx
    ADC #$0002                      ; $A6B026  69 02 00     Mx
    CMP #$0036                      ; $A6B029  C9 36 00     Mx
    BCC L_A6B031                    ; $A6B02C  90 03        Mx
    LDA #$0034                      ; $A6B02E  A9 34 00     Mx
L_A6B031:
    STA $08C6                       ; $A6B031  8D C6 08     Mx
    TAX                             ; $A6B034  AA           Mx
    LDA $A7E3F7,X                   ; $A6B035  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $A6B039  49 FF FF     Mx
    CLC                             ; $A6B03C  18           Mx
    ADC #$0001                      ; $A6B03D  69 01 00     Mx
    STA $08FE                       ; $A6B040  8D FE 08     Mx
    STZ $08FC                       ; $A6B043  9C FC 08     Mx
    LDA $08F0                       ; $A6B046  AD F0 08     Mx
    CLC                             ; $A6B049  18           Mx
    ADC $08FC                       ; $A6B04A  6D FC 08     Mx
    STA $00E8                       ; $A6B04D  8D E8 00     Mx
    LDA $08F2                       ; $A6B050  AD F2 08     Mx
    ADC $08FE                       ; $A6B053  6D FE 08     Mx
    BPL L_A6B079                    ; $A6B056  10 21        Mx
    STZ $08F2                       ; $A6B058  9C F2 08     Mx
    STZ $08F0                       ; $A6B05B  9C F0 08     Mx
    STZ $08E4                       ; $A6B05E  9C E4 08     Mx
    STZ $08E6                       ; $A6B061  9C E6 08     Mx
    STZ $08FE                       ; $A6B064  9C FE 08     Mx
    STZ $08FC                       ; $A6B067  9C FC 08     Mx
    STZ $08FA                       ; $A6B06A  9C FA 08     Mx
    STZ $08F8                       ; $A6B06D  9C F8 08     Mx
    LDA #$0003                      ; $A6B070  A9 03 00     Mx
    STA $0912                       ; $A6B073  8D 12 09     Mx
    JMP L_A6B099                    ; $A6B076  4C 99 B0     Mx
L_A6B079:
    CPX #$2E                        ; $A6B079  E0 2E        Mx
    BCC L_A6B080                    ; $A6B07B  90 03        Mx
    JMP L_A6B08A                    ; $A6B07D  4C 8A B0     Mx
L_A6B080:
    LDA $0940                       ; $A6B080  AD 40 09     Mx
    BNE L_A6B093                    ; $A6B083  D0 0E        Mx
    LDA $0C19                       ; $A6B085  AD 19 0C     Mx
    BEQ L_A6B093                    ; $A6B088  F0 09        Mx
L_A6B08A:
    LDA #$0000                      ; $A6B08A  A9 00 00     Mx
    STA $08CC                       ; $A6B08D  8D CC 08     Mx
    JMP L_A6B099                    ; $A6B090  4C 99 B0     Mx
L_A6B093:
    LDA #$0003                      ; $A6B093  A9 03 00     Mx
    STA $08CC                       ; $A6B096  8D CC 08     Mx
L_A6B099:
    LDA $08CA                       ; $A6B099  AD CA 08     Mx
    CMP #$0006                      ; $A6B09C  C9 06 00     Mx
    BEQ L_A6B0AE                    ; $A6B09F  F0 0D        Mx
    CMP #$0003                      ; $A6B0A1  C9 03 00     Mx
    BNE L_A6B0B6                    ; $A6B0A4  D0 10        Mx
    LDA $08C4                       ; $A6B0A6  AD C4 08     Mx
    CMP #$001C                      ; $A6B0A9  C9 1C 00     Mx
    BNE L_A6B0B6                    ; $A6B0AC  D0 08        Mx
L_A6B0AE:
    LDA $08CC                       ; $A6B0AE  AD CC 08     Mx
    BNE L_A6B12F                    ; $A6B0B1  D0 7C        Mx
    JMP L_A6B100                    ; $A6B0B3  4C 00 B1     Mx
L_A6B0B6:
    LDA $08CA                       ; $A6B0B6  AD CA 08     Mx
    CMP #$0002                      ; $A6B0B9  C9 02 00     Mx
    BNE L_A6B12F                    ; $A6B0BC  D0 71        Mx
    LDA $0C19                       ; $A6B0BE  AD 19 0C     Mx
    BEQ L_A6B12F                    ; $A6B0C1  F0 6C        Mx
    LDA $0964                       ; $A6B0C3  AD 64 09     Mx
    BEQ L_A6B0E1                    ; $A6B0C6  F0 19        Mx
    LDA #$0002                      ; $A6B0C8  A9 02 00     Mx
    STA $0BBF                       ; $A6B0CB  8D BF 0B     Mx
    STZ $0BC1                       ; $A6B0CE  9C C1 0B     Mx
    LDX $08C6                       ; $A6B0D1  AE C6 08     Mx
    LDA $A7E435,X                   ; $A6B0D4  BF 35 E4 A7  Mx
    STA $0BC9                       ; $A6B0D8  8D C9 0B     Mx
    LDA #$0019                      ; $A6B0DB  A9 19 00     Mx
    STA $094A                       ; $A6B0DE  8D 4A 09     Mx
L_A6B0E1:
    JMP L_A6B12F                    ; $A6B0E1  4C 2F B1     Mx
L_A6B0E4:
    LDA $0952                       ; $A6B0E4  AD 52 09     Mx
    BEQ L_A6B0EF                    ; $A6B0E7  F0 06        Mx
    LDA #$0001                      ; $A6B0E9  A9 01 00     Mx
    STA $0950                       ; $A6B0EC  8D 50 09     Mx
L_A6B0EF:
    JSR L_A6D1C7                    ; $A6B0EF  20 C7 D1     Mx
    LDA $08C4                       ; $A6B0F2  AD C4 08     Mx
    CMP #$002E                      ; $A6B0F5  C9 2E 00     Mx
    BEQ L_A6B129                    ; $A6B0F8  F0 2F        Mx
    LDA #$000C                      ; $A6B0FA  A9 0C 00     Mx
    JMP L_A6B111                    ; $A6B0FD  4C 11 B1     Mx
L_A6B100:
    LDA $08F2                       ; $A6B100  AD F2 08     Mx
    BEQ L_A6B10E                    ; $A6B103  F0 09        Mx
    LDA #$0003                      ; $A6B105  A9 03 00     Mx
    STA $08CC                       ; $A6B108  8D CC 08     Mx
    JMP L_A6B12F                    ; $A6B10B  4C 2F B1     Mx
L_A6B10E:
    LDA #$0000                      ; $A6B10E  A9 00 00     Mx
L_A6B111:
    STA $08C4                       ; $A6B111  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B114  A9 FF FF     Mx
    STA $08CA                       ; $A6B117  8D CA 08     Mx
    STZ $08CC                       ; $A6B11A  9C CC 08     Mx
    STZ $0912                       ; $A6B11D  9C 12 09     Mx
    STZ $08C8                       ; $A6B120  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B123  A9 F8 FF     Mx
    STA $08CE                       ; $A6B126  8D CE 08     Mx
L_A6B129:
    LDA #$0014                      ; $A6B129  A9 14 00     Mx
    STA $0948                       ; $A6B12C  8D 48 09     Mx
L_A6B12F:
    RTS                             ; $A6B12F  60           Mx
L_A6B130:
    LDA $08CA                       ; $A6B130  AD CA 08     Mx
    CMP #$0005                      ; $A6B133  C9 05 00     Mx
    BEQ L_A6B145                    ; $A6B136  F0 0D        Mx
    CMP #$0004                      ; $A6B138  C9 04 00     Mx
    BNE L_A6B18B                    ; $A6B13B  D0 4E        Mx
    LDA $0C19                       ; $A6B13D  AD 19 0C     Mx
    BNE L_A6B14D                    ; $A6B140  D0 0B        Mx
    JMP L_A6B18B                    ; $A6B142  4C 8B B1     Mx
L_A6B145:
    LDA $08CC                       ; $A6B145  AD CC 08     Mx
    BNE L_A6B18B                    ; $A6B148  D0 41        Mx
    JMP L_A6B16A                    ; $A6B14A  4C 6A B1     Mx
L_A6B14D:
    LDA $0964                       ; $A6B14D  AD 64 09     Mx
    BEQ L_A6B167                    ; $A6B150  F0 15        Mx
    LDA #$0002                      ; $A6B152  A9 02 00     Mx
    STA $0BBF                       ; $A6B155  8D BF 0B     Mx
    STZ $0BC1                       ; $A6B158  9C C1 0B     Mx
    LDX $08C6                       ; $A6B15B  AE C6 08     Mx
    STZ $0BC9                       ; $A6B15E  9C C9 0B     Mx
    LDA #$0019                      ; $A6B161  A9 19 00     Mx
    STA $094A                       ; $A6B164  8D 4A 09     Mx
L_A6B167:
    JMP L_A6B18B                    ; $A6B167  4C 8B B1     Mx
L_A6B16A:
    LDA #$0000                      ; $A6B16A  A9 00 00     Mx
    STA $08C4                       ; $A6B16D  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B170  A9 FF FF     Mx
    STA $08CA                       ; $A6B173  8D CA 08     Mx
    STZ $08CC                       ; $A6B176  9C CC 08     Mx
    STZ $0912                       ; $A6B179  9C 12 09     Mx
    STZ $08C8                       ; $A6B17C  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B17F  A9 F8 FF     Mx
    STA $08CE                       ; $A6B182  8D CE 08     Mx
    LDA #$0014                      ; $A6B185  A9 14 00     Mx
    STA $0948                       ; $A6B188  8D 48 09     Mx
L_A6B18B:
    RTS                             ; $A6B18B  60           Mx
L_A6B18C:
    LDA $08CA                       ; $A6B18C  AD CA 08     Mx
    CMP #$0001                      ; $A6B18F  C9 01 00     Mx
    BEQ L_A6B1D3                    ; $A6B192  F0 3F        Mx
    CMP #$0002                      ; $A6B194  C9 02 00     Mx
    BEQ L_A6B1E8                    ; $A6B197  F0 4F        Mx
    CMP #$0005                      ; $A6B199  C9 05 00     Mx
    BEQ L_A6B1CB                    ; $A6B19C  F0 2D        Mx
    CMP #$0003                      ; $A6B19E  C9 03 00     Mx
    BNE L_A6B1B8                    ; $A6B1A1  D0 15        Mx
    LDA $08C4                       ; $A6B1A3  AD C4 08     Mx
    CMP #$001A                      ; $A6B1A6  C9 1A 00     Mx
    BEQ L_A6B1CB                    ; $A6B1A9  F0 20        Mx
    CMP #$003E                      ; $A6B1AB  C9 3E 00     Mx
    BEQ L_A6B1CB                    ; $A6B1AE  F0 1B        Mx
    CMP #$0040                      ; $A6B1B0  C9 40 00     Mx
    BEQ L_A6B1CB                    ; $A6B1B3  F0 16        Mx
    JMP L_A6B26E                    ; $A6B1B5  4C 6E B2     Mx
L_A6B1B8:
    CMP #$0002                      ; $A6B1B8  C9 02 00     Mx
    BEQ L_A6B1C0                    ; $A6B1BB  F0 03        Mx
L_A6B1BD:
    JMP L_A6B26E                    ; $A6B1BD  4C 6E B2     Mx
L_A6B1C0:
    LDA $08C4                       ; $A6B1C0  AD C4 08     Mx
L_A6B1C3:
    CMP #$0012                      ; $A6B1C3  C9 12 00     Mx
    BEQ L_A6B1CB                    ; $A6B1C6  F0 03        Mx
    JMP L_A6B26E                    ; $A6B1C8  4C 6E B2     Mx
L_A6B1CB:
    LDA $08CC                       ; $A6B1CB  AD CC 08     Mx
    BNE L_A6B1BD                    ; $A6B1CE  D0 ED        Mx
    JMP L_A6B253                    ; $A6B1D0  4C 53 B2     Mx
L_A6B1D3:
    LDA $08C4                       ; $A6B1D3  AD C4 08     Mx
    CMP #$0012                      ; $A6B1D6  C9 12 00     Mx
    BEQ L_A6B1FA                    ; $A6B1D9  F0 1F        Mx
    CMP #$003E                      ; $A6B1DB  C9 3E 00     Mx
    BEQ L_A6B1FA                    ; $A6B1DE  F0 1A        Mx
    CMP #$0040                      ; $A6B1E0  C9 40 00     Mx
    BEQ L_A6B1FA                    ; $A6B1E3  F0 15        Mx
    JMP L_A6B26E                    ; $A6B1E5  4C 6E B2     Mx
L_A6B1E8:
    LDA $08C4                       ; $A6B1E8  AD C4 08     Mx
    CMP #$000A                      ; $A6B1EB  C9 0A 00     Mx
    BEQ L_A6B1FA                    ; $A6B1EE  F0 0A        Mx
    CMP #$001A                      ; $A6B1F0  C9 1A 00     Mx
    BEQ L_A6B1FA                    ; $A6B1F3  F0 05        Mx
    CMP #$0016                      ; $A6B1F5  C9 16 00     Mx
    BNE L_A6B1C3                    ; $A6B1F8  D0 C9        Mx
L_A6B1FA:
    LDA $08CC                       ; $A6B1FA  AD CC 08     Mx
    BEQ L_A6B202                    ; $A6B1FD  F0 03        Mx
    JMP L_A6B26E                    ; $A6B1FF  4C 6E B2     Mx
L_A6B202:
    LDA $0C19                       ; $A6B202  AD 19 0C     Mx
    CMP $08C0                       ; $A6B205  CD C0 08     Mx
    BNE L_A6B26E                    ; $A6B208  D0 64        Mx
    LDA $0956                       ; $A6B20A  AD 56 09     Mx
    STA $00A4                       ; $A6B20D  8D A4 00     Mx
    LDA $08F2                       ; $A6B210  AD F2 08     Mx
    STA $00A6                       ; $A6B213  8D A6 00     Mx
    LDA $0A5C                       ; $A6B216  AD 5C 0A     Mx
    STA $0B88                       ; $A6B219  8D 88 0B     Mx
    LDA $09D6                       ; $A6B21C  AD D6 09     Mx
    STA $00AA                       ; $A6B21F  8D AA 00     Mx
    LDA $09DA                       ; $A6B222  AD DA 09     Mx
    STA $00AC                       ; $A6B225  8D AC 00     Mx
    LDA $09DE                       ; $A6B228  AD DE 09     Mx
    STA $00AE                       ; $A6B22B  8D AE 00     Mx
    LDA $09E1                       ; $A6B22E  AD E1 09     Mx
    STA $00A8                       ; $A6B231  8D A8 00     Mx
    LDA $09E9                       ; $A6B234  AD E9 09     Mx
    STA $00B0                       ; $A6B237  8D B0 00     Mx
    JSL L_A7DCCB                    ; $A6B23A  22 CB DC A7  Mx
    LDA $00DC                       ; $A6B23E  AD DC 00     Mx
    STA $0A5A                       ; $A6B241  8D 5A 0A     Mx
    LDA #$0019                      ; $A6B244  A9 19 00     Mx
    STA $094A                       ; $A6B247  8D 4A 09     Mx
    LDA #$0014                      ; $A6B24A  A9 14 00     Mx
    STA $0948                       ; $A6B24D  8D 48 09     Mx
    JMP L_A6B26E                    ; $A6B250  4C 6E B2     Mx
L_A6B253:
    LDA #$0000                      ; $A6B253  A9 00 00     Mx
    STA $08C4                       ; $A6B256  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B259  A9 FF FF     Mx
    STA $08CA                       ; $A6B25C  8D CA 08     Mx
    STZ $08CC                       ; $A6B25F  9C CC 08     Mx
    STZ $0912                       ; $A6B262  9C 12 09     Mx
    STZ $08C8                       ; $A6B265  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B268  A9 F8 FF     Mx
    STA $08CE                       ; $A6B26B  8D CE 08     Mx
L_A6B26E:
    RTS                             ; $A6B26E  60           Mx
L_A6B26F:
    LDA $0C19                       ; $A6B26F  AD 19 0C     Mx
    CMP $08C0                       ; $A6B272  CD C0 08     Mx
    BEQ L_A6B27D                    ; $A6B275  F0 06        Mx
    LDA #$0000                      ; $A6B277  A9 00 00     Mx
    JMP L_A6B28D                    ; $A6B27A  4C 8D B2     Mx
L_A6B27D:
    LDA $093C                       ; $A6B27D  AD 3C 09     Mx
    AND #$0F00                      ; $A6B280  29 00 0F     Mx
    BEQ L_A6B2E6                    ; $A6B283  F0 61        Mx
L_A6B285:
    LDA $0950                       ; $A6B285  AD 50 09     Mx
    BNE L_A6B2A8                    ; $A6B288  D0 1E        Mx
    LDA #$0004                      ; $A6B28A  A9 04 00     Mx
L_A6B28D:
    STA $08C4                       ; $A6B28D  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B290  A9 FF FF     Mx
    STA $08CA                       ; $A6B293  8D CA 08     Mx
    STZ $08CC                       ; $A6B296  9C CC 08     Mx
    STZ $0912                       ; $A6B299  9C 12 09     Mx
    STZ $08C8                       ; $A6B29C  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B29F  A9 F8 FF     Mx
    STA $08CE                       ; $A6B2A2  8D CE 08     Mx
    JMP L_A6B318                    ; $A6B2A5  4C 18 B3     Mx
L_A6B2A8:
    LDA $08D8                       ; $A6B2A8  AD D8 08     Mx
    STA $00A4                       ; $A6B2AB  8D A4 00     Mx
    LDX $08D8                       ; $A6B2AE  AE D8 08     Mx
    LDA $A7E35F,X                   ; $A6B2B1  BF 5F E3 A7  Mx
    STA $00EA                       ; $A6B2B5  8D EA 00     Mx
    SEP #$20                        ; $A6B2B8  E2 20        Mx
    LDA $093D                       ; $A6B2BA  AD 3D 09     mx
    AND #$0F                        ; $A6B2BD  29 0F        mx
    BNE L_A6B2C4                    ; $A6B2BF  D0 03        mx
    LDA $00EA                       ; $A6B2C1  AD EA 00     mx
L_A6B2C4:
    TAX                             ; $A6B2C4  AA           mx
    LDA $A7E367,X                   ; $A6B2C5  BF 67 E3 A7  mx
    AND #$07                        ; $A6B2C9  29 07        mx
    STA $08D8                       ; $A6B2CB  8D D8 08     mx
    REP #$20                        ; $A6B2CE  C2 20        mx
    LDA $08D8                       ; $A6B2D0  AD D8 08     Mx
    CMP $00A4                       ; $A6B2D3  CD A4 00     Mx
    BEQ L_A6B2DE                    ; $A6B2D6  F0 06        Mx
    LDA #$003C                      ; $A6B2D8  A9 3C 00     Mx
    STA $08C6                       ; $A6B2DB  8D C6 08     Mx
L_A6B2DE:
    LDA $08C6                       ; $A6B2DE  AD C6 08     Mx
    BNE L_A6B2FA                    ; $A6B2E1  D0 17        Mx
    JMP L_A6B318                    ; $A6B2E3  4C 18 B3     Mx
L_A6B2E6:
    LDA $08FA                       ; $A6B2E6  AD FA 08     Mx
    ORA $08F8                       ; $A6B2E9  0D F8 08     Mx
    ORA $0902                       ; $A6B2EC  0D 02 09     Mx
    ORA $0900                       ; $A6B2EF  0D 00 09     Mx
    ORA $08FE                       ; $A6B2F2  0D FE 08     Mx
    ORA $08FC                       ; $A6B2F5  0D FC 08     Mx
    BNE L_A6B285                    ; $A6B2F8  D0 8B        Mx
L_A6B2FA:
    DEC $08C6                       ; $A6B2FA  CE C6 08     Mx
    BEQ L_A6B307                    ; $A6B2FD  F0 08        Mx
    LDA $08C6                       ; $A6B2FF  AD C6 08     Mx
    BNE L_A6B318                    ; $A6B302  D0 14        Mx
    JMP L_A6B307                    ; $A6B304  4C 07 B3     Mx
L_A6B307:
    LDA $0926                       ; $A6B307  AD 26 09     Mx
    TAX                             ; $A6B30A  AA           Mx
    LDA $A7E377,X                   ; $A6B30B  BF 77 E3 A7  Mx
    AND #$00FF                      ; $A6B30F  29 FF 00     Mx
    AND #$0007                      ; $A6B312  29 07 00     Mx
    STA $08D8                       ; $A6B315  8D D8 08     Mx
L_A6B318:
    LDA $0940                       ; $A6B318  AD 40 09     Mx
    BNE L_A6B320                    ; $A6B31B  D0 03        Mx
    JMP L_A6B326                    ; $A6B31D  4C 26 B3     Mx
L_A6B320:
    JSR L_A6D582                    ; $A6B320  20 82 D5     Mx
    JMP L_A6B32E                    ; $A6B323  4C 2E B3     Mx
L_A6B326:
    LDA $0944                       ; $A6B326  AD 44 09     Mx
    BEQ L_A6B32E                    ; $A6B329  F0 03        Mx
    JSR L_A6D247                    ; $A6B32B  20 47 D2     Mx
L_A6B32E:
    RTS                             ; $A6B32E  60           Mx
L_A6B32F:
    LDA $08CA                       ; $A6B32F  AD CA 08     Mx
    CMP #$0003                      ; $A6B332  C9 03 00     Mx
    BNE L_A6B33A                    ; $A6B335  D0 03        Mx
    JMP L_A6B3B0                    ; $A6B337  4C B0 B3     Mx
L_A6B33A:
    BCS L_A6B33F                    ; $A6B33A  B0 03        Mx
    JMP L_A6B428                    ; $A6B33C  4C 28 B4     Mx
L_A6B33F:
    LDA $08E4                       ; $A6B33F  AD E4 08     Mx
    BPL L_A6B3A1                    ; $A6B342  10 5D        Mx
L_A6B344:
    STZ $08F2                       ; $A6B344  9C F2 08     Mx
    STZ $08F0                       ; $A6B347  9C F0 08     Mx
    STZ $08E4                       ; $A6B34A  9C E4 08     Mx
    STZ $08E6                       ; $A6B34D  9C E6 08     Mx
    STZ $08FE                       ; $A6B350  9C FE 08     Mx
    STZ $08FC                       ; $A6B353  9C FC 08     Mx
    LDA $08CA                       ; $A6B356  AD CA 08     Mx
    CMP #$0008                      ; $A6B359  C9 08 00     Mx
    BEQ L_A6B361                    ; $A6B35C  F0 03        Mx
    JMP L_A6B428                    ; $A6B35E  4C 28 B4     Mx
L_A6B361:
    LDA $0964                       ; $A6B361  AD 64 09     Mx
    BEQ L_A6B377                    ; $A6B364  F0 11        Mx
    JSR L_A6D1C7                    ; $A6B366  20 C7 D1     Mx
    LDA $08C4                       ; $A6B369  AD C4 08     Mx
    CMP #$002E                      ; $A6B36C  C9 2E 00     Mx
    BEQ L_A6B392                    ; $A6B36F  F0 21        Mx
    LDA #$000C                      ; $A6B371  A9 0C 00     Mx
    JMP L_A6B37A                    ; $A6B374  4C 7A B3     Mx
L_A6B377:
    LDA #$0000                      ; $A6B377  A9 00 00     Mx
L_A6B37A:
    STA $08C4                       ; $A6B37A  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B37D  A9 FF FF     Mx
    STA $08CA                       ; $A6B380  8D CA 08     Mx
    STZ $08CC                       ; $A6B383  9C CC 08     Mx
    STZ $0912                       ; $A6B386  9C 12 09     Mx
    STZ $08C8                       ; $A6B389  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B38C  A9 F8 FF     Mx
    STA $08CE                       ; $A6B38F  8D CE 08     Mx
L_A6B392:
    STZ $08FA                       ; $A6B392  9C FA 08     Mx
    STZ $08F8                       ; $A6B395  9C F8 08     Mx
    STZ $0902                       ; $A6B398  9C 02 09     Mx
    STZ $0900                       ; $A6B39B  9C 00 09     Mx
    JMP L_A6B428                    ; $A6B39E  4C 28 B4     Mx
L_A6B3A1:
    LDA $08E4                       ; $A6B3A1  AD E4 08     Mx
    BNE L_A6B3B0                    ; $A6B3A4  D0 0A        Mx
    LDA $08FE                       ; $A6B3A6  AD FE 08     Mx
    BMI L_A6B344                    ; $A6B3A9  30 99        Mx
    ORA $08FC                       ; $A6B3AB  0D FC 08     Mx
    BEQ L_A6B344                    ; $A6B3AE  F0 94        Mx
L_A6B3B0:
    LDA $0904                       ; $A6B3B0  AD 04 09     Mx
    BEQ L_A6B3DC                    ; $A6B3B3  F0 27        Mx
    LDA $0904                       ; $A6B3B5  AD 04 09     Mx
    STA $08FE                       ; $A6B3B8  8D FE 08     Mx
    LDA $0906                       ; $A6B3BB  AD 06 09     Mx
    STA $08FC                       ; $A6B3BE  8D FC 08     Mx
    LDA $0908                       ; $A6B3C1  AD 08 09     Mx
    STA $08FA                       ; $A6B3C4  8D FA 08     Mx
    LDA $090A                       ; $A6B3C7  AD 0A 09     Mx
    STA $08F8                       ; $A6B3CA  8D F8 08     Mx
    LDA $090C                       ; $A6B3CD  AD 0C 09     Mx
    STA $0902                       ; $A6B3D0  8D 02 09     Mx
    LDA $090E                       ; $A6B3D3  AD 0E 09     Mx
    STA $0900                       ; $A6B3D6  8D 00 09     Mx
    STZ $0904                       ; $A6B3D9  9C 04 09     Mx
L_A6B3DC:
    LDA $08FC                       ; $A6B3DC  AD FC 08     Mx
    SEC                             ; $A6B3DF  38           Mx
    SBC #$2500                      ; $A6B3E0  E9 00 25     Mx
    STA $08FC                       ; $A6B3E3  8D FC 08     Mx
    LDA $08FE                       ; $A6B3E6  AD FE 08     Mx
    SBC #$0000                      ; $A6B3E9  E9 00 00     Mx
    STA $08FE                       ; $A6B3EC  8D FE 08     Mx
    LDA $08CA                       ; $A6B3EF  AD CA 08     Mx
    CMP #$0007                      ; $A6B3F2  C9 07 00     Mx
    BEQ L_A6B422                    ; $A6B3F5  F0 2B        Mx
    CMP #$0003                      ; $A6B3F7  C9 03 00     Mx
    BNE L_A6B428                    ; $A6B3FA  D0 2C        Mx
    LDA $08FC                       ; $A6B3FC  AD FC 08     Mx
    SEC                             ; $A6B3FF  38           Mx
    SBC #$9A00                      ; $A6B400  E9 00 9A     Mx
    LDA $08FE                       ; $A6B403  AD FE 08     Mx
    SBC #$0002                      ; $A6B406  E9 02 00     Mx
    BPL L_A6B422                    ; $A6B409  10 17        Mx
    LDA $08CC                       ; $A6B40B  AD CC 08     Mx
    BNE L_A6B428                    ; $A6B40E  D0 18        Mx
    LDA $08CA                       ; $A6B410  AD CA 08     Mx
    CMP #$0003                      ; $A6B413  C9 03 00     Mx
    BNE L_A6B428                    ; $A6B416  D0 10        Mx
    LDA #$0008                      ; $A6B418  A9 08 00     Mx
    JSL L_BDFDF3                    ; $A6B41B  22 F3 FD BD  Mx
    JMP L_A6B428                    ; $A6B41F  4C 28 B4     Mx
L_A6B422:
    LDA #$0001                      ; $A6B422  A9 01 00     Mx
    STA $08CC                       ; $A6B425  8D CC 08     Mx
L_A6B428:
    RTS                             ; $A6B428  60           Mx
L_A6B429:
    LDA $08E4                       ; $A6B429  AD E4 08     Mx
    BPL L_A6B4AC                    ; $A6B42C  10 7E        Mx
L_A6B42E:
    STZ $08F2                       ; $A6B42E  9C F2 08     Mx
    STZ $08F0                       ; $A6B431  9C F0 08     Mx
    STZ $08E4                       ; $A6B434  9C E4 08     Mx
    STZ $08E6                       ; $A6B437  9C E6 08     Mx
    STZ $08FE                       ; $A6B43A  9C FE 08     Mx
    STZ $08FC                       ; $A6B43D  9C FC 08     Mx
    LDA $08CA                       ; $A6B440  AD CA 08     Mx
    CMP #$0004                      ; $A6B443  C9 04 00     Mx
    BEQ L_A6B45B                    ; $A6B446  F0 13        Mx
    CMP #$0003                      ; $A6B448  C9 03 00     Mx
    BEQ L_A6B450                    ; $A6B44B  F0 03        Mx
    JMP L_A6B59D                    ; $A6B44D  4C 9D B5     Mx
L_A6B450:
    LDA $08C4                       ; $A6B450  AD C4 08     Mx
    CMP #$0020                      ; $A6B453  C9 20 00     Mx
    BEQ L_A6B45B                    ; $A6B456  F0 03        Mx
    JMP L_A6B59D                    ; $A6B458  4C 9D B5     Mx
L_A6B45B:
    LDA $08C0                       ; $A6B45B  AD C0 08     Mx
    AND #$00FF                      ; $A6B45E  29 FF 00     Mx
    CMP $0A9C                       ; $A6B461  CD 9C 0A     Mx
    BNE L_A6B469                    ; $A6B464  D0 03        Mx
    STZ $0A9C                       ; $A6B466  9C 9C 0A     Mx
L_A6B469:
    LDA $0964                       ; $A6B469  AD 64 09     Mx
    BEQ L_A6B482                    ; $A6B46C  F0 14        Mx
    STZ $0950                       ; $A6B46E  9C 50 09     Mx
    JSR L_A6D1C7                    ; $A6B471  20 C7 D1     Mx
    LDA $08C4                       ; $A6B474  AD C4 08     Mx
    CMP #$002E                      ; $A6B477  C9 2E 00     Mx
    BEQ L_A6B49D                    ; $A6B47A  F0 21        Mx
    LDA #$000C                      ; $A6B47C  A9 0C 00     Mx
    JMP L_A6B485                    ; $A6B47F  4C 85 B4     Mx
L_A6B482:
    LDA #$0000                      ; $A6B482  A9 00 00     Mx
L_A6B485:
    STA $08C4                       ; $A6B485  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B488  A9 FF FF     Mx
    STA $08CA                       ; $A6B48B  8D CA 08     Mx
    STZ $08CC                       ; $A6B48E  9C CC 08     Mx
    STZ $0912                       ; $A6B491  9C 12 09     Mx
    STZ $08C8                       ; $A6B494  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B497  A9 F8 FF     Mx
    STA $08CE                       ; $A6B49A  8D CE 08     Mx
L_A6B49D:
    STZ $08FA                       ; $A6B49D  9C FA 08     Mx
    STZ $08F8                       ; $A6B4A0  9C F8 08     Mx
    STZ $0902                       ; $A6B4A3  9C 02 09     Mx
    STZ $0900                       ; $A6B4A6  9C 00 09     Mx
    JMP L_A6B59D                    ; $A6B4A9  4C 9D B5     Mx
L_A6B4AC:
    LDA $08E4                       ; $A6B4AC  AD E4 08     Mx
    BNE L_A6B4BE                    ; $A6B4AF  D0 0D        Mx
    LDA $08FE                       ; $A6B4B1  AD FE 08     Mx
    BMI L_A6B4BB                    ; $A6B4B4  30 05        Mx
    ORA $08FC                       ; $A6B4B6  0D FC 08     Mx
    BNE L_A6B4BE                    ; $A6B4B9  D0 03        Mx
L_A6B4BB:
    JMP L_A6B42E                    ; $A6B4BB  4C 2E B4     Mx
L_A6B4BE:
    LDA $08FC                       ; $A6B4BE  AD FC 08     Mx
    SEC                             ; $A6B4C1  38           Mx
    SBC #$2500                      ; $A6B4C2  E9 00 25     Mx
    STA $08FC                       ; $A6B4C5  8D FC 08     Mx
    LDA $08FE                       ; $A6B4C8  AD FE 08     Mx
    SBC #$0000                      ; $A6B4CB  E9 00 00     Mx
    STA $08FE                       ; $A6B4CE  8D FE 08     Mx
    LDA $0CCB                       ; $A6B4D1  AD CB 0C     Mx
    BEQ L_A6B4DB                    ; $A6B4D4  F0 05        Mx
    LDA $0964                       ; $A6B4D6  AD 64 09     Mx
    BNE L_A6B4DE                    ; $A6B4D9  D0 03        Mx
L_A6B4DB:
    JMP L_A6B55D                    ; $A6B4DB  4C 5D B5     Mx
L_A6B4DE:
    LDA $08C4                       ; $A6B4DE  AD C4 08     Mx
    CMP #$0022                      ; $A6B4E1  C9 22 00     Mx
    BNE L_A6B55D                    ; $A6B4E4  D0 77        Mx
    LDA $0924                       ; $A6B4E6  AD 24 09     Mx
    CMP #$0040                      ; $A6B4E9  C9 40 00     Mx
    BCS L_A6B55D                    ; $A6B4EC  B0 6F        Mx
    LDA $0940                       ; $A6B4EE  AD 40 09     Mx
    BEQ L_A6B55D                    ; $A6B4F1  F0 6A        Mx
    EOR $0942                       ; $A6B4F3  4D 42 09     Mx
    BEQ L_A6B55D                    ; $A6B4F6  F0 65        Mx
    LDX $0926                       ; $A6B4F8  AE 26 09     Mx
    LDA $A7E377,X                   ; $A6B4FB  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6B4FF  29 07 00     Mx
    BEQ L_A6B55D                    ; $A6B502  F0 59        Mx
    STA $08D8                       ; $A6B504  8D D8 08     Mx
    STA $08DA                       ; $A6B507  8D DA 08     Mx
    ASL                             ; $A6B50A  0A           Mx
    TAX                             ; $A6B50B  AA           Mx
    LDA #$24D3                      ; $A6B50C  A9 D3 24     Mx
    STA $00D1                       ; $A6B50F  8D D1 00     Mx
    STZ $08CC                       ; $A6B512  9C CC 08     Mx
    LDA $24D3F6,X                   ; $A6B515  BF F6 D3 24  Mx
    STA $096E                       ; $A6B519  8D 6E 09     Mx
    STA $00D0                       ; $A6B51C  8D D0 00     Mx
    LDA #$0008                      ; $A6B51F  A9 08 00     Mx
    STA $0970                       ; $A6B522  8D 70 09     Mx
    STZ $08DE                       ; $A6B525  9C DE 08     Mx
    LDA #$0082                      ; $A6B528  A9 82 00     Mx
    STA $096C                       ; $A6B52B  8D 6C 09     Mx
    LDA #$0008                      ; $A6B52E  A9 08 00     Mx
    STA $08C8                       ; $A6B531  8D C8 08     Mx
    LDY $0970                       ; $A6B534  AC 70 09     Mx
    LDA [$D0],Y                     ; $A6B537  B7 D0        Mx
    STA $08CC                       ; $A6B539  8D CC 08     Mx
    INY                             ; $A6B53C  C8           Mx
    INY                             ; $A6B53D  C8           Mx
    LDA [$D0],Y                     ; $A6B53E  B7 D0        Mx
    STA $08CE                       ; $A6B540  8D CE 08     Mx
    STZ $08CA                       ; $A6B543  9C CA 08     Mx
    INY                             ; $A6B546  C8           Mx
    INY                             ; $A6B547  C8           Mx
    STY $0970                       ; $A6B548  8C 70 09     Mx
    STZ $08C6                       ; $A6B54B  9C C6 08     Mx
    LDA #$003A                      ; $A6B54E  A9 3A 00     Mx
    STA $08C4                       ; $A6B551  8D C4 08     Mx
    LDA #$0002                      ; $A6B554  A9 02 00     Mx
    STA $0C3B                       ; $A6B557  8D 3B 0C     Mx
    JMP L_A6B59D                    ; $A6B55A  4C 9D B5     Mx
L_A6B55D:
    LDA $08C4                       ; $A6B55D  AD C4 08     Mx
    CMP #$0022                      ; $A6B560  C9 22 00     Mx
    BNE L_A6B58F                    ; $A6B563  D0 2A        Mx
    LDA $08CA                       ; $A6B565  AD CA 08     Mx
    BNE L_A6B57C                    ; $A6B568  D0 12        Mx
    LDA $08FC                       ; $A6B56A  AD FC 08     Mx
    SEC                             ; $A6B56D  38           Mx
    SBC #$9A00                      ; $A6B56E  E9 00 9A     Mx
    LDA $08FE                       ; $A6B571  AD FE 08     Mx
    SBC #$0002                      ; $A6B574  E9 02 00     Mx
    BPL L_A6B597                    ; $A6B577  10 1E        Mx
    JMP L_A6B59D                    ; $A6B579  4C 9D B5     Mx
L_A6B57C:
    CMP #$0002                      ; $A6B57C  C9 02 00     Mx
    BNE L_A6B587                    ; $A6B57F  D0 06        Mx
    LDA $0964                       ; $A6B581  AD 64 09     Mx
    JMP L_A6B597                    ; $A6B584  4C 97 B5     Mx
L_A6B587:
    CMP #$0003                      ; $A6B587  C9 03 00     Mx
    BEQ L_A6B597                    ; $A6B58A  F0 0B        Mx
    JMP L_A6B59D                    ; $A6B58C  4C 9D B5     Mx
L_A6B58F:
    LDA $08CA                       ; $A6B58F  AD CA 08     Mx
    CMP #$0002                      ; $A6B592  C9 02 00     Mx
    BNE L_A6B59D                    ; $A6B595  D0 06        Mx
L_A6B597:
    LDA #$0001                      ; $A6B597  A9 01 00     Mx
    STA $08CC                       ; $A6B59A  8D CC 08     Mx
L_A6B59D:
    RTS                             ; $A6B59D  60           Mx
L_A6B59E:
    STZ $08FA                       ; $A6B59E  9C FA 08     Mx
    STZ $08F8                       ; $A6B5A1  9C F8 08     Mx
    STZ $0902                       ; $A6B5A4  9C 02 09     Mx
    STZ $0900                       ; $A6B5A7  9C 00 09     Mx
    STZ $08FE                       ; $A6B5AA  9C FE 08     Mx
    STZ $08FC                       ; $A6B5AD  9C FC 08     Mx
    LDA $0964                       ; $A6B5B0  AD 64 09     Mx
    BEQ L_A6B5D3                    ; $A6B5B3  F0 1E        Mx
    LDA #$000C                      ; $A6B5B5  A9 0C 00     Mx
    STA $08C4                       ; $A6B5B8  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B5BB  A9 FF FF     Mx
    STA $08CA                       ; $A6B5BE  8D CA 08     Mx
    STZ $08CC                       ; $A6B5C1  9C CC 08     Mx
    STZ $0912                       ; $A6B5C4  9C 12 09     Mx
    STZ $08C8                       ; $A6B5C7  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B5CA  A9 F8 FF     Mx
    STA $08CE                       ; $A6B5CD  8D CE 08     Mx
    JMP L_A6B611                    ; $A6B5D0  4C 11 B6     Mx
L_A6B5D3:
    LDA $092E                       ; $A6B5D3  AD 2E 09     Mx
    TAX                             ; $A6B5D6  AA           Mx
    LDA $A7E377,X                   ; $A6B5D7  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6B5DB  29 07 00     Mx
    STA $08D8                       ; $A6B5DE  8D D8 08     Mx
    ASL                             ; $A6B5E1  0A           Mx
    TAX                             ; $A6B5E2  AA           Mx
    LDA $08CA                       ; $A6B5E3  AD CA 08     Mx
    CMP #$0003                      ; $A6B5E6  C9 03 00     Mx
    BNE L_A6B5F0                    ; $A6B5E9  D0 05        Mx
    LDX $0944                       ; $A6B5EB  AE 44 09     Mx
    BEQ L_A6B5F6                    ; $A6B5EE  F0 06        Mx
L_A6B5F0:
    CMP $A7E4A9,X                   ; $A6B5F0  DF A9 E4 A7  Mx
    BCC L_A6B611                    ; $A6B5F4  90 1B        Mx
L_A6B5F6:
    LDA #$0000                      ; $A6B5F6  A9 00 00     Mx
    STA $08C4                       ; $A6B5F9  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B5FC  A9 FF FF     Mx
    STA $08CA                       ; $A6B5FF  8D CA 08     Mx
    STZ $08CC                       ; $A6B602  9C CC 08     Mx
    STZ $0912                       ; $A6B605  9C 12 09     Mx
    STZ $08C8                       ; $A6B608  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B60B  A9 F8 FF     Mx
    STA $08CE                       ; $A6B60E  8D CE 08     Mx
L_A6B611:
    RTS                             ; $A6B611  60           Mx
L_A6B612:
    STZ $08FA                       ; $A6B612  9C FA 08     Mx
    STZ $08F8                       ; $A6B615  9C F8 08     Mx
    STZ $0902                       ; $A6B618  9C 02 09     Mx
    STZ $0900                       ; $A6B61B  9C 00 09     Mx
    STZ $08FE                       ; $A6B61E  9C FE 08     Mx
    STZ $08FC                       ; $A6B621  9C FC 08     Mx
    LDA $0964                       ; $A6B624  AD 64 09     Mx
    BNE L_A6B62F                    ; $A6B627  D0 06        Mx
    LDA #$0000                      ; $A6B629  A9 00 00     Mx
    JMP L_A6B816                    ; $A6B62C  4C 16 B8     Mx
L_A6B62F:
    LDX $08D8                       ; $A6B62F  AE D8 08     Mx
    LDA $A7E503,X                   ; $A6B632  BF 03 E5 A7  Mx
    AND #$0007                      ; $A6B636  29 07 00     Mx
    STA $08D8                       ; $A6B639  8D D8 08     Mx
    LDA $08CA                       ; $A6B63C  AD CA 08     Mx
    CMP #$0008                      ; $A6B63F  C9 08 00     Mx
    BNE L_A6B647                    ; $A6B642  D0 03        Mx
    JMP L_A6B7BB                    ; $A6B644  4C BB B7     Mx
L_A6B647:
    CMP #$0004                      ; $A6B647  C9 04 00     Mx
    BEQ L_A6B64F                    ; $A6B64A  F0 03        Mx
    JMP L_A6B82E                    ; $A6B64C  4C 2E B8     Mx
L_A6B64F:
    STZ $00B0                       ; $A6B64F  9C B0 00     Mx
    LDA $0784                       ; $A6B652  AD 84 07     Mx
    BNE L_A6B65F                    ; $A6B655  D0 08        Mx
    LDA $0938                       ; $A6B657  AD 38 09     Mx
    CMP #$0020                      ; $A6B65A  C9 20 00     Mx
    BCC L_A6B662                    ; $A6B65D  90 03        Mx
L_A6B65F:
    JMP L_A6B6E6                    ; $A6B65F  4C E6 B6     Mx
L_A6B662:
    LDA $1D56                       ; $A6B662  AD 56 1D     Mx
    AND #$0003                      ; $A6B665  29 03 00     Mx
    BNE L_A6B66D                    ; $A6B668  D0 03        Mx
    JMP L_A6B6E6                    ; $A6B66A  4C E6 B6     Mx
L_A6B66D:
    LDA $0932                       ; $A6B66D  AD 32 09     Mx
    CLC                             ; $A6B670  18           Mx
    AND #$007F                      ; $A6B671  29 7F 00     Mx
    ASL                             ; $A6B674  0A           Mx
    TAX                             ; $A6B675  AA           Mx
    LDY #$00                        ; $A6B676  A0 00        Mx
    STZ $072A                       ; $A6B678  9C 2A 07     Mx
    LDA $9AABEB,X                   ; $A6B67B  BF EB AB 9A  Mx
    BPL L_A6B684                    ; $A6B67F  10 03        Mx
    DEC $072A                       ; $A6B681  CE 2A 07     Mx
L_A6B684:
    ASL                             ; $A6B684  0A           Mx
    ROL $072A                       ; $A6B685  2E 2A 07     Mx
    ASL                             ; $A6B688  0A           Mx
    ROL $072A                       ; $A6B689  2E 2A 07     Mx
    ASL                             ; $A6B68C  0A           Mx
    ROL $072A                       ; $A6B68D  2E 2A 07     Mx
    ASL                             ; $A6B690  0A           Mx
    ROL $072A                       ; $A6B691  2E 2A 07     Mx
    ASL                             ; $A6B694  0A           Mx
    ROL $072A                       ; $A6B695  2E 2A 07     Mx
    STA $0728                       ; $A6B698  8D 28 07     Mx
    LDY #$00                        ; $A6B69B  A0 00        Mx
    STZ $0732                       ; $A6B69D  9C 32 07     Mx
    LDA $9AABAB,X                   ; $A6B6A0  BF AB AB 9A  Mx
    BPL L_A6B6A9                    ; $A6B6A4  10 03        Mx
    DEC $0732                       ; $A6B6A6  CE 32 07     Mx
L_A6B6A9:
    ASL                             ; $A6B6A9  0A           Mx
    ROL $0732                       ; $A6B6AA  2E 32 07     Mx
    ASL                             ; $A6B6AD  0A           Mx
    ROL $0732                       ; $A6B6AE  2E 32 07     Mx
    ASL                             ; $A6B6B1  0A           Mx
    ROL $0732                       ; $A6B6B2  2E 32 07     Mx
    ASL                             ; $A6B6B5  0A           Mx
    ROL $0732                       ; $A6B6B6  2E 32 07     Mx
    ASL                             ; $A6B6B9  0A           Mx
    ROL $0732                       ; $A6B6BA  2E 32 07     Mx
    STA $0730                       ; $A6B6BD  8D 30 07     Mx
    LDA $0722                       ; $A6B6C0  AD 22 07     Mx
    BNE L_A6B6D1                    ; $A6B6C3  D0 0C        Mx
    LDA #$E400                      ; $A6B6C5  A9 00 E4     Mx
    STA $072C                       ; $A6B6C8  8D 2C 07     Mx
    LDA #$0002                      ; $A6B6CB  A9 02 00     Mx
    STA $072E                       ; $A6B6CE  8D 2E 07     Mx
L_A6B6D1:
    LDA #$0030                      ; $A6B6D1  A9 30 00     Mx
    STA $06F4                       ; $A6B6D4  8D F4 06     Mx
    STA $06F2                       ; $A6B6D7  8D F2 06     Mx
    LDA #$0020                      ; $A6B6DA  A9 20 00     Mx
    STA $0784                       ; $A6B6DD  8D 84 07     Mx
    LDA #$0001                      ; $A6B6E0  A9 01 00     Mx
    STA $00B0                       ; $A6B6E3  8D B0 00     Mx
L_A6B6E6:
    LDA $086C                       ; $A6B6E6  AD 6C 08     Mx
    BNE L_A6B6F3                    ; $A6B6E9  D0 08        Mx
    LDA $093A                       ; $A6B6EB  AD 3A 09     Mx
    CMP #$0020                      ; $A6B6EE  C9 20 00     Mx
    BCC L_A6B6F6                    ; $A6B6F1  90 03        Mx
L_A6B6F3:
    JMP L_A6B779                    ; $A6B6F3  4C 79 B7     Mx
L_A6B6F6:
    LDA $1D57                       ; $A6B6F6  AD 57 1D     Mx
    AND #$0003                      ; $A6B6F9  29 03 00     Mx
    BNE L_A6B701                    ; $A6B6FC  D0 03        Mx
    JMP L_A6B779                    ; $A6B6FE  4C 79 B7     Mx
L_A6B701:
    LDA $0932                       ; $A6B701  AD 32 09     Mx
    AND #$007F                      ; $A6B704  29 7F 00     Mx
    ASL                             ; $A6B707  0A           Mx
    TAX                             ; $A6B708  AA           Mx
    LDY #$00                        ; $A6B709  A0 00        Mx
    STZ $0812                       ; $A6B70B  9C 12 08     Mx
    LDA $9AABEB,X                   ; $A6B70E  BF EB AB 9A  Mx
    BPL L_A6B717                    ; $A6B712  10 03        Mx
    DEC $0812                       ; $A6B714  CE 12 08     Mx
L_A6B717:
    ASL                             ; $A6B717  0A           Mx
    ROL $0812                       ; $A6B718  2E 12 08     Mx
    ASL                             ; $A6B71B  0A           Mx
    ROL $0812                       ; $A6B71C  2E 12 08     Mx
    ASL                             ; $A6B71F  0A           Mx
    ROL $0812                       ; $A6B720  2E 12 08     Mx
    ASL                             ; $A6B723  0A           Mx
    ROL $0812                       ; $A6B724  2E 12 08     Mx
    ASL                             ; $A6B727  0A           Mx
    ROL $0812                       ; $A6B728  2E 12 08     Mx
    STA $0810                       ; $A6B72B  8D 10 08     Mx
    LDY #$00                        ; $A6B72E  A0 00        Mx
    STZ $081A                       ; $A6B730  9C 1A 08     Mx
    LDA $9AABAB,X                   ; $A6B733  BF AB AB 9A  Mx
    BPL L_A6B73C                    ; $A6B737  10 03        Mx
    DEC $081A                       ; $A6B739  CE 1A 08     Mx
L_A6B73C:
    ASL                             ; $A6B73C  0A           Mx
    ROL $081A                       ; $A6B73D  2E 1A 08     Mx
    ASL                             ; $A6B740  0A           Mx
    ROL $081A                       ; $A6B741  2E 1A 08     Mx
    ASL                             ; $A6B744  0A           Mx
    ROL $081A                       ; $A6B745  2E 1A 08     Mx
    ASL                             ; $A6B748  0A           Mx
    ROL $081A                       ; $A6B749  2E 1A 08     Mx
    ASL                             ; $A6B74C  0A           Mx
    ROL $081A                       ; $A6B74D  2E 1A 08     Mx
    STA $0818                       ; $A6B750  8D 18 08     Mx
    LDA $080A                       ; $A6B753  AD 0A 08     Mx
    BNE L_A6B764                    ; $A6B756  D0 0C        Mx
    LDA #$E400                      ; $A6B758  A9 00 E4     Mx
    STA $0814                       ; $A6B75B  8D 14 08     Mx
    LDA #$0002                      ; $A6B75E  A9 02 00     Mx
    STA $0816                       ; $A6B761  8D 16 08     Mx
L_A6B764:
    LDA #$0030                      ; $A6B764  A9 30 00     Mx
    STA $07DC                       ; $A6B767  8D DC 07     Mx
    STA $07DA                       ; $A6B76A  8D DA 07     Mx
    LDA #$0020                      ; $A6B76D  A9 20 00     Mx
    STA $086C                       ; $A6B770  8D 6C 08     Mx
    LDA #$0001                      ; $A6B773  A9 01 00     Mx
    STA $00B0                       ; $A6B776  8D B0 00     Mx
L_A6B779:
    LDA $00B0                       ; $A6B779  AD B0 00     Mx
    BEQ L_A6B7B8                    ; $A6B77C  F0 3A        Mx
    LDA #$0023                      ; $A6B77E  A9 23 00     Mx
    JSL L_BDFDF3                    ; $A6B781  22 F3 FD BD  Mx
    LDA $1D56                       ; $A6B785  AD 56 1D     Mx
    AND #$0003                      ; $A6B788  29 03 00     Mx
    BEQ L_A6B7A6                    ; $A6B78B  F0 19        Mx
    CMP #$0001                      ; $A6B78D  C9 01 00     Mx
    BNE L_A6B7B8                    ; $A6B790  D0 26        Mx
    LDA $1613                       ; $A6B792  AD 13 16     Mx
    BNE L_A6B7A4                    ; $A6B795  D0 0D        Mx
    LDA #$0010                      ; $A6B797  A9 10 00     Mx
    JSL L_BDFDF3                    ; $A6B79A  22 F3 FD BD  Mx
    LDA #$0064                      ; $A6B79E  A9 64 00     Mx
    STA $1613                       ; $A6B7A1  8D 13 16     Mx
L_A6B7A4:
    BRA L_A6B7B8                    ; $A6B7A4  80 12        Mx
L_A6B7A6:
    LDA $1611                       ; $A6B7A6  AD 11 16     Mx
    BNE L_A6B7B8                    ; $A6B7A9  D0 0D        Mx
    LDA #$0011                      ; $A6B7AB  A9 11 00     Mx
    JSL L_BDFDF3                    ; $A6B7AE  22 F3 FD BD  Mx
    LDA #$0064                      ; $A6B7B2  A9 64 00     Mx
    STA $1611                       ; $A6B7B5  8D 11 16     Mx
L_A6B7B8:
    JMP L_A6B82E                    ; $A6B7B8  4C 2E B8     Mx
L_A6B7BB:
    LDA #$000C                      ; $A6B7BB  A9 0C 00     Mx
    STA $08C4                       ; $A6B7BE  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B7C1  A9 FF FF     Mx
    STA $08CA                       ; $A6B7C4  8D CA 08     Mx
    STZ $08CC                       ; $A6B7C7  9C CC 08     Mx
    STZ $0912                       ; $A6B7CA  9C 12 09     Mx
    STZ $08C8                       ; $A6B7CD  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B7D0  A9 F8 FF     Mx
    STA $08CE                       ; $A6B7D3  8D CE 08     Mx
    LDA $0938                       ; $A6B7D6  AD 38 09     Mx
    CMP #$003C                      ; $A6B7D9  C9 3C 00     Mx
    BCS L_A6B7EB                    ; $A6B7DC  B0 0D        Mx
    CMP #$001E                      ; $A6B7DE  C9 1E 00     Mx
    BCC L_A6B803                    ; $A6B7E1  90 20        Mx
    LDA $06F4                       ; $A6B7E3  AD F4 06     Mx
    CMP #$002C                      ; $A6B7E6  C9 2C 00     Mx
    BEQ L_A6B803                    ; $A6B7E9  F0 18        Mx
L_A6B7EB:
    LDA $093A                       ; $A6B7EB  AD 3A 09     Mx
    CMP #$003C                      ; $A6B7EE  C9 3C 00     Mx
    BCS L_A6B800                    ; $A6B7F1  B0 0D        Mx
    CMP #$001E                      ; $A6B7F3  C9 1E 00     Mx
    BCC L_A6B803                    ; $A6B7F6  90 0B        Mx
    LDA $07DC                       ; $A6B7F8  AD DC 07     Mx
    CMP #$002C                      ; $A6B7FB  C9 2C 00     Mx
    BEQ L_A6B803                    ; $A6B7FE  F0 03        Mx
L_A6B800:
    JMP L_A6B82E                    ; $A6B800  4C 2E B8     Mx
L_A6B803:
    LDA $0CCB                       ; $A6B803  AD CB 0C     Mx
    CMP #$0003                      ; $A6B806  C9 03 00     Mx
    BCC L_A6B82E                    ; $A6B809  90 23        Mx
    LDA $1D56                       ; $A6B80B  AD 56 1D     Mx
    AND #$0001                      ; $A6B80E  29 01 00     Mx
    BEQ L_A6B82E                    ; $A6B811  F0 1B        Mx
    LDA #$002E                      ; $A6B813  A9 2E 00     Mx
L_A6B816:
    STA $08C4                       ; $A6B816  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B819  A9 FF FF     Mx
    STA $08CA                       ; $A6B81C  8D CA 08     Mx
    STZ $08CC                       ; $A6B81F  9C CC 08     Mx
    STZ $0912                       ; $A6B822  9C 12 09     Mx
    STZ $08C8                       ; $A6B825  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B828  A9 F8 FF     Mx
    STA $08CE                       ; $A6B82B  8D CE 08     Mx
L_A6B82E:
    RTS                             ; $A6B82E  60           Mx
L_A6B82F:
    LDA #$000A                      ; $A6B82F  A9 0A 00     Mx
    STA $0948                       ; $A6B832  8D 48 09     Mx
    LDA $08FE                       ; $A6B835  AD FE 08     Mx
    BPL L_A6B85F                    ; $A6B838  10 25        Mx
    LDA $08E4                       ; $A6B83A  AD E4 08     Mx
    BMI L_A6B844                    ; $A6B83D  30 05        Mx
    ORA $08E6                       ; $A6B83F  0D E6 08     Mx
    BNE L_A6B85F                    ; $A6B842  D0 1B        Mx
L_A6B844:
    STZ $08F2                       ; $A6B844  9C F2 08     Mx
    STZ $08F0                       ; $A6B847  9C F0 08     Mx
    STZ $08FA                       ; $A6B84A  9C FA 08     Mx
    STZ $08F8                       ; $A6B84D  9C F8 08     Mx
    STZ $0902                       ; $A6B850  9C 02 09     Mx
    STZ $0900                       ; $A6B853  9C 00 09     Mx
    STZ $08FE                       ; $A6B856  9C FE 08     Mx
    STZ $08FC                       ; $A6B859  9C FC 08     Mx
    JMP L_A6B875                    ; $A6B85C  4C 75 B8     Mx
L_A6B85F:
    LDA $08FC                       ; $A6B85F  AD FC 08     Mx
    SEC                             ; $A6B862  38           Mx
    SBC #$2500                      ; $A6B863  E9 00 25     Mx
    STA $08FC                       ; $A6B866  8D FC 08     Mx
    LDA $08FE                       ; $A6B869  AD FE 08     Mx
    SBC #$0000                      ; $A6B86C  E9 00 00     Mx
    STA $08FE                       ; $A6B86F  8D FE 08     Mx
    JMP L_A6B875                    ; $A6B872  4C 75 B8     Mx
L_A6B875:
    LDA $0954                       ; $A6B875  AD 54 09     Mx
    BEQ L_A6B89B                    ; $A6B878  F0 21        Mx
    DEC $0954                       ; $A6B87A  CE 54 09     Mx
    BNE L_A6B8F8                    ; $A6B87D  D0 79        Mx
    LDA $093C                       ; $A6B87F  AD 3C 09     Mx
    AND $09A0                       ; $A6B882  2D A0 09     Mx
    BEQ L_A6B89B                    ; $A6B885  F0 14        Mx
    LDA $0954                       ; $A6B887  AD 54 09     Mx
    CMP #$0004                      ; $A6B88A  C9 04 00     Mx
    BCC L_A6B89B                    ; $A6B88D  90 0C        Mx
    SEC                             ; $A6B88F  38           Mx
    SBC #$0008                      ; $A6B890  E9 08 00     Mx
    BCS L_A6B898                    ; $A6B893  B0 03        Mx
    LDA #$0004                      ; $A6B895  A9 04 00     Mx
L_A6B898:
    STA $0954                       ; $A6B898  8D 54 09     Mx
L_A6B89B:
    LDA $08F2                       ; $A6B89B  AD F2 08     Mx
    ORA $08F0                       ; $A6B89E  0D F0 08     Mx
    BNE L_A6B8F8                    ; $A6B8A1  D0 55        Mx
    STZ $08FA                       ; $A6B8A3  9C FA 08     Mx
    STZ $08F8                       ; $A6B8A6  9C F8 08     Mx
    STZ $0902                       ; $A6B8A9  9C 02 09     Mx
    STZ $0900                       ; $A6B8AC  9C 00 09     Mx
    LDA $08CA                       ; $A6B8AF  AD CA 08     Mx
    CMP #$0004                      ; $A6B8B2  C9 04 00     Mx
    BEQ L_A6B8BC                    ; $A6B8B5  F0 05        Mx
    CMP #$000E                      ; $A6B8B7  C9 0E 00     Mx
    BNE L_A6B930                    ; $A6B8BA  D0 74        Mx
L_A6B8BC:
    LDA $0964                       ; $A6B8BC  AD 64 09     Mx
    BEQ L_A6B8D1                    ; $A6B8BF  F0 10        Mx
    JSR L_A6D1C7                    ; $A6B8C1  20 C7 D1     Mx
    LDA $08C4                       ; $A6B8C4  AD C4 08     Mx
    CMP #$002E                      ; $A6B8C7  C9 2E 00     Mx
    BEQ L_A6B8D4                    ; $A6B8CA  F0 08        Mx
    LDA #$000C                      ; $A6B8CC  A9 0C 00     Mx
    BNE L_A6B8D4                    ; $A6B8CF  D0 03        Mx
L_A6B8D1:
    LDA #$0000                      ; $A6B8D1  A9 00 00     Mx
L_A6B8D4:
    STA $08C4                       ; $A6B8D4  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B8D7  A9 FF FF     Mx
    STA $08CA                       ; $A6B8DA  8D CA 08     Mx
    STZ $08CC                       ; $A6B8DD  9C CC 08     Mx
    STZ $0912                       ; $A6B8E0  9C 12 09     Mx
    STZ $08C8                       ; $A6B8E3  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B8E6  A9 F8 FF     Mx
    STA $08CE                       ; $A6B8E9  8D CE 08     Mx
    LDA #$003C                      ; $A6B8EC  A9 3C 00     Mx
    STA $08C6                       ; $A6B8EF  8D C6 08     Mx
    STZ $0954                       ; $A6B8F2  9C 54 09     Mx
    JMP L_A6B930                    ; $A6B8F5  4C 30 B9     Mx
L_A6B8F8:
    LDA $08CA                       ; $A6B8F8  AD CA 08     Mx
    CMP #$0004                      ; $A6B8FB  C9 04 00     Mx
    BNE L_A6B91F                    ; $A6B8FE  D0 1F        Mx
    LDA $08C6                       ; $A6B900  AD C6 08     Mx
    CMP #$0003                      ; $A6B903  C9 03 00     Mx
    BEQ L_A6B940                    ; $A6B906  F0 38        Mx
    LDA $08CC                       ; $A6B908  AD CC 08     Mx
    BNE L_A6B91F                    ; $A6B90B  D0 12        Mx
    LDA $1613                       ; $A6B90D  AD 13 16     Mx
    BNE L_A6B91F                    ; $A6B910  D0 0D        Mx
    LDA #$000F                      ; $A6B912  A9 0F 00     Mx
    JSL L_BDFDF3                    ; $A6B915  22 F3 FD BD  Mx
    LDA #$0064                      ; $A6B919  A9 64 00     Mx
    STA $1613                       ; $A6B91C  8D 13 16     Mx
L_A6B91F:
    LDA $08CA                       ; $A6B91F  AD CA 08     Mx
    CMP #$0007                      ; $A6B922  C9 07 00     Mx
    BEQ L_A6B92A                    ; $A6B925  F0 03        Mx
    JMP L_A6B930                    ; $A6B927  4C 30 B9     Mx
L_A6B92A:
    LDA #$0014                      ; $A6B92A  A9 14 00     Mx
    STA $08CC                       ; $A6B92D  8D CC 08     Mx
L_A6B930:
    LDA $08CA                       ; $A6B930  AD CA 08     Mx
    CMP #$0004                      ; $A6B933  C9 04 00     Mx
    BNE L_A6B949                    ; $A6B936  D0 11        Mx
    LDA $08C6                       ; $A6B938  AD C6 08     Mx
    CMP #$0003                      ; $A6B93B  C9 03 00     Mx
    BNE L_A6B949                    ; $A6B93E  D0 09        Mx
L_A6B940:
    STZ $0954                       ; $A6B940  9C 54 09     Mx
    LDA #$0001                      ; $A6B943  A9 01 00     Mx
    STA $08CC                       ; $A6B946  8D CC 08     Mx
L_A6B949:
    RTS                             ; $A6B949  60           Mx
L_A6B94A:
    LDA $0C19                       ; $A6B94A  AD 19 0C     Mx
    BNE L_A6B95D                    ; $A6B94D  D0 0E        Mx
    LDA $092E                       ; $A6B94F  AD 2E 09     Mx
    TAX                             ; $A6B952  AA           Mx
    LDA $A7E377,X                   ; $A6B953  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6B957  29 07 00     Mx
    STA $08D8                       ; $A6B95A  8D D8 08     Mx
L_A6B95D:
    LDA $0C19                       ; $A6B95D  AD 19 0C     Mx
    CMP $08C0                       ; $A6B960  CD C0 08     Mx
    BNE L_A6B973                    ; $A6B963  D0 0E        Mx
    LDA $0BDD                       ; $A6B965  AD DD 0B     Mx
    BEQ L_A6B973                    ; $A6B968  F0 09        Mx
    STZ $0BDD                       ; $A6B96A  9C DD 0B     Mx
    LDA #$001E                      ; $A6B96D  A9 1E 00     Mx
    STA $0BF1                       ; $A6B970  8D F1 0B     Mx
L_A6B973:
    LDA $08CA                       ; $A6B973  AD CA 08     Mx
    CMP #$0004                      ; $A6B976  C9 04 00     Mx
    BNE L_A6B9A6                    ; $A6B979  D0 2B        Mx
    LDA $0C19                       ; $A6B97B  AD 19 0C     Mx
    CMP $08C0                       ; $A6B97E  CD C0 08     Mx
    BEQ L_A6B988                    ; $A6B981  F0 05        Mx
    LDA #$0000                      ; $A6B983  A9 00 00     Mx
    BRA L_A6B98B                    ; $A6B986  80 03        Mx
L_A6B988:
    LDA #$000C                      ; $A6B988  A9 0C 00     Mx
L_A6B98B:
    STA $08C4                       ; $A6B98B  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B98E  A9 FF FF     Mx
    STA $08CA                       ; $A6B991  8D CA 08     Mx
    STZ $08CC                       ; $A6B994  9C CC 08     Mx
    STZ $0912                       ; $A6B997  9C 12 09     Mx
    STZ $08C8                       ; $A6B99A  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B99D  A9 F8 FF     Mx
    STA $08CE                       ; $A6B9A0  8D CE 08     Mx
    JSR L_A6D1C7                    ; $A6B9A3  20 C7 D1     Mx
L_A6B9A6:
    RTS                             ; $A6B9A6  60           Mx
L_A6B9A7:
    LDA $08CA                       ; $A6B9A7  AD CA 08     Mx
    CMP #$0005                      ; $A6B9AA  C9 05 00     Mx
    BNE L_A6B9E5                    ; $A6B9AD  D0 36        Mx
    LDA $08C0                       ; $A6B9AF  AD C0 08     Mx
    CMP $0C19                       ; $A6B9B2  CD 19 0C     Mx
    BNE L_A6B9C7                    ; $A6B9B5  D0 10        Mx
    JSR L_A6D1C7                    ; $A6B9B7  20 C7 D1     Mx
    LDA $08C4                       ; $A6B9BA  AD C4 08     Mx
    CMP #$002E                      ; $A6B9BD  C9 2E 00     Mx
    BEQ L_A6B9CA                    ; $A6B9C0  F0 08        Mx
    LDA #$000C                      ; $A6B9C2  A9 0C 00     Mx
    BNE L_A6B9CA                    ; $A6B9C5  D0 03        Mx
L_A6B9C7:
    LDA #$0000                      ; $A6B9C7  A9 00 00     Mx
L_A6B9CA:
    STA $08C4                       ; $A6B9CA  8D C4 08     Mx
    LDA #$FFFF                      ; $A6B9CD  A9 FF FF     Mx
    STA $08CA                       ; $A6B9D0  8D CA 08     Mx
    STZ $08CC                       ; $A6B9D3  9C CC 08     Mx
    STZ $0912                       ; $A6B9D6  9C 12 09     Mx
    STZ $08C8                       ; $A6B9D9  9C C8 08     Mx
    LDA #$FFF8                      ; $A6B9DC  A9 F8 FF     Mx
    STA $08CE                       ; $A6B9DF  8D CE 08     Mx
    JMP L_A6BFF9                    ; $A6B9E2  4C F9 BF     Mx
L_A6B9E5:
    CMP #$0003                      ; $A6B9E5  C9 03 00     Mx
    BEQ L_A6B9ED                    ; $A6B9E8  F0 03        Mx
    JMP L_A6BFF9                    ; $A6B9EA  4C F9 BF     Mx
L_A6B9ED:
    LDA $08D8                       ; $A6B9ED  AD D8 08     Mx
    ASL                             ; $A6B9F0  0A           Mx
    ASL                             ; $A6B9F1  0A           Mx
    ASL                             ; $A6B9F2  0A           Mx
    ASL                             ; $A6B9F3  0A           Mx
    CLC                             ; $A6B9F4  18           Mx
    ADC #$0008                      ; $A6B9F5  69 08 00     Mx
    STA $00D9                       ; $A6B9F8  8D D9 00     Mx
    LDA $08CC                       ; $A6B9FB  AD CC 08     Mx
    CMP #$0002                      ; $A6B9FE  C9 02 00     Mx
    BNE L_A6BA06                    ; $A6BA01  D0 03        Mx
    JMP L_A6BACF                    ; $A6BA03  4C CF BA     Mx
L_A6BA06:
    CMP #$0001                      ; $A6BA06  C9 01 00     Mx
    BEQ L_A6BA71                    ; $A6BA09  F0 66        Mx
    CMP #$0000                      ; $A6BA0B  C9 00 00     Mx
    BEQ L_A6BA13                    ; $A6BA0E  F0 03        Mx
    JMP L_A6BFF9                    ; $A6BA10  4C F9 BF     Mx
L_A6BA13:
    LDA $0A3C                       ; $A6BA13  AD 3C 0A     Mx
    BNE L_A6BA6E                    ; $A6BA16  D0 56        Mx
    LDA $0936                       ; $A6BA18  AD 36 09     Mx
    CMP #$000A                      ; $A6BA1B  C9 0A 00     Mx
    BCC L_A6BA6E                    ; $A6BA1E  90 4E        Mx
    CMP #$0028                      ; $A6BA20  C9 28 00     Mx
    BCS L_A6BA6E                    ; $A6BA23  B0 49        Mx
    LDA $0930                       ; $A6BA25  AD 30 09     Mx
    SEC                             ; $A6BA28  38           Mx
    SBC $00D9                       ; $A6BA29  ED D9 00     Mx
    BPL L_A6BA35                    ; $A6BA2C  10 07        Mx
    EOR #$FFFF                      ; $A6BA2E  49 FF FF     Mx
    CLC                             ; $A6BA31  18           Mx
    ADC #$0001                      ; $A6BA32  69 01 00     Mx
L_A6BA35:
    CMP #$0040                      ; $A6BA35  C9 40 00     Mx
    BCC L_A6BA47                    ; $A6BA38  90 0D        Mx
    SEC                             ; $A6BA3A  38           Mx
    SBC #$0080                      ; $A6BA3B  E9 80 00     Mx
    BPL L_A6BA47                    ; $A6BA3E  10 07        Mx
    EOR #$FFFF                      ; $A6BA40  49 FF FF     Mx
    CLC                             ; $A6BA43  18           Mx
    ADC #$0001                      ; $A6BA44  69 01 00     Mx
L_A6BA47:
    SEC                             ; $A6BA47  38           Mx
    SBC #$0018                      ; $A6BA48  E9 18 00     Mx
    BPL L_A6BA6E                    ; $A6BA4B  10 21        Mx
    LDA $09AC                       ; $A6BA4D  AD AC 09     Mx
    STA $00A4                       ; $A6BA50  8D A4 00     Mx
    LDA $09DA                       ; $A6BA53  AD DA 09     Mx
    STA $00A8                       ; $A6BA56  8D A8 00     Mx
    LDA #$0003                      ; $A6BA59  A9 03 00     Mx
    STA $00A6                       ; $A6BA5C  8D A6 00     Mx
    LDA $0A82                       ; $A6BA5F  AD 82 0A     Mx
    STA $00AA                       ; $A6BA62  8D AA 00     Mx
    LDA $09B0                       ; $A6BA65  AD B0 09     Mx
    STA $00AC                       ; $A6BA68  8D AC 00     Mx
    JMP L_A6BB2D                    ; $A6BA6B  4C 2D BB     Mx
L_A6BA6E:
    JMP L_A6BFF9                    ; $A6BA6E  4C F9 BF     Mx
L_A6BA71:
    LDA $0784                       ; $A6BA71  AD 84 07     Mx
    BNE L_A6BACC                    ; $A6BA74  D0 56        Mx
    LDA $0938                       ; $A6BA76  AD 38 09     Mx
    CMP #$000A                      ; $A6BA79  C9 0A 00     Mx
    BCC L_A6BA6E                    ; $A6BA7C  90 F0        Mx
    CMP #$0028                      ; $A6BA7E  C9 28 00     Mx
    BCS L_A6BACC                    ; $A6BA81  B0 49        Mx
    LDA $0932                       ; $A6BA83  AD 32 09     Mx
    SEC                             ; $A6BA86  38           Mx
    SBC $00D9                       ; $A6BA87  ED D9 00     Mx
    BPL L_A6BA93                    ; $A6BA8A  10 07        Mx
    EOR #$FFFF                      ; $A6BA8C  49 FF FF     Mx
    CLC                             ; $A6BA8F  18           Mx
    ADC #$0001                      ; $A6BA90  69 01 00     Mx
L_A6BA93:
    CMP #$0040                      ; $A6BA93  C9 40 00     Mx
    BCC L_A6BAA5                    ; $A6BA96  90 0D        Mx
    SEC                             ; $A6BA98  38           Mx
    SBC #$0080                      ; $A6BA99  E9 80 00     Mx
    BPL L_A6BAA5                    ; $A6BA9C  10 07        Mx
    EOR #$FFFF                      ; $A6BA9E  49 FF FF     Mx
    CLC                             ; $A6BAA1  18           Mx
    ADC #$0001                      ; $A6BAA2  69 01 00     Mx
L_A6BAA5:
    SEC                             ; $A6BAA5  38           Mx
    SBC #$0018                      ; $A6BAA6  E9 18 00     Mx
    BPL L_A6BACC                    ; $A6BAA9  10 21        Mx
    LDA $06F4                       ; $A6BAAB  AD F4 06     Mx
    STA $00A4                       ; $A6BAAE  8D A4 00     Mx
    LDA $0722                       ; $A6BAB1  AD 22 07     Mx
    STA $00A8                       ; $A6BAB4  8D A8 00     Mx
    LDA #$0001                      ; $A6BAB7  A9 01 00     Mx
    STA $00A6                       ; $A6BABA  8D A6 00     Mx
    LDA $07CA                       ; $A6BABD  AD CA 07     Mx
    STA $00AA                       ; $A6BAC0  8D AA 00     Mx
    LDA $06F8                       ; $A6BAC3  AD F8 06     Mx
    STA $00AC                       ; $A6BAC6  8D AC 00     Mx
    JMP L_A6BB2D                    ; $A6BAC9  4C 2D BB     Mx
L_A6BACC:
    JMP L_A6BFF9                    ; $A6BACC  4C F9 BF     Mx
L_A6BACF:
    LDA $086C                       ; $A6BACF  AD 6C 08     Mx
    BNE L_A6BB2A                    ; $A6BAD2  D0 56        Mx
    LDA $093A                       ; $A6BAD4  AD 3A 09     Mx
    CMP #$000A                      ; $A6BAD7  C9 0A 00     Mx
    BCC L_A6BA6E                    ; $A6BADA  90 92        Mx
    CMP #$0028                      ; $A6BADC  C9 28 00     Mx
    BCS L_A6BB2A                    ; $A6BADF  B0 49        Mx
    LDA $0934                       ; $A6BAE1  AD 34 09     Mx
    SEC                             ; $A6BAE4  38           Mx
    SBC $00D9                       ; $A6BAE5  ED D9 00     Mx
    BPL L_A6BAF1                    ; $A6BAE8  10 07        Mx
    EOR #$FFFF                      ; $A6BAEA  49 FF FF     Mx
    CLC                             ; $A6BAED  18           Mx
    ADC #$0001                      ; $A6BAEE  69 01 00     Mx
L_A6BAF1:
    CMP #$0040                      ; $A6BAF1  C9 40 00     Mx
    BCC L_A6BB03                    ; $A6BAF4  90 0D        Mx
    SEC                             ; $A6BAF6  38           Mx
    SBC #$0080                      ; $A6BAF7  E9 80 00     Mx
    BPL L_A6BB03                    ; $A6BAFA  10 07        Mx
    EOR #$FFFF                      ; $A6BAFC  49 FF FF     Mx
    CLC                             ; $A6BAFF  18           Mx
    ADC #$0001                      ; $A6BB00  69 01 00     Mx
L_A6BB03:
    SEC                             ; $A6BB03  38           Mx
    SBC #$0018                      ; $A6BB04  E9 18 00     Mx
    BPL L_A6BB2A                    ; $A6BB07  10 21        Mx
    LDA $07DC                       ; $A6BB09  AD DC 07     Mx
    STA $00A4                       ; $A6BB0C  8D A4 00     Mx
    LDA $080A                       ; $A6BB0F  AD 0A 08     Mx
    STA $00A8                       ; $A6BB12  8D A8 00     Mx
    LDA #$0002                      ; $A6BB15  A9 02 00     Mx
    STA $00A6                       ; $A6BB18  8D A6 00     Mx
    LDA $08B2                       ; $A6BB1B  AD B2 08     Mx
    STA $00AA                       ; $A6BB1E  8D AA 00     Mx
    LDA $07E0                       ; $A6BB21  AD E0 07     Mx
    STA $00AC                       ; $A6BB24  8D AC 00     Mx
    JMP L_A6BB2D                    ; $A6BB27  4C 2D BB     Mx
L_A6BB2A:
    JMP L_A6BFF9                    ; $A6BB2A  4C F9 BF     Mx
L_A6BB2D:
    LDA $00A4                       ; $A6BB2D  AD A4 00     Mx
    CMP #$002E                      ; $A6BB30  C9 2E 00     Mx
    BEQ L_A6BB3F                    ; $A6BB33  F0 0A        Mx
    CMP #$0020                      ; $A6BB35  C9 20 00     Mx
    BEQ L_A6BB3F                    ; $A6BB38  F0 05        Mx
    CMP #$0022                      ; $A6BB3A  C9 22 00     Mx
    BNE L_A6BB4A                    ; $A6BB3D  D0 0B        Mx
L_A6BB3F:
    LDA $1D56                       ; $A6BB3F  AD 56 1D     Mx
    CMP #$6666                      ; $A6BB42  C9 66 66     Mx
    BCC L_A6BB4A                    ; $A6BB45  90 03        Mx
L_A6BB47:
    JMP L_A6BFF9                    ; $A6BB47  4C F9 BF     Mx
L_A6BB4A:
    LDA $00A8                       ; $A6BB4A  AD A8 00     Mx
    CMP #$0048                      ; $A6BB4D  C9 48 00     Mx
    BPL L_A6BB47                    ; $A6BB50  10 F5        Mx
    LDA $00D9                       ; $A6BB52  AD D9 00     Mx
    AND #$007F                      ; $A6BB55  29 7F 00     Mx
    ASL                             ; $A6BB58  0A           Mx
    TAX                             ; $A6BB59  AA           Mx
    LDA $00AC                       ; $A6BB5A  AD AC 00     Mx
    BIT #$0001                      ; $A6BB5D  89 01 00     Mx
    BNE L_A6BB6C                    ; $A6BB60  D0 0A        Mx
    BIT #$0004                      ; $A6BB62  89 04 00     Mx
    BNE L_A6BB94                    ; $A6BB65  D0 2D        Mx
    LDA $00AA                       ; $A6BB67  AD AA 00     Mx
    BMI L_A6BB7A                    ; $A6BB6A  30 0E        Mx
L_A6BB6C:
    LDA $1D56                       ; $A6BB6C  AD 56 1D     Mx
    AND #$0003                      ; $A6BB6F  29 03 00     Mx
    CMP #$0003                      ; $A6BB72  C9 03 00     Mx
    BEQ L_A6BB94                    ; $A6BB75  F0 1D        Mx
    JMP L_A6BB8A                    ; $A6BB77  4C 8A BB     Mx
L_A6BB7A:
    LDA $1D56                       ; $A6BB7A  AD 56 1D     Mx
    AND #$0003                      ; $A6BB7D  29 03 00     Mx
    CMP #$0002                      ; $A6BB80  C9 02 00     Mx
    BCS L_A6BB94                    ; $A6BB83  B0 0F        Mx
    CMP #$0001                      ; $A6BB85  C9 01 00     Mx
    BEQ L_A6BB8F                    ; $A6BB88  F0 05        Mx
L_A6BB8A:
    LDA #$0003                      ; $A6BB8A  A9 03 00     Mx
    BNE L_A6BB97                    ; $A6BB8D  D0 08        Mx
L_A6BB8F:
    LDA #$0005                      ; $A6BB8F  A9 05 00     Mx
    BNE L_A6BB97                    ; $A6BB92  D0 03        Mx
L_A6BB94:
    LDA #$0005                      ; $A6BB94  A9 05 00     Mx
L_A6BB97:
    STA $00AE                       ; $A6BB97  8D AE 00     Mx
    PHX                             ; $A6BB9A  DA           Mx
    LDA $160D                       ; $A6BB9B  AD 0D 16     Mx
    BNE L_A6BBE0                    ; $A6BB9E  D0 40        Mx
    LDA #$0028                      ; $A6BBA0  A9 28 00     Mx
    STA $160D                       ; $A6BBA3  8D 0D 16     Mx
    LDA #$0023                      ; $A6BBA6  A9 23 00     Mx
    JSL L_BDFDF3                    ; $A6BBA9  22 F3 FD BD  Mx
    LDA $1D56                       ; $A6BBAD  AD 56 1D     Mx
    AND #$0003                      ; $A6BBB0  29 03 00     Mx
    BEQ L_A6BBCE                    ; $A6BBB3  F0 19        Mx
    CMP #$0001                      ; $A6BBB5  C9 01 00     Mx
    BNE L_A6BBE0                    ; $A6BBB8  D0 26        Mx
    LDA $1613                       ; $A6BBBA  AD 13 16     Mx
    BNE L_A6BBCC                    ; $A6BBBD  D0 0D        Mx
    LDA #$0010                      ; $A6BBBF  A9 10 00     Mx
    JSL L_BDFDF3                    ; $A6BBC2  22 F3 FD BD  Mx
    LDA #$0064                      ; $A6BBC6  A9 64 00     Mx
    STA $1613                       ; $A6BBC9  8D 13 16     Mx
L_A6BBCC:
    BRA L_A6BBE0                    ; $A6BBCC  80 12        Mx
L_A6BBCE:
    LDA $1611                       ; $A6BBCE  AD 11 16     Mx
    BNE L_A6BBE0                    ; $A6BBD1  D0 0D        Mx
    LDA #$0011                      ; $A6BBD3  A9 11 00     Mx
    JSL L_BDFDF3                    ; $A6BBD6  22 F3 FD BD  Mx
    LDA #$0064                      ; $A6BBDA  A9 64 00     Mx
    STA $1611                       ; $A6BBDD  8D 11 16     Mx
L_A6BBE0:
    PLX                             ; $A6BBE0  FA           Mx
    LDA $00A6                       ; $A6BBE1  AD A6 00     Mx
    CMP #$0002                      ; $A6BBE4  C9 02 00     Mx
    BNE L_A6BBEC                    ; $A6BBE7  D0 03        Mx
    JMP L_A6BC68                    ; $A6BBE9  4C 68 BC     Mx
L_A6BBEC:
    CMP #$0001                      ; $A6BBEC  C9 01 00     Mx
    BNE L_A6BBF4                    ; $A6BBEF  D0 03        Mx
    JMP L_A6BCDC                    ; $A6BBF1  4C DC BC     Mx
L_A6BBF4:
    LDA #$09A8                      ; $A6BBF4  A9 A8 09     Mx
    STA $00D0                       ; $A6BBF7  8D D0 00     Mx
    STZ $09E2                       ; $A6BBFA  9C E2 09     Mx
    LDA $9AABEB,X                   ; $A6BBFD  BF EB AB 9A  Mx
    BPL L_A6BC06                    ; $A6BC01  10 03        Mx
    DEC $09E2                       ; $A6BC03  CE E2 09     Mx
L_A6BC06:
    LDY $00AE                       ; $A6BC06  AC AE 00     Mx
    STY $09AE                       ; $A6BC09  8C AE 09     Mx
L_A6BC0C:
    ASL                             ; $A6BC0C  0A           Mx
    ROL $09E2                       ; $A6BC0D  2E E2 09     Mx
    DEY                             ; $A6BC10  88           Mx
    BNE L_A6BC0C                    ; $A6BC11  D0 F9        Mx
    STA $09E0                       ; $A6BC13  8D E0 09     Mx
    STZ $09EA                       ; $A6BC16  9C EA 09     Mx
    LDA $9AABAB,X                   ; $A6BC19  BF AB AB 9A  Mx
    BPL L_A6BC22                    ; $A6BC1D  10 03        Mx
    DEC $09EA                       ; $A6BC1F  CE EA 09     Mx
L_A6BC22:
    LDY $00AE                       ; $A6BC22  AC AE 00     Mx
L_A6BC25:
    ASL                             ; $A6BC25  0A           Mx
    ROL $09EA                       ; $A6BC26  2E EA 09     Mx
    DEY                             ; $A6BC29  88           Mx
    BNE L_A6BC25                    ; $A6BC2A  D0 F9        Mx
    STA $09E8                       ; $A6BC2C  8D E8 09     Mx
    LDA $09DA                       ; $A6BC2F  AD DA 09     Mx
    BNE L_A6BC40                    ; $A6BC32  D0 0C        Mx
    LDA #$E400                      ; $A6BC34  A9 00 E4     Mx
    STA $09E4                       ; $A6BC37  8D E4 09     Mx
    LDA #$0002                      ; $A6BC3A  A9 02 00     Mx
    STA $09E6                       ; $A6BC3D  8D E6 09     Mx
L_A6BC40:
    LDA #$002D                      ; $A6BC40  A9 2D 00     Mx
    STA $0A3C                       ; $A6BC43  8D 3C 0A     Mx
    LDA #$0030                      ; $A6BC46  A9 30 00     Mx
    STA $09AC                       ; $A6BC49  8D AC 09     Mx
    STA $09AA                       ; $A6BC4C  8D AA 09     Mx
    STZ $0A5A                       ; $A6BC4F  9C 5A 0A     Mx
    LDA $0C25                       ; $A6BC52  AD 25 0C     Mx
    CMP #$09A8                      ; $A6BC55  C9 A8 09     Mx
    BNE L_A6BC5D                    ; $A6BC58  D0 03        Mx
    STZ $0C25                       ; $A6BC5A  9C 25 0C     Mx
L_A6BC5D:
    LDA $0A4C                       ; $A6BC5D  AD 4C 0A     Mx
    BNE L_A6BC65                    ; $A6BC60  D0 03        Mx
    JMP L_A6BFF9                    ; $A6BC62  4C F9 BF     Mx
L_A6BC65:
    JMP L_A6BD4D                    ; $A6BC65  4C 4D BD     Mx
L_A6BC68:
    LDA #$07D8                      ; $A6BC68  A9 D8 07     Mx
    STA $00D0                       ; $A6BC6B  8D D0 00     Mx
    STZ $0812                       ; $A6BC6E  9C 12 08     Mx
    LDA $9AABEB,X                   ; $A6BC71  BF EB AB 9A  Mx
    BPL L_A6BC7A                    ; $A6BC75  10 03        Mx
    DEC $0812                       ; $A6BC77  CE 12 08     Mx
L_A6BC7A:
    LDY $00AE                       ; $A6BC7A  AC AE 00     Mx
    STY $07DE                       ; $A6BC7D  8C DE 07     Mx
L_A6BC80:
    ASL                             ; $A6BC80  0A           Mx
    ROL $0812                       ; $A6BC81  2E 12 08     Mx
    DEY                             ; $A6BC84  88           Mx
    BNE L_A6BC80                    ; $A6BC85  D0 F9        Mx
    STA $0810                       ; $A6BC87  8D 10 08     Mx
    STZ $081A                       ; $A6BC8A  9C 1A 08     Mx
    LDA $9AABAB,X                   ; $A6BC8D  BF AB AB 9A  Mx
    BPL L_A6BC96                    ; $A6BC91  10 03        Mx
    DEC $081A                       ; $A6BC93  CE 1A 08     Mx
L_A6BC96:
    LDY $00AE                       ; $A6BC96  AC AE 00     Mx
L_A6BC99:
    ASL                             ; $A6BC99  0A           Mx
    ROL $081A                       ; $A6BC9A  2E 1A 08     Mx
    DEY                             ; $A6BC9D  88           Mx
    BNE L_A6BC99                    ; $A6BC9E  D0 F9        Mx
    STA $0818                       ; $A6BCA0  8D 18 08     Mx
    LDA $080A                       ; $A6BCA3  AD 0A 08     Mx
    BNE L_A6BCB4                    ; $A6BCA6  D0 0C        Mx
    LDA #$E400                      ; $A6BCA8  A9 00 E4     Mx
    STA $0814                       ; $A6BCAB  8D 14 08     Mx
    LDA #$0002                      ; $A6BCAE  A9 02 00     Mx
    STA $0816                       ; $A6BCB1  8D 16 08     Mx
L_A6BCB4:
    LDA #$002D                      ; $A6BCB4  A9 2D 00     Mx
    STA $086C                       ; $A6BCB7  8D 6C 08     Mx
    LDA #$0030                      ; $A6BCBA  A9 30 00     Mx
    STA $07DC                       ; $A6BCBD  8D DC 07     Mx
    STA $07DA                       ; $A6BCC0  8D DA 07     Mx
    STZ $088A                       ; $A6BCC3  9C 8A 08     Mx
    LDA $0C25                       ; $A6BCC6  AD 25 0C     Mx
    CMP #$07D8                      ; $A6BCC9  C9 D8 07     Mx
    BNE L_A6BCD1                    ; $A6BCCC  D0 03        Mx
    STZ $0C25                       ; $A6BCCE  9C 25 0C     Mx
L_A6BCD1:
    LDA $087C                       ; $A6BCD1  AD 7C 08     Mx
    BNE L_A6BCD9                    ; $A6BCD4  D0 03        Mx
    JMP L_A6BFF9                    ; $A6BCD6  4C F9 BF     Mx
L_A6BCD9:
    JMP L_A6BD4D                    ; $A6BCD9  4C 4D BD     Mx
L_A6BCDC:
    LDA #$06F0                      ; $A6BCDC  A9 F0 06     Mx
    STA $00D0                       ; $A6BCDF  8D D0 00     Mx
    STZ $072A                       ; $A6BCE2  9C 2A 07     Mx
    LDA $9AABEB,X                   ; $A6BCE5  BF EB AB 9A  Mx
    BPL L_A6BCEE                    ; $A6BCE9  10 03        Mx
    DEC $072A                       ; $A6BCEB  CE 2A 07     Mx
L_A6BCEE:
    LDY $00AE                       ; $A6BCEE  AC AE 00     Mx
    STY $06F6                       ; $A6BCF1  8C F6 06     Mx
L_A6BCF4:
    ASL                             ; $A6BCF4  0A           Mx
    ROL $072A                       ; $A6BCF5  2E 2A 07     Mx
    DEY                             ; $A6BCF8  88           Mx
    BNE L_A6BCF4                    ; $A6BCF9  D0 F9        Mx
    STA $0728                       ; $A6BCFB  8D 28 07     Mx
    STZ $0732                       ; $A6BCFE  9C 32 07     Mx
    LDA $9AABAB,X                   ; $A6BD01  BF AB AB 9A  Mx
    BPL L_A6BD0A                    ; $A6BD05  10 03        Mx
    DEC $0732                       ; $A6BD07  CE 32 07     Mx
L_A6BD0A:
    LDY $00AE                       ; $A6BD0A  AC AE 00     Mx
L_A6BD0D:
    ASL                             ; $A6BD0D  0A           Mx
    ROL $0732                       ; $A6BD0E  2E 32 07     Mx
    DEY                             ; $A6BD11  88           Mx
    BNE L_A6BD0D                    ; $A6BD12  D0 F9        Mx
    STA $0730                       ; $A6BD14  8D 30 07     Mx
    LDA $0722                       ; $A6BD17  AD 22 07     Mx
    BNE L_A6BD28                    ; $A6BD1A  D0 0C        Mx
    LDA #$E400                      ; $A6BD1C  A9 00 E4     Mx
    STA $072C                       ; $A6BD1F  8D 2C 07     Mx
    LDA #$0002                      ; $A6BD22  A9 02 00     Mx
    STA $072E                       ; $A6BD25  8D 2E 07     Mx
L_A6BD28:
    LDA #$002D                      ; $A6BD28  A9 2D 00     Mx
    STA $0784                       ; $A6BD2B  8D 84 07     Mx
    LDA #$0030                      ; $A6BD2E  A9 30 00     Mx
    STA $06F4                       ; $A6BD31  8D F4 06     Mx
    STA $06F2                       ; $A6BD34  8D F2 06     Mx
    STZ $07A2                       ; $A6BD37  9C A2 07     Mx
    LDA $0C25                       ; $A6BD3A  AD 25 0C     Mx
    CMP #$06F0                      ; $A6BD3D  C9 F0 06     Mx
    BNE L_A6BD45                    ; $A6BD40  D0 03        Mx
    STZ $0C25                       ; $A6BD42  9C 25 0C     Mx
L_A6BD45:
    LDA $0794                       ; $A6BD45  AD 94 07     Mx
    BNE L_A6BD4D                    ; $A6BD48  D0 03        Mx
    JMP L_A6BFF9                    ; $A6BD4A  4C F9 BF     Mx
L_A6BD4D:
    LDA #$0032                      ; $A6BD4D  A9 32 00     Mx
    STA $00DF                       ; $A6BD50  8D DF 00     Mx
    LDA $00A4                       ; $A6BD53  AD A4 00     Mx
    CMP #$002E                      ; $A6BD56  C9 2E 00     Mx
    BEQ L_A6BD7C                    ; $A6BD59  F0 21        Mx
    LDA $00AA                       ; $A6BD5B  AD AA 00     Mx
    BMI L_A6BD76                    ; $A6BD5E  30 16        Mx
    CMP #$0010                      ; $A6BD60  C9 10 00     Mx
    BCC L_A6BD68                    ; $A6BD63  90 03        Mx
    LDA #$000F                      ; $A6BD65  A9 0F 00     Mx
L_A6BD68:
    TAX                             ; $A6BD68  AA           Mx
    LDA $A7E61B,X                   ; $A6BD69  BF 1B E6 A7  Mx
    AND #$00FF                      ; $A6BD6D  29 FF 00     Mx
    STA $00DF                       ; $A6BD70  8D DF 00     Mx
    JMP L_A6BD7C                    ; $A6BD73  4C 7C BD     Mx
L_A6BD76:
    LDA #$0014                      ; $A6BD76  A9 14 00     Mx
    STA $00DF                       ; $A6BD79  8D DF 00     Mx
L_A6BD7C:
    LDA #$0064                      ; $A6BD7C  A9 64 00     Mx
    STA $00D3                       ; $A6BD7F  8D D3 00     Mx
    LDA $1D56                       ; $A6BD82  AD 56 1D     Mx
    STA $00BA                       ; $A6BD85  8D BA 00     Mx
    INC $00D3                       ; $A6BD88  EE D3 00     Mx
    SEP #$20                        ; $A6BD8B  E2 20        Mx
    LDA $00D3                       ; $A6BD8D  AD D3 00     mx
    STA $4202                       ; $A6BD90  8D 02 42     mx
    LDA $00BA                       ; $A6BD93  AD BA 00     mx
    STA $4203                       ; $A6BD96  8D 03 42     mx
    NOP                             ; $A6BD99  EA           mx
    NOP                             ; $A6BD9A  EA           mx
    NOP                             ; $A6BD9B  EA           mx
    REP #$20                        ; $A6BD9C  C2 20        mx
    LDA $4216                       ; $A6BD9E  AD 16 42     Mx
    STA $00BA                       ; $A6BDA1  8D BA 00     Mx
    LDA $00BB                       ; $A6BDA4  AD BB 00     Mx
    AND #$00FF                      ; $A6BDA7  29 FF 00     Mx
    CMP $00DF                       ; $A6BDAA  CD DF 00     Mx
    BCS L_A6BDB2                    ; $A6BDAD  B0 03        Mx
L_A6BDAF:
    JMP L_A6BFF9                    ; $A6BDAF  4C F9 BF     Mx
L_A6BDB2:
    LDA $0C3F                       ; $A6BDB2  AD 3F 0C     Mx
    BNE L_A6BDAF                    ; $A6BDB5  D0 F8        Mx
    LDA #$00B4                      ; $A6BDB7  A9 B4 00     Mx
    STA $0C3F                       ; $A6BDBA  8D 3F 0C     Mx
    LDA $08C0                       ; $A6BDBD  AD C0 08     Mx
    DEC                             ; $A6BDC0  3A           Mx
    AND #$0003                      ; $A6BDC1  29 03 00     Mx
    ASL                             ; $A6BDC4  0A           Mx
    TAX                             ; $A6BDC5  AA           Mx
    INC $1CB1,X                     ; $A6BDC6  FE B1 1C     Mx
    LDA #$0087                      ; $A6BDC9  A9 87 00     Mx
    STA $0982                       ; $A6BDCC  8D 82 09     Mx
    LDY #$8A                        ; $A6BDCF  A0 8A        Mx
    LDA #$0034                      ; $A6BDD1  A9 34 00     Mx
    STA ($D0),Y                     ; $A6BDD4  91 D0        Mx
    LDA #$001E                      ; $A6BDD6  A9 1E 00     Mx
    STA $0BF1                       ; $A6BDD9  8D F1 0B     Mx
    LDA $0C19                       ; $A6BDDC  AD 19 0C     Mx
    BEQ L_A6BE47                    ; $A6BDDF  F0 66        Mx
    LDA $0BD9                       ; $A6BDE1  AD D9 0B     Mx
    CLC                             ; $A6BDE4  18           Mx
    ADC $0BEF                       ; $A6BDE5  6D EF 0B     Mx
    LDY #$54                        ; $A6BDE8  A0 54        Mx
    SEC                             ; $A6BDEA  38           Mx
    SBC ($CC),Y                     ; $A6BDEB  F1 CC        Mx
    BPL L_A6BDF9                    ; $A6BDED  10 0A        Mx
    CMP #$FEF4                      ; $A6BDEF  C9 F4 FE     Mx
    BCS L_A6BE01                    ; $A6BDF2  B0 0D        Mx
    LDA #$FEF4                      ; $A6BDF4  A9 F4 FE     Mx
    BRA L_A6BE01                    ; $A6BDF7  80 08        Mx
L_A6BDF9:
    CMP #$010C                      ; $A6BDF9  C9 0C 01     Mx
    BCC L_A6BE01                    ; $A6BDFC  90 03        Mx
    LDA #$010C                      ; $A6BDFE  A9 0C 01     Mx
L_A6BE01:
    STA $0BD9                       ; $A6BE01  8D D9 0B     Mx
    LDA $0BDD                       ; $A6BE04  AD DD 0B     Mx
    CLC                             ; $A6BE07  18           Mx
    ADC $0BF1                       ; $A6BE08  6D F1 0B     Mx
    STA $0BDD                       ; $A6BE0B  8D DD 0B     Mx
    LDA $0BF3                       ; $A6BE0E  AD F3 0B     Mx
    CMP #$0310                      ; $A6BE11  C9 10 03     Mx
    BCC L_A6BE20                    ; $A6BE14  90 0A        Mx
    CMP #$03F0                      ; $A6BE16  C9 F0 03     Mx
    BCC L_A6BE23                    ; $A6BE19  90 08        Mx
    LDA #$03F0                      ; $A6BE1B  A9 F0 03     Mx
    BRA L_A6BE23                    ; $A6BE1E  80 03        Mx
L_A6BE20:
    LDA #$0310                      ; $A6BE20  A9 10 03     Mx
L_A6BE23:
    STA $0BE1                       ; $A6BE23  8D E1 0B     Mx
    STA $0BF3                       ; $A6BE26  8D F3 0B     Mx
    STZ $0C19                       ; $A6BE29  9C 19 0C     Mx
    STZ $00CC                       ; $A6BE2C  9C CC 00     Mx
    STZ $0C2B                       ; $A6BE2F  9C 2B 0C     Mx
    STZ $0BEF                       ; $A6BE32  9C EF 0B     Mx
    STZ $0BF1                       ; $A6BE35  9C F1 0B     Mx
    STZ $0C11                       ; $A6BE38  9C 11 0C     Mx
    LDA #$0002                      ; $A6BE3B  A9 02 00     Mx
    STA $0BBF                       ; $A6BE3E  8D BF 0B     Mx
    LDA #$0002                      ; $A6BE41  A9 02 00     Mx
    STA $0BC1                       ; $A6BE44  8D C1 0B     Mx
L_A6BE47:
    LDA $0BDD                       ; $A6BE47  AD DD 0B     Mx
    CMP #$005A                      ; $A6BE4A  C9 5A 00     Mx
    BCC L_A6BE55                    ; $A6BE4D  90 06        Mx
    LDA #$001E                      ; $A6BE4F  A9 1E 00     Mx
    STA $0BDD                       ; $A6BE52  8D DD 0B     Mx
L_A6BE55:
    STZ $0BE5                       ; $A6BE55  9C E5 0B     Mx
    STZ $0BE3                       ; $A6BE58  9C E3 0B     Mx
    PHP                             ; $A6BE5B  08           Mx
    REP #$30                        ; $A6BE5C  C2 30        Mx
    LDA $4212                       ; $A6BE5E  AD 12 42     MX
    SEP #$20                        ; $A6BE61  E2 20        MX
    CLC                             ; $A6BE63  18           mX
    ADC $1D57                       ; $A6BE64  6D 57 1D     mX
    STA $1D57                       ; $A6BE67  8D 57 1D     mX
    REP #$20                        ; $A6BE6A  C2 20        mX
    LDA $4212                       ; $A6BE6C  AD 12 42     MX
    TAX                             ; $A6BE6F  AA           MX
    SEP #$20                        ; $A6BE70  E2 20        MX
    EOR $1D58                       ; $A6BE72  4D 58 1D     mX
    STA $1D58                       ; $A6BE75  8D 58 1D     mX
    TXA                             ; $A6BE78  8A           mX
    ADC $1D59                       ; $A6BE79  6D 59 1D     mX
    REP #$20                        ; $A6BE7C  C2 20        mX
    LDA $1D56                       ; $A6BE7E  AD 56 1D     MX
    INC                             ; $A6BE81  1A           MX
    ROR                             ; $A6BE82  6A           MX
    LSR $1D58                       ; $A6BE83  4E 58 1D     MX
    EOR #$2B41                      ; $A6BE86  49 41 2B     MX
    SBC #$000F                      ; $A6BE89  E9 0F 00     MX
    STA $1D56                       ; $A6BE8C  8D 56 1D     MX
    LDA $1D58                       ; $A6BE8F  AD 58 1D     MX
    EOR #$1D87                      ; $A6BE92  49 87 1D     MX
    STA $1D58                       ; $A6BE95  8D 58 1D     MX
    LDA $1D52                       ; $A6BE98  AD 52 1D     MX
    EOR $1D56                       ; $A6BE9B  4D 56 1D     MX
    STA $0002                       ; $A6BE9E  8D 02 00     MX
    INC                             ; $A6BEA1  1A           MX
    STA $1D52                       ; $A6BEA2  8D 52 1D     MX
    LDA $1D54                       ; $A6BEA5  AD 54 1D     MX
    EOR $1D58                       ; $A6BEA8  4D 58 1D     MX
    ADC #$0000                      ; $A6BEAB  69 00 00     MX
    STA $1D52                       ; $A6BEAE  8D 52 1D     MX
    STA $0004                       ; $A6BEB1  8D 04 00     MX
    PLP                             ; $A6BEB4  28           MX
    LDA #$01FF                      ; $A6BEB5  A9 FF 01     Mx
    STA $00BA                       ; $A6BEB8  8D BA 00     Mx
    SEP #$20                        ; $A6BEBB  E2 20        Mx
    LDA $1D56                       ; $A6BEBD  AD 56 1D     mx
    STA $4202                       ; $A6BEC0  8D 02 42     mx
    LDA $00BA                       ; $A6BEC3  AD BA 00     mx
    STA $4203                       ; $A6BEC6  8D 03 42     mx
    NOP                             ; $A6BEC9  EA           mx
    NOP                             ; $A6BECA  EA           mx
    NOP                             ; $A6BECB  EA           mx
    REP #$20                        ; $A6BECC  C2 20        mx
    LDA $4216                       ; $A6BECE  AD 16 42     Mx
    STA $00BA                       ; $A6BED1  8D BA 00     Mx
    STA $00A8                       ; $A6BED4  8D A8 00     Mx
    LDA #$01FF                      ; $A6BED7  A9 FF 01     Mx
    STA $00BA                       ; $A6BEDA  8D BA 00     Mx
    SEP #$20                        ; $A6BEDD  E2 20        Mx
    LDA $1D56                       ; $A6BEDF  AD 56 1D     mx
    STA $4202                       ; $A6BEE2  8D 02 42     mx
    LDA $00BB                       ; $A6BEE5  AD BB 00     mx
    STA $4203                       ; $A6BEE8  8D 03 42     mx
    NOP                             ; $A6BEEB  EA           mx
    NOP                             ; $A6BEEC  EA           mx
    NOP                             ; $A6BEED  EA           mx
    REP #$20                        ; $A6BEEE  C2 20        mx
    LDA $4216                       ; $A6BEF0  AD 16 42     Mx
    STA $00BB                       ; $A6BEF3  8D BB 00     Mx
    STZ $00F4                       ; $A6BEF6  9C F4 00     Mx
    STZ $00F2                       ; $A6BEF9  9C F2 00     Mx
    STA $00F3                       ; $A6BEFC  8D F3 00     Mx
    LDA $00F2                       ; $A6BEFF  AD F2 00     Mx
    CLC                             ; $A6BF02  18           Mx
    ADC $00A8                       ; $A6BF03  6D A8 00     Mx
    STA $00F2                       ; $A6BF06  8D F2 00     Mx
    LDA $00F4                       ; $A6BF09  AD F4 00     Mx
    ADC #$0000                      ; $A6BF0C  69 00 00     Mx
    STA $00F4                       ; $A6BF0F  8D F4 00     Mx
    LDA $00F3                       ; $A6BF12  AD F3 00     Mx
    AND #$01FF                      ; $A6BF15  29 FF 01     Mx
    SEC                             ; $A6BF18  38           Mx
    SBC #$0100                      ; $A6BF19  E9 00 01     Mx
    BPL L_A6BF21                    ; $A6BF1C  10 03        Mx
    DEC $0BE5                       ; $A6BF1E  CE E5 0B     Mx
L_A6BF21:
    STA $0BE4                       ; $A6BF21  8D E4 0B     Mx
    STZ $0BED                       ; $A6BF24  9C ED 0B     Mx
    STZ $0BEB                       ; $A6BF27  9C EB 0B     Mx
    PHP                             ; $A6BF2A  08           Mx
    REP #$30                        ; $A6BF2B  C2 30        Mx
    LDA $4212                       ; $A6BF2D  AD 12 42     MX
    SEP #$20                        ; $A6BF30  E2 20        MX
    CLC                             ; $A6BF32  18           mX
    ADC $1D57                       ; $A6BF33  6D 57 1D     mX
    STA $1D57                       ; $A6BF36  8D 57 1D     mX
    REP #$20                        ; $A6BF39  C2 20        mX
    LDA $4212                       ; $A6BF3B  AD 12 42     MX
    TAX                             ; $A6BF3E  AA           MX
    SEP #$20                        ; $A6BF3F  E2 20        MX
    EOR $1D58                       ; $A6BF41  4D 58 1D     mX
    STA $1D58                       ; $A6BF44  8D 58 1D     mX
    TXA                             ; $A6BF47  8A           mX
    ADC $1D59                       ; $A6BF48  6D 59 1D     mX
    REP #$20                        ; $A6BF4B  C2 20        mX
    LDA $1D56                       ; $A6BF4D  AD 56 1D     MX
    INC                             ; $A6BF50  1A           MX
    ROR                             ; $A6BF51  6A           MX
    LSR $1D58                       ; $A6BF52  4E 58 1D     MX
    EOR #$2B41                      ; $A6BF55  49 41 2B     MX
    SBC #$000F                      ; $A6BF58  E9 0F 00     MX
    STA $1D56                       ; $A6BF5B  8D 56 1D     MX
    LDA $1D58                       ; $A6BF5E  AD 58 1D     MX
    EOR #$1D87                      ; $A6BF61  49 87 1D     MX
    STA $1D58                       ; $A6BF64  8D 58 1D     MX
    LDA $1D52                       ; $A6BF67  AD 52 1D     MX
    EOR $1D56                       ; $A6BF6A  4D 56 1D     MX
    STA $0002                       ; $A6BF6D  8D 02 00     MX
    INC                             ; $A6BF70  1A           MX
    STA $1D52                       ; $A6BF71  8D 52 1D     MX
    LDA $1D54                       ; $A6BF74  AD 54 1D     MX
    EOR $1D58                       ; $A6BF77  4D 58 1D     MX
    ADC #$0000                      ; $A6BF7A  69 00 00     MX
    STA $1D52                       ; $A6BF7D  8D 52 1D     MX
    STA $0004                       ; $A6BF80  8D 04 00     MX
    PLP                             ; $A6BF83  28           MX
    LDA #$01FF                      ; $A6BF84  A9 FF 01     Mx
    STA $00BA                       ; $A6BF87  8D BA 00     Mx
    SEP #$20                        ; $A6BF8A  E2 20        Mx
    LDA $1D56                       ; $A6BF8C  AD 56 1D     mx
    STA $4202                       ; $A6BF8F  8D 02 42     mx
    LDA $00BA                       ; $A6BF92  AD BA 00     mx
    STA $4203                       ; $A6BF95  8D 03 42     mx
    NOP                             ; $A6BF98  EA           mx
    NOP                             ; $A6BF99  EA           mx
    NOP                             ; $A6BF9A  EA           mx
    REP #$20                        ; $A6BF9B  C2 20        mx
    LDA $4216                       ; $A6BF9D  AD 16 42     Mx
    STA $00BA                       ; $A6BFA0  8D BA 00     Mx
    STA $00A8                       ; $A6BFA3  8D A8 00     Mx
    LDA #$01FF                      ; $A6BFA6  A9 FF 01     Mx
    STA $00BA                       ; $A6BFA9  8D BA 00     Mx
    SEP #$20                        ; $A6BFAC  E2 20        Mx
    LDA $1D56                       ; $A6BFAE  AD 56 1D     mx
    STA $4202                       ; $A6BFB1  8D 02 42     mx
    LDA $00BB                       ; $A6BFB4  AD BB 00     mx
    STA $4203                       ; $A6BFB7  8D 03 42     mx
    NOP                             ; $A6BFBA  EA           mx
    NOP                             ; $A6BFBB  EA           mx
    NOP                             ; $A6BFBC  EA           mx
    REP #$20                        ; $A6BFBD  C2 20        mx
    LDA $4216                       ; $A6BFBF  AD 16 42     Mx
    STA $00BB                       ; $A6BFC2  8D BB 00     Mx
    STZ $00F4                       ; $A6BFC5  9C F4 00     Mx
    STZ $00F2                       ; $A6BFC8  9C F2 00     Mx
    STA $00F3                       ; $A6BFCB  8D F3 00     Mx
    LDA $00F2                       ; $A6BFCE  AD F2 00     Mx
    CLC                             ; $A6BFD1  18           Mx
    ADC $00A8                       ; $A6BFD2  6D A8 00     Mx
    STA $00F2                       ; $A6BFD5  8D F2 00     Mx
    LDA $00F4                       ; $A6BFD8  AD F4 00     Mx
    ADC #$0000                      ; $A6BFDB  69 00 00     Mx
    STA $00F4                       ; $A6BFDE  8D F4 00     Mx
    LDA $00F3                       ; $A6BFE1  AD F3 00     Mx
    AND #$01FF                      ; $A6BFE4  29 FF 01     Mx
    SEC                             ; $A6BFE7  38           Mx
    SBC #$0100                      ; $A6BFE8  E9 00 01     Mx
    BPL L_A6BFF0                    ; $A6BFEB  10 03        Mx
    DEC $0BED                       ; $A6BFED  CE ED 0B     Mx
L_A6BFF0:
    STA $0BEC                       ; $A6BFF0  8D EC 0B     Mx
    STZ $0BE9                       ; $A6BFF3  9C E9 0B     Mx
    STZ $0BE7                       ; $A6BFF6  9C E7 0B     Mx
L_A6BFF9:
    RTS                             ; $A6BFF9  60           Mx
L_A6BFFA:
    LDA $08DA                       ; $A6BFFA  AD DA 08     Mx
    BEQ L_A6C004                    ; $A6BFFD  F0 05        Mx
    CMP #$0004                      ; $A6BFFF  C9 04 00     Mx
    BNE L_A6C007                    ; $A6C002  D0 03        Mx
L_A6C004:
    LDA #$0002                      ; $A6C004  A9 02 00     Mx
L_A6C007:
    STA $08D8                       ; $A6C007  8D D8 08     Mx
    LDA #$0001                      ; $A6C00A  A9 01 00     Mx
    STA $15EB                       ; $A6C00D  8D EB 15     Mx
    LDA #$2400                      ; $A6C010  A9 00 24     Mx
    STA $00D1                       ; $A6C013  8D D1 00     Mx
    LDA $096E                       ; $A6C016  AD 6E 09     Mx
    STA $00D0                       ; $A6C019  8D D0 00     Mx
    LDA $08CC                       ; $A6C01C  AD CC 08     Mx
    BEQ L_A6C024                    ; $A6C01F  F0 03        Mx
    JMP L_A6C711                    ; $A6C021  4C 11 C7     Mx
L_A6C024:
    LDY $0970                       ; $A6C024  AC 70 09     Mx
    LDA [$D0],Y                     ; $A6C027  B7 D0        Mx
    STA $08CC                       ; $A6C029  8D CC 08     Mx
    INY                             ; $A6C02C  C8           Mx
    INY                             ; $A6C02D  C8           Mx
    LDA [$D0],Y                     ; $A6C02E  B7 D0        Mx
    STA $08CE                       ; $A6C030  8D CE 08     Mx
    STZ $08CA                       ; $A6C033  9C CA 08     Mx
    INY                             ; $A6C036  C8           Mx
    INY                             ; $A6C037  C8           Mx
    STY $0970                       ; $A6C038  8C 70 09     Mx
    LDA $08CC                       ; $A6C03B  AD CC 08     Mx
    BMI L_A6C043                    ; $A6C03E  30 03        Mx
    JMP L_A6C711                    ; $A6C040  4C 11 C7     Mx
L_A6C043:
    LDA $08CE                       ; $A6C043  AD CE 08     Mx
    CMP #$0001                      ; $A6C046  C9 01 00     Mx
    BEQ L_A6C08E                    ; $A6C049  F0 43        Mx
    CMP #$0002                      ; $A6C04B  C9 02 00     Mx
    BNE L_A6C053                    ; $A6C04E  D0 03        Mx
    JMP L_A6C576                    ; $A6C050  4C 76 C5     Mx
L_A6C053:
    CMP #$0003                      ; $A6C053  C9 03 00     Mx
    BNE L_A6C05B                    ; $A6C056  D0 03        Mx
    JMP L_A6C555                    ; $A6C058  4C 55 C5     Mx
L_A6C05B:
    CMP #$0004                      ; $A6C05B  C9 04 00     Mx
    BNE L_A6C063                    ; $A6C05E  D0 03        Mx
    JMP L_A6C545                    ; $A6C060  4C 45 C5     Mx
L_A6C063:
    CMP #$0005                      ; $A6C063  C9 05 00     Mx
    BNE L_A6C06B                    ; $A6C066  D0 03        Mx
    JMP L_A6C4CD                    ; $A6C068  4C CD C4     Mx
L_A6C06B:
    CMP #$0006                      ; $A6C06B  C9 06 00     Mx
    BNE L_A6C073                    ; $A6C06E  D0 03        Mx
    JMP L_A6C4EC                    ; $A6C070  4C EC C4     Mx
L_A6C073:
    CMP #$0007                      ; $A6C073  C9 07 00     Mx
    BNE L_A6C07B                    ; $A6C076  D0 03        Mx
    JMP L_A6C4B8                    ; $A6C078  4C B8 C4     Mx
L_A6C07B:
    CMP #$0008                      ; $A6C07B  C9 08 00     Mx
    BNE L_A6C083                    ; $A6C07E  D0 03        Mx
    JMP L_A6C4DD                    ; $A6C080  4C DD C4     Mx
L_A6C083:
    CMP #$0009                      ; $A6C083  C9 09 00     Mx
    BNE L_A6C08B                    ; $A6C086  D0 03        Mx
    JMP L_A6C50C                    ; $A6C088  4C 0C C5     Mx
L_A6C08B:
    JMP L_A6C024                    ; $A6C08B  4C 24 C0     Mx
L_A6C08E:
    LDY $0970                       ; $A6C08E  AC 70 09     Mx
    INY                             ; $A6C091  C8           Mx
    INY                             ; $A6C092  C8           Mx
    LDA [$D0],Y                     ; $A6C093  B7 D0        Mx
    STA $08C6                       ; $A6C095  8D C6 08     Mx
    CMP #$003E                      ; $A6C098  C9 3E 00     Mx
    BCC L_A6C0A3                    ; $A6C09B  90 06        Mx
    LDA #$0001                      ; $A6C09D  A9 01 00     Mx
    STA $15ED                       ; $A6C0A0  8D ED 15     Mx
L_A6C0A3:
    INY                             ; $A6C0A3  C8           Mx
    INY                             ; $A6C0A4  C8           Mx
    STY $0970                       ; $A6C0A5  8C 70 09     Mx
    REP #$10                        ; $A6C0A8  C2 10        Mx
    LDA $096C                       ; $A6C0AA  AD 6C 09     MX
    ASL                             ; $A6C0AD  0A           MX
    ASL                             ; $A6C0AE  0A           MX
    TAX                             ; $A6C0AF  AA           MX
    LDA $A4B3C8,X                   ; $A6C0B0  BF C8 B3 A4  MX
    STA $00A4                       ; $A6C0B4  8D A4 00     MX
    LDA $A4B3CA,X                   ; $A6C0B7  BF CA B3 A4  MX
    STA $00D6                       ; $A6C0BB  8D D6 00     MX
    LDA $A4B3CC,X                   ; $A6C0BE  BF CC B3 A4  MX
    STA $00D3                       ; $A6C0C2  8D D3 00     MX
    LDA $A4B3CE,X                   ; $A6C0C5  BF CE B3 A4  MX
    STA $00B0                       ; $A6C0C9  8D B0 00     MX
    SEP #$10                        ; $A6C0CC  E2 10        MX
    LDA $0922                       ; $A6C0CE  AD 22 09     Mx
    CLC                             ; $A6C0D1  18           Mx
    ADC $00A4                       ; $A6C0D2  6D A4 00     Mx
    STA $0BC3                       ; $A6C0D5  8D C3 0B     Mx
    STA $00D9                       ; $A6C0D8  8D D9 00     Mx
    LDA #$0374                      ; $A6C0DB  A9 74 03     Mx
    CLC                             ; $A6C0DE  18           Mx
    ADC $00D6                       ; $A6C0DF  6D D6 00     Mx
    STA $0BC7                       ; $A6C0E2  8D C7 0B     Mx
    LDA #$0068                      ; $A6C0E5  A9 68 00     Mx
    CLC                             ; $A6C0E8  18           Mx
    ADC $00D3                       ; $A6C0E9  6D D3 00     Mx
    LDX $098A                       ; $A6C0EC  AE 8A 09     Mx
    BEQ L_A6C0F5                    ; $A6C0EF  F0 04        Mx
    CLC                             ; $A6C0F1  18           Mx
    ADC #$000A                      ; $A6C0F2  69 0A 00     Mx
L_A6C0F5:
    STA $0BC5                       ; $A6C0F5  8D C5 0B     Mx
    LDA $00D9                       ; $A6C0F8  AD D9 00     Mx
    SEC                             ; $A6C0FB  38           Mx
    SBC $08EE                       ; $A6C0FC  ED EE 08     Mx
    STA $00D9                       ; $A6C0FF  8D D9 00     Mx
    LDA $0BC7                       ; $A6C102  AD C7 0B     Mx
    SEC                             ; $A6C105  38           Mx
    SBC $08F6                       ; $A6C106  ED F6 08     Mx
    STA $00DF                       ; $A6C109  8D DF 00     Mx
    STZ $00D3                       ; $A6C10C  9C D3 00     Mx
    LDA $00D3                       ; $A6C10F  AD D3 00     Mx
    STA $00D6                       ; $A6C112  8D D6 00     Mx
    LDA $00D9                       ; $A6C115  AD D9 00     Mx
    STA $00DC                       ; $A6C118  8D DC 00     Mx
    LDA $00DF                       ; $A6C11B  AD DF 00     Mx
    STA $00B7                       ; $A6C11E  8D B7 00     Mx
    LDA $00DC                       ; $A6C121  AD DC 00     Mx
    BPL L_A6C130                    ; $A6C124  10 0A        Mx
    EOR #$FFFF                      ; $A6C126  49 FF FF     Mx
    CLC                             ; $A6C129  18           Mx
    ADC #$0001                      ; $A6C12A  69 01 00     Mx
    STA $00DC                       ; $A6C12D  8D DC 00     Mx
L_A6C130:
    LDA $00B7                       ; $A6C130  AD B7 00     Mx
    BPL L_A6C13F                    ; $A6C133  10 0A        Mx
    EOR #$FFFF                      ; $A6C135  49 FF FF     Mx
    CLC                             ; $A6C138  18           Mx
    ADC #$0001                      ; $A6C139  69 01 00     Mx
    STA $00B7                       ; $A6C13C  8D B7 00     Mx
L_A6C13F:
    LDA $00DC                       ; $A6C13F  AD DC 00     Mx
    CMP $00B7                       ; $A6C142  CD B7 00     Mx
    BCS L_A6C159                    ; $A6C145  B0 12        Mx
    LDA $00B7                       ; $A6C147  AD B7 00     Mx
    STA $00BA                       ; $A6C14A  8D BA 00     Mx
    LDA $00DC                       ; $A6C14D  AD DC 00     Mx
    STA $00B7                       ; $A6C150  8D B7 00     Mx
    LDA $00BA                       ; $A6C153  AD BA 00     Mx
    STA $00DC                       ; $A6C156  8D DC 00     Mx
L_A6C159:
    LSR $00B7                       ; $A6C159  4E B7 00     Mx
    LDA $00B7                       ; $A6C15C  AD B7 00     Mx
    CLC                             ; $A6C15F  18           Mx
    ADC $00DC                       ; $A6C160  6D DC 00     Mx
    STA $00DC                       ; $A6C163  8D DC 00     Mx
    LSR $00B7                       ; $A6C166  4E B7 00     Mx
    LSR $00B7                       ; $A6C169  4E B7 00     Mx
    LDA $00DC                       ; $A6C16C  AD DC 00     Mx
    SEC                             ; $A6C16F  38           Mx
    SBC $00B7                       ; $A6C170  ED B7 00     Mx
    STA $00DC                       ; $A6C173  8D DC 00     Mx
    CMP #$0083                      ; $A6C176  C9 83 00     Mx
    BCC L_A6C1A1                    ; $A6C179  90 26        Mx
    STA $00B7                       ; $A6C17B  8D B7 00     Mx
    LDA #$0082                      ; $A6C17E  A9 82 00     Mx
    STA $00DC                       ; $A6C181  8D DC 00     Mx
    LDA $00B7                       ; $A6C184  AD B7 00     Mx
    SEC                             ; $A6C187  38           Mx
    SBC $00DC                       ; $A6C188  ED DC 00     Mx
    STA $00B7                       ; $A6C18B  8D B7 00     Mx
    LSR $00B7                       ; $A6C18E  4E B7 00     Mx
    LSR $00B7                       ; $A6C191  4E B7 00     Mx
    LSR $00B7                       ; $A6C194  4E B7 00     Mx
    LDA $00DC                       ; $A6C197  AD DC 00     Mx
    CLC                             ; $A6C19A  18           Mx
    ADC $00B7                       ; $A6C19B  6D B7 00     Mx
    STA $00DC                       ; $A6C19E  8D DC 00     Mx
L_A6C1A1:
    LSR                             ; $A6C1A1  4A           Mx
    SEP #$20                        ; $A6C1A2  E2 20        Mx
    STA $4202                       ; $A6C1A4  8D 02 42     mx
    LDA #$6E                        ; $A6C1A7  A9 6E        mx
    STA $4203                       ; $A6C1A9  8D 03 42     mx
    NOP                             ; $A6C1AC  EA           mx
    NOP                             ; $A6C1AD  EA           mx
    NOP                             ; $A6C1AE  EA           mx
    REP #$20                        ; $A6C1AF  C2 20        mx
    LDA $4216                       ; $A6C1B1  AD 16 42     Mx
    STA $00F2                       ; $A6C1B4  8D F2 00     Mx
    STZ $00F4                       ; $A6C1B7  9C F4 00     Mx
    ASL $00F2                       ; $A6C1BA  0E F2 00     Mx
    ROL $00F4                       ; $A6C1BD  2E F4 00     Mx
    LDA $00F3                       ; $A6C1C0  AD F3 00     Mx
    AND #$FFFF                      ; $A6C1C3  29 FF FF     Mx
    STA $00DC                       ; $A6C1C6  8D DC 00     Mx
    JMP L_A6C1E2                    ; $A6C1C9  4C E2 C1     Mx
L_A6C1CC:
    STA $00D3                       ; $A6C1CC  8D D3 00     Mx
    LSR $00D3                       ; $A6C1CF  4E D3 00     Mx
    LSR $00D3                       ; $A6C1D2  4E D3 00     Mx
    LDA $00DC                       ; $A6C1D5  AD DC 00     Mx
    SEC                             ; $A6C1D8  38           Mx
    SBC $00D3                       ; $A6C1D9  ED D3 00     Mx
    CMP #$0023                      ; $A6C1DC  C9 23 00     Mx
    JMP L_A6C1ED                    ; $A6C1DF  4C ED C1     Mx
L_A6C1E2:
    CMP #$0032                      ; $A6C1E2  C9 32 00     Mx
    BCS L_A6C1ED                    ; $A6C1E5  B0 06        Mx
    LDA #$0032                      ; $A6C1E7  A9 32 00     Mx
    STA $00DC                       ; $A6C1EA  8D DC 00     Mx
L_A6C1ED:
    LDA $08C6                       ; $A6C1ED  AD C6 08     Mx
    STA $00DC                       ; $A6C1F0  8D DC 00     Mx
    LDA $00D9                       ; $A6C1F3  AD D9 00     Mx
    STA $00E5                       ; $A6C1F6  8D E5 00     Mx
    LDA $00D9                       ; $A6C1F9  AD D9 00     Mx
    BPL L_A6C208                    ; $A6C1FC  10 0A        Mx
    EOR #$FFFF                      ; $A6C1FE  49 FF FF     Mx
    CLC                             ; $A6C201  18           Mx
    ADC #$0001                      ; $A6C202  69 01 00     Mx
    STA $00D9                       ; $A6C205  8D D9 00     Mx
L_A6C208:
    LDX $00DC                       ; $A6C208  AE DC 00     Mx
    STX $00EE                       ; $A6C20B  8E EE 00     Mx
    LDA #$0000                      ; $A6C20E  A9 00 00     Mx
    STA $00EA                       ; $A6C211  8D EA 00     Mx
    LDA $00D9                       ; $A6C214  AD D9 00     Mx
    STA $4204                       ; $A6C217  8D 04 42     Mx
    LDX $00EE                       ; $A6C21A  AE EE 00     Mx
    STX $4206                       ; $A6C21D  8E 06 42     Mx
    NOP                             ; $A6C220  EA           Mx
    NOP                             ; $A6C221  EA           Mx
    NOP                             ; $A6C222  EA           Mx
    NOP                             ; $A6C223  EA           Mx
    NOP                             ; $A6C224  EA           Mx
    NOP                             ; $A6C225  EA           Mx
    NOP                             ; $A6C226  EA           Mx
    STZ $00F0                       ; $A6C227  9C F0 00     Mx
    LDA $4214                       ; $A6C22A  AD 14 42     Mx
    STA $00F2                       ; $A6C22D  8D F2 00     Mx
    LDX $4216                       ; $A6C230  AE 16 42     Mx
    STX $00EC                       ; $A6C233  8E EC 00     Mx
    LDA $00EB                       ; $A6C236  AD EB 00     Mx
    STA $4204                       ; $A6C239  8D 04 42     Mx
    LDX $00EE                       ; $A6C23C  AE EE 00     Mx
    STX $4206                       ; $A6C23F  8E 06 42     Mx
    NOP                             ; $A6C242  EA           Mx
    NOP                             ; $A6C243  EA           Mx
    NOP                             ; $A6C244  EA           Mx
    NOP                             ; $A6C245  EA           Mx
    NOP                             ; $A6C246  EA           Mx
    NOP                             ; $A6C247  EA           Mx
    NOP                             ; $A6C248  EA           Mx
    STZ $00F0                       ; $A6C249  9C F0 00     Mx
    LDA $4214                       ; $A6C24C  AD 14 42     Mx
    ORA $00F1                       ; $A6C24F  0D F1 00     Mx
    STA $00F1                       ; $A6C252  8D F1 00     Mx
    LDX $4216                       ; $A6C255  AE 16 42     Mx
    STX $00EB                       ; $A6C258  8E EB 00     Mx
    LDA $00EA                       ; $A6C25B  AD EA 00     Mx
    STA $4204                       ; $A6C25E  8D 04 42     Mx
    LDX $00EE                       ; $A6C261  AE EE 00     Mx
    STX $4206                       ; $A6C264  8E 06 42     Mx
    NOP                             ; $A6C267  EA           Mx
    NOP                             ; $A6C268  EA           Mx
    NOP                             ; $A6C269  EA           Mx
    NOP                             ; $A6C26A  EA           Mx
    NOP                             ; $A6C26B  EA           Mx
    NOP                             ; $A6C26C  EA           Mx
    NOP                             ; $A6C26D  EA           Mx
    NOP                             ; $A6C26E  EA           Mx
    LDA $4214                       ; $A6C26F  AD 14 42     Mx
    ORA $00F0                       ; $A6C272  0D F0 00     Mx
    STA $00F0                       ; $A6C275  8D F0 00     Mx
    LDA $00F0                       ; $A6C278  AD F0 00     Mx
    STA $08F8                       ; $A6C27B  8D F8 08     Mx
    LDA $00F2                       ; $A6C27E  AD F2 00     Mx
    STA $08FA                       ; $A6C281  8D FA 08     Mx
    LDA $00E5                       ; $A6C284  AD E5 00     Mx
    BPL L_A6C2A2                    ; $A6C287  10 19        Mx
    LDA $08F8                       ; $A6C289  AD F8 08     Mx
    EOR #$FFFF                      ; $A6C28C  49 FF FF     Mx
    CLC                             ; $A6C28F  18           Mx
    ADC #$0001                      ; $A6C290  69 01 00     Mx
    STA $08F8                       ; $A6C293  8D F8 08     Mx
    LDA $08FA                       ; $A6C296  AD FA 08     Mx
    EOR #$FFFF                      ; $A6C299  49 FF FF     Mx
    ADC #$0000                      ; $A6C29C  69 00 00     Mx
    STA $08FA                       ; $A6C29F  8D FA 08     Mx
L_A6C2A2:
    LDA $00DF                       ; $A6C2A2  AD DF 00     Mx
    STA $00E5                       ; $A6C2A5  8D E5 00     Mx
    LDA $00DF                       ; $A6C2A8  AD DF 00     Mx
    BPL L_A6C2B7                    ; $A6C2AB  10 0A        Mx
    EOR #$FFFF                      ; $A6C2AD  49 FF FF     Mx
    CLC                             ; $A6C2B0  18           Mx
    ADC #$0001                      ; $A6C2B1  69 01 00     Mx
    STA $00DF                       ; $A6C2B4  8D DF 00     Mx
L_A6C2B7:
    LDX $00DC                       ; $A6C2B7  AE DC 00     Mx
    STX $00EE                       ; $A6C2BA  8E EE 00     Mx
    LDA #$0000                      ; $A6C2BD  A9 00 00     Mx
    STA $00EA                       ; $A6C2C0  8D EA 00     Mx
    LDA $00DF                       ; $A6C2C3  AD DF 00     Mx
    STA $4204                       ; $A6C2C6  8D 04 42     Mx
    LDX $00EE                       ; $A6C2C9  AE EE 00     Mx
    STX $4206                       ; $A6C2CC  8E 06 42     Mx
    NOP                             ; $A6C2CF  EA           Mx
    NOP                             ; $A6C2D0  EA           Mx
    NOP                             ; $A6C2D1  EA           Mx
    NOP                             ; $A6C2D2  EA           Mx
    NOP                             ; $A6C2D3  EA           Mx
    NOP                             ; $A6C2D4  EA           Mx
    NOP                             ; $A6C2D5  EA           Mx
    STZ $00F0                       ; $A6C2D6  9C F0 00     Mx
    LDA $4214                       ; $A6C2D9  AD 14 42     Mx
    STA $00F2                       ; $A6C2DC  8D F2 00     Mx
    LDX $4216                       ; $A6C2DF  AE 16 42     Mx
    STX $00EC                       ; $A6C2E2  8E EC 00     Mx
    LDA $00EB                       ; $A6C2E5  AD EB 00     Mx
    STA $4204                       ; $A6C2E8  8D 04 42     Mx
    LDX $00EE                       ; $A6C2EB  AE EE 00     Mx
    STX $4206                       ; $A6C2EE  8E 06 42     Mx
    NOP                             ; $A6C2F1  EA           Mx
    NOP                             ; $A6C2F2  EA           Mx
    NOP                             ; $A6C2F3  EA           Mx
    NOP                             ; $A6C2F4  EA           Mx
    NOP                             ; $A6C2F5  EA           Mx
    NOP                             ; $A6C2F6  EA           Mx
    NOP                             ; $A6C2F7  EA           Mx
    STZ $00F0                       ; $A6C2F8  9C F0 00     Mx
    LDA $4214                       ; $A6C2FB  AD 14 42     Mx
    ORA $00F1                       ; $A6C2FE  0D F1 00     Mx
    STA $00F1                       ; $A6C301  8D F1 00     Mx
    LDX $4216                       ; $A6C304  AE 16 42     Mx
    STX $00EB                       ; $A6C307  8E EB 00     Mx
    LDA $00EA                       ; $A6C30A  AD EA 00     Mx
    STA $4204                       ; $A6C30D  8D 04 42     Mx
    LDX $00EE                       ; $A6C310  AE EE 00     Mx
    STX $4206                       ; $A6C313  8E 06 42     Mx
    NOP                             ; $A6C316  EA           Mx
    NOP                             ; $A6C317  EA           Mx
    NOP                             ; $A6C318  EA           Mx
    NOP                             ; $A6C319  EA           Mx
    NOP                             ; $A6C31A  EA           Mx
    NOP                             ; $A6C31B  EA           Mx
    NOP                             ; $A6C31C  EA           Mx
    NOP                             ; $A6C31D  EA           Mx
    LDA $4214                       ; $A6C31E  AD 14 42     Mx
    ORA $00F0                       ; $A6C321  0D F0 00     Mx
    STA $00F0                       ; $A6C324  8D F0 00     Mx
    LDA $00F0                       ; $A6C327  AD F0 00     Mx
    STA $0900                       ; $A6C32A  8D 00 09     Mx
    LDA $00F2                       ; $A6C32D  AD F2 00     Mx
    STA $0902                       ; $A6C330  8D 02 09     Mx
    LDA $00E5                       ; $A6C333  AD E5 00     Mx
    BPL L_A6C351                    ; $A6C336  10 19        Mx
    LDA $0900                       ; $A6C338  AD 00 09     Mx
    EOR #$FFFF                      ; $A6C33B  49 FF FF     Mx
    CLC                             ; $A6C33E  18           Mx
    ADC #$0001                      ; $A6C33F  69 01 00     Mx
    STA $0900                       ; $A6C342  8D 00 09     Mx
    LDA $0902                       ; $A6C345  AD 02 09     Mx
    EOR #$FFFF                      ; $A6C348  49 FF FF     Mx
    ADC #$0000                      ; $A6C34B  69 00 00     Mx
    STA $0902                       ; $A6C34E  8D 02 09     Mx
L_A6C351:
    LDA $00DC                       ; $A6C351  AD DC 00     Mx
    SEP #$20                        ; $A6C354  E2 20        Mx
    STA $4202                       ; $A6C356  8D 02 42     mx
    LDA #$80                        ; $A6C359  A9 80        mx
    STA $4203                       ; $A6C35B  8D 03 42     mx
    NOP                             ; $A6C35E  EA           mx
    NOP                             ; $A6C35F  EA           mx
    NOP                             ; $A6C360  EA           mx
    REP #$20                        ; $A6C361  C2 20        mx
    LDA $4216                       ; $A6C363  AD 16 42     Mx
    STA $00A8                       ; $A6C366  8D A8 00     Mx
    LDA $00DC                       ; $A6C369  AD DC 00     Mx
    SEP #$20                        ; $A6C36C  E2 20        Mx
    STA $4202                       ; $A6C36E  8D 02 42     mx
    LDA #$12                        ; $A6C371  A9 12        mx
    STA $4203                       ; $A6C373  8D 03 42     mx
    NOP                             ; $A6C376  EA           mx
    REP #$20                        ; $A6C377  C2 20        mx
    STZ $00F4                       ; $A6C379  9C F4 00     Mx
    STZ $00F2                       ; $A6C37C  9C F2 00     Mx
    LDA $4216                       ; $A6C37F  AD 16 42     Mx
    STA $00F3                       ; $A6C382  8D F3 00     Mx
    LDA $00F2                       ; $A6C385  AD F2 00     Mx
    CLC                             ; $A6C388  18           Mx
    ADC $00A8                       ; $A6C389  6D A8 00     Mx
    STA $00F2                       ; $A6C38C  8D F2 00     Mx
    LDA $00F4                       ; $A6C38F  AD F4 00     Mx
    ADC #$0000                      ; $A6C392  69 00 00     Mx
    STA $00F4                       ; $A6C395  8D F4 00     Mx
    LDA $00F2                       ; $A6C398  AD F2 00     Mx
    EOR #$FFFF                      ; $A6C39B  49 FF FF     Mx
    CLC                             ; $A6C39E  18           Mx
    ADC #$0001                      ; $A6C39F  69 01 00     Mx
    STA $00A4                       ; $A6C3A2  8D A4 00     Mx
    LDA $00F4                       ; $A6C3A5  AD F4 00     Mx
    EOR #$FFFF                      ; $A6C3A8  49 FF FF     Mx
    ADC #$0000                      ; $A6C3AB  69 00 00     Mx
    STA $00A6                       ; $A6C3AE  8D A6 00     Mx
    LDA $08F0                       ; $A6C3B1  AD F0 08     Mx
    SEC                             ; $A6C3B4  38           Mx
    SBC #$0000                      ; $A6C3B5  E9 00 00     Mx
    STA $00A8                       ; $A6C3B8  8D A8 00     Mx
    LDA $08F2                       ; $A6C3BB  AD F2 08     Mx
    SBC $0BC5                       ; $A6C3BE  ED C5 0B     Mx
    STA $00AA                       ; $A6C3C1  8D AA 00     Mx
    LDA $00A8                       ; $A6C3C4  AD A8 00     Mx
    EOR #$FFFF                      ; $A6C3C7  49 FF FF     Mx
    CLC                             ; $A6C3CA  18           Mx
    ADC #$0001                      ; $A6C3CB  69 01 00     Mx
    STA $00A8                       ; $A6C3CE  8D A8 00     Mx
    LDA $00AA                       ; $A6C3D1  AD AA 00     Mx
    EOR #$FFFF                      ; $A6C3D4  49 FF FF     Mx
    ADC #$0000                      ; $A6C3D7  69 00 00     Mx
    STA $00AA                       ; $A6C3DA  8D AA 00     Mx
    STA $00E5                       ; $A6C3DD  8D E5 00     Mx
    BPL L_A6C3FB                    ; $A6C3E0  10 19        Mx
    LDA $00A8                       ; $A6C3E2  AD A8 00     Mx
    EOR #$FFFF                      ; $A6C3E5  49 FF FF     Mx
    CLC                             ; $A6C3E8  18           Mx
    ADC #$0001                      ; $A6C3E9  69 01 00     Mx
    STA $00A8                       ; $A6C3EC  8D A8 00     Mx
    LDA $00AA                       ; $A6C3EF  AD AA 00     Mx
    EOR #$FFFF                      ; $A6C3F2  49 FF FF     Mx
    ADC #$0000                      ; $A6C3F5  69 00 00     Mx
    STA $00AA                       ; $A6C3F8  8D AA 00     Mx
L_A6C3FB:
    LDX $00DC                       ; $A6C3FB  AE DC 00     Mx
    STX $00EE                       ; $A6C3FE  8E EE 00     Mx
    LDA $00A8                       ; $A6C401  AD A8 00     Mx
    STA $00EA                       ; $A6C404  8D EA 00     Mx
    LDA $00AA                       ; $A6C407  AD AA 00     Mx
    STA $4204                       ; $A6C40A  8D 04 42     Mx
    LDX $00EE                       ; $A6C40D  AE EE 00     Mx
    STX $4206                       ; $A6C410  8E 06 42     Mx
    NOP                             ; $A6C413  EA           Mx
    NOP                             ; $A6C414  EA           Mx
    NOP                             ; $A6C415  EA           Mx
    NOP                             ; $A6C416  EA           Mx
    NOP                             ; $A6C417  EA           Mx
    NOP                             ; $A6C418  EA           Mx
    NOP                             ; $A6C419  EA           Mx
    STZ $00F0                       ; $A6C41A  9C F0 00     Mx
    LDA $4214                       ; $A6C41D  AD 14 42     Mx
    STA $00F2                       ; $A6C420  8D F2 00     Mx
    LDX $4216                       ; $A6C423  AE 16 42     Mx
    STX $00EC                       ; $A6C426  8E EC 00     Mx
    LDA $00EB                       ; $A6C429  AD EB 00     Mx
    STA $4204                       ; $A6C42C  8D 04 42     Mx
    LDX $00EE                       ; $A6C42F  AE EE 00     Mx
    STX $4206                       ; $A6C432  8E 06 42     Mx
    NOP                             ; $A6C435  EA           Mx
    NOP                             ; $A6C436  EA           Mx
    NOP                             ; $A6C437  EA           Mx
    NOP                             ; $A6C438  EA           Mx
    NOP                             ; $A6C439  EA           Mx
    NOP                             ; $A6C43A  EA           Mx
    NOP                             ; $A6C43B  EA           Mx
    STZ $00F0                       ; $A6C43C  9C F0 00     Mx
    LDA $4214                       ; $A6C43F  AD 14 42     Mx
    ORA $00F1                       ; $A6C442  0D F1 00     Mx
    STA $00F1                       ; $A6C445  8D F1 00     Mx
    LDX $4216                       ; $A6C448  AE 16 42     Mx
    STX $00EB                       ; $A6C44B  8E EB 00     Mx
    LDA $00EA                       ; $A6C44E  AD EA 00     Mx
    STA $4204                       ; $A6C451  8D 04 42     Mx
    LDX $00EE                       ; $A6C454  AE EE 00     Mx
    STX $4206                       ; $A6C457  8E 06 42     Mx
    NOP                             ; $A6C45A  EA           Mx
    NOP                             ; $A6C45B  EA           Mx
    NOP                             ; $A6C45C  EA           Mx
    NOP                             ; $A6C45D  EA           Mx
    NOP                             ; $A6C45E  EA           Mx
    NOP                             ; $A6C45F  EA           Mx
    NOP                             ; $A6C460  EA           Mx
    NOP                             ; $A6C461  EA           Mx
    LDA $4214                       ; $A6C462  AD 14 42     Mx
    ORA $00F0                       ; $A6C465  0D F0 00     Mx
    STA $00F0                       ; $A6C468  8D F0 00     Mx
    LDA $00E5                       ; $A6C46B  AD E5 00     Mx
    BPL L_A6C489                    ; $A6C46E  10 19        Mx
    LDA $00F0                       ; $A6C470  AD F0 00     Mx
    EOR #$FFFF                      ; $A6C473  49 FF FF     Mx
    CLC                             ; $A6C476  18           Mx
    ADC #$0001                      ; $A6C477  69 01 00     Mx
    STA $00F0                       ; $A6C47A  8D F0 00     Mx
    LDA $00F2                       ; $A6C47D  AD F2 00     Mx
    EOR #$FFFF                      ; $A6C480  49 FF FF     Mx
    ADC #$0000                      ; $A6C483  69 00 00     Mx
    STA $00F2                       ; $A6C486  8D F2 00     Mx
L_A6C489:
    LDA $00A4                       ; $A6C489  AD A4 00     Mx
    SEC                             ; $A6C48C  38           Mx
    SBC $00F0                       ; $A6C48D  ED F0 00     Mx
    STA $08FC                       ; $A6C490  8D FC 08     Mx
    LDA $00A6                       ; $A6C493  AD A6 00     Mx
    SBC $00F2                       ; $A6C496  ED F2 00     Mx
    STA $08FE                       ; $A6C499  8D FE 08     Mx
    LDA $08FC                       ; $A6C49C  AD FC 08     Mx
    EOR #$FFFF                      ; $A6C49F  49 FF FF     Mx
    CLC                             ; $A6C4A2  18           Mx
    ADC #$0001                      ; $A6C4A3  69 01 00     Mx
    STA $08FC                       ; $A6C4A6  8D FC 08     Mx
    LDA $08FE                       ; $A6C4A9  AD FE 08     Mx
    EOR #$FFFF                      ; $A6C4AC  49 FF FF     Mx
    ADC #$0000                      ; $A6C4AF  69 00 00     Mx
    STA $08FE                       ; $A6C4B2  8D FE 08     Mx
    JMP L_A6C024                    ; $A6C4B5  4C 24 C0     Mx
L_A6C4B8:
    LDA #$001E                      ; $A6C4B8  A9 1E 00     Mx
    STA $08C6                       ; $A6C4BB  8D C6 08     Mx
    LDA #$7800                      ; $A6C4BE  A9 00 78     Mx
    STA $08FC                       ; $A6C4C1  8D FC 08     Mx
    LDA #$0003                      ; $A6C4C4  A9 03 00     Mx
    STA $08FE                       ; $A6C4C7  8D FE 08     Mx
    JMP L_A6C024                    ; $A6C4CA  4C 24 C0     Mx
L_A6C4CD:
    LDY $0970                       ; $A6C4CD  AC 70 09     Mx
    LDA [$D0],Y                     ; $A6C4D0  B7 D0        Mx
    STA $08D8                       ; $A6C4D2  8D D8 08     Mx
    INY                             ; $A6C4D5  C8           Mx
    INY                             ; $A6C4D6  C8           Mx
    STY $0970                       ; $A6C4D7  8C 70 09     Mx
    JMP L_A6C024                    ; $A6C4DA  4C 24 C0     Mx
L_A6C4DD:
    LDA #$0008                      ; $A6C4DD  A9 08 00     Mx
    STA $08C8                       ; $A6C4E0  8D C8 08     Mx
    LDA #$0384                      ; $A6C4E3  A9 84 03     Mx
    STA $00F6                       ; $A6C4E6  8D F6 00     Mx
    JMP L_A6C024                    ; $A6C4E9  4C 24 C0     Mx
L_A6C4EC:
    LDA $0C19                       ; $A6C4EC  AD 19 0C     Mx
    CMP $08C0                       ; $A6C4EF  CD C0 08     Mx
    BNE L_A6C4FD                    ; $A6C4F2  D0 09        Mx
    LDA #$0002                      ; $A6C4F4  A9 02 00     Mx
    STA $0BBF                       ; $A6C4F7  8D BF 0B     Mx
    STZ $0BC1                       ; $A6C4FA  9C C1 0B     Mx
L_A6C4FD:
    LDA #$0019                      ; $A6C4FD  A9 19 00     Mx
    STA $094A                       ; $A6C500  8D 4A 09     Mx
    LDA #$0008                      ; $A6C503  A9 08 00     Mx
    STA $08C8                       ; $A6C506  8D C8 08     Mx
    JMP L_A6C024                    ; $A6C509  4C 24 C0     Mx
L_A6C50C:
    LDY $0970                       ; $A6C50C  AC 70 09     Mx
    LDA [$D0],Y                     ; $A6C50F  B7 D0        Mx
    PHY                             ; $A6C511  5A           Mx
    CMP #$0011                      ; $A6C512  C9 11 00     Mx
    BNE L_A6C51F                    ; $A6C515  D0 08        Mx
    LDX $1611                       ; $A6C517  AE 11 16     Mx
    BEQ L_A6C532                    ; $A6C51A  F0 16        Mx
    JMP L_A6C53C                    ; $A6C51C  4C 3C C5     Mx
L_A6C51F:
    CMP #$0000                      ; $A6C51F  C9 00 00     Mx
    BNE L_A6C52C                    ; $A6C522  D0 08        Mx
    LDX #$01                        ; $A6C524  A2 01        Mx
    STX $15F5                       ; $A6C526  8E F5 15     Mx
    STZ $15F7                       ; $A6C529  9C F7 15     Mx
L_A6C52C:
    JSL L_BDFDF3                    ; $A6C52C  22 F3 FD BD  Mx
    BRA L_A6C53C                    ; $A6C530  80 0A        Mx
L_A6C532:
    JSL L_BDFDF3                    ; $A6C532  22 F3 FD BD  Mx
    LDA #$0064                      ; $A6C536  A9 64 00     Mx
    STA $1611                       ; $A6C539  8D 11 16     Mx
L_A6C53C:
    PLY                             ; $A6C53C  7A           Mx
    INY                             ; $A6C53D  C8           Mx
    INY                             ; $A6C53E  C8           Mx
    STY $0970                       ; $A6C53F  8C 70 09     Mx
    JMP L_A6C024                    ; $A6C542  4C 24 C0     Mx
L_A6C545:
    LDY $0970                       ; $A6C545  AC 70 09     Mx
    LDA [$D0],Y                     ; $A6C548  B7 D0        Mx
    STA $1137                       ; $A6C54A  8D 37 11     Mx
    INY                             ; $A6C54D  C8           Mx
    INY                             ; $A6C54E  C8           Mx
    STY $0970                       ; $A6C54F  8C 70 09     Mx
    JMP L_A6C024                    ; $A6C552  4C 24 C0     Mx
L_A6C555:
    LDX $08D8                       ; $A6C555  AE D8 08     Mx
    LDA $A7E35F,X                   ; $A6C558  BF 5F E3 A7  Mx
    AND #$0003                      ; $A6C55C  29 03 00     Mx
    CMP #$0002                      ; $A6C55F  C9 02 00     Mx
    BEQ L_A6C56D                    ; $A6C562  F0 09        Mx
    LDA #$0006                      ; $A6C564  A9 06 00     Mx
    STA $08D8                       ; $A6C567  8D D8 08     Mx
    JMP L_A6C024                    ; $A6C56A  4C 24 C0     Mx
L_A6C56D:
    LDA #$0002                      ; $A6C56D  A9 02 00     Mx
    STA $08D8                       ; $A6C570  8D D8 08     Mx
    JMP L_A6C024                    ; $A6C573  4C 24 C0     Mx
L_A6C576:
    LDA $0B4A                       ; $A6C576  AD 4A 0B     Mx
    BNE L_A6C580                    ; $A6C579  D0 05        Mx
    STZ $15F5                       ; $A6C57B  9C F5 15     Mx
    BRA L_A6C58E                    ; $A6C57E  80 0E        Mx
L_A6C580:
    CMP #$0002                      ; $A6C580  C9 02 00     Mx
    BCC L_A6C58E                    ; $A6C583  90 09        Mx
    STZ $0CCB                       ; $A6C585  9C CB 0C     Mx
    STZ $0CC9                       ; $A6C588  9C C9 0C     Mx
    STZ $0CC7                       ; $A6C58B  9C C7 0C     Mx
L_A6C58E:
    STZ $0CD1                       ; $A6C58E  9C D1 0C     Mx
    STZ $0C11                       ; $A6C591  9C 11 0C     Mx
    LDY $0970                       ; $A6C594  AC 70 09     Mx
    LDA [$D0],Y                     ; $A6C597  B7 D0        Mx
    INY                             ; $A6C599  C8           Mx
    INY                             ; $A6C59A  C8           Mx
    STY $0970                       ; $A6C59B  8C 70 09     Mx
    STA $08DE                       ; $A6C59E  8D DE 08     Mx
    STZ $08FA                       ; $A6C5A1  9C FA 08     Mx
    STZ $08F8                       ; $A6C5A4  9C F8 08     Mx
    STZ $0902                       ; $A6C5A7  9C 02 09     Mx
    STZ $0900                       ; $A6C5AA  9C 00 09     Mx
    CMP #$0000                      ; $A6C5AD  C9 00 00     Mx
    BEQ L_A6C5B8                    ; $A6C5B0  F0 06        Mx
    STZ $08FE                       ; $A6C5B2  9C FE 08     Mx
    STZ $08FC                       ; $A6C5B5  9C FC 08     Mx
L_A6C5B8:
    LDA $0C19                       ; $A6C5B8  AD 19 0C     Mx
    CMP $08C0                       ; $A6C5BB  CD C0 08     Mx
    BNE L_A6C5ED                    ; $A6C5BE  D0 2D        Mx
    STZ $0C19                       ; $A6C5C0  9C 19 0C     Mx
    STZ $00CC                       ; $A6C5C3  9C CC 00     Mx
    STZ $0C2B                       ; $A6C5C6  9C 2B 0C     Mx
    STZ $0BEF                       ; $A6C5C9  9C EF 0B     Mx
    STZ $0BF1                       ; $A6C5CC  9C F1 0B     Mx
    LDA #$0002                      ; $A6C5CF  A9 02 00     Mx
    STA $0BBF                       ; $A6C5D2  8D BF 0B     Mx
    LDA #$0001                      ; $A6C5D5  A9 01 00     Mx
    STA $0BC1                       ; $A6C5D8  8D C1 0B     Mx
    LDA $0922                       ; $A6C5DB  AD 22 09     Mx
    STA $0BD9                       ; $A6C5DE  8D D9 0B     Mx
    LDA #$0374                      ; $A6C5E1  A9 74 03     Mx
    STA $0BE1                       ; $A6C5E4  8D E1 0B     Mx
    LDA #$0068                      ; $A6C5E7  A9 68 00     Mx
    STA $0BDD                       ; $A6C5EA  8D DD 0B     Mx
L_A6C5ED:
    LDA #$0019                      ; $A6C5ED  A9 19 00     Mx
    STA $094A                       ; $A6C5F0  8D 4A 09     Mx
    STZ $0C2B                       ; $A6C5F3  9C 2B 0C     Mx
    STZ $00E5                       ; $A6C5F6  9C E5 00     Mx
    LDA $0B4A                       ; $A6C5F9  AD 4A 0B     Mx
    CMP #$0002                      ; $A6C5FC  C9 02 00     Mx
    BCS L_A6C616                    ; $A6C5FF  B0 15        Mx
    LDA $1D57                       ; $A6C601  AD 57 1D     Mx
    CMP #$07AE                      ; $A6C604  C9 AE 07     Mx
    BCS L_A6C616                    ; $A6C607  B0 0D        Mx
    LDA $1D56                       ; $A6C609  AD 56 1D     Mx
    AND #$0007                      ; $A6C60C  29 07 00     Mx
    SEC                             ; $A6C60F  38           Mx
    SBC #$0003                      ; $A6C610  E9 03 00     Mx
    STA $00E5                       ; $A6C613  8D E5 00     Mx
L_A6C616:
    LDA $0BD9                       ; $A6C616  AD D9 0B     Mx
    CLC                             ; $A6C619  18           Mx
    ADC $00E5                       ; $A6C61A  6D E5 00     Mx
    STA $0BD9                       ; $A6C61D  8D D9 0B     Mx
    LDA $099A                       ; $A6C620  AD 9A 09     Mx
    BPL L_A6C64A                    ; $A6C623  10 25        Mx
    BPL L_A6C62E                    ; $A6C625  10 07        Mx
    EOR #$FFFF                      ; $A6C627  49 FF FF     Mx
    CLC                             ; $A6C62A  18           Mx
    ADC #$0001                      ; $A6C62B  69 01 00     Mx
L_A6C62E:
    CMP #$0010                      ; $A6C62E  C9 10 00     Mx
    BCC L_A6C636                    ; $A6C631  90 03        Mx
    LDA #$0010                      ; $A6C633  A9 10 00     Mx
L_A6C636:
    LSR                             ; $A6C636  4A           Mx
    INC                             ; $A6C637  1A           Mx
    STA $00A4                       ; $A6C638  8D A4 00     Mx
    LDA $1D58                       ; $A6C63B  AD 58 1D     Mx
    AND #$000F                      ; $A6C63E  29 0F 00     Mx
    INC                             ; $A6C641  1A           Mx
    CMP $00A4                       ; $A6C642  CD A4 00     Mx
    BCS L_A6C652                    ; $A6C645  B0 0B        Mx
    JMP L_A6C655                    ; $A6C647  4C 55 C6     Mx
L_A6C64A:
    LDA $1D58                       ; $A6C64A  AD 58 1D     Mx
    AND #$001F                      ; $A6C64D  29 1F 00     Mx
    BEQ L_A6C655                    ; $A6C650  F0 03        Mx
L_A6C652:
    JMP L_A6C6D2                    ; $A6C652  4C D2 C6     Mx
L_A6C655:
    LDA $0B4A                       ; $A6C655  AD 4A 0B     Mx
    CMP #$0002                      ; $A6C658  C9 02 00     Mx
    BCS L_A6C652                    ; $A6C65B  B0 F5        Mx
    LDA $099A                       ; $A6C65D  AD 9A 09     Mx
    BMI L_A6C668                    ; $A6C660  30 06        Mx
    SEC                             ; $A6C662  38           Mx
    SBC #$0002                      ; $A6C663  E9 02 00     Mx
    BPL L_A6C652                    ; $A6C666  10 EA        Mx
L_A6C668:
    LDX $08C0                       ; $A6C668  AE C0 08     Mx
    CPX $0A96                       ; $A6C66B  EC 96 0A     Mx
    BEQ L_A6C6D2                    ; $A6C66E  F0 62        Mx
    LDA #$001C                      ; $A6C670  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $A6C673  22 F3 FD BD  Mx
    LDA #$001C                      ; $A6C677  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $A6C67A  22 F3 FD BD  Mx
    LDA #$001C                      ; $A6C67E  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $A6C681  22 F3 FD BD  Mx
    LDA $1D56                       ; $A6C685  AD 56 1D     Mx
    STA $0B84                       ; $A6C688  8D 84 0B     Mx
    LDA $1D58                       ; $A6C68B  AD 58 1D     Mx
    AND #$0003                      ; $A6C68E  29 03 00     Mx
    SEC                             ; $A6C691  38           Mx
    SBC #$0002                      ; $A6C692  E9 02 00     Mx
    STA $00D6                       ; $A6C695  8D D6 00     Mx
    LDA $1D57                       ; $A6C698  AD 57 1D     Mx
    CLC                             ; $A6C69B  18           Mx
    ADC #$4000                      ; $A6C69C  69 00 40     Mx
    STA $0B9F                       ; $A6C69F  8D 9F 0B     Mx
    LDA $1D57                       ; $A6C6A2  AD 57 1D     Mx
    AND #$0001                      ; $A6C6A5  29 01 00     Mx
    ADC #$0000                      ; $A6C6A8  69 00 00     Mx
    STA $00E8                       ; $A6C6AB  8D E8 00     Mx
    LDA #$006C                      ; $A6C6AE  A9 6C 00     Mx
    STA $0BDD                       ; $A6C6B1  8D DD 0B     Mx
    LDA #$F100                      ; $A6C6B4  A9 00 F1     Mx
    STA $0B88                       ; $A6C6B7  8D 88 0B     Mx
    LDA #$FFFA                      ; $A6C6BA  A9 FA FF     Mx
    STA $00D9                       ; $A6C6BD  8D D9 00     Mx
    LDA #$000F                      ; $A6C6C0  A9 0F 00     Mx
    STA $077A                       ; $A6C6C3  8D 7A 07     Mx
    STA $0862                       ; $A6C6C6  8D 62 08     Mx
    STA $094A                       ; $A6C6C9  8D 4A 09     Mx
    STA $0A32                       ; $A6C6CC  8D 32 0A     Mx
    JMP L_A6C6EA                    ; $A6C6CF  4C EA C6     Mx
L_A6C6D2:
    STZ $00E8                       ; $A6C6D2  9C E8 00     Mx
    STZ $0B9F                       ; $A6C6D5  9C 9F 0B     Mx
    STZ $00D6                       ; $A6C6D8  9C D6 00     Mx
    STZ $0B84                       ; $A6C6DB  9C 84 0B     Mx
    LDA #$9400                      ; $A6C6DE  A9 00 94     Mx
    STA $0B88                       ; $A6C6E1  8D 88 0B     Mx
    LDA #$0000                      ; $A6C6E4  A9 00 00     Mx
    STA $00D9                       ; $A6C6E7  8D D9 00     Mx
L_A6C6EA:
    LDA $0B9F                       ; $A6C6EA  AD 9F 0B     Mx
    STA $0BE3                       ; $A6C6ED  8D E3 0B     Mx
    LDA $00E8                       ; $A6C6F0  AD E8 00     Mx
    STA $0BE5                       ; $A6C6F3  8D E5 0B     Mx
    LDA $0B84                       ; $A6C6F6  AD 84 0B     Mx
    STA $0BEB                       ; $A6C6F9  8D EB 0B     Mx
    LDA $00D6                       ; $A6C6FC  AD D6 00     Mx
    STA $0BED                       ; $A6C6FF  8D ED 0B     Mx
    LDA $0B88                       ; $A6C702  AD 88 0B     Mx
    STA $0BE7                       ; $A6C705  8D E7 0B     Mx
    LDA $00D9                       ; $A6C708  AD D9 00     Mx
    STA $0BE9                       ; $A6C70B  8D E9 0B     Mx
    JMP L_A6C024                    ; $A6C70E  4C 24 C0     Mx
L_A6C711:
    LDA $08FE                       ; $A6C711  AD FE 08     Mx
    BPL L_A6C72F                    ; $A6C714  10 19        Mx
    LDA $08E4                       ; $A6C716  AD E4 08     Mx
    BMI L_A6C720                    ; $A6C719  30 05        Mx
    ORA $08E6                       ; $A6C71B  0D E6 08     Mx
    BNE L_A6C72F                    ; $A6C71E  D0 0F        Mx
L_A6C720:
    STZ $08F2                       ; $A6C720  9C F2 08     Mx
    STZ $08F0                       ; $A6C723  9C F0 08     Mx
    STZ $08FE                       ; $A6C726  9C FE 08     Mx
    STZ $08FC                       ; $A6C729  9C FC 08     Mx
    JMP L_A6C751                    ; $A6C72C  4C 51 C7     Mx
L_A6C72F:
    ORA $08FC                       ; $A6C72F  0D FC 08     Mx
    BNE L_A6C73E                    ; $A6C732  D0 0A        Mx
    LDA $08DE                       ; $A6C734  AD DE 08     Mx
    BEQ L_A6C73E                    ; $A6C737  F0 05        Mx
    DEC $08DE                       ; $A6C739  CE DE 08     Mx
    BNE L_A6C751                    ; $A6C73C  D0 13        Mx
L_A6C73E:
    LDA $08FC                       ; $A6C73E  AD FC 08     Mx
    SEC                             ; $A6C741  38           Mx
    SBC #$2500                      ; $A6C742  E9 00 25     Mx
    STA $08FC                       ; $A6C745  8D FC 08     Mx
    LDA $08FE                       ; $A6C748  AD FE 08     Mx
    SBC #$0000                      ; $A6C74B  E9 00 00     Mx
    STA $08FE                       ; $A6C74E  8D FE 08     Mx
L_A6C751:
    LDA $08C6                       ; $A6C751  AD C6 08     Mx
    BEQ L_A6C7AE                    ; $A6C754  F0 58        Mx
    DEC $08C6                       ; $A6C756  CE C6 08     Mx
    BEQ L_A6C7AE                    ; $A6C759  F0 53        Mx
    LDA $08C6                       ; $A6C75B  AD C6 08     Mx
    CMP #$000A                      ; $A6C75E  C9 0A 00     Mx
    BCS L_A6C772                    ; $A6C761  B0 0F        Mx
    STZ $15ED                       ; $A6C763  9C ED 15     Mx
    STZ $15F5                       ; $A6C766  9C F5 15     Mx
    LDA #$FFFF                      ; $A6C769  A9 FF FF     Mx
    STA $15F3                       ; $A6C76C  8D F3 15     Mx
L_A6C76F:
    JMP L_A6C7F2                    ; $A6C76F  4C F2 C7     Mx
L_A6C772:
    LDA $15ED                       ; $A6C772  AD ED 15     Mx
    BEQ L_A6C76F                    ; $A6C775  F0 F8        Mx
    LDA $15F3                       ; $A6C777  AD F3 15     Mx
    CLC                             ; $A6C77A  18           Mx
    ADC #$0001                      ; $A6C77B  69 01 00     Mx
    CMP #$0006                      ; $A6C77E  C9 06 00     Mx
    BCC L_A6C786                    ; $A6C781  90 03        Mx
    LDA #$0000                      ; $A6C783  A9 00 00     Mx
L_A6C786:
    STA $15F3                       ; $A6C786  8D F3 15     Mx
    BNE L_A6C76F                    ; $A6C789  D0 E4        Mx
    LDA $1D56                       ; $A6C78B  AD 56 1D     Mx
    AND #$001F                      ; $A6C78E  29 1F 00     Mx
    STA $00A4                       ; $A6C791  8D A4 00     Mx
    LDA #$0106                      ; $A6C794  A9 06 01     Mx
    SEC                             ; $A6C797  38           Mx
    SBC $012B                       ; $A6C798  ED 2B 01     Mx
    SEC                             ; $A6C79B  38           Mx
    SBC $00A4                       ; $A6C79C  ED A4 00     Mx
    STA $15F1                       ; $A6C79F  8D F1 15     Mx
    LDA $1D58                       ; $A6C7A2  AD 58 1D     Mx
    AND #$00FF                      ; $A6C7A5  29 FF 00     Mx
    STA $15EF                       ; $A6C7A8  8D EF 15     Mx
    JMP L_A6C7F2                    ; $A6C7AB  4C F2 C7     Mx
L_A6C7AE:
    LDA $08F2                       ; $A6C7AE  AD F2 08     Mx
    ORA $08F0                       ; $A6C7B1  0D F0 08     Mx
    BEQ L_A6C7B9                    ; $A6C7B4  F0 03        Mx
    JMP L_A6C7F2                    ; $A6C7B6  4C F2 C7     Mx
L_A6C7B9:
    STZ $08FA                       ; $A6C7B9  9C FA 08     Mx
    STZ $08F8                       ; $A6C7BC  9C F8 08     Mx
    STZ $0902                       ; $A6C7BF  9C 02 09     Mx
    STZ $0900                       ; $A6C7C2  9C 00 09     Mx
    STZ $08FE                       ; $A6C7C5  9C FE 08     Mx
    STZ $08FC                       ; $A6C7C8  9C FC 08     Mx
    LDA #$0014                      ; $A6C7CB  A9 14 00     Mx
    STA $0948                       ; $A6C7CE  8D 48 09     Mx
    LDA #$003C                      ; $A6C7D1  A9 3C 00     Mx
    STA $08C6                       ; $A6C7D4  8D C6 08     Mx
    LDA #$0000                      ; $A6C7D7  A9 00 00     Mx
    STA $08C4                       ; $A6C7DA  8D C4 08     Mx
    LDA #$FFFF                      ; $A6C7DD  A9 FF FF     Mx
    STA $08CA                       ; $A6C7E0  8D CA 08     Mx
    STZ $08CC                       ; $A6C7E3  9C CC 08     Mx
    STZ $0912                       ; $A6C7E6  9C 12 09     Mx
    STZ $08C8                       ; $A6C7E9  9C C8 08     Mx
    LDA #$FFF8                      ; $A6C7EC  A9 F8 FF     Mx
    STA $08CE                       ; $A6C7EF  8D CE 08     Mx
L_A6C7F2:
    RTS                             ; $A6C7F2  60           Mx
L_A6C7F3:
    LDA $08CA                       ; $A6C7F3  AD CA 08     Mx
    CMP #$0001                      ; $A6C7F6  C9 01 00     Mx
    BEQ L_A6C822                    ; $A6C7F9  F0 27        Mx
    STZ $08FA                       ; $A6C7FB  9C FA 08     Mx
    STZ $08F8                       ; $A6C7FE  9C F8 08     Mx
    STZ $0902                       ; $A6C801  9C 02 09     Mx
    STZ $0900                       ; $A6C804  9C 00 09     Mx
    LDA #$0002                      ; $A6C807  A9 02 00     Mx
    STA $08C8                       ; $A6C80A  8D C8 08     Mx
    STZ $0C29                       ; $A6C80D  9C 29 0C     Mx
    STZ $0C27                       ; $A6C810  9C 27 0C     Mx
    LDA #$09A8                      ; $A6C813  A9 A8 09     Mx
    STA $0C25                       ; $A6C816  8D 25 0C     Mx
    LDA $0C19                       ; $A6C819  AD 19 0C     Mx
    STA $0C1F                       ; $A6C81C  8D 1F 0C     Mx
    JMP L_A6C879                    ; $A6C81F  4C 79 C8     Mx
L_A6C822:
    LDA #$0001                      ; $A6C822  A9 01 00     Mx
    STA $08CC                       ; $A6C825  8D CC 08     Mx
    LDA $08C0                       ; $A6C828  AD C0 08     Mx
    CMP $0C19                       ; $A6C82B  CD 19 0C     Mx
    BNE L_A6C879                    ; $A6C82E  D0 49        Mx
    LDA $0956                       ; $A6C830  AD 56 09     Mx
    STA $00A4                       ; $A6C833  8D A4 00     Mx
    LDA $08F2                       ; $A6C836  AD F2 08     Mx
    STA $00A6                       ; $A6C839  8D A6 00     Mx
    STZ $0B88                       ; $A6C83C  9C 88 0B     Mx
    LDA $09D6                       ; $A6C83F  AD D6 09     Mx
    STA $00AA                       ; $A6C842  8D AA 00     Mx
    LDA $09DA                       ; $A6C845  AD DA 09     Mx
    STA $00AC                       ; $A6C848  8D AC 00     Mx
    LDA $09DE                       ; $A6C84B  AD DE 09     Mx
    STA $00AE                       ; $A6C84E  8D AE 00     Mx
    LDA $09E1                       ; $A6C851  AD E1 09     Mx
    STA $00A8                       ; $A6C854  8D A8 00     Mx
    LDA $09E9                       ; $A6C857  AD E9 09     Mx
    STA $00B0                       ; $A6C85A  8D B0 00     Mx
    STZ $0A5C                       ; $A6C85D  9C 5C 0A     Mx
    STZ $0C39                       ; $A6C860  9C 39 0C     Mx
    JSL L_A7DCCB                    ; $A6C863  22 CB DC A7  Mx
    LDA $00DC                       ; $A6C867  AD DC 00     Mx
    STA $0A5A                       ; $A6C86A  8D 5A 0A     Mx
    LDA #$0019                      ; $A6C86D  A9 19 00     Mx
    STA $094A                       ; $A6C870  8D 4A 09     Mx
    LDA #$0014                      ; $A6C873  A9 14 00     Mx
    STA $0948                       ; $A6C876  8D 48 09     Mx
L_A6C879:
    LDA $08E4                       ; $A6C879  AD E4 08     Mx
    BPL L_A6C8C4                    ; $A6C87C  10 46        Mx
L_A6C87E:
    STZ $08F2                       ; $A6C87E  9C F2 08     Mx
    STZ $08F0                       ; $A6C881  9C F0 08     Mx
    STZ $08E4                       ; $A6C884  9C E4 08     Mx
    STZ $08E6                       ; $A6C887  9C E6 08     Mx
    STZ $08FE                       ; $A6C88A  9C FE 08     Mx
    STZ $08FC                       ; $A6C88D  9C FC 08     Mx
    LDA $0964                       ; $A6C890  AD 64 09     Mx
    BEQ L_A6C8A6                    ; $A6C893  F0 11        Mx
    JSR L_A6D1C7                    ; $A6C895  20 C7 D1     Mx
    LDA $08C4                       ; $A6C898  AD C4 08     Mx
    CMP #$002E                      ; $A6C89B  C9 2E 00     Mx
    BEQ L_A6C8C1                    ; $A6C89E  F0 21        Mx
    LDA #$000C                      ; $A6C8A0  A9 0C 00     Mx
    JMP L_A6C8A9                    ; $A6C8A3  4C A9 C8     Mx
L_A6C8A6:
    LDA #$0000                      ; $A6C8A6  A9 00 00     Mx
L_A6C8A9:
    STA $08C4                       ; $A6C8A9  8D C4 08     Mx
    LDA #$FFFF                      ; $A6C8AC  A9 FF FF     Mx
    STA $08CA                       ; $A6C8AF  8D CA 08     Mx
    STZ $08CC                       ; $A6C8B2  9C CC 08     Mx
    STZ $0912                       ; $A6C8B5  9C 12 09     Mx
    STZ $08C8                       ; $A6C8B8  9C C8 08     Mx
    LDA #$FFF8                      ; $A6C8BB  A9 F8 FF     Mx
    STA $08CE                       ; $A6C8BE  8D CE 08     Mx
L_A6C8C1:
    JMP L_A6C8E9                    ; $A6C8C1  4C E9 C8     Mx
L_A6C8C4:
    LDA $08E4                       ; $A6C8C4  AD E4 08     Mx
    BNE L_A6C8D6                    ; $A6C8C7  D0 0D        Mx
    LDA $08FE                       ; $A6C8C9  AD FE 08     Mx
    BMI L_A6C8D3                    ; $A6C8CC  30 05        Mx
    ORA $08FC                       ; $A6C8CE  0D FC 08     Mx
    BNE L_A6C8D6                    ; $A6C8D1  D0 03        Mx
L_A6C8D3:
    JMP L_A6C87E                    ; $A6C8D3  4C 7E C8     Mx
L_A6C8D6:
    LDA $08FC                       ; $A6C8D6  AD FC 08     Mx
    SEC                             ; $A6C8D9  38           Mx
    SBC #$2500                      ; $A6C8DA  E9 00 25     Mx
    STA $08FC                       ; $A6C8DD  8D FC 08     Mx
    LDA $08FE                       ; $A6C8E0  AD FE 08     Mx
    SBC #$0000                      ; $A6C8E3  E9 00 00     Mx
    STA $08FE                       ; $A6C8E6  8D FE 08     Mx
L_A6C8E9:
    RTS                             ; $A6C8E9  60           Mx
L_A6C8EA:
    LDA #$001E                      ; $A6C8EA  A9 1E 00     Mx
    STA $094A                       ; $A6C8ED  8D 4A 09     Mx
    LDA #$0005                      ; $A6C8F0  A9 05 00     Mx
    STA $0A5A                       ; $A6C8F3  8D 5A 0A     Mx
    STZ $097C                       ; $A6C8F6  9C 7C 09     Mx
    STZ $0A90                       ; $A6C8F9  9C 90 0A     Mx
    LDA $0B6E                       ; $A6C8FC  AD 6E 0B     Mx
    CMP #$0058                      ; $A6C8FF  C9 58 00     Mx
    BCS L_A6C932                    ; $A6C902  B0 2E        Mx
    LDA $08CA                       ; $A6C904  AD CA 08     Mx
    CMP #$0007                      ; $A6C907  C9 07 00     Mx
    BCC L_A6C911                    ; $A6C90A  90 05        Mx
    LDA $08CC                       ; $A6C90C  AD CC 08     Mx
    BEQ L_A6C914                    ; $A6C90F  F0 03        Mx
L_A6C911:
    JMP L_A6CA1B                    ; $A6C911  4C 1B CA     Mx
L_A6C914:
    LDA #$003C                      ; $A6C914  A9 3C 00     Mx
    STA $08C4                       ; $A6C917  8D C4 08     Mx
    LDA #$FFFF                      ; $A6C91A  A9 FF FF     Mx
    STA $08CA                       ; $A6C91D  8D CA 08     Mx
    STZ $08CC                       ; $A6C920  9C CC 08     Mx
    STZ $0912                       ; $A6C923  9C 12 09     Mx
    STZ $08C8                       ; $A6C926  9C C8 08     Mx
    LDA #$FFF8                      ; $A6C929  A9 F8 FF     Mx
    STA $08CE                       ; $A6C92C  8D CE 08     Mx
    JMP L_A6CA1B                    ; $A6C92F  4C 1B CA     Mx
L_A6C932:
    LDA $08FC                       ; $A6C932  AD FC 08     Mx
    BNE L_A6C955                    ; $A6C935  D0 1E        Mx
    LDA $08CA                       ; $A6C937  AD CA 08     Mx
    CMP #$0008                      ; $A6C93A  C9 08 00     Mx
    BCC L_A6C911                    ; $A6C93D  90 D2        Mx
    BNE L_A6C955                    ; $A6C93F  D0 14        Mx
    LDA $08CC                       ; $A6C941  AD CC 08     Mx
    BNE L_A6C911                    ; $A6C944  D0 CB        Mx
    LDA #$5600                      ; $A6C946  A9 00 56     Mx
    STA $08FC                       ; $A6C949  8D FC 08     Mx
    LDA #$0004                      ; $A6C94C  A9 04 00     Mx
    STA $08FE                       ; $A6C94F  8D FE 08     Mx
    JMP L_A6CA1B                    ; $A6C952  4C 1B CA     Mx
L_A6C955:
    LDX $08C1                       ; $A6C955  AE C1 08     Mx
    BNE L_A6C962                    ; $A6C958  D0 08        Mx
    LDA #$0003                      ; $A6C95A  A9 03 00     Mx
    STA $094C                       ; $A6C95D  8D 4C 09     Mx
    BRA L_A6C96D                    ; $A6C960  80 0B        Mx
L_A6C962:
    LDA $0940                       ; $A6C962  AD 40 09     Mx
    EOR $0942                       ; $A6C965  4D 42 09     Mx
    BEQ L_A6C96D                    ; $A6C968  F0 03        Mx
    INC $094C                       ; $A6C96A  EE 4C 09     Mx
L_A6C96D:
    LDA $08FC                       ; $A6C96D  AD FC 08     Mx
    SEC                             ; $A6C970  38           Mx
    SBC #$2500                      ; $A6C971  E9 00 25     Mx
    STA $08FC                       ; $A6C974  8D FC 08     Mx
    LDA $08FE                       ; $A6C977  AD FE 08     Mx
    SBC #$0000                      ; $A6C97A  E9 00 00     Mx
    STA $08FE                       ; $A6C97D  8D FE 08     Mx
    BMI L_A6C985                    ; $A6C980  30 03        Mx
    JMP L_A6CA15                    ; $A6C982  4C 15 CA     Mx
L_A6C985:
    LDA $08F2                       ; $A6C985  AD F2 08     Mx
    ORA $08F0                       ; $A6C988  0D F0 08     Mx
    BNE L_A6C9B4                    ; $A6C98B  D0 27        Mx
    LDA #$FFFF                      ; $A6C98D  A9 FF FF     Mx
    STA $076E                       ; $A6C990  8D 6E 07     Mx
    STA $0A26                       ; $A6C993  8D 26 0A     Mx
    LDA #$0000                      ; $A6C996  A9 00 00     Mx
    STA $08C4                       ; $A6C999  8D C4 08     Mx
    LDA #$FFFF                      ; $A6C99C  A9 FF FF     Mx
    STA $08CA                       ; $A6C99F  8D CA 08     Mx
    STZ $08CC                       ; $A6C9A2  9C CC 08     Mx
    STZ $0912                       ; $A6C9A5  9C 12 09     Mx
    STZ $08C8                       ; $A6C9A8  9C C8 08     Mx
    LDA #$FFF8                      ; $A6C9AB  A9 F8 FF     Mx
    STA $08CE                       ; $A6C9AE  8D CE 08     Mx
    JMP L_A6CA1B                    ; $A6C9B1  4C 1B CA     Mx
L_A6C9B4:
    LDA $08CA                       ; $A6C9B4  AD CA 08     Mx
    CMP #$000B                      ; $A6C9B7  C9 0B 00     Mx
    BEQ L_A6CA15                    ; $A6C9BA  F0 59        Mx
    CMP #$000A                      ; $A6C9BC  C9 0A 00     Mx
    BNE L_A6CA1B                    ; $A6C9BF  D0 5A        Mx
    LDA $0BE5                       ; $A6C9C1  AD E5 0B     Mx
    BNE L_A6CA1B                    ; $A6C9C4  D0 55        Mx
    LDA $07DC                       ; $A6C9C6  AD DC 07     Mx
    CMP #$003C                      ; $A6C9C9  C9 3C 00     Mx
    BEQ L_A6C9D6                    ; $A6C9CC  F0 08        Mx
    LDA $094C                       ; $A6C9CE  AD 4C 09     Mx
    CMP $077C                       ; $A6C9D1  CD 7C 07     Mx
    BRA L_A6C9DC                    ; $A6C9D4  80 06        Mx
L_A6C9D6:
    LDA $094C                       ; $A6C9D6  AD 4C 09     Mx
    CMP $0864                       ; $A6C9D9  CD 64 08     Mx
L_A6C9DC:
    BEQ L_A6C9E2                    ; $A6C9DC  F0 04        Mx
    BCC L_A6CA1B                    ; $A6C9DE  90 3B        Mx
    BRA L_A6C9E4                    ; $A6C9E0  80 02        Mx
L_A6C9E2:
    BRA L_A6C9E4                    ; $A6C9E2  80 00        Mx
L_A6C9E4:
    LDA $0BD9                       ; $A6C9E4  AD D9 0B     Mx
    CLC                             ; $A6C9E7  18           Mx
    ADC #$0014                      ; $A6C9E8  69 14 00     Mx
    STA $0BD9                       ; $A6C9EB  8D D9 0B     Mx
    LDA #$8000                      ; $A6C9EE  A9 00 80     Mx
    STA $0BE3                       ; $A6C9F1  8D E3 0B     Mx
    LDA #$0001                      ; $A6C9F4  A9 01 00     Mx
    STA $0BE5                       ; $A6C9F7  8D E5 0B     Mx
    LDA #$0000                      ; $A6C9FA  A9 00 00     Mx
    STA $0BEB                       ; $A6C9FD  8D EB 0B     Mx
    LDA #$0001                      ; $A6CA00  A9 01 00     Mx
    STA $0BED                       ; $A6CA03  8D ED 0B     Mx
    LDA #$09A8                      ; $A6CA06  A9 A8 09     Mx
    STA $0C25                       ; $A6CA09  8D 25 0C     Mx
    LDA #$0003                      ; $A6CA0C  A9 03 00     Mx
    JSL L_BDFDF3                    ; $A6CA0F  22 F3 FD BD  Mx
    BRA L_A6CA1B                    ; $A6CA13  80 06        Mx
L_A6CA15:
    LDA #$0002                      ; $A6CA15  A9 02 00     Mx
    STA $08CC                       ; $A6CA18  8D CC 08     Mx
L_A6CA1B:
    RTS                             ; $A6CA1B  60           Mx
L_A6CA1C:
    LDA $094E                       ; $A6CA1C  AD 4E 09     Mx
    BEQ L_A6CA29                    ; $A6CA1F  F0 08        Mx
    LDA $0C19                       ; $A6CA21  AD 19 0C     Mx
    BEQ L_A6CA29                    ; $A6CA24  F0 03        Mx
L_A6CA26:
    JMP L_A6D17F                    ; $A6CA26  4C 7F D1     Mx
L_A6CA29:
    LDA $0BF9                       ; $A6CA29  AD F9 0B     Mx
    BNE L_A6CA26                    ; $A6CA2C  D0 F8        Mx
    LDA $0972                       ; $A6CA2E  AD 72 09     Mx
    BNE L_A6CA26                    ; $A6CA31  D0 F3        Mx
    LDA $0C19                       ; $A6CA33  AD 19 0C     Mx
    BNE L_A6CA3B                    ; $A6CA36  D0 03        Mx
L_A6CA38:
    JMP L_A6CA73                    ; $A6CA38  4C 73 CA     Mx
L_A6CA3B:
    LDY #$08                        ; $A6CA3B  A0 08        Mx
    LDA ($CC),Y                     ; $A6CA3D  B1 CC        Mx
    AND #$0001                      ; $A6CA3F  29 01 00     Mx
    BNE L_A6CA38                    ; $A6CA42  D0 F4        Mx
    LDA $092E                       ; $A6CA44  AD 2E 09     Mx
    TAX                             ; $A6CA47  AA           Mx
    LDA $A7E377,X                   ; $A6CA48  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6CA4C  29 07 00     Mx
    STA $08D8                       ; $A6CA4F  8D D8 08     Mx
    LDY #$08                        ; $A6CA52  A0 08        Mx
    LDA ($CC),Y                     ; $A6CA54  B1 CC        Mx
    AND #$0004                      ; $A6CA56  29 04 00     Mx
    BNE L_A6CA5E                    ; $A6CA59  D0 03        Mx
    JMP L_A6CB30                    ; $A6CA5B  4C 30 CB     Mx
L_A6CA5E:
    LDA $1D56                       ; $A6CA5E  AD 56 1D     Mx
    EOR $1D57                       ; $A6CA61  4D 57 1D     Mx
    EOR $0006                       ; $A6CA64  4D 06 00     Mx
    AND #$0007                      ; $A6CA67  29 07 00     Mx
    ASL                             ; $A6CA6A  0A           Mx
    TAX                             ; $A6CA6B  AA           Mx
    LDA $A7E5FB,X                   ; $A6CA6C  BF FB E5 A7  Mx
    JMP L_A6CB33                    ; $A6CA70  4C 33 CB     Mx
L_A6CA73:
    LDA $0BDD                       ; $A6CA73  AD DD 0B     Mx
    CMP #$0014                      ; $A6CA76  C9 14 00     Mx
    BCS L_A6CA7E                    ; $A6CA79  B0 03        Mx
    JMP L_A6CB23                    ; $A6CA7B  4C 23 CB     Mx
L_A6CA7E:
    LDA $0BD9                       ; $A6CA7E  AD D9 0B     Mx
    STA $00E2                       ; $A6CA81  8D E2 00     Mx
    LDA $0BE1                       ; $A6CA84  AD E1 0B     Mx
    STA $00E5                       ; $A6CA87  8D E5 00     Mx
    LDA $0C19                       ; $A6CA8A  AD 19 0C     Mx
    BEQ L_A6CA92                    ; $A6CA8D  F0 03        Mx
    JMP L_A6CADA                    ; $A6CA8F  4C DA CA     Mx
L_A6CA92:
    LDX #$00                        ; $A6CA92  A2 00        Mx
    LDA $0BE4                       ; $A6CA94  AD E4 0B     Mx
    BPL L_A6CA9B                    ; $A6CA97  10 02        Mx
    LDX #$FF                        ; $A6CA99  A2 FF        Mx
L_A6CA9B:
    ASL                             ; $A6CA9B  0A           Mx
    ASL                             ; $A6CA9C  0A           Mx
    STA $0BAF                       ; $A6CA9D  8D AF 0B     Mx
    ASL                             ; $A6CAA0  0A           Mx
    ASL                             ; $A6CAA1  0A           Mx
    CLC                             ; $A6CAA2  18           Mx
    ADC $0BAF                       ; $A6CAA3  6D AF 0B     Mx
    STA $00D0                       ; $A6CAA6  8D D0 00     Mx
    STX $00D2                       ; $A6CAA9  8E D2 00     Mx
    LDA $00D1                       ; $A6CAAC  AD D1 00     Mx
    CLC                             ; $A6CAAF  18           Mx
    ADC $00E2                       ; $A6CAB0  6D E2 00     Mx
    STA $00E2                       ; $A6CAB3  8D E2 00     Mx
    LDX #$00                        ; $A6CAB6  A2 00        Mx
    LDA $0BEC                       ; $A6CAB8  AD EC 0B     Mx
    BPL L_A6CABF                    ; $A6CABB  10 02        Mx
    LDX #$FF                        ; $A6CABD  A2 FF        Mx
L_A6CABF:
    ASL                             ; $A6CABF  0A           Mx
    ASL                             ; $A6CAC0  0A           Mx
    STA $0BAF                       ; $A6CAC1  8D AF 0B     Mx
    ASL                             ; $A6CAC4  0A           Mx
    ASL                             ; $A6CAC5  0A           Mx
    CLC                             ; $A6CAC6  18           Mx
    ADC $0BAF                       ; $A6CAC7  6D AF 0B     Mx
    STA $00D0                       ; $A6CACA  8D D0 00     Mx
    STX $00D2                       ; $A6CACD  8E D2 00     Mx
    LDA $00D1                       ; $A6CAD0  AD D1 00     Mx
    CLC                             ; $A6CAD3  18           Mx
    ADC $00E5                       ; $A6CAD4  6D E5 00     Mx
    STA $00E5                       ; $A6CAD7  8D E5 00     Mx
L_A6CADA:
    LDA $08EE                       ; $A6CADA  AD EE 08     Mx
    STA $00D0                       ; $A6CADD  8D D0 00     Mx
    LDA $08F6                       ; $A6CAE0  AD F6 08     Mx
    STA $00D3                       ; $A6CAE3  8D D3 00     Mx
    JSL $00AEF9                     ; $A6CAE6  22 F9 AE 00  Mx
    TAX                             ; $A6CAEA  AA           Mx
    LDA $A7E377,X                   ; $A6CAEB  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6CAEF  29 07 00     Mx
    STA $08D8                       ; $A6CAF2  8D D8 08     Mx
    LDA $00D3                       ; $A6CAF5  AD D3 00     Mx
    CMP #$0060                      ; $A6CAF8  C9 60 00     Mx
    BCC L_A6CB00                    ; $A6CAFB  90 03        Mx
    JMP L_A6CB30                    ; $A6CAFD  4C 30 CB     Mx
L_A6CB00:
    LDA $0C19                       ; $A6CB00  AD 19 0C     Mx
    BNE L_A6CB12                    ; $A6CB03  D0 0D        Mx
    LDA $0BC1                       ; $A6CB05  AD C1 0B     Mx
    CMP #$0001                      ; $A6CB08  C9 01 00     Mx
    BNE L_A6CB12                    ; $A6CB0B  D0 05        Mx
    LDA $0C2B                       ; $A6CB0D  AD 2B 0C     Mx
    BMI L_A6CB17                    ; $A6CB10  30 05        Mx
L_A6CB12:
    LDA $00C0                       ; $A6CB12  AD C0 00     Mx
    BNE L_A6CB1D                    ; $A6CB15  D0 06        Mx
L_A6CB17:
    LDA #$0022                      ; $A6CB17  A9 22 00     Mx
    JMP L_A6CB33                    ; $A6CB1A  4C 33 CB     Mx
L_A6CB1D:
    LDA #$0024                      ; $A6CB1D  A9 24 00     Mx
    JMP L_A6CB33                    ; $A6CB20  4C 33 CB     Mx
L_A6CB23:
    LDX $092E                       ; $A6CB23  AE 2E 09     Mx
    LDA $A7E377,X                   ; $A6CB26  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6CB2A  29 07 00     Mx
    STA $08D8                       ; $A6CB2D  8D D8 08     Mx
L_A6CB30:
    LDA #$0020                      ; $A6CB30  A9 20 00     Mx
L_A6CB33:
    CMP #$0022                      ; $A6CB33  C9 22 00     Mx
    BNE L_A6CB47                    ; $A6CB36  D0 0F        Mx
    LDX $08D8                       ; $A6CB38  AE D8 08     Mx
    CPX #$04                        ; $A6CB3B  E0 04        Mx
    BNE L_A6CB5F                    ; $A6CB3D  D0 20        Mx
    LDX #$05                        ; $A6CB3F  A2 05        Mx
    STX $08D8                       ; $A6CB41  8E D8 08     Mx
    JMP L_A6CB5F                    ; $A6CB44  4C 5F CB     Mx
L_A6CB47:
    CMP #$0024                      ; $A6CB47  C9 24 00     Mx
    BNE L_A6CB62                    ; $A6CB4A  D0 16        Mx
    LDX $08D8                       ; $A6CB4C  AE D8 08     Mx
    LDA $A7E613,X                   ; $A6CB4F  BF 13 E6 A7  Mx
    AND #$0007                      ; $A6CB53  29 07 00     Mx
    STA $08D8                       ; $A6CB56  8D D8 08     Mx
    LDA #$0024                      ; $A6CB59  A9 24 00     Mx
    JMP L_A6CB62                    ; $A6CB5C  4C 62 CB     Mx
L_A6CB5F:
    LDA #$0022                      ; $A6CB5F  A9 22 00     Mx
L_A6CB62:
    STA $08C4                       ; $A6CB62  8D C4 08     Mx
    LDA #$FFFF                      ; $A6CB65  A9 FF FF     Mx
    STA $08CA                       ; $A6CB68  8D CA 08     Mx
    STZ $08CC                       ; $A6CB6B  9C CC 08     Mx
    STZ $0912                       ; $A6CB6E  9C 12 09     Mx
    STZ $08C8                       ; $A6CB71  9C C8 08     Mx
    LDA #$FFF8                      ; $A6CB74  A9 F8 FF     Mx
    STA $08CE                       ; $A6CB77  8D CE 08     Mx
    LDA $0C19                       ; $A6CB7A  AD 19 0C     Mx
    BNE L_A6CB82                    ; $A6CB7D  D0 03        Mx
    JMP L_A6CCF1                    ; $A6CB7F  4C F1 CC     Mx
L_A6CB82:
    LDA #$00FC                      ; $A6CB82  A9 FC 00     Mx
    STA $00D0                       ; $A6CB85  8D D0 00     Mx
    LDA $08F6                       ; $A6CB88  AD F6 08     Mx
    CMP #$0374                      ; $A6CB8B  C9 74 03     Mx
    BCS L_A6CB98                    ; $A6CB8E  B0 08        Mx
    LDA #$036B                      ; $A6CB90  A9 6B 03     Mx
    STA $00D3                       ; $A6CB93  8D D3 00     Mx
    BRA L_A6CB9E                    ; $A6CB96  80 06        Mx
L_A6CB98:
    LDA #$037D                      ; $A6CB98  A9 7D 03     Mx
    STA $00D3                       ; $A6CB9B  8D D3 00     Mx
L_A6CB9E:
    LDY #$08                        ; $A6CB9E  A0 08        Mx
    LDA ($CC),Y                     ; $A6CBA0  B1 CC        Mx
    AND #$0004                      ; $A6CBA2  29 04 00     Mx
    BEQ L_A6CBC5                    ; $A6CBA5  F0 1E        Mx
    LDA $00D0                       ; $A6CBA7  AD D0 00     Mx
    STA $00E2                       ; $A6CBAA  8D E2 00     Mx
    STZ $0B94                       ; $A6CBAD  9C 94 0B     Mx
    LDA #$0054                      ; $A6CBB0  A9 54 00     Mx
    STA $00F6                       ; $A6CBB3  8D F6 00     Mx
    STZ $0BAD                       ; $A6CBB6  9C AD 0B     Mx
    LDA $00D3                       ; $A6CBB9  AD D3 00     Mx
    STA $00E5                       ; $A6CBBC  8D E5 00     Mx
    STZ $0B98                       ; $A6CBBF  9C 98 0B     Mx
    JMP L_A6CE6F                    ; $A6CBC2  4C 6F CE     Mx
L_A6CBC5:
    LDA $08C4                       ; $A6CBC5  AD C4 08     Mx
    CMP #$0020                      ; $A6CBC8  C9 20 00     Mx
    BEQ L_A6CBD0                    ; $A6CBCB  F0 03        Mx
    JMP L_A6CC6A                    ; $A6CBCD  4C 6A CC     Mx
L_A6CBD0:
    LDA $092C                       ; $A6CBD0  AD 2C 09     Mx
    CMP #$00CC                      ; $A6CBD3  C9 CC 00     Mx
    BCC L_A6CC07                    ; $A6CBD6  90 2F        Mx
    STZ $08FA                       ; $A6CBD8  9C FA 08     Mx
    STZ $0902                       ; $A6CBDB  9C 02 09     Mx
    STZ $08F8                       ; $A6CBDE  9C F8 08     Mx
    STZ $0900                       ; $A6CBE1  9C 00 09     Mx
    LDA $0956                       ; $A6CBE4  AD 56 09     Mx
    BEQ L_A6CBF8                    ; $A6CBE7  F0 0F        Mx
    LDA #$9000                      ; $A6CBE9  A9 00 90     Mx
    STA $08FC                       ; $A6CBEC  8D FC 08     Mx
    LDA #$0004                      ; $A6CBEF  A9 04 00     Mx
    STA $08FE                       ; $A6CBF2  8D FE 08     Mx
    JMP L_A6D17F                    ; $A6CBF5  4C 7F D1     Mx
L_A6CBF8:
    LDA #$3000                      ; $A6CBF8  A9 00 30     Mx
    STA $08FC                       ; $A6CBFB  8D FC 08     Mx
    LDA #$0004                      ; $A6CBFE  A9 04 00     Mx
    STA $08FE                       ; $A6CC01  8D FE 08     Mx
    JMP L_A6D17F                    ; $A6CC04  4C 7F D1     Mx
L_A6CC07:
    LDA $08FA                       ; $A6CC07  AD FA 08     Mx
    CMP #$8000                      ; $A6CC0A  C9 00 80     Mx
    ROR                             ; $A6CC0D  6A           Mx
    ROR $08F8                       ; $A6CC0E  6E F8 08     Mx
    CMP #$8000                      ; $A6CC11  C9 00 80     Mx
    ROR                             ; $A6CC14  6A           Mx
    ROR $08F8                       ; $A6CC15  6E F8 08     Mx
    LDX $0956                       ; $A6CC18  AE 56 09     Mx
    BNE L_A6CC24                    ; $A6CC1B  D0 07        Mx
    CMP #$8000                      ; $A6CC1D  C9 00 80     Mx
    ROR                             ; $A6CC20  6A           Mx
    ROR $08F8                       ; $A6CC21  6E F8 08     Mx
L_A6CC24:
    STA $08FA                       ; $A6CC24  8D FA 08     Mx
    LDA $0902                       ; $A6CC27  AD 02 09     Mx
    CMP #$8000                      ; $A6CC2A  C9 00 80     Mx
    ROR                             ; $A6CC2D  6A           Mx
    ROR $0900                       ; $A6CC2E  6E 00 09     Mx
    CMP #$8000                      ; $A6CC31  C9 00 80     Mx
    ROR                             ; $A6CC34  6A           Mx
    ROR $0900                       ; $A6CC35  6E 00 09     Mx
    LDX $0956                       ; $A6CC38  AE 56 09     Mx
    BNE L_A6CC44                    ; $A6CC3B  D0 07        Mx
    CMP #$8000                      ; $A6CC3D  C9 00 80     Mx
    ROR                             ; $A6CC40  6A           Mx
    ROR $0900                       ; $A6CC41  6E 00 09     Mx
L_A6CC44:
    STA $0902                       ; $A6CC44  8D 02 09     Mx
    LDA $0956                       ; $A6CC47  AD 56 09     Mx
    BEQ L_A6CC5B                    ; $A6CC4A  F0 0F        Mx
    LDA #$9000                      ; $A6CC4C  A9 00 90     Mx
    STA $08FC                       ; $A6CC4F  8D FC 08     Mx
    LDA #$0004                      ; $A6CC52  A9 04 00     Mx
    STA $08FE                       ; $A6CC55  8D FE 08     Mx
    JMP L_A6D17F                    ; $A6CC58  4C 7F D1     Mx
L_A6CC5B:
    LDA #$3000                      ; $A6CC5B  A9 00 30     Mx
    STA $08FC                       ; $A6CC5E  8D FC 08     Mx
    LDA #$0004                      ; $A6CC61  A9 04 00     Mx
    STA $08FE                       ; $A6CC64  8D FE 08     Mx
    JMP L_A6D17F                    ; $A6CC67  4C 7F D1     Mx
L_A6CC6A:
    LDY #$2E                        ; $A6CC6A  A0 2E        Mx
    LDA ($CC),Y                     ; $A6CC6C  B1 CC        Mx
    STA $00E2                       ; $A6CC6E  8D E2 00     Mx
    LDY #$36                        ; $A6CC71  A0 36        Mx
    LDA ($CC),Y                     ; $A6CC73  B1 CC        Mx
    STA $00E5                       ; $A6CC75  8D E5 00     Mx
    LDA #$0068                      ; $A6CC78  A9 68 00     Mx
    STA $00F6                       ; $A6CC7B  8D F6 00     Mx
    STA $0BAD                       ; $A6CC7E  8D AD 0B     Mx
    LDA $00D3                       ; $A6CC81  AD D3 00     Mx
    SEC                             ; $A6CC84  38           Mx
    SBC $00E5                       ; $A6CC85  ED E5 00     Mx
    STA $00D3                       ; $A6CC88  8D D3 00     Mx
    BPL L_A6CC94                    ; $A6CC8B  10 07        Mx
    EOR #$FFFF                      ; $A6CC8D  49 FF FF     Mx
    CLC                             ; $A6CC90  18           Mx
    ADC #$0001                      ; $A6CC91  69 01 00     Mx
L_A6CC94:
    STA $00D9                       ; $A6CC94  8D D9 00     Mx
    LDA $00D0                       ; $A6CC97  AD D0 00     Mx
    SEC                             ; $A6CC9A  38           Mx
    SBC $00E2                       ; $A6CC9B  ED E2 00     Mx
    STA $00D0                       ; $A6CC9E  8D D0 00     Mx
    BPL L_A6CCAA                    ; $A6CCA1  10 07        Mx
    EOR #$FFFF                      ; $A6CCA3  49 FF FF     Mx
    CLC                             ; $A6CCA6  18           Mx
    ADC #$0001                      ; $A6CCA7  69 01 00     Mx
L_A6CCAA:
    STA $00D6                       ; $A6CCAA  8D D6 00     Mx
    CMP $00D9                       ; $A6CCAD  CD D9 00     Mx
    BCS L_A6CCD2                    ; $A6CCB0  B0 20        Mx
    LDA $00D9                       ; $A6CCB2  AD D9 00     Mx
    STA $00D6                       ; $A6CCB5  8D D6 00     Mx
    JMP L_A6CCD2                    ; $A6CCB8  4C D2 CC     Mx
L_A6CCBB:
    LDA $00D0                       ; $A6CCBB  AD D0 00     Mx
    CMP #$8000                      ; $A6CCBE  C9 00 80     Mx
    ROR                             ; $A6CCC1  6A           Mx
    STA $00D0                       ; $A6CCC2  8D D0 00     Mx
    LDA $00D3                       ; $A6CCC5  AD D3 00     Mx
    CMP #$8000                      ; $A6CCC8  C9 00 80     Mx
    ROR                             ; $A6CCCB  6A           Mx
    STA $00D3                       ; $A6CCCC  8D D3 00     Mx
    LSR $00D6                       ; $A6CCCF  4E D6 00     Mx
L_A6CCD2:
    LDA $00D6                       ; $A6CCD2  AD D6 00     Mx
    CMP #$0017                      ; $A6CCD5  C9 17 00     Mx
    BCS L_A6CCBB                    ; $A6CCD8  B0 E1        Mx
    LDA $00E2                       ; $A6CCDA  AD E2 00     Mx
    CLC                             ; $A6CCDD  18           Mx
    ADC $00D0                       ; $A6CCDE  6D D0 00     Mx
    STA $00E2                       ; $A6CCE1  8D E2 00     Mx
    LDA $00E5                       ; $A6CCE4  AD E5 00     Mx
    CLC                             ; $A6CCE7  18           Mx
    ADC $00D3                       ; $A6CCE8  6D D3 00     Mx
    STA $00E5                       ; $A6CCEB  8D E5 00     Mx
    JMP L_A6CE1E                    ; $A6CCEE  4C 1E CE     Mx
L_A6CCF1:
    LDA $0BD9                       ; $A6CCF1  AD D9 0B     Mx
    STA $00E2                       ; $A6CCF4  8D E2 00     Mx
    LDA $0BD7                       ; $A6CCF7  AD D7 0B     Mx
    STA $0B94                       ; $A6CCFA  8D 94 0B     Mx
    LDA $0BE1                       ; $A6CCFD  AD E1 0B     Mx
    STA $00E5                       ; $A6CD00  8D E5 00     Mx
    LDA $0BDF                       ; $A6CD03  AD DF 0B     Mx
    STA $0B98                       ; $A6CD06  8D 98 0B     Mx
    LDA $0BDD                       ; $A6CD09  AD DD 0B     Mx
    STA $00F6                       ; $A6CD0C  8D F6 00     Mx
    LDA $0BDB                       ; $A6CD0F  AD DB 0B     Mx
    STA $0BAD                       ; $A6CD12  8D AD 0B     Mx
    LDA $0BE5                       ; $A6CD15  AD E5 0B     Mx
    STA $00D0                       ; $A6CD18  8D D0 00     Mx
    LDA $0BE3                       ; $A6CD1B  AD E3 0B     Mx
    STA $0B7C                       ; $A6CD1E  8D 7C 0B     Mx
    LDA $0BED                       ; $A6CD21  AD ED 0B     Mx
    STA $00D3                       ; $A6CD24  8D D3 00     Mx
    LDA $0BEB                       ; $A6CD27  AD EB 0B     Mx
    STA $0B80                       ; $A6CD2A  8D 80 0B     Mx
    LDA $0BE9                       ; $A6CD2D  AD E9 0B     Mx
    STA $00D6                       ; $A6CD30  8D D6 00     Mx
    LDA $0BE7                       ; $A6CD33  AD E7 0B     Mx
    STA $0B84                       ; $A6CD36  8D 84 0B     Mx
    LDA $0B7C                       ; $A6CD39  AD 7C 0B     Mx
    ASL                             ; $A6CD3C  0A           Mx
    STA $00A4                       ; $A6CD3D  8D A4 00     Mx
    ROL $00D0                       ; $A6CD40  2E D0 00     Mx
    LDA $00D0                       ; $A6CD43  AD D0 00     Mx
    STA $00A6                       ; $A6CD46  8D A6 00     Mx
    LDA $00A4                       ; $A6CD49  AD A4 00     Mx
    ASL                             ; $A6CD4C  0A           Mx
    ROL $00D0                       ; $A6CD4D  2E D0 00     Mx
    ASL                             ; $A6CD50  0A           Mx
    ROL $00D0                       ; $A6CD51  2E D0 00     Mx
    ASL                             ; $A6CD54  0A           Mx
    ROL $00D0                       ; $A6CD55  2E D0 00     Mx
    ASL                             ; $A6CD58  0A           Mx
    ROL $00D0                       ; $A6CD59  2E D0 00     Mx
    SEC                             ; $A6CD5C  38           Mx
    SBC $00A4                       ; $A6CD5D  ED A4 00     Mx
    STA $0B7C                       ; $A6CD60  8D 7C 0B     Mx
    LDA $00D0                       ; $A6CD63  AD D0 00     Mx
    SBC $00A6                       ; $A6CD66  ED A6 00     Mx
    STA $00D0                       ; $A6CD69  8D D0 00     Mx
    LDA $0B94                       ; $A6CD6C  AD 94 0B     Mx
    CLC                             ; $A6CD6F  18           Mx
    ADC $0B7C                       ; $A6CD70  6D 7C 0B     Mx
    STA $0B94                       ; $A6CD73  8D 94 0B     Mx
    LDA $00E2                       ; $A6CD76  AD E2 00     Mx
    ADC $00D0                       ; $A6CD79  6D D0 00     Mx
    STA $00E2                       ; $A6CD7C  8D E2 00     Mx
    LDA $0B80                       ; $A6CD7F  AD 80 0B     Mx
    ASL                             ; $A6CD82  0A           Mx
    STA $00A4                       ; $A6CD83  8D A4 00     Mx
    ROL $00D3                       ; $A6CD86  2E D3 00     Mx
    LDA $00D3                       ; $A6CD89  AD D3 00     Mx
    STA $00A6                       ; $A6CD8C  8D A6 00     Mx
    LDA $00A4                       ; $A6CD8F  AD A4 00     Mx
    ASL                             ; $A6CD92  0A           Mx
    ROL $00D3                       ; $A6CD93  2E D3 00     Mx
    ASL                             ; $A6CD96  0A           Mx
    ROL $00D3                       ; $A6CD97  2E D3 00     Mx
    ASL                             ; $A6CD9A  0A           Mx
    ROL $00D3                       ; $A6CD9B  2E D3 00     Mx
    ASL                             ; $A6CD9E  0A           Mx
    ROL $00D3                       ; $A6CD9F  2E D3 00     Mx
    SEC                             ; $A6CDA2  38           Mx
    SBC $00A4                       ; $A6CDA3  ED A4 00     Mx
    STA $0B80                       ; $A6CDA6  8D 80 0B     Mx
    LDA $00D3                       ; $A6CDA9  AD D3 00     Mx
    SBC $00A6                       ; $A6CDAC  ED A6 00     Mx
    STA $00D3                       ; $A6CDAF  8D D3 00     Mx
    LDA $0B98                       ; $A6CDB2  AD 98 0B     Mx
    CLC                             ; $A6CDB5  18           Mx
    ADC $0B80                       ; $A6CDB6  6D 80 0B     Mx
    STA $0B98                       ; $A6CDB9  8D 98 0B     Mx
    LDA $00E5                       ; $A6CDBC  AD E5 00     Mx
    ADC $00D3                       ; $A6CDBF  6D D3 00     Mx
    STA $00E5                       ; $A6CDC2  8D E5 00     Mx
    LDA $0B84                       ; $A6CDC5  AD 84 0B     Mx
    ASL                             ; $A6CDC8  0A           Mx
    STA $00A4                       ; $A6CDC9  8D A4 00     Mx
    ROL $00D6                       ; $A6CDCC  2E D6 00     Mx
    LDA $00D6                       ; $A6CDCF  AD D6 00     Mx
    STA $00A6                       ; $A6CDD2  8D A6 00     Mx
    LDA $00A4                       ; $A6CDD5  AD A4 00     Mx
    ASL                             ; $A6CDD8  0A           Mx
    ROL $00D6                       ; $A6CDD9  2E D6 00     Mx
    ASL                             ; $A6CDDC  0A           Mx
    ROL $00D6                       ; $A6CDDD  2E D6 00     Mx
    ASL                             ; $A6CDE0  0A           Mx
    ROL $00D6                       ; $A6CDE1  2E D6 00     Mx
    ASL                             ; $A6CDE4  0A           Mx
    ROL $00D6                       ; $A6CDE5  2E D6 00     Mx
    SEC                             ; $A6CDE8  38           Mx
    SBC $00A4                       ; $A6CDE9  ED A4 00     Mx
    STA $0B84                       ; $A6CDEC  8D 84 0B     Mx
    LDA $00D6                       ; $A6CDEF  AD D6 00     Mx
    SBC $00A6                       ; $A6CDF2  ED A6 00     Mx
    STA $00D6                       ; $A6CDF5  8D D6 00     Mx
    LDA $0BAD                       ; $A6CDF8  AD AD 0B     Mx
    SEC                             ; $A6CDFB  38           Mx
    SBC $0B84                       ; $A6CDFC  ED 84 0B     Mx
    STA $0BAD                       ; $A6CDFF  8D AD 0B     Mx
    LDA $00F6                       ; $A6CE02  AD F6 00     Mx
    SBC $00D6                       ; $A6CE05  ED D6 00     Mx
    STA $00F6                       ; $A6CE08  8D F6 00     Mx
    LDA $0BAD                       ; $A6CE0B  AD AD 0B     Mx
    SEC                             ; $A6CE0E  38           Mx
    SBC #$DF00                      ; $A6CE0F  E9 00 DF     Mx
    STA $0BAD                       ; $A6CE12  8D AD 0B     Mx
    LDA $00F6                       ; $A6CE15  AD F6 00     Mx
    SBC #$003E                      ; $A6CE18  E9 3E 00     Mx
    STA $00F6                       ; $A6CE1B  8D F6 00     Mx
L_A6CE1E:
    LDA $00D0                       ; $A6CE1E  AD D0 00     Mx
    BMI L_A6CE2D                    ; $A6CE21  30 0A        Mx
    CMP #$00EE                      ; $A6CE23  C9 EE 00     Mx
    BCC L_A6CE6F                    ; $A6CE26  90 47        Mx
    LDA #$00F6                      ; $A6CE28  A9 F6 00     Mx
    BRA L_A6CE35                    ; $A6CE2B  80 08        Mx
L_A6CE2D:
    CMP #$FF1A                      ; $A6CE2D  C9 1A FF     Mx
    BCS L_A6CE6F                    ; $A6CE30  B0 3D        Mx
    LDA #$FF12                      ; $A6CE32  A9 12 FF     Mx
L_A6CE35:
    STA $00BA                       ; $A6CE35  8D BA 00     Mx
    LDA $00D3                       ; $A6CE38  AD D3 00     Mx
    SEC                             ; $A6CE3B  38           Mx
    SBC #$0374                      ; $A6CE3C  E9 74 03     Mx
    BPL L_A6CE48                    ; $A6CE3F  10 07        Mx
    EOR #$FFFF                      ; $A6CE41  49 FF FF     Mx
    CLC                             ; $A6CE44  18           Mx
    ADC #$0001                      ; $A6CE45  69 01 00     Mx
L_A6CE48:
    CMP #$000F                      ; $A6CE48  C9 0F 00     Mx
    BCS L_A6CE6F                    ; $A6CE4B  B0 22        Mx
    LDA $00D3                       ; $A6CE4D  AD D3 00     Mx
    CMP #$0374                      ; $A6CE50  C9 74 03     Mx
    BCC L_A6CE63                    ; $A6CE53  90 0E        Mx
    LDA #$0383                      ; $A6CE55  A9 83 03     Mx
    STA $00D3                       ; $A6CE58  8D D3 00     Mx
    LDA $00BA                       ; $A6CE5B  AD BA 00     Mx
    STA $00D0                       ; $A6CE5E  8D D0 00     Mx
    BRA L_A6CE6F                    ; $A6CE61  80 0C        Mx
L_A6CE63:
    LDA #$0365                      ; $A6CE63  A9 65 03     Mx
    STA $00D3                       ; $A6CE66  8D D3 00     Mx
    LDA $00BA                       ; $A6CE69  AD BA 00     Mx
    STA $00D0                       ; $A6CE6C  8D D0 00     Mx
L_A6CE6F:
    LDA #$001E                      ; $A6CE6F  A9 1E 00     Mx
    STA $00DC                       ; $A6CE72  8D DC 00     Mx
    STZ $00C2                       ; $A6CE75  9C C2 00     Mx
    STZ $00C4                       ; $A6CE78  9C C4 00     Mx
    STZ $00C6                       ; $A6CE7B  9C C6 00     Mx
    STZ $00C8                       ; $A6CE7E  9C C8 00     Mx
    LDA $0C25                       ; $A6CE81  AD 25 0C     Mx
    CMP #$08C0                      ; $A6CE84  C9 C0 08     Mx
    BNE L_A6CE8C                    ; $A6CE87  D0 03        Mx
    JMP L_A6D04D                    ; $A6CE89  4C 4D D0     Mx
L_A6CE8C:
    LDA $00E2                       ; $A6CE8C  AD E2 00     Mx
    STA $00D9                       ; $A6CE8F  8D D9 00     Mx
    LDA $00E5                       ; $A6CE92  AD E5 00     Mx
    STA $00DF                       ; $A6CE95  8D DF 00     Mx
    LDA $00D9                       ; $A6CE98  AD D9 00     Mx
    SEC                             ; $A6CE9B  38           Mx
    SBC $08EE                       ; $A6CE9C  ED EE 08     Mx
    STA $00D9                       ; $A6CE9F  8D D9 00     Mx
    LDA $00DF                       ; $A6CEA2  AD DF 00     Mx
    SEC                             ; $A6CEA5  38           Mx
    SBC $08F6                       ; $A6CEA6  ED F6 08     Mx
    STA $00DF                       ; $A6CEA9  8D DF 00     Mx
    LDA #$001E                      ; $A6CEAC  A9 1E 00     Mx
    LDX $08C4                       ; $A6CEAF  AE C4 08     Mx
    CPX #$22                        ; $A6CEB2  E0 22        Mx
    BNE L_A6CEBA                    ; $A6CEB4  D0 04        Mx
    CLC                             ; $A6CEB6  18           Mx
    ADC #$0014                      ; $A6CEB7  69 14 00     Mx
L_A6CEBA:
    LDX $00DA                       ; $A6CEBA  AE DA 00     Mx
    BMI L_A6CEC7                    ; $A6CEBD  30 08        Mx
    CMP $00D9                       ; $A6CEBF  CD D9 00     Mx
    BCS L_A6CEC7                    ; $A6CEC2  B0 03        Mx
    STA $00D9                       ; $A6CEC4  8D D9 00     Mx
L_A6CEC7:
    LDX $00E0                       ; $A6CEC7  AE E0 00     Mx
    BMI L_A6CED4                    ; $A6CECA  30 08        Mx
    CMP $00DF                       ; $A6CECC  CD DF 00     Mx
    BCS L_A6CED4                    ; $A6CECF  B0 03        Mx
    STA $00DF                       ; $A6CED1  8D DF 00     Mx
L_A6CED4:
    EOR #$FFFF                      ; $A6CED4  49 FF FF     Mx
    CLC                             ; $A6CED7  18           Mx
    ADC #$0001                      ; $A6CED8  69 01 00     Mx
    LDX $00DA                       ; $A6CEDB  AE DA 00     Mx
    BPL L_A6CEE8                    ; $A6CEDE  10 08        Mx
    CMP $00D9                       ; $A6CEE0  CD D9 00     Mx
    BCC L_A6CEE8                    ; $A6CEE3  90 03        Mx
    STA $00D9                       ; $A6CEE5  8D D9 00     Mx
L_A6CEE8:
    LDX $00E0                       ; $A6CEE8  AE E0 00     Mx
    BPL L_A6CEF5                    ; $A6CEEB  10 08        Mx
    CMP $00DF                       ; $A6CEED  CD DF 00     Mx
    BCC L_A6CEF5                    ; $A6CEF0  90 03        Mx
    STA $00DF                       ; $A6CEF2  8D DF 00     Mx
L_A6CEF5:
    LDA $00D9                       ; $A6CEF5  AD D9 00     Mx
    STA $00E5                       ; $A6CEF8  8D E5 00     Mx
    BPL L_A6CF07                    ; $A6CEFB  10 0A        Mx
    EOR #$FFFF                      ; $A6CEFD  49 FF FF     Mx
    CLC                             ; $A6CF00  18           Mx
    ADC #$0001                      ; $A6CF01  69 01 00     Mx
    STA $00D9                       ; $A6CF04  8D D9 00     Mx
L_A6CF07:
    LDX $00DC                       ; $A6CF07  AE DC 00     Mx
    STX $00EE                       ; $A6CF0A  8E EE 00     Mx
    LDA #$0000                      ; $A6CF0D  A9 00 00     Mx
    STA $00EA                       ; $A6CF10  8D EA 00     Mx
    LDA $00D9                       ; $A6CF13  AD D9 00     Mx
    STA $4204                       ; $A6CF16  8D 04 42     Mx
    LDX $00EE                       ; $A6CF19  AE EE 00     Mx
    STX $4206                       ; $A6CF1C  8E 06 42     Mx
    NOP                             ; $A6CF1F  EA           Mx
    NOP                             ; $A6CF20  EA           Mx
    NOP                             ; $A6CF21  EA           Mx
    NOP                             ; $A6CF22  EA           Mx
    NOP                             ; $A6CF23  EA           Mx
    NOP                             ; $A6CF24  EA           Mx
    NOP                             ; $A6CF25  EA           Mx
    STZ $00F0                       ; $A6CF26  9C F0 00     Mx
    LDA $4214                       ; $A6CF29  AD 14 42     Mx
    STA $00F2                       ; $A6CF2C  8D F2 00     Mx
    LDX $4216                       ; $A6CF2F  AE 16 42     Mx
    STX $00EC                       ; $A6CF32  8E EC 00     Mx
    LDA $00EB                       ; $A6CF35  AD EB 00     Mx
    STA $4204                       ; $A6CF38  8D 04 42     Mx
    LDX $00EE                       ; $A6CF3B  AE EE 00     Mx
    STX $4206                       ; $A6CF3E  8E 06 42     Mx
    NOP                             ; $A6CF41  EA           Mx
    NOP                             ; $A6CF42  EA           Mx
    NOP                             ; $A6CF43  EA           Mx
    NOP                             ; $A6CF44  EA           Mx
    NOP                             ; $A6CF45  EA           Mx
    NOP                             ; $A6CF46  EA           Mx
    NOP                             ; $A6CF47  EA           Mx
    STZ $00F0                       ; $A6CF48  9C F0 00     Mx
    LDA $4214                       ; $A6CF4B  AD 14 42     Mx
    ORA $00F1                       ; $A6CF4E  0D F1 00     Mx
    STA $00F1                       ; $A6CF51  8D F1 00     Mx
    LDX $4216                       ; $A6CF54  AE 16 42     Mx
    STX $00EB                       ; $A6CF57  8E EB 00     Mx
    LDA $00EA                       ; $A6CF5A  AD EA 00     Mx
    STA $4204                       ; $A6CF5D  8D 04 42     Mx
    LDX $00EE                       ; $A6CF60  AE EE 00     Mx
    STX $4206                       ; $A6CF63  8E 06 42     Mx
    NOP                             ; $A6CF66  EA           Mx
    NOP                             ; $A6CF67  EA           Mx
    NOP                             ; $A6CF68  EA           Mx
    NOP                             ; $A6CF69  EA           Mx
    NOP                             ; $A6CF6A  EA           Mx
    NOP                             ; $A6CF6B  EA           Mx
    NOP                             ; $A6CF6C  EA           Mx
    NOP                             ; $A6CF6D  EA           Mx
    LDA $4214                       ; $A6CF6E  AD 14 42     Mx
    ORA $00F0                       ; $A6CF71  0D F0 00     Mx
    STA $00F0                       ; $A6CF74  8D F0 00     Mx
    LDA $00F0                       ; $A6CF77  AD F0 00     Mx
    STA $00C2                       ; $A6CF7A  8D C2 00     Mx
    LDA $00F2                       ; $A6CF7D  AD F2 00     Mx
    STA $00C4                       ; $A6CF80  8D C4 00     Mx
    LDA $00E5                       ; $A6CF83  AD E5 00     Mx
    BPL L_A6CFA1                    ; $A6CF86  10 19        Mx
    LDA $00C2                       ; $A6CF88  AD C2 00     Mx
    EOR #$FFFF                      ; $A6CF8B  49 FF FF     Mx
    CLC                             ; $A6CF8E  18           Mx
    ADC #$0001                      ; $A6CF8F  69 01 00     Mx
    STA $00C2                       ; $A6CF92  8D C2 00     Mx
    LDA $00C4                       ; $A6CF95  AD C4 00     Mx
    EOR #$FFFF                      ; $A6CF98  49 FF FF     Mx
    ADC #$0000                      ; $A6CF9B  69 00 00     Mx
    STA $00C4                       ; $A6CF9E  8D C4 00     Mx
L_A6CFA1:
    LDA $00DF                       ; $A6CFA1  AD DF 00     Mx
    STA $00E5                       ; $A6CFA4  8D E5 00     Mx
    BPL L_A6CFB3                    ; $A6CFA7  10 0A        Mx
    EOR #$FFFF                      ; $A6CFA9  49 FF FF     Mx
    CLC                             ; $A6CFAC  18           Mx
    ADC #$0001                      ; $A6CFAD  69 01 00     Mx
    STA $00DF                       ; $A6CFB0  8D DF 00     Mx
L_A6CFB3:
    LDX $00DC                       ; $A6CFB3  AE DC 00     Mx
    STX $00EE                       ; $A6CFB6  8E EE 00     Mx
    LDA #$0000                      ; $A6CFB9  A9 00 00     Mx
    STA $00EA                       ; $A6CFBC  8D EA 00     Mx
    LDA $00DF                       ; $A6CFBF  AD DF 00     Mx
    STA $4204                       ; $A6CFC2  8D 04 42     Mx
    LDX $00EE                       ; $A6CFC5  AE EE 00     Mx
    STX $4206                       ; $A6CFC8  8E 06 42     Mx
    NOP                             ; $A6CFCB  EA           Mx
    NOP                             ; $A6CFCC  EA           Mx
    NOP                             ; $A6CFCD  EA           Mx
    NOP                             ; $A6CFCE  EA           Mx
    NOP                             ; $A6CFCF  EA           Mx
    NOP                             ; $A6CFD0  EA           Mx
    NOP                             ; $A6CFD1  EA           Mx
    STZ $00F0                       ; $A6CFD2  9C F0 00     Mx
    LDA $4214                       ; $A6CFD5  AD 14 42     Mx
    STA $00F2                       ; $A6CFD8  8D F2 00     Mx
    LDX $4216                       ; $A6CFDB  AE 16 42     Mx
    STX $00EC                       ; $A6CFDE  8E EC 00     Mx
    LDA $00EB                       ; $A6CFE1  AD EB 00     Mx
    STA $4204                       ; $A6CFE4  8D 04 42     Mx
    LDX $00EE                       ; $A6CFE7  AE EE 00     Mx
    STX $4206                       ; $A6CFEA  8E 06 42     Mx
    NOP                             ; $A6CFED  EA           Mx
    NOP                             ; $A6CFEE  EA           Mx
    NOP                             ; $A6CFEF  EA           Mx
    NOP                             ; $A6CFF0  EA           Mx
    NOP                             ; $A6CFF1  EA           Mx
    NOP                             ; $A6CFF2  EA           Mx
    NOP                             ; $A6CFF3  EA           Mx
    STZ $00F0                       ; $A6CFF4  9C F0 00     Mx
    LDA $4214                       ; $A6CFF7  AD 14 42     Mx
    ORA $00F1                       ; $A6CFFA  0D F1 00     Mx
    STA $00F1                       ; $A6CFFD  8D F1 00     Mx
    LDX $4216                       ; $A6D000  AE 16 42     Mx
    STX $00EB                       ; $A6D003  8E EB 00     Mx
    LDA $00EA                       ; $A6D006  AD EA 00     Mx
    STA $4204                       ; $A6D009  8D 04 42     Mx
    LDX $00EE                       ; $A6D00C  AE EE 00     Mx
    STX $4206                       ; $A6D00F  8E 06 42     Mx
    NOP                             ; $A6D012  EA           Mx
    NOP                             ; $A6D013  EA           Mx
    NOP                             ; $A6D014  EA           Mx
    NOP                             ; $A6D015  EA           Mx
    NOP                             ; $A6D016  EA           Mx
    NOP                             ; $A6D017  EA           Mx
    NOP                             ; $A6D018  EA           Mx
    NOP                             ; $A6D019  EA           Mx
    LDA $4214                       ; $A6D01A  AD 14 42     Mx
    ORA $00F0                       ; $A6D01D  0D F0 00     Mx
    STA $00F0                       ; $A6D020  8D F0 00     Mx
    LDA $00F0                       ; $A6D023  AD F0 00     Mx
    STA $00C6                       ; $A6D026  8D C6 00     Mx
    LDA $00F2                       ; $A6D029  AD F2 00     Mx
    STA $00C8                       ; $A6D02C  8D C8 00     Mx
    LDA $00E5                       ; $A6D02F  AD E5 00     Mx
    BPL L_A6D04D                    ; $A6D032  10 19        Mx
    LDA $00C6                       ; $A6D034  AD C6 00     Mx
    EOR #$FFFF                      ; $A6D037  49 FF FF     Mx
    CLC                             ; $A6D03A  18           Mx
    ADC #$0001                      ; $A6D03B  69 01 00     Mx
    STA $00C6                       ; $A6D03E  8D C6 00     Mx
    LDA $00C8                       ; $A6D041  AD C8 00     Mx
    EOR #$FFFF                      ; $A6D044  49 FF FF     Mx
    ADC #$0000                      ; $A6D047  69 00 00     Mx
    STA $00C8                       ; $A6D04A  8D C8 00     Mx
L_A6D04D:
    LDA $00C2                       ; $A6D04D  AD C2 00     Mx
    STA $08F8                       ; $A6D050  8D F8 08     Mx
    LDA $00C4                       ; $A6D053  AD C4 00     Mx
    STA $08FA                       ; $A6D056  8D FA 08     Mx
    LDA $00C6                       ; $A6D059  AD C6 00     Mx
    STA $0900                       ; $A6D05C  8D 00 09     Mx
    LDA $00C8                       ; $A6D05F  AD C8 00     Mx
    STA $0902                       ; $A6D062  8D 02 09     Mx
    LDA #$0080                      ; $A6D065  A9 80 00     Mx
    STA $00D3                       ; $A6D068  8D D3 00     Mx
    SEP #$20                        ; $A6D06B  E2 20        Mx
    LDA $00DC                       ; $A6D06D  AD DC 00     mx
    STA $4202                       ; $A6D070  8D 02 42     mx
    LDA $00D3                       ; $A6D073  AD D3 00     mx
    STA $4203                       ; $A6D076  8D 03 42     mx
    NOP                             ; $A6D079  EA           mx
    NOP                             ; $A6D07A  EA           mx
    NOP                             ; $A6D07B  EA           mx
    REP #$20                        ; $A6D07C  C2 20        mx
    LDA $4216                       ; $A6D07E  AD 16 42     Mx
    STA $00D3                       ; $A6D081  8D D3 00     Mx
    STA $00A8                       ; $A6D084  8D A8 00     Mx
    LDA #$0012                      ; $A6D087  A9 12 00     Mx
    STA $00D3                       ; $A6D08A  8D D3 00     Mx
    SEP #$20                        ; $A6D08D  E2 20        Mx
    LDA $00DC                       ; $A6D08F  AD DC 00     mx
    STA $4202                       ; $A6D092  8D 02 42     mx
    LDA $00D3                       ; $A6D095  AD D3 00     mx
    STA $4203                       ; $A6D098  8D 03 42     mx
    NOP                             ; $A6D09B  EA           mx
    NOP                             ; $A6D09C  EA           mx
    NOP                             ; $A6D09D  EA           mx
    REP #$20                        ; $A6D09E  C2 20        mx
    LDA $4216                       ; $A6D0A0  AD 16 42     Mx
    STA $00D3                       ; $A6D0A3  8D D3 00     Mx
    STZ $0B82                       ; $A6D0A6  9C 82 0B     Mx
    STZ $0B80                       ; $A6D0A9  9C 80 0B     Mx
    STA $0B81                       ; $A6D0AC  8D 81 0B     Mx
    LDA $0B80                       ; $A6D0AF  AD 80 0B     Mx
    CLC                             ; $A6D0B2  18           Mx
    ADC $00A8                       ; $A6D0B3  6D A8 00     Mx
    STA $0B80                       ; $A6D0B6  8D 80 0B     Mx
    LDA $0B82                       ; $A6D0B9  AD 82 0B     Mx
    ADC #$0000                      ; $A6D0BC  69 00 00     Mx
    STA $0B82                       ; $A6D0BF  8D 82 0B     Mx
    LDA $00F6                       ; $A6D0C2  AD F6 00     Mx
    SBC #$002E                      ; $A6D0C5  E9 2E 00     Mx
    STA $00F6                       ; $A6D0C8  8D F6 00     Mx
    LDA $08F0                       ; $A6D0CB  AD F0 08     Mx
    SEC                             ; $A6D0CE  38           Mx
    SBC $0BAD                       ; $A6D0CF  ED AD 0B     Mx
    STA $00C2                       ; $A6D0D2  8D C2 00     Mx
    LDA $08F2                       ; $A6D0D5  AD F2 08     Mx
    SBC $00F6                       ; $A6D0D8  ED F6 00     Mx
    STA $00C4                       ; $A6D0DB  8D C4 00     Mx
    STA $00E5                       ; $A6D0DE  8D E5 00     Mx
    BPL L_A6D0FC                    ; $A6D0E1  10 19        Mx
    LDA $00C2                       ; $A6D0E3  AD C2 00     Mx
    EOR #$FFFF                      ; $A6D0E6  49 FF FF     Mx
    CLC                             ; $A6D0E9  18           Mx
    ADC #$0001                      ; $A6D0EA  69 01 00     Mx
    STA $00C2                       ; $A6D0ED  8D C2 00     Mx
    LDA $00C4                       ; $A6D0F0  AD C4 00     Mx
    EOR #$FFFF                      ; $A6D0F3  49 FF FF     Mx
    ADC #$0000                      ; $A6D0F6  69 00 00     Mx
    STA $00C4                       ; $A6D0F9  8D C4 00     Mx
L_A6D0FC:
    LDA $00C3                       ; $A6D0FC  AD C3 00     Mx
    STA $4204                       ; $A6D0FF  8D 04 42     Mx
    LDX $00DC                       ; $A6D102  AE DC 00     Mx
    STX $4206                       ; $A6D105  8E 06 42     Mx
    NOP                             ; $A6D108  EA           Mx
    NOP                             ; $A6D109  EA           Mx
    NOP                             ; $A6D10A  EA           Mx
    NOP                             ; $A6D10B  EA           Mx
    STZ $00EA                       ; $A6D10C  9C EA 00     Mx
    STZ $00EC                       ; $A6D10F  9C EC 00     Mx
    LDA $00E5                       ; $A6D112  AD E5 00     Mx
    BPL L_A6D124                    ; $A6D115  10 0D        Mx
    LDA $4214                       ; $A6D117  AD 14 42     Mx
    EOR #$FFFF                      ; $A6D11A  49 FF FF     Mx
    CLC                             ; $A6D11D  18           Mx
    ADC #$0001                      ; $A6D11E  69 01 00     Mx
    JMP L_A6D127                    ; $A6D121  4C 27 D1     Mx
L_A6D124:
    LDA $4214                       ; $A6D124  AD 14 42     Mx
L_A6D127:
    STA $00EB                       ; $A6D127  8D EB 00     Mx
    LDA $0B80                       ; $A6D12A  AD 80 0B     Mx
    CLC                             ; $A6D12D  18           Mx
    ADC $00EA                       ; $A6D12E  6D EA 00     Mx
    STA $0B80                       ; $A6D131  8D 80 0B     Mx
    LDA $0B82                       ; $A6D134  AD 82 0B     Mx
    ADC $00EC                       ; $A6D137  6D EC 00     Mx
    STA $0B82                       ; $A6D13A  8D 82 0B     Mx
    LDA $0B80                       ; $A6D13D  AD 80 0B     Mx
    SEC                             ; $A6D140  38           Mx
    SBC #$C000                      ; $A6D141  E9 00 C0     Mx
    LDA $0B82                       ; $A6D144  AD 82 0B     Mx
    SBC #$0003                      ; $A6D147  E9 03 00     Mx
    BPL L_A6D158                    ; $A6D14A  10 0C        Mx
    LDA #$0003                      ; $A6D14C  A9 03 00     Mx
    STA $0B82                       ; $A6D14F  8D 82 0B     Mx
    LDA #$C000                      ; $A6D152  A9 00 C0     Mx
    STA $0B80                       ; $A6D155  8D 80 0B     Mx
L_A6D158:
    LDA $0B80                       ; $A6D158  AD 80 0B     Mx
    SEC                             ; $A6D15B  38           Mx
    SBC #$A200                      ; $A6D15C  E9 00 A2     Mx
    LDA $0B82                       ; $A6D15F  AD 82 0B     Mx
    SBC #$0004                      ; $A6D162  E9 04 00     Mx
    BMI L_A6D173                    ; $A6D165  30 0C        Mx
    LDA #$0004                      ; $A6D167  A9 04 00     Mx
    STA $0B82                       ; $A6D16A  8D 82 0B     Mx
    LDA #$A200                      ; $A6D16D  A9 00 A2     Mx
    STA $0B80                       ; $A6D170  8D 80 0B     Mx
L_A6D173:
    LDA $0B80                       ; $A6D173  AD 80 0B     Mx
    STA $08FC                       ; $A6D176  8D FC 08     Mx
    LDA $0B82                       ; $A6D179  AD 82 0B     Mx
    STA $08FE                       ; $A6D17C  8D FE 08     Mx
L_A6D17F:
    LDA $08C4                       ; $A6D17F  AD C4 08     Mx
    CMP #$0024                      ; $A6D182  C9 24 00     Mx
    BNE L_A6D1BD                    ; $A6D185  D0 36        Mx
    LDA $08FE                       ; $A6D187  AD FE 08     Mx
    STA $0904                       ; $A6D18A  8D 04 09     Mx
    LDA $08FC                       ; $A6D18D  AD FC 08     Mx
    STA $0906                       ; $A6D190  8D 06 09     Mx
    LDA $08FA                       ; $A6D193  AD FA 08     Mx
    STA $0908                       ; $A6D196  8D 08 09     Mx
    LDA $08F8                       ; $A6D199  AD F8 08     Mx
    STA $090A                       ; $A6D19C  8D 0A 09     Mx
    LDA $0902                       ; $A6D19F  AD 02 09     Mx
    STA $090C                       ; $A6D1A2  8D 0C 09     Mx
    LDA $0900                       ; $A6D1A5  AD 00 09     Mx
    STA $090E                       ; $A6D1A8  8D 0E 09     Mx
    STZ $08FE                       ; $A6D1AB  9C FE 08     Mx
    STZ $08FC                       ; $A6D1AE  9C FC 08     Mx
    STZ $08FA                       ; $A6D1B1  9C FA 08     Mx
    STZ $08F8                       ; $A6D1B4  9C F8 08     Mx
    STZ $0902                       ; $A6D1B7  9C 02 09     Mx
    STZ $0900                       ; $A6D1BA  9C 00 09     Mx
L_A6D1BD:
    STZ $0950                       ; $A6D1BD  9C 50 09     Mx
    LDA #$FFFF                      ; $A6D1C0  A9 FF FF     Mx
    STA $093E                       ; $A6D1C3  8D 3E 09     Mx
    RTS                             ; $A6D1C6  60           Mx
L_A6D1C7:
    LDX $08C1                       ; $A6D1C7  AE C1 08     Mx
    BEQ L_A6D1D4                    ; $A6D1CA  F0 08        Mx
    LDA $08C4                       ; $A6D1CC  AD C4 08     Mx
    CMP #$0004                      ; $A6D1CF  C9 04 00     Mx
    BEQ L_A6D246                    ; $A6D1D2  F0 72        Mx
L_A6D1D4:
    LDA $08F2                       ; $A6D1D4  AD F2 08     Mx
    BNE L_A6D246                    ; $A6D1D7  D0 6D        Mx
    LDA $08D2                       ; $A6D1D9  AD D2 08     Mx
    BNE L_A6D246                    ; $A6D1DC  D0 68        Mx
    LDA $06F4                       ; $A6D1DE  AD F4 06     Mx
    CMP #$0030                      ; $A6D1E1  C9 30 00     Mx
    BEQ L_A6D1FB                    ; $A6D1E4  F0 15        Mx
    LDA $0938                       ; $A6D1E6  AD 38 09     Mx
    CMP #$0030                      ; $A6D1E9  C9 30 00     Mx
    BCS L_A6D1FB                    ; $A6D1EC  B0 0D        Mx
    CMP #$0018                      ; $A6D1EE  C9 18 00     Mx
    BCC L_A6D21B                    ; $A6D1F1  90 28        Mx
    LDA $06F4                       ; $A6D1F3  AD F4 06     Mx
    CMP #$002C                      ; $A6D1F6  C9 2C 00     Mx
    BEQ L_A6D21B                    ; $A6D1F9  F0 20        Mx
L_A6D1FB:
    LDA $07DC                       ; $A6D1FB  AD DC 07     Mx
    CMP #$0030                      ; $A6D1FE  C9 30 00     Mx
    BEQ L_A6D218                    ; $A6D201  F0 15        Mx
    LDA $093A                       ; $A6D203  AD 3A 09     Mx
    CMP #$0030                      ; $A6D206  C9 30 00     Mx
    BCS L_A6D218                    ; $A6D209  B0 0D        Mx
    CMP #$0018                      ; $A6D20B  C9 18 00     Mx
    BCC L_A6D21B                    ; $A6D20E  90 0B        Mx
    LDA $07DC                       ; $A6D210  AD DC 07     Mx
    CMP #$002C                      ; $A6D213  C9 2C 00     Mx
    BEQ L_A6D21B                    ; $A6D216  F0 03        Mx
L_A6D218:
    JMP L_A6D246                    ; $A6D218  4C 46 D2     Mx
L_A6D21B:
    LDA $0CCB                       ; $A6D21B  AD CB 0C     Mx
    CMP #$0003                      ; $A6D21E  C9 03 00     Mx
    BCC L_A6D246                    ; $A6D221  90 23        Mx
    LDA $0CCB                       ; $A6D223  AD CB 0C     Mx
    CMP #$00A9                      ; $A6D226  C9 A9 00     Mx
    BCS L_A6D246                    ; $A6D229  B0 1B        Mx
    LDA #$002E                      ; $A6D22B  A9 2E 00     Mx
    STA $08C4                       ; $A6D22E  8D C4 08     Mx
    LDA #$FFFF                      ; $A6D231  A9 FF FF     Mx
    STA $08CA                       ; $A6D234  8D CA 08     Mx
    STZ $08CC                       ; $A6D237  9C CC 08     Mx
    STZ $0912                       ; $A6D23A  9C 12 09     Mx
    STZ $08C8                       ; $A6D23D  9C C8 08     Mx
    LDA #$FFF8                      ; $A6D240  A9 F8 FF     Mx
    STA $08CE                       ; $A6D243  8D CE 08     Mx
L_A6D246:
    RTS                             ; $A6D246  60           Mx
L_A6D247:
    LDA $1683                       ; $A6D247  AD 83 16     Mx
    CMP #$001B                      ; $A6D24A  C9 1B 00     Mx
    BNE L_A6D252                    ; $A6D24D  D0 03        Mx
    JMP L_A6D2C5                    ; $A6D24F  4C C5 D2     Mx
L_A6D252:
    LDX $08C0                       ; $A6D252  AE C0 08     Mx
    CPX $0C19                       ; $A6D255  EC 19 0C     Mx
    BEQ L_A6D2C6                    ; $A6D258  F0 6C        Mx
    LDA $0956                       ; $A6D25A  AD 56 09     Mx
    BEQ L_A6D287                    ; $A6D25D  F0 28        Mx
    LDA $095A                       ; $A6D25F  AD 5A 09     Mx
    CMP #$000A                      ; $A6D262  C9 0A 00     Mx
    BCC L_A6D2C5                    ; $A6D265  90 5E        Mx
    LDX $0944                       ; $A6D267  AE 44 09     Mx
    INX                             ; $A6D26A  E8           Mx
    BEQ L_A6D2C5                    ; $A6D26B  F0 58        Mx
    LDX $08C0                       ; $A6D26D  AE C0 08     Mx
    CPX $0A96                       ; $A6D270  EC 96 0A     Mx
    BEQ L_A6D282                    ; $A6D273  F0 0D        Mx
    SEC                             ; $A6D275  38           Mx
    SBC #$0009                      ; $A6D276  E9 09 00     Mx
    STA $095A                       ; $A6D279  8D 5A 09     Mx
    LDA #$000A                      ; $A6D27C  A9 0A 00     Mx
    STA $0962                       ; $A6D27F  8D 62 09     Mx
L_A6D282:
    LDA #$0036                      ; $A6D282  A9 36 00     Mx
    BNE L_A6D29B                    ; $A6D285  D0 14        Mx
L_A6D287:
    LDA $094E                       ; $A6D287  AD 4E 09     Mx
    BNE L_A6D2C5                    ; $A6D28A  D0 39        Mx
    LDA $0B6C                       ; $A6D28C  AD 6C 0B     Mx
    BNE L_A6D2C5                    ; $A6D28F  D0 34        Mx
    LDA #$0008                      ; $A6D291  A9 08 00     Mx
    JSL L_BDFDF3                    ; $A6D294  22 F3 FD BD  Mx
    LDA #$002C                      ; $A6D298  A9 2C 00     Mx
L_A6D29B:
    STZ $08FA                       ; $A6D29B  9C FA 08     Mx
    STZ $08F8                       ; $A6D29E  9C F8 08     Mx
    STZ $0902                       ; $A6D2A1  9C 02 09     Mx
    STZ $0900                       ; $A6D2A4  9C 00 09     Mx
    STZ $08FE                       ; $A6D2A7  9C FE 08     Mx
    STZ $08FC                       ; $A6D2AA  9C FC 08     Mx
    STA $08C4                       ; $A6D2AD  8D C4 08     Mx
    LDA #$FFFF                      ; $A6D2B0  A9 FF FF     Mx
    STA $08CA                       ; $A6D2B3  8D CA 08     Mx
    STZ $08CC                       ; $A6D2B6  9C CC 08     Mx
    STZ $0912                       ; $A6D2B9  9C 12 09     Mx
    STZ $08C8                       ; $A6D2BC  9C C8 08     Mx
    LDA #$FFF8                      ; $A6D2BF  A9 F8 FF     Mx
    STA $08CE                       ; $A6D2C2  8D CE 08     Mx
L_A6D2C5:
    RTS                             ; $A6D2C5  60           Mx
L_A6D2C6:
    LDX $0944                       ; $A6D2C6  AE 44 09     Mx
    INX                             ; $A6D2C9  E8           Mx
    BEQ L_A6D2C5                    ; $A6D2CA  F0 F9        Mx
    STZ $08FA                       ; $A6D2CC  9C FA 08     Mx
    STZ $08F8                       ; $A6D2CF  9C F8 08     Mx
    STZ $0902                       ; $A6D2D2  9C 02 09     Mx
    STZ $0900                       ; $A6D2D5  9C 00 09     Mx
    STZ $08FE                       ; $A6D2D8  9C FE 08     Mx
    STZ $08FC                       ; $A6D2DB  9C FC 08     Mx
    STZ $0912                       ; $A6D2DE  9C 12 09     Mx
    STZ $0C1B                       ; $A6D2E1  9C 1B 0C     Mx
    STZ $0C29                       ; $A6D2E4  9C 29 0C     Mx
    STZ $0C27                       ; $A6D2E7  9C 27 0C     Mx
    LDA #$09A8                      ; $A6D2EA  A9 A8 09     Mx
    STA $0C25                       ; $A6D2ED  8D 25 0C     Mx
    LDA $0C19                       ; $A6D2F0  AD 19 0C     Mx
    STA $0C1F                       ; $A6D2F3  8D 1F 0C     Mx
    STZ $0950                       ; $A6D2F6  9C 50 09     Mx
    LDA $00C0                       ; $A6D2F9  AD C0 00     Mx
    STA $0C39                       ; $A6D2FC  8D 39 0C     Mx
    LDA $08D8                       ; $A6D2FF  AD D8 08     Mx
    STA $00A4                       ; $A6D302  8D A4 00     Mx
    LDA $0930                       ; $A6D305  AD 30 09     Mx
    TAX                             ; $A6D308  AA           Mx
    LDA $A7E377,X                   ; $A6D309  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6D30D  29 07 00     Mx
    STA $08D8                       ; $A6D310  8D D8 08     Mx
    TXA                             ; $A6D313  8A           Mx
    CLC                             ; $A6D314  18           Mx
    ADC #$0040                      ; $A6D315  69 40 00     Mx
    AND #$007F                      ; $A6D318  29 7F 00     Mx
    TAX                             ; $A6D31B  AA           Mx
    LDA $A7E377,X                   ; $A6D31C  BF 77 E3 A7  Mx
    AND #$0007                      ; $A6D320  29 07 00     Mx
    STA $09C0                       ; $A6D323  8D C0 09     Mx
    LDA $08D2                       ; $A6D326  AD D2 08     Mx
    BNE L_A6D33B                    ; $A6D329  D0 10        Mx
    LDA $1D56                       ; $A6D32B  AD 56 1D     Mx
    AND #$0003                      ; $A6D32E  29 03 00     Mx
    BNE L_A6D33B                    ; $A6D331  D0 08        Mx
    LDA $0936                       ; $A6D333  AD 36 09     Mx
    CMP #$0038                      ; $A6D336  C9 38 00     Mx
    BCS L_A6D33E                    ; $A6D339  B0 03        Mx
L_A6D33B:
    JMP L_A6D3DF                    ; $A6D33B  4C DF D3     Mx
L_A6D33E:
    CMP #$0100                      ; $A6D33E  C9 00 01     Mx
    BPL L_A6D33B                    ; $A6D341  10 F8        Mx
    LDA $00A4                       ; $A6D343  AD A4 00     Mx
    CMP #$0003                      ; $A6D346  C9 03 00     Mx
    BCC L_A6D35D                    ; $A6D349  90 12        Mx
    CMP #$0006                      ; $A6D34B  C9 06 00     Mx
    BCC L_A6D38E                    ; $A6D34E  90 3E        Mx
    LDA $08D8                       ; $A6D350  AD D8 08     Mx
    BEQ L_A6D376                    ; $A6D353  F0 21        Mx
    CMP #$0001                      ; $A6D355  C9 01 00     Mx
    BEQ L_A6D376                    ; $A6D358  F0 1C        Mx
    JMP L_A6D38E                    ; $A6D35A  4C 8E D3     Mx
L_A6D35D:
    LDA $08D8                       ; $A6D35D  AD D8 08     Mx
    CMP #$0002                      ; $A6D360  C9 02 00     Mx
    BEQ L_A6D382                    ; $A6D363  F0 1D        Mx
    CMP #$0007                      ; $A6D365  C9 07 00     Mx
    BNE L_A6D38E                    ; $A6D368  D0 24        Mx
    LDA #$0002                      ; $A6D36A  A9 02 00     Mx
    STA $08D8                       ; $A6D36D  8D D8 08     Mx
    LDA #$003E                      ; $A6D370  A9 3E 00     Mx
    JMP L_A6D50A                    ; $A6D373  4C 0A D5     Mx
L_A6D376:
    LDA #$0006                      ; $A6D376  A9 06 00     Mx
    STA $08D8                       ; $A6D379  8D D8 08     Mx
    LDA #$003E                      ; $A6D37C  A9 3E 00     Mx
    JMP L_A6D50A                    ; $A6D37F  4C 0A D5     Mx
L_A6D382:
    LDA #$0001                      ; $A6D382  A9 01 00     Mx
    STA $08D8                       ; $A6D385  8D D8 08     Mx
    LDA #$003E                      ; $A6D388  A9 3E 00     Mx
    JMP L_A6D50A                    ; $A6D38B  4C 0A D5     Mx
L_A6D38E:
    LDA $00A4                       ; $A6D38E  AD A4 00     Mx
    CMP #$0002                      ; $A6D391  C9 02 00     Mx
    BCC L_A6D3DF                    ; $A6D394  90 49        Mx
    CMP #$0005                      ; $A6D396  C9 05 00     Mx
    BCC L_A6D3AB                    ; $A6D399  90 10        Mx
    CMP #$0007                      ; $A6D39B  C9 07 00     Mx
    BEQ L_A6D3DF                    ; $A6D39E  F0 3F        Mx
    LDA $08D8                       ; $A6D3A0  AD D8 08     Mx
    CMP #$0006                      ; $A6D3A3  C9 06 00     Mx
    BEQ L_A6D3C4                    ; $A6D3A6  F0 1C        Mx
    JMP L_A6D3DF                    ; $A6D3A8  4C DF D3     Mx
L_A6D3AB:
    LDA $08D8                       ; $A6D3AB  AD D8 08     Mx
    CMP #$0005                      ; $A6D3AE  C9 05 00     Mx
    BEQ L_A6D3D3                    ; $A6D3B1  F0 20        Mx
    CMP #$0002                      ; $A6D3B3  C9 02 00     Mx
    BNE L_A6D3DF                    ; $A6D3B6  D0 27        Mx
    LDA #$0003                      ; $A6D3B8  A9 03 00     Mx
    STA $08D8                       ; $A6D3BB  8D D8 08     Mx
    LDA #$0040                      ; $A6D3BE  A9 40 00     Mx
    JMP L_A6D50A                    ; $A6D3C1  4C 0A D5     Mx
L_A6D3C4:
    LDA #$0005                      ; $A6D3C4  A9 05 00     Mx
    STA $08D8                       ; $A6D3C7  8D D8 08     Mx
    LDA #$0040                      ; $A6D3CA  A9 40 00     Mx
    JMP L_A6D50A                    ; $A6D3CD  4C 0A D5     Mx
L_A6D3D0:
    JMP L_A6D50A                    ; $A6D3D0  4C 0A D5     Mx
L_A6D3D3:
    LDA #$0002                      ; $A6D3D3  A9 02 00     Mx
    STA $08D8                       ; $A6D3D6  8D D8 08     Mx
    LDA #$0040                      ; $A6D3D9  A9 40 00     Mx
    JMP L_A6D50A                    ; $A6D3DC  4C 0A D5     Mx
L_A6D3DF:
    PHP                             ; $A6D3DF  08           Mx
    REP #$30                        ; $A6D3E0  C2 30        Mx
    LDA $4212                       ; $A6D3E2  AD 12 42     MX
    SEP #$20                        ; $A6D3E5  E2 20        MX
    CLC                             ; $A6D3E7  18           mX
    ADC $1D57                       ; $A6D3E8  6D 57 1D     mX
    STA $1D57                       ; $A6D3EB  8D 57 1D     mX
    REP #$20                        ; $A6D3EE  C2 20        mX
    LDA $4212                       ; $A6D3F0  AD 12 42     MX
    TAX                             ; $A6D3F3  AA           MX
    SEP #$20                        ; $A6D3F4  E2 20        MX
    EOR $1D58                       ; $A6D3F6  4D 58 1D     mX
    STA $1D58                       ; $A6D3F9  8D 58 1D     mX
    TXA                             ; $A6D3FC  8A           mX
    ADC $1D59                       ; $A6D3FD  6D 59 1D     mX
    REP #$20                        ; $A6D400  C2 20        mX
    LDA $1D56                       ; $A6D402  AD 56 1D     MX
    INC                             ; $A6D405  1A           MX
    ROR                             ; $A6D406  6A           MX
    LSR $1D58                       ; $A6D407  4E 58 1D     MX
    EOR #$2B41                      ; $A6D40A  49 41 2B     MX
    SBC #$000F                      ; $A6D40D  E9 0F 00     MX
    STA $1D56                       ; $A6D410  8D 56 1D     MX
    LDA $1D58                       ; $A6D413  AD 58 1D     MX
    EOR #$1D87                      ; $A6D416  49 87 1D     MX
    STA $1D58                       ; $A6D419  8D 58 1D     MX
    LDA $1D52                       ; $A6D41C  AD 52 1D     MX
    EOR $1D56                       ; $A6D41F  4D 56 1D     MX
    STA $0002                       ; $A6D422  8D 02 00     MX
    INC                             ; $A6D425  1A           MX
    STA $1D52                       ; $A6D426  8D 52 1D     MX
    LDA $1D54                       ; $A6D429  AD 54 1D     MX
    EOR $1D58                       ; $A6D42C  4D 58 1D     MX
    ADC #$0000                      ; $A6D42F  69 00 00     MX
    STA $1D52                       ; $A6D432  8D 52 1D     MX
    STA $0004                       ; $A6D435  8D 04 00     MX
    PLP                             ; $A6D438  28           MX
    LDA $0002                       ; $A6D439  AD 02 00     Mx
    CMP #$5999                      ; $A6D43C  C9 99 59     Mx
    BCC L_A6D444                    ; $A6D43F  90 03        Mx
L_A6D441:
    JMP L_A6D4D7                    ; $A6D441  4C D7 D4     Mx
L_A6D444:
    LDA $0912                       ; $A6D444  AD 12 09     Mx
    BNE L_A6D441                    ; $A6D447  D0 F8        Mx
    LDA $0936                       ; $A6D449  AD 36 09     Mx
    CMP #$005A                      ; $A6D44C  C9 5A 00     Mx
    BCC L_A6D441                    ; $A6D44F  90 F0        Mx
    CMP #$0168                      ; $A6D451  C9 68 01     Mx
    BCC L_A6D459                    ; $A6D454  90 03        Mx
    JMP L_A6D441                    ; $A6D456  4C 41 D4     Mx
L_A6D459:
    LDA $00A4                       ; $A6D459  AD A4 00     Mx
    CMP #$0002                      ; $A6D45C  C9 02 00     Mx
    BCC L_A6D47C                    ; $A6D45F  90 1B        Mx
    CMP #$0005                      ; $A6D461  C9 05 00     Mx
    BCS L_A6D47C                    ; $A6D464  B0 16        Mx
    LDA $08D8                       ; $A6D466  AD D8 08     Mx
    CMP #$0001                      ; $A6D469  C9 01 00     Mx
    BEQ L_A6D473                    ; $A6D46C  F0 05        Mx
    CMP #$0002                      ; $A6D46E  C9 02 00     Mx
    BNE L_A6D4D7                    ; $A6D471  D0 64        Mx
L_A6D473:
    LDA #$0003                      ; $A6D473  A9 03 00     Mx
    STA $08D8                       ; $A6D476  8D D8 08     Mx
    JMP L_A6D501                    ; $A6D479  4C 01 D5     Mx
L_A6D47C:
    CMP #$0005                      ; $A6D47C  C9 05 00     Mx
    BEQ L_A6D4C1                    ; $A6D47F  F0 40        Mx
    CMP #$0006                      ; $A6D481  C9 06 00     Mx
    BEQ L_A6D4C1                    ; $A6D484  F0 3B        Mx
    CMP #$0000                      ; $A6D486  C9 00 00     Mx
    BEQ L_A6D4AB                    ; $A6D489  F0 20        Mx
    CMP #$0001                      ; $A6D48B  C9 01 00     Mx
    BEQ L_A6D4AB                    ; $A6D48E  F0 1B        Mx
    CMP #$0007                      ; $A6D490  C9 07 00     Mx
    BNE L_A6D4D7                    ; $A6D493  D0 42        Mx
    LDA $08D8                       ; $A6D495  AD D8 08     Mx
    CMP #$0005                      ; $A6D498  C9 05 00     Mx
    BEQ L_A6D4A2                    ; $A6D49B  F0 05        Mx
    CMP #$0006                      ; $A6D49D  C9 06 00     Mx
    BNE L_A6D4D7                    ; $A6D4A0  D0 35        Mx
L_A6D4A2:
    LDA #$0007                      ; $A6D4A2  A9 07 00     Mx
    STA $08D8                       ; $A6D4A5  8D D8 08     Mx
    JMP L_A6D501                    ; $A6D4A8  4C 01 D5     Mx
L_A6D4AB:
    LDA $08D8                       ; $A6D4AB  AD D8 08     Mx
    CMP #$0002                      ; $A6D4AE  C9 02 00     Mx
    BEQ L_A6D4B8                    ; $A6D4B1  F0 05        Mx
    CMP #$0003                      ; $A6D4B3  C9 03 00     Mx
    BNE L_A6D4D7                    ; $A6D4B6  D0 1F        Mx
L_A6D4B8:
    LDA #$0001                      ; $A6D4B8  A9 01 00     Mx
    STA $08D8                       ; $A6D4BB  8D D8 08     Mx
    JMP L_A6D501                    ; $A6D4BE  4C 01 D5     Mx
L_A6D4C1:
    LDA $08D8                       ; $A6D4C1  AD D8 08     Mx
    CMP #$0006                      ; $A6D4C4  C9 06 00     Mx
    BEQ L_A6D4CE                    ; $A6D4C7  F0 05        Mx
    CMP #$0007                      ; $A6D4C9  C9 07 00     Mx
    BNE L_A6D4D7                    ; $A6D4CC  D0 09        Mx
L_A6D4CE:
    LDA #$0005                      ; $A6D4CE  A9 05 00     Mx
    STA $08D8                       ; $A6D4D1  8D D8 08     Mx
    JMP L_A6D501                    ; $A6D4D4  4C 01 D5     Mx
L_A6D4D7:
    LDA $0936                       ; $A6D4D7  AD 36 09     Mx
    CMP #$0082                      ; $A6D4DA  C9 82 00     Mx
    BCC L_A6D507                    ; $A6D4DD  90 28        Mx
    CMP #$0168                      ; $A6D4DF  C9 68 01     Mx
    BCC L_A6D4E7                    ; $A6D4E2  90 03        Mx
    STZ $0C39                       ; $A6D4E4  9C 39 0C     Mx
L_A6D4E7:
    LDA $0006                       ; $A6D4E7  AD 06 00     Mx
    AND #$0007                      ; $A6D4EA  29 07 00     Mx
    CMP #$0004                      ; $A6D4ED  C9 04 00     Mx
    BEQ L_A6D4F8                    ; $A6D4F0  F0 06        Mx
    LDA #$000A                      ; $A6D4F2  A9 0A 00     Mx
    JMP L_A6D50A                    ; $A6D4F5  4C 0A D5     Mx
L_A6D4F8:
    LDA #$001A                      ; $A6D4F8  A9 1A 00     Mx
    STZ $0C39                       ; $A6D4FB  9C 39 0C     Mx
    JMP L_A6D50A                    ; $A6D4FE  4C 0A D5     Mx
L_A6D501:
    LDA #$0016                      ; $A6D501  A9 16 00     Mx
    JMP L_A6D50A                    ; $A6D504  4C 0A D5     Mx
L_A6D507:
    LDA #$0012                      ; $A6D507  A9 12 00     Mx
L_A6D50A:
    STA $08C4                       ; $A6D50A  8D C4 08     Mx
    LDA #$FFFF                      ; $A6D50D  A9 FF FF     Mx
    STA $08CA                       ; $A6D510  8D CA 08     Mx
    STZ $08CC                       ; $A6D513  9C CC 08     Mx
    STZ $0912                       ; $A6D516  9C 12 09     Mx
    STZ $08C8                       ; $A6D519  9C C8 08     Mx
    LDA #$FFF8                      ; $A6D51C  A9 F8 FF     Mx
    STA $08CE                       ; $A6D51F  8D CE 08     Mx
    LDA #$0002                      ; $A6D522  A9 02 00     Mx
    STA $08C8                       ; $A6D525  8D C8 08     Mx
    STZ $0974                       ; $A6D528  9C 74 09     Mx
    LDA $08F2                       ; $A6D52B  AD F2 08     Mx
    BNE L_A6D560                    ; $A6D52E  D0 30        Mx
    LDA $0A5E                       ; $A6D530  AD 5E 0A     Mx
    BEQ L_A6D560                    ; $A6D533  F0 2B        Mx
    CMP #$0009                      ; $A6D535  C9 09 00     Mx
    BCC L_A6D560                    ; $A6D538  90 26        Mx
    LDA $0A20                       ; $A6D53A  AD 20 0A     Mx
    CMP #$0023                      ; $A6D53D  C9 23 00     Mx
    BCC L_A6D560                    ; $A6D540  90 1E        Mx
    LDA $0A22                       ; $A6D542  AD 22 0A     Mx
    CMP #$0023                      ; $A6D545  C9 23 00     Mx
    BCC L_A6D560                    ; $A6D548  90 16        Mx
    LDA $0936                       ; $A6D54A  AD 36 09     Mx
    CMP #$0028                      ; $A6D54D  C9 28 00     Mx
    BCC L_A6D560                    ; $A6D550  90 0E        Mx
    LDA #$0001                      ; $A6D552  A9 01 00     Mx
    STA $0A5C                       ; $A6D555  8D 5C 0A     Mx
    LDA #$0032                      ; $A6D558  A9 32 00     Mx
    STA $0A5A                       ; $A6D55B  8D 5A 0A     Mx
    BNE L_A6D56C                    ; $A6D55E  D0 0C        Mx
L_A6D560:
    STZ $09E2                       ; $A6D560  9C E2 09     Mx
    STZ $09E0                       ; $A6D563  9C E0 09     Mx
    STZ $09EA                       ; $A6D566  9C EA 09     Mx
    STZ $09E8                       ; $A6D569  9C E8 09     Mx
L_A6D56C:
    LDA #$0087                      ; $A6D56C  A9 87 00     Mx
    STA $0A6A                       ; $A6D56F  8D 6A 0A     Mx
    LDA $08C0                       ; $A6D572  AD C0 08     Mx
    AND #$00FF                      ; $A6D575  29 FF 00     Mx
    STA $0AA0                       ; $A6D578  8D A0 0A     Mx
    LDA #$00D2                      ; $A6D57B  A9 D2 00     Mx
    STA $0A9E                       ; $A6D57E  8D 9E 0A     Mx
    RTS                             ; $A6D581  60           Mx
L_A6D582:
    REP #$10                        ; $A6D582  C2 10        Mx
    STZ $0BFF                       ; $A6D584  9C FF 0B     MX
    STZ $08FE                       ; $A6D587  9C FE 08     MX
    STZ $08FC                       ; $A6D58A  9C FC 08     MX
    STZ $0912                       ; $A6D58D  9C 12 09     MX
    STZ $0C29                       ; $A6D590  9C 29 0C     MX
    STZ $0BC9                       ; $A6D593  9C C9 0B     MX
    STZ $1131                       ; $A6D596  9C 31 11     MX
    STZ $1133                       ; $A6D599  9C 33 11     MX
    STZ $1135                       ; $A6D59C  9C 35 11     MX
    STZ $0950                       ; $A6D59F  9C 50 09     MX
    LDX $08D8                       ; $A6D5A2  AE D8 08     MX
    BEQ L_A6D5AF                    ; $A6D5A5  F0 08        MX
    CPX #$0004                      ; $A6D5A7  E0 04 00     MX
    BEQ L_A6D5AF                    ; $A6D5AA  F0 03        MX
L_A6D5AC:
    JMP L_A6D5F0                    ; $A6D5AC  4C F0 D5     MX
L_A6D5AF:
    LDA $0924                       ; $A6D5AF  AD 24 09     MX
    CMP #$0028                      ; $A6D5B2  C9 28 00     MX
    BCC L_A6D5AC                    ; $A6D5B5  90 F5        MX
    CMP #$0096                      ; $A6D5B7  C9 96 00     MX
    BCS L_A6D5AC                    ; $A6D5BA  B0 F0        MX
    LDA $08F6                       ; $A6D5BC  AD F6 08     MX
    CMP #$0356                      ; $A6D5BF  C9 56 03     MX
    BCC L_A6D5AC                    ; $A6D5C2  90 E8        MX
    CMP #$0392                      ; $A6D5C4  C9 92 03     MX
    BCS L_A6D5AC                    ; $A6D5C7  B0 E3        MX
    CPX #$0000                      ; $A6D5C9  E0 00 00     MX
    BEQ L_A6D5D3                    ; $A6D5CC  F0 05        MX
    LDX #$0005                      ; $A6D5CE  A2 05 00     MX
    BNE L_A6D5D6                    ; $A6D5D1  D0 03        MX
L_A6D5D3:
    LDX #$0007                      ; $A6D5D3  A2 07 00     MX
L_A6D5D6:
    STX $08D8                       ; $A6D5D6  8E D8 08     MX
    LDA #$0002                      ; $A6D5D9  A9 02 00     MX
    STA $0C3B                       ; $A6D5DC  8D 3B 0C     MX
    LDA $0956                       ; $A6D5DF  AD 56 09     MX
    BEQ L_A6D5EA                    ; $A6D5E2  F0 06        MX
    LDA #$0010                      ; $A6D5E4  A9 10 00     MX
    JMP L_A6DBC0                    ; $A6D5E7  4C C0 DB     MX
L_A6D5EA:
    LDA #$0034                      ; $A6D5EA  A9 34 00     MX
    JMP L_A6DBC0                    ; $A6D5ED  4C C0 DB     MX
L_A6D5F0:
    LDA $0926                       ; $A6D5F0  AD 26 09     MX
    STA $00D9                       ; $A6D5F3  8D D9 00     MX
    CLC                             ; $A6D5F6  18           MX
    ADC #$0008                      ; $A6D5F7  69 08 00     MX
    AND #$007F                      ; $A6D5FA  29 7F 00     MX
    LSR                             ; $A6D5FD  4A           MX
    LSR                             ; $A6D5FE  4A           MX
    LSR                             ; $A6D5FF  4A           MX
    LSR                             ; $A6D600  4A           MX
    CMP #$0000                      ; $A6D601  C9 00 00     MX
    BEQ L_A6D61A                    ; $A6D604  F0 14        MX
    SEC                             ; $A6D606  38           MX
    SBC #$0004                      ; $A6D607  E9 04 00     MX
    BPL L_A6D61A                    ; $A6D60A  10 0E        MX
    LDA $0924                       ; $A6D60C  AD 24 09     MX
    CMP #$0046                      ; $A6D60F  C9 46 00     MX
    BCS L_A6D617                    ; $A6D612  B0 03        MX
    JMP L_A6D76A                    ; $A6D614  4C 6A D7     MX
L_A6D617:
    JMP L_A6DB5C                    ; $A6D617  4C 5C DB     MX
L_A6D61A:
    LDA $0924                       ; $A6D61A  AD 24 09     MX
    CMP #$0030                      ; $A6D61D  C9 30 00     MX
    BCS L_A6D625                    ; $A6D620  B0 03        MX
    JMP L_A6D6B0                    ; $A6D622  4C B0 D6     MX
L_A6D625:
    LDA $08D8                       ; $A6D625  AD D8 08     MX
    ASL                             ; $A6D628  0A           MX
    ASL                             ; $A6D629  0A           MX
    ASL                             ; $A6D62A  0A           MX
    ASL                             ; $A6D62B  0A           MX
    SEC                             ; $A6D62C  38           MX
    SBC $0926                       ; $A6D62D  ED 26 09     MX
    BPL L_A6D639                    ; $A6D630  10 07        MX
    EOR #$FFFF                      ; $A6D632  49 FF FF     MX
    CLC                             ; $A6D635  18           MX
    ADC #$0001                      ; $A6D636  69 01 00     MX
L_A6D639:
    CMP #$0040                      ; $A6D639  C9 40 00     MX
    BCC L_A6D64B                    ; $A6D63C  90 0D        MX
    SEC                             ; $A6D63E  38           MX
    SBC #$0080                      ; $A6D63F  E9 80 00     MX
    BPL L_A6D64B                    ; $A6D642  10 07        MX
    EOR #$FFFF                      ; $A6D644  49 FF FF     MX
    CLC                             ; $A6D647  18           MX
    ADC #$0001                      ; $A6D648  69 01 00     MX
L_A6D64B:
    SEC                             ; $A6D64B  38           MX
    SBC #$0018                      ; $A6D64C  E9 18 00     MX
    BPL L_A6D66C                    ; $A6D64F  10 1B        MX
    LDA $09A6                       ; $A6D651  AD A6 09     MX
    AND #$0010                      ; $A6D654  29 10 00     MX
    BEQ L_A6D664                    ; $A6D657  F0 0B        MX
    LDA $0924                       ; $A6D659  AD 24 09     MX
    CMP #$0110                      ; $A6D65C  C9 10 01     MX
    BCS L_A6D66C                    ; $A6D65F  B0 0B        MX
    JMP L_A6D76A                    ; $A6D661  4C 6A D7     MX
L_A6D664:
    LDA $0924                       ; $A6D664  AD 24 09     MX
    CMP #$0088                      ; $A6D667  C9 88 00     MX
    BCC L_A6D66F                    ; $A6D66A  90 03        MX
L_A6D66C:
    JMP L_A6DB5C                    ; $A6D66C  4C 5C DB     MX
L_A6D66F:
    LDA $08F6                       ; $A6D66F  AD F6 08     MX
    CMP #$0330                      ; $A6D672  C9 30 03     MX
    BCC L_A6D66C                    ; $A6D675  90 F5        MX
    CMP #$03D0                      ; $A6D677  C9 D0 03     MX
    BCS L_A6D66C                    ; $A6D67A  B0 F0        MX
    LDA $08FA                       ; $A6D67C  AD FA 08     MX
    BPL L_A6D694                    ; $A6D67F  10 13        MX
    LDA $08F8                       ; $A6D681  AD F8 08     MX
    EOR #$FFFF                      ; $A6D684  49 FF FF     MX
    CLC                             ; $A6D687  18           MX
    ADC #$0001                      ; $A6D688  69 01 00     MX
    LDA $08FA                       ; $A6D68B  AD FA 08     MX
    EOR #$FFFF                      ; $A6D68E  49 FF FF     MX
    ADC #$0000                      ; $A6D691  69 00 00     MX
L_A6D694:
    BNE L_A6D6B0                    ; $A6D694  D0 1A        MX
    LDA $0902                       ; $A6D696  AD 02 09     MX
    BPL L_A6D6AE                    ; $A6D699  10 13        MX
    LDA $0900                       ; $A6D69B  AD 00 09     MX
    EOR #$FFFF                      ; $A6D69E  49 FF FF     MX
    CLC                             ; $A6D6A1  18           MX
    ADC #$0001                      ; $A6D6A2  69 01 00     MX
    LDA $0902                       ; $A6D6A5  AD 02 09     MX
    EOR #$FFFF                      ; $A6D6A8  49 FF FF     MX
    ADC #$0000                      ; $A6D6AB  69 00 00     MX
L_A6D6AE:
    BEQ L_A6D66C                    ; $A6D6AE  F0 BC        MX
L_A6D6B0:
    LDX $06F0                       ; $A6D6B0  AE F0 06     MX
    CPX $0A96                       ; $A6D6B3  EC 96 0A     MX
    BNE L_A6D6C1                    ; $A6D6B6  D0 09        MX
    LDA #$000B                      ; $A6D6B8  A9 0B 00     MX
    STA $00D0                       ; $A6D6BB  8D D0 00     MX
    JMP L_A6D6C7                    ; $A6D6BE  4C C7 D6     MX
L_A6D6C1:
    LDA $07BE                       ; $A6D6C1  AD BE 07     MX
    STA $00D0                       ; $A6D6C4  8D D0 00     MX
L_A6D6C7:
    ASL                             ; $A6D6C7  0A           MX
    TAX                             ; $A6D6C8  AA           MX
    LDA $DAEA,X                     ; $A6D6C9  BD EA DA     MX
    STA $00D6                       ; $A6D6CC  8D D6 00     MX
    LDA $DB02,X                     ; $A6D6CF  BD 02 DB     MX
    STA $00D0                       ; $A6D6D2  8D D0 00     MX
    LDA $0938                       ; $A6D6D5  AD 38 09     MX
    CMP $0924                       ; $A6D6D8  CD 24 09     MX
    BCS L_A6D70D                    ; $A6D6DB  B0 30        MX
    CMP $00D6                       ; $A6D6DD  CD D6 00     MX
    BCS L_A6D70D                    ; $A6D6E0  B0 2B        MX
    LDA $0932                       ; $A6D6E2  AD 32 09     MX
    SEC                             ; $A6D6E5  38           MX
    SBC $00D9                       ; $A6D6E6  ED D9 00     MX
    BPL L_A6D6F2                    ; $A6D6E9  10 07        MX
    EOR #$FFFF                      ; $A6D6EB  49 FF FF     MX
    CLC                             ; $A6D6EE  18           MX
    ADC #$0001                      ; $A6D6EF  69 01 00     MX
L_A6D6F2:
    CMP #$0040                      ; $A6D6F2  C9 40 00     MX
    BCC L_A6D704                    ; $A6D6F5  90 0D        MX
    SEC                             ; $A6D6F7  38           MX
    SBC #$0080                      ; $A6D6F8  E9 80 00     MX
    BPL L_A6D704                    ; $A6D6FB  10 07        MX
    EOR #$FFFF                      ; $A6D6FD  49 FF FF     MX
    CLC                             ; $A6D700  18           MX
    ADC #$0001                      ; $A6D701  69 01 00     MX
L_A6D704:
    SEC                             ; $A6D704  38           MX
    SBC $00D0                       ; $A6D705  ED D0 00     MX
    BPL L_A6D70D                    ; $A6D708  10 03        MX
    JMP L_A6DB1A                    ; $A6D70A  4C 1A DB     MX
L_A6D70D:
    LDX $07D8                       ; $A6D70D  AE D8 07     MX
    CPX $0A96                       ; $A6D710  EC 96 0A     MX
    BNE L_A6D71E                    ; $A6D713  D0 09        MX
    LDA #$000B                      ; $A6D715  A9 0B 00     MX
    STA $00D0                       ; $A6D718  8D D0 00     MX
    JMP L_A6D724                    ; $A6D71B  4C 24 D7     MX
L_A6D71E:
    LDA $08A6                       ; $A6D71E  AD A6 08     MX
    STA $00D0                       ; $A6D721  8D D0 00     MX
L_A6D724:
    ASL                             ; $A6D724  0A           MX
    TAX                             ; $A6D725  AA           MX
    LDA $DAEA,X                     ; $A6D726  BD EA DA     MX
    STA $00D6                       ; $A6D729  8D D6 00     MX
    LDA $DB02,X                     ; $A6D72C  BD 02 DB     MX
    STA $00D0                       ; $A6D72F  8D D0 00     MX
    LDA $093A                       ; $A6D732  AD 3A 09     MX
    CMP $0924                       ; $A6D735  CD 24 09     MX
    BCS L_A6D76A                    ; $A6D738  B0 30        MX
    CMP $00D6                       ; $A6D73A  CD D6 00     MX
    BCS L_A6D76A                    ; $A6D73D  B0 2B        MX
    LDA $0934                       ; $A6D73F  AD 34 09     MX
    SEC                             ; $A6D742  38           MX
    SBC $00D9                       ; $A6D743  ED D9 00     MX
    BPL L_A6D74F                    ; $A6D746  10 07        MX
    EOR #$FFFF                      ; $A6D748  49 FF FF     MX
    CLC                             ; $A6D74B  18           MX
    ADC #$0001                      ; $A6D74C  69 01 00     MX
L_A6D74F:
    CMP #$0040                      ; $A6D74F  C9 40 00     MX
    BCC L_A6D761                    ; $A6D752  90 0D        MX
    SEC                             ; $A6D754  38           MX
    SBC #$0080                      ; $A6D755  E9 80 00     MX
    BPL L_A6D761                    ; $A6D758  10 07        MX
    EOR #$FFFF                      ; $A6D75A  49 FF FF     MX
    CLC                             ; $A6D75D  18           MX
    ADC #$0001                      ; $A6D75E  69 01 00     MX
L_A6D761:
    SEC                             ; $A6D761  38           MX
    SBC $00D0                       ; $A6D762  ED D0 00     MX
    BPL L_A6D76A                    ; $A6D765  10 03        MX
    JMP L_A6DB1A                    ; $A6D767  4C 1A DB     MX
L_A6D76A:
    LDX $0926                       ; $A6D76A  AE 26 09     MX
    LDA $A7E377,X                   ; $A6D76D  BF 77 E3 A7  MX
    AND #$0007                      ; $A6D771  29 07 00     MX
    STA $00A4                       ; $A6D774  8D A4 00     MX
    CMP #$0000                      ; $A6D777  C9 00 00     MX
    BEQ L_A6D781                    ; $A6D77A  F0 05        MX
    CMP #$0004                      ; $A6D77C  C9 04 00     MX
    BCC L_A6D786                    ; $A6D77F  90 05        MX
L_A6D781:
    LDA $00A4                       ; $A6D781  AD A4 00     MX
    BRA L_A6D79A                    ; $A6D784  80 14        MX
L_A6D786:
    LDA $0924                       ; $A6D786  AD 24 09     MX
    CMP #$0030                      ; $A6D789  C9 30 00     MX
    BCC L_A6D793                    ; $A6D78C  90 05        MX
    LDA $00A4                       ; $A6D78E  AD A4 00     MX
    BRA L_A6D79A                    ; $A6D791  80 07        MX
L_A6D793:
    LDX $0926                       ; $A6D793  AE 26 09     MX
    LDA $A7DB97,X                   ; $A6D796  BF 97 DB A7  MX
L_A6D79A:
    AND #$0007                      ; $A6D79A  29 07 00     MX
    STA $08D8                       ; $A6D79D  8D D8 08     MX
    ASL                             ; $A6D7A0  0A           MX
    STA $00D9                       ; $A6D7A1  8D D9 00     MX
    SEP #$20                        ; $A6D7A4  E2 20        MX
    PHB                             ; $A6D7A6  8B           mX
    LDA #$24                        ; $A6D7A7  A9 24        mX
    PHA                             ; $A6D7A9  48           mX
    PLB                             ; $A6D7AA  AB           mX
    REP #$20                        ; $A6D7AB  C2 20        mX
    LDA #$0004                      ; $A6D7AD  A9 04 00     MX
    STA $08C8                       ; $A6D7B0  8D C8 08     MX
    LDX $08C0                       ; $A6D7B3  AE C0 08     MX
    CPX $0A96                       ; $A6D7B6  EC 96 0A     MX
    BEQ L_A6D7E1                    ; $A6D7B9  F0 26        MX
    LDA $09A6                       ; $A6D7BB  AD A6 09     MX
    AND #$0010                      ; $A6D7BE  29 10 00     MX
    BNE L_A6D7E1                    ; $A6D7C1  D0 1E        MX
    LDA $0988                       ; $A6D7C3  AD 88 09     MX
    ASL                             ; $A6D7C6  0A           MX
    TAX                             ; $A6D7C7  AA           MX
    JMP ($D7CB,X)                   ; $A6D7C8  7C CB D7     MX
    db $0D,$D9,$0D,$D9,$0D,$D9,$C2,$D8,$C2,$D8,$77,$D8,$2C,$D8,$2C,$D8 ; $A6D7CB
    db $E1,$D7,$E1,$D7,$E1,$D7                                         ; $A6D7DB
L_A6D7E1:
    LDA $00D9                       ; $A6D7E1  AD D9 00     MX
    CLC                             ; $A6D7E4  18           MX
    ADC #$D62E                      ; $A6D7E5  69 2E D6     MX
    STA $00D9                       ; $A6D7E8  8D D9 00     MX
    LDA $0924                       ; $A6D7EB  AD 24 09     MX
    CMP #$0030                      ; $A6D7EE  C9 30 00     MX
    BCC L_A6D826                    ; $A6D7F1  90 33        MX
    LDA $00D9                       ; $A6D7F3  AD D9 00     MX
    CLC                             ; $A6D7F6  18           MX
    ADC #$0012                      ; $A6D7F7  69 12 00     MX
    STA $00D9                       ; $A6D7FA  8D D9 00     MX
    LDA $0924                       ; $A6D7FD  AD 24 09     MX
    CMP #$0040                      ; $A6D800  C9 40 00     MX
    BCC L_A6D826                    ; $A6D803  90 21        MX
    LDA $0956                       ; $A6D805  AD 56 09     MX
    BEQ L_A6D829                    ; $A6D808  F0 1F        MX
    LDA $00D9                       ; $A6D80A  AD D9 00     MX
    CLC                             ; $A6D80D  18           MX
    ADC #$0012                      ; $A6D80E  69 12 00     MX
    STA $00D9                       ; $A6D811  8D D9 00     MX
    LDA $0924                       ; $A6D814  AD 24 09     MX
    CMP #$0060                      ; $A6D817  C9 60 00     MX
    BCC L_A6D826                    ; $A6D81A  90 0A        MX
    LDA $00D9                       ; $A6D81C  AD D9 00     MX
    CLC                             ; $A6D81F  18           MX
    ADC #$0012                      ; $A6D820  69 12 00     MX
    STA $00D9                       ; $A6D823  8D D9 00     MX
L_A6D826:
    JMP L_A6D95B                    ; $A6D826  4C 5B D9     MX
L_A6D829:
    JMP L_A6D955                    ; $A6D829  4C 55 D9     MX
L_A6D82C:
    LDA $00D9                       ; $A6D82C  AD D9 00     MX
    CLC                             ; $A6D82F  18           MX
    ADC #$D8AC                      ; $A6D830  69 AC D8     MX
    STA $00D9                       ; $A6D833  8D D9 00     MX
    LDA $0924                       ; $A6D836  AD 24 09     MX
    CMP #$0030                      ; $A6D839  C9 30 00     MX
    BCC L_A6D871                    ; $A6D83C  90 33        MX
    LDA $00D9                       ; $A6D83E  AD D9 00     MX
    CLC                             ; $A6D841  18           MX
    ADC #$0012                      ; $A6D842  69 12 00     MX
    STA $00D9                       ; $A6D845  8D D9 00     MX
    LDA $0924                       ; $A6D848  AD 24 09     MX
    CMP #$0040                      ; $A6D84B  C9 40 00     MX
    BCC L_A6D871                    ; $A6D84E  90 21        MX
    LDA $0956                       ; $A6D850  AD 56 09     MX
    BEQ L_A6D874                    ; $A6D853  F0 1F        MX
    LDA $00D9                       ; $A6D855  AD D9 00     MX
    CLC                             ; $A6D858  18           MX
    ADC #$0012                      ; $A6D859  69 12 00     MX
    STA $00D9                       ; $A6D85C  8D D9 00     MX
    LDA $0924                       ; $A6D85F  AD 24 09     MX
    CMP #$0060                      ; $A6D862  C9 60 00     MX
    BCC L_A6D871                    ; $A6D865  90 0A        MX
    LDA $00D9                       ; $A6D867  AD D9 00     MX
    CLC                             ; $A6D86A  18           MX
    ADC #$0012                      ; $A6D86B  69 12 00     MX
    STA $00D9                       ; $A6D86E  8D D9 00     MX
L_A6D871:
    JMP L_A6D95B                    ; $A6D871  4C 5B D9     MX
L_A6D874:
    JMP L_A6D955                    ; $A6D874  4C 55 D9     MX
L_A6D877:
    LDA $00D9                       ; $A6D877  AD D9 00     MX
    CLC                             ; $A6D87A  18           MX
    ADC #$DB24                      ; $A6D87B  69 24 DB     MX
    STA $00D9                       ; $A6D87E  8D D9 00     MX
    LDA $0924                       ; $A6D881  AD 24 09     MX
    CMP #$0030                      ; $A6D884  C9 30 00     MX
    BCC L_A6D8BC                    ; $A6D887  90 33        MX
    LDA $00D9                       ; $A6D889  AD D9 00     MX
    CLC                             ; $A6D88C  18           MX
    ADC #$0012                      ; $A6D88D  69 12 00     MX
    STA $00D9                       ; $A6D890  8D D9 00     MX
    LDA $0924                       ; $A6D893  AD 24 09     MX
    CMP #$0040                      ; $A6D896  C9 40 00     MX
    BCC L_A6D8BC                    ; $A6D899  90 21        MX
    LDA $0956                       ; $A6D89B  AD 56 09     MX
    BEQ L_A6D8BF                    ; $A6D89E  F0 1F        MX
    LDA $00D9                       ; $A6D8A0  AD D9 00     MX
    CLC                             ; $A6D8A3  18           MX
    ADC #$0012                      ; $A6D8A4  69 12 00     MX
    STA $00D9                       ; $A6D8A7  8D D9 00     MX
    LDA $0924                       ; $A6D8AA  AD 24 09     MX
    CMP #$0060                      ; $A6D8AD  C9 60 00     MX
    BCC L_A6D8BC                    ; $A6D8B0  90 0A        MX
    LDA $00D9                       ; $A6D8B2  AD D9 00     MX
    CLC                             ; $A6D8B5  18           MX
    ADC #$0012                      ; $A6D8B6  69 12 00     MX
    STA $00D9                       ; $A6D8B9  8D D9 00     MX
L_A6D8BC:
    JMP L_A6D95B                    ; $A6D8BC  4C 5B D9     MX
L_A6D8BF:
    JMP L_A6D955                    ; $A6D8BF  4C 55 D9     MX
L_A6D8C2:
    LDA $00D9                       ; $A6D8C2  AD D9 00     MX
    CLC                             ; $A6D8C5  18           MX
    ADC #$DD48                      ; $A6D8C6  69 48 DD     MX
    STA $00D9                       ; $A6D8C9  8D D9 00     MX
    LDA $0924                       ; $A6D8CC  AD 24 09     MX
    CMP #$0030                      ; $A6D8CF  C9 30 00     MX
    BCC L_A6D907                    ; $A6D8D2  90 33        MX
    LDA $00D9                       ; $A6D8D4  AD D9 00     MX
    CLC                             ; $A6D8D7  18           MX
    ADC #$0012                      ; $A6D8D8  69 12 00     MX
    STA $00D9                       ; $A6D8DB  8D D9 00     MX
    LDA $0924                       ; $A6D8DE  AD 24 09     MX
    CMP #$0040                      ; $A6D8E1  C9 40 00     MX
    BCC L_A6D907                    ; $A6D8E4  90 21        MX
    LDA $0956                       ; $A6D8E6  AD 56 09     MX
    BEQ L_A6D90A                    ; $A6D8E9  F0 1F        MX
    LDA $00D9                       ; $A6D8EB  AD D9 00     MX
    CLC                             ; $A6D8EE  18           MX
    ADC #$0012                      ; $A6D8EF  69 12 00     MX
    STA $00D9                       ; $A6D8F2  8D D9 00     MX
    LDA $0924                       ; $A6D8F5  AD 24 09     MX
    CMP #$0060                      ; $A6D8F8  C9 60 00     MX
    BCC L_A6D907                    ; $A6D8FB  90 0A        MX
    LDA $00D9                       ; $A6D8FD  AD D9 00     MX
    CLC                             ; $A6D900  18           MX
    ADC #$0012                      ; $A6D901  69 12 00     MX
    STA $00D9                       ; $A6D904  8D D9 00     MX
L_A6D907:
    JMP L_A6D95B                    ; $A6D907  4C 5B D9     MX
L_A6D90A:
    JMP L_A6D955                    ; $A6D90A  4C 55 D9     MX
L_A6D90D:
    LDA $00D9                       ; $A6D90D  AD D9 00     MX
    CLC                             ; $A6D910  18           MX
    ADC #$DEEC                      ; $A6D911  69 EC DE     MX
    STA $00D9                       ; $A6D914  8D D9 00     MX
    LDA $0924                       ; $A6D917  AD 24 09     MX
    CMP #$0030                      ; $A6D91A  C9 30 00     MX
    BCC L_A6D952                    ; $A6D91D  90 33        MX
    LDA $00D9                       ; $A6D91F  AD D9 00     MX
    CLC                             ; $A6D922  18           MX
    ADC #$0012                      ; $A6D923  69 12 00     MX
    STA $00D9                       ; $A6D926  8D D9 00     MX
    LDA $0924                       ; $A6D929  AD 24 09     MX
    CMP #$0040                      ; $A6D92C  C9 40 00     MX
    BCC L_A6D952                    ; $A6D92F  90 21        MX
    LDA $0956                       ; $A6D931  AD 56 09     MX
    BEQ L_A6D955                    ; $A6D934  F0 1F        MX
    LDA $00D9                       ; $A6D936  AD D9 00     MX
    CLC                             ; $A6D939  18           MX
    ADC #$0012                      ; $A6D93A  69 12 00     MX
    STA $00D9                       ; $A6D93D  8D D9 00     MX
    LDA $0924                       ; $A6D940  AD 24 09     MX
    CMP #$0060                      ; $A6D943  C9 60 00     MX
    BCC L_A6D952                    ; $A6D946  90 0A        MX
    LDA $00D9                       ; $A6D948  AD D9 00     MX
    CLC                             ; $A6D94B  18           MX
    ADC #$0012                      ; $A6D94C  69 12 00     MX
    STA $00D9                       ; $A6D94F  8D D9 00     MX
L_A6D952:
    JMP L_A6D95B                    ; $A6D952  4C 5B D9     MX
L_A6D955:
    STZ $08CC                       ; $A6D955  9C CC 08     MX
    JMP L_A6DAD1                    ; $A6D958  4C D1 DA     MX
L_A6D95B:
    LDX $0B4A                       ; $A6D95B  AE 4A 0B     MX
    CPX #$0002                      ; $A6D95E  E0 02 00     MX
    BCC L_A6D96F                    ; $A6D961  90 0C        MX
    DEX                             ; $A6D963  CA           MX
    DEX                             ; $A6D964  CA           MX
    LDA $A6DC03,X                   ; $A6D965  BF 03 DC A6  MX
    AND #$00FF                      ; $A6D969  29 FF 00     MX
    JMP L_A6DA10                    ; $A6D96C  4C 10 DA     MX
L_A6D96F:
    LDA ($D9)                       ; $A6D96F  B2 D9        MX
    STA $00D9                       ; $A6D971  8D D9 00     MX
    LDA ($D9)                       ; $A6D974  B2 D9        MX
    STA $00D0                       ; $A6D976  8D D0 00     MX
    PHP                             ; $A6D979  08           MX
    REP #$30                        ; $A6D97A  C2 30        MX
    LDA $4212                       ; $A6D97C  AD 12 42     MX
    SEP #$20                        ; $A6D97F  E2 20        MX
    CLC                             ; $A6D981  18           mX
    ADC $1D57                       ; $A6D982  6D 57 1D     mX
    STA $1D57                       ; $A6D985  8D 57 1D     mX
    REP #$20                        ; $A6D988  C2 20        mX
    LDA $4212                       ; $A6D98A  AD 12 42     MX
    TAX                             ; $A6D98D  AA           MX
    SEP #$20                        ; $A6D98E  E2 20        MX
    EOR $1D58                       ; $A6D990  4D 58 1D     mX
    STA $1D58                       ; $A6D993  8D 58 1D     mX
    TXA                             ; $A6D996  8A           mX
    ADC $1D59                       ; $A6D997  6D 59 1D     mX
    REP #$20                        ; $A6D99A  C2 20        mX
    LDA $1D56                       ; $A6D99C  AD 56 1D     MX
    INC                             ; $A6D99F  1A           MX
    ROR                             ; $A6D9A0  6A           MX
    LSR $1D58                       ; $A6D9A1  4E 58 1D     MX
    EOR #$2B41                      ; $A6D9A4  49 41 2B     MX
    SBC #$000F                      ; $A6D9A7  E9 0F 00     MX
    STA $1D56                       ; $A6D9AA  8D 56 1D     MX
    LDA $1D58                       ; $A6D9AD  AD 58 1D     MX
    EOR #$1D87                      ; $A6D9B0  49 87 1D     MX
    STA $1D58                       ; $A6D9B3  8D 58 1D     MX
    LDA $1D52                       ; $A6D9B6  AD 52 1D     MX
    EOR $1D56                       ; $A6D9B9  4D 56 1D     MX
    STA $0002                       ; $A6D9BC  8D 02 00     MX
    INC                             ; $A6D9BF  1A           MX
    STA $1D52                       ; $A6D9C0  8D 52 1D     MX
    LDA $1D54                       ; $A6D9C3  AD 54 1D     MX
    EOR $1D58                       ; $A6D9C6  4D 58 1D     MX
    ADC #$0000                      ; $A6D9C9  69 00 00     MX
    STA $1D52                       ; $A6D9CC  8D 52 1D     MX
    STA $0004                       ; $A6D9CF  8D 04 00     MX
    PLP                             ; $A6D9D2  28           MX
    INC $00D0                       ; $A6D9D3  EE D0 00     MX
    LDA $1D56                       ; $A6D9D6  AD 56 1D     MX
    STA $00BA                       ; $A6D9D9  8D BA 00     MX
    SEP #$20                        ; $A6D9DC  E2 20        MX
    LDA $00D0                       ; $A6D9DE  AD D0 00     mX
    STA $4202                       ; $A6D9E1  8D 02 42     mX
    LDA $00BA                       ; $A6D9E4  AD BA 00     mX
    STA $4203                       ; $A6D9E7  8D 03 42     mX
    NOP                             ; $A6D9EA  EA           mX
    NOP                             ; $A6D9EB  EA           mX
    NOP                             ; $A6D9EC  EA           mX
    REP #$20                        ; $A6D9ED  C2 20        mX
    LDA $4216                       ; $A6D9EF  AD 16 42     MX
    STA $00BA                       ; $A6D9F2  8D BA 00     MX
    LDA $00BB                       ; $A6D9F5  AD BB 00     MX
    AND #$00FF                      ; $A6D9F8  29 FF 00     MX
    REP #$10                        ; $A6D9FB  C2 10        MX
    ASL                             ; $A6D9FD  0A           MX
    CLC                             ; $A6D9FE  18           MX
    ADC #$0002                      ; $A6D9FF  69 02 00     MX
    CLC                             ; $A6DA02  18           MX
    ADC $00D9                       ; $A6DA03  6D D9 00     MX
    STA $00D9                       ; $A6DA06  8D D9 00     MX
    LDA ($D9)                       ; $A6DA09  B2 D9        MX
L_A6DA0B:
    BPL L_A6DA10                    ; $A6DA0B  10 03        MX
    JMP L_A6D955                    ; $A6DA0D  4C 55 D9     MX
L_A6DA10:
    STA $0AA2                       ; $A6DA10  8D A2 0A     MX
    STA $096C                       ; $A6DA13  8D 6C 09     MX
    TAX                             ; $A6DA16  AA           MX
    LDA #$2400                      ; $A6DA17  A9 00 24     MX
    STA $00D1                       ; $A6DA1A  8D D1 00     MX
    LDA $B818,X                     ; $A6DA1D  BD 18 B8     MX
    STA $00D0                       ; $A6DA20  8D D0 00     MX
    LDA $08D8                       ; $A6DA23  AD D8 08     MX
    ASL                             ; $A6DA26  0A           MX
    TAY                             ; $A6DA27  A8           MX
    LDA ($D0),Y                     ; $A6DA28  B1 D0        MX
    STA $096E                       ; $A6DA2A  8D 6E 09     MX
    STA $00D0                       ; $A6DA2D  8D D0 00     MX
    STZ $0970                       ; $A6DA30  9C 70 09     MX
    STZ $08DE                       ; $A6DA33  9C DE 08     MX
    LDA $096C                       ; $A6DA36  AD 6C 09     MX
    CMP #$0076                      ; $A6DA39  C9 76 00     MX
    BEQ L_A6DA48                    ; $A6DA3C  F0 0A        MX
    CMP #$0078                      ; $A6DA3E  C9 78 00     MX
    BEQ L_A6DA48                    ; $A6DA41  F0 05        MX
    CMP #$007A                      ; $A6DA43  C9 7A 00     MX
    BNE L_A6DA6C                    ; $A6DA46  D0 24        MX
L_A6DA48:
    LDA #$0001                      ; $A6DA48  A9 01 00     MX
    STA $0C11                       ; $A6DA4B  8D 11 0C     MX
    LDA $0BBB                       ; $A6DA4E  AD BB 0B     MX
    STA $0C01                       ; $A6DA51  8D 01 0C     MX
    STA $0C05                       ; $A6DA54  8D 05 0C     MX
    STA $0C09                       ; $A6DA57  8D 09 0C     MX
    STA $0C0D                       ; $A6DA5A  8D 0D 0C     MX
    LDA $0BBD                       ; $A6DA5D  AD BD 0B     MX
    STA $0C03                       ; $A6DA60  8D 03 0C     MX
    STA $0C07                       ; $A6DA63  8D 07 0C     MX
    STA $0C0B                       ; $A6DA66  8D 0B 0C     MX
    STA $0C0F                       ; $A6DA69  8D 0F 0C     MX
L_A6DA6C:
    LDA #$0002                      ; $A6DA6C  A9 02 00     MX
    STA $0C3B                       ; $A6DA6F  8D 3B 0C     MX
    LDA $08C8                       ; $A6DA72  AD C8 08     MX
    STA $00A4                       ; $A6DA75  8D A4 00     MX
    LDA #$003A                      ; $A6DA78  A9 3A 00     MX
    STA $08C4                       ; $A6DA7B  8D C4 08     MX
    LDA #$FFFF                      ; $A6DA7E  A9 FF FF     MX
    STA $08CA                       ; $A6DA81  8D CA 08     MX
    STZ $08CC                       ; $A6DA84  9C CC 08     MX
    STZ $0912                       ; $A6DA87  9C 12 09     MX
    STZ $08C8                       ; $A6DA8A  9C C8 08     MX
    LDA #$FFF8                      ; $A6DA8D  A9 F8 FF     MX
    STA $08CE                       ; $A6DA90  8D CE 08     MX
    LDA $00A4                       ; $A6DA93  AD A4 00     MX
    STA $08C8                       ; $A6DA96  8D C8 08     MX
    STZ $08FE                       ; $A6DA99  9C FE 08     MX
    STZ $08FC                       ; $A6DA9C  9C FC 08     MX
    LDY $0970                       ; $A6DA9F  AC 70 09     MX
    LDA [$D0],Y                     ; $A6DAA2  B7 D0        MX
    STA $08CC                       ; $A6DAA4  8D CC 08     MX
    INY                             ; $A6DAA7  C8           MX
    INY                             ; $A6DAA8  C8           MX
    LDA [$D0],Y                     ; $A6DAA9  B7 D0        MX
    STA $08CE                       ; $A6DAAB  8D CE 08     MX
    STZ $08CA                       ; $A6DAAE  9C CA 08     MX
    INY                             ; $A6DAB1  C8           MX
    INY                             ; $A6DAB2  C8           MX
    STY $0970                       ; $A6DAB3  8C 70 09     MX
    LDA $08CC                       ; $A6DAB6  AD CC 08     MX
    STA $08C6                       ; $A6DAB9  8D C6 08     MX
    LDX $0926                       ; $A6DABC  AE 26 09     MX
    LDA $A7E377,X                   ; $A6DABF  BF 77 E3 A7  MX
    AND #$0007                      ; $A6DAC3  29 07 00     MX
    TAX                             ; $A6DAC6  AA           MX
    LDA $A7DB97,X                   ; $A6DAC7  BF 97 DB A7  MX
    AND #$0007                      ; $A6DACB  29 07 00     MX
    STA $08DA                       ; $A6DACE  8D DA 08     MX
L_A6DAD1:
    LDA $08CC                       ; $A6DAD1  AD CC 08     MX
    BNE L_A6DADA                    ; $A6DAD4  D0 04        MX
    PLB                             ; $A6DAD6  AB           MX
    JMP L_A6DB5C                    ; $A6DAD7  4C 5C DB     MX
L_A6DADA:
    LDA $08DA                       ; $A6DADA  AD DA 08     MX
    STA $08D8                       ; $A6DADD  8D D8 08     MX
    LDA #$00C8                      ; $A6DAE0  A9 C8 00     MX
    STA $08C6                       ; $A6DAE3  8D C6 08     MX
    PLB                             ; $A6DAE6  AB           MX
    JMP L_A6DBDE                    ; $A6DAE7  4C DE DB     MX
    db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF ; $A6DAEA
    db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$0C,$00,$0E,$00,$10,$00,$12,$00 ; $A6DAFA
    db $15,$00,$16,$00,$17,$00,$18,$00,$19,$00,$1C,$00,$1E,$00,$25,$00 ; $A6DB0A
L_A6DB1A:
    LDA $0924                       ; $A6DB1A  AD 24 09     MX
    CMP #$0025                      ; $A6DB1D  C9 25 00     MX
    BCS L_A6DB25                    ; $A6DB20  B0 03        MX
    JMP L_A6D76A                    ; $A6DB22  4C 6A D7     MX
L_A6DB25:
    LDA $00C0                       ; $A6DB25  AD C0 00     MX
    BNE L_A6DB5C                    ; $A6DB28  D0 32        MX
    LDA $0924                       ; $A6DB2A  AD 24 09     MX
    CMP #$0080                      ; $A6DB2D  C9 80 00     MX
    BCS L_A6DB5C                    ; $A6DB30  B0 2A        MX
    CMP #$0023                      ; $A6DB32  C9 23 00     MX
    BCS L_A6DB3A                    ; $A6DB35  B0 03        MX
    JMP L_A6DB5C                    ; $A6DB37  4C 5C DB     MX
L_A6DB3A:
    SEP #$20                        ; $A6DB3A  E2 20        MX
    PHB                             ; $A6DB3C  8B           mX
    LDA #$24                        ; $A6DB3D  A9 24        mX
    PHA                             ; $A6DB3F  48           mX
    PLB                             ; $A6DB40  AB           mX
    REP #$20                        ; $A6DB41  C2 20        mX
    LDA #$0008                      ; $A6DB43  A9 08 00     MX
    STA $08C8                       ; $A6DB46  8D C8 08     MX
    LDX $0926                       ; $A6DB49  AE 26 09     MX
    LDA $A7E377,X                   ; $A6DB4C  BF 77 E3 A7  MX
    AND #$0007                      ; $A6DB50  29 07 00     MX
    STA $08D8                       ; $A6DB53  8D D8 08     MX
    LDA #$0082                      ; $A6DB56  A9 82 00     MX
    JMP L_A6DA0B                    ; $A6DB59  4C 0B DA     MX
L_A6DB5C:
    LDA $08D8                       ; $A6DB5C  AD D8 08     MX
    STA $00A4                       ; $A6DB5F  8D A4 00     MX
    LDX $0926                       ; $A6DB62  AE 26 09     MX
    LDA $A7E377,X                   ; $A6DB65  BF 77 E3 A7  MX
    AND #$0007                      ; $A6DB69  29 07 00     MX
    STA $08D8                       ; $A6DB6C  8D D8 08     MX
    LDA $0924                       ; $A6DB6F  AD 24 09     MX
    CMP #$0140                      ; $A6DB72  C9 40 01     MX
    BCC L_A6DBBD                    ; $A6DB75  90 46        MX
    LDA $0CCB                       ; $A6DB77  AD CB 0C     MX
    CMP #$0006                      ; $A6DB7A  C9 06 00     MX
    BCS L_A6DB94                    ; $A6DB7D  B0 15        MX
    LDA #$0028                      ; $A6DB7F  A9 28 00     MX
    STA $077A                       ; $A6DB82  8D 7A 07     MX
    STA $0862                       ; $A6DB85  8D 62 08     MX
    STA $094A                       ; $A6DB88  8D 4A 09     MX
    STA $0A32                       ; $A6DB8B  8D 32 0A     MX
    LDA #$001E                      ; $A6DB8E  A9 1E 00     MX
    JMP L_A6DBA2                    ; $A6DB91  4C A2 DB     MX
L_A6DB94:
    LDA $00C0                       ; $A6DB94  AD C0 00     MX
    BNE L_A6DB9F                    ; $A6DB97  D0 06        MX
    LDA #$000E                      ; $A6DB99  A9 0E 00     MX
    JMP L_A6DBA2                    ; $A6DB9C  4C A2 DB     MX
L_A6DB9F:
    LDA #$001C                      ; $A6DB9F  A9 1C 00     MX
L_A6DBA2:
    STA $08C4                       ; $A6DBA2  8D C4 08     MX
    LDA #$FFFF                      ; $A6DBA5  A9 FF FF     MX
    STA $08CA                       ; $A6DBA8  8D CA 08     MX
    STZ $08CC                       ; $A6DBAB  9C CC 08     MX
    STZ $0912                       ; $A6DBAE  9C 12 09     MX
    STZ $08C8                       ; $A6DBB1  9C C8 08     MX
    LDA #$FFF8                      ; $A6DBB4  A9 F8 FF     MX
    STA $08CE                       ; $A6DBB7  8D CE 08     MX
    JMP L_A6DBD8                    ; $A6DBBA  4C D8 DB     MX
L_A6DBBD:
    LDA #$0008                      ; $A6DBBD  A9 08 00     MX
L_A6DBC0:
    STA $08C4                       ; $A6DBC0  8D C4 08     MX
    LDA #$FFFF                      ; $A6DBC3  A9 FF FF     MX
    STA $08CA                       ; $A6DBC6  8D CA 08     MX
    STZ $08CC                       ; $A6DBC9  9C CC 08     MX
    STZ $0912                       ; $A6DBCC  9C 12 09     MX
    STZ $08C8                       ; $A6DBCF  9C C8 08     MX
    LDA #$FFF8                      ; $A6DBD2  A9 F8 FF     MX
    STA $08CE                       ; $A6DBD5  8D CE 08     MX
L_A6DBD8:
    LDA #$0001                      ; $A6DBD8  A9 01 00     MX
    STA $08C8                       ; $A6DBDB  8D C8 08     MX
L_A6DBDE:
    STZ $08FA                       ; $A6DBDE  9C FA 08     MX
    STZ $08F8                       ; $A6DBE1  9C F8 08     MX
    STZ $0902                       ; $A6DBE4  9C 02 09     MX
    STZ $0900                       ; $A6DBE7  9C 00 09     MX
    SEP #$10                        ; $A6DBEA  E2 10        MX
    LDA $08C4                       ; $A6DBEC  AD C4 08     Mx
    STA $0B52                       ; $A6DBEF  8D 52 0B     Mx
    RTS                             ; $A6DBF2  60           Mx
    db $06,$00,$04,$00,$04,$00,$04,$00,$09,$00,$04,$00,$04,$00,$04,$00 ; $A6DBF3
    db $78,$84,$3A,$1A,$14,$24,$44,$64,$52,$6C                         ; $A6DC03
L_A6DC0D:
    PHB                             ; $A6DC0D  8B           mx
    PHK                             ; $A6DC0E  4B           mx
    PLB                             ; $A6DC0F  AB           mx
    LDA #$08                        ; $A6DC10  A9 08        mx
    STA $2116                       ; $A6DC12  8D 16 21     mx
    LDA #$60                        ; $A6DC15  A9 60        mx
    STA $2117                       ; $A6DC17  8D 17 21     mx
    LDA #$01                        ; $A6DC1A  A9 01        mx
    STA $4300                       ; $A6DC1C  8D 00 43     mx
    LDA #$18                        ; $A6DC1F  A9 18        mx
    STA $4301                       ; $A6DC21  8D 01 43     mx
    LDA #$7D                        ; $A6DC24  A9 7D        mx
    STA $4302                       ; $A6DC26  8D 02 43     mx
    LDA #$B4                        ; $A6DC29  A9 B4        mx
    STA $4303                       ; $A6DC2B  8D 03 43     mx
    LDA #$2A                        ; $A6DC2E  A9 2A        mx
    STA $4304                       ; $A6DC30  8D 04 43     mx
    LDA #$80                        ; $A6DC33  A9 80        mx
    STA $4305                       ; $A6DC35  8D 05 43     mx
    LDA #$04                        ; $A6DC38  A9 04        mx
    STA $4306                       ; $A6DC3A  8D 06 43     mx
    LDA #$01                        ; $A6DC3D  A9 01        mx
    STA $420B                       ; $A6DC3F  8D 0B 42     mx
    LDA #$48                        ; $A6DC42  A9 48        mx
    STA $2116                       ; $A6DC44  8D 16 21     mx
    LDA #$62                        ; $A6DC47  A9 62        mx
    STA $2117                       ; $A6DC49  8D 17 21     mx
    LDA #$01                        ; $A6DC4C  A9 01        mx
    STA $4300                       ; $A6DC4E  8D 00 43     mx
    LDA #$18                        ; $A6DC51  A9 18        mx
    STA $4301                       ; $A6DC53  8D 01 43     mx
    LDA #$92                        ; $A6DC56  A9 92        mx
    STA $4302                       ; $A6DC58  8D 02 43     mx
    LDA #$D4                        ; $A6DC5B  A9 D4        mx
    STA $4303                       ; $A6DC5D  8D 03 43     mx
    LDA #$3F                        ; $A6DC60  A9 3F        mx
    STA $4304                       ; $A6DC62  8D 04 43     mx
    LDA #$50                        ; $A6DC65  A9 50        mx
    STA $4305                       ; $A6DC67  8D 05 43     mx
    LDA #$00                        ; $A6DC6A  A9 00        mx
    STA $4306                       ; $A6DC6C  8D 06 43     mx
    LDA #$01                        ; $A6DC6F  A9 01        mx
    STA $420B                       ; $A6DC71  8D 0B 42     mx
    REP #$30                        ; $A6DC74  C2 30        mx
    LDA #$2800                      ; $A6DC76  A9 00 28     MX
    STA $1CE3                       ; $A6DC79  8D E3 1C     MX
    LDA $0B4A                       ; $A6DC7C  AD 4A 0B     MX
    SEC                             ; $A6DC7F  38           MX
    SBC #$0002                      ; $A6DC80  E9 02 00     MX
    ASL                             ; $A6DC83  0A           MX
    ASL                             ; $A6DC84  0A           MX
    TAX                             ; $A6DC85  AA           MX
    LDA $3FE2FC,X                   ; $A6DC86  BF FC E2 3F  MX
    PHA                             ; $A6DC8A  48           MX
    LDA $3FE2FA,X                   ; $A6DC8B  BF FA E2 3F  MX
    TAY                             ; $A6DC8F  A8           MX
    PLX                             ; $A6DC90  FA           MX
    PHX                             ; $A6DC91  DA           MX
    JSR L_A6DCB6                    ; $A6DC92  20 B6 DC     MX
    PLA                             ; $A6DC95  68           MX
    CLC                             ; $A6DC96  18           MX
    ADC #$0040                      ; $A6DC97  69 40 00     MX
    TAX                             ; $A6DC9A  AA           MX
    PHX                             ; $A6DC9B  DA           MX
    JSR L_A6DCB6                    ; $A6DC9C  20 B6 DC     MX
    PLA                             ; $A6DC9F  68           MX
    CLC                             ; $A6DCA0  18           MX
    ADC #$0040                      ; $A6DCA1  69 40 00     MX
    TAX                             ; $A6DCA4  AA           MX
    PHX                             ; $A6DCA5  DA           MX
    JSR L_A6DCB6                    ; $A6DCA6  20 B6 DC     MX
    PLA                             ; $A6DCA9  68           MX
    CLC                             ; $A6DCAA  18           MX
    ADC #$0040                      ; $A6DCAB  69 40 00     MX
    TAX                             ; $A6DCAE  AA           MX
    JSR L_A6DCB6                    ; $A6DCAF  20 B6 DC     MX
    SEP #$30                        ; $A6DCB2  E2 30        MX
    PLB                             ; $A6DCB4  AB           mx
    RTL                             ; $A6DCB5  6B           mx
L_A6DCB6:
    PEA $003F                       ; $A6DCB6  F4 3F 00     MX
    PLB                             ; $A6DCB9  AB           MX
L_A6DCBA:
    LDA $0000,Y                     ; $A6DCBA  B9 00 00     MX
    AND #$00FF                      ; $A6DCBD  29 FF 00     MX
    BNE L_A6DCC5                    ; $A6DCC0  D0 03        MX
    INY                             ; $A6DCC2  C8           MX
    PLB                             ; $A6DCC3  AB           MX
    RTS                             ; $A6DCC4  60           MX
L_A6DCC5:
    CMP #$0004                      ; $A6DCC5  C9 04 00     MX
    BCS L_A6DCDA                    ; $A6DCC8  B0 10        MX
    DEC                             ; $A6DCCA  3A           MX
    AND #$0003                      ; $A6DCCB  29 03 00     MX
    ASL                             ; $A6DCCE  0A           MX
    ASL                             ; $A6DCCF  0A           MX
    XBA                             ; $A6DCD0  EB           MX
    ORA #$2000                      ; $A6DCD1  09 00 20     MX
    STA $1CE3                       ; $A6DCD4  8D E3 1C     MX
    INY                             ; $A6DCD7  C8           MX
    BRA L_A6DCBA                    ; $A6DCD8  80 E0        MX
L_A6DCDA:
    SEC                             ; $A6DCDA  38           MX
    SBC #$0020                      ; $A6DCDB  E9 20 00     MX
    AND #$00FF                      ; $A6DCDE  29 FF 00     MX
    ORA $1CE3                       ; $A6DCE1  0D E3 1C     MX
    CLC                             ; $A6DCE4  18           MX
    ADC #$0001                      ; $A6DCE5  69 01 00     MX
    STA $7FC000,X                   ; $A6DCE8  9F 00 C0 7F  MX
    INY                             ; $A6DCEC  C8           MX
    INX                             ; $A6DCED  E8           MX
    INX                             ; $A6DCEE  E8           MX
    BRA L_A6DCBA                    ; $A6DCEF  80 C9        MX
    db $F1,$F1,$81,$00,$00,$F4,$FF,$0E,$00,$00,$00,$3C,$2C,$6E,$46,$FB ; $A6DCF1
    db $D8,$76,$E7,$E9,$20,$76,$90,$D1,$C2,$8E,$01,$30,$00,$78,$00,$EF ; $A6DD01
    db $00,$5A,$81,$4D,$93,$7F,$80,$B9,$07,$FA,$07,$00,$00,$00,$00,$00 ; $A6DD11
    db $00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$00,$00,$00,$00,$00 ; $A6DD21
    db $00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$B8,$1F,$A4,$A6,$76 ; $A6DD31
    db $6E,$E0,$78,$40,$70,$00,$30,$00,$00,$00,$00,$A8,$47,$A4,$5B,$D6 ; $A6DD41
    db $08,$A0,$18,$40,$30,$00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DD51
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DD61
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00 ; $A6DD71
    db $F6,$FF,$0E,$00,$00,$00,$20,$00,$7C,$3C,$5C,$14,$44,$0A,$C4,$5A ; $A6DD81
    db $B2,$24,$C0,$1E,$B0,$2A,$38,$00,$40,$00,$66,$88,$64,$9E,$A4,$1E ; $A6DD91
    db $DA,$04,$E0,$1E,$C0,$1E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DDA1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DDB1
    db $00,$00,$00,$00,$00,$00,$60,$08,$12,$9E,$5C,$90,$48,$A8,$40,$30 ; $A6DDC1
    db $00,$30,$00,$00,$00,$00,$A0,$1E,$F2,$0C,$5C,$20,$88,$70,$00,$70 ; $A6DDD1
    db $00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DDE1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DDF1
    db $00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0C,$00,$00 ; $A6DE01
    db $00,$10,$10,$18,$30,$2A,$2A,$64,$98,$40,$7C,$5E,$06,$80,$FE,$44 ; $A6DE11
    db $AA,$08,$00,$2C,$40,$6C,$90,$22,$BC,$02,$BC,$EC,$10,$00,$7C,$82 ; $A6DE21
    db $7C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DE31
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DE41
    db $00,$60,$A2,$80,$3A,$3C,$EA,$00,$68,$10,$58,$00,$00,$00,$00,$00 ; $A6DE51
    db $00,$A2,$5C,$00,$7C,$B8,$44,$00,$7C,$10,$6C,$00,$00,$00,$00,$00 ; $A6DE61
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DE71
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DE81
    db $00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$38,$30,$2C,$4C ; $A6DE91
    db $EA,$48,$5E,$CA,$4C,$CC,$54,$88,$68,$48,$56,$56,$38,$00,$34,$40 ; $A6DEA1
    db $76,$80,$76,$80,$70,$82,$74,$82,$F4,$02,$6A,$80,$00,$00,$00,$00 ; $A6DEB1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DEC1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$DA,$9A,$4E,$4C ; $A6DED1
    db $28,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E6,$00,$B6,$00 ; $A6DEE1
    db $54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DEF1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DF01
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00 ; $A6DF11
    db $00,$F8,$FF,$0E,$00,$00,$00,$14,$00,$2F,$8F,$25,$25,$26,$07,$7A ; $A6DF21
    db $AB,$5A,$1B,$F0,$F9,$5A,$49,$7E,$00,$7B,$80,$77,$88,$7A,$81,$56 ; $A6DF31
    db $81,$F6,$01,$94,$03,$B6,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DF41
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DF51
    db $00,$00,$00,$00,$00,$00,$00,$B1,$91,$54,$14,$50,$50,$00,$00,$00 ; $A6DF61
    db $00,$00,$00,$00,$00,$00,$00,$6F,$00,$EA,$00,$2C,$00,$18,$00,$00 ; $A6DF71
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DF81
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6DF91
    db $00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00 ; $A6DFA1
    db $00,$00,$06,$00,$1F,$06,$3B,$19,$7F,$17,$BD,$A8,$F5,$B0,$9C,$0B ; $A6DFB1
    db $69,$56,$03,$04,$17,$08,$3A,$04,$5C,$20,$BF,$40,$CF,$00,$F8,$07 ; $A6DFC1
    db $A1,$1F,$00,$00,$80,$80,$40,$40,$40,$00,$00,$40,$00,$C0,$40,$C0 ; $A6DFD1
    db $00,$00,$00,$00,$00,$00,$80,$00,$C0,$00,$80,$40,$00,$C0,$40,$80 ; $A6DFE1
    db $80,$00,$12,$FD,$30,$D6,$4C,$8C,$80,$00,$00,$00,$00,$00,$00,$00 ; $A6DFF1
    db $00,$00,$12,$EF,$10,$EE,$0C,$E0,$00,$C0,$00,$40,$00,$00,$00,$00 ; $A6E001
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E011
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E021
    db $00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$07,$01,$05 ; $A6E031
    db $19,$0B,$20,$1D,$4A,$69,$C6,$F6,$8D,$A1,$3E,$4C,$F6,$06,$08,$06 ; $A6E041
    db $18,$0E,$31,$15,$63,$79,$87,$E6,$19,$E1,$1E,$44,$BA,$00,$00,$80 ; $A6E051
    db $80,$C0,$C0,$80,$80,$00,$80,$00,$80,$00,$00,$00,$00,$80,$00,$40 ; $A6E061
    db $00,$00,$00,$80,$00,$40,$80,$00,$80,$00,$00,$00,$00,$64,$5C,$70 ; $A6E071
    db $00,$C0,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00,$64,$98,$70 ; $A6E081
    db $88,$C0,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E091
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E0A1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81 ; $A6E0B1
    db $00,$00,$F6,$FF,$0C,$00,$00,$00,$00,$00,$30,$00,$28,$00,$5A,$32 ; $A6E0C1
    db $28,$28,$60,$9C,$40,$7C,$5E,$16,$00,$00,$38,$00,$3C,$40,$6C,$80 ; $A6E0D1
    db $6E,$90,$22,$BC,$02,$BC,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E0E1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E0F1
    db $00,$00,$00,$00,$00,$00,$00,$00,$84,$FA,$10,$EE,$68,$A6,$38,$EE ; $A6E101
    db $10,$5C,$00,$00,$00,$00,$00,$00,$04,$7C,$82,$7C,$A2,$5C,$B8,$44 ; $A6E111
    db $10,$6C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E121
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E131
    db $00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0C ; $A6E141
    db $00,$00,$00,$00,$00,$07,$04,$1D,$05,$69,$49,$EF,$EF,$5D,$19,$7A ; $A6E151
    db $33,$40,$42,$06,$08,$0F,$10,$3F,$00,$75,$02,$19,$00,$F7,$00,$CE ; $A6E161
    db $01,$B8,$06,$00,$00,$00,$00,$80,$00,$80,$80,$40,$40,$80,$80,$00 ; $A6E171
    db $00,$00,$00,$00,$00,$00,$00,$80,$00,$40,$00,$C0,$00,$80,$00,$00 ; $A6E181
    db $00,$00,$00,$28,$2C,$F0,$C0,$A0,$40,$40,$80,$80,$00,$00,$00,$00 ; $A6E191
    db $00,$00,$00,$D8,$04,$F0,$00,$20,$C0,$40,$80,$80,$00,$00,$00,$00 ; $A6E1A1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E1B1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E1C1
    db $00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0E,$00,$00,$00,$78,$78 ; $A6E1D1
    db $54,$10,$6C,$88,$DE,$4E,$47,$C8,$25,$44,$3B,$6B,$27,$27,$68,$00 ; $A6E1E1
    db $6C,$00,$74,$82,$72,$80,$77,$80,$3B,$40,$35,$40,$79,$00,$00,$00 ; $A6E1F1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E201
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$32,$12 ; $A6E211
    db $1B,$13,$0B,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3D,$00 ; $A6E221
    db $0C,$00,$0F,$00,$00,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E231
    db $00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E241
    db $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1 ; $A6E251
    db $81,$00,$00,$FA,$FF,$0A,$00,$00,$00,$6A,$11,$75,$52,$D5,$D0,$E9 ; $A6E261
    db $A0,$B6,$24,$FC,$98,$7E,$72,$2B,$36,$6E,$1B,$B5,$0B,$2C,$03,$7F ; $A6E271
    db $00,$D7,$08,$E7,$00,$7D,$00,$23,$1C,$00,$80,$00,$80,$00,$80,$80 ; $A6E281
    db $80,$80,$B0,$F0,$70,$30,$30,$C0,$40,$00,$80,$00,$80,$00,$80,$80 ; $A6E291
    db $40,$00,$70,$D0,$00,$20,$C0,$E0,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E2A1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E2B1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E2C1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E2D1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF ; $A6E2E1
    db $0E,$00,$00,$00,$30,$20,$70,$7C,$FA,$C4,$A4,$1B,$D4,$0F,$39,$96 ; $A6E2F1
    db $14,$43,$0E,$23,$48,$00,$90,$0C,$1A,$3C,$E4,$1B,$F4,$0B,$28,$C7 ; $A6E301
    db $18,$67,$0E,$31,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$C0 ; $A6E311
    db $40,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$40,$80 ; $A6E321
    db $40,$80,$C0,$00,$0D,$18,$06,$05,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E331
    db $00,$00,$00,$00,$0F,$10,$06,$01,$01,$00,$00,$00,$00,$00,$00,$00 ; $A6E341
    db $00,$00,$00,$00,$A0,$A0,$40,$00,$80,$00,$00,$00,$00,$00,$00,$00 ; $A6E351
    db $00,$00,$00,$00,$80,$40,$60,$80,$80,$00,$00,$00,$00,$00,$00,$00 ; $A6E361
    db $00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00 ; $A6E371
    db $00,$78,$20,$82,$BA,$40,$7C,$5E,$06,$84,$FA,$04,$EA,$20,$E6,$00 ; $A6E381
    db $00,$7C,$00,$C4,$38,$02,$BC,$EC,$10,$04,$7C,$86,$7C,$A2,$5C,$00 ; $A6E391
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E3A1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$84 ; $A6E3B1
    db $3A,$7C,$82,$38,$CA,$08,$60,$10,$58,$00,$00,$00,$00,$00,$00,$02 ; $A6E3C1
    db $7C,$B8,$44,$18,$64,$00,$7C,$10,$6C,$00,$00,$00,$00,$00,$00,$00 ; $A6E3D1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E3E1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1 ; $A6E3F1
    db $F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$16,$46,$12,$92,$12,$82 ; $A6E401
    db $AC,$8C,$F8,$7C,$AC,$A4,$58,$48,$00,$00,$3C,$40,$3A,$C4,$3C,$C0 ; $A6E411
    db $FA,$00,$CA,$00,$5A,$00,$34,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E421
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E431
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E441
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E451
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E461
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E471
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8 ; $A6E481
    db $FF,$0C,$00,$00,$00,$08,$08,$34,$14,$7C,$3E,$4A,$0B,$6C,$68,$3E ; $A6E491
    db $1C,$26,$06,$1A,$0A,$18,$00,$2C,$00,$7C,$02,$E6,$11,$F6,$01,$6B ; $A6E4A1
    db $80,$3D,$40,$35,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; $A6E4B1
    db $80,$00,$00,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; $A6E4C1
    db $00,$80,$00,$00,$00,$1F,$19,$08,$08,$01,$00,$00,$00,$00,$00,$00 ; $A6E4D1
    db $00,$00,$00,$00,$00,$16,$00,$07,$00,$03,$00,$00,$00,$00,$00,$00 ; $A6E4E1
    db $00,$00,$00,$00,$00,$40,$40,$60,$60,$80,$00,$00,$00,$00,$00,$00 ; $A6E4F1
    db $00,$00,$00,$00,$00,$C0,$00,$E0,$00,$80,$00,$00,$00,$00,$00,$00 ; $A6E501
    db $00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FC,$FF,$0E,$00,$00,$00 ; $A6E511
    db $00,$00,$60,$48,$89,$8C,$FA,$65,$E1,$A6,$BC,$A3,$F6,$55,$FC,$6B ; $A6E521
    db $00,$00,$20,$1C,$7B,$04,$9A,$07,$D9,$07,$B8,$47,$7C,$83,$F4,$03 ; $A6E531
    db $00,$00,$00,$00,$00,$00,$80,$00,$40,$80,$40,$C0,$80,$80,$00,$80 ; $A6E541
    db $00,$00,$00,$00,$00,$00,$80,$00,$40,$80,$40,$80,$80,$00,$00,$80 ; $A6E551
    db $7A,$19,$0A,$02,$05,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E561
    db $56,$21,$2C,$11,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E571
    db $00,$C0,$00,$E0,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E581
    db $00,$C0,$00,$E0,$80,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E591
    db $F1,$F1,$81,$00,$00,$F4,$FF,$0E,$00,$00,$00,$00,$3E,$00,$7F,$03 ; $A6E5A1
    db $F8,$06,$F7,$09,$F0,$06,$F0,$01,$F3,$1E,$E1,$00,$00,$02,$00,$0F ; $A6E5B1
    db $00,$1A,$01,$3D,$03,$5F,$00,$49,$06,$9A,$07,$00,$00,$00,$00,$00 ; $A6E5C1
    db $00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$00,$00,$00,$00,$00 ; $A6E5D1
    db $00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$19,$EF,$2C,$C7,$37 ; $A6E5E1
    db $EB,$20,$F8,$40,$70,$00,$30,$00,$00,$00,$00,$19,$06,$2C,$13,$57 ; $A6E5F1
    db $08,$60,$18,$40,$30,$00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E601
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E611
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00 ; $A6E621
    db $F6,$FF,$0E,$00,$00,$00,$00,$3C,$00,$7E,$00,$FE,$14,$EA,$04,$FA ; $A6E631
    db $12,$E4,$0A,$DE,$30,$CA,$00,$00,$00,$00,$52,$00,$34,$0E,$64,$1E ; $A6E641
    db $BA,$04,$2A,$14,$20,$1E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E651
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E661
    db $00,$00,$00,$00,$00,$00,$24,$DA,$12,$8C,$5C,$90,$48,$A8,$40,$30 ; $A6E671
    db $00,$30,$00,$00,$00,$00,$24,$1A,$F2,$0C,$5C,$20,$88,$70,$00,$70 ; $A6E681
    db $00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E691
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E6A1
    db $00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0C,$00,$00 ; $A6E6B1
    db $00,$00,$38,$00,$7C,$02,$FE,$64,$9A,$40,$FE,$5C,$86,$28,$FE,$44 ; $A6E6C1
    db $AA,$00,$00,$38,$00,$44,$00,$A4,$38,$C0,$3C,$EE,$10,$28,$54,$82 ; $A6E6D1
    db $7C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E6E1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E6F1
    db $00,$50,$AA,$C4,$3A,$3C,$C2,$00,$68,$10,$58,$00,$00,$00,$00,$00 ; $A6E701
    db $00,$92,$6C,$44,$38,$B8,$44,$00,$7C,$10,$6C,$00,$00,$00,$00,$00 ; $A6E711
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E721
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E731
    db $00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00,$38,$00,$7C ; $A6E741
    db $00,$FE,$00,$FE,$00,$FE,$00,$FE,$00,$FE,$00,$FE,$00,$00,$00,$00 ; $A6E751
    db $24,$00,$44,$00,$44,$00,$08,$00,$40,$00,$0C,$00,$00,$00,$00,$00 ; $A6E761
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E771
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$00,$FE ; $A6E781
    db $00,$7C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14,$00,$5C,$00 ; $A6E791
    db $58,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E7A1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E7B1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00 ; $A6E7C1
    db $00,$F8,$FF,$0E,$00,$00,$00,$00,$7E,$00,$FF,$01,$FF,$00,$FF,$00 ; $A6E7D1
    db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$00,$18,$00,$21,$00,$44,$01,$44 ; $A6E7E1
    db $01,$4A,$01,$0A,$01,$5E,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E7F1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E801
    db $00,$00,$00,$00,$00,$00,$00,$01,$FD,$00,$FE,$40,$7C,$00,$18,$00 ; $A6E811
    db $00,$00,$00,$00,$00,$00,$00,$1B,$00,$54,$00,$1C,$00,$08,$00,$00 ; $A6E821
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E831
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E841
    db $00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00 ; $A6E851
    db $00,$00,$00,$0F,$00,$3F,$00,$7F,$00,$7F,$00,$FF,$01,$FE,$04,$F7 ; $A6E861
    db $2B,$46,$00,$00,$08,$00,$07,$00,$3A,$00,$40,$00,$31,$00,$6C,$03 ; $A6E871
    db $B3,$0C,$00,$00,$00,$80,$00,$C0,$00,$C0,$00,$C0,$00,$C0,$40,$C0 ; $A6E881
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$40,$80 ; $A6E891
    db $80,$00,$13,$FD,$36,$D6,$4C,$8C,$80,$00,$00,$00,$00,$00,$00,$00 ; $A6E8A1
    db $00,$00,$13,$EE,$14,$E8,$0C,$E0,$00,$C0,$00,$40,$00,$00,$00,$00 ; $A6E8B1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E8C1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E8D1
    db $00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00,$0F,$00 ; $A6E8E1
    db $3F,$00,$7F,$0F,$7F,$09,$FE,$16,$FD,$03,$DE,$44,$9E,$00,$00,$0A ; $A6E8F1
    db $00,$17,$00,$23,$00,$41,$07,$06,$09,$E3,$1C,$64,$9A,$00,$80,$00 ; $A6E901
    db $C0,$00,$C0,$00,$C0,$80,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00 ; $A6E911
    db $00,$80,$00,$00,$00,$80,$00,$00,$80,$00,$00,$00,$00,$50,$58,$98 ; $A6E921
    db $08,$40,$40,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00,$70,$8C,$B0 ; $A6E931
    db $40,$80,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E941
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E951
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81 ; $A6E961
    db $00,$00,$F6,$FF,$0C,$00,$00,$00,$00,$38,$00,$7C,$02,$FE,$00,$FE ; $A6E971
    db $64,$9A,$40,$FE,$5C,$86,$28,$FE,$00,$00,$38,$00,$44,$00,$C4,$00 ; $A6E981
    db $A4,$38,$C2,$3C,$6C,$10,$AA,$54,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E991
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E9A1
    db $00,$00,$00,$00,$00,$00,$00,$00,$44,$AA,$D0,$2A,$44,$BA,$38,$82 ; $A6E9B1
    db $10,$58,$00,$00,$00,$00,$00,$00,$82,$7C,$10,$6C,$C4,$38,$B8,$44 ; $A6E9C1
    db $10,$6C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E9D1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6E9E1
    db $00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0C ; $A6E9F1
    db $00,$00,$00,$00,$0E,$00,$1F,$00,$3F,$00,$7F,$00,$7F,$00,$FF,$00 ; $A6EA01
    db $FF,$00,$FE,$00,$00,$00,$00,$00,$00,$08,$00,$10,$00,$12,$00,$2E ; $A6EA11
    db $01,$30,$02,$00,$00,$00,$00,$00,$80,$00,$C0,$00,$C0,$80,$80,$00 ; $A6EA21
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $A6EA31
    db $00,$00,$00,$00,$FC,$80,$F0,$A0,$40,$40,$80,$80,$00,$00,$00,$00 ; $A6EA41
    db $00,$00,$00,$00,$04,$80,$00,$20,$C0,$40,$80,$80,$00,$00,$00,$00 ; $A6EA51
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EA61
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EA71
    db $00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0E,$00,$00,$00,$00,$78 ; $A6EA81
    db $00,$7C,$00,$FE,$00,$FE,$00,$FF,$00,$7F,$00,$7F,$00,$7F,$00,$00 ; $A6EA91
    db $00,$00,$18,$00,$08,$00,$4A,$00,$0A,$00,$22,$00,$28,$00,$00,$00 ; $A6EAA1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EAB1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F ; $A6EAC1
    db $00,$1F,$00,$1F,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$0E,$00 ; $A6EAD1
    db $04,$00,$00,$00,$00,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EAE1
    db $00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EAF1
    db $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1 ; $A6EB01
    db $81,$00,$00,$FA,$FF,$0A,$00,$00,$00,$0A,$7B,$15,$F2,$15,$F0,$0D ; $A6EB11
    db $FE,$02,$FF,$00,$FF,$00,$7F,$00,$3F,$0C,$11,$34,$0B,$AC,$03,$00 ; $A6EB21
    db $01,$60,$00,$4A,$00,$25,$00,$01,$00,$00,$80,$80,$00,$80,$00,$80 ; $A6EB31
    db $00,$80,$B0,$F0,$F0,$30,$30,$00,$C0,$00,$00,$00,$80,$00,$80,$00 ; $A6EB41
    db $C0,$80,$70,$50,$00,$20,$C0,$A0,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EB51
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EB61
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EB71
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EB81
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF ; $A6EB91
    db $0E,$00,$00,$00,$00,$78,$10,$FC,$1A,$E4,$06,$FB,$15,$EE,$18,$FF ; $A6EBA1
    db $04,$7F,$03,$7E,$00,$00,$30,$0C,$3A,$1C,$26,$19,$35,$0A,$00,$07 ; $A6EBB1
    db $00,$03,$11,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; $A6EBC1
    db $C0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80 ; $A6EBD1
    db $C0,$00,$C0,$00,$01,$3E,$00,$0F,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EBE1
    db $00,$00,$00,$00,$0B,$00,$02,$01,$01,$00,$00,$00,$00,$00,$00,$00 ; $A6EBF1
    db $00,$00,$00,$00,$A0,$A0,$40,$00,$80,$00,$00,$00,$00,$00,$00,$00 ; $A6EC01
    db $00,$00,$00,$00,$80,$40,$60,$80,$80,$00,$00,$00,$00,$00,$00,$00 ; $A6EC11
    db $00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00 ; $A6EC21
    db $38,$00,$7C,$66,$9A,$40,$FE,$5C,$86,$28,$FE,$44,$AA,$50,$AA,$00 ; $A6EC31
    db $00,$44,$00,$24,$38,$C0,$3C,$EC,$10,$AA,$54,$00,$7C,$92,$6C,$00 ; $A6EC41
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EC51
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$44 ; $A6EC61
    db $BA,$B8,$02,$00,$C2,$00,$68,$10,$58,$00,$00,$00,$00,$00,$00,$C6 ; $A6EC71
    db $38,$38,$44,$80,$7C,$00,$7C,$10,$6C,$00,$00,$00,$00,$00,$00,$00 ; $A6EC81
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EC91
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1 ; $A6ECA1
    db $F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00,$3C,$00,$7E,$00,$7E ; $A6ECB1
    db $00,$FE,$00,$FE,$00,$FE,$00,$7C,$00,$00,$40,$00,$90,$00,$90,$00 ; $A6ECC1
    db $64,$00,$28,$00,$58,$00,$74,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6ECD1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6ECE1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6ECF1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6ED01
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6ED11
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6ED21
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8 ; $A6ED31
    db $FF,$0C,$00,$00,$00,$00,$18,$04,$3C,$04,$7E,$02,$7F,$00,$FE,$00 ; $A6ED41
    db $FF,$00,$FF,$00,$7F,$00,$00,$04,$00,$24,$02,$3A,$01,$48,$01,$26 ; $A6ED51
    db $00,$25,$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; $A6ED61
    db $80,$00,$00,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; $A6ED71
    db $00,$80,$00,$00,$00,$00,$3F,$00,$1F,$00,$03,$00,$00,$00,$00,$00 ; $A6ED81
    db $00,$00,$00,$00,$00,$0A,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6ED91
    db $00,$00,$00,$00,$00,$40,$C0,$60,$E0,$00,$80,$00,$00,$00,$00,$00 ; $A6EDA1
    db $00,$00,$00,$00,$00,$C0,$00,$E0,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EDB1
    db $00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FC,$FF,$0E,$00,$00,$00 ; $A6EDC1
    db $00,$00,$04,$7C,$00,$FC,$0A,$F5,$03,$FF,$04,$FF,$02,$E9,$00,$FC ; $A6EDD1
    db $00,$00,$04,$00,$02,$0C,$4A,$05,$43,$04,$40,$03,$B4,$03,$2A,$01 ; $A6EDE1
    db $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$00,$00,$00,$00,$00,$00 ; $A6EDF1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$80,$00 ; $A6EE01
    db $02,$FD,$00,$7F,$01,$0E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EE11
    db $2E,$01,$14,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EE21
    db $80,$00,$40,$80,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EE31
    db $00,$C0,$00,$E0,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EE41
    db $F1,$F1,$81,$00,$00,$F4,$FF,$0E,$00,$00,$00,$3C,$3C,$56,$5A,$CB ; $A6EE51
    db $B5,$D0,$6C,$ED,$16,$19,$7F,$72,$1D,$E2,$BD,$00,$00,$20,$00,$44 ; $A6EE61
    db $00,$8E,$01,$95,$03,$F1,$06,$92,$0F,$02,$0F,$00,$00,$00,$00,$00 ; $A6EE71
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EE81
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$F6,$1C,$EF,$8C ; $A6EE91
    db $F0,$E8,$D8,$60,$50,$00,$00,$00,$00,$00,$00,$91,$0F,$EC,$13,$20 ; $A6EEA1
    db $1C,$C8,$30,$40,$30,$30,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EEB1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EEC1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00 ; $A6EED1
    db $F6,$FF,$0E,$00,$00,$00,$24,$00,$78,$3C,$42,$3E,$4C,$72,$04,$6A ; $A6EEE1
    db $1A,$EC,$6E,$F0,$26,$D8,$3C,$00,$46,$00,$58,$80,$38,$86,$B4,$0E ; $A6EEF1
    db $6A,$14,$CE,$1E,$82,$3E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EF01
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EF11
    db $00,$00,$00,$00,$00,$00,$24,$FE,$62,$AC,$5A,$96,$42,$86,$40,$20 ; $A6EF21
    db $00,$20,$00,$00,$00,$00,$E4,$1A,$E2,$5E,$FC,$60,$E4,$70,$10,$70 ; $A6EF31
    db $00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EF41
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EF51
    db $00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0C,$00,$00 ; $A6EF61
    db $00,$18,$00,$5C,$18,$62,$3E,$AC,$36,$40,$3A,$AC,$D2,$52,$AC,$62 ; $A6EF71
    db $9C,$18,$00,$64,$00,$C8,$80,$E2,$18,$86,$7C,$2A,$54,$50,$FE,$42 ; $A6EF81
    db $FC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EF91
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EFA1
    db $00,$30,$DE,$40,$BA,$04,$C2,$0C,$E2,$14,$58,$00,$00,$00,$00,$00 ; $A6EFB1
    db $00,$92,$6C,$86,$7C,$9A,$7C,$8A,$7C,$10,$6C,$00,$00,$00,$00,$00 ; $A6EFC1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EFD1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6EFE1
    db $00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$38,$28,$34,$30 ; $A6EFF1
    db $64,$2C,$8E,$AA,$96,$BC,$A6,$BC,$82,$FE,$E0,$9E,$38,$04,$0C,$40 ; $A6F001
    db $52,$00,$D0,$00,$E8,$00,$D8,$00,$A8,$00,$B4,$00,$00,$00,$00,$00 ; $A6F011
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F021
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E0,$7E,$92,$FE ; $A6F031
    db $80,$BC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$8C,$00,$EC,$00 ; $A6F041
    db $5C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F051
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F061
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00 ; $A6F071
    db $00,$F8,$FF,$0E,$00,$00,$00,$1C,$10,$0C,$0E,$70,$57,$68,$6F,$D1 ; $A6F081
    db $1E,$E1,$BE,$83,$BE,$C0,$3F,$1C,$00,$12,$20,$6B,$00,$53,$00,$E6 ; $A6F091
    db $01,$CF,$01,$D5,$01,$EE,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F0A1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F0B1
    db $00,$00,$00,$00,$00,$00,$00,$C6,$7F,$83,$7C,$40,$7C,$00,$18,$00 ; $A6F0C1
    db $00,$00,$00,$00,$00,$00,$00,$BA,$01,$BE,$03,$BC,$00,$18,$00,$00 ; $A6F0D1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F0E1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F0F1
    db $00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00 ; $A6F101
    db $00,$00,$07,$07,$1F,$1F,$30,$3F,$40,$7F,$80,$FF,$32,$FB,$35,$A2 ; $A6F111
    db $7B,$75,$00,$00,$00,$00,$05,$00,$1E,$00,$3F,$00,$55,$08,$E0,$1F ; $A6F121
    db $F3,$0E,$00,$00,$80,$80,$C0,$C0,$40,$C0,$40,$C0,$40,$C0,$00,$00 ; $A6F131
    db $00,$80,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$80,$00,$80,$80 ; $A6F141
    db $00,$80,$E5,$2A,$98,$54,$60,$A4,$C0,$00,$40,$00,$00,$00,$00,$00 ; $A6F151
    db $00,$00,$E5,$DF,$92,$EE,$20,$CC,$00,$C0,$00,$40,$00,$00,$00,$00 ; $A6F161
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F171
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F181
    db $00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00,$00,$00 ; $A6F191
    db $00,$0F,$0F,$00,$3F,$10,$67,$3D,$C2,$74,$CD,$93,$CD,$00,$00,$0F ; $A6F1A1
    db $00,$10,$00,$3F,$00,$6F,$10,$C1,$3F,$C6,$39,$83,$7E,$00,$00,$80 ; $A6F1B1
    db $80,$00,$80,$40,$80,$40,$C0,$00,$00,$80,$80,$00,$00,$00,$00,$00 ; $A6F1C1
    db $00,$40,$00,$C0,$00,$80,$00,$40,$80,$80,$00,$00,$00,$02,$DC,$74 ; $A6F1D1
    db $A8,$D0,$18,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$02,$FE,$20 ; $A6F1E1
    db $DC,$10,$C8,$00,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F1F1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F201
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81 ; $A6F211
    db $00,$00,$F6,$FF,$0C,$00,$00,$00,$18,$00,$6C,$08,$D0,$5E,$62,$3E ; $A6F221
    db $AC,$36,$44,$3A,$A8,$D6,$50,$AE,$38,$00,$74,$00,$E0,$00,$C8,$80 ; $A6F231
    db $E2,$18,$82,$7C,$2A,$54,$50,$FE,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F241
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F251
    db $00,$00,$00,$00,$00,$00,$00,$00,$E2,$1C,$24,$EA,$70,$B6,$08,$E6 ; $A6F261
    db $10,$5C,$00,$00,$00,$00,$00,$00,$40,$FE,$A2,$5C,$BA,$4C,$82,$7C ; $A6F271
    db $10,$6C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F281
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F291
    db $00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0C ; $A6F2A1
    db $00,$00,$00,$0E,$00,$13,$10,$2C,$2C,$46,$5E,$81,$3F,$00,$7F,$8D ; $A6F2B1
    db $FC,$1C,$FA,$0E,$00,$1F,$00,$33,$00,$61,$00,$DC,$00,$A7,$00,$53 ; $A6F2C1
    db $03,$E4,$06,$00,$00,$00,$00,$80,$00,$40,$C0,$00,$C0,$80,$00,$00 ; $A6F2D1
    db $00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$C0,$00,$80,$80,$00 ; $A6F2E1
    db $00,$00,$00,$98,$F4,$70,$60,$E0,$80,$C0,$00,$80,$00,$00,$00,$00 ; $A6F2F1
    db $00,$00,$00,$68,$0C,$B0,$00,$A0,$40,$40,$80,$80,$00,$00,$00,$00 ; $A6F301
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F311
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F321
    db $00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0E,$00,$00,$00,$38,$18 ; $A6F331
    db $68,$40,$AA,$BA,$EE,$28,$16,$3D,$01,$3F,$40,$5F,$40,$7F,$38,$00 ; $A6F341
    db $7C,$00,$C4,$00,$D0,$00,$C8,$00,$7C,$00,$76,$00,$5A,$00,$00,$00 ; $A6F351
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F361
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$0F ; $A6F371
    db $14,$1F,$00,$1E,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$13,$00 ; $A6F381
    db $0B,$00,$16,$01,$00,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F391
    db $80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F3A1
    db $80,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1 ; $A6F3B1
    db $81,$00,$00,$FA,$FF,$0A,$00,$00,$00,$6C,$67,$63,$4C,$C9,$BE,$AF ; $A6F3C1
    db $D4,$56,$6F,$0B,$35,$3B,$14,$19,$01,$0C,$1B,$13,$0F,$38,$07,$10 ; $A6F3D1
    db $03,$0E,$00,$44,$00,$24,$00,$1E,$00,$00,$40,$40,$80,$C0,$40,$60 ; $A6F3E1
    db $40,$80,$F0,$10,$E0,$D0,$30,$00,$E0,$80,$C0,$00,$C0,$40,$80,$60 ; $A6F3F1
    db $A0,$80,$70,$70,$10,$10,$00,$60,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F401
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F411
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F421
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F431
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF ; $A6F441
    db $0E,$00,$00,$00,$18,$08,$42,$7A,$25,$3B,$21,$3C,$22,$3D,$20,$37 ; $A6F451
    db $0F,$10,$07,$1F,$34,$00,$1A,$04,$5D,$06,$5B,$05,$58,$07,$58,$07 ; $A6F461
    db $30,$0F,$1F,$00,$00,$00,$00,$00,$00,$00,$80,$00,$40,$C0,$80,$40 ; $A6F471
    db $C0,$C0,$C0,$C0,$00,$00,$00,$00,$00,$00,$80,$80,$40,$80,$00,$C0 ; $A6F481
    db $C0,$00,$C0,$00,$03,$06,$01,$03,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F491
    db $00,$00,$00,$00,$06,$01,$03,$00,$00,$01,$00,$00,$00,$00,$00,$00 ; $A6F4A1
    db $00,$00,$00,$00,$A0,$40,$C0,$20,$80,$00,$00,$00,$00,$00,$00,$00 ; $A6F4B1
    db $00,$00,$00,$00,$80,$E0,$40,$E0,$00,$80,$00,$00,$00,$00,$00,$00 ; $A6F4C1
    db $00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$38 ; $A6F4D1
    db $38,$40,$18,$AE,$36,$60,$1A,$A8,$FE,$DA,$24,$62,$9C,$24,$EA,$00 ; $A6F4E1
    db $00,$64,$00,$E0,$18,$A4,$78,$2A,$54,$50,$FE,$42,$FC,$A2,$5C,$00 ; $A6F4F1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F501
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4C ; $A6F511
    db $F2,$70,$B6,$6C,$82,$38,$D6,$10,$7C,$00,$00,$00,$00,$00,$00,$C2 ; $A6F521
    db $3C,$BA,$4C,$96,$7C,$9A,$6C,$10,$6C,$00,$00,$00,$00,$00,$00,$00 ; $A6F531
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F541
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1 ; $A6F551
    db $F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$44,$54,$E8,$EA,$1E,$5E ; $A6F561
    db $0A,$7E,$20,$7E,$00,$FE,$00,$7C,$00,$00,$78,$00,$94,$00,$A0,$00 ; $A6F571
    db $D0,$00,$8A,$00,$72,$00,$7C,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F581
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F591
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F5A1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F5B1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F5C1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F5D1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8 ; $A6F5E1
    db $FF,$0C,$00,$00,$00,$00,$00,$24,$18,$48,$0E,$D0,$1D,$B3,$3E,$A3 ; $A6F5F1
    db $3F,$41,$5F,$20,$2F,$00,$00,$3C,$04,$74,$02,$E6,$03,$CD,$01,$C8 ; $A6F601
    db $00,$6A,$00,$35,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; $A6F611
    db $00,$80,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; $A6F621
    db $80,$00,$00,$80,$00,$10,$17,$02,$03,$03,$03,$00,$00,$00,$00,$00 ; $A6F631
    db $00,$00,$00,$00,$00,$1B,$00,$05,$00,$03,$00,$00,$00,$00,$00,$00 ; $A6F641
    db $00,$00,$00,$00,$00,$40,$C0,$A0,$A0,$80,$80,$00,$00,$00,$00,$00 ; $A6F651
    db $00,$00,$00,$00,$00,$80,$00,$60,$00,$80,$00,$00,$00,$00,$00,$00 ; $A6F661
    db $00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FC,$FF,$0E,$00,$00,$00 ; $A6F671
    db $20,$30,$40,$78,$83,$FE,$0A,$7D,$01,$76,$00,$7B,$CE,$FA,$0F,$3F ; $A6F681
    db $00,$00,$3C,$04,$5B,$05,$B2,$07,$F9,$07,$B0,$0F,$3A,$05,$57,$00 ; $A6F691
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$00,$80,$80,$80,$00,$00 ; $A6F6A1
    db $00,$00,$00,$00,$00,$00,$80,$80,$00,$C0,$00,$C0,$80,$00,$00,$80 ; $A6F6B1
    db $23,$3A,$11,$1C,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F6C1
    db $0F,$01,$07,$01,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F6D1
    db $00,$C0,$80,$60,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F6E1
    db $00,$C0,$80,$E0,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F6F1
    db $F1,$F1,$81,$00,$00,$F4,$FF,$0E,$00,$00,$00,$00,$00,$20,$00,$74 ; $A6F701
    db $00,$78,$28,$4A,$4C,$3C,$1A,$12,$1A,$7A,$24,$00,$00,$3C,$00,$7E ; $A6F711
    db $00,$76,$00,$78,$06,$6C,$00,$70,$0E,$50,$0E,$00,$00,$00,$00,$00 ; $A6F721
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F731
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7A,$66,$14,$04,$28 ; $A6F741
    db $00,$00,$30,$00,$30,$00,$00,$00,$00,$00,$00,$12,$0C,$56,$28,$08 ; $A6F751
    db $70,$00,$70,$00,$70,$00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F761
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F771
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00 ; $A6F781
    db $F6,$FF,$0E,$00,$00,$00,$00,$00,$18,$00,$34,$10,$5E,$1E,$70,$34 ; $A6F791
    db $14,$3A,$22,$08,$28,$58,$00,$00,$3C,$00,$7E,$00,$60,$00,$50,$0E ; $A6F7A1
    db $44,$00,$64,$1A,$20,$1E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F7B1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F7C1
    db $00,$00,$00,$00,$00,$00,$72,$4C,$0E,$0A,$0C,$0C,$10,$00,$00,$20 ; $A6F7D1
    db $00,$20,$00,$00,$00,$00,$22,$1C,$6C,$10,$50,$20,$50,$20,$40,$30 ; $A6F7E1
    db $00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F7F1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F801
    db $00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0C,$00,$00 ; $A6F811
    db $00,$00,$00,$00,$00,$1C,$00,$3E,$3C,$76,$3C,$30,$34,$28,$1C,$6E ; $A6F821
    db $66,$00,$00,$18,$00,$3C,$00,$42,$00,$66,$18,$4A,$00,$6A,$14,$20 ; $A6F831
    db $1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F841
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F851
    db $00,$3C,$42,$18,$18,$24,$3C,$3C,$3C,$24,$24,$00,$00,$00,$00,$00 ; $A6F861
    db $00,$38,$04,$3C,$00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00,$00 ; $A6F871
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F881
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F891
    db $00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00,$00,$24,$04 ; $A6F8A1
    db $5A,$02,$4C,$08,$54,$00,$04,$04,$06,$02,$4A,$42,$00,$00,$38,$00 ; $A6F8B1
    db $7C,$00,$7E,$00,$7E,$00,$7E,$00,$7C,$00,$3C,$00,$00,$00,$00,$00 ; $A6F8C1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F8D1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$66,$66,$1C,$1C ; $A6F8E1
    db $38,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$00,$20,$00 ; $A6F8F1
    db $34,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F901
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F911
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00 ; $A6F921
    db $00,$F8,$FF,$0E,$00,$00,$00,$00,$00,$08,$00,$3C,$1C,$7C,$38,$7A ; $A6F931
    db $08,$62,$42,$62,$40,$6A,$08,$00,$00,$3C,$00,$7E,$00,$FE,$00,$FC ; $A6F941
    db $02,$F8,$0C,$F8,$06,$78,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F951
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F961
    db $00,$00,$00,$00,$00,$00,$00,$2C,$0C,$1C,$1C,$40,$50,$00,$00,$00 ; $A6F971
    db $00,$00,$00,$00,$00,$00,$00,$7C,$02,$72,$00,$40,$38,$18,$00,$00 ; $A6F981
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F991
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6F9A1
    db $00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00 ; $A6F9B1
    db $00,$00,$00,$00,$01,$00,$07,$06,$0F,$0A,$08,$00,$19,$0D,$28,$20 ; $A6F9C1
    db $50,$5E,$00,$00,$03,$00,$07,$00,$0F,$00,$1F,$00,$13,$04,$19,$06 ; $A6F9D1
    db $10,$2F,$00,$00,$00,$00,$80,$80,$C0,$40,$40,$00,$80,$80,$C0,$00 ; $A6F9E1
    db $00,$80,$00,$00,$80,$00,$C0,$00,$E0,$00,$E0,$00,$E0,$00,$40,$80 ; $A6F9F1
    db $00,$00,$A1,$86,$10,$70,$60,$A0,$40,$40,$00,$00,$00,$00,$00,$00 ; $A6FA01
    db $00,$00,$11,$6E,$0A,$E4,$20,$C0,$60,$80,$40,$00,$00,$00,$00,$00 ; $A6FA11
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FA21
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FA31
    db $00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00,$00,$07 ; $A6FA41
    db $01,$0F,$04,$0E,$00,$10,$03,$09,$05,$35,$2F,$72,$4C,$00,$00,$07 ; $A6FA51
    db $00,$0F,$00,$1F,$00,$1C,$03,$3A,$04,$10,$0F,$32,$0D,$00,$00,$80 ; $A6FA61
    db $80,$C0,$C0,$C0,$40,$00,$00,$00,$80,$80,$80,$00,$00,$00,$00,$80 ; $A6FA71
    db $00,$C0,$00,$C0,$00,$C0,$00,$40,$80,$00,$00,$00,$00,$C0,$C4,$A0 ; $A6FA81
    db $A0,$50,$50,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$50,$2E,$BC ; $A6FA91
    db $40,$60,$80,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FAA1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FAB1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81 ; $A6FAC1
    db $00,$00,$F6,$FF,$0C,$00,$00,$00,$00,$00,$00,$00,$3C,$18,$3C,$20 ; $A6FAD1
    db $42,$00,$16,$1C,$18,$38,$7E,$6A,$00,$00,$18,$00,$3C,$00,$7E,$00 ; $A6FAE1
    db $7E,$00,$66,$18,$46,$00,$28,$14,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FAF1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FB01
    db $00,$00,$00,$00,$00,$00,$00,$00,$20,$42,$18,$00,$00,$24,$24,$3C ; $A6FB11
    db $3C,$3C,$00,$00,$00,$00,$00,$00,$38,$04,$3C,$00,$18,$00,$00,$00 ; $A6FB21
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FB31
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FB41
    db $00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0C ; $A6FB51
    db $00,$00,$00,$00,$00,$03,$00,$04,$00,$0D,$04,$1C,$08,$21,$00,$13 ; $A6FB61
    db $02,$2F,$0C,$00,$00,$03,$00,$04,$03,$0F,$00,$1F,$00,$3F,$00,$3E ; $A6FB71
    db $01,$74,$03,$00,$00,$00,$00,$80,$00,$C0,$80,$C0,$00,$C0,$80,$00 ; $A6FB81
    db $00,$00,$00,$00,$00,$00,$00,$80,$00,$C0,$00,$C0,$00,$C0,$00,$00 ; $A6FB91
    db $80,$00,$00,$7C,$6C,$D0,$90,$A0,$20,$40,$40,$80,$80,$00,$00,$00 ; $A6FBA1
    db $00,$00,$00,$F4,$02,$EC,$00,$C0,$00,$80,$00,$00,$00,$00,$00,$00 ; $A6FBB1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FBC1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FBD1
    db $00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0E,$00,$00,$00,$00,$00 ; $A6FBE1
    db $30,$30,$44,$44,$64,$24,$74,$34,$2E,$04,$1E,$00,$0C,$00,$00,$00 ; $A6FBF1
    db $30,$08,$44,$38,$64,$18,$76,$08,$6E,$10,$3F,$00,$3F,$00,$00,$00 ; $A6FC01
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FC11
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01 ; $A6FC21
    db $0E,$0E,$01,$01,$07,$07,$00,$00,$00,$00,$00,$00,$00,$00,$1E,$00 ; $A6FC31
    db $01,$00,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FC41
    db $80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FC51
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1 ; $A6FC61
    db $81,$00,$00,$FA,$FF,$0A,$00,$00,$00,$00,$00,$0B,$06,$24,$09,$1D ; $A6FC71
    db $1E,$37,$06,$35,$11,$19,$08,$00,$00,$00,$00,$30,$0B,$74,$0B,$6C ; $A6FC81
    db $03,$7B,$00,$3E,$00,$1F,$00,$00,$00,$00,$00,$80,$80,$40,$C0,$A0 ; $A6FC91
    db $00,$C0,$10,$A0,$90,$80,$80,$00,$00,$00,$00,$C0,$00,$40,$80,$20 ; $A6FCA1
    db $C0,$C0,$30,$00,$70,$40,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FCB1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FCC1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FCD1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FCE1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF ; $A6FCF1
    db $0E,$00,$00,$00,$00,$00,$10,$00,$74,$5C,$8C,$1C,$62,$74,$34,$AF ; $A6FD01
    db $10,$56,$0A,$3E,$00,$00,$10,$20,$60,$08,$A0,$56,$CA,$15,$50,$1F ; $A6FD11
    db $20,$0F,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FD21
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00 ; $A6FD31
    db $80,$00,$80,$00,$06,$0C,$03,$03,$01,$01,$00,$00,$00,$00,$00,$00 ; $A6FD41
    db $00,$00,$00,$00,$02,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FD51
    db $00,$00,$00,$00,$80,$80,$40,$40,$80,$80,$00,$00,$00,$00,$00,$00 ; $A6FD61
    db $00,$00,$00,$00,$C0,$00,$60,$80,$80,$00,$00,$00,$00,$00,$00,$00 ; $A6FD71
    db $00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00 ; $A6FD81
    db $00,$00,$00,$24,$20,$76,$3C,$10,$34,$20,$14,$66,$66,$3C,$42,$00 ; $A6FD91
    db $00,$18,$00,$24,$18,$66,$18,$4A,$00,$62,$1C,$20,$1C,$38,$04,$00 ; $A6FDA1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FDB1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18 ; $A6FDC1
    db $18,$00,$3C,$20,$3C,$3C,$3C,$24,$24,$00,$00,$00,$00,$00,$00,$3C ; $A6FDD1
    db $00,$00,$00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FDE1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FDF1
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1 ; $A6FE01
    db $F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$18,$18,$64,$20,$7A,$30 ; $A6FE11
    db $36,$34,$7C,$58,$5A,$52,$3C,$3C,$00,$00,$3C,$00,$66,$18,$72,$0C ; $A6FE21
    db $76,$08,$3E,$00,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FE31
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FE41
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FE51
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FE61
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FE71
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FE81
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8 ; $A6FE91
    db $FF,$0C,$00,$00,$00,$00,$00,$10,$10,$08,$08,$66,$20,$16,$04,$61 ; $A6FEA1
    db $41,$5F,$47,$23,$22,$00,$00,$38,$00,$5A,$24,$79,$06,$5C,$23,$2F ; $A6FEB1
    db $10,$38,$00,$1D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FEC1
    db $00,$00,$00,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80 ; $A6FED1
    db $00,$00,$00,$00,$00,$0F,$0D,$01,$01,$00,$00,$00,$00,$00,$00,$00 ; $A6FEE1
    db $00,$00,$00,$00,$00,$03,$00,$03,$00,$01,$00,$00,$00,$00,$00,$00 ; $A6FEF1
    db $00,$00,$00,$00,$00,$40,$40,$A0,$20,$80,$80,$00,$00,$00,$00,$00 ; $A6FF01
    db $00,$00,$00,$00,$00,$80,$00,$C0,$00,$80,$00,$00,$00,$00,$00,$00 ; $A6FF11
    db $00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FC,$FF,$0E,$00,$00,$00 ; $A6FF21
    db $00,$00,$30,$30,$5C,$08,$76,$42,$D0,$D5,$B0,$A7,$50,$43,$24,$22 ; $A6FF31
    db $00,$00,$30,$00,$5C,$20,$D8,$24,$58,$27,$78,$07,$38,$07,$1C,$03 ; $A6FF41
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FF51
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$80,$80,$00 ; $A6FF61
    db $0A,$0A,$05,$04,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FF71
    db $07,$00,$00,$03,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FF81
    db $80,$80,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FF91
    db $00,$00,$40,$80,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A6FFA1
    db $00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $A6FFB1
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $A6FFC1
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $A6FFD1
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $A6FFE1
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF     ; $A6FFF1
