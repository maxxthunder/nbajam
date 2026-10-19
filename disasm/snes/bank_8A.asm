; bank $8A  (file offset $050000)
org $8A8000

L_8A8000:
    PHA                             ; $8A8000  48           MX
L_8A8001:
    SEP #$20                        ; $8A8001  E2 20        MX
L_8A8003:
    LDA #$01                        ; $8A8003  A9 01        mX
L_8A8005:
    STA $4200                       ; $8A8005  8D 00 42     mX
L_8A8008:
    REP #$20                        ; $8A8008  C2 20        mX
L_8A800A:
    PLA                             ; $8A800A  68           MX
L_8A800B:
    STA $000100                     ; $8A800B  8F 00 01 00  MX
L_8A800F:
    SEP #$20                        ; $8A800F  E2 20        MX
L_8A8011:
    LDA $4210                       ; $8A8011  AD 10 42     mX
L_8A8014:
    LDA #$81                        ; $8A8014  A9 81        mX
L_8A8016:
    STA $4200                       ; $8A8016  8D 00 42     mX
L_8A8019:
    REP #$20                        ; $8A8019  C2 20        mX
L_8A801B:
    RTS                             ; $8A801B  60           MX
L_8A801C:
    PHP                             ; $8A801C  08           Mx
L_8A801D:
    PHB                             ; $8A801D  8B           Mx
L_8A801E:
    PHD                             ; $8A801E  0B           Mx
L_8A801F:
    REP #$30                        ; $8A801F  C2 30        Mx
L_8A8021:
    STA $00A4                       ; $8A8021  8D A4 00     MX
L_8A8024:
    LDA #$0000                      ; $8A8024  A9 00 00     MX
L_8A8027:
    PHA                             ; $8A8027  48           MX
L_8A8028:
    PLB                             ; $8A8028  AB           MX
L_8A8029:
    PLB                             ; $8A8029  AB           MX
L_8A802A:
    TCD                             ; $8A802A  5B           MX
L_8A802B:
    LDA $000100                     ; $8A802B  AF 00 01 00  MX
L_8A802F:
    STA $1663                       ; $8A802F  8D 63 16     MX
L_8A8032:
    LDA #$DFDD                      ; $8A8032  A9 DD DF     MX
L_8A8035:
    JSR L_8A8000                    ; $8A8035  20 00 80     MX
L_8A8038:
    LDA $00A4                       ; $8A8038  AD A4 00     MX
L_8A803B:
    STA $001665                     ; $8A803B  8F 65 16 00  MX
L_8A803F:
    LDA #$0000                      ; $8A803F  A9 00 00     MX
L_8A8042:
    STA $001667                     ; $8A8042  8F 67 16 00  MX
L_8A8046:
    LDA #$FFFF                      ; $8A8046  A9 FF FF     MX
L_8A8049:
    STA $000008                     ; $8A8049  8F 08 00 00  MX
L_8A804D:
    LDA #$FFFF                      ; $8A804D  A9 FF FF     MX
L_8A8050:
    STA $00000A                     ; $8A8050  8F 0A 00 00  MX
L_8A8054:
    LDA #$FFFF                      ; $8A8054  A9 FF FF     MX
L_8A8057:
    STA $00000C                     ; $8A8057  8F 0C 00 00  MX
L_8A805B:
    LDA #$FFFF                      ; $8A805B  A9 FF FF     MX
L_8A805E:
    STA $00000E                     ; $8A805E  8F 0E 00 00  MX
L_8A8062:
    JSL L_A9FBF2                    ; $8A8062  22 F2 FB A9  MX
L_8A8066:
    JSR L_8AD7A5                    ; $8A8066  20 A5 D7     MX
L_8A8069:
    REP #$20                        ; $8A8069  C2 20        MX
L_8A806B:
    JSL L_B1F769                    ; $8A806B  22 69 F7 B1  MX
L_8A806F:
    JSL L_80D941                    ; $8A806F  22 41 D9 80  MX
L_8A8073:
    REP #$10                        ; $8A8073  C2 10        Mx
L_8A8075:
    SEP #$20                        ; $8A8075  E2 20        MX
L_8A8077:
    LDA #$00                        ; $8A8077  A9 00        mX
L_8A8079:
    STA $000104                     ; $8A8079  8F 04 01 00  mX
L_8A807D:
    LDA $000104                     ; $8A807D  AF 04 01 00  mX
L_8A8081:
    BEQ L_8A807D                    ; $8A8081  F0 FA        mX
L_8A8083:
    REP #$20                        ; $8A8083  C2 20        mX
L_8A8085:
    LDA $001677                     ; $8A8085  AF 77 16 00  MX
L_8A8089:
    INC                             ; $8A8089  1A           MX
L_8A808A:
    STA $001677                     ; $8A808A  8F 77 16 00  MX
L_8A808E:
    JSL L_A9F9D3                    ; $8A808E  22 D3 F9 A9  MX
L_8A8092:
    JSL L_A9FA02                    ; $8A8092  22 02 FA A9  MX
L_8A8096:
    JSR L_8AA539                    ; $8A8096  20 39 A5     MX
L_8A8099:
    JSL L_B1F769                    ; $8A8099  22 69 F7 B1  MX
L_8A809D:
    JSL $00D945                     ; $8A809D  22 45 D9 00  MX
L_8A80A1:
    LDA $001665                     ; $8A80A1  AF 65 16 00  MX
L_8A80A5:
    ASL                             ; $8A80A5  0A           MX
L_8A80A6:
    TAX                             ; $8A80A6  AA           MX
L_8A80A7:
    JSR ($8107,X)                   ; $8A80A7  FC 07 81     MX
L_8A80AA:
    JSL L_BDFE8F                    ; $8A80AA  22 8F FE BD  MX
L_8A80AE:
    ADC $1D52                       ; $8A80AE  6D 52 1D     MX
L_8A80B1:
    TXA                             ; $8A80B1  8A           MX
L_8A80B2:
    EOR $1D52                       ; $8A80B2  4D 52 1D     MX
L_8A80B5:
    STA $1D52                       ; $8A80B5  8D 52 1D     MX
L_8A80B8:
    TYA                             ; $8A80B8  98           MX
L_8A80B9:
    ADC $1D54                       ; $8A80B9  6D 54 1D     MX
L_8A80BC:
    EOR $1D52                       ; $8A80BC  4D 52 1D     MX
L_8A80BF:
    STA $1D54                       ; $8A80BF  8D 54 1D     MX
L_8A80C2:
    ADC $1D58                       ; $8A80C2  6D 58 1D     MX
L_8A80C5:
    STA $1D58                       ; $8A80C5  8D 58 1D     MX
L_8A80C8:
    LDA $1D56                       ; $8A80C8  AD 56 1D     MX
L_8A80CB:
    ADC $1D52                       ; $8A80CB  6D 52 1D     MX
L_8A80CE:
    STA $1D56                       ; $8A80CE  8D 56 1D     MX
L_8A80D1:
    LDA $001665                     ; $8A80D1  AF 65 16 00  MX
L_8A80D5:
    CMP #$0009                      ; $8A80D5  C9 09 00     MX
L_8A80D8:
    BEQ L_8A80DF                    ; $8A80D8  F0 05        MX
L_8A80DA:
    CMP #$000A                      ; $8A80DA  C9 0A 00     MX
L_8A80DD:
    BNE L_8A80EA                    ; $8A80DD  D0 0B        MX
L_8A80DF:
    STZ $0D01                       ; $8A80DF  9C 01 0D     MX
    LDA #$0001                      ; $8A80E2  A9 01 00     MX
    JSR L_8AA83D                    ; $8A80E5  20 3D A8     MX
    BRA L_8A80ED                    ; $8A80E8  80 03        MX
L_8A80EA:
    JSR L_8AA83A                    ; $8A80EA  20 3A A8     MX
L_8A80ED:
    LDA $001665                     ; $8A80ED  AF 65 16 00  MX
L_8A80F1:
    BMI L_8A80F6                    ; $8A80F1  30 03        MX
L_8A80F3:
    JMP L_8A8075                    ; $8A80F3  4C 75 80     MX
L_8A80F6:
    JSL L_A9FBF2                    ; $8A80F6  22 F2 FB A9  MX
L_8A80FA:
    SEP #$20                        ; $8A80FA  E2 20        MX
L_8A80FC:
    LDA #$01                        ; $8A80FC  A9 01        mX
L_8A80FE:
    STA $4200                       ; $8A80FE  8D 00 42     mX
L_8A8101:
    REP #$20                        ; $8A8101  C2 20        mX
L_8A8103:
    PLD                             ; $8A8103  2B           MX
L_8A8104:
    PLB                             ; $8A8104  AB           MX
L_8A8105:
    PLP                             ; $8A8105  28           MX
L_8A8106:
    RTL                             ; $8A8106  6B           Mx
    db $C8,$81,$9F,$83,$43,$84,$BB,$87,$7D,$8B,$A0,$8B,$97,$9D,$BA,$9E ; $8A8107
    db $CD,$9E,$36,$A0,$7F,$A0,$AA,$B7,$75,$B9,$C4,$B9,$7C,$BD,$9F,$BD ; $8A8117
    db $B2,$BD,$C0,$BF,$04,$C0,$7E,$C3,$0F,$C6,$2A,$C6,$29,$85,$83,$85 ; $8A8127
    db $08,$D5,$16,$D6,$56,$D6,$47,$DD,$4C,$DF,$CF,$DF,$8E,$E9,$E8,$EA ; $8A8137
    db $FD,$EA,$4D,$EE,$36,$F0,$7A,$F0,$96,$F0,$70,$F1,$83,$F1,$C0,$F7 ; $8A8147
    db $0F,$F8,$1D,$FA,$D9,$FB,$12,$FC,$8C,$81,$91,$81,$96,$81,$7D,$81 ; $8A8157
    db $82,$81,$87,$81,$B9,$81,$BE,$81,$C3,$81,$9B,$81,$A0,$81,$A5,$81 ; $8A8167
    db $AA,$81,$AF,$81,$B4,$81,$22,$BC,$AC,$AA,$60,$22,$D8,$AE,$AA,$60 ; $8A8177
    db $22,$F3,$AE,$AA,$60                                             ; $8A8187
L_8A818C:
    JSL L_BB8000                    ; $8A818C  22 00 80 BB  MX
L_8A8190:
    RTS                             ; $8A8190  60           MX
L_8A8191:
    JSL L_BB812C                    ; $8A8191  22 2C 81 BB  MX
L_8A8195:
    RTS                             ; $8A8195  60           MX
L_8A8196:
    JSL L_BB81CC                    ; $8A8196  22 CC 81 BB  MX
L_8A819A:
    RTS                             ; $8A819A  60           MX
L_8A819B:
    JSL L_BFCA70                    ; $8A819B  22 70 CA BF  MX
    RTS                             ; $8A819F  60           MX
L_8A81A0:
    JSL L_BFCCCA                    ; $8A81A0  22 CA CC BF  MX
    RTS                             ; $8A81A4  60           MX
L_8A81A5:
    JSL L_BFCD19                    ; $8A81A5  22 19 CD BF  MX
    RTS                             ; $8A81A9  60           MX
L_8A81AA:
    JSL L_BFCE06                    ; $8A81AA  22 06 CE BF  MX
L_8A81AE:
    RTS                             ; $8A81AE  60           MX
L_8A81AF:
    JSL L_BFD014                    ; $8A81AF  22 14 D0 BF  MX
L_8A81B3:
    RTS                             ; $8A81B3  60           MX
L_8A81B4:
    JSL L_BFD037                    ; $8A81B4  22 37 D0 BF  MX
L_8A81B8:
    RTS                             ; $8A81B8  60           MX
L_8A81B9:
    JSL L_BBEF35                    ; $8A81B9  22 35 EF BB  MX
L_8A81BD:
    RTS                             ; $8A81BD  60           MX
L_8A81BE:
    JSL L_BBF188                    ; $8A81BE  22 88 F1 BB  MX
L_8A81C2:
    RTS                             ; $8A81C2  60           MX
L_8A81C3:
    JSL L_BBF2AF                    ; $8A81C3  22 AF F2 BB  MX
L_8A81C7:
    RTS                             ; $8A81C7  60           MX
L_8A81C8:
    SEP #$20                        ; $8A81C8  E2 20        MX
L_8A81CA:
    LDA #$8F                        ; $8A81CA  A9 8F        mX
L_8A81CC:
    STA $2100                       ; $8A81CC  8D 00 21     mX
L_8A81CF:
    REP #$20                        ; $8A81CF  C2 20        mX
L_8A81D1:
    LDA #$8010                      ; $8A81D1  A9 10 80     MX
L_8A81D4:
    STA $00D0                       ; $8A81D4  8D D0 00     MX
L_8A81D7:
    LDA #$0B80                      ; $8A81D7  A9 80 0B     MX
L_8A81DA:
    STA $00D1                       ; $8A81DA  8D D1 00     MX
L_8A81DD:
    LDA #$0000                      ; $8A81DD  A9 00 00     MX
L_8A81E0:
    STA $00D3                       ; $8A81E0  8D D3 00     MX
L_8A81E3:
    LDA #$7F00                      ; $8A81E3  A9 00 7F     MX
L_8A81E6:
    STA $00D4                       ; $8A81E6  8D D4 00     MX
L_8A81E9:
    JSL $29F3F0                     ; $8A81E9  22 F0 F3 29  MX
L_8A81ED:
    SEP #$30                        ; $8A81ED  E2 30        MX
L_8A81EF:
    LDA #$00                        ; $8A81EF  A9 00        mx
L_8A81F1:
    STA $2116                       ; $8A81F1  8D 16 21     mx
L_8A81F4:
    LDA #$00                        ; $8A81F4  A9 00        mx
L_8A81F6:
    STA $2117                       ; $8A81F6  8D 17 21     mx
L_8A81F9:
    LDA #$01                        ; $8A81F9  A9 01        mx
L_8A81FB:
    STA $4300                       ; $8A81FB  8D 00 43     mx
L_8A81FE:
    LDA #$18                        ; $8A81FE  A9 18        mx
L_8A8200:
    STA $4301                       ; $8A8200  8D 01 43     mx
L_8A8203:
    LDA #$00                        ; $8A8203  A9 00        mx
L_8A8205:
    STA $4302                       ; $8A8205  8D 02 43     mx
L_8A8208:
    LDA #$00                        ; $8A8208  A9 00        mx
L_8A820A:
    STA $4303                       ; $8A820A  8D 03 43     mx
L_8A820D:
    LDA #$7F                        ; $8A820D  A9 7F        mx
L_8A820F:
    STA $4304                       ; $8A820F  8D 04 43     mx
L_8A8212:
    LDA #$C0                        ; $8A8212  A9 C0        mx
L_8A8214:
    STA $4305                       ; $8A8214  8D 05 43     mx
L_8A8217:
    LDA #$AA                        ; $8A8217  A9 AA        mx
L_8A8219:
    STA $4306                       ; $8A8219  8D 06 43     mx
L_8A821C:
    LDA #$01                        ; $8A821C  A9 01        mx
L_8A821E:
    STA $420B                       ; $8A821E  8D 0B 42     mx
L_8A8221:
    LDA #$00                        ; $8A8221  A9 00        mx
L_8A8223:
    STA $2116                       ; $8A8223  8D 16 21     mx
L_8A8226:
    LDA #$60                        ; $8A8226  A9 60        mx
L_8A8228:
    STA $2117                       ; $8A8228  8D 17 21     mx
L_8A822B:
    LDA #$01                        ; $8A822B  A9 01        mx
L_8A822D:
    STA $4300                       ; $8A822D  8D 00 43     mx
L_8A8230:
    LDA #$18                        ; $8A8230  A9 18        mx
L_8A8232:
    STA $4301                       ; $8A8232  8D 01 43     mx
L_8A8235:
    LDA #$10                        ; $8A8235  A9 10        mx
L_8A8237:
    STA $4302                       ; $8A8237  8D 02 43     mx
L_8A823A:
    LDA #$DD                        ; $8A823A  A9 DD        mx
L_8A823C:
    STA $4303                       ; $8A823C  8D 03 43     mx
L_8A823F:
    LDA #$13                        ; $8A823F  A9 13        mx
L_8A8241:
    STA $4304                       ; $8A8241  8D 04 43     mx
L_8A8244:
    LDA #$C0                        ; $8A8244  A9 C0        mx
L_8A8246:
    STA $4305                       ; $8A8246  8D 05 43     mx
L_8A8249:
    LDA #$0E                        ; $8A8249  A9 0E        mx
L_8A824B:
    STA $4306                       ; $8A824B  8D 06 43     mx
L_8A824E:
    LDA #$01                        ; $8A824E  A9 01        mx
L_8A8250:
    STA $420B                       ; $8A8250  8D 0B 42     mx
L_8A8253:
    LDA #$AC                        ; $8A8253  A9 AC        mx
L_8A8255:
    STA $00D0                       ; $8A8255  8D D0 00     mx
L_8A8258:
    LDA #$98                        ; $8A8258  A9 98        mx
L_8A825A:
    STA $00D1                       ; $8A825A  8D D1 00     mx
L_8A825D:
    LDA #$0D                        ; $8A825D  A9 0D        mx
L_8A825F:
    STA $00D2                       ; $8A825F  8D D2 00     mx
L_8A8262:
    LDX #$80                        ; $8A8262  A2 80        mx
L_8A8264:
    LDA #$00                        ; $8A8264  A9 00        mx
L_8A8266:
    JSL L_808B53                    ; $8A8266  22 53 8B 80  mx
L_8A826A:
    LDA #$AC                        ; $8A826A  A9 AC        mx
L_8A826C:
    STA $00D0                       ; $8A826C  8D D0 00     mx
L_8A826F:
    LDA #$99                        ; $8A826F  A9 99        mx
L_8A8271:
    STA $00D1                       ; $8A8271  8D D1 00     mx
L_8A8274:
    LDA #$0D                        ; $8A8274  A9 0D        mx
L_8A8276:
    STA $00D2                       ; $8A8276  8D D2 00     mx
L_8A8279:
    LDX #$80                        ; $8A8279  A2 80        mx
L_8A827B:
    LDA #$80                        ; $8A827B  A9 80        mx
L_8A827D:
    JSL L_808B53                    ; $8A827D  22 53 8B 80  mx
L_8A8281:
    LDA #$80                        ; $8A8281  A9 80        mx
L_8A8283:
    STA $2115                       ; $8A8283  8D 15 21     mx
L_8A8286:
    REP #$30                        ; $8A8286  C2 30        mx
L_8A8288:
    LDA #$5800                      ; $8A8288  A9 00 58     MX
L_8A828B:
    STA $2116                       ; $8A828B  8D 16 21     MX
L_8A828E:
    LDA #$AAC4                      ; $8A828E  A9 C4 AA     MX
L_8A8291:
    STA $00A4                       ; $8A8291  8D A4 00     MX
L_8A8294:
    PEA $007F                       ; $8A8294  F4 7F 00     MX
L_8A8297:
    PLB                             ; $8A8297  AB           MX
L_8A8298:
    LDX #$001C                      ; $8A8298  A2 1C 00     MX
L_8A829B:
    LDY #$0000                      ; $8A829B  A0 00 00     MX
L_8A829E:
    LDA ($A4),Y                     ; $8A829E  B1 A4        MX
L_8A82A0:
    STA $002118                     ; $8A82A0  8F 18 21 00  MX
L_8A82A4:
    INY                             ; $8A82A4  C8           MX
L_8A82A5:
    INY                             ; $8A82A5  C8           MX
L_8A82A6:
    CPY #$0040                      ; $8A82A6  C0 40 00     MX
L_8A82A9:
    BNE L_8A829E                    ; $8A82A9  D0 F3        MX
L_8A82AB:
    LDA $0000A4                     ; $8A82AB  AF A4 00 00  MX
L_8A82AF:
    CLC                             ; $8A82AF  18           MX
L_8A82B0:
    ADC #$0040                      ; $8A82B0  69 40 00     MX
L_8A82B3:
    STA $0000A4                     ; $8A82B3  8F A4 00 00  MX
L_8A82B7:
    DEX                             ; $8A82B7  CA           MX
L_8A82B8:
    BNE L_8A829B                    ; $8A82B8  D0 E1        MX
L_8A82BA:
    PLB                             ; $8A82BA  AB           MX
L_8A82BB:
    LDA #$5D60                      ; $8A82BB  A9 60 5D     MX
L_8A82BE:
    STA $2116                       ; $8A82BE  8D 16 21     MX
L_8A82C1:
    LDA #$EBD4                      ; $8A82C1  A9 D4 EB     MX
L_8A82C4:
    STA $00A4                       ; $8A82C4  8D A4 00     MX
L_8A82C7:
    PEA $0013                       ; $8A82C7  F4 13 00     MX
L_8A82CA:
    PLB                             ; $8A82CA  AB           MX
L_8A82CB:
    LDX #$000E                      ; $8A82CB  A2 0E 00     MX
L_8A82CE:
    LDY #$0000                      ; $8A82CE  A0 00 00     MX
L_8A82D1:
    LDA ($A4),Y                     ; $8A82D1  B1 A4        MX
L_8A82D3:
    ORA #$3000                      ; $8A82D3  09 00 30     MX
L_8A82D6:
    STA $002118                     ; $8A82D6  8F 18 21 00  MX
L_8A82DA:
    INY                             ; $8A82DA  C8           MX
L_8A82DB:
    INY                             ; $8A82DB  C8           MX
L_8A82DC:
    CPY #$0040                      ; $8A82DC  C0 40 00     MX
L_8A82DF:
    BNE L_8A82D1                    ; $8A82DF  D0 F0        MX
L_8A82E1:
    LDA $0000A4                     ; $8A82E1  AF A4 00 00  MX
L_8A82E5:
    CLC                             ; $8A82E5  18           MX
L_8A82E6:
    ADC #$0040                      ; $8A82E6  69 40 00     MX
L_8A82E9:
    STA $0000A4                     ; $8A82E9  8F A4 00 00  MX
L_8A82ED:
    DEX                             ; $8A82ED  CA           MX
L_8A82EE:
    BNE L_8A82CE                    ; $8A82EE  D0 DE        MX
L_8A82F0:
    PLB                             ; $8A82F0  AB           MX
L_8A82F1:
    LDA #$10FF                      ; $8A82F1  A9 FF 10     MX
L_8A82F4:
    STA $00D1                       ; $8A82F4  8D D1 00     MX
L_8A82F7:
    LDA #$FF73                      ; $8A82F7  A9 73 FF     MX
L_8A82FA:
    STA $00D0                       ; $8A82FA  8D D0 00     MX
L_8A82FD:
    JSL $00E02F                     ; $8A82FD  22 2F E0 00  MX
L_8A8301:
    LDA #$16FE                      ; $8A8301  A9 FE 16     MX
L_8A8304:
    STA $00D1                       ; $8A8304  8D D1 00     MX
L_8A8307:
    LDA #$FE8E                      ; $8A8307  A9 8E FE     MX
L_8A830A:
    STA $00D0                       ; $8A830A  8D D0 00     MX
L_8A830D:
    JSL $00E02F                     ; $8A830D  22 2F E0 00  MX
L_8A8311:
    SEP #$20                        ; $8A8311  E2 20        MX
L_8A8313:
    LDA #$FF                        ; $8A8313  A9 FF        mX
L_8A8315:
    STA $210E                       ; $8A8315  8D 0E 21     mX
L_8A8318:
    STA $210E                       ; $8A8318  8D 0E 21     mX
L_8A831B:
    LDA #$00                        ; $8A831B  A9 00        mX
L_8A831D:
    STA $210D                       ; $8A831D  8D 0D 21     mX
L_8A8320:
    STA $210D                       ; $8A8320  8D 0D 21     mX
L_8A8323:
    LDA #$FF                        ; $8A8323  A9 FF        mX
L_8A8325:
    STA $2110                       ; $8A8325  8D 10 21     mX
L_8A8328:
    STA $2110                       ; $8A8328  8D 10 21     mX
L_8A832B:
    LDA #$00                        ; $8A832B  A9 00        mX
L_8A832D:
    STA $210F                       ; $8A832D  8D 0F 21     mX
L_8A8330:
    STA $210F                       ; $8A8330  8D 0F 21     mX
L_8A8333:
    LDA #$11                        ; $8A8333  A9 11        mX
L_8A8335:
    STA $212C                       ; $8A8335  8D 2C 21     mX
L_8A8338:
    LDA #$03                        ; $8A8338  A9 03        mX
L_8A833A:
    STA $2105                       ; $8A833A  8D 05 21     mX
L_8A833D:
    LDA #$58                        ; $8A833D  A9 58        mX
L_8A833F:
    STA $2107                       ; $8A833F  8D 07 21     mX
L_8A8342:
    LDA #$5C                        ; $8A8342  A9 5C        mX
L_8A8344:
    STA $2108                       ; $8A8344  8D 08 21     mX
L_8A8347:
    LDA #$60                        ; $8A8347  A9 60        mX
L_8A8349:
    STA $210B                       ; $8A8349  8D 0B 21     mX
L_8A834C:
    LDA #$03                        ; $8A834C  A9 03        mX
L_8A834E:
    STA $2101                       ; $8A834E  8D 01 21     mX
L_8A8351:
    STZ $00B2                       ; $8A8351  9C B2 00     mX
L_8A8354:
    REP #$20                        ; $8A8354  C2 20        mX
L_8A8356:
    LDA #$02EE                      ; $8A8356  A9 EE 02     MX
L_8A8359:
    STA $00A6                       ; $8A8359  8D A6 00     MX
L_8A835C:
    LDA #$8509                      ; $8A835C  A9 09 85     MX
L_8A835F:
    STA $001673                     ; $8A835F  8F 73 16 00  MX
L_8A8363:
    LDA #$851B                      ; $8A8363  A9 1B 85     MX
L_8A8366:
    STA $001675                     ; $8A8366  8F 75 16 00  MX
L_8A836A:
    LDA #$0000                      ; $8A836A  A9 00 00     MX
L_8A836D:
    STA $0CB5                       ; $8A836D  8D B5 0C     MX
L_8A8370:
    STA $0CB7                       ; $8A8370  8D B7 0C     MX
L_8A8373:
    STA $0CB9                       ; $8A8373  8D B9 0C     MX
L_8A8376:
    STA $0CBB                       ; $8A8376  8D BB 0C     MX
L_8A8379:
    STA $0CBD                       ; $8A8379  8D BD 0C     MX
L_8A837C:
    STA $0CBF                       ; $8A837C  8D BF 0C     MX
L_8A837F:
    STA $1C5D                       ; $8A837F  8D 5D 1C     MX
L_8A8382:
    STA $1690                       ; $8A8382  8D 90 16     MX
L_8A8385:
    STA $169A                       ; $8A8385  8D 9A 16     MX
L_8A8388:
    LDA #$FFFF                      ; $8A8388  A9 FF FF     MX
L_8A838B:
    STA $1CD9                       ; $8A838B  8D D9 1C     MX
L_8A838E:
    STA $1CDB                       ; $8A838E  8D DB 1C     MX
L_8A8391:
    STA $1CDD                       ; $8A8391  8D DD 1C     MX
L_8A8394:
    STA $1CDF                       ; $8A8394  8D DF 1C     MX
L_8A8397:
    LDA #$0001                      ; $8A8397  A9 01 00     MX
L_8A839A:
    STA $001665                     ; $8A839A  8F 65 16 00  MX
L_8A839E:
    RTS                             ; $8A839E  60           MX
L_8A839F:
    SEP #$20                        ; $8A839F  E2 20        MX
L_8A83A1:
    LDA $00B2                       ; $8A83A1  AD B2 00     mX
L_8A83A4:
    CMP #$10                        ; $8A83A4  C9 10        mX
L_8A83A6:
    BEQ L_8A83AE                    ; $8A83A6  F0 06        mX
L_8A83A8:
    STA $2100                       ; $8A83A8  8D 00 21     mX
L_8A83AB:
    INC $00B2                       ; $8A83AB  EE B2 00     mX
L_8A83AE:
    REP #$20                        ; $8A83AE  C2 20        mX
L_8A83B0:
    LDA $00B2                       ; $8A83B0  AD B2 00     MX
L_8A83B3:
    AND #$00FF                      ; $8A83B3  29 FF 00     MX
L_8A83B6:
    CMP #$0010                      ; $8A83B6  C9 10 00     MX
L_8A83B9:
    BNE L_8A840F                    ; $8A83B9  D0 54        MX
L_8A83BB:
    LDA $1669                       ; $8A83BB  AD 69 16     MX
L_8A83BE:
    BIT #$1000                      ; $8A83BE  89 00 10     MX
L_8A83C1:
    BEQ L_8A83C8                    ; $8A83C1  F0 05        MX
L_8A83C3:
    LDA #$0001                      ; $8A83C3  A9 01 00     MX
L_8A83C6:
    BRA L_8A8429                    ; $8A83C6  80 61        MX
L_8A83C8:
    LDA $166B                       ; $8A83C8  AD 6B 16     MX
L_8A83CB:
    BIT #$1000                      ; $8A83CB  89 00 10     MX
L_8A83CE:
    BEQ L_8A83D5                    ; $8A83CE  F0 05        MX
    LDA #$0002                      ; $8A83D0  A9 02 00     MX
    BRA L_8A8429                    ; $8A83D3  80 54        MX
L_8A83D5:
    LDA $166D                       ; $8A83D5  AD 6D 16     MX
L_8A83D8:
    BIT #$1000                      ; $8A83D8  89 00 10     MX
L_8A83DB:
    BEQ L_8A83E2                    ; $8A83DB  F0 05        MX
    LDA #$0004                      ; $8A83DD  A9 04 00     MX
    BRA L_8A8429                    ; $8A83E0  80 47        MX
L_8A83E2:
    LDA $166F                       ; $8A83E2  AD 6F 16     MX
L_8A83E5:
    BIT #$1000                      ; $8A83E5  89 00 10     MX
L_8A83E8:
    BEQ L_8A83EF                    ; $8A83E8  F0 05        MX
    LDA #$0008                      ; $8A83EA  A9 08 00     MX
    BRA L_8A8429                    ; $8A83ED  80 3A        MX
L_8A83EF:
    LDA $1669                       ; $8A83EF  AD 69 16     MX
L_8A83F2:
    ORA $166B                       ; $8A83F2  0D 6B 16     MX
L_8A83F5:
    ORA $166D                       ; $8A83F5  0D 6D 16     MX
L_8A83F8:
    ORA $166F                       ; $8A83F8  0D 6F 16     MX
L_8A83FB:
    BIT #$C0C0                      ; $8A83FB  89 C0 C0     MX
L_8A83FE:
    BEQ L_8A840F                    ; $8A83FE  F0 0F        MX
    PHA                             ; $8A8400  48           MX
    PHX                             ; $8A8401  DA           MX
    PHY                             ; $8A8402  5A           MX
    LDA #$0045                      ; $8A8403  A9 45 00     MX
    JSL L_BDFE18                    ; $8A8406  22 18 FE BD  MX
    PLY                             ; $8A840A  7A           MX
    PLX                             ; $8A840B  FA           MX
    PLA                             ; $8A840C  68           MX
    BRA L_8A8414                    ; $8A840D  80 05        MX
L_8A840F:
    DEC $00A6                       ; $8A840F  CE A6 00     MX
L_8A8412:
    BPL L_8A8422                    ; $8A8412  10 0E        MX
L_8A8414:
    LDA #$0000                      ; $8A8414  A9 00 00     MX
    STA $001690                     ; $8A8417  8F 90 16 00  MX
    LDA #$0002                      ; $8A841B  A9 02 00     MX
    STA $001665                     ; $8A841E  8F 65 16 00  MX
L_8A8422:
    JSR L_8A84CC                    ; $8A8422  20 CC 84     MX
L_8A8425:
    JSR L_8A875F                    ; $8A8425  20 5F 87     MX
L_8A8428:
    RTS                             ; $8A8428  60           MX
L_8A8429:
    STA $001690                     ; $8A8429  8F 90 16 00  MX
L_8A842D:
    PHA                             ; $8A842D  48           MX
L_8A842E:
    PHX                             ; $8A842E  DA           MX
L_8A842F:
    PHY                             ; $8A842F  5A           MX
L_8A8430:
    LDA #$0040                      ; $8A8430  A9 40 00     MX
L_8A8433:
    JSL L_BDFE18                    ; $8A8433  22 18 FE BD  MX
L_8A8437:
    PLY                             ; $8A8437  7A           MX
L_8A8438:
    PLX                             ; $8A8438  FA           MX
L_8A8439:
    PLA                             ; $8A8439  68           MX
L_8A843A:
    LDA #$0016                      ; $8A843A  A9 16 00     MX
L_8A843D:
    STA $001665                     ; $8A843D  8F 65 16 00  MX
L_8A8441:
    BRA L_8A83EF                    ; $8A8441  80 AC        MX
L_8A8443:
    SEP #$20                        ; $8A8443  E2 20        MX
L_8A8445:
    DEC $00B2                       ; $8A8445  CE B2 00     mX
L_8A8448:
    LDA $00B2                       ; $8A8448  AD B2 00     mX
L_8A844B:
    CMP #$FF                        ; $8A844B  C9 FF        mX
L_8A844D:
    BNE L_8A84A6                    ; $8A844D  D0 57        mX
L_8A844F:
    REP #$20                        ; $8A844F  C2 20        mX
L_8A8451:
    LDA $001690                     ; $8A8451  AF 90 16 00  MX
L_8A8455:
    BNE L_8A8466                    ; $8A8455  D0 0F        MX
    STZ $1C5D                       ; $8A8457  9C 5D 1C     MX
    LDA #$001B                      ; $8A845A  A9 1B 00     MX
    STA $001665                     ; $8A845D  8F 65 16 00  MX
    LDA #$0000                      ; $8A8461  A9 00 00     MX
    BRA L_8A84A6                    ; $8A8464  80 40        MX
L_8A8466:
    LDA $1C5D                       ; $8A8466  AD 5D 1C     MX
L_8A8469:
    BIT #$0004                      ; $8A8469  89 04 00     MX
L_8A846C:
    BEQ L_8A847B                    ; $8A846C  F0 0D        MX
    LDX #$0002                      ; $8A846E  A2 02 00     MX
    STX $1C5D                       ; $8A8471  8E 5D 1C     MX
    CMP #$0005                      ; $8A8474  C9 05 00     MX
    BNE L_8A848B                    ; $8A8477  D0 12        MX
    BRA L_8A8486                    ; $8A8479  80 0B        MX
L_8A847B:
    CMP #$0002                      ; $8A847B  C9 02 00     MX
L_8A847E:
    BNE L_8A848B                    ; $8A847E  D0 0B        MX
    LDA #$0000                      ; $8A8480  A9 00 00     MX
    STA $1C5D                       ; $8A8483  8D 5D 1C     MX
L_8A8486:
    LDA #$002F                      ; $8A8486  A9 2F 00     MX
    BRA L_8A848E                    ; $8A8489  80 03        MX
L_8A848B:
    LDA #$001E                      ; $8A848B  A9 1E 00     MX
L_8A848E:
    STA $001665                     ; $8A848E  8F 65 16 00  MX
L_8A8492:
    LDA $1C5D                       ; $8A8492  AD 5D 1C     MX
L_8A8495:
    CMP #$0002                      ; $8A8495  C9 02 00     MX
L_8A8498:
    BEQ L_8A84A3                    ; $8A8498  F0 09        MX
L_8A849A:
    LDA $1690                       ; $8A849A  AD 90 16     MX
L_8A849D:
    AND #$0003                      ; $8A849D  29 03 00     MX
L_8A84A0:
    STA $1690                       ; $8A84A0  8D 90 16     MX
L_8A84A3:
    LDA #$0000                      ; $8A84A3  A9 00 00     MX
L_8A84A6:
    SEP #$20                        ; $8A84A6  E2 20        mX
L_8A84A8:
    STA $2100                       ; $8A84A8  8D 00 21     mX
L_8A84AB:
    REP #$20                        ; $8A84AB  C2 20        mX
L_8A84AD:
    CMP #$0000                      ; $8A84AD  C9 00 00     MX
L_8A84B0:
    BNE L_8A84C5                    ; $8A84B0  D0 13        MX
L_8A84B2:
    SEP #$20                        ; $8A84B2  E2 20        MX
L_8A84B4:
    STA $420C                       ; $8A84B4  8D 0C 42     mX
L_8A84B7:
    STA $2123                       ; $8A84B7  8D 23 21     mX
L_8A84BA:
    STA $2125                       ; $8A84BA  8D 25 21     mX
L_8A84BD:
    STA $212E                       ; $8A84BD  8D 2E 21     mX
L_8A84C0:
    STA $212F                       ; $8A84C0  8D 2F 21     mX
L_8A84C3:
    REP #$20                        ; $8A84C3  C2 20        mX
L_8A84C5:
    JSR L_8A84CC                    ; $8A84C5  20 CC 84     MX
L_8A84C8:
    JSR L_8A86E1                    ; $8A84C8  20 E1 86     MX
L_8A84CB:
    RTS                             ; $8A84CB  60           MX
L_8A84CC:
    LDA $001677                     ; $8A84CC  AF 77 16 00  MX
L_8A84D0:
    AND #$0001                      ; $8A84D0  29 01 00     MX
L_8A84D3:
    BNE L_8A8508                    ; $8A84D3  D0 33        MX
L_8A84D5:
    LDA $001673                     ; $8A84D5  AF 73 16 00  MX
L_8A84D9:
    INC                             ; $8A84D9  1A           MX
L_8A84DA:
    INC                             ; $8A84DA  1A           MX
L_8A84DB:
    STA $001673                     ; $8A84DB  8F 73 16 00  MX
L_8A84DF:
    CMP #$8513                      ; $8A84DF  C9 13 85     MX
L_8A84E2:
    BNE L_8A84EB                    ; $8A84E2  D0 07        MX
L_8A84E4:
    LDA #$8509                      ; $8A84E4  A9 09 85     MX
L_8A84E7:
    STA $001673                     ; $8A84E7  8F 73 16 00  MX
L_8A84EB:
    LDA $001675                     ; $8A84EB  AF 75 16 00  MX
L_8A84EF:
    INC                             ; $8A84EF  1A           MX
L_8A84F0:
    INC                             ; $8A84F0  1A           MX
L_8A84F1:
    STA $001675                     ; $8A84F1  8F 75 16 00  MX
L_8A84F5:
    CMP #$8523                      ; $8A84F5  C9 23 85     MX
L_8A84F8:
    BNE L_8A8501                    ; $8A84F8  D0 07        MX
L_8A84FA:
    LDA #$851B                      ; $8A84FA  A9 1B 85     MX
L_8A84FD:
    STA $001675                     ; $8A84FD  8F 75 16 00  MX
L_8A8501:
    LDA #$0001                      ; $8A8501  A9 01 00     MX
L_8A8504:
    STA $001667                     ; $8A8504  8F 67 16 00  MX
L_8A8508:
    RTS                             ; $8A8508  60           MX
L_8A8509:
    PHY                             ; $8A8509  5A           MX
    RTL                             ; $8A850A  6B           MX
    db $73,$4E,$EF,$3D,$AD,$35,$6B,$2D,$5A,$6B,$73,$4E,$EF,$3D,$AD,$35 ; $8A850B
    db $8C,$31,$29,$25,$E7,$1C,$C6,$18,$8C,$31,$29,$25,$E7,$1C         ; $8A851B
L_8A8529:
    LDA #$0000                      ; $8A8529  A9 00 00     MX
L_8A852C:
    STA $4372                       ; $8A852C  8D 72 43     MX
L_8A852F:
    LDA #$00FF                      ; $8A852F  A9 FF 00     MX
L_8A8532:
    STA $2126                       ; $8A8532  8D 26 21     MX
L_8A8535:
    SEP #$20                        ; $8A8535  E2 20        MX
L_8A8537:
    LDA #$7F                        ; $8A8537  A9 7F        mX
L_8A8539:
    STA $4374                       ; $8A8539  8D 74 43     mX
L_8A853C:
    LDA #$26                        ; $8A853C  A9 26        mX
L_8A853E:
    STA $4371                       ; $8A853E  8D 71 43     mX
L_8A8541:
    LDA #$01                        ; $8A8541  A9 01        mX
L_8A8543:
    STA $4370                       ; $8A8543  8D 70 43     mX
L_8A8546:
    LDA #$80                        ; $8A8546  A9 80        mX
L_8A8548:
    STA $420C                       ; $8A8548  8D 0C 42     mX
L_8A854B:
    LDA #$32                        ; $8A854B  A9 32        mX
L_8A854D:
    STA $2123                       ; $8A854D  8D 23 21     mX
L_8A8550:
    LDA #$00                        ; $8A8550  A9 00        mX
L_8A8552:
    STA $2124                       ; $8A8552  8D 24 21     mX
L_8A8555:
    LDA #$33                        ; $8A8555  A9 33        mX
L_8A8557:
    STA $2125                       ; $8A8557  8D 25 21     mX
L_8A855A:
    LDA #$13                        ; $8A855A  A9 13        mX
L_8A855C:
    STA $212C                       ; $8A855C  8D 2C 21     mX
L_8A855F:
    STA $212E                       ; $8A855F  8D 2E 21     mX
L_8A8562:
    STA $212F                       ; $8A8562  8D 2F 21     mX
L_8A8565:
    REP #$20                        ; $8A8565  C2 20        mX
L_8A8567:
    LDX #$0010                      ; $8A8567  A2 10 00     MX
L_8A856A:
    LDA $10FF91,X                   ; $8A856A  BF 91 FF 10  MX
L_8A856E:
    STA $7F0000,X                   ; $8A856E  9F 00 00 7F  MX
L_8A8572:
    DEX                             ; $8A8572  CA           MX
L_8A8573:
    DEX                             ; $8A8573  CA           MX
L_8A8574:
    BPL L_8A856A                    ; $8A8574  10 F4        MX
L_8A8576:
    LDA #$0017                      ; $8A8576  A9 17 00     MX
L_8A8579:
    STA $001665                     ; $8A8579  8F 65 16 00  MX
L_8A857D:
    LDA #$FFBF                      ; $8A857D  A9 BF FF     MX
L_8A8580:
    STA $1CD3                       ; $8A8580  8D D3 1C     MX
L_8A8583:
    LDA $1CD3                       ; $8A8583  AD D3 1C     MX
L_8A8586:
    SEP #$20                        ; $8A8586  E2 20        MX
L_8A8588:
    STA $002110                     ; $8A8588  8F 10 21 00  mX
L_8A858C:
    XBA                             ; $8A858C  EB           mX
L_8A858D:
    STA $002110                     ; $8A858D  8F 10 21 00  mX
L_8A8591:
    LDA $00B2                       ; $8A8591  AD B2 00     mX
L_8A8594:
    CMP #$10                        ; $8A8594  C9 10        mX
L_8A8596:
    BEQ L_8A859E                    ; $8A8596  F0 06        mX
    STA $2100                       ; $8A8598  8D 00 21     mX
    INC $00B2                       ; $8A859B  EE B2 00     mX
L_8A859E:
    REP #$20                        ; $8A859E  C2 20        mX
L_8A85A0:
    JSR L_8A86A6                    ; $8A85A0  20 A6 86     MX
L_8A85A3:
    LDA $1669                       ; $8A85A3  AD 69 16     MX
L_8A85A6:
    BIT #$1000                      ; $8A85A6  89 00 10     MX
L_8A85A9:
    BEQ L_8A85B1                    ; $8A85A9  F0 06        MX
L_8A85AB:
    LDA #$0001                      ; $8A85AB  A9 01 00     MX
L_8A85AE:
    JMP L_8A8687                    ; $8A85AE  4C 87 86     MX
L_8A85B1:
    LDA $166B                       ; $8A85B1  AD 6B 16     MX
L_8A85B4:
    BIT #$1000                      ; $8A85B4  89 00 10     MX
L_8A85B7:
    BEQ L_8A85BF                    ; $8A85B7  F0 06        MX
    LDA #$0002                      ; $8A85B9  A9 02 00     MX
    JMP L_8A8687                    ; $8A85BC  4C 87 86     MX
L_8A85BF:
    LDA $166D                       ; $8A85BF  AD 6D 16     MX
L_8A85C2:
    BIT #$1000                      ; $8A85C2  89 00 10     MX
L_8A85C5:
    BEQ L_8A85CD                    ; $8A85C5  F0 06        MX
    LDA #$0004                      ; $8A85C7  A9 04 00     MX
    JMP L_8A8687                    ; $8A85CA  4C 87 86     MX
L_8A85CD:
    LDA $166F                       ; $8A85CD  AD 6F 16     MX
L_8A85D0:
    BIT #$1000                      ; $8A85D0  89 00 10     MX
L_8A85D3:
    BEQ L_8A85DB                    ; $8A85D3  F0 06        MX
    LDA #$0008                      ; $8A85D5  A9 08 00     MX
    JMP L_8A8687                    ; $8A85D8  4C 87 86     MX
L_8A85DB:
    LDA #$0004                      ; $8A85DB  A9 04 00     MX
L_8A85DE:
    TRB $1C5D                       ; $8A85DE  1C 5D 1C     MX
L_8A85E1:
    LDA $1669                       ; $8A85E1  AD 69 16     MX
L_8A85E4:
    ORA $166B                       ; $8A85E4  0D 6B 16     MX
L_8A85E7:
    ORA $166D                       ; $8A85E7  0D 6D 16     MX
L_8A85EA:
    ORA $166F                       ; $8A85EA  0D 6F 16     MX
L_8A85ED:
    BIT #$2400                      ; $8A85ED  89 00 24     MX
L_8A85F0:
    BNE L_8A8609                    ; $8A85F0  D0 17        MX
L_8A85F2:
    BIT #$0800                      ; $8A85F2  89 00 08     MX
L_8A85F5:
    BEQ L_8A8626                    ; $8A85F5  F0 2F        MX
    PHA                             ; $8A85F7  48           MX
    PHX                             ; $8A85F8  DA           MX
    PHY                             ; $8A85F9  5A           MX
    LDA #$0041                      ; $8A85FA  A9 41 00     MX
    JSL L_BDFE18                    ; $8A85FD  22 18 FE BD  MX
    PLY                             ; $8A8601  7A           MX
    PLX                             ; $8A8602  FA           MX
    PLA                             ; $8A8603  68           MX
    DEC $1C5D                       ; $8A8604  CE 5D 1C     MX
    BRA L_8A863B                    ; $8A8607  80 32        MX
L_8A8609:
    PHA                             ; $8A8609  48           MX
    PHX                             ; $8A860A  DA           MX
    PHY                             ; $8A860B  5A           MX
    LDA #$0041                      ; $8A860C  A9 41 00     MX
    JSL L_BDFE18                    ; $8A860F  22 18 FE BD  MX
    PLY                             ; $8A8613  7A           MX
    PLX                             ; $8A8614  FA           MX
    PLA                             ; $8A8615  68           MX
    INC $1C5D                       ; $8A8616  EE 5D 1C     MX
    LDA $1C5D                       ; $8A8619  AD 5D 1C     MX
    CMP #$0003                      ; $8A861C  C9 03 00     MX
    BNE L_8A863B                    ; $8A861F  D0 1A        MX
    STZ $1C5D                       ; $8A8621  9C 5D 1C     MX
    BRA L_8A863B                    ; $8A8624  80 15        MX
L_8A8626:
    DEC $00A6                       ; $8A8626  CE A6 00     MX
L_8A8629:
    BPL L_8A8641                    ; $8A8629  10 16        MX
    LDA #$0000                      ; $8A862B  A9 00 00     MX
    STA $001690                     ; $8A862E  8F 90 16 00  MX
    LDA #$0002                      ; $8A8632  A9 02 00     MX
    STA $001665                     ; $8A8635  8F 65 16 00  MX
    BRA L_8A8680                    ; $8A8639  80 45        MX
L_8A863B:
    LDA #$02EE                      ; $8A863B  A9 EE 02     MX
    STA $00A6                       ; $8A863E  8D A6 00     MX
L_8A8641:
    LDA $1D3D                       ; $8A8641  AD 3D 1D     MX
L_8A8644:
    AND #$00FF                      ; $8A8644  29 FF 00     MX
L_8A8647:
    CMP #$0040                      ; $8A8647  C9 40 00     MX
L_8A864A:
    BNE L_8A866F                    ; $8A864A  D0 23        MX
    LDA $1C5D                       ; $8A864C  AD 5D 1C     MX
    BMI L_8A865B                    ; $8A864F  30 0A        MX
    CMP #$0002                      ; $8A8651  C9 02 00     MX
    BNE L_8A8661                    ; $8A8654  D0 0B        MX
    STZ $1C5D                       ; $8A8656  9C 5D 1C     MX
    BRA L_8A8661                    ; $8A8659  80 06        MX
L_8A865B:
    LDA #$0001                      ; $8A865B  A9 01 00     MX
    STA $1C5D                       ; $8A865E  8D 5D 1C     MX
L_8A8661:
    LDA #$0004                      ; $8A8661  A9 04 00     MX
    TSB $1C5D                       ; $8A8664  0C 5D 1C     MX
    LDA #$FFF7                      ; $8A8667  A9 F7 FF     MX
    STA $1CD3                       ; $8A866A  8D D3 1C     MX
    BRA L_8A8680                    ; $8A866D  80 11        MX
L_8A866F:
    LDA $1C5D                       ; $8A866F  AD 5D 1C     MX
L_8A8672:
    BPL L_8A867A                    ; $8A8672  10 06        MX
    LDA #$0002                      ; $8A8674  A9 02 00     MX
    STA $1C5D                       ; $8A8677  8D 5D 1C     MX
L_8A867A:
    LDA #$FFBF                      ; $8A867A  A9 BF FF     MX
L_8A867D:
    STA $1CD3                       ; $8A867D  8D D3 1C     MX
L_8A8680:
    JSR L_8A84CC                    ; $8A8680  20 CC 84     MX
L_8A8683:
    JSR L_8A86E1                    ; $8A8683  20 E1 86     MX
L_8A8686:
    RTS                             ; $8A8686  60           MX
L_8A8687:
    ORA $001690                     ; $8A8687  0F 90 16 00  MX
L_8A868B:
    STA $001690                     ; $8A868B  8F 90 16 00  MX
L_8A868F:
    PHA                             ; $8A868F  48           MX
L_8A8690:
    PHX                             ; $8A8690  DA           MX
L_8A8691:
    PHY                             ; $8A8691  5A           MX
L_8A8692:
    LDA #$0042                      ; $8A8692  A9 42 00     MX
L_8A8695:
    JSL L_BDFE18                    ; $8A8695  22 18 FE BD  MX
L_8A8699:
    PLY                             ; $8A8699  7A           MX
L_8A869A:
    PLX                             ; $8A869A  FA           MX
L_8A869B:
    PLA                             ; $8A869B  68           MX
L_8A869C:
    LDA #$0002                      ; $8A869C  A9 02 00     MX
L_8A869F:
    STA $001665                     ; $8A869F  8F 65 16 00  MX
L_8A86A3:
    JMP L_8A85DB                    ; $8A86A3  4C DB 85     MX
L_8A86A6:
    SEP #$20                        ; $8A86A6  E2 20        MX
L_8A86A8:
    LDA $7F0006                     ; $8A86A8  AF 06 00 7F  mX
L_8A86AC:
    CMP #$01                        ; $8A86AC  C9 01        mX
L_8A86AE:
    BEQ L_8A86C2                    ; $8A86AE  F0 12        mX
L_8A86B0:
    DEC                             ; $8A86B0  3A           mX
L_8A86B1:
    DEC                             ; $8A86B1  3A           mX
L_8A86B2:
    STA $7F0006                     ; $8A86B2  8F 06 00 7F  mX
L_8A86B6:
    LDA $7F0009                     ; $8A86B6  AF 09 00 7F  mX
L_8A86BA:
    INC                             ; $8A86BA  1A           mX
L_8A86BB:
    INC                             ; $8A86BB  1A           mX
L_8A86BC:
    INC                             ; $8A86BC  1A           mX
L_8A86BD:
    INC                             ; $8A86BD  1A           mX
L_8A86BE:
    STA $7F0009                     ; $8A86BE  8F 09 00 7F  mX
L_8A86C2:
    LDA $7F000A                     ; $8A86C2  AF 0A 00 7F  mX
L_8A86C6:
    CMP #$40                        ; $8A86C6  C9 40        mX
L_8A86C8:
    BEQ L_8A86DE                    ; $8A86C8  F0 14        mX
L_8A86CA:
    DEC                             ; $8A86CA  3A           mX
L_8A86CB:
    DEC                             ; $8A86CB  3A           mX
L_8A86CC:
    DEC                             ; $8A86CC  3A           mX
L_8A86CD:
    DEC                             ; $8A86CD  3A           mX
L_8A86CE:
    STA $7F000A                     ; $8A86CE  8F 0A 00 7F  mX
L_8A86D2:
    LDA $7F000B                     ; $8A86D2  AF 0B 00 7F  mX
L_8A86D6:
    INC                             ; $8A86D6  1A           mX
L_8A86D7:
    INC                             ; $8A86D7  1A           mX
L_8A86D8:
    INC                             ; $8A86D8  1A           mX
L_8A86D9:
    INC                             ; $8A86D9  1A           mX
L_8A86DA:
    STA $7F000B                     ; $8A86DA  8F 0B 00 7F  mX
L_8A86DE:
    REP #$20                        ; $8A86DE  C2 20        mX
L_8A86E0:
    RTS                             ; $8A86E0  60           MX
L_8A86E1:
    LDA #$0044                      ; $8A86E1  A9 44 00     MX
L_8A86E4:
    STA $00EE                       ; $8A86E4  8D EE 00     MX
L_8A86E7:
    LDA $1C5D                       ; $8A86E7  AD 5D 1C     MX
L_8A86EA:
    ASL                             ; $8A86EA  0A           MX
L_8A86EB:
    TAX                             ; $8A86EB  AA           MX
L_8A86EC:
    LDA $0D8000,X                   ; $8A86EC  BF 00 80 0D  MX
L_8A86F0:
    CLC                             ; $8A86F0  18           MX
L_8A86F1:
    ADC #$00A6                      ; $8A86F1  69 A6 00     MX
L_8A86F4:
    STA $00F0                       ; $8A86F4  8D F0 00     MX
L_8A86F7:
    LDA #$0130                      ; $8A86F7  A9 30 01     MX
L_8A86FA:
    STA $00F2                       ; $8A86FA  8D F2 00     MX
L_8A86FD:
    SEP #$20                        ; $8A86FD  E2 20        MX
L_8A86FF:
    LDA #$0A                        ; $8A86FF  A9 0A        mX
L_8A8701:
    STA $002A                       ; $8A8701  8D 2A 00     mX
L_8A8704:
    REP #$20                        ; $8A8704  C2 20        mX
L_8A8706:
    JSL $2BE007                     ; $8A8706  22 07 E0 2B  MX
L_8A870A:
    LDA $00EE                       ; $8A870A  AD EE 00     MX
L_8A870D:
    CLC                             ; $8A870D  18           MX
L_8A870E:
    ADC #$000C                      ; $8A870E  69 0C 00     MX
L_8A8711:
    STA $00EE                       ; $8A8711  8D EE 00     MX
L_8A8714:
    JSL $2BE007                     ; $8A8714  22 07 E0 2B  MX
L_8A8718:
    LDA $00EE                       ; $8A8718  AD EE 00     MX
L_8A871B:
    CLC                             ; $8A871B  18           MX
L_8A871C:
    ADC #$000C                      ; $8A871C  69 0C 00     MX
L_8A871F:
    STA $00EE                       ; $8A871F  8D EE 00     MX
L_8A8722:
    JSL $2BE007                     ; $8A8722  22 07 E0 2B  MX
L_8A8726:
    LDA $00EE                       ; $8A8726  AD EE 00     MX
L_8A8729:
    CLC                             ; $8A8729  18           MX
L_8A872A:
    ADC #$000C                      ; $8A872A  69 0C 00     MX
L_8A872D:
    STA $00EE                       ; $8A872D  8D EE 00     MX
L_8A8730:
    JSL $2BE007                     ; $8A8730  22 07 E0 2B  MX
L_8A8734:
    LDA $00EE                       ; $8A8734  AD EE 00     MX
L_8A8737:
    CLC                             ; $8A8737  18           MX
L_8A8738:
    ADC #$000C                      ; $8A8738  69 0C 00     MX
L_8A873B:
    STA $00EE                       ; $8A873B  8D EE 00     MX
L_8A873E:
    JSL $2BE007                     ; $8A873E  22 07 E0 2B  MX
L_8A8742:
    LDA $00EE                       ; $8A8742  AD EE 00     MX
L_8A8745:
    CLC                             ; $8A8745  18           MX
L_8A8746:
    ADC #$000C                      ; $8A8746  69 0C 00     MX
L_8A8749:
    STA $00EE                       ; $8A8749  8D EE 00     MX
L_8A874C:
    JSL $2BE007                     ; $8A874C  22 07 E0 2B  MX
L_8A8750:
    LDA $00EE                       ; $8A8750  AD EE 00     MX
L_8A8753:
    CLC                             ; $8A8753  18           MX
L_8A8754:
    ADC #$000C                      ; $8A8754  69 0C 00     MX
L_8A8757:
    STA $00EE                       ; $8A8757  8D EE 00     MX
L_8A875A:
    JSL $2BE007                     ; $8A875A  22 07 E0 2B  MX
L_8A875E:
    RTS                             ; $8A875E  60           MX
L_8A875F:
    LDA $1677                       ; $8A875F  AD 77 16     MX
L_8A8762:
    AND #$0020                      ; $8A8762  29 20 00     MX
L_8A8765:
    BEQ L_8A8768                    ; $8A8765  F0 01        MX
L_8A8767:
    RTS                             ; $8A8767  60           MX
L_8A8768:
    LDA #$0050                      ; $8A8768  A9 50 00     MX
L_8A876B:
    STA $00EE                       ; $8A876B  8D EE 00     MX
L_8A876E:
    LDA #$00BA                      ; $8A876E  A9 BA 00     MX
L_8A8771:
    STA $00F0                       ; $8A8771  8D F0 00     MX
L_8A8774:
    LDX #$0000                      ; $8A8774  A2 00 00     MX
L_8A8777:
    LDA $0A87B1,X                   ; $8A8777  BF B1 87 0A  MX
L_8A877B:
    AND #$00FF                      ; $8A877B  29 FF 00     MX
L_8A877E:
    ASL                             ; $8A877E  0A           MX
L_8A877F:
    TXY                             ; $8A877F  9B           MX
L_8A8780:
    TAX                             ; $8A8780  AA           MX
L_8A8781:
    LDA $0BFFBB,X                   ; $8A8781  BF BB FF 0B  MX
L_8A8785:
    STA $00F2                       ; $8A8785  8D F2 00     MX
L_8A8788:
    SEP #$20                        ; $8A8788  E2 20        MX
L_8A878A:
    LDA #$3C                        ; $8A878A  A9 3C        mX
L_8A878C:
    STA $002A                       ; $8A878C  8D 2A 00     mX
L_8A878F:
    REP #$20                        ; $8A878F  C2 20        mX
L_8A8791:
    PHY                             ; $8A8791  5A           MX
L_8A8792:
    JSL $2BE000                     ; $8A8792  22 00 E0 2B  MX
L_8A8796:
    PLX                             ; $8A8796  FA           MX
L_8A8797:
    INX                             ; $8A8797  E8           MX
L_8A8798:
    LDA $00EE                       ; $8A8798  AD EE 00     MX
L_8A879B:
    CLC                             ; $8A879B  18           MX
L_8A879C:
    ADC #$0004                      ; $8A879C  69 04 00     MX
L_8A879F:
    CPX #$0005                      ; $8A879F  E0 05 00     MX
L_8A87A2:
    BNE L_8A87A8                    ; $8A87A2  D0 04        MX
L_8A87A4:
    CLC                             ; $8A87A4  18           MX
L_8A87A5:
    ADC #$0008                      ; $8A87A5  69 08 00     MX
L_8A87A8:
    STA $00EE                       ; $8A87A8  8D EE 00     MX
L_8A87AB:
    CPX #$000A                      ; $8A87AB  E0 0A 00     MX
L_8A87AE:
    BNE L_8A8777                    ; $8A87AE  D0 C7        MX
L_8A87B0:
    RTS                             ; $8A87B0  60           MX
    db $0F,$11,$04,$12,$12,$12,$13,$00,$11,$13                         ; $8A87B1
L_8A87BB:
    LDA #$0000                      ; $8A87BB  A9 00 00     MX
L_8A87BE:
    STA $2116                       ; $8A87BE  8D 16 21     MX
L_8A87C1:
    LDX #$8000                      ; $8A87C1  A2 00 80     MX
L_8A87C4:
    LDA #$FFFF                      ; $8A87C4  A9 FF FF     MX
L_8A87C7:
    STA $2118                       ; $8A87C7  8D 18 21     MX
L_8A87CA:
    DEX                             ; $8A87CA  CA           MX
L_8A87CB:
    BNE L_8A87C7                    ; $8A87CB  D0 FA        MX
L_8A87CD:
    SEP #$30                        ; $8A87CD  E2 30        MX
L_8A87CF:
    LDA #$8F                        ; $8A87CF  A9 8F        mx
L_8A87D1:
    STA $2100                       ; $8A87D1  8D 00 21     mx
L_8A87D4:
    STZ $169D                       ; $8A87D4  9C 9D 16     mx
L_8A87D7:
    REP #$30                        ; $8A87D7  C2 30        mx
L_8A87D9:
    LDA #$8000                      ; $8A87D9  A9 00 80     MX
L_8A87DC:
    STA $00D0                       ; $8A87DC  8D D0 00     MX
L_8A87DF:
    LDA #$0C80                      ; $8A87DF  A9 80 0C     MX
L_8A87E2:
    STA $00D1                       ; $8A87E2  8D D1 00     MX
L_8A87E5:
    LDA #$0000                      ; $8A87E5  A9 00 00     MX
L_8A87E8:
    STA $00D3                       ; $8A87E8  8D D3 00     MX
L_8A87EB:
    LDA #$7F00                      ; $8A87EB  A9 00 7F     MX
L_8A87EE:
    STA $00D4                       ; $8A87EE  8D D4 00     MX
L_8A87F1:
    JSL $29F3F0                     ; $8A87F1  22 F0 F3 29  MX
    LDA #$EF00                      ; $8A87F5  A9 00 EF     MX
    STA $A4                         ; $8A87F8  85 A4        MX
    LDA #$7E7E                      ; $8A87FA  A9 7E 7E     MX
    STA $A6                         ; $8A87FD  85 A6        MX
    LDY #$0006                      ; $8A87FF  A0 06 00     MX
    LDX #$0000                      ; $8A8802  A2 00 00     MX
L_8A8805:
    PHY                             ; $8A8805  5A           MX
    LDY #$0020                      ; $8A8806  A0 20 00     MX
L_8A8809:
    LDA $7F0694,X                   ; $8A8809  BF 94 06 7F  MX
    STA [$A4]                       ; $8A880D  87 A4        MX
    INC $A4                         ; $8A880F  E6 A4        MX
    INC $A4                         ; $8A8811  E6 A4        MX
    INX                             ; $8A8813  E8           MX
    INX                             ; $8A8814  E8           MX
    DEY                             ; $8A8815  88           MX
    BNE L_8A8809                    ; $8A8816  D0 F1        MX
    TXA                             ; $8A8818  8A           MX
    CLC                             ; $8A8819  18           MX
    ADC #$0010                      ; $8A881A  69 10 00     MX
    TAX                             ; $8A881D  AA           MX
    PLY                             ; $8A881E  7A           MX
    DEY                             ; $8A881F  88           MX
    BNE L_8A8805                    ; $8A8820  D0 E3        MX
    LDY #$0003                      ; $8A8822  A0 03 00     MX
    LDX #$0004                      ; $8A8825  A2 04 00     MX
L_8A8828:
    PHY                             ; $8A8828  5A           MX
    LDY #$000C                      ; $8A8829  A0 0C 00     MX
    LDA #$0020                      ; $8A882C  A9 20 00     MX
L_8A882F:
    STA $7EEF80,X                   ; $8A882F  9F 80 EF 7E  MX
    STA $7EEFA0,X                   ; $8A8833  9F A0 EF 7E  MX
    INX                             ; $8A8837  E8           MX
    INX                             ; $8A8838  E8           MX
    DEY                             ; $8A8839  88           MX
    BNE L_8A882F                    ; $8A883A  D0 F3        MX
    TXA                             ; $8A883C  8A           MX
    CLC                             ; $8A883D  18           MX
    ADC #$0028                      ; $8A883E  69 28 00     MX
    TAX                             ; $8A8841  AA           MX
    PLY                             ; $8A8842  7A           MX
    DEY                             ; $8A8843  88           MX
    BNE L_8A8828                    ; $8A8844  D0 E2        MX
    LDA #$01D9                      ; $8A8846  A9 D9 01     MX
    STA $7EF04E                     ; $8A8849  8F 4E F0 7E  MX
    STA $7EF06E                     ; $8A884D  8F 6E F0 7E  MX
    INC                             ; $8A8851  1A           MX
    STA $7EF050                     ; $8A8852  8F 50 F0 7E  MX
    STA $7EF070                     ; $8A8856  8F 70 F0 7E  MX
    SEP #$30                        ; $8A885A  E2 30        MX
    LDA #$00                        ; $8A885C  A9 00        mx
    STA $2116                       ; $8A885E  8D 16 21     mx
    LDA #$00                        ; $8A8861  A9 00        mx
    STA $2117                       ; $8A8863  8D 17 21     mx
    LDA #$01                        ; $8A8866  A9 01        mx
    STA $4300                       ; $8A8868  8D 00 43     mx
    LDA #$18                        ; $8A886B  A9 18        mx
    STA $4301                       ; $8A886D  8D 01 43     mx
    LDA #$C4                        ; $8A8870  A9 C4        mx
    STA $4302                       ; $8A8872  8D 02 43     mx
    LDA #$08                        ; $8A8875  A9 08        mx
    STA $4303                       ; $8A8877  8D 03 43     mx
    LDA #$7F                        ; $8A887A  A9 7F        mx
    STA $4304                       ; $8A887C  8D 04 43     mx
    LDA #$40                        ; $8A887F  A9 40        mx
    STA $4305                       ; $8A8881  8D 05 43     mx
    LDA #$49                        ; $8A8884  A9 49        mx
    STA $4306                       ; $8A8886  8D 06 43     mx
    LDA #$01                        ; $8A8889  A9 01        mx
    STA $420B                       ; $8A888B  8D 0B 42     mx
    LDA #$00                        ; $8A888E  A9 00        mx
    STA $2116                       ; $8A8890  8D 16 21     mx
    LDA #$3A                        ; $8A8893  A9 3A        mx
    STA $2117                       ; $8A8895  8D 17 21     mx
    LDA #$01                        ; $8A8898  A9 01        mx
    STA $4300                       ; $8A889A  8D 00 43     mx
    LDA #$18                        ; $8A889D  A9 18        mx
    STA $4301                       ; $8A889F  8D 01 43     mx
    LDA #$7F                        ; $8A88A2  A9 7F        mx
    STA $4302                       ; $8A88A4  8D 02 43     mx
    LDA #$CC                        ; $8A88A7  A9 CC        mx
    STA $4303                       ; $8A88A9  8D 03 43     mx
    LDA #$2A                        ; $8A88AC  A9 2A        mx
    STA $4304                       ; $8A88AE  8D 04 43     mx
    LDA #$40                        ; $8A88B1  A9 40        mx
    STA $4305                       ; $8A88B3  8D 05 43     mx
    LDA #$02                        ; $8A88B6  A9 02        mx
    STA $4306                       ; $8A88B8  8D 06 43     mx
    LDA #$01                        ; $8A88BB  A9 01        mx
    STA $420B                       ; $8A88BD  8D 0B 42     mx
    LDA #$20                        ; $8A88C0  A9 20        mx
    STA $2116                       ; $8A88C2  8D 16 21     mx
    LDA #$3B                        ; $8A88C5  A9 3B        mx
    STA $2117                       ; $8A88C7  8D 17 21     mx
    LDA #$01                        ; $8A88CA  A9 01        mx
    STA $4300                       ; $8A88CC  8D 00 43     mx
    LDA #$18                        ; $8A88CF  A9 18        mx
    STA $4301                       ; $8A88D1  8D 01 43     mx
    LDA #$17                        ; $8A88D4  A9 17        mx
    STA $4302                       ; $8A88D6  8D 02 43     mx
    LDA #$D6                        ; $8A88D9  A9 D6        mx
    STA $4303                       ; $8A88DB  8D 03 43     mx
    LDA #$2A                        ; $8A88DE  A9 2A        mx
    STA $4304                       ; $8A88E0  8D 04 43     mx
    LDA #$80                        ; $8A88E3  A9 80        mx
    STA $4305                       ; $8A88E5  8D 05 43     mx
    LDA #$00                        ; $8A88E8  A9 00        mx
    STA $4306                       ; $8A88EA  8D 06 43     mx
    LDA #$01                        ; $8A88ED  A9 01        mx
    STA $420B                       ; $8A88EF  8D 0B 42     mx
    LDA #$00                        ; $8A88F2  A9 00        mx
    STA $2116                       ; $8A88F4  8D 16 21     mx
    LDA #$40                        ; $8A88F7  A9 40        mx
    STA $2117                       ; $8A88F9  8D 17 21     mx
    LDA #$01                        ; $8A88FC  A9 01        mx
    STA $4300                       ; $8A88FE  8D 00 43     mx
    LDA #$18                        ; $8A8901  A9 18        mx
    STA $4301                       ; $8A8903  8D 01 43     mx
    LDA #$C4                        ; $8A8906  A9 C4        mx
    STA $4302                       ; $8A8908  8D 02 43     mx
    LDA #$5A                        ; $8A890B  A9 5A        mx
    STA $4303                       ; $8A890D  8D 03 43     mx
    LDA #$7F                        ; $8A8910  A9 7F        mx
    STA $4304                       ; $8A8912  8D 04 43     mx
    LDA #$00                        ; $8A8915  A9 00        mx
    STA $4305                       ; $8A8917  8D 05 43     mx
    LDA #$46                        ; $8A891A  A9 46        mx
    STA $4306                       ; $8A891C  8D 06 43     mx
    LDA #$01                        ; $8A891F  A9 01        mx
    STA $420B                       ; $8A8921  8D 0B 42     mx
    LDA #$8C                        ; $8A8924  A9 8C        mx
    STA $00D0                       ; $8A8926  8D D0 00     mx
    LDA #$96                        ; $8A8929  A9 96        mx
    STA $00D1                       ; $8A892B  8D D1 00     mx
    LDA #$0D                        ; $8A892E  A9 0D        mx
    STA $00D2                       ; $8A8930  8D D2 00     mx
    LDX #$50                        ; $8A8933  A2 50        mx
    LDA #$00                        ; $8A8935  A9 00        mx
    JSL L_808B53                    ; $8A8937  22 53 8B 80  mx
    LDA #$8C                        ; $8A893B  A9 8C        mx
    STA $00D0                       ; $8A893D  8D D0 00     mx
    LDA #$98                        ; $8A8940  A9 98        mx
    STA $00D1                       ; $8A8942  8D D1 00     mx
    LDA #$0D                        ; $8A8945  A9 0D        mx
    STA $00D2                       ; $8A8947  8D D2 00     mx
    LDX #$10                        ; $8A894A  A2 10        mx
    LDA #$D0                        ; $8A894C  A9 D0        mx
    JSL L_808B53                    ; $8A894E  22 53 8B 80  mx
    LDA #$80                        ; $8A8952  A9 80        mx
    STA $2115                       ; $8A8954  8D 15 21     mx
    REP #$30                        ; $8A8957  C2 30        mx
    LDA #$7400                      ; $8A8959  A9 00 74     MX
    STA $2116                       ; $8A895C  8D 16 21     MX
    LDA #$0004                      ; $8A895F  A9 04 00     MX
    STA $00A4                       ; $8A8962  8D A4 00     MX
    PEA $007F                       ; $8A8965  F4 7F 00     MX
    PLB                             ; $8A8968  AB           MX
    LDX #$001C                      ; $8A8969  A2 1C 00     MX
L_8A896C:
    LDY #$0000                      ; $8A896C  A0 00 00     MX
L_8A896F:
    LDA ($A4),Y                     ; $8A896F  B1 A4        MX
    STA $002118                     ; $8A8971  8F 18 21 00  MX
    INY                             ; $8A8975  C8           MX
    INY                             ; $8A8976  C8           MX
    CPY #$0040                      ; $8A8977  C0 40 00     MX
    BNE L_8A896F                    ; $8A897A  D0 F3        MX
    LDA $0000A4                     ; $8A897C  AF A4 00 00  MX
    CLC                             ; $8A8980  18           MX
    ADC #$0050                      ; $8A8981  69 50 00     MX
    STA $0000A4                     ; $8A8984  8F A4 00 00  MX
    DEX                             ; $8A8988  CA           MX
    BNE L_8A896C                    ; $8A8989  D0 E1        MX
    LDA #$7800                      ; $8A898B  A9 00 78     MX
    STA $002116                     ; $8A898E  8F 16 21 00  MX
    LDA #$5208                      ; $8A8992  A9 08 52     MX
    STA $0000A4                     ; $8A8995  8F A4 00 00  MX
    LDX #$001C                      ; $8A8999  A2 1C 00     MX
L_8A899C:
    LDY #$0000                      ; $8A899C  A0 00 00     MX
L_8A899F:
    LDA ($A4),Y                     ; $8A899F  B1 A4        MX
    STA $002118                     ; $8A89A1  8F 18 21 00  MX
    INY                             ; $8A89A5  C8           MX
    INY                             ; $8A89A6  C8           MX
    CPY #$0040                      ; $8A89A7  C0 40 00     MX
    BNE L_8A899F                    ; $8A89AA  D0 F3        MX
    LDA $0000A4                     ; $8A89AC  AF A4 00 00  MX
    CLC                             ; $8A89B0  18           MX
    ADC #$0050                      ; $8A89B1  69 50 00     MX
    STA $0000A4                     ; $8A89B4  8F A4 00 00  MX
    DEX                             ; $8A89B8  CA           MX
    BNE L_8A899C                    ; $8A89B9  D0 E1        MX
    PLB                             ; $8A89BB  AB           MX
    LDA #$0D9C                      ; $8A89BC  A9 9C 0D     MX
    STA $00D1                       ; $8A89BF  8D D1 00     MX
    LDA #$9C5F                      ; $8A89C2  A9 5F 9C     MX
    STA $00D0                       ; $8A89C5  8D D0 00     MX
    JSL $00E02F                     ; $8A89C8  22 2F E0 00  MX
    SEP #$20                        ; $8A89CC  E2 20        MX
    LDA #$FF                        ; $8A89CE  A9 FF        mX
    STA $210E                       ; $8A89D0  8D 0E 21     mX
    STA $210E                       ; $8A89D3  8D 0E 21     mX
    LDA #$00                        ; $8A89D6  A9 00        mX
    STA $210D                       ; $8A89D8  8D 0D 21     mX
    STA $210D                       ; $8A89DB  8D 0D 21     mX
    LDA #$FF                        ; $8A89DE  A9 FF        mX
    STA $2110                       ; $8A89E0  8D 10 21     mX
    STA $2110                       ; $8A89E3  8D 10 21     mX
    LDA #$00                        ; $8A89E6  A9 00        mX
    STA $210F                       ; $8A89E8  8D 0F 21     mX
    STA $210F                       ; $8A89EB  8D 0F 21     mX
    LDA #$13                        ; $8A89EE  A9 13        mX
    STA $212C                       ; $8A89F0  8D 2C 21     mX
    LDA #$03                        ; $8A89F3  A9 03        mX
    STA $2105                       ; $8A89F5  8D 05 21     mX
    LDA #$74                        ; $8A89F8  A9 74        mX
    STA $2107                       ; $8A89FA  8D 07 21     mX
    LDA #$78                        ; $8A89FD  A9 78        mX
    STA $2108                       ; $8A89FF  8D 08 21     mX
    LDA #$40                        ; $8A8A02  A9 40        mX
    STA $210B                       ; $8A8A04  8D 0B 21     mX
    LDA #$03                        ; $8A8A07  A9 03        mX
    STA $2101                       ; $8A8A09  8D 01 21     mX
    REP #$20                        ; $8A8A0C  C2 20        mX
    LDA #$FFF8                      ; $8A8A0E  A9 F8 FF     MX
    STA $00B2                       ; $8A8A11  8D B2 00     MX
    LDA $1C87                       ; $8A8A14  AD 87 1C     MX
    AND #$0001                      ; $8A8A17  29 01 00     MX
    STA $1C87                       ; $8A8A1A  8D 87 1C     MX
    LDA #$8003                      ; $8A8A1D  A9 03 80     MX
    STA $1683                       ; $8A8A20  8D 83 16     MX
    LDA #$8017                      ; $8A8A23  A9 17 80     MX
    STA $1685                       ; $8A8A26  8D 85 16     MX
    LDA #$FFFF                      ; $8A8A29  A9 FF FF     MX
    STA $1677                       ; $8A8A2C  8D 77 16     MX
    STZ $1690                       ; $8A8A2F  9C 90 16     MX
    STZ $169A                       ; $8A8A32  9C 9A 16     MX
    STZ $16B4                       ; $8A8A35  9C B4 16     MX
    STZ $16B6                       ; $8A8A38  9C B6 16     MX
    STZ $16B8                       ; $8A8A3B  9C B8 16     MX
    STZ $16BA                       ; $8A8A3E  9C BA 16     MX
    STZ $1D11                       ; $8A8A41  9C 11 1D     MX
    STZ $1D13                       ; $8A8A44  9C 13 1D     MX
    LDA $1C5D                       ; $8A8A47  AD 5D 1C     MX
    BNE L_8A8A4F                    ; $8A8A4A  D0 03        MX
    JMP L_8A8ADC                    ; $8A8A4C  4C DC 8A     MX
L_8A8A4F:
    SEP #$30                        ; $8A8A4F  E2 30        MX
    LDY #$00                        ; $8A8A51  A0 00        mx
    LDA $16C0                       ; $8A8A53  AD C0 16     mx
    BIT #$40                        ; $8A8A56  89 40        mx
    BEQ L_8A8A5D                    ; $8A8A58  F0 03        mx
    STY $16C0                       ; $8A8A5A  8C C0 16     mx
L_8A8A5D:
    LDA $16C2                       ; $8A8A5D  AD C2 16     mx
    BIT #$40                        ; $8A8A60  89 40        mx
    BEQ L_8A8A67                    ; $8A8A62  F0 03        mx
    STY $16C2                       ; $8A8A64  8C C2 16     mx
L_8A8A67:
    LDA $16BC                       ; $8A8A67  AD BC 16     mx
    BEQ L_8A8A76                    ; $8A8A6A  F0 0A        mx
    LDA #$01                        ; $8A8A6C  A9 01        mx
    TSB $1690                       ; $8A8A6E  0C 90 16     mx
    LDA #$06                        ; $8A8A71  A9 06        mx
    STA $16B4                       ; $8A8A73  8D B4 16     mx
L_8A8A76:
    LDA $16BE                       ; $8A8A76  AD BE 16     mx
    BEQ L_8A8A88                    ; $8A8A79  F0 0D        mx
    LDA #$01                        ; $8A8A7B  A9 01        mx
    TSB $1690                       ; $8A8A7D  0C 90 16     mx
    LDA #$06                        ; $8A8A80  A9 06        mx
    STA $16B6                       ; $8A8A82  8D B6 16     mx
    INC $1D11                       ; $8A8A85  EE 11 1D     mx
L_8A8A88:
    LDA $16C0                       ; $8A8A88  AD C0 16     mx
    BEQ L_8A8A97                    ; $8A8A8B  F0 0A        mx
    LDA #$02                        ; $8A8A8D  A9 02        mx
    TSB $1690                       ; $8A8A8F  0C 90 16     mx
    LDA #$06                        ; $8A8A92  A9 06        mx
    STA $16B8                       ; $8A8A94  8D B8 16     mx
L_8A8A97:
    LDA $16C2                       ; $8A8A97  AD C2 16     mx
    BEQ L_8A8AA9                    ; $8A8A9A  F0 0D        mx
    LDA #$02                        ; $8A8A9C  A9 02        mx
    TSB $1690                       ; $8A8A9E  0C 90 16     mx
    LDA #$06                        ; $8A8AA1  A9 06        mx
    STA $16BA                       ; $8A8AA3  8D BA 16     mx
    INC $1D13                       ; $8A8AA6  EE 13 1D     mx
L_8A8AA9:
    LDA #$01                        ; $8A8AA9  A9 01        mx
    LDX $16BC                       ; $8A8AAB  AE BC 16     mx
    BEQ L_8A8AB3                    ; $8A8AAE  F0 03        mx
    TSB $169A                       ; $8A8AB0  0C 9A 16     mx
L_8A8AB3:
    ASL                             ; $8A8AB3  0A           mx
    LDX $16BE                       ; $8A8AB4  AE BE 16     mx
    BEQ L_8A8ABC                    ; $8A8AB7  F0 03        mx
    TSB $169A                       ; $8A8AB9  0C 9A 16     mx
L_8A8ABC:
    ASL                             ; $8A8ABC  0A           mx
    LDX $16C0                       ; $8A8ABD  AE C0 16     mx
    BEQ L_8A8ACA                    ; $8A8AC0  F0 08        mx
    TSB $169A                       ; $8A8AC2  0C 9A 16     mx
    LDA #$06                        ; $8A8AC5  A9 06        mx
    STA $16B8                       ; $8A8AC7  8D B8 16     mx
L_8A8ACA:
    ASL                             ; $8A8ACA  0A           mx
    LDX $16C2                       ; $8A8ACB  AE C2 16     mx
    BEQ L_8A8AD8                    ; $8A8ACE  F0 08        mx
    TSB $169A                       ; $8A8AD0  0C 9A 16     mx
    LDA #$06                        ; $8A8AD3  A9 06        mx
    STA $16BA                       ; $8A8AD5  8D BA 16     mx
L_8A8AD8:
    REP #$30                        ; $8A8AD8  C2 30        mx
    BRA L_8A8B2E                    ; $8A8ADA  80 52        MX
L_8A8ADC:
    SEP #$30                        ; $8A8ADC  E2 30        MX
    LDA $16BC                       ; $8A8ADE  AD BC 16     mx
    BEQ L_8A8AED                    ; $8A8AE1  F0 0A        mx
    LDA #$01                        ; $8A8AE3  A9 01        mx
    TSB $1690                       ; $8A8AE5  0C 90 16     mx
    LDA #$06                        ; $8A8AE8  A9 06        mx
    STA $16B4                       ; $8A8AEA  8D B4 16     mx
L_8A8AED:
    LDA $16BE                       ; $8A8AED  AD BE 16     mx
    BEQ L_8A8AFC                    ; $8A8AF0  F0 0A        mx
    LDA #$02                        ; $8A8AF2  A9 02        mx
    TSB $1690                       ; $8A8AF4  0C 90 16     mx
    LDA #$06                        ; $8A8AF7  A9 06        mx
    STA $16B6                       ; $8A8AF9  8D B6 16     mx
L_8A8AFC:
    LDA #$01                        ; $8A8AFC  A9 01        mx
    LDX $16BC                       ; $8A8AFE  AE BC 16     mx
    BEQ L_8A8B06                    ; $8A8B01  F0 03        mx
    TSB $169A                       ; $8A8B03  0C 9A 16     mx
L_8A8B06:
    ASL                             ; $8A8B06  0A           mx
    ASL                             ; $8A8B07  0A           mx
    LDX $16BE                       ; $8A8B08  AE BE 16     mx
    BEQ L_8A8B10                    ; $8A8B0B  F0 03        mx
    TSB $169A                       ; $8A8B0D  0C 9A 16     mx
L_8A8B10:
    REP #$30                        ; $8A8B10  C2 30        mx
    LDX #$0000                      ; $8A8B12  A2 00 00     MX
L_8A8B15:
    LDA $16D0,X                     ; $8A8B15  BD D0 16     MX
    PHA                             ; $8A8B18  48           MX
    LDA $16CE,X                     ; $8A8B19  BD CE 16     MX
    STA $16D0,X                     ; $8A8B1C  9D D0 16     MX
    PLA                             ; $8A8B1F  68           MX
    STA $16CE,X                     ; $8A8B20  9D CE 16     MX
    TXA                             ; $8A8B23  8A           MX
    CLC                             ; $8A8B24  18           MX
    ADC #$0008                      ; $8A8B25  69 08 00     MX
    TAX                             ; $8A8B28  AA           MX
    CPX #$0020                      ; $8A8B29  E0 20 00     MX
    BNE L_8A8B15                    ; $8A8B2C  D0 E7        MX
L_8A8B2E:
    LDA $1690                       ; $8A8B2E  AD 90 16     MX
    BIT #$0001                      ; $8A8B31  89 01 00     MX
    BNE L_8A8B3C                    ; $8A8B34  D0 06        MX
    LDA #$001F                      ; $8A8B36  A9 1F 00     MX
    STA $1683                       ; $8A8B39  8D 83 16     MX
L_8A8B3C:
    LDA $1690                       ; $8A8B3C  AD 90 16     MX
    BIT #$0002                      ; $8A8B3F  89 02 00     MX
    BNE L_8A8B4A                    ; $8A8B42  D0 06        MX
    LDA #$001F                      ; $8A8B44  A9 1F 00     MX
    STA $1685                       ; $8A8B47  8D 85 16     MX
L_8A8B4A:
    JSR L_8A8C63                    ; $8A8B4A  20 63 8C     MX
    JSR L_8A8C98                    ; $8A8B4D  20 98 8C     MX
    LDA #$0000                      ; $8A8B50  A9 00 00     MX
    STA $1692                       ; $8A8B53  8D 92 16     MX
    LDA #$0000                      ; $8A8B56  A9 00 00     MX
    STA $1694                       ; $8A8B59  8D 94 16     MX
    LDA #$0000                      ; $8A8B5C  A9 00 00     MX
    STA $1696                       ; $8A8B5F  8D 96 16     MX
    LDA #$0000                      ; $8A8B62  A9 00 00     MX
    STA $1698                       ; $8A8B65  8D 98 16     MX
    JSL $29F9B6                     ; $8A8B68  22 B6 F9 29  MX
    LDA #$6800                      ; $8A8B6C  A9 00 68     MX
    STA $1CE1                       ; $8A8B6F  8D E1 1C     MX
    JSR L_8A9C75                    ; $8A8B72  20 75 9C     MX
    LDA #$0004                      ; $8A8B75  A9 04 00     MX
    STA $001665                     ; $8A8B78  8F 65 16 00  MX
    RTS                             ; $8A8B7C  60           MX
L_8A8B7D:
    SEP #$20                        ; $8A8B7D  E2 20        MX
    LDA $00B2                       ; $8A8B7F  AD B2 00     mX
    BMI L_8A8B8B                    ; $8A8B82  30 07        mX
    CMP #$10                        ; $8A8B84  C9 10        mX
    BEQ L_8A8B8E                    ; $8A8B86  F0 06        mX
    STA $2100                       ; $8A8B88  8D 00 21     mX
L_8A8B8B:
    INC $00B2                       ; $8A8B8B  EE B2 00     mX
L_8A8B8E:
    REP #$20                        ; $8A8B8E  C2 20        mX
    STZ $0CFF                       ; $8A8B90  9C FF 0C     MX
    STZ $0D01                       ; $8A8B93  9C 01 0D     MX
    JSR L_8A9AAF                    ; $8A8B96  20 AF 9A     MX
    JSR L_8A8CCD                    ; $8A8B99  20 CD 8C     MX
    JSR L_8A9B75                    ; $8A8B9C  20 75 9B     MX
    RTS                             ; $8A8B9F  60           MX
L_8A8BA0:
    SEP #$20                        ; $8A8BA0  E2 20        MX
    DEC $00B2                       ; $8A8BA2  CE B2 00     mX
    LDA $00B2                       ; $8A8BA5  AD B2 00     mX
    CMP #$FF                        ; $8A8BA8  C9 FF        mX
    BNE L_8A8BCA                    ; $8A8BAA  D0 1E        mX
    LDA #$06                        ; $8A8BAC  A9 06        mX
    STA $001665                     ; $8A8BAE  8F 65 16 00  mX
    REP #$20                        ; $8A8BB2  C2 20        mX
    LDA #$6800                      ; $8A8BB4  A9 00 68     MX
    STA $1CD5                       ; $8A8BB7  8D D5 1C     MX
    LDA #$6C00                      ; $8A8BBA  A9 00 6C     MX
    STA $1CD7                       ; $8A8BBD  8D D7 1C     MX
    SEP #$20                        ; $8A8BC0  E2 20        MX
    LDA #$80                        ; $8A8BC2  A9 80        mX
    STA $2100                       ; $8A8BC4  8D 00 21     mX
    REP #$20                        ; $8A8BC7  C2 20        mX
    RTS                             ; $8A8BC9  60           MX
L_8A8BCA:
    STA $2100                       ; $8A8BCA  8D 00 21     mX
    REP #$20                        ; $8A8BCD  C2 20        mX
    STZ $0008                       ; $8A8BCF  9C 08 00     MX
    STZ $000A                       ; $8A8BD2  9C 0A 00     MX
    STZ $000C                       ; $8A8BD5  9C 0C 00     MX
    STZ $000E                       ; $8A8BD8  9C 0E 00     MX
    STZ $1669                       ; $8A8BDB  9C 69 16     MX
    STZ $166B                       ; $8A8BDE  9C 6B 16     MX
    STZ $166D                       ; $8A8BE1  9C 6D 16     MX
    STZ $166F                       ; $8A8BE4  9C 6F 16     MX
    JSR L_8A8CCD                    ; $8A8BE7  20 CD 8C     MX
    RTS                             ; $8A8BEA  60           MX
L_8A8BEB:
    PEA $007E                       ; $8A8BEB  F4 7E 00     MX
    PLB                             ; $8A8BEE  AB           MX
    LDA #$0007                      ; $8A8BEF  A9 07 00     MX
    STA $A4                         ; $8A8BF2  85 A4        MX
    TYA                             ; $8A8BF4  98           MX
L_8A8BF5:
    LDY #$0006                      ; $8A8BF5  A0 06 00     MX
L_8A8BF8:
    STA $0000,X                     ; $8A8BF8  9D 00 00     MX
    INX                             ; $8A8BFB  E8           MX
    INX                             ; $8A8BFC  E8           MX
    INC                             ; $8A8BFD  1A           MX
    DEY                             ; $8A8BFE  88           MX
    BNE L_8A8BF8                    ; $8A8BFF  D0 F7        MX
    PHA                             ; $8A8C01  48           MX
    TXA                             ; $8A8C02  8A           MX
    CLC                             ; $8A8C03  18           MX
    ADC #$0034                      ; $8A8C04  69 34 00     MX
    TAX                             ; $8A8C07  AA           MX
    PLA                             ; $8A8C08  68           MX
    DEC $A4                         ; $8A8C09  C6 A4        MX
    BNE L_8A8BF5                    ; $8A8C0B  D0 E8        MX
    PLB                             ; $8A8C0D  AB           MX
    RTS                             ; $8A8C0E  60           MX
L_8A8C0F:
    PEA $007E                       ; $8A8C0F  F4 7E 00     MX
    PLB                             ; $8A8C12  AB           MX
    TXA                             ; $8A8C13  8A           MX
    CLC                             ; $8A8C14  18           MX
    ADC #$000A                      ; $8A8C15  69 0A 00     MX
    TAX                             ; $8A8C18  AA           MX
    LDA #$0007                      ; $8A8C19  A9 07 00     MX
    STA $A4                         ; $8A8C1C  85 A4        MX
    TYA                             ; $8A8C1E  98           MX
    ORA #$4000                      ; $8A8C1F  09 00 40     MX
L_8A8C22:
    LDY #$0006                      ; $8A8C22  A0 06 00     MX
L_8A8C25:
    STA $0000,X                     ; $8A8C25  9D 00 00     MX
    DEX                             ; $8A8C28  CA           MX
    DEX                             ; $8A8C29  CA           MX
    INC                             ; $8A8C2A  1A           MX
    DEY                             ; $8A8C2B  88           MX
    BNE L_8A8C25                    ; $8A8C2C  D0 F7        MX
    PHA                             ; $8A8C2E  48           MX
    TXA                             ; $8A8C2F  8A           MX
    CLC                             ; $8A8C30  18           MX
    ADC #$004C                      ; $8A8C31  69 4C 00     MX
    TAX                             ; $8A8C34  AA           MX
    PLA                             ; $8A8C35  68           MX
    DEC $A4                         ; $8A8C36  C6 A4        MX
    BNE L_8A8C22                    ; $8A8C38  D0 E8        MX
    PLB                             ; $8A8C3A  AB           MX
    RTS                             ; $8A8C3B  60           MX
L_8A8C3C:
    DEC                             ; $8A8C3C  3A           MX
    ASL                             ; $8A8C3D  0A           MX
    TAX                             ; $8A8C3E  AA           MX
    LDA $0A8C57,X                   ; $8A8C3F  BF 57 8C 0A  MX
    STY $168B                       ; $8A8C43  8C 8B 16     MX
    SEP #$20                        ; $8A8C46  E2 20        MX
    STA $00168E                     ; $8A8C48  8F 8E 16 00  mX
    LDA $001661                     ; $8A8C4C  AF 61 16 00  mX
    STA $00168D                     ; $8A8C50  8F 8D 16 00  mX
    REP #$20                        ; $8A8C54  C2 20        mX
    RTS                             ; $8A8C56  60           MX
    db $50,$00,$70,$00,$90,$00,$B0,$00,$10,$00,$30,$00                 ; $8A8C57
L_8A8C63:
    PEA $007F                       ; $8A8C63  F4 7F 00     MX
    PLB                             ; $8A8C66  AB           MX
    LDY #$0464                      ; $8A8C67  A0 64 04     MX
    LDX #$0000                      ; $8A8C6A  A2 00 00     MX
    LDA #$0007                      ; $8A8C6D  A9 07 00     MX
    STA $A6                         ; $8A8C70  85 A6        MX
L_8A8C72:
    LDA #$0010                      ; $8A8C72  A9 10 00     MX
    STA $A4                         ; $8A8C75  85 A4        MX
L_8A8C77:
    LDA $0000,Y                     ; $8A8C77  B9 00 00     MX
    STA $7EED00,X                   ; $8A8C7A  9F 00 ED 7E  MX
    INY                             ; $8A8C7E  C8           MX
    INY                             ; $8A8C7F  C8           MX
    INX                             ; $8A8C80  E8           MX
    INX                             ; $8A8C81  E8           MX
    DEC $A4                         ; $8A8C82  C6 A4        MX
    BNE L_8A8C77                    ; $8A8C84  D0 F1        MX
    TYA                             ; $8A8C86  98           MX
    CLC                             ; $8A8C87  18           MX
    ADC #$0030                      ; $8A8C88  69 30 00     MX
    TAY                             ; $8A8C8B  A8           MX
    TXA                             ; $8A8C8C  8A           MX
    CLC                             ; $8A8C8D  18           MX
    ADC #$0020                      ; $8A8C8E  69 20 00     MX
    TAX                             ; $8A8C91  AA           MX
    DEC $A6                         ; $8A8C92  C6 A6        MX
    BNE L_8A8C72                    ; $8A8C94  D0 DC        MX
    PLB                             ; $8A8C96  AB           MX
    RTS                             ; $8A8C97  60           MX
L_8A8C98:
    PEA $007F                       ; $8A8C98  F4 7F 00     MX
    PLB                             ; $8A8C9B  AB           MX
    LDY #$0484                      ; $8A8C9C  A0 84 04     MX
    LDX #$0000                      ; $8A8C9F  A2 00 00     MX
    LDA #$0007                      ; $8A8CA2  A9 07 00     MX
    STA $A6                         ; $8A8CA5  85 A6        MX
L_8A8CA7:
    LDA #$0010                      ; $8A8CA7  A9 10 00     MX
    STA $A4                         ; $8A8CAA  85 A4        MX
L_8A8CAC:
    LDA $0000,Y                     ; $8A8CAC  B9 00 00     MX
    STA $7EED20,X                   ; $8A8CAF  9F 20 ED 7E  MX
    INY                             ; $8A8CB3  C8           MX
    INY                             ; $8A8CB4  C8           MX
    INX                             ; $8A8CB5  E8           MX
    INX                             ; $8A8CB6  E8           MX
    DEC $A4                         ; $8A8CB7  C6 A4        MX
    BNE L_8A8CAC                    ; $8A8CB9  D0 F1        MX
    TYA                             ; $8A8CBB  98           MX
    CLC                             ; $8A8CBC  18           MX
    ADC #$0030                      ; $8A8CBD  69 30 00     MX
    TAY                             ; $8A8CC0  A8           MX
    TXA                             ; $8A8CC1  8A           MX
    CLC                             ; $8A8CC2  18           MX
    ADC #$0020                      ; $8A8CC3  69 20 00     MX
    TAX                             ; $8A8CC6  AA           MX
    DEC $A6                         ; $8A8CC7  C6 A6        MX
    BNE L_8A8CA7                    ; $8A8CC9  D0 DC        MX
    PLB                             ; $8A8CCB  AB           MX
    RTS                             ; $8A8CCC  60           MX
L_8A8CCD:
    JSR L_8A94A4                    ; $8A8CCD  20 A4 94     MX
L_8A8CD0:
    LDA $001677                     ; $8A8CD0  AF 77 16 00  MX
    AND #$0007                      ; $8A8CD4  29 07 00     MX
    CMP #$0004                      ; $8A8CD7  C9 04 00     MX
    BCC L_8A8CDF                    ; $8A8CDA  90 03        MX
    JMP L_8A8E3F                    ; $8A8CDC  4C 3F 8E     MX
L_8A8CDF:
    PHA                             ; $8A8CDF  48           MX
    LDA $1683                       ; $8A8CE0  AD 83 16     MX
    BMI L_8A8CEC                    ; $8A8CE3  30 07        MX
    PLA                             ; $8A8CE5  68           MX
    CMP #$0003                      ; $8A8CE6  C9 03 00     MX
    BEQ L_8A8D2A                    ; $8A8CE9  F0 3F        MX
    RTS                             ; $8A8CEB  60           MX
L_8A8CEC:
    PLA                             ; $8A8CEC  68           MX
    CMP #$0000                      ; $8A8CED  C9 00 00     MX
    BNE L_8A8CF5                    ; $8A8CF0  D0 03        MX
    JMP L_8A8DC5                    ; $8A8CF2  4C C5 8D     MX
L_8A8CF5:
    CMP #$0001                      ; $8A8CF5  C9 01 00     MX
    BNE L_8A8CFD                    ; $8A8CF8  D0 03        MX
    JMP L_8A8D7B                    ; $8A8CFA  4C 7B 8D     MX
L_8A8CFD:
    CMP #$0002                      ; $8A8CFD  C9 02 00     MX
    BNE L_8A8D05                    ; $8A8D00  D0 03        MX
    JMP L_8A8D2E                    ; $8A8D02  4C 2E 8D     MX
L_8A8D05:
    LDA #$8000                      ; $8A8D05  A9 00 80     MX
    TRB $1683                       ; $8A8D08  1C 83 16     MX
    LDX #$ED02                      ; $8A8D0B  A2 02 ED     MX
    LDY #$0125                      ; $8A8D0E  A0 25 01     MX
    JSR L_8A8BEB                    ; $8A8D11  20 EB 8B     MX
    LDX #$ED12                      ; $8A8D14  A2 12 ED     MX
    LDY #$014F                      ; $8A8D17  A0 4F 01     MX
    JSR L_8A8C0F                    ; $8A8D1A  20 0F 8C     MX
    LDA #$0002                      ; $8A8D1D  A9 02 00     MX
    STA $1667                       ; $8A8D20  8D 67 16     MX
    LDA #$0000                      ; $8A8D23  A9 00 00     MX
    JSL $29FCB9                     ; $8A8D26  22 B9 FC 29  MX
L_8A8D2A:
    JSR L_8A8FFC                    ; $8A8D2A  20 FC 8F     MX
    RTS                             ; $8A8D2D  60           MX
L_8A8D2E:
    LDA $1CDB                       ; $8A8D2E  AD DB 1C     MX
    BMI L_8A8D36                    ; $8A8D31  30 03        MX
    ASL                             ; $8A8D33  0A           MX
    BRA L_8A8D50                    ; $8A8D34  80 1A        MX
L_8A8D36:
    LDX #$0000                      ; $8A8D36  A2 00 00     MX
    LDA $1683                       ; $8A8D39  AD 83 16     MX
    BIT #$0040                      ; $8A8D3C  89 40 00     MX
    BEQ L_8A8D44                    ; $8A8D3F  F0 03        MX
    LDX #$0002                      ; $8A8D41  A2 02 00     MX
L_8A8D44:
    STX $A4                         ; $8A8D44  86 A4        MX
    AND #$001F                      ; $8A8D46  29 1F 00     MX
    ASL                             ; $8A8D49  0A           MX
    ASL                             ; $8A8D4A  0A           MX
    ORA $A4                         ; $8A8D4B  05 A4        MX
    EOR #$0002                      ; $8A8D4D  49 02 00     MX
L_8A8D50:
    TAX                             ; $8A8D50  AA           MX
    LDA $0D9D52,X                   ; $8A8D51  BF 52 9D 0D  MX
    STA $1661                       ; $8A8D55  8D 61 16     MX
    LDA $0D9CCE,X                   ; $8A8D58  BF CE 9C 0D  MX
    TAY                             ; $8A8D5C  A8           MX
    JSR L_8AAC03                    ; $8A8D5D  20 03 AC     MX
    LDA #$0002                      ; $8A8D60  A9 02 00     MX
    JSR L_8A8C3C                    ; $8A8D63  20 3C 8C     MX
    LDA #$29E0                      ; $8A8D66  A9 E0 29     MX
    STA $001687                     ; $8A8D69  8F 87 16 00  MX
    LDA #$CD80                      ; $8A8D6D  A9 80 CD     MX
    STA $001689                     ; $8A8D70  8F 89 16 00  MX
    LDA #$0003                      ; $8A8D74  A9 03 00     MX
    STA $1667                       ; $8A8D77  8D 67 16     MX
    RTS                             ; $8A8D7A  60           MX
L_8A8D7B:
    LDA $1CD9                       ; $8A8D7B  AD D9 1C     MX
    BMI L_8A8D83                    ; $8A8D7E  30 03        MX
    ASL                             ; $8A8D80  0A           MX
    BRA L_8A8D9A                    ; $8A8D81  80 17        MX
L_8A8D83:
    LDX #$0000                      ; $8A8D83  A2 00 00     MX
    LDA $1683                       ; $8A8D86  AD 83 16     MX
    BIT #$0040                      ; $8A8D89  89 40 00     MX
    BEQ L_8A8D91                    ; $8A8D8C  F0 03        MX
    LDX #$0002                      ; $8A8D8E  A2 02 00     MX
L_8A8D91:
    STX $A4                         ; $8A8D91  86 A4        MX
    AND #$001F                      ; $8A8D93  29 1F 00     MX
    ASL                             ; $8A8D96  0A           MX
    ASL                             ; $8A8D97  0A           MX
    ORA $A4                         ; $8A8D98  05 A4        MX
L_8A8D9A:
    TAX                             ; $8A8D9A  AA           MX
    LDA $0D9D52,X                   ; $8A8D9B  BF 52 9D 0D  MX
    STA $1661                       ; $8A8D9F  8D 61 16     MX
    LDA $0D9CCE,X                   ; $8A8DA2  BF CE 9C 0D  MX
    TAY                             ; $8A8DA6  A8           MX
    JSR L_8AA9D2                    ; $8A8DA7  20 D2 A9     MX
    LDA #$0001                      ; $8A8DAA  A9 01 00     MX
    JSR L_8A8C3C                    ; $8A8DAD  20 3C 8C     MX
    LDA #$24A0                      ; $8A8DB0  A9 A0 24     MX
    STA $001687                     ; $8A8DB3  8F 87 16 00  MX
    LDA #$C300                      ; $8A8DB7  A9 00 C3     MX
    STA $001689                     ; $8A8DBA  8F 89 16 00  MX
    LDA #$0003                      ; $8A8DBE  A9 03 00     MX
    STA $1667                       ; $8A8DC1  8D 67 16     MX
    RTS                             ; $8A8DC4  60           MX
L_8A8DC5:
    JSR L_8A8C63                    ; $8A8DC5  20 63 8C     MX
    LDA #$0004                      ; $8A8DC8  A9 04 00     MX
    STA $1667                       ; $8A8DCB  8D 67 16     MX
    LDA $1683                       ; $8A8DCE  AD 83 16     MX
    AND #$001F                      ; $8A8DD1  29 1F 00     MX
    ASL                             ; $8A8DD4  0A           MX
    ASL                             ; $8A8DD5  0A           MX
    ASL                             ; $8A8DD6  0A           MX
    TAX                             ; $8A8DD7  AA           MX
    LDA $0DAD59,X                   ; $8A8DD8  BF 59 AD 0D  MX
    STA $005E                       ; $8A8DDC  8D 5E 00     MX
    STA $0064                       ; $8A8DDF  8D 64 00     MX
    LDA $0DAD53,X                   ; $8A8DE2  BF 53 AD 0D  MX
    STA $005C                       ; $8A8DE6  8D 5C 00     MX
    CLC                             ; $8A8DE9  18           MX
    ADC $0DAD55,X                   ; $8A8DEA  7F 55 AD 0D  MX
    STA $0062                       ; $8A8DEE  8D 62 00     MX
    LDA $0DAD55,X                   ; $8A8DF1  BF 55 AD 0D  MX
    STA $0060                       ; $8A8DF5  8D 60 00     MX
    STA $0066                       ; $8A8DF8  8D 66 00     MX
    LDA $0DAE31,X                   ; $8A8DFB  BF 31 AE 0D  MX
    STA $0046                       ; $8A8DFF  8D 46 00     MX
    STA $004C                       ; $8A8E02  8D 4C 00     MX
    LDA $0DAE2B,X                   ; $8A8E05  BF 2B AE 0D  MX
    STA $0044                       ; $8A8E09  8D 44 00     MX
    CLC                             ; $8A8E0C  18           MX
    ADC $0DAE2D,X                   ; $8A8E0D  7F 2D AE 0D  MX
    STA $004A                       ; $8A8E11  8D 4A 00     MX
    LDA $0DAE2D,X                   ; $8A8E14  BF 2D AE 0D  MX
    STA $0048                       ; $8A8E18  8D 48 00     MX
    STA $004E                       ; $8A8E1B  8D 4E 00     MX
    LDA $1683                       ; $8A8E1E  AD 83 16     MX
    AND #$001F                      ; $8A8E21  29 1F 00     MX
    ASL                             ; $8A8E24  0A           MX
    ASL                             ; $8A8E25  0A           MX
    TAX                             ; $8A8E26  AA           MX
    LDA $0DAF03,X                   ; $8A8E27  BF 03 AF 0D  MX
    STA $168B                       ; $8A8E2B  8D 8B 16     MX
    SEP #$20                        ; $8A8E2E  E2 20        MX
    LDA $0DAF05,X                   ; $8A8E30  BF 05 AF 0D  mX
    STA $168D                       ; $8A8E34  8D 8D 16     mX
    LDA #$E0                        ; $8A8E37  A9 E0        mX
    STA $168E                       ; $8A8E39  8D 8E 16     mX
    REP #$20                        ; $8A8E3C  C2 20        mX
    RTS                             ; $8A8E3E  60           MX
L_8A8E3F:
    AND #$0003                      ; $8A8E3F  29 03 00     MX
    PHA                             ; $8A8E42  48           MX
    LDA $1685                       ; $8A8E43  AD 85 16     MX
    BMI L_8A8E4F                    ; $8A8E46  30 07        MX
    PLA                             ; $8A8E48  68           MX
    CMP #$0003                      ; $8A8E49  C9 03 00     MX
    BEQ L_8A8E8D                    ; $8A8E4C  F0 3F        MX
    RTS                             ; $8A8E4E  60           MX
L_8A8E4F:
    PLA                             ; $8A8E4F  68           MX
    CMP #$0000                      ; $8A8E50  C9 00 00     MX
    BNE L_8A8E58                    ; $8A8E53  D0 03        MX
    JMP L_8A8F28                    ; $8A8E55  4C 28 8F     MX
L_8A8E58:
    CMP #$0001                      ; $8A8E58  C9 01 00     MX
    BNE L_8A8E60                    ; $8A8E5B  D0 03        MX
    JMP L_8A8EDE                    ; $8A8E5D  4C DE 8E     MX
L_8A8E60:
    CMP #$0002                      ; $8A8E60  C9 02 00     MX
    BNE L_8A8E68                    ; $8A8E63  D0 03        MX
    JMP L_8A8E91                    ; $8A8E65  4C 91 8E     MX
L_8A8E68:
    LDA #$8000                      ; $8A8E68  A9 00 80     MX
    TRB $1685                       ; $8A8E6B  1C 85 16     MX
    LDX #$ED22                      ; $8A8E6E  A2 22 ED     MX
    LDY #$0179                      ; $8A8E71  A0 79 01     MX
    JSR L_8A8BEB                    ; $8A8E74  20 EB 8B     MX
    LDX #$ED32                      ; $8A8E77  A2 32 ED     MX
    LDY #$01A3                      ; $8A8E7A  A0 A3 01     MX
    JSR L_8A8C0F                    ; $8A8E7D  20 0F 8C     MX
    LDA #$0002                      ; $8A8E80  A9 02 00     MX
    STA $1667                       ; $8A8E83  8D 67 16     MX
    LDA #$0001                      ; $8A8E86  A9 01 00     MX
    JSL $29FCB9                     ; $8A8E89  22 B9 FC 29  MX
L_8A8E8D:
    JSR L_8A8FA2                    ; $8A8E8D  20 A2 8F     MX
    RTS                             ; $8A8E90  60           MX
L_8A8E91:
    LDA $1CDF                       ; $8A8E91  AD DF 1C     MX
    BMI L_8A8E99                    ; $8A8E94  30 03        MX
    ASL                             ; $8A8E96  0A           MX
    BRA L_8A8EB3                    ; $8A8E97  80 1A        MX
L_8A8E99:
    LDX #$0000                      ; $8A8E99  A2 00 00     MX
    LDA $1685                       ; $8A8E9C  AD 85 16     MX
    BIT #$0040                      ; $8A8E9F  89 40 00     MX
    BEQ L_8A8EA7                    ; $8A8EA2  F0 03        MX
    LDX #$0002                      ; $8A8EA4  A2 02 00     MX
L_8A8EA7:
    STX $A4                         ; $8A8EA7  86 A4        MX
    AND #$001F                      ; $8A8EA9  29 1F 00     MX
    ASL                             ; $8A8EAC  0A           MX
    ASL                             ; $8A8EAD  0A           MX
    ORA $A4                         ; $8A8EAE  05 A4        MX
    EOR #$0002                      ; $8A8EB0  49 02 00     MX
L_8A8EB3:
    TAX                             ; $8A8EB3  AA           MX
    LDA $0D9D52,X                   ; $8A8EB4  BF 52 9D 0D  MX
    STA $1661                       ; $8A8EB8  8D 61 16     MX
    LDA $0D9CCE,X                   ; $8A8EBB  BF CE 9C 0D  MX
    TAY                             ; $8A8EBF  A8           MX
    JSR L_8AB035                    ; $8A8EC0  20 35 B0     MX
    LDA #$0004                      ; $8A8EC3  A9 04 00     MX
    JSR L_8A8C3C                    ; $8A8EC6  20 3C 8C     MX
    LDA #$3460                      ; $8A8EC9  A9 60 34     MX
    STA $001687                     ; $8A8ECC  8F 87 16 00  MX
    LDA #$E280                      ; $8A8ED0  A9 80 E2     MX
    STA $001689                     ; $8A8ED3  8F 89 16 00  MX
    LDA #$0003                      ; $8A8ED7  A9 03 00     MX
    STA $1667                       ; $8A8EDA  8D 67 16     MX
    RTS                             ; $8A8EDD  60           MX
L_8A8EDE:
    LDA $1CDD                       ; $8A8EDE  AD DD 1C     MX
    BMI L_8A8EE6                    ; $8A8EE1  30 03        MX
    ASL                             ; $8A8EE3  0A           MX
    BRA L_8A8EFD                    ; $8A8EE4  80 17        MX
L_8A8EE6:
    LDX #$0000                      ; $8A8EE6  A2 00 00     MX
    LDA $1685                       ; $8A8EE9  AD 85 16     MX
    BIT #$0040                      ; $8A8EEC  89 40 00     MX
    BEQ L_8A8EF4                    ; $8A8EEF  F0 03        MX
    LDX #$0002                      ; $8A8EF1  A2 02 00     MX
L_8A8EF4:
    STX $A4                         ; $8A8EF4  86 A4        MX
    AND #$001F                      ; $8A8EF6  29 1F 00     MX
    ASL                             ; $8A8EF9  0A           MX
    ASL                             ; $8A8EFA  0A           MX
    ORA $A4                         ; $8A8EFB  05 A4        MX
L_8A8EFD:
    TAX                             ; $8A8EFD  AA           MX
    LDA $0D9D52,X                   ; $8A8EFE  BF 52 9D 0D  MX
    STA $1661                       ; $8A8F02  8D 61 16     MX
    LDA $0D9CCE,X                   ; $8A8F05  BF CE 9C 0D  MX
    TAY                             ; $8A8F09  A8           MX
    JSR L_8AAE04                    ; $8A8F0A  20 04 AE     MX
    LDA #$0003                      ; $8A8F0D  A9 03 00     MX
    JSR L_8A8C3C                    ; $8A8F10  20 3C 8C     MX
    LDA #$2F20                      ; $8A8F13  A9 20 2F     MX
    STA $001687                     ; $8A8F16  8F 87 16 00  MX
    LDA #$D800                      ; $8A8F1A  A9 00 D8     MX
    STA $001689                     ; $8A8F1D  8F 89 16 00  MX
    LDA #$0003                      ; $8A8F21  A9 03 00     MX
    STA $1667                       ; $8A8F24  8D 67 16     MX
    RTS                             ; $8A8F27  60           MX
L_8A8F28:
    JSR L_8A8C98                    ; $8A8F28  20 98 8C     MX
    LDA #$0004                      ; $8A8F2B  A9 04 00     MX
    STA $1667                       ; $8A8F2E  8D 67 16     MX
    LDA $1685                       ; $8A8F31  AD 85 16     MX
    AND #$001F                      ; $8A8F34  29 1F 00     MX
    ASL                             ; $8A8F37  0A           MX
    ASL                             ; $8A8F38  0A           MX
    ASL                             ; $8A8F39  0A           MX
    TAX                             ; $8A8F3A  AA           MX
    LDA $0DAD59,X                   ; $8A8F3B  BF 59 AD 0D  MX
    STA $006A                       ; $8A8F3F  8D 6A 00     MX
    STA $0070                       ; $8A8F42  8D 70 00     MX
    LDA $0DAD53,X                   ; $8A8F45  BF 53 AD 0D  MX
    STA $0068                       ; $8A8F49  8D 68 00     MX
    CLC                             ; $8A8F4C  18           MX
    ADC $0DAD55,X                   ; $8A8F4D  7F 55 AD 0D  MX
    STA $006E                       ; $8A8F51  8D 6E 00     MX
    LDA $0DAD55,X                   ; $8A8F54  BF 55 AD 0D  MX
    STA $006C                       ; $8A8F58  8D 6C 00     MX
    STA $0072                       ; $8A8F5B  8D 72 00     MX
    LDA $0DAE31,X                   ; $8A8F5E  BF 31 AE 0D  MX
    STA $0052                       ; $8A8F62  8D 52 00     MX
    STA $0058                       ; $8A8F65  8D 58 00     MX
    LDA $0DAE2B,X                   ; $8A8F68  BF 2B AE 0D  MX
    STA $0050                       ; $8A8F6C  8D 50 00     MX
    CLC                             ; $8A8F6F  18           MX
    ADC $0DAE2D,X                   ; $8A8F70  7F 2D AE 0D  MX
    STA $0056                       ; $8A8F74  8D 56 00     MX
    LDA $0DAE2D,X                   ; $8A8F77  BF 2D AE 0D  MX
    STA $0054                       ; $8A8F7B  8D 54 00     MX
    STA $005A                       ; $8A8F7E  8D 5A 00     MX
    LDA $1685                       ; $8A8F81  AD 85 16     MX
    AND #$001F                      ; $8A8F84  29 1F 00     MX
    ASL                             ; $8A8F87  0A           MX
    ASL                             ; $8A8F88  0A           MX
    TAX                             ; $8A8F89  AA           MX
    LDA $0DAF03,X                   ; $8A8F8A  BF 03 AF 0D  MX
    STA $168B                       ; $8A8F8E  8D 8B 16     MX
    SEP #$20                        ; $8A8F91  E2 20        MX
    LDA $0DAF05,X                   ; $8A8F93  BF 05 AF 0D  mX
    STA $168D                       ; $8A8F97  8D 8D 16     mX
    LDA #$F0                        ; $8A8F9A  A9 F0        mX
    STA $168E                       ; $8A8F9C  8D 8E 16     mX
    REP #$20                        ; $8A8F9F  C2 20        mX
    RTS                             ; $8A8FA1  60           MX
L_8A8FA2:
    LDA $1C5D                       ; $8A8FA2  AD 5D 1C     MX
    BEQ L_8A8FAA                    ; $8A8FA5  F0 03        MX
    JMP L_8A91BD                    ; $8A8FA7  4C BD 91     MX
L_8A8FAA:
    LDY #$0000                      ; $8A8FAA  A0 00 00     MX
    LDA $0008                       ; $8A8FAD  AD 08 00     MX
    JSR L_8A9C5C                    ; $8A8FB0  20 5C 9C     MX
    LDA $1690                       ; $8A8FB3  AD 90 16     MX
    BIT #$0001                      ; $8A8FB6  89 01 00     MX
    BEQ L_8A8FBE                    ; $8A8FB9  F0 03        MX
    JMP L_8A905C                    ; $8A8FBB  4C 5C 90     MX
L_8A8FBE:
    BIT #$0004                      ; $8A8FBE  89 04 00     MX
    BNE L_8A8FFB                    ; $8A8FC1  D0 38        MX
    LDA $1679                       ; $8A8FC3  AD 79 16     MX
    BIT #$1000                      ; $8A8FC6  89 00 10     MX
    BEQ L_8A8FFB                    ; $8A8FC9  F0 30        MX
    PHA                             ; $8A8FCB  48           MX
    PHX                             ; $8A8FCC  DA           MX
    PHY                             ; $8A8FCD  5A           MX
    LDA #$0040                      ; $8A8FCE  A9 40 00     MX
    JSL L_BDFE18                    ; $8A8FD1  22 18 FE BD  MX
    PLY                             ; $8A8FD5  7A           MX
    PLX                             ; $8A8FD6  FA           MX
    PLA                             ; $8A8FD7  68           MX
    LDA #$0001                      ; $8A8FD8  A9 01 00     MX
    TSB $1690                       ; $8A8FDB  0C 90 16     MX
    LDA #$0001                      ; $8A8FDE  A9 01 00     MX
    STA $16B4                       ; $8A8FE1  8D B4 16     MX
    LDA #$8003                      ; $8A8FE4  A9 03 80     MX
    STA $1683                       ; $8A8FE7  8D 83 16     MX
    LDA $1685                       ; $8A8FEA  AD 85 16     MX
    AND #$001F                      ; $8A8FED  29 1F 00     MX
    CMP #$0003                      ; $8A8FF0  C9 03 00     MX
    BNE L_8A8FFB                    ; $8A8FF3  D0 06        MX
    LDA #$8000                      ; $8A8FF5  A9 00 80     MX
    STA $1683                       ; $8A8FF8  8D 83 16     MX
L_8A8FFB:
    RTS                             ; $8A8FFB  60           MX
L_8A8FFC:
    LDA $1C5D                       ; $8A8FFC  AD 5D 1C     MX
    BEQ L_8A900A                    ; $8A8FFF  F0 09        MX
    CMP #$0002                      ; $8A9001  C9 02 00     MX
    BEQ L_8A9007                    ; $8A9004  F0 01        MX
    RTS                             ; $8A9006  60           MX
L_8A9007:
    JMP L_8A9280                    ; $8A9007  4C 80 92     MX
L_8A900A:
    LDY #$0002                      ; $8A900A  A0 02 00     MX
    LDA $000A                       ; $8A900D  AD 0A 00     MX
    JSR L_8A9C5C                    ; $8A9010  20 5C 9C     MX
    LDA $1690                       ; $8A9013  AD 90 16     MX
    BIT #$0002                      ; $8A9016  89 02 00     MX
    BNE L_8A905C                    ; $8A9019  D0 41        MX
    BIT #$0008                      ; $8A901B  89 08 00     MX
    BNE L_8A8FFB                    ; $8A901E  D0 DB        MX
    LDA $1679                       ; $8A9020  AD 79 16     MX
    BIT #$1000                      ; $8A9023  89 00 10     MX
    BEQ L_8A8FFB                    ; $8A9026  F0 D3        MX
    PHA                             ; $8A9028  48           MX
    PHX                             ; $8A9029  DA           MX
    PHY                             ; $8A902A  5A           MX
    LDA #$0040                      ; $8A902B  A9 40 00     MX
    JSL L_BDFE18                    ; $8A902E  22 18 FE BD  MX
    PLY                             ; $8A9032  7A           MX
    PLX                             ; $8A9033  FA           MX
    PLA                             ; $8A9034  68           MX
    LDA #$0002                      ; $8A9035  A9 02 00     MX
    STA $1D11                       ; $8A9038  8D 11 1D     MX
    TSB $1690                       ; $8A903B  0C 90 16     MX
    LDA #$0001                      ; $8A903E  A9 01 00     MX
    STA $16B6                       ; $8A9041  8D B6 16     MX
    LDA #$8017                      ; $8A9044  A9 17 80     MX
    STA $1685                       ; $8A9047  8D 85 16     MX
    LDA $1683                       ; $8A904A  AD 83 16     MX
    AND #$001F                      ; $8A904D  29 1F 00     MX
    CMP #$0017                      ; $8A9050  C9 17 00     MX
    BNE L_8A8FFB                    ; $8A9053  D0 A6        MX
    LDA #$8014                      ; $8A9055  A9 14 80     MX
    STA $1685                       ; $8A9058  8D 85 16     MX
    RTS                             ; $8A905B  60           MX
L_8A905C:
    TYA                             ; $8A905C  98           MX
    STA $00A8                       ; $8A905D  8D A8 00     MX
    EOR #$0002                      ; $8A9060  49 02 00     MX
    STA $00A6                       ; $8A9063  8D A6 00     MX
    LDA $1679                       ; $8A9066  AD 79 16     MX
    STA $167D,Y                     ; $8A9069  99 7D 16     MX
    LDA $1681                       ; $8A906C  AD 81 16     MX
    BIT #$1000                      ; $8A906F  89 00 10     MX
    BEQ L_8A909B                    ; $8A9072  F0 27        MX
    LDA #$0005                      ; $8A9074  A9 05 00     MX
    CPY #$0000                      ; $8A9077  C0 00 00     MX
    BEQ L_8A907F                    ; $8A907A  F0 03        MX
    LDA #$000A                      ; $8A907C  A9 0A 00     MX
L_8A907F:
    PHA                             ; $8A907F  48           MX
    ORA $1692                       ; $8A9080  0D 92 16     MX
    STA $1692                       ; $8A9083  8D 92 16     MX
    PLA                             ; $8A9086  68           MX
    EOR $1690                       ; $8A9087  4D 90 16     MX
    STA $1690                       ; $8A908A  8D 90 16     MX
    PHA                             ; $8A908D  48           MX
    PHX                             ; $8A908E  DA           MX
    PHY                             ; $8A908F  5A           MX
    LDA #$0042                      ; $8A9090  A9 42 00     MX
    JSL L_BDFE18                    ; $8A9093  22 18 FE BD  MX
    PLY                             ; $8A9097  7A           MX
    PLX                             ; $8A9098  FA           MX
    PLA                             ; $8A9099  68           MX
    RTS                             ; $8A909A  60           MX
L_8A909B:
    LDA $1679                       ; $8A909B  AD 79 16     MX
    BIT #$0800                      ; $8A909E  89 00 08     MX
    BEQ L_8A90B8                    ; $8A90A1  F0 15        MX
    LDA $1683,Y                     ; $8A90A3  B9 83 16     MX
    DEC                             ; $8A90A6  3A           MX
    AND #$001F                      ; $8A90A7  29 1F 00     MX
    CMP #$001F                      ; $8A90AA  C9 1F 00     MX
    BNE L_8A90B2                    ; $8A90AD  D0 03        MX
    LDA #$001A                      ; $8A90AF  A9 1A 00     MX
L_8A90B2:
    STA $1683,Y                     ; $8A90B2  99 83 16     MX
    JMP L_8A9189                    ; $8A90B5  4C 89 91     MX
L_8A90B8:
    BIT #$0400                      ; $8A90B8  89 00 04     MX
    BEQ L_8A90D2                    ; $8A90BB  F0 15        MX
    LDA $1683,Y                     ; $8A90BD  B9 83 16     MX
    INC                             ; $8A90C0  1A           MX
    AND #$001F                      ; $8A90C1  29 1F 00     MX
    CMP #$001B                      ; $8A90C4  C9 1B 00     MX
    BNE L_8A90CC                    ; $8A90C7  D0 03        MX
    LDA #$0000                      ; $8A90C9  A9 00 00     MX
L_8A90CC:
    STA $1683,Y                     ; $8A90CC  99 83 16     MX
    JMP L_8A9189                    ; $8A90CF  4C 89 91     MX
L_8A90D2:
    BIT #$0200                      ; $8A90D2  89 00 02     MX
    BEQ L_8A9111                    ; $8A90D5  F0 3A        MX
    LDA $1683,Y                     ; $8A90D7  B9 83 16     MX
    AND #$001F                      ; $8A90DA  29 1F 00     MX
    CMP #$0007                      ; $8A90DD  C9 07 00     MX
    BCS L_8A90E8                    ; $8A90E0  B0 06        MX
    CLC                             ; $8A90E2  18           MX
    ADC #$0014                      ; $8A90E3  69 14 00     MX
    BRA L_8A910B                    ; $8A90E6  80 23        MX
L_8A90E8:
    CMP #$000D                      ; $8A90E8  C9 0D 00     MX
    BCS L_8A90F3                    ; $8A90EB  B0 06        MX
    SEC                             ; $8A90ED  38           MX
    SBC #$0007                      ; $8A90EE  E9 07 00     MX
    BRA L_8A910B                    ; $8A90F1  80 18        MX
L_8A90F3:
    CMP #$0014                      ; $8A90F3  C9 14 00     MX
    BCS L_8A9107                    ; $8A90F6  B0 0F        MX
    CMP #$0013                      ; $8A90F8  C9 13 00     MX
    BNE L_8A9101                    ; $8A90FB  D0 04        MX
    SEC                             ; $8A90FD  38           MX
    SBC #$0007                      ; $8A90FE  E9 07 00     MX
L_8A9101:
    SEC                             ; $8A9101  38           MX
    SBC #$0006                      ; $8A9102  E9 06 00     MX
    BRA L_8A910B                    ; $8A9105  80 04        MX
L_8A9107:
    SEC                             ; $8A9107  38           MX
    SBC #$0007                      ; $8A9108  E9 07 00     MX
L_8A910B:
    STA $1683,Y                     ; $8A910B  99 83 16     MX
    JMP L_8A9189                    ; $8A910E  4C 89 91     MX
L_8A9111:
    BIT #$0100                      ; $8A9111  89 00 01     MX
    BEQ L_8A914F                    ; $8A9114  F0 39        MX
    LDA $1683,Y                     ; $8A9116  B9 83 16     MX
    AND #$001F                      ; $8A9119  29 1F 00     MX
    CMP #$0007                      ; $8A911C  C9 07 00     MX
    BCS L_8A9130                    ; $8A911F  B0 0F        MX
    CMP #$0006                      ; $8A9121  C9 06 00     MX
    BNE L_8A912A                    ; $8A9124  D0 04        MX
    CLC                             ; $8A9126  18           MX
    ADC #$0006                      ; $8A9127  69 06 00     MX
L_8A912A:
    CLC                             ; $8A912A  18           MX
    ADC #$0007                      ; $8A912B  69 07 00     MX
    BRA L_8A914A                    ; $8A912E  80 1A        MX
L_8A9130:
    CMP #$000D                      ; $8A9130  C9 0D 00     MX
    BCS L_8A913B                    ; $8A9133  B0 06        MX
    CLC                             ; $8A9135  18           MX
    ADC #$0006                      ; $8A9136  69 06 00     MX
    BRA L_8A914A                    ; $8A9139  80 0F        MX
L_8A913B:
    CMP #$0014                      ; $8A913B  C9 14 00     MX
    BCS L_8A9146                    ; $8A913E  B0 06        MX
    CLC                             ; $8A9140  18           MX
    ADC #$0007                      ; $8A9141  69 07 00     MX
    BRA L_8A914A                    ; $8A9144  80 04        MX
L_8A9146:
    SEC                             ; $8A9146  38           MX
    SBC #$0014                      ; $8A9147  E9 14 00     MX
L_8A914A:
    STA $1683,Y                     ; $8A914A  99 83 16     MX
    BRA L_8A9189                    ; $8A914D  80 3A        MX
L_8A914F:
    BIT #$C0C0                      ; $8A914F  89 C0 C0     MX
    BNE L_8A915D                    ; $8A9152  D0 09        MX
    TYA                             ; $8A9154  98           MX
    CLC                             ; $8A9155  18           MX
    ADC #$0002                      ; $8A9156  69 02 00     MX
    TRB $167B                       ; $8A9159  1C 7B 16     MX
L_8A915C:
    RTS                             ; $8A915C  60           MX
L_8A915D:
    TYA                             ; $8A915D  98           MX
    CLC                             ; $8A915E  18           MX
    ADC #$0002                      ; $8A915F  69 02 00     MX
    AND $167B                       ; $8A9162  2D 7B 16     MX
    BNE L_8A915C                    ; $8A9165  D0 F5        MX
    TYA                             ; $8A9167  98           MX
    CLC                             ; $8A9168  18           MX
    ADC #$0002                      ; $8A9169  69 02 00     MX
    TSB $167B                       ; $8A916C  0C 7B 16     MX
    LDA $1683,Y                     ; $8A916F  B9 83 16     MX
    EOR #$0040                      ; $8A9172  49 40 00     MX
    ORA #$8000                      ; $8A9175  09 00 80     MX
    STA $1683,Y                     ; $8A9178  99 83 16     MX
    PHA                             ; $8A917B  48           MX
    PHX                             ; $8A917C  DA           MX
    PHY                             ; $8A917D  5A           MX
    LDA #$0045                      ; $8A917E  A9 45 00     MX
    JSL L_BDFE18                    ; $8A9181  22 18 FE BD  MX
    PLY                             ; $8A9185  7A           MX
    PLX                             ; $8A9186  FA           MX
    PLA                             ; $8A9187  68           MX
    RTS                             ; $8A9188  60           MX
L_8A9189:
    PHA                             ; $8A9189  48           MX
    PHX                             ; $8A918A  DA           MX
    PHY                             ; $8A918B  5A           MX
    LDA #$0041                      ; $8A918C  A9 41 00     MX
    JSL L_BDFE18                    ; $8A918F  22 18 FE BD  MX
    PLY                             ; $8A9193  7A           MX
    PLX                             ; $8A9194  FA           MX
    PLA                             ; $8A9195  68           MX
    LDY $00A6                       ; $8A9196  AC A6 00     MX
    LDA $1683,Y                     ; $8A9199  B9 83 16     MX
    AND #$001F                      ; $8A919C  29 1F 00     MX
    STA $00A4                       ; $8A919F  8D A4 00     MX
    LDY $00A8                       ; $8A91A2  AC A8 00     MX
    LDA $1683,Y                     ; $8A91A5  B9 83 16     MX
    AND #$001F                      ; $8A91A8  29 1F 00     MX
    CMP $00A4                       ; $8A91AB  CD A4 00     MX
    BNE L_8A91B3                    ; $8A91AE  D0 03        MX
    JMP L_8A905C                    ; $8A91B0  4C 5C 90     MX
L_8A91B3:
    LDA $1683,Y                     ; $8A91B3  B9 83 16     MX
    ORA #$8000                      ; $8A91B6  09 00 80     MX
    STA $1683,Y                     ; $8A91B9  99 83 16     MX
L_8A91BC:
    RTS                             ; $8A91BC  60           MX
L_8A91BD:
    LDY #$0000                      ; $8A91BD  A0 00 00     MX
    LDA $1690                       ; $8A91C0  AD 90 16     MX
    BIT #$0004                      ; $8A91C3  89 04 00     MX
    BNE L_8A91BC                    ; $8A91C6  D0 F4        MX
    LDA $16B4                       ; $8A91C8  AD B4 16     MX
    BNE L_8A921B                    ; $8A91CB  D0 4E        MX
    LDA $0008                       ; $8A91CD  AD 08 00     MX
    BIT #$1000                      ; $8A91D0  89 00 10     MX
    BEQ L_8A921B                    ; $8A91D3  F0 46        MX
    ORA $167D,Y                     ; $8A91D5  19 7D 16     MX
    STA $167D,Y                     ; $8A91D8  99 7D 16     MX
    LDA #$0001                      ; $8A91DB  A9 01 00     MX
    TSB $169A                       ; $8A91DE  0C 9A 16     MX
    TSB $1690                       ; $8A91E1  0C 90 16     MX
    LDA #$0001                      ; $8A91E4  A9 01 00     MX
    STA $16B4                       ; $8A91E7  8D B4 16     MX
    PHA                             ; $8A91EA  48           MX
    PHX                             ; $8A91EB  DA           MX
    PHY                             ; $8A91EC  5A           MX
    LDA #$0040                      ; $8A91ED  A9 40 00     MX
    JSL L_BDFE18                    ; $8A91F0  22 18 FE BD  MX
    PLY                             ; $8A91F4  7A           MX
    PLX                             ; $8A91F5  FA           MX
    PLA                             ; $8A91F6  68           MX
L_8A91F7:
    LDA $1683                       ; $8A91F7  AD 83 16     MX
    AND #$001F                      ; $8A91FA  29 1F 00     MX
    CMP #$001F                      ; $8A91FD  C9 1F 00     MX
    BNE L_8A9252                    ; $8A9200  D0 50        MX
    LDA #$8003                      ; $8A9202  A9 03 80     MX
    STA $1683                       ; $8A9205  8D 83 16     MX
    LDA $1685                       ; $8A9208  AD 85 16     MX
    AND #$001F                      ; $8A920B  29 1F 00     MX
    CMP #$0003                      ; $8A920E  C9 03 00     MX
    BNE L_8A9252                    ; $8A9211  D0 3F        MX
    LDA #$8000                      ; $8A9213  A9 00 80     MX
    STA $1683                       ; $8A9216  8D 83 16     MX
    BRA L_8A9252                    ; $8A9219  80 37        MX
L_8A921B:
    LDA $16B6                       ; $8A921B  AD B6 16     MX
    BNE L_8A9252                    ; $8A921E  D0 32        MX
    LDA $000A                       ; $8A9220  AD 0A 00     MX
    BIT #$1000                      ; $8A9223  89 00 10     MX
    BEQ L_8A9252                    ; $8A9226  F0 2A        MX
    ORA $167D,Y                     ; $8A9228  19 7D 16     MX
    STA $167D,Y                     ; $8A922B  99 7D 16     MX
    LDA #$0002                      ; $8A922E  A9 02 00     MX
    TSB $169A                       ; $8A9231  0C 9A 16     MX
    STA $1D11                       ; $8A9234  8D 11 1D     MX
    LDA #$0001                      ; $8A9237  A9 01 00     MX
    TSB $1690                       ; $8A923A  0C 90 16     MX
    LDA #$0001                      ; $8A923D  A9 01 00     MX
    STA $16B6                       ; $8A9240  8D B6 16     MX
    PHA                             ; $8A9243  48           MX
    PHX                             ; $8A9244  DA           MX
    PHY                             ; $8A9245  5A           MX
    LDA #$0040                      ; $8A9246  A9 40 00     MX
    JSL L_BDFE18                    ; $8A9249  22 18 FE BD  MX
    PLY                             ; $8A924D  7A           MX
    PLX                             ; $8A924E  FA           MX
    PLA                             ; $8A924F  68           MX
    BRA L_8A91F7                    ; $8A9250  80 A5        MX
L_8A9252:
    STZ $00A4                       ; $8A9252  9C A4 00     MX
    LDA $16B4                       ; $8A9255  AD B4 16     MX
    BEQ L_8A9260                    ; $8A9258  F0 06        MX
    LDA $0008                       ; $8A925A  AD 08 00     MX
    STA $00A4                       ; $8A925D  8D A4 00     MX
L_8A9260:
    LDA $16B6                       ; $8A9260  AD B6 16     MX
    BEQ L_8A926E                    ; $8A9263  F0 09        MX
    LDA $00A4                       ; $8A9265  AD A4 00     MX
    ORA $000A                       ; $8A9268  0D 0A 00     MX
    STA $00A4                       ; $8A926B  8D A4 00     MX
L_8A926E:
    LDA $00A4                       ; $8A926E  AD A4 00     MX
    JSR L_8A9C5C                    ; $8A9271  20 5C 9C     MX
    LDA $1690                       ; $8A9274  AD 90 16     MX
    BIT #$0001                      ; $8A9277  89 01 00     MX
    BEQ L_8A927F                    ; $8A927A  F0 03        MX
    JMP L_8A9343                    ; $8A927C  4C 43 93     MX
L_8A927F:
    RTS                             ; $8A927F  60           MX
L_8A9280:
    LDY #$0002                      ; $8A9280  A0 02 00     MX
    LDA $1690                       ; $8A9283  AD 90 16     MX
    BIT #$0008                      ; $8A9286  89 08 00     MX
    BNE L_8A927F                    ; $8A9289  D0 F4        MX
    LDA $16B8                       ; $8A928B  AD B8 16     MX
    BNE L_8A92E1                    ; $8A928E  D0 51        MX
    LDA $000C                       ; $8A9290  AD 0C 00     MX
    BIT #$1000                      ; $8A9293  89 00 10     MX
    BEQ L_8A92E1                    ; $8A9296  F0 49        MX
    ORA $167D,Y                     ; $8A9298  19 7D 16     MX
    STA $167D,Y                     ; $8A929B  99 7D 16     MX
    LDA #$0004                      ; $8A929E  A9 04 00     MX
    TSB $169A                       ; $8A92A1  0C 9A 16     MX
    LDA #$0002                      ; $8A92A4  A9 02 00     MX
    TSB $1690                       ; $8A92A7  0C 90 16     MX
    LDA #$0001                      ; $8A92AA  A9 01 00     MX
    STA $16B8                       ; $8A92AD  8D B8 16     MX
    PHA                             ; $8A92B0  48           MX
    PHX                             ; $8A92B1  DA           MX
    PHY                             ; $8A92B2  5A           MX
    LDA #$0040                      ; $8A92B3  A9 40 00     MX
    JSL L_BDFE18                    ; $8A92B6  22 18 FE BD  MX
    PLY                             ; $8A92BA  7A           MX
    PLX                             ; $8A92BB  FA           MX
    PLA                             ; $8A92BC  68           MX
L_8A92BD:
    LDA $1685                       ; $8A92BD  AD 85 16     MX
    AND #$001F                      ; $8A92C0  29 1F 00     MX
    CMP #$001F                      ; $8A92C3  C9 1F 00     MX
    BNE L_8A9318                    ; $8A92C6  D0 50        MX
    LDA #$8017                      ; $8A92C8  A9 17 80     MX
    STA $1685                       ; $8A92CB  8D 85 16     MX
    LDA $1683                       ; $8A92CE  AD 83 16     MX
    AND #$001F                      ; $8A92D1  29 1F 00     MX
    CMP #$0017                      ; $8A92D4  C9 17 00     MX
    BNE L_8A9318                    ; $8A92D7  D0 3F        MX
    LDA #$8014                      ; $8A92D9  A9 14 80     MX
    STA $1685                       ; $8A92DC  8D 85 16     MX
    BRA L_8A9318                    ; $8A92DF  80 37        MX
L_8A92E1:
    LDA $16BA                       ; $8A92E1  AD BA 16     MX
    BNE L_8A9318                    ; $8A92E4  D0 32        MX
    LDA $000E                       ; $8A92E6  AD 0E 00     MX
    BIT #$1000                      ; $8A92E9  89 00 10     MX
    BEQ L_8A9318                    ; $8A92EC  F0 2A        MX
    ORA $167D,Y                     ; $8A92EE  19 7D 16     MX
    STA $167D,Y                     ; $8A92F1  99 7D 16     MX
    LDA #$0008                      ; $8A92F4  A9 08 00     MX
    TSB $169A                       ; $8A92F7  0C 9A 16     MX
    LDA #$0002                      ; $8A92FA  A9 02 00     MX
    TSB $1690                       ; $8A92FD  0C 90 16     MX
    STA $1D13                       ; $8A9300  8D 13 1D     MX
    LDA #$0001                      ; $8A9303  A9 01 00     MX
    STA $16BA                       ; $8A9306  8D BA 16     MX
    PHA                             ; $8A9309  48           MX
    PHX                             ; $8A930A  DA           MX
    PHY                             ; $8A930B  5A           MX
    LDA #$0040                      ; $8A930C  A9 40 00     MX
    JSL L_BDFE18                    ; $8A930F  22 18 FE BD  MX
    PLY                             ; $8A9313  7A           MX
    PLX                             ; $8A9314  FA           MX
    PLA                             ; $8A9315  68           MX
    BRA L_8A92BD                    ; $8A9316  80 A5        MX
L_8A9318:
    STZ $00A4                       ; $8A9318  9C A4 00     MX
    LDA $16B8                       ; $8A931B  AD B8 16     MX
    BEQ L_8A9326                    ; $8A931E  F0 06        MX
    LDA $000C                       ; $8A9320  AD 0C 00     MX
    STA $00A4                       ; $8A9323  8D A4 00     MX
L_8A9326:
    LDA $16BA                       ; $8A9326  AD BA 16     MX
    BEQ L_8A9334                    ; $8A9329  F0 09        MX
    LDA $00A4                       ; $8A932B  AD A4 00     MX
    ORA $000E                       ; $8A932E  0D 0E 00     MX
    STA $00A4                       ; $8A9331  8D A4 00     MX
L_8A9334:
    LDA $00A4                       ; $8A9334  AD A4 00     MX
    JSR L_8A9C5C                    ; $8A9337  20 5C 9C     MX
    LDA $1690                       ; $8A933A  AD 90 16     MX
    BIT #$0002                      ; $8A933D  89 02 00     MX
    BNE L_8A9343                    ; $8A9340  D0 01        MX
    RTS                             ; $8A9342  60           MX
L_8A9343:
    TYA                             ; $8A9343  98           MX
    STA $00A8                       ; $8A9344  8D A8 00     MX
    EOR #$0002                      ; $8A9347  49 02 00     MX
    STA $00A6                       ; $8A934A  8D A6 00     MX
    LDA $1679                       ; $8A934D  AD 79 16     MX
    STA $167D,Y                     ; $8A9350  99 7D 16     MX
    LDA $1681                       ; $8A9353  AD 81 16     MX
    BIT #$1000                      ; $8A9356  89 00 10     MX
    BEQ L_8A9382                    ; $8A9359  F0 27        MX
    LDA #$0005                      ; $8A935B  A9 05 00     MX
    CPY #$0000                      ; $8A935E  C0 00 00     MX
    BEQ L_8A9366                    ; $8A9361  F0 03        MX
    LDA #$000A                      ; $8A9363  A9 0A 00     MX
L_8A9366:
    PHA                             ; $8A9366  48           MX
    ORA $1692                       ; $8A9367  0D 92 16     MX
    STA $1692                       ; $8A936A  8D 92 16     MX
    PLA                             ; $8A936D  68           MX
    EOR $1690                       ; $8A936E  4D 90 16     MX
    STA $1690                       ; $8A9371  8D 90 16     MX
    PHA                             ; $8A9374  48           MX
    PHX                             ; $8A9375  DA           MX
    PHY                             ; $8A9376  5A           MX
    LDA #$0042                      ; $8A9377  A9 42 00     MX
    JSL L_BDFE18                    ; $8A937A  22 18 FE BD  MX
    PLY                             ; $8A937E  7A           MX
    PLX                             ; $8A937F  FA           MX
    PLA                             ; $8A9380  68           MX
    RTS                             ; $8A9381  60           MX
L_8A9382:
    LDA $1679                       ; $8A9382  AD 79 16     MX
    BIT #$0800                      ; $8A9385  89 00 08     MX
    BEQ L_8A939F                    ; $8A9388  F0 15        MX
    LDA $1683,Y                     ; $8A938A  B9 83 16     MX
    DEC                             ; $8A938D  3A           MX
    AND #$001F                      ; $8A938E  29 1F 00     MX
    CMP #$001F                      ; $8A9391  C9 1F 00     MX
    BNE L_8A9399                    ; $8A9394  D0 03        MX
    LDA #$001A                      ; $8A9396  A9 1A 00     MX
L_8A9399:
    STA $1683,Y                     ; $8A9399  99 83 16     MX
    JMP L_8A9470                    ; $8A939C  4C 70 94     MX
L_8A939F:
    BIT #$0400                      ; $8A939F  89 00 04     MX
    BEQ L_8A93B9                    ; $8A93A2  F0 15        MX
    LDA $1683,Y                     ; $8A93A4  B9 83 16     MX
    INC                             ; $8A93A7  1A           MX
    AND #$001F                      ; $8A93A8  29 1F 00     MX
    CMP #$001B                      ; $8A93AB  C9 1B 00     MX
    BNE L_8A93B3                    ; $8A93AE  D0 03        MX
    LDA #$0000                      ; $8A93B0  A9 00 00     MX
L_8A93B3:
    STA $1683,Y                     ; $8A93B3  99 83 16     MX
    JMP L_8A9470                    ; $8A93B6  4C 70 94     MX
L_8A93B9:
    BIT #$0200                      ; $8A93B9  89 00 02     MX
    BEQ L_8A93F8                    ; $8A93BC  F0 3A        MX
    LDA $1683,Y                     ; $8A93BE  B9 83 16     MX
    AND #$001F                      ; $8A93C1  29 1F 00     MX
    CMP #$0007                      ; $8A93C4  C9 07 00     MX
    BCS L_8A93CF                    ; $8A93C7  B0 06        MX
    CLC                             ; $8A93C9  18           MX
    ADC #$0014                      ; $8A93CA  69 14 00     MX
    BRA L_8A93F2                    ; $8A93CD  80 23        MX
L_8A93CF:
    CMP #$000D                      ; $8A93CF  C9 0D 00     MX
    BCS L_8A93DA                    ; $8A93D2  B0 06        MX
    SEC                             ; $8A93D4  38           MX
    SBC #$0007                      ; $8A93D5  E9 07 00     MX
    BRA L_8A93F2                    ; $8A93D8  80 18        MX
L_8A93DA:
    CMP #$0014                      ; $8A93DA  C9 14 00     MX
    BCS L_8A93EE                    ; $8A93DD  B0 0F        MX
    CMP #$0013                      ; $8A93DF  C9 13 00     MX
    BNE L_8A93E8                    ; $8A93E2  D0 04        MX
    SEC                             ; $8A93E4  38           MX
    SBC #$0007                      ; $8A93E5  E9 07 00     MX
L_8A93E8:
    SEC                             ; $8A93E8  38           MX
    SBC #$0006                      ; $8A93E9  E9 06 00     MX
    BRA L_8A93F2                    ; $8A93EC  80 04        MX
L_8A93EE:
    SEC                             ; $8A93EE  38           MX
    SBC #$0007                      ; $8A93EF  E9 07 00     MX
L_8A93F2:
    STA $1683,Y                     ; $8A93F2  99 83 16     MX
    JMP L_8A9470                    ; $8A93F5  4C 70 94     MX
L_8A93F8:
    BIT #$0100                      ; $8A93F8  89 00 01     MX
    BEQ L_8A9436                    ; $8A93FB  F0 39        MX
    LDA $1683,Y                     ; $8A93FD  B9 83 16     MX
    AND #$001F                      ; $8A9400  29 1F 00     MX
    CMP #$0007                      ; $8A9403  C9 07 00     MX
    BCS L_8A9417                    ; $8A9406  B0 0F        MX
    CMP #$0006                      ; $8A9408  C9 06 00     MX
    BNE L_8A9411                    ; $8A940B  D0 04        MX
    CLC                             ; $8A940D  18           MX
    ADC #$0006                      ; $8A940E  69 06 00     MX
L_8A9411:
    CLC                             ; $8A9411  18           MX
    ADC #$0007                      ; $8A9412  69 07 00     MX
    BRA L_8A9431                    ; $8A9415  80 1A        MX
L_8A9417:
    CMP #$000D                      ; $8A9417  C9 0D 00     MX
    BCS L_8A9422                    ; $8A941A  B0 06        MX
    CLC                             ; $8A941C  18           MX
    ADC #$0006                      ; $8A941D  69 06 00     MX
    BRA L_8A9431                    ; $8A9420  80 0F        MX
L_8A9422:
    CMP #$0014                      ; $8A9422  C9 14 00     MX
    BCS L_8A942D                    ; $8A9425  B0 06        MX
    CLC                             ; $8A9427  18           MX
    ADC #$0007                      ; $8A9428  69 07 00     MX
    BRA L_8A9431                    ; $8A942B  80 04        MX
L_8A942D:
    SEC                             ; $8A942D  38           MX
    SBC #$0014                      ; $8A942E  E9 14 00     MX
L_8A9431:
    STA $1683,Y                     ; $8A9431  99 83 16     MX
    BRA L_8A9470                    ; $8A9434  80 3A        MX
L_8A9436:
    BIT #$C0C0                      ; $8A9436  89 C0 C0     MX
    BNE L_8A9444                    ; $8A9439  D0 09        MX
    TYA                             ; $8A943B  98           MX
    CLC                             ; $8A943C  18           MX
    ADC #$0002                      ; $8A943D  69 02 00     MX
    TRB $167B                       ; $8A9440  1C 7B 16     MX
L_8A9443:
    RTS                             ; $8A9443  60           MX
L_8A9444:
    TYA                             ; $8A9444  98           MX
    CLC                             ; $8A9445  18           MX
    ADC #$0002                      ; $8A9446  69 02 00     MX
    AND $167B                       ; $8A9449  2D 7B 16     MX
    BNE L_8A9443                    ; $8A944C  D0 F5        MX
    TYA                             ; $8A944E  98           MX
    CLC                             ; $8A944F  18           MX
    ADC #$0002                      ; $8A9450  69 02 00     MX
    TSB $167B                       ; $8A9453  0C 7B 16     MX
    LDA $1683,Y                     ; $8A9456  B9 83 16     MX
    EOR #$0040                      ; $8A9459  49 40 00     MX
    ORA #$8000                      ; $8A945C  09 00 80     MX
    STA $1683,Y                     ; $8A945F  99 83 16     MX
    PHA                             ; $8A9462  48           MX
    PHX                             ; $8A9463  DA           MX
    PHY                             ; $8A9464  5A           MX
    LDA #$0045                      ; $8A9465  A9 45 00     MX
    JSL L_BDFE18                    ; $8A9468  22 18 FE BD  MX
    PLY                             ; $8A946C  7A           MX
    PLX                             ; $8A946D  FA           MX
    PLA                             ; $8A946E  68           MX
    RTS                             ; $8A946F  60           MX
L_8A9470:
    PHA                             ; $8A9470  48           MX
    PHX                             ; $8A9471  DA           MX
    PHY                             ; $8A9472  5A           MX
    LDA #$0041                      ; $8A9473  A9 41 00     MX
    JSL L_BDFE18                    ; $8A9476  22 18 FE BD  MX
    PLY                             ; $8A947A  7A           MX
    PLX                             ; $8A947B  FA           MX
    PLA                             ; $8A947C  68           MX
    LDY $00A6                       ; $8A947D  AC A6 00     MX
    LDA $1683,Y                     ; $8A9480  B9 83 16     MX
    AND #$001F                      ; $8A9483  29 1F 00     MX
    STA $00A4                       ; $8A9486  8D A4 00     MX
    LDY $00A8                       ; $8A9489  AC A8 00     MX
    LDA $1683,Y                     ; $8A948C  B9 83 16     MX
    AND #$001F                      ; $8A948F  29 1F 00     MX
    CMP $00A4                       ; $8A9492  CD A4 00     MX
    BNE L_8A949A                    ; $8A9495  D0 03        MX
    JMP L_8A9343                    ; $8A9497  4C 43 93     MX
L_8A949A:
    LDA $1683,Y                     ; $8A949A  B9 83 16     MX
    ORA #$8000                      ; $8A949D  09 00 80     MX
    STA $1683,Y                     ; $8A94A0  99 83 16     MX
    RTS                             ; $8A94A3  60           MX
L_8A94A4:
    LDA $1690                       ; $8A94A4  AD 90 16     MX
    BIT #$0001                      ; $8A94A7  89 01 00     MX
    BEQ L_8A94E4                    ; $8A94AA  F0 38        MX
    LDA $1683                       ; $8A94AC  AD 83 16     MX
    AND #$001F                      ; $8A94AF  29 1F 00     MX
    ASL                             ; $8A94B2  0A           MX
    TAX                             ; $8A94B3  AA           MX
    LDA $0A9D61,X                   ; $8A94B4  BF 61 9D 0A  MX
    STA $00EE                       ; $8A94B8  8D EE 00     MX
    LDA $0A9D2B,X                   ; $8A94BB  BF 2B 9D 0A  MX
    SEC                             ; $8A94BF  38           MX
    SBC #$0011                      ; $8A94C0  E9 11 00     MX
    STA $00F0                       ; $8A94C3  8D F0 00     MX
    LDA #$0104                      ; $8A94C6  A9 04 01     MX
    STA $00F2                       ; $8A94C9  8D F2 00     MX
    LDA $1D11                       ; $8A94CC  AD 11 1D     MX
    BEQ L_8A94D7                    ; $8A94CF  F0 06        MX
    LDA #$0124                      ; $8A94D1  A9 24 01     MX
    STA $00F2                       ; $8A94D4  8D F2 00     MX
L_8A94D7:
    SEP #$20                        ; $8A94D7  E2 20        MX
    LDA #$2A                        ; $8A94D9  A9 2A        mX
    STA $002A                       ; $8A94DB  8D 2A 00     mX
    REP #$20                        ; $8A94DE  C2 20        mX
    JSL $2BE007                     ; $8A94E0  22 07 E0 2B  MX
L_8A94E4:
    LDA $1690                       ; $8A94E4  AD 90 16     MX
    BIT #$0002                      ; $8A94E7  89 02 00     MX
    BEQ L_8A9528                    ; $8A94EA  F0 3C        MX
    LDA $1685                       ; $8A94EC  AD 85 16     MX
    AND #$001F                      ; $8A94EF  29 1F 00     MX
    ASL                             ; $8A94F2  0A           MX
    TAX                             ; $8A94F3  AA           MX
    LDA $0A9D61,X                   ; $8A94F4  BF 61 9D 0A  MX
    CLC                             ; $8A94F8  18           MX
    ADC #$0008                      ; $8A94F9  69 08 00     MX
    STA $00EE                       ; $8A94FC  8D EE 00     MX
    LDA $0A9D2B,X                   ; $8A94FF  BF 2B 9D 0A  MX
    SEC                             ; $8A9503  38           MX
    SBC #$0011                      ; $8A9504  E9 11 00     MX
    STA $00F0                       ; $8A9507  8D F0 00     MX
    LDA #$0126                      ; $8A950A  A9 26 01     MX
    STA $00F2                       ; $8A950D  8D F2 00     MX
    LDA $1D13                       ; $8A9510  AD 13 1D     MX
    BEQ L_8A951B                    ; $8A9513  F0 06        MX
    LDA #$0128                      ; $8A9515  A9 28 01     MX
    STA $00F2                       ; $8A9518  8D F2 00     MX
L_8A951B:
    SEP #$20                        ; $8A951B  E2 20        MX
    LDA #$2A                        ; $8A951D  A9 2A        mX
    STA $002A                       ; $8A951F  8D 2A 00     mX
    REP #$20                        ; $8A9522  C2 20        mX
    JSL $2BE007                     ; $8A9524  22 07 E0 2B  MX
L_8A9528:
    LDA $1690                       ; $8A9528  AD 90 16     MX
    BIT #$0001                      ; $8A952B  89 01 00     MX
    BEQ L_8A9588                    ; $8A952E  F0 58        MX
    LDA $1683                       ; $8A9530  AD 83 16     MX
    BIT #$1000                      ; $8A9533  89 00 10     MX
    BNE L_8A9588                    ; $8A9536  D0 50        MX
    AND #$001F                      ; $8A9538  29 1F 00     MX
    ASL                             ; $8A953B  0A           MX
    TAX                             ; $8A953C  AA           MX
    LDA $0A9D61,X                   ; $8A953D  BF 61 9D 0A  MX
    STA $00EE                       ; $8A9541  8D EE 00     MX
    LDA $0A9D2B,X                   ; $8A9544  BF 2B 9D 0A  MX
    STA $00F0                       ; $8A9548  8D F0 00     MX
    LDA #$0100                      ; $8A954B  A9 00 01     MX
    STA $00F2                       ; $8A954E  8D F2 00     MX
    SEP #$20                        ; $8A9551  E2 20        MX
    LDA #$0A                        ; $8A9553  A9 0A        mX
    STA $002A                       ; $8A9555  8D 2A 00     mX
    REP #$20                        ; $8A9558  C2 20        mX
    JSL $2BE007                     ; $8A955A  22 07 E0 2B  MX
    LDA $00EE                       ; $8A955E  AD EE 00     MX
    CLC                             ; $8A9561  18           MX
    ADC #$000C                      ; $8A9562  69 0C 00     MX
    STA $00EE                       ; $8A9565  8D EE 00     MX
    JSL $2BE007                     ; $8A9568  22 07 E0 2B  MX
    LDA $00EE                       ; $8A956C  AD EE 00     MX
    CLC                             ; $8A956F  18           MX
    ADC #$000C                      ; $8A9570  69 0C 00     MX
    STA $00EE                       ; $8A9573  8D EE 00     MX
    JSL $2BE007                     ; $8A9576  22 07 E0 2B  MX
    LDA $00EE                       ; $8A957A  AD EE 00     MX
    CLC                             ; $8A957D  18           MX
    ADC #$FFFD                      ; $8A957E  69 FD FF     MX
    STA $00EE                       ; $8A9581  8D EE 00     MX
    JSL $2BE007                     ; $8A9584  22 07 E0 2B  MX
L_8A9588:
    LDA $1690                       ; $8A9588  AD 90 16     MX
    BIT #$0002                      ; $8A958B  89 02 00     MX
    BEQ L_8A95E8                    ; $8A958E  F0 58        MX
    LDA $1685                       ; $8A9590  AD 85 16     MX
    BIT #$1000                      ; $8A9593  89 00 10     MX
    BNE L_8A95E8                    ; $8A9596  D0 50        MX
    AND #$001F                      ; $8A9598  29 1F 00     MX
    ASL                             ; $8A959B  0A           MX
    TAX                             ; $8A959C  AA           MX
    LDA $0A9D61,X                   ; $8A959D  BF 61 9D 0A  MX
    STA $00EE                       ; $8A95A1  8D EE 00     MX
    LDA $0A9D2B,X                   ; $8A95A4  BF 2B 9D 0A  MX
    STA $00F0                       ; $8A95A8  8D F0 00     MX
    LDA #$0102                      ; $8A95AB  A9 02 01     MX
    STA $00F2                       ; $8A95AE  8D F2 00     MX
    SEP #$20                        ; $8A95B1  E2 20        MX
    LDA #$0A                        ; $8A95B3  A9 0A        mX
    STA $002A                       ; $8A95B5  8D 2A 00     mX
    REP #$20                        ; $8A95B8  C2 20        mX
    JSL $2BE007                     ; $8A95BA  22 07 E0 2B  MX
    LDA $00EE                       ; $8A95BE  AD EE 00     MX
    CLC                             ; $8A95C1  18           MX
    ADC #$000C                      ; $8A95C2  69 0C 00     MX
    STA $00EE                       ; $8A95C5  8D EE 00     MX
    JSL $2BE007                     ; $8A95C8  22 07 E0 2B  MX
    LDA $00EE                       ; $8A95CC  AD EE 00     MX
    CLC                             ; $8A95CF  18           MX
    ADC #$000C                      ; $8A95D0  69 0C 00     MX
    STA $00EE                       ; $8A95D3  8D EE 00     MX
    JSL $2BE007                     ; $8A95D6  22 07 E0 2B  MX
    LDA $00EE                       ; $8A95DA  AD EE 00     MX
    CLC                             ; $8A95DD  18           MX
    ADC #$FFFD                      ; $8A95DE  69 FD FF     MX
    STA $00EE                       ; $8A95E1  8D EE 00     MX
    JSL $2BE007                     ; $8A95E4  22 07 E0 2B  MX
L_8A95E8:
    LDA $1683                       ; $8A95E8  AD 83 16     MX
    XBA                             ; $8A95EB  EB           MX
    PHA                             ; $8A95EC  48           MX
    AND #$0080                      ; $8A95ED  29 80 00     MX
    STA $00A4                       ; $8A95F0  8D A4 00     MX
    PLA                             ; $8A95F3  68           MX
    INC                             ; $8A95F4  1A           MX
    AND #$FF1F                      ; $8A95F5  29 1F FF     MX
    ORA $00A4                       ; $8A95F8  0D A4 00     MX
    XBA                             ; $8A95FB  EB           MX
    STA $1683                       ; $8A95FC  8D 83 16     MX
    LDA $1685                       ; $8A95FF  AD 85 16     MX
    XBA                             ; $8A9602  EB           MX
    PHA                             ; $8A9603  48           MX
    AND #$0080                      ; $8A9604  29 80 00     MX
    STA $00A4                       ; $8A9607  8D A4 00     MX
    PLA                             ; $8A960A  68           MX
    INC                             ; $8A960B  1A           MX
    AND #$FF1F                      ; $8A960C  29 1F FF     MX
    ORA $00A4                       ; $8A960F  0D A4 00     MX
    XBA                             ; $8A9612  EB           MX
    STA $1685                       ; $8A9613  8D 85 16     MX
    LDA $1690                       ; $8A9616  AD 90 16     MX
    BIT #$0004                      ; $8A9619  89 04 00     MX
    BNE L_8A9623                    ; $8A961C  D0 05        MX
    BIT #$0001                      ; $8A961E  89 01 00     MX
    BEQ L_8A9685                    ; $8A9621  F0 62        MX
L_8A9623:
    LDA $1683                       ; $8A9623  AD 83 16     MX
    BMI L_8A9685                    ; $8A9626  30 5D        MX
    AND #$001F                      ; $8A9628  29 1F 00     MX
    ASL                             ; $8A962B  0A           MX
    ASL                             ; $8A962C  0A           MX
    ASL                             ; $8A962D  0A           MX
    TAX                             ; $8A962E  AA           MX
    LDA #$001C                      ; $8A962F  A9 1C 00     MX
    STA $0024                       ; $8A9632  8D 24 00     MX
    LDA #$006C                      ; $8A9635  A9 6C 00     MX
    STA $0026                       ; $8A9638  8D 26 00     MX
    LDA $0DAD57,X                   ; $8A963B  BF 57 AD 0D  MX
    STA $0020                       ; $8A963F  8D 20 00     MX
    LDA #$0040                      ; $8A9642  A9 40 00     MX
    STA $002C                       ; $8A9645  8D 2C 00     MX
    SEP #$20                        ; $8A9648  E2 20        MX
    LDA $0DAD59,X                   ; $8A964A  BF 59 AD 0D  mX
    STA $0022                       ; $8A964E  8D 22 00     mX
    LDA #$0C                        ; $8A9651  A9 0C        mX
    STA $0028                       ; $8A9653  8D 28 00     mX
    REP #$20                        ; $8A9656  C2 20        mX
    PHX                             ; $8A9658  DA           MX
    JSL $2BE2EA                     ; $8A9659  22 EA E2 2B  MX
    PLX                             ; $8A965D  FA           MX
    LDA $0DAE2F,X                   ; $8A965E  BF 2F AE 0D  MX
    CMP $0DAD57,X                   ; $8A9662  DF 57 AD 0D  MX
    BEQ L_8A9685                    ; $8A9666  F0 1D        MX
    STA $0020                       ; $8A9668  8D 20 00     MX
    LDA #$01C0                      ; $8A966B  A9 C0 01     MX
    STA $002C                       ; $8A966E  8D 2C 00     MX
    SEP #$20                        ; $8A9671  E2 20        MX
    LDA $0DAE31,X                   ; $8A9673  BF 31 AE 0D  mX
    STA $0022                       ; $8A9677  8D 22 00     mX
    LDA #$0C                        ; $8A967A  A9 0C        mX
    STA $0028                       ; $8A967C  8D 28 00     mX
    REP #$20                        ; $8A967F  C2 20        mX
    JSL $2BE2EA                     ; $8A9681  22 EA E2 2B  MX
L_8A9685:
    LDA $1690                       ; $8A9685  AD 90 16     MX
    BIT #$0008                      ; $8A9688  89 08 00     MX
    BNE L_8A9692                    ; $8A968B  D0 05        MX
    BIT #$0002                      ; $8A968D  89 02 00     MX
    BEQ L_8A96F4                    ; $8A9690  F0 62        MX
L_8A9692:
    LDA $1685                       ; $8A9692  AD 85 16     MX
    BMI L_8A96F4                    ; $8A9695  30 5D        MX
    AND #$001F                      ; $8A9697  29 1F 00     MX
    ASL                             ; $8A969A  0A           MX
    ASL                             ; $8A969B  0A           MX
    ASL                             ; $8A969C  0A           MX
    TAX                             ; $8A969D  AA           MX
    LDA #$009C                      ; $8A969E  A9 9C 00     MX
    STA $0024                       ; $8A96A1  8D 24 00     MX
    LDA #$006C                      ; $8A96A4  A9 6C 00     MX
    STA $0026                       ; $8A96A7  8D 26 00     MX
    LDA $0DAD57,X                   ; $8A96AA  BF 57 AD 0D  MX
    STA $0020                       ; $8A96AE  8D 20 00     MX
    LDA #$0060                      ; $8A96B1  A9 60 00     MX
    STA $002C                       ; $8A96B4  8D 2C 00     MX
    SEP #$20                        ; $8A96B7  E2 20        MX
    LDA $0DAD59,X                   ; $8A96B9  BF 59 AD 0D  mX
    STA $0022                       ; $8A96BD  8D 22 00     mX
    LDA #$0E                        ; $8A96C0  A9 0E        mX
    STA $0028                       ; $8A96C2  8D 28 00     mX
    REP #$20                        ; $8A96C5  C2 20        mX
    PHX                             ; $8A96C7  DA           MX
    JSL $2BE2EA                     ; $8A96C8  22 EA E2 2B  MX
    PLX                             ; $8A96CC  FA           MX
    LDA $0DAE2F,X                   ; $8A96CD  BF 2F AE 0D  MX
    CMP $0DAD57,X                   ; $8A96D1  DF 57 AD 0D  MX
    BEQ L_8A96F4                    ; $8A96D5  F0 1D        MX
    STA $0020                       ; $8A96D7  8D 20 00     MX
    LDA #$01E0                      ; $8A96DA  A9 E0 01     MX
    STA $002C                       ; $8A96DD  8D 2C 00     MX
    SEP #$20                        ; $8A96E0  E2 20        MX
    LDA $0DAE31,X                   ; $8A96E2  BF 31 AE 0D  mX
    STA $0022                       ; $8A96E6  8D 22 00     mX
    LDA #$0E                        ; $8A96E9  A9 0E        mX
    STA $0028                       ; $8A96EB  8D 28 00     mX
    REP #$20                        ; $8A96EE  C2 20        mX
    JSL $2BE2EA                     ; $8A96F0  22 EA E2 2B  MX
L_8A96F4:
    LDA $1690                       ; $8A96F4  AD 90 16     MX
    BIT #$0004                      ; $8A96F7  89 04 00     MX
    BNE L_8A9704                    ; $8A96FA  D0 08        MX
    BIT #$0001                      ; $8A96FC  89 01 00     MX
    BNE L_8A9704                    ; $8A96FF  D0 03        MX
    JMP L_8A9780                    ; $8A9701  4C 80 97     MX
L_8A9704:
    LDA $1683                       ; $8A9704  AD 83 16     MX
    STA $00A4                       ; $8A9707  8D A4 00     MX
    LDA $1CD9                       ; $8A970A  AD D9 1C     MX
    AND $1CDB                       ; $8A970D  2D DB 1C     MX
    BMI L_8A9718                    ; $8A9710  30 06        MX
    LDA #$0040                      ; $8A9712  A9 40 00     MX
    TSB $00A4                       ; $8A9715  0C A4 00     MX
L_8A9718:
    LDA $00A4                       ; $8A9718  AD A4 00     MX
    BMI L_8A9780                    ; $8A971B  30 63        MX
    LDY #$0080                      ; $8A971D  A0 80 00     MX
    BIT #$0040                      ; $8A9720  89 40 00     MX
    BEQ L_8A9728                    ; $8A9723  F0 03        MX
    LDY #$0086                      ; $8A9725  A0 86 00     MX
L_8A9728:
    STY $00F2                       ; $8A9728  8C F2 00     MX
    AND #$005F                      ; $8A972B  29 5F 00     MX
    CMP #$0019                      ; $8A972E  C9 19 00     MX
    BEQ L_8A973B                    ; $8A9731  F0 08        MX
    LDA $1CD9                       ; $8A9733  AD D9 1C     MX
    CMP #$0041                      ; $8A9736  C9 41 00     MX
    BNE L_8A9740                    ; $8A9739  D0 05        MX
L_8A973B:
    LDA #$0005                      ; $8A973B  A9 05 00     MX
    BRA L_8A9743                    ; $8A973E  80 03        MX
L_8A9740:
    LDA #$0000                      ; $8A9740  A9 00 00     MX
L_8A9743:
    STA $00EE                       ; $8A9743  8D EE 00     MX
    SEP #$20                        ; $8A9746  E2 20        MX
    LDA #$2A                        ; $8A9748  A9 2A        mX
    STA $002A                       ; $8A974A  8D 2A 00     mX
    REP #$20                        ; $8A974D  C2 20        mX
    JSR L_8A9A7C                    ; $8A974F  20 7C 9A     MX
    LDA $00F2                       ; $8A9752  AD F2 00     MX
    SEC                             ; $8A9755  38           MX
    SBC #$0004                      ; $8A9756  E9 04 00     MX
    EOR #$0006                      ; $8A9759  49 06 00     MX
    STA $00F2                       ; $8A975C  8D F2 00     MX
    LDA $00A4                       ; $8A975F  AD A4 00     MX
    AND #$005F                      ; $8A9762  29 5F 00     MX
    CMP #$0059                      ; $8A9765  C9 59 00     MX
    BEQ L_8A9772                    ; $8A9768  F0 08        MX
    LDA $1CDB                       ; $8A976A  AD DB 1C     MX
    CMP #$0041                      ; $8A976D  C9 41 00     MX
    BNE L_8A9777                    ; $8A9770  D0 05        MX
L_8A9772:
    LDA #$0044                      ; $8A9772  A9 44 00     MX
    BRA L_8A977A                    ; $8A9775  80 03        MX
L_8A9777:
    LDA #$0048                      ; $8A9777  A9 48 00     MX
L_8A977A:
    STA $00EE                       ; $8A977A  8D EE 00     MX
    JSR L_8A9A7C                    ; $8A977D  20 7C 9A     MX
L_8A9780:
    LDA $1690                       ; $8A9780  AD 90 16     MX
    BIT #$0008                      ; $8A9783  89 08 00     MX
    BNE L_8A9790                    ; $8A9786  D0 08        MX
    BIT #$0002                      ; $8A9788  89 02 00     MX
    BNE L_8A9790                    ; $8A978B  D0 03        MX
    JMP L_8A980C                    ; $8A978D  4C 0C 98     MX
L_8A9790:
    LDA $1685                       ; $8A9790  AD 85 16     MX
    STA $00A4                       ; $8A9793  8D A4 00     MX
    LDA $1CDD                       ; $8A9796  AD DD 1C     MX
    AND $1CDF                       ; $8A9799  2D DF 1C     MX
    BMI L_8A97A4                    ; $8A979C  30 06        MX
    LDA #$0040                      ; $8A979E  A9 40 00     MX
    TSB $00A4                       ; $8A97A1  0C A4 00     MX
L_8A97A4:
    LDA $00A4                       ; $8A97A4  AD A4 00     MX
    BMI L_8A980C                    ; $8A97A7  30 63        MX
    LDY #$00C0                      ; $8A97A9  A0 C0 00     MX
    BIT #$0040                      ; $8A97AC  89 40 00     MX
    BEQ L_8A97B4                    ; $8A97AF  F0 03        MX
    LDY #$00C6                      ; $8A97B1  A0 C6 00     MX
L_8A97B4:
    STY $00F2                       ; $8A97B4  8C F2 00     MX
    AND #$005F                      ; $8A97B7  29 5F 00     MX
    CMP #$0019                      ; $8A97BA  C9 19 00     MX
    BEQ L_8A97C7                    ; $8A97BD  F0 08        MX
    LDA $1CDD                       ; $8A97BF  AD DD 1C     MX
    CMP #$0041                      ; $8A97C2  C9 41 00     MX
    BNE L_8A97CC                    ; $8A97C5  D0 05        MX
L_8A97C7:
    LDA #$0085                      ; $8A97C7  A9 85 00     MX
    BRA L_8A97CF                    ; $8A97CA  80 03        MX
L_8A97CC:
    LDA #$0080                      ; $8A97CC  A9 80 00     MX
L_8A97CF:
    STA $00EE                       ; $8A97CF  8D EE 00     MX
    SEP #$20                        ; $8A97D2  E2 20        MX
    LDA #$2A                        ; $8A97D4  A9 2A        mX
    STA $002A                       ; $8A97D6  8D 2A 00     mX
    REP #$20                        ; $8A97D9  C2 20        mX
    JSR L_8A9A7C                    ; $8A97DB  20 7C 9A     MX
    LDA $00F2                       ; $8A97DE  AD F2 00     MX
    SEC                             ; $8A97E1  38           MX
    SBC #$0004                      ; $8A97E2  E9 04 00     MX
    EOR #$0006                      ; $8A97E5  49 06 00     MX
    STA $00F2                       ; $8A97E8  8D F2 00     MX
    LDA $00A4                       ; $8A97EB  AD A4 00     MX
    AND #$005F                      ; $8A97EE  29 5F 00     MX
    CMP #$0059                      ; $8A97F1  C9 59 00     MX
    BEQ L_8A97FE                    ; $8A97F4  F0 08        MX
    LDA $1CDF                       ; $8A97F6  AD DF 1C     MX
    CMP #$0041                      ; $8A97F9  C9 41 00     MX
    BNE L_8A9803                    ; $8A97FC  D0 05        MX
L_8A97FE:
    LDA #$00C4                      ; $8A97FE  A9 C4 00     MX
    BRA L_8A9806                    ; $8A9801  80 03        MX
L_8A9803:
    LDA #$00C8                      ; $8A9803  A9 C8 00     MX
L_8A9806:
    STA $00EE                       ; $8A9806  8D EE 00     MX
    JSR L_8A9A7C                    ; $8A9809  20 7C 9A     MX
L_8A980C:
    LDA $1683                       ; $8A980C  AD 83 16     MX
    LDY #$0000                      ; $8A980F  A0 00 00     MX
    BIT #$0040                      ; $8A9812  89 40 00     MX
    BEQ L_8A981A                    ; $8A9815  F0 03        MX
    LDY #$0002                      ; $8A9817  A0 02 00     MX
L_8A981A:
    AND #$001F                      ; $8A981A  29 1F 00     MX
    ASL                             ; $8A981D  0A           MX
    ASL                             ; $8A981E  0A           MX
    STY $00A8                       ; $8A981F  8C A8 00     MX
    ORA $00A8                       ; $8A9822  0D A8 00     MX
    TAX                             ; $8A9825  AA           MX
    LDA $0DB047,X                   ; $8A9826  BF 47 B0 0D  MX
    STA $00A8                       ; $8A982A  8D A8 00     MX
    LDA $1690                       ; $8A982D  AD 90 16     MX
    BIT #$0005                      ; $8A9830  89 05 00     MX
    BNE L_8A9838                    ; $8A9833  D0 03        MX
    JMP L_8A98B9                    ; $8A9835  4C B9 98     MX
L_8A9838:
    LDA #$000C                      ; $8A9838  A9 0C 00     MX
    STA $00EE                       ; $8A983B  8D EE 00     MX
    LDA #$00BA                      ; $8A983E  A9 BA 00     MX
    STA $00F0                       ; $8A9841  8D F0 00     MX
    PHY                             ; $8A9844  5A           MX
    LDA #$0004                      ; $8A9845  A9 04 00     MX
    STA $00AA                       ; $8A9848  8D AA 00     MX
L_8A984B:
    LDA $00A8                       ; $8A984B  AD A8 00     MX
    AND #$0007                      ; $8A984E  29 07 00     MX
    LSR $00A8                       ; $8A9851  4E A8 00     MX
    LSR $00A8                       ; $8A9854  4E A8 00     MX
    LSR $00A8                       ; $8A9857  4E A8 00     MX
    LSR $00A8                       ; $8A985A  4E A8 00     MX
    JSR L_8A9A09                    ; $8A985D  20 09 9A     MX
    DEC $00AA                       ; $8A9860  CE AA 00     MX
    BNE L_8A984B                    ; $8A9863  D0 E6        MX
    PLA                             ; $8A9865  68           MX
    EOR #$0002                      ; $8A9866  49 02 00     MX
    STA $00A8                       ; $8A9869  8D A8 00     MX
    LDA $1683                       ; $8A986C  AD 83 16     MX
    AND #$001F                      ; $8A986F  29 1F 00     MX
    ASL                             ; $8A9872  0A           MX
    ASL                             ; $8A9873  0A           MX
    ORA $00A8                       ; $8A9874  0D A8 00     MX
    TAX                             ; $8A9877  AA           MX
    LDA $0DB047,X                   ; $8A9878  BF 47 B0 0D  MX
    STA $00A8                       ; $8A987C  8D A8 00     MX
    LDA $1690                       ; $8A987F  AD 90 16     MX
    BIT #$0005                      ; $8A9882  89 05 00     MX
    BNE L_8A988D                    ; $8A9885  D0 06        MX
    LDA #$0000                      ; $8A9887  A9 00 00     MX
    STA $00A8                       ; $8A988A  8D A8 00     MX
L_8A988D:
    LDA #$0054                      ; $8A988D  A9 54 00     MX
    STA $00EE                       ; $8A9890  8D EE 00     MX
    LDA #$00BA                      ; $8A9893  A9 BA 00     MX
    STA $00F0                       ; $8A9896  8D F0 00     MX
    LDA #$0004                      ; $8A9899  A9 04 00     MX
    STA $00AA                       ; $8A989C  8D AA 00     MX
L_8A989F:
    LDA $00A8                       ; $8A989F  AD A8 00     MX
    AND #$0007                      ; $8A98A2  29 07 00     MX
    LSR $00A8                       ; $8A98A5  4E A8 00     MX
    LSR $00A8                       ; $8A98A8  4E A8 00     MX
    LSR $00A8                       ; $8A98AB  4E A8 00     MX
    LSR $00A8                       ; $8A98AE  4E A8 00     MX
    JSR L_8A9A09                    ; $8A98B1  20 09 9A     MX
    DEC $00AA                       ; $8A98B4  CE AA 00     MX
    BNE L_8A989F                    ; $8A98B7  D0 E6        MX
L_8A98B9:
    LDA $1685                       ; $8A98B9  AD 85 16     MX
    LDY #$0000                      ; $8A98BC  A0 00 00     MX
    BIT #$0040                      ; $8A98BF  89 40 00     MX
    BEQ L_8A98C7                    ; $8A98C2  F0 03        MX
    LDY #$0002                      ; $8A98C4  A0 02 00     MX
L_8A98C7:
    AND #$001F                      ; $8A98C7  29 1F 00     MX
    ASL                             ; $8A98CA  0A           MX
    ASL                             ; $8A98CB  0A           MX
    STY $00A8                       ; $8A98CC  8C A8 00     MX
    ORA $00A8                       ; $8A98CF  0D A8 00     MX
    TAX                             ; $8A98D2  AA           MX
    LDA $0DB047,X                   ; $8A98D3  BF 47 B0 0D  MX
    STA $00A8                       ; $8A98D7  8D A8 00     MX
    LDA $1690                       ; $8A98DA  AD 90 16     MX
    BIT #$000A                      ; $8A98DD  89 0A 00     MX
    BNE L_8A98E5                    ; $8A98E0  D0 03        MX
    JMP L_8A9966                    ; $8A98E2  4C 66 99     MX
L_8A98E5:
    LDA #$008C                      ; $8A98E5  A9 8C 00     MX
    STA $00EE                       ; $8A98E8  8D EE 00     MX
    LDA #$00BA                      ; $8A98EB  A9 BA 00     MX
    STA $00F0                       ; $8A98EE  8D F0 00     MX
    PHY                             ; $8A98F1  5A           MX
    LDA #$0004                      ; $8A98F2  A9 04 00     MX
    STA $00AA                       ; $8A98F5  8D AA 00     MX
L_8A98F8:
    LDA $00A8                       ; $8A98F8  AD A8 00     MX
    AND #$0007                      ; $8A98FB  29 07 00     MX
    LSR $00A8                       ; $8A98FE  4E A8 00     MX
    LSR $00A8                       ; $8A9901  4E A8 00     MX
    LSR $00A8                       ; $8A9904  4E A8 00     MX
    LSR $00A8                       ; $8A9907  4E A8 00     MX
    JSR L_8A9A09                    ; $8A990A  20 09 9A     MX
    DEC $00AA                       ; $8A990D  CE AA 00     MX
    BNE L_8A98F8                    ; $8A9910  D0 E6        MX
    PLA                             ; $8A9912  68           MX
    EOR #$0002                      ; $8A9913  49 02 00     MX
    STA $00A8                       ; $8A9916  8D A8 00     MX
    LDA $1685                       ; $8A9919  AD 85 16     MX
    AND #$001F                      ; $8A991C  29 1F 00     MX
    ASL                             ; $8A991F  0A           MX
    ASL                             ; $8A9920  0A           MX
    ORA $00A8                       ; $8A9921  0D A8 00     MX
    TAX                             ; $8A9924  AA           MX
    LDA $0DB047,X                   ; $8A9925  BF 47 B0 0D  MX
    STA $00A8                       ; $8A9929  8D A8 00     MX
    LDA $1690                       ; $8A992C  AD 90 16     MX
    BIT #$000A                      ; $8A992F  89 0A 00     MX
    BNE L_8A993A                    ; $8A9932  D0 06        MX
    LDA #$0000                      ; $8A9934  A9 00 00     MX
    STA $00A8                       ; $8A9937  8D A8 00     MX
L_8A993A:
    LDA #$00D4                      ; $8A993A  A9 D4 00     MX
    STA $00EE                       ; $8A993D  8D EE 00     MX
    LDA #$00BA                      ; $8A9940  A9 BA 00     MX
    STA $00F0                       ; $8A9943  8D F0 00     MX
    LDA #$0004                      ; $8A9946  A9 04 00     MX
    STA $00AA                       ; $8A9949  8D AA 00     MX
L_8A994C:
    LDA $00A8                       ; $8A994C  AD A8 00     MX
    AND #$0007                      ; $8A994F  29 07 00     MX
    LSR $00A8                       ; $8A9952  4E A8 00     MX
    LSR $00A8                       ; $8A9955  4E A8 00     MX
    LSR $00A8                       ; $8A9958  4E A8 00     MX
    LSR $00A8                       ; $8A995B  4E A8 00     MX
    JSR L_8A9A09                    ; $8A995E  20 09 9A     MX
    DEC $00AA                       ; $8A9961  CE AA 00     MX
    BNE L_8A994C                    ; $8A9964  D0 E6        MX
L_8A9966:
    LDA $1677                       ; $8A9966  AD 77 16     MX
    AND #$001F                      ; $8A9969  29 1F 00     MX
    CMP #$001A                      ; $8A996C  C9 1A 00     MX
    BCC L_8A9974                    ; $8A996F  90 03        MX
    JMP L_8A9A08                    ; $8A9971  4C 08 9A     MX
L_8A9974:
    LDA $1690                       ; $8A9974  AD 90 16     MX
    BIT #$0005                      ; $8A9977  89 05 00     MX
    BNE L_8A99BA                    ; $8A997A  D0 3E        MX
    LDA #$0022                      ; $8A997C  A9 22 00     MX
    STA $0024                       ; $8A997F  8D 24 00     MX
    LDA #$007C                      ; $8A9982  A9 7C 00     MX
    STA $0026                       ; $8A9985  8D 26 00     MX
    LDA #$A185                      ; $8A9988  A9 85 A1     MX
    STA $0020                       ; $8A998B  8D 20 00     MX
    LDA #$0000                      ; $8A998E  A9 00 00     MX
    STA $002C                       ; $8A9991  8D 2C 00     MX
    SEP #$20                        ; $8A9994  E2 20        MX
    LDA #$0D                        ; $8A9996  A9 0D        mX
    STA $0022                       ; $8A9998  8D 22 00     mX
    LDA #$2A                        ; $8A999B  A9 2A        mX
    STA $0028                       ; $8A999D  8D 28 00     mX
    REP #$20                        ; $8A99A0  C2 20        mX
    JSL $2BE2EA                     ; $8A99A2  22 EA E2 2B  MX
    LDA #$ABB6                      ; $8A99A6  A9 B6 AB     MX
    STA $0020                       ; $8A99A9  8D 20 00     MX
    LDA $0026                       ; $8A99AC  AD 26 00     MX
    CLC                             ; $8A99AF  18           MX
    ADC #$0010                      ; $8A99B0  69 10 00     MX
    STA $0026                       ; $8A99B3  8D 26 00     MX
    JSL $2BE2EA                     ; $8A99B6  22 EA E2 2B  MX
L_8A99BA:
    LDA $1690                       ; $8A99BA  AD 90 16     MX
    BIT #$000A                      ; $8A99BD  89 0A 00     MX
    BNE L_8A9A08                    ; $8A99C0  D0 46        MX
    LDA $1C5D                       ; $8A99C2  AD 5D 1C     MX
    CMP #$0001                      ; $8A99C5  C9 01 00     MX
    BEQ L_8A9A08                    ; $8A99C8  F0 3E        MX
    LDA #$00A2                      ; $8A99CA  A9 A2 00     MX
    STA $0024                       ; $8A99CD  8D 24 00     MX
    LDA #$007C                      ; $8A99D0  A9 7C 00     MX
    STA $0026                       ; $8A99D3  8D 26 00     MX
    LDA #$A185                      ; $8A99D6  A9 85 A1     MX
    STA $0020                       ; $8A99D9  8D 20 00     MX
    LDA #$0000                      ; $8A99DC  A9 00 00     MX
    STA $002C                       ; $8A99DF  8D 2C 00     MX
    SEP #$20                        ; $8A99E2  E2 20        MX
    LDA #$0D                        ; $8A99E4  A9 0D        mX
    STA $0022                       ; $8A99E6  8D 22 00     mX
    LDA #$2A                        ; $8A99E9  A9 2A        mX
    STA $0028                       ; $8A99EB  8D 28 00     mX
    REP #$20                        ; $8A99EE  C2 20        mX
    JSL $2BE2EA                     ; $8A99F0  22 EA E2 2B  MX
    LDA #$ABB6                      ; $8A99F4  A9 B6 AB     MX
    STA $0020                       ; $8A99F7  8D 20 00     MX
    LDA $0026                       ; $8A99FA  AD 26 00     MX
    CLC                             ; $8A99FD  18           MX
    ADC #$0010                      ; $8A99FE  69 10 00     MX
    STA $0026                       ; $8A9A01  8D 26 00     MX
    JSL $2BE2EA                     ; $8A9A04  22 EA E2 2B  MX
L_8A9A08:
    RTS                             ; $8A9A08  60           MX
L_8A9A09:
    STA $00A4                       ; $8A9A09  8D A4 00     MX
    LDA #$0100                      ; $8A9A0C  A9 00 01     MX
    LDX $00A4                       ; $8A9A0F  AE A4 00     MX
    SEP #$20                        ; $8A9A12  E2 20        MX
    LDA $10FF7C,X                   ; $8A9A14  BF 7C FF 10  mX
    TAY                             ; $8A9A18  A8           mX
    STY $00F2                       ; $8A9A19  8C F2 00     mX
    LDA #$2A                        ; $8A9A1C  A9 2A        mX
    STA $002A                       ; $8A9A1E  8D 2A 00     mX
    REP #$20                        ; $8A9A21  C2 20        mX
    JSL $2BE000                     ; $8A9A23  22 00 E0 2B  MX
    LDA $00EE                       ; $8A9A27  AD EE 00     MX
    CLC                             ; $8A9A2A  18           MX
    ADC #$0004                      ; $8A9A2B  69 04 00     MX
    STA $00EE                       ; $8A9A2E  8D EE 00     MX
    LDA #$0100                      ; $8A9A31  A9 00 01     MX
    LDX $00A4                       ; $8A9A34  AE A4 00     MX
    SEP #$20                        ; $8A9A37  E2 20        MX
    LDA $10FF83,X                   ; $8A9A39  BF 83 FF 10  mX
    TAY                             ; $8A9A3D  A8           mX
    STY $00F2                       ; $8A9A3E  8C F2 00     mX
    REP #$20                        ; $8A9A41  C2 20        mX
    JSL $2BE000                     ; $8A9A43  22 00 E0 2B  MX
    LDA $00EE                       ; $8A9A47  AD EE 00     MX
    CLC                             ; $8A9A4A  18           MX
    ADC #$0004                      ; $8A9A4B  69 04 00     MX
    STA $00EE                       ; $8A9A4E  8D EE 00     MX
    LDA #$0100                      ; $8A9A51  A9 00 01     MX
    LDX $00A4                       ; $8A9A54  AE A4 00     MX
    SEP #$20                        ; $8A9A57  E2 20        MX
    LDA $10FF8A,X                   ; $8A9A59  BF 8A FF 10  mX
    TAY                             ; $8A9A5D  A8           mX
    STY $00F2                       ; $8A9A5E  8C F2 00     mX
    REP #$20                        ; $8A9A61  C2 20        mX
    JSL $2BE000                     ; $8A9A63  22 00 E0 2B  MX
    LDA $00EE                       ; $8A9A67  AD EE 00     MX
    SEC                             ; $8A9A6A  38           MX
    SBC #$0014                      ; $8A9A6B  E9 14 00     MX
    STA $00EE                       ; $8A9A6E  8D EE 00     MX
    LDA $00F0                       ; $8A9A71  AD F0 00     MX
    CLC                             ; $8A9A74  18           MX
    ADC #$0006                      ; $8A9A75  69 06 00     MX
    STA $00F0                       ; $8A9A78  8D F0 00     MX
    RTS                             ; $8A9A7B  60           MX
L_8A9A7C:
    LDA #$00AA                      ; $8A9A7C  A9 AA 00     MX
    STA $00F0                       ; $8A9A7F  8D F0 00     MX
    JSL $2BE007                     ; $8A9A82  22 07 E0 2B  MX
    INC $00F2                       ; $8A9A86  EE F2 00     MX
    INC $00F2                       ; $8A9A89  EE F2 00     MX
    LDA $00EE                       ; $8A9A8C  AD EE 00     MX
    CLC                             ; $8A9A8F  18           MX
    ADC #$000C                      ; $8A9A90  69 0C 00     MX
    STA $00EE                       ; $8A9A93  8D EE 00     MX
    JSL $2BE007                     ; $8A9A96  22 07 E0 2B  MX
    INC $00F2                       ; $8A9A9A  EE F2 00     MX
    INC $00F2                       ; $8A9A9D  EE F2 00     MX
    LDA $00EE                       ; $8A9AA0  AD EE 00     MX
    CLC                             ; $8A9AA3  18           MX
    ADC #$000C                      ; $8A9AA4  69 0C 00     MX
    STA $00EE                       ; $8A9AA7  8D EE 00     MX
    JSL $2BE007                     ; $8A9AAA  22 07 E0 2B  MX
    RTS                             ; $8A9AAE  60           MX
L_8A9AAF:
    LDA $1694                       ; $8A9AAF  AD 94 16     MX
    ORA $1696                       ; $8A9AB2  0D 96 16     MX
    BEQ L_8A9AD2                    ; $8A9AB5  F0 1B        MX
    LDA $1690                       ; $8A9AB7  AD 90 16     MX
    AND #$0003                      ; $8A9ABA  29 03 00     MX
    BNE L_8A9AD2                    ; $8A9ABD  D0 13        MX
    INC $1698                       ; $8A9ABF  EE 98 16     MX
    LDA $1698                       ; $8A9AC2  AD 98 16     MX
    CMP #$0096                      ; $8A9AC5  C9 96 00     MX
    BCC L_8A9AD5                    ; $8A9AC8  90 0B        MX
    LDA #$0005                      ; $8A9ACA  A9 05 00     MX
    STA $001665                     ; $8A9ACD  8F 65 16 00  MX
    RTS                             ; $8A9AD1  60           MX
L_8A9AD2:
    STZ $1698                       ; $8A9AD2  9C 98 16     MX
L_8A9AD5:
    LDA $1692                       ; $8A9AD5  AD 92 16     MX
    BIT #$0004                      ; $8A9AD8  89 04 00     MX
    BEQ L_8A9B0E                    ; $8A9ADB  F0 31        MX
    INC $1694                       ; $8A9ADD  EE 94 16     MX
    LDA $1694                       ; $8A9AE0  AD 94 16     MX
    CMP #$0014                      ; $8A9AE3  C9 14 00     MX
    BNE L_8A9AF0                    ; $8A9AE6  D0 08        MX
    LDA #$0004                      ; $8A9AE8  A9 04 00     MX
    TRB $1692                       ; $8A9AEB  1C 92 16     MX
    BRA L_8A9B25                    ; $8A9AEE  80 35        MX
L_8A9AF0:
    AND #$0002                      ; $8A9AF0  29 02 00     MX
    BNE L_8A9B0E                    ; $8A9AF3  D0 19        MX
    SEP #$10                        ; $8A9AF5  E2 10        MX
    LDA #$9D21                      ; $8A9AF7  A9 21 9D     Mx
    STA $00D0                       ; $8A9AFA  8D D0 00     Mx
    LDX #$0A                        ; $8A9AFD  A2 0A        Mx
    STX $00D2                       ; $8A9AFF  8E D2 00     Mx
    LDX #$09                        ; $8A9B02  A2 09        Mx
    LDA #$000A                      ; $8A9B04  A9 0A 00     Mx
    JSR L_8AA9AD                    ; $8A9B07  20 AD A9     Mx
    REP #$10                        ; $8A9B0A  C2 10        Mx
    BRA L_8A9B25                    ; $8A9B0C  80 17        MX
L_8A9B0E:
    SEP #$10                        ; $8A9B0E  E2 10        MX
    LDA #$969E                      ; $8A9B10  A9 9E 96     Mx
    STA $00D0                       ; $8A9B13  8D D0 00     Mx
    LDX #$0D                        ; $8A9B16  A2 0D        Mx
    STX $00D2                       ; $8A9B18  8E D2 00     Mx
    LDX #$09                        ; $8A9B1B  A2 09        Mx
    LDA #$000A                      ; $8A9B1D  A9 0A 00     Mx
    JSR L_8AA9AD                    ; $8A9B20  20 AD A9     Mx
    REP #$10                        ; $8A9B23  C2 10        Mx
L_8A9B25:
    LDA $1692                       ; $8A9B25  AD 92 16     MX
    BIT #$0008                      ; $8A9B28  89 08 00     MX
    BEQ L_8A9B5D                    ; $8A9B2B  F0 30        MX
    INC $1696                       ; $8A9B2D  EE 96 16     MX
    LDA $1696                       ; $8A9B30  AD 96 16     MX
    CMP #$0014                      ; $8A9B33  C9 14 00     MX
    BNE L_8A9B40                    ; $8A9B36  D0 08        MX
    LDA #$0008                      ; $8A9B38  A9 08 00     MX
    TRB $1692                       ; $8A9B3B  1C 92 16     MX
    BRA L_8A9B5C                    ; $8A9B3E  80 1C        MX
L_8A9B40:
    AND #$0002                      ; $8A9B40  29 02 00     MX
    BNE L_8A9B5D                    ; $8A9B43  D0 18        MX
    SEP #$10                        ; $8A9B45  E2 10        MX
    LDA #$9D21                      ; $8A9B47  A9 21 9D     Mx
    STA $00D0                       ; $8A9B4A  8D D0 00     Mx
    LDX #$0A                        ; $8A9B4D  A2 0A        Mx
    STX $00D2                       ; $8A9B4F  8E D2 00     Mx
    LDX #$02                        ; $8A9B52  A2 02        Mx
    LDA #$000A                      ; $8A9B54  A9 0A 00     Mx
    JSR L_8AA9AD                    ; $8A9B57  20 AD A9     Mx
    REP #$10                        ; $8A9B5A  C2 10        Mx
L_8A9B5C:
    RTS                             ; $8A9B5C  60           MX
L_8A9B5D:
    SEP #$10                        ; $8A9B5D  E2 10        MX
    LDA #$9690                      ; $8A9B5F  A9 90 96     Mx
    STA $00D0                       ; $8A9B62  8D D0 00     Mx
    LDX #$0D                        ; $8A9B65  A2 0D        Mx
    STX $00D2                       ; $8A9B67  8E D2 00     Mx
    LDX #$02                        ; $8A9B6A  A2 02        Mx
    LDA #$000A                      ; $8A9B6C  A9 0A 00     Mx
    JSR L_8AA9AD                    ; $8A9B6F  20 AD A9     Mx
    REP #$10                        ; $8A9B72  C2 10        Mx
    RTS                             ; $8A9B74  60           MX
L_8A9B75:
    LDA $1667                       ; $8A9B75  AD 67 16     MX
    BEQ L_8A9B7D                    ; $8A9B78  F0 03        MX
    JMP L_8A9BDC                    ; $8A9B7A  4C DC 9B     MX
L_8A9B7D:
    LDA #$000C                      ; $8A9B7D  A9 0C 00     MX
    STA $1667                       ; $8A9B80  8D 67 16     MX
    LDX #$0000                      ; $8A9B83  A2 00 00     MX
L_8A9B86:
    LDA $16B4,X                     ; $8A9B86  BD B4 16     MX
    BEQ L_8A9BD2                    ; $8A9B89  F0 47        MX
    CMP #$0007                      ; $8A9B8B  C9 07 00     MX
    BEQ L_8A9BD2                    ; $8A9B8E  F0 42        MX
    INC                             ; $8A9B90  1A           MX
    STA $16B4,X                     ; $8A9B91  9D B4 16     MX
    AND #$0001                      ; $8A9B94  29 01 00     MX
    STA $00A4                       ; $8A9B97  8D A4 00     MX
    LDA $1C5D                       ; $8A9B9A  AD 5D 1C     MX
    BNE L_8A9BA5                    ; $8A9B9D  D0 06        MX
    TXA                             ; $8A9B9F  8A           MX
    CLC                             ; $8A9BA0  18           MX
    ADC #$0008                      ; $8A9BA1  69 08 00     MX
    TAX                             ; $8A9BA4  AA           MX
L_8A9BA5:
    LDA $0A9C2C,X                   ; $8A9BA5  BF 2C 9C 0A  MX
    TAY                             ; $8A9BA9  A8           MX
    PEA $007E                       ; $8A9BAA  F4 7E 00     MX
    PLB                             ; $8A9BAD  AB           MX
    LDA $0A9C38,X                   ; $8A9BAE  BF 38 9C 0A  MX
    STA $EF00,Y                     ; $8A9BB2  99 00 EF     MX
    LDA $0A9C44,X                   ; $8A9BB5  BF 44 9C 0A  MX
    STA $EF02,Y                     ; $8A9BB9  99 02 EF     MX
    LDA $0A9C50,X                   ; $8A9BBC  BF 50 9C 0A  MX
    STA $EF04,Y                     ; $8A9BC0  99 04 EF     MX
    PLB                             ; $8A9BC3  AB           MX
    LDA $1C5D                       ; $8A9BC4  AD 5D 1C     MX
    BNE L_8A9BCF                    ; $8A9BC7  D0 06        MX
    TXA                             ; $8A9BC9  8A           MX
    SEC                             ; $8A9BCA  38           MX
    SBC #$0008                      ; $8A9BCB  E9 08 00     MX
    TAX                             ; $8A9BCE  AA           MX
L_8A9BCF:
    JSR L_8A9BDD                    ; $8A9BCF  20 DD 9B     MX
L_8A9BD2:
    INX                             ; $8A9BD2  E8           MX
    INX                             ; $8A9BD3  E8           MX
    CPX #$0008                      ; $8A9BD4  E0 08 00     MX
    BEQ L_8A9BDC                    ; $8A9BD7  F0 03        MX
    JMP L_8A9B86                    ; $8A9BD9  4C 86 9B     MX
L_8A9BDC:
    RTS                             ; $8A9BDC  60           MX
L_8A9BDD:
    LDA #$7E7E                      ; $8A9BDD  A9 7E 7E     MX
    STA $A6                         ; $8A9BE0  85 A6        MX
    PHX                             ; $8A9BE2  DA           MX
    LDA $1C5D                       ; $8A9BE3  AD 5D 1C     MX
    BNE L_8A9BED                    ; $8A9BE6  D0 05        MX
    CPX #$0002                      ; $8A9BE8  E0 02 00     MX
    BEQ L_8A9BF2                    ; $8A9BEB  F0 05        MX
L_8A9BED:
    CPX #$0004                      ; $8A9BED  E0 04 00     MX
    BCC L_8A9BFA                    ; $8A9BF0  90 08        MX
L_8A9BF2:
    LDX #$0020                      ; $8A9BF2  A2 20 00     MX
    LDA #$EFA0                      ; $8A9BF5  A9 A0 EF     MX
    BRA L_8A9C00                    ; $8A9BF8  80 06        MX
L_8A9BFA:
    LDX #$0000                      ; $8A9BFA  A2 00 00     MX
    LDA #$EF80                      ; $8A9BFD  A9 80 EF     MX
L_8A9C00:
    STA $A4                         ; $8A9C00  85 A4        MX
    LDY #$0004                      ; $8A9C02  A0 04 00     MX
L_8A9C05:
    PHY                             ; $8A9C05  5A           MX
    LDY #$0010                      ; $8A9C06  A0 10 00     MX
L_8A9C09:
    LDA $7F0734,X                   ; $8A9C09  BF 34 07 7F  MX
    STA [$A4]                       ; $8A9C0D  87 A4        MX
    INC $A4                         ; $8A9C0F  E6 A4        MX
    INC $A4                         ; $8A9C11  E6 A4        MX
    INX                             ; $8A9C13  E8           MX
    INX                             ; $8A9C14  E8           MX
    DEY                             ; $8A9C15  88           MX
    BNE L_8A9C09                    ; $8A9C16  D0 F1        MX
    TXA                             ; $8A9C18  8A           MX
    CLC                             ; $8A9C19  18           MX
    ADC #$0030                      ; $8A9C1A  69 30 00     MX
    TAX                             ; $8A9C1D  AA           MX
    LDA $A4                         ; $8A9C1E  A5 A4        MX
    CLC                             ; $8A9C20  18           MX
    ADC #$0020                      ; $8A9C21  69 20 00     MX
    STA $A4                         ; $8A9C24  85 A4        MX
    PLY                             ; $8A9C26  7A           MX
    DEY                             ; $8A9C27  88           MX
    BNE L_8A9C05                    ; $8A9C28  D0 DB        MX
    PLX                             ; $8A9C2A  FA           MX
    RTS                             ; $8A9C2B  60           MX
    db $04,$00,$16,$00,$24,$00,$36,$00,$04,$00,$24,$00,$D1,$01,$D3,$01 ; $8A9C2C
    db $D1,$01,$D3,$01,$D1,$01,$D1,$01,$D5,$01,$D6,$01,$D7,$01,$D8,$01 ; $8A9C3C
    db $D5,$01,$D7,$01,$D2,$01,$D4,$01,$D2,$01,$D4,$01,$D2,$01,$D2,$01 ; $8A9C4C
L_8A9C5C:
    STA $1679                       ; $8A9C5C  8D 79 16     MX
    LDA $167D,Y                     ; $8A9C5F  B9 7D 16     MX
    EOR #$FFFF                      ; $8A9C62  49 FF FF     MX
    AND $1679                       ; $8A9C65  2D 79 16     MX
    STA $1681                       ; $8A9C68  8D 81 16     MX
    LDA $1679                       ; $8A9C6B  AD 79 16     MX
    ORA $167D,Y                     ; $8A9C6E  19 7D 16     MX
    STA $167D,Y                     ; $8A9C71  99 7D 16     MX
    RTS                             ; $8A9C74  60           MX
L_8A9C75:
    LDA $1CE1                       ; $8A9C75  AD E1 1C     MX
    TAX                             ; $8A9C78  AA           MX
    AND #$0060                      ; $8A9C79  29 60 00     MX
    STA $00A4                       ; $8A9C7C  8D A4 00     MX
    TXA                             ; $8A9C7F  8A           MX
    EOR $00A4                       ; $8A9C80  4D A4 00     MX
    STA $1CE1                       ; $8A9C83  8D E1 1C     MX
    LDA $1CD9                       ; $8A9C86  AD D9 1C     MX
    BMI L_8A9C91                    ; $8A9C89  30 06        MX
    LDY #$0060                      ; $8A9C8B  A0 60 00     MX
    JSR L_8A9CB3                    ; $8A9C8E  20 B3 9C     MX
L_8A9C91:
    LDA $1CDB                       ; $8A9C91  AD DB 1C     MX
    BMI L_8A9C9C                    ; $8A9C94  30 06        MX
    LDY #$0000                      ; $8A9C96  A0 00 00     MX
    JSR L_8A9CB3                    ; $8A9C99  20 B3 9C     MX
L_8A9C9C:
    LDA $1CDD                       ; $8A9C9C  AD DD 1C     MX
    BMI L_8A9CA7                    ; $8A9C9F  30 06        MX
    LDY #$0460                      ; $8A9CA1  A0 60 04     MX
    JSR L_8A9CB3                    ; $8A9CA4  20 B3 9C     MX
L_8A9CA7:
    LDA $1CDF                       ; $8A9CA7  AD DF 1C     MX
    BMI L_8A9CB2                    ; $8A9CAA  30 06        MX
    LDY #$0400                      ; $8A9CAC  A0 00 04     MX
    JSR L_8A9CB3                    ; $8A9CAF  20 B3 9C     MX
L_8A9CB2:
    RTS                             ; $8A9CB2  60           MX
L_8A9CB3:
    SEC                             ; $8A9CB3  38           MX
    SBC #$0036                      ; $8A9CB4  E9 36 00     MX
    ASL                             ; $8A9CB7  0A           MX
    TAX                             ; $8A9CB8  AA           MX
    TYA                             ; $8A9CB9  98           MX
    EOR $00A4                       ; $8A9CBA  4D A4 00     MX
    CLC                             ; $8A9CBD  18           MX
    ADC $1CE1                       ; $8A9CBE  6D E1 1C     MX
    TAY                             ; $8A9CC1  A8           MX
    STA $2116                       ; $8A9CC2  8D 16 21     MX
    LDA $0A9D09,X                   ; $8A9CC5  BF 09 9D 0A  MX
    STA $4302                       ; $8A9CC9  8D 02 43     MX
    LDA #$1801                      ; $8A9CCC  A9 01 18     MX
    STA $4300                       ; $8A9CCF  8D 00 43     MX
    LDA #$00C0                      ; $8A9CD2  A9 C0 00     MX
    STA $4305                       ; $8A9CD5  8D 05 43     MX
    SEP #$20                        ; $8A9CD8  E2 20        MX
    LDA #$2A                        ; $8A9CDA  A9 2A        mX
    STA $4304                       ; $8A9CDC  8D 04 43     mX
    LDA #$01                        ; $8A9CDF  A9 01        mX
    STA $420B                       ; $8A9CE1  8D 0B 42     mX
    REP #$20                        ; $8A9CE4  C2 20        mX
    TYA                             ; $8A9CE6  98           MX
    CLC                             ; $8A9CE7  18           MX
    ADC #$0100                      ; $8A9CE8  69 00 01     MX
    STA $2116                       ; $8A9CEB  8D 16 21     MX
    LDA $0A9D09,X                   ; $8A9CEE  BF 09 9D 0A  MX
    CLC                             ; $8A9CF2  18           MX
    ADC #$00C0                      ; $8A9CF3  69 C0 00     MX
    STA $4302                       ; $8A9CF6  8D 02 43     MX
    LDA #$00C0                      ; $8A9CF9  A9 C0 00     MX
    STA $4305                       ; $8A9CFC  8D 05 43     MX
    SEP #$20                        ; $8A9CFF  E2 20        MX
    LDA #$01                        ; $8A9D01  A9 01        mX
    STA $420B                       ; $8A9D03  8D 0B 42     mX
    REP #$20                        ; $8A9D06  C2 20        mX
    RTS                             ; $8A9D08  60           MX
    db $7F,$BA,$FF,$BB,$7F,$BD,$FF,$BE,$7F,$C0,$FF,$C1,$7F,$C3,$FF,$C4 ; $8A9D09
    db $7F,$C6,$FF,$C7,$7F,$C9,$FF,$CA,$FF,$7F,$FF,$7F,$FF,$7F,$FF,$7F ; $8A9D19
    db $FF,$7F,$15,$00,$21,$00,$2D,$00,$39,$00,$45,$00,$51,$00,$5D,$00 ; $8A9D29
    db $15,$00,$21,$00,$2D,$00,$39,$00,$45,$00,$51,$00,$15,$00,$21,$00 ; $8A9D39
    db $2D,$00,$39,$00,$45,$00,$51,$00,$5D,$00,$15,$00,$21,$00,$2D,$00 ; $8A9D49
    db $39,$00,$45,$00,$51,$00,$5D,$00,$17,$00,$17,$00,$17,$00,$17,$00 ; $8A9D59
    db $17,$00,$17,$00,$17,$00,$4B,$00,$4B,$00,$4B,$00,$4B,$00,$4B,$00 ; $8A9D69
    db $4B,$00,$7F,$00,$7F,$00,$7F,$00,$7F,$00,$7F,$00,$7F,$00,$7F,$00 ; $8A9D79
    db $B3,$00,$B3,$00,$B3,$00,$B3,$00,$B3,$00,$B3,$00,$B3,$00,$E2,$20 ; $8A9D89
    db $A9,$8F,$8D,$00,$21,$C2,$20,$20,$8D,$FD,$AD,$56,$1D,$29,$1F,$00 ; $8A9D99
    db $C9,$1B,$00,$90,$0F,$38,$E9,$10,$00,$80,$F5,$AD,$A6,$16,$18,$69 ; $8A9DA9
    db $0E,$00,$80,$EC,$8D,$A6,$16,$AD,$87,$1C,$D0,$08,$20,$5E,$A3,$B0 ; $8A9DB9
    db $03,$8D,$A6,$16,$AD,$83,$16,$29,$1F,$00,$CD,$A6,$16,$F0,$DC,$AD ; $8A9DC9
    db $85,$16,$29,$1F,$00,$CD,$A6,$16,$F0,$D1,$20,$6D,$A1,$20,$05,$A3 ; $8A9DD9
    db $A9,$FF,$FF,$8D,$77,$16,$A9,$B3,$B0,$8D,$D0,$00,$A9,$B0,$0D,$8D ; $8A9DE9
    db $D1,$00,$A9,$00,$00,$8D,$D3,$00,$A9,$00,$7F,$8D,$D4,$00,$22,$F0 ; $8A9DF9
    db $F3,$29,$E2,$30,$A9,$00,$8D,$16,$21,$A9,$00,$8D,$17,$21,$A9,$01 ; $8A9E09
    db $8D,$00,$43,$A9,$18,$8D,$01,$43,$A9,$00,$8D,$02,$43,$A9,$00,$8D ; $8A9E19
    db $03,$43,$A9,$7F,$8D,$04,$43,$A9,$40,$8D,$05,$43,$A9,$3A,$8D,$06 ; $8A9E29
    db $43,$A9,$01,$8D,$0B,$42,$C2,$30,$A9,$22,$D4,$8D,$D0,$00,$A9,$D4 ; $8A9E39
    db $0D,$8D,$D1,$00,$A9,$00,$00,$8D,$D3,$00,$A9,$00,$7F,$8D,$D4,$00 ; $8A9E49
    db $22,$F0,$F3,$29,$E2,$30,$A9,$00,$8D,$16,$21,$A9,$40,$8D,$17,$21 ; $8A9E59
    db $A9,$01,$8D,$00,$43,$A9,$18,$8D,$01,$43,$A9,$00,$8D,$02,$43,$A9 ; $8A9E69
    db $00,$8D,$03,$43,$A9,$7F,$8D,$04,$43,$A9,$60,$8D,$05,$43,$A9,$44 ; $8A9E79
    db $8D,$06,$43,$A9,$01,$8D,$0B,$42,$C2,$30,$22,$B6,$F9,$29,$AD,$83 ; $8A9E89
    db $16,$29,$5F,$00,$8D,$83,$16,$AD,$85,$16,$29,$5F,$00,$8D,$85,$16 ; $8A9E99
    db $A9,$00,$80,$0C,$83,$16,$0C,$85,$16,$A9,$07,$00,$8F,$65,$16,$00 ; $8A9EA9
    db $60,$AD,$77,$16,$C9,$0A,$00,$D0,$07,$A9,$08,$00,$8F,$65,$16,$00 ; $8A9EB9
    db $20,$D0,$8C,$60,$E2,$30,$A9,$8F,$8D,$00,$21,$A9,$F3,$8D,$D0,$00 ; $8A9EC9
    db $A9,$FE,$8D,$D1,$00,$A9,$0C,$8D,$D2,$00,$A2,$40,$A9,$00,$22,$53 ; $8A9ED9
    db $8B,$80,$A9,$80,$8D,$15,$21,$C2,$30,$A9,$00,$74,$8D,$16,$21,$A9 ; $8A9EE9
    db $A2,$C2,$8D,$A4,$00,$F4,$0D,$00,$AB,$A2,$1C,$00,$A0,$00,$00,$B1 ; $8A9EF9
    db $A4,$8F,$18,$21,$00,$C8,$C8,$C0,$40,$00,$D0,$F3,$AF,$A4,$00,$00 ; $8A9F09
    db $18,$69,$50,$00,$8F,$A4,$00,$00,$CA,$D0,$E1,$A9,$00,$78,$8F,$16 ; $8A9F19
    db $21,$00,$A9,$62,$CB,$8F,$A4,$00,$00,$A2,$1C,$00,$A0,$00,$00,$B1 ; $8A9F29
    db $A4,$8F,$18,$21,$00,$C8,$C8,$C0,$40,$00,$D0,$F3,$AF,$A4,$00,$00 ; $8A9F39
    db $18,$69,$50,$00,$8F,$A4,$00,$00,$CA,$D0,$E1,$AB,$E2,$20,$A9,$FF ; $8A9F49
    db $8D,$0E,$21,$8D,$0E,$21,$A9,$00,$8D,$0D,$21,$8D,$0D,$21,$A9,$FF ; $8A9F59
    db $8D,$10,$21,$8D,$10,$21,$A9,$00,$8D,$0F,$21,$8D,$0F,$21,$A9,$13 ; $8A9F69
    db $8D,$2C,$21,$A9,$03,$8D,$05,$21,$A9,$74,$8D,$07,$21,$A9,$78,$8D ; $8A9F79
    db $08,$21,$A9,$40,$8D,$0B,$21,$A9,$03,$8D,$01,$21,$9C,$B2,$00,$C2 ; $8A9F89
    db $20,$A9,$C3,$00,$8D,$B0,$00,$F4,$0D,$00,$AB,$A0,$F2,$C7,$A2,$00 ; $8A9F99
    db $00,$A9,$07,$00,$85,$A6,$A9,$20,$00,$85,$A4,$B9,$00,$00,$9F,$00 ; $8A9FA9
    db $ED,$7E,$C8,$C8,$E8,$E8,$C6,$A4,$D0,$F1,$98,$18,$69,$10,$00,$A8 ; $8A9FB9
    db $C6,$A6,$D0,$E2,$AB,$A2,$02,$ED,$A0,$25,$01,$20,$EB,$8B,$A2,$0E ; $8A9FC9
    db $ED,$A0,$4F,$01,$20,$0F,$8C,$A2,$26,$ED,$A0,$79,$01,$20,$EB,$8B ; $8A9FD9
    db $A2,$32,$ED,$A0,$A3,$01,$20,$0F,$8C,$A9,$20,$00,$8D,$16,$21,$A9 ; $8A9FE9
    db $76,$00,$8D,$17,$21,$A9,$01,$00,$8D,$00,$43,$A9,$18,$00,$8D,$01 ; $8A9FF9
    db $43,$A9,$00,$00,$8D,$02,$43,$A9,$ED,$00,$8D,$03,$43,$A9,$7E,$00 ; $8AA009
    db $8D,$04,$43,$A9,$C0,$00,$8D,$05,$43,$A9,$01,$00,$8D,$06,$43,$A9 ; $8AA019
    db $01,$00,$8D,$0B,$42,$A9,$09,$00,$8F,$65,$16,$00,$60,$E2,$20,$AD ; $8AA029
    db $B2,$00,$C9,$10,$F0,$06,$8D,$00,$21,$EE,$B2,$00,$C2,$20,$AD,$B2 ; $8AA039
    db $00,$29,$FF,$00,$C9,$10,$00,$D0,$11,$AD,$69,$16,$0D,$6B,$16,$0D ; $8AA049
    db $6D,$16,$0D,$6F,$16,$89,$00,$10,$D0,$05,$CE,$B0,$00,$10,$0C,$A9 ; $8AA059
    db $0A,$00,$CD,$9C,$16,$F0,$35,$8F,$65,$16,$00,$20,$9B,$FD,$22,$97 ; $8AA069
    db $D6,$2A,$20,$AC,$A0,$60,$E2,$20,$CE,$B2,$00,$AD,$B2,$00,$C9,$FF ; $8AA079
    db $D0,$0F,$C2,$20,$20,$C5,$FD,$A9,$FF,$FF,$8F,$65,$16,$00,$A9,$00 ; $8AA089
    db $00,$E2,$20,$8D,$00,$21,$C2,$20,$20,$AC,$A0,$60,$A9,$1E,$00,$8D ; $8AA099
    db $CB,$1C,$60,$AD,$83,$16,$29,$1F,$00,$0A,$0A,$0A,$AA,$A9,$14,$00 ; $8AA0A9
    db $8D,$24,$00,$A9,$2A,$00,$8D,$26,$00,$BF,$57,$AD,$0D,$8D,$20,$00 ; $8AA0B9
    db $A9,$40,$00,$8D,$2C,$00,$E2,$20,$BF,$59,$AD,$0D,$8D,$22,$00,$A9 ; $8AA0C9
    db $2C,$8D,$28,$00,$C2,$20,$DA,$22,$EA,$E2,$2B,$FA,$BF,$2F,$AE,$0D ; $8AA0D9
    db $DF,$57,$AD,$0D,$F0,$1D,$8D,$20,$00,$A9,$C0,$01,$8D,$2C,$00,$E2 ; $8AA0E9
    db $20,$BF,$31,$AE,$0D,$8D,$22,$00,$A9,$2C,$8D,$28,$00,$C2,$20,$22 ; $8AA0F9
    db $EA,$E2,$2B,$AD,$85,$16,$29,$1F,$00,$0A,$0A,$0A,$AA,$A9,$A4,$00 ; $8AA109
    db $8D,$24,$00,$A9,$2A,$00,$8D,$26,$00,$BF,$57,$AD,$0D,$8D,$20,$00 ; $8AA119
    db $A9,$60,$00,$8D,$2C,$00,$E2,$20,$BF,$59,$AD,$0D,$8D,$22,$00,$A9 ; $8AA129
    db $2E,$8D,$28,$00,$C2,$20,$DA,$22,$EA,$E2,$2B,$FA,$BF,$2F,$AE,$0D ; $8AA139
    db $DF,$57,$AD,$0D,$F0,$1D,$8D,$20,$00,$A9,$E0,$01,$8D,$2C,$00,$E2 ; $8AA149
    db $20,$BF,$31,$AE,$0D,$8D,$22,$00,$A9,$2E,$8D,$28,$00,$C2,$20,$22 ; $8AA159
    db $EA,$E2,$2B,$60,$AD,$5D,$1C,$F0,$03,$4C,$32,$A2,$A9,$FF,$FF,$8D ; $8AA169
    db $A0,$16,$8D,$A4,$16,$AD,$83,$16,$29,$1F,$00,$C9,$1F,$00,$F0,$56 ; $8AA179
    db $AD,$85,$16,$29,$1F,$00,$C9,$1F,$00,$F0,$6E,$8D,$A4,$00,$AD,$83 ; $8AA189
    db $16,$29,$1F,$00,$CD,$A4,$00,$F0,$21,$8D,$A6,$00,$0E,$A4,$00,$0E ; $8AA199
    db $A6,$00,$AD,$83,$16,$89,$40,$00,$F0,$03,$EE,$A4,$00,$AD,$85,$16 ; $8AA1A9
    db $89,$40,$00,$F0,$03,$EE,$A6,$00,$80,$62,$8D,$A6,$00,$0E,$A4,$00 ; $8AA1B9
    db $0E,$A6,$00,$EE,$A6,$00,$AD,$83,$16,$89,$40,$00,$F0,$06,$EE,$A4 ; $8AA1C9
    db $00,$CE,$A6,$00,$80,$3E,$A9,$FF,$FF,$8D,$A4,$00,$AD,$85,$16,$29 ; $8AA1D9
    db $1F,$00,$0A,$8D,$A6,$00,$AD,$85,$16,$89,$40,$00,$F0,$03,$EE,$A6 ; $8AA1E9
    db $00,$AD,$A6,$16,$8D,$83,$16,$80,$23,$A9,$FF,$FF,$8D,$A6,$00,$AD ; $8AA1F9
    db $83,$16,$29,$1F,$00,$0A,$8D,$A4,$00,$AD,$83,$16,$89,$40,$00,$F0 ; $8AA209
    db $03,$EE,$A4,$00,$AD,$A6,$16,$8D,$85,$16,$80,$00,$AD,$A4,$00,$8D ; $8AA219
    db $9E,$16,$AD,$A6,$00,$8D,$A2,$16,$60,$A9,$FF,$FF,$8D,$9E,$16,$8D ; $8AA229
    db $A0,$16,$8D,$A2,$16,$8D,$A4,$16,$AD,$83,$16,$29,$1F,$00,$C9,$1F ; $8AA239
    db $00,$D0,$08,$AD,$A6,$16,$8D,$83,$16,$80,$25,$AD,$9A,$16,$89,$01 ; $8AA249
    db $00,$F0,$1D,$AD,$83,$16,$29,$1F,$00,$8D,$A4,$00,$0E,$A4,$00,$AD ; $8AA259
    db $83,$16,$89,$40,$00,$F0,$03,$EE,$A4,$00,$AD,$A4,$00,$8D,$9E,$16 ; $8AA269
    db $AD,$9A,$16,$89,$02,$00,$F0,$1D,$AD,$83,$16,$29,$1F,$00,$8D,$A4 ; $8AA279
    db $00,$0E,$A4,$00,$AD,$83,$16,$89,$40,$00,$D0,$03,$EE,$A4,$00,$AD ; $8AA289
    db $A4,$00,$8D,$A0,$16,$AD,$85,$16,$29,$1F,$00,$C9,$1F,$00,$D0,$08 ; $8AA299
    db $AD,$A6,$16,$8D,$85,$16,$80,$4A,$AD,$9A,$16,$89,$04,$00,$F0,$1D ; $8AA2A9
    db $AD,$85,$16,$29,$1F,$00,$8D,$A4,$00,$0E,$A4,$00,$AD,$85,$16,$89 ; $8AA2B9
    db $40,$00,$F0,$03,$EE,$A4,$00,$AD,$A4,$00,$8D,$A2,$16,$AD,$9A,$16 ; $8AA2C9
    db $89,$08,$00,$F0,$1D,$AD,$85,$16,$29,$1F,$00,$8D,$A4,$00,$0E,$A4 ; $8AA2D9
    db $00,$AD,$85,$16,$89,$40,$00,$D0,$03,$EE,$A4,$00,$AD,$A4,$00,$8D ; $8AA2E9
    db $A4,$16,$A9,$00,$80,$0C,$83,$16,$0C,$85,$16,$60,$A2,$00,$00,$BD ; $8AA2F9
    db $9E,$16,$10,$14,$A9,$42,$00,$9D,$CC,$16,$A9,$4F,$00,$9D,$D4,$16 ; $8AA309
    db $A9,$54,$00,$9D,$DC,$16,$80,$11,$AD,$87,$1C,$F0,$0C,$A9,$5A,$00 ; $8AA319
    db $9D,$CC,$16,$9D,$D4,$16,$9D,$DC,$16,$E8,$E8,$E0,$08,$00,$D0,$CF ; $8AA329
    db $60                                                             ; $8AA339
L_8AA33A:
    JSR L_8AA4A4                    ; $8AA33A  20 A4 A4     MX
    JSR L_8AA4B2                    ; $8AA33D  20 B2 A4     MX
L_8AA340:
    PHX                             ; $8AA340  DA           MX
    LDX #$0000                      ; $8AA341  A2 00 00     MX
L_8AA344:
    LDA $0AA503,X                   ; $8AA344  BF 03 A5 0A  MX
    ASL                             ; $8AA348  0A           MX
    TAY                             ; $8AA349  A8           MX
    LDA $1C18,Y                     ; $8AA34A  B9 18 1C     MX
    BEQ L_8AA359                    ; $8AA34D  F0 0A        MX
    INX                             ; $8AA34F  E8           MX
    INX                             ; $8AA350  E8           MX
    CPX #$0036                      ; $8AA351  E0 36 00     MX
    BNE L_8AA344                    ; $8AA354  D0 EE        MX
    PLX                             ; $8AA356  FA           MX
    SEC                             ; $8AA357  38           MX
    RTS                             ; $8AA358  60           MX
L_8AA359:
    TYA                             ; $8AA359  98           MX
    LSR                             ; $8AA35A  4A           MX
    PLX                             ; $8AA35B  FA           MX
    CLC                             ; $8AA35C  18           MX
    RTS                             ; $8AA35D  60           MX
L_8AA35E:
    JSR L_8AA4A4                    ; $8AA35E  20 A4 A4     MX
    LDA $1C5D                       ; $8AA361  AD 5D 1C     MX
    BNE L_8AA369                    ; $8AA364  D0 03        MX
    JMP L_8AA41E                    ; $8AA366  4C 1E A4     MX
L_8AA369:
    LDA $1683                       ; $8AA369  AD 83 16     MX
    AND #$001F                      ; $8AA36C  29 1F 00     MX
    CMP #$001F                      ; $8AA36F  C9 1F 00     MX
    BEQ L_8AA3CF                    ; $8AA372  F0 5B        MX
    LDA $1685                       ; $8AA374  AD 85 16     MX
    AND #$001F                      ; $8AA377  29 1F 00     MX
    CMP #$001F                      ; $8AA37A  C9 1F 00     MX
    BNE L_8AA3CD                    ; $8AA37D  D0 4E        MX
    LDX #$0000                      ; $8AA37F  A2 00 00     MX
    JSR L_8AA45E                    ; $8AA382  20 5E A4     MX
    LDX #$0002                      ; $8AA385  A2 02 00     MX
    JSR L_8AA45E                    ; $8AA388  20 5E A4     MX
    LDA $1683                       ; $8AA38B  AD 83 16     MX
    AND #$001F                      ; $8AA38E  29 1F 00     MX
    ASL                             ; $8AA391  0A           MX
    TAX                             ; $8AA392  AA           MX
    INC $1C18,X                     ; $8AA393  FE 18 1C     MX
    JSR L_8AA340                    ; $8AA396  20 40 A3     MX
    BCC L_8AA3CE                    ; $8AA399  90 33        MX
    JSR L_8AA4A4                    ; $8AA39B  20 A4 A4     MX
    LDX #$0000                      ; $8AA39E  A2 00 00     MX
    JSR L_8AA45E                    ; $8AA3A1  20 5E A4     MX
    LDA $1683                       ; $8AA3A4  AD 83 16     MX
    AND #$001F                      ; $8AA3A7  29 1F 00     MX
    ASL                             ; $8AA3AA  0A           MX
    TAX                             ; $8AA3AB  AA           MX
    INC $1C18,X                     ; $8AA3AC  FE 18 1C     MX
    JSR L_8AA340                    ; $8AA3AF  20 40 A3     MX
    BCC L_8AA3CE                    ; $8AA3B2  90 1A        MX
    JSR L_8AA4A4                    ; $8AA3B4  20 A4 A4     MX
    LDX #$0002                      ; $8AA3B7  A2 02 00     MX
    JSR L_8AA45E                    ; $8AA3BA  20 5E A4     MX
    LDA $1683                       ; $8AA3BD  AD 83 16     MX
    AND #$001F                      ; $8AA3C0  29 1F 00     MX
    ASL                             ; $8AA3C3  0A           MX
    TAX                             ; $8AA3C4  AA           MX
    INC $1C18,X                     ; $8AA3C5  FE 18 1C     MX
    JSR L_8AA340                    ; $8AA3C8  20 40 A3     MX
    BCC L_8AA3CE                    ; $8AA3CB  90 01        MX
L_8AA3CD:
    SEC                             ; $8AA3CD  38           MX
L_8AA3CE:
    RTS                             ; $8AA3CE  60           MX
L_8AA3CF:
    LDX #$0004                      ; $8AA3CF  A2 04 00     MX
    JSR L_8AA45E                    ; $8AA3D2  20 5E A4     MX
    LDX #$0006                      ; $8AA3D5  A2 06 00     MX
    JSR L_8AA45E                    ; $8AA3D8  20 5E A4     MX
    LDA $1685                       ; $8AA3DB  AD 85 16     MX
    AND #$001F                      ; $8AA3DE  29 1F 00     MX
    ASL                             ; $8AA3E1  0A           MX
    TAX                             ; $8AA3E2  AA           MX
    INC $1C18,X                     ; $8AA3E3  FE 18 1C     MX
    JSR L_8AA340                    ; $8AA3E6  20 40 A3     MX
    BCC L_8AA3CE                    ; $8AA3E9  90 E3        MX
    JSR L_8AA4A4                    ; $8AA3EB  20 A4 A4     MX
    LDX #$0004                      ; $8AA3EE  A2 04 00     MX
    JSR L_8AA45E                    ; $8AA3F1  20 5E A4     MX
    LDA $1685                       ; $8AA3F4  AD 85 16     MX
    AND #$001F                      ; $8AA3F7  29 1F 00     MX
    ASL                             ; $8AA3FA  0A           MX
    TAX                             ; $8AA3FB  AA           MX
    INC $1C18,X                     ; $8AA3FC  FE 18 1C     MX
    JSR L_8AA340                    ; $8AA3FF  20 40 A3     MX
    BCC L_8AA3CE                    ; $8AA402  90 CA        MX
    JSR L_8AA4A4                    ; $8AA404  20 A4 A4     MX
    LDX #$0006                      ; $8AA407  A2 06 00     MX
    JSR L_8AA45E                    ; $8AA40A  20 5E A4     MX
    LDA $1685                       ; $8AA40D  AD 85 16     MX
    AND #$001F                      ; $8AA410  29 1F 00     MX
    ASL                             ; $8AA413  0A           MX
    TAX                             ; $8AA414  AA           MX
    INC $1C18,X                     ; $8AA415  FE 18 1C     MX
    JSR L_8AA340                    ; $8AA418  20 40 A3     MX
    BCC L_8AA3CE                    ; $8AA41B  90 B1        MX
    RTS                             ; $8AA41D  60           MX
L_8AA41E:
    LDA $1683                       ; $8AA41E  AD 83 16     MX
    AND #$001F                      ; $8AA421  29 1F 00     MX
    CMP #$001F                      ; $8AA424  C9 1F 00     MX
    BEQ L_8AA449                    ; $8AA427  F0 20        MX
    LDA $1685                       ; $8AA429  AD 85 16     MX
    AND #$001F                      ; $8AA42C  29 1F 00     MX
    CMP #$001F                      ; $8AA42F  C9 1F 00     MX
    BNE L_8AA3CD                    ; $8AA432  D0 99        MX
    LDX #$0000                      ; $8AA434  A2 00 00     MX
    JSR L_8AA45E                    ; $8AA437  20 5E A4     MX
    LDA $1683                       ; $8AA43A  AD 83 16     MX
    AND #$001F                      ; $8AA43D  29 1F 00     MX
    ASL                             ; $8AA440  0A           MX
    TAX                             ; $8AA441  AA           MX
    INC $1C18,X                     ; $8AA442  FE 18 1C     MX
    JSR L_8AA340                    ; $8AA445  20 40 A3     MX
    RTS                             ; $8AA448  60           MX
L_8AA449:
    LDX #$0004                      ; $8AA449  A2 04 00     MX
    JSR L_8AA45E                    ; $8AA44C  20 5E A4     MX
    LDA $1685                       ; $8AA44F  AD 85 16     MX
    AND #$001F                      ; $8AA452  29 1F 00     MX
    ASL                             ; $8AA455  0A           MX
    TAX                             ; $8AA456  AA           MX
    INC $1C18,X                     ; $8AA457  FE 18 1C     MX
    JSR L_8AA340                    ; $8AA45A  20 40 A3     MX
    RTS                             ; $8AA45D  60           MX
L_8AA45E:
    PHX                             ; $8AA45E  DA           MX
    JSR L_8AA46D                    ; $8AA45F  20 6D A4     MX
    PLA                             ; $8AA462  68           MX
    BCC L_8AA46C                    ; $8AA463  90 07        MX
    EOR #$0002                      ; $8AA465  49 02 00     MX
    TAX                             ; $8AA468  AA           MX
    JSR L_8AA46D                    ; $8AA469  20 6D A4     MX
L_8AA46C:
    RTS                             ; $8AA46C  60           MX
L_8AA46D:
    LDA $16CC,X                     ; $8AA46D  BD CC 16     MX  initial1
    BIT #$8040                      ; $8AA470  89 40 80     MX
    BEQ L_8AA477                    ; $8AA473  F0 02        MX
    SEC                             ; $8AA475  38           MX
L_8AA476:
    RTS                             ; $8AA476  60           MX
L_8AA477:
    SEP #$20                        ; $8AA477  E2 20        MX
    LDA $16CC,X                     ; $8AA479  BD CC 16     mX  initial1
    STA $00A4                       ; $8AA47C  8D A4 00     mX
    LDA $16D4,X                     ; $8AA47F  BD D4 16     mX
    STA $00A5                       ; $8AA482  8D A5 00     mX
    LDA $16DC,X                     ; $8AA485  BD DC 16     mX
    STA $00A6                       ; $8AA488  8D A6 00     mX
    LDA #$00                        ; $8AA48B  A9 00        mX
    STA $00A7                       ; $8AA48D  8D A7 00     mX
    REP #$20                        ; $8AA490  C2 20        mX
    PHX                             ; $8AA492  DA           MX
    JSR find_record                 ; $8AA493  20 FF D6     MX
    PLX                             ; $8AA496  FA           MX
    BCS L_8AA476                    ; $8AA497  B0 DD        MX
    STA $1724,X                     ; $8AA499  9D 24 17     MX  player_record
    PHX                             ; $8AA49C  DA           MX
    TAX                             ; $8AA49D  AA           MX
    JSR L_8AA4B2                    ; $8AA49E  20 B2 A4     MX
    PLX                             ; $8AA4A1  FA           MX
    CLC                             ; $8AA4A2  18           MX
    RTS                             ; $8AA4A3  60           MX
L_8AA4A4:
    LDY #$0034                      ; $8AA4A4  A0 34 00     MX
    LDA #$0000                      ; $8AA4A7  A9 00 00     MX
L_8AA4AA:
    STA $1C18,Y                     ; $8AA4AA  99 18 1C     MX
    DEY                             ; $8AA4AD  88           MX
    DEY                             ; $8AA4AE  88           MX
    BPL L_8AA4AA                    ; $8AA4AF  10 F9        MX
    RTS                             ; $8AA4B1  60           MX
L_8AA4B2:
    SEP #$20                        ; $8AA4B2  E2 20        MX
    LDA $0019EE,X                   ; $8AA4B4  BF EE 19 00  mX  record_teams
    STA $1C15                       ; $8AA4B8  8D 15 1C     mX
    LDA $0019EF,X                   ; $8AA4BB  BF EF 19 00  mX
    STA $1C14                       ; $8AA4BF  8D 14 1C     mX
    LDA $0019F0,X                   ; $8AA4C2  BF F0 19 00  mX
    STA $1C17                       ; $8AA4C6  8D 17 1C     mX
    LDA $0019F1,X                   ; $8AA4C9  BF F1 19 00  mX
    STA $1C16                       ; $8AA4CD  8D 16 1C     mX
    REP #$20                        ; $8AA4D0  C2 20        mX
    PHX                             ; $8AA4D2  DA           MX
    LDY #$0000                      ; $8AA4D3  A0 00 00     MX
    LDX #$0000                      ; $8AA4D6  A2 00 00     MX
    LDA #$001B                      ; $8AA4D9  A9 1B 00     MX
    STA $00A8                       ; $8AA4DC  8D A8 00     MX
    LDA $1C14,Y                     ; $8AA4DF  B9 14 1C     MX
    SEC                             ; $8AA4E2  38           MX
    ROL                             ; $8AA4E3  2A           MX
    STA $00A6                       ; $8AA4E4  8D A6 00     MX
L_8AA4E7:
    BCC L_8AA4EC                    ; $8AA4E7  90 03        MX
    INC $1C18,X                     ; $8AA4E9  FE 18 1C     MX
L_8AA4EC:
    ASL $00A6                       ; $8AA4EC  0E A6 00     MX
    BNE L_8AA4FA                    ; $8AA4EF  D0 09        MX
    INY                             ; $8AA4F1  C8           MX
    INY                             ; $8AA4F2  C8           MX
    LDA $1C14,Y                     ; $8AA4F3  B9 14 1C     MX
    ROL                             ; $8AA4F6  2A           MX
    STA $00A6                       ; $8AA4F7  8D A6 00     MX
L_8AA4FA:
    INX                             ; $8AA4FA  E8           MX
    INX                             ; $8AA4FB  E8           MX
    DEC $00A8                       ; $8AA4FC  CE A8 00     MX
    BNE L_8AA4E7                    ; $8AA4FF  D0 E6        MX
    PLX                             ; $8AA501  FA           MX
    RTS                             ; $8AA502  60           MX
    db $07,$00,$0A,$00,$15,$00,$1A,$00,$19,$00,$06,$00,$08,$00,$13,$00 ; $8AA503
    db $12,$00,$0D,$00,$01,$00,$18,$00,$11,$00,$00,$00,$14,$00,$09,$00 ; $8AA513
    db $0E,$00,$02,$00,$16,$00,$10,$00,$0B,$00,$17,$00,$04,$00,$0C,$00 ; $8AA523
    db $05,$00,$03,$00,$0F,$00                                         ; $8AA533
L_8AA539:
    LDA $001667                     ; $8AA539  AF 67 16 00  MX
L_8AA53D:
    BNE L_8AA546                    ; $8AA53D  D0 07        MX
L_8AA53F:
    LDA #$0040                      ; $8AA53F  A9 40 00     MX
L_8AA542:
    DEC                             ; $8AA542  3A           MX
L_8AA543:
    BNE L_8AA542                    ; $8AA543  D0 FD        MX
L_8AA545:
    RTS                             ; $8AA545  60           MX
L_8AA546:
    DEC                             ; $8AA546  3A           MX
L_8AA547:
    ASL                             ; $8AA547  0A           MX
L_8AA548:
    TAX                             ; $8AA548  AA           MX
L_8AA549:
    JSR ($A554,X)                   ; $8AA549  FC 54 A5     MX
L_8AA54C:
    LDA #$0000                      ; $8AA54C  A9 00 00     MX
L_8AA54F:
    STA $001667                     ; $8AA54F  8F 67 16 00  MX
L_8AA553:
    RTS                             ; $8AA553  60           MX
    db $6C,$A5,$99,$A5,$D0,$A5,$12,$A6,$62,$A6,$8D,$A6,$D1,$A6,$08,$A7 ; $8AA554
    db $33,$A7,$6A,$A7,$D3,$A7,$FC,$A7                                 ; $8AA564
L_8AA56C:
    SEP #$10                        ; $8AA56C  E2 10        MX
L_8AA56E:
    LDA $001673                     ; $8AA56E  AF 73 16 00  Mx
L_8AA572:
    STA $00D0                       ; $8AA572  8D D0 00     Mx
L_8AA575:
    LDX #$0A                        ; $8AA575  A2 0A        Mx
L_8AA577:
    STX $00D2                       ; $8AA577  8E D2 00     Mx
L_8AA57A:
    LDX #$10                        ; $8AA57A  A2 10        Mx
L_8AA57C:
    LDA #$000A                      ; $8AA57C  A9 0A 00     Mx
L_8AA57F:
    JSR L_8AA9AD                    ; $8AA57F  20 AD A9     Mx
L_8AA582:
    LDA $001675                     ; $8AA582  AF 75 16 00  Mx
L_8AA586:
    STA $00D0                       ; $8AA586  8D D0 00     Mx
L_8AA589:
    LDX #$0A                        ; $8AA589  A2 0A        Mx
L_8AA58B:
    STX $00D2                       ; $8AA58B  8E D2 00     Mx
L_8AA58E:
    LDX #$2F                        ; $8AA58E  A2 2F        Mx
L_8AA590:
    LDA #$0008                      ; $8AA590  A9 08 00     Mx
L_8AA593:
    JSR L_8AA9AD                    ; $8AA593  20 AD A9     Mx
L_8AA596:
    REP #$10                        ; $8AA596  C2 10        Mx
L_8AA598:
    RTS                             ; $8AA598  60           MX
L_8AA599:
    SEP #$30                        ; $8AA599  E2 30        MX
    LDA #$C0                        ; $8AA59B  A9 C0        mx
    STA $2116                       ; $8AA59D  8D 16 21     mx
    LDA #$75                        ; $8AA5A0  A9 75        mx
    STA $2117                       ; $8AA5A2  8D 17 21     mx
    LDA #$01                        ; $8AA5A5  A9 01        mx
    STA $4300                       ; $8AA5A7  8D 00 43     mx
    LDA #$18                        ; $8AA5AA  A9 18        mx
    STA $4301                       ; $8AA5AC  8D 01 43     mx
    LDA #$00                        ; $8AA5AF  A9 00        mx
    STA $4302                       ; $8AA5B1  8D 02 43     mx
    LDA #$ED                        ; $8AA5B4  A9 ED        mx
    STA $4303                       ; $8AA5B6  8D 03 43     mx
    LDA #$7E                        ; $8AA5B9  A9 7E        mx
    STA $4304                       ; $8AA5BB  8D 04 43     mx
    LDA #$C0                        ; $8AA5BE  A9 C0        mx
    STA $4305                       ; $8AA5C0  8D 05 43     mx
    LDA #$01                        ; $8AA5C3  A9 01        mx
    STA $4306                       ; $8AA5C5  8D 06 43     mx
    LDA #$01                        ; $8AA5C8  A9 01        mx
    STA $420B                       ; $8AA5CA  8D 0B 42     mx
    REP #$30                        ; $8AA5CD  C2 30        mx
    RTS                             ; $8AA5CF  60           MX
L_8AA5D0:
    LDA $001687                     ; $8AA5D0  AF 87 16 00  MX
    STA $2116                       ; $8AA5D4  8D 16 21     MX
    LDA #$1801                      ; $8AA5D7  A9 01 18     MX
    STA $4300                       ; $8AA5DA  8D 00 43     MX
    LDA $001689                     ; $8AA5DD  AF 89 16 00  MX
    STA $4302                       ; $8AA5E1  8D 02 43     MX
    LDA #$0A80                      ; $8AA5E4  A9 80 0A     MX
    STA $4305                       ; $8AA5E7  8D 05 43     MX
    SEP #$20                        ; $8AA5EA  E2 20        MX
    LDA #$7E                        ; $8AA5EC  A9 7E        mX
    STA $4304                       ; $8AA5EE  8D 04 43     mX
    LDA #$01                        ; $8AA5F1  A9 01        mX
    STA $420B                       ; $8AA5F3  8D 0B 42     mX
    REP #$20                        ; $8AA5F6  C2 20        mX
    SEP #$10                        ; $8AA5F8  E2 10        MX
    LDA $168B                       ; $8AA5FA  AD 8B 16     Mx
    STA $00D0                       ; $8AA5FD  8D D0 00     Mx
    LDX $168D                       ; $8AA600  AE 8D 16     Mx
    STX $00D2                       ; $8AA603  8E D2 00     Mx
    LDX $168E                       ; $8AA606  AE 8E 16     Mx
    LDA #$0040                      ; $8AA609  A9 40 00     Mx
    JSR L_8AA9AD                    ; $8AA60C  20 AD A9     Mx
    REP #$10                        ; $8AA60F  C2 10        Mx
    RTS                             ; $8AA611  60           MX
L_8AA612:
    SEP #$30                        ; $8AA612  E2 30        MX
    LDA #$C0                        ; $8AA614  A9 C0        mx
    STA $2116                       ; $8AA616  8D 16 21     mx
    LDA #$75                        ; $8AA619  A9 75        mx
    STA $2117                       ; $8AA61B  8D 17 21     mx
    LDA #$01                        ; $8AA61E  A9 01        mx
    STA $4300                       ; $8AA620  8D 00 43     mx
    LDA #$18                        ; $8AA623  A9 18        mx
    STA $4301                       ; $8AA625  8D 01 43     mx
    LDA #$00                        ; $8AA628  A9 00        mx
    STA $4302                       ; $8AA62A  8D 02 43     mx
    LDA #$ED                        ; $8AA62D  A9 ED        mx
    STA $4303                       ; $8AA62F  8D 03 43     mx
    LDA #$7E                        ; $8AA632  A9 7E        mx
    STA $4304                       ; $8AA634  8D 04 43     mx
    LDA #$C0                        ; $8AA637  A9 C0        mx
    STA $4305                       ; $8AA639  8D 05 43     mx
    LDA #$01                        ; $8AA63C  A9 01        mx
    STA $4306                       ; $8AA63E  8D 06 43     mx
    LDA #$01                        ; $8AA641  A9 01        mx
    STA $420B                       ; $8AA643  8D 0B 42     mx
    REP #$20                        ; $8AA646  C2 20        mx
    SEP #$10                        ; $8AA648  E2 10        Mx
    LDA $168B                       ; $8AA64A  AD 8B 16     Mx
    STA $00D0                       ; $8AA64D  8D D0 00     Mx
    LDX $168D                       ; $8AA650  AE 8D 16     Mx
    STX $00D2                       ; $8AA653  8E D2 00     Mx
    LDX $168E                       ; $8AA656  AE 8E 16     Mx
    LDA #$0020                      ; $8AA659  A9 20 00     Mx
    JSR L_8AA9AD                    ; $8AA65C  20 AD A9     Mx
    REP #$10                        ; $8AA65F  C2 10        Mx
    RTS                             ; $8AA661  60           MX
L_8AA662:
    LDA $001687                     ; $8AA662  AF 87 16 00  MX
    STA $2116                       ; $8AA666  8D 16 21     MX
    LDA #$1801                      ; $8AA669  A9 01 18     MX
    STA $4300                       ; $8AA66C  8D 00 43     MX
    LDA $001689                     ; $8AA66F  AF 89 16 00  MX
    STA $4302                       ; $8AA673  8D 02 43     MX
    LDA #$0040                      ; $8AA676  A9 40 00     MX
    STA $4305                       ; $8AA679  8D 05 43     MX
    SEP #$20                        ; $8AA67C  E2 20        MX
    LDA $00168F                     ; $8AA67E  AF 8F 16 00  mX
    STA $4304                       ; $8AA682  8D 04 43     mX
    LDA #$01                        ; $8AA685  A9 01        mX
    STA $420B                       ; $8AA687  8D 0B 42     mX
    REP #$20                        ; $8AA68A  C2 20        mX
    RTS                             ; $8AA68C  60           MX
L_8AA68D:
    SEP #$10                        ; $8AA68D  E2 10        MX
    LDA $168B                       ; $8AA68F  AD 8B 16     Mx
    STA $00D0                       ; $8AA692  8D D0 00     Mx
    LDX $168D                       ; $8AA695  AE 8D 16     Mx
    STX $00D2                       ; $8AA698  8E D2 00     Mx
    LDX $168E                       ; $8AA69B  AE 8E 16     Mx
    LDA #$0020                      ; $8AA69E  A9 20 00     Mx
    JSR L_8AA9AD                    ; $8AA6A1  20 AD A9     Mx
    REP #$10                        ; $8AA6A4  C2 10        Mx
    LDA $001687                     ; $8AA6A6  AF 87 16 00  MX
    STA $2116                       ; $8AA6AA  8D 16 21     MX
    LDA #$1801                      ; $8AA6AD  A9 01 18     MX
    STA $4300                       ; $8AA6B0  8D 00 43     MX
    LDA $001689                     ; $8AA6B3  AF 89 16 00  MX
    STA $4302                       ; $8AA6B7  8D 02 43     MX
    LDA #$0040                      ; $8AA6BA  A9 40 00     MX
    STA $4305                       ; $8AA6BD  8D 05 43     MX
    SEP #$20                        ; $8AA6C0  E2 20        MX
    LDA $00168F                     ; $8AA6C2  AF 8F 16 00  mX
    STA $4304                       ; $8AA6C6  8D 04 43     mX
    LDA #$01                        ; $8AA6C9  A9 01        mX
    STA $420B                       ; $8AA6CB  8D 0B 42     mX
    REP #$20                        ; $8AA6CE  C2 20        mX
    RTS                             ; $8AA6D0  60           MX
L_8AA6D1:
    SEP #$30                        ; $8AA6D1  E2 30        MX
L_8AA6D3:
    LDA #$80                        ; $8AA6D3  A9 80        mx
L_8AA6D5:
    STA $2116                       ; $8AA6D5  8D 16 21     mx
L_8AA6D8:
    LDA #$58                        ; $8AA6D8  A9 58        mx
L_8AA6DA:
    STA $2117                       ; $8AA6DA  8D 17 21     mx
L_8AA6DD:
    LDA #$01                        ; $8AA6DD  A9 01        mx
L_8AA6DF:
    STA $4300                       ; $8AA6DF  8D 00 43     mx
L_8AA6E2:
    LDA #$18                        ; $8AA6E2  A9 18        mx
L_8AA6E4:
    STA $4301                       ; $8AA6E4  8D 01 43     mx
L_8AA6E7:
    LDA #$00                        ; $8AA6E7  A9 00        mx
L_8AA6E9:
    STA $4302                       ; $8AA6E9  8D 02 43     mx
L_8AA6EC:
    LDA #$C3                        ; $8AA6EC  A9 C3        mx
L_8AA6EE:
    STA $4303                       ; $8AA6EE  8D 03 43     mx
L_8AA6F1:
    LDA #$7E                        ; $8AA6F1  A9 7E        mx
L_8AA6F3:
    STA $4304                       ; $8AA6F3  8D 04 43     mx
L_8AA6F6:
    LDA #$40                        ; $8AA6F6  A9 40        mx
L_8AA6F8:
    STA $4305                       ; $8AA6F8  8D 05 43     mx
L_8AA6FB:
    LDA #$04                        ; $8AA6FB  A9 04        mx
L_8AA6FD:
    STA $4306                       ; $8AA6FD  8D 06 43     mx
L_8AA700:
    LDA #$01                        ; $8AA700  A9 01        mx
L_8AA702:
    STA $420B                       ; $8AA702  8D 0B 42     mx
L_8AA705:
    REP #$30                        ; $8AA705  C2 30        mx
L_8AA707:
    RTS                             ; $8AA707  60           MX
L_8AA708:
    LDA $001687                     ; $8AA708  AF 87 16 00  MX
L_8AA70C:
    STA $2116                       ; $8AA70C  8D 16 21     MX
L_8AA70F:
    LDA #$1801                      ; $8AA70F  A9 01 18     MX
L_8AA712:
    STA $4300                       ; $8AA712  8D 00 43     MX
L_8AA715:
    LDA $001689                     ; $8AA715  AF 89 16 00  MX
L_8AA719:
    STA $4302                       ; $8AA719  8D 02 43     MX
L_8AA71C:
    LDA #$0E00                      ; $8AA71C  A9 00 0E     MX
L_8AA71F:
    STA $4305                       ; $8AA71F  8D 05 43     MX
L_8AA722:
    SEP #$20                        ; $8AA722  E2 20        MX
L_8AA724:
    LDA $00168F                     ; $8AA724  AF 8F 16 00  mX
L_8AA728:
    STA $4304                       ; $8AA728  8D 04 43     mX
L_8AA72B:
    LDA #$01                        ; $8AA72B  A9 01        mX
L_8AA72D:
    STA $420B                       ; $8AA72D  8D 0B 42     mX
L_8AA730:
    REP #$20                        ; $8AA730  C2 20        mX
L_8AA732:
    RTS                             ; $8AA732  60           MX
L_8AA733:
    SEP #$30                        ; $8AA733  E2 30        MX
L_8AA735:
    LDA #$00                        ; $8AA735  A9 00        mx
L_8AA737:
    STA $2116                       ; $8AA737  8D 16 21     mx
L_8AA73A:
    LDA #$28                        ; $8AA73A  A9 28        mx
L_8AA73C:
    STA $2117                       ; $8AA73C  8D 17 21     mx
L_8AA73F:
    LDA #$01                        ; $8AA73F  A9 01        mx
L_8AA741:
    STA $4300                       ; $8AA741  8D 00 43     mx
L_8AA744:
    LDA #$18                        ; $8AA744  A9 18        mx
L_8AA746:
    STA $4301                       ; $8AA746  8D 01 43     mx
L_8AA749:
    LDA #$00                        ; $8AA749  A9 00        mx
L_8AA74B:
    STA $4302                       ; $8AA74B  8D 02 43     mx
L_8AA74E:
    LDA #$C3                        ; $8AA74E  A9 C3        mx
L_8AA750:
    STA $4303                       ; $8AA750  8D 03 43     mx
L_8AA753:
    LDA #$7E                        ; $8AA753  A9 7E        mx
L_8AA755:
    STA $4304                       ; $8AA755  8D 04 43     mx
L_8AA758:
    LDA #$00                        ; $8AA758  A9 00        mx
L_8AA75A:
    STA $4305                       ; $8AA75A  8D 05 43     mx
L_8AA75D:
    LDA #$07                        ; $8AA75D  A9 07        mx
L_8AA75F:
    STA $4306                       ; $8AA75F  8D 06 43     mx
L_8AA762:
    LDA #$01                        ; $8AA762  A9 01        mx
L_8AA764:
    STA $420B                       ; $8AA764  8D 0B 42     mx
L_8AA767:
    REP #$30                        ; $8AA767  C2 30        mx
L_8AA769:
    RTS                             ; $8AA769  60           MX
L_8AA76A:
    SEP #$30                        ; $8AA76A  E2 30        MX
    LDA #$00                        ; $8AA76C  A9 00        mx
    STA $2116                       ; $8AA76E  8D 16 21     mx
    LDA #$3C                        ; $8AA771  A9 3C        mx
    STA $2117                       ; $8AA773  8D 17 21     mx
    LDA #$01                        ; $8AA776  A9 01        mx
    STA $4300                       ; $8AA778  8D 00 43     mx
    LDA #$18                        ; $8AA77B  A9 18        mx
    STA $4301                       ; $8AA77D  8D 01 43     mx
    LDA #$00                        ; $8AA780  A9 00        mx
    STA $4302                       ; $8AA782  8D 02 43     mx
    LDA #$C3                        ; $8AA785  A9 C3        mx
    STA $4303                       ; $8AA787  8D 03 43     mx
    LDA #$7E                        ; $8AA78A  A9 7E        mx
    STA $4304                       ; $8AA78C  8D 04 43     mx
    LDA #$00                        ; $8AA78F  A9 00        mx
    STA $4305                       ; $8AA791  8D 05 43     mx
    LDA #$07                        ; $8AA794  A9 07        mx
    STA $4306                       ; $8AA796  8D 06 43     mx
    LDA #$01                        ; $8AA799  A9 01        mx
    STA $420B                       ; $8AA79B  8D 0B 42     mx
    LDA #$00                        ; $8AA79E  A9 00        mx
    STA $2116                       ; $8AA7A0  8D 16 21     mx
    LDA #$40                        ; $8AA7A3  A9 40        mx
    STA $2117                       ; $8AA7A5  8D 17 21     mx
    LDA #$01                        ; $8AA7A8  A9 01        mx
    STA $4300                       ; $8AA7AA  8D 00 43     mx
    LDA #$18                        ; $8AA7AD  A9 18        mx
    STA $4301                       ; $8AA7AF  8D 01 43     mx
    LDA #$00                        ; $8AA7B2  A9 00        mx
    STA $4302                       ; $8AA7B4  8D 02 43     mx
    LDA #$CA                        ; $8AA7B7  A9 CA        mx
    STA $4303                       ; $8AA7B9  8D 03 43     mx
    LDA #$7E                        ; $8AA7BC  A9 7E        mx
    STA $4304                       ; $8AA7BE  8D 04 43     mx
    LDA #$00                        ; $8AA7C1  A9 00        mx
    STA $4305                       ; $8AA7C3  8D 05 43     mx
    LDA #$07                        ; $8AA7C6  A9 07        mx
    STA $4306                       ; $8AA7C8  8D 06 43     mx
    LDA #$01                        ; $8AA7CB  A9 01        mx
    STA $420B                       ; $8AA7CD  8D 0B 42     mx
    REP #$30                        ; $8AA7D0  C2 30        mx
    RTS                             ; $8AA7D2  60           MX
L_8AA7D3:
    LDA $001687                     ; $8AA7D3  AF 87 16 00  MX
    STA $2116                       ; $8AA7D7  8D 16 21     MX
    LDA #$1801                      ; $8AA7DA  A9 01 18     MX
    STA $4300                       ; $8AA7DD  8D 00 43     MX
    LDA $001689                     ; $8AA7E0  AF 89 16 00  MX
    STA $4302                       ; $8AA7E4  8D 02 43     MX
    LDA #$0A00                      ; $8AA7E7  A9 00 0A     MX
    STA $4305                       ; $8AA7EA  8D 05 43     MX
    SEP #$20                        ; $8AA7ED  E2 20        MX
    LDA #$7F                        ; $8AA7EF  A9 7F        mX
    STA $4304                       ; $8AA7F1  8D 04 43     mX
    LDA #$01                        ; $8AA7F4  A9 01        mX
    STA $420B                       ; $8AA7F6  8D 0B 42     mX
    REP #$20                        ; $8AA7F9  C2 20        mX
    RTS                             ; $8AA7FB  60           MX
L_8AA7FC:
    SEP #$30                        ; $8AA7FC  E2 30        MX
    LDA #$A0                        ; $8AA7FE  A9 A0        mx
    STA $2116                       ; $8AA800  8D 16 21     mx
    LDA #$76                        ; $8AA803  A9 76        mx
    STA $2117                       ; $8AA805  8D 17 21     mx
    LDA #$01                        ; $8AA808  A9 01        mx
    STA $4300                       ; $8AA80A  8D 00 43     mx
    LDA #$18                        ; $8AA80D  A9 18        mx
    STA $4301                       ; $8AA80F  8D 01 43     mx
    LDA #$00                        ; $8AA812  A9 00        mx
    STA $4302                       ; $8AA814  8D 02 43     mx
    LDA #$EF                        ; $8AA817  A9 EF        mx
    STA $4303                       ; $8AA819  8D 03 43     mx
    LDA #$7E                        ; $8AA81C  A9 7E        mx
    STA $4304                       ; $8AA81E  8D 04 43     mx
    LDA #$80                        ; $8AA821  A9 80        mx
    STA $4305                       ; $8AA823  8D 05 43     mx
    LDA #$01                        ; $8AA826  A9 01        mx
    STA $4306                       ; $8AA828  8D 06 43     mx
    LDA #$01                        ; $8AA82B  A9 01        mx
    STA $420B                       ; $8AA82D  8D 0B 42     mx
    REP #$30                        ; $8AA830  C2 30        mx
    RTS                             ; $8AA832  60           MX
L_8AA833:
    LDA #$0001                      ; $8AA833  A9 01 00     MX
    JSR L_8AA83D                    ; $8AA836  20 3D A8     MX
    RTL                             ; $8AA839  6B           MX
L_8AA83A:
    LDA #$0000                      ; $8AA83A  A9 00 00     MX
L_8AA83D:
    STA $1D74                       ; $8AA83D  8D 74 1D     MX
L_8AA840:
    LDA $0008                       ; $8AA840  AD 08 00     MX
L_8AA843:
    EOR #$FFFF                      ; $8AA843  49 FF FF     MX
L_8AA846:
    STA $1669                       ; $8AA846  8D 69 16     MX
L_8AA849:
    LDA $000A                       ; $8AA849  AD 0A 00     MX
L_8AA84C:
    EOR #$FFFF                      ; $8AA84C  49 FF FF     MX
L_8AA84F:
    STA $166B                       ; $8AA84F  8D 6B 16     MX
L_8AA852:
    LDA $000C                       ; $8AA852  AD 0C 00     MX
L_8AA855:
    EOR #$FFFF                      ; $8AA855  49 FF FF     MX
L_8AA858:
    STA $166D                       ; $8AA858  8D 6D 16     MX
L_8AA85B:
    LDA $000E                       ; $8AA85B  AD 0E 00     MX
L_8AA85E:
    EOR #$FFFF                      ; $8AA85E  49 FF FF     MX
L_8AA861:
    STA $166F                       ; $8AA861  8D 6F 16     MX
L_8AA864:
    STZ $1D3F                       ; $8AA864  9C 3F 1D     MX
L_8AA867:
    JSL L_80B02B                    ; $8AA867  22 2B B0 80  MX
L_8AA86B:
    LDA $1D3D                       ; $8AA86B  AD 3D 1D     MX
L_8AA86E:
    AND #$00FF                      ; $8AA86E  29 FF 00     MX
L_8AA871:
    BEQ L_8AA882                    ; $8AA871  F0 0F        MX
    CMP #$0080                      ; $8AA873  C9 80 00     MX
    BNE L_8AA87C                    ; $8AA876  D0 04        MX
    JML $0DFD21                     ; $8AA878  5C 21 FD 0D  MX
L_8AA87C:
    JSL L_80B0E2                    ; $8AA87C  22 E2 B0 80  MX
    BRA L_8AA8A0                    ; $8AA880  80 1E        MX
L_8AA882:
    SEP #$20                        ; $8AA882  E2 20        MX
L_8AA884:
    LDA $004212                     ; $8AA884  AF 12 42 00  mX
L_8AA888:
    AND #$01                        ; $8AA888  29 01        mX
L_8AA88A:
    BNE L_8AA884                    ; $8AA88A  D0 F8        mX
L_8AA88C:
    REP #$20                        ; $8AA88C  C2 20        mX
L_8AA88E:
    LDA $4218                       ; $8AA88E  AD 18 42     MX
L_8AA891:
    STA $1D47                       ; $8AA891  8D 47 1D     MX
L_8AA894:
    LDA $421A                       ; $8AA894  AD 1A 42     MX
L_8AA897:
    STA $1D45                       ; $8AA897  8D 45 1D     MX
L_8AA89A:
    STZ $1D43                       ; $8AA89A  9C 43 1D     MX
L_8AA89D:
    STZ $1D41                       ; $8AA89D  9C 41 1D     MX
L_8AA8A0:
    LDA $1D47                       ; $8AA8A0  AD 47 1D     MX
L_8AA8A3:
    STA $0008                       ; $8AA8A3  8D 08 00     MX
L_8AA8A6:
    STA $1CC9                       ; $8AA8A6  8D C9 1C     MX
L_8AA8A9:
    LDA $1D45                       ; $8AA8A9  AD 45 1D     MX
L_8AA8AC:
    STA $000A                       ; $8AA8AC  8D 0A 00     MX
L_8AA8AF:
    TSB $1CC9                       ; $8AA8AF  0C C9 1C     MX
L_8AA8B2:
    LDA $1D43                       ; $8AA8B2  AD 43 1D     MX
L_8AA8B5:
    STA $000C                       ; $8AA8B5  8D 0C 00     MX
L_8AA8B8:
    TSB $1CC9                       ; $8AA8B8  0C C9 1C     MX
L_8AA8BB:
    LDA $1D41                       ; $8AA8BB  AD 41 1D     MX
L_8AA8BE:
    STA $000E                       ; $8AA8BE  8D 0E 00     MX
L_8AA8C1:
    TSB $1CC9                       ; $8AA8C1  0C C9 1C     MX
L_8AA8C4:
    LDA $1CCB                       ; $8AA8C4  AD CB 1C     MX
L_8AA8C7:
    CMP #$0010                      ; $8AA8C7  C9 10 00     MX
L_8AA8CA:
    BCC L_8AA8D0                    ; $8AA8CA  90 04        MX
    JML $0DFD2A                     ; $8AA8CC  5C 2A FD 0D  MX
L_8AA8D0:
    LDA $1CC9                       ; $8AA8D0  AD C9 1C     MX
L_8AA8D3:
    ORA $1D3F                       ; $8AA8D3  0D 3F 1D     MX
L_8AA8D6:
    AND #$000F                      ; $8AA8D6  29 0F 00     MX
L_8AA8D9:
    BEQ L_8AA8E0                    ; $8AA8D9  F0 05        MX
    INC $1CCB                       ; $8AA8DB  EE CB 1C     MX
    BRA L_8AA8E3                    ; $8AA8DE  80 03        MX
L_8AA8E0:
    STZ $1CCB                       ; $8AA8E0  9C CB 1C     MX
L_8AA8E3:
    LDA $1D74                       ; $8AA8E3  AD 74 1D     MX
L_8AA8E6:
    BNE L_8AA938                    ; $8AA8E6  D0 50        MX
L_8AA8E8:
    LDA $0008                       ; $8AA8E8  AD 08 00     MX
L_8AA8EB:
    ORA $000A                       ; $8AA8EB  0D 0A 00     MX
L_8AA8EE:
    ORA $000C                       ; $8AA8EE  0D 0C 00     MX
L_8AA8F1:
    ORA $000E                       ; $8AA8F1  0D 0E 00     MX
L_8AA8F4:
    AND #$C0C0                      ; $8AA8F4  29 C0 C0     MX
L_8AA8F7:
    BEQ L_8AA930                    ; $8AA8F7  F0 37        MX
L_8AA8F9:
    LDA $0D01                       ; $8AA8F9  AD 01 0D     MX
L_8AA8FC:
    BNE L_8AA906                    ; $8AA8FC  D0 08        MX
L_8AA8FE:
    LDA #$0006                      ; $8AA8FE  A9 06 00     MX
L_8AA901:
    STA $0D01                       ; $8AA901  8D 01 0D     MX
L_8AA904:
    BRA L_8AA930                    ; $8AA904  80 2A        MX
L_8AA906:
    LDA $0008                       ; $8AA906  AD 08 00     MX
L_8AA909:
    AND #$3F3F                      ; $8AA909  29 3F 3F     MX
L_8AA90C:
    STA $0008                       ; $8AA90C  8D 08 00     MX
L_8AA90F:
    LDA $000A                       ; $8AA90F  AD 0A 00     MX
L_8AA912:
    AND #$3F3F                      ; $8AA912  29 3F 3F     MX
L_8AA915:
    STA $000A                       ; $8AA915  8D 0A 00     MX
L_8AA918:
    LDA $000C                       ; $8AA918  AD 0C 00     MX
L_8AA91B:
    AND #$3F3F                      ; $8AA91B  29 3F 3F     MX
L_8AA91E:
    STA $000C                       ; $8AA91E  8D 0C 00     MX
L_8AA921:
    LDA $000E                       ; $8AA921  AD 0E 00     MX
L_8AA924:
    AND #$3F3F                      ; $8AA924  29 3F 3F     MX
L_8AA927:
    STA $000E                       ; $8AA927  8D 0E 00     MX
L_8AA92A:
    LDA #$0006                      ; $8AA92A  A9 06 00     MX
L_8AA92D:
    STA $0D01                       ; $8AA92D  8D 01 0D     MX
L_8AA930:
    LDA $0D01                       ; $8AA930  AD 01 0D     MX
L_8AA933:
    BEQ L_8AA938                    ; $8AA933  F0 03        MX
L_8AA935:
    DEC $0D01                       ; $8AA935  CE 01 0D     MX
L_8AA938:
    LDA $0008                       ; $8AA938  AD 08 00     MX
L_8AA93B:
    ORA $000A                       ; $8AA93B  0D 0A 00     MX
L_8AA93E:
    ORA $000C                       ; $8AA93E  0D 0C 00     MX
L_8AA941:
    ORA $000E                       ; $8AA941  0D 0E 00     MX
L_8AA944:
    AND #$1000                      ; $8AA944  29 00 10     MX
L_8AA947:
    BEQ L_8AA980                    ; $8AA947  F0 37        MX
L_8AA949:
    LDA $0CFF                       ; $8AA949  AD FF 0C     MX
L_8AA94C:
    BNE L_8AA956                    ; $8AA94C  D0 08        MX
L_8AA94E:
    LDA #$000C                      ; $8AA94E  A9 0C 00     MX
L_8AA951:
    STA $0CFF                       ; $8AA951  8D FF 0C     MX
L_8AA954:
    BRA L_8AA980                    ; $8AA954  80 2A        MX
L_8AA956:
    LDA $0008                       ; $8AA956  AD 08 00     MX
L_8AA959:
    AND #$EFFF                      ; $8AA959  29 FF EF     MX
L_8AA95C:
    STA $0008                       ; $8AA95C  8D 08 00     MX
L_8AA95F:
    LDA $000A                       ; $8AA95F  AD 0A 00     MX
L_8AA962:
    AND #$EFFF                      ; $8AA962  29 FF EF     MX
L_8AA965:
    STA $000A                       ; $8AA965  8D 0A 00     MX
L_8AA968:
    LDA $000C                       ; $8AA968  AD 0C 00     MX
L_8AA96B:
    AND #$EFFF                      ; $8AA96B  29 FF EF     MX
L_8AA96E:
    STA $000C                       ; $8AA96E  8D 0C 00     MX
L_8AA971:
    LDA $000E                       ; $8AA971  AD 0E 00     MX
L_8AA974:
    AND #$EFFF                      ; $8AA974  29 FF EF     MX
L_8AA977:
    STA $000E                       ; $8AA977  8D 0E 00     MX
L_8AA97A:
    LDA #$000C                      ; $8AA97A  A9 0C 00     MX
L_8AA97D:
    STA $0CFF                       ; $8AA97D  8D FF 0C     MX
L_8AA980:
    LDA $0CFF                       ; $8AA980  AD FF 0C     MX
L_8AA983:
    BEQ L_8AA988                    ; $8AA983  F0 03        MX
L_8AA985:
    DEC $0CFF                       ; $8AA985  CE FF 0C     MX
L_8AA988:
    LDA $0008                       ; $8AA988  AD 08 00     MX
L_8AA98B:
    AND $1669                       ; $8AA98B  2D 69 16     MX
L_8AA98E:
    STA $1669                       ; $8AA98E  8D 69 16     MX
L_8AA991:
    LDA $000A                       ; $8AA991  AD 0A 00     MX
L_8AA994:
    AND $166B                       ; $8AA994  2D 6B 16     MX
L_8AA997:
    STA $166B                       ; $8AA997  8D 6B 16     MX
L_8AA99A:
    LDA $000C                       ; $8AA99A  AD 0C 00     MX
L_8AA99D:
    AND $166D                       ; $8AA99D  2D 6D 16     MX
L_8AA9A0:
    STA $166D                       ; $8AA9A0  8D 6D 16     MX
L_8AA9A3:
    LDA $000E                       ; $8AA9A3  AD 0E 00     MX
L_8AA9A6:
    AND $166F                       ; $8AA9A6  2D 6F 16     MX
L_8AA9A9:
    STA $166F                       ; $8AA9A9  8D 6F 16     MX
L_8AA9AC:
    RTS                             ; $8AA9AC  60           MX
L_8AA9AD:
    STA $4305                       ; $8AA9AD  8D 05 43     Mx
L_8AA9B0:
    LDA $00D0                       ; $8AA9B0  AD D0 00     Mx
L_8AA9B3:
    STA $4302                       ; $8AA9B3  8D 02 43     Mx
L_8AA9B6:
    SEP #$20                        ; $8AA9B6  E2 20        Mx
L_8AA9B8:
    LDA $00D2                       ; $8AA9B8  AD D2 00     mx
L_8AA9BB:
    STA $4304                       ; $8AA9BB  8D 04 43     mx
L_8AA9BE:
    TXA                             ; $8AA9BE  8A           mx
L_8AA9BF:
    STA $2121                       ; $8AA9BF  8D 21 21     mx
L_8AA9C2:
    LDA #$22                        ; $8AA9C2  A9 22        mx
L_8AA9C4:
    STA $4301                       ; $8AA9C4  8D 01 43     mx
L_8AA9C7:
    STZ $4300                       ; $8AA9C7  9C 00 43     mx
L_8AA9CA:
    LDA #$01                        ; $8AA9CA  A9 01        mx
L_8AA9CC:
    STA $420B                       ; $8AA9CC  8D 0B 42     mx
L_8AA9CF:
    REP #$20                        ; $8AA9CF  C2 20        mx
L_8AA9D1:
    RTS                             ; $8AA9D1  60           Mx
L_8AA9D2:
    LDA $1661                       ; $8AA9D2  AD 61 16     MX
    AND #$00FF                      ; $8AA9D5  29 FF 00     MX
    PHA                             ; $8AA9D8  48           MX
    PLB                             ; $8AA9D9  AB           MX
    LDX #$0000                      ; $8AA9DA  A2 00 00     MX
    LDA #$002A                      ; $8AA9DD  A9 2A 00     MX
L_8AA9E0:
    STA $A4                         ; $8AA9E0  85 A4        MX
L_8AA9E2:
    LDA $0000,Y                     ; $8AA9E2  B9 00 00     MX
    STA $7EC300,X                   ; $8AA9E5  9F 00 C3 7E  MX
    LDA $0002,Y                     ; $8AA9E9  B9 02 00     MX
    STA $7EC302,X                   ; $8AA9EC  9F 02 C3 7E  MX
    LDA $0004,Y                     ; $8AA9F0  B9 04 00     MX
    STA $7EC304,X                   ; $8AA9F3  9F 04 C3 7E  MX
    LDA $0006,Y                     ; $8AA9F7  B9 06 00     MX
    STA $7EC306,X                   ; $8AA9FA  9F 06 C3 7E  MX
    LDA $0008,Y                     ; $8AA9FE  B9 08 00     MX
    STA $7EC308,X                   ; $8AAA01  9F 08 C3 7E  MX
    LDA $000A,Y                     ; $8AAA05  B9 0A 00     MX
    STA $7EC30A,X                   ; $8AAA08  9F 0A C3 7E  MX
    LDA $000C,Y                     ; $8AAA0C  B9 0C 00     MX
    STA $7EC30C,X                   ; $8AAA0F  9F 0C C3 7E  MX
    LDA $000E,Y                     ; $8AAA13  B9 0E 00     MX
    STA $7EC30E,X                   ; $8AAA16  9F 0E C3 7E  MX
    LDA $0010,Y                     ; $8AAA1A  B9 10 00     MX
    STA $7EC310,X                   ; $8AAA1D  9F 10 C3 7E  MX
    LDA $0012,Y                     ; $8AAA21  B9 12 00     MX
    STA $7EC312,X                   ; $8AAA24  9F 12 C3 7E  MX
    LDA $0014,Y                     ; $8AAA28  B9 14 00     MX
    STA $7EC314,X                   ; $8AAA2B  9F 14 C3 7E  MX
    LDA $0016,Y                     ; $8AAA2F  B9 16 00     MX
    STA $7EC316,X                   ; $8AAA32  9F 16 C3 7E  MX
    LDA $0018,Y                     ; $8AAA36  B9 18 00     MX
    STA $7EC318,X                   ; $8AAA39  9F 18 C3 7E  MX
    LDA $001A,Y                     ; $8AAA3D  B9 1A 00     MX
    STA $7EC31A,X                   ; $8AAA40  9F 1A C3 7E  MX
    LDA $001C,Y                     ; $8AAA44  B9 1C 00     MX
    STA $7EC31C,X                   ; $8AAA47  9F 1C C3 7E  MX
    LDA $001E,Y                     ; $8AAA4B  B9 1E 00     MX
    STA $7EC31E,X                   ; $8AAA4E  9F 1E C3 7E  MX
    SEP #$20                        ; $8AAA52  E2 20        MX
    LDA $0000,Y                     ; $8AAA54  B9 00 00     mX
    ORA $0001,Y                     ; $8AAA57  19 01 00     mX
    ORA $0010,Y                     ; $8AAA5A  19 10 00     mX
    ORA $0011,Y                     ; $8AAA5D  19 11 00     mX
    ORA $0020,Y                     ; $8AAA60  19 20 00     mX
    STA $A8                         ; $8AAA63  85 A8        mX
    LDA $0020,Y                     ; $8AAA65  B9 20 00     mX
    EOR #$FF                        ; $8AAA68  49 FF        mX
    AND $A8                         ; $8AAA6A  25 A8        mX
    STA $7EC320,X                   ; $8AAA6C  9F 20 C3 7E  mX
    LDA $0020,Y                     ; $8AAA70  B9 20 00     mX
    AND $A8                         ; $8AAA73  25 A8        mX
    STA $7EC321,X                   ; $8AAA75  9F 21 C3 7E  mX
    LDA #$FF                        ; $8AAA79  A9 FF        mX
    AND $A8                         ; $8AAA7B  25 A8        mX
    STA $7EC330,X                   ; $8AAA7D  9F 30 C3 7E  mX
    LDA #$00                        ; $8AAA81  A9 00        mX
    STA $7EC331,X                   ; $8AAA83  9F 31 C3 7E  mX
    LDA $0002,Y                     ; $8AAA87  B9 02 00     mX
    ORA $0003,Y                     ; $8AAA8A  19 03 00     mX
    ORA $0012,Y                     ; $8AAA8D  19 12 00     mX
    ORA $0013,Y                     ; $8AAA90  19 13 00     mX
    ORA $0021,Y                     ; $8AAA93  19 21 00     mX
    STA $A8                         ; $8AAA96  85 A8        mX
    LDA $0021,Y                     ; $8AAA98  B9 21 00     mX
    EOR #$FF                        ; $8AAA9B  49 FF        mX
    AND $A8                         ; $8AAA9D  25 A8        mX
    STA $7EC322,X                   ; $8AAA9F  9F 22 C3 7E  mX
    LDA $0021,Y                     ; $8AAAA3  B9 21 00     mX
    AND $A8                         ; $8AAAA6  25 A8        mX
    STA $7EC323,X                   ; $8AAAA8  9F 23 C3 7E  mX
    LDA #$FF                        ; $8AAAAC  A9 FF        mX
    AND $A8                         ; $8AAAAE  25 A8        mX
    STA $7EC332,X                   ; $8AAAB0  9F 32 C3 7E  mX
    LDA #$00                        ; $8AAAB4  A9 00        mX
    STA $7EC333,X                   ; $8AAAB6  9F 33 C3 7E  mX
    LDA $0004,Y                     ; $8AAABA  B9 04 00     mX
    ORA $0005,Y                     ; $8AAABD  19 05 00     mX
    ORA $0014,Y                     ; $8AAAC0  19 14 00     mX
    ORA $0015,Y                     ; $8AAAC3  19 15 00     mX
    ORA $0022,Y                     ; $8AAAC6  19 22 00     mX
    STA $A8                         ; $8AAAC9  85 A8        mX
    LDA $0022,Y                     ; $8AAACB  B9 22 00     mX
    EOR #$FF                        ; $8AAACE  49 FF        mX
    AND $A8                         ; $8AAAD0  25 A8        mX
    STA $7EC324,X                   ; $8AAAD2  9F 24 C3 7E  mX
    LDA $0022,Y                     ; $8AAAD6  B9 22 00     mX
    AND $A8                         ; $8AAAD9  25 A8        mX
    STA $7EC325,X                   ; $8AAADB  9F 25 C3 7E  mX
    LDA #$FF                        ; $8AAADF  A9 FF        mX
    AND $A8                         ; $8AAAE1  25 A8        mX
    STA $7EC334,X                   ; $8AAAE3  9F 34 C3 7E  mX
    LDA #$00                        ; $8AAAE7  A9 00        mX
    STA $7EC335,X                   ; $8AAAE9  9F 35 C3 7E  mX
    LDA $0006,Y                     ; $8AAAED  B9 06 00     mX
    ORA $0007,Y                     ; $8AAAF0  19 07 00     mX
    ORA $0016,Y                     ; $8AAAF3  19 16 00     mX
    ORA $0017,Y                     ; $8AAAF6  19 17 00     mX
    ORA $0023,Y                     ; $8AAAF9  19 23 00     mX
    STA $A8                         ; $8AAAFC  85 A8        mX
    LDA $0023,Y                     ; $8AAAFE  B9 23 00     mX
    EOR #$FF                        ; $8AAB01  49 FF        mX
    AND $A8                         ; $8AAB03  25 A8        mX
    STA $7EC326,X                   ; $8AAB05  9F 26 C3 7E  mX
    LDA $0023,Y                     ; $8AAB09  B9 23 00     mX
    AND $A8                         ; $8AAB0C  25 A8        mX
    STA $7EC327,X                   ; $8AAB0E  9F 27 C3 7E  mX
    LDA #$FF                        ; $8AAB12  A9 FF        mX
    AND $A8                         ; $8AAB14  25 A8        mX
    STA $7EC336,X                   ; $8AAB16  9F 36 C3 7E  mX
    LDA #$00                        ; $8AAB1A  A9 00        mX
    STA $7EC337,X                   ; $8AAB1C  9F 37 C3 7E  mX
    LDA $0008,Y                     ; $8AAB20  B9 08 00     mX
    ORA $0009,Y                     ; $8AAB23  19 09 00     mX
    ORA $0018,Y                     ; $8AAB26  19 18 00     mX
    ORA $0019,Y                     ; $8AAB29  19 19 00     mX
    ORA $0024,Y                     ; $8AAB2C  19 24 00     mX
    STA $A8                         ; $8AAB2F  85 A8        mX
    LDA $0024,Y                     ; $8AAB31  B9 24 00     mX
    EOR #$FF                        ; $8AAB34  49 FF        mX
    AND $A8                         ; $8AAB36  25 A8        mX
    STA $7EC328,X                   ; $8AAB38  9F 28 C3 7E  mX
    LDA $0024,Y                     ; $8AAB3C  B9 24 00     mX
    AND $A8                         ; $8AAB3F  25 A8        mX
    STA $7EC329,X                   ; $8AAB41  9F 29 C3 7E  mX
    LDA #$FF                        ; $8AAB45  A9 FF        mX
    AND $A8                         ; $8AAB47  25 A8        mX
    STA $7EC338,X                   ; $8AAB49  9F 38 C3 7E  mX
    LDA #$00                        ; $8AAB4D  A9 00        mX
    STA $7EC339,X                   ; $8AAB4F  9F 39 C3 7E  mX
    LDA $000A,Y                     ; $8AAB53  B9 0A 00     mX
    ORA $000B,Y                     ; $8AAB56  19 0B 00     mX
    ORA $001A,Y                     ; $8AAB59  19 1A 00     mX
    ORA $001B,Y                     ; $8AAB5C  19 1B 00     mX
    ORA $0025,Y                     ; $8AAB5F  19 25 00     mX
    STA $A8                         ; $8AAB62  85 A8        mX
    LDA $0025,Y                     ; $8AAB64  B9 25 00     mX
    EOR #$FF                        ; $8AAB67  49 FF        mX
    AND $A8                         ; $8AAB69  25 A8        mX
    STA $7EC32A,X                   ; $8AAB6B  9F 2A C3 7E  mX
    LDA $0025,Y                     ; $8AAB6F  B9 25 00     mX
    AND $A8                         ; $8AAB72  25 A8        mX
    STA $7EC32B,X                   ; $8AAB74  9F 2B C3 7E  mX
    LDA #$FF                        ; $8AAB78  A9 FF        mX
    AND $A8                         ; $8AAB7A  25 A8        mX
    STA $7EC33A,X                   ; $8AAB7C  9F 3A C3 7E  mX
    LDA #$00                        ; $8AAB80  A9 00        mX
    STA $7EC33B,X                   ; $8AAB82  9F 3B C3 7E  mX
    LDA $000C,Y                     ; $8AAB86  B9 0C 00     mX
    ORA $000D,Y                     ; $8AAB89  19 0D 00     mX
    ORA $001C,Y                     ; $8AAB8C  19 1C 00     mX
    ORA $001D,Y                     ; $8AAB8F  19 1D 00     mX
    ORA $0026,Y                     ; $8AAB92  19 26 00     mX
    STA $A8                         ; $8AAB95  85 A8        mX
    LDA $0026,Y                     ; $8AAB97  B9 26 00     mX
    EOR #$FF                        ; $8AAB9A  49 FF        mX
    AND $A8                         ; $8AAB9C  25 A8        mX
    STA $7EC32C,X                   ; $8AAB9E  9F 2C C3 7E  mX
    LDA $0026,Y                     ; $8AABA2  B9 26 00     mX
    AND $A8                         ; $8AABA5  25 A8        mX
    STA $7EC32D,X                   ; $8AABA7  9F 2D C3 7E  mX
    LDA #$FF                        ; $8AABAB  A9 FF        mX
    AND $A8                         ; $8AABAD  25 A8        mX
    STA $7EC33C,X                   ; $8AABAF  9F 3C C3 7E  mX
    LDA #$00                        ; $8AABB3  A9 00        mX
    STA $7EC33D,X                   ; $8AABB5  9F 3D C3 7E  mX
    LDA $000E,Y                     ; $8AABB9  B9 0E 00     mX
    ORA $000F,Y                     ; $8AABBC  19 0F 00     mX
    ORA $001E,Y                     ; $8AABBF  19 1E 00     mX
    ORA $001F,Y                     ; $8AABC2  19 1F 00     mX
    ORA $0027,Y                     ; $8AABC5  19 27 00     mX
    STA $A8                         ; $8AABC8  85 A8        mX
    LDA $0027,Y                     ; $8AABCA  B9 27 00     mX
    EOR #$FF                        ; $8AABCD  49 FF        mX
    AND $A8                         ; $8AABCF  25 A8        mX
    STA $7EC32E,X                   ; $8AABD1  9F 2E C3 7E  mX
    LDA $0027,Y                     ; $8AABD5  B9 27 00     mX
    AND $A8                         ; $8AABD8  25 A8        mX
    STA $7EC32F,X                   ; $8AABDA  9F 2F C3 7E  mX
    LDA #$FF                        ; $8AABDE  A9 FF        mX
    AND $A8                         ; $8AABE0  25 A8        mX
    STA $7EC33E,X                   ; $8AABE2  9F 3E C3 7E  mX
    LDA #$00                        ; $8AABE6  A9 00        mX
    STA $7EC33F,X                   ; $8AABE8  9F 3F C3 7E  mX
    REP #$20                        ; $8AABEC  C2 20        mX
    TYA                             ; $8AABEE  98           MX
    CLC                             ; $8AABEF  18           MX
    ADC #$0028                      ; $8AABF0  69 28 00     MX
    TAY                             ; $8AABF3  A8           MX
    TXA                             ; $8AABF4  8A           MX
    CLC                             ; $8AABF5  18           MX
    ADC #$0040                      ; $8AABF6  69 40 00     MX
    TAX                             ; $8AABF9  AA           MX
    DEC $A4                         ; $8AABFA  C6 A4        MX
    BEQ L_8AAC01                    ; $8AABFC  F0 03        MX
    JMP L_8AA9E2                    ; $8AABFE  4C E2 A9     MX
L_8AAC01:
    PLB                             ; $8AAC01  AB           MX
    RTS                             ; $8AAC02  60           MX
L_8AAC03:
    LDA $1661                       ; $8AAC03  AD 61 16     MX
    AND #$00FF                      ; $8AAC06  29 FF 00     MX
    PHA                             ; $8AAC09  48           MX
    PLB                             ; $8AAC0A  AB           MX
    LDX #$0000                      ; $8AAC0B  A2 00 00     MX
    LDA #$002A                      ; $8AAC0E  A9 2A 00     MX
L_8AAC11:
    STA $A4                         ; $8AAC11  85 A4        MX
L_8AAC13:
    LDA $0000,Y                     ; $8AAC13  B9 00 00     MX
    STA $7ECD80,X                   ; $8AAC16  9F 80 CD 7E  MX
    LDA $0002,Y                     ; $8AAC1A  B9 02 00     MX
    STA $7ECD82,X                   ; $8AAC1D  9F 82 CD 7E  MX
    LDA $0004,Y                     ; $8AAC21  B9 04 00     MX
    STA $7ECD84,X                   ; $8AAC24  9F 84 CD 7E  MX
    LDA $0006,Y                     ; $8AAC28  B9 06 00     MX
    STA $7ECD86,X                   ; $8AAC2B  9F 86 CD 7E  MX
    LDA $0008,Y                     ; $8AAC2F  B9 08 00     MX
    STA $7ECD88,X                   ; $8AAC32  9F 88 CD 7E  MX
    LDA $000A,Y                     ; $8AAC36  B9 0A 00     MX
    STA $7ECD8A,X                   ; $8AAC39  9F 8A CD 7E  MX
    LDA $000C,Y                     ; $8AAC3D  B9 0C 00     MX
    STA $7ECD8C,X                   ; $8AAC40  9F 8C CD 7E  MX
    LDA $000E,Y                     ; $8AAC44  B9 0E 00     MX
    STA $7ECD8E,X                   ; $8AAC47  9F 8E CD 7E  MX
    LDA $0010,Y                     ; $8AAC4B  B9 10 00     MX
    STA $7ECD90,X                   ; $8AAC4E  9F 90 CD 7E  MX
    LDA $0012,Y                     ; $8AAC52  B9 12 00     MX
    STA $7ECD92,X                   ; $8AAC55  9F 92 CD 7E  MX
    LDA $0014,Y                     ; $8AAC59  B9 14 00     MX
    STA $7ECD94,X                   ; $8AAC5C  9F 94 CD 7E  MX
    LDA $0016,Y                     ; $8AAC60  B9 16 00     MX
    STA $7ECD96,X                   ; $8AAC63  9F 96 CD 7E  MX
    LDA $0018,Y                     ; $8AAC67  B9 18 00     MX
    STA $7ECD98,X                   ; $8AAC6A  9F 98 CD 7E  MX
    LDA $001A,Y                     ; $8AAC6E  B9 1A 00     MX
    STA $7ECD9A,X                   ; $8AAC71  9F 9A CD 7E  MX
    LDA $001C,Y                     ; $8AAC75  B9 1C 00     MX
    STA $7ECD9C,X                   ; $8AAC78  9F 9C CD 7E  MX
    LDA $001E,Y                     ; $8AAC7C  B9 1E 00     MX
    STA $7ECD9E,X                   ; $8AAC7F  9F 9E CD 7E  MX
    SEP #$20                        ; $8AAC83  E2 20        MX
    LDA $0000,Y                     ; $8AAC85  B9 00 00     mX
    ORA $0001,Y                     ; $8AAC88  19 01 00     mX
    ORA $0010,Y                     ; $8AAC8B  19 10 00     mX
    ORA $0011,Y                     ; $8AAC8E  19 11 00     mX
    ORA $0020,Y                     ; $8AAC91  19 20 00     mX
    STA $A8                         ; $8AAC94  85 A8        mX
    LDA $0020,Y                     ; $8AAC96  B9 20 00     mX
    EOR #$FF                        ; $8AAC99  49 FF        mX
    AND $A8                         ; $8AAC9B  25 A8        mX
    STA $7ECDA0,X                   ; $8AAC9D  9F A0 CD 7E  mX
    STA $7ECDA1,X                   ; $8AACA1  9F A1 CD 7E  mX
    STA $7ECDB0,X                   ; $8AACA5  9F B0 CD 7E  mX
    LDA $0020,Y                     ; $8AACA9  B9 20 00     mX
    AND $A8                         ; $8AACAC  25 A8        mX
    STA $7ECDB1,X                   ; $8AACAE  9F B1 CD 7E  mX
    LDA $0002,Y                     ; $8AACB2  B9 02 00     mX
    ORA $0003,Y                     ; $8AACB5  19 03 00     mX
    ORA $0012,Y                     ; $8AACB8  19 12 00     mX
    ORA $0013,Y                     ; $8AACBB  19 13 00     mX
    ORA $0021,Y                     ; $8AACBE  19 21 00     mX
    STA $A8                         ; $8AACC1  85 A8        mX
    LDA $0021,Y                     ; $8AACC3  B9 21 00     mX
    EOR #$FF                        ; $8AACC6  49 FF        mX
    AND $A8                         ; $8AACC8  25 A8        mX
    STA $7ECDA2,X                   ; $8AACCA  9F A2 CD 7E  mX
    STA $7ECDA3,X                   ; $8AACCE  9F A3 CD 7E  mX
    STA $7ECDB2,X                   ; $8AACD2  9F B2 CD 7E  mX
    LDA $0021,Y                     ; $8AACD6  B9 21 00     mX
    AND $A8                         ; $8AACD9  25 A8        mX
    STA $7ECDB3,X                   ; $8AACDB  9F B3 CD 7E  mX
    LDA $0004,Y                     ; $8AACDF  B9 04 00     mX
    ORA $0005,Y                     ; $8AACE2  19 05 00     mX
    ORA $0014,Y                     ; $8AACE5  19 14 00     mX
    ORA $0015,Y                     ; $8AACE8  19 15 00     mX
    ORA $0022,Y                     ; $8AACEB  19 22 00     mX
    STA $A8                         ; $8AACEE  85 A8        mX
    LDA $0022,Y                     ; $8AACF0  B9 22 00     mX
    EOR #$FF                        ; $8AACF3  49 FF        mX
    AND $A8                         ; $8AACF5  25 A8        mX
    STA $7ECDA4,X                   ; $8AACF7  9F A4 CD 7E  mX
    STA $7ECDA5,X                   ; $8AACFB  9F A5 CD 7E  mX
    STA $7ECDB4,X                   ; $8AACFF  9F B4 CD 7E  mX
    LDA $0022,Y                     ; $8AAD03  B9 22 00     mX
    AND $A8                         ; $8AAD06  25 A8        mX
    STA $7ECDB5,X                   ; $8AAD08  9F B5 CD 7E  mX
    LDA $0006,Y                     ; $8AAD0C  B9 06 00     mX
    ORA $0007,Y                     ; $8AAD0F  19 07 00     mX
    ORA $0016,Y                     ; $8AAD12  19 16 00     mX
    ORA $0017,Y                     ; $8AAD15  19 17 00     mX
    ORA $0023,Y                     ; $8AAD18  19 23 00     mX
    STA $A8                         ; $8AAD1B  85 A8        mX
    LDA $0023,Y                     ; $8AAD1D  B9 23 00     mX
    EOR #$FF                        ; $8AAD20  49 FF        mX
    AND $A8                         ; $8AAD22  25 A8        mX
    STA $7ECDA6,X                   ; $8AAD24  9F A6 CD 7E  mX
    STA $7ECDA7,X                   ; $8AAD28  9F A7 CD 7E  mX
    STA $7ECDB6,X                   ; $8AAD2C  9F B6 CD 7E  mX
    LDA $0023,Y                     ; $8AAD30  B9 23 00     mX
    AND $A8                         ; $8AAD33  25 A8        mX
    STA $7ECDB7,X                   ; $8AAD35  9F B7 CD 7E  mX
    LDA $0008,Y                     ; $8AAD39  B9 08 00     mX
    ORA $0009,Y                     ; $8AAD3C  19 09 00     mX
    ORA $0018,Y                     ; $8AAD3F  19 18 00     mX
    ORA $0019,Y                     ; $8AAD42  19 19 00     mX
    ORA $0024,Y                     ; $8AAD45  19 24 00     mX
    STA $A8                         ; $8AAD48  85 A8        mX
    LDA $0024,Y                     ; $8AAD4A  B9 24 00     mX
    EOR #$FF                        ; $8AAD4D  49 FF        mX
    AND $A8                         ; $8AAD4F  25 A8        mX
    STA $7ECDA8,X                   ; $8AAD51  9F A8 CD 7E  mX
    STA $7ECDA9,X                   ; $8AAD55  9F A9 CD 7E  mX
    STA $7ECDB8,X                   ; $8AAD59  9F B8 CD 7E  mX
    LDA $0024,Y                     ; $8AAD5D  B9 24 00     mX
    AND $A8                         ; $8AAD60  25 A8        mX
    STA $7ECDB9,X                   ; $8AAD62  9F B9 CD 7E  mX
    LDA $000A,Y                     ; $8AAD66  B9 0A 00     mX
    ORA $000B,Y                     ; $8AAD69  19 0B 00     mX
    ORA $001A,Y                     ; $8AAD6C  19 1A 00     mX
    ORA $001B,Y                     ; $8AAD6F  19 1B 00     mX
    ORA $0025,Y                     ; $8AAD72  19 25 00     mX
    STA $A8                         ; $8AAD75  85 A8        mX
    LDA $0025,Y                     ; $8AAD77  B9 25 00     mX
    EOR #$FF                        ; $8AAD7A  49 FF        mX
    AND $A8                         ; $8AAD7C  25 A8        mX
    STA $7ECDAA,X                   ; $8AAD7E  9F AA CD 7E  mX
    STA $7ECDAB,X                   ; $8AAD82  9F AB CD 7E  mX
    STA $7ECDBA,X                   ; $8AAD86  9F BA CD 7E  mX
    LDA $0025,Y                     ; $8AAD8A  B9 25 00     mX
    AND $A8                         ; $8AAD8D  25 A8        mX
    STA $7ECDBB,X                   ; $8AAD8F  9F BB CD 7E  mX
    LDA $000C,Y                     ; $8AAD93  B9 0C 00     mX
    ORA $000D,Y                     ; $8AAD96  19 0D 00     mX
    ORA $001C,Y                     ; $8AAD99  19 1C 00     mX
    ORA $001D,Y                     ; $8AAD9C  19 1D 00     mX
    ORA $0026,Y                     ; $8AAD9F  19 26 00     mX
    STA $A8                         ; $8AADA2  85 A8        mX
    LDA $0026,Y                     ; $8AADA4  B9 26 00     mX
    EOR #$FF                        ; $8AADA7  49 FF        mX
    AND $A8                         ; $8AADA9  25 A8        mX
    STA $7ECDAC,X                   ; $8AADAB  9F AC CD 7E  mX
    STA $7ECDAD,X                   ; $8AADAF  9F AD CD 7E  mX
    STA $7ECDBC,X                   ; $8AADB3  9F BC CD 7E  mX
    LDA $0026,Y                     ; $8AADB7  B9 26 00     mX
    AND $A8                         ; $8AADBA  25 A8        mX
    STA $7ECDBD,X                   ; $8AADBC  9F BD CD 7E  mX
    LDA $000E,Y                     ; $8AADC0  B9 0E 00     mX
    ORA $000F,Y                     ; $8AADC3  19 0F 00     mX
    ORA $001E,Y                     ; $8AADC6  19 1E 00     mX
    ORA $001F,Y                     ; $8AADC9  19 1F 00     mX
    ORA $0027,Y                     ; $8AADCC  19 27 00     mX
    STA $A8                         ; $8AADCF  85 A8        mX
    LDA $0027,Y                     ; $8AADD1  B9 27 00     mX
    EOR #$FF                        ; $8AADD4  49 FF        mX
    AND $A8                         ; $8AADD6  25 A8        mX
    STA $7ECDAE,X                   ; $8AADD8  9F AE CD 7E  mX
    STA $7ECDAF,X                   ; $8AADDC  9F AF CD 7E  mX
    STA $7ECDBE,X                   ; $8AADE0  9F BE CD 7E  mX
    LDA $0027,Y                     ; $8AADE4  B9 27 00     mX
    AND $A8                         ; $8AADE7  25 A8        mX
    STA $7ECDBF,X                   ; $8AADE9  9F BF CD 7E  mX
    REP #$20                        ; $8AADED  C2 20        mX
    TYA                             ; $8AADEF  98           MX
    CLC                             ; $8AADF0  18           MX
    ADC #$0028                      ; $8AADF1  69 28 00     MX
    TAY                             ; $8AADF4  A8           MX
    TXA                             ; $8AADF5  8A           MX
    CLC                             ; $8AADF6  18           MX
    ADC #$0040                      ; $8AADF7  69 40 00     MX
    TAX                             ; $8AADFA  AA           MX
    DEC $A4                         ; $8AADFB  C6 A4        MX
    BEQ L_8AAE02                    ; $8AADFD  F0 03        MX
    JMP L_8AAC13                    ; $8AADFF  4C 13 AC     MX
L_8AAE02:
    PLB                             ; $8AAE02  AB           MX
    RTS                             ; $8AAE03  60           MX
L_8AAE04:
    LDA $1661                       ; $8AAE04  AD 61 16     MX
    AND #$00FF                      ; $8AAE07  29 FF 00     MX
    PHA                             ; $8AAE0A  48           MX
    PLB                             ; $8AAE0B  AB           MX
    LDX #$0000                      ; $8AAE0C  A2 00 00     MX
    LDA #$002A                      ; $8AAE0F  A9 2A 00     MX
L_8AAE12:
    STA $A4                         ; $8AAE12  85 A4        MX
L_8AAE14:
    LDA $0000,Y                     ; $8AAE14  B9 00 00     MX
    STA $7ED800,X                   ; $8AAE17  9F 00 D8 7E  MX
    LDA $0002,Y                     ; $8AAE1B  B9 02 00     MX
    STA $7ED802,X                   ; $8AAE1E  9F 02 D8 7E  MX
    LDA $0004,Y                     ; $8AAE22  B9 04 00     MX
    STA $7ED804,X                   ; $8AAE25  9F 04 D8 7E  MX
    LDA $0006,Y                     ; $8AAE29  B9 06 00     MX
    STA $7ED806,X                   ; $8AAE2C  9F 06 D8 7E  MX
    LDA $0008,Y                     ; $8AAE30  B9 08 00     MX
    STA $7ED808,X                   ; $8AAE33  9F 08 D8 7E  MX
    LDA $000A,Y                     ; $8AAE37  B9 0A 00     MX
    STA $7ED80A,X                   ; $8AAE3A  9F 0A D8 7E  MX
    LDA $000C,Y                     ; $8AAE3E  B9 0C 00     MX
    STA $7ED80C,X                   ; $8AAE41  9F 0C D8 7E  MX
    LDA $000E,Y                     ; $8AAE45  B9 0E 00     MX
    STA $7ED80E,X                   ; $8AAE48  9F 0E D8 7E  MX
    LDA $0010,Y                     ; $8AAE4C  B9 10 00     MX
    STA $7ED810,X                   ; $8AAE4F  9F 10 D8 7E  MX
    LDA $0012,Y                     ; $8AAE53  B9 12 00     MX
    STA $7ED812,X                   ; $8AAE56  9F 12 D8 7E  MX
    LDA $0014,Y                     ; $8AAE5A  B9 14 00     MX
    STA $7ED814,X                   ; $8AAE5D  9F 14 D8 7E  MX
    LDA $0016,Y                     ; $8AAE61  B9 16 00     MX
    STA $7ED816,X                   ; $8AAE64  9F 16 D8 7E  MX
    LDA $0018,Y                     ; $8AAE68  B9 18 00     MX
    STA $7ED818,X                   ; $8AAE6B  9F 18 D8 7E  MX
    LDA $001A,Y                     ; $8AAE6F  B9 1A 00     MX
    STA $7ED81A,X                   ; $8AAE72  9F 1A D8 7E  MX
    LDA $001C,Y                     ; $8AAE76  B9 1C 00     MX
    STA $7ED81C,X                   ; $8AAE79  9F 1C D8 7E  MX
    LDA $001E,Y                     ; $8AAE7D  B9 1E 00     MX
    STA $7ED81E,X                   ; $8AAE80  9F 1E D8 7E  MX
    SEP #$20                        ; $8AAE84  E2 20        MX
    LDA $0000,Y                     ; $8AAE86  B9 00 00     mX
    ORA $0001,Y                     ; $8AAE89  19 01 00     mX
    ORA $0010,Y                     ; $8AAE8C  19 10 00     mX
    ORA $0011,Y                     ; $8AAE8F  19 11 00     mX
    ORA $0020,Y                     ; $8AAE92  19 20 00     mX
    STA $A8                         ; $8AAE95  85 A8        mX
    LDA $0020,Y                     ; $8AAE97  B9 20 00     mX
    EOR #$FF                        ; $8AAE9A  49 FF        mX
    AND $A8                         ; $8AAE9C  25 A8        mX
    STA $7ED820,X                   ; $8AAE9E  9F 20 D8 7E  mX
    LDA $0020,Y                     ; $8AAEA2  B9 20 00     mX
    AND $A8                         ; $8AAEA5  25 A8        mX
    STA $7ED821,X                   ; $8AAEA7  9F 21 D8 7E  mX
    LDA #$00                        ; $8AAEAB  A9 00        mX
    STA $7ED830,X                   ; $8AAEAD  9F 30 D8 7E  mX
    LDA #$FF                        ; $8AAEB1  A9 FF        mX
    AND $A8                         ; $8AAEB3  25 A8        mX
    STA $7ED831,X                   ; $8AAEB5  9F 31 D8 7E  mX
    LDA $0002,Y                     ; $8AAEB9  B9 02 00     mX
    ORA $0003,Y                     ; $8AAEBC  19 03 00     mX
    ORA $0012,Y                     ; $8AAEBF  19 12 00     mX
    ORA $0013,Y                     ; $8AAEC2  19 13 00     mX
    ORA $0021,Y                     ; $8AAEC5  19 21 00     mX
    STA $A8                         ; $8AAEC8  85 A8        mX
    LDA $0021,Y                     ; $8AAECA  B9 21 00     mX
    EOR #$FF                        ; $8AAECD  49 FF        mX
    AND $A8                         ; $8AAECF  25 A8        mX
    STA $7ED822,X                   ; $8AAED1  9F 22 D8 7E  mX
    LDA $0021,Y                     ; $8AAED5  B9 21 00     mX
    AND $A8                         ; $8AAED8  25 A8        mX
    STA $7ED823,X                   ; $8AAEDA  9F 23 D8 7E  mX
    LDA #$00                        ; $8AAEDE  A9 00        mX
    STA $7ED832,X                   ; $8AAEE0  9F 32 D8 7E  mX
    LDA #$FF                        ; $8AAEE4  A9 FF        mX
    AND $A8                         ; $8AAEE6  25 A8        mX
    STA $7ED833,X                   ; $8AAEE8  9F 33 D8 7E  mX
    LDA $0004,Y                     ; $8AAEEC  B9 04 00     mX
    ORA $0005,Y                     ; $8AAEEF  19 05 00     mX
    ORA $0014,Y                     ; $8AAEF2  19 14 00     mX
    ORA $0015,Y                     ; $8AAEF5  19 15 00     mX
    ORA $0022,Y                     ; $8AAEF8  19 22 00     mX
    STA $A8                         ; $8AAEFB  85 A8        mX
    LDA $0022,Y                     ; $8AAEFD  B9 22 00     mX
    EOR #$FF                        ; $8AAF00  49 FF        mX
    AND $A8                         ; $8AAF02  25 A8        mX
    STA $7ED824,X                   ; $8AAF04  9F 24 D8 7E  mX
    LDA $0022,Y                     ; $8AAF08  B9 22 00     mX
    AND $A8                         ; $8AAF0B  25 A8        mX
    STA $7ED825,X                   ; $8AAF0D  9F 25 D8 7E  mX
    LDA #$00                        ; $8AAF11  A9 00        mX
    STA $7ED834,X                   ; $8AAF13  9F 34 D8 7E  mX
    LDA #$FF                        ; $8AAF17  A9 FF        mX
    AND $A8                         ; $8AAF19  25 A8        mX
    STA $7ED835,X                   ; $8AAF1B  9F 35 D8 7E  mX
    LDA $0006,Y                     ; $8AAF1F  B9 06 00     mX
    ORA $0007,Y                     ; $8AAF22  19 07 00     mX
    ORA $0016,Y                     ; $8AAF25  19 16 00     mX
    ORA $0017,Y                     ; $8AAF28  19 17 00     mX
    ORA $0023,Y                     ; $8AAF2B  19 23 00     mX
    STA $A8                         ; $8AAF2E  85 A8        mX
    LDA $0023,Y                     ; $8AAF30  B9 23 00     mX
    EOR #$FF                        ; $8AAF33  49 FF        mX
    AND $A8                         ; $8AAF35  25 A8        mX
    STA $7ED826,X                   ; $8AAF37  9F 26 D8 7E  mX
    LDA $0023,Y                     ; $8AAF3B  B9 23 00     mX
    AND $A8                         ; $8AAF3E  25 A8        mX
    STA $7ED827,X                   ; $8AAF40  9F 27 D8 7E  mX
    LDA #$00                        ; $8AAF44  A9 00        mX
    STA $7ED836,X                   ; $8AAF46  9F 36 D8 7E  mX
    LDA #$FF                        ; $8AAF4A  A9 FF        mX
    AND $A8                         ; $8AAF4C  25 A8        mX
    STA $7ED837,X                   ; $8AAF4E  9F 37 D8 7E  mX
    LDA $0008,Y                     ; $8AAF52  B9 08 00     mX
    ORA $0009,Y                     ; $8AAF55  19 09 00     mX
    ORA $0018,Y                     ; $8AAF58  19 18 00     mX
    ORA $0019,Y                     ; $8AAF5B  19 19 00     mX
    ORA $0024,Y                     ; $8AAF5E  19 24 00     mX
    STA $A8                         ; $8AAF61  85 A8        mX
    LDA $0024,Y                     ; $8AAF63  B9 24 00     mX
    EOR #$FF                        ; $8AAF66  49 FF        mX
    AND $A8                         ; $8AAF68  25 A8        mX
    STA $7ED828,X                   ; $8AAF6A  9F 28 D8 7E  mX
    LDA $0024,Y                     ; $8AAF6E  B9 24 00     mX
    AND $A8                         ; $8AAF71  25 A8        mX
    STA $7ED829,X                   ; $8AAF73  9F 29 D8 7E  mX
    LDA #$00                        ; $8AAF77  A9 00        mX
    STA $7ED838,X                   ; $8AAF79  9F 38 D8 7E  mX
    LDA #$FF                        ; $8AAF7D  A9 FF        mX
    AND $A8                         ; $8AAF7F  25 A8        mX
    STA $7ED839,X                   ; $8AAF81  9F 39 D8 7E  mX
    LDA $000A,Y                     ; $8AAF85  B9 0A 00     mX
    ORA $000B,Y                     ; $8AAF88  19 0B 00     mX
    ORA $001A,Y                     ; $8AAF8B  19 1A 00     mX
    ORA $001B,Y                     ; $8AAF8E  19 1B 00     mX
    ORA $0025,Y                     ; $8AAF91  19 25 00     mX
    STA $A8                         ; $8AAF94  85 A8        mX
    LDA $0025,Y                     ; $8AAF96  B9 25 00     mX
    EOR #$FF                        ; $8AAF99  49 FF        mX
    AND $A8                         ; $8AAF9B  25 A8        mX
    STA $7ED82A,X                   ; $8AAF9D  9F 2A D8 7E  mX
    LDA $0025,Y                     ; $8AAFA1  B9 25 00     mX
    AND $A8                         ; $8AAFA4  25 A8        mX
    STA $7ED82B,X                   ; $8AAFA6  9F 2B D8 7E  mX
    LDA #$00                        ; $8AAFAA  A9 00        mX
    STA $7ED83A,X                   ; $8AAFAC  9F 3A D8 7E  mX
    LDA #$FF                        ; $8AAFB0  A9 FF        mX
    AND $A8                         ; $8AAFB2  25 A8        mX
    STA $7ED83B,X                   ; $8AAFB4  9F 3B D8 7E  mX
    LDA $000C,Y                     ; $8AAFB8  B9 0C 00     mX
    ORA $000D,Y                     ; $8AAFBB  19 0D 00     mX
    ORA $001C,Y                     ; $8AAFBE  19 1C 00     mX
    ORA $001D,Y                     ; $8AAFC1  19 1D 00     mX
    ORA $0026,Y                     ; $8AAFC4  19 26 00     mX
    STA $A8                         ; $8AAFC7  85 A8        mX
    LDA $0026,Y                     ; $8AAFC9  B9 26 00     mX
    EOR #$FF                        ; $8AAFCC  49 FF        mX
    AND $A8                         ; $8AAFCE  25 A8        mX
    STA $7ED82C,X                   ; $8AAFD0  9F 2C D8 7E  mX
    LDA $0026,Y                     ; $8AAFD4  B9 26 00     mX
    AND $A8                         ; $8AAFD7  25 A8        mX
    STA $7ED82D,X                   ; $8AAFD9  9F 2D D8 7E  mX
    LDA #$00                        ; $8AAFDD  A9 00        mX
    STA $7ED83C,X                   ; $8AAFDF  9F 3C D8 7E  mX
    LDA #$FF                        ; $8AAFE3  A9 FF        mX
    AND $A8                         ; $8AAFE5  25 A8        mX
    STA $7ED83D,X                   ; $8AAFE7  9F 3D D8 7E  mX
    LDA $000E,Y                     ; $8AAFEB  B9 0E 00     mX
    ORA $000F,Y                     ; $8AAFEE  19 0F 00     mX
    ORA $001E,Y                     ; $8AAFF1  19 1E 00     mX
    ORA $001F,Y                     ; $8AAFF4  19 1F 00     mX
    ORA $0027,Y                     ; $8AAFF7  19 27 00     mX
    STA $A8                         ; $8AAFFA  85 A8        mX
    LDA $0027,Y                     ; $8AAFFC  B9 27 00     mX
    EOR #$FF                        ; $8AAFFF  49 FF        mX
    AND $A8                         ; $8AB001  25 A8        mX
    STA $7ED82E,X                   ; $8AB003  9F 2E D8 7E  mX
    LDA $0027,Y                     ; $8AB007  B9 27 00     mX
    AND $A8                         ; $8AB00A  25 A8        mX
    STA $7ED82F,X                   ; $8AB00C  9F 2F D8 7E  mX
    LDA #$00                        ; $8AB010  A9 00        mX
    STA $7ED83E,X                   ; $8AB012  9F 3E D8 7E  mX
    LDA #$FF                        ; $8AB016  A9 FF        mX
    AND $A8                         ; $8AB018  25 A8        mX
    STA $7ED83F,X                   ; $8AB01A  9F 3F D8 7E  mX
    REP #$20                        ; $8AB01E  C2 20        mX
    TYA                             ; $8AB020  98           MX
    CLC                             ; $8AB021  18           MX
    ADC #$0028                      ; $8AB022  69 28 00     MX
    TAY                             ; $8AB025  A8           MX
    TXA                             ; $8AB026  8A           MX
    CLC                             ; $8AB027  18           MX
    ADC #$0040                      ; $8AB028  69 40 00     MX
    TAX                             ; $8AB02B  AA           MX
    DEC $A4                         ; $8AB02C  C6 A4        MX
    BEQ L_8AB033                    ; $8AB02E  F0 03        MX
    JMP L_8AAE14                    ; $8AB030  4C 14 AE     MX
L_8AB033:
    PLB                             ; $8AB033  AB           MX
    RTS                             ; $8AB034  60           MX
L_8AB035:
    LDA $1661                       ; $8AB035  AD 61 16     MX
    AND #$00FF                      ; $8AB038  29 FF 00     MX
    PHA                             ; $8AB03B  48           MX
    PLB                             ; $8AB03C  AB           MX
    LDX #$0000                      ; $8AB03D  A2 00 00     MX
    LDA #$002A                      ; $8AB040  A9 2A 00     MX
L_8AB043:
    STA $A4                         ; $8AB043  85 A4        MX
L_8AB045:
    LDA $0000,Y                     ; $8AB045  B9 00 00     MX
    STA $7EE280,X                   ; $8AB048  9F 80 E2 7E  MX
    LDA $0002,Y                     ; $8AB04C  B9 02 00     MX
    STA $7EE282,X                   ; $8AB04F  9F 82 E2 7E  MX
    LDA $0004,Y                     ; $8AB053  B9 04 00     MX
    STA $7EE284,X                   ; $8AB056  9F 84 E2 7E  MX
    LDA $0006,Y                     ; $8AB05A  B9 06 00     MX
    STA $7EE286,X                   ; $8AB05D  9F 86 E2 7E  MX
    LDA $0008,Y                     ; $8AB061  B9 08 00     MX
    STA $7EE288,X                   ; $8AB064  9F 88 E2 7E  MX
    LDA $000A,Y                     ; $8AB068  B9 0A 00     MX
    STA $7EE28A,X                   ; $8AB06B  9F 8A E2 7E  MX
    LDA $000C,Y                     ; $8AB06F  B9 0C 00     MX
    STA $7EE28C,X                   ; $8AB072  9F 8C E2 7E  MX
    LDA $000E,Y                     ; $8AB076  B9 0E 00     MX
    STA $7EE28E,X                   ; $8AB079  9F 8E E2 7E  MX
    LDA $0010,Y                     ; $8AB07D  B9 10 00     MX
    STA $7EE290,X                   ; $8AB080  9F 90 E2 7E  MX
    LDA $0012,Y                     ; $8AB084  B9 12 00     MX
    STA $7EE292,X                   ; $8AB087  9F 92 E2 7E  MX
    LDA $0014,Y                     ; $8AB08B  B9 14 00     MX
    STA $7EE294,X                   ; $8AB08E  9F 94 E2 7E  MX
    LDA $0016,Y                     ; $8AB092  B9 16 00     MX
    STA $7EE296,X                   ; $8AB095  9F 96 E2 7E  MX
    LDA $0018,Y                     ; $8AB099  B9 18 00     MX
    STA $7EE298,X                   ; $8AB09C  9F 98 E2 7E  MX
    LDA $001A,Y                     ; $8AB0A0  B9 1A 00     MX
    STA $7EE29A,X                   ; $8AB0A3  9F 9A E2 7E  MX
    LDA $001C,Y                     ; $8AB0A7  B9 1C 00     MX
    STA $7EE29C,X                   ; $8AB0AA  9F 9C E2 7E  MX
    LDA $001E,Y                     ; $8AB0AE  B9 1E 00     MX
    STA $7EE29E,X                   ; $8AB0B1  9F 9E E2 7E  MX
    SEP #$20                        ; $8AB0B5  E2 20        MX
    LDA $0000,Y                     ; $8AB0B7  B9 00 00     mX
    ORA $0001,Y                     ; $8AB0BA  19 01 00     mX
    ORA $0010,Y                     ; $8AB0BD  19 10 00     mX
    ORA $0011,Y                     ; $8AB0C0  19 11 00     mX
    ORA $0020,Y                     ; $8AB0C3  19 20 00     mX
    STA $A8                         ; $8AB0C6  85 A8        mX
    LDA $0020,Y                     ; $8AB0C8  B9 20 00     mX
    EOR #$FF                        ; $8AB0CB  49 FF        mX
    AND $A8                         ; $8AB0CD  25 A8        mX
    STA $7EE2A0,X                   ; $8AB0CF  9F A0 E2 7E  mX
    STA $7EE2A1,X                   ; $8AB0D3  9F A1 E2 7E  mX
    LDA $0020,Y                     ; $8AB0D7  B9 20 00     mX
    AND $A8                         ; $8AB0DA  25 A8        mX
    STA $7EE2B0,X                   ; $8AB0DC  9F B0 E2 7E  mX
    LDA #$FF                        ; $8AB0E0  A9 FF        mX
    AND $A8                         ; $8AB0E2  25 A8        mX
    STA $7EE2B1,X                   ; $8AB0E4  9F B1 E2 7E  mX
    LDA $0002,Y                     ; $8AB0E8  B9 02 00     mX
    ORA $0003,Y                     ; $8AB0EB  19 03 00     mX
    ORA $0012,Y                     ; $8AB0EE  19 12 00     mX
    ORA $0013,Y                     ; $8AB0F1  19 13 00     mX
    ORA $0021,Y                     ; $8AB0F4  19 21 00     mX
    STA $A8                         ; $8AB0F7  85 A8        mX
    LDA $0021,Y                     ; $8AB0F9  B9 21 00     mX
    EOR #$FF                        ; $8AB0FC  49 FF        mX
    AND $A8                         ; $8AB0FE  25 A8        mX
    STA $7EE2A2,X                   ; $8AB100  9F A2 E2 7E  mX
    STA $7EE2A3,X                   ; $8AB104  9F A3 E2 7E  mX
    LDA $0021,Y                     ; $8AB108  B9 21 00     mX
    AND $A8                         ; $8AB10B  25 A8        mX
    STA $7EE2B2,X                   ; $8AB10D  9F B2 E2 7E  mX
    LDA #$FF                        ; $8AB111  A9 FF        mX
    AND $A8                         ; $8AB113  25 A8        mX
    STA $7EE2B3,X                   ; $8AB115  9F B3 E2 7E  mX
    LDA $0004,Y                     ; $8AB119  B9 04 00     mX
    ORA $0005,Y                     ; $8AB11C  19 05 00     mX
    ORA $0014,Y                     ; $8AB11F  19 14 00     mX
    ORA $0015,Y                     ; $8AB122  19 15 00     mX
    ORA $0022,Y                     ; $8AB125  19 22 00     mX
    STA $A8                         ; $8AB128  85 A8        mX
    LDA $0022,Y                     ; $8AB12A  B9 22 00     mX
    EOR #$FF                        ; $8AB12D  49 FF        mX
    AND $A8                         ; $8AB12F  25 A8        mX
    STA $7EE2A4,X                   ; $8AB131  9F A4 E2 7E  mX
    STA $7EE2A5,X                   ; $8AB135  9F A5 E2 7E  mX
    LDA $0022,Y                     ; $8AB139  B9 22 00     mX
    AND $A8                         ; $8AB13C  25 A8        mX
    STA $7EE2B4,X                   ; $8AB13E  9F B4 E2 7E  mX
    LDA #$FF                        ; $8AB142  A9 FF        mX
    AND $A8                         ; $8AB144  25 A8        mX
    STA $7EE2B5,X                   ; $8AB146  9F B5 E2 7E  mX
    LDA $0006,Y                     ; $8AB14A  B9 06 00     mX
    ORA $0007,Y                     ; $8AB14D  19 07 00     mX
    ORA $0016,Y                     ; $8AB150  19 16 00     mX
    ORA $0017,Y                     ; $8AB153  19 17 00     mX
    ORA $0023,Y                     ; $8AB156  19 23 00     mX
    STA $A8                         ; $8AB159  85 A8        mX
    LDA $0023,Y                     ; $8AB15B  B9 23 00     mX
    EOR #$FF                        ; $8AB15E  49 FF        mX
    AND $A8                         ; $8AB160  25 A8        mX
    STA $7EE2A6,X                   ; $8AB162  9F A6 E2 7E  mX
    STA $7EE2A7,X                   ; $8AB166  9F A7 E2 7E  mX
    LDA $0023,Y                     ; $8AB16A  B9 23 00     mX
    AND $A8                         ; $8AB16D  25 A8        mX
    STA $7EE2B6,X                   ; $8AB16F  9F B6 E2 7E  mX
    LDA #$FF                        ; $8AB173  A9 FF        mX
    AND $A8                         ; $8AB175  25 A8        mX
    STA $7EE2B7,X                   ; $8AB177  9F B7 E2 7E  mX
    LDA $0008,Y                     ; $8AB17B  B9 08 00     mX
    ORA $0009,Y                     ; $8AB17E  19 09 00     mX
    ORA $0018,Y                     ; $8AB181  19 18 00     mX
    ORA $0019,Y                     ; $8AB184  19 19 00     mX
    ORA $0024,Y                     ; $8AB187  19 24 00     mX
    STA $A8                         ; $8AB18A  85 A8        mX
    LDA $0024,Y                     ; $8AB18C  B9 24 00     mX
    EOR #$FF                        ; $8AB18F  49 FF        mX
    AND $A8                         ; $8AB191  25 A8        mX
    STA $7EE2A8,X                   ; $8AB193  9F A8 E2 7E  mX
    STA $7EE2A9,X                   ; $8AB197  9F A9 E2 7E  mX
    LDA $0024,Y                     ; $8AB19B  B9 24 00     mX
    AND $A8                         ; $8AB19E  25 A8        mX
    STA $7EE2B8,X                   ; $8AB1A0  9F B8 E2 7E  mX
    LDA #$FF                        ; $8AB1A4  A9 FF        mX
    AND $A8                         ; $8AB1A6  25 A8        mX
    STA $7EE2B9,X                   ; $8AB1A8  9F B9 E2 7E  mX
    LDA $000A,Y                     ; $8AB1AC  B9 0A 00     mX
    ORA $000B,Y                     ; $8AB1AF  19 0B 00     mX
    ORA $001A,Y                     ; $8AB1B2  19 1A 00     mX
    ORA $001B,Y                     ; $8AB1B5  19 1B 00     mX
    ORA $0025,Y                     ; $8AB1B8  19 25 00     mX
    STA $A8                         ; $8AB1BB  85 A8        mX
    LDA $0025,Y                     ; $8AB1BD  B9 25 00     mX
    EOR #$FF                        ; $8AB1C0  49 FF        mX
    AND $A8                         ; $8AB1C2  25 A8        mX
    STA $7EE2AA,X                   ; $8AB1C4  9F AA E2 7E  mX
    STA $7EE2AB,X                   ; $8AB1C8  9F AB E2 7E  mX
    LDA $0025,Y                     ; $8AB1CC  B9 25 00     mX
    AND $A8                         ; $8AB1CF  25 A8        mX
    STA $7EE2BA,X                   ; $8AB1D1  9F BA E2 7E  mX
    LDA #$FF                        ; $8AB1D5  A9 FF        mX
    AND $A8                         ; $8AB1D7  25 A8        mX
    STA $7EE2BB,X                   ; $8AB1D9  9F BB E2 7E  mX
    LDA $000C,Y                     ; $8AB1DD  B9 0C 00     mX
    ORA $000D,Y                     ; $8AB1E0  19 0D 00     mX
    ORA $001C,Y                     ; $8AB1E3  19 1C 00     mX
    ORA $001D,Y                     ; $8AB1E6  19 1D 00     mX
    ORA $0026,Y                     ; $8AB1E9  19 26 00     mX
    STA $A8                         ; $8AB1EC  85 A8        mX
    LDA $0026,Y                     ; $8AB1EE  B9 26 00     mX
    EOR #$FF                        ; $8AB1F1  49 FF        mX
    AND $A8                         ; $8AB1F3  25 A8        mX
    STA $7EE2AC,X                   ; $8AB1F5  9F AC E2 7E  mX
    STA $7EE2AD,X                   ; $8AB1F9  9F AD E2 7E  mX
    LDA $0026,Y                     ; $8AB1FD  B9 26 00     mX
    AND $A8                         ; $8AB200  25 A8        mX
    STA $7EE2BC,X                   ; $8AB202  9F BC E2 7E  mX
    LDA #$FF                        ; $8AB206  A9 FF        mX
    AND $A8                         ; $8AB208  25 A8        mX
    STA $7EE2BD,X                   ; $8AB20A  9F BD E2 7E  mX
    LDA $000E,Y                     ; $8AB20E  B9 0E 00     mX
    ORA $000F,Y                     ; $8AB211  19 0F 00     mX
    ORA $001E,Y                     ; $8AB214  19 1E 00     mX
    ORA $001F,Y                     ; $8AB217  19 1F 00     mX
    ORA $0027,Y                     ; $8AB21A  19 27 00     mX
    STA $A8                         ; $8AB21D  85 A8        mX
    LDA $0027,Y                     ; $8AB21F  B9 27 00     mX
    EOR #$FF                        ; $8AB222  49 FF        mX
    AND $A8                         ; $8AB224  25 A8        mX
    STA $7EE2AE,X                   ; $8AB226  9F AE E2 7E  mX
    STA $7EE2AF,X                   ; $8AB22A  9F AF E2 7E  mX
    LDA $0027,Y                     ; $8AB22E  B9 27 00     mX
    AND $A8                         ; $8AB231  25 A8        mX
    STA $7EE2BE,X                   ; $8AB233  9F BE E2 7E  mX
    LDA #$FF                        ; $8AB237  A9 FF        mX
    AND $A8                         ; $8AB239  25 A8        mX
    STA $7EE2BF,X                   ; $8AB23B  9F BF E2 7E  mX
    REP #$20                        ; $8AB23F  C2 20        mX
    TYA                             ; $8AB241  98           MX
    CLC                             ; $8AB242  18           MX
    ADC #$0028                      ; $8AB243  69 28 00     MX
    TAY                             ; $8AB246  A8           MX
    TXA                             ; $8AB247  8A           MX
    CLC                             ; $8AB248  18           MX
    ADC #$0040                      ; $8AB249  69 40 00     MX
    TAX                             ; $8AB24C  AA           MX
    DEC $A4                         ; $8AB24D  C6 A4        MX
    BEQ L_8AB254                    ; $8AB24F  F0 03        MX
    JMP L_8AB045                    ; $8AB251  4C 45 B0     MX
L_8AB254:
    PLB                             ; $8AB254  AB           MX
    RTS                             ; $8AB255  60           MX
L_8AB256:
    LDA $1661                       ; $8AB256  AD 61 16     MX
    AND #$00FF                      ; $8AB259  29 FF 00     MX
    PHA                             ; $8AB25C  48           MX
    PLB                             ; $8AB25D  AB           MX
    LDX #$0000                      ; $8AB25E  A2 00 00     MX
    LDA #$002A                      ; $8AB261  A9 2A 00     MX
L_8AB264:
    STA $A4                         ; $8AB264  85 A4        MX
L_8AB266:
    LDA $0000,Y                     ; $8AB266  B9 00 00     MX
    STA $7ED800,X                   ; $8AB269  9F 00 D8 7E  MX
    LDA $0002,Y                     ; $8AB26D  B9 02 00     MX
    STA $7ED802,X                   ; $8AB270  9F 02 D8 7E  MX
    LDA $0004,Y                     ; $8AB274  B9 04 00     MX
    STA $7ED804,X                   ; $8AB277  9F 04 D8 7E  MX
    LDA $0006,Y                     ; $8AB27B  B9 06 00     MX
    STA $7ED806,X                   ; $8AB27E  9F 06 D8 7E  MX
    LDA $0008,Y                     ; $8AB282  B9 08 00     MX
    STA $7ED808,X                   ; $8AB285  9F 08 D8 7E  MX
    LDA $000A,Y                     ; $8AB289  B9 0A 00     MX
    STA $7ED80A,X                   ; $8AB28C  9F 0A D8 7E  MX
    LDA $000C,Y                     ; $8AB290  B9 0C 00     MX
    STA $7ED80C,X                   ; $8AB293  9F 0C D8 7E  MX
    LDA $000E,Y                     ; $8AB297  B9 0E 00     MX
    STA $7ED80E,X                   ; $8AB29A  9F 0E D8 7E  MX
    LDA $0010,Y                     ; $8AB29E  B9 10 00     MX
    STA $7ED810,X                   ; $8AB2A1  9F 10 D8 7E  MX
    LDA $0012,Y                     ; $8AB2A5  B9 12 00     MX
    STA $7ED812,X                   ; $8AB2A8  9F 12 D8 7E  MX
    LDA $0014,Y                     ; $8AB2AC  B9 14 00     MX
    STA $7ED814,X                   ; $8AB2AF  9F 14 D8 7E  MX
    LDA $0016,Y                     ; $8AB2B3  B9 16 00     MX
    STA $7ED816,X                   ; $8AB2B6  9F 16 D8 7E  MX
    LDA $0018,Y                     ; $8AB2BA  B9 18 00     MX
    STA $7ED818,X                   ; $8AB2BD  9F 18 D8 7E  MX
    LDA $001A,Y                     ; $8AB2C1  B9 1A 00     MX
    STA $7ED81A,X                   ; $8AB2C4  9F 1A D8 7E  MX
    LDA $001C,Y                     ; $8AB2C8  B9 1C 00     MX
    STA $7ED81C,X                   ; $8AB2CB  9F 1C D8 7E  MX
    LDA $001E,Y                     ; $8AB2CF  B9 1E 00     MX
    STA $7ED81E,X                   ; $8AB2D2  9F 1E D8 7E  MX
    SEP #$20                        ; $8AB2D6  E2 20        MX
    LDA $0000,Y                     ; $8AB2D8  B9 00 00     mX
    ORA $0001,Y                     ; $8AB2DB  19 01 00     mX
    ORA $0010,Y                     ; $8AB2DE  19 10 00     mX
    ORA $0011,Y                     ; $8AB2E1  19 11 00     mX
    ORA $0020,Y                     ; $8AB2E4  19 20 00     mX
    STA $A8                         ; $8AB2E7  85 A8        mX
    LDA $0020,Y                     ; $8AB2E9  B9 20 00     mX
    EOR #$FF                        ; $8AB2EC  49 FF        mX
    AND $A8                         ; $8AB2EE  25 A8        mX
    STA $7ED820,X                   ; $8AB2F0  9F 20 D8 7E  mX
    LDA $0020,Y                     ; $8AB2F4  B9 20 00     mX
    AND $A8                         ; $8AB2F7  25 A8        mX
    STA $7ED821,X                   ; $8AB2F9  9F 21 D8 7E  mX
    LDA #$00                        ; $8AB2FD  A9 00        mX
    STA $7ED830,X                   ; $8AB2FF  9F 30 D8 7E  mX
    STA $7ED831,X                   ; $8AB303  9F 31 D8 7E  mX
    LDA $0002,Y                     ; $8AB307  B9 02 00     mX
    ORA $0003,Y                     ; $8AB30A  19 03 00     mX
    ORA $0012,Y                     ; $8AB30D  19 12 00     mX
    ORA $0013,Y                     ; $8AB310  19 13 00     mX
    ORA $0021,Y                     ; $8AB313  19 21 00     mX
    STA $A8                         ; $8AB316  85 A8        mX
    LDA $0021,Y                     ; $8AB318  B9 21 00     mX
    EOR #$FF                        ; $8AB31B  49 FF        mX
    AND $A8                         ; $8AB31D  25 A8        mX
    STA $7ED822,X                   ; $8AB31F  9F 22 D8 7E  mX
    LDA $0021,Y                     ; $8AB323  B9 21 00     mX
    AND $A8                         ; $8AB326  25 A8        mX
    STA $7ED823,X                   ; $8AB328  9F 23 D8 7E  mX
    LDA #$00                        ; $8AB32C  A9 00        mX
    STA $7ED832,X                   ; $8AB32E  9F 32 D8 7E  mX
    STA $7ED833,X                   ; $8AB332  9F 33 D8 7E  mX
    LDA $0004,Y                     ; $8AB336  B9 04 00     mX
    ORA $0005,Y                     ; $8AB339  19 05 00     mX
    ORA $0014,Y                     ; $8AB33C  19 14 00     mX
    ORA $0015,Y                     ; $8AB33F  19 15 00     mX
    ORA $0022,Y                     ; $8AB342  19 22 00     mX
    STA $A8                         ; $8AB345  85 A8        mX
    LDA $0022,Y                     ; $8AB347  B9 22 00     mX
    EOR #$FF                        ; $8AB34A  49 FF        mX
    AND $A8                         ; $8AB34C  25 A8        mX
    STA $7ED824,X                   ; $8AB34E  9F 24 D8 7E  mX
    LDA $0022,Y                     ; $8AB352  B9 22 00     mX
    AND $A8                         ; $8AB355  25 A8        mX
    STA $7ED825,X                   ; $8AB357  9F 25 D8 7E  mX
    LDA #$00                        ; $8AB35B  A9 00        mX
    STA $7ED834,X                   ; $8AB35D  9F 34 D8 7E  mX
    STA $7ED835,X                   ; $8AB361  9F 35 D8 7E  mX
    LDA $0006,Y                     ; $8AB365  B9 06 00     mX
    ORA $0007,Y                     ; $8AB368  19 07 00     mX
    ORA $0016,Y                     ; $8AB36B  19 16 00     mX
    ORA $0017,Y                     ; $8AB36E  19 17 00     mX
    ORA $0023,Y                     ; $8AB371  19 23 00     mX
    STA $A8                         ; $8AB374  85 A8        mX
    LDA $0023,Y                     ; $8AB376  B9 23 00     mX
    EOR #$FF                        ; $8AB379  49 FF        mX
    AND $A8                         ; $8AB37B  25 A8        mX
    STA $7ED826,X                   ; $8AB37D  9F 26 D8 7E  mX
    LDA $0023,Y                     ; $8AB381  B9 23 00     mX
    AND $A8                         ; $8AB384  25 A8        mX
    STA $7ED827,X                   ; $8AB386  9F 27 D8 7E  mX
    LDA #$00                        ; $8AB38A  A9 00        mX
    STA $7ED836,X                   ; $8AB38C  9F 36 D8 7E  mX
    STA $7ED837,X                   ; $8AB390  9F 37 D8 7E  mX
    LDA $0008,Y                     ; $8AB394  B9 08 00     mX
    ORA $0009,Y                     ; $8AB397  19 09 00     mX
    ORA $0018,Y                     ; $8AB39A  19 18 00     mX
    ORA $0019,Y                     ; $8AB39D  19 19 00     mX
    ORA $0024,Y                     ; $8AB3A0  19 24 00     mX
    STA $A8                         ; $8AB3A3  85 A8        mX
    LDA $0024,Y                     ; $8AB3A5  B9 24 00     mX
    EOR #$FF                        ; $8AB3A8  49 FF        mX
    AND $A8                         ; $8AB3AA  25 A8        mX
    STA $7ED828,X                   ; $8AB3AC  9F 28 D8 7E  mX
    LDA $0024,Y                     ; $8AB3B0  B9 24 00     mX
    AND $A8                         ; $8AB3B3  25 A8        mX
    STA $7ED829,X                   ; $8AB3B5  9F 29 D8 7E  mX
    LDA #$00                        ; $8AB3B9  A9 00        mX
    STA $7ED838,X                   ; $8AB3BB  9F 38 D8 7E  mX
    STA $7ED839,X                   ; $8AB3BF  9F 39 D8 7E  mX
    LDA $000A,Y                     ; $8AB3C3  B9 0A 00     mX
    ORA $000B,Y                     ; $8AB3C6  19 0B 00     mX
    ORA $001A,Y                     ; $8AB3C9  19 1A 00     mX
    ORA $001B,Y                     ; $8AB3CC  19 1B 00     mX
    ORA $0025,Y                     ; $8AB3CF  19 25 00     mX
    STA $A8                         ; $8AB3D2  85 A8        mX
    LDA $0025,Y                     ; $8AB3D4  B9 25 00     mX
    EOR #$FF                        ; $8AB3D7  49 FF        mX
    AND $A8                         ; $8AB3D9  25 A8        mX
    STA $7ED82A,X                   ; $8AB3DB  9F 2A D8 7E  mX
    LDA $0025,Y                     ; $8AB3DF  B9 25 00     mX
    AND $A8                         ; $8AB3E2  25 A8        mX
    STA $7ED82B,X                   ; $8AB3E4  9F 2B D8 7E  mX
    LDA #$00                        ; $8AB3E8  A9 00        mX
    STA $7ED83A,X                   ; $8AB3EA  9F 3A D8 7E  mX
    STA $7ED83B,X                   ; $8AB3EE  9F 3B D8 7E  mX
    LDA $000C,Y                     ; $8AB3F2  B9 0C 00     mX
    ORA $000D,Y                     ; $8AB3F5  19 0D 00     mX
    ORA $001C,Y                     ; $8AB3F8  19 1C 00     mX
    ORA $001D,Y                     ; $8AB3FB  19 1D 00     mX
    ORA $0026,Y                     ; $8AB3FE  19 26 00     mX
    STA $A8                         ; $8AB401  85 A8        mX
    LDA $0026,Y                     ; $8AB403  B9 26 00     mX
    EOR #$FF                        ; $8AB406  49 FF        mX
    AND $A8                         ; $8AB408  25 A8        mX
    STA $7ED82C,X                   ; $8AB40A  9F 2C D8 7E  mX
    LDA $0026,Y                     ; $8AB40E  B9 26 00     mX
    AND $A8                         ; $8AB411  25 A8        mX
    STA $7ED82D,X                   ; $8AB413  9F 2D D8 7E  mX
    LDA #$00                        ; $8AB417  A9 00        mX
    STA $7ED83C,X                   ; $8AB419  9F 3C D8 7E  mX
    STA $7ED83D,X                   ; $8AB41D  9F 3D D8 7E  mX
    LDA $000E,Y                     ; $8AB421  B9 0E 00     mX
    ORA $000F,Y                     ; $8AB424  19 0F 00     mX
    ORA $001E,Y                     ; $8AB427  19 1E 00     mX
    ORA $001F,Y                     ; $8AB42A  19 1F 00     mX
    ORA $0027,Y                     ; $8AB42D  19 27 00     mX
    STA $A8                         ; $8AB430  85 A8        mX
    LDA $0027,Y                     ; $8AB432  B9 27 00     mX
    EOR #$FF                        ; $8AB435  49 FF        mX
    AND $A8                         ; $8AB437  25 A8        mX
    STA $7ED82E,X                   ; $8AB439  9F 2E D8 7E  mX
    LDA $0027,Y                     ; $8AB43D  B9 27 00     mX
    AND $A8                         ; $8AB440  25 A8        mX
    STA $7ED82F,X                   ; $8AB442  9F 2F D8 7E  mX
    LDA #$00                        ; $8AB446  A9 00        mX
    STA $7ED83E,X                   ; $8AB448  9F 3E D8 7E  mX
    STA $7ED83F,X                   ; $8AB44C  9F 3F D8 7E  mX
    REP #$20                        ; $8AB450  C2 20        mX
    TYA                             ; $8AB452  98           MX
    CLC                             ; $8AB453  18           MX
    ADC #$0028                      ; $8AB454  69 28 00     MX
    TAY                             ; $8AB457  A8           MX
    TXA                             ; $8AB458  8A           MX
    CLC                             ; $8AB459  18           MX
    ADC #$0040                      ; $8AB45A  69 40 00     MX
    TAX                             ; $8AB45D  AA           MX
    DEC $A4                         ; $8AB45E  C6 A4        MX
    BEQ L_8AB465                    ; $8AB460  F0 03        MX
    JMP L_8AB266                    ; $8AB462  4C 66 B2     MX
L_8AB465:
    PLB                             ; $8AB465  AB           MX
    RTS                             ; $8AB466  60           MX
L_8AB467:
    LDA $1661                       ; $8AB467  AD 61 16     MX
    AND #$00FF                      ; $8AB46A  29 FF 00     MX
    PHA                             ; $8AB46D  48           MX
    PLB                             ; $8AB46E  AB           MX
    LDX #$0000                      ; $8AB46F  A2 00 00     MX
    LDA #$002A                      ; $8AB472  A9 2A 00     MX
L_8AB475:
    STA $A4                         ; $8AB475  85 A4        MX
L_8AB477:
    LDA $0000,Y                     ; $8AB477  B9 00 00     MX
    STA $7EE280,X                   ; $8AB47A  9F 80 E2 7E  MX
    LDA $0002,Y                     ; $8AB47E  B9 02 00     MX
    STA $7EE282,X                   ; $8AB481  9F 82 E2 7E  MX
    LDA $0004,Y                     ; $8AB485  B9 04 00     MX
    STA $7EE284,X                   ; $8AB488  9F 84 E2 7E  MX
    LDA $0006,Y                     ; $8AB48C  B9 06 00     MX
    STA $7EE286,X                   ; $8AB48F  9F 86 E2 7E  MX
    LDA $0008,Y                     ; $8AB493  B9 08 00     MX
    STA $7EE288,X                   ; $8AB496  9F 88 E2 7E  MX
    LDA $000A,Y                     ; $8AB49A  B9 0A 00     MX
    STA $7EE28A,X                   ; $8AB49D  9F 8A E2 7E  MX
    LDA $000C,Y                     ; $8AB4A1  B9 0C 00     MX
    STA $7EE28C,X                   ; $8AB4A4  9F 8C E2 7E  MX
    LDA $000E,Y                     ; $8AB4A8  B9 0E 00     MX
    STA $7EE28E,X                   ; $8AB4AB  9F 8E E2 7E  MX
    LDA $0010,Y                     ; $8AB4AF  B9 10 00     MX
    STA $7EE290,X                   ; $8AB4B2  9F 90 E2 7E  MX
    LDA $0012,Y                     ; $8AB4B6  B9 12 00     MX
    STA $7EE292,X                   ; $8AB4B9  9F 92 E2 7E  MX
    LDA $0014,Y                     ; $8AB4BD  B9 14 00     MX
    STA $7EE294,X                   ; $8AB4C0  9F 94 E2 7E  MX
    LDA $0016,Y                     ; $8AB4C4  B9 16 00     MX
    STA $7EE296,X                   ; $8AB4C7  9F 96 E2 7E  MX
    LDA $0018,Y                     ; $8AB4CB  B9 18 00     MX
    STA $7EE298,X                   ; $8AB4CE  9F 98 E2 7E  MX
    LDA $001A,Y                     ; $8AB4D2  B9 1A 00     MX
    STA $7EE29A,X                   ; $8AB4D5  9F 9A E2 7E  MX
    LDA $001C,Y                     ; $8AB4D9  B9 1C 00     MX
    STA $7EE29C,X                   ; $8AB4DC  9F 9C E2 7E  MX
    LDA $001E,Y                     ; $8AB4E0  B9 1E 00     MX
    STA $7EE29E,X                   ; $8AB4E3  9F 9E E2 7E  MX
    SEP #$20                        ; $8AB4E7  E2 20        MX
    LDA $0000,Y                     ; $8AB4E9  B9 00 00     mX
    ORA $0001,Y                     ; $8AB4EC  19 01 00     mX
    ORA $0010,Y                     ; $8AB4EF  19 10 00     mX
    ORA $0011,Y                     ; $8AB4F2  19 11 00     mX
    ORA $0020,Y                     ; $8AB4F5  19 20 00     mX
    STA $A8                         ; $8AB4F8  85 A8        mX
    LDA $0020,Y                     ; $8AB4FA  B9 20 00     mX
    EOR #$FF                        ; $8AB4FD  49 FF        mX
    AND $A8                         ; $8AB4FF  25 A8        mX
    STA $7EE2A0,X                   ; $8AB501  9F A0 E2 7E  mX
    STA $7EE2A1,X                   ; $8AB505  9F A1 E2 7E  mX
    LDA $0020,Y                     ; $8AB509  B9 20 00     mX
    AND $A8                         ; $8AB50C  25 A8        mX
    STA $7EE2B0,X                   ; $8AB50E  9F B0 E2 7E  mX
    LDA #$00                        ; $8AB512  A9 00        mX
    STA $7EE2B1,X                   ; $8AB514  9F B1 E2 7E  mX
    LDA $0002,Y                     ; $8AB518  B9 02 00     mX
    ORA $0003,Y                     ; $8AB51B  19 03 00     mX
    ORA $0012,Y                     ; $8AB51E  19 12 00     mX
    ORA $0013,Y                     ; $8AB521  19 13 00     mX
    ORA $0021,Y                     ; $8AB524  19 21 00     mX
    STA $A8                         ; $8AB527  85 A8        mX
    LDA $0021,Y                     ; $8AB529  B9 21 00     mX
    EOR #$FF                        ; $8AB52C  49 FF        mX
    AND $A8                         ; $8AB52E  25 A8        mX
    STA $7EE2A2,X                   ; $8AB530  9F A2 E2 7E  mX
    STA $7EE2A3,X                   ; $8AB534  9F A3 E2 7E  mX
    LDA $0021,Y                     ; $8AB538  B9 21 00     mX
    AND $A8                         ; $8AB53B  25 A8        mX
    STA $7EE2B2,X                   ; $8AB53D  9F B2 E2 7E  mX
    LDA #$00                        ; $8AB541  A9 00        mX
    STA $7EE2B3,X                   ; $8AB543  9F B3 E2 7E  mX
    LDA $0004,Y                     ; $8AB547  B9 04 00     mX
    ORA $0005,Y                     ; $8AB54A  19 05 00     mX
    ORA $0014,Y                     ; $8AB54D  19 14 00     mX
    ORA $0015,Y                     ; $8AB550  19 15 00     mX
    ORA $0022,Y                     ; $8AB553  19 22 00     mX
    STA $A8                         ; $8AB556  85 A8        mX
    LDA $0022,Y                     ; $8AB558  B9 22 00     mX
    EOR #$FF                        ; $8AB55B  49 FF        mX
    AND $A8                         ; $8AB55D  25 A8        mX
    STA $7EE2A4,X                   ; $8AB55F  9F A4 E2 7E  mX
    STA $7EE2A5,X                   ; $8AB563  9F A5 E2 7E  mX
    LDA $0022,Y                     ; $8AB567  B9 22 00     mX
    AND $A8                         ; $8AB56A  25 A8        mX
    STA $7EE2B4,X                   ; $8AB56C  9F B4 E2 7E  mX
    LDA #$00                        ; $8AB570  A9 00        mX
    STA $7EE2B5,X                   ; $8AB572  9F B5 E2 7E  mX
    LDA $0006,Y                     ; $8AB576  B9 06 00     mX
    ORA $0007,Y                     ; $8AB579  19 07 00     mX
    ORA $0016,Y                     ; $8AB57C  19 16 00     mX
    ORA $0017,Y                     ; $8AB57F  19 17 00     mX
    ORA $0023,Y                     ; $8AB582  19 23 00     mX
    STA $A8                         ; $8AB585  85 A8        mX
    LDA $0023,Y                     ; $8AB587  B9 23 00     mX
    EOR #$FF                        ; $8AB58A  49 FF        mX
    AND $A8                         ; $8AB58C  25 A8        mX
    STA $7EE2A6,X                   ; $8AB58E  9F A6 E2 7E  mX
    STA $7EE2A7,X                   ; $8AB592  9F A7 E2 7E  mX
    LDA $0023,Y                     ; $8AB596  B9 23 00     mX
    AND $A8                         ; $8AB599  25 A8        mX
    STA $7EE2B6,X                   ; $8AB59B  9F B6 E2 7E  mX
    LDA #$00                        ; $8AB59F  A9 00        mX
    STA $7EE2B7,X                   ; $8AB5A1  9F B7 E2 7E  mX
    LDA $0008,Y                     ; $8AB5A5  B9 08 00     mX
    ORA $0009,Y                     ; $8AB5A8  19 09 00     mX
    ORA $0018,Y                     ; $8AB5AB  19 18 00     mX
    ORA $0019,Y                     ; $8AB5AE  19 19 00     mX
    ORA $0024,Y                     ; $8AB5B1  19 24 00     mX
    STA $A8                         ; $8AB5B4  85 A8        mX
    LDA $0024,Y                     ; $8AB5B6  B9 24 00     mX
    EOR #$FF                        ; $8AB5B9  49 FF        mX
    AND $A8                         ; $8AB5BB  25 A8        mX
    STA $7EE2A8,X                   ; $8AB5BD  9F A8 E2 7E  mX
    STA $7EE2A9,X                   ; $8AB5C1  9F A9 E2 7E  mX
    LDA $0024,Y                     ; $8AB5C5  B9 24 00     mX
    AND $A8                         ; $8AB5C8  25 A8        mX
    STA $7EE2B8,X                   ; $8AB5CA  9F B8 E2 7E  mX
    LDA #$00                        ; $8AB5CE  A9 00        mX
    STA $7EE2B9,X                   ; $8AB5D0  9F B9 E2 7E  mX
    LDA $000A,Y                     ; $8AB5D4  B9 0A 00     mX
    ORA $000B,Y                     ; $8AB5D7  19 0B 00     mX
    ORA $001A,Y                     ; $8AB5DA  19 1A 00     mX
    ORA $001B,Y                     ; $8AB5DD  19 1B 00     mX
    ORA $0025,Y                     ; $8AB5E0  19 25 00     mX
    STA $A8                         ; $8AB5E3  85 A8        mX
    LDA $0025,Y                     ; $8AB5E5  B9 25 00     mX
    EOR #$FF                        ; $8AB5E8  49 FF        mX
    AND $A8                         ; $8AB5EA  25 A8        mX
    STA $7EE2AA,X                   ; $8AB5EC  9F AA E2 7E  mX
    STA $7EE2AB,X                   ; $8AB5F0  9F AB E2 7E  mX
    LDA $0025,Y                     ; $8AB5F4  B9 25 00     mX
    AND $A8                         ; $8AB5F7  25 A8        mX
    STA $7EE2BA,X                   ; $8AB5F9  9F BA E2 7E  mX
    LDA #$00                        ; $8AB5FD  A9 00        mX
    STA $7EE2BB,X                   ; $8AB5FF  9F BB E2 7E  mX
    LDA $000C,Y                     ; $8AB603  B9 0C 00     mX
    ORA $000D,Y                     ; $8AB606  19 0D 00     mX
    ORA $001C,Y                     ; $8AB609  19 1C 00     mX
    ORA $001D,Y                     ; $8AB60C  19 1D 00     mX
    ORA $0026,Y                     ; $8AB60F  19 26 00     mX
    STA $A8                         ; $8AB612  85 A8        mX
    LDA $0026,Y                     ; $8AB614  B9 26 00     mX
    EOR #$FF                        ; $8AB617  49 FF        mX
    AND $A8                         ; $8AB619  25 A8        mX
    STA $7EE2AC,X                   ; $8AB61B  9F AC E2 7E  mX
    STA $7EE2AD,X                   ; $8AB61F  9F AD E2 7E  mX
    LDA $0026,Y                     ; $8AB623  B9 26 00     mX
    AND $A8                         ; $8AB626  25 A8        mX
    STA $7EE2BC,X                   ; $8AB628  9F BC E2 7E  mX
    LDA #$00                        ; $8AB62C  A9 00        mX
    STA $7EE2BD,X                   ; $8AB62E  9F BD E2 7E  mX
    LDA $000E,Y                     ; $8AB632  B9 0E 00     mX
    ORA $000F,Y                     ; $8AB635  19 0F 00     mX
    ORA $001E,Y                     ; $8AB638  19 1E 00     mX
    ORA $001F,Y                     ; $8AB63B  19 1F 00     mX
    ORA $0027,Y                     ; $8AB63E  19 27 00     mX
    STA $A8                         ; $8AB641  85 A8        mX
    LDA $0027,Y                     ; $8AB643  B9 27 00     mX
    EOR #$FF                        ; $8AB646  49 FF        mX
    AND $A8                         ; $8AB648  25 A8        mX
    STA $7EE2AE,X                   ; $8AB64A  9F AE E2 7E  mX
    STA $7EE2AF,X                   ; $8AB64E  9F AF E2 7E  mX
    LDA $0027,Y                     ; $8AB652  B9 27 00     mX
    AND $A8                         ; $8AB655  25 A8        mX
    STA $7EE2BE,X                   ; $8AB657  9F BE E2 7E  mX
    LDA #$00                        ; $8AB65B  A9 00        mX
    STA $7EE2BF,X                   ; $8AB65D  9F BF E2 7E  mX
    REP #$20                        ; $8AB661  C2 20        mX
    TYA                             ; $8AB663  98           MX
    CLC                             ; $8AB664  18           MX
    ADC #$0028                      ; $8AB665  69 28 00     MX
    TAY                             ; $8AB668  A8           MX
    TXA                             ; $8AB669  8A           MX
    CLC                             ; $8AB66A  18           MX
    ADC #$0040                      ; $8AB66B  69 40 00     MX
    TAX                             ; $8AB66E  AA           MX
    DEC $A4                         ; $8AB66F  C6 A4        MX
    BEQ L_8AB676                    ; $8AB671  F0 03        MX
    JMP L_8AB477                    ; $8AB673  4C 77 B4     MX
L_8AB676:
    PLB                             ; $8AB676  AB           MX
    RTS                             ; $8AB677  60           MX
L_8AB678:
    LDA $1CCD                       ; $8AB678  AD CD 1C     MX
    EOR #$0001                      ; $8AB67B  49 01 00     MX
    STA $1CCD                       ; $8AB67E  8D CD 1C     MX
    BNE L_8AB69A                    ; $8AB681  D0 17        MX
    LDX #$0540                      ; $8AB683  A2 40 05     MX
    TYA                             ; $8AB686  98           MX
    CLC                             ; $8AB687  18           MX
    ADC #$0348                      ; $8AB688  69 48 03     MX
    TAY                             ; $8AB68B  A8           MX
    LDA $1661                       ; $8AB68C  AD 61 16     MX
    AND #$00FF                      ; $8AB68F  29 FF 00     MX
    PHA                             ; $8AB692  48           MX
    PLB                             ; $8AB693  AB           MX
    LDA #$0015                      ; $8AB694  A9 15 00     MX
    JMP L_8AA9E0                    ; $8AB697  4C E0 A9     MX
L_8AB69A:
    LDX #$0000                      ; $8AB69A  A2 00 00     MX
    LDA $1661                       ; $8AB69D  AD 61 16     MX
    AND #$00FF                      ; $8AB6A0  29 FF 00     MX
    PHA                             ; $8AB6A3  48           MX
    PLB                             ; $8AB6A4  AB           MX
    LDA #$0015                      ; $8AB6A5  A9 15 00     MX
    JMP L_8AA9E0                    ; $8AB6A8  4C E0 A9     MX
L_8AB6AB:
    LDA $1CCD                       ; $8AB6AB  AD CD 1C     MX
    EOR #$0001                      ; $8AB6AE  49 01 00     MX
    STA $1CCD                       ; $8AB6B1  8D CD 1C     MX
    BNE L_8AB6CD                    ; $8AB6B4  D0 17        MX
    LDX #$0540                      ; $8AB6B6  A2 40 05     MX
    TYA                             ; $8AB6B9  98           MX
    CLC                             ; $8AB6BA  18           MX
    ADC #$0348                      ; $8AB6BB  69 48 03     MX
    TAY                             ; $8AB6BE  A8           MX
    LDA $1661                       ; $8AB6BF  AD 61 16     MX
    AND #$00FF                      ; $8AB6C2  29 FF 00     MX
    PHA                             ; $8AB6C5  48           MX
    PLB                             ; $8AB6C6  AB           MX
    LDA #$0015                      ; $8AB6C7  A9 15 00     MX
    JMP L_8AAC11                    ; $8AB6CA  4C 11 AC     MX
L_8AB6CD:
    LDX #$0000                      ; $8AB6CD  A2 00 00     MX
    LDA $1661                       ; $8AB6D0  AD 61 16     MX
    AND #$00FF                      ; $8AB6D3  29 FF 00     MX
    PHA                             ; $8AB6D6  48           MX
    PLB                             ; $8AB6D7  AB           MX
    LDA #$0015                      ; $8AB6D8  A9 15 00     MX
    JMP L_8AAC11                    ; $8AB6DB  4C 11 AC     MX
L_8AB6DE:
    LDA $1CCD                       ; $8AB6DE  AD CD 1C     MX
    EOR #$0001                      ; $8AB6E1  49 01 00     MX
    STA $1CCD                       ; $8AB6E4  8D CD 1C     MX
    BNE L_8AB700                    ; $8AB6E7  D0 17        MX
    LDX #$0540                      ; $8AB6E9  A2 40 05     MX
    TYA                             ; $8AB6EC  98           MX
    CLC                             ; $8AB6ED  18           MX
    ADC #$0348                      ; $8AB6EE  69 48 03     MX
    TAY                             ; $8AB6F1  A8           MX
    LDA $1661                       ; $8AB6F2  AD 61 16     MX
    AND #$00FF                      ; $8AB6F5  29 FF 00     MX
    PHA                             ; $8AB6F8  48           MX
    PLB                             ; $8AB6F9  AB           MX
    LDA #$0015                      ; $8AB6FA  A9 15 00     MX
    JMP L_8AAE12                    ; $8AB6FD  4C 12 AE     MX
L_8AB700:
    LDX #$0000                      ; $8AB700  A2 00 00     MX
    LDA $1661                       ; $8AB703  AD 61 16     MX
    AND #$00FF                      ; $8AB706  29 FF 00     MX
    PHA                             ; $8AB709  48           MX
    PLB                             ; $8AB70A  AB           MX
    LDA #$0015                      ; $8AB70B  A9 15 00     MX
    JMP L_8AAE12                    ; $8AB70E  4C 12 AE     MX
L_8AB711:
    LDA $1CCD                       ; $8AB711  AD CD 1C     MX
    EOR #$0001                      ; $8AB714  49 01 00     MX
    STA $1CCD                       ; $8AB717  8D CD 1C     MX
    BNE L_8AB733                    ; $8AB71A  D0 17        MX
    LDX #$0540                      ; $8AB71C  A2 40 05     MX
    TYA                             ; $8AB71F  98           MX
    CLC                             ; $8AB720  18           MX
    ADC #$0348                      ; $8AB721  69 48 03     MX
    TAY                             ; $8AB724  A8           MX
    LDA $1661                       ; $8AB725  AD 61 16     MX
    AND #$00FF                      ; $8AB728  29 FF 00     MX
    PHA                             ; $8AB72B  48           MX
    PLB                             ; $8AB72C  AB           MX
    LDA #$0015                      ; $8AB72D  A9 15 00     MX
    JMP L_8AB043                    ; $8AB730  4C 43 B0     MX
L_8AB733:
    LDX #$0000                      ; $8AB733  A2 00 00     MX
    LDA $1661                       ; $8AB736  AD 61 16     MX
    AND #$00FF                      ; $8AB739  29 FF 00     MX
    PHA                             ; $8AB73C  48           MX
    PLB                             ; $8AB73D  AB           MX
    LDA #$0015                      ; $8AB73E  A9 15 00     MX
    JMP L_8AB043                    ; $8AB741  4C 43 B0     MX
L_8AB744:
    LDA $1CCD                       ; $8AB744  AD CD 1C     MX
    EOR #$0001                      ; $8AB747  49 01 00     MX
    STA $1CCD                       ; $8AB74A  8D CD 1C     MX
    BNE L_8AB766                    ; $8AB74D  D0 17        MX
    LDX #$0540                      ; $8AB74F  A2 40 05     MX
    TYA                             ; $8AB752  98           MX
    CLC                             ; $8AB753  18           MX
    ADC #$0348                      ; $8AB754  69 48 03     MX
    TAY                             ; $8AB757  A8           MX
    LDA $1661                       ; $8AB758  AD 61 16     MX
    AND #$00FF                      ; $8AB75B  29 FF 00     MX
    PHA                             ; $8AB75E  48           MX
    PLB                             ; $8AB75F  AB           MX
    LDA #$0015                      ; $8AB760  A9 15 00     MX
    JMP L_8AB264                    ; $8AB763  4C 64 B2     MX
L_8AB766:
    LDX #$0000                      ; $8AB766  A2 00 00     MX
    LDA $1661                       ; $8AB769  AD 61 16     MX
    AND #$00FF                      ; $8AB76C  29 FF 00     MX
    PHA                             ; $8AB76F  48           MX
    PLB                             ; $8AB770  AB           MX
    LDA #$0015                      ; $8AB771  A9 15 00     MX
    JMP L_8AB264                    ; $8AB774  4C 64 B2     MX
L_8AB777:
    LDA $1CCD                       ; $8AB777  AD CD 1C     MX
    EOR #$0001                      ; $8AB77A  49 01 00     MX
    STA $1CCD                       ; $8AB77D  8D CD 1C     MX
    BNE L_8AB799                    ; $8AB780  D0 17        MX
    LDX #$0540                      ; $8AB782  A2 40 05     MX
    TYA                             ; $8AB785  98           MX
    CLC                             ; $8AB786  18           MX
    ADC #$0348                      ; $8AB787  69 48 03     MX
    TAY                             ; $8AB78A  A8           MX
    LDA $1661                       ; $8AB78B  AD 61 16     MX
    AND #$00FF                      ; $8AB78E  29 FF 00     MX
    PHA                             ; $8AB791  48           MX
    PLB                             ; $8AB792  AB           MX
    LDA #$0015                      ; $8AB793  A9 15 00     MX
    JMP L_8AB475                    ; $8AB796  4C 75 B4     MX
L_8AB799:
    LDX #$0000                      ; $8AB799  A2 00 00     MX
    LDA $1661                       ; $8AB79C  AD 61 16     MX
    AND #$00FF                      ; $8AB79F  29 FF 00     MX
    PHA                             ; $8AB7A2  48           MX
    PLB                             ; $8AB7A3  AB           MX
    LDA #$0015                      ; $8AB7A4  A9 15 00     MX
    JMP L_8AB475                    ; $8AB7A7  4C 75 B4     MX
L_8AB7AA:
    SEP #$30                        ; $8AB7AA  E2 30        MX
    LDA #$8F                        ; $8AB7AC  A9 8F        mx
    STA $2100                       ; $8AB7AE  8D 00 21     mx
    REP #$30                        ; $8AB7B1  C2 30        mx
    LDA #$D666                      ; $8AB7B3  A9 66 D6     MX
    STA $00D0                       ; $8AB7B6  8D D0 00     MX
    LDA #$0BD6                      ; $8AB7B9  A9 D6 0B     MX
    STA $00D1                       ; $8AB7BC  8D D1 00     MX
    LDA #$0000                      ; $8AB7BF  A9 00 00     MX
    STA $00D3                       ; $8AB7C2  8D D3 00     MX
    LDA #$7F00                      ; $8AB7C5  A9 00 7F     MX
    STA $00D4                       ; $8AB7C8  8D D4 00     MX
    JSL $29F3F0                     ; $8AB7CB  22 F0 F3 29  MX
    SEP #$30                        ; $8AB7CF  E2 30        MX
    LDA #$00                        ; $8AB7D1  A9 00        mx
    STA $2116                       ; $8AB7D3  8D 16 21     mx
    LDA #$00                        ; $8AB7D6  A9 00        mx
    STA $2117                       ; $8AB7D8  8D 17 21     mx
    LDA #$01                        ; $8AB7DB  A9 01        mx
    STA $4300                       ; $8AB7DD  8D 00 43     mx
    LDA #$18                        ; $8AB7E0  A9 18        mx
    STA $4301                       ; $8AB7E2  8D 01 43     mx
    LDA #$80                        ; $8AB7E5  A9 80        mx
    STA $4302                       ; $8AB7E7  8D 02 43     mx
    LDA #$16                        ; $8AB7EA  A9 16        mx
    STA $4303                       ; $8AB7EC  8D 03 43     mx
    LDA #$7F                        ; $8AB7EF  A9 7F        mx
    STA $4304                       ; $8AB7F1  8D 04 43     mx
    LDA #$00                        ; $8AB7F4  A9 00        mx
    STA $4305                       ; $8AB7F6  8D 05 43     mx
    LDA #$67                        ; $8AB7F9  A9 67        mx
    STA $4306                       ; $8AB7FB  8D 06 43     mx
    LDA #$01                        ; $8AB7FE  A9 01        mx
    STA $420B                       ; $8AB800  8D 0B 42     mx
    LDA #$00                        ; $8AB803  A9 00        mx
    STA $2116                       ; $8AB805  8D 16 21     mx
    LDA #$70                        ; $8AB808  A9 70        mx
    STA $2117                       ; $8AB80A  8D 17 21     mx
    LDA #$01                        ; $8AB80D  A9 01        mx
    STA $4300                       ; $8AB80F  8D 00 43     mx
    LDA #$18                        ; $8AB812  A9 18        mx
    STA $4301                       ; $8AB814  8D 01 43     mx
    LDA #$8D                        ; $8AB817  A9 8D        mx
    STA $4302                       ; $8AB819  8D 02 43     mx
    LDA #$F8                        ; $8AB81C  A9 F8        mx
    STA $4303                       ; $8AB81E  8D 03 43     mx
    LDA #$0B                        ; $8AB821  A9 0B        mx
    STA $4304                       ; $8AB823  8D 04 43     mx
    LDA #$E0                        ; $8AB826  A9 E0        mx
    STA $4305                       ; $8AB828  8D 05 43     mx
    LDA #$05                        ; $8AB82B  A9 05        mx
    STA $4306                       ; $8AB82D  8D 06 43     mx
    LDA #$01                        ; $8AB830  A9 01        mx
    STA $420B                       ; $8AB832  8D 0B 42     mx
    LDA #$AF                        ; $8AB835  A9 AF        mx
    STA $00D0                       ; $8AB837  8D D0 00     mx
    LDA #$9B                        ; $8AB83A  A9 9B        mx
    STA $00D1                       ; $8AB83C  8D D1 00     mx
    LDA #$0D                        ; $8AB83F  A9 0D        mx
    STA $00D2                       ; $8AB841  8D D2 00     mx
    LDX #$10                        ; $8AB844  A2 10        mx
    LDA #$00                        ; $8AB846  A9 00        mx
    JSL L_808B53                    ; $8AB848  22 53 8B 80  mx
    LDA #$80                        ; $8AB84C  A9 80        mx
    STA $2115                       ; $8AB84E  8D 15 21     mx
    REP #$30                        ; $8AB851  C2 30        mx
    LDA #$7400                      ; $8AB853  A9 00 74     MX
    STA $2116                       ; $8AB856  8D 16 21     MX
    LDY #$0020                      ; $8AB859  A0 20 00     MX
    LDA #$0000                      ; $8AB85C  A9 00 00     MX
L_8AB85F:
    STA $2118                       ; $8AB85F  8D 18 21     MX
    DEY                             ; $8AB862  88           MX
    BNE L_8AB85F                    ; $8AB863  D0 FA        MX
    LDA #$5400                      ; $8AB865  A9 00 54     MX
    STA $2116                       ; $8AB868  8D 16 21     MX
    LDA #$0F40                      ; $8AB86B  A9 40 0F     MX
    STA $00A4                       ; $8AB86E  8D A4 00     MX
    PEA $007F                       ; $8AB871  F4 7F 00     MX
    PLB                             ; $8AB874  AB           MX
    LDX #$001D                      ; $8AB875  A2 1D 00     MX
L_8AB878:
    LDY #$0000                      ; $8AB878  A0 00 00     MX
L_8AB87B:
    LDA ($A4),Y                     ; $8AB87B  B1 A4        MX
    STA $002118                     ; $8AB87D  8F 18 21 00  MX
    INY                             ; $8AB881  C8           MX
    INY                             ; $8AB882  C8           MX
    CPY #$0040                      ; $8AB883  C0 40 00     MX
    BNE L_8AB87B                    ; $8AB886  D0 F3        MX
    LDA $0000A4                     ; $8AB888  AF A4 00 00  MX
    CLC                             ; $8AB88C  18           MX
    ADC #$0040                      ; $8AB88D  69 40 00     MX
    STA $0000A4                     ; $8AB890  8F A4 00 00  MX
    DEX                             ; $8AB894  CA           MX
    BNE L_8AB878                    ; $8AB895  D0 E1        MX
    PLB                             ; $8AB897  AB           MX
    LDA #$5800                      ; $8AB898  A9 00 58     MX
    STA $002116                     ; $8AB89B  8F 16 21 00  MX
    LDA #$F793                      ; $8AB89F  A9 93 F7     MX
    STA $0000A4                     ; $8AB8A2  8F A4 00 00  MX
    PEA $000C                       ; $8AB8A6  F4 0C 00     MX
    PLB                             ; $8AB8A9  AB           MX
    LDX #$0018                      ; $8AB8AA  A2 18 00     MX
L_8AB8AD:
    LDY #$0000                      ; $8AB8AD  A0 00 00     MX
L_8AB8B0:
    LDA ($A4),Y                     ; $8AB8B0  B1 A4        MX
    ORA #$2000                      ; $8AB8B2  09 00 20     MX
    STA $002118                     ; $8AB8B5  8F 18 21 00  MX
    INY                             ; $8AB8B9  C8           MX
    INY                             ; $8AB8BA  C8           MX
    CPY #$0040                      ; $8AB8BB  C0 40 00     MX
    BNE L_8AB8B0                    ; $8AB8BE  D0 F0        MX
    LDA $0000A4                     ; $8AB8C0  AF A4 00 00  MX
    CLC                             ; $8AB8C4  18           MX
    ADC #$0040                      ; $8AB8C5  69 40 00     MX
    STA $0000A4                     ; $8AB8C8  8F A4 00 00  MX
    DEX                             ; $8AB8CC  CA           MX
    BNE L_8AB8AD                    ; $8AB8CD  D0 DE        MX
    LDX #$0500                      ; $8AB8CF  A2 00 05     MX
    LDA #$0000                      ; $8AB8D2  A9 00 00     MX
L_8AB8D5:
    STA $002118                     ; $8AB8D5  8F 18 21 00  MX
    DEX                             ; $8AB8D9  CA           MX
    BNE L_8AB8D5                    ; $8AB8DA  D0 F9        MX
    PLB                             ; $8AB8DC  AB           MX
    SEP #$20                        ; $8AB8DD  E2 20        MX
    LDA #$FF                        ; $8AB8DF  A9 FF        mX
    STA $210E                       ; $8AB8E1  8D 0E 21     mX
    STA $210E                       ; $8AB8E4  8D 0E 21     mX
    LDA #$00                        ; $8AB8E7  A9 00        mX
    STA $210D                       ; $8AB8E9  8D 0D 21     mX
    STA $210D                       ; $8AB8EC  8D 0D 21     mX
    LDA #$00                        ; $8AB8EF  A9 00        mX
    STA $2110                       ; $8AB8F1  8D 10 21     mX
    LDA #$01                        ; $8AB8F4  A9 01        mX
    STA $2110                       ; $8AB8F6  8D 10 21     mX
    LDA #$00                        ; $8AB8F9  A9 00        mX
    STA $210F                       ; $8AB8FB  8D 0F 21     mX
    STA $210F                       ; $8AB8FE  8D 0F 21     mX
    LDA #$11                        ; $8AB901  A9 11        mX
    STA $212C                       ; $8AB903  8D 2C 21     mX
    LDA #$04                        ; $8AB906  A9 04        mX
    STA $2105                       ; $8AB908  8D 05 21     mX
    LDA #$54                        ; $8AB90B  A9 54        mX
    STA $2107                       ; $8AB90D  8D 07 21     mX
    LDA #$5A                        ; $8AB910  A9 5A        mX
    STA $2108                       ; $8AB912  8D 08 21     mX
    LDA #$70                        ; $8AB915  A9 70        mX
    STA $210B                       ; $8AB917  8D 0B 21     mX
    LDA #$03                        ; $8AB91A  A9 03        mX
    STA $2101                       ; $8AB91C  8D 01 21     mX
    LDA #$74                        ; $8AB91F  A9 74        mX
    STA $2109                       ; $8AB921  8D 09 21     mX
    LDA #$00                        ; $8AB924  A9 00        mX
    STA $2111                       ; $8AB926  8D 11 21     mX
    STA $2111                       ; $8AB929  8D 11 21     mX
    STA $2112                       ; $8AB92C  8D 12 21     mX
    STA $2112                       ; $8AB92F  8D 12 21     mX
    STZ $00B2                       ; $8AB932  9C B2 00     mX
    LDA #$08                        ; $8AB935  A9 08        mX
    STA $00B0                       ; $8AB937  8D B0 00     mX
    REP #$20                        ; $8AB93A  C2 20        mX
    LDA #$01F0                      ; $8AB93C  A9 F0 01     MX
    STA $00AE                       ; $8AB93F  8D AE 00     MX
    LDA #$000B                      ; $8AB942  A9 0B 00     MX
    STA $00AC                       ; $8AB945  8D AC 00     MX
    LDA #$00A0                      ; $8AB948  A9 A0 00     MX
    STA $00AA                       ; $8AB94B  8D AA 00     MX
    STZ $16A8                       ; $8AB94E  9C A8 16     MX
    STZ $16AA                       ; $8AB951  9C AA 16     MX
    LDA #$FF00                      ; $8AB954  A9 00 FF     MX
    STA $16AC                       ; $8AB957  8D AC 16     MX
    STA $16AE                       ; $8AB95A  8D AE 16     MX
    STZ $16B0                       ; $8AB95D  9C B0 16     MX
    STZ $16B2                       ; $8AB960  9C B2 16     MX
    STZ $1683                       ; $8AB963  9C 83 16     MX
    STZ $1677                       ; $8AB966  9C 77 16     MX
    JSL $29F9B6                     ; $8AB969  22 B6 F9 29  MX
    LDA #$000C                      ; $8AB96D  A9 0C 00     MX
    STA $001665                     ; $8AB970  8F 65 16 00  MX
    RTS                             ; $8AB974  60           MX
L_8AB975:
    SEP #$20                        ; $8AB975  E2 20        MX
    LDA $00B2                       ; $8AB977  AD B2 00     mX
    CMP #$10                        ; $8AB97A  C9 10        mX
    BEQ L_8AB984                    ; $8AB97C  F0 06        mX
    STA $2100                       ; $8AB97E  8D 00 21     mX
    INC $00B2                       ; $8AB981  EE B2 00     mX
L_8AB984:
    REP #$20                        ; $8AB984  C2 20        mX
    LDA $00B2                       ; $8AB986  AD B2 00     MX
    AND #$00FF                      ; $8AB989  29 FF 00     MX
    CMP #$0010                      ; $8AB98C  C9 10 00     MX
    BNE L_8AB9BD                    ; $8AB98F  D0 2C        MX
    LDA $1669                       ; $8AB991  AD 69 16     MX
    ORA $166B                       ; $8AB994  0D 6B 16     MX
    ORA $166D                       ; $8AB997  0D 6D 16     MX
    ORA $166F                       ; $8AB99A  0D 6F 16     MX
    BIT #$D0C0                      ; $8AB99D  89 C0 D0     MX
    BEQ L_8AB9BD                    ; $8AB9A0  F0 1B        MX
    PHA                             ; $8AB9A2  48           MX
    PHX                             ; $8AB9A3  DA           MX
    PHY                             ; $8AB9A4  5A           MX
    LDA #$0045                      ; $8AB9A5  A9 45 00     MX
    JSL L_BDFE18                    ; $8AB9A8  22 18 FE BD  MX
    PLY                             ; $8AB9AC  7A           MX
    PLX                             ; $8AB9AD  FA           MX
    PLA                             ; $8AB9AE  68           MX
    LDA #$0000                      ; $8AB9AF  A9 00 00     MX
    STA $001690                     ; $8AB9B2  8F 90 16 00  MX
    LDA #$000D                      ; $8AB9B6  A9 0D 00     MX
    STA $001665                     ; $8AB9B9  8F 65 16 00  MX
L_8AB9BD:
    JSR L_8AB9EA                    ; $8AB9BD  20 EA B9     MX
    JSR L_8ABCB5                    ; $8AB9C0  20 B5 BC     MX
    RTS                             ; $8AB9C3  60           MX
L_8AB9C4:
    SEP #$20                        ; $8AB9C4  E2 20        MX
    DEC $00B2                       ; $8AB9C6  CE B2 00     mX
    LDA $00B2                       ; $8AB9C9  AD B2 00     mX
    CMP #$FF                        ; $8AB9CC  C9 FF        mX
    BNE L_8AB9DC                    ; $8AB9CE  D0 0C        mX
    REP #$20                        ; $8AB9D0  C2 20        mX
    LDA #$0000                      ; $8AB9D2  A9 00 00     MX
    STA $001665                     ; $8AB9D5  8F 65 16 00  MX
    LDA #$0000                      ; $8AB9D9  A9 00 00     MX
L_8AB9DC:
    SEP #$20                        ; $8AB9DC  E2 20        MX
    STA $2100                       ; $8AB9DE  8D 00 21     mX
    REP #$20                        ; $8AB9E1  C2 20        mX
    JSR L_8AB9EA                    ; $8AB9E3  20 EA B9     MX
    JSR L_8ABCB5                    ; $8AB9E6  20 B5 BC     MX
    RTS                             ; $8AB9E9  60           MX
L_8AB9EA:
    LDA $00B0                       ; $8AB9EA  AD B0 00     MX
    DEC                             ; $8AB9ED  3A           MX
    SEP #$20                        ; $8AB9EE  E2 20        MX
    STA $210E                       ; $8AB9F0  8D 0E 21     mX
    STA $210E                       ; $8AB9F3  8D 0E 21     mX
    REP #$20                        ; $8AB9F6  C2 20        mX
    LDA $00AA                       ; $8AB9F8  AD AA 00     MX
    SEP #$20                        ; $8AB9FB  E2 20        MX
    STA $2110                       ; $8AB9FD  8D 10 21     mX
    XBA                             ; $8ABA00  EB           mX
    STA $2110                       ; $8ABA01  8D 10 21     mX
    REP #$20                        ; $8ABA04  C2 20        mX
    LDA $1677                       ; $8ABA06  AD 77 16     MX
    CMP #$0040                      ; $8ABA09  C9 40 00     MX
    BNE L_8ABA14                    ; $8ABA0C  D0 06        MX
    LDA #$0013                      ; $8ABA0E  A9 13 00     MX
    STA $212C                       ; $8ABA11  8D 2C 21     MX
L_8ABA14:
    LDA $1677                       ; $8ABA14  AD 77 16     MX
    AND #$0001                      ; $8ABA17  29 01 00     MX
    BEQ L_8ABA1F                    ; $8ABA1A  F0 03        MX
    INC $00AA                       ; $8ABA1C  EE AA 00     MX
L_8ABA1F:
    LDA $00B0                       ; $8ABA1F  AD B0 00     MX
    SEC                             ; $8ABA22  38           MX
    SBC #$0002                      ; $8ABA23  E9 02 00     MX
    STA $00B0                       ; $8ABA26  8D B0 00     MX
    LDA $00AE                       ; $8ABA29  AD AE 00     MX
    SEC                             ; $8ABA2C  38           MX
    SBC #$0002                      ; $8ABA2D  E9 02 00     MX
    BPL L_8ABA36                    ; $8ABA30  10 04        MX
    CLC                             ; $8ABA32  18           MX
    ADC #$01E0                      ; $8ABA33  69 E0 01     MX
L_8ABA36:
    STA $00AE                       ; $8ABA36  8D AE 00     MX
    CMP #$01F0                      ; $8ABA39  C9 F0 01     MX
    BNE L_8ABA4B                    ; $8ABA3C  D0 0D        MX
    LDA #$0000                      ; $8ABA3E  A9 00 00     MX
    STA $001690                     ; $8ABA41  8F 90 16 00  MX
    LDA #$000D                      ; $8ABA45  A9 0D 00     MX
    STA $1665                       ; $8ABA48  8D 65 16     MX
L_8ABA4B:
    LDA $00B0                       ; $8ABA4B  AD B0 00     MX
    SEC                             ; $8ABA4E  38           MX
    SBC #$0008                      ; $8ABA4F  E9 08 00     MX
    AND #$00F8                      ; $8ABA52  29 F8 00     MX
    ASL                             ; $8ABA55  0A           MX
    ASL                             ; $8ABA56  0A           MX
    CLC                             ; $8ABA57  18           MX
    ADC #$5400                      ; $8ABA58  69 00 54     MX
    STA $1687                       ; $8ABA5B  8D 87 16     MX
    LDA $00AE                       ; $8ABA5E  AD AE 00     MX
    SEC                             ; $8ABA61  38           MX
    SBC #$0008                      ; $8ABA62  E9 08 00     MX
    BPL L_8ABA6B                    ; $8ABA65  10 04        MX
    CLC                             ; $8ABA67  18           MX
    ADC #$01E0                      ; $8ABA68  69 E0 01     MX
L_8ABA6B:
    AND #$FFF8                      ; $8ABA6B  29 F8 FF     MX
    ASL                             ; $8ABA6E  0A           MX
    ASL                             ; $8ABA6F  0A           MX
    ASL                             ; $8ABA70  0A           MX
    CLC                             ; $8ABA71  18           MX
    ADC #$0000                      ; $8ABA72  69 00 00     MX
    STA $1689                       ; $8ABA75  8D 89 16     MX
    SEP #$20                        ; $8ABA78  E2 20        MX
    LDA #$7F                        ; $8ABA7A  A9 7F        mX
    STA $168F                       ; $8ABA7C  8D 8F 16     mX
    REP #$20                        ; $8ABA7F  C2 20        mX
    LDA $1683                       ; $8ABA81  AD 83 16     MX
    AND #$4000                      ; $8ABA84  29 00 40     MX
    BNE L_8ABAC0                    ; $8ABA87  D0 37        MX
    DEC $00AC                       ; $8ABA89  CE AC 00     MX
    BPL L_8ABAC0                    ; $8ABA8C  10 32        MX
    LDA $00AC                       ; $8ABA8E  AD AC 00     MX
    CMP #$FFF8                      ; $8ABA91  C9 F8 FF     MX
    BCS L_8ABA9E                    ; $8ABA94  B0 08        MX
    LDA #$0047                      ; $8ABA96  A9 47 00     MX
    STA $00AC                       ; $8ABA99  8D AC 00     MX
    BRA L_8ABAC0                    ; $8ABA9C  80 22        MX
L_8ABA9E:
    AND #$0007                      ; $8ABA9E  29 07 00     MX
    EOR #$0007                      ; $8ABAA1  49 07 00     MX
    BNE L_8ABABC                    ; $8ABAA4  D0 16        MX
    LDA $1683                       ; $8ABAA6  AD 83 16     MX
    BPL L_8ABAB9                    ; $8ABAA9  10 0E        MX
    LDA #$02C8                      ; $8ABAAB  A9 C8 02     MX
    STA $00AE                       ; $8ABAAE  8D AE 00     MX
    LDA #$4000                      ; $8ABAB1  A9 00 40     MX
    STA $1683                       ; $8ABAB4  8D 83 16     MX
    BRA L_8ABAC0                    ; $8ABAB7  80 07        MX
L_8ABAB9:
    LDA #$0000                      ; $8ABAB9  A9 00 00     MX
L_8ABABC:
    JSR L_8ABAC7                    ; $8ABABC  20 C7 BA     MX
    RTS                             ; $8ABABF  60           MX
L_8ABAC0:
    LDA #$0005                      ; $8ABAC0  A9 05 00     MX
    STA $1667                       ; $8ABAC3  8D 67 16     MX
    RTS                             ; $8ABAC6  60           MX
L_8ABAC7:
    CMP #$0000                      ; $8ABAC7  C9 00 00     MX
    BEQ L_8ABAE8                    ; $8ABACA  F0 1C        MX
    CMP #$0005                      ; $8ABACC  C9 05 00     MX
    BEQ L_8ABAD6                    ; $8ABACF  F0 05        MX
    BCS L_8ABAE7                    ; $8ABAD1  B0 14        MX
    JMP L_8ABC18                    ; $8ABAD3  4C 18 BC     MX
L_8ABAD6:
    INC $1683                       ; $8ABAD6  EE 83 16     MX
    LDA $1683                       ; $8ABAD9  AD 83 16     MX
    CMP #$001B                      ; $8ABADC  C9 1B 00     MX
    BNE L_8ABAE7                    ; $8ABADF  D0 06        MX
    LDA #$8000                      ; $8ABAE1  A9 00 80     MX
    STA $1683                       ; $8ABAE4  8D 83 16     MX
L_8ABAE7:
    RTS                             ; $8ABAE7  60           MX
L_8ABAE8:
    STZ $1CCD                       ; $8ABAE8  9C CD 1C     MX
    LDA $16A8                       ; $8ABAEB  AD A8 16     MX
    BEQ L_8ABAF3                    ; $8ABAEE  F0 03        MX
    JMP L_8ABB82                    ; $8ABAF0  4C 82 BB     MX
L_8ABAF3:
    LDA $1683                       ; $8ABAF3  AD 83 16     MX
    AND #$001F                      ; $8ABAF6  29 1F 00     MX
    CMP #$0002                      ; $8ABAF9  C9 02 00     MX
    BCS L_8ABB01                    ; $8ABAFC  B0 03        MX
    EOR #$0001                      ; $8ABAFE  49 01 00     MX
L_8ABB01:
    ASL                             ; $8ABB01  0A           MX
    TAX                             ; $8ABB02  AA           MX
    LDA $0AA503,X                   ; $8ABB03  BF 03 A5 0A  MX
    AND #$001F                      ; $8ABB07  29 1F 00     MX
    ASL                             ; $8ABB0A  0A           MX
    ASL                             ; $8ABB0B  0A           MX
    TAX                             ; $8ABB0C  AA           MX
    LDA $0DAF03,X                   ; $8ABB0D  BF 03 AF 0D  MX
    STA $168B                       ; $8ABB11  8D 8B 16     MX
    SEP #$20                        ; $8ABB14  E2 20        MX
    LDA $0DAF05,X                   ; $8ABB16  BF 05 AF 0D  mX
    STA $168D                       ; $8ABB1A  8D 8D 16     mX
    LDA #$E0                        ; $8ABB1D  A9 E0        mX
    STA $168E                       ; $8ABB1F  8D 8E 16     mX
    REP #$20                        ; $8ABB22  C2 20        mX
    TXA                             ; $8ABB24  8A           MX
    ASL                             ; $8ABB25  0A           MX
    TAX                             ; $8ABB26  AA           MX
    STX $16B0                       ; $8ABB27  8E B0 16     MX
    LDA $0DAD59,X                   ; $8ABB2A  BF 59 AD 0D  MX
    STA $005E                       ; $8ABB2E  8D 5E 00     MX
    STA $0064                       ; $8ABB31  8D 64 00     MX
    LDA $0DAD53,X                   ; $8ABB34  BF 53 AD 0D  MX
    STA $005C                       ; $8ABB38  8D 5C 00     MX
    CLC                             ; $8ABB3B  18           MX
    ADC $0DAD55,X                   ; $8ABB3C  7F 55 AD 0D  MX
    STA $0062                       ; $8ABB40  8D 62 00     MX
    LDA $0DAD55,X                   ; $8ABB43  BF 55 AD 0D  MX
    STA $0060                       ; $8ABB47  8D 60 00     MX
    STA $0066                       ; $8ABB4A  8D 66 00     MX
    LDA $0DAE31,X                   ; $8ABB4D  BF 31 AE 0D  MX
    STA $0046                       ; $8ABB51  8D 46 00     MX
    STA $004C                       ; $8ABB54  8D 4C 00     MX
    LDA $0DAE2B,X                   ; $8ABB57  BF 2B AE 0D  MX
    STA $0044                       ; $8ABB5B  8D 44 00     MX
    CLC                             ; $8ABB5E  18           MX
    ADC $0DAE2D,X                   ; $8ABB5F  7F 2D AE 0D  MX
    STA $004A                       ; $8ABB63  8D 4A 00     MX
    LDA $0DAE2D,X                   ; $8ABB66  BF 2D AE 0D  MX
    STA $0048                       ; $8ABB6A  8D 48 00     MX
    STA $004E                       ; $8ABB6D  8D 4E 00     MX
    LDA $16A8                       ; $8ABB70  AD A8 16     MX
    EOR #$0001                      ; $8ABB73  49 01 00     MX
    STA $16A8                       ; $8ABB76  8D A8 16     MX
    LDA #$FFA8                      ; $8ABB79  A9 A8 FF     MX
    STA $16AC                       ; $8ABB7C  8D AC 16     MX
    JMP L_8ABC11                    ; $8ABB7F  4C 11 BC     MX
L_8ABB82:
    LDA $1683                       ; $8ABB82  AD 83 16     MX
    AND #$001F                      ; $8ABB85  29 1F 00     MX
    CMP #$0002                      ; $8ABB88  C9 02 00     MX
    BCS L_8ABB90                    ; $8ABB8B  B0 03        MX
    EOR #$0001                      ; $8ABB8D  49 01 00     MX
L_8ABB90:
    AND #$001F                      ; $8ABB90  29 1F 00     MX
    ASL                             ; $8ABB93  0A           MX
    TAX                             ; $8ABB94  AA           MX
    LDA $0AA503,X                   ; $8ABB95  BF 03 A5 0A  MX
    AND #$001F                      ; $8ABB99  29 1F 00     MX
    ASL                             ; $8ABB9C  0A           MX
    ASL                             ; $8ABB9D  0A           MX
    TAX                             ; $8ABB9E  AA           MX
    LDA $0DAF03,X                   ; $8ABB9F  BF 03 AF 0D  MX
    STA $168B                       ; $8ABBA3  8D 8B 16     MX
    SEP #$20                        ; $8ABBA6  E2 20        MX
    LDA $0DAF05,X                   ; $8ABBA8  BF 05 AF 0D  mX
    STA $168D                       ; $8ABBAC  8D 8D 16     mX
    LDA #$F0                        ; $8ABBAF  A9 F0        mX
    STA $168E                       ; $8ABBB1  8D 8E 16     mX
    REP #$20                        ; $8ABBB4  C2 20        mX
    TXA                             ; $8ABBB6  8A           MX
    ASL                             ; $8ABBB7  0A           MX
    TAX                             ; $8ABBB8  AA           MX
    STX $16B2                       ; $8ABBB9  8E B2 16     MX
    LDA $0DAD59,X                   ; $8ABBBC  BF 59 AD 0D  MX
    STA $006A                       ; $8ABBC0  8D 6A 00     MX
    STA $0070                       ; $8ABBC3  8D 70 00     MX
    LDA $0DAD53,X                   ; $8ABBC6  BF 53 AD 0D  MX
    STA $0068                       ; $8ABBCA  8D 68 00     MX
    CLC                             ; $8ABBCD  18           MX
    ADC $0DAD55,X                   ; $8ABBCE  7F 55 AD 0D  MX
    STA $006E                       ; $8ABBD2  8D 6E 00     MX
    LDA $0DAD55,X                   ; $8ABBD5  BF 55 AD 0D  MX
    STA $006C                       ; $8ABBD9  8D 6C 00     MX
    STA $0072                       ; $8ABBDC  8D 72 00     MX
    LDA $0DAE31,X                   ; $8ABBDF  BF 31 AE 0D  MX
    STA $0052                       ; $8ABBE3  8D 52 00     MX
    STA $0058                       ; $8ABBE6  8D 58 00     MX
    LDA $0DAE2B,X                   ; $8ABBE9  BF 2B AE 0D  MX
    STA $0050                       ; $8ABBED  8D 50 00     MX
    CLC                             ; $8ABBF0  18           MX
    ADC $0DAE2D,X                   ; $8ABBF1  7F 2D AE 0D  MX
    STA $0056                       ; $8ABBF5  8D 56 00     MX
    LDA $0DAE2D,X                   ; $8ABBF8  BF 2D AE 0D  MX
    STA $0054                       ; $8ABBFC  8D 54 00     MX
    STA $005A                       ; $8ABBFF  8D 5A 00     MX
    LDA $16A8                       ; $8ABC02  AD A8 16     MX
    EOR #$0001                      ; $8ABC05  49 01 00     MX
    STA $16A8                       ; $8ABC08  8D A8 16     MX
    LDA #$FFA8                      ; $8ABC0B  A9 A8 FF     MX
    STA $16AE                       ; $8ABC0E  8D AE 16     MX
L_8ABC11:
    LDA #$0006                      ; $8ABC11  A9 06 00     MX
    STA $1667                       ; $8ABC14  8D 67 16     MX
    RTS                             ; $8ABC17  60           MX
L_8ABC18:
    DEC                             ; $8ABC18  3A           MX
    LSR                             ; $8ABC19  4A           MX
    STA $00A4                       ; $8ABC1A  8D A4 00     MX
    LDA $1683                       ; $8ABC1D  AD 83 16     MX
    AND #$001F                      ; $8ABC20  29 1F 00     MX
    CMP #$0002                      ; $8ABC23  C9 02 00     MX
    BCS L_8ABC2B                    ; $8ABC26  B0 03        MX
    EOR #$0001                      ; $8ABC28  49 01 00     MX
L_8ABC2B:
    AND #$001F                      ; $8ABC2B  29 1F 00     MX
    ASL                             ; $8ABC2E  0A           MX
    TAX                             ; $8ABC2F  AA           MX
    LDA $0AA503,X                   ; $8ABC30  BF 03 A5 0A  MX
    AND #$001F                      ; $8ABC34  29 1F 00     MX
    ASL                             ; $8ABC37  0A           MX
    ADC $00A4                       ; $8ABC38  6D A4 00     MX
    ASL                             ; $8ABC3B  0A           MX
    TAX                             ; $8ABC3C  AA           MX
    LDA $0D9D52,X                   ; $8ABC3D  BF 52 9D 0D  MX
    STA $1661                       ; $8ABC41  8D 61 16     MX
    LDA $0D9CCE,X                   ; $8ABC44  BF CE 9C 0D  MX
    TAY                             ; $8ABC48  A8           MX
    LDA $16AA                       ; $8ABC49  AD AA 16     MX
    ASL                             ; $8ABC4C  0A           MX
    TAX                             ; $8ABC4D  AA           MX
    JSR ($BC53,X)                   ; $8ABC4E  FC 53 BC     MX
    BRA L_8ABC77                    ; $8ABC51  80 24        MX
    db $78,$B6,$AB,$B6,$DE,$B6,$11,$B7,$44,$B7,$77,$B7,$00,$C3,$80,$49 ; $8ABC53
    db $80,$CD,$C0,$4E,$00,$D8,$00,$3F,$80,$E2,$40,$44,$00,$D8,$80,$34 ; $8ABC63
    db $80,$E2,$C0,$39                                                 ; $8ABC73
L_8ABC77:
    LDA $1CCD                       ; $8ABC77  AD CD 1C     MX
    BNE L_8ABCAE                    ; $8ABC7A  D0 32        MX
    LDA $16AA                       ; $8ABC7C  AD AA 16     MX
    INC                             ; $8ABC7F  1A           MX
    JSR L_8A8C3C                    ; $8ABC80  20 3C 8C     MX
    LDA $16AA                       ; $8ABC83  AD AA 16     MX
    ASL                             ; $8ABC86  0A           MX
    ASL                             ; $8ABC87  0A           MX
    TAX                             ; $8ABC88  AA           MX
    LDA $0ABC61,X                   ; $8ABC89  BF 61 BC 0A  MX
    STA $001687                     ; $8ABC8D  8F 87 16 00  MX
    LDA $0ABC5F,X                   ; $8ABC91  BF 5F BC 0A  MX
    STA $001689                     ; $8ABC95  8F 89 16 00  MX
    INC $16AA                       ; $8ABC99  EE AA 16     MX
    LDA $16AA                       ; $8ABC9C  AD AA 16     MX
    CMP #$0006                      ; $8ABC9F  C9 06 00     MX
    BNE L_8ABCA7                    ; $8ABCA2  D0 03        MX
    STZ $16AA                       ; $8ABCA4  9C AA 16     MX
L_8ABCA7:
    LDA #$0003                      ; $8ABCA7  A9 03 00     MX
    STA $1667                       ; $8ABCAA  8D 67 16     MX
    RTS                             ; $8ABCAD  60           MX
L_8ABCAE:
    LDA #$0005                      ; $8ABCAE  A9 05 00     MX
    STA $1667                       ; $8ABCB1  8D 67 16     MX
    RTS                             ; $8ABCB4  60           MX
L_8ABCB5:
    LDA $16AC                       ; $8ABCB5  AD AC 16     MX
    CLC                             ; $8ABCB8  18           MX
    ADC #$0002                      ; $8ABCB9  69 02 00     MX
    STA $16AC                       ; $8ABCBC  8D AC 16     MX
    LDA $16AE                       ; $8ABCBF  AD AE 16     MX
    CLC                             ; $8ABCC2  18           MX
    ADC #$0002                      ; $8ABCC3  69 02 00     MX
    STA $16AE                       ; $8ABCC6  8D AE 16     MX
    LDA #$0058                      ; $8ABCC9  A9 58 00     MX
    STA $0024                       ; $8ABCCC  8D 24 00     MX
    LDA $16AC                       ; $8ABCCF  AD AC 16     MX
    STA $0026                       ; $8ABCD2  8D 26 00     MX
    LDX $16B0                       ; $8ABCD5  AE B0 16     MX
    LDA $0DAD57,X                   ; $8ABCD8  BF 57 AD 0D  MX
    STA $0020                       ; $8ABCDC  8D 20 00     MX
    LDA #$0040                      ; $8ABCDF  A9 40 00     MX
    STA $002C                       ; $8ABCE2  8D 2C 00     MX
    SEP #$20                        ; $8ABCE5  E2 20        MX
    LDA $0DAD59,X                   ; $8ABCE7  BF 59 AD 0D  mX
    STA $0022                       ; $8ABCEB  8D 22 00     mX
    LDA #$3C                        ; $8ABCEE  A9 3C        mX
    STA $0028                       ; $8ABCF0  8D 28 00     mX
    REP #$20                        ; $8ABCF3  C2 20        mX
    PHX                             ; $8ABCF5  DA           MX
    JSL $2BE2EA                     ; $8ABCF6  22 EA E2 2B  MX
    PLX                             ; $8ABCFA  FA           MX
    LDA $0DAE2F,X                   ; $8ABCFB  BF 2F AE 0D  MX
    CMP $0DAD57,X                   ; $8ABCFF  DF 57 AD 0D  MX
    BEQ L_8ABD22                    ; $8ABD03  F0 1D        MX
    STA $0020                       ; $8ABD05  8D 20 00     MX
    LDA #$01C0                      ; $8ABD08  A9 C0 01     MX
    STA $002C                       ; $8ABD0B  8D 2C 00     MX
    SEP #$20                        ; $8ABD0E  E2 20        MX
    LDA $0DAE31,X                   ; $8ABD10  BF 31 AE 0D  mX
    STA $0022                       ; $8ABD14  8D 22 00     mX
    LDA #$3C                        ; $8ABD17  A9 3C        mX
    STA $0028                       ; $8ABD19  8D 28 00     mX
    REP #$20                        ; $8ABD1C  C2 20        mX
    JSL $2BE2EA                     ; $8ABD1E  22 EA E2 2B  MX
L_8ABD22:
    LDA #$0058                      ; $8ABD22  A9 58 00     MX
    STA $0024                       ; $8ABD25  8D 24 00     MX
    LDA $16AE                       ; $8ABD28  AD AE 16     MX
    STA $0026                       ; $8ABD2B  8D 26 00     MX
    LDX $16B2                       ; $8ABD2E  AE B2 16     MX
    LDA $0DAD57,X                   ; $8ABD31  BF 57 AD 0D  MX
    STA $0020                       ; $8ABD35  8D 20 00     MX
    LDA #$0060                      ; $8ABD38  A9 60 00     MX
    STA $002C                       ; $8ABD3B  8D 2C 00     MX
    SEP #$20                        ; $8ABD3E  E2 20        MX
    LDA $0DAD59,X                   ; $8ABD40  BF 59 AD 0D  mX
    STA $0022                       ; $8ABD44  8D 22 00     mX
    LDA #$3E                        ; $8ABD47  A9 3E        mX
    STA $0028                       ; $8ABD49  8D 28 00     mX
    REP #$20                        ; $8ABD4C  C2 20        mX
    PHX                             ; $8ABD4E  DA           MX
    JSL $2BE2EA                     ; $8ABD4F  22 EA E2 2B  MX
    PLX                             ; $8ABD53  FA           MX
    LDA $0DAE2F,X                   ; $8ABD54  BF 2F AE 0D  MX
    CMP $0DAD57,X                   ; $8ABD58  DF 57 AD 0D  MX
    BEQ L_8ABD7B                    ; $8ABD5C  F0 1D        MX
    STA $0020                       ; $8ABD5E  8D 20 00     MX
    LDA #$01E0                      ; $8ABD61  A9 E0 01     MX
    STA $002C                       ; $8ABD64  8D 2C 00     MX
    SEP #$20                        ; $8ABD67  E2 20        MX
    LDA $0DAE31,X                   ; $8ABD69  BF 31 AE 0D  mX
    STA $0022                       ; $8ABD6D  8D 22 00     mX
    LDA #$3E                        ; $8ABD70  A9 3E        mX
    STA $0028                       ; $8ABD72  8D 28 00     mX
    REP #$20                        ; $8ABD75  C2 20        mX
    JSL $2BE2EA                     ; $8ABD77  22 EA E2 2B  MX
L_8ABD7B:
    RTS                             ; $8ABD7B  60           MX
    db $AD,$87,$1C,$D0,$03,$20,$86,$C1,$A9,$00,$80,$0C,$83,$16,$0C,$85 ; $8ABD7C
    db $16,$A9,$FF,$FF,$8D,$77,$16,$22,$B6,$F9,$29,$A9,$0F,$00,$8F,$65 ; $8ABD8C
    db $16,$00,$60,$AD,$77,$16,$C9,$0A,$00,$D0,$07,$A9,$10,$00,$8F,$65 ; $8ABD9C
    db $16,$00,$20,$D0,$8C,$60,$E2,$30,$A9,$8F,$8D,$00,$21,$C2,$20,$A9 ; $8ABDAC
    db $86,$D5,$8D,$D0,$00,$A9,$D5,$0C,$8D,$D1,$00,$A9,$00,$00,$8D,$D3 ; $8ABDBC
    db $00,$A9,$00,$7F,$8D,$D4,$00,$22,$F0,$F3,$29,$E2,$30,$A9,$00,$8D ; $8ABDCC
    db $16,$21,$A9,$00,$8D,$17,$21,$A9,$01,$8D,$00,$43,$A9,$18,$8D,$01 ; $8ABDDC
    db $43,$A9,$00,$8D,$02,$43,$A9,$00,$8D,$03,$43,$A9,$7F,$8D,$04,$43 ; $8ABDEC
    db $A9,$40,$8D,$05,$43,$A9,$29,$8D,$06,$43,$A9,$01,$8D,$0B,$42,$A9 ; $8ABDFC
    db $00,$8D,$16,$21,$A9,$40,$8D,$17,$21,$A9,$01,$8D,$00,$43,$A9,$18 ; $8ABE0C
    db $8D,$01,$43,$A9,$44,$8D,$02,$43,$A9,$30,$8D,$03,$43,$A9,$7F,$8D ; $8ABE1C
    db $04,$43,$A9,$E0,$8D,$05,$43,$A9,$1A,$8D,$06,$43,$A9,$01,$8D,$0B ; $8ABE2C
    db $42,$A9,$93,$8D,$D0,$00,$A9,$FE,$8D,$D1,$00,$A9,$0C,$8D,$D2,$00 ; $8ABE3C
    db $A2,$40,$A9,$00,$22,$53,$8B,$80,$A9,$73,$8D,$D0,$00,$A9,$FF,$8D ; $8ABE4C
    db $D1,$00,$A9,$0C,$8D,$D2,$00,$A2,$10,$A9,$D0,$22,$53,$8B,$80,$A9 ; $8ABE5C
    db $80,$8D,$15,$21,$C2,$30,$A9,$00,$74,$8D,$16,$21,$A9,$44,$29,$8D ; $8ABE6C
    db $A4,$00,$F4,$7F,$00,$AB,$A2,$1C,$00,$A0,$00,$00,$B1,$A4,$8F,$18 ; $8ABE7C
    db $21,$00,$C8,$C8,$C0,$40,$00,$D0,$F3,$AF,$A4,$00,$00,$18,$69,$40 ; $8ABE8C
    db $00,$8F,$A4,$00,$00,$CA,$D0,$E1,$A9,$00,$78,$8F,$16,$21,$00,$A9 ; $8ABE9C
    db $28,$4B,$8F,$A4,$00,$00,$A2,$1C,$00,$A0,$00,$00,$B1,$A4,$8F,$18 ; $8ABEAC
    db $21,$00,$C8,$C8,$C0,$40,$00,$D0,$F3,$AF,$A4,$00,$00,$18,$69,$40 ; $8ABEBC
    db $00,$8F,$A4,$00,$00,$CA,$D0,$E1,$AB,$A9,$FF,$0C,$8D,$D1,$00,$A9 ; $8ABECC
    db $A3,$FF,$8D,$D0,$00,$22,$2F,$E0,$00,$E2,$20,$A9,$FF,$8D,$0E,$21 ; $8ABEDC
    db $8D,$0E,$21,$A9,$00,$8D,$0D,$21,$8D,$0D,$21,$A9,$FF,$8D,$10,$21 ; $8ABEEC
    db $8D,$10,$21,$A9,$00,$8D,$0F,$21,$8D,$0F,$21,$A9,$13,$8D,$2C,$21 ; $8ABEFC
    db $A9,$03,$8D,$05,$21,$A9,$74,$8D,$07,$21,$A9,$78,$8D,$08,$21,$A9 ; $8ABF0C
    db $40,$8D,$0B,$21,$A9,$03,$8D,$01,$21,$9C,$B2,$00,$C2,$20,$A9,$EE ; $8ABF1C
    db $02,$8D,$B0,$00,$F4,$7F,$00,$AB,$A0,$04,$2D,$A2,$00,$00,$A9,$07 ; $8ABF2C
    db $00,$85,$A6,$A9,$20,$00,$85,$A4,$B9,$00,$00,$9F,$00,$ED,$7E,$C8 ; $8ABF3C
    db $C8,$E8,$E8,$C6,$A4,$D0,$F1,$C6,$A6,$D0,$E8,$AB,$A2,$02,$ED,$A0 ; $8ABF4C
    db $25,$01,$20,$EB,$8B,$A2,$0E,$ED,$A0,$4F,$01,$20,$0F,$8C,$A2,$26 ; $8ABF5C
    db $ED,$A0,$79,$01,$20,$EB,$8B,$A2,$32,$ED,$A0,$A3,$01,$20,$0F,$8C ; $8ABF6C
    db $A9,$E0,$00,$8D,$16,$21,$A9,$75,$00,$8D,$17,$21,$A9,$01,$00,$8D ; $8ABF7C
    db $00,$43,$A9,$18,$00,$8D,$01,$43,$A9,$00,$00,$8D,$02,$43,$A9,$ED ; $8ABF8C
    db $00,$8D,$03,$43,$A9,$7E,$00,$8D,$04,$43,$A9,$C0,$00,$8D,$05,$43 ; $8ABF9C
    db $A9,$01,$00,$8D,$06,$43,$A9,$01,$00,$8D,$0B,$42,$A9,$11,$00,$8F ; $8ABFAC
    db $65,$16,$00,$60,$E2,$20,$AD,$B2,$00,$C9,$10,$F0,$06,$8D,$00,$21 ; $8ABFBC
    db $EE,$B2,$00,$C2,$20,$AD,$B2,$00,$29,$FF,$00,$C9,$10,$00,$D0,$18 ; $8ABFCC
    db $AD,$69,$16,$0D,$6B,$16,$0D,$6D,$16,$0D,$6F,$16,$89,$C0,$D0,$F0 ; $8ABFDC
    db $07,$A9,$12,$00,$8F,$65,$16,$00,$CE,$B0,$00,$10,$07,$A9,$12,$00 ; $8ABFEC
    db $8F,$65,$16,$00,$20,$31,$C0,$60,$E2,$20,$CE,$B2,$00,$AD,$B2,$00 ; $8ABFFC
    db $C9,$FF,$D0,$18,$AD,$87,$1C,$D0,$07,$A9,$18,$8D,$65,$16,$80,$0A ; $8AC00C
    db $A9,$80,$0F,$66,$16,$00,$8F,$66,$16,$00,$A9,$00,$8D,$00,$21,$C2 ; $8AC01C
    db $20,$20,$31,$C0,$60,$AD,$83,$16,$29,$1F,$00,$0A,$0A,$0A,$AA,$A9 ; $8AC02C
    db $14,$00,$8D,$24,$00,$A9,$2A,$00,$8D,$26,$00,$BF,$57,$AD,$0D,$8D ; $8AC03C
    db $20,$00,$A9,$40,$00,$8D,$2C,$00,$E2,$20,$BF,$59,$AD,$0D,$8D,$22 ; $8AC04C
    db $00,$A9,$2C,$8D,$28,$00,$C2,$20,$DA,$22,$EA,$E2,$2B,$FA,$BF,$2F ; $8AC05C
    db $AE,$0D,$DF,$57,$AD,$0D,$F0,$1D,$8D,$20,$00,$A9,$C0,$01,$8D,$2C ; $8AC06C
    db $00,$E2,$20,$BF,$31,$AE,$0D,$8D,$22,$00,$A9,$2C,$8D,$28,$00,$C2 ; $8AC07C
    db $20,$22,$EA,$E2,$2B,$AD,$85,$16,$29,$1F,$00,$0A,$0A,$0A,$AA,$A9 ; $8AC08C
    db $A4,$00,$8D,$24,$00,$A9,$2A,$00,$8D,$26,$00,$BF,$57,$AD,$0D,$8D ; $8AC09C
    db $20,$00,$A9,$60,$00,$8D,$2C,$00,$E2,$20,$BF,$59,$AD,$0D,$8D,$22 ; $8AC0AC
    db $00,$A9,$2E,$8D,$28,$00,$C2,$20,$DA,$22,$EA,$E2,$2B,$FA,$BF,$2F ; $8AC0BC
    db $AE,$0D,$DF,$57,$AD,$0D,$F0,$1D,$8D,$20,$00,$A9,$E0,$01,$8D,$2C ; $8AC0CC
    db $00,$E2,$20,$BF,$31,$AE,$0D,$8D,$22,$00,$A9,$2E,$8D,$28,$00,$C2 ; $8AC0DC
    db $20,$22,$EA,$E2,$2B,$A0,$00,$00,$A9,$18,$00,$20,$04,$C1,$A0,$06 ; $8AC0EC
    db $00,$A9,$A8,$00,$20,$04,$C1,$60,$8D,$24,$00,$A9,$B9,$00,$8D,$26 ; $8AC0FC
    db $00,$A9,$00,$00,$8D,$2C,$00,$E2,$20,$A9,$0E,$8D,$22,$00,$A9,$2A ; $8AC10C
    db $8D,$28,$00,$C2,$20,$9C,$A4,$00,$CE,$A4,$00,$B9,$B5,$0C,$D0,$05 ; $8AC11C
    db $AD,$A4,$00,$30,$12,$9C,$A4,$00,$0A,$AA,$BF,$E2,$FF,$0C,$8D,$20 ; $8AC12C
    db $00,$5A,$22,$EA,$E2,$2B,$7A,$A9,$0C,$00,$18,$6D,$24,$00,$8D,$24 ; $8AC13C
    db $00,$B9,$B7,$0C,$D0,$05,$AD,$A4,$00,$30,$12,$9C,$A4,$00,$0A,$AA ; $8AC14C
    db $BF,$E2,$FF,$0C,$8D,$20,$00,$5A,$22,$EA,$E2,$2B,$7A,$A9,$0C,$00 ; $8AC15C
    db $18,$6D,$24,$00,$8D,$24,$00,$B9,$B9,$0C,$0A,$AA,$BF,$E2,$FF,$0C ; $8AC16C
    db $8D,$20,$00,$5A,$22,$EA,$E2,$2B,$7A,$60,$A0,$00,$00,$20,$F4,$C2 ; $8AC17C
    db $8D,$A4,$00,$A0,$06,$00,$20,$F4,$C2,$8D,$A6,$00,$AD,$A4,$00,$CD ; $8AC18C
    db $A6,$00,$90,$03,$4C,$DC,$C1,$AD,$83,$16,$8D,$A8,$00,$AD,$A2,$16 ; $8AC19C
    db $30,$06,$A2,$04,$00,$20,$15,$C2,$AD,$A4,$16,$30,$06,$A2,$06,$00 ; $8AC1AC
    db $20,$15,$C2,$AD,$9E,$16,$30,$06,$A2,$00,$00,$20,$B0,$C2,$AD,$A0 ; $8AC1BC
    db $16,$30,$06,$A2,$02,$00,$20,$B0,$C2,$20,$14,$C3,$20,$26,$D8,$60 ; $8AC1CC
    db $AD,$85,$16,$8D,$A8,$00,$AD,$9E,$16,$30,$06,$A2,$00,$00,$20,$15 ; $8AC1DC
    db $C2,$AD,$A0,$16,$30,$06,$A2,$02,$00,$20,$15,$C2,$AD,$A2,$16,$30 ; $8AC1EC
    db $06,$A2,$04,$00,$20,$B0,$C2,$AD,$A4,$16,$30,$06,$A2,$06,$00,$20 ; $8AC1FC
    db $B0,$C2,$20,$14,$C3,$20,$26,$D8,$60,$BD,$CC,$16,$10,$03,$4C,$AF ; $8AC20C
    db $C2,$E2,$20,$8D,$A4,$00,$BD,$D4,$16,$8D,$A5,$00,$BD,$DC,$16,$8D ; $8AC21C
    db $A6,$00,$A9,$00,$8D,$A7,$00,$C2,$20,$DA,$20,$FF,$D6,$B0,$73,$BD ; $8AC22C
    db $F0,$19,$29,$00,$01,$D0,$6B,$E2,$20,$FE,$8E,$18,$D0,$03,$DE,$8E ; $8AC23C
    db $18,$FE,$90,$18,$D0,$03,$DE,$90,$18,$A9,$01,$1D,$F1,$19,$9D,$F1 ; $8AC24C
    db $19,$C2,$20,$AD,$5D,$1C,$D0,$08,$AD,$9E,$16,$0D,$A2,$16,$30,$16 ; $8AC25C
    db $A9,$FF,$FF,$2D,$9E,$16,$2D,$A0,$16,$30,$0B,$A9,$FF,$FF,$2D,$A2 ; $8AC26C
    db $16,$2D,$A4,$16,$10,$2C,$A9,$00,$00,$E2,$20,$9B,$AE,$A8,$00,$BF ; $8AC27C
    db $2A,$C3,$0A,$8D,$A4,$00,$8A,$0A,$AA,$BF,$46,$C3,$0A,$8D,$A6,$00 ; $8AC28C
    db $98,$18,$6D,$A6,$00,$AA,$AD,$A4,$00,$1D,$EE,$19,$9D,$EE,$19,$BB ; $8AC29C
    db $C2,$20,$FA,$60,$BD,$CC,$16,$30,$3E,$E2,$20,$8D,$A4,$00,$BD,$D4 ; $8AC2AC
    db $16,$8D,$A5,$00,$BD,$DC,$16,$8D,$A6,$00,$A9,$00,$8D,$A7,$00,$C2 ; $8AC2BC
    db $20,$DA,$20,$FF,$D6,$B0,$1F,$BD,$F0,$19,$29,$00,$01,$D0,$17,$E2 ; $8AC2CC
    db $20,$FE,$8F,$18,$D0,$03,$DE,$8F,$18,$9E,$90,$18,$A9,$01,$1D,$F1 ; $8AC2DC
    db $19,$9D,$F1,$19,$C2,$20,$FA,$60,$A9,$00,$00,$BE,$B5,$0C         ; $8AC2EC
L_8AC2FA:
    BEQ L_8AC303                    ; $8AC2FA  F0 07        MX
    CLC                             ; $8AC2FC  18           MX
    ADC #$0064                      ; $8AC2FD  69 64 00     MX
L_8AC300:
    DEX                             ; $8AC300  CA           MX
    BRA L_8AC2FA                    ; $8AC301  80 F7        MX
L_8AC303:
    LDX $0CB7,Y                     ; $8AC303  BE B7 0C     MX
L_8AC306:
    BEQ L_8AC30F                    ; $8AC306  F0 07        MX
    CLC                             ; $8AC308  18           MX
    ADC #$000A                      ; $8AC309  69 0A 00     MX
    DEX                             ; $8AC30C  CA           MX
    BRA L_8AC306                    ; $8AC30D  80 F7        MX
L_8AC30F:
    CLC                             ; $8AC30F  18           MX
    ADC $0CB9,Y                     ; $8AC310  79 B9 0C     MX
    RTS                             ; $8AC313  60           MX
L_8AC314:
    LDX #$0000                      ; $8AC314  A2 00 00     MX
L_8AC317:
    LDA $19F0,X                     ; $8AC317  BD F0 19     MX
    AND #$E0FF                      ; $8AC31A  29 FF E0     MX
    STA $19F0,X                     ; $8AC31D  9D F0 19     MX
    INX                             ; $8AC320  E8           MX
    INX                             ; $8AC321  E8           MX
    INX                             ; $8AC322  E8           MX
    INX                             ; $8AC323  E8           MX
    CPX #$0160                      ; $8AC324  E0 60 01     MX
    BNE L_8AC317                    ; $8AC327  D0 EE        MX
    RTS                             ; $8AC329  60           MX
    db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01 ; $8AC32A
    db $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$00,$00,$00,$00 ; $8AC33A
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$01,$00 ; $8AC34A
    db $01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$02,$00,$02,$00 ; $8AC35A
    db $02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$03,$00,$03,$00 ; $8AC36A
    db $03,$00,$03,$00                                                 ; $8AC37A
L_8AC37E:
    LDA #$0000                      ; $8AC37E  A9 00 00     MX
L_8AC381:
    STA $1CCF                       ; $8AC381  8D CF 1C     MX
L_8AC384:
    SEP #$30                        ; $8AC384  E2 30        MX
L_8AC386:
    LDA #$8F                        ; $8AC386  A9 8F        mx
L_8AC388:
    STA $2100                       ; $8AC388  8D 00 21     mx
L_8AC38B:
    REP #$30                        ; $8AC38B  C2 30        mx
L_8AC38D:
    LDX #$0000                      ; $8AC38D  A2 00 00     MX
L_8AC390:
    LDA $13D60C,X                   ; $8AC390  BF 0C D6 13  MX
L_8AC394:
    STA $7F0000,X                   ; $8AC394  9F 00 00 7F  MX
L_8AC398:
    INX                             ; $8AC398  E8           MX
L_8AC399:
    INX                             ; $8AC399  E8           MX
L_8AC39A:
    CPX #$0704                      ; $8AC39A  E0 04 07     MX
L_8AC39D:
    BNE L_8AC390                    ; $8AC39D  D0 F1        MX
L_8AC39F:
    LDX #$0540                      ; $8AC39F  A2 40 05     MX
L_8AC3A2:
    LDA $7F0004,X                   ; $8AC3A2  BF 04 00 7F  MX
L_8AC3A6:
    ORA #$0400                      ; $8AC3A6  09 00 04     MX
L_8AC3A9:
    STA $7F0004,X                   ; $8AC3A9  9F 04 00 7F  MX
L_8AC3AD:
    INX                             ; $8AC3AD  E8           MX
L_8AC3AE:
    INX                             ; $8AC3AE  E8           MX
L_8AC3AF:
    CPX #$06C0                      ; $8AC3AF  E0 C0 06     MX
L_8AC3B2:
    BNE L_8AC3A2                    ; $8AC3B2  D0 EE        MX
L_8AC3B4:
    SEP #$30                        ; $8AC3B4  E2 30        MX
L_8AC3B6:
    LDA #$80                        ; $8AC3B6  A9 80        mx
L_8AC3B8:
    STA $2115                       ; $8AC3B8  8D 15 21     mx
L_8AC3BB:
    REP #$30                        ; $8AC3BB  C2 30        mx
L_8AC3BD:
    LDA #$0000                      ; $8AC3BD  A9 00 00     MX
L_8AC3C0:
    STA $2116                       ; $8AC3C0  8D 16 21     MX
L_8AC3C3:
    LDX #$8000                      ; $8AC3C3  A2 00 80     MX
L_8AC3C6:
    LDA #$0000                      ; $8AC3C6  A9 00 00     MX
L_8AC3C9:
    STA $2118                       ; $8AC3C9  8D 18 21     MX
L_8AC3CC:
    DEX                             ; $8AC3CC  CA           MX
L_8AC3CD:
    BNE L_8AC3C9                    ; $8AC3CD  D0 FA        MX
L_8AC3CF:
    LDA #$8D48                      ; $8AC3CF  A9 48 8D     MX
L_8AC3D2:
    STA $00D0                       ; $8AC3D2  8D D0 00     MX
L_8AC3D5:
    LDA #$138D                      ; $8AC3D5  A9 8D 13     MX
L_8AC3D8:
    STA $00D1                       ; $8AC3D8  8D D1 00     MX
L_8AC3DB:
    LDA #$0800                      ; $8AC3DB  A9 00 08     MX
L_8AC3DE:
    STA $00D3                       ; $8AC3DE  8D D3 00     MX
L_8AC3E1:
    LDA #$7F08                      ; $8AC3E1  A9 08 7F     MX
L_8AC3E4:
    STA $00D4                       ; $8AC3E4  8D D4 00     MX
L_8AC3E7:
    JSL $29F3F0                     ; $8AC3E7  22 F0 F3 29  MX
L_8AC3EB:
    SEP #$30                        ; $8AC3EB  E2 30        MX
L_8AC3ED:
    LDA #$00                        ; $8AC3ED  A9 00        mx
L_8AC3EF:
    STA $2116                       ; $8AC3EF  8D 16 21     mx
L_8AC3F2:
    LDA #$00                        ; $8AC3F2  A9 00        mx
L_8AC3F4:
    STA $2117                       ; $8AC3F4  8D 17 21     mx
L_8AC3F7:
    LDA #$01                        ; $8AC3F7  A9 01        mx
L_8AC3F9:
    STA $4300                       ; $8AC3F9  8D 00 43     mx
L_8AC3FC:
    LDA #$18                        ; $8AC3FC  A9 18        mx
L_8AC3FE:
    STA $4301                       ; $8AC3FE  8D 01 43     mx
L_8AC401:
    LDA #$00                        ; $8AC401  A9 00        mx
L_8AC403:
    STA $4302                       ; $8AC403  8D 02 43     mx
L_8AC406:
    LDA #$08                        ; $8AC406  A9 08        mx
L_8AC408:
    STA $4303                       ; $8AC408  8D 03 43     mx
L_8AC40B:
    LDA #$7F                        ; $8AC40B  A9 7F        mx
L_8AC40D:
    STA $4304                       ; $8AC40D  8D 04 43     mx
L_8AC410:
    LDA #$E0                        ; $8AC410  A9 E0        mx
L_8AC412:
    STA $4305                       ; $8AC412  8D 05 43     mx
L_8AC415:
    LDA #$3F                        ; $8AC415  A9 3F        mx
L_8AC417:
    STA $4306                       ; $8AC417  8D 06 43     mx
L_8AC41A:
    LDA #$01                        ; $8AC41A  A9 01        mx
L_8AC41C:
    STA $420B                       ; $8AC41C  8D 0B 42     mx
L_8AC41F:
    LDA #$00                        ; $8AC41F  A9 00        mx
L_8AC421:
    STA $2116                       ; $8AC421  8D 16 21     mx
L_8AC424:
    LDA #$20                        ; $8AC424  A9 20        mx
L_8AC426:
    STA $2117                       ; $8AC426  8D 17 21     mx
L_8AC429:
    LDA #$01                        ; $8AC429  A9 01        mx
L_8AC42B:
    STA $4300                       ; $8AC42B  8D 00 43     mx
L_8AC42E:
    LDA #$18                        ; $8AC42E  A9 18        mx
L_8AC430:
    STA $4301                       ; $8AC430  8D 01 43     mx
L_8AC433:
    LDA #$4C                        ; $8AC433  A9 4C        mx
L_8AC435:
    STA $4302                       ; $8AC435  8D 02 43     mx
L_8AC438:
    LDA #$BA                        ; $8AC438  A9 BA        mx
L_8AC43A:
    STA $4303                       ; $8AC43A  8D 03 43     mx
L_8AC43D:
    LDA #$13                        ; $8AC43D  A9 13        mx
L_8AC43F:
    STA $4304                       ; $8AC43F  8D 04 43     mx
L_8AC442:
    LDA #$C0                        ; $8AC442  A9 C0        mx
L_8AC444:
    STA $4305                       ; $8AC444  8D 05 43     mx
L_8AC447:
    LDA #$1B                        ; $8AC447  A9 1B        mx
L_8AC449:
    STA $4306                       ; $8AC449  8D 06 43     mx
L_8AC44C:
    LDA #$01                        ; $8AC44C  A9 01        mx
L_8AC44E:
    STA $420B                       ; $8AC44E  8D 0B 42     mx
L_8AC451:
    LDA #$FF                        ; $8AC451  A9 FF        mx
L_8AC453:
    STA $00D0                       ; $8AC453  8D D0 00     mx
L_8AC456:
    LDA #$9B                        ; $8AC456  A9 9B        mx
L_8AC458:
    STA $00D1                       ; $8AC458  8D D1 00     mx
L_8AC45B:
    LDA #$0D                        ; $8AC45B  A9 0D        mx
L_8AC45D:
    STA $00D2                       ; $8AC45D  8D D2 00     mx
L_8AC460:
    LDX #$30                        ; $8AC460  A2 30        mx
L_8AC462:
    LDA #$00                        ; $8AC462  A9 00        mx
L_8AC464:
    JSL L_808B53                    ; $8AC464  22 53 8B 80  mx
L_8AC468:
    LDA #$6F                        ; $8AC468  A9 6F        mx
L_8AC46A:
    STA $00D0                       ; $8AC46A  8D D0 00     mx
L_8AC46D:
    LDA #$9B                        ; $8AC46D  A9 9B        mx
L_8AC46F:
    STA $00D1                       ; $8AC46F  8D D1 00     mx
L_8AC472:
    LDA #$0D                        ; $8AC472  A9 0D        mx
L_8AC474:
    STA $00D2                       ; $8AC474  8D D2 00     mx
L_8AC477:
    LDX #$20                        ; $8AC477  A2 20        mx
L_8AC479:
    LDA #$E0                        ; $8AC479  A9 E0        mx
L_8AC47B:
    JSL L_808B53                    ; $8AC47B  22 53 8B 80  mx
L_8AC47F:
    LDA #$80                        ; $8AC47F  A9 80        mx
L_8AC481:
    STA $2115                       ; $8AC481  8D 15 21     mx
L_8AC484:
    REP #$30                        ; $8AC484  C2 30        mx
L_8AC486:
    LDA #$5C00                      ; $8AC486  A9 00 5C     MX
L_8AC489:
    STA $2116                       ; $8AC489  8D 16 21     MX
L_8AC48C:
    LDA #$0004                      ; $8AC48C  A9 04 00     MX
L_8AC48F:
    STA $00A4                       ; $8AC48F  8D A4 00     MX
L_8AC492:
    PEA $007F                       ; $8AC492  F4 7F 00     MX
L_8AC495:
    PLB                             ; $8AC495  AB           MX
L_8AC496:
    LDX #$001C                      ; $8AC496  A2 1C 00     MX
L_8AC499:
    LDY #$0000                      ; $8AC499  A0 00 00     MX
L_8AC49C:
    LDA ($A4),Y                     ; $8AC49C  B1 A4        MX
L_8AC49E:
    STA $002118                     ; $8AC49E  8F 18 21 00  MX
L_8AC4A2:
    INY                             ; $8AC4A2  C8           MX
L_8AC4A3:
    INY                             ; $8AC4A3  C8           MX
L_8AC4A4:
    CPY #$0040                      ; $8AC4A4  C0 40 00     MX
L_8AC4A7:
    BNE L_8AC49C                    ; $8AC4A7  D0 F3        MX
L_8AC4A9:
    LDA $0000A4                     ; $8AC4A9  AF A4 00 00  MX
L_8AC4AD:
    CLC                             ; $8AC4AD  18           MX
L_8AC4AE:
    ADC #$0040                      ; $8AC4AE  69 40 00     MX
L_8AC4B1:
    STA $0000A4                     ; $8AC4B1  8F A4 00 00  MX
L_8AC4B5:
    DEX                             ; $8AC4B5  CA           MX
L_8AC4B6:
    BNE L_8AC499                    ; $8AC4B6  D0 E1        MX
L_8AC4B8:
    LDA #$5800                      ; $8AC4B8  A9 00 58     MX
L_8AC4BB:
    STA $002116                     ; $8AC4BB  8F 16 21 00  MX
L_8AC4BF:
    LDX #$001C                      ; $8AC4BF  A2 1C 00     MX
L_8AC4C2:
    LDY #$0000                      ; $8AC4C2  A0 00 00     MX
L_8AC4C5:
    LDA #$0000                      ; $8AC4C5  A9 00 00     MX
L_8AC4C8:
    STA $002118                     ; $8AC4C8  8F 18 21 00  MX
L_8AC4CC:
    INY                             ; $8AC4CC  C8           MX
L_8AC4CD:
    INY                             ; $8AC4CD  C8           MX
L_8AC4CE:
    CPY #$0040                      ; $8AC4CE  C0 40 00     MX
L_8AC4D1:
    BNE L_8AC4C8                    ; $8AC4D1  D0 F5        MX
L_8AC4D3:
    DEX                             ; $8AC4D3  CA           MX
L_8AC4D4:
    BNE L_8AC4C2                    ; $8AC4D4  D0 EC        MX
L_8AC4D6:
    PLB                             ; $8AC4D6  AB           MX
L_8AC4D7:
    LDA #$2ACE                      ; $8AC4D7  A9 CE 2A     MX
L_8AC4DA:
    STA $00D1                       ; $8AC4DA  8D D1 00     MX
L_8AC4DD:
    LDA #$CEBF                      ; $8AC4DD  A9 BF CE     MX
L_8AC4E0:
    STA $00D0                       ; $8AC4E0  8D D0 00     MX
L_8AC4E3:
    JSL $00E02F                     ; $8AC4E3  22 2F E0 00  MX
L_8AC4E7:
    SEP #$20                        ; $8AC4E7  E2 20        MX
L_8AC4E9:
    LDA #$FF                        ; $8AC4E9  A9 FF        mX
L_8AC4EB:
    STA $210E                       ; $8AC4EB  8D 0E 21     mX
L_8AC4EE:
    STA $210E                       ; $8AC4EE  8D 0E 21     mX
L_8AC4F1:
    LDA #$00                        ; $8AC4F1  A9 00        mX
L_8AC4F3:
    STA $210D                       ; $8AC4F3  8D 0D 21     mX
L_8AC4F6:
    STA $210D                       ; $8AC4F6  8D 0D 21     mX
L_8AC4F9:
    LDA #$FF                        ; $8AC4F9  A9 FF        mX
L_8AC4FB:
    STA $2110                       ; $8AC4FB  8D 10 21     mX
L_8AC4FE:
    STA $2110                       ; $8AC4FE  8D 10 21     mX
L_8AC501:
    LDA #$00                        ; $8AC501  A9 00        mX
L_8AC503:
    STA $210F                       ; $8AC503  8D 0F 21     mX
L_8AC506:
    STA $210F                       ; $8AC506  8D 0F 21     mX
L_8AC509:
    LDA #$13                        ; $8AC509  A9 13        mX
L_8AC50B:
    STA $212C                       ; $8AC50B  8D 2C 21     mX
L_8AC50E:
    LDA #$01                        ; $8AC50E  A9 01        mX
L_8AC510:
    STA $2105                       ; $8AC510  8D 05 21     mX
L_8AC513:
    LDA #$58                        ; $8AC513  A9 58        mX
L_8AC515:
    STA $2107                       ; $8AC515  8D 07 21     mX
L_8AC518:
    LDA #$5C                        ; $8AC518  A9 5C        mX
L_8AC51A:
    STA $2108                       ; $8AC51A  8D 08 21     mX
L_8AC51D:
    LDA #$02                        ; $8AC51D  A9 02        mX
L_8AC51F:
    STA $210B                       ; $8AC51F  8D 0B 21     mX
L_8AC522:
    LDA #$03                        ; $8AC522  A9 03        mX
L_8AC524:
    STA $2101                       ; $8AC524  8D 01 21     mX
L_8AC527:
    STZ $00B2                       ; $8AC527  9C B2 00     mX
L_8AC52A:
    REP #$20                        ; $8AC52A  C2 20        mX
L_8AC52C:
    LDX #$0100                      ; $8AC52C  A2 00 01     MX
L_8AC52F:
    LDA #$0000                      ; $8AC52F  A9 00 00     MX
L_8AC532:
    STA $7EC200,X                   ; $8AC532  9F 00 C2 7E  MX
L_8AC536:
    INX                             ; $8AC536  E8           MX
L_8AC537:
    INX                             ; $8AC537  E8           MX
L_8AC538:
    CPX #$0540                      ; $8AC538  E0 40 05     MX
L_8AC53B:
    BNE L_8AC532                    ; $8AC53B  D0 F5        MX
L_8AC53D:
    LDX #$0016                      ; $8AC53D  A2 16 00     MX
L_8AC540:
    LDA $0D9B32,X                   ; $8AC540  BF 32 9B 0D  MX
L_8AC544:
    STA $1D15,X                     ; $8AC544  9D 15 1D     MX
L_8AC547:
    DEX                             ; $8AC547  CA           MX
L_8AC548:
    DEX                             ; $8AC548  CA           MX
L_8AC549:
    BPL L_8AC540                    ; $8AC549  10 F5        MX
L_8AC54B:
    LDA $1C5D                       ; $8AC54B  AD 5D 1C     MX
L_8AC54E:
    BNE L_8AC568                    ; $8AC54E  D0 18        MX
L_8AC550:
    LDA $1D19                       ; $8AC550  AD 19 1D     MX
L_8AC553:
    STA $1D17                       ; $8AC553  8D 17 1D     MX
L_8AC556:
    LDA $1D21                       ; $8AC556  AD 21 1D     MX
L_8AC559:
    STA $1D1F                       ; $8AC559  8D 1F 1D     MX
L_8AC55C:
    LDX $1D27                       ; $8AC55C  AE 27 1D     MX
L_8AC55F:
    LDA $1D29                       ; $8AC55F  AD 29 1D     MX
L_8AC562:
    STA $1D27                       ; $8AC562  8D 27 1D     MX
L_8AC565:
    STX $1D29                       ; $8AC565  8E 29 1D     MX
L_8AC568:
    LDA $1CCF                       ; $8AC568  AD CF 1C     MX
L_8AC56B:
    BEQ L_8AC570                    ; $8AC56B  F0 03        MX
    JMP L_8AD511                    ; $8AC56D  4C 11 D5     MX
L_8AC570:
    LDA #$FF00                      ; $8AC570  A9 00 FF     MX
L_8AC573:
    STA $16BC                       ; $8AC573  8D BC 16     MX
L_8AC576:
    STA $16BE                       ; $8AC576  8D BE 16     MX
L_8AC579:
    STA $16C0                       ; $8AC579  8D C0 16     MX
L_8AC57C:
    STA $16C2                       ; $8AC57C  8D C2 16     MX
L_8AC57F:
    LDA #$FFFF                      ; $8AC57F  A9 FF FF     MX
L_8AC582:
    STA $16CC                       ; $8AC582  8D CC 16     MX  initial1
L_8AC585:
    STA $16D4                       ; $8AC585  8D D4 16     MX
L_8AC588:
    STA $16DC                       ; $8AC588  8D DC 16     MX
L_8AC58B:
    STA $16CE                       ; $8AC58B  8D CE 16     MX
L_8AC58E:
    STA $16D6                       ; $8AC58E  8D D6 16     MX
L_8AC591:
    STA $16DE                       ; $8AC591  8D DE 16     MX
L_8AC594:
    STA $16D0                       ; $8AC594  8D D0 16     MX
L_8AC597:
    STA $16D8                       ; $8AC597  8D D8 16     MX
L_8AC59A:
    STA $16E0                       ; $8AC59A  8D E0 16     MX
L_8AC59D:
    STA $16D2                       ; $8AC59D  8D D2 16     MX
L_8AC5A0:
    STA $16DA                       ; $8AC5A0  8D DA 16     MX
L_8AC5A3:
    STA $16E2                       ; $8AC5A3  8D E2 16     MX
L_8AC5A6:
    LDA #$0000                      ; $8AC5A6  A9 00 00     MX
L_8AC5A9:
    STA $172C                       ; $8AC5A9  8D 2C 17     MX
L_8AC5AC:
    STA $1C02                       ; $8AC5AC  8D 02 1C     MX
L_8AC5AF:
    STA $1698                       ; $8AC5AF  8D 98 16     MX
L_8AC5B2:
    LDA $1C5D                       ; $8AC5B2  AD 5D 1C     MX
L_8AC5B5:
    CMP #$0002                      ; $8AC5B5  C9 02 00     MX
L_8AC5B8:
    BCS L_8AC5DE                    ; $8AC5B8  B0 24        MX
L_8AC5BA:
    LDA #$0042                      ; $8AC5BA  A9 42 00     MX
L_8AC5BD:
    STA $16D0                       ; $8AC5BD  8D D0 16     MX
L_8AC5C0:
    STA $16D2                       ; $8AC5C0  8D D2 16     MX
L_8AC5C3:
    LDA #$004F                      ; $8AC5C3  A9 4F 00     MX
L_8AC5C6:
    STA $16D8                       ; $8AC5C6  8D D8 16     MX
L_8AC5C9:
    STA $16DA                       ; $8AC5C9  8D DA 16     MX
L_8AC5CC:
    LDA #$0054                      ; $8AC5CC  A9 54 00     MX
L_8AC5CF:
    STA $16E0                       ; $8AC5CF  8D E0 16     MX
L_8AC5D2:
    STA $16E2                       ; $8AC5D2  8D E2 16     MX
L_8AC5D5:
    LDA #$FF47                      ; $8AC5D5  A9 47 FF     MX
L_8AC5D8:
    STA $16C0                       ; $8AC5D8  8D C0 16     MX
L_8AC5DB:
    STA $16C2                       ; $8AC5DB  8D C2 16     MX
L_8AC5DE:
    JSR L_8AD7A5                    ; $8AC5DE  20 A5 D7     MX
L_8AC5E1:
    LDX #$FF01                      ; $8AC5E1  A2 01 FF     MX
L_8AC5E4:
    LDA $1690                       ; $8AC5E4  AD 90 16     MX
L_8AC5E7:
    BIT #$0001                      ; $8AC5E7  89 01 00     MX
L_8AC5EA:
    BEQ L_8AC5EF                    ; $8AC5EA  F0 03        MX
L_8AC5EC:
    STX $16BC                       ; $8AC5EC  8E BC 16     MX
L_8AC5EF:
    BIT #$0002                      ; $8AC5EF  89 02 00     MX
L_8AC5F2:
    BEQ L_8AC5F7                    ; $8AC5F2  F0 03        MX
    STX $16BE                       ; $8AC5F4  8E BE 16     MX
L_8AC5F7:
    BIT #$0004                      ; $8AC5F7  89 04 00     MX
L_8AC5FA:
    BEQ L_8AC5FF                    ; $8AC5FA  F0 03        MX
    STX $16C0                       ; $8AC5FC  8E C0 16     MX
L_8AC5FF:
    BIT #$0008                      ; $8AC5FF  89 08 00     MX
L_8AC602:
    BEQ L_8AC607                    ; $8AC602  F0 03        MX
    STX $16C2                       ; $8AC604  8E C2 16     MX
L_8AC607:
    LDA #$0014                      ; $8AC607  A9 14 00     MX
L_8AC60A:
    STA $001665                     ; $8AC60A  8F 65 16 00  MX
L_8AC60E:
    RTS                             ; $8AC60E  60           MX
L_8AC60F:
    SEP #$20                        ; $8AC60F  E2 20        MX
L_8AC611:
    LDA $00B2                       ; $8AC611  AD B2 00     mX
L_8AC614:
    CMP #$10                        ; $8AC614  C9 10        mX
L_8AC616:
    BEQ L_8AC61E                    ; $8AC616  F0 06        mX
L_8AC618:
    STA $2100                       ; $8AC618  8D 00 21     mX
L_8AC61B:
    INC $00B2                       ; $8AC61B  EE B2 00     mX
L_8AC61E:
    REP #$20                        ; $8AC61E  C2 20        mX
L_8AC620:
    STZ $0CFF                       ; $8AC620  9C FF 0C     MX
L_8AC623:
    JSR L_8AC64F                    ; $8AC623  20 4F C6     MX
L_8AC626:
    JSR L_8AD21A                    ; $8AC626  20 1A D2     MX
L_8AC629:
    RTS                             ; $8AC629  60           MX
L_8AC62A:
    SEP #$20                        ; $8AC62A  E2 20        MX
L_8AC62C:
    DEC $00B2                       ; $8AC62C  CE B2 00     mX
L_8AC62F:
    LDA $00B2                       ; $8AC62F  AD B2 00     mX
L_8AC632:
    CMP #$FF                        ; $8AC632  C9 FF        mX
L_8AC634:
    BNE L_8AC646                    ; $8AC634  D0 10        mX
L_8AC636:
    REP #$20                        ; $8AC636  C2 20        mX
L_8AC638:
    JSR L_8AD4A5                    ; $8AC638  20 A5 D4     MX
L_8AC63B:
    LDA #$0003                      ; $8AC63B  A9 03 00     MX
L_8AC63E:
    STA $001665                     ; $8AC63E  8F 65 16 00  MX
L_8AC642:
    SEP #$20                        ; $8AC642  E2 20        MX
L_8AC644:
    LDA #$00                        ; $8AC644  A9 00        mX
L_8AC646:
    STA $2100                       ; $8AC646  8D 00 21     mX
L_8AC649:
    REP #$20                        ; $8AC649  C2 20        mX
L_8AC64B:
    JSR L_8AC64F                    ; $8AC64B  20 4F C6     MX
L_8AC64E:
    RTS                             ; $8AC64E  60           MX
L_8AC64F:
    LDX #$0000                      ; $8AC64F  A2 00 00     MX
L_8AC652:
    JSR L_8AC6C7                    ; $8AC652  20 C7 C6     MX
L_8AC655:
    LDX #$0002                      ; $8AC655  A2 02 00     MX
L_8AC658:
    JSR L_8AC6C7                    ; $8AC658  20 C7 C6     MX
L_8AC65B:
    LDX #$0004                      ; $8AC65B  A2 04 00     MX
L_8AC65E:
    JSR L_8AC6C7                    ; $8AC65E  20 C7 C6     MX
L_8AC661:
    LDX #$0006                      ; $8AC661  A2 06 00     MX
L_8AC664:
    JSR L_8AC6C7                    ; $8AC664  20 C7 C6     MX
L_8AC667:
    LDA $16BC                       ; $8AC667  AD BC 16     MX
L_8AC66A:
    AND #$001F                      ; $8AC66A  29 1F 00     MX
L_8AC66D:
    CMP #$0007                      ; $8AC66D  C9 07 00     MX
L_8AC670:
    BNE L_8AC675                    ; $8AC670  D0 03        MX
L_8AC672:
    LDA #$0000                      ; $8AC672  A9 00 00     MX
L_8AC675:
    STA $00A4                       ; $8AC675  8D A4 00     MX
L_8AC678:
    LDA $16BE                       ; $8AC678  AD BE 16     MX
L_8AC67B:
    AND #$001F                      ; $8AC67B  29 1F 00     MX
L_8AC67E:
    CMP #$0007                      ; $8AC67E  C9 07 00     MX
L_8AC681:
    BNE L_8AC686                    ; $8AC681  D0 03        MX
    LDA #$0000                      ; $8AC683  A9 00 00     MX
L_8AC686:
    TSB $00A4                       ; $8AC686  0C A4 00     MX
L_8AC689:
    LDA $16C0                       ; $8AC689  AD C0 16     MX
L_8AC68C:
    AND #$001F                      ; $8AC68C  29 1F 00     MX
L_8AC68F:
    CMP #$0007                      ; $8AC68F  C9 07 00     MX
L_8AC692:
    BNE L_8AC697                    ; $8AC692  D0 03        MX
L_8AC694:
    LDA #$0000                      ; $8AC694  A9 00 00     MX
L_8AC697:
    TSB $00A4                       ; $8AC697  0C A4 00     MX
L_8AC69A:
    LDA $16C2                       ; $8AC69A  AD C2 16     MX
L_8AC69D:
    AND #$001F                      ; $8AC69D  29 1F 00     MX
L_8AC6A0:
    CMP #$0007                      ; $8AC6A0  C9 07 00     MX
L_8AC6A3:
    BNE L_8AC6A8                    ; $8AC6A3  D0 03        MX
L_8AC6A5:
    LDA #$0000                      ; $8AC6A5  A9 00 00     MX
L_8AC6A8:
    TSB $00A4                       ; $8AC6A8  0C A4 00     MX
L_8AC6AB:
    LDA $00A4                       ; $8AC6AB  AD A4 00     MX
L_8AC6AE:
    BEQ L_8AC6B4                    ; $8AC6AE  F0 04        MX
L_8AC6B0:
    STZ $1698                       ; $8AC6B0  9C 98 16     MX
L_8AC6B3:
    RTS                             ; $8AC6B3  60           MX
L_8AC6B4:
    INC $1698                       ; $8AC6B4  EE 98 16     MX
L_8AC6B7:
    LDA $1698                       ; $8AC6B7  AD 98 16     MX
L_8AC6BA:
    CMP #$0096                      ; $8AC6BA  C9 96 00     MX
L_8AC6BD:
    BNE L_8AC6B3                    ; $8AC6BD  D0 F4        MX
L_8AC6BF:
    LDA #$0015                      ; $8AC6BF  A9 15 00     MX
L_8AC6C2:
    STA $001665                     ; $8AC6C2  8F 65 16 00  MX
L_8AC6C6:
    RTS                             ; $8AC6C6  60           MX
L_8AC6C7:
    LDA $16BC,X                     ; $8AC6C7  BD BC 16     MX
L_8AC6CA:
    CLC                             ; $8AC6CA  18           MX
L_8AC6CB:
    ADC #$0100                      ; $8AC6CB  69 00 01     MX
L_8AC6CE:
    STA $16BC,X                     ; $8AC6CE  9D BC 16     MX
L_8AC6D1:
    AND #$00FF                      ; $8AC6D1  29 FF 00     MX
L_8AC6D4:
    BEQ L_8AC6D9                    ; $8AC6D4  F0 03        MX
L_8AC6D6:
    JMP L_8AC76D                    ; $8AC6D6  4C 6D C7     MX
L_8AC6D9:
    LDA $1669,X                     ; $8AC6D9  BD 69 16     MX
L_8AC6DC:
    BIT #$1000                      ; $8AC6DC  89 00 10     MX
L_8AC6DF:
    BEQ L_8AC6FA                    ; $8AC6DF  F0 19        MX
    LDA $16BC,X                     ; $8AC6E1  BD BC 16     MX
    AND #$FF00                      ; $8AC6E4  29 00 FF     MX
    ORA #$0001                      ; $8AC6E7  09 01 00     MX
    STA $16BC,X                     ; $8AC6EA  9D BC 16     MX
    PHA                             ; $8AC6ED  48           MX
    PHX                             ; $8AC6EE  DA           MX
    PHY                             ; $8AC6EF  5A           MX
    LDA #$0040                      ; $8AC6F0  A9 40 00     MX
    JSL L_BDFE18                    ; $8AC6F3  22 18 FE BD  MX
    PLY                             ; $8AC6F7  7A           MX
    PLX                             ; $8AC6F8  FA           MX
    PLA                             ; $8AC6F9  68           MX
L_8AC6FA:
    LDA $001D1D,X                   ; $8AC6FA  BF 1D 1D 00  MX
L_8AC6FE:
    CLC                             ; $8AC6FE  18           MX
L_8AC6FF:
    ADC #$0002                      ; $8AC6FF  69 02 00     MX
L_8AC702:
    STA $0024                       ; $8AC702  8D 24 00     MX
L_8AC705:
    LDA #$0049                      ; $8AC705  A9 49 00     MX
L_8AC708:
    STA $0026                       ; $8AC708  8D 26 00     MX
L_8AC70B:
    LDA #$0000                      ; $8AC70B  A9 00 00     MX
L_8AC70E:
    STA $002C                       ; $8AC70E  8D 2C 00     MX
L_8AC711:
    LDA $16BC,X                     ; $8AC711  BD BC 16     MX
L_8AC714:
    AND #$4000                      ; $8AC714  29 00 40     MX
L_8AC717:
    BEQ L_8AC734                    ; $8AC717  F0 1B        MX
L_8AC719:
    LDA #$CF20                      ; $8AC719  A9 20 CF     MX
L_8AC71C:
    STA $0020                       ; $8AC71C  8D 20 00     MX
L_8AC71F:
    SEP #$20                        ; $8AC71F  E2 20        MX
L_8AC721:
    LDA #$0E                        ; $8AC721  A9 0E        mX
L_8AC723:
    STA $0022                       ; $8AC723  8D 22 00     mX
L_8AC726:
    LDA #$2C                        ; $8AC726  A9 2C        mX
L_8AC728:
    STA $0028                       ; $8AC728  8D 28 00     mX
L_8AC72B:
    REP #$20                        ; $8AC72B  C2 20        mX
L_8AC72D:
    PHX                             ; $8AC72D  DA           MX
L_8AC72E:
    JSL $2BE2EA                     ; $8AC72E  22 EA E2 2B  MX
L_8AC732:
    PLX                             ; $8AC732  FA           MX
L_8AC733:
    RTS                             ; $8AC733  60           MX
L_8AC734:
    PHX                             ; $8AC734  DA           MX
L_8AC735:
    LDA $1C5D                       ; $8AC735  AD 5D 1C     MX
L_8AC738:
    BEQ L_8AC752                    ; $8AC738  F0 18        MX
    TXA                             ; $8AC73A  8A           MX
    EOR #$0002                      ; $8AC73B  49 02 00     MX
    TAX                             ; $8AC73E  AA           MX
    LDA $16BC,X                     ; $8AC73F  BD BC 16     MX
    AND #$00FF                      ; $8AC742  29 FF 00     MX
    BEQ L_8AC752                    ; $8AC745  F0 0B        MX
    LDA #$8000                      ; $8AC747  A9 00 80     MX
    STA $0020                       ; $8AC74A  8D 20 00     MX
    LDA #$000F                      ; $8AC74D  A9 0F 00     MX
    BRA L_8AC75B                    ; $8AC750  80 09        MX
L_8AC752:
    LDA #$CBCD                      ; $8AC752  A9 CD CB     MX
L_8AC755:
    STA $0020                       ; $8AC755  8D 20 00     MX
L_8AC758:
    LDA #$000E                      ; $8AC758  A9 0E 00     MX
L_8AC75B:
    SEP #$20                        ; $8AC75B  E2 20        MX
L_8AC75D:
    STA $0022                       ; $8AC75D  8D 22 00     mX
L_8AC760:
    LDA #$2C                        ; $8AC760  A9 2C        mX
L_8AC762:
    STA $0028                       ; $8AC762  8D 28 00     mX
L_8AC765:
    REP #$20                        ; $8AC765  C2 20        mX
L_8AC767:
    JSL $2BE2EA                     ; $8AC767  22 EA E2 2B  MX
L_8AC76B:
    PLX                             ; $8AC76B  FA           MX
L_8AC76C:
    RTS                             ; $8AC76C  60           MX
L_8AC76D:
    CMP #$0001                      ; $8AC76D  C9 01 00     MX
L_8AC770:
    BNE L_8AC7C6                    ; $8AC770  D0 54        MX
L_8AC772:
    LDA $001D1D,X                   ; $8AC772  BF 1D 1D 00  MX
L_8AC776:
    DEC                             ; $8AC776  3A           MX
L_8AC777:
    STA $0024                       ; $8AC777  8D 24 00     MX
L_8AC77A:
    LDA #$0008                      ; $8AC77A  A9 08 00     MX
L_8AC77D:
    STA $0026                       ; $8AC77D  8D 26 00     MX
L_8AC780:
    LDA #$0000                      ; $8AC780  A9 00 00     MX
L_8AC783:
    STA $002C                       ; $8AC783  8D 2C 00     MX
L_8AC786:
    LDA #$D086                      ; $8AC786  A9 86 D0     MX
L_8AC789:
    STA $0020                       ; $8AC789  8D 20 00     MX
L_8AC78C:
    SEP #$20                        ; $8AC78C  E2 20        MX
L_8AC78E:
    LDA #$0E                        ; $8AC78E  A9 0E        mX
L_8AC790:
    STA $0022                       ; $8AC790  8D 22 00     mX
L_8AC793:
    LDA #$2C                        ; $8AC793  A9 2C        mX
L_8AC795:
    STA $0028                       ; $8AC795  8D 28 00     mX
L_8AC798:
    REP #$20                        ; $8AC798  C2 20        mX
L_8AC79A:
    PHX                             ; $8AC79A  DA           MX
L_8AC79B:
    JSL $2BE2EA                     ; $8AC79B  22 EA E2 2B  MX
L_8AC79F:
    PLX                             ; $8AC79F  FA           MX
L_8AC7A0:
    LDA $001D15,X                   ; $8AC7A0  BF 15 1D 00  MX
L_8AC7A4:
    PHX                             ; $8AC7A4  DA           MX
L_8AC7A5:
    TAX                             ; $8AC7A5  AA           MX
L_8AC7A6:
    JSR L_8ACDF2                    ; $8AC7A6  20 F2 CD     MX
L_8AC7A9:
    LDA #$0001                      ; $8AC7A9  A9 01 00     MX
L_8AC7AC:
    STA $172C                       ; $8AC7AC  8D 2C 17     MX
L_8AC7AF:
    PLX                             ; $8AC7AF  FA           MX
L_8AC7B0:
    LDA $16BC,X                     ; $8AC7B0  BD BC 16     MX
L_8AC7B3:
    AND #$FF00                      ; $8AC7B3  29 00 FF     MX
L_8AC7B6:
    ORA #$0002                      ; $8AC7B6  09 02 00     MX
L_8AC7B9:
    STA $16BC,X                     ; $8AC7B9  9D BC 16     MX
L_8AC7BC:
    LDA #$0000                      ; $8AC7BC  A9 00 00     MX
L_8AC7BF:
    STA $16C4,X                     ; $8AC7BF  9D C4 16     MX  grid_cursor
L_8AC7C2:
    STA $16E4,X                     ; $8AC7C2  9D E4 16     MX  password_count
L_8AC7C5:
    RTS                             ; $8AC7C5  60           MX
L_8AC7C6:
    CMP #$0002                      ; $8AC7C6  C9 02 00     MX
L_8AC7C9:
    BEQ L_8AC7CE                    ; $8AC7C9  F0 03        MX
L_8AC7CB:
    JMP L_8AC8D7                    ; $8AC7CB  4C D7 C8     MX
L_8AC7CE:
    LDA $001D1D,X                   ; $8AC7CE  BF 1D 1D 00  MX
L_8AC7D2:
    DEC                             ; $8AC7D2  3A           MX
L_8AC7D3:
    STA $0024                       ; $8AC7D3  8D 24 00     MX
L_8AC7D6:
    LDA #$0008                      ; $8AC7D6  A9 08 00     MX
L_8AC7D9:
    STA $0026                       ; $8AC7D9  8D 26 00     MX
L_8AC7DC:
    LDA #$0000                      ; $8AC7DC  A9 00 00     MX
L_8AC7DF:
    STA $002C                       ; $8AC7DF  8D 2C 00     MX
L_8AC7E2:
    LDA #$D086                      ; $8AC7E2  A9 86 D0     MX
L_8AC7E5:
    STA $0020                       ; $8AC7E5  8D 20 00     MX
L_8AC7E8:
    SEP #$20                        ; $8AC7E8  E2 20        MX
L_8AC7EA:
    LDA #$0E                        ; $8AC7EA  A9 0E        mX
L_8AC7EC:
    STA $0022                       ; $8AC7EC  8D 22 00     mX
L_8AC7EF:
    LDA #$2C                        ; $8AC7EF  A9 2C        mX
L_8AC7F1:
    STA $0028                       ; $8AC7F1  8D 28 00     mX
L_8AC7F4:
    REP #$20                        ; $8AC7F4  C2 20        mX
L_8AC7F6:
    PHX                             ; $8AC7F6  DA           MX
L_8AC7F7:
    JSL $2BE2EA                     ; $8AC7F7  22 EA E2 2B  MX
L_8AC7FB:
    PLX                             ; $8AC7FB  FA           MX
L_8AC7FC:
    JSR L_8ACE72                    ; $8AC7FC  20 72 CE     MX
L_8AC7FF:
    LDA $16BC,X                     ; $8AC7FF  BD BC 16     MX
L_8AC802:
    AND #$1000                      ; $8AC802  29 00 10     MX
L_8AC805:
    BNE L_8AC849                    ; $8AC805  D0 42        MX
L_8AC807:
    LDA $001D1D,X                   ; $8AC807  BF 1D 1D 00  MX
L_8AC80B:
    STA $00A4                       ; $8AC80B  8D A4 00     MX
L_8AC80E:
    LDA $16C4,X                     ; $8AC80E  BD C4 16     MX  grid_cursor
L_8AC811:
    PHX                             ; $8AC811  DA           MX
L_8AC812:
    ASL                             ; $8AC812  0A           MX
L_8AC813:
    TAX                             ; $8AC813  AA           MX
L_8AC814:
    LDA $0AD2C7,X                   ; $8AC814  BF C7 D2 0A  MX
L_8AC818:
    CLC                             ; $8AC818  18           MX
L_8AC819:
    ADC $00A4                       ; $8AC819  6D A4 00     MX
L_8AC81C:
    STA $0024                       ; $8AC81C  8D 24 00     MX
L_8AC81F:
    LDA $0AD28F,X                   ; $8AC81F  BF 8F D2 0A  MX
L_8AC823:
    SEC                             ; $8AC823  38           MX
L_8AC824:
    SBC #$0015                      ; $8AC824  E9 15 00     MX
L_8AC827:
    STA $0026                       ; $8AC827  8D 26 00     MX
L_8AC82A:
    LDA #$0000                      ; $8AC82A  A9 00 00     MX
L_8AC82D:
    STA $002C                       ; $8AC82D  8D 2C 00     MX
L_8AC830:
    LDA #$CAF0                      ; $8AC830  A9 F0 CA     MX
L_8AC833:
    STA $0020                       ; $8AC833  8D 20 00     MX
L_8AC836:
    SEP #$20                        ; $8AC836  E2 20        MX
L_8AC838:
    LDA #$0E                        ; $8AC838  A9 0E        mX
L_8AC83A:
    STA $0022                       ; $8AC83A  8D 22 00     mX
L_8AC83D:
    LDA #$2C                        ; $8AC83D  A9 2C        mX
L_8AC83F:
    STA $0028                       ; $8AC83F  8D 28 00     mX
L_8AC842:
    REP #$20                        ; $8AC842  C2 20        mX
L_8AC844:
    JSL $2BE2EA                     ; $8AC844  22 EA E2 2B  MX
L_8AC848:
    PLX                             ; $8AC848  FA           MX
L_8AC849:
    JSR L_8AD2FF                    ; $8AC849  20 FF D2     MX
L_8AC84C:
    STX $00A6                       ; $8AC84C  8E A6 00     MX
L_8AC84F:
    LDA $16E4,X                     ; $8AC84F  BD E4 16     MX  password_count
L_8AC852:
    CLC                             ; $8AC852  18           MX
L_8AC853:
    ADC $00A6                       ; $8AC853  6D A6 00     MX
L_8AC856:
    TAY                             ; $8AC856  A8           MX
L_8AC857:
    LDA $00A4                       ; $8AC857  AD A4 00     MX
L_8AC85A:
    STA $16CC,Y                     ; $8AC85A  99 CC 16     MX  initial1
L_8AC85D:
    LDX $00A6                       ; $8AC85D  AE A6 00     MX
L_8AC860:
    LDA $1669,X                     ; $8AC860  BD 69 16     MX
L_8AC863:
    BIT #$C0C0                      ; $8AC863  89 C0 C0     MX
L_8AC866:
    BEQ L_8AC8D6                    ; $8AC866  F0 6E        MX
L_8AC868:
    PHA                             ; $8AC868  48           MX
L_8AC869:
    PHX                             ; $8AC869  DA           MX
L_8AC86A:
    PHY                             ; $8AC86A  5A           MX
L_8AC86B:
    LDA #$0042                      ; $8AC86B  A9 42 00     MX
L_8AC86E:
    JSL L_BDFE18                    ; $8AC86E  22 18 FE BD  MX
L_8AC872:
    PLY                             ; $8AC872  7A           MX
L_8AC873:
    PLX                             ; $8AC873  FA           MX
L_8AC874:
    PLA                             ; $8AC874  68           MX
L_8AC875:
    LDA $00A4                       ; $8AC875  AD A4 00     MX
L_8AC878:
    BPL L_8AC888                    ; $8AC878  10 0E        MX
    LDA $16E4,X                     ; $8AC87A  BD E4 16     MX  password_count
    SEC                             ; $8AC87D  38           MX
    SBC #$0008                      ; $8AC87E  E9 08 00     MX
    BMI L_8AC8D6                    ; $8AC881  30 53        MX
    STA $16E4,X                     ; $8AC883  9D E4 16     MX  password_count
    BRA L_8AC8D6                    ; $8AC886  80 4E        MX
L_8AC888:
    LDA $16CC,X                     ; $8AC888  BD CC 16     MX  initial1
L_8AC88B:
    AND #$0007                      ; $8AC88B  29 07 00     MX
L_8AC88E:
    ASL                             ; $8AC88E  0A           MX
L_8AC88F:
    PHX                             ; $8AC88F  DA           MX
L_8AC890:
    TAX                             ; $8AC890  AA           MX
L_8AC891:
    LDA $2AF84C,X                   ; $8AC891  BF 4C F8 2A  MX
L_8AC895:
    STA $1D3B                       ; $8AC895  8D 3B 1D     MX
L_8AC898:
    PLX                             ; $8AC898  FA           MX
L_8AC899:
    LDA $0008,X                     ; $8AC899  BD 08 00     MX
L_8AC89C:
    AND $1D3B                       ; $8AC89C  2D 3B 1D     MX
L_8AC89F:
    CMP $1D3B                       ; $8AC89F  CD 3B 1D     MX
L_8AC8A2:
    BNE L_8AC8BB                    ; $8AC8A2  D0 17        MX
    STX $00A6                       ; $8AC8A4  8E A6 00     MX
    LDA $16E4,X                     ; $8AC8A7  BD E4 16     MX  password_count
    CLC                             ; $8AC8AA  18           MX
    ADC $00A6                       ; $8AC8AB  6D A6 00     MX
    TAY                             ; $8AC8AE  A8           MX
    LDA $16CC,Y                     ; $8AC8AF  B9 CC 16     MX  initial1
    ORA #$0080                      ; $8AC8B2  09 80 00     MX
    STA $16CC,Y                     ; $8AC8B5  99 CC 16     MX  initial1
    LDX $00A6                       ; $8AC8B8  AE A6 00     MX
L_8AC8BB:
    LDA $16E4,X                     ; $8AC8BB  BD E4 16     MX  password_count
L_8AC8BE:
    CLC                             ; $8AC8BE  18           MX
L_8AC8BF:
    ADC #$0008                      ; $8AC8BF  69 08 00     MX
L_8AC8C2:
    STA $16E4,X                     ; $8AC8C2  9D E4 16     MX  password_count
L_8AC8C5:
    CMP #$0018                      ; $8AC8C5  C9 18 00     MX
L_8AC8C8:
    BNE L_8AC8D6                    ; $8AC8C8  D0 0C        MX
L_8AC8CA:
    LDA $16BC,X                     ; $8AC8CA  BD BC 16     MX
L_8AC8CD:
    AND #$FF00                      ; $8AC8CD  29 00 FF     MX
L_8AC8D0:
    ORA #$0003                      ; $8AC8D0  09 03 00     MX
L_8AC8D3:
    STA $16BC,X                     ; $8AC8D3  9D BC 16     MX
L_8AC8D6:
    RTS                             ; $8AC8D6  60           MX
L_8AC8D7:
    CMP #$0003                      ; $8AC8D7  C9 03 00     MX
L_8AC8DA:
    BEQ L_8AC8DF                    ; $8AC8DA  F0 03        MX
L_8AC8DC:
    JMP L_8AC95D                    ; $8AC8DC  4C 5D C9     MX
L_8AC8DF:
    JSR L_8ACE72                    ; $8AC8DF  20 72 CE     MX
L_8AC8E2:
    SEP #$20                        ; $8AC8E2  E2 20        MX
L_8AC8E4:
    LDA $16CC,X                     ; $8AC8E4  BD CC 16     mX  initial1
L_8AC8E7:
    STA $00A4                       ; $8AC8E7  8D A4 00     mX
L_8AC8EA:
    LDA $16D4,X                     ; $8AC8EA  BD D4 16     mX
L_8AC8ED:
    STA $00A5                       ; $8AC8ED  8D A5 00     mX
L_8AC8F0:
    LDA $16DC,X                     ; $8AC8F0  BD DC 16     mX
L_8AC8F3:
    STA $00A6                       ; $8AC8F3  8D A6 00     mX
L_8AC8F6:
    LDA #$00                        ; $8AC8F6  A9 00        mX
L_8AC8F8:
    STA $00A7                       ; $8AC8F8  8D A7 00     mX
L_8AC8FB:
    REP #$20                        ; $8AC8FB  C2 20        mX
L_8AC8FD:
    PHX                             ; $8AC8FD  DA           MX
L_8AC8FE:
    JSR find_record                 ; $8AC8FE  20 FF D6     MX
L_8AC901:
    PLX                             ; $8AC901  FA           MX
L_8AC902:
    BCC L_8AC92F                    ; $8AC902  90 2B        MX
L_8AC904:
    PHX                             ; $8AC904  DA           MX
L_8AC905:
    JSR new_record                  ; $8AC905  20 22 D7     MX
L_8AC908:
    BCS L_8AC924                    ; $8AC908  B0 1A        MX
L_8AC90A:
    SEP #$20                        ; $8AC90A  E2 20        MX
L_8AC90C:
    LDA #$FF                        ; $8AC90C  A9 FF        mX
L_8AC90E:
    STA $1731,X                     ; $8AC90E  9D 31 17     mX
L_8AC911:
    REP #$20                        ; $8AC911  C2 20        mX
L_8AC913:
    PHX                             ; $8AC913  DA           MX
L_8AC914:
    JSR rank_records                ; $8AC914  20 26 D8     MX
L_8AC917:
    PLX                             ; $8AC917  FA           MX
L_8AC918:
    TXA                             ; $8AC918  8A           MX
L_8AC919:
    PLX                             ; $8AC919  FA           MX
L_8AC91A:
    STA $1724,X                     ; $8AC91A  9D 24 17     MX  player_record
L_8AC91D:
    LDA #$FF0A                      ; $8AC91D  A9 0A FF     MX
L_8AC920:
    STA $16BC,X                     ; $8AC920  9D BC 16     MX
L_8AC923:
    RTS                             ; $8AC923  60           MX
L_8AC924:
    PLX                             ; $8AC924  FA           MX
    LDA #$FF04                      ; $8AC925  A9 04 FF     MX
    STA $1724,X                     ; $8AC928  9D 24 17     MX  player_record
    STA $16BC,X                     ; $8AC92B  9D BC 16     MX
    RTS                             ; $8AC92E  60           MX
L_8AC92F:
    STA $1724,X                     ; $8AC92F  9D 24 17     MX  player_record
    CMP #$002C                      ; $8AC932  C9 2C 00     MX
    BCS L_8AC942                    ; $8AC935  B0 0B        MX
    LDA $00A6                       ; $8AC937  AD A6 00     MX
    AND #$001F                      ; $8AC93A  29 1F 00     MX
    STA $00A6                       ; $8AC93D  8D A6 00     MX
    BRA L_8AC904                    ; $8AC940  80 C2        MX
L_8AC942:
    PHX                             ; $8AC942  DA           MX
    TAX                             ; $8AC943  AA           MX
    SEP #$20                        ; $8AC944  E2 20        MX
    LDA $00188E,X                   ; $8AC946  BF 8E 18 00  mX  record_wins
    ORA $00188F,X                   ; $8AC94A  1F 8F 18 00  mX  record_losses
    REP #$20                        ; $8AC94E  C2 20        mX
    AND #$00FF                      ; $8AC950  29 FF 00     MX
    BEQ L_8AC924                    ; $8AC953  F0 CF        MX
    PLX                             ; $8AC955  FA           MX
    LDA #$FF05                      ; $8AC956  A9 05 FF     MX
    STA $16BC,X                     ; $8AC959  9D BC 16     MX
    RTS                             ; $8AC95C  60           MX
L_8AC95D:
    CMP #$0004                      ; $8AC95D  C9 04 00     MX
L_8AC960:
    BEQ L_8AC965                    ; $8AC960  F0 03        MX
L_8AC962:
    JMP L_8AC9E0                    ; $8AC962  4C E0 C9     MX
L_8AC965:
    JSR L_8ACE72                    ; $8AC965  20 72 CE     MX
L_8AC968:
    LDA $001D1D,X                   ; $8AC968  BF 1D 1D 00  MX
L_8AC96C:
    DEC                             ; $8AC96C  3A           MX
L_8AC96D:
    STA $0024                       ; $8AC96D  8D 24 00     MX
L_8AC970:
    LDA #$0008                      ; $8AC970  A9 08 00     MX
L_8AC973:
    STA $0026                       ; $8AC973  8D 26 00     MX
L_8AC976:
    LDA #$0000                      ; $8AC976  A9 00 00     MX
L_8AC979:
    STA $002C                       ; $8AC979  8D 2C 00     MX
L_8AC97C:
    LDA #$D2AC                      ; $8AC97C  A9 AC D2     MX
L_8AC97F:
    STA $0020                       ; $8AC97F  8D 20 00     MX
L_8AC982:
    SEP #$20                        ; $8AC982  E2 20        MX
L_8AC984:
    LDA #$0E                        ; $8AC984  A9 0E        mX
L_8AC986:
    STA $0022                       ; $8AC986  8D 22 00     mX
L_8AC989:
    LDA #$2C                        ; $8AC989  A9 2C        mX
L_8AC98B:
    STA $0028                       ; $8AC98B  8D 28 00     mX
L_8AC98E:
    REP #$20                        ; $8AC98E  C2 20        mX
L_8AC990:
    PHX                             ; $8AC990  DA           MX
L_8AC991:
    JSL $2BE2EA                     ; $8AC991  22 EA E2 2B  MX
L_8AC995:
    PLX                             ; $8AC995  FA           MX
L_8AC996:
    LDA $16BC,X                     ; $8AC996  BD BC 16     MX
L_8AC999:
    AND #$FF00                      ; $8AC999  29 00 FF     MX
L_8AC99C:
    BNE L_8AC9B2                    ; $8AC99C  D0 14        MX
L_8AC99E:
    LDA $0BFFAB,X                   ; $8AC99E  BF AB FF 0B  MX
L_8AC9A2:
    JSR L_8ACF69                    ; $8AC9A2  20 69 CF     MX
L_8AC9A5:
    LDA #$D02A                      ; $8AC9A5  A9 2A D0     MX
L_8AC9A8:
    LDX #$0002                      ; $8AC9A8  A2 02 00     MX
L_8AC9AB:
    LDY #$0006                      ; $8AC9AB  A0 06 00     MX
L_8AC9AE:
    JSR L_8ACFBD                    ; $8AC9AE  20 BD CF     MX
L_8AC9B1:
    RTS                             ; $8AC9B1  60           MX
L_8AC9B2:
    CMP #$0100                      ; $8AC9B2  C9 00 01     MX
L_8AC9B5:
    BNE L_8AC9CF                    ; $8AC9B5  D0 18        MX
L_8AC9B7:
    LDA $0D9BF7,X                   ; $8AC9B7  BF F7 9B 0D  MX
L_8AC9BB:
    STA $00A4                       ; $8AC9BB  8D A4 00     MX
L_8AC9BE:
    LDA $001D15,X                   ; $8AC9BE  BF 15 1D 00  MX
L_8AC9C2:
    PHX                             ; $8AC9C2  DA           MX
L_8AC9C3:
    TAX                             ; $8AC9C3  AA           MX
L_8AC9C4:
    JSR L_8ACF7F                    ; $8AC9C4  20 7F CF     MX
L_8AC9C7:
    LDA #$0001                      ; $8AC9C7  A9 01 00     MX
L_8AC9CA:
    STA $172C                       ; $8AC9CA  8D 2C 17     MX
L_8AC9CD:
    PLX                             ; $8AC9CD  FA           MX
L_8AC9CE:
    RTS                             ; $8AC9CE  60           MX
L_8AC9CF:
    LDA $0BFFB3,X                   ; $8AC9CF  BF B3 FF 0B  MX
L_8AC9D3:
    ORA $1C02                       ; $8AC9D3  0D 02 1C     MX
L_8AC9D6:
    STA $1C02                       ; $8AC9D6  8D 02 1C     MX
L_8AC9D9:
    LDA #$FF07                      ; $8AC9D9  A9 07 FF     MX
L_8AC9DC:
    STA $16BC,X                     ; $8AC9DC  9D BC 16     MX
L_8AC9DF:
    RTS                             ; $8AC9DF  60           MX
L_8AC9E0:
    CMP #$0005                      ; $8AC9E0  C9 05 00     MX
L_8AC9E3:
    BEQ L_8AC9E8                    ; $8AC9E3  F0 03        MX
L_8AC9E5:
    JMP L_8ACC03                    ; $8AC9E5  4C 03 CC     MX
L_8AC9E8:
    LDA $001D1D,X                   ; $8AC9E8  BF 1D 1D 00  MX
    DEC                             ; $8AC9EC  3A           MX
    STA $0024                       ; $8AC9ED  8D 24 00     MX
    LDA #$0008                      ; $8AC9F0  A9 08 00     MX
    STA $0026                       ; $8AC9F3  8D 26 00     MX
    LDA #$0000                      ; $8AC9F6  A9 00 00     MX
    STA $002C                       ; $8AC9F9  8D 2C 00     MX
    LDA #$D2AC                      ; $8AC9FC  A9 AC D2     MX
    STA $0020                       ; $8AC9FF  8D 20 00     MX
    SEP #$20                        ; $8ACA02  E2 20        MX
    LDA #$0E                        ; $8ACA04  A9 0E        mX
    STA $0022                       ; $8ACA06  8D 22 00     mX
    LDA #$2C                        ; $8ACA09  A9 2C        mX
    STA $0028                       ; $8ACA0B  8D 28 00     mX
    REP #$20                        ; $8ACA0E  C2 20        mX
    PHX                             ; $8ACA10  DA           MX
    JSL $2BE2EA                     ; $8ACA11  22 EA E2 2B  MX
    PLX                             ; $8ACA15  FA           MX
    JSR L_8ACE72                    ; $8ACA16  20 72 CE     MX
    LDA $16BC,X                     ; $8ACA19  BD BC 16     MX
    AND #$FF00                      ; $8ACA1C  29 00 FF     MX
    BEQ L_8ACA24                    ; $8ACA1F  F0 03        MX
    JMP L_8ACA36                    ; $8ACA21  4C 36 CA     MX
L_8ACA24:
    JSR L_8AD392                    ; $8ACA24  20 92 D3     MX
    PHX                             ; $8ACA27  DA           MX
    LDX #$0000                      ; $8ACA28  A2 00 00     MX
    LDY #$000F                      ; $8ACA2B  A0 0F 00     MX
    LDA #$D09E                      ; $8ACA2E  A9 9E D0     MX
    JSR L_8ACFBD                    ; $8ACA31  20 BD CF     MX
    PLX                             ; $8ACA34  FA           MX
    RTS                             ; $8ACA35  60           MX
L_8ACA36:
    CMP #$0100                      ; $8ACA36  C9 00 01     MX
    BNE L_8ACA53                    ; $8ACA39  D0 18        MX
    LDA $0D9BF7,X                   ; $8ACA3B  BF F7 9B 0D  MX
    STA $00A4                       ; $8ACA3F  8D A4 00     MX
    LDA $001D15,X                   ; $8ACA42  BF 15 1D 00  MX
    PHX                             ; $8ACA46  DA           MX
    TAX                             ; $8ACA47  AA           MX
    JSR L_8ACF7F                    ; $8ACA48  20 7F CF     MX
    LDA #$0001                      ; $8ACA4B  A9 01 00     MX
    STA $172C                       ; $8ACA4E  8D 2C 17     MX
    PLX                             ; $8ACA51  FA           MX
    RTS                             ; $8ACA52  60           MX
L_8ACA53:
    CMP #$0200                      ; $8ACA53  C9 00 02     MX
    BNE L_8ACA63                    ; $8ACA56  D0 0B        MX
    LDA $0BFFB3,X                   ; $8ACA58  BF B3 FF 0B  MX
    ORA $1C02                       ; $8ACA5C  0D 02 1C     MX
    STA $1C02                       ; $8ACA5F  8D 02 1C     MX
    RTS                             ; $8ACA62  60           MX
L_8ACA63:
    CMP #$C000                      ; $8ACA63  C9 00 C0     MX
    BCS L_8ACA8C                    ; $8ACA66  B0 24        MX
    LDA $16BC,X                     ; $8ACA68  BD BC 16     MX
    AND #$00FF                      ; $8ACA6B  29 FF 00     MX
    ORA #$8000                      ; $8ACA6E  09 00 80     MX
    STA $16BC,X                     ; $8ACA71  9D BC 16     MX
    LDA $1669,X                     ; $8ACA74  BD 69 16     MX
    BIT #$C0C0                      ; $8ACA77  89 C0 C0     MX
    BEQ L_8ACA85                    ; $8ACA7A  F0 09        MX
    LDA #$3F00                      ; $8ACA7C  A9 00 3F     MX
    ORA $16BC,X                     ; $8ACA7F  1D BC 16     MX
    STA $16BC,X                     ; $8ACA82  9D BC 16     MX
L_8ACA85:
    LDA #$007A                      ; $8ACA85  A9 7A 00     MX
    JSR L_8ACED4                    ; $8ACA88  20 D4 CE     MX
    RTS                             ; $8ACA8B  60           MX
L_8ACA8C:
    SEC                             ; $8ACA8C  38           MX
    SBC #$C000                      ; $8ACA8D  E9 00 C0     MX
    BEQ L_8ACA95                    ; $8ACA90  F0 03        MX
    JMP L_8ACB9A                    ; $8ACA92  4C 9A CB     MX
L_8ACA95:
    LDA $0BFFAB,X                   ; $8ACA95  BF AB FF 0B  MX
    JSR L_8ACF69                    ; $8ACA99  20 69 CF     MX
    PHX                             ; $8ACA9C  DA           MX
    LDA $1724,X                     ; $8ACA9D  BD 24 17     MX  player_record
    TAX                             ; $8ACAA0  AA           MX
    SEP #$20                        ; $8ACAA1  E2 20        MX
    LDA $0019EE,X                   ; $8ACAA3  BF EE 19 00  mX  record_teams
    STA $1C15                       ; $8ACAA7  8D 15 1C     mX
    LDA $0019EF,X                   ; $8ACAAA  BF EF 19 00  mX
    STA $1C14                       ; $8ACAAE  8D 14 1C     mX
    LDA $0019F0,X                   ; $8ACAB1  BF F0 19 00  mX
    STA $1C17                       ; $8ACAB5  8D 17 1C     mX
    LDA $0019F1,X                   ; $8ACAB8  BF F1 19 00  mX
    STA $1C16                       ; $8ACABC  8D 16 1C     mX
    REP #$20                        ; $8ACABF  C2 20        mX
    LDY #$0000                      ; $8ACAC1  A0 00 00     MX
    LDX #$001B                      ; $8ACAC4  A2 1B 00     MX
    STZ $00A4                       ; $8ACAC7  9C A4 00     MX
    LDA $1C14,Y                     ; $8ACACA  B9 14 1C     MX
    SEC                             ; $8ACACD  38           MX
    ROL                             ; $8ACACE  2A           MX
    STA $00A6                       ; $8ACACF  8D A6 00     MX
L_8ACAD2:
    BCC L_8ACAD7                    ; $8ACAD2  90 03        MX
    INC $00A4                       ; $8ACAD4  EE A4 00     MX
L_8ACAD7:
    ASL $00A6                       ; $8ACAD7  0E A6 00     MX
    BNE L_8ACAE5                    ; $8ACADA  D0 09        MX
    INY                             ; $8ACADC  C8           MX
    INY                             ; $8ACADD  C8           MX
    LDA $1C14,Y                     ; $8ACADE  B9 14 1C     MX
    ROL                             ; $8ACAE1  2A           MX
    STA $00A6                       ; $8ACAE2  8D A6 00     MX
L_8ACAE5:
    DEX                             ; $8ACAE5  CA           MX
    BNE L_8ACAD2                    ; $8ACAE6  D0 EA        MX
    LDA $00A4                       ; $8ACAE8  AD A4 00     MX
    BNE L_8ACAFB                    ; $8ACAEB  D0 0E        MX
    LDX #$0000                      ; $8ACAED  A2 00 00     MX
    LDY #$0001                      ; $8ACAF0  A0 01 00     MX
    LDA #$D104                      ; $8ACAF3  A9 04 D1     MX
    JSR L_8ACFBD                    ; $8ACAF6  20 BD CF     MX
    PLX                             ; $8ACAF9  FA           MX
    RTS                             ; $8ACAFA  60           MX
L_8ACAFB:
    CMP #$000E                      ; $8ACAFB  C9 0E 00     MX
    BCC L_8ACB30                    ; $8ACAFE  90 30        MX
    CMP #$001B                      ; $8ACB00  C9 1B 00     MX
    BNE L_8ACB19                    ; $8ACB03  D0 14        MX
    LDA #$0001                      ; $8ACB05  A9 01 00     MX
    TSB $1D39                       ; $8ACB08  0C 39 1D     MX
    LDA #$D0D9                      ; $8ACB0B  A9 D9 D0     MX
    LDX #$0000                      ; $8ACB0E  A2 00 00     MX
    LDY #$0000                      ; $8ACB11  A0 00 00     MX
    JSR L_8ACFBD                    ; $8ACB14  20 BD CF     MX
    PLX                             ; $8ACB17  FA           MX
    RTS                             ; $8ACB18  60           MX
L_8ACB19:
    LDA $1C14                       ; $8ACB19  AD 14 1C     MX
    EOR #$FFFF                      ; $8ACB1C  49 FF FF     MX
    STA $1C14                       ; $8ACB1F  8D 14 1C     MX
    LDA $1C16                       ; $8ACB22  AD 16 1C     MX
    EOR #$FFFF                      ; $8ACB25  49 FF FF     MX
    STA $1C16                       ; $8ACB28  8D 16 1C     MX
    LDA #$D0CA                      ; $8ACB2B  A9 CA D0     MX
    BRA L_8ACB33                    ; $8ACB2E  80 03        MX
L_8ACB30:
    LDA #$D0AD                      ; $8ACB30  A9 AD D0     MX
L_8ACB33:
    LDX #$0000                      ; $8ACB33  A2 00 00     MX
    LDY #$0000                      ; $8ACB36  A0 00 00     MX
    JSR L_8ACFBD                    ; $8ACB39  20 BD CF     MX
    LDX #$0000                      ; $8ACB3C  A2 00 00     MX
    LDY #$0001                      ; $8ACB3F  A0 01 00     MX
    LDA #$D0BC                      ; $8ACB42  A9 BC D0     MX
    JSR L_8ACFBD                    ; $8ACB45  20 BD CF     MX
    LDA #$0000                      ; $8ACB48  A9 00 00     MX
    STA $00F0                       ; $8ACB4B  8D F0 00     MX
    LDA #$0003                      ; $8ACB4E  A9 03 00     MX
    STA $00AC                       ; $8ACB51  8D AC 00     MX
    LDA #$D14C                      ; $8ACB54  A9 4C D1     MX
    STA $00B0                       ; $8ACB57  8D B0 00     MX
    LDY #$0000                      ; $8ACB5A  A0 00 00     MX
    LDX #$001B                      ; $8ACB5D  A2 1B 00     MX
    LDA $1C14,Y                     ; $8ACB60  B9 14 1C     MX
    SEC                             ; $8ACB63  38           MX
    ROL                             ; $8ACB64  2A           MX
    STA $00AE                       ; $8ACB65  8D AE 00     MX
L_8ACB68:
    BCC L_8ACB7D                    ; $8ACB68  90 13        MX
    PHX                             ; $8ACB6A  DA           MX
    PHY                             ; $8ACB6B  5A           MX
    LDX #$0000                      ; $8ACB6C  A2 00 00     MX
    LDY $00AC                       ; $8ACB6F  AC AC 00     MX
    LDA $00B0                       ; $8ACB72  AD B0 00     MX
    JSR L_8ACFBD                    ; $8ACB75  20 BD CF     MX
    INC $00AC                       ; $8ACB78  EE AC 00     MX
    PLY                             ; $8ACB7B  7A           MX
    PLX                             ; $8ACB7C  FA           MX
L_8ACB7D:
    LDA $00B0                       ; $8ACB7D  AD B0 00     MX
    CLC                             ; $8ACB80  18           MX
    ADC #$000E                      ; $8ACB81  69 0E 00     MX
    STA $00B0                       ; $8ACB84  8D B0 00     MX
    ASL $00AE                       ; $8ACB87  0E AE 00     MX
    BNE L_8ACB95                    ; $8ACB8A  D0 09        MX
    INY                             ; $8ACB8C  C8           MX
    INY                             ; $8ACB8D  C8           MX
    LDA $1C14,Y                     ; $8ACB8E  B9 14 1C     MX
    ROL                             ; $8ACB91  2A           MX
    STA $00AE                       ; $8ACB92  8D AE 00     MX
L_8ACB95:
    DEX                             ; $8ACB95  CA           MX
    BNE L_8ACB68                    ; $8ACB96  D0 D0        MX
    PLX                             ; $8ACB98  FA           MX
    RTS                             ; $8ACB99  60           MX
L_8ACB9A:
    CMP #$0100                      ; $8ACB9A  C9 00 01     MX
    BNE L_8ACBB7                    ; $8ACB9D  D0 18        MX
    LDA $0D9BF7,X                   ; $8ACB9F  BF F7 9B 0D  MX
    STA $00A4                       ; $8ACBA3  8D A4 00     MX
    LDA $001D15,X                   ; $8ACBA6  BF 15 1D 00  MX
    PHX                             ; $8ACBAA  DA           MX
    TAX                             ; $8ACBAB  AA           MX
    JSR L_8ACF7F                    ; $8ACBAC  20 7F CF     MX
    LDA #$0001                      ; $8ACBAF  A9 01 00     MX
    STA $172C                       ; $8ACBB2  8D 2C 17     MX
    PLX                             ; $8ACBB5  FA           MX
    RTS                             ; $8ACBB6  60           MX
L_8ACBB7:
    LDA $0BFFB3,X                   ; $8ACBB7  BF B3 FF 0B  MX
    ORA $1C02                       ; $8ACBBB  0D 02 1C     MX
    STA $1C02                       ; $8ACBBE  8D 02 1C     MX
    LDA #$FF07                      ; $8ACBC1  A9 07 FF     MX
    STA $16BC,X                     ; $8ACBC4  9D BC 16     MX
    RTS                             ; $8ACBC7  60           MX
L_8ACBC8:
    RTS                             ; $8ACBC8  60           MX
L_8ACBC9:
    JSR L_8ACE72                    ; $8ACBC9  20 72 CE     MX
L_8ACBCC:
    LDA $16BC,X                     ; $8ACBCC  BD BC 16     MX
L_8ACBCF:
    AND #$0040                      ; $8ACBCF  29 40 00     MX
L_8ACBD2:
    BNE L_8ACC02                    ; $8ACBD2  D0 2E        MX
L_8ACBD4:
    LDA $001D1D,X                   ; $8ACBD4  BF 1D 1D 00  MX
L_8ACBD8:
    DEC                             ; $8ACBD8  3A           MX
L_8ACBD9:
    STA $0024                       ; $8ACBD9  8D 24 00     MX
L_8ACBDC:
    LDA #$0008                      ; $8ACBDC  A9 08 00     MX
L_8ACBDF:
    STA $0026                       ; $8ACBDF  8D 26 00     MX
L_8ACBE2:
    LDA #$0000                      ; $8ACBE2  A9 00 00     MX
L_8ACBE5:
    STA $002C                       ; $8ACBE5  8D 2C 00     MX
L_8ACBE8:
    LDA #$D2AC                      ; $8ACBE8  A9 AC D2     MX
L_8ACBEB:
    STA $0020                       ; $8ACBEB  8D 20 00     MX
L_8ACBEE:
    SEP #$20                        ; $8ACBEE  E2 20        MX
L_8ACBF0:
    LDA #$0E                        ; $8ACBF0  A9 0E        mX
L_8ACBF2:
    STA $0022                       ; $8ACBF2  8D 22 00     mX
L_8ACBF5:
    LDA #$2C                        ; $8ACBF5  A9 2C        mX
L_8ACBF7:
    STA $0028                       ; $8ACBF7  8D 28 00     mX
L_8ACBFA:
    REP #$20                        ; $8ACBFA  C2 20        mX
L_8ACBFC:
    PHX                             ; $8ACBFC  DA           MX
L_8ACBFD:
    JSL $2BE2EA                     ; $8ACBFD  22 EA E2 2B  MX
L_8ACC01:
    PLX                             ; $8ACC01  FA           MX
L_8ACC02:
    RTS                             ; $8ACC02  60           MX
L_8ACC03:
    CMP #$000A                      ; $8ACC03  C9 0A 00     MX
L_8ACC06:
    BNE L_8ACC77                    ; $8ACC06  D0 6F        MX
L_8ACC08:
    LDA $001D1D,X                   ; $8ACC08  BF 1D 1D 00  MX
L_8ACC0C:
    DEC                             ; $8ACC0C  3A           MX
L_8ACC0D:
    STA $0024                       ; $8ACC0D  8D 24 00     MX
L_8ACC10:
    LDA #$0008                      ; $8ACC10  A9 08 00     MX
L_8ACC13:
    STA $0026                       ; $8ACC13  8D 26 00     MX
L_8ACC16:
    LDA #$0000                      ; $8ACC16  A9 00 00     MX
L_8ACC19:
    STA $002C                       ; $8ACC19  8D 2C 00     MX
L_8ACC1C:
    LDA #$E37B                      ; $8ACC1C  A9 7B E3     MX
L_8ACC1F:
    STA $0020                       ; $8ACC1F  8D 20 00     MX
L_8ACC22:
    SEP #$20                        ; $8ACC22  E2 20        MX
L_8ACC24:
    LDA #$0E                        ; $8ACC24  A9 0E        mX
L_8ACC26:
    STA $0022                       ; $8ACC26  8D 22 00     mX
L_8ACC29:
    LDA #$2C                        ; $8ACC29  A9 2C        mX
L_8ACC2B:
    STA $0028                       ; $8ACC2B  8D 28 00     mX
L_8ACC2E:
    REP #$20                        ; $8ACC2E  C2 20        mX
L_8ACC30:
    PHX                             ; $8ACC30  DA           MX
L_8ACC31:
    JSL $2BE2EA                     ; $8ACC31  22 EA E2 2B  MX
L_8ACC35:
    PLX                             ; $8ACC35  FA           MX
L_8ACC36:
    LDA $001D15,X                   ; $8ACC36  BF 15 1D 00  MX
L_8ACC3A:
    PHX                             ; $8ACC3A  DA           MX
L_8ACC3B:
    TAX                             ; $8ACC3B  AA           MX
L_8ACC3C:
    JSR L_8ACE32                    ; $8ACC3C  20 32 CE     MX
L_8ACC3F:
    LDA #$0001                      ; $8ACC3F  A9 01 00     MX
L_8ACC42:
    STA $172C                       ; $8ACC42  8D 2C 17     MX
L_8ACC45:
    PLX                             ; $8ACC45  FA           MX
L_8ACC46:
    LDA $16BC,X                     ; $8ACC46  BD BC 16     MX
L_8ACC49:
    AND #$FF00                      ; $8ACC49  29 00 FF     MX
L_8ACC4C:
    ORA #$000B                      ; $8ACC4C  09 0B 00     MX
L_8ACC4F:
    STA $16BC,X                     ; $8ACC4F  9D BC 16     MX
L_8ACC52:
    LDA #$001A                      ; $8ACC52  A9 1A 00     MX
L_8ACC55:
    STA $16C4,X                     ; $8ACC55  9D C4 16     MX  grid_cursor
L_8ACC58:
    LDA #$0000                      ; $8ACC58  A9 00 00     MX
L_8ACC5B:
    STA $16E4,X                     ; $8ACC5B  9D E4 16     MX  password_count
L_8ACC5E:
    LDA #$FFFF                      ; $8ACC5E  A9 FF FF     MX
L_8ACC61:
    STA $16EC,X                     ; $8ACC61  9D EC 16     MX  password_chars
L_8ACC64:
    STA $16F4,X                     ; $8ACC64  9D F4 16     MX
L_8ACC67:
    STA $16FC,X                     ; $8ACC67  9D FC 16     MX
L_8ACC6A:
    STA $1704,X                     ; $8ACC6A  9D 04 17     MX
L_8ACC6D:
    STA $170C,X                     ; $8ACC6D  9D 0C 17     MX
L_8ACC70:
    STA $1714,X                     ; $8ACC70  9D 14 17     MX
L_8ACC73:
    STA $171C,X                     ; $8ACC73  9D 1C 17     MX
L_8ACC76:
    RTS                             ; $8ACC76  60           MX
L_8ACC77:
    CMP #$000B                      ; $8ACC77  C9 0B 00     MX
L_8ACC7A:
    BEQ L_8ACC7F                    ; $8ACC7A  F0 03        MX
L_8ACC7C:
    JMP L_8ACBC9                    ; $8ACC7C  4C C9 CB     MX
L_8ACC7F:
    LDA $001D1D,X                   ; $8ACC7F  BF 1D 1D 00  MX
L_8ACC83:
    DEC                             ; $8ACC83  3A           MX
L_8ACC84:
    STA $0024                       ; $8ACC84  8D 24 00     MX
L_8ACC87:
    LDA #$0008                      ; $8ACC87  A9 08 00     MX
L_8ACC8A:
    STA $0026                       ; $8ACC8A  8D 26 00     MX
L_8ACC8D:
    LDA #$0000                      ; $8ACC8D  A9 00 00     MX
L_8ACC90:
    STA $002C                       ; $8ACC90  8D 2C 00     MX
L_8ACC93:
    LDA #$E37B                      ; $8ACC93  A9 7B E3     MX
L_8ACC96:
    STA $0020                       ; $8ACC96  8D 20 00     MX
L_8ACC99:
    SEP #$20                        ; $8ACC99  E2 20        MX
L_8ACC9B:
    LDA #$0E                        ; $8ACC9B  A9 0E        mX
L_8ACC9D:
    STA $0022                       ; $8ACC9D  8D 22 00     mX
L_8ACCA0:
    LDA #$2C                        ; $8ACCA0  A9 2C        mX
L_8ACCA2:
    STA $0028                       ; $8ACCA2  8D 28 00     mX
L_8ACCA5:
    REP #$20                        ; $8ACCA5  C2 20        mX
L_8ACCA7:
    PHX                             ; $8ACCA7  DA           MX
L_8ACCA8:
    JSL $2BE2EA                     ; $8ACCA8  22 EA E2 2B  MX
L_8ACCAC:
    PLX                             ; $8ACCAC  FA           MX
L_8ACCAD:
    LDA #$00BA                      ; $8ACCAD  A9 BA 00     MX
L_8ACCB0:
    JSR L_8ACED4                    ; $8ACCB0  20 D4 CE     MX
L_8ACCB3:
    LDA $16BC,X                     ; $8ACCB3  BD BC 16     MX
L_8ACCB6:
    AND #$1000                      ; $8ACCB6  29 00 10     MX
L_8ACCB9:
    BNE L_8ACCFD                    ; $8ACCB9  D0 42        MX
L_8ACCBB:
    LDA $001D1D,X                   ; $8ACCBB  BF 1D 1D 00  MX
L_8ACCBF:
    STA $00A4                       ; $8ACCBF  8D A4 00     MX
L_8ACCC2:
    LDA $16C4,X                     ; $8ACCC2  BD C4 16     MX  grid_cursor
L_8ACCC5:
    PHX                             ; $8ACCC5  DA           MX
L_8ACCC6:
    ASL                             ; $8ACCC6  0A           MX
L_8ACCC7:
    TAX                             ; $8ACCC7  AA           MX
L_8ACCC8:
    LDA $0AD2C7,X                   ; $8ACCC8  BF C7 D2 0A  MX
L_8ACCCC:
    CLC                             ; $8ACCCC  18           MX
L_8ACCCD:
    ADC $00A4                       ; $8ACCCD  6D A4 00     MX
L_8ACCD0:
    STA $0024                       ; $8ACCD0  8D 24 00     MX
L_8ACCD3:
    LDA $0AD28F,X                   ; $8ACCD3  BF 8F D2 0A  MX
L_8ACCD7:
    SEC                             ; $8ACCD7  38           MX
L_8ACCD8:
    SBC #$0015                      ; $8ACCD8  E9 15 00     MX
L_8ACCDB:
    STA $0026                       ; $8ACCDB  8D 26 00     MX
L_8ACCDE:
    LDA #$0000                      ; $8ACCDE  A9 00 00     MX
L_8ACCE1:
    STA $002C                       ; $8ACCE1  8D 2C 00     MX
L_8ACCE4:
    LDA #$CAF0                      ; $8ACCE4  A9 F0 CA     MX
L_8ACCE7:
    STA $0020                       ; $8ACCE7  8D 20 00     MX
L_8ACCEA:
    SEP #$20                        ; $8ACCEA  E2 20        MX
L_8ACCEC:
    LDA #$0E                        ; $8ACCEC  A9 0E        mX
L_8ACCEE:
    STA $0022                       ; $8ACCEE  8D 22 00     mX
L_8ACCF1:
    LDA #$2C                        ; $8ACCF1  A9 2C        mX
L_8ACCF3:
    STA $0028                       ; $8ACCF3  8D 28 00     mX
L_8ACCF6:
    REP #$20                        ; $8ACCF6  C2 20        mX
L_8ACCF8:
    JSL $2BE2EA                     ; $8ACCF8  22 EA E2 2B  MX
L_8ACCFC:
    PLX                             ; $8ACCFC  FA           MX
L_8ACCFD:
    JSR L_8AD2FF                    ; $8ACCFD  20 FF D2     MX
L_8ACD00:
    STX $00A6                       ; $8ACD00  8E A6 00     MX
L_8ACD03:
    LDA $16E4,X                     ; $8ACD03  BD E4 16     MX  password_count
L_8ACD06:
    BIT #$0001                      ; $8ACD06  89 01 00     MX
L_8ACD09:
    BNE L_8ACD22                    ; $8ACD09  D0 17        MX
L_8ACD0B:
    CLC                             ; $8ACD0B  18           MX
L_8ACD0C:
    ADC $00A6                       ; $8ACD0C  6D A6 00     MX
L_8ACD0F:
    TAY                             ; $8ACD0F  A8           MX
L_8ACD10:
    LDA $00A4                       ; $8ACD10  AD A4 00     MX
L_8ACD13:
    AND #$00FF                      ; $8ACD13  29 FF 00     MX
L_8ACD16:
    STA $00A4                       ; $8ACD16  8D A4 00     MX
L_8ACD19:
    XBA                             ; $8ACD19  EB           MX
L_8ACD1A:
    ORA #$00FF                      ; $8ACD1A  09 FF 00     MX
L_8ACD1D:
    STA $16EC,Y                     ; $8ACD1D  99 EC 16     MX  password_chars
L_8ACD20:
    BRA L_8ACD3F                    ; $8ACD20  80 1D        MX
L_8ACD22:
    AND #$FFFE                      ; $8ACD22  29 FE FF     MX
    CLC                             ; $8ACD25  18           MX
    ADC $00A6                       ; $8ACD26  6D A6 00     MX
    TAY                             ; $8ACD29  A8           MX
    LDA $00A4                       ; $8ACD2A  AD A4 00     MX
    AND #$00FF                      ; $8ACD2D  29 FF 00     MX
    STA $00A4                       ; $8ACD30  8D A4 00     MX
    LDA $16EC,Y                     ; $8ACD33  B9 EC 16     MX  password_chars
    AND #$FF00                      ; $8ACD36  29 00 FF     MX
    ORA $00A4                       ; $8ACD39  0D A4 00     MX
    STA $16EC,Y                     ; $8ACD3C  99 EC 16     MX  password_chars
L_8ACD3F:
    LDX $00A6                       ; $8ACD3F  AE A6 00     MX
L_8ACD42:
    LDA $1669,X                     ; $8ACD42  BD 69 16     MX
L_8ACD45:
    BIT #$C0C0                      ; $8ACD45  89 C0 C0     MX
L_8ACD48:
    BNE L_8ACD4D                    ; $8ACD48  D0 03        MX
L_8ACD4A:
    JMP L_8ACDF1                    ; $8ACD4A  4C F1 CD     MX
L_8ACD4D:
    PHA                             ; $8ACD4D  48           MX
L_8ACD4E:
    PHX                             ; $8ACD4E  DA           MX
L_8ACD4F:
    PHY                             ; $8ACD4F  5A           MX
L_8ACD50:
    LDA #$0042                      ; $8ACD50  A9 42 00     MX
L_8ACD53:
    JSL L_BDFE18                    ; $8ACD53  22 18 FE BD  MX
L_8ACD57:
    PLY                             ; $8ACD57  7A           MX
L_8ACD58:
    PLX                             ; $8ACD58  FA           MX
L_8ACD59:
    PLA                             ; $8ACD59  68           MX
L_8ACD5A:
    LDA $00A4                       ; $8ACD5A  AD A4 00     MX
L_8ACD5D:
    CMP #$00FF                      ; $8ACD5D  C9 FF 00     MX
L_8ACD60:
    BNE L_8ACD78                    ; $8ACD60  D0 16        MX
    LDA $16E4,X                     ; $8ACD62  BD E4 16     MX  password_count
    BIT #$0001                      ; $8ACD65  89 01 00     MX
    BEQ L_8ACD6D                    ; $8ACD68  F0 03        MX
    DEC                             ; $8ACD6A  3A           MX
    BRA L_8ACD73                    ; $8ACD6B  80 06        MX
L_8ACD6D:
    SEC                             ; $8ACD6D  38           MX
    SBC #$0007                      ; $8ACD6E  E9 07 00     MX
    BMI L_8ACD94                    ; $8ACD71  30 21        MX
L_8ACD73:
    STA $16E4,X                     ; $8ACD73  9D E4 16     MX  password_count
    BRA L_8ACD94                    ; $8ACD76  80 1C        MX
L_8ACD78:
    CMP #$001A                      ; $8ACD78  C9 1A 00     MX
L_8ACD7B:
    BEQ L_8ACDD7                    ; $8ACD7B  F0 5A        MX
    LDA $16E4,X                     ; $8ACD7D  BD E4 16     MX  password_count
    BIT #$0001                      ; $8ACD80  89 01 00     MX
    BNE L_8ACD88                    ; $8ACD83  D0 03        MX
    INC                             ; $8ACD85  1A           MX
    BRA L_8ACD8C                    ; $8ACD86  80 04        MX
L_8ACD88:
    CLC                             ; $8ACD88  18           MX
    ADC #$0007                      ; $8ACD89  69 07 00     MX
L_8ACD8C:
    STA $16E4,X                     ; $8ACD8C  9D E4 16     MX  password_count
    CMP #$0038                      ; $8ACD8F  C9 38 00     MX
    BEQ L_8ACD95                    ; $8ACD92  F0 01        MX
L_8ACD94:
    RTS                             ; $8ACD94  60           MX
L_8ACD95:
    SEP #$20                        ; $8ACD95  E2 20        MX
    LDY #$0000                      ; $8ACD97  A0 00 00     mX
    PHX                             ; $8ACD9A  DA           mX
L_8ACD9B:
    LDA $16ED,X                     ; $8ACD9B  BD ED 16     mX
    STA $1C4F,Y                     ; $8ACD9E  99 4F 1C     mX  password_work
    LDA $16EC,X                     ; $8ACDA1  BD EC 16     mX  password_chars
    STA $1C50,Y                     ; $8ACDA4  99 50 1C     mX
    INX                             ; $8ACDA7  E8           mX
    INX                             ; $8ACDA8  E8           mX
    INX                             ; $8ACDA9  E8           mX
    INX                             ; $8ACDAA  E8           mX
    INX                             ; $8ACDAB  E8           mX
    INX                             ; $8ACDAC  E8           mX
    INX                             ; $8ACDAD  E8           mX
    INX                             ; $8ACDAE  E8           mX
    INY                             ; $8ACDAF  C8           mX
    INY                             ; $8ACDB0  C8           mX
    CPY #$000E                      ; $8ACDB1  C0 0E 00     mX
    BNE L_8ACD9B                    ; $8ACDB4  D0 E5        mX
    REP #$20                        ; $8ACDB6  C2 20        mX
    PLX                             ; $8ACDB8  FA           MX
    PHX                             ; $8ACDB9  DA           MX
    LDA $1724,X                     ; $8ACDBA  BD 24 17     MX  player_record
    TAX                             ; $8ACDBD  AA           MX
    SEP #$20                        ; $8ACDBE  E2 20        MX
    LDA #$00                        ; $8ACDC0  A9 00        mX
    STA $1731,X                     ; $8ACDC2  9D 31 17     mX
    REP #$20                        ; $8ACDC5  C2 20        mX
    JSR decode_password             ; $8ACDC7  20 17 DB     MX
    BCC L_8ACDE7                    ; $8ACDCA  90 1B        MX
L_8ACDCC:
    JSR rank_records                ; $8ACDCC  20 26 D8     MX
L_8ACDCF:
    PLX                             ; $8ACDCF  FA           MX
L_8ACDD0:
    LDA #$FF04                      ; $8ACDD0  A9 04 FF     MX
L_8ACDD3:
    STA $16BC,X                     ; $8ACDD3  9D BC 16     MX
L_8ACDD6:
    RTS                             ; $8ACDD6  60           MX
L_8ACDD7:
    PHX                             ; $8ACDD7  DA           MX
L_8ACDD8:
    LDA $1724,X                     ; $8ACDD8  BD 24 17     MX  player_record
L_8ACDDB:
    TAX                             ; $8ACDDB  AA           MX
L_8ACDDC:
    SEP #$20                        ; $8ACDDC  E2 20        MX
L_8ACDDE:
    LDA #$00                        ; $8ACDDE  A9 00        mX
L_8ACDE0:
    STA $1731,X                     ; $8ACDE0  9D 31 17     mX
L_8ACDE3:
    REP #$20                        ; $8ACDE3  C2 20        mX
L_8ACDE5:
    BRA L_8ACDCC                    ; $8ACDE5  80 E5        MX
L_8ACDE7:
    JSR rank_records                ; $8ACDE7  20 26 D8     MX
    PLX                             ; $8ACDEA  FA           MX
    LDA #$FF05                      ; $8ACDEB  A9 05 FF     MX
    STA $16BC,X                     ; $8ACDEE  9D BC 16     MX
L_8ACDF1:
    RTS                             ; $8ACDF1  60           MX
L_8ACDF2:
    PEA $0010                       ; $8ACDF2  F4 10 00     MX
L_8ACDF5:
    PLB                             ; $8ACDF5  AB           MX
L_8ACDF6:
    LDA #$FD93                      ; $8ACDF6  A9 93 FD     MX
L_8ACDF9:
    STA $0000A4                     ; $8ACDF9  8F A4 00 00  MX
L_8ACDFD:
    LDA #$0011                      ; $8ACDFD  A9 11 00     MX
L_8ACE00:
    STA $0000A6                     ; $8ACE00  8F A6 00 00  MX
L_8ACE04:
    LDY #$0000                      ; $8ACE04  A0 00 00     MX
L_8ACE07:
    LDA ($A4),Y                     ; $8ACE07  B1 A4        MX
L_8ACE09:
    ORA #$2800                      ; $8ACE09  09 00 28     MX
L_8ACE0C:
    STA $7EC302,X                   ; $8ACE0C  9F 02 C3 7E  MX
L_8ACE10:
    INX                             ; $8ACE10  E8           MX
L_8ACE11:
    INX                             ; $8ACE11  E8           MX
L_8ACE12:
    INY                             ; $8ACE12  C8           MX
L_8ACE13:
    INY                             ; $8ACE13  C8           MX
L_8ACE14:
    CPY #$000E                      ; $8ACE14  C0 0E 00     MX
L_8ACE17:
    BNE L_8ACE07                    ; $8ACE17  D0 EE        MX
L_8ACE19:
    LDA $0000A4                     ; $8ACE19  AF A4 00 00  MX
L_8ACE1D:
    CLC                             ; $8ACE1D  18           MX
L_8ACE1E:
    ADC #$000E                      ; $8ACE1E  69 0E 00     MX
L_8ACE21:
    STA $0000A4                     ; $8ACE21  8F A4 00 00  MX
L_8ACE25:
    TXA                             ; $8ACE25  8A           MX
L_8ACE26:
    CLC                             ; $8ACE26  18           MX
L_8ACE27:
    ADC #$0032                      ; $8ACE27  69 32 00     MX
L_8ACE2A:
    TAX                             ; $8ACE2A  AA           MX
L_8ACE2B:
    DEC $00A6                       ; $8ACE2B  CE A6 00     MX
L_8ACE2E:
    BNE L_8ACE04                    ; $8ACE2E  D0 D4        MX
L_8ACE30:
    PLB                             ; $8ACE30  AB           MX
L_8ACE31:
    RTS                             ; $8ACE31  60           MX
L_8ACE32:
    PEA $0010                       ; $8ACE32  F4 10 00     MX
L_8ACE35:
    PLB                             ; $8ACE35  AB           MX
L_8ACE36:
    LDA #$FE85                      ; $8ACE36  A9 85 FE     MX
L_8ACE39:
    STA $0000A4                     ; $8ACE39  8F A4 00 00  MX
L_8ACE3D:
    LDA #$0011                      ; $8ACE3D  A9 11 00     MX
L_8ACE40:
    STA $0000A6                     ; $8ACE40  8F A6 00 00  MX
L_8ACE44:
    LDY #$0000                      ; $8ACE44  A0 00 00     MX
L_8ACE47:
    LDA ($A4),Y                     ; $8ACE47  B1 A4        MX
L_8ACE49:
    ORA #$2400                      ; $8ACE49  09 00 24     MX
L_8ACE4C:
    STA $7EC302,X                   ; $8ACE4C  9F 02 C3 7E  MX
L_8ACE50:
    INX                             ; $8ACE50  E8           MX
L_8ACE51:
    INX                             ; $8ACE51  E8           MX
L_8ACE52:
    INY                             ; $8ACE52  C8           MX
L_8ACE53:
    INY                             ; $8ACE53  C8           MX
L_8ACE54:
    CPY #$000E                      ; $8ACE54  C0 0E 00     MX
L_8ACE57:
    BNE L_8ACE47                    ; $8ACE57  D0 EE        MX
L_8ACE59:
    LDA $0000A4                     ; $8ACE59  AF A4 00 00  MX
L_8ACE5D:
    CLC                             ; $8ACE5D  18           MX
L_8ACE5E:
    ADC #$000E                      ; $8ACE5E  69 0E 00     MX
L_8ACE61:
    STA $0000A4                     ; $8ACE61  8F A4 00 00  MX
L_8ACE65:
    TXA                             ; $8ACE65  8A           MX
L_8ACE66:
    CLC                             ; $8ACE66  18           MX
L_8ACE67:
    ADC #$0032                      ; $8ACE67  69 32 00     MX
L_8ACE6A:
    TAX                             ; $8ACE6A  AA           MX
L_8ACE6B:
    DEC $00A6                       ; $8ACE6B  CE A6 00     MX
L_8ACE6E:
    BNE L_8ACE44                    ; $8ACE6E  D0 D4        MX
L_8ACE70:
    PLB                             ; $8ACE70  AB           MX
L_8ACE71:
    RTS                             ; $8ACE71  60           MX
L_8ACE72:
    LDA $001D25,X                   ; $8ACE72  BF 25 1D 00  MX
L_8ACE76:
    STA $00A4                       ; $8ACE76  8D A4 00     MX
L_8ACE79:
    LDY #$0000                      ; $8ACE79  A0 00 00     MX
L_8ACE7C:
    LDA $16CC,X                     ; $8ACE7C  BD CC 16     MX  initial1
L_8ACE7F:
    BMI L_8ACE9A                    ; $8ACE7F  30 19        MX
L_8ACE81:
    JSR L_8ACE9B                    ; $8ACE81  20 9B CE     MX
L_8ACE84:
    LDY #$0002                      ; $8ACE84  A0 02 00     MX
L_8ACE87:
    LDA $16D4,X                     ; $8ACE87  BD D4 16     MX
L_8ACE8A:
    BMI L_8ACE9A                    ; $8ACE8A  30 0E        MX
L_8ACE8C:
    JSR L_8ACE9B                    ; $8ACE8C  20 9B CE     MX
L_8ACE8F:
    LDY #$0004                      ; $8ACE8F  A0 04 00     MX
L_8ACE92:
    LDA $16DC,X                     ; $8ACE92  BD DC 16     MX
L_8ACE95:
    BMI L_8ACE9A                    ; $8ACE95  30 03        MX
L_8ACE97:
    JSR L_8ACE9B                    ; $8ACE97  20 9B CE     MX
L_8ACE9A:
    RTS                             ; $8ACE9A  60           MX
L_8ACE9B:
    AND #$003F                      ; $8ACE9B  29 3F 00     MX
L_8ACE9E:
    ASL                             ; $8ACE9E  0A           MX
L_8ACE9F:
    PHX                             ; $8ACE9F  DA           MX
L_8ACEA0:
    TAX                             ; $8ACEA0  AA           MX
L_8ACEA1:
    LDA $0BFE35,X                   ; $8ACEA1  BF 35 FE 0B  MX
L_8ACEA5:
    STA $0020                       ; $8ACEA5  8D 20 00     MX
L_8ACEA8:
    TYX                             ; $8ACEA8  BB           MX
L_8ACEA9:
    LDA $0D9AAC,X                   ; $8ACEA9  BF AC 9A 0D  MX
L_8ACEAD:
    CLC                             ; $8ACEAD  18           MX
L_8ACEAE:
    ADC $00A4                       ; $8ACEAE  6D A4 00     MX
L_8ACEB1:
    STA $0024                       ; $8ACEB1  8D 24 00     MX
L_8ACEB4:
    LDA #$00BA                      ; $8ACEB4  A9 BA 00     MX
L_8ACEB7:
    STA $0026                       ; $8ACEB7  8D 26 00     MX
L_8ACEBA:
    LDA #$0000                      ; $8ACEBA  A9 00 00     MX
L_8ACEBD:
    STA $002C                       ; $8ACEBD  8D 2C 00     MX
L_8ACEC0:
    SEP #$20                        ; $8ACEC0  E2 20        MX
L_8ACEC2:
    LDA #$0E                        ; $8ACEC2  A9 0E        mX
L_8ACEC4:
    STA $0022                       ; $8ACEC4  8D 22 00     mX
L_8ACEC7:
    LDA #$2E                        ; $8ACEC7  A9 2E        mX
L_8ACEC9:
    STA $0028                       ; $8ACEC9  8D 28 00     mX
L_8ACECC:
    REP #$20                        ; $8ACECC  C2 20        mX
L_8ACECE:
    JSL $2BE2EA                     ; $8ACECE  22 EA E2 2B  MX
L_8ACED2:
    PLX                             ; $8ACED2  FA           MX
L_8ACED3:
    RTS                             ; $8ACED3  60           MX
L_8ACED4:
    STA $00A6                       ; $8ACED4  8D A6 00     MX
L_8ACED7:
    CMP #$00BA                      ; $8ACED7  C9 BA 00     MX
L_8ACEDA:
    BEQ L_8ACEE6                    ; $8ACEDA  F0 0A        MX
    LDA $001D1D,X                   ; $8ACEDC  BF 1D 1D 00  MX
    CLC                             ; $8ACEE0  18           MX
    ADC #$0005                      ; $8ACEE1  69 05 00     MX
    BRA L_8ACEEE                    ; $8ACEE4  80 08        MX
L_8ACEE6:
    LDA $001D25,X                   ; $8ACEE6  BF 25 1D 00  MX
L_8ACEEA:
    SEC                             ; $8ACEEA  38           MX
L_8ACEEB:
    SBC #$0005                      ; $8ACEEB  E9 05 00     MX
L_8ACEEE:
    STA $00A4                       ; $8ACEEE  8D A4 00     MX
L_8ACEF1:
    LDY #$0000                      ; $8ACEF1  A0 00 00     MX
L_8ACEF4:
    PHX                             ; $8ACEF4  DA           MX
L_8ACEF5:
    LDA $16EC,X                     ; $8ACEF5  BD EC 16     MX  password_chars
L_8ACEF8:
    BMI L_8ACF1E                    ; $8ACEF8  30 24        MX
L_8ACEFA:
    XBA                             ; $8ACEFA  EB           MX
L_8ACEFB:
    AND #$00FF                      ; $8ACEFB  29 FF 00     MX
L_8ACEFE:
    JSR L_8ACF20                    ; $8ACEFE  20 20 CF     MX
L_8ACF01:
    INY                             ; $8ACF01  C8           MX
L_8ACF02:
    INY                             ; $8ACF02  C8           MX
L_8ACF03:
    LDA $16EC,X                     ; $8ACF03  BD EC 16     MX  password_chars
L_8ACF06:
    AND #$00FF                      ; $8ACF06  29 FF 00     MX
L_8ACF09:
    BIT #$0080                      ; $8ACF09  89 80 00     MX
L_8ACF0C:
    BNE L_8ACF1E                    ; $8ACF0C  D0 10        MX
L_8ACF0E:
    JSR L_8ACF20                    ; $8ACF0E  20 20 CF     MX
L_8ACF11:
    INY                             ; $8ACF11  C8           MX
L_8ACF12:
    INY                             ; $8ACF12  C8           MX
L_8ACF13:
    TXA                             ; $8ACF13  8A           MX
L_8ACF14:
    CLC                             ; $8ACF14  18           MX
L_8ACF15:
    ADC #$0008                      ; $8ACF15  69 08 00     MX
L_8ACF18:
    TAX                             ; $8ACF18  AA           MX
L_8ACF19:
    CPY #$001C                      ; $8ACF19  C0 1C 00     MX
L_8ACF1C:
    BNE L_8ACEF5                    ; $8ACF1C  D0 D7        MX
L_8ACF1E:
    PLX                             ; $8ACF1E  FA           MX
L_8ACF1F:
    RTS                             ; $8ACF1F  60           MX
L_8ACF20:
    CMP #$001A                      ; $8ACF20  C9 1A 00     MX
L_8ACF23:
    BEQ L_8ACF58                    ; $8ACF23  F0 33        MX
L_8ACF25:
    PHY                             ; $8ACF25  5A           MX
L_8ACF26:
    PHX                             ; $8ACF26  DA           MX
L_8ACF27:
    CLC                             ; $8ACF27  18           MX
L_8ACF28:
    ADC #$0100                      ; $8ACF28  69 00 01     MX
L_8ACF2B:
    STA $00F2                       ; $8ACF2B  8D F2 00     MX
L_8ACF2E:
    TYX                             ; $8ACF2E  BB           MX
L_8ACF2F:
    LDA $0D9B4A,X                   ; $8ACF2F  BF 4A 9B 0D  MX
L_8ACF33:
    CLC                             ; $8ACF33  18           MX
L_8ACF34:
    ADC $00A4                       ; $8ACF34  6D A4 00     MX
L_8ACF37:
    STA $00EE                       ; $8ACF37  8D EE 00     MX
L_8ACF3A:
    LDA $00A6                       ; $8ACF3A  AD A6 00     MX
L_8ACF3D:
    CPY #$000E                      ; $8ACF3D  C0 0E 00     MX
L_8ACF40:
    BCC L_8ACF46                    ; $8ACF40  90 04        MX
    CLC                             ; $8ACF42  18           MX
    ADC #$0008                      ; $8ACF43  69 08 00     MX
L_8ACF46:
    STA $00F0                       ; $8ACF46  8D F0 00     MX
L_8ACF49:
    SEP #$20                        ; $8ACF49  E2 20        MX
L_8ACF4B:
    LDA #$2E                        ; $8ACF4B  A9 2E        mX
L_8ACF4D:
    STA $002A                       ; $8ACF4D  8D 2A 00     mX
L_8ACF50:
    REP #$20                        ; $8ACF50  C2 20        mX
L_8ACF52:
    JSL $2BE000                     ; $8ACF52  22 00 E0 2B  MX
L_8ACF56:
    PLX                             ; $8ACF56  FA           MX
L_8ACF57:
    PLY                             ; $8ACF57  7A           MX
L_8ACF58:
    RTS                             ; $8ACF58  60           MX
L_8ACF59:
    PHX                             ; $8ACF59  DA           MX
    JSR L_8ACE72                    ; $8ACF5A  20 72 CE     MX
    PLX                             ; $8ACF5D  FA           MX
    PHX                             ; $8ACF5E  DA           MX
    LDA #$007A                      ; $8ACF5F  A9 7A 00     MX
    JSR L_8ACED4                    ; $8ACF62  20 D4 CE     MX
    PLX                             ; $8ACF65  FA           MX
    RTS                             ; $8ACF66  60           MX
L_8ACF67:
    BRA L_8ACF59                    ; $8ACF67  80 F0        MX
L_8ACF69:
    STA $1C00                       ; $8ACF69  8D 00 1C     MX
L_8ACF6C:
    PHX                             ; $8ACF6C  DA           MX
L_8ACF6D:
    TAX                             ; $8ACF6D  AA           MX
L_8ACF6E:
    LDY #$0700                      ; $8ACF6E  A0 00 07     MX
L_8ACF71:
    LDA #$0000                      ; $8ACF71  A9 00 00     MX
L_8ACF74:
    STA $7EC740,X                   ; $8ACF74  9F 40 C7 7E  MX
L_8ACF78:
    INX                             ; $8ACF78  E8           MX
L_8ACF79:
    INX                             ; $8ACF79  E8           MX
L_8ACF7A:
    DEY                             ; $8ACF7A  88           MX
L_8ACF7B:
    BNE L_8ACF74                    ; $8ACF7B  D0 F7        MX
L_8ACF7D:
    PLX                             ; $8ACF7D  FA           MX
L_8ACF7E:
    RTS                             ; $8ACF7E  60           MX
L_8ACF7F:
    LDA #$0010                      ; $8ACF7F  A9 10 00     MX
L_8ACF82:
    STA $00A6                       ; $8ACF82  8D A6 00     MX
L_8ACF85:
    LDY #$0000                      ; $8ACF85  A0 00 00     MX
L_8ACF88:
    LDA $00A4                       ; $8ACF88  AD A4 00     MX
L_8ACF8B:
    ORA #$2800                      ; $8ACF8B  09 00 28     MX
L_8ACF8E:
    STA $7EC302,X                   ; $8ACF8E  9F 02 C3 7E  MX
L_8ACF92:
    INC $00A4                       ; $8ACF92  EE A4 00     MX
L_8ACF95:
    INX                             ; $8ACF95  E8           MX
L_8ACF96:
    INX                             ; $8ACF96  E8           MX
L_8ACF97:
    INY                             ; $8ACF97  C8           MX
L_8ACF98:
    INY                             ; $8ACF98  C8           MX
L_8ACF99:
    CPY #$000E                      ; $8ACF99  C0 0E 00     MX
L_8ACF9C:
    BNE L_8ACF88                    ; $8ACF9C  D0 EA        MX
L_8ACF9E:
    TXA                             ; $8ACF9E  8A           MX
L_8ACF9F:
    CLC                             ; $8ACF9F  18           MX
L_8ACFA0:
    ADC #$0032                      ; $8ACFA0  69 32 00     MX
L_8ACFA3:
    TAX                             ; $8ACFA3  AA           MX
L_8ACFA4:
    DEC $00A6                       ; $8ACFA4  CE A6 00     MX
L_8ACFA7:
    BNE L_8ACF85                    ; $8ACFA7  D0 DC        MX
L_8ACFA9:
    LDY #$0000                      ; $8ACFA9  A0 00 00     MX
L_8ACFAC:
    LDA #$0000                      ; $8ACFAC  A9 00 00     MX
L_8ACFAF:
    STA $7EC302,X                   ; $8ACFAF  9F 02 C3 7E  MX
L_8ACFB3:
    INX                             ; $8ACFB3  E8           MX
L_8ACFB4:
    INX                             ; $8ACFB4  E8           MX
L_8ACFB5:
    INY                             ; $8ACFB5  C8           MX
L_8ACFB6:
    INY                             ; $8ACFB6  C8           MX
L_8ACFB7:
    CPY #$000E                      ; $8ACFB7  C0 0E 00     MX
L_8ACFBA:
    BNE L_8ACFAF                    ; $8ACFBA  D0 F3        MX
L_8ACFBC:
    RTS                             ; $8ACFBC  60           MX
L_8ACFBD:
    STA $00A4                       ; $8ACFBD  8D A4 00     MX
L_8ACFC0:
    PEA $002A                       ; $8ACFC0  F4 2A 00     MX
L_8ACFC3:
    PLB                             ; $8ACFC3  AB           MX
L_8ACFC4:
    PHX                             ; $8ACFC4  DA           MX
L_8ACFC5:
    TXA                             ; $8ACFC5  8A           MX
L_8ACFC6:
    AND #$000E                      ; $8ACFC6  29 0E 00     MX
L_8ACFC9:
    ASL                             ; $8ACFC9  0A           MX
L_8ACFCA:
    ASL                             ; $8ACFCA  0A           MX
L_8ACFCB:
    ASL                             ; $8ACFCB  0A           MX
L_8ACFCC:
    ASL                             ; $8ACFCC  0A           MX
L_8ACFCD:
    STA $0000A6                     ; $8ACFCD  8F A6 00 00  MX
L_8ACFD1:
    TYA                             ; $8ACFD1  98           MX
L_8ACFD2:
    ASL                             ; $8ACFD2  0A           MX
L_8ACFD3:
    TAX                             ; $8ACFD3  AA           MX
L_8ACFD4:
    LDA $0CFF83,X                   ; $8ACFD4  BF 83 FF 0C  MX
L_8ACFD8:
    CLC                             ; $8ACFD8  18           MX
L_8ACFD9:
    ADC $0000A6                     ; $8ACFD9  6F A6 00 00  MX
L_8ACFDD:
    TAY                             ; $8ACFDD  A8           MX
L_8ACFDE:
    LDA $001C00                     ; $8ACFDE  AF 00 1C 00  MX
L_8ACFE2:
    CLC                             ; $8ACFE2  18           MX
L_8ACFE3:
    ADC #$C740                      ; $8ACFE3  69 40 C7     MX
L_8ACFE6:
    STA $0000A6                     ; $8ACFE6  8F A6 00 00  MX
L_8ACFEA:
    LDA #$007E                      ; $8ACFEA  A9 7E 00     MX
L_8ACFED:
    STA $0000A8                     ; $8ACFED  8F A8 00 00  MX
L_8ACFF1:
    PLA                             ; $8ACFF1  68           MX
L_8ACFF2:
    AND #$0001                      ; $8ACFF2  29 01 00     MX
L_8ACFF5:
    BEQ L_8ACFFA                    ; $8ACFF5  F0 03        MX
    JMP L_8AD03A                    ; $8ACFF7  4C 3A D0     MX
L_8ACFFA:
    LDA ($A4)                       ; $8ACFFA  B2 A4        MX
L_8ACFFC:
    AND #$00FF                      ; $8ACFFC  29 FF 00     MX
L_8ACFFF:
    BEQ L_8AD031                    ; $8ACFFF  F0 30        MX
L_8AD001:
    CMP #$0005                      ; $8AD001  C9 05 00     MX
L_8AD004:
    BCS L_8AD00D                    ; $8AD004  B0 07        MX
L_8AD006:
    DEC                             ; $8AD006  3A           MX
L_8AD007:
    STA $0000F0                     ; $8AD007  8F F0 00 00  MX
L_8AD00B:
    BRA L_8AD070                    ; $8AD00B  80 63        MX
L_8AD00D:
    SEC                             ; $8AD00D  38           MX
L_8AD00E:
    SBC #$0020                      ; $8AD00E  E9 20 00     MX
L_8AD011:
    ASL                             ; $8AD011  0A           MX
L_8AD012:
    ASL                             ; $8AD012  0A           MX
L_8AD013:
    ASL                             ; $8AD013  0A           MX
L_8AD014:
    ASL                             ; $8AD014  0A           MX
L_8AD015:
    TAX                             ; $8AD015  AA           MX
L_8AD016:
    PHY                             ; $8AD016  5A           MX
L_8AD017:
    LDA #$F0F0                      ; $8AD017  A9 F0 F0     MX
L_8AD01A:
    STA $0000AA                     ; $8AD01A  8F AA 00 00  MX
L_8AD01E:
    PEA $D02A                       ; $8AD01E  F4 2A D0     MX
L_8AD021:
    PHX                             ; $8AD021  DA           MX
L_8AD022:
    LDA $0000F0                     ; $8AD022  AF F0 00 00  MX
L_8AD026:
    ASL                             ; $8AD026  0A           MX
L_8AD027:
    TAX                             ; $8AD027  AA           MX
L_8AD028:
    JMP ($D076,X)                   ; $8AD028  7C 76 D0     MX
L_8AD02B:
    PLY                             ; $8AD02B  7A           MX
L_8AD02C:
    INC $00A4                       ; $8AD02C  EE A4 00     MX
L_8AD02F:
    BRA L_8AD03A                    ; $8AD02F  80 09        MX
L_8AD031:
    PLB                             ; $8AD031  AB           MX
L_8AD032:
    INC $00A4                       ; $8AD032  EE A4 00     MX
L_8AD035:
    LDA $0000A4                     ; $8AD035  AF A4 00 00  MX
L_8AD039:
    RTS                             ; $8AD039  60           MX
L_8AD03A:
    LDA ($A4)                       ; $8AD03A  B2 A4        MX
L_8AD03C:
    AND #$00FF                      ; $8AD03C  29 FF 00     MX
L_8AD03F:
    BEQ L_8AD031                    ; $8AD03F  F0 F0        MX
L_8AD041:
    CMP #$0005                      ; $8AD041  C9 05 00     MX
L_8AD044:
    BCS L_8AD04D                    ; $8AD044  B0 07        MX
    DEC                             ; $8AD046  3A           MX
    STA $0000F0                     ; $8AD047  8F F0 00 00  MX
    BRA L_8AD02C                    ; $8AD04B  80 DF        MX
L_8AD04D:
    SEC                             ; $8AD04D  38           MX
L_8AD04E:
    SBC #$0020                      ; $8AD04E  E9 20 00     MX
L_8AD051:
    ASL                             ; $8AD051  0A           MX
L_8AD052:
    ASL                             ; $8AD052  0A           MX
L_8AD053:
    ASL                             ; $8AD053  0A           MX
L_8AD054:
    ASL                             ; $8AD054  0A           MX
L_8AD055:
    TAX                             ; $8AD055  AA           MX
L_8AD056:
    LDA #$0F0F                      ; $8AD056  A9 0F 0F     MX
L_8AD059:
    STA $0000AA                     ; $8AD059  8F AA 00 00  MX
L_8AD05D:
    PEA $D069                       ; $8AD05D  F4 69 D0     MX
L_8AD060:
    PHX                             ; $8AD060  DA           MX
L_8AD061:
    LDA $0000F0                     ; $8AD061  AF F0 00 00  MX
L_8AD065:
    ASL                             ; $8AD065  0A           MX
L_8AD066:
    TAX                             ; $8AD066  AA           MX
L_8AD067:
    JMP ($D076,X)                   ; $8AD067  7C 76 D0     MX
L_8AD06A:
    TYA                             ; $8AD06A  98           MX
L_8AD06B:
    CLC                             ; $8AD06B  18           MX
L_8AD06C:
    ADC #$0010                      ; $8AD06C  69 10 00     MX
L_8AD06F:
    TAY                             ; $8AD06F  A8           MX
L_8AD070:
    INC $00A4                       ; $8AD070  EE A4 00     MX
L_8AD073:
    JMP L_8ACFFA                    ; $8AD073  4C FA CF     MX
    db $7E,$D0,$9C,$D0,$CD,$D0,$FF,$D0                                 ; $8AD076
L_8AD07E:
    PLX                             ; $8AD07E  FA           MX
    PHX                             ; $8AD07F  DA           MX
    LDA #$0008                      ; $8AD080  A9 08 00     MX
    STA $00F2                       ; $8AD083  8D F2 00     MX
L_8AD086:
    LDA $0DF961,X                   ; $8AD086  BF 61 F9 0D  MX
    AND $00AA                       ; $8AD08A  2D AA 00     MX
    ORA [$A6],Y                     ; $8AD08D  17 A6        MX
    STA [$A6],Y                     ; $8AD08F  97 A6        MX
    INY                             ; $8AD091  C8           MX
    INY                             ; $8AD092  C8           MX
    INX                             ; $8AD093  E8           MX
    INX                             ; $8AD094  E8           MX
    DEC $00F2                       ; $8AD095  CE F2 00     MX
    BNE L_8AD086                    ; $8AD098  D0 EC        MX
    PLX                             ; $8AD09A  FA           MX
    RTS                             ; $8AD09B  60           MX
L_8AD09C:
    PLX                             ; $8AD09C  FA           MX
L_8AD09D:
    PHX                             ; $8AD09D  DA           MX
L_8AD09E:
    LDA #$0008                      ; $8AD09E  A9 08 00     MX
L_8AD0A1:
    STA $00F2                       ; $8AD0A1  8D F2 00     MX
L_8AD0A4:
    LDA $0DF961,X                   ; $8AD0A4  BF 61 F9 0D  MX
L_8AD0A8:
    AND $00AA                       ; $8AD0A8  2D AA 00     MX
L_8AD0AB:
    PHA                             ; $8AD0AB  48           MX
L_8AD0AC:
    ORA [$A6],Y                     ; $8AD0AC  17 A6        MX
L_8AD0AE:
    STA [$A6],Y                     ; $8AD0AE  97 A6        MX
L_8AD0B0:
    TYA                             ; $8AD0B0  98           MX
L_8AD0B1:
    CLC                             ; $8AD0B1  18           MX
L_8AD0B2:
    ADC #$0010                      ; $8AD0B2  69 10 00     MX
L_8AD0B5:
    TAY                             ; $8AD0B5  A8           MX
L_8AD0B6:
    PLA                             ; $8AD0B6  68           MX
L_8AD0B7:
    AND #$00FF                      ; $8AD0B7  29 FF 00     MX
L_8AD0BA:
    ORA [$A6],Y                     ; $8AD0BA  17 A6        MX
L_8AD0BC:
    STA [$A6],Y                     ; $8AD0BC  97 A6        MX
L_8AD0BE:
    TYA                             ; $8AD0BE  98           MX
L_8AD0BF:
    SEC                             ; $8AD0BF  38           MX
L_8AD0C0:
    SBC #$000E                      ; $8AD0C0  E9 0E 00     MX
L_8AD0C3:
    TAY                             ; $8AD0C3  A8           MX
L_8AD0C4:
    INX                             ; $8AD0C4  E8           MX
L_8AD0C5:
    INX                             ; $8AD0C5  E8           MX
L_8AD0C6:
    DEC $00F2                       ; $8AD0C6  CE F2 00     MX
L_8AD0C9:
    BNE L_8AD0A4                    ; $8AD0C9  D0 D9        MX
L_8AD0CB:
    PLX                             ; $8AD0CB  FA           MX
L_8AD0CC:
    RTS                             ; $8AD0CC  60           MX
L_8AD0CD:
    PLX                             ; $8AD0CD  FA           MX
    PHX                             ; $8AD0CE  DA           MX
    LDA #$0008                      ; $8AD0CF  A9 08 00     MX
    STA $00F2                       ; $8AD0D2  8D F2 00     MX
L_8AD0D5:
    LDA $0DF961,X                   ; $8AD0D5  BF 61 F9 0D  MX
    AND $00AA                       ; $8AD0D9  2D AA 00     MX
    PHA                             ; $8AD0DC  48           MX
    ORA [$A6],Y                     ; $8AD0DD  17 A6        MX
    STA [$A6],Y                     ; $8AD0DF  97 A6        MX
    TYA                             ; $8AD0E1  98           MX
    CLC                             ; $8AD0E2  18           MX
    ADC #$0010                      ; $8AD0E3  69 10 00     MX
    TAY                             ; $8AD0E6  A8           MX
    PLA                             ; $8AD0E7  68           MX
    AND #$00FF                      ; $8AD0E8  29 FF 00     MX
    XBA                             ; $8AD0EB  EB           MX
    ORA [$A6],Y                     ; $8AD0EC  17 A6        MX
    STA [$A6],Y                     ; $8AD0EE  97 A6        MX
    TYA                             ; $8AD0F0  98           MX
    SEC                             ; $8AD0F1  38           MX
    SBC #$000E                      ; $8AD0F2  E9 0E 00     MX
    TAY                             ; $8AD0F5  A8           MX
    INX                             ; $8AD0F6  E8           MX
    INX                             ; $8AD0F7  E8           MX
    DEC $00F2                       ; $8AD0F8  CE F2 00     MX
    BNE L_8AD0D5                    ; $8AD0FB  D0 D8        MX
    PLX                             ; $8AD0FD  FA           MX
    RTS                             ; $8AD0FE  60           MX
L_8AD0FF:
    PLX                             ; $8AD0FF  FA           MX
    PHX                             ; $8AD100  DA           MX
    LDA #$0008                      ; $8AD101  A9 08 00     MX
    STA $00F2                       ; $8AD104  8D F2 00     MX
L_8AD107:
    LDA $0DF961,X                   ; $8AD107  BF 61 F9 0D  MX
    AND $00AA                       ; $8AD10B  2D AA 00     MX
    PHA                             ; $8AD10E  48           MX
    ORA [$A6],Y                     ; $8AD10F  17 A6        MX
    STA [$A6],Y                     ; $8AD111  97 A6        MX
    TYA                             ; $8AD113  98           MX
    CLC                             ; $8AD114  18           MX
    ADC #$0010                      ; $8AD115  69 10 00     MX
    TAY                             ; $8AD118  A8           MX
    PLA                             ; $8AD119  68           MX
    AND #$00FF                      ; $8AD11A  29 FF 00     MX
    STA $00F4                       ; $8AD11D  8D F4 00     MX
    XBA                             ; $8AD120  EB           MX
    ORA $00F4                       ; $8AD121  0D F4 00     MX
    ORA [$A6],Y                     ; $8AD124  17 A6        MX
    STA [$A6],Y                     ; $8AD126  97 A6        MX
    TYA                             ; $8AD128  98           MX
    SEC                             ; $8AD129  38           MX
    SBC #$000E                      ; $8AD12A  E9 0E 00     MX
    TAY                             ; $8AD12D  A8           MX
    INX                             ; $8AD12E  E8           MX
    INX                             ; $8AD12F  E8           MX
    DEC $00F2                       ; $8AD130  CE F2 00     MX
    BNE L_8AD107                    ; $8AD133  D0 D2        MX
    PLX                             ; $8AD135  FA           MX
    RTS                             ; $8AD136  60           MX
L_8AD137:
    PHX                             ; $8AD137  DA           MX
    PHY                             ; $8AD138  5A           MX
    LDX #$0000                      ; $8AD139  A2 00 00     MX
    STZ $00A4                       ; $8AD13C  9C A4 00     MX
    CMP #$0100                      ; $8AD13F  C9 00 01     MX
    BCC L_8AD147                    ; $8AD142  90 03        MX
    LDA #$00FF                      ; $8AD144  A9 FF 00     MX
L_8AD147:
    LDY #$0064                      ; $8AD147  A0 64 00     MX
    JSR L_8AD172                    ; $8AD14A  20 72 D1     MX
    LDY #$000A                      ; $8AD14D  A0 0A 00     MX
    JSR L_8AD172                    ; $8AD150  20 72 D1     MX
    INC $00A4                       ; $8AD153  EE A4 00     MX
    LDY #$0001                      ; $8AD156  A0 01 00     MX
    JSR L_8AD172                    ; $8AD159  20 72 D1     MX
    LDA #$0000                      ; $8AD15C  A9 00 00     MX
    STA $001C04,X                   ; $8AD15F  9F 04 1C 00  MX
    PLY                             ; $8AD163  7A           MX
    PLX                             ; $8AD164  FA           MX
    PEA $0000                       ; $8AD165  F4 00 00     MX
    PLB                             ; $8AD168  AB           MX
    LDA #$1C04                      ; $8AD169  A9 04 1C     MX
    STA $00A4                       ; $8AD16C  8D A4 00     MX
    JMP L_8ACFC4                    ; $8AD16F  4C C4 CF     MX
L_8AD172:
    STY $00A6                       ; $8AD172  8C A6 00     MX
    STZ $00A8                       ; $8AD175  9C A8 00     MX
L_8AD178:
    SEC                             ; $8AD178  38           MX
    SBC $00A6                       ; $8AD179  ED A6 00     MX
    BCC L_8AD183                    ; $8AD17C  90 05        MX
    INC $00A8                       ; $8AD17E  EE A8 00     MX
    BRA L_8AD178                    ; $8AD181  80 F5        MX
L_8AD183:
    CLC                             ; $8AD183  18           MX
    ADC $00A6                       ; $8AD184  6D A6 00     MX
    PHA                             ; $8AD187  48           MX
    LDA $00A8                       ; $8AD188  AD A8 00     MX
    BNE L_8AD19A                    ; $8AD18B  D0 0D        MX
    LDA $00A4                       ; $8AD18D  AD A4 00     MX
    BNE L_8AD197                    ; $8AD190  D0 05        MX
    LDA #$FFF0                      ; $8AD192  A9 F0 FF     MX
    BRA L_8AD19D                    ; $8AD195  80 06        MX
L_8AD197:
    LDA #$0000                      ; $8AD197  A9 00 00     MX
L_8AD19A:
    INC $00A4                       ; $8AD19A  EE A4 00     MX
L_8AD19D:
    SEP #$20                        ; $8AD19D  E2 20        MX
    CLC                             ; $8AD19F  18           mX
    ADC #$30                        ; $8AD1A0  69 30        mX
    STA $001C04,X                   ; $8AD1A2  9F 04 1C 00  mX
    REP #$20                        ; $8AD1A6  C2 20        mX
    INX                             ; $8AD1A8  E8           MX
    PLA                             ; $8AD1A9  68           MX
    RTS                             ; $8AD1AA  60           MX
L_8AD1AB:
    PHX                             ; $8AD1AB  DA           MX
    PHY                             ; $8AD1AC  5A           MX
    LDX #$0000                      ; $8AD1AD  A2 00 00     MX
    CMP #$03E9                      ; $8AD1B0  C9 E9 03     MX
    BCC L_8AD1B8                    ; $8AD1B3  90 03        MX
    LDA #$03E8                      ; $8AD1B5  A9 E8 03     MX
L_8AD1B8:
    LDY #$03E8                      ; $8AD1B8  A0 E8 03     MX
    JSR L_8AD1F3                    ; $8AD1BB  20 F3 D1     MX
    PHA                             ; $8AD1BE  48           MX
    SEP #$20                        ; $8AD1BF  E2 20        MX
    LDA #$2E                        ; $8AD1C1  A9 2E        mX
    STA $001C04,X                   ; $8AD1C3  9F 04 1C 00  mX
    INX                             ; $8AD1C7  E8           mX
    REP #$20                        ; $8AD1C8  C2 20        mX
    PLA                             ; $8AD1CA  68           MX
    LDY #$0064                      ; $8AD1CB  A0 64 00     MX
    JSR L_8AD1F3                    ; $8AD1CE  20 F3 D1     MX
    LDY #$000A                      ; $8AD1D1  A0 0A 00     MX
    JSR L_8AD1F3                    ; $8AD1D4  20 F3 D1     MX
    LDY #$0001                      ; $8AD1D7  A0 01 00     MX
    JSR L_8AD1F3                    ; $8AD1DA  20 F3 D1     MX
    LDA #$0000                      ; $8AD1DD  A9 00 00     MX
    STA $001C04,X                   ; $8AD1E0  9F 04 1C 00  MX
    PLY                             ; $8AD1E4  7A           MX
    PLX                             ; $8AD1E5  FA           MX
    PEA $0000                       ; $8AD1E6  F4 00 00     MX
    PLB                             ; $8AD1E9  AB           MX
    LDA #$1C04                      ; $8AD1EA  A9 04 1C     MX
    STA $00A4                       ; $8AD1ED  8D A4 00     MX
    JMP L_8ACFC4                    ; $8AD1F0  4C C4 CF     MX
L_8AD1F3:
    STY $00A6                       ; $8AD1F3  8C A6 00     MX
    STZ $00A8                       ; $8AD1F6  9C A8 00     MX
L_8AD1F9:
    SEC                             ; $8AD1F9  38           MX
    SBC $00A6                       ; $8AD1FA  ED A6 00     MX
    BCC L_8AD204                    ; $8AD1FD  90 05        MX
    INC $00A8                       ; $8AD1FF  EE A8 00     MX
    BRA L_8AD1F9                    ; $8AD202  80 F5        MX
L_8AD204:
    CLC                             ; $8AD204  18           MX
    ADC $00A6                       ; $8AD205  6D A6 00     MX
    PHA                             ; $8AD208  48           MX
    SEP #$20                        ; $8AD209  E2 20        MX
    LDA $00A8                       ; $8AD20B  AD A8 00     mX
    CLC                             ; $8AD20E  18           mX
    ADC #$30                        ; $8AD20F  69 30        mX
    STA $001C04,X                   ; $8AD211  9F 04 1C 00  mX
    REP #$20                        ; $8AD215  C2 20        mX
    INX                             ; $8AD217  E8           MX
    PLA                             ; $8AD218  68           MX
    RTS                             ; $8AD219  60           MX
L_8AD21A:
    LDX #$0000                      ; $8AD21A  A2 00 00     MX
L_8AD21D:
    LDA $1C02                       ; $8AD21D  AD 02 1C     MX
L_8AD220:
    BIT #$0001                      ; $8AD220  89 01 00     MX
L_8AD223:
    BEQ L_8AD22A                    ; $8AD223  F0 05        MX
L_8AD225:
    AND #$FFFE                      ; $8AD225  29 FE FF     MX
L_8AD228:
    BRA L_8AD260                    ; $8AD228  80 36        MX
L_8AD22A:
    LDX #$0002                      ; $8AD22A  A2 02 00     MX
L_8AD22D:
    BIT #$0002                      ; $8AD22D  89 02 00     MX
L_8AD230:
    BEQ L_8AD237                    ; $8AD230  F0 05        MX
    AND #$FFFD                      ; $8AD232  29 FD FF     MX
    BRA L_8AD260                    ; $8AD235  80 29        MX
L_8AD237:
    LDX #$0004                      ; $8AD237  A2 04 00     MX
L_8AD23A:
    BIT #$0004                      ; $8AD23A  89 04 00     MX
L_8AD23D:
    BEQ L_8AD244                    ; $8AD23D  F0 05        MX
    AND #$FFFB                      ; $8AD23F  29 FB FF     MX
    BRA L_8AD260                    ; $8AD242  80 1C        MX
L_8AD244:
    LDX #$0006                      ; $8AD244  A2 06 00     MX
L_8AD247:
    BIT #$0008                      ; $8AD247  89 08 00     MX
L_8AD24A:
    BEQ L_8AD251                    ; $8AD24A  F0 05        MX
    AND #$FFF7                      ; $8AD24C  29 F7 FF     MX
    BRA L_8AD260                    ; $8AD24F  80 0F        MX
L_8AD251:
    LDA $172C                       ; $8AD251  AD 2C 17     MX
L_8AD254:
    BEQ L_8AD25F                    ; $8AD254  F0 09        MX
L_8AD256:
    LDA #$0007                      ; $8AD256  A9 07 00     MX
L_8AD259:
    STA $1667                       ; $8AD259  8D 67 16     MX
L_8AD25C:
    STZ $172C                       ; $8AD25C  9C 2C 17     MX
L_8AD25F:
    RTS                             ; $8AD25F  60           MX
L_8AD260:
    STA $1C02                       ; $8AD260  8D 02 1C     MX
L_8AD263:
    LDA $0D9BF7,X                   ; $8AD263  BF F7 9B 0D  MX
L_8AD267:
    ASL                             ; $8AD267  0A           MX
L_8AD268:
    ASL                             ; $8AD268  0A           MX
L_8AD269:
    ASL                             ; $8AD269  0A           MX
L_8AD26A:
    ASL                             ; $8AD26A  0A           MX
L_8AD26B:
    ADC #$2000                      ; $8AD26B  69 00 20     MX
L_8AD26E:
    STA $001687                     ; $8AD26E  8F 87 16 00  MX
L_8AD272:
    LDA $0BFFAB,X                   ; $8AD272  BF AB FF 0B  MX
L_8AD276:
    CLC                             ; $8AD276  18           MX
L_8AD277:
    ADC #$C740                      ; $8AD277  69 40 C7     MX
L_8AD27A:
    STA $001689                     ; $8AD27A  8F 89 16 00  MX
L_8AD27E:
    SEP #$20                        ; $8AD27E  E2 20        MX
L_8AD280:
    LDA #$7E                        ; $8AD280  A9 7E        mX
L_8AD282:
    STA $00168F                     ; $8AD282  8F 8F 16 00  mX
L_8AD286:
    REP #$20                        ; $8AD286  C2 20        mX
L_8AD288:
    LDA #$0008                      ; $8AD288  A9 08 00     MX
L_8AD28B:
    STA $1667                       ; $8AD28B  8D 67 16     MX
L_8AD28E:
    RTS                             ; $8AD28E  60           MX
    db $34,$00,$34,$00,$34,$00,$34,$00,$47,$00,$47,$00,$47,$00,$47,$00 ; $8AD28F
    db $5A,$00,$5A,$00,$5A,$00,$5A,$00,$6D,$00,$6D,$00,$6D,$00,$6D,$00 ; $8AD29F
    db $80,$00,$80,$00,$80,$00,$80,$00,$93,$00,$93,$00,$93,$00,$93,$00 ; $8AD2AF
    db $A6,$00,$A6,$00,$A6,$00,$A6,$00,$03,$00,$10,$00,$1D,$00,$2A,$00 ; $8AD2BF
    db $03,$00,$10,$00,$1D,$00,$2A,$00,$03,$00,$10,$00,$1D,$00,$2A,$00 ; $8AD2CF
    db $03,$00,$10,$00,$1D,$00,$2A,$00,$03,$00,$10,$00,$1D,$00,$2A,$00 ; $8AD2DF
    db $03,$00,$10,$00,$1D,$00,$2A,$00,$03,$00,$10,$00,$1D,$00,$2A,$00 ; $8AD2EF
L_8AD2FF:
    LDY #$0000                      ; $8AD2FF  A0 00 00     MX
L_8AD302:
    LDA $1669,X                     ; $8AD302  BD 69 16     MX
L_8AD305:
    BIT #$0200                      ; $8AD305  89 00 02     MX
L_8AD308:
    BEQ L_8AD318                    ; $8AD308  F0 0E        MX
    INY                             ; $8AD30A  C8           MX
    DEC $16C4,X                     ; $8AD30B  DE C4 16     MX  grid_cursor
    BPL L_8AD368                    ; $8AD30E  10 58        MX
    LDA #$001B                      ; $8AD310  A9 1B 00     MX
    STA $16C4,X                     ; $8AD313  9D C4 16     MX  grid_cursor
    BRA L_8AD368                    ; $8AD316  80 50        MX
L_8AD318:
    BIT #$0100                      ; $8AD318  89 00 01     MX
L_8AD31B:
    BEQ L_8AD331                    ; $8AD31B  F0 14        MX
L_8AD31D:
    INY                             ; $8AD31D  C8           MX
L_8AD31E:
    INC $16C4,X                     ; $8AD31E  FE C4 16     MX  grid_cursor
L_8AD321:
    LDA $16C4,X                     ; $8AD321  BD C4 16     MX  grid_cursor
L_8AD324:
    CMP #$001C                      ; $8AD324  C9 1C 00     MX
L_8AD327:
    BNE L_8AD368                    ; $8AD327  D0 3F        MX
    LDA #$0000                      ; $8AD329  A9 00 00     MX
    STA $16C4,X                     ; $8AD32C  9D C4 16     MX  grid_cursor
    BRA L_8AD368                    ; $8AD32F  80 37        MX
L_8AD331:
    BIT #$0800                      ; $8AD331  89 00 08     MX
L_8AD334:
    BEQ L_8AD34C                    ; $8AD334  F0 16        MX
L_8AD336:
    INY                             ; $8AD336  C8           MX
L_8AD337:
    LDA $16C4,X                     ; $8AD337  BD C4 16     MX  grid_cursor
L_8AD33A:
    SEC                             ; $8AD33A  38           MX
L_8AD33B:
    SBC #$0004                      ; $8AD33B  E9 04 00     MX
L_8AD33E:
    STA $16C4,X                     ; $8AD33E  9D C4 16     MX  grid_cursor
L_8AD341:
    BPL L_8AD368                    ; $8AD341  10 25        MX
L_8AD343:
    CLC                             ; $8AD343  18           MX
L_8AD344:
    ADC #$001C                      ; $8AD344  69 1C 00     MX
L_8AD347:
    STA $16C4,X                     ; $8AD347  9D C4 16     MX  grid_cursor
L_8AD34A:
    BRA L_8AD368                    ; $8AD34A  80 1C        MX
L_8AD34C:
    BIT #$0400                      ; $8AD34C  89 00 04     MX
L_8AD34F:
    BEQ L_8AD368                    ; $8AD34F  F0 17        MX
L_8AD351:
    INY                             ; $8AD351  C8           MX
L_8AD352:
    LDA $16C4,X                     ; $8AD352  BD C4 16     MX  grid_cursor
L_8AD355:
    CLC                             ; $8AD355  18           MX
L_8AD356:
    ADC #$0004                      ; $8AD356  69 04 00     MX
L_8AD359:
    STA $16C4,X                     ; $8AD359  9D C4 16     MX  grid_cursor
L_8AD35C:
    CMP #$001C                      ; $8AD35C  C9 1C 00     MX
L_8AD35F:
    BCC L_8AD368                    ; $8AD35F  90 07        MX
    SEC                             ; $8AD361  38           MX
    SBC #$001C                      ; $8AD362  E9 1C 00     MX
    STA $16C4,X                     ; $8AD365  9D C4 16     MX  grid_cursor
L_8AD368:
    CPY #$0000                      ; $8AD368  C0 00 00     MX
L_8AD36B:
    BEQ L_8AD383                    ; $8AD36B  F0 16        MX
L_8AD36D:
    LDA $16BC,X                     ; $8AD36D  BD BC 16     MX
L_8AD370:
    AND #$00FF                      ; $8AD370  29 FF 00     MX
L_8AD373:
    STA $16BC,X                     ; $8AD373  9D BC 16     MX
L_8AD376:
    PHA                             ; $8AD376  48           MX
L_8AD377:
    PHX                             ; $8AD377  DA           MX
L_8AD378:
    PHY                             ; $8AD378  5A           MX
L_8AD379:
    LDA #$0041                      ; $8AD379  A9 41 00     MX
L_8AD37C:
    JSL L_BDFE18                    ; $8AD37C  22 18 FE BD  MX
L_8AD380:
    PLY                             ; $8AD380  7A           MX
L_8AD381:
    PLX                             ; $8AD381  FA           MX
L_8AD382:
    PLA                             ; $8AD382  68           MX
L_8AD383:
    LDA $16C4,X                     ; $8AD383  BD C4 16     MX  grid_cursor
L_8AD386:
    CMP #$001B                      ; $8AD386  C9 1B 00     MX
L_8AD389:
    BNE L_8AD38E                    ; $8AD389  D0 03        MX
    LDA #$FFFF                      ; $8AD38B  A9 FF FF     MX
L_8AD38E:
    STA $00A4                       ; $8AD38E  8D A4 00     MX
L_8AD391:
    RTS                             ; $8AD391  60           MX
L_8AD392:
    LDA $0BFFAB,X                   ; $8AD392  BF AB FF 0B  MX
    JSR L_8ACF69                    ; $8AD396  20 69 CF     MX
    PHX                             ; $8AD399  DA           MX
    LDA $1724,X                     ; $8AD39A  BD 24 17     MX  player_record
    TAX                             ; $8AD39D  AA           MX
    JSR encode_password             ; $8AD39E  20 F0 D8     MX
    PHX                             ; $8AD3A1  DA           MX
    LDA #$D035                      ; $8AD3A2  A9 35 D0     MX
    LDX #$0000                      ; $8AD3A5  A2 00 00     MX
    LDY #$0000                      ; $8AD3A8  A0 00 00     MX
    JSR L_8ACFBD                    ; $8AD3AB  20 BD CF     MX
    LDX #$0000                      ; $8AD3AE  A2 00 00     MX
    LDY #$0002                      ; $8AD3B1  A0 02 00     MX
    JSR L_8ACFBD                    ; $8AD3B4  20 BD CF     MX
    LDX #$0000                      ; $8AD3B7  A2 00 00     MX
    LDY #$0005                      ; $8AD3BA  A0 05 00     MX
    JSR L_8ACFBD                    ; $8AD3BD  20 BD CF     MX
    LDX #$0000                      ; $8AD3C0  A2 00 00     MX
    LDY #$0007                      ; $8AD3C3  A0 07 00     MX
    JSR L_8ACFBD                    ; $8AD3C6  20 BD CF     MX
    LDX #$0000                      ; $8AD3C9  A2 00 00     MX
    LDY #$0008                      ; $8AD3CC  A0 08 00     MX
    JSR L_8ACFBD                    ; $8AD3CF  20 BD CF     MX
    LDX #$0000                      ; $8AD3D2  A2 00 00     MX
    LDY #$000A                      ; $8AD3D5  A0 0A 00     MX
    JSR L_8ACFBD                    ; $8AD3D8  20 BD CF     MX
    LDA #$0001                      ; $8AD3DB  A9 01 00     MX
    STA $00F0                       ; $8AD3DE  8D F0 00     MX
    PLX                             ; $8AD3E1  FA           MX
    LDA $001891,X                   ; $8AD3E2  BF 91 18 00  MX  record_rank
    AND #$00FF                      ; $8AD3E6  29 FF 00     MX
    PHX                             ; $8AD3E9  DA           MX
    LDX #$0008                      ; $8AD3EA  A2 08 00     MX
    LDY #$0000                      ; $8AD3ED  A0 00 00     MX
    JSR L_8AD137                    ; $8AD3F0  20 37 D1     MX
    LDA #$0003                      ; $8AD3F3  A9 03 00     MX
    STA $00F0                       ; $8AD3F6  8D F0 00     MX
    PLX                             ; $8AD3F9  FA           MX
    LDA $00188E,X                   ; $8AD3FA  BF 8E 18 00  MX  record_wins
    AND #$00FF                      ; $8AD3FE  29 FF 00     MX
    PHX                             ; $8AD401  DA           MX
    LDX #$0000                      ; $8AD402  A2 00 00     MX
    LDY #$0003                      ; $8AD405  A0 03 00     MX
    JSR L_8AD137                    ; $8AD408  20 37 D1     MX
    PLX                             ; $8AD40B  FA           MX
    LDA $00188F,X                   ; $8AD40C  BF 8F 18 00  MX  record_losses
    AND #$00FF                      ; $8AD410  29 FF 00     MX
    PHX                             ; $8AD413  DA           MX
    LDX #$0007                      ; $8AD414  A2 07 00     MX
    LDY #$0003                      ; $8AD417  A0 03 00     MX
    JSR L_8AD137                    ; $8AD41A  20 37 D1     MX
    PLX                             ; $8AD41D  FA           MX
    LDA $00188E,X                   ; $8AD41E  BF 8E 18 00  MX  record_wins
    AND #$00FF                      ; $8AD422  29 FF 00     MX
    STA $00A4                       ; $8AD425  8D A4 00     MX
    STA $00EA                       ; $8AD428  8D EA 00     MX
    LDA #$03E8                      ; $8AD42B  A9 E8 03     MX
    STA $00EE                       ; $8AD42E  8D EE 00     MX
    JSL $1AB7E7                     ; $8AD431  22 E7 B7 1A  MX
    LDA $00188F,X                   ; $8AD435  BF 8F 18 00  MX  record_losses
    AND #$00FF                      ; $8AD439  29 FF 00     MX
    CLC                             ; $8AD43C  18           MX
    ADC $00A4                       ; $8AD43D  6D A4 00     MX
    STA $00EE                       ; $8AD440  8D EE 00     MX
    LDA $00F2                       ; $8AD443  AD F2 00     MX
    STA $00EA                       ; $8AD446  8D EA 00     MX
    LDA $00F4                       ; $8AD449  AD F4 00     MX
    STA $00EC                       ; $8AD44C  8D EC 00     MX
    JSL $1AACEB                     ; $8AD44F  22 EB AC 1A  MX
    LDA #$0000                      ; $8AD453  A9 00 00     MX
    STA $00F0                       ; $8AD456  8D F0 00     MX
    LDA $00EA                       ; $8AD459  AD EA 00     MX
    PHX                             ; $8AD45C  DA           MX
    LDX #$0007                      ; $8AD45D  A2 07 00     MX
    LDY #$0005                      ; $8AD460  A0 05 00     MX
    JSR L_8AD1AB                    ; $8AD463  20 AB D1     MX
    PLX                             ; $8AD466  FA           MX
    LDA #$0002                      ; $8AD467  A9 02 00     MX
    STA $00F0                       ; $8AD46A  8D F0 00     MX
    LDA $001890,X                   ; $8AD46D  BF 90 18 00  MX  record_streak
    AND #$00FF                      ; $8AD471  29 FF 00     MX
    PHX                             ; $8AD474  DA           MX
    LDX #$0008                      ; $8AD475  A2 08 00     MX
    LDY #$0008                      ; $8AD478  A0 08 00     MX
    JSR L_8AD137                    ; $8AD47B  20 37 D1     MX
    PLX                             ; $8AD47E  FA           MX
    PLX                             ; $8AD47F  FA           MX
    PHX                             ; $8AD480  DA           MX
    SEP #$20                        ; $8AD481  E2 20        MX
    LDY #$0000                      ; $8AD483  A0 00 00     mX
L_8AD486:
    LDA $1C4F,Y                     ; $8AD486  B9 4F 1C     mX  password_work
    STA $16ED,X                     ; $8AD489  9D ED 16     mX
    LDA $1C50,Y                     ; $8AD48C  B9 50 1C     mX
    STA $16EC,X                     ; $8AD48F  9D EC 16     mX  password_chars
    INX                             ; $8AD492  E8           mX
    INX                             ; $8AD493  E8           mX
    INX                             ; $8AD494  E8           mX
    INX                             ; $8AD495  E8           mX
    INX                             ; $8AD496  E8           mX
    INX                             ; $8AD497  E8           mX
    INX                             ; $8AD498  E8           mX
    INX                             ; $8AD499  E8           mX
    INY                             ; $8AD49A  C8           mX
    INY                             ; $8AD49B  C8           mX
    CPY #$000E                      ; $8AD49C  C0 0E 00     mX
    BNE L_8AD486                    ; $8AD49F  D0 E5        mX
    REP #$20                        ; $8AD4A1  C2 20        mX
    PLX                             ; $8AD4A3  FA           MX
    RTS                             ; $8AD4A4  60           MX
L_8AD4A5:
    LDY #$0000                      ; $8AD4A5  A0 00 00     MX
L_8AD4A8:
    LDA $16BC,Y                     ; $8AD4A8  B9 BC 16     MX
L_8AD4AB:
    AND #$005F                      ; $8AD4AB  29 5F 00     MX
L_8AD4AE:
    CMP #$0007                      ; $8AD4AE  C9 07 00     MX
L_8AD4B1:
    BNE L_8AD4EA                    ; $8AD4B1  D0 37        MX
L_8AD4B3:
    LDX #$0000                      ; $8AD4B3  A2 00 00     MX
L_8AD4B6:
    SEP #$20                        ; $8AD4B6  E2 20        MX
L_8AD4B8:
    LDA $16CC,Y                     ; $8AD4B8  B9 CC 16     mX  initial1
L_8AD4BB:
    CMP $29FEB0,X                   ; $8AD4BB  DF B0 FE 29  mX
L_8AD4BF:
    BNE L_8AD4E1                    ; $8AD4BF  D0 20        mX
    LDA $16D4,Y                     ; $8AD4C1  B9 D4 16     mX
    CMP $29FEB1,X                   ; $8AD4C4  DF B1 FE 29  mX
    BNE L_8AD4E1                    ; $8AD4C8  D0 17        mX
    LDA $16DC,Y                     ; $8AD4CA  B9 DC 16     mX
    CMP $29FEB2,X                   ; $8AD4CD  DF B2 FE 29  mX
    BNE L_8AD4E1                    ; $8AD4D1  D0 0E        mX
    LDA $29FEB3,X                   ; $8AD4D3  BF B3 FE 29  mX
    STA $1CD9,Y                     ; $8AD4D7  99 D9 1C     mX
    LDA #$00                        ; $8AD4DA  A9 00        mX
    STA $1CDA,Y                     ; $8AD4DC  99 DA 1C     mX
    BRA L_8AD4EA                    ; $8AD4DF  80 09        mX
L_8AD4E1:
    INX                             ; $8AD4E1  E8           mX
L_8AD4E2:
    INX                             ; $8AD4E2  E8           mX
L_8AD4E3:
    INX                             ; $8AD4E3  E8           mX
L_8AD4E4:
    INX                             ; $8AD4E4  E8           mX
L_8AD4E5:
    CPX #$0030                      ; $8AD4E5  E0 30 00     mX
L_8AD4E8:
    BNE L_8AD4B8                    ; $8AD4E8  D0 CE        mX
L_8AD4EA:
    REP #$20                        ; $8AD4EA  C2 20        mX
L_8AD4EC:
    INY                             ; $8AD4EC  C8           MX
L_8AD4ED:
    INY                             ; $8AD4ED  C8           MX
L_8AD4EE:
    CPY #$0008                      ; $8AD4EE  C0 08 00     MX
L_8AD4F1:
    BEQ L_8AD4F6                    ; $8AD4F1  F0 03        MX
L_8AD4F3:
    JMP L_8AD4A8                    ; $8AD4F3  4C A8 D4     MX
L_8AD4F6:
    LDA $1C5D                       ; $8AD4F6  AD 5D 1C     MX
L_8AD4F9:
    BNE L_8AD507                    ; $8AD4F9  D0 0C        MX
L_8AD4FB:
    LDA $1CDB                       ; $8AD4FB  AD DB 1C     MX
L_8AD4FE:
    STA $1CDD                       ; $8AD4FE  8D DD 1C     MX
L_8AD501:
    LDA #$FFFF                      ; $8AD501  A9 FF FF     MX
L_8AD504:
    STA $1CDB                       ; $8AD504  8D DB 1C     MX
L_8AD507:
    RTS                             ; $8AD507  60           MX
L_8AD508:
    LDA #$0001                      ; $8AD508  A9 01 00     MX
    STA $1CCF                       ; $8AD50B  8D CF 1C     MX
    JMP L_8AC384                    ; $8AD50E  4C 84 C3     MX
L_8AD511:
    LDA $1C5D                       ; $8AD511  AD 5D 1C     MX
    BNE L_8AD530                    ; $8AD514  D0 1A        MX
    LDX #$0000                      ; $8AD516  A2 00 00     MX
L_8AD519:
    LDA $16D0,X                     ; $8AD519  BD D0 16     MX
    STA $16CE,X                     ; $8AD51C  9D CE 16     MX
    LDA #$FFFF                      ; $8AD51F  A9 FF FF     MX
    STA $16D0,X                     ; $8AD522  9D D0 16     MX
    TXA                             ; $8AD525  8A           MX
    CLC                             ; $8AD526  18           MX
    ADC #$0008                      ; $8AD527  69 08 00     MX
    TAX                             ; $8AD52A  AA           MX
    CPX #$0020                      ; $8AD52B  E0 20 00     MX
    BNE L_8AD519                    ; $8AD52E  D0 E9        MX
L_8AD530:
    LDX #$0000                      ; $8AD530  A2 00 00     MX
L_8AD533:
    LDA $16CC,X                     ; $8AD533  BD CC 16     MX  initial1
    BMI L_8AD5A8                    ; $8AD536  30 70        MX
    SEP #$20                        ; $8AD538  E2 20        MX
    LDA $16CC,X                     ; $8AD53A  BD CC 16     mX  initial1
    STA $00A4                       ; $8AD53D  8D A4 00     mX
    LDA $16D4,X                     ; $8AD540  BD D4 16     mX
    STA $00A5                       ; $8AD543  8D A5 00     mX
    LDA $16DC,X                     ; $8AD546  BD DC 16     mX
    STA $00A6                       ; $8AD549  8D A6 00     mX
    LDA #$00                        ; $8AD54C  A9 00        mX
    STA $00A7                       ; $8AD54E  8D A7 00     mX
    REP #$20                        ; $8AD551  C2 20        mX
    PHX                             ; $8AD553  DA           MX
    JSR find_record                 ; $8AD554  20 FF D6     MX
    PLX                             ; $8AD557  FA           MX
    BCS L_8AD5A8                    ; $8AD558  B0 4E        MX
    STA $1724,X                     ; $8AD55A  9D 24 17     MX  player_record
    JSR L_8AD392                    ; $8AD55D  20 92 D3     MX
    LDA $1724,X                     ; $8AD560  BD 24 17     MX  player_record
    PHX                             ; $8AD563  DA           MX
    TAX                             ; $8AD564  AA           MX
    JSR L_8AA33A                    ; $8AD565  20 3A A3     MX
    BCS L_8AD596                    ; $8AD568  B0 2C        MX
    TAX                             ; $8AD56A  AA           MX
    LDA #$0002                      ; $8AD56B  A9 02 00     MX
    STA $00F0                       ; $8AD56E  8D F0 00     MX
    LDA #$0000                      ; $8AD571  A9 00 00     MX
L_8AD574:
    DEX                             ; $8AD574  CA           MX
    BMI L_8AD57D                    ; $8AD575  30 06        MX
    CLC                             ; $8AD577  18           MX
    ADC #$000E                      ; $8AD578  69 0E 00     MX
    BRA L_8AD574                    ; $8AD57B  80 F7        MX
L_8AD57D:
    LDX #$0000                      ; $8AD57D  A2 00 00     MX
    LDY #$000F                      ; $8AD580  A0 0F 00     MX
    CLC                             ; $8AD583  18           MX
    ADC #$D14C                      ; $8AD584  69 4C D1     MX
    JSR L_8ACFBD                    ; $8AD587  20 BD CF     MX
    LDX #$0000                      ; $8AD58A  A2 00 00     MX
    LDY #$000E                      ; $8AD58D  A0 0E 00     MX
    LDA #$D13D                      ; $8AD590  A9 3D D1     MX
    JSR L_8ACFBD                    ; $8AD593  20 BD CF     MX
L_8AD596:
    PLX                             ; $8AD596  FA           MX
    LDA $0D9BF7,X                   ; $8AD597  BF F7 9B 0D  MX
    STA $00A4                       ; $8AD59B  8D A4 00     MX
    LDA $001D15,X                   ; $8AD59E  BF 15 1D 00  MX
    PHX                             ; $8AD5A2  DA           MX
    TAX                             ; $8AD5A3  AA           MX
    JSR L_8ACF7F                    ; $8AD5A4  20 7F CF     MX
    PLX                             ; $8AD5A7  FA           MX
L_8AD5A8:
    INX                             ; $8AD5A8  E8           MX
    INX                             ; $8AD5A9  E8           MX
    CPX #$0008                      ; $8AD5AA  E0 08 00     MX
    BEQ L_8AD5B2                    ; $8AD5AD  F0 03        MX
    JMP L_8AD533                    ; $8AD5AF  4C 33 D5     MX
L_8AD5B2:
    LDA #$3000                      ; $8AD5B2  A9 00 30     MX
    STA $2116                       ; $8AD5B5  8D 16 21     MX
    LDA #$1801                      ; $8AD5B8  A9 01 18     MX
    STA $4300                       ; $8AD5BB  8D 00 43     MX
    LDA #$C740                      ; $8AD5BE  A9 40 C7     MX
    STA $4302                       ; $8AD5C1  8D 02 43     MX
    LDA #$3800                      ; $8AD5C4  A9 00 38     MX
    STA $4305                       ; $8AD5C7  8D 05 43     MX
    SEP #$20                        ; $8AD5CA  E2 20        MX
    LDA #$7E                        ; $8AD5CC  A9 7E        mX
    STA $4304                       ; $8AD5CE  8D 04 43     mX
    LDA #$01                        ; $8AD5D1  A9 01        mX
    STA $420B                       ; $8AD5D3  8D 0B 42     mX
    REP #$20                        ; $8AD5D6  C2 20        mX
    SEP #$30                        ; $8AD5D8  E2 30        MX
    LDA #$80                        ; $8AD5DA  A9 80        mx
    STA $2116                       ; $8AD5DC  8D 16 21     mx
    LDA #$58                        ; $8AD5DF  A9 58        mx
    STA $2117                       ; $8AD5E1  8D 17 21     mx
    LDA #$01                        ; $8AD5E4  A9 01        mx
    STA $4300                       ; $8AD5E6  8D 00 43     mx
    LDA #$18                        ; $8AD5E9  A9 18        mx
    STA $4301                       ; $8AD5EB  8D 01 43     mx
    LDA #$00                        ; $8AD5EE  A9 00        mx
    STA $4302                       ; $8AD5F0  8D 02 43     mx
    LDA #$C3                        ; $8AD5F3  A9 C3        mx
    STA $4303                       ; $8AD5F5  8D 03 43     mx
    LDA #$7E                        ; $8AD5F8  A9 7E        mx
    STA $4304                       ; $8AD5FA  8D 04 43     mx
    LDA #$40                        ; $8AD5FD  A9 40        mx
    STA $4305                       ; $8AD5FF  8D 05 43     mx
    LDA #$04                        ; $8AD602  A9 04        mx
    STA $4306                       ; $8AD604  8D 06 43     mx
    LDA #$01                        ; $8AD607  A9 01        mx
    STA $420B                       ; $8AD609  8D 0B 42     mx
    REP #$30                        ; $8AD60C  C2 30        mx
    LDA #$0019                      ; $8AD60E  A9 19 00     MX
    STA $001665                     ; $8AD611  8F 65 16 00  MX
    RTS                             ; $8AD615  60           MX
L_8AD616:
    SEP #$20                        ; $8AD616  E2 20        MX
    LDA $00B2                       ; $8AD618  AD B2 00     mX
    CMP #$10                        ; $8AD61B  C9 10        mX
    BEQ L_8AD625                    ; $8AD61D  F0 06        mX
    STA $2100                       ; $8AD61F  8D 00 21     mX
    INC $00B2                       ; $8AD622  EE B2 00     mX
L_8AD625:
    REP #$20                        ; $8AD625  C2 20        mX
    JSR L_8AD6B7                    ; $8AD627  20 B7 D6     MX
    LDX #$0000                      ; $8AD62A  A2 00 00     MX
L_8AD62D:
    LDA $16CC,X                     ; $8AD62D  BD CC 16     MX  initial1
    BIT #$8040                      ; $8AD630  89 40 80     MX
    BNE L_8AD64E                    ; $8AD633  D0 19        MX
    LDA $00B2                       ; $8AD635  AD B2 00     MX
    AND #$00FF                      ; $8AD638  29 FF 00     MX
    CMP #$0010                      ; $8AD63B  C9 10 00     MX
    BNE L_8AD64E                    ; $8AD63E  D0 0E        MX
    LDA $1669,X                     ; $8AD640  BD 69 16     MX
    BIT #$C0C0                      ; $8AD643  89 C0 C0     MX
    BEQ L_8AD64E                    ; $8AD646  F0 06        MX
    LDA #$001A                      ; $8AD648  A9 1A 00     MX
    STA $1665                       ; $8AD64B  8D 65 16     MX
L_8AD64E:
    INX                             ; $8AD64E  E8           MX
    INX                             ; $8AD64F  E8           MX
    CPX #$0008                      ; $8AD650  E0 08 00     MX
    BNE L_8AD62D                    ; $8AD653  D0 D8        MX
    RTS                             ; $8AD655  60           MX
L_8AD656:
    SEP #$20                        ; $8AD656  E2 20        MX
    DEC $00B2                       ; $8AD658  CE B2 00     mX
    LDA $00B2                       ; $8AD65B  AD B2 00     mX
    CMP #$FF                        ; $8AD65E  C9 FF        mX
    BNE L_8AD6AA                    ; $8AD660  D0 48        mX
    REP #$20                        ; $8AD662  C2 20        mX
    JSL L_80E541                    ; $8AD664  22 41 E5 80  MX
    LDA $0AB4                       ; $8AD668  AD B4 0A     MX
    CMP #$001B                      ; $8AD66B  C9 1B 00     MX
    BNE L_8AD675                    ; $8AD66E  D0 05        MX
    CMP $0ABC                       ; $8AD670  CD BC 0A     MX
    BNE L_8AD69C                    ; $8AD673  D0 27        MX
L_8AD675:
    LDA $0AB6                       ; $8AD675  AD B6 0A     MX
    CMP #$001B                      ; $8AD678  C9 1B 00     MX
    BNE L_8AD682                    ; $8AD67B  D0 05        MX
    CMP $0ABE                       ; $8AD67D  CD BE 0A     MX
    BNE L_8AD69C                    ; $8AD680  D0 1A        MX
L_8AD682:
    LDA $0AB8                       ; $8AD682  AD B8 0A     MX
    CMP #$001B                      ; $8AD685  C9 1B 00     MX
    BNE L_8AD68F                    ; $8AD688  D0 05        MX
    CMP $0AC0                       ; $8AD68A  CD C0 0A     MX
    BNE L_8AD69C                    ; $8AD68D  D0 0D        MX
L_8AD68F:
    LDA $0ABA                       ; $8AD68F  AD BA 0A     MX
    CMP #$001B                      ; $8AD692  C9 1B 00     MX
    BNE L_8AD6A4                    ; $8AD695  D0 0D        MX
    CMP $0AC2                       ; $8AD697  CD C2 0A     MX
    BEQ L_8AD6A4                    ; $8AD69A  F0 08        MX
L_8AD69C:
    LDA #$0035                      ; $8AD69C  A9 35 00     MX
    STA $1665                       ; $8AD69F  8D 65 16     MX
    BRA L_8AD6AA                    ; $8AD6A2  80 06        MX
L_8AD6A4:
    LDA #$8000                      ; $8AD6A4  A9 00 80     MX
    TSB $1665                       ; $8AD6A7  0C 65 16     MX
L_8AD6AA:
    SEP #$20                        ; $8AD6AA  E2 20        MX
    LDA #$80                        ; $8AD6AC  A9 80        mX
    STA $2100                       ; $8AD6AE  8D 00 21     mX
    REP #$20                        ; $8AD6B1  C2 20        mX
    JSR L_8AD6B7                    ; $8AD6B3  20 B7 D6     MX
    RTS                             ; $8AD6B6  60           MX
L_8AD6B7:
    LDX #$0000                      ; $8AD6B7  A2 00 00     MX
L_8AD6BA:
    LDA $16CC,X                     ; $8AD6BA  BD CC 16     MX  initial1
    BIT #$8040                      ; $8AD6BD  89 40 80     MX
    BNE L_8AD6F3                    ; $8AD6C0  D0 31        MX
    JSR L_8ACF67                    ; $8AD6C2  20 67 CF     MX
    LDA $001D1D,X                   ; $8AD6C5  BF 1D 1D 00  MX
    DEC                             ; $8AD6C9  3A           MX
    STA $0024                       ; $8AD6CA  8D 24 00     MX
    LDA #$0008                      ; $8AD6CD  A9 08 00     MX
    STA $0026                       ; $8AD6D0  8D 26 00     MX
    LDA #$0000                      ; $8AD6D3  A9 00 00     MX
    STA $002C                       ; $8AD6D6  8D 2C 00     MX
    LDA #$D2AC                      ; $8AD6D9  A9 AC D2     MX
    STA $0020                       ; $8AD6DC  8D 20 00     MX
    SEP #$20                        ; $8AD6DF  E2 20        MX
    LDA #$0E                        ; $8AD6E1  A9 0E        mX
    STA $0022                       ; $8AD6E3  8D 22 00     mX
    LDA #$2C                        ; $8AD6E6  A9 2C        mX
    STA $0028                       ; $8AD6E8  8D 28 00     mX
    REP #$20                        ; $8AD6EB  C2 20        mX
    PHX                             ; $8AD6ED  DA           MX
    JSL $2BE2EA                     ; $8AD6EE  22 EA E2 2B  MX
    PLX                             ; $8AD6F2  FA           MX
L_8AD6F3:
    INX                             ; $8AD6F3  E8           MX
    INX                             ; $8AD6F4  E8           MX
    CPX #$0008                      ; $8AD6F5  E0 08 00     MX
    BNE L_8AD6BA                    ; $8AD6F8  D0 C0        MX
    RTS                             ; $8AD6FA  60           MX
L_8AD6FB:
    JSR find_record                 ; $8AD6FB  20 FF D6     MX
    RTL                             ; $8AD6FE  6B           MX
find_record:
    LDX #$0000                      ; $8AD6FF  A2 00 00     MX
L_8AD702:
    LDA $00172E,X                   ; $8AD702  BF 2E 17 00  MX  record_initials
L_8AD706:
    CMP $00A4                       ; $8AD706  CD A4 00     MX
L_8AD709:
    BEQ L_8AD716                    ; $8AD709  F0 0B        MX
L_8AD70B:
    INX                             ; $8AD70B  E8           MX
L_8AD70C:
    INX                             ; $8AD70C  E8           MX
L_8AD70D:
    INX                             ; $8AD70D  E8           MX
L_8AD70E:
    INX                             ; $8AD70E  E8           MX
L_8AD70F:
    CPX #$0160                      ; $8AD70F  E0 60 01     MX
L_8AD712:
    BNE L_8AD702                    ; $8AD712  D0 EE        MX
L_8AD714:
    SEC                             ; $8AD714  38           MX
L_8AD715:
    RTS                             ; $8AD715  60           MX
L_8AD716:
    LDA $001730,X                   ; $8AD716  BF 30 17 00  MX
    CMP $00A6                       ; $8AD71A  CD A6 00     MX
    BNE L_8AD70B                    ; $8AD71D  D0 EC        MX
    TXA                             ; $8AD71F  8A           MX
    CLC                             ; $8AD720  18           MX
    RTS                             ; $8AD721  60           MX
new_record:
    LDX #$0000                      ; $8AD722  A2 00 00     MX
L_8AD725:
    LDA $00172E,X                   ; $8AD725  BF 2E 17 00  MX  record_initials
L_8AD729:
    BMI L_8AD736                    ; $8AD729  30 0B        MX
L_8AD72B:
    INX                             ; $8AD72B  E8           MX
L_8AD72C:
    INX                             ; $8AD72C  E8           MX
L_8AD72D:
    INX                             ; $8AD72D  E8           MX
L_8AD72E:
    INX                             ; $8AD72E  E8           MX
L_8AD72F:
    CPX #$0160                      ; $8AD72F  E0 60 01     MX
L_8AD732:
    BNE L_8AD725                    ; $8AD732  D0 F1        MX
    SEC                             ; $8AD734  38           MX
    RTS                             ; $8AD735  60           MX
L_8AD736:
    SEP #$20                        ; $8AD736  E2 20        MX
L_8AD738:
    LDA $00A4                       ; $8AD738  AD A4 00     mX
L_8AD73B:
    STA $172E,X                     ; $8AD73B  9D 2E 17     mX  record_initials
L_8AD73E:
    LDA $00A5                       ; $8AD73E  AD A5 00     mX
L_8AD741:
    STA $172F,X                     ; $8AD741  9D 2F 17     mX
L_8AD744:
    LDA $00A6                       ; $8AD744  AD A6 00     mX
L_8AD747:
    STA $1730,X                     ; $8AD747  9D 30 17     mX
L_8AD74A:
    LDA #$00                        ; $8AD74A  A9 00        mX
L_8AD74C:
    STA $1731,X                     ; $8AD74C  9D 31 17     mX
L_8AD74F:
    REP #$20                        ; $8AD74F  C2 20        mX
L_8AD751:
    LDA #$0000                      ; $8AD751  A9 00 00     MX
L_8AD754:
    STA $188E,X                     ; $8AD754  9D 8E 18     MX  record_wins
L_8AD757:
    STA $19EE,X                     ; $8AD757  9D EE 19     MX  record_teams
L_8AD75A:
    STA $1890,X                     ; $8AD75A  9D 90 18     MX  record_streak
L_8AD75D:
    STA $19F0,X                     ; $8AD75D  9D F0 19     MX
L_8AD760:
    CLC                             ; $8AD760  18           MX
L_8AD761:
    RTS                             ; $8AD761  60           MX
L_8AD762:
    LDX #$0000                      ; $8AD762  A2 00 00     MX
L_8AD765:
    LDA #$AAAA                      ; $8AD765  A9 AA AA     MX
L_8AD768:
    STA $00A4                       ; $8AD768  8D A4 00     MX
L_8AD76B:
    LDA #$8888                      ; $8AD76B  A9 88 88     MX
L_8AD76E:
    STA $00A6                       ; $8AD76E  8D A6 00     MX
L_8AD771:
    STZ $00A8                       ; $8AD771  9C A8 00     MX
L_8AD774:
    LDA $172E,X                     ; $8AD774  BD 2E 17     MX  record_initials
L_8AD777:
    EOR $00A4                       ; $8AD777  4D A4 00     MX
L_8AD77A:
    EOR $00A6                       ; $8AD77A  4D A6 00     MX
L_8AD77D:
    CLC                             ; $8AD77D  18           MX
L_8AD77E:
    ADC $00A8                       ; $8AD77E  6D A8 00     MX
L_8AD781:
    STA $00A8                       ; $8AD781  8D A8 00     MX
L_8AD784:
    ASL $00A4                       ; $8AD784  0E A4 00     MX
L_8AD787:
    BCC L_8AD78F                    ; $8AD787  90 06        MX
L_8AD789:
    LDA #$0001                      ; $8AD789  A9 01 00     MX
L_8AD78C:
    TSB $00A4                       ; $8AD78C  0C A4 00     MX
L_8AD78F:
    LSR $00A6                       ; $8AD78F  4E A6 00     MX
L_8AD792:
    BCC L_8AD79A                    ; $8AD792  90 06        MX
L_8AD794:
    LDA #$8000                      ; $8AD794  A9 00 80     MX
L_8AD797:
    TSB $00A6                       ; $8AD797  0C A6 00     MX
L_8AD79A:
    INX                             ; $8AD79A  E8           MX
L_8AD79B:
    INX                             ; $8AD79B  E8           MX
L_8AD79C:
    CPX #$0420                      ; $8AD79C  E0 20 04     MX
L_8AD79F:
    BNE L_8AD774                    ; $8AD79F  D0 D3        MX
L_8AD7A1:
    LDA $00A8                       ; $8AD7A1  AD A8 00     MX
L_8AD7A4:
    RTS                             ; $8AD7A4  60           MX
L_8AD7A5:
    JSR L_8AD762                    ; $8AD7A5  20 62 D7     MX
L_8AD7A8:
    CMP $1B4E                       ; $8AD7A8  CD 4E 1B     MX
L_8AD7AB:
    BEQ L_8AD805                    ; $8AD7AB  F0 58        MX
L_8AD7AD:
    LDX #$0000                      ; $8AD7AD  A2 00 00     MX
L_8AD7B0:
    LDA #$FFFF                      ; $8AD7B0  A9 FF FF     MX
L_8AD7B3:
    STA $172E,X                     ; $8AD7B3  9D 2E 17     MX  record_initials
L_8AD7B6:
    INX                             ; $8AD7B6  E8           MX
L_8AD7B7:
    INX                             ; $8AD7B7  E8           MX
L_8AD7B8:
    CPX #$0420                      ; $8AD7B8  E0 20 04     MX
L_8AD7BB:
    BNE L_8AD7B3                    ; $8AD7BB  D0 F6        MX
L_8AD7BD:
    LDX #$0000                      ; $8AD7BD  A2 00 00     MX
L_8AD7C0:
    LDY #$0000                      ; $8AD7C0  A0 00 00     MX
L_8AD7C3:
    PEA $0029                       ; $8AD7C3  F4 29 00     MX
L_8AD7C6:
    PLB                             ; $8AD7C6  AB           MX
L_8AD7C7:
    LDA $FDB3,Y                     ; $8AD7C7  B9 B3 FD     MX
L_8AD7CA:
    STA $00172E,X                   ; $8AD7CA  9F 2E 17 00  MX  record_initials
L_8AD7CE:
    LDA $FDB5,Y                     ; $8AD7CE  B9 B5 FD     MX
L_8AD7D1:
    STA $001730,X                   ; $8AD7D1  9F 30 17 00  MX
L_8AD7D5:
    LDA $FDB7,Y                     ; $8AD7D5  B9 B7 FD     MX
L_8AD7D8:
    STA $00188E,X                   ; $8AD7D8  9F 8E 18 00  MX  record_wins
L_8AD7DC:
    LDA $FDB9,Y                     ; $8AD7DC  B9 B9 FD     MX
L_8AD7DF:
    STA $001890,X                   ; $8AD7DF  9F 90 18 00  MX  record_streak
L_8AD7E3:
    LDA $FDBA,Y                     ; $8AD7E3  B9 BA FD     MX
L_8AD7E6:
    STA $0019EE,X                   ; $8AD7E6  9F EE 19 00  MX  record_teams
L_8AD7EA:
    LDA $FDBC,Y                     ; $8AD7EA  B9 BC FD     MX
L_8AD7ED:
    STA $0019F0,X                   ; $8AD7ED  9F F0 19 00  MX
L_8AD7F1:
    TYA                             ; $8AD7F1  98           MX
L_8AD7F2:
    CLC                             ; $8AD7F2  18           MX
L_8AD7F3:
    ADC #$000B                      ; $8AD7F3  69 0B 00     MX
L_8AD7F6:
    TAY                             ; $8AD7F6  A8           MX
L_8AD7F7:
    INX                             ; $8AD7F7  E8           MX
L_8AD7F8:
    INX                             ; $8AD7F8  E8           MX
L_8AD7F9:
    INX                             ; $8AD7F9  E8           MX
L_8AD7FA:
    INX                             ; $8AD7FA  E8           MX
L_8AD7FB:
    CPX #$005C                      ; $8AD7FB  E0 5C 00     MX
L_8AD7FE:
    BNE L_8AD7C7                    ; $8AD7FE  D0 C7        MX
L_8AD800:
    PLB                             ; $8AD800  AB           MX
L_8AD801:
    JSR rank_records                ; $8AD801  20 26 D8     MX
L_8AD804:
    RTS                             ; $8AD804  60           MX
L_8AD805:
    LDX #$0000                      ; $8AD805  A2 00 00     MX
L_8AD808:
    LDA $001730,X                   ; $8AD808  BF 30 17 00  MX
L_8AD80C:
    BMI L_8AD819                    ; $8AD80C  30 0B        MX
L_8AD80E:
    INX                             ; $8AD80E  E8           MX
L_8AD80F:
    INX                             ; $8AD80F  E8           MX
L_8AD810:
    INX                             ; $8AD810  E8           MX
L_8AD811:
    INX                             ; $8AD811  E8           MX
L_8AD812:
    CPX #$0160                      ; $8AD812  E0 60 01     MX
L_8AD815:
    BNE L_8AD808                    ; $8AD815  D0 F1        MX
L_8AD817:
    BRA L_8AD801                    ; $8AD817  80 E8        MX
L_8AD819:
    LDA #$FFFF                      ; $8AD819  A9 FF FF     MX
L_8AD81C:
    STA $00172E,X                   ; $8AD81C  9F 2E 17 00  MX  record_initials
L_8AD820:
    STA $001730,X                   ; $8AD820  9F 30 17 00  MX
L_8AD824:
    BRA L_8AD80E                    ; $8AD824  80 E8        MX
rank_records:
    LDX #$0000                      ; $8AD826  A2 00 00     MX
L_8AD829:
    LDA #$0000                      ; $8AD829  A9 00 00     MX
L_8AD82C:
    STA $1B50,X                     ; $8AD82C  9D 50 1B     MX
L_8AD82F:
    INC                             ; $8AD82F  1A           MX
L_8AD830:
    INX                             ; $8AD830  E8           MX
L_8AD831:
    INX                             ; $8AD831  E8           MX
L_8AD832:
    CPX #$00B0                      ; $8AD832  E0 B0 00     MX
L_8AD835:
    BNE L_8AD82C                    ; $8AD835  D0 F5        MX
L_8AD837:
    LDA #$0058                      ; $8AD837  A9 58 00     MX
L_8AD83A:
    STA $00A6                       ; $8AD83A  8D A6 00     MX
L_8AD83D:
    LDY #$0000                      ; $8AD83D  A0 00 00     MX
L_8AD840:
    STZ $00A8                       ; $8AD840  9C A8 00     MX
L_8AD843:
    LDA $1B50,Y                     ; $8AD843  B9 50 1B     MX
L_8AD846:
    ASL                             ; $8AD846  0A           MX
L_8AD847:
    ASL                             ; $8AD847  0A           MX
L_8AD848:
    TAX                             ; $8AD848  AA           MX
L_8AD849:
    LDA $1B52,Y                     ; $8AD849  B9 52 1B     MX
L_8AD84C:
    ASL                             ; $8AD84C  0A           MX
L_8AD84D:
    ASL                             ; $8AD84D  0A           MX
L_8AD84E:
    PHY                             ; $8AD84E  5A           MX
L_8AD84F:
    TAY                             ; $8AD84F  A8           MX
L_8AD850:
    LDA $172E,X                     ; $8AD850  BD 2E 17     MX  record_initials
L_8AD853:
    BMI L_8AD8C8                    ; $8AD853  30 73        MX
L_8AD855:
    LDA $172E,Y                     ; $8AD855  B9 2E 17     MX  record_initials
L_8AD858:
    BMI L_8AD8B3                    ; $8AD858  30 59        MX
L_8AD85A:
    LDA $188E,X                     ; $8AD85A  BD 8E 18     MX  record_wins
L_8AD85D:
    AND #$00FF                      ; $8AD85D  29 FF 00     MX
L_8AD860:
    STA $00A4                       ; $8AD860  8D A4 00     MX
L_8AD863:
    LDA $188E,Y                     ; $8AD863  B9 8E 18     MX  record_wins
L_8AD866:
    AND #$00FF                      ; $8AD866  29 FF 00     MX
L_8AD869:
    CMP $00A4                       ; $8AD869  CD A4 00     MX
L_8AD86C:
    BCC L_8AD8B3                    ; $8AD86C  90 45        MX
L_8AD86E:
    BNE L_8AD89C                    ; $8AD86E  D0 2C        MX
L_8AD870:
    LDA $188F,Y                     ; $8AD870  B9 8F 18     MX  record_losses
L_8AD873:
    AND #$00FF                      ; $8AD873  29 FF 00     MX
L_8AD876:
    STA $00A4                       ; $8AD876  8D A4 00     MX
L_8AD879:
    LDA $188F,X                     ; $8AD879  BD 8F 18     MX  record_losses
L_8AD87C:
    AND #$00FF                      ; $8AD87C  29 FF 00     MX
L_8AD87F:
    CMP $00A4                       ; $8AD87F  CD A4 00     MX
L_8AD882:
    BCC L_8AD8B3                    ; $8AD882  90 2F        MX
L_8AD884:
    BNE L_8AD89C                    ; $8AD884  D0 16        MX
L_8AD886:
    LDA $1890,X                     ; $8AD886  BD 90 18     MX  record_streak
L_8AD889:
    AND #$00FF                      ; $8AD889  29 FF 00     MX
L_8AD88C:
    STA $00A4                       ; $8AD88C  8D A4 00     MX
L_8AD88F:
    LDA $1890,Y                     ; $8AD88F  B9 90 18     MX  record_streak
L_8AD892:
    AND #$00FF                      ; $8AD892  29 FF 00     MX
L_8AD895:
    CMP $00A4                       ; $8AD895  CD A4 00     MX
L_8AD898:
    BCC L_8AD8B3                    ; $8AD898  90 19        MX
L_8AD89A:
    BEQ L_8AD8B3                    ; $8AD89A  F0 17        MX
L_8AD89C:
    INC $00A8                       ; $8AD89C  EE A8 00     MX
L_8AD89F:
    PLY                             ; $8AD89F  7A           MX
L_8AD8A0:
    PHY                             ; $8AD8A0  5A           MX
L_8AD8A1:
    LDA $1B50,Y                     ; $8AD8A1  B9 50 1B     MX
L_8AD8A4:
    STA $00A4                       ; $8AD8A4  8D A4 00     MX
L_8AD8A7:
    LDA $1B52,Y                     ; $8AD8A7  B9 52 1B     MX
L_8AD8AA:
    STA $1B50,Y                     ; $8AD8AA  99 50 1B     MX
L_8AD8AD:
    LDA $00A4                       ; $8AD8AD  AD A4 00     MX
L_8AD8B0:
    STA $1B52,Y                     ; $8AD8B0  99 52 1B     MX
L_8AD8B3:
    PLY                             ; $8AD8B3  7A           MX
L_8AD8B4:
    INY                             ; $8AD8B4  C8           MX
L_8AD8B5:
    INY                             ; $8AD8B5  C8           MX
L_8AD8B6:
    CPY #$00AE                      ; $8AD8B6  C0 AE 00     MX
L_8AD8B9:
    BNE L_8AD843                    ; $8AD8B9  D0 88        MX
L_8AD8BB:
    LDA $00A8                       ; $8AD8BB  AD A8 00     MX
L_8AD8BE:
    BEQ L_8AD8CF                    ; $8AD8BE  F0 0F        MX
L_8AD8C0:
    DEC $00A6                       ; $8AD8C0  CE A6 00     MX
L_8AD8C3:
    BEQ L_8AD8CF                    ; $8AD8C3  F0 0A        MX
L_8AD8C5:
    JMP L_8AD83D                    ; $8AD8C5  4C 3D D8     MX
L_8AD8C8:
    LDA $172E,Y                     ; $8AD8C8  B9 2E 17     MX  record_initials
L_8AD8CB:
    BMI L_8AD8B3                    ; $8AD8CB  30 E6        MX
    BRA L_8AD89C                    ; $8AD8CD  80 CD        MX
L_8AD8CF:
    LDY #$0000                      ; $8AD8CF  A0 00 00     MX
L_8AD8D2:
    LDA $1B50,Y                     ; $8AD8D2  B9 50 1B     MX
L_8AD8D5:
    ASL                             ; $8AD8D5  0A           MX
L_8AD8D6:
    ASL                             ; $8AD8D6  0A           MX
L_8AD8D7:
    TAX                             ; $8AD8D7  AA           MX
L_8AD8D8:
    SEP #$20                        ; $8AD8D8  E2 20        MX
L_8AD8DA:
    TYA                             ; $8AD8DA  98           mX
L_8AD8DB:
    LSR                             ; $8AD8DB  4A           mX
L_8AD8DC:
    INC                             ; $8AD8DC  1A           mX
L_8AD8DD:
    STA $1891,X                     ; $8AD8DD  9D 91 18     mX  record_rank
L_8AD8E0:
    REP #$20                        ; $8AD8E0  C2 20        mX
L_8AD8E2:
    INY                             ; $8AD8E2  C8           MX
L_8AD8E3:
    INY                             ; $8AD8E3  C8           MX
L_8AD8E4:
    CPY #$00B0                      ; $8AD8E4  C0 B0 00     MX
L_8AD8E7:
    BNE L_8AD8D2                    ; $8AD8E7  D0 E9        MX
L_8AD8E9:
    JSR L_8AD762                    ; $8AD8E9  20 62 D7     MX
L_8AD8EC:
    STA $1B4E                       ; $8AD8EC  8D 4E 1B     MX
L_8AD8EF:
    RTS                             ; $8AD8EF  60           MX
encode_password:
    SEP #$20                        ; $8AD8F0  E2 20        MX
    LDA $0019EE,X                   ; $8AD8F2  BF EE 19 00  mX  record_teams
    STA $1C14                       ; $8AD8F6  8D 14 1C     mX
    LDA $0019EF,X                   ; $8AD8F9  BF EF 19 00  mX
    STA $1C15                       ; $8AD8FD  8D 15 1C     mX
    LDA $0019F0,X                   ; $8AD900  BF F0 19 00  mX
    STA $1C16                       ; $8AD904  8D 16 1C     mX
    LDA $0019F1,X                   ; $8AD907  BF F1 19 00  mX
    STA $1C17                       ; $8AD90B  8D 17 1C     mX
    CLC                             ; $8AD90E  18           mX
    LDA $00172E,X                   ; $8AD90F  BF 2E 17 00  mX  record_initials
    ROL                             ; $8AD913  2A           mX
    ADC $00172F,X                   ; $8AD914  7F 2F 17 00  mX
    ROL                             ; $8AD918  2A           mX
    ADC $001730,X                   ; $8AD919  7F 30 17 00  mX
    ROL                             ; $8AD91D  2A           mX
    ADC #$2A                        ; $8AD91E  69 2A        mX
    STA $00A4                       ; $8AD920  8D A4 00     mX
    LSR                             ; $8AD923  4A           mX
    LSR                             ; $8AD924  4A           mX
    LSR                             ; $8AD925  4A           mX
    LSR                             ; $8AD926  4A           mX
    EOR $00A4                       ; $8AD927  4D A4 00     mX
    AND #$0F                        ; $8AD92A  29 0F        mX
    STA $1C4E                       ; $8AD92C  8D 4E 1C     mX  password_key
    LDY #$0000                      ; $8AD92F  A0 00 00     mX
    STY $00A4                       ; $8AD932  8C A4 00     mX
    STY $00A6                       ; $8AD935  8C A6 00     mX
    LDY #$DD39                      ; $8AD938  A0 39 DD     mX
    STY $00A8                       ; $8AD93B  8C A8 00     mX
    LDA #$0A                        ; $8AD93E  A9 0A        mX
    STA $00AA                       ; $8AD940  8D AA 00     mX
    LDA #$00                        ; $8AD943  A9 00        mX
    STA $00AB                       ; $8AD945  8D AB 00     mX
    LDY #$000D                      ; $8AD948  A0 0D 00     mX
    LDA #$00                        ; $8AD94B  A9 00        mX
L_8AD94D:
    STA $1C4F,Y                     ; $8AD94D  99 4F 1C     mX  password_work
    DEY                             ; $8AD950  88           mX
    BPL L_8AD94D                    ; $8AD951  10 FA        mX
    LDY #$0000                      ; $8AD953  A0 00 00     mX
    LDA $188E,X                     ; $8AD956  BD 8E 18     mX  record_wins
    JSR L_8ADA20                    ; $8AD959  20 20 DA     mX
    JSR L_8ADA8E                    ; $8AD95C  20 8E DA     mX
    JSR L_8ADA20                    ; $8AD95F  20 20 DA     mX
    JSR L_8ADA20                    ; $8AD962  20 20 DA     mX
    LDA $188F,X                     ; $8AD965  BD 8F 18     mX  record_losses
    JSR L_8ADA8E                    ; $8AD968  20 8E DA     mX
    JSR L_8ADA20                    ; $8AD96B  20 20 DA     mX
    JSR L_8AD9EF                    ; $8AD96E  20 EF D9     mX
    JSR L_8ADA8E                    ; $8AD971  20 8E DA     mX
    LDA $1890,X                     ; $8AD974  BD 90 18     mX  record_streak
    EOR #$FF                        ; $8AD977  49 FF        mX
    INC                             ; $8AD979  1A           mX
    JSR L_8AD9EF                    ; $8AD97A  20 EF D9     mX
    JSR L_8ADA20                    ; $8AD97D  20 20 DA     mX
    JSR L_8ADA20                    ; $8AD980  20 20 DA     mX
    JSR L_8ADA8E                    ; $8AD983  20 8E DA     mX
    LDA $00AB                       ; $8AD986  AD AB 00     mX
    AND #$0F                        ; $8AD989  29 0F        mX
    PHA                             ; $8AD98B  48           mX
    LDA $1C4F                       ; $8AD98C  AD 4F 1C     mX  password_work
    STA $1C4E                       ; $8AD98F  8D 4E 1C     mX  password_key
    PLA                             ; $8AD992  68           mX
    JSR L_8ADA5C                    ; $8AD993  20 5C DA     mX
    PHA                             ; $8AD996  48           mX
    LDA $1C53                       ; $8AD997  AD 53 1C     mX
    STA $1C4E                       ; $8AD99A  8D 4E 1C     mX  password_key
    PLA                             ; $8AD99D  68           mX
    JSR L_8ADA5C                    ; $8AD99E  20 5C DA     mX
    LDA $00AB                       ; $8AD9A1  AD AB 00     mX
    EOR #$0A                        ; $8AD9A4  49 0A        mX
    STA $00AB                       ; $8AD9A6  8D AB 00     mX
    LDY #$0001                      ; $8AD9A9  A0 01 00     mX
    JSR L_8ADAF4                    ; $8AD9AC  20 F4 DA     mX
    LDY #$0002                      ; $8AD9AF  A0 02 00     mX
    JSR L_8ADAF4                    ; $8AD9B2  20 F4 DA     mX
    LDY #$0003                      ; $8AD9B5  A0 03 00     mX
    JSR L_8ADAF4                    ; $8AD9B8  20 F4 DA     mX
    LDY #$0005                      ; $8AD9BB  A0 05 00     mX
L_8AD9BE:
    JSR L_8ADAF4                    ; $8AD9BE  20 F4 DA     mX
    INY                             ; $8AD9C1  C8           mX
    CPY #$000C                      ; $8AD9C2  C0 0C 00     mX
    BNE L_8AD9BE                    ; $8AD9C5  D0 F7        mX
    LDA $1C53                       ; $8AD9C7  AD 53 1C     mX
    CLC                             ; $8AD9CA  18           mX
    ADC $1C4F                       ; $8AD9CB  6D 4F 1C     mX  password_work
    CMP #$1A                        ; $8AD9CE  C9 1A        mX
    BCC L_8AD9D5                    ; $8AD9D0  90 03        mX
    SEC                             ; $8AD9D2  38           mX
    SBC #$1A                        ; $8AD9D3  E9 1A        mX
L_8AD9D5:
    STA $1C4F                       ; $8AD9D5  8D 4F 1C     mX  password_work
    AND #$02                        ; $8AD9D8  29 02        mX
    STA $00A4                       ; $8AD9DA  8D A4 00     mX
    LDA $1C53                       ; $8AD9DD  AD 53 1C     mX
    SEC                             ; $8AD9E0  38           mX
    SBC $00A4                       ; $8AD9E1  ED A4 00     mX
    BPL L_8AD9E9                    ; $8AD9E4  10 03        mX
    CLC                             ; $8AD9E6  18           mX
    ADC #$1A                        ; $8AD9E7  69 1A        mX
L_8AD9E9:
    STA $1C53                       ; $8AD9E9  8D 53 1C     mX
    REP #$20                        ; $8AD9EC  C2 20        mX
    RTS                             ; $8AD9EE  60           MX
L_8AD9EF:
    PHX                             ; $8AD9EF  DA           mX
    TYX                             ; $8AD9F0  BB           mX
    LSR                             ; $8AD9F1  4A           mX
    ROL $1C4F,X                     ; $8AD9F2  3E 4F 1C     mX  password_work
    JSR L_8ADAC8                    ; $8AD9F5  20 C8 DA     mX
    ROL $1C4F,X                     ; $8AD9F8  3E 4F 1C     mX  password_work
    LSR                             ; $8AD9FB  4A           mX
    ROL $1C4F,X                     ; $8AD9FC  3E 4F 1C     mX  password_work
    JSR L_8ADAC8                    ; $8AD9FF  20 C8 DA     mX
    ROL $1C4F,X                     ; $8ADA02  3E 4F 1C     mX  password_work
    TXY                             ; $8ADA05  9B           mX
    PLX                             ; $8ADA06  FA           mX
    PHA                             ; $8ADA07  48           mX
    LDA $00AB                       ; $8ADA08  AD AB 00     mX
    CLC                             ; $8ADA0B  18           mX
    ADC $1C4F,Y                     ; $8ADA0C  79 4F 1C     mX  password_work
    STA $00AB                       ; $8ADA0F  8D AB 00     mX
    LDA $1C4F,Y                     ; $8ADA12  B9 4F 1C     mX  password_work
    EOR [$A8]                       ; $8ADA15  47 A8        mX
    INC $00A8                       ; $8ADA17  EE A8 00     mX
    STA $1C4F,Y                     ; $8ADA1A  99 4F 1C     mX  password_work
    PLA                             ; $8ADA1D  68           mX
    INY                             ; $8ADA1E  C8           mX
    RTS                             ; $8ADA1F  60           mX
L_8ADA20:
    PHX                             ; $8ADA20  DA           mX
    TYX                             ; $8ADA21  BB           mX
    LSR                             ; $8ADA22  4A           mX
    ROL $1C4F,X                     ; $8ADA23  3E 4F 1C     mX  password_work
    JSR L_8ADAC8                    ; $8ADA26  20 C8 DA     mX
    ROL $1C4F,X                     ; $8ADA29  3E 4F 1C     mX  password_work
    LSR                             ; $8ADA2C  4A           mX
    ROL $1C4F,X                     ; $8ADA2D  3E 4F 1C     mX  password_work
    JSR L_8ADAC8                    ; $8ADA30  20 C8 DA     mX
    ROL $1C4F,X                     ; $8ADA33  3E 4F 1C     mX  password_work
    TXY                             ; $8ADA36  9B           mX
    PLX                             ; $8ADA37  FA           mX
    PHA                             ; $8ADA38  48           mX
    LDA $00AB                       ; $8ADA39  AD AB 00     mX
    CLC                             ; $8ADA3C  18           mX
    ADC $1C4F,Y                     ; $8ADA3D  79 4F 1C     mX  password_work
    STA $00AB                       ; $8ADA40  8D AB 00     mX
    LDA $1C4F,Y                     ; $8ADA43  B9 4F 1C     mX  password_work
    EOR [$A8]                       ; $8ADA46  47 A8        mX
    INC $00A8                       ; $8ADA48  EE A8 00     mX
    CLC                             ; $8ADA4B  18           mX
    ADC $1C4E                       ; $8ADA4C  6D 4E 1C     mX  password_key
    CMP #$1A                        ; $8ADA4F  C9 1A        mX
    BCC L_8ADA56                    ; $8ADA51  90 03        mX
    SEC                             ; $8ADA53  38           mX
    SBC #$1A                        ; $8ADA54  E9 1A        mX
L_8ADA56:
    STA $1C4F,Y                     ; $8ADA56  99 4F 1C     mX  password_work
    PLA                             ; $8ADA59  68           mX
    INY                             ; $8ADA5A  C8           mX
    RTS                             ; $8ADA5B  60           mX
L_8ADA5C:
    PHX                             ; $8ADA5C  DA           mX
    TYX                             ; $8ADA5D  BB           mX
    LSR                             ; $8ADA5E  4A           mX
    ROL $1C4F,X                     ; $8ADA5F  3E 4F 1C     mX  password_work
    JSR L_8ADAC8                    ; $8ADA62  20 C8 DA     mX
    ROL $1C4F,X                     ; $8ADA65  3E 4F 1C     mX  password_work
    LSR                             ; $8ADA68  4A           mX
    ROL $1C4F,X                     ; $8ADA69  3E 4F 1C     mX  password_work
    JSR L_8ADAC8                    ; $8ADA6C  20 C8 DA     mX
    ROL $1C4F,X                     ; $8ADA6F  3E 4F 1C     mX  password_work
    TXY                             ; $8ADA72  9B           mX
    PLX                             ; $8ADA73  FA           mX
    PHA                             ; $8ADA74  48           mX
    LDA $1C4F,Y                     ; $8ADA75  B9 4F 1C     mX  password_work
    EOR [$A8]                       ; $8ADA78  47 A8        mX
    INC $00A8                       ; $8ADA7A  EE A8 00     mX
    CLC                             ; $8ADA7D  18           mX
    ADC $1C4E                       ; $8ADA7E  6D 4E 1C     mX  password_key
    CMP #$1A                        ; $8ADA81  C9 1A        mX
    BCC L_8ADA88                    ; $8ADA83  90 03        mX
    SEC                             ; $8ADA85  38           mX
    SBC #$1A                        ; $8ADA86  E9 1A        mX
L_8ADA88:
    STA $1C4F,Y                     ; $8ADA88  99 4F 1C     mX  password_work
    PLA                             ; $8ADA8B  68           mX
    INY                             ; $8ADA8C  C8           mX
    RTS                             ; $8ADA8D  60           mX
L_8ADA8E:
    PHX                             ; $8ADA8E  DA           mX
    TYX                             ; $8ADA8F  BB           mX
    LSR                             ; $8ADA90  4A           mX
    ROL $1C4F,X                     ; $8ADA91  3E 4F 1C     mX  password_work
    JSR L_8ADAC8                    ; $8ADA94  20 C8 DA     mX
    ROL $1C4F,X                     ; $8ADA97  3E 4F 1C     mX  password_work
    LSR                             ; $8ADA9A  4A           mX
    ROL $1C4F,X                     ; $8ADA9B  3E 4F 1C     mX  password_work
    JSR L_8ADAC8                    ; $8ADA9E  20 C8 DA     mX
    ROL $1C4F,X                     ; $8ADAA1  3E 4F 1C     mX  password_work
    TXY                             ; $8ADAA4  9B           mX
    PLX                             ; $8ADAA5  FA           mX
    PHA                             ; $8ADAA6  48           mX
    LDA $00AB                       ; $8ADAA7  AD AB 00     mX
    CLC                             ; $8ADAAA  18           mX
    ADC $1C4F,Y                     ; $8ADAAB  79 4F 1C     mX  password_work
    STA $00AB                       ; $8ADAAE  8D AB 00     mX
    LDA $1C4F,Y                     ; $8ADAB1  B9 4F 1C     mX  password_work
    EOR [$A8]                       ; $8ADAB4  47 A8        mX
    INC $00A8                       ; $8ADAB6  EE A8 00     mX
    SEC                             ; $8ADAB9  38           mX
    SBC $1C4E                       ; $8ADABA  ED 4E 1C     mX  password_key
    BPL L_8ADAC2                    ; $8ADABD  10 03        mX
    CLC                             ; $8ADABF  18           mX
    ADC #$1A                        ; $8ADAC0  69 1A        mX
L_8ADAC2:
    STA $1C4F,Y                     ; $8ADAC2  99 4F 1C     mX  password_work
    PLA                             ; $8ADAC5  68           mX
    INY                             ; $8ADAC6  C8           mX
    RTS                             ; $8ADAC7  60           mX
L_8ADAC8:
    PHA                             ; $8ADAC8  48           mX
    PHY                             ; $8ADAC9  5A           mX
    LDY $00A6                       ; $8ADACA  AC A6 00     mX
    LDA $00A4                       ; $8ADACD  AD A4 00     mX
    BNE L_8ADAE0                    ; $8ADAD0  D0 0E        mX
    INC $00A4                       ; $8ADAD2  EE A4 00     mX
    LDA $1C14,Y                     ; $8ADAD5  B9 14 1C     mX
    SEC                             ; $8ADAD8  38           mX
    ROL                             ; $8ADAD9  2A           mX
    STA $1C14,Y                     ; $8ADADA  99 14 1C     mX
    PLY                             ; $8ADADD  7A           mX
    PLA                             ; $8ADADE  68           mX
    RTS                             ; $8ADADF  60           mX
L_8ADAE0:
    LDA $1C14,Y                     ; $8ADAE0  B9 14 1C     mX
    ASL                             ; $8ADAE3  0A           mX
    BNE L_8ADAEB                    ; $8ADAE4  D0 05        mX
    INY                             ; $8ADAE6  C8           mX
    LDA $1C14,Y                     ; $8ADAE7  B9 14 1C     mX
    ROL                             ; $8ADAEA  2A           mX
L_8ADAEB:
    STA $1C14,Y                     ; $8ADAEB  99 14 1C     mX
    STY $00A6                       ; $8ADAEE  8C A6 00     mX
    PLY                             ; $8ADAF1  7A           mX
    PLA                             ; $8ADAF2  68           mX
    RTS                             ; $8ADAF3  60           mX
L_8ADAF4:
    LDA $00AB                       ; $8ADAF4  AD AB 00     mX
    AND #$0F                        ; $8ADAF7  29 0F        mX
    CLC                             ; $8ADAF9  18           mX
    ADC $1C4F,Y                     ; $8ADAFA  79 4F 1C     mX  password_work
    CMP #$1A                        ; $8ADAFD  C9 1A        mX
    BCC L_8ADB04                    ; $8ADAFF  90 03        mX
    SEC                             ; $8ADB01  38           mX
    SBC #$1A                        ; $8ADB02  E9 1A        mX
L_8ADB04:
    STA $1C4F,Y                     ; $8ADB04  99 4F 1C     mX  password_work
    LDA $00AB                       ; $8ADB07  AD AB 00     mX
    AND #$0F                        ; $8ADB0A  29 0F        mX
    ASL                             ; $8ADB0C  0A           mX
    BIT #$10                        ; $8ADB0D  89 10        mX
    BEQ L_8ADB13                    ; $8ADB0F  F0 02        mX
    ORA #$01                        ; $8ADB11  09 01        mX
L_8ADB13:
    STA $00AB                       ; $8ADB13  8D AB 00     mX
    RTS                             ; $8ADB16  60           mX
decode_password:
    SEP #$20                        ; $8ADB17  E2 20        MX
    CLC                             ; $8ADB19  18           mX
    LDA $00172E,X                   ; $8ADB1A  BF 2E 17 00  mX  record_initials
    ROL                             ; $8ADB1E  2A           mX
    ADC $00172F,X                   ; $8ADB1F  7F 2F 17 00  mX
    ROL                             ; $8ADB23  2A           mX
    ADC $001730,X                   ; $8ADB24  7F 30 17 00  mX
    ROL                             ; $8ADB28  2A           mX
    ADC #$2A                        ; $8ADB29  69 2A        mX
    STA $00A4                       ; $8ADB2B  8D A4 00     mX
    LSR                             ; $8ADB2E  4A           mX
    LSR                             ; $8ADB2F  4A           mX
    LSR                             ; $8ADB30  4A           mX
    LSR                             ; $8ADB31  4A           mX
    EOR $00A4                       ; $8ADB32  4D A4 00     mX
    AND #$0F                        ; $8ADB35  29 0F        mX
    STA $1C4E                       ; $8ADB37  8D 4E 1C     mX  password_key
    LDY #$DD39                      ; $8ADB3A  A0 39 DD     mX
    STY $00A8                       ; $8ADB3D  8C A8 00     mX
    LDA #$0A                        ; $8ADB40  A9 0A        mX
    STA $00AA                       ; $8ADB42  8D AA 00     mX
    LDA #$00                        ; $8ADB45  A9 00        mX
    STA $00AB                       ; $8ADB47  8D AB 00     mX
    STA $00AC                       ; $8ADB4A  8D AC 00     mX
    LDA $1C4F                       ; $8ADB4D  AD 4F 1C     mX  password_work
    AND #$02                        ; $8ADB50  29 02        mX
    CLC                             ; $8ADB52  18           mX
    ADC $1C53                       ; $8ADB53  6D 53 1C     mX
    CMP #$1A                        ; $8ADB56  C9 1A        mX
    BCC L_8ADB5D                    ; $8ADB58  90 03        mX
    SEC                             ; $8ADB5A  38           mX
    SBC #$1A                        ; $8ADB5B  E9 1A        mX
L_8ADB5D:
    STA $1C53                       ; $8ADB5D  8D 53 1C     mX
    LDA $1C4F                       ; $8ADB60  AD 4F 1C     mX  password_work
    SEC                             ; $8ADB63  38           mX
    SBC $1C53                       ; $8ADB64  ED 53 1C     mX
    BPL L_8ADB6C                    ; $8ADB67  10 03        mX
    CLC                             ; $8ADB69  18           mX
    ADC #$1A                        ; $8ADB6A  69 1A        mX
L_8ADB6C:
    STA $1C4F                       ; $8ADB6C  8D 4F 1C     mX  password_work
    LDA $1C5B                       ; $8ADB6F  AD 5B 1C     mX
    SEC                             ; $8ADB72  38           mX
    SBC $1C4F                       ; $8ADB73  ED 4F 1C     mX  password_work
    BPL L_8ADB7B                    ; $8ADB76  10 03        mX
    CLC                             ; $8ADB78  18           mX
    ADC #$1A                        ; $8ADB79  69 1A        mX
L_8ADB7B:
    EOR $0ADD45                     ; $8ADB7B  4F 45 DD 0A  mX
    STA $1C5B                       ; $8ADB7F  8D 5B 1C     mX
    LDA $1C5C                       ; $8ADB82  AD 5C 1C     mX
    SEC                             ; $8ADB85  38           mX
    SBC $1C53                       ; $8ADB86  ED 53 1C     mX
    BPL L_8ADB8E                    ; $8ADB89  10 03        mX
    CLC                             ; $8ADB8B  18           mX
    ADC #$1A                        ; $8ADB8C  69 1A        mX
L_8ADB8E:
    EOR $0ADD46                     ; $8ADB8E  4F 46 DD 0A  mX
    STA $1C5C                       ; $8ADB92  8D 5C 1C     mX
    LDA $1C5C                       ; $8ADB95  AD 5C 1C     mX
    LSR                             ; $8ADB98  4A           mX
    LSR                             ; $8ADB99  4A           mX
    ROL $00AB                       ; $8ADB9A  2E AB 00     mX
    LSR                             ; $8ADB9D  4A           mX
    LSR                             ; $8ADB9E  4A           mX
    ROL $00AB                       ; $8ADB9F  2E AB 00     mX
    LDA $1C5B                       ; $8ADBA2  AD 5B 1C     mX
    LSR                             ; $8ADBA5  4A           mX
    LSR                             ; $8ADBA6  4A           mX
    ROL $00AB                       ; $8ADBA7  2E AB 00     mX
    LSR                             ; $8ADBAA  4A           mX
    LSR                             ; $8ADBAB  4A           mX
    ROL $00AB                       ; $8ADBAC  2E AB 00     mX
    LDA $00AB                       ; $8ADBAF  AD AB 00     mX
    PHA                             ; $8ADBB2  48           mX
    EOR #$0A                        ; $8ADBB3  49 0A        mX
    STA $00AB                       ; $8ADBB5  8D AB 00     mX
    LDY #$0001                      ; $8ADBB8  A0 01 00     mX
    JSR L_8ADD02                    ; $8ADBBB  20 02 DD     mX
    LDY #$0002                      ; $8ADBBE  A0 02 00     mX
    JSR L_8ADD02                    ; $8ADBC1  20 02 DD     mX
    LDY #$0003                      ; $8ADBC4  A0 03 00     mX
    JSR L_8ADD02                    ; $8ADBC7  20 02 DD     mX
    LDY #$0005                      ; $8ADBCA  A0 05 00     mX
L_8ADBCD:
    JSR L_8ADD02                    ; $8ADBCD  20 02 DD     mX
    INY                             ; $8ADBD0  C8           mX
    CPY #$000C                      ; $8ADBD1  C0 0C 00     mX
    BNE L_8ADBCD                    ; $8ADBD4  D0 F7        mX
    PLA                             ; $8ADBD6  68           mX
    STA $00AB                       ; $8ADBD7  8D AB 00     mX
    LDY #$0000                      ; $8ADBDA  A0 00 00     mX
    JSR L_8ADCC6                    ; $8ADBDD  20 C6 DC     mX
    JSR L_8ADCE3                    ; $8ADBE0  20 E3 DC     mX
    JSR L_8ADCC6                    ; $8ADBE3  20 C6 DC     mX
    JSR L_8ADCC6                    ; $8ADBE6  20 C6 DC     mX
    JSR L_8ADCE3                    ; $8ADBE9  20 E3 DC     mX
    JSR L_8ADCC6                    ; $8ADBEC  20 C6 DC     mX
    JSR L_8ADCB2                    ; $8ADBEF  20 B2 DC     mX
    JSR L_8ADCE3                    ; $8ADBF2  20 E3 DC     mX
    JSR L_8ADCB2                    ; $8ADBF5  20 B2 DC     mX
    JSR L_8ADCC6                    ; $8ADBF8  20 C6 DC     mX
    JSR L_8ADCC6                    ; $8ADBFB  20 C6 DC     mX
    JSR L_8ADCE3                    ; $8ADBFE  20 E3 DC     mX
    LDA $00AC                       ; $8ADC01  AD AC 00     mX
    AND #$0F                        ; $8ADC04  29 0F        mX
    CMP $00AB                       ; $8ADC06  CD AB 00     mX
    BNE L_8ADC85                    ; $8ADC09  D0 7A        mX
    LDY #$0003                      ; $8ADC0B  A0 03 00     mX
    STY $00A6                       ; $8ADC0E  8C A6 00     mX
    LDA #$80                        ; $8ADC11  A9 80        mX
    STA $1C14                       ; $8ADC13  8D 14 1C     mX
    STA $1C15                       ; $8ADC16  8D 15 1C     mX
    STA $1C16                       ; $8ADC19  8D 16 1C     mX
    LDA #$08                        ; $8ADC1C  A9 08        mX
    STA $1C17                       ; $8ADC1E  8D 17 1C     mX
    LDY #$000D                      ; $8ADC21  A0 0D 00     mX
L_8ADC24:
    LDA $1C4F,Y                     ; $8ADC24  B9 4F 1C     mX  password_work
    JSR L_8ADC9B                    ; $8ADC27  20 9B DC     mX
    JSR L_8ADC9B                    ; $8ADC2A  20 9B DC     mX
    DEY                             ; $8ADC2D  88           mX
    BPL L_8ADC24                    ; $8ADC2E  10 F4        mX
    LDY #$000B                      ; $8ADC30  A0 0B 00     mX
    LDA #$00                        ; $8ADC33  A9 00        mX
    STA $00A6                       ; $8ADC35  8D A6 00     mX
    JSR L_8ADC89                    ; $8ADC38  20 89 DC     mX
    JSR L_8ADC89                    ; $8ADC3B  20 89 DC     mX
    JSR L_8ADC89                    ; $8ADC3E  20 89 DC     mX
    JSR L_8ADC89                    ; $8ADC41  20 89 DC     mX
    EOR #$FF                        ; $8ADC44  49 FF        mX
    INC                             ; $8ADC46  1A           mX
    STA $1890,X                     ; $8ADC47  9D 90 18     mX  record_streak
    LDA #$00                        ; $8ADC4A  A9 00        mX
    STA $00A6                       ; $8ADC4C  8D A6 00     mX
    JSR L_8ADC89                    ; $8ADC4F  20 89 DC     mX
    JSR L_8ADC89                    ; $8ADC52  20 89 DC     mX
    JSR L_8ADC89                    ; $8ADC55  20 89 DC     mX
    JSR L_8ADC89                    ; $8ADC58  20 89 DC     mX
    STA $188F,X                     ; $8ADC5B  9D 8F 18     mX  record_losses
    LDA #$00                        ; $8ADC5E  A9 00        mX
    STA $00A6                       ; $8ADC60  8D A6 00     mX
    JSR L_8ADC89                    ; $8ADC63  20 89 DC     mX
    JSR L_8ADC89                    ; $8ADC66  20 89 DC     mX
    JSR L_8ADC89                    ; $8ADC69  20 89 DC     mX
    JSR L_8ADC89                    ; $8ADC6C  20 89 DC     mX
    STA $188E,X                     ; $8ADC6F  9D 8E 18     mX  record_wins
    REP #$20                        ; $8ADC72  C2 20        mX
    LDA $1C14                       ; $8ADC74  AD 14 1C     MX
    STA $19EE,X                     ; $8ADC77  9D EE 19     MX  record_teams
    LDA $1C16                       ; $8ADC7A  AD 16 1C     MX
    AND #$E0FF                      ; $8ADC7D  29 FF E0     MX
    STA $19F0,X                     ; $8ADC80  9D F0 19     MX
    CLC                             ; $8ADC83  18           MX
    RTS                             ; $8ADC84  60           MX
L_8ADC85:
    REP #$20                        ; $8ADC85  C2 20        mX
    SEC                             ; $8ADC87  38           MX
    RTS                             ; $8ADC88  60           MX
L_8ADC89:
    LDA $1C4F,Y                     ; $8ADC89  B9 4F 1C     mX  password_work
    LSR                             ; $8ADC8C  4A           mX
    LSR                             ; $8ADC8D  4A           mX
    ROL $00A6                       ; $8ADC8E  2E A6 00     mX
    LSR                             ; $8ADC91  4A           mX
    LSR                             ; $8ADC92  4A           mX
    ROL $00A6                       ; $8ADC93  2E A6 00     mX
    LDA $00A6                       ; $8ADC96  AD A6 00     mX
    DEY                             ; $8ADC99  88           mX
    RTS                             ; $8ADC9A  60           mX
L_8ADC9B:
    LSR                             ; $8ADC9B  4A           mX
    PHA                             ; $8ADC9C  48           mX
    PHY                             ; $8ADC9D  5A           mX
    LDY $00A6                       ; $8ADC9E  AC A6 00     mX
    LDA $1C14,Y                     ; $8ADCA1  B9 14 1C     mX
    ROR                             ; $8ADCA4  6A           mX
    STA $1C14,Y                     ; $8ADCA5  99 14 1C     mX
    BCC L_8ADCAB                    ; $8ADCA8  90 01        mX
    DEY                             ; $8ADCAA  88           mX
L_8ADCAB:
    STY $00A6                       ; $8ADCAB  8C A6 00     mX
    PLY                             ; $8ADCAE  7A           mX
    PLA                             ; $8ADCAF  68           mX
    LSR                             ; $8ADCB0  4A           mX
    RTS                             ; $8ADCB1  60           mX
L_8ADCB2:
    LDA $1C4F,Y                     ; $8ADCB2  B9 4F 1C     mX  password_work
    EOR [$A8]                       ; $8ADCB5  47 A8        mX
    INC $00A8                       ; $8ADCB7  EE A8 00     mX
    STA $1C4F,Y                     ; $8ADCBA  99 4F 1C     mX  password_work
    CLC                             ; $8ADCBD  18           mX
    ADC $00AC                       ; $8ADCBE  6D AC 00     mX
    STA $00AC                       ; $8ADCC1  8D AC 00     mX
    INY                             ; $8ADCC4  C8           mX
    RTS                             ; $8ADCC5  60           mX
L_8ADCC6:
    LDA $1C4F,Y                     ; $8ADCC6  B9 4F 1C     mX  password_work
    SEC                             ; $8ADCC9  38           mX
    SBC $1C4E                       ; $8ADCCA  ED 4E 1C     mX  password_key
    BPL L_8ADCD2                    ; $8ADCCD  10 03        mX
    CLC                             ; $8ADCCF  18           mX
    ADC #$1A                        ; $8ADCD0  69 1A        mX
L_8ADCD2:
    EOR [$A8]                       ; $8ADCD2  47 A8        mX
    INC $00A8                       ; $8ADCD4  EE A8 00     mX
    STA $1C4F,Y                     ; $8ADCD7  99 4F 1C     mX  password_work
    CLC                             ; $8ADCDA  18           mX
    ADC $00AC                       ; $8ADCDB  6D AC 00     mX
    STA $00AC                       ; $8ADCDE  8D AC 00     mX
    INY                             ; $8ADCE1  C8           mX
    RTS                             ; $8ADCE2  60           mX
L_8ADCE3:
    LDA $1C4F,Y                     ; $8ADCE3  B9 4F 1C     mX  password_work
    CLC                             ; $8ADCE6  18           mX
    ADC $1C4E                       ; $8ADCE7  6D 4E 1C     mX  password_key
    CMP #$1A                        ; $8ADCEA  C9 1A        mX
    BCC L_8ADCF1                    ; $8ADCEC  90 03        mX
    SEC                             ; $8ADCEE  38           mX
    SBC #$1A                        ; $8ADCEF  E9 1A        mX
L_8ADCF1:
    EOR [$A8]                       ; $8ADCF1  47 A8        mX
    INC $00A8                       ; $8ADCF3  EE A8 00     mX
    STA $1C4F,Y                     ; $8ADCF6  99 4F 1C     mX  password_work
    CLC                             ; $8ADCF9  18           mX
    ADC $00AC                       ; $8ADCFA  6D AC 00     mX
    STA $00AC                       ; $8ADCFD  8D AC 00     mX
    INY                             ; $8ADD00  C8           mX
    RTS                             ; $8ADD01  60           mX
L_8ADD02:
    LDA $00AB                       ; $8ADD02  AD AB 00     mX
    AND #$0F                        ; $8ADD05  29 0F        mX
    STA $00E8                       ; $8ADD07  8D E8 00     mX
    LDA $1C4F,Y                     ; $8ADD0A  B9 4F 1C     mX  password_work
    SEC                             ; $8ADD0D  38           mX
    SBC $00E8                       ; $8ADD0E  ED E8 00     mX
    BPL L_8ADD16                    ; $8ADD11  10 03        mX
    CLC                             ; $8ADD13  18           mX
    ADC #$1A                        ; $8ADD14  69 1A        mX
L_8ADD16:
    STA $1C4F,Y                     ; $8ADD16  99 4F 1C     mX  password_work
    LDA $00AB                       ; $8ADD19  AD AB 00     mX
    AND #$0F                        ; $8ADD1C  29 0F        mX
    ASL                             ; $8ADD1E  0A           mX
    BIT #$10                        ; $8ADD1F  89 10        mX
    BEQ L_8ADD25                    ; $8ADD21  F0 02        mX
    ORA #$01                        ; $8ADD23  09 01        mX
L_8ADD25:
    STA $00AB                       ; $8ADD25  8D AB 00     mX
    RTS                             ; $8ADD28  60           mX
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $8ADD29
password_xor:
    db $04,$07,$09,$03,$0C,$0F,$0E,$0A,$02,$01,$0D,$05,$06,$0B,$E2,$30 ; $8ADD39
    db $A9,$8F,$8D,$00,$21,$C2,$30,$A2,$00,$00,$BF,$C5,$DA,$14,$9F,$00 ; $8ADD49
    db $00,$7F,$E8,$E8,$E0,$C0,$08,$D0,$F1,$A2,$80,$00,$BF,$04,$00,$7F ; $8ADD59
    db $09,$00,$0C,$9F,$04,$00,$7F,$E8,$E8,$E0,$C0,$00,$D0,$EE,$A0,$1B ; $8ADD69
    db $00,$A2,$02,$00,$BF,$04,$00,$7F,$09,$00,$0C,$9F,$04,$00,$7F,$BF ; $8ADD79
    db $06,$00,$7F,$09,$00,$0C,$9F,$06,$00,$7F,$BF,$08,$00,$7F,$09,$00 ; $8ADD89
    db $0C,$9F,$08,$00,$7F,$BF,$0A,$00,$7F,$09,$00,$0C,$9F,$0A,$00,$7F ; $8ADD99
    db $8A,$18,$69,$40,$00,$AA,$88,$D0,$CB,$A0,$05,$00,$A2,$44,$05,$BF ; $8ADDA9
    db $04,$00,$7F,$29,$FF,$03,$09,$00,$10,$9F,$04,$00,$7F,$BF,$06,$00 ; $8ADDB9
    db $7F,$29,$FF,$03,$09,$00,$10,$9F,$06,$00,$7F,$8A,$18,$69,$40,$00 ; $8ADDC9
    db $AA,$88,$D0,$DB,$E2,$30,$C2,$30,$A9,$00,$80,$8D,$D0,$00,$A9,$80 ; $8ADDD9
    db $15,$8D,$D1,$00,$A9,$00,$10,$8D,$D3,$00,$A9,$10,$7F,$8D,$D4,$00 ; $8ADDE9
    db $22,$F0,$F3,$29,$E2,$30,$A9,$00,$8D,$16,$21,$A9,$00,$8D,$17,$21 ; $8ADDF9
    db $A9,$01,$8D,$00,$43,$A9,$18,$8D,$01,$43,$A9,$05,$8D,$02,$43,$A9 ; $8ADE09
    db $8E,$8D,$03,$43,$A9,$14,$8D,$04,$43,$A9,$C0,$8D,$05,$43,$A9,$4C ; $8ADE19
    db $8D,$06,$43,$A9,$01,$8D,$0B,$42,$A9,$00,$8D,$16,$21,$A9,$30,$8D ; $8ADE29
    db $17,$21,$A9,$01,$8D,$00,$43,$A9,$18,$8D,$01,$43,$A9,$00,$8D,$02 ; $8ADE39
    db $43,$A9,$10,$8D,$03,$43,$A9,$7F,$8D,$04,$43,$A9,$60,$8D,$05,$43 ; $8ADE49
    db $A9,$7B,$8D,$06,$43,$A9,$01,$8D,$0B,$42,$A9,$DF,$8D,$D0,$00,$A9 ; $8ADE59
    db $B9,$8D,$D1,$00,$A9,$2A,$8D,$D2,$00,$A2,$50,$A9,$00,$22,$53,$8B ; $8ADE69
    db $80,$A9,$80,$8D,$15,$21,$C2,$30,$A9,$00,$2C,$8D,$16,$21,$A9,$04 ; $8ADE79
    db $00,$8D,$A4,$00,$F4,$7F,$00,$AB,$A2,$1C,$00,$A0,$00,$00,$B1,$A4 ; $8ADE89
    db $8F,$18,$21,$00,$C8,$C8,$C0,$40,$00,$D0,$F3,$AF,$A4,$00,$00,$18 ; $8ADE99
    db $69,$40,$00,$8F,$A4,$00,$00,$CA,$D0,$E1,$A9,$00,$28,$8F,$16,$21 ; $8ADEA9
    db $00,$A2,$1C,$00,$A9,$00,$00,$A0,$00,$00,$8F,$18,$21,$00,$C8,$C8 ; $8ADEB9
    db $C0,$40,$00,$D0,$F5,$CA,$D0,$EF,$AB,$E2,$20,$A9,$FF,$8D,$0E,$21 ; $8ADEC9
    db $8D,$0E,$21,$A9,$00,$8D,$0D,$21,$8D,$0D,$21,$A9,$FF,$8D,$10,$21 ; $8ADED9
    db $8D,$10,$21,$A9,$00,$8D,$0F,$21,$8D,$0F,$21,$A9,$03,$8D,$2C,$21 ; $8ADEE9
    db $A9,$01,$8D,$05,$21,$A9,$28,$8D,$07,$21,$A9,$2C,$8D,$08,$21,$A9 ; $8ADEF9
    db $03,$8D,$0B,$21,$A9,$03,$8D,$01,$21,$9C,$B2,$00,$C2,$20,$9C,$69 ; $8ADF09
    db $16,$9C,$6B,$16,$9C,$6D,$16,$9C,$6F,$16,$20,$9B,$E5,$A9,$00,$00 ; $8ADF19
    db $8D,$63,$1C,$A9,$00,$02,$8D,$5F,$1C,$A9,$C0,$02,$8D,$61,$1C,$A9 ; $8ADF29
    db $FF,$FF,$8D,$77,$16,$A9,$00,$04,$8D,$B0,$00,$A9,$1C,$00,$8F,$65 ; $8ADF39
    db $16,$00,$60,$E2,$20,$A9,$E0,$8D,$0C,$42,$AD,$B2,$00,$C9,$10,$F0 ; $8ADF49
    db $06,$8D,$00,$21,$EE,$B2,$00,$C2,$20,$A9,$0B,$80,$8D,$AE,$00,$AD ; $8ADF59
    db $77,$16,$29,$FF,$00,$1A,$1A,$C9,$05,$00,$90,$36,$AD,$B2,$00,$29 ; $8ADF69
    db $FF,$00,$C9,$10,$00,$D0,$2B,$AD,$69,$16,$0D,$6B,$16,$0D,$6D,$16 ; $8ADF79
    db $0D,$6F,$16,$89,$C0,$C0,$D0,$21,$89,$00,$10,$F0,$15,$48,$DA,$5A ; $8ADF89
    db $A9,$45,$00,$22,$18,$FE,$BD,$7A,$FA,$68,$A9,$00,$00,$8D,$AE,$00 ; $8ADF99
    db $80,$14,$CE,$B0,$00,$D0,$15,$80,$0D,$48,$DA,$5A,$A9,$45,$00,$22 ; $8ADFA9
    db $18,$FE,$BD,$7A,$FA,$68,$A9,$1D,$00,$8D,$65,$16,$A9,$00,$00,$20 ; $8ADFB9
    db $85,$E4,$20,$F6,$DF,$60,$E2,$20,$CE,$B2,$00,$AD,$B2,$00,$C9,$FF ; $8ADFC9
    db $D0,$0F,$C2,$20,$AD,$AE,$00,$8D,$65,$16,$E2,$20,$A9,$00,$8D,$0C ; $8ADFD9
    db $42,$8D,$00,$21,$C2,$20,$A9,$00,$00,$20,$85,$E4,$60,$AD,$77,$16 ; $8ADFE9
    db $29,$FF,$00,$F0,$01,$60,$A2,$FE,$06,$A9,$00,$00,$9F,$00,$C3,$7E ; $8ADFF9
    db $CA,$CA,$10,$F8,$AD,$77,$16,$EB,$29,$03,$00,$49,$03,$00,$20,$B9 ; $8AE009
    db $E6,$A9,$09,$00,$8D,$67,$16,$60                                 ; $8AE019
L_8AE021:
    PEA $007E                       ; $8AE021  F4 7E 00     MX
    PLB                             ; $8AE024  AB           MX
    ASL                             ; $8AE025  0A           MX
    TAX                             ; $8AE026  AA           MX
    PHX                             ; $8AE027  DA           MX
    LDA $0BFE93,X                   ; $8AE028  BF 93 FE 0B  MX
    TAX                             ; $8AE02C  AA           MX
    LDA #$0019                      ; $8AE02D  A9 19 00     MX
    STA $00A4                       ; $8AE030  8D A4 00     MX
L_8AE033:
    LDA $13F818,X                   ; $8AE033  BF 18 F8 13  MX
    ORA #$1000                      ; $8AE037  09 00 10     MX
    STA $C300,Y                     ; $8AE03A  99 00 C3     MX
    LDA $13F84A,X                   ; $8AE03D  BF 4A F8 13  MX
    ORA #$1000                      ; $8AE041  09 00 10     MX
    STA $C340,Y                     ; $8AE044  99 40 C3     MX
    LDA $13F87C,X                   ; $8AE047  BF 7C F8 13  MX
    ORA #$1000                      ; $8AE04B  09 00 10     MX
    STA $C380,Y                     ; $8AE04E  99 80 C3     MX
    INY                             ; $8AE051  C8           MX
    INY                             ; $8AE052  C8           MX
    INX                             ; $8AE053  E8           MX
    INX                             ; $8AE054  E8           MX
    DEC $00A4                       ; $8AE055  CE A4 00     MX
    BNE L_8AE033                    ; $8AE058  D0 D9        MX
    PLX                             ; $8AE05A  FA           MX
    LDA $0BFE9D,X                   ; $8AE05B  BF 9D FE 0B  MX
    TAX                             ; $8AE05F  AA           MX
    BEQ L_8AE078                    ; $8AE060  F0 16        MX
    LDY #$0116                      ; $8AE062  A0 16 01     MX
L_8AE065:
    LDA $13F818,X                   ; $8AE065  BF 18 F8 13  MX
    ORA #$1000                      ; $8AE069  09 00 10     MX
    STA $C300,Y                     ; $8AE06C  99 00 C3     MX
    INX                             ; $8AE06F  E8           MX
    INX                             ; $8AE070  E8           MX
    INY                             ; $8AE071  C8           MX
    INY                             ; $8AE072  C8           MX
    CPY #$0134                      ; $8AE073  C0 34 01     MX
    BNE L_8AE065                    ; $8AE076  D0 ED        MX
L_8AE078:
    PLB                             ; $8AE078  AB           MX
    RTS                             ; $8AE079  60           MX
L_8AE07A:
    JSR L_8AE07E                    ; $8AE07A  20 7E E0     MX
    RTL                             ; $8AE07D  6B           MX
L_8AE07E:
    STA $00A4                       ; $8AE07E  8D A4 00     MX
    PEA $0015                       ; $8AE081  F4 15 00     MX
    PLB                             ; $8AE084  AB           MX
L_8AE085:
    LDY #$0000                      ; $8AE085  A0 00 00     MX
L_8AE088:
    LDA ($A4),Y                     ; $8AE088  B1 A4        MX
    AND #$00FF                      ; $8AE08A  29 FF 00     MX
    BEQ L_8AE0A4                    ; $8AE08D  F0 15        MX
    PHX                             ; $8AE08F  DA           MX
    SEP #$20                        ; $8AE090  E2 20        MX
    LDX #$0000                      ; $8AE092  A2 00 00     mX
L_8AE095:
    CMP $10FFA1,X                   ; $8AE095  DF A1 FF 10  mX
    BEQ L_8AE0AD                    ; $8AE099  F0 12        mX
    INX                             ; $8AE09B  E8           mX
    CPX #$0029                      ; $8AE09C  E0 29 00     mX
    BNE L_8AE095                    ; $8AE09F  D0 F4        mX
    REP #$20                        ; $8AE0A1  C2 20        mX
    PLX                             ; $8AE0A3  FA           MX
L_8AE0A4:
    INY                             ; $8AE0A4  C8           MX
    TYA                             ; $8AE0A5  98           MX
    CLC                             ; $8AE0A6  18           MX
    ADC $0000A4                     ; $8AE0A7  6F A4 00 00  MX
    PLB                             ; $8AE0AB  AB           MX
    RTS                             ; $8AE0AC  60           MX
L_8AE0AD:
    REP #$20                        ; $8AE0AD  C2 20        mX
    TXA                             ; $8AE0AF  8A           MX
    AND #$00FF                      ; $8AE0B0  29 FF 00     MX
    ASL                             ; $8AE0B3  0A           MX
    PLX                             ; $8AE0B4  FA           MX
    ORA #$1000                      ; $8AE0B5  09 00 10     MX
    STA $7EC300,X                   ; $8AE0B8  9F 00 C3 7E  MX
    INC                             ; $8AE0BC  1A           MX
    STA $7EC340,X                   ; $8AE0BD  9F 40 C3 7E  MX
    INX                             ; $8AE0C1  E8           MX
    INX                             ; $8AE0C2  E8           MX
    INY                             ; $8AE0C3  C8           MX
    BRA L_8AE088                    ; $8AE0C4  80 C2        MX
L_8AE0C6:
    STA $00A4                       ; $8AE0C6  8D A4 00     MX
    PEA $0015                       ; $8AE0C9  F4 15 00     MX
    PLB                             ; $8AE0CC  AB           MX
L_8AE0CD:
    LDY #$0000                      ; $8AE0CD  A0 00 00     MX
L_8AE0D0:
    LDA ($A4),Y                     ; $8AE0D0  B1 A4        MX
    AND #$00FF                      ; $8AE0D2  29 FF 00     MX
    BEQ L_8AE0EC                    ; $8AE0D5  F0 15        MX
    PHX                             ; $8AE0D7  DA           MX
    SEP #$20                        ; $8AE0D8  E2 20        MX
    LDX #$0000                      ; $8AE0DA  A2 00 00     mX
L_8AE0DD:
    CMP $10FFCA,X                   ; $8AE0DD  DF CA FF 10  mX
    BEQ L_8AE0F5                    ; $8AE0E1  F0 12        mX
    INX                             ; $8AE0E3  E8           mX
    CPX #$0029                      ; $8AE0E4  E0 29 00     mX
    BNE L_8AE0DD                    ; $8AE0E7  D0 F4        mX
    REP #$20                        ; $8AE0E9  C2 20        mX
    PLX                             ; $8AE0EB  FA           MX
L_8AE0EC:
    INY                             ; $8AE0EC  C8           MX
    TYA                             ; $8AE0ED  98           MX
    CLC                             ; $8AE0EE  18           MX
    ADC $0000A4                     ; $8AE0EF  6F A4 00 00  MX
    PLB                             ; $8AE0F3  AB           MX
    RTS                             ; $8AE0F4  60           MX
L_8AE0F5:
    REP #$20                        ; $8AE0F5  C2 20        mX
    TXA                             ; $8AE0F7  8A           MX
    AND #$00FF                      ; $8AE0F8  29 FF 00     MX
    ASL                             ; $8AE0FB  0A           MX
    ASL                             ; $8AE0FC  0A           MX
    ASL                             ; $8AE0FD  0A           MX
    ASL                             ; $8AE0FE  0A           MX
    ASL                             ; $8AE0FF  0A           MX
    ASL                             ; $8AE100  0A           MX
    PLX                             ; $8AE101  FA           MX
    PHX                             ; $8AE102  DA           MX
    PHY                             ; $8AE103  5A           MX
    TAY                             ; $8AE104  A8           MX
    PHB                             ; $8AE105  8B           MX
    PEA $0014                       ; $8AE106  F4 14 00     MX
    PLB                             ; $8AE109  AB           MX
    LDA #$0007                      ; $8AE10A  A9 07 00     MX
    STA $00A8                       ; $8AE10D  8D A8 00     MX
L_8AE110:
    LDA #$0004                      ; $8AE110  A9 04 00     MX
    STA $00A6                       ; $8AE113  8D A6 00     MX
L_8AE116:
    LDA $E8CD,Y                     ; $8AE116  B9 CD E8     MX
    ORA #$2000                      ; $8AE119  09 00 20     MX
    STA $7EC300,X                   ; $8AE11C  9F 00 C3 7E  MX
    INY                             ; $8AE120  C8           MX
    INY                             ; $8AE121  C8           MX
    INX                             ; $8AE122  E8           MX
    INX                             ; $8AE123  E8           MX
    DEC $00A6                       ; $8AE124  CE A6 00     MX
    BNE L_8AE116                    ; $8AE127  D0 ED        MX
    TXA                             ; $8AE129  8A           MX
    CLC                             ; $8AE12A  18           MX
    ADC #$0038                      ; $8AE12B  69 38 00     MX
    TAX                             ; $8AE12E  AA           MX
    DEC $00A8                       ; $8AE12F  CE A8 00     MX
    BNE L_8AE110                    ; $8AE132  D0 DC        MX
    PLB                             ; $8AE134  AB           MX
    PLB                             ; $8AE135  AB           MX
    PLY                             ; $8AE136  7A           MX
    PLA                             ; $8AE137  68           MX
    CLC                             ; $8AE138  18           MX
    ADC #$0008                      ; $8AE139  69 08 00     MX
    TAX                             ; $8AE13C  AA           MX
    INY                             ; $8AE13D  C8           MX
    BRA L_8AE0D0                    ; $8AE13E  80 90        MX
L_8AE140:
    LDX #$0000                      ; $8AE140  A2 00 00     MX
    LDA #$0000                      ; $8AE143  A9 00 00     MX
L_8AE146:
    STA $1B50,X                     ; $8AE146  9D 50 1B     MX
    INC                             ; $8AE149  1A           MX
    INX                             ; $8AE14A  E8           MX
    INX                             ; $8AE14B  E8           MX
    CPX #$00B0                      ; $8AE14C  E0 B0 00     MX
    BNE L_8AE146                    ; $8AE14F  D0 F5        MX
    LDA #$0058                      ; $8AE151  A9 58 00     MX
    STA $00A6                       ; $8AE154  8D A6 00     MX
L_8AE157:
    LDY #$0000                      ; $8AE157  A0 00 00     MX
    STZ $00A8                       ; $8AE15A  9C A8 00     MX
L_8AE15D:
    LDA $1B50,Y                     ; $8AE15D  B9 50 1B     MX
    ASL                             ; $8AE160  0A           MX
    ASL                             ; $8AE161  0A           MX
    TAX                             ; $8AE162  AA           MX
    LDA $1B52,Y                     ; $8AE163  B9 52 1B     MX
    ASL                             ; $8AE166  0A           MX
    ASL                             ; $8AE167  0A           MX
    PHY                             ; $8AE168  5A           MX
    TAY                             ; $8AE169  A8           MX
    LDA $172E,X                     ; $8AE16A  BD 2E 17     MX  record_initials
    BPL L_8AE172                    ; $8AE16D  10 03        MX
    JMP L_8AE1FA                    ; $8AE16F  4C FA E1     MX
L_8AE172:
    LDA $172E,Y                     ; $8AE172  B9 2E 17     MX  record_initials
    BMI L_8AE1E2                    ; $8AE175  30 6B        MX
    LDA $1890,X                     ; $8AE177  BD 90 18     MX  record_streak
    AND #$00FF                      ; $8AE17A  29 FF 00     MX
    STA $00A4                       ; $8AE17D  8D A4 00     MX
    LDA $1890,Y                     ; $8AE180  B9 90 18     MX  record_streak
    AND #$00FF                      ; $8AE183  29 FF 00     MX
    CMP $00A4                       ; $8AE186  CD A4 00     MX
    BCC L_8AE1E2                    ; $8AE189  90 57        MX
    BNE L_8AE1CB                    ; $8AE18B  D0 3E        MX
    LDA $188E,X                     ; $8AE18D  BD 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE190  29 FF 00     MX
    STA $00A4                       ; $8AE193  8D A4 00     MX
    LDA $188E,Y                     ; $8AE196  B9 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE199  29 FF 00     MX
    CMP $00A4                       ; $8AE19C  CD A4 00     MX
    BCC L_8AE1E2                    ; $8AE19F  90 41        MX
    BNE L_8AE1CB                    ; $8AE1A1  D0 28        MX
    LDA $188F,Y                     ; $8AE1A3  B9 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE1A6  29 FF 00     MX
    STA $00A4                       ; $8AE1A9  8D A4 00     MX
    LDA $188F,X                     ; $8AE1AC  BD 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE1AF  29 FF 00     MX
    CMP $00A4                       ; $8AE1B2  CD A4 00     MX
    BCC L_8AE1E2                    ; $8AE1B5  90 2B        MX
    BNE L_8AE1CB                    ; $8AE1B7  D0 12        MX
    PHX                             ; $8AE1B9  DA           MX
    TYX                             ; $8AE1BA  BB           MX
    JSR L_8AE436                    ; $8AE1BB  20 36 E4     MX
    PLX                             ; $8AE1BE  FA           MX
    PHA                             ; $8AE1BF  48           MX
    JSR L_8AE436                    ; $8AE1C0  20 36 E4     MX
    PLA                             ; $8AE1C3  68           MX
    CMP $00A4                       ; $8AE1C4  CD A4 00     MX
    BCC L_8AE1E2                    ; $8AE1C7  90 19        MX
    BEQ L_8AE1E2                    ; $8AE1C9  F0 17        MX
L_8AE1CB:
    INC $00A8                       ; $8AE1CB  EE A8 00     MX
    PLY                             ; $8AE1CE  7A           MX
    PHY                             ; $8AE1CF  5A           MX
    LDA $1B50,Y                     ; $8AE1D0  B9 50 1B     MX
    STA $00A4                       ; $8AE1D3  8D A4 00     MX
    LDA $1B52,Y                     ; $8AE1D6  B9 52 1B     MX
    STA $1B50,Y                     ; $8AE1D9  99 50 1B     MX
    LDA $00A4                       ; $8AE1DC  AD A4 00     MX
    STA $1B52,Y                     ; $8AE1DF  99 52 1B     MX
L_8AE1E2:
    PLY                             ; $8AE1E2  7A           MX
    INY                             ; $8AE1E3  C8           MX
    INY                             ; $8AE1E4  C8           MX
    CPY #$00AE                      ; $8AE1E5  C0 AE 00     MX
    BEQ L_8AE1ED                    ; $8AE1E8  F0 03        MX
    JMP L_8AE15D                    ; $8AE1EA  4C 5D E1     MX
L_8AE1ED:
    LDA $00A8                       ; $8AE1ED  AD A8 00     MX
    BEQ L_8AE201                    ; $8AE1F0  F0 0F        MX
    DEC $00A6                       ; $8AE1F2  CE A6 00     MX
    BEQ L_8AE201                    ; $8AE1F5  F0 0A        MX
    JMP L_8AE157                    ; $8AE1F7  4C 57 E1     MX
L_8AE1FA:
    LDA $172E,Y                     ; $8AE1FA  B9 2E 17     MX  record_initials
    BMI L_8AE1E2                    ; $8AE1FD  30 E3        MX
    BRA L_8AE1CB                    ; $8AE1FF  80 CA        MX
L_8AE201:
    RTS                             ; $8AE201  60           MX
L_8AE202:
    LDX #$0000                      ; $8AE202  A2 00 00     MX
    LDA #$0000                      ; $8AE205  A9 00 00     MX
L_8AE208:
    STA $1B50,X                     ; $8AE208  9D 50 1B     MX
    INC                             ; $8AE20B  1A           MX
    INX                             ; $8AE20C  E8           MX
    INX                             ; $8AE20D  E8           MX
    CPX #$00B0                      ; $8AE20E  E0 B0 00     MX
    BNE L_8AE208                    ; $8AE211  D0 F5        MX
    LDA #$0058                      ; $8AE213  A9 58 00     MX
    STA $00A6                       ; $8AE216  8D A6 00     MX
L_8AE219:
    LDY #$0000                      ; $8AE219  A0 00 00     MX
    STZ $00A8                       ; $8AE21C  9C A8 00     MX
L_8AE21F:
    LDA $1B50,Y                     ; $8AE21F  B9 50 1B     MX
    ASL                             ; $8AE222  0A           MX
    ASL                             ; $8AE223  0A           MX
    TAX                             ; $8AE224  AA           MX
    LDA $1B52,Y                     ; $8AE225  B9 52 1B     MX
    ASL                             ; $8AE228  0A           MX
    ASL                             ; $8AE229  0A           MX
    PHY                             ; $8AE22A  5A           MX
    TAY                             ; $8AE22B  A8           MX
    LDA $172E,X                     ; $8AE22C  BD 2E 17     MX  record_initials
    BPL L_8AE234                    ; $8AE22F  10 03        MX
    JMP L_8AE2DB                    ; $8AE231  4C DB E2     MX
L_8AE234:
    LDA $172E,Y                     ; $8AE234  B9 2E 17     MX  record_initials
    BPL L_8AE23C                    ; $8AE237  10 03        MX
    JMP L_8AE2C3                    ; $8AE239  4C C3 E2     MX
L_8AE23C:
    LDA $188E,Y                     ; $8AE23C  B9 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE23F  29 FF 00     MX
    STA $00A4                       ; $8AE242  8D A4 00     MX
    LDA $188F,Y                     ; $8AE245  B9 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE248  29 FF 00     MX
    CLC                             ; $8AE24B  18           MX
    ADC $00A4                       ; $8AE24C  6D A4 00     MX
    PHA                             ; $8AE24F  48           MX
    LDA $188E,X                     ; $8AE250  BD 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE253  29 FF 00     MX
    STA $00A4                       ; $8AE256  8D A4 00     MX
    LDA $188F,X                     ; $8AE259  BD 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE25C  29 FF 00     MX
    CLC                             ; $8AE25F  18           MX
    ADC $00A4                       ; $8AE260  6D A4 00     MX
    STA $00A4                       ; $8AE263  8D A4 00     MX
    PLA                             ; $8AE266  68           MX
    CMP $00A4                       ; $8AE267  CD A4 00     MX
    BCC L_8AE2C3                    ; $8AE26A  90 57        MX
    BNE L_8AE2AC                    ; $8AE26C  D0 3E        MX
    LDA $188E,X                     ; $8AE26E  BD 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE271  29 FF 00     MX
    STA $00A4                       ; $8AE274  8D A4 00     MX
    LDA $188E,Y                     ; $8AE277  B9 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE27A  29 FF 00     MX
    CMP $00A4                       ; $8AE27D  CD A4 00     MX
    BCC L_8AE2C3                    ; $8AE280  90 41        MX
    BNE L_8AE2AC                    ; $8AE282  D0 28        MX
    LDA $188F,Y                     ; $8AE284  B9 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE287  29 FF 00     MX
    STA $00A4                       ; $8AE28A  8D A4 00     MX
    LDA $188F,X                     ; $8AE28D  BD 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE290  29 FF 00     MX
    CMP $00A4                       ; $8AE293  CD A4 00     MX
    BCC L_8AE2C3                    ; $8AE296  90 2B        MX
    BNE L_8AE2AC                    ; $8AE298  D0 12        MX
    PHX                             ; $8AE29A  DA           MX
    TYX                             ; $8AE29B  BB           MX
    JSR L_8AE436                    ; $8AE29C  20 36 E4     MX
    PLX                             ; $8AE29F  FA           MX
    PHA                             ; $8AE2A0  48           MX
    JSR L_8AE436                    ; $8AE2A1  20 36 E4     MX
    PLA                             ; $8AE2A4  68           MX
    CMP $00A4                       ; $8AE2A5  CD A4 00     MX
    BCC L_8AE2C3                    ; $8AE2A8  90 19        MX
    BEQ L_8AE2C3                    ; $8AE2AA  F0 17        MX
L_8AE2AC:
    INC $00A8                       ; $8AE2AC  EE A8 00     MX
    PLY                             ; $8AE2AF  7A           MX
    PHY                             ; $8AE2B0  5A           MX
    LDA $1B50,Y                     ; $8AE2B1  B9 50 1B     MX
    STA $00A4                       ; $8AE2B4  8D A4 00     MX
    LDA $1B52,Y                     ; $8AE2B7  B9 52 1B     MX
    STA $1B50,Y                     ; $8AE2BA  99 50 1B     MX
    LDA $00A4                       ; $8AE2BD  AD A4 00     MX
    STA $1B52,Y                     ; $8AE2C0  99 52 1B     MX
L_8AE2C3:
    PLY                             ; $8AE2C3  7A           MX
    INY                             ; $8AE2C4  C8           MX
    INY                             ; $8AE2C5  C8           MX
    CPY #$00AE                      ; $8AE2C6  C0 AE 00     MX
    BEQ L_8AE2CE                    ; $8AE2C9  F0 03        MX
    JMP L_8AE21F                    ; $8AE2CB  4C 1F E2     MX
L_8AE2CE:
    LDA $00A8                       ; $8AE2CE  AD A8 00     MX
    BEQ L_8AE2E2                    ; $8AE2D1  F0 0F        MX
    DEC $00A6                       ; $8AE2D3  CE A6 00     MX
    BEQ L_8AE2E2                    ; $8AE2D6  F0 0A        MX
    JMP L_8AE219                    ; $8AE2D8  4C 19 E2     MX
L_8AE2DB:
    LDA $172E,Y                     ; $8AE2DB  B9 2E 17     MX  record_initials
    BMI L_8AE2C3                    ; $8AE2DE  30 E3        MX
    BRA L_8AE2AC                    ; $8AE2E0  80 CA        MX
L_8AE2E2:
    RTS                             ; $8AE2E2  60           MX
L_8AE2E3:
    LDX #$0000                      ; $8AE2E3  A2 00 00     MX
    LDA #$0000                      ; $8AE2E6  A9 00 00     MX
L_8AE2E9:
    STA $1B50,X                     ; $8AE2E9  9D 50 1B     MX
    INC                             ; $8AE2EC  1A           MX
    INX                             ; $8AE2ED  E8           MX
    INX                             ; $8AE2EE  E8           MX
    CPX #$00B0                      ; $8AE2EF  E0 B0 00     MX
    BNE L_8AE2E9                    ; $8AE2F2  D0 F5        MX
    LDA #$0058                      ; $8AE2F4  A9 58 00     MX
    STA $00A6                       ; $8AE2F7  8D A6 00     MX
L_8AE2FA:
    LDY #$0000                      ; $8AE2FA  A0 00 00     MX
    STZ $00A8                       ; $8AE2FD  9C A8 00     MX
L_8AE300:
    LDA $1B50,Y                     ; $8AE300  B9 50 1B     MX
    ASL                             ; $8AE303  0A           MX
    ASL                             ; $8AE304  0A           MX
    TAX                             ; $8AE305  AA           MX
    LDA $1B52,Y                     ; $8AE306  B9 52 1B     MX
    ASL                             ; $8AE309  0A           MX
    ASL                             ; $8AE30A  0A           MX
    PHY                             ; $8AE30B  5A           MX
    TAY                             ; $8AE30C  A8           MX
    LDA $172E,X                     ; $8AE30D  BD 2E 17     MX  record_initials
    BMI L_8AE388                    ; $8AE310  30 76        MX
    LDA $172E,Y                     ; $8AE312  B9 2E 17     MX  record_initials
    BMI L_8AE373                    ; $8AE315  30 5C        MX
    JSR L_8AE436                    ; $8AE317  20 36 E4     MX
    AND #$001F                      ; $8AE31A  29 1F 00     MX
    STA $00A4                       ; $8AE31D  8D A4 00     MX
    PHX                             ; $8AE320  DA           MX
    TYX                             ; $8AE321  BB           MX
    JSR L_8AE436                    ; $8AE322  20 36 E4     MX
    PLX                             ; $8AE325  FA           MX
    AND #$001F                      ; $8AE326  29 1F 00     MX
    CMP $00A4                       ; $8AE329  CD A4 00     MX
    BCC L_8AE373                    ; $8AE32C  90 45        MX
    BNE L_8AE35C                    ; $8AE32E  D0 2C        MX
    LDA $188E,X                     ; $8AE330  BD 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE333  29 FF 00     MX
    STA $00A4                       ; $8AE336  8D A4 00     MX
    LDA $188E,Y                     ; $8AE339  B9 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE33C  29 FF 00     MX
    CMP $00A4                       ; $8AE33F  CD A4 00     MX
    BCC L_8AE373                    ; $8AE342  90 2F        MX
    BNE L_8AE35C                    ; $8AE344  D0 16        MX
    LDA $188F,Y                     ; $8AE346  B9 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE349  29 FF 00     MX
    STA $00A4                       ; $8AE34C  8D A4 00     MX
    LDA $188F,X                     ; $8AE34F  BD 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE352  29 FF 00     MX
    CMP $00A4                       ; $8AE355  CD A4 00     MX
    BCC L_8AE373                    ; $8AE358  90 19        MX
    BEQ L_8AE373                    ; $8AE35A  F0 17        MX
L_8AE35C:
    INC $00A8                       ; $8AE35C  EE A8 00     MX
    PLY                             ; $8AE35F  7A           MX
    PHY                             ; $8AE360  5A           MX
    LDA $1B50,Y                     ; $8AE361  B9 50 1B     MX
    STA $00A4                       ; $8AE364  8D A4 00     MX
    LDA $1B52,Y                     ; $8AE367  B9 52 1B     MX
    STA $1B50,Y                     ; $8AE36A  99 50 1B     MX
    LDA $00A4                       ; $8AE36D  AD A4 00     MX
    STA $1B52,Y                     ; $8AE370  99 52 1B     MX
L_8AE373:
    PLY                             ; $8AE373  7A           MX
    INY                             ; $8AE374  C8           MX
    INY                             ; $8AE375  C8           MX
    CPY #$00AE                      ; $8AE376  C0 AE 00     MX
    BNE L_8AE300                    ; $8AE379  D0 85        MX
    LDA $00A8                       ; $8AE37B  AD A8 00     MX
    BEQ L_8AE38F                    ; $8AE37E  F0 0F        MX
    DEC $00A6                       ; $8AE380  CE A6 00     MX
    BEQ L_8AE38F                    ; $8AE383  F0 0A        MX
    JMP L_8AE2FA                    ; $8AE385  4C FA E2     MX
L_8AE388:
    LDA $172E,Y                     ; $8AE388  B9 2E 17     MX  record_initials
    BMI L_8AE373                    ; $8AE38B  30 E6        MX
    BRA L_8AE35C                    ; $8AE38D  80 CD        MX
L_8AE38F:
    RTS                             ; $8AE38F  60           MX
L_8AE390:
    LDX #$0000                      ; $8AE390  A2 00 00     MX
    LDA #$0000                      ; $8AE393  A9 00 00     MX
L_8AE396:
    STA $1B50,X                     ; $8AE396  9D 50 1B     MX
    INC                             ; $8AE399  1A           MX
    INX                             ; $8AE39A  E8           MX
    INX                             ; $8AE39B  E8           MX
    CPX #$00B0                      ; $8AE39C  E0 B0 00     MX
    BNE L_8AE396                    ; $8AE39F  D0 F5        MX
    LDA #$0058                      ; $8AE3A1  A9 58 00     MX
    STA $00A6                       ; $8AE3A4  8D A6 00     MX
L_8AE3A7:
    LDY #$0000                      ; $8AE3A7  A0 00 00     MX
    STZ $00A8                       ; $8AE3AA  9C A8 00     MX
L_8AE3AD:
    LDA $1B50,Y                     ; $8AE3AD  B9 50 1B     MX
    ASL                             ; $8AE3B0  0A           MX
    ASL                             ; $8AE3B1  0A           MX
    TAX                             ; $8AE3B2  AA           MX
    LDA $1B52,Y                     ; $8AE3B3  B9 52 1B     MX
    ASL                             ; $8AE3B6  0A           MX
    ASL                             ; $8AE3B7  0A           MX
    PHY                             ; $8AE3B8  5A           MX
    TAY                             ; $8AE3B9  A8           MX
    LDA $172E,X                     ; $8AE3BA  BD 2E 17     MX  record_initials
    BMI L_8AE42E                    ; $8AE3BD  30 6F        MX
    LDA $172E,Y                     ; $8AE3BF  B9 2E 17     MX  record_initials
    BMI L_8AE419                    ; $8AE3C2  30 55        MX
    LDA $188E,X                     ; $8AE3C4  BD 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE3C7  29 FF 00     MX
    STA $00A4                       ; $8AE3CA  8D A4 00     MX
    LDA $188E,Y                     ; $8AE3CD  B9 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE3D0  29 FF 00     MX
    CMP $00A4                       ; $8AE3D3  CD A4 00     MX
    BCC L_8AE419                    ; $8AE3D6  90 41        MX
    BNE L_8AE402                    ; $8AE3D8  D0 28        MX
    LDA $188F,Y                     ; $8AE3DA  B9 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE3DD  29 FF 00     MX
    STA $00A4                       ; $8AE3E0  8D A4 00     MX
    LDA $188F,X                     ; $8AE3E3  BD 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE3E6  29 FF 00     MX
    CMP $00A4                       ; $8AE3E9  CD A4 00     MX
    BCC L_8AE419                    ; $8AE3EC  90 2B        MX
    BNE L_8AE402                    ; $8AE3EE  D0 12        MX
    PHX                             ; $8AE3F0  DA           MX
    TYX                             ; $8AE3F1  BB           MX
    JSR L_8AE436                    ; $8AE3F2  20 36 E4     MX
    PLX                             ; $8AE3F5  FA           MX
    PHA                             ; $8AE3F6  48           MX
    JSR L_8AE436                    ; $8AE3F7  20 36 E4     MX
    PLA                             ; $8AE3FA  68           MX
    CMP $00A4                       ; $8AE3FB  CD A4 00     MX
    BCC L_8AE419                    ; $8AE3FE  90 19        MX
    BEQ L_8AE419                    ; $8AE400  F0 17        MX
L_8AE402:
    INC $00A8                       ; $8AE402  EE A8 00     MX
    PLY                             ; $8AE405  7A           MX
    PHY                             ; $8AE406  5A           MX
    LDA $1B50,Y                     ; $8AE407  B9 50 1B     MX
    STA $00A4                       ; $8AE40A  8D A4 00     MX
    LDA $1B52,Y                     ; $8AE40D  B9 52 1B     MX
    STA $1B50,Y                     ; $8AE410  99 50 1B     MX
    LDA $00A4                       ; $8AE413  AD A4 00     MX
    STA $1B52,Y                     ; $8AE416  99 52 1B     MX
L_8AE419:
    PLY                             ; $8AE419  7A           MX
    INY                             ; $8AE41A  C8           MX
    INY                             ; $8AE41B  C8           MX
    CPY #$00AE                      ; $8AE41C  C0 AE 00     MX
    BNE L_8AE3AD                    ; $8AE41F  D0 8C        MX
    LDA $00A8                       ; $8AE421  AD A8 00     MX
    BEQ L_8AE435                    ; $8AE424  F0 0F        MX
    DEC $00A6                       ; $8AE426  CE A6 00     MX
    BEQ L_8AE435                    ; $8AE429  F0 0A        MX
    JMP L_8AE3A7                    ; $8AE42B  4C A7 E3     MX
L_8AE42E:
    LDA $172E,Y                     ; $8AE42E  B9 2E 17     MX  record_initials
    BMI L_8AE419                    ; $8AE431  30 E6        MX
    BRA L_8AE402                    ; $8AE433  80 CD        MX
L_8AE435:
    RTS                             ; $8AE435  60           MX
L_8AE436:
    SEP #$20                        ; $8AE436  E2 20        MX
    LDA $0019EE,X                   ; $8AE438  BF EE 19 00  mX  record_teams
    STA $1C15                       ; $8AE43C  8D 15 1C     mX
    LDA $0019EF,X                   ; $8AE43F  BF EF 19 00  mX
    STA $1C14                       ; $8AE443  8D 14 1C     mX
    LDA $0019F0,X                   ; $8AE446  BF F0 19 00  mX
    STA $1C17                       ; $8AE44A  8D 17 1C     mX
    LDA $0019F1,X                   ; $8AE44D  BF F1 19 00  mX
    STA $1C16                       ; $8AE451  8D 16 1C     mX
    REP #$20                        ; $8AE454  C2 20        mX
    PHX                             ; $8AE456  DA           MX
    PHY                             ; $8AE457  5A           MX
    LDY #$0000                      ; $8AE458  A0 00 00     MX
    LDX #$001B                      ; $8AE45B  A2 1B 00     MX
    STZ $00AA                       ; $8AE45E  9C AA 00     MX
    LDA $1C14,Y                     ; $8AE461  B9 14 1C     MX
    SEC                             ; $8AE464  38           MX
    ROL                             ; $8AE465  2A           MX
    STA $00AC                       ; $8AE466  8D AC 00     MX
L_8AE469:
    BCC L_8AE46E                    ; $8AE469  90 03        MX
    INC $00AA                       ; $8AE46B  EE AA 00     MX
L_8AE46E:
    ASL $00AC                       ; $8AE46E  0E AC 00     MX
    BNE L_8AE47C                    ; $8AE471  D0 09        MX
    INY                             ; $8AE473  C8           MX
    INY                             ; $8AE474  C8           MX
    LDA $1C14,Y                     ; $8AE475  B9 14 1C     MX
    ROL                             ; $8AE478  2A           MX
    STA $00AC                       ; $8AE479  8D AC 00     MX
L_8AE47C:
    DEX                             ; $8AE47C  CA           MX
    BNE L_8AE469                    ; $8AE47D  D0 EA        MX
    PLY                             ; $8AE47F  7A           MX
    PLX                             ; $8AE480  FA           MX
    LDA $00AA                       ; $8AE481  AD AA 00     MX
    RTS                             ; $8AE484  60           MX
L_8AE485:
    CMP #$0000                      ; $8AE485  C9 00 00     MX
    BNE L_8AE4B8                    ; $8AE488  D0 2E        MX
    PEA $007E                       ; $8AE48A  F4 7E 00     MX
    PLB                             ; $8AE48D  AB           MX
    LDY #$0000                      ; $8AE48E  A0 00 00     MX
    SEP #$20                        ; $8AE491  E2 20        MX
    LDA #$C7                        ; $8AE493  A9 C7        mX
    STA $004202                     ; $8AE495  8F 02 42 00  mX
    REP #$20                        ; $8AE499  C2 20        mX
    LDX $1C5F                       ; $8AE49B  AE 5F 1C     MX
    LDA #$0010                      ; $8AE49E  A9 10 00     MX
    JSR L_8AE50F                    ; $8AE4A1  20 0F E5     MX
    LDX $1C61                       ; $8AE4A4  AE 61 1C     MX
    LDA #$0010                      ; $8AE4A7  A9 10 00     MX
    JSR L_8AE50F                    ; $8AE4AA  20 0F E5     MX
    LDX $1C63                       ; $8AE4AD  AE 63 1C     MX
    LDA #$0070                      ; $8AE4B0  A9 70 00     MX
    JSR L_8AE50F                    ; $8AE4B3  20 0F E5     MX
    BRA L_8AE4DB                    ; $8AE4B6  80 23        MX
L_8AE4B8:
    PEA $007E                       ; $8AE4B8  F4 7E 00     MX
    PLB                             ; $8AE4BB  AB           MX
    LDY #$0000                      ; $8AE4BC  A0 00 00     MX
    SEP #$20                        ; $8AE4BF  E2 20        MX
    LDA #$C7                        ; $8AE4C1  A9 C7        mX
    STA $004202                     ; $8AE4C3  8F 02 42 00  mX
    REP #$20                        ; $8AE4C7  C2 20        mX
    LDX $1C5F                       ; $8AE4C9  AE 5F 1C     MX
    LDA #$0010                      ; $8AE4CC  A9 10 00     MX
    JSR L_8AE50F                    ; $8AE4CF  20 0F E5     MX
    LDX $1C63                       ; $8AE4D2  AE 63 1C     MX
    LDA #$0080                      ; $8AE4D5  A9 80 00     MX
    JSR L_8AE50F                    ; $8AE4D8  20 0F E5     MX
L_8AE4DB:
    PLB                             ; $8AE4DB  AB           MX
    LDA $1C5F                       ; $8AE4DC  AD 5F 1C     MX
    DEC                             ; $8AE4DF  3A           MX
    DEC                             ; $8AE4E0  3A           MX
    CMP #$0200                      ; $8AE4E1  C9 00 02     MX
    BCS L_8AE4EA                    ; $8AE4E4  B0 04        MX
    CLC                             ; $8AE4E6  18           MX
    ADC #$0080                      ; $8AE4E7  69 80 00     MX
L_8AE4EA:
    STA $1C5F                       ; $8AE4EA  8D 5F 1C     MX
    LDA $1C61                       ; $8AE4ED  AD 61 1C     MX
    INC                             ; $8AE4F0  1A           MX
    INC                             ; $8AE4F1  1A           MX
    CMP #$0340                      ; $8AE4F2  C9 40 03     MX
    BCC L_8AE4FB                    ; $8AE4F5  90 04        MX
    SEC                             ; $8AE4F7  38           MX
    SBC #$0080                      ; $8AE4F8  E9 80 00     MX
L_8AE4FB:
    STA $1C61                       ; $8AE4FB  8D 61 1C     MX
    LDA $1C63                       ; $8AE4FE  AD 63 1C     MX
    INC                             ; $8AE501  1A           MX
    INC                             ; $8AE502  1A           MX
    CMP #$0200                      ; $8AE503  C9 00 02     MX
    BCC L_8AE50B                    ; $8AE506  90 03        MX
    LDA #$0000                      ; $8AE508  A9 00 00     MX
L_8AE50B:
    STA $1C63                       ; $8AE50B  8D 63 1C     MX
    RTS                             ; $8AE50E  60           MX
L_8AE50F:
    STA $00A8                       ; $8AE50F  8D A8 00     MX
L_8AE512:
    LDA $13FC2D,X                   ; $8AE512  BF 2D FC 13  MX
    STA $00A4                       ; $8AE516  8D A4 00     MX
    STA $CD88,Y                     ; $8AE519  99 88 CD     MX
    SEP #$20                        ; $8AE51C  E2 20        MX
    LDA $00A4                       ; $8AE51E  AD A4 00     mX
    AND #$1F                        ; $8AE521  29 1F        mX
    STA $004203                     ; $8AE523  8F 03 42 00  mX
    NOP                             ; $8AE527  EA           mX
    NOP                             ; $8AE528  EA           mX
    NOP                             ; $8AE529  EA           mX
    NOP                             ; $8AE52A  EA           mX
    LDA $004217                     ; $8AE52B  AF 17 42 00  mX
    AND #$1F                        ; $8AE52F  29 1F        mX
    STA $00A6                       ; $8AE531  8D A6 00     mX
    LDA $00A5                       ; $8AE534  AD A5 00     mX
    AND #$7C                        ; $8AE537  29 7C        mX
    LSR                             ; $8AE539  4A           mX
    LSR                             ; $8AE53A  4A           mX
    STA $004203                     ; $8AE53B  8F 03 42 00  mX
    NOP                             ; $8AE53F  EA           mX
    NOP                             ; $8AE540  EA           mX
    NOP                             ; $8AE541  EA           mX
    NOP                             ; $8AE542  EA           mX
    LDA $004217                     ; $8AE543  AF 17 42 00  mX
    AND #$1F                        ; $8AE547  29 1F        mX
    ASL                             ; $8AE549  0A           mX
    ASL                             ; $8AE54A  0A           mX
    STA $00A7                       ; $8AE54B  8D A7 00     mX
    REP #$20                        ; $8AE54E  C2 20        mX
    LDA $00A4                       ; $8AE550  AD A4 00     MX
    AND #$03E0                      ; $8AE553  29 E0 03     MX
    ASL                             ; $8AE556  0A           MX
    ASL                             ; $8AE557  0A           MX
    ASL                             ; $8AE558  0A           MX
    XBA                             ; $8AE559  EB           MX
    SEP #$20                        ; $8AE55A  E2 20        MX
    STA $004203                     ; $8AE55C  8F 03 42 00  mX
    NOP                             ; $8AE560  EA           mX
    NOP                             ; $8AE561  EA           mX
    NOP                             ; $8AE562  EA           mX
    NOP                             ; $8AE563  EA           mX
    LDA $004217                     ; $8AE564  AF 17 42 00  mX
    REP #$20                        ; $8AE568  C2 20        mX
    AND #$001F                      ; $8AE56A  29 1F 00     MX
    ASL                             ; $8AE56D  0A           MX
    ASL                             ; $8AE56E  0A           MX
    ASL                             ; $8AE56F  0A           MX
    ASL                             ; $8AE570  0A           MX
    ASL                             ; $8AE571  0A           MX
    ORA $00A6                       ; $8AE572  0D A6 00     MX
    STA $D06C,Y                     ; $8AE575  99 6C D0     MX
    LDA $00A4                       ; $8AE578  AD A4 00     MX
    AND #$7BDE                      ; $8AE57B  29 DE 7B     MX
    LSR                             ; $8AE57E  4A           MX
    STA $D350,Y                     ; $8AE57F  99 50 D3     MX
    INX                             ; $8AE582  E8           MX
    INX                             ; $8AE583  E8           MX
    CPX #$0200                      ; $8AE584  E0 00 02     MX
    BNE L_8AE58C                    ; $8AE587  D0 03        MX
    LDX #$0000                      ; $8AE589  A2 00 00     MX
L_8AE58C:
    TYA                             ; $8AE58C  98           MX
    CLC                             ; $8AE58D  18           MX
    ADC #$0005                      ; $8AE58E  69 05 00     MX
    TAY                             ; $8AE591  A8           MX
    DEC $00A8                       ; $8AE592  CE A8 00     MX
    BEQ L_8AE59A                    ; $8AE595  F0 03        MX
    JMP L_8AE512                    ; $8AE597  4C 12 E5     MX
L_8AE59A:
    RTS                             ; $8AE59A  60           MX
L_8AE59B:
    PEA $007E                       ; $8AE59B  F4 7E 00     MX
    PLB                             ; $8AE59E  AB           MX
    LDX #$0000                      ; $8AE59F  A2 00 00     MX
    LDY #$0090                      ; $8AE5A2  A0 90 00     MX
L_8AE5A5:
    LDA #$0001                      ; $8AE5A5  A9 01 00     MX
    STA $CD80,X                     ; $8AE5A8  9D 80 CD     MX
    STA $D064,X                     ; $8AE5AB  9D 64 D0     MX
    STA $D348,X                     ; $8AE5AE  9D 48 D3     MX
    LDA #$4141                      ; $8AE5B1  A9 41 41     MX
    STA $CD81,X                     ; $8AE5B4  9D 81 CD     MX
    LDA #$4242                      ; $8AE5B7  A9 42 42     MX
    STA $D065,X                     ; $8AE5BA  9D 65 D0     MX
    LDA #$4343                      ; $8AE5BD  A9 43 43     MX
    STA $D349,X                     ; $8AE5C0  9D 49 D3     MX
    LDA #$0000                      ; $8AE5C3  A9 00 00     MX
    STA $CD83,X                     ; $8AE5C6  9D 83 CD     MX
    STA $D067,X                     ; $8AE5C9  9D 67 D0     MX
    STA $D34B,X                     ; $8AE5CC  9D 4B D3     MX
    TXA                             ; $8AE5CF  8A           MX
    CLC                             ; $8AE5D0  18           MX
    ADC #$0005                      ; $8AE5D1  69 05 00     MX
    TAX                             ; $8AE5D4  AA           MX
    DEY                             ; $8AE5D5  88           MX
    BNE L_8AE5A5                    ; $8AE5D6  D0 CD        MX
    LDA #$0000                      ; $8AE5D8  A9 00 00     MX
    STA $CD7F,X                     ; $8AE5DB  9D 7F CD     MX
    STA $D063,X                     ; $8AE5DE  9D 63 D0     MX
    STA $D347,X                     ; $8AE5E1  9D 47 D3     MX
    SEP #$20                        ; $8AE5E4  E2 20        MX
    LDA #$30                        ; $8AE5E6  A9 30        mX
    STA $CD80                       ; $8AE5E8  8D 80 CD     mX
    STA $D064                       ; $8AE5EB  8D 64 D0     mX
    STA $D348                       ; $8AE5EE  8D 48 D3     mX
    LDA #$10                        ; $8AE5F1  A9 10        mX
    STA $CDCB                       ; $8AE5F3  8D CB CD     mX
    STA $D0AF                       ; $8AE5F6  8D AF D0     mX
    STA $D393                       ; $8AE5F9  8D 93 D3     mX
    PLB                             ; $8AE5FC  AB           mX
    LDA #$7E                        ; $8AE5FD  A9 7E        mX
    STA $4374                       ; $8AE5FF  8D 74 43     mX
    STA $4364                       ; $8AE602  8D 64 43     mX
    STA $4354                       ; $8AE605  8D 54 43     mX
    LDA #$03                        ; $8AE608  A9 03        mX
    STA $4370                       ; $8AE60A  8D 70 43     mX
    STA $4360                       ; $8AE60D  8D 60 43     mX
    STA $4350                       ; $8AE610  8D 50 43     mX
    LDA #$21                        ; $8AE613  A9 21        mX
    STA $4371                       ; $8AE615  8D 71 43     mX
    STA $4361                       ; $8AE618  8D 61 43     mX
    STA $4351                       ; $8AE61B  8D 51 43     mX
    REP #$20                        ; $8AE61E  C2 20        mX
    LDA #$CD80                      ; $8AE620  A9 80 CD     MX
    STA $4372                       ; $8AE623  8D 72 43     MX
    LDA #$D064                      ; $8AE626  A9 64 D0     MX
    STA $4362                       ; $8AE629  8D 62 43     MX
    LDA #$D348                      ; $8AE62C  A9 48 D3     MX
    STA $4352                       ; $8AE62F  8D 52 43     MX
    RTS                             ; $8AE632  60           MX
L_8AE633:
    SEP #$20                        ; $8AE633  E2 20        MX
    LDA $172E,X                     ; $8AE635  BD 2E 17     mX  record_initials
    AND #$1F                        ; $8AE638  29 1F        mX
    CLC                             ; $8AE63A  18           mX
    ADC #$41                        ; $8AE63B  69 41        mX
    CMP #$5B                        ; $8AE63D  C9 5B        mX
    BNE L_8AE643                    ; $8AE63F  D0 02        mX
    LDA #$20                        ; $8AE641  A9 20        mX
L_8AE643:
    STA $1C68                       ; $8AE643  8D 68 1C     mX
    LDA $172F,X                     ; $8AE646  BD 2F 17     mX
    AND #$1F                        ; $8AE649  29 1F        mX
    CLC                             ; $8AE64B  18           mX
    ADC #$41                        ; $8AE64C  69 41        mX
    CMP #$5B                        ; $8AE64E  C9 5B        mX
    BNE L_8AE654                    ; $8AE650  D0 02        mX
    LDA #$20                        ; $8AE652  A9 20        mX
L_8AE654:
    STA $1C69                       ; $8AE654  8D 69 1C     mX
    LDA $1730,X                     ; $8AE657  BD 30 17     mX
    AND #$1F                        ; $8AE65A  29 1F        mX
    CLC                             ; $8AE65C  18           mX
    ADC #$41                        ; $8AE65D  69 41        mX
    CMP #$5B                        ; $8AE65F  C9 5B        mX
    BNE L_8AE665                    ; $8AE661  D0 02        mX
    LDA #$20                        ; $8AE663  A9 20        mX
L_8AE665:
    STA $1C6A                       ; $8AE665  8D 6A 1C     mX
    REP #$20                        ; $8AE668  C2 20        mX
    RTS                             ; $8AE66A  60           MX
L_8AE66B:
    STA $00A4                       ; $8AE66B  8D A4 00     MX
    LDA $188E,X                     ; $8AE66E  BD 8E 18     MX  record_wins
    AND #$00FF                      ; $8AE671  29 FF 00     MX
    PHX                             ; $8AE674  DA           MX
    PHY                             ; $8AE675  5A           MX
    LDX $00A4                       ; $8AE676  AE A4 00     MX
    PHX                             ; $8AE679  DA           MX
    JSR L_8AE88B                    ; $8AE67A  20 8B E8     MX
    PLA                             ; $8AE67D  68           MX
    PLY                             ; $8AE67E  7A           MX
    PLX                             ; $8AE67F  FA           MX
    CLC                             ; $8AE680  18           MX
    ADC #$0004                      ; $8AE681  69 04 00     MX
    STA $00A4                       ; $8AE684  8D A4 00     MX
    LDA $188F,X                     ; $8AE687  BD 8F 18     MX  record_losses
    AND #$00FF                      ; $8AE68A  29 FF 00     MX
    PHX                             ; $8AE68D  DA           MX
    PHY                             ; $8AE68E  5A           MX
    LDX $00A4                       ; $8AE68F  AE A4 00     MX
    JSR L_8AE88B                    ; $8AE692  20 8B E8     MX
    DEX                             ; $8AE695  CA           MX
    DEX                             ; $8AE696  CA           MX
    DEX                             ; $8AE697  CA           MX
    SEP #$20                        ; $8AE698  E2 20        MX
L_8AE69A:
    LDA $1C65,X                     ; $8AE69A  BD 65 1C     mX
    CMP #$20                        ; $8AE69D  C9 20        mX
    BNE L_8AE6B4                    ; $8AE69F  D0 13        mX
    LDA $1C66,X                     ; $8AE6A1  BD 66 1C     mX
    STA $1C65,X                     ; $8AE6A4  9D 65 1C     mX
    LDA $1C67,X                     ; $8AE6A7  BD 67 1C     mX
    STA $1C66,X                     ; $8AE6AA  9D 66 1C     mX
    LDA #$20                        ; $8AE6AD  A9 20        mX
    STA $1C67,X                     ; $8AE6AF  9D 67 1C     mX
    BRA L_8AE69A                    ; $8AE6B2  80 E6        mX
L_8AE6B4:
    REP #$20                        ; $8AE6B4  C2 20        mX
    PLY                             ; $8AE6B6  7A           MX
    PLX                             ; $8AE6B7  FA           MX
    RTS                             ; $8AE6B8  60           MX
L_8AE6B9:
    STA $00A4                       ; $8AE6B9  8D A4 00     MX
    LDX #$0020                      ; $8AE6BC  A2 20 00     MX
    LDA #$0000                      ; $8AE6BF  A9 00 00     MX
L_8AE6C2:
    STA $1C65,X                     ; $8AE6C2  9D 65 1C     MX
    LDA #$2020                      ; $8AE6C5  A9 20 20     MX
    DEX                             ; $8AE6C8  CA           MX
    DEX                             ; $8AE6C9  CA           MX
    BPL L_8AE6C2                    ; $8AE6CA  10 F6        MX
    LDA $00A4                       ; $8AE6CC  AD A4 00     MX
    ASL                             ; $8AE6CF  0A           MX
    TAX                             ; $8AE6D0  AA           MX
    PHX                             ; $8AE6D1  DA           MX
    LDA $00A4                       ; $8AE6D2  AD A4 00     MX
    LDY #$004C                      ; $8AE6D5  A0 4C 00     MX
    JSR L_8AE021                    ; $8AE6D8  20 21 E0     MX
    PLX                             ; $8AE6DB  FA           MX
    JMP ($E6DF,X)                   ; $8AE6DC  7C DF E6     MX
    db $47,$E7,$1B,$E8,$E7,$E6,$BF,$E7                                 ; $8AE6DF
L_8AE6E7:
    JSR L_8AE2E3                    ; $8AE6E7  20 E3 E2     MX
    LDA #$3123                      ; $8AE6EA  A9 23 31     MX
    STA $1C65                       ; $8AE6ED  8D 65 1C     MX
    LDA #$0000                      ; $8AE6F0  A9 00 00     MX
    STA $1C6B                       ; $8AE6F3  8D 6B 1C     MX
    LDY #$0000                      ; $8AE6F6  A0 00 00     MX
    LDX #$018C                      ; $8AE6F9  A2 8C 01     MX
L_8AE6FC:
    LDA $1B50,Y                     ; $8AE6FC  B9 50 1B     MX
    ASL                             ; $8AE6FF  0A           MX
    ASL                             ; $8AE700  0A           MX
    PHX                             ; $8AE701  DA           MX
    TAX                             ; $8AE702  AA           MX
    JSR L_8AE436                    ; $8AE703  20 36 E4     MX
    CMP #$001B                      ; $8AE706  C9 1B 00     MX
    BEQ L_8AE71C                    ; $8AE709  F0 11        MX
    SEP #$20                        ; $8AE70B  E2 20        MX
    LDA #$2E                        ; $8AE70D  A9 2E        mX
    STA $1C68                       ; $8AE70F  8D 68 1C     mX
    STA $1C69                       ; $8AE712  8D 69 1C     mX
    STA $1C6A                       ; $8AE715  8D 6A 1C     mX
    REP #$20                        ; $8AE718  C2 20        mX
    BRA L_8AE71F                    ; $8AE71A  80 03        MX
L_8AE71C:
    JSR L_8AE633                    ; $8AE71C  20 33 E6     MX
L_8AE71F:
    PLX                             ; $8AE71F  FA           MX
    PHX                             ; $8AE720  DA           MX
    PHY                             ; $8AE721  5A           MX
    PEA $E731                       ; $8AE722  F4 31 E7     MX
    LDA #$1C65                      ; $8AE725  A9 65 1C     MX
    STA $00A4                       ; $8AE728  8D A4 00     MX
    PEA $0000                       ; $8AE72B  F4 00 00     MX
    PLB                             ; $8AE72E  AB           MX
    JMP L_8AE0CD                    ; $8AE72F  4C CD E0     MX
L_8AE732:
    INC $1C66                       ; $8AE732  EE 66 1C     MX
    PLY                             ; $8AE735  7A           MX
    PLA                             ; $8AE736  68           MX
    CLC                             ; $8AE737  18           MX
    ADC #$01C0                      ; $8AE738  69 C0 01     MX
    TAX                             ; $8AE73B  AA           MX
    INY                             ; $8AE73C  C8           MX
    INY                             ; $8AE73D  C8           MX
    CPY #$0006                      ; $8AE73E  C0 06 00     MX
    BEQ L_8AE746                    ; $8AE741  F0 03        MX
    JMP L_8AE6FC                    ; $8AE743  4C FC E6     MX
L_8AE746:
    RTS                             ; $8AE746  60           MX
L_8AE747:
    JSR L_8AE140                    ; $8AE747  20 40 E1     MX
    LDA #$BB77                      ; $8AE74A  A9 77 BB     MX
    LDX #$018C                      ; $8AE74D  A2 8C 01     MX
    JSR L_8AE07E                    ; $8AE750  20 7E E0     MX
    LDA #$3123                      ; $8AE753  A9 23 31     MX
    STA $001C65                     ; $8AE756  8F 65 1C 00  MX
    LDA #$4957                      ; $8AE75A  A9 57 49     MX
    STA $001C6D                     ; $8AE75D  8F 6D 1C 00  MX
    LDA #$534E                      ; $8AE761  A9 4E 53     MX
    STA $001C6F                     ; $8AE764  8F 6F 1C 00  MX
    LDA #$202D                      ; $8AE768  A9 2D 20     MX
    STA $001C7A                     ; $8AE76B  8F 7A 1C 00  MX
    LDY #$0000                      ; $8AE76F  A0 00 00     MX
    LDX #$028C                      ; $8AE772  A2 8C 02     MX
L_8AE775:
    LDA $1B50,Y                     ; $8AE775  B9 50 1B     MX
    ASL                             ; $8AE778  0A           MX
    ASL                             ; $8AE779  0A           MX
    PHX                             ; $8AE77A  DA           MX
    TAX                             ; $8AE77B  AA           MX
    JSR L_8AE633                    ; $8AE77C  20 33 E6     MX
    LDA $001890,X                   ; $8AE77F  BF 90 18 00  MX  record_streak
    AND #$00FF                      ; $8AE783  29 FF 00     MX
    PHX                             ; $8AE786  DA           MX
    PHY                             ; $8AE787  5A           MX
    LDX #$000D                      ; $8AE788  A2 0D 00     MX
    JSR L_8AE88B                    ; $8AE78B  20 8B E8     MX
    PLY                             ; $8AE78E  7A           MX
    PLX                             ; $8AE78F  FA           MX
    LDA #$0012                      ; $8AE790  A9 12 00     MX
    JSR L_8AE66B                    ; $8AE793  20 6B E6     MX
    PLX                             ; $8AE796  FA           MX
    PHX                             ; $8AE797  DA           MX
    PHY                             ; $8AE798  5A           MX
    PEA $E7A9                       ; $8AE799  F4 A9 E7     MX
    LDA #$1C65                      ; $8AE79C  A9 65 1C     MX
    STA $0000A4                     ; $8AE79F  8F A4 00 00  MX
    PEA $0000                       ; $8AE7A3  F4 00 00     MX
    PLB                             ; $8AE7A6  AB           MX
    JMP L_8AE085                    ; $8AE7A7  4C 85 E0     MX
L_8AE7AA:
    INC $1C66                       ; $8AE7AA  EE 66 1C     MX
    PLY                             ; $8AE7AD  7A           MX
    PLA                             ; $8AE7AE  68           MX
    CLC                             ; $8AE7AF  18           MX
    ADC #$0080                      ; $8AE7B0  69 80 00     MX
    TAX                             ; $8AE7B3  AA           MX
    INY                             ; $8AE7B4  C8           MX
    INY                             ; $8AE7B5  C8           MX
    CPY #$0010                      ; $8AE7B6  C0 10 00     MX
    BEQ L_8AE7BE                    ; $8AE7B9  F0 03        MX
    JMP L_8AE775                    ; $8AE7BB  4C 75 E7     MX
L_8AE7BE:
    RTS                             ; $8AE7BE  60           MX
L_8AE7BF:
    JSR L_8AE390                    ; $8AE7BF  20 90 E3     MX
    LDA #$BB8F                      ; $8AE7C2  A9 8F BB     MX
    LDX #$018C                      ; $8AE7C5  A2 8C 01     MX
    JSR L_8AE07E                    ; $8AE7C8  20 7E E0     MX
    LDA #$3123                      ; $8AE7CB  A9 23 31     MX
    STA $001C65                     ; $8AE7CE  8F 65 1C 00  MX
    LDA #$202D                      ; $8AE7D2  A9 2D 20     MX
    STA $001C72                     ; $8AE7D5  8F 72 1C 00  MX
    LDY #$0000                      ; $8AE7D9  A0 00 00     MX
    LDX #$028C                      ; $8AE7DC  A2 8C 02     MX
L_8AE7DF:
    LDA $1B50,Y                     ; $8AE7DF  B9 50 1B     MX
    ASL                             ; $8AE7E2  0A           MX
    ASL                             ; $8AE7E3  0A           MX
    PHX                             ; $8AE7E4  DA           MX
    TAX                             ; $8AE7E5  AA           MX
    JSR L_8AE633                    ; $8AE7E6  20 33 E6     MX
    LDA #$000A                      ; $8AE7E9  A9 0A 00     MX
    JSR L_8AE66B                    ; $8AE7EC  20 6B E6     MX
    JSR L_8AE8E9                    ; $8AE7EF  20 E9 E8     MX
    PLX                             ; $8AE7F2  FA           MX
    PHX                             ; $8AE7F3  DA           MX
    PHY                             ; $8AE7F4  5A           MX
    PEA $E805                       ; $8AE7F5  F4 05 E8     MX
    LDA #$1C65                      ; $8AE7F8  A9 65 1C     MX
    STA $0000A4                     ; $8AE7FB  8F A4 00 00  MX
    PEA $0000                       ; $8AE7FF  F4 00 00     MX
    PLB                             ; $8AE802  AB           MX
    JMP L_8AE085                    ; $8AE803  4C 85 E0     MX
L_8AE806:
    INC $1C66                       ; $8AE806  EE 66 1C     MX
    PLY                             ; $8AE809  7A           MX
    PLA                             ; $8AE80A  68           MX
    CLC                             ; $8AE80B  18           MX
    ADC #$0080                      ; $8AE80C  69 80 00     MX
    TAX                             ; $8AE80F  AA           MX
    INY                             ; $8AE810  C8           MX
    INY                             ; $8AE811  C8           MX
    CPY #$0010                      ; $8AE812  C0 10 00     MX
    BEQ L_8AE81A                    ; $8AE815  F0 03        MX
    JMP L_8AE7DF                    ; $8AE817  4C DF E7     MX
L_8AE81A:
    RTS                             ; $8AE81A  60           MX
L_8AE81B:
    JSR L_8AE202                    ; $8AE81B  20 02 E2     MX
    LDA #$BBA8                      ; $8AE81E  A9 A8 BB     MX
    LDX #$018C                      ; $8AE821  A2 8C 01     MX
    JSR L_8AE07E                    ; $8AE824  20 7E E0     MX
    LDA #$3123                      ; $8AE827  A9 23 31     MX
    STA $001C65                     ; $8AE82A  8F 65 1C 00  MX
    LDY #$0000                      ; $8AE82E  A0 00 00     MX
    LDX #$028C                      ; $8AE831  A2 8C 02     MX
L_8AE834:
    LDA $1B50,Y                     ; $8AE834  B9 50 1B     MX
    ASL                             ; $8AE837  0A           MX
    ASL                             ; $8AE838  0A           MX
    PHX                             ; $8AE839  DA           MX
    TAX                             ; $8AE83A  AA           MX
    JSR L_8AE633                    ; $8AE83B  20 33 E6     MX
    LDA $00188E,X                   ; $8AE83E  BF 8E 18 00  MX  record_wins
    AND #$00FF                      ; $8AE842  29 FF 00     MX
    STA $0000A4                     ; $8AE845  8F A4 00 00  MX
    LDA $00188F,X                   ; $8AE849  BF 8F 18 00  MX  record_losses
    AND #$00FF                      ; $8AE84D  29 FF 00     MX
    CLC                             ; $8AE850  18           MX
    ADC $0000A4                     ; $8AE851  6F A4 00 00  MX
    PHX                             ; $8AE855  DA           MX
    PHY                             ; $8AE856  5A           MX
    LDX #$000C                      ; $8AE857  A2 0C 00     MX
    JSR L_8AE88B                    ; $8AE85A  20 8B E8     MX
    PLY                             ; $8AE85D  7A           MX
    PLX                             ; $8AE85E  FA           MX
    JSR L_8AE8E9                    ; $8AE85F  20 E9 E8     MX
    PLX                             ; $8AE862  FA           MX
    PHX                             ; $8AE863  DA           MX
    PHY                             ; $8AE864  5A           MX
    PEA $E875                       ; $8AE865  F4 75 E8     MX
    LDA #$1C65                      ; $8AE868  A9 65 1C     MX
    STA $0000A4                     ; $8AE86B  8F A4 00 00  MX
    PEA $0000                       ; $8AE86F  F4 00 00     MX
    PLB                             ; $8AE872  AB           MX
    JMP L_8AE085                    ; $8AE873  4C 85 E0     MX
L_8AE876:
    INC $1C66                       ; $8AE876  EE 66 1C     MX
    PLY                             ; $8AE879  7A           MX
    PLA                             ; $8AE87A  68           MX
    CLC                             ; $8AE87B  18           MX
    ADC #$0080                      ; $8AE87C  69 80 00     MX
    TAX                             ; $8AE87F  AA           MX
    INY                             ; $8AE880  C8           MX
    INY                             ; $8AE881  C8           MX
    CPY #$0010                      ; $8AE882  C0 10 00     MX
    BEQ L_8AE88A                    ; $8AE885  F0 03        MX
    JMP L_8AE834                    ; $8AE887  4C 34 E8     MX
L_8AE88A:
    RTS                             ; $8AE88A  60           MX
L_8AE88B:
    STZ $00A4                       ; $8AE88B  9C A4 00     MX
    CMP #$0100                      ; $8AE88E  C9 00 01     MX
    BCC L_8AE896                    ; $8AE891  90 03        MX
    LDA #$00FF                      ; $8AE893  A9 FF 00     MX
L_8AE896:
    LDY #$0064                      ; $8AE896  A0 64 00     MX
    JSR L_8AE8AC                    ; $8AE899  20 AC E8     MX
    LDY #$000A                      ; $8AE89C  A0 0A 00     MX
    JSR L_8AE8AC                    ; $8AE89F  20 AC E8     MX
    INC $00A4                       ; $8AE8A2  EE A4 00     MX
    LDY #$0001                      ; $8AE8A5  A0 01 00     MX
    JSR L_8AE8AC                    ; $8AE8A8  20 AC E8     MX
    RTS                             ; $8AE8AB  60           MX
L_8AE8AC:
    STY $00A6                       ; $8AE8AC  8C A6 00     MX
    STZ $00A8                       ; $8AE8AF  9C A8 00     MX
L_8AE8B2:
    SEC                             ; $8AE8B2  38           MX
    SBC $0000A6                     ; $8AE8B3  EF A6 00 00  MX
    BCC L_8AE8BE                    ; $8AE8B7  90 05        MX
    INC $00A8                       ; $8AE8B9  EE A8 00     MX
    BRA L_8AE8B2                    ; $8AE8BC  80 F4        MX
L_8AE8BE:
    CLC                             ; $8AE8BE  18           MX
    ADC $0000A6                     ; $8AE8BF  6F A6 00 00  MX
    PHA                             ; $8AE8C3  48           MX
    LDA $0000A8                     ; $8AE8C4  AF A8 00 00  MX
    BNE L_8AE8D8                    ; $8AE8C8  D0 0E        MX
    LDA $0000A4                     ; $8AE8CA  AF A4 00 00  MX
    BNE L_8AE8D5                    ; $8AE8CE  D0 05        MX
    LDA #$FFF0                      ; $8AE8D0  A9 F0 FF     MX
    BRA L_8AE8DB                    ; $8AE8D3  80 06        MX
L_8AE8D5:
    LDA #$0000                      ; $8AE8D5  A9 00 00     MX
L_8AE8D8:
    INC $00A4                       ; $8AE8D8  EE A4 00     MX
L_8AE8DB:
    SEP #$20                        ; $8AE8DB  E2 20        MX
    CLC                             ; $8AE8DD  18           mX
    ADC #$30                        ; $8AE8DE  69 30        mX
    STA $001C65,X                   ; $8AE8E0  9F 65 1C 00  mX
    REP #$20                        ; $8AE8E4  C2 20        mX
    INX                             ; $8AE8E6  E8           MX
    PLA                             ; $8AE8E7  68           MX
    RTS                             ; $8AE8E8  60           MX
L_8AE8E9:
    LDA $00188E,X                   ; $8AE8E9  BF 8E 18 00  MX  record_wins
    AND #$00FF                      ; $8AE8ED  29 FF 00     MX
    STA $0000A4                     ; $8AE8F0  8F A4 00 00  MX
    STA $0000EA                     ; $8AE8F4  8F EA 00 00  MX
    LDA #$03E8                      ; $8AE8F8  A9 E8 03     MX
    STA $0000EE                     ; $8AE8FB  8F EE 00 00  MX
    JSL $1AB7E7                     ; $8AE8FF  22 E7 B7 1A  MX
    LDA $00188F,X                   ; $8AE903  BF 8F 18 00  MX  record_losses
    AND #$00FF                      ; $8AE907  29 FF 00     MX
    CLC                             ; $8AE90A  18           MX
    ADC $0000A4                     ; $8AE90B  6F A4 00 00  MX
    STA $0000EE                     ; $8AE90F  8F EE 00 00  MX
    LDA $0000F2                     ; $8AE913  AF F2 00 00  MX
    STA $0000EA                     ; $8AE917  8F EA 00 00  MX
    LDA $0000F4                     ; $8AE91B  AF F4 00 00  MX
    STA $0000EC                     ; $8AE91F  8F EC 00 00  MX
    JSL $1AACEB                     ; $8AE923  22 EB AC 1A  MX
    LDA $0000EA                     ; $8AE927  AF EA 00 00  MX
    PHX                             ; $8AE92B  DA           MX
    PHY                             ; $8AE92C  5A           MX
    LDX #$0014                      ; $8AE92D  A2 14 00     MX
    JSR L_8AE936                    ; $8AE930  20 36 E9     MX
    PLY                             ; $8AE933  7A           MX
    PLX                             ; $8AE934  FA           MX
    RTS                             ; $8AE935  60           MX
L_8AE936:
    CMP #$03E9                      ; $8AE936  C9 E9 03     MX
    BCC L_8AE93E                    ; $8AE939  90 03        MX
    LDA #$03E8                      ; $8AE93B  A9 E8 03     MX
L_8AE93E:
    LDY #$03E8                      ; $8AE93E  A0 E8 03     MX
    JSR L_8AE964                    ; $8AE941  20 64 E9     MX
    PHA                             ; $8AE944  48           MX
    SEP #$20                        ; $8AE945  E2 20        MX
    LDA #$2E                        ; $8AE947  A9 2E        mX
    STA $001C65,X                   ; $8AE949  9F 65 1C 00  mX
    INX                             ; $8AE94D  E8           mX
    REP #$20                        ; $8AE94E  C2 20        mX
    PLA                             ; $8AE950  68           MX
    LDY #$0064                      ; $8AE951  A0 64 00     MX
    JSR L_8AE964                    ; $8AE954  20 64 E9     MX
    LDY #$000A                      ; $8AE957  A0 0A 00     MX
    JSR L_8AE964                    ; $8AE95A  20 64 E9     MX
    LDY #$0001                      ; $8AE95D  A0 01 00     MX
    JSR L_8AE964                    ; $8AE960  20 64 E9     MX
    RTS                             ; $8AE963  60           MX
L_8AE964:
    STY $00A6                       ; $8AE964  8C A6 00     MX
    STZ $00A8                       ; $8AE967  9C A8 00     MX
L_8AE96A:
    SEC                             ; $8AE96A  38           MX
    SBC $0000A6                     ; $8AE96B  EF A6 00 00  MX
    BCC L_8AE976                    ; $8AE96F  90 05        MX
    INC $00A8                       ; $8AE971  EE A8 00     MX
    BRA L_8AE96A                    ; $8AE974  80 F4        MX
L_8AE976:
    CLC                             ; $8AE976  18           MX
    ADC $0000A6                     ; $8AE977  6F A6 00 00  MX
    PHA                             ; $8AE97B  48           MX
    SEP #$20                        ; $8AE97C  E2 20        MX
    LDA $0000A8                     ; $8AE97E  AF A8 00 00  mX
    CLC                             ; $8AE982  18           mX
    ADC #$30                        ; $8AE983  69 30        mX
    STA $001C65,X                   ; $8AE985  9F 65 1C 00  mX
    REP #$20                        ; $8AE989  C2 20        mX
    INX                             ; $8AE98B  E8           MX
    PLA                             ; $8AE98C  68           MX
    RTS                             ; $8AE98D  60           MX
L_8AE98E:
    JSL L_BDFE53                    ; $8AE98E  22 53 FE BD  MX
L_8AE992:
    LDA #$0002                      ; $8AE992  A9 02 00     MX
L_8AE995:
    JSL L_BDFD8F                    ; $8AE995  22 8F FD BD  MX
L_8AE999:
    JSL L_BDFD74                    ; $8AE999  22 74 FD BD  MX
L_8AE99D:
    SEP #$30                        ; $8AE99D  E2 30        MX
L_8AE99F:
    LDA #$8F                        ; $8AE99F  A9 8F        mx
L_8AE9A1:
    STA $002100                     ; $8AE9A1  8F 00 21 00  mx
L_8AE9A5:
    REP #$30                        ; $8AE9A5  C2 30        mx
L_8AE9A7:
    LDA #$8000                      ; $8AE9A7  A9 00 80     MX
L_8AE9AA:
    STA $0000D0                     ; $8AE9AA  8F D0 00 00  MX
L_8AE9AE:
    LDA #$1580                      ; $8AE9AE  A9 80 15     MX
L_8AE9B1:
    STA $0000D1                     ; $8AE9B1  8F D1 00 00  MX
L_8AE9B5:
    LDA #$1000                      ; $8AE9B5  A9 00 10     MX
L_8AE9B8:
    STA $0000D3                     ; $8AE9B8  8F D3 00 00  MX
L_8AE9BC:
    LDA #$7F10                      ; $8AE9BC  A9 10 7F     MX
L_8AE9BF:
    STA $0000D4                     ; $8AE9BF  8F D4 00 00  MX
L_8AE9C3:
    JSL $29F3F0                     ; $8AE9C3  22 F0 F3 29  MX
L_8AE9C7:
    SEP #$30                        ; $8AE9C7  E2 30        MX
L_8AE9C9:
    LDA #$00                        ; $8AE9C9  A9 00        mx
L_8AE9CB:
    STA $002116                     ; $8AE9CB  8F 16 21 00  mx
L_8AE9CF:
    LDA #$00                        ; $8AE9CF  A9 00        mx
L_8AE9D1:
    STA $002117                     ; $8AE9D1  8F 17 21 00  mx
L_8AE9D5:
    LDA #$01                        ; $8AE9D5  A9 01        mx
L_8AE9D7:
    STA $004300                     ; $8AE9D7  8F 00 43 00  mx
L_8AE9DB:
    LDA #$18                        ; $8AE9DB  A9 18        mx
L_8AE9DD:
    STA $004301                     ; $8AE9DD  8F 01 43 00  mx
L_8AE9E1:
    LDA #$05                        ; $8AE9E1  A9 05        mx
L_8AE9E3:
    STA $004302                     ; $8AE9E3  8F 02 43 00  mx
L_8AE9E7:
    LDA #$8E                        ; $8AE9E7  A9 8E        mx
L_8AE9E9:
    STA $004303                     ; $8AE9E9  8F 03 43 00  mx
L_8AE9ED:
    LDA #$14                        ; $8AE9ED  A9 14        mx
L_8AE9EF:
    STA $004304                     ; $8AE9EF  8F 04 43 00  mx
L_8AE9F3:
    LDA #$C0                        ; $8AE9F3  A9 C0        mx
L_8AE9F5:
    STA $004305                     ; $8AE9F5  8F 05 43 00  mx
L_8AE9F9:
    LDA #$4C                        ; $8AE9F9  A9 4C        mx
L_8AE9FB:
    STA $004306                     ; $8AE9FB  8F 06 43 00  mx
L_8AE9FF:
    LDA #$01                        ; $8AE9FF  A9 01        mx
L_8AEA01:
    STA $00420B                     ; $8AEA01  8F 0B 42 00  mx
L_8AEA05:
    LDA #$00                        ; $8AEA05  A9 00        mx
L_8AEA07:
    STA $002116                     ; $8AEA07  8F 16 21 00  mx
L_8AEA0B:
    LDA #$30                        ; $8AEA0B  A9 30        mx
L_8AEA0D:
    STA $002117                     ; $8AEA0D  8F 17 21 00  mx
L_8AEA11:
    LDA #$01                        ; $8AEA11  A9 01        mx
L_8AEA13:
    STA $004300                     ; $8AEA13  8F 00 43 00  mx
L_8AEA17:
    LDA #$18                        ; $8AEA17  A9 18        mx
L_8AEA19:
    STA $004301                     ; $8AEA19  8F 01 43 00  mx
L_8AEA1D:
    LDA #$00                        ; $8AEA1D  A9 00        mx
L_8AEA1F:
    STA $004302                     ; $8AEA1F  8F 02 43 00  mx
L_8AEA23:
    LDA #$10                        ; $8AEA23  A9 10        mx
L_8AEA25:
    STA $004303                     ; $8AEA25  8F 03 43 00  mx
L_8AEA29:
    LDA #$7F                        ; $8AEA29  A9 7F        mx
L_8AEA2B:
    STA $004304                     ; $8AEA2B  8F 04 43 00  mx
L_8AEA2F:
    LDA #$60                        ; $8AEA2F  A9 60        mx
L_8AEA31:
    STA $004305                     ; $8AEA31  8F 05 43 00  mx
L_8AEA35:
    LDA #$7B                        ; $8AEA35  A9 7B        mx
L_8AEA37:
    STA $004306                     ; $8AEA37  8F 06 43 00  mx
L_8AEA3B:
    LDA #$01                        ; $8AEA3B  A9 01        mx
L_8AEA3D:
    STA $00420B                     ; $8AEA3D  8F 0B 42 00  mx
L_8AEA41:
    LDA #$DF                        ; $8AEA41  A9 DF        mx
L_8AEA43:
    STA $0000D0                     ; $8AEA43  8F D0 00 00  mx
L_8AEA47:
    LDA #$B9                        ; $8AEA47  A9 B9        mx
L_8AEA49:
    STA $0000D1                     ; $8AEA49  8F D1 00 00  mx
L_8AEA4D:
    LDA #$2A                        ; $8AEA4D  A9 2A        mx
L_8AEA4F:
    STA $0000D2                     ; $8AEA4F  8F D2 00 00  mx
L_8AEA53:
    LDX #$50                        ; $8AEA53  A2 50        mx
L_8AEA55:
    LDA #$00                        ; $8AEA55  A9 00        mx
L_8AEA57:
    JSL L_808B53                    ; $8AEA57  22 53 8B 80  mx
L_8AEA5B:
    LDA #$DD                        ; $8AEA5B  A9 DD        mx
L_8AEA5D:
    STA $0000D0                     ; $8AEA5D  8F D0 00 00  mx
L_8AEA61:
    LDA #$B9                        ; $8AEA61  A9 B9        mx
L_8AEA63:
    STA $0000D1                     ; $8AEA63  8F D1 00 00  mx
L_8AEA67:
    LDA #$2A                        ; $8AEA67  A9 2A        mx
L_8AEA69:
    STA $0000D2                     ; $8AEA69  8F D2 00 00  mx
L_8AEA6D:
    LDX #$01                        ; $8AEA6D  A2 01        mx
L_8AEA6F:
    LDA #$81                        ; $8AEA6F  A9 81        mx
L_8AEA71:
    JSL L_808B53                    ; $8AEA71  22 53 8B 80  mx
L_8AEA75:
    LDA #$80                        ; $8AEA75  A9 80        mx
L_8AEA77:
    STA $002115                     ; $8AEA77  8F 15 21 00  mx
L_8AEA7B:
    REP #$30                        ; $8AEA7B  C2 30        mx
L_8AEA7D:
    LDA #$2C00                      ; $8AEA7D  A9 00 2C     MX
L_8AEA80:
    STA $002116                     ; $8AEA80  8F 16 21 00  MX
L_8AEA84:
    LDA #$E1CD                      ; $8AEA84  A9 CD E1     MX
L_8AEA87:
    STA $0000A4                     ; $8AEA87  8F A4 00 00  MX
L_8AEA8B:
    PEA $0014                       ; $8AEA8B  F4 14 00     MX
L_8AEA8E:
    PLB                             ; $8AEA8E  AB           MX
L_8AEA8F:
    LDX #$001C                      ; $8AEA8F  A2 1C 00     MX
L_8AEA92:
    LDY #$0000                      ; $8AEA92  A0 00 00     MX
L_8AEA95:
    LDA ($A4),Y                     ; $8AEA95  B1 A4        MX
L_8AEA97:
    STA $002118                     ; $8AEA97  8F 18 21 00  MX
L_8AEA9B:
    INY                             ; $8AEA9B  C8           MX
L_8AEA9C:
    INY                             ; $8AEA9C  C8           MX
L_8AEA9D:
    CPY #$0040                      ; $8AEA9D  C0 40 00     MX
L_8AEAA0:
    BNE L_8AEA95                    ; $8AEAA0  D0 F3        MX
L_8AEAA2:
    LDA $0000A4                     ; $8AEAA2  AF A4 00 00  MX
L_8AEAA6:
    CLC                             ; $8AEAA6  18           MX
L_8AEAA7:
    ADC #$0040                      ; $8AEAA7  69 40 00     MX
L_8AEAAA:
    STA $0000A4                     ; $8AEAAA  8F A4 00 00  MX
L_8AEAAE:
    DEX                             ; $8AEAAE  CA           MX
L_8AEAAF:
    BNE L_8AEA92                    ; $8AEAAF  D0 E1        MX
L_8AEAB1:
    LDA #$2800                      ; $8AEAB1  A9 00 28     MX
L_8AEAB4:
    STA $002116                     ; $8AEAB4  8F 16 21 00  MX
L_8AEAB8:
    LDX #$001C                      ; $8AEAB8  A2 1C 00     MX
L_8AEABB:
    LDA #$0000                      ; $8AEABB  A9 00 00     MX
L_8AEABE:
    LDY #$0000                      ; $8AEABE  A0 00 00     MX
L_8AEAC1:
    STA $002118                     ; $8AEAC1  8F 18 21 00  MX
L_8AEAC5:
    INY                             ; $8AEAC5  C8           MX
L_8AEAC6:
    INY                             ; $8AEAC6  C8           MX
L_8AEAC7:
    CPY #$0040                      ; $8AEAC7  C0 40 00     MX
L_8AEACA:
    BNE L_8AEAC1                    ; $8AEACA  D0 F5        MX
L_8AEACC:
    DEX                             ; $8AEACC  CA           MX
L_8AEACD:
    BNE L_8AEABE                    ; $8AEACD  D0 EF        MX
L_8AEACF:
    PLB                             ; $8AEACF  AB           MX
L_8AEAD0:
    LDA #$0D9B                      ; $8AEAD0  A9 9B 0D     MX
L_8AEAD3:
    STA $00D1                       ; $8AEAD3  8D D1 00     MX
L_8AEAD6:
    LDA #$9B66                      ; $8AEAD6  A9 66 9B     MX
L_8AEAD9:
    STA $00D0                       ; $8AEAD9  8D D0 00     MX
L_8AEADC:
    JSL $00E02F                     ; $8AEADC  22 2F E0 00  MX
L_8AEAE0:
    LDX #$FECB                      ; $8AEAE0  A2 CB FE     MX
L_8AEAE3:
    JSL $0AEDB8                     ; $8AEAE3  22 B8 ED 0A  MX
L_8AEAE7:
    RTS                             ; $8AEAE7  60           MX
L_8AEAE8:
    SEP #$20                        ; $8AEAE8  E2 20        MX
L_8AEAEA:
    LDA $00B2                       ; $8AEAEA  AD B2 00     mX
L_8AEAED:
    CMP #$10                        ; $8AEAED  C9 10        mX
L_8AEAEF:
    BEQ L_8AEAF7                    ; $8AEAEF  F0 06        mX
L_8AEAF1:
    STA $2100                       ; $8AEAF1  8D 00 21     mX
L_8AEAF4:
    INC $00B2                       ; $8AEAF4  EE B2 00     mX
L_8AEAF7:
    REP #$20                        ; $8AEAF7  C2 20        mX
L_8AEAF9:
    JSR L_8AEB1A                    ; $8AEAF9  20 1A EB     MX
L_8AEAFC:
    RTS                             ; $8AEAFC  60           MX
L_8AEAFD:
    SEP #$20                        ; $8AEAFD  E2 20        MX
L_8AEAFF:
    DEC $00B2                       ; $8AEAFF  CE B2 00     mX
L_8AEB02:
    LDA $00B2                       ; $8AEB02  AD B2 00     mX
L_8AEB05:
    CMP #$FF                        ; $8AEB05  C9 FF        mX
L_8AEB07:
    BNE L_8AEB11                    ; $8AEB07  D0 08        mX
L_8AEB09:
    LDA $00AE                       ; $8AEB09  AD AE 00     mX
L_8AEB0C:
    STA $1665                       ; $8AEB0C  8D 65 16     mX
L_8AEB0F:
    LDA #$00                        ; $8AEB0F  A9 00        mX
L_8AEB11:
    STA $2100                       ; $8AEB11  8D 00 21     mX
L_8AEB14:
    REP #$20                        ; $8AEB14  C2 20        mX
L_8AEB16:
    JSR L_8AEB1A                    ; $8AEB16  20 1A EB     MX
L_8AEB19:
    RTS                             ; $8AEB19  60           MX
L_8AEB1A:
    LDA $1C87                       ; $8AEB1A  AD 87 1C     MX
L_8AEB1D:
    BPL L_8AEB22                    ; $8AEB1D  10 03        MX
L_8AEB1F:
    JSR L_8AECCA                    ; $8AEB1F  20 CA EC     MX
L_8AEB22:
    LDA #$0055                      ; $8AEB22  A9 55 00     MX
L_8AEB25:
    SEP #$10                        ; $8AEB25  E2 10        MX
L_8AEB27:
    LDX $1C87                       ; $8AEB27  AE 87 1C     Mx
L_8AEB2A:
    REP #$10                        ; $8AEB2A  C2 10        Mx
L_8AEB2C:
    BEQ L_8AEB31                    ; $8AEB2C  F0 03        MX
    LDA #$0095                      ; $8AEB2E  A9 95 00     MX
L_8AEB31:
    PHA                             ; $8AEB31  48           MX
L_8AEB32:
    JSR L_8AEC72                    ; $8AEB32  20 72 EC     MX
L_8AEB35:
    PLA                             ; $8AEB35  68           MX
L_8AEB36:
    CLC                             ; $8AEB36  18           MX
L_8AEB37:
    ADC #$000B                      ; $8AEB37  69 0B 00     MX
L_8AEB3A:
    PHA                             ; $8AEB3A  48           MX
L_8AEB3B:
    JSR L_8AEC72                    ; $8AEB3B  20 72 EC     MX
L_8AEB3E:
    PLA                             ; $8AEB3E  68           MX
L_8AEB3F:
    CLC                             ; $8AEB3F  18           MX
L_8AEB40:
    ADC #$0010                      ; $8AEB40  69 10 00     MX
L_8AEB43:
    PHA                             ; $8AEB43  48           MX
L_8AEB44:
    JSR L_8AEC72                    ; $8AEB44  20 72 EC     MX
L_8AEB47:
    PLA                             ; $8AEB47  68           MX
L_8AEB48:
    CLC                             ; $8AEB48  18           MX
L_8AEB49:
    ADC #$0010                      ; $8AEB49  69 10 00     MX
L_8AEB4C:
    JSR L_8AEC72                    ; $8AEB4C  20 72 EC     MX
L_8AEB4F:
    LDA $1C87                       ; $8AEB4F  AD 87 1C     MX
L_8AEB52:
    BPL L_8AEB55                    ; $8AEB52  10 01        MX
L_8AEB54:
    RTS                             ; $8AEB54  60           MX
L_8AEB55:
    STZ $00A4                       ; $8AEB55  9C A4 00     MX
L_8AEB58:
    LDA $1690                       ; $8AEB58  AD 90 16     MX
L_8AEB5B:
    BIT #$0001                      ; $8AEB5B  89 01 00     MX
L_8AEB5E:
    BEQ L_8AEB66                    ; $8AEB5E  F0 06        MX
L_8AEB60:
    LDA $1669                       ; $8AEB60  AD 69 16     MX
L_8AEB63:
    TSB $00A4                       ; $8AEB63  0C A4 00     MX
L_8AEB66:
    LDA $1690                       ; $8AEB66  AD 90 16     MX
L_8AEB69:
    BIT #$0002                      ; $8AEB69  89 02 00     MX
L_8AEB6C:
    BEQ L_8AEB74                    ; $8AEB6C  F0 06        MX
    LDA $166B                       ; $8AEB6E  AD 6B 16     MX
    TSB $00A4                       ; $8AEB71  0C A4 00     MX
L_8AEB74:
    LDA $1690                       ; $8AEB74  AD 90 16     MX
L_8AEB77:
    BIT #$0004                      ; $8AEB77  89 04 00     MX
L_8AEB7A:
    BEQ L_8AEB82                    ; $8AEB7A  F0 06        MX
    LDA $166D                       ; $8AEB7C  AD 6D 16     MX
    TSB $00A4                       ; $8AEB7F  0C A4 00     MX
L_8AEB82:
    LDA $1690                       ; $8AEB82  AD 90 16     MX
L_8AEB85:
    BIT #$0008                      ; $8AEB85  89 08 00     MX
L_8AEB88:
    BEQ L_8AEB90                    ; $8AEB88  F0 06        MX
    LDA $166F                       ; $8AEB8A  AD 6F 16     MX
    TSB $00A4                       ; $8AEB8D  0C A4 00     MX
L_8AEB90:
    LDA $0008                       ; $8AEB90  AD 08 00     MX
L_8AEB93:
    BIT #$1000                      ; $8AEB93  89 00 10     MX
L_8AEB96:
    BEQ L_8AEBAD                    ; $8AEB96  F0 15        MX
    LDA #$0001                      ; $8AEB98  A9 01 00     MX
    TSB $1690                       ; $8AEB9B  0C 90 16     MX
    BNE L_8AEBAD                    ; $8AEB9E  D0 0D        MX
    PHA                             ; $8AEBA0  48           MX
    PHX                             ; $8AEBA1  DA           MX
    PHY                             ; $8AEBA2  5A           MX
    LDA #$0040                      ; $8AEBA3  A9 40 00     MX
    JSL L_BDFE18                    ; $8AEBA6  22 18 FE BD  MX
    PLY                             ; $8AEBAA  7A           MX
    PLX                             ; $8AEBAB  FA           MX
    PLA                             ; $8AEBAC  68           MX
L_8AEBAD:
    LDA $000A                       ; $8AEBAD  AD 0A 00     MX
L_8AEBB0:
    BIT #$1000                      ; $8AEBB0  89 00 10     MX
L_8AEBB3:
    BEQ L_8AEBCA                    ; $8AEBB3  F0 15        MX
    LDA #$0002                      ; $8AEBB5  A9 02 00     MX
    TSB $1690                       ; $8AEBB8  0C 90 16     MX
    BNE L_8AEBCA                    ; $8AEBBB  D0 0D        MX
    PHA                             ; $8AEBBD  48           MX
    PHX                             ; $8AEBBE  DA           MX
    PHY                             ; $8AEBBF  5A           MX
    LDA #$0040                      ; $8AEBC0  A9 40 00     MX
    JSL L_BDFE18                    ; $8AEBC3  22 18 FE BD  MX
    PLY                             ; $8AEBC7  7A           MX
    PLX                             ; $8AEBC8  FA           MX
    PLA                             ; $8AEBC9  68           MX
L_8AEBCA:
    LDA $1C5D                       ; $8AEBCA  AD 5D 1C     MX
L_8AEBCD:
    CMP #$0002                      ; $8AEBCD  C9 02 00     MX
L_8AEBD0:
    BNE L_8AEC0C                    ; $8AEBD0  D0 3A        MX
    LDA $000C                       ; $8AEBD2  AD 0C 00     MX
    BIT #$1000                      ; $8AEBD5  89 00 10     MX
    BEQ L_8AEBEF                    ; $8AEBD8  F0 15        MX
    LDA #$0004                      ; $8AEBDA  A9 04 00     MX
    TSB $1690                       ; $8AEBDD  0C 90 16     MX
    BNE L_8AEBEF                    ; $8AEBE0  D0 0D        MX
    PHA                             ; $8AEBE2  48           MX
    PHX                             ; $8AEBE3  DA           MX
    PHY                             ; $8AEBE4  5A           MX
    LDA #$0040                      ; $8AEBE5  A9 40 00     MX
    JSL L_BDFE18                    ; $8AEBE8  22 18 FE BD  MX
    PLY                             ; $8AEBEC  7A           MX
    PLX                             ; $8AEBED  FA           MX
    PLA                             ; $8AEBEE  68           MX
L_8AEBEF:
    LDA $000E                       ; $8AEBEF  AD 0E 00     MX
    BIT #$1000                      ; $8AEBF2  89 00 10     MX
    BEQ L_8AEC0C                    ; $8AEBF5  F0 15        MX
    LDA #$0008                      ; $8AEBF7  A9 08 00     MX
    TSB $1690                       ; $8AEBFA  0C 90 16     MX
    BNE L_8AEC0C                    ; $8AEBFD  D0 0D        MX
    PHA                             ; $8AEBFF  48           MX
    PHX                             ; $8AEC00  DA           MX
    PHY                             ; $8AEC01  5A           MX
    LDA #$0040                      ; $8AEC02  A9 40 00     MX
    JSL L_BDFE18                    ; $8AEC05  22 18 FE BD  MX
    PLY                             ; $8AEC09  7A           MX
    PLX                             ; $8AEC0A  FA           MX
    PLA                             ; $8AEC0B  68           MX
L_8AEC0C:
    LDA $00A4                       ; $8AEC0C  AD A4 00     MX
L_8AEC0F:
    BIT #$D0C0                      ; $8AEC0F  89 C0 D0     MX
L_8AEC12:
    BEQ L_8AEC2D                    ; $8AEC12  F0 19        MX
L_8AEC14:
    LDA $1C87                       ; $8AEC14  AD 87 1C     MX
L_8AEC17:
    BMI L_8AEC2C                    ; $8AEC17  30 13        MX
L_8AEC19:
    PHA                             ; $8AEC19  48           MX
L_8AEC1A:
    PHX                             ; $8AEC1A  DA           MX
L_8AEC1B:
    PHY                             ; $8AEC1B  5A           MX
L_8AEC1C:
    LDA #$0042                      ; $8AEC1C  A9 42 00     MX
L_8AEC1F:
    JSL L_BDFE18                    ; $8AEC1F  22 18 FE BD  MX
L_8AEC23:
    PLY                             ; $8AEC23  7A           MX
L_8AEC24:
    PLX                             ; $8AEC24  FA           MX
L_8AEC25:
    PLA                             ; $8AEC25  68           MX
L_8AEC26:
    LDA #$8000                      ; $8AEC26  A9 00 80     MX
L_8AEC29:
    TSB $1C87                       ; $8AEC29  0C 87 1C     MX
L_8AEC2C:
    RTS                             ; $8AEC2C  60           MX
L_8AEC2D:
    LDA $00A4                       ; $8AEC2D  AD A4 00     MX
L_8AEC30:
    BIT #$0400                      ; $8AEC30  89 00 04     MX
L_8AEC33:
    BEQ L_8AEC51                    ; $8AEC33  F0 1C        MX
    LDA $1C87                       ; $8AEC35  AD 87 1C     MX
    CMP #$0001                      ; $8AEC38  C9 01 00     MX
    BEQ L_8AEC4A                    ; $8AEC3B  F0 0D        MX
    PHA                             ; $8AEC3D  48           MX
    PHX                             ; $8AEC3E  DA           MX
    PHY                             ; $8AEC3F  5A           MX
    LDA #$0041                      ; $8AEC40  A9 41 00     MX
    JSL L_BDFE18                    ; $8AEC43  22 18 FE BD  MX
    PLY                             ; $8AEC47  7A           MX
    PLX                             ; $8AEC48  FA           MX
    PLA                             ; $8AEC49  68           MX
L_8AEC4A:
    LDA #$0001                      ; $8AEC4A  A9 01 00     MX
    STA $1C87                       ; $8AEC4D  8D 87 1C     MX
    RTS                             ; $8AEC50  60           MX
L_8AEC51:
    BIT #$0800                      ; $8AEC51  89 00 08     MX
L_8AEC54:
    BEQ L_8AEC71                    ; $8AEC54  F0 1B        MX
    LDA $1C87                       ; $8AEC56  AD 87 1C     MX
    CMP #$0000                      ; $8AEC59  C9 00 00     MX
    BEQ L_8AEC6B                    ; $8AEC5C  F0 0D        MX
    PHA                             ; $8AEC5E  48           MX
    PHX                             ; $8AEC5F  DA           MX
    PHY                             ; $8AEC60  5A           MX
    LDA #$0041                      ; $8AEC61  A9 41 00     MX
    JSL L_BDFE18                    ; $8AEC64  22 18 FE BD  MX
    PLY                             ; $8AEC68  7A           MX
    PLX                             ; $8AEC69  FA           MX
    PLA                             ; $8AEC6A  68           MX
L_8AEC6B:
    LDA #$0000                      ; $8AEC6B  A9 00 00     MX
    STA $1C87                       ; $8AEC6E  8D 87 1C     MX
L_8AEC71:
    RTS                             ; $8AEC71  60           MX
L_8AEC72:
    STA $00F0                       ; $8AEC72  8D F0 00     MX
L_8AEC75:
    LDA #$0043                      ; $8AEC75  A9 43 00     MX
L_8AEC78:
    STA $00EE                       ; $8AEC78  8D EE 00     MX
L_8AEC7B:
    LDA #$01E0                      ; $8AEC7B  A9 E0 01     MX
L_8AEC7E:
    STA $00F2                       ; $8AEC7E  8D F2 00     MX
L_8AEC81:
    SEP #$20                        ; $8AEC81  E2 20        MX
L_8AEC83:
    LDA #$20                        ; $8AEC83  A9 20        mX
L_8AEC85:
    STA $002A                       ; $8AEC85  8D 2A 00     mX
L_8AEC88:
    REP #$20                        ; $8AEC88  C2 20        mX
L_8AEC8A:
    LDA $1C87                       ; $8AEC8A  AD 87 1C     MX
L_8AEC8D:
    BIT #$0001                      ; $8AEC8D  89 01 00     MX
L_8AEC90:
    BNE L_8AECA9                    ; $8AEC90  D0 17        MX
L_8AEC92:
    LDX #$0007                      ; $8AEC92  A2 07 00     MX
L_8AEC95:
    PHX                             ; $8AEC95  DA           MX
L_8AEC96:
    JSL $2BE007                     ; $8AEC96  22 07 E0 2B  MX
L_8AEC9A:
    PLX                             ; $8AEC9A  FA           MX
L_8AEC9B:
    LDA $00EE                       ; $8AEC9B  AD EE 00     MX
L_8AEC9E:
    CLC                             ; $8AEC9E  18           MX
L_8AEC9F:
    ADC #$000C                      ; $8AEC9F  69 0C 00     MX
L_8AECA2:
    STA $00EE                       ; $8AECA2  8D EE 00     MX
L_8AECA5:
    DEX                             ; $8AECA5  CA           MX
L_8AECA6:
    BNE L_8AEC95                    ; $8AECA6  D0 ED        MX
L_8AECA8:
    RTS                             ; $8AECA8  60           MX
L_8AECA9:
    LDA $00EE                       ; $8AECA9  AD EE 00     MX
    CLC                             ; $8AECAC  18           MX
    ADC #$0010                      ; $8AECAD  69 10 00     MX
    STA $00EE                       ; $8AECB0  8D EE 00     MX
    LDX #$0005                      ; $8AECB3  A2 05 00     MX
    PHX                             ; $8AECB6  DA           MX
    JSL $2BE007                     ; $8AECB7  22 07 E0 2B  MX
    PLX                             ; $8AECBB  FA           MX
    LDA $00EE                       ; $8AECBC  AD EE 00     MX
    CLC                             ; $8AECBF  18           MX
    ADC #$000C                      ; $8AECC0  69 0C 00     MX
    STA $00EE                       ; $8AECC3  8D EE 00     MX
    DEX                             ; $8AECC6  CA           MX
    BNE L_8AEC95                    ; $8AECC7  D0 CC        MX
    RTS                             ; $8AECC9  60           MX
L_8AECCA:
    INC $1698                       ; $8AECCA  EE 98 16     MX
L_8AECCD:
    LDA $1698                       ; $8AECCD  AD 98 16     MX
L_8AECD0:
    CMP #$003C                      ; $8AECD0  C9 3C 00     MX
L_8AECD3:
    BEQ L_8AED11                    ; $8AECD3  F0 3C        MX
L_8AECD5:
    BCS L_8AECF8                    ; $8AECD5  B0 21        MX
L_8AECD7:
    CMP #$0014                      ; $8AECD7  C9 14 00     MX
L_8AECDA:
    BCS L_8AECF9                    ; $8AECDA  B0 1D        MX
L_8AECDC:
    BIT #$0001                      ; $8AECDC  89 01 00     MX
L_8AECDF:
    BEQ L_8AECF9                    ; $8AECDF  F0 18        MX
L_8AECE1:
    SEP #$10                        ; $8AECE1  E2 10        MX
L_8AECE3:
    LDA #$9D21                      ; $8AECE3  A9 21 9D     Mx
L_8AECE6:
    STA $00D0                       ; $8AECE6  8D D0 00     Mx
L_8AECE9:
    LDX #$0A                        ; $8AECE9  A2 0A        Mx
L_8AECEB:
    STX $00D2                       ; $8AECEB  8E D2 00     Mx
L_8AECEE:
    LDX #$81                        ; $8AECEE  A2 81        Mx
L_8AECF0:
    LDA #$0002                      ; $8AECF0  A9 02 00     Mx
L_8AECF3:
    JSR L_8AA9AD                    ; $8AECF3  20 AD A9     Mx
L_8AECF6:
    REP #$10                        ; $8AECF6  C2 10        Mx
L_8AECF8:
    RTS                             ; $8AECF8  60           MX
L_8AECF9:
    SEP #$10                        ; $8AECF9  E2 10        MX
L_8AECFB:
    LDA #$B9DD                      ; $8AECFB  A9 DD B9     Mx
L_8AECFE:
    STA $00D0                       ; $8AECFE  8D D0 00     Mx
L_8AED01:
    LDX #$2A                        ; $8AED01  A2 2A        Mx
L_8AED03:
    STX $00D2                       ; $8AED03  8E D2 00     Mx
L_8AED06:
    LDX #$81                        ; $8AED06  A2 81        Mx
L_8AED08:
    LDA #$0002                      ; $8AED08  A9 02 00     Mx
L_8AED0B:
    JSR L_8AA9AD                    ; $8AED0B  20 AD A9     Mx
L_8AED0E:
    REP #$10                        ; $8AED0E  C2 10        Mx
L_8AED10:
    RTS                             ; $8AED10  60           MX
L_8AED11:
    LDA $1C87                       ; $8AED11  AD 87 1C     MX
L_8AED14:
    AND #$0001                      ; $8AED14  29 01 00     MX
L_8AED17:
    BNE L_8AED22                    ; $8AED17  D0 09        MX
L_8AED19:
    LDA #$0013                      ; $8AED19  A9 13 00     MX
L_8AED1C:
    STA $00AE                       ; $8AED1C  8D AE 00     MX
L_8AED1F:
    JMP L_8AEDB0                    ; $8AED1F  4C B0 ED     MX
L_8AED22:
    LDA #$FF00                      ; $8AED22  A9 00 FF     MX
    STA $16BC                       ; $8AED25  8D BC 16     MX
    STA $16BE                       ; $8AED28  8D BE 16     MX
    STA $16C0                       ; $8AED2B  8D C0 16     MX
    STA $16C2                       ; $8AED2E  8D C2 16     MX
    LDA #$FFFF                      ; $8AED31  A9 FF FF     MX
    STA $16CC                       ; $8AED34  8D CC 16     MX  initial1
    STA $16D4                       ; $8AED37  8D D4 16     MX
    STA $16DC                       ; $8AED3A  8D DC 16     MX
    STA $16CE                       ; $8AED3D  8D CE 16     MX
    STA $16D6                       ; $8AED40  8D D6 16     MX
    STA $16DE                       ; $8AED43  8D DE 16     MX
    STA $16D0                       ; $8AED46  8D D0 16     MX
    STA $16D8                       ; $8AED49  8D D8 16     MX
    STA $16E0                       ; $8AED4C  8D E0 16     MX
    STA $16D2                       ; $8AED4F  8D D2 16     MX
    STA $16DA                       ; $8AED52  8D DA 16     MX
    STA $16E2                       ; $8AED55  8D E2 16     MX
    LDA $1C5D                       ; $8AED58  AD 5D 1C     MX
    CMP #$0002                      ; $8AED5B  C9 02 00     MX
    BCS L_8AED84                    ; $8AED5E  B0 24        MX
    LDA #$0042                      ; $8AED60  A9 42 00     MX
    STA $16D0                       ; $8AED63  8D D0 16     MX
    STA $16D2                       ; $8AED66  8D D2 16     MX
    LDA #$004F                      ; $8AED69  A9 4F 00     MX
    STA $16D8                       ; $8AED6C  8D D8 16     MX
    STA $16DA                       ; $8AED6F  8D DA 16     MX
    LDA #$0054                      ; $8AED72  A9 54 00     MX
    STA $16E0                       ; $8AED75  8D E0 16     MX
    STA $16E2                       ; $8AED78  8D E2 16     MX
    LDA #$FF47                      ; $8AED7B  A9 47 FF     MX
    STA $16C0                       ; $8AED7E  8D C0 16     MX
    STA $16C2                       ; $8AED81  8D C2 16     MX
L_8AED84:
    LDX #$FF07                      ; $8AED84  A2 07 FF     MX
    LDA $1690                       ; $8AED87  AD 90 16     MX
    BIT #$0001                      ; $8AED8A  89 01 00     MX
    BEQ L_8AED92                    ; $8AED8D  F0 03        MX
    STX $16BC                       ; $8AED8F  8E BC 16     MX
L_8AED92:
    BIT #$0002                      ; $8AED92  89 02 00     MX
    BEQ L_8AED9A                    ; $8AED95  F0 03        MX
    STX $16BE                       ; $8AED97  8E BE 16     MX
L_8AED9A:
    BIT #$0004                      ; $8AED9A  89 04 00     MX
    BEQ L_8AEDA2                    ; $8AED9D  F0 03        MX
    STX $16C0                       ; $8AED9F  8E C0 16     MX
L_8AEDA2:
    BIT #$0008                      ; $8AEDA2  89 08 00     MX
    BEQ L_8AEDAA                    ; $8AEDA5  F0 03        MX
    STX $16C2                       ; $8AEDA7  8E C2 16     MX
L_8AEDAA:
    LDA #$0003                      ; $8AEDAA  A9 03 00     MX
    STA $00AE                       ; $8AEDAD  8D AE 00     MX
L_8AEDB0:
    LDA #$0020                      ; $8AEDB0  A9 20 00     MX
L_8AEDB3:
    STA $001665                     ; $8AEDB3  8F 65 16 00  MX
L_8AEDB7:
    RTS                             ; $8AEDB7  60           MX
L_8AEDB8:
    SEP #$20                        ; $8AEDB8  E2 20        MX
    LDA #$FF                        ; $8AEDBA  A9 FF        mX
    STA $210E                       ; $8AEDBC  8D 0E 21     mX
    STA $210E                       ; $8AEDBF  8D 0E 21     mX
    LDA #$00                        ; $8AEDC2  A9 00        mX
    STA $210D                       ; $8AEDC4  8D 0D 21     mX
    STA $210D                       ; $8AEDC7  8D 0D 21     mX
    LDA #$FF                        ; $8AEDCA  A9 FF        mX
    STA $2110                       ; $8AEDCC  8D 10 21     mX
    STA $2110                       ; $8AEDCF  8D 10 21     mX
    LDA #$00                        ; $8AEDD2  A9 00        mX
    STA $210F                       ; $8AEDD4  8D 0F 21     mX
    STA $210F                       ; $8AEDD7  8D 0F 21     mX
    LDA #$14                        ; $8AEDDA  A9 14        mX
    PHA                             ; $8AEDDC  48           mX
    LDA #$13                        ; $8AEDDD  A9 13        mX
    STA $212C                       ; $8AEDDF  8D 2C 21     mX
    LDA #$01                        ; $8AEDE2  A9 01        mX
    STA $2105                       ; $8AEDE4  8D 05 21     mX
    LDA #$28                        ; $8AEDE7  A9 28        mX
    STA $2107                       ; $8AEDE9  8D 07 21     mX
    LDA #$2C                        ; $8AEDEC  A9 2C        mX
    STA $2108                       ; $8AEDEE  8D 08 21     mX
    LDA #$03                        ; $8AEDF1  A9 03        mX
    STA $210B                       ; $8AEDF3  8D 0B 21     mX
    LDA #$03                        ; $8AEDF6  A9 03        mX
    STA $2101                       ; $8AEDF8  8D 01 21     mX
    STZ $00B2                       ; $8AEDFB  9C B2 00     mX
    REP #$20                        ; $8AEDFE  C2 20        mX
    PHX                             ; $8AEE00  DA           MX
    LDA #$FFFF                      ; $8AEE01  A9 FF FF     MX
    STA $1677                       ; $8AEE04  8D 77 16     MX
    LDX #$06FE                      ; $8AEE07  A2 FE 06     MX
    LDA #$0000                      ; $8AEE0A  A9 00 00     MX
L_8AEE0D:
    STA $7EC300,X                   ; $8AEE0D  9F 00 C3 7E  MX
    DEX                             ; $8AEE11  CA           MX
    DEX                             ; $8AEE12  CA           MX
    BPL L_8AEE0D                    ; $8AEE13  10 F8        MX
    LDA #$BA5D                      ; $8AEE15  A9 5D BA     MX
    LDX #$00C8                      ; $8AEE18  A2 C8 00     MX
    JSR L_8AE07E                    ; $8AEE1B  20 7E E0     MX
    LDA #$BA75                      ; $8AEE1E  A9 75 BA     MX
    LDX #$0148                      ; $8AEE21  A2 48 01     MX
    JSR L_8AE07E                    ; $8AEE24  20 7E E0     MX
    LDA #$BA89                      ; $8AEE27  A9 89 BA     MX
    LDX #$02D4                      ; $8AEE2A  A2 D4 02     MX
    JSR L_8AE0C6                    ; $8AEE2D  20 C6 E0     MX
    LDA #$BA8D                      ; $8AEE30  A9 8D BA     MX
    LDX #$04D8                      ; $8AEE33  A2 D8 04     MX
    JSR L_8AE0C6                    ; $8AEE36  20 C6 E0     MX
    LDA #$0009                      ; $8AEE39  A9 09 00     MX
    STA $1667                       ; $8AEE3C  8D 67 16     MX
    STZ $1C87                       ; $8AEE3F  9C 87 1C     MX
    STZ $1698                       ; $8AEE42  9C 98 16     MX
    LDA #$001F                      ; $8AEE45  A9 1F 00     MX
    STA $001665                     ; $8AEE48  8F 65 16 00  MX
    RTL                             ; $8AEE4C  6B           MX
L_8AEE4D:
    SEP #$30                        ; $8AEE4D  E2 30        MX
    LDA #$8F                        ; $8AEE4F  A9 8F        mx
    STA $2100                       ; $8AEE51  8D 00 21     mx
    REP #$30                        ; $8AEE54  C2 30        mx
    LDA #$8000                      ; $8AEE56  A9 00 80     MX
    STA $00D0                       ; $8AEE59  8D D0 00     MX
    LDA #$1580                      ; $8AEE5C  A9 80 15     MX
    STA $00D1                       ; $8AEE5F  8D D1 00     MX
    LDA #$1000                      ; $8AEE62  A9 00 10     MX
    STA $00D3                       ; $8AEE65  8D D3 00     MX
    LDA #$7F10                      ; $8AEE68  A9 10 7F     MX
    STA $00D4                       ; $8AEE6B  8D D4 00     MX
    JSL $29F3F0                     ; $8AEE6E  22 F0 F3 29  MX
    SEP #$30                        ; $8AEE72  E2 30        MX
    LDA #$00                        ; $8AEE74  A9 00        mx
    STA $2116                       ; $8AEE76  8D 16 21     mx
    LDA #$00                        ; $8AEE79  A9 00        mx
    STA $2117                       ; $8AEE7B  8D 17 21     mx
    LDA #$01                        ; $8AEE7E  A9 01        mx
    STA $4300                       ; $8AEE80  8D 00 43     mx
    LDA #$18                        ; $8AEE83  A9 18        mx
    STA $4301                       ; $8AEE85  8D 01 43     mx
    LDA #$05                        ; $8AEE88  A9 05        mx
    STA $4302                       ; $8AEE8A  8D 02 43     mx
    LDA #$8E                        ; $8AEE8D  A9 8E        mx
    STA $4303                       ; $8AEE8F  8D 03 43     mx
    LDA #$14                        ; $8AEE92  A9 14        mx
    STA $4304                       ; $8AEE94  8D 04 43     mx
    LDA #$C0                        ; $8AEE97  A9 C0        mx
    STA $4305                       ; $8AEE99  8D 05 43     mx
    LDA #$4C                        ; $8AEE9C  A9 4C        mx
    STA $4306                       ; $8AEE9E  8D 06 43     mx
    LDA #$01                        ; $8AEEA1  A9 01        mx
    STA $420B                       ; $8AEEA3  8D 0B 42     mx
    LDA #$00                        ; $8AEEA6  A9 00        mx
    STA $2116                       ; $8AEEA8  8D 16 21     mx
    LDA #$30                        ; $8AEEAB  A9 30        mx
    STA $2117                       ; $8AEEAD  8D 17 21     mx
    LDA #$01                        ; $8AEEB0  A9 01        mx
    STA $4300                       ; $8AEEB2  8D 00 43     mx
    LDA #$18                        ; $8AEEB5  A9 18        mx
    STA $4301                       ; $8AEEB7  8D 01 43     mx
    LDA #$00                        ; $8AEEBA  A9 00        mx
    STA $4302                       ; $8AEEBC  8D 02 43     mx
    LDA #$10                        ; $8AEEBF  A9 10        mx
    STA $4303                       ; $8AEEC1  8D 03 43     mx
    LDA #$7F                        ; $8AEEC4  A9 7F        mx
    STA $4304                       ; $8AEEC6  8D 04 43     mx
    LDA #$60                        ; $8AEEC9  A9 60        mx
    STA $4305                       ; $8AEECB  8D 05 43     mx
    LDA #$7B                        ; $8AEECE  A9 7B        mx
    STA $4306                       ; $8AEED0  8D 06 43     mx
    LDA #$01                        ; $8AEED3  A9 01        mx
    STA $420B                       ; $8AEED5  8D 0B 42     mx
    LDA #$DF                        ; $8AEED8  A9 DF        mx
    STA $00D0                       ; $8AEEDA  8D D0 00     mx
    LDA #$B9                        ; $8AEEDD  A9 B9        mx
    STA $00D1                       ; $8AEEDF  8D D1 00     mx
    LDA #$2A                        ; $8AEEE2  A9 2A        mx
    STA $00D2                       ; $8AEEE4  8D D2 00     mx
    LDX #$50                        ; $8AEEE7  A2 50        mx
    LDA #$00                        ; $8AEEE9  A9 00        mx
    JSL L_808B53                    ; $8AEEEB  22 53 8B 80  mx
    LDA #$80                        ; $8AEEEF  A9 80        mx
    STA $2115                       ; $8AEEF1  8D 15 21     mx
    REP #$30                        ; $8AEEF4  C2 30        mx
    LDA #$2C00                      ; $8AEEF6  A9 00 2C     MX
    STA $2116                       ; $8AEEF9  8D 16 21     MX
    LDA #$E1CD                      ; $8AEEFC  A9 CD E1     MX
    STA $00A4                       ; $8AEEFF  8D A4 00     MX
    PEA $0014                       ; $8AEF02  F4 14 00     MX
    PLB                             ; $8AEF05  AB           MX
    LDX #$001C                      ; $8AEF06  A2 1C 00     MX
L_8AEF09:
    LDY #$0000                      ; $8AEF09  A0 00 00     MX
L_8AEF0C:
    LDA ($A4),Y                     ; $8AEF0C  B1 A4        MX
    STA $002118                     ; $8AEF0E  8F 18 21 00  MX
    INY                             ; $8AEF12  C8           MX
    INY                             ; $8AEF13  C8           MX
    CPY #$0040                      ; $8AEF14  C0 40 00     MX
    BNE L_8AEF0C                    ; $8AEF17  D0 F3        MX
    LDA $0000A4                     ; $8AEF19  AF A4 00 00  MX
    CLC                             ; $8AEF1D  18           MX
    ADC #$0040                      ; $8AEF1E  69 40 00     MX
    STA $0000A4                     ; $8AEF21  8F A4 00 00  MX
    DEX                             ; $8AEF25  CA           MX
    BNE L_8AEF09                    ; $8AEF26  D0 E1        MX
    LDA #$2800                      ; $8AEF28  A9 00 28     MX
    STA $002116                     ; $8AEF2B  8F 16 21 00  MX
    LDX #$001C                      ; $8AEF2F  A2 1C 00     MX
    LDA #$0000                      ; $8AEF32  A9 00 00     MX
L_8AEF35:
    LDY #$0000                      ; $8AEF35  A0 00 00     MX
L_8AEF38:
    STA $002118                     ; $8AEF38  8F 18 21 00  MX
    INY                             ; $8AEF3C  C8           MX
    INY                             ; $8AEF3D  C8           MX
    CPY #$0040                      ; $8AEF3E  C0 40 00     MX
    BNE L_8AEF38                    ; $8AEF41  D0 F5        MX
    DEX                             ; $8AEF43  CA           MX
    BNE L_8AEF35                    ; $8AEF44  D0 EF        MX
    PLB                             ; $8AEF46  AB           MX
    SEP #$20                        ; $8AEF47  E2 20        MX
    LDA #$FF                        ; $8AEF49  A9 FF        mX
    STA $210E                       ; $8AEF4B  8D 0E 21     mX
    STA $210E                       ; $8AEF4E  8D 0E 21     mX
    LDA #$00                        ; $8AEF51  A9 00        mX
    STA $210D                       ; $8AEF53  8D 0D 21     mX
    STA $210D                       ; $8AEF56  8D 0D 21     mX
    LDA #$FF                        ; $8AEF59  A9 FF        mX
    STA $2110                       ; $8AEF5B  8D 10 21     mX
    STA $2110                       ; $8AEF5E  8D 10 21     mX
    LDA #$00                        ; $8AEF61  A9 00        mX
    STA $210F                       ; $8AEF63  8D 0F 21     mX
    STA $210F                       ; $8AEF66  8D 0F 21     mX
    LDA #$13                        ; $8AEF69  A9 13        mX
    STA $212C                       ; $8AEF6B  8D 2C 21     mX
    LDA #$01                        ; $8AEF6E  A9 01        mX
    STA $2105                       ; $8AEF70  8D 05 21     mX
    LDA #$28                        ; $8AEF73  A9 28        mX
    STA $2107                       ; $8AEF75  8D 07 21     mX
    LDA #$2C                        ; $8AEF78  A9 2C        mX
    STA $2108                       ; $8AEF7A  8D 08 21     mX
    LDA #$03                        ; $8AEF7D  A9 03        mX
    STA $210B                       ; $8AEF7F  8D 0B 21     mX
    LDA #$03                        ; $8AEF82  A9 03        mX
    STA $2101                       ; $8AEF84  8D 01 21     mX
    STZ $00B2                       ; $8AEF87  9C B2 00     mX
    REP #$20                        ; $8AEF8A  C2 20        mX
    LDA #$FFFF                      ; $8AEF8C  A9 FF FF     MX
    STA $1677                       ; $8AEF8F  8D 77 16     MX
    LDX #$06FE                      ; $8AEF92  A2 FE 06     MX
    LDA #$0000                      ; $8AEF95  A9 00 00     MX
L_8AEF98:
    STA $7EC300,X                   ; $8AEF98  9F 00 C3 7E  MX
    DEX                             ; $8AEF9C  CA           MX
    DEX                             ; $8AEF9D  CA           MX
    BPL L_8AEF98                    ; $8AEF9E  10 F8        MX
    LDA #$0004                      ; $8AEFA0  A9 04 00     MX
    LDY #$0088                      ; $8AEFA3  A0 88 00     MX
    JSR L_8AE021                    ; $8AEFA6  20 21 E0     MX
    LDA $1D39                       ; $8AEFA9  AD 39 1D     MX
    CMP #$0001                      ; $8AEFAC  C9 01 00     MX
    BNE L_8AEFBA                    ; $8AEFAF  D0 09        MX
    INC                             ; $8AEFB1  1A           MX
    STA $1D39                       ; $8AEFB2  8D 39 1D     MX
    LDA #$000C                      ; $8AEFB5  A9 0C 00     MX
    BRA L_8AEFC6                    ; $8AEFB8  80 0C        MX
L_8AEFBA:
    LDA $1D56                       ; $8AEFBA  AD 56 1D     MX
    AND #$000F                      ; $8AEFBD  29 0F 00     MX
    CMP #$000C                      ; $8AEFC0  C9 0C 00     MX
    BNE L_8AEFC6                    ; $8AEFC3  D0 01        MX
    INC                             ; $8AEFC5  1A           MX
L_8AEFC6:
    ASL                             ; $8AEFC6  0A           MX
    ASL                             ; $8AEFC7  0A           MX
    TAX                             ; $8AEFC8  AA           MX
    PHX                             ; $8AEFC9  DA           MX
    LDA $0BFDF5,X                   ; $8AEFCA  BF F5 FD 0B  MX
    LDX #$0184                      ; $8AEFCE  A2 84 01     MX
    JSR L_8AE07E                    ; $8AEFD1  20 7E E0     MX
    PLX                             ; $8AEFD4  FA           MX
    LDA $0BFDF7,X                   ; $8AEFD5  BF F7 FD 0B  MX
    LDX #$0284                      ; $8AEFD9  A2 84 02     MX
L_8AEFDC:
    PHX                             ; $8AEFDC  DA           MX
    JSR L_8AE07E                    ; $8AEFDD  20 7E E0     MX
    TAX                             ; $8AEFE0  AA           MX
    PLA                             ; $8AEFE1  68           MX
    CLC                             ; $8AEFE2  18           MX
    ADC #$0080                      ; $8AEFE3  69 80 00     MX
    TAY                             ; $8AEFE6  A8           MX
    LDA $150000,X                   ; $8AEFE7  BF 00 00 15  MX
    AND #$00FF                      ; $8AEFEB  29 FF 00     MX
    CMP #$00FF                      ; $8AEFEE  C9 FF 00     MX
    BEQ L_8AEFF7                    ; $8AEFF1  F0 04        MX
    TXA                             ; $8AEFF3  8A           MX
    TYX                             ; $8AEFF4  BB           MX
    BRA L_8AEFDC                    ; $8AEFF5  80 E5        MX
L_8AEFF7:
    LDA #$0009                      ; $8AEFF7  A9 09 00     MX
    STA $1667                       ; $8AEFFA  8D 67 16     MX
    SEP #$20                        ; $8AEFFD  E2 20        MX
    LDA #$0B                        ; $8AEFFF  A9 0B        mX
    STA $4344                       ; $8AF001  8D 44 43     mX
    LDA #$02                        ; $8AF004  A9 02        mX
    STA $4340                       ; $8AF006  8D 40 43     mX
    LDA #$0E                        ; $8AF009  A9 0E        mX
    STA $4341                       ; $8AF00B  8D 41 43     mX
    REP #$20                        ; $8AF00E  C2 20        mX
    LDA #$FE6B                      ; $8AF010  A9 6B FE     MX
    STA $4342                       ; $8AF013  8D 42 43     MX
    JSR L_8AE59B                    ; $8AF016  20 9B E5     MX
    STZ $1698                       ; $8AF019  9C 98 16     MX
    LDA #$0000                      ; $8AF01C  A9 00 00     MX
    STA $1C63                       ; $8AF01F  8D 63 1C     MX
    LDA #$0200                      ; $8AF022  A9 00 02     MX
    STA $1C5F                       ; $8AF025  8D 5F 1C     MX
    LDA #$0226                      ; $8AF028  A9 26 02     MX
    STA $00B0                       ; $8AF02B  8D B0 00     MX
    LDA #$0022                      ; $8AF02E  A9 22 00     MX
    STA $001665                     ; $8AF031  8F 65 16 00  MX
    RTS                             ; $8AF035  60           MX
L_8AF036:
    SEP #$20                        ; $8AF036  E2 20        MX
    LDA #$F0                        ; $8AF038  A9 F0        mX
    STA $420C                       ; $8AF03A  8D 0C 42     mX
    LDA $00B2                       ; $8AF03D  AD B2 00     mX
    CMP #$10                        ; $8AF040  C9 10        mX
    BEQ L_8AF04A                    ; $8AF042  F0 06        mX
    STA $2100                       ; $8AF044  8D 00 21     mX
    INC $00B2                       ; $8AF047  EE B2 00     mX
L_8AF04A:
    REP #$20                        ; $8AF04A  C2 20        mX
    LDA $00B2                       ; $8AF04C  AD B2 00     MX
    AND #$00FF                      ; $8AF04F  29 FF 00     MX
    CMP #$0010                      ; $8AF052  C9 10 00     MX
    BNE L_8AF068                    ; $8AF055  D0 11        MX
    LDA $1669                       ; $8AF057  AD 69 16     MX
    ORA $166B                       ; $8AF05A  0D 6B 16     MX
    ORA $166D                       ; $8AF05D  0D 6D 16     MX
    ORA $166F                       ; $8AF060  0D 6F 16     MX
    BIT #$C0C0                      ; $8AF063  89 C0 C0     MX
    BNE L_8AF06D                    ; $8AF066  D0 05        MX
L_8AF068:
    DEC $00B0                       ; $8AF068  CE B0 00     MX
    BPL L_8AF073                    ; $8AF06B  10 06        MX
L_8AF06D:
    LDA #$0023                      ; $8AF06D  A9 23 00     MX
    STA $1665                       ; $8AF070  8D 65 16     MX
L_8AF073:
    LDA #$0001                      ; $8AF073  A9 01 00     MX
    JSR L_8AE485                    ; $8AF076  20 85 E4     MX
    RTS                             ; $8AF079  60           MX
L_8AF07A:
    SEP #$20                        ; $8AF07A  E2 20        MX
    DEC $00B2                       ; $8AF07C  CE B2 00     mX
    LDA $00B2                       ; $8AF07F  AD B2 00     mX
    CMP #$FF                        ; $8AF082  C9 FF        mX
    BNE L_8AF090                    ; $8AF084  D0 0A        mX
    LDA #$80                        ; $8AF086  A9 80        mX
    TSB $1666                       ; $8AF088  0C 66 16     mX
    LDA #$00                        ; $8AF08B  A9 00        mX
    STA $420C                       ; $8AF08D  8D 0C 42     mX
L_8AF090:
    STA $2100                       ; $8AF090  8D 00 21     mX
    REP #$20                        ; $8AF093  C2 20        mX
    RTS                             ; $8AF095  60           MX
L_8AF096:
    SEP #$20                        ; $8AF096  E2 20        MX
    LDA #$8F                        ; $8AF098  A9 8F        mX
    STA $2100                       ; $8AF09A  8D 00 21     mX
    REP #$30                        ; $8AF09D  C2 30        mX
    LDA #$0000                      ; $8AF09F  A9 00 00     MX
    STA $2116                       ; $8AF0A2  8D 16 21     MX
    LDX #$8000                      ; $8AF0A5  A2 00 80     MX
    LDA #$0000                      ; $8AF0A8  A9 00 00     MX
L_8AF0AB:
    STA $2118                       ; $8AF0AB  8D 18 21     MX
    DEX                             ; $8AF0AE  CA           MX
    BNE L_8AF0AB                    ; $8AF0AF  D0 FA        MX
    LDA #$8000                      ; $8AF0B1  A9 00 80     MX
    STA $00D0                       ; $8AF0B4  8D D0 00     MX
    LDA #$1480                      ; $8AF0B7  A9 80 14     MX
    STA $00D1                       ; $8AF0BA  8D D1 00     MX
    LDA #$0000                      ; $8AF0BD  A9 00 00     MX
    STA $00D3                       ; $8AF0C0  8D D3 00     MX
    LDA #$7F00                      ; $8AF0C3  A9 00 7F     MX
    STA $00D4                       ; $8AF0C6  8D D4 00     MX
    JSL $29F3F0                     ; $8AF0C9  22 F0 F3 29  MX
    SEP #$30                        ; $8AF0CD  E2 30        MX
    LDA #$00                        ; $8AF0CF  A9 00        mx
    STA $2116                       ; $8AF0D1  8D 16 21     mx
    LDA #$00                        ; $8AF0D4  A9 00        mx
    STA $2117                       ; $8AF0D6  8D 17 21     mx
    LDA #$01                        ; $8AF0D9  A9 01        mx
    STA $4300                       ; $8AF0DB  8D 00 43     mx
    LDA #$18                        ; $8AF0DE  A9 18        mx
    STA $4301                       ; $8AF0E0  8D 01 43     mx
    LDA #$00                        ; $8AF0E3  A9 00        mx
    STA $4302                       ; $8AF0E5  8D 02 43     mx
    LDA #$00                        ; $8AF0E8  A9 00        mx
    STA $4303                       ; $8AF0EA  8D 03 43     mx
    LDA #$7F                        ; $8AF0ED  A9 7F        mx
    STA $4304                       ; $8AF0EF  8D 04 43     mx
    LDA #$00                        ; $8AF0F2  A9 00        mx
    STA $4305                       ; $8AF0F4  8D 05 43     mx
    LDA #$43                        ; $8AF0F7  A9 43        mx
    STA $4306                       ; $8AF0F9  8D 06 43     mx
    LDA #$01                        ; $8AF0FC  A9 01        mx
    STA $420B                       ; $8AF0FE  8D 0B 42     mx
    REP #$30                        ; $8AF101  C2 30        mx
    LDA #$C57A                      ; $8AF103  A9 7A C5     MX
    STA $00D0                       ; $8AF106  8D D0 00     MX
    LDA #$15C5                      ; $8AF109  A9 C5 15     MX
    STA $00D1                       ; $8AF10C  8D D1 00     MX
    LDA #$0000                      ; $8AF10F  A9 00 00     MX
    STA $00D3                       ; $8AF112  8D D3 00     MX
    LDA #$7F00                      ; $8AF115  A9 00 7F     MX
    STA $00D4                       ; $8AF118  8D D4 00     MX
    JSL $29F3F0                     ; $8AF11B  22 F0 F3 29  MX
    SEP #$30                        ; $8AF11F  E2 30        MX
    LDA #$00                        ; $8AF121  A9 00        mx
    STA $2116                       ; $8AF123  8D 16 21     mx
    LDA #$40                        ; $8AF126  A9 40        mx
    STA $2117                       ; $8AF128  8D 17 21     mx
    LDA #$01                        ; $8AF12B  A9 01        mx
    STA $4300                       ; $8AF12D  8D 00 43     mx
    LDA #$18                        ; $8AF130  A9 18        mx
    STA $4301                       ; $8AF132  8D 01 43     mx
    LDA #$00                        ; $8AF135  A9 00        mx
    STA $4302                       ; $8AF137  8D 02 43     mx
    LDA #$00                        ; $8AF13A  A9 00        mx
    STA $4303                       ; $8AF13C  8D 03 43     mx
    LDA #$7F                        ; $8AF13F  A9 7F        mx
    STA $4304                       ; $8AF141  8D 04 43     mx
    LDA #$20                        ; $8AF144  A9 20        mx
    STA $4305                       ; $8AF146  8D 05 43     mx
    LDA #$1D                        ; $8AF149  A9 1D        mx
    STA $4306                       ; $8AF14B  8D 06 43     mx
    LDA #$01                        ; $8AF14E  A9 01        mx
    STA $420B                       ; $8AF150  8D 0B 42     mx
    REP #$30                        ; $8AF153  C2 30        mx
    LDA #$8000                      ; $8AF155  A9 00 80     MX
    TSB $1683                       ; $8AF158  0C 83 16     MX
    TSB $1685                       ; $8AF15B  0C 85 16     MX
    LDA #$FFFF                      ; $8AF15E  A9 FF FF     MX
    STA $1677                       ; $8AF161  8D 77 16     MX
    JSL $29F9B6                     ; $8AF164  22 B6 F9 29  MX
    LDA #$0025                      ; $8AF168  A9 25 00     MX
    STA $001665                     ; $8AF16B  8F 65 16 00  MX
    RTS                             ; $8AF16F  60           MX
L_8AF170:
    LDA $1677                       ; $8AF170  AD 77 16     MX
    CMP #$000A                      ; $8AF173  C9 0A 00     MX
    BNE L_8AF17F                    ; $8AF176  D0 07        MX
    LDA #$0026                      ; $8AF178  A9 26 00     MX
    STA $001665                     ; $8AF17B  8F 65 16 00  MX
L_8AF17F:
    JSR L_8A8CD0                    ; $8AF17F  20 D0 8C     MX
    RTS                             ; $8AF182  60           MX
L_8AF183:
    SEP #$30                        ; $8AF183  E2 30        MX
    LDA #$8F                        ; $8AF185  A9 8F        mx
    STA $2100                       ; $8AF187  8D 00 21     mx
    LDA #$80                        ; $8AF18A  A9 80        mx
    STA $2115                       ; $8AF18C  8D 15 21     mx
    LDA #$7A                        ; $8AF18F  A9 7A        mx
    STA $00D0                       ; $8AF191  8D D0 00     mx
    LDA #$FA                        ; $8AF194  A9 FA        mx
    STA $00D1                       ; $8AF196  8D D1 00     mx
    LDA #$11                        ; $8AF199  A9 11        mx
    STA $00D2                       ; $8AF19B  8D D2 00     mx
    LDX #$50                        ; $8AF19E  A2 50        mx
    LDA #$00                        ; $8AF1A0  A9 00        mx
    JSL L_808B53                    ; $8AF1A2  22 53 8B 80  mx
    LDA #$00                        ; $8AF1A6  A9 00        mx
    STA $00D0                       ; $8AF1A8  8D D0 00     mx
    LDA #$FF                        ; $8AF1AB  A9 FF        mx
    STA $00D1                       ; $8AF1AD  8D D1 00     mx
    LDA #$29                        ; $8AF1B0  A9 29        mx
    STA $00D2                       ; $8AF1B2  8D D2 00     mx
    LDX #$10                        ; $8AF1B5  A2 10        mx
    LDA #$F0                        ; $8AF1B7  A9 F0        mx
    JSL L_808B53                    ; $8AF1B9  22 53 8B 80  mx
    LDA #$6F                        ; $8AF1BD  A9 6F        mx
    STA $00D0                       ; $8AF1BF  8D D0 00     mx
    LDA #$9B                        ; $8AF1C2  A9 9B        mx
    STA $00D1                       ; $8AF1C4  8D D1 00     mx
    LDA #$0D                        ; $8AF1C7  A9 0D        mx
    STA $00D2                       ; $8AF1C9  8D D2 00     mx
    LDX #$20                        ; $8AF1CC  A2 20        mx
    LDA #$D0                        ; $8AF1CE  A9 D0        mx
    JSL L_808B53                    ; $8AF1D0  22 53 8B 80  mx
    LDA #$80                        ; $8AF1D4  A9 80        mx
    STA $2115                       ; $8AF1D6  8D 15 21     mx
    REP #$30                        ; $8AF1D9  C2 30        mx
    LDA #$DFCB                      ; $8AF1DB  A9 CB DF     MX
    STA $00A4                       ; $8AF1DE  8D A4 00     MX
    PEA $0015                       ; $8AF1E1  F4 15 00     MX
    PLB                             ; $8AF1E4  AB           MX
    LDA #$001C                      ; $8AF1E5  A9 1C 00     MX
    STA $0000A6                     ; $8AF1E8  8F A6 00 00  MX
    LDX #$0000                      ; $8AF1EC  A2 00 00     MX
L_8AF1EF:
    LDY #$0000                      ; $8AF1EF  A0 00 00     MX
L_8AF1F2:
    LDA ($A4),Y                     ; $8AF1F2  B1 A4        MX
    STA $7EC300,X                   ; $8AF1F4  9F 00 C3 7E  MX
    INX                             ; $8AF1F8  E8           MX
    INX                             ; $8AF1F9  E8           MX
    INY                             ; $8AF1FA  C8           MX
    INY                             ; $8AF1FB  C8           MX
    CPY #$0040                      ; $8AF1FC  C0 40 00     MX
    BNE L_8AF1F2                    ; $8AF1FF  D0 F1        MX
    LDA $0000A4                     ; $8AF201  AF A4 00 00  MX
    CLC                             ; $8AF205  18           MX
    ADC #$0040                      ; $8AF206  69 40 00     MX
    STA $0000A4                     ; $8AF209  8F A4 00 00  MX
    DEC $00A6                       ; $8AF20D  CE A6 00     MX
    BNE L_8AF1EF                    ; $8AF210  D0 DD        MX
    LDA #$3C00                      ; $8AF212  A9 00 3C     MX
    STA $002116                     ; $8AF215  8F 16 21 00  MX
    LDA #$D8C7                      ; $8AF219  A9 C7 D8     MX
    STA $0000A4                     ; $8AF21C  8F A4 00 00  MX
    LDX #$001C                      ; $8AF220  A2 1C 00     MX
L_8AF223:
    LDY #$0000                      ; $8AF223  A0 00 00     MX
L_8AF226:
    LDA ($A4),Y                     ; $8AF226  B1 A4        MX
    STA $002118                     ; $8AF228  8F 18 21 00  MX
    INY                             ; $8AF22C  C8           MX
    INY                             ; $8AF22D  C8           MX
    CPY #$0040                      ; $8AF22E  C0 40 00     MX
    BNE L_8AF226                    ; $8AF231  D0 F3        MX
    LDA $0000A4                     ; $8AF233  AF A4 00 00  MX
    CLC                             ; $8AF237  18           MX
    ADC #$0040                      ; $8AF238  69 40 00     MX
    STA $0000A4                     ; $8AF23B  8F A4 00 00  MX
    DEX                             ; $8AF23F  CA           MX
    BNE L_8AF223                    ; $8AF240  D0 E1        MX
    PLB                             ; $8AF242  AB           MX
    SEP #$20                        ; $8AF243  E2 20        MX
    LDA #$FF                        ; $8AF245  A9 FF        mX
    STA $210E                       ; $8AF247  8D 0E 21     mX
    STA $210E                       ; $8AF24A  8D 0E 21     mX
    LDA #$00                        ; $8AF24D  A9 00        mX
    STA $210D                       ; $8AF24F  8D 0D 21     mX
    STA $210D                       ; $8AF252  8D 0D 21     mX
    LDA #$FF                        ; $8AF255  A9 FF        mX
    STA $2110                       ; $8AF257  8D 10 21     mX
    STA $2110                       ; $8AF25A  8D 10 21     mX
    LDA #$00                        ; $8AF25D  A9 00        mX
    STA $210F                       ; $8AF25F  8D 0F 21     mX
    STA $210F                       ; $8AF262  8D 0F 21     mX
    LDA #$13                        ; $8AF265  A9 13        mX
    STA $212C                       ; $8AF267  8D 2C 21     mX
    LDA #$03                        ; $8AF26A  A9 03        mX
    STA $2105                       ; $8AF26C  8D 05 21     mX
    LDA #$74                        ; $8AF26F  A9 74        mX
    STA $2107                       ; $8AF271  8D 07 21     mX
    LDA #$3C                        ; $8AF274  A9 3C        mX
    STA $2108                       ; $8AF276  8D 08 21     mX
    LDA #$40                        ; $8AF279  A9 40        mX
    STA $210B                       ; $8AF27B  8D 0B 21     mX
    LDA #$03                        ; $8AF27E  A9 03        mX
    STA $2101                       ; $8AF280  8D 01 21     mX
    REP #$20                        ; $8AF283  C2 20        mX
    LDA #$FFFF                      ; $8AF285  A9 FF FF     MX
    STA $1677                       ; $8AF288  8D 77 16     MX
    LDX #$C402                      ; $8AF28B  A2 02 C4     MX
    LDY #$0125                      ; $8AF28E  A0 25 01     MX
    JSR L_8A8BEB                    ; $8AF291  20 EB 8B     MX
    LDX #$C702                      ; $8AF294  A2 02 C7     MX
    LDY #$014F                      ; $8AF297  A0 4F 01     MX
    JSR L_8A8BEB                    ; $8AF29A  20 EB 8B     MX
    LDX #$C422                      ; $8AF29D  A2 22 C4     MX
    LDY #$0179                      ; $8AF2A0  A0 79 01     MX
    JSR L_8A8BEB                    ; $8AF2A3  20 EB 8B     MX
    LDX #$C722                      ; $8AF2A6  A2 22 C7     MX
    LDY #$01A3                      ; $8AF2A9  A0 A3 01     MX
    JSR L_8A8BEB                    ; $8AF2AC  20 EB 8B     MX
    LDA #$0000                      ; $8AF2AF  A9 00 00     MX
    STA $2116                       ; $8AF2B2  8D 16 21     MX
    LDA #$0074                      ; $8AF2B5  A9 74 00     MX
    STA $2117                       ; $8AF2B8  8D 17 21     MX
    LDA #$0001                      ; $8AF2BB  A9 01 00     MX
    STA $4300                       ; $8AF2BE  8D 00 43     MX
    LDA #$0018                      ; $8AF2C1  A9 18 00     MX
    STA $4301                       ; $8AF2C4  8D 01 43     MX
    LDA #$0000                      ; $8AF2C7  A9 00 00     MX
    STA $4302                       ; $8AF2CA  8D 02 43     MX
    LDA #$00C3                      ; $8AF2CD  A9 C3 00     MX
    STA $4303                       ; $8AF2D0  8D 03 43     MX
    LDA #$007E                      ; $8AF2D3  A9 7E 00     MX
    STA $4304                       ; $8AF2D6  8D 04 43     MX
    LDA #$0000                      ; $8AF2D9  A9 00 00     MX
    STA $4305                       ; $8AF2DC  8D 05 43     MX
    LDA #$0008                      ; $8AF2DF  A9 08 00     MX
    STA $4306                       ; $8AF2E2  8D 06 43     MX
    LDA #$0001                      ; $8AF2E5  A9 01 00     MX
    STA $420B                       ; $8AF2E8  8D 0B 42     MX
    LDX #$01FE                      ; $8AF2EB  A2 FE 01     MX
L_8AF2EE:
    LDA $15DA07,X                   ; $8AF2EE  BF 07 DA 15  MX
    STA $7EC300,X                   ; $8AF2F2  9F 00 C3 7E  MX
    LDA $15DD07,X                   ; $8AF2F6  BF 07 DD 15  MX
    STA $7EC500,X                   ; $8AF2FA  9F 00 C5 7E  MX
    DEX                             ; $8AF2FE  CA           MX
    DEX                             ; $8AF2FF  CA           MX
    BPL L_8AF2EE                    ; $8AF300  10 EC        MX
    LDX #$0000                      ; $8AF302  A2 00 00     MX
L_8AF305:
    PHX                             ; $8AF305  DA           MX
    LDA $0BFF93,X                   ; $8AF306  BF 93 FF 0B  MX
    JSR L_8AF842                    ; $8AF30A  20 42 F8     MX
    LDA #$D2C6                      ; $8AF30D  A9 C6 D2     MX
    LDX #$0000                      ; $8AF310  A2 00 00     MX
    LDY #$0000                      ; $8AF313  A0 00 00     MX
    JSR L_8ACFBD                    ; $8AF316  20 BD CF     MX
    PLX                             ; $8AF319  FA           MX
    PHX                             ; $8AF31A  DA           MX
    PHX                             ; $8AF31B  DA           MX
    LDA #$0000                      ; $8AF31C  A9 00 00     MX
    STA $00B2                       ; $8AF31F  8D B2 00     MX
L_8AF322:
    PLX                             ; $8AF322  FA           MX
    PHX                             ; $8AF323  DA           MX
    LDA $1C89,X                     ; $8AF324  BD 89 1C     MX
    LDX #$0009                      ; $8AF327  A2 09 00     MX
    LDY $00B2                       ; $8AF32A  AC B2 00     MX
    JSR L_8AD137                    ; $8AF32D  20 37 D1     MX
    PLA                             ; $8AF330  68           MX
    CLC                             ; $8AF331  18           MX
    ADC #$0008                      ; $8AF332  69 08 00     MX
    TAX                             ; $8AF335  AA           MX
    PHX                             ; $8AF336  DA           MX
    INC $00B2                       ; $8AF337  EE B2 00     MX
    LDA $00B2                       ; $8AF33A  AD B2 00     MX
    CMP #$0008                      ; $8AF33D  C9 08 00     MX
    BNE L_8AF322                    ; $8AF340  D0 E0        MX
    PLX                             ; $8AF342  FA           MX
    PLX                             ; $8AF343  FA           MX
    PHX                             ; $8AF344  DA           MX
    LDA $0BFF9B,X                   ; $8AF345  BF 9B FF 0B  MX
    STA $00A4                       ; $8AF349  8D A4 00     MX
    LDA $0BFFA3,X                   ; $8AF34C  BF A3 FF 0B  MX
    TAX                             ; $8AF350  AA           MX
    JSR L_8AF858                    ; $8AF351  20 58 F8     MX
    PLX                             ; $8AF354  FA           MX
    INX                             ; $8AF355  E8           MX
    INX                             ; $8AF356  E8           MX
    CPX #$0008                      ; $8AF357  E0 08 00     MX
    BNE L_8AF305                    ; $8AF35A  D0 A9        MX
    SEP #$30                        ; $8AF35C  E2 30        MX
    LDA #$00                        ; $8AF35E  A9 00        mx
    STA $2116                       ; $8AF360  8D 16 21     mx
    LDA #$50                        ; $8AF363  A9 50        mx
    STA $2117                       ; $8AF365  8D 17 21     mx
    LDA #$01                        ; $8AF368  A9 01        mx
    STA $4300                       ; $8AF36A  8D 00 43     mx
    LDA #$18                        ; $8AF36D  A9 18        mx
    STA $4301                       ; $8AF36F  8D 01 43     mx
    LDA #$40                        ; $8AF372  A9 40        mx
    STA $4302                       ; $8AF374  8D 02 43     mx
    LDA #$C7                        ; $8AF377  A9 C7        mx
    STA $4303                       ; $8AF379  8D 03 43     mx
    LDA #$7E                        ; $8AF37C  A9 7E        mx
    STA $4304                       ; $8AF37E  8D 04 43     mx
    LDA #$00                        ; $8AF381  A9 00        mx
    STA $4305                       ; $8AF383  8D 05 43     mx
    LDA #$1C                        ; $8AF386  A9 1C        mx
    STA $4306                       ; $8AF388  8D 06 43     mx
    LDA #$01                        ; $8AF38B  A9 01        mx
    STA $420B                       ; $8AF38D  8D 0B 42     mx
    LDA #$A0                        ; $8AF390  A9 A0        mx
    STA $2116                       ; $8AF392  8D 16 21     mx
    LDA #$3C                        ; $8AF395  A9 3C        mx
    STA $2117                       ; $8AF397  8D 17 21     mx
    LDA #$01                        ; $8AF39A  A9 01        mx
    STA $4300                       ; $8AF39C  8D 00 43     mx
    LDA #$18                        ; $8AF39F  A9 18        mx
    STA $4301                       ; $8AF3A1  8D 01 43     mx
    LDA #$00                        ; $8AF3A4  A9 00        mx
    STA $4302                       ; $8AF3A6  8D 02 43     mx
    LDA #$C3                        ; $8AF3A9  A9 C3        mx
    STA $4303                       ; $8AF3AB  8D 03 43     mx
    LDA #$7E                        ; $8AF3AE  A9 7E        mx
    STA $4304                       ; $8AF3B0  8D 04 43     mx
    LDA #$00                        ; $8AF3B3  A9 00        mx
    STA $4305                       ; $8AF3B5  8D 05 43     mx
    LDA #$02                        ; $8AF3B8  A9 02        mx
    STA $4306                       ; $8AF3BA  8D 06 43     mx
    LDA #$01                        ; $8AF3BD  A9 01        mx
    STA $420B                       ; $8AF3BF  8D 0B 42     mx
    LDA #$20                        ; $8AF3C2  A9 20        mx
    STA $2116                       ; $8AF3C4  8D 16 21     mx
    LDA #$3E                        ; $8AF3C7  A9 3E        mx
    STA $2117                       ; $8AF3C9  8D 17 21     mx
    LDA #$01                        ; $8AF3CC  A9 01        mx
    STA $4300                       ; $8AF3CE  8D 00 43     mx
    LDA #$18                        ; $8AF3D1  A9 18        mx
    STA $4301                       ; $8AF3D3  8D 01 43     mx
    LDA #$00                        ; $8AF3D6  A9 00        mx
    STA $4302                       ; $8AF3D8  8D 02 43     mx
    LDA #$C5                        ; $8AF3DB  A9 C5        mx
    STA $4303                       ; $8AF3DD  8D 03 43     mx
    LDA #$7E                        ; $8AF3E0  A9 7E        mx
    STA $4304                       ; $8AF3E2  8D 04 43     mx
    LDA #$00                        ; $8AF3E5  A9 00        mx
    STA $4305                       ; $8AF3E7  8D 05 43     mx
    LDA #$02                        ; $8AF3EA  A9 02        mx
    STA $4306                       ; $8AF3EC  8D 06 43     mx
    LDA #$01                        ; $8AF3EF  A9 01        mx
    STA $420B                       ; $8AF3F1  8D 0B 42     mx
    REP #$30                        ; $8AF3F4  C2 30        mx
    LDX #$00BE                      ; $8AF3F6  A2 BE 00     MX
L_8AF3F9:
    LDA $15D8C7,X                   ; $8AF3F9  BF C7 D8 15  MX
    STA $7EC300,X                   ; $8AF3FD  9F 00 C3 7E  MX
    DEX                             ; $8AF401  CA           MX
    DEX                             ; $8AF402  CA           MX
    BPL L_8AF3F9                    ; $8AF403  10 F4        MX
    LDA $1CD1                       ; $8AF405  AD D1 1C     MX
    PEA $007E                       ; $8AF408  F4 7E 00     MX
    PLB                             ; $8AF40B  AB           MX
    LDX #$0004                      ; $8AF40C  A2 04 00     MX
    CMP #$0000                      ; $8AF40F  C9 00 00     MX
    BEQ L_8AF417                    ; $8AF412  F0 03        MX
    LDX #$007A                      ; $8AF414  A2 7A 00     MX
L_8AF417:
    LDA #$0013                      ; $8AF417  A9 13 00     MX
    STA $00A4                       ; $8AF41A  8D A4 00     MX
L_8AF41D:
    LDA $0BFEA7,X                   ; $8AF41D  BF A7 FE 0B  MX
    STA $C300,Y                     ; $8AF421  99 00 C3     MX
    LDA $0BFECD,X                   ; $8AF424  BF CD FE 0B  MX
    STA $C340,Y                     ; $8AF428  99 40 C3     MX
    LDA $0BFEF3,X                   ; $8AF42B  BF F3 FE 0B  MX
    STA $C380,Y                     ; $8AF42F  99 80 C3     MX
    INY                             ; $8AF432  C8           MX
    INY                             ; $8AF433  C8           MX
    INX                             ; $8AF434  E8           MX
    INX                             ; $8AF435  E8           MX
    DEC $00A4                       ; $8AF436  CE A4 00     MX
    BNE L_8AF41D                    ; $8AF439  D0 E2        MX
    PLB                             ; $8AF43B  AB           MX
    SEP #$30                        ; $8AF43C  E2 30        MX
    LDA #$00                        ; $8AF43E  A9 00        mx
    STA $2116                       ; $8AF440  8D 16 21     mx
    LDA #$3C                        ; $8AF443  A9 3C        mx
    STA $2117                       ; $8AF445  8D 17 21     mx
    LDA #$01                        ; $8AF448  A9 01        mx
    STA $4300                       ; $8AF44A  8D 00 43     mx
    LDA #$18                        ; $8AF44D  A9 18        mx
    STA $4301                       ; $8AF44F  8D 01 43     mx
    LDA #$00                        ; $8AF452  A9 00        mx
    STA $4302                       ; $8AF454  8D 02 43     mx
    LDA #$C3                        ; $8AF457  A9 C3        mx
    STA $4303                       ; $8AF459  8D 03 43     mx
    LDA #$7E                        ; $8AF45C  A9 7E        mx
    STA $4304                       ; $8AF45E  8D 04 43     mx
    LDA #$C0                        ; $8AF461  A9 C0        mx
    STA $4305                       ; $8AF463  8D 05 43     mx
    LDA #$00                        ; $8AF466  A9 00        mx
    STA $4306                       ; $8AF468  8D 06 43     mx
    LDA #$01                        ; $8AF46B  A9 01        mx
    STA $420B                       ; $8AF46D  8D 0B 42     mx
    REP #$30                        ; $8AF470  C2 30        mx
    LDA #$2ACE                      ; $8AF472  A9 CE 2A     MX
    STA $00D1                       ; $8AF475  8D D1 00     MX
    LDA #$CEBF                      ; $8AF478  A9 BF CE     MX
    STA $00D0                       ; $8AF47B  8D D0 00     MX
    JSL $00E02F                     ; $8AF47E  22 2F E0 00  MX
    LDA #$29FF                      ; $8AF482  A9 FF 29     MX
    STA $00D1                       ; $8AF485  8D D1 00     MX
    LDA #$FF52                      ; $8AF488  A9 52 FF     MX
    STA $00D0                       ; $8AF48B  8D D0 00     MX
    JSL $00E02F                     ; $8AF48E  22 2F E0 00  MX
    LDA #$0000                      ; $8AF492  A9 00 00     MX
    STA $2116                       ; $8AF495  8D 16 21     MX
    LDA #$0064                      ; $8AF498  A9 64 00     MX
    STA $2117                       ; $8AF49B  8D 17 21     MX
    LDA #$0001                      ; $8AF49E  A9 01 00     MX
    STA $4300                       ; $8AF4A1  8D 00 43     MX
    LDA #$0018                      ; $8AF4A4  A9 18 00     MX
    STA $4301                       ; $8AF4A7  8D 01 43     MX
    LDA #$0055                      ; $8AF4AA  A9 55 00     MX
    STA $4302                       ; $8AF4AD  8D 02 43     MX
    LDA #$00EE                      ; $8AF4B0  A9 EE 00     MX
    STA $4303                       ; $8AF4B3  8D 03 43     MX
    LDA #$000E                      ; $8AF4B6  A9 0E 00     MX
    STA $4304                       ; $8AF4B9  8D 04 43     MX
    LDA #$0040                      ; $8AF4BC  A9 40 00     MX
    STA $4305                       ; $8AF4BF  8D 05 43     MX
    LDA #$0000                      ; $8AF4C2  A9 00 00     MX
    STA $4306                       ; $8AF4C5  8D 06 43     MX
    LDA #$0001                      ; $8AF4C8  A9 01 00     MX
    STA $420B                       ; $8AF4CB  8D 0B 42     MX
    LDA #$0000                      ; $8AF4CE  A9 00 00     MX
    STA $2116                       ; $8AF4D1  8D 16 21     MX
    LDA #$0065                      ; $8AF4D4  A9 65 00     MX
    STA $2117                       ; $8AF4D7  8D 17 21     MX
    LDA #$0001                      ; $8AF4DA  A9 01 00     MX
    STA $4300                       ; $8AF4DD  8D 00 43     MX
    LDA #$0018                      ; $8AF4E0  A9 18 00     MX
    STA $4301                       ; $8AF4E3  8D 01 43     MX
    LDA #$0095                      ; $8AF4E6  A9 95 00     MX
    STA $4302                       ; $8AF4E9  8D 02 43     MX
    LDA #$00EE                      ; $8AF4EC  A9 EE 00     MX
    STA $4303                       ; $8AF4EF  8D 03 43     MX
    LDA #$000E                      ; $8AF4F2  A9 0E 00     MX
    STA $4304                       ; $8AF4F5  8D 04 43     MX
    LDA #$0040                      ; $8AF4F8  A9 40 00     MX
    STA $4305                       ; $8AF4FB  8D 05 43     MX
    LDA #$0000                      ; $8AF4FE  A9 00 00     MX
    STA $4306                       ; $8AF501  8D 06 43     MX
    LDA #$0001                      ; $8AF504  A9 01 00     MX
    STA $420B                       ; $8AF507  8D 0B 42     MX
    LDA #$0020                      ; $8AF50A  A9 20 00     MX
    STA $2116                       ; $8AF50D  8D 16 21     MX
    LDA #$0064                      ; $8AF510  A9 64 00     MX
    STA $2117                       ; $8AF513  8D 17 21     MX
    LDA #$0001                      ; $8AF516  A9 01 00     MX
    STA $4300                       ; $8AF519  8D 00 43     MX
    LDA #$0018                      ; $8AF51C  A9 18 00     MX
    STA $4301                       ; $8AF51F  8D 01 43     MX
    LDA #$00D5                      ; $8AF522  A9 D5 00     MX
    STA $4302                       ; $8AF525  8D 02 43     MX
    LDA #$00EE                      ; $8AF528  A9 EE 00     MX
    STA $4303                       ; $8AF52B  8D 03 43     MX
    LDA #$000E                      ; $8AF52E  A9 0E 00     MX
    STA $4304                       ; $8AF531  8D 04 43     MX
    LDA #$0040                      ; $8AF534  A9 40 00     MX
    STA $4305                       ; $8AF537  8D 05 43     MX
    LDA #$0000                      ; $8AF53A  A9 00 00     MX
    STA $4306                       ; $8AF53D  8D 06 43     MX
    LDA #$0001                      ; $8AF540  A9 01 00     MX
    STA $420B                       ; $8AF543  8D 0B 42     MX
    LDA #$0020                      ; $8AF546  A9 20 00     MX
    STA $2116                       ; $8AF549  8D 16 21     MX
    LDA #$0065                      ; $8AF54C  A9 65 00     MX
    STA $2117                       ; $8AF54F  8D 17 21     MX
    LDA #$0001                      ; $8AF552  A9 01 00     MX
    STA $4300                       ; $8AF555  8D 00 43     MX
    LDA #$0018                      ; $8AF558  A9 18 00     MX
    STA $4301                       ; $8AF55B  8D 01 43     MX
    LDA #$0015                      ; $8AF55E  A9 15 00     MX
    STA $4302                       ; $8AF561  8D 02 43     MX
    LDA #$00EF                      ; $8AF564  A9 EF 00     MX
    STA $4303                       ; $8AF567  8D 03 43     MX
    LDA #$000E                      ; $8AF56A  A9 0E 00     MX
    STA $4304                       ; $8AF56D  8D 04 43     MX
    LDA #$0040                      ; $8AF570  A9 40 00     MX
    STA $4305                       ; $8AF573  8D 05 43     MX
    LDA #$0000                      ; $8AF576  A9 00 00     MX
    STA $4306                       ; $8AF579  8D 06 43     MX
    LDA #$0001                      ; $8AF57C  A9 01 00     MX
    STA $420B                       ; $8AF57F  8D 0B 42     MX
    LDA #$0040                      ; $8AF582  A9 40 00     MX
    STA $2116                       ; $8AF585  8D 16 21     MX
    LDA #$0064                      ; $8AF588  A9 64 00     MX
    STA $2117                       ; $8AF58B  8D 17 21     MX
    LDA #$0001                      ; $8AF58E  A9 01 00     MX
    STA $4300                       ; $8AF591  8D 00 43     MX
    LDA #$0018                      ; $8AF594  A9 18 00     MX
    STA $4301                       ; $8AF597  8D 01 43     MX
    LDA #$0069                      ; $8AF59A  A9 69 00     MX
    STA $4302                       ; $8AF59D  8D 02 43     MX
    LDA #$00EF                      ; $8AF5A0  A9 EF 00     MX
    STA $4303                       ; $8AF5A3  8D 03 43     MX
    LDA #$000E                      ; $8AF5A6  A9 0E 00     MX
    STA $4304                       ; $8AF5A9  8D 04 43     MX
    LDA #$0040                      ; $8AF5AC  A9 40 00     MX
    STA $4305                       ; $8AF5AF  8D 05 43     MX
    LDA #$0000                      ; $8AF5B2  A9 00 00     MX
    STA $4306                       ; $8AF5B5  8D 06 43     MX
    LDA #$0001                      ; $8AF5B8  A9 01 00     MX
    STA $420B                       ; $8AF5BB  8D 0B 42     MX
    LDA #$0040                      ; $8AF5BE  A9 40 00     MX
    STA $2116                       ; $8AF5C1  8D 16 21     MX
    LDA #$0065                      ; $8AF5C4  A9 65 00     MX
    STA $2117                       ; $8AF5C7  8D 17 21     MX
    LDA #$0001                      ; $8AF5CA  A9 01 00     MX
    STA $4300                       ; $8AF5CD  8D 00 43     MX
    LDA #$0018                      ; $8AF5D0  A9 18 00     MX
    STA $4301                       ; $8AF5D3  8D 01 43     MX
    LDA #$00A9                      ; $8AF5D6  A9 A9 00     MX
    STA $4302                       ; $8AF5D9  8D 02 43     MX
    LDA #$00EF                      ; $8AF5DC  A9 EF 00     MX
    STA $4303                       ; $8AF5DF  8D 03 43     MX
    LDA #$000E                      ; $8AF5E2  A9 0E 00     MX
    STA $4304                       ; $8AF5E5  8D 04 43     MX
    LDA #$0040                      ; $8AF5E8  A9 40 00     MX
    STA $4305                       ; $8AF5EB  8D 05 43     MX
    LDA #$0000                      ; $8AF5EE  A9 00 00     MX
    STA $4306                       ; $8AF5F1  8D 06 43     MX
    LDA #$0001                      ; $8AF5F4  A9 01 00     MX
    STA $420B                       ; $8AF5F7  8D 0B 42     MX
    LDA #$0060                      ; $8AF5FA  A9 60 00     MX
    STA $2116                       ; $8AF5FD  8D 16 21     MX
    LDA #$0064                      ; $8AF600  A9 64 00     MX
    STA $2117                       ; $8AF603  8D 17 21     MX
    LDA #$0001                      ; $8AF606  A9 01 00     MX
    STA $4300                       ; $8AF609  8D 00 43     MX
    LDA #$0018                      ; $8AF60C  A9 18 00     MX
    STA $4301                       ; $8AF60F  8D 01 43     MX
    LDA #$00E9                      ; $8AF612  A9 E9 00     MX
    STA $4302                       ; $8AF615  8D 02 43     MX
    LDA #$00EF                      ; $8AF618  A9 EF 00     MX
    STA $4303                       ; $8AF61B  8D 03 43     MX
    LDA #$000E                      ; $8AF61E  A9 0E 00     MX
    STA $4304                       ; $8AF621  8D 04 43     MX
    LDA #$0040                      ; $8AF624  A9 40 00     MX
    STA $4305                       ; $8AF627  8D 05 43     MX
    LDA #$0000                      ; $8AF62A  A9 00 00     MX
    STA $4306                       ; $8AF62D  8D 06 43     MX
    LDA #$0001                      ; $8AF630  A9 01 00     MX
    STA $420B                       ; $8AF633  8D 0B 42     MX
    LDA #$0060                      ; $8AF636  A9 60 00     MX
    STA $2116                       ; $8AF639  8D 16 21     MX
    LDA #$0065                      ; $8AF63C  A9 65 00     MX
    STA $2117                       ; $8AF63F  8D 17 21     MX
    LDA #$0001                      ; $8AF642  A9 01 00     MX
    STA $4300                       ; $8AF645  8D 00 43     MX
    LDA #$0018                      ; $8AF648  A9 18 00     MX
    STA $4301                       ; $8AF64B  8D 01 43     MX
    LDA #$0029                      ; $8AF64E  A9 29 00     MX
    STA $4302                       ; $8AF651  8D 02 43     MX
    LDA #$00F0                      ; $8AF654  A9 F0 00     MX
    STA $4303                       ; $8AF657  8D 03 43     MX
    LDA #$000E                      ; $8AF65A  A9 0E 00     MX
    STA $4304                       ; $8AF65D  8D 04 43     MX
    LDA #$0040                      ; $8AF660  A9 40 00     MX
    STA $4305                       ; $8AF663  8D 05 43     MX
    LDA #$0000                      ; $8AF666  A9 00 00     MX
    STA $4306                       ; $8AF669  8D 06 43     MX
    LDA #$0001                      ; $8AF66C  A9 01 00     MX
    STA $420B                       ; $8AF66F  8D 0B 42     MX
    LDA #$7860                      ; $8AF672  A9 60 78     MX
    STA $1CE1                       ; $8AF675  8D E1 1C     MX
    JSR L_8A9C75                    ; $8AF678  20 75 9C     MX
    LDA $1CD9                       ; $8AF67B  AD D9 1C     MX
    BPL L_8AF6B7                    ; $8AF67E  10 37        MX
    LDX #$0000                      ; $8AF680  A2 00 00     MX
    LDA $1683                       ; $8AF683  AD 83 16     MX
    BIT #$0040                      ; $8AF686  89 40 00     MX
    BEQ L_8AF68C                    ; $8AF689  F0 01        MX
    INX                             ; $8AF68B  E8           MX
L_8AF68C:
    AND #$001F                      ; $8AF68C  29 1F 00     MX
    STX $00A4                       ; $8AF68F  8E A4 00     MX
    ASL                             ; $8AF692  0A           MX
    ASL                             ; $8AF693  0A           MX
    ASL                             ; $8AF694  0A           MX
    TAX                             ; $8AF695  AA           MX
    LDA $0DAF75,X                   ; $8AF696  BF 75 AF 0D  MX
    AND #$00FF                      ; $8AF69A  29 FF 00     MX
    PHA                             ; $8AF69D  48           MX
    PLB                             ; $8AF69E  AB           MX
    LDA $0DAF6F,X                   ; $8AF69F  BF 6F AF 0D  MX
    LDX $00A4                       ; $8AF6A3  AE A4 00     MX
    BEQ L_8AF6AC                    ; $8AF6A6  F0 04        MX
    CLC                             ; $8AF6A8  18           MX
    ADC #$00C0                      ; $8AF6A9  69 C0 00     MX
L_8AF6AC:
    TAY                             ; $8AF6AC  A8           MX
    LDX #$0060                      ; $8AF6AD  A2 60 00     MX
    LDA #$7800                      ; $8AF6B0  A9 00 78     MX
    JSR L_8AF795                    ; $8AF6B3  20 95 F7     MX
    PLB                             ; $8AF6B6  AB           MX
L_8AF6B7:
    LDA $1CDB                       ; $8AF6B7  AD DB 1C     MX
    BPL L_8AF6F3                    ; $8AF6BA  10 37        MX
    LDX #$0001                      ; $8AF6BC  A2 01 00     MX
    LDA $1683                       ; $8AF6BF  AD 83 16     MX
    BIT #$0040                      ; $8AF6C2  89 40 00     MX
    BEQ L_8AF6C8                    ; $8AF6C5  F0 01        MX
    DEX                             ; $8AF6C7  CA           MX
L_8AF6C8:
    AND #$001F                      ; $8AF6C8  29 1F 00     MX
    STX $00A4                       ; $8AF6CB  8E A4 00     MX
    ASL                             ; $8AF6CE  0A           MX
    ASL                             ; $8AF6CF  0A           MX
    ASL                             ; $8AF6D0  0A           MX
    TAX                             ; $8AF6D1  AA           MX
    LDA $0DAF75,X                   ; $8AF6D2  BF 75 AF 0D  MX
    AND #$00FF                      ; $8AF6D6  29 FF 00     MX
    PHA                             ; $8AF6D9  48           MX
    PLB                             ; $8AF6DA  AB           MX
    LDA $0DAF6F,X                   ; $8AF6DB  BF 6F AF 0D  MX
    LDX $00A4                       ; $8AF6DF  AE A4 00     MX
    BEQ L_8AF6E8                    ; $8AF6E2  F0 04        MX
    CLC                             ; $8AF6E4  18           MX
    ADC #$00C0                      ; $8AF6E5  69 C0 00     MX
L_8AF6E8:
    TAY                             ; $8AF6E8  A8           MX
    LDX #$0060                      ; $8AF6E9  A2 60 00     MX
    LDA #$7860                      ; $8AF6EC  A9 60 78     MX
    JSR L_8AF795                    ; $8AF6EF  20 95 F7     MX
    PLB                             ; $8AF6F2  AB           MX
L_8AF6F3:
    LDA $1CDD                       ; $8AF6F3  AD DD 1C     MX
    BPL L_8AF72F                    ; $8AF6F6  10 37        MX
    LDX #$0000                      ; $8AF6F8  A2 00 00     MX
    LDA $1685                       ; $8AF6FB  AD 85 16     MX
    BIT #$0040                      ; $8AF6FE  89 40 00     MX
    BEQ L_8AF704                    ; $8AF701  F0 01        MX
    INX                             ; $8AF703  E8           MX
L_8AF704:
    AND #$001F                      ; $8AF704  29 1F 00     MX
    STX $00A4                       ; $8AF707  8E A4 00     MX
    ASL                             ; $8AF70A  0A           MX
    ASL                             ; $8AF70B  0A           MX
    ASL                             ; $8AF70C  0A           MX
    TAX                             ; $8AF70D  AA           MX
    LDA $0DAF75,X                   ; $8AF70E  BF 75 AF 0D  MX
    AND #$00FF                      ; $8AF712  29 FF 00     MX
    PHA                             ; $8AF715  48           MX
    PLB                             ; $8AF716  AB           MX
    LDA $0DAF6F,X                   ; $8AF717  BF 6F AF 0D  MX
    LDX $00A4                       ; $8AF71B  AE A4 00     MX
    BEQ L_8AF724                    ; $8AF71E  F0 04        MX
    CLC                             ; $8AF720  18           MX
    ADC #$00C0                      ; $8AF721  69 C0 00     MX
L_8AF724:
    TAY                             ; $8AF724  A8           MX
    LDX #$0060                      ; $8AF725  A2 60 00     MX
    LDA #$7C00                      ; $8AF728  A9 00 7C     MX
    JSR L_8AF795                    ; $8AF72B  20 95 F7     MX
    PLB                             ; $8AF72E  AB           MX
L_8AF72F:
    LDA $1CDF                       ; $8AF72F  AD DF 1C     MX
    BPL L_8AF76B                    ; $8AF732  10 37        MX
    LDX #$0001                      ; $8AF734  A2 01 00     MX
    LDA $1685                       ; $8AF737  AD 85 16     MX
    BIT #$0040                      ; $8AF73A  89 40 00     MX
    BEQ L_8AF740                    ; $8AF73D  F0 01        MX
    DEX                             ; $8AF73F  CA           MX
L_8AF740:
    AND #$001F                      ; $8AF740  29 1F 00     MX
    STX $00A4                       ; $8AF743  8E A4 00     MX
    ASL                             ; $8AF746  0A           MX
    ASL                             ; $8AF747  0A           MX
    ASL                             ; $8AF748  0A           MX
    TAX                             ; $8AF749  AA           MX
    LDA $0DAF75,X                   ; $8AF74A  BF 75 AF 0D  MX
    AND #$00FF                      ; $8AF74E  29 FF 00     MX
    PHA                             ; $8AF751  48           MX
    PLB                             ; $8AF752  AB           MX
    LDA $0DAF6F,X                   ; $8AF753  BF 6F AF 0D  MX
    LDX $00A4                       ; $8AF757  AE A4 00     MX
    BEQ L_8AF760                    ; $8AF75A  F0 04        MX
    CLC                             ; $8AF75C  18           MX
    ADC #$00C0                      ; $8AF75D  69 C0 00     MX
L_8AF760:
    TAY                             ; $8AF760  A8           MX
    LDX #$0060                      ; $8AF761  A2 60 00     MX
    LDA #$7C60                      ; $8AF764  A9 60 7C     MX
    JSR L_8AF795                    ; $8AF767  20 95 F7     MX
    PLB                             ; $8AF76A  AB           MX
L_8AF76B:
    STZ $00B2                       ; $8AF76B  9C B2 00     MX
    LDA #$04BA                      ; $8AF76E  A9 BA 04     MX
    STA $00B0                       ; $8AF771  8D B0 00     MX
    SEP #$20                        ; $8AF774  E2 20        MX
    LDA #$0A                        ; $8AF776  A9 0A        mX
    STA $4344                       ; $8AF778  8D 44 43     mX
    LDA #$03                        ; $8AF77B  A9 03        mX
    STA $4340                       ; $8AF77D  8D 40 43     mX
    LDA #$21                        ; $8AF780  A9 21        mX
    STA $4341                       ; $8AF782  8D 41 43     mX
    REP #$20                        ; $8AF785  C2 20        mX
    LDA #$FA08                      ; $8AF787  A9 08 FA     MX
    STA $4342                       ; $8AF78A  8D 42 43     MX
    LDA #$0027                      ; $8AF78D  A9 27 00     MX
    STA $001665                     ; $8AF790  8F 65 16 00  MX
    RTS                             ; $8AF794  60           MX
L_8AF795:
    PHA                             ; $8AF795  48           MX
    PHX                             ; $8AF796  DA           MX
    STA $2116                       ; $8AF797  8D 16 21     MX
L_8AF79A:
    LDA $0000,Y                     ; $8AF79A  B9 00 00     MX
    STA $2118                       ; $8AF79D  8D 18 21     MX
    INY                             ; $8AF7A0  C8           MX
    INY                             ; $8AF7A1  C8           MX
    DEX                             ; $8AF7A2  CA           MX
    BNE L_8AF79A                    ; $8AF7A3  D0 F5        MX
    TYA                             ; $8AF7A5  98           MX
    CLC                             ; $8AF7A6  18           MX
    ADC #$00C0                      ; $8AF7A7  69 C0 00     MX
    TAY                             ; $8AF7AA  A8           MX
    PLX                             ; $8AF7AB  FA           MX
    PLA                             ; $8AF7AC  68           MX
    CLC                             ; $8AF7AD  18           MX
    ADC #$0100                      ; $8AF7AE  69 00 01     MX
    STA $2116                       ; $8AF7B1  8D 16 21     MX
L_8AF7B4:
    LDA $0000,Y                     ; $8AF7B4  B9 00 00     MX
    STA $2118                       ; $8AF7B7  8D 18 21     MX
    INY                             ; $8AF7BA  C8           MX
    INY                             ; $8AF7BB  C8           MX
    DEX                             ; $8AF7BC  CA           MX
    BNE L_8AF7B4                    ; $8AF7BD  D0 F5        MX
    RTS                             ; $8AF7BF  60           MX
L_8AF7C0:
    SEP #$20                        ; $8AF7C0  E2 20        MX
    LDA #$10                        ; $8AF7C2  A9 10        mX
    STA $420C                       ; $8AF7C4  8D 0C 42     mX
    LDA $00B2                       ; $8AF7C7  AD B2 00     mX
    CMP #$10                        ; $8AF7CA  C9 10        mX
    BEQ L_8AF7D4                    ; $8AF7CC  F0 06        mX
    STA $2100                       ; $8AF7CE  8D 00 21     mX
    INC $00B2                       ; $8AF7D1  EE B2 00     mX
L_8AF7D4:
    REP #$20                        ; $8AF7D4  C2 20        mX
    LDA $00B2                       ; $8AF7D6  AD B2 00     MX
    AND #$00FF                      ; $8AF7D9  29 FF 00     MX
    CMP #$0010                      ; $8AF7DC  C9 10 00     MX
    BNE L_8AF7F9                    ; $8AF7DF  D0 18        MX
    LDA $1669                       ; $8AF7E1  AD 69 16     MX
    ORA $166B                       ; $8AF7E4  0D 6B 16     MX
    ORA $166D                       ; $8AF7E7  0D 6D 16     MX
    ORA $166F                       ; $8AF7EA  0D 6F 16     MX
    BIT #$C0C0                      ; $8AF7ED  89 C0 C0     MX
    BEQ L_8AF7F9                    ; $8AF7F0  F0 07        MX
    LDA #$0028                      ; $8AF7F2  A9 28 00     MX
    STA $001665                     ; $8AF7F5  8F 65 16 00  MX
L_8AF7F9:
    LDX #$0000                      ; $8AF7F9  A2 00 00     MX
L_8AF7FC:
    PHX                             ; $8AF7FC  DA           MX
    JSR L_8AF883                    ; $8AF7FD  20 83 F8     MX
    JSR L_8AF8F0                    ; $8AF800  20 F0 F8     MX
    PLX                             ; $8AF803  FA           MX
    INX                             ; $8AF804  E8           MX
    INX                             ; $8AF805  E8           MX
    CPX #$0008                      ; $8AF806  E0 08 00     MX
    BNE L_8AF7FC                    ; $8AF809  D0 F1        MX
    JSR L_8AF94F                    ; $8AF80B  20 4F F9     MX
    RTS                             ; $8AF80E  60           MX
L_8AF80F:
    SEP #$20                        ; $8AF80F  E2 20        MX
    DEC $00B2                       ; $8AF811  CE B2 00     mX
    LDA $00B2                       ; $8AF814  AD B2 00     mX
    CMP #$FF                        ; $8AF817  C9 FF        mX
    BNE L_8AF827                    ; $8AF819  D0 0C        mX
    LDA #$00                        ; $8AF81B  A9 00        mX
    STA $420C                       ; $8AF81D  8D 0C 42     mX
    LDA #$80                        ; $8AF820  A9 80        mX
    TSB $1666                       ; $8AF822  0C 66 16     mX
    LDA #$00                        ; $8AF825  A9 00        mX
L_8AF827:
    STA $2100                       ; $8AF827  8D 00 21     mX
    REP #$20                        ; $8AF82A  C2 20        mX
    LDX #$0000                      ; $8AF82C  A2 00 00     MX
L_8AF82F:
    PHX                             ; $8AF82F  DA           MX
    JSR L_8AF883                    ; $8AF830  20 83 F8     MX
    JSR L_8AF8F0                    ; $8AF833  20 F0 F8     MX
    PLX                             ; $8AF836  FA           MX
    INX                             ; $8AF837  E8           MX
    INX                             ; $8AF838  E8           MX
    CPX #$0008                      ; $8AF839  E0 08 00     MX
    BNE L_8AF82F                    ; $8AF83C  D0 F1        MX
    JSR L_8AF94F                    ; $8AF83E  20 4F F9     MX
    RTS                             ; $8AF841  60           MX
L_8AF842:
    STA $1C00                       ; $8AF842  8D 00 1C     MX
    PHX                             ; $8AF845  DA           MX
    TAX                             ; $8AF846  AA           MX
    LDY #$0380                      ; $8AF847  A0 80 03     MX
    LDA #$0000                      ; $8AF84A  A9 00 00     MX
L_8AF84D:
    STA $7EC740,X                   ; $8AF84D  9F 40 C7 7E  MX
    INX                             ; $8AF851  E8           MX
    INX                             ; $8AF852  E8           MX
    DEY                             ; $8AF853  88           MX
    BNE L_8AF84D                    ; $8AF854  D0 F7        MX
    PLX                             ; $8AF856  FA           MX
    RTS                             ; $8AF857  60           MX
L_8AF858:
    LDA #$0008                      ; $8AF858  A9 08 00     MX
    STA $00A6                       ; $8AF85B  8D A6 00     MX
L_8AF85E:
    LDY #$0000                      ; $8AF85E  A0 00 00     MX
L_8AF861:
    LDA $00A4                       ; $8AF861  AD A4 00     MX
    ORA #$2800                      ; $8AF864  09 00 28     MX
    STA $7EC302,X                   ; $8AF867  9F 02 C3 7E  MX
    INC $00A4                       ; $8AF86B  EE A4 00     MX
    INX                             ; $8AF86E  E8           MX
    INX                             ; $8AF86F  E8           MX
    INY                             ; $8AF870  C8           MX
    INY                             ; $8AF871  C8           MX
    CPY #$000E                      ; $8AF872  C0 0E 00     MX
    BNE L_8AF861                    ; $8AF875  D0 EA        MX
    TXA                             ; $8AF877  8A           MX
    CLC                             ; $8AF878  18           MX
    ADC #$0032                      ; $8AF879  69 32 00     MX
    TAX                             ; $8AF87C  AA           MX
    DEC $00A6                       ; $8AF87D  CE A6 00     MX
    BNE L_8AF85E                    ; $8AF880  D0 DC        MX
    RTS                             ; $8AF882  60           MX
L_8AF883:
    LDA $0BFDED,X                   ; $8AF883  BF ED FD 0B  MX
    STA $00A4                       ; $8AF887  8D A4 00     MX
    LDA $0D9BCF,X                   ; $8AF88A  BF CF 9B 0D  MX
    STA $00A6                       ; $8AF88E  8D A6 00     MX
    LDY #$0000                      ; $8AF891  A0 00 00     MX
    LDA $16CC,X                     ; $8AF894  BD CC 16     MX  initial1
    BMI L_8AF8B2                    ; $8AF897  30 19        MX
    JSR L_8AF8B3                    ; $8AF899  20 B3 F8     MX
    LDY #$0002                      ; $8AF89C  A0 02 00     MX
    LDA $16D4,X                     ; $8AF89F  BD D4 16     MX
    BMI L_8AF8B2                    ; $8AF8A2  30 0E        MX
    JSR L_8AF8B3                    ; $8AF8A4  20 B3 F8     MX
    LDY #$0004                      ; $8AF8A7  A0 04 00     MX
    LDA $16DC,X                     ; $8AF8AA  BD DC 16     MX
    BMI L_8AF8B2                    ; $8AF8AD  30 03        MX
    JSR L_8AF8B3                    ; $8AF8AF  20 B3 F8     MX
L_8AF8B2:
    RTS                             ; $8AF8B2  60           MX
L_8AF8B3:
    AND #$003F                      ; $8AF8B3  29 3F 00     MX
    ASL                             ; $8AF8B6  0A           MX
    PHX                             ; $8AF8B7  DA           MX
    TAX                             ; $8AF8B8  AA           MX
    LDA $0BFE35,X                   ; $8AF8B9  BF 35 FE 0B  MX
    STA $0020                       ; $8AF8BD  8D 20 00     MX
    TYX                             ; $8AF8C0  BB           MX
    LDA $0D9AAC,X                   ; $8AF8C1  BF AC 9A 0D  MX
    CLC                             ; $8AF8C5  18           MX
    ADC $00A4                       ; $8AF8C6  6D A4 00     MX
    STA $0024                       ; $8AF8C9  8D 24 00     MX
    LDA $00A6                       ; $8AF8CC  AD A6 00     MX
    CLC                             ; $8AF8CF  18           MX
    ADC #$000E                      ; $8AF8D0  69 0E 00     MX
    STA $0026                       ; $8AF8D3  8D 26 00     MX
    LDA #$0000                      ; $8AF8D6  A9 00 00     MX
    STA $002C                       ; $8AF8D9  8D 2C 00     MX
    SEP #$20                        ; $8AF8DC  E2 20        MX
    LDA #$0E                        ; $8AF8DE  A9 0E        mX
    STA $0022                       ; $8AF8E0  8D 22 00     mX
    LDA #$2C                        ; $8AF8E3  A9 2C        mX
    STA $0028                       ; $8AF8E5  8D 28 00     mX
    REP #$20                        ; $8AF8E8  C2 20        mX
    JSL $2BE2EA                     ; $8AF8EA  22 EA E2 2B  MX
    PLX                             ; $8AF8EE  FA           MX
    RTS                             ; $8AF8EF  60           MX
L_8AF8F0:
    LDA $0BFDED,X                   ; $8AF8F0  BF ED FD 0B  MX
    SEC                             ; $8AF8F4  38           MX
    SBC #$0006                      ; $8AF8F5  E9 06 00     MX
    STA $00A4                       ; $8AF8F8  8D A4 00     MX
    LDA $0D9BCF,X                   ; $8AF8FB  BF CF 9B 0D  MX
    SEC                             ; $8AF8FF  38           MX
    SBC #$0006                      ; $8AF900  E9 06 00     MX
    STA $00A6                       ; $8AF903  8D A6 00     MX
    LDA $0AF9EC,X                   ; $8AF906  BF EC F9 0A  MX
    STA $00F2                       ; $8AF90A  8D F2 00     MX
    LDA $00A4                       ; $8AF90D  AD A4 00     MX
    STA $00EE                       ; $8AF910  8D EE 00     MX
    LDA $00A6                       ; $8AF913  AD A6 00     MX
    STA $00F0                       ; $8AF916  8D F0 00     MX
    SEP #$20                        ; $8AF919  E2 20        MX
    LDA #$2C                        ; $8AF91B  A9 2C        mX
    STA $002A                       ; $8AF91D  8D 2A 00     mX
    REP #$20                        ; $8AF920  C2 20        mX
    JSL $2BE007                     ; $8AF922  22 07 E0 2B  MX
    INC $00F2                       ; $8AF926  EE F2 00     MX
    INC $00F2                       ; $8AF929  EE F2 00     MX
    LDA $00EE                       ; $8AF92C  AD EE 00     MX
    CLC                             ; $8AF92F  18           MX
    ADC #$000C                      ; $8AF930  69 0C 00     MX
    STA $00EE                       ; $8AF933  8D EE 00     MX
    JSL $2BE007                     ; $8AF936  22 07 E0 2B  MX
    INC $00F2                       ; $8AF93A  EE F2 00     MX
    INC $00F2                       ; $8AF93D  EE F2 00     MX
    LDA $00EE                       ; $8AF940  AD EE 00     MX
    CLC                             ; $8AF943  18           MX
    ADC #$000C                      ; $8AF944  69 0C 00     MX
    STA $00EE                       ; $8AF947  8D EE 00     MX
    JSL $2BE007                     ; $8AF94A  22 07 E0 2B  MX
    RTS                             ; $8AF94E  60           MX
L_8AF94F:
    LDY #$0000                      ; $8AF94F  A0 00 00     MX
    LDA #$0000                      ; $8AF952  A9 00 00     MX
    JSR L_8AF962                    ; $8AF955  20 62 F9     MX
    LDY #$0006                      ; $8AF958  A0 06 00     MX
    LDA #$00D0                      ; $8AF95B  A9 D0 00     MX
    JSR L_8AF962                    ; $8AF95E  20 62 F9     MX
    RTS                             ; $8AF961  60           MX
L_8AF962:
    STA $00EE                       ; $8AF962  8D EE 00     MX
    LDA #$0004                      ; $8AF965  A9 04 00     MX
    STA $00F0                       ; $8AF968  8D F0 00     MX
    SEP #$20                        ; $8AF96B  E2 20        MX
    LDA #$2C                        ; $8AF96D  A9 2C        mX
    STA $002A                       ; $8AF96F  8D 2A 00     mX
    REP #$20                        ; $8AF972  C2 20        mX
    STZ $00A4                       ; $8AF974  9C A4 00     MX
    DEC $00A4                       ; $8AF977  CE A4 00     MX
    LDA $0CB5,Y                     ; $8AF97A  B9 B5 0C     MX
    BNE L_8AF984                    ; $8AF97D  D0 05        MX
    LDA $00A4                       ; $8AF97F  AD A4 00     MX
    BMI L_8AF98C                    ; $8AF982  30 08        MX
L_8AF984:
    STZ $00A4                       ; $8AF984  9C A4 00     MX
    ASL                             ; $8AF987  0A           MX
    TAX                             ; $8AF988  AA           MX
    JSR L_8AF9BB                    ; $8AF989  20 BB F9     MX
L_8AF98C:
    LDA #$0007                      ; $8AF98C  A9 07 00     MX
    CLC                             ; $8AF98F  18           MX
    ADC $00EE                       ; $8AF990  6D EE 00     MX
    STA $00EE                       ; $8AF993  8D EE 00     MX
    LDA $0CB7,Y                     ; $8AF996  B9 B7 0C     MX
    BNE L_8AF9A0                    ; $8AF999  D0 05        MX
    LDA $00A4                       ; $8AF99B  AD A4 00     MX
    BMI L_8AF9A8                    ; $8AF99E  30 08        MX
L_8AF9A0:
    STZ $00A4                       ; $8AF9A0  9C A4 00     MX
    ASL                             ; $8AF9A3  0A           MX
    TAX                             ; $8AF9A4  AA           MX
    JSR L_8AF9BB                    ; $8AF9A5  20 BB F9     MX
L_8AF9A8:
    LDA #$0007                      ; $8AF9A8  A9 07 00     MX
    CLC                             ; $8AF9AB  18           MX
    ADC $00EE                       ; $8AF9AC  6D EE 00     MX
    STA $00EE                       ; $8AF9AF  8D EE 00     MX
    LDA $0CB9,Y                     ; $8AF9B2  B9 B9 0C     MX
    ASL                             ; $8AF9B5  0A           MX
    TAX                             ; $8AF9B6  AA           MX
    JSR L_8AF9BB                    ; $8AF9B7  20 BB F9     MX
    RTS                             ; $8AF9BA  60           MX
L_8AF9BB:
    LDA $0AF9F4,X                   ; $8AF9BB  BF F4 F9 0A  MX
    STA $00F2                       ; $8AF9BF  8D F2 00     MX
    PHY                             ; $8AF9C2  5A           MX
    JSL $2BE007                     ; $8AF9C3  22 07 E0 2B  MX
    INC $00F2                       ; $8AF9C7  EE F2 00     MX
    INC $00F2                       ; $8AF9CA  EE F2 00     MX
    LDA $00F0                       ; $8AF9CD  AD F0 00     MX
    PHA                             ; $8AF9D0  48           MX
    CLC                             ; $8AF9D1  18           MX
    ADC #$0010                      ; $8AF9D2  69 10 00     MX
    STA $00F0                       ; $8AF9D5  8D F0 00     MX
    LDA $00EE                       ; $8AF9D8  AD EE 00     MX
    SEC                             ; $8AF9DB  38           MX
    SBC #$0004                      ; $8AF9DC  E9 04 00     MX
    STA $00EE                       ; $8AF9DF  8D EE 00     MX
    JSL $2BE007                     ; $8AF9E2  22 07 E0 2B  MX
    PLA                             ; $8AF9E6  68           MX
    STA $00F0                       ; $8AF9E7  8D F0 00     MX
    PLY                             ; $8AF9EA  7A           MX
    RTS                             ; $8AF9EB  60           MX
    db $80,$01,$86,$01,$C0,$01,$C6,$01,$00,$00,$04,$00,$08,$00,$0C,$00 ; $8AF9EC
    db $20,$00,$24,$00,$28,$00,$2C,$00,$40,$00,$44,$00,$01,$E2,$E2,$FF ; $8AF9FC
    db $0F,$3F,$E4,$E4,$00,$00,$01,$E2,$E2,$00,$00,$01,$E4,$E4,$73,$01 ; $8AFA0C
    db $00,$E2,$30,$A9,$8F,$8D,$00,$21,$A9,$80,$8D,$15,$21,$C2,$30,$A9 ; $8AFA1C
    db $00,$00,$8D,$16,$21,$A2,$00,$80,$A9,$00,$00,$8D,$18,$21,$CA,$D0 ; $8AFA2C
    db $FA,$F4,$13,$00,$AB,$A2,$00,$00,$A0,$00,$00,$A9,$20,$00,$8D,$A4 ; $8AFA3C
    db $00,$B9,$58,$EF,$1A,$9F,$00,$CA,$7E,$C8,$C8,$E8,$E8,$CE,$A4,$00 ; $8AFA4C
    db $D0,$EF,$98,$18,$69,$10,$00,$A8,$E0,$00,$07,$D0,$DE,$AB,$A9,$00 ; $8AFA5C
    db $00,$8D,$16,$21,$A9,$40,$00,$8D,$17,$21,$A9,$01,$00,$8D,$00,$43 ; $8AFA6C
    db $A9,$18,$00,$8D,$01,$43,$A9,$00,$00,$8D,$02,$43,$A9,$CA,$00,$8D ; $8AFA7C
    db $03,$43,$A9,$7E,$00,$8D,$04,$43,$A9,$00,$00,$8D,$05,$43,$A9,$07 ; $8AFA8C
    db $00,$8D,$06,$43,$A9,$01,$00,$8D,$0B,$42,$A9,$00,$80,$8D,$D0,$00 ; $8AFA9C
    db $A9,$80,$2A,$8D,$D1,$00,$A9,$00,$00,$8D,$D3,$00,$A9,$00,$7F,$8D ; $8AFAAC
    db $D4,$00,$22,$F0,$F3,$29,$E2,$30,$A9,$20,$8D,$16,$21,$A9,$00,$8D ; $8AFABC
    db $17,$21,$A9,$01,$8D,$00,$43,$A9,$18,$8D,$01,$43,$A9,$00,$8D,$02 ; $8AFACC
    db $43,$A9,$00,$8D,$03,$43,$A9,$7F,$8D,$04,$43,$A9,$C0,$8D,$05,$43 ; $8AFADC
    db $A9,$61,$8D,$06,$43,$A9,$01,$8D,$0B,$42,$A9,$85,$8D,$D0,$00,$A9 ; $8AFAEC
    db $FF,$8D,$D1,$00,$A9,$29,$8D,$D2,$00,$A2,$10,$A9,$00,$22,$53,$8B ; $8AFAFC
    db $80,$A9,$FD,$8D,$D0,$00,$A9,$B8,$8D,$D1,$00,$A9,$2A,$8D,$D2,$00 ; $8AFB0C
    db $A2,$70,$A9,$90,$22,$53,$8B,$80,$A9,$00,$8D,$D0,$00,$A9,$80,$8D ; $8AFB1C
    db $D1,$00,$A9,$16,$8D,$D2,$00,$A2,$10,$A9,$30,$22,$53,$8B,$80,$A9 ; $8AFB2C
    db $A0,$8D,$D0,$00,$A9,$8D,$8D,$D1,$00,$A9,$29,$8D,$D2,$00,$A2,$10 ; $8AFB3C
    db $A9,$40,$22,$53,$8B,$80,$C2,$30,$A9,$20,$80,$8D,$D0,$00,$A9,$80 ; $8AFB4C
    db $16,$8D,$D1,$00,$A9,$00,$00,$8D,$D3,$00,$A9,$00,$7F,$8D,$D4,$00 ; $8AFB5C
    db $22,$F0,$F3,$29,$A2,$FE,$06,$A9,$00,$00,$9F,$00,$C3,$7E,$CA,$CA ; $8AFB6C
    db $10,$F8,$E2,$20,$A9,$FF,$8D,$0E,$21,$8D,$0E,$21,$A9,$00,$8D,$0D ; $8AFB7C
    db $21,$8D,$0D,$21,$A9,$FF,$8D,$10,$21,$8D,$10,$21,$A9,$00,$8D,$0F ; $8AFB8C
    db $21,$8D,$0F,$21,$A9,$03,$8D,$2C,$21,$A9,$03,$8D,$05,$21,$A9,$40 ; $8AFB9C
    db $8D,$07,$21,$A9,$3C,$8D,$08,$21,$A9,$00,$8D,$0B,$21,$9C,$B2,$00 ; $8AFBAC
    db $C2,$20,$E2,$10,$20,$63,$FD,$C2,$10,$A9,$0A,$00,$8D,$67,$16,$A9 ; $8AFBBC
    db $FF,$FF,$8D,$77,$16,$A9,$2A,$00,$8F,$65,$16,$00,$60,$E2,$20,$A9 ; $8AFBCC
    db $80,$8D,$0C,$42,$AD,$B2,$00,$C9,$10,$F0,$06,$8D,$00,$21,$EE,$B2 ; $8AFBDC
    db $00,$C2,$20,$20,$9D,$FC,$AD,$AC,$00,$C9,$02,$00,$90,$17,$AD,$69 ; $8AFBEC
    db $16,$0D,$6B,$16,$0D,$6D,$16,$0D,$6F,$16,$89,$C0,$C0,$F0,$06,$A9 ; $8AFBFC
    db $2B,$00,$8D,$65,$16,$60,$E2,$20,$CE,$B2,$00,$AD,$B2,$00,$C9,$FF ; $8AFC0C
    db $D0,$11,$E2,$20,$9C,$0C,$42,$C2,$20,$A9,$24,$00,$8F,$65,$16,$00 ; $8AFC1C
    db $A9,$00,$00,$8D,$00,$21,$C2,$20,$60,$DA,$8D,$A4,$00,$29,$FF,$03 ; $8AFC2C
    db $8D,$AE,$00,$A9,$08,$00,$8D,$A6,$00,$A0,$09,$00,$AD,$A4,$00,$09 ; $8AFC3C
    db $00,$20,$9F,$00,$C3,$7E,$EE,$A4,$00,$E8,$E8,$88,$D0,$EE,$8A,$18 ; $8AFC4C
    db $69,$2E,$00,$AA,$CE,$A6,$00,$D0,$E0,$FA,$60,$A9,$08,$00,$8D,$AA ; $8AFC5C
    db $00,$AD,$AC,$00,$C9,$10,$00,$D0,$01,$60,$AD,$B0,$00,$8D,$89,$16 ; $8AFC6C
    db $AD,$AE,$00,$0A,$0A,$0A,$0A,$8D,$87,$16,$A9,$0B,$00,$8D,$67,$16 ; $8AFC7C
    db $AD,$B0,$00,$18,$69,$00,$09,$8D,$B0,$00,$EE,$AC,$00,$A9,$01,$00 ; $8AFC8C
    db $60,$AD,$77,$16,$C9,$1E,$00,$B0,$01,$60,$D0,$1F,$A9,$00,$00,$8D ; $8AFC9C
    db $B0,$00,$9C,$AC,$00,$A9,$05,$00,$8D,$AA,$00,$A9,$10,$03,$09,$00 ; $8AFCAC
    db $0C,$A2,$4C,$01,$20,$35,$FC,$20,$39,$FD,$60,$89,$00,$40,$D0,$4C ; $8AFCBC
    db $CE,$AA,$00,$10,$05,$20,$67,$FC,$F0,$01,$60,$A9,$00,$40,$0C,$77 ; $8AFCCC
    db $16,$A9,$C0,$8D,$8D,$D0,$00,$A9,$8D,$29,$8D,$D1,$00,$A9,$00,$00 ; $8AFCDC
    db $8D,$D3,$00,$A9,$00,$7F,$8D,$D4,$00,$22,$F0,$F3,$29,$A9,$00,$00 ; $8AFCEC
    db $8D,$B0,$00,$9C,$AC,$00,$A9,$05,$00,$8D,$AA,$00,$A9,$60,$03,$09 ; $8AFCFC
    db $00,$10,$A2,$E2,$03,$20,$35,$FC,$20,$39,$FD,$60,$30,$12,$CE,$AA ; $8AFD0C
    db $00,$10,$05,$20,$67,$FC,$F0,$01,$60,$A9,$00,$80,$0C,$77,$16,$60 ; $8AFD1C
    db $C9,$20,$C2,$B0,$01,$60,$A9,$2B,$00,$8D,$65,$16,$60,$A9,$08,$00 ; $8AFD2C
    db $8D,$A6,$00,$A0,$09,$00,$A9,$00,$00,$9F,$00,$CA,$7E,$EE,$A4,$00 ; $8AFD3C
    db $E8,$E8,$88,$D0,$F1,$8A,$18,$69,$2E,$00,$AA,$CE,$A6,$00,$D0,$E3 ; $8AFD4C
    db $A9,$0A,$00,$8D,$67,$16,$60,$A2,$03,$8E,$70,$43,$A2,$21,$8E,$71 ; $8AFD5C
    db $43,$A2,$82,$8E,$72,$43,$A2,$FD,$8E,$73,$43,$A2,$0A,$8E,$74,$43 ; $8AFD6C
    db $A2,$0A,$8E,$77,$43,$60,$77,$00,$00,$4E,$25,$7F,$00,$00,$00,$00 ; $8AFD7C
    db $00,$A2,$16,$00,$A9,$00,$00,$9D,$F9,$1C,$CA,$CA,$10,$F9,$60,$A2 ; $8AFD8C
    db $00,$00,$BD,$08,$00,$29,$C0,$C0,$F0,$0E,$BD,$F9,$1C,$30,$12,$09 ; $8AFD9C
    db $00,$80,$1A,$9D,$F9,$1C,$80,$09,$BD,$F9,$1C,$29,$FF,$7F,$9D,$F9 ; $8AFDAC
    db $1C,$E8,$E8,$E0,$08,$00,$D0,$DA,$60,$A9,$00,$80,$1C,$F9,$1C,$1C ; $8AFDBC
    db $FB,$1C,$1C,$FD,$1C,$1C,$FF,$1C,$A2,$00,$00,$BD,$08,$00,$9D,$09 ; $8AFDCC
    db $1D,$E8,$E8,$E0,$08,$00,$D0,$F3,$9C,$C6,$0A,$A2,$26,$00,$9E,$C8 ; $8AFDDC
    db $0A,$CA,$CA,$10,$F9,$A2,$00,$00,$BD,$F9,$1C,$C9,$05,$00,$D0,$06 ; $8AFDEC
    db $A9,$01,$00,$9D,$D0,$0A,$BD,$F9,$1C,$C9,$0F,$00,$90,$11,$BD,$01 ; $8AFDFC
    db $1D,$29,$FF,$00,$C9,$FF,$00,$D0,$06,$A9,$01,$00,$9D,$C8,$0A,$BD ; $8AFE0C
    db $F9,$1C,$C9,$02,$00,$D0,$0E,$BD,$09,$1D,$C9,$80,$84,$D0,$06,$A9 ; $8AFE1C
    db $01,$00,$8D,$C6,$0A,$BD,$F9,$1C,$C9,$0D,$00,$D0,$11,$BD,$01,$1D ; $8AFE2C
    db $29,$FF,$00,$C9,$FF,$00,$D0,$06,$A9,$01,$00,$9D,$E8,$0A,$BD,$F9 ; $8AFE3C
    db $1C,$C9,$08,$00,$D0,$0E,$BD,$09,$1D,$C9,$00,$C8,$D0,$06,$A9,$01 ; $8AFE4C
    db $00,$9D,$E0,$0A,$BD,$F9,$1C,$C9,$06,$00,$90,$0E,$BD,$09,$1D,$C9 ; $8AFE5C
    db $80,$C0,$D0,$06,$A9,$01,$00,$9D,$D8,$0A,$BD,$F9,$1C,$C9,$0E,$00 ; $8AFE6C
    db $D0,$0E,$BD,$09,$1D,$C9,$40,$80,$D0,$06,$A9,$01,$00,$8D,$F0,$0A ; $8AFE7C
    db $E8,$E8,$E0,$08,$00,$F0,$03,$4C,$F4,$FD,$AD,$F0,$0A,$F0,$10,$AD ; $8AFE8C
    db $39,$1D,$F0,$05,$9C,$39,$1D,$80,$06,$A9,$02,$00,$8D,$39,$1D,$AD ; $8AFE9C
    db $39,$1D,$8D,$F0,$0A,$60,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFEAC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFEBC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFECC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFEDC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFEEC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFEFC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF0C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF1C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF2C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF3C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF4C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF5C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF6C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF7C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF8C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFF9C
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFFAC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFFBC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFFCC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFFDC
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $8AFFEC
    db $FF,$00,$00,$FF                                                 ; $8AFFFC
