; bank $9A  (file offset $0D0000)
org $9A8000

L_9A8000:
    PHB                             ; $9A8000  8B           Mx
    PHK                             ; $9A8001  4B           Mx
    PLB                             ; $9A8002  AB           Mx
    LDA $15F9                       ; $9A8003  AD F9 15     Mx
    BEQ L_9A801F                    ; $9A8006  F0 17        Mx
    LDA $15FB                       ; $9A8008  AD FB 15     Mx
    BNE L_9A801C                    ; $9A800B  D0 0F        Mx
    LDA $15F9                       ; $9A800D  AD F9 15     Mx
    JSL L_9ABBD5                    ; $9A8010  22 D5 BB 9A  Mx
    STZ $15F9                       ; $9A8014  9C F9 15     Mx
    STZ $15FB                       ; $9A8017  9C FB 15     Mx
    BRA L_9A801F                    ; $9A801A  80 03        Mx
L_9A801C:
    DEC $15FB                       ; $9A801C  CE FB 15     Mx
L_9A801F:
    LDA $1603                       ; $9A801F  AD 03 16     Mx
    BEQ L_9A8027                    ; $9A8022  F0 03        Mx
    DEC $1603                       ; $9A8024  CE 03 16     Mx
L_9A8027:
    LDA $1605                       ; $9A8027  AD 05 16     Mx
    BEQ L_9A802F                    ; $9A802A  F0 03        Mx
    DEC $1605                       ; $9A802C  CE 05 16     Mx
L_9A802F:
    LDA $160D                       ; $9A802F  AD 0D 16     Mx
    BEQ L_9A8037                    ; $9A8032  F0 03        Mx
    DEC $160D                       ; $9A8034  CE 0D 16     Mx
L_9A8037:
    LDA $1611                       ; $9A8037  AD 11 16     Mx
    BEQ L_9A803F                    ; $9A803A  F0 03        Mx
    DEC $1611                       ; $9A803C  CE 11 16     Mx
L_9A803F:
    LDA $1613                       ; $9A803F  AD 13 16     Mx
    BEQ L_9A8047                    ; $9A8042  F0 03        Mx
    DEC $1613                       ; $9A8044  CE 13 16     Mx
L_9A8047:
    LDA $1601                       ; $9A8047  AD 01 16     Mx
    BEQ L_9A804F                    ; $9A804A  F0 03        Mx
    DEC $1601                       ; $9A804C  CE 01 16     Mx
L_9A804F:
    LDA $0BF9                       ; $9A804F  AD F9 0B     Mx
    BEQ L_9A8057                    ; $9A8052  F0 03        Mx
    DEC $0BF9                       ; $9A8054  CE F9 0B     Mx
L_9A8057:
    JSR L_9A8104                    ; $9A8057  20 04 81     Mx
    JSR L_9A943C                    ; $9A805A  20 3C 94     Mx
    JSR L_9A8095                    ; $9A805D  20 95 80     Mx
    JSR L_9A9630                    ; $9A8060  20 30 96     Mx
    JSR L_9A9476                    ; $9A8063  20 76 94     Mx
    LDA $0BDD                       ; $9A8066  AD DD 0B     Mx
    BPL L_9A807C                    ; $9A8069  10 11        Mx
    CMP #$FFF8                      ; $9A806B  C9 F8 FF     Mx
    BCS L_9A807C                    ; $9A806E  B0 0C        Mx
    STZ $0BDD                       ; $9A8070  9C DD 0B     Mx
    STZ $0BDB                       ; $9A8073  9C DB 0B     Mx
    STZ $0BE9                       ; $9A8076  9C E9 0B     Mx
    STZ $0BE7                       ; $9A8079  9C E7 0B     Mx
L_9A807C:
    LDA $0BE9                       ; $9A807C  AD E9 0B     Mx
    BPL L_9A8088                    ; $9A807F  10 07        Mx
    EOR #$FFFF                      ; $9A8081  49 FF FF     Mx
    CLC                             ; $9A8084  18           Mx
    ADC #$0001                      ; $9A8085  69 01 00     Mx
L_9A8088:
    CMP #$000A                      ; $9A8088  C9 0A 00     Mx
    BCC L_9A8093                    ; $9A808B  90 06        Mx
    STZ $0BE9                       ; $9A808D  9C E9 0B     Mx
    STZ $0BE7                       ; $9A8090  9C E7 0B     Mx
L_9A8093:
    PLB                             ; $9A8093  AB           Mx
    RTL                             ; $9A8094  6B           Mx
L_9A8095:
    LDA $0C19                       ; $9A8095  AD 19 0C     Mx
    BEQ L_9A809B                    ; $9A8098  F0 01        Mx
    RTS                             ; $9A809A  60           Mx
L_9A809B:
    LDA $0BED                       ; $9A809B  AD ED 0B     Mx
    BPL L_9A80AE                    ; $9A809E  10 0E        Mx
    LDA $0BD5                       ; $9A80A0  AD D5 0B     Mx
    CMP #$030F                      ; $9A80A3  C9 0F 03     Mx
    BCS L_9A80AB                    ; $9A80A6  B0 03        Mx
    JMP L_9A80B9                    ; $9A80A8  4C B9 80     Mx
L_9A80AB:
    JMP L_9A80BF                    ; $9A80AB  4C BF 80     Mx
L_9A80AE:
    LDA $0BD5                       ; $9A80AE  AD D5 0B     Mx
    CMP #$03F1                      ; $9A80B1  C9 F1 03     Mx
    BCS L_9A80B9                    ; $9A80B4  B0 03        Mx
    JMP L_9A80BF                    ; $9A80B6  4C BF 80     Mx
L_9A80B9:
    STZ $0BED                       ; $9A80B9  9C ED 0B     Mx
    STZ $0BEB                       ; $9A80BC  9C EB 0B     Mx
L_9A80BF:
    LDA $0BE5                       ; $9A80BF  AD E5 0B     Mx
    BPL L_9A80D1                    ; $9A80C2  10 0D        Mx
    LDA $0BCD                       ; $9A80C4  AD CD 0B     Mx
    BPL L_9A80CE                    ; $9A80C7  10 05        Mx
    CMP #$FEF8                      ; $9A80C9  C9 F8 FE     Mx
    BCC L_9A80DE                    ; $9A80CC  90 10        Mx
L_9A80CE:
    JMP L_9A80E4                    ; $9A80CE  4C E4 80     Mx
L_9A80D1:
    LDA $0BCD                       ; $9A80D1  AD CD 0B     Mx
    BMI L_9A80CE                    ; $9A80D4  30 F8        Mx
    CMP #$0110                      ; $9A80D6  C9 10 01     Mx
    BCS L_9A80DE                    ; $9A80D9  B0 03        Mx
    JMP L_9A80E4                    ; $9A80DB  4C E4 80     Mx
L_9A80DE:
    STZ $0BE5                       ; $9A80DE  9C E5 0B     Mx
    STZ $0BE3                       ; $9A80E1  9C E3 0B     Mx
L_9A80E4:
    LDA $0BDD                       ; $9A80E4  AD DD 0B     Mx
    BPL L_9A80F2                    ; $9A80E7  10 09        Mx
    STZ $0BDD                       ; $9A80E9  9C DD 0B     Mx
    STZ $0BDB                       ; $9A80EC  9C DB 0B     Mx
    JMP L_9A80FD                    ; $9A80EF  4C FD 80     Mx
L_9A80F2:
    CMP #$0121                      ; $9A80F2  C9 21 01     Mx
    BMI L_9A8103                    ; $9A80F5  30 0C        Mx
    LDA #$0120                      ; $9A80F7  A9 20 01     Mx
    STA $0BDD                       ; $9A80FA  8D DD 0B     Mx
L_9A80FD:
    STZ $0BE9                       ; $9A80FD  9C E9 0B     Mx
    STZ $0BE7                       ; $9A8100  9C E7 0B     Mx
L_9A8103:
    RTS                             ; $9A8103  60           Mx
L_9A8104:
    REP #$20                        ; $9A8104  C2 20        Mx
    SEP #$10                        ; $9A8106  E2 10        Mx
    LDA $0BE5                       ; $9A8108  AD E5 0B     Mx
    BPL L_9A810E                    ; $9A810B  10 01        Mx
    INC                             ; $9A810D  1A           Mx
L_9A810E:
    BPL L_9A8117                    ; $9A810E  10 07        Mx
    EOR #$FFFF                      ; $9A8110  49 FF FF     Mx
    CLC                             ; $9A8113  18           Mx
    ADC #$0001                      ; $9A8114  69 01 00     Mx
L_9A8117:
    CMP #$0000                      ; $9A8117  C9 00 00     Mx
    BNE L_9A8138                    ; $9A811A  D0 1C        Mx
    LDA $0BED                       ; $9A811C  AD ED 0B     Mx
    BPL L_9A8122                    ; $9A811F  10 01        Mx
    INC                             ; $9A8121  1A           Mx
L_9A8122:
    BPL L_9A812B                    ; $9A8122  10 07        Mx
    EOR #$FFFF                      ; $9A8124  49 FF FF     Mx
    CLC                             ; $9A8127  18           Mx
    ADC #$0001                      ; $9A8128  69 01 00     Mx
L_9A812B:
    CMP #$0000                      ; $9A812B  C9 00 00     Mx
    BNE L_9A8138                    ; $9A812E  D0 08        Mx
    LDA $0006                       ; $9A8130  AD 06 00     Mx
    AND #$001F                      ; $9A8133  29 1F 00     Mx
    BNE L_9A8144                    ; $9A8136  D0 0C        Mx
L_9A8138:
    LDA $0BD9                       ; $9A8138  AD D9 0B     Mx
    STA $0BFB                       ; $9A813B  8D FB 0B     Mx
    LDA $0BE1                       ; $9A813E  AD E1 0B     Mx
    STA $0BFD                       ; $9A8141  8D FD 0B     Mx
L_9A8144:
    LDA $0C19                       ; $9A8144  AD 19 0C     Mx
    BEQ L_9A8152                    ; $9A8147  F0 09        Mx
    STA $0C1F                       ; $9A8149  8D 1F 0C     Mx
    LDA $00CC                       ; $9A814C  AD CC 00     Mx
    STA $0BB5                       ; $9A814F  8D B5 0B     Mx
L_9A8152:
    LDA $0C3D                       ; $9A8152  AD 3D 0C     Mx
    BEQ L_9A8183                    ; $9A8155  F0 2C        Mx
    CMP #$0014                      ; $9A8157  C9 14 00     Mx
    BNE L_9A8180                    ; $9A815A  D0 24        Mx
    LDA $1607                       ; $9A815C  AD 07 16     Mx
    BNE L_9A8180                    ; $9A815F  D0 1F        Mx
    LDA $0B50                       ; $9A8161  AD 50 0B     Mx
    BNE L_9A8180                    ; $9A8164  D0 1A        Mx
    LDA $0CD3                       ; $9A8166  AD D3 0C     Mx
    BNE L_9A8180                    ; $9A8169  D0 15        Mx
    LDA $0702                       ; $9A816B  AD 02 07     Mx
    ORA $07EA                       ; $9A816E  0D EA 07     Mx
    ORA $08D2                       ; $9A8171  0D D2 08     Mx
    ORA $09BA                       ; $9A8174  0D BA 09     Mx
    BNE L_9A8180                    ; $9A8177  D0 07        Mx
    LDA #$0024                      ; $9A8179  A9 24 00     Mx
    JSL L_BDFDF3                    ; $9A817C  22 F3 FD BD  Mx
L_9A8180:
    DEC $0C3D                       ; $9A8180  CE 3D 0C     Mx
L_9A8183:
    LDX $0BBF                       ; $9A8183  AE BF 0B     Mx
    JSR ($818A,X)                   ; $9A8186  FC 8A 81     Mx
    RTS                             ; $9A8189  60           Mx
    db $BE,$81,$BF,$81,$0A,$94,$92,$81,$AD,$74,$0B,$8D,$D9,$0B,$A9,$00 ; $9A818A
    db $00,$8D,$DD,$0B,$AD,$76,$0B,$18,$6D,$F5,$0B,$8D,$F3,$0B,$8D,$E1 ; $9A819A
    db $0B,$9C,$E3,$0B,$9C,$E5,$0B,$9C,$EB,$0B,$9C,$ED,$0B,$9C,$E7,$0B ; $9A81AA
    db $9C,$E9,$0B,$60                                                 ; $9A81BA
L_9A81BE:
    RTS                             ; $9A81BE  60           Mx
L_9A81BF:
    STZ $0C11                       ; $9A81BF  9C 11 0C     Mx
    LDA $0BC1                       ; $9A81C2  AD C1 0B     Mx
    BEQ L_9A81CA                    ; $9A81C5  F0 03        Mx
    JMP L_9A921E                    ; $9A81C7  4C 1E 92     Mx
L_9A81CA:
    LDA $0CCB                       ; $9A81CA  AD CB 0C     Mx
    ORA $0CC9                       ; $9A81CD  0D C9 0C     Mx
    BNE L_9A81D5                    ; $9A81D0  D0 03        Mx
    JMP L_9A921E                    ; $9A81D2  4C 1E 92     Mx
L_9A81D5:
    STZ $0BFF                       ; $9A81D5  9C FF 0B     Mx
    LDY #$00                        ; $9A81D8  A0 00        Mx
    LDA ($CC),Y                     ; $9A81DA  B1 CC        Mx
    AND #$00FF                      ; $9A81DC  29 FF 00     Mx
    CMP #$0003                      ; $9A81DF  C9 03 00     Mx
    BCC L_9A8217                    ; $9A81E2  90 33        Mx
    LDY #$36                        ; $9A81E4  A0 36        Mx
    LDA ($CC),Y                     ; $9A81E6  B1 CC        Mx
    SEC                             ; $9A81E8  38           Mx
    SBC #$0310                      ; $9A81E9  E9 10 03     Mx
    LSR                             ; $9A81EC  4A           Mx
    BPL L_9A81F2                    ; $9A81ED  10 03        Mx
    LDA #$0000                      ; $9A81EF  A9 00 00     Mx
L_9A81F2:
    CMP #$0070                      ; $9A81F2  C9 70 00     Mx
    BCC L_9A81FA                    ; $9A81F5  90 03        Mx
    LDA #$0070                      ; $9A81F7  A9 70 00     Mx
L_9A81FA:
    ASL                             ; $9A81FA  0A           Mx
    TAX                             ; $9A81FB  AA           Mx
    LDA $0BD9                       ; $9A81FC  AD D9 0B     Mx
    BPL L_9A820F                    ; $9A81FF  10 0E        Mx
    CMP $A7E714,X                   ; $9A8201  DF 14 E7 A7  Mx
    BCS L_9A820F                    ; $9A8205  B0 08        Mx
    LDA #$0002                      ; $9A8207  A9 02 00     Mx
    STA $0C3B                       ; $9A820A  8D 3B 0C     Mx
    BNE L_9A8248                    ; $9A820D  D0 39        Mx
L_9A820F:
    LDA #$0003                      ; $9A820F  A9 03 00     Mx
    STA $0C3B                       ; $9A8212  8D 3B 0C     Mx
    BRA L_9A8248                    ; $9A8215  80 31        Mx
L_9A8217:
    LDY #$36                        ; $9A8217  A0 36        Mx
    LDA ($CC),Y                     ; $9A8219  B1 CC        Mx
    SEC                             ; $9A821B  38           Mx
    SBC #$0310                      ; $9A821C  E9 10 03     Mx
    LSR                             ; $9A821F  4A           Mx
    BPL L_9A8225                    ; $9A8220  10 03        Mx
    LDA #$0000                      ; $9A8222  A9 00 00     Mx
L_9A8225:
    CMP #$0070                      ; $9A8225  C9 70 00     Mx
    BCC L_9A822D                    ; $9A8228  90 03        Mx
    LDA #$0070                      ; $9A822A  A9 70 00     Mx
L_9A822D:
    ASL                             ; $9A822D  0A           Mx
    TAX                             ; $9A822E  AA           Mx
    LDA $0BD9                       ; $9A822F  AD D9 0B     Mx
    BMI L_9A8242                    ; $9A8232  30 0E        Mx
    CMP $A7E62E,X                   ; $9A8234  DF 2E E6 A7  Mx
    BCC L_9A8242                    ; $9A8238  90 08        Mx
    LDA #$0002                      ; $9A823A  A9 02 00     Mx
    STA $0C3B                       ; $9A823D  8D 3B 0C     Mx
    BNE L_9A8248                    ; $9A8240  D0 06        Mx
L_9A8242:
    LDA #$0003                      ; $9A8242  A9 03 00     Mx
    STA $0C3B                       ; $9A8245  8D 3B 0C     Mx
L_9A8248:
    STZ $165D                       ; $9A8248  9C 5D 16     Mx
    INC $0BC1                       ; $9A824B  EE C1 0B     Mx
    LDA $0BD9                       ; $9A824E  AD D9 0B     Mx
    CLC                             ; $9A8251  18           Mx
    ADC $0BEF                       ; $9A8252  6D EF 0B     Mx
    LDY #$54                        ; $9A8255  A0 54        Mx
    SEC                             ; $9A8257  38           Mx
    SBC ($CC),Y                     ; $9A8258  F1 CC        Mx
    STA $0BD9                       ; $9A825A  8D D9 0B     Mx
    LDA $0BDD                       ; $9A825D  AD DD 0B     Mx
    CLC                             ; $9A8260  18           Mx
    ADC $0BF1                       ; $9A8261  6D F1 0B     Mx
    STA $0BDD                       ; $9A8264  8D DD 0B     Mx
    LDA $0BF3                       ; $9A8267  AD F3 0B     Mx
    STA $0BE1                       ; $9A826A  8D E1 0B     Mx
    STZ $0BEF                       ; $9A826D  9C EF 0B     Mx
    STZ $0BF1                       ; $9A8270  9C F1 0B     Mx
    LDY #$CC                        ; $9A8273  A0 CC        Mx
    LDA ($CC),Y                     ; $9A8275  B1 CC        Mx
    STA $00F6                       ; $9A8277  8D F6 00     Mx
    LDY #$66                        ; $9A827A  A0 66        Mx
    LDA ($CC),Y                     ; $9A827C  B1 CC        Mx
    STA $0B9C                       ; $9A827E  8D 9C 0B     Mx
    LDY #$64                        ; $9A8281  A0 64        Mx
    LDA ($CC),Y                     ; $9A8283  B1 CC        Mx
    STA $00B4                       ; $9A8285  8D B4 00     Mx
    CMP #$005A                      ; $9A8288  C9 5A 00     Mx
    BCS L_9A8297                    ; $9A828B  B0 0A        Mx
    LDA $00F6                       ; $9A828D  AD F6 00     Mx
    CLC                             ; $9A8290  18           Mx
    ADC #$00FA                      ; $9A8291  69 FA 00     Mx
    STA $00F6                       ; $9A8294  8D F6 00     Mx
L_9A8297:
    LDA $00B4                       ; $9A8297  AD B4 00     Mx
    CMP #$00F3                      ; $9A829A  C9 F3 00     Mx
    BCC L_9A82A9                    ; $9A829D  90 0A        Mx
    LDA $00F6                       ; $9A829F  AD F6 00     Mx
    SEC                             ; $9A82A2  38           Mx
    SBC #$03DE                      ; $9A82A3  E9 DE 03     Mx
    STA $00F6                       ; $9A82A6  8D F6 00     Mx
L_9A82A9:
    LDA $0C19                       ; $9A82A9  AD 19 0C     Mx
    AND #$00FF                      ; $9A82AC  29 FF 00     Mx
    SEC                             ; $9A82AF  38           Mx
    SBC #$0001                      ; $9A82B0  E9 01 00     Mx
    ASL                             ; $9A82B3  0A           Mx
    ASL                             ; $9A82B4  0A           Mx
    TAX                             ; $9A82B5  AA           Mx
    STX $00B0                       ; $9A82B6  8E B0 00     Mx
    LDA $BBB5,X                     ; $9A82B9  BD B5 BB     Mx
    STA $00B2                       ; $9A82BC  8D B2 00     Mx
    LDY #$32                        ; $9A82BF  A0 32        Mx
    LDA ($B2),Y                     ; $9A82C1  B1 B2        Mx
    STA $00D9                       ; $9A82C3  8D D9 00     Mx
    LDY #$78                        ; $9A82C6  A0 78        Mx
    LDA ($CC),Y                     ; $9A82C8  B1 CC        Mx
    STA $00D3                       ; $9A82CA  8D D3 00     Mx
    LDY #$72                        ; $9A82CD  A0 72        Mx
    LDA ($CC),Y                     ; $9A82CF  B1 CC        Mx
    STA $00D0                       ; $9A82D1  8D D0 00     Mx
    JSR L_9A930E                    ; $9A82D4  20 0E 93     Mx
    LDX $00B0                       ; $9A82D7  AE B0 00     Mx
    LDA $BBB7,X                     ; $9A82DA  BD B7 BB     Mx
    STA $00B2                       ; $9A82DD  8D B2 00     Mx
    LDY #$32                        ; $9A82E0  A0 32        Mx
    LDA ($B2),Y                     ; $9A82E2  B1 B2        Mx
    STA $00D9                       ; $9A82E4  8D D9 00     Mx
    LDY #$7A                        ; $9A82E7  A0 7A        Mx
    LDA ($CC),Y                     ; $9A82E9  B1 CC        Mx
    STA $00D3                       ; $9A82EB  8D D3 00     Mx
    LDY #$74                        ; $9A82EE  A0 74        Mx
    LDA ($CC),Y                     ; $9A82F0  B1 CC        Mx
    STA $00D0                       ; $9A82F2  8D D0 00     Mx
    JSR L_9A930E                    ; $9A82F5  20 0E 93     Mx
    LDA $00B4                       ; $9A82F8  AD B4 00     Mx
    ASL                             ; $9A82FB  0A           Mx
    STA $00A4                       ; $9A82FC  8D A4 00     Mx
    LDA $00F6                       ; $9A82FF  AD F6 00     Mx
    SEC                             ; $9A8302  38           Mx
    SBC $00A4                       ; $9A8303  ED A4 00     Mx
    CMP #$0032                      ; $9A8306  C9 32 00     Mx
    BPL L_9A830E                    ; $9A8309  10 03        Mx
    LDA #$0032                      ; $9A830B  A9 32 00     Mx
L_9A830E:
    STA $00F6                       ; $9A830E  8D F6 00     Mx
    LDY #$DA                        ; $9A8311  A0 DA        Mx
    LDA ($CC),Y                     ; $9A8313  B1 CC        Mx
    BMI L_9A8321                    ; $9A8315  30 0A        Mx
    CMP #$007D                      ; $9A8317  C9 7D 00     Mx
    BCC L_9A8329                    ; $9A831A  90 0D        Mx
    LDA #$007D                      ; $9A831C  A9 7D 00     Mx
    BNE L_9A8329                    ; $9A831F  D0 08        Mx
L_9A8321:
    CMP #$FF83                      ; $9A8321  C9 83 FF     Mx
    BCS L_9A8329                    ; $9A8324  B0 03        Mx
    LDA #$FF83                      ; $9A8326  A9 83 FF     Mx
L_9A8329:
    STA $00D6                       ; $9A8329  8D D6 00     Mx
    STA $00D3                       ; $9A832C  8D D3 00     Mx
    SEP #$20                        ; $9A832F  E2 20        Mx
    LDA #$14                        ; $9A8331  A9 14        mx
    STA $0BAF                       ; $9A8333  8D AF 0B     mx
    BPL L_9A833D                    ; $9A8336  10 05        mx
    EOR #$FF                        ; $9A8338  49 FF        mx
    CLC                             ; $9A833A  18           mx
    ADC #$01                        ; $9A833B  69 01        mx
L_9A833D:
    STA $4202                       ; $9A833D  8D 02 42     mx
    LDA $00D3                       ; $9A8340  AD D3 00     mx
    STA $0BB1                       ; $9A8343  8D B1 0B     mx
    BPL L_9A834D                    ; $9A8346  10 05        mx
    EOR #$FF                        ; $9A8348  49 FF        mx
    CLC                             ; $9A834A  18           mx
    ADC #$01                        ; $9A834B  69 01        mx
L_9A834D:
    STA $4203                       ; $9A834D  8D 03 42     mx
    LDA $0BAF                       ; $9A8350  AD AF 0B     mx
    EOR $0BB1                       ; $9A8353  4D B1 0B     mx
    AND #$80                        ; $9A8356  29 80        mx
    BPL L_9A836C                    ; $9A8358  10 12        mx
    REP #$20                        ; $9A835A  C2 20        mx
    LDA $4216                       ; $9A835C  AD 16 42     Mx
    EOR #$FFFF                      ; $9A835F  49 FF FF     Mx
    CLC                             ; $9A8362  18           Mx
    ADC #$0001                      ; $9A8363  69 01 00     Mx
    STA $00D3                       ; $9A8366  8D D3 00     Mx
    JMP L_9A8374                    ; $9A8369  4C 74 83     Mx
L_9A836C:
    REP #$20                        ; $9A836C  C2 20        mx
    LDA $4216                       ; $9A836E  AD 16 42     Mx
    STA $00D3                       ; $9A8371  8D D3 00     Mx
L_9A8374:
    CLC                             ; $9A8374  18           Mx
    ADC $00F6                       ; $9A8375  6D F6 00     Mx
    CMP #$0032                      ; $9A8378  C9 32 00     Mx
    BPL L_9A8380                    ; $9A837B  10 03        Mx
    LDA #$0032                      ; $9A837D  A9 32 00     Mx
L_9A8380:
    STA $00F6                       ; $9A8380  8D F6 00     Mx
    LDA $1D56                       ; $9A8383  AD 56 1D     Mx
    CMP #$147A                      ; $9A8386  C9 7A 14     Mx
    BCS L_9A8396                    ; $9A8389  B0 0B        Mx
    LDA $00D6                       ; $9A838B  AD D6 00     Mx
    BPL L_9A8396                    ; $9A838E  10 06        Mx
    LDA #$0032                      ; $9A8390  A9 32 00     Mx
    STA $00F6                       ; $9A8393  8D F6 00     Mx
L_9A8396:
    LDA $0CCB                       ; $9A8396  AD CB 0C     Mx
    CMP #$0005                      ; $9A8399  C9 05 00     Mx
    BCC L_9A83A1                    ; $9A839C  90 03        Mx
L_9A839E:
    JMP L_9A847F                    ; $9A839E  4C 7F 84     Mx
L_9A83A1:
    LDA $00D6                       ; $9A83A1  AD D6 00     Mx
    BNE L_9A83B7                    ; $9A83A4  D0 11        Mx
    LDA $0CD5                       ; $9A83A6  AD D5 0C     Mx
    CMP #$0003                      ; $9A83A9  C9 03 00     Mx
    BCC L_9A839E                    ; $9A83AC  90 F0        Mx
    LDA #$0032                      ; $9A83AE  A9 32 00     Mx
    STA $00F6                       ; $9A83B1  8D F6 00     Mx
    JMP L_9A847F                    ; $9A83B4  4C 7F 84     Mx
L_9A83B7:
    BPL L_9A83DC                    ; $9A83B7  10 23        Mx
    CMP #$FFFC                      ; $9A83B9  C9 FC FF     Mx
    BCS L_9A839E                    ; $9A83BC  B0 E0        Mx
    BRA L_9A83C3                    ; $9A83BE  80 03        Mx
L_9A83C0:
    JMP L_9A83DC                    ; $9A83C0  4C DC 83     Mx
L_9A83C3:
    LDA $0CD5                       ; $9A83C3  AD D5 0C     Mx
    CMP #$0003                      ; $9A83C6  C9 03 00     Mx
    BCS L_9A83CE                    ; $9A83C9  B0 03        Mx
    JMP L_9A847F                    ; $9A83CB  4C 7F 84     Mx
L_9A83CE:
    LDA $0CCB                       ; $9A83CE  AD CB 0C     Mx
    CMP #$0003                      ; $9A83D1  C9 03 00     Mx
    BCC L_9A83D9                    ; $9A83D4  90 03        Mx
    JMP L_9A8462                    ; $9A83D6  4C 62 84     Mx
L_9A83D9:
    JMP L_9A8416                    ; $9A83D9  4C 16 84     Mx
L_9A83DC:
    LDA $00D6                       ; $9A83DC  AD D6 00     Mx
    STA $00D0                       ; $9A83DF  8D D0 00     Mx
    LDA $0C3B                       ; $9A83E2  AD 3B 0C     Mx
    STA $00B7                       ; $9A83E5  8D B7 00     Mx
    LDA $0CD5                       ; $9A83E8  AD D5 0C     Mx
    CMP #$0003                      ; $9A83EB  C9 03 00     Mx
    BCS L_9A841F                    ; $9A83EE  B0 2F        Mx
    LDA $00D0                       ; $9A83F0  AD D0 00     Mx
    SEC                             ; $9A83F3  38           Mx
    SBC #$0006                      ; $9A83F4  E9 06 00     Mx
    STA $00D0                       ; $9A83F7  8D D0 00     Mx
    BPL L_9A840D                    ; $9A83FA  10 11        Mx
    LDA $00D6                       ; $9A83FC  AD D6 00     Mx
    CMP $00B7                       ; $9A83FF  CD B7 00     Mx
    BEQ L_9A8416                    ; $9A8402  F0 12        Mx
    LDA #$01F4                      ; $9A8404  A9 F4 01     Mx
    STA $00D9                       ; $9A8407  8D D9 00     Mx
    JMP L_9A8471                    ; $9A840A  4C 71 84     Mx
L_9A840D:
    LDA #$0258                      ; $9A840D  A9 58 02     Mx
    STA $00D9                       ; $9A8410  8D D9 00     Mx
    JMP L_9A8471                    ; $9A8413  4C 71 84     Mx
L_9A8416:
    LDA #$0190                      ; $9A8416  A9 90 01     Mx
    STA $00D9                       ; $9A8419  8D D9 00     Mx
    JMP L_9A8471                    ; $9A841C  4C 71 84     Mx
L_9A841F:
    LDA $00D0                       ; $9A841F  AD D0 00     Mx
    SEC                             ; $9A8422  38           Mx
    SBC #$0004                      ; $9A8423  E9 04 00     Mx
    BCS L_9A8462                    ; $9A8426  B0 3A        Mx
    LDA $00D6                       ; $9A8428  AD D6 00     Mx
    CMP $00B7                       ; $9A842B  CD B7 00     Mx
    BEQ L_9A846B                    ; $9A842E  F0 3B        Mx
    LDA $0C19                       ; $9A8430  AD 19 0C     Mx
    AND #$FF00                      ; $9A8433  29 00 FF     Mx
    BNE L_9A8459                    ; $9A8436  D0 21        Mx
    LDA $0C19                       ; $9A8438  AD 19 0C     Mx
    AND #$00FF                      ; $9A843B  29 FF 00     Mx
    DEC                             ; $9A843E  3A           Mx
    ASL                             ; $9A843F  0A           Mx
    TAX                             ; $9A8440  AA           Mx
    LDA $BBC5,X                     ; $9A8441  BD C5 BB     Mx
    STA $00A4                       ; $9A8444  8D A4 00     Mx
    LDY #$00                        ; $9A8447  A0 00        Mx
    LDA ($A4),Y                     ; $9A8449  B1 A4        Mx
    AND #$FF00                      ; $9A844B  29 00 FF     Mx
    BNE L_9A8459                    ; $9A844E  D0 09        Mx
    LDA #$0064                      ; $9A8450  A9 64 00     Mx
    STA $00D9                       ; $9A8453  8D D9 00     Mx
    JMP L_9A8471                    ; $9A8456  4C 71 84     Mx
L_9A8459:
    LDA #$017C                      ; $9A8459  A9 7C 01     Mx
    STA $00D9                       ; $9A845C  8D D9 00     Mx
    JMP L_9A8471                    ; $9A845F  4C 71 84     Mx
L_9A8462:
    LDA #$0384                      ; $9A8462  A9 84 03     Mx
    STA $00D9                       ; $9A8465  8D D9 00     Mx
    JMP L_9A8471                    ; $9A8468  4C 71 84     Mx
L_9A846B:
    LDA #$0320                      ; $9A846B  A9 20 03     Mx
    STA $00D9                       ; $9A846E  8D D9 00     Mx
L_9A8471:
    LDA $00F6                       ; $9A8471  AD F6 00     Mx
    CMP $00D9                       ; $9A8474  CD D9 00     Mx
    BCS L_9A847F                    ; $9A8477  B0 06        Mx
    LDA $00D9                       ; $9A8479  AD D9 00     Mx
    STA $00F6                       ; $9A847C  8D F6 00     Mx
L_9A847F:
    LDX $0A96                       ; $9A847F  AE 96 0A     Mx
    CPX $0C19                       ; $9A8482  EC 19 0C     Mx
    BNE L_9A849F                    ; $9A8485  D0 18        Mx
    LDA $00F6                       ; $9A8487  AD F6 00     Mx
    CLC                             ; $9A848A  18           Mx
    ADC #$02EE                      ; $9A848B  69 EE 02     Mx
    STA $00F6                       ; $9A848E  8D F6 00     Mx
    LDA $00B4                       ; $9A8491  AD B4 00     Mx
    CMP #$0106                      ; $9A8494  C9 06 01     Mx
    BCC L_9A849F                    ; $9A8497  90 06        Mx
    LDA #$0064                      ; $9A8499  A9 64 00     Mx
    STA $00F6                       ; $9A849C  8D F6 00     Mx
L_9A849F:
    LDY #$04                        ; $9A849F  A0 04        Mx
    LDA ($CC),Y                     ; $9A84A1  B1 CC        Mx
    CMP #$003A                      ; $9A84A3  C9 3A 00     Mx
    BEQ L_9A84AB                    ; $9A84A6  F0 03        Mx
    JMP L_9A858E                    ; $9A84A8  4C 8E 85     Mx
L_9A84AB:
    LDY #$AC                        ; $9A84AB  A0 AC        Mx
    LDA ($CC),Y                     ; $9A84AD  B1 CC        Mx
    CMP #$005E                      ; $9A84AF  C9 5E 00     Mx
    BNE L_9A84C1                    ; $9A84B2  D0 0D        Mx
    LDA $00F6                       ; $9A84B4  AD F6 00     Mx
    CLC                             ; $9A84B7  18           Mx
    ADC #$02D0                      ; $9A84B8  69 D0 02     Mx
    STA $00F6                       ; $9A84BB  8D F6 00     Mx
    JMP L_9A851B                    ; $9A84BE  4C 1B 85     Mx
L_9A84C1:
    CMP #$005C                      ; $9A84C1  C9 5C 00     Mx
    BNE L_9A84D3                    ; $9A84C4  D0 0D        Mx
    LDA $00F6                       ; $9A84C6  AD F6 00     Mx
    CLC                             ; $9A84C9  18           Mx
    ADC #$02D0                      ; $9A84CA  69 D0 02     Mx
    STA $00F6                       ; $9A84CD  8D F6 00     Mx
    JMP L_9A851B                    ; $9A84D0  4C 1B 85     Mx
L_9A84D3:
    CMP #$0058                      ; $9A84D3  C9 58 00     Mx
    BNE L_9A84E5                    ; $9A84D6  D0 0D        Mx
    LDA $00F6                       ; $9A84D8  AD F6 00     Mx
    CLC                             ; $9A84DB  18           Mx
    ADC #$02D0                      ; $9A84DC  69 D0 02     Mx
    STA $00F6                       ; $9A84DF  8D F6 00     Mx
    JMP L_9A851B                    ; $9A84E2  4C 1B 85     Mx
L_9A84E5:
    CMP #$0056                      ; $9A84E5  C9 56 00     Mx
    BNE L_9A84F7                    ; $9A84E8  D0 0D        Mx
    LDA $00F6                       ; $9A84EA  AD F6 00     Mx
    CLC                             ; $9A84ED  18           Mx
    ADC #$02D0                      ; $9A84EE  69 D0 02     Mx
    STA $00F6                       ; $9A84F1  8D F6 00     Mx
    JMP L_9A851B                    ; $9A84F4  4C 1B 85     Mx
L_9A84F7:
    CMP #$005A                      ; $9A84F7  C9 5A 00     Mx
    BNE L_9A8509                    ; $9A84FA  D0 0D        Mx
    LDA $00F6                       ; $9A84FC  AD F6 00     Mx
    CLC                             ; $9A84FF  18           Mx
    ADC #$02D0                      ; $9A8500  69 D0 02     Mx
    STA $00F6                       ; $9A8503  8D F6 00     Mx
    JMP L_9A851B                    ; $9A8506  4C 1B 85     Mx
L_9A8509:
    CMP #$0080                      ; $9A8509  C9 80 00     Mx
    BNE L_9A8538                    ; $9A850C  D0 2A        Mx
    LDA $00F6                       ; $9A850E  AD F6 00     Mx
    CLC                             ; $9A8511  18           Mx
    ADC #$02D0                      ; $9A8512  69 D0 02     Mx
    STA $00F6                       ; $9A8515  8D F6 00     Mx
    JMP L_9A851B                    ; $9A8518  4C 1B 85     Mx
L_9A851B:
    LDA $1D58                       ; $9A851B  AD 58 1D     Mx
    CMP #$B0A3                      ; $9A851E  C9 A3 B0     Mx
    BCS L_9A8526                    ; $9A8521  B0 03        Mx
    JMP L_9A860A                    ; $9A8523  4C 0A 86     Mx
L_9A8526:
    LDA #$006A                      ; $9A8526  A9 6A 00     Mx
    STA $077A                       ; $9A8529  8D 7A 07     Mx
    STA $0862                       ; $9A852C  8D 62 08     Mx
    STA $094A                       ; $9A852F  8D 4A 09     Mx
    STA $0A32                       ; $9A8532  8D 32 0A     Mx
    JMP L_9A860A                    ; $9A8535  4C 0A 86     Mx
L_9A8538:
    CMP #$FFFF                      ; $9A8538  C9 FF FF     Mx
    BEQ L_9A8547                    ; $9A853B  F0 0A        Mx
    CMP #$0088                      ; $9A853D  C9 88 00     Mx
    BEQ L_9A8547                    ; $9A8540  F0 05        Mx
    CMP #$0082                      ; $9A8542  C9 82 00     Mx
    BNE L_9A857F                    ; $9A8545  D0 38        Mx
L_9A8547:
    JSR L_9A854D                    ; $9A8547  20 4D 85     Mx
    JMP L_9A860A                    ; $9A854A  4C 0A 86     Mx
L_9A854D:
    LDA #$037A                      ; $9A854D  A9 7A 03     Mx
    STA $00F6                       ; $9A8550  8D F6 00     Mx
    LDY #$DA                        ; $9A8553  A0 DA        Mx
    LDA ($CC),Y                     ; $9A8555  B1 CC        Mx
    BPL L_9A8567                    ; $9A8557  10 0E        Mx
    LDA $0002                       ; $9A8559  AD 02 00     Mx
    CMP #$1999                      ; $9A855C  C9 99 19     Mx
    BCS L_9A8567                    ; $9A855F  B0 06        Mx
    LDA #$00FA                      ; $9A8561  A9 FA 00     Mx
    STA $00F6                       ; $9A8564  8D F6 00     Mx
L_9A8567:
    LDA $1D57                       ; $9A8567  AD 57 1D     Mx
    CMP #$9999                      ; $9A856A  C9 99 99     Mx
    BCC L_9A857E                    ; $9A856D  90 0F        Mx
    LDA #$006A                      ; $9A856F  A9 6A 00     Mx
    STA $077A                       ; $9A8572  8D 7A 07     Mx
    STA $0862                       ; $9A8575  8D 62 08     Mx
    STA $094A                       ; $9A8578  8D 4A 09     Mx
    STA $0A32                       ; $9A857B  8D 32 0A     Mx
L_9A857E:
    RTS                             ; $9A857E  60           Mx
L_9A857F:
    LDY #$08                        ; $9A857F  A0 08        Mx
    LDA ($CC),Y                     ; $9A8581  B1 CC        Mx
    AND #$0008                      ; $9A8583  29 08 00     Mx
    BEQ L_9A858E                    ; $9A8586  F0 06        Mx
    JSR L_9A854D                    ; $9A8588  20 4D 85     Mx
    JMP L_9A860A                    ; $9A858B  4C 0A 86     Mx
L_9A858E:
    LDY #$04                        ; $9A858E  A0 04        Mx
    LDA ($CC),Y                     ; $9A8590  B1 CC        Mx
    CMP #$0010                      ; $9A8592  C9 10 00     Mx
    BEQ L_9A859C                    ; $9A8595  F0 05        Mx
    CMP #$0034                      ; $9A8597  C9 34 00     Mx
    BNE L_9A860A                    ; $9A859A  D0 6E        Mx
L_9A859C:
    LDA #$0258                      ; $9A859C  A9 58 02     Mx
    STA $00F6                       ; $9A859F  8D F6 00     Mx
    PHP                             ; $9A85A2  08           Mx
    REP #$30                        ; $9A85A3  C2 30        Mx
    LDA $4212                       ; $9A85A5  AD 12 42     MX
    SEP #$20                        ; $9A85A8  E2 20        MX
    CLC                             ; $9A85AA  18           mX
    ADC $1D57                       ; $9A85AB  6D 57 1D     mX
    STA $1D57                       ; $9A85AE  8D 57 1D     mX
    REP #$20                        ; $9A85B1  C2 20        mX
    LDA $4212                       ; $9A85B3  AD 12 42     MX
    TAX                             ; $9A85B6  AA           MX
    SEP #$20                        ; $9A85B7  E2 20        MX
    EOR $1D58                       ; $9A85B9  4D 58 1D     mX
    STA $1D58                       ; $9A85BC  8D 58 1D     mX
    TXA                             ; $9A85BF  8A           mX
    ADC $1D59                       ; $9A85C0  6D 59 1D     mX
    REP #$20                        ; $9A85C3  C2 20        mX
    LDA $1D56                       ; $9A85C5  AD 56 1D     MX
    INC                             ; $9A85C8  1A           MX
    ROR                             ; $9A85C9  6A           MX
    LSR $1D58                       ; $9A85CA  4E 58 1D     MX
    EOR #$2B41                      ; $9A85CD  49 41 2B     MX
    SBC #$000F                      ; $9A85D0  E9 0F 00     MX
    STA $1D56                       ; $9A85D3  8D 56 1D     MX
    LDA $1D58                       ; $9A85D6  AD 58 1D     MX
    EOR #$1D87                      ; $9A85D9  49 87 1D     MX
    STA $1D58                       ; $9A85DC  8D 58 1D     MX
    LDA $1D52                       ; $9A85DF  AD 52 1D     MX
    EOR $1D56                       ; $9A85E2  4D 56 1D     MX
    STA $0002                       ; $9A85E5  8D 02 00     MX
    INC                             ; $9A85E8  1A           MX
    STA $1D52                       ; $9A85E9  8D 52 1D     MX
    LDA $1D54                       ; $9A85EC  AD 54 1D     MX
    EOR $1D58                       ; $9A85EF  4D 58 1D     MX
    ADC #$0000                      ; $9A85F2  69 00 00     MX
    STA $1D52                       ; $9A85F5  8D 52 1D     MX
    STA $0004                       ; $9A85F8  8D 04 00     MX
    PLP                             ; $9A85FB  28           MX
    LDA $0002                       ; $9A85FC  AD 02 00     Mx
    CMP #$1EB8                      ; $9A85FF  C9 B8 1E     Mx
    BCS L_9A860A                    ; $9A8602  B0 06        Mx
    LDA #$00FA                      ; $9A8604  A9 FA 00     Mx
    STA $00F6                       ; $9A8607  8D F6 00     Mx
L_9A860A:
    LDA $0B9C                       ; $9A860A  AD 9C 0B     Mx
    STA $00D9                       ; $9A860D  8D D9 00     Mx
    LDA $00B4                       ; $9A8610  AD B4 00     Mx
    STA $00D3                       ; $9A8613  8D D3 00     Mx
    LDA $00D9                       ; $9A8616  AD D9 00     Mx
    AND #$003F                      ; $9A8619  29 3F 00     Mx
    SEC                             ; $9A861C  38           Mx
    SBC #$0020                      ; $9A861D  E9 20 00     Mx
    BPL L_9A8629                    ; $9A8620  10 07        Mx
    EOR #$FFFF                      ; $9A8622  49 FF FF     Mx
    CLC                             ; $9A8625  18           Mx
    ADC #$0001                      ; $9A8626  69 01 00     Mx
L_9A8629:
    STA $00D9                       ; $9A8629  8D D9 00     Mx
    LDA #$0001                      ; $9A862C  A9 01 00     Mx
    STA $0B9C                       ; $9A862F  8D 9C 0B     Mx
    LDA $00D3                       ; $9A8632  AD D3 00     Mx
    CMP #$0096                      ; $9A8635  C9 96 00     Mx
    BCS L_9A8659                    ; $9A8638  B0 1F        Mx
    LDA $1D56                       ; $9A863A  AD 56 1D     Mx
    CMP #$28F5                      ; $9A863D  C9 F5 28     Mx
    BCS L_9A8645                    ; $9A8640  B0 03        Mx
    STZ $0B9C                       ; $9A8642  9C 9C 0B     Mx
L_9A8645:
    LDY #$08                        ; $9A8645  A0 08        Mx
    LDA ($CC),Y                     ; $9A8647  B1 CC        Mx
    AND #$0008                      ; $9A8649  29 08 00     Mx
    BEQ L_9A8659                    ; $9A864C  F0 0B        Mx
    LDA $1D57                       ; $9A864E  AD 57 1D     Mx
    CMP #$1999                      ; $9A8651  C9 99 19     Mx
    BCS L_9A8659                    ; $9A8654  B0 03        Mx
    STZ $0B9C                       ; $9A8656  9C 9C 0B     Mx
L_9A8659:
    LDA $00D9                       ; $9A8659  AD D9 00     Mx
    SEC                             ; $9A865C  38           Mx
    SBC #$0018                      ; $9A865D  E9 18 00     Mx
    STA $00D9                       ; $9A8660  8D D9 00     Mx
    BMI L_9A8668                    ; $9A8663  30 03        Mx
    JMP L_9A8986                    ; $9A8665  4C 86 89     Mx
L_9A8668:
    LDA $00D3                       ; $9A8668  AD D3 00     Mx
    CMP #$0050                      ; $9A866B  C9 50 00     Mx
    BCC L_9A8673                    ; $9A866E  90 03        Mx
    JMP L_9A8830                    ; $9A8670  4C 30 88     Mx
L_9A8673:
    LDA #$0003                      ; $9A8673  A9 03 00     Mx
    STA $00D0                       ; $9A8676  8D D0 00     Mx
    LDA #$0008                      ; $9A8679  A9 08 00     Mx
    CLC                             ; $9A867C  18           Mx
    ADC $00D9                       ; $9A867D  6D D9 00     Mx
    STA $00D9                       ; $9A8680  8D D9 00     Mx
    BMI L_9A868B                    ; $9A8683  30 06        Mx
    LDA #$0002                      ; $9A8685  A9 02 00     Mx
    STA $00D0                       ; $9A8688  8D D0 00     Mx
L_9A868B:
    PHP                             ; $9A868B  08           Mx
    REP #$30                        ; $9A868C  C2 30        Mx
    LDA $4212                       ; $9A868E  AD 12 42     MX
    SEP #$20                        ; $9A8691  E2 20        MX
    CLC                             ; $9A8693  18           mX
    ADC $1D57                       ; $9A8694  6D 57 1D     mX
    STA $1D57                       ; $9A8697  8D 57 1D     mX
    REP #$20                        ; $9A869A  C2 20        mX
    LDA $4212                       ; $9A869C  AD 12 42     MX
    TAX                             ; $9A869F  AA           MX
    SEP #$20                        ; $9A86A0  E2 20        MX
    EOR $1D58                       ; $9A86A2  4D 58 1D     mX
    STA $1D58                       ; $9A86A5  8D 58 1D     mX
    TXA                             ; $9A86A8  8A           mX
    ADC $1D59                       ; $9A86A9  6D 59 1D     mX
    REP #$20                        ; $9A86AC  C2 20        mX
    LDA $1D56                       ; $9A86AE  AD 56 1D     MX
    INC                             ; $9A86B1  1A           MX
    ROR                             ; $9A86B2  6A           MX
    LSR $1D58                       ; $9A86B3  4E 58 1D     MX
    EOR #$2B41                      ; $9A86B6  49 41 2B     MX
    SBC #$000F                      ; $9A86B9  E9 0F 00     MX
    STA $1D56                       ; $9A86BC  8D 56 1D     MX
    LDA $1D58                       ; $9A86BF  AD 58 1D     MX
    EOR #$1D87                      ; $9A86C2  49 87 1D     MX
    STA $1D58                       ; $9A86C5  8D 58 1D     MX
    LDA $1D52                       ; $9A86C8  AD 52 1D     MX
    EOR $1D56                       ; $9A86CB  4D 56 1D     MX
    STA $0002                       ; $9A86CE  8D 02 00     MX
    INC                             ; $9A86D1  1A           MX
    STA $1D52                       ; $9A86D2  8D 52 1D     MX
    LDA $1D54                       ; $9A86D5  AD 54 1D     MX
    EOR $1D58                       ; $9A86D8  4D 58 1D     MX
    ADC #$0000                      ; $9A86DB  69 00 00     MX
    STA $1D52                       ; $9A86DE  8D 52 1D     MX
    STA $0004                       ; $9A86E1  8D 04 00     MX
    PLP                             ; $9A86E4  28           MX
    INC $00D0                       ; $9A86E5  EE D0 00     Mx
    LDA $1D56                       ; $9A86E8  AD 56 1D     Mx
    STA $00BA                       ; $9A86EB  8D BA 00     Mx
    SEP #$20                        ; $9A86EE  E2 20        Mx
    LDA $00D0                       ; $9A86F0  AD D0 00     mx
    STA $4202                       ; $9A86F3  8D 02 42     mx
    LDA $00BA                       ; $9A86F6  AD BA 00     mx
    STA $4203                       ; $9A86F9  8D 03 42     mx
    NOP                             ; $9A86FC  EA           mx
    NOP                             ; $9A86FD  EA           mx
    NOP                             ; $9A86FE  EA           mx
    REP #$20                        ; $9A86FF  C2 20        mx
    LDA $4216                       ; $9A8701  AD 16 42     Mx
    STA $00BA                       ; $9A8704  8D BA 00     Mx
    LDA $00BB                       ; $9A8707  AD BB 00     Mx
    AND #$00FF                      ; $9A870A  29 FF 00     Mx
    CMP #$0000                      ; $9A870D  C9 00 00     Mx
    BEQ L_9A8715                    ; $9A8710  F0 03        Mx
    JMP L_9A8986                    ; $9A8712  4C 86 89     Mx
L_9A8715:
    STZ $0B9C                       ; $9A8715  9C 9C 0B     Mx
    LDA #$03E7                      ; $9A8718  A9 E7 03     Mx
    STA $00D0                       ; $9A871B  8D D0 00     Mx
    PHP                             ; $9A871E  08           Mx
    REP #$30                        ; $9A871F  C2 30        Mx
    LDA $4212                       ; $9A8721  AD 12 42     MX
    SEP #$20                        ; $9A8724  E2 20        MX
    CLC                             ; $9A8726  18           mX
    ADC $1D57                       ; $9A8727  6D 57 1D     mX
    STA $1D57                       ; $9A872A  8D 57 1D     mX
    REP #$20                        ; $9A872D  C2 20        mX
    LDA $4212                       ; $9A872F  AD 12 42     MX
    TAX                             ; $9A8732  AA           MX
    SEP #$20                        ; $9A8733  E2 20        MX
    EOR $1D58                       ; $9A8735  4D 58 1D     mX
    STA $1D58                       ; $9A8738  8D 58 1D     mX
    TXA                             ; $9A873B  8A           mX
    ADC $1D59                       ; $9A873C  6D 59 1D     mX
    REP #$20                        ; $9A873F  C2 20        mX
    LDA $1D56                       ; $9A8741  AD 56 1D     MX
    INC                             ; $9A8744  1A           MX
    ROR                             ; $9A8745  6A           MX
    LSR $1D58                       ; $9A8746  4E 58 1D     MX
    EOR #$2B41                      ; $9A8749  49 41 2B     MX
    SBC #$000F                      ; $9A874C  E9 0F 00     MX
    STA $1D56                       ; $9A874F  8D 56 1D     MX
    LDA $1D58                       ; $9A8752  AD 58 1D     MX
    EOR #$1D87                      ; $9A8755  49 87 1D     MX
    STA $1D58                       ; $9A8758  8D 58 1D     MX
    LDA $1D52                       ; $9A875B  AD 52 1D     MX
    EOR $1D56                       ; $9A875E  4D 56 1D     MX
    STA $0002                       ; $9A8761  8D 02 00     MX
    INC                             ; $9A8764  1A           MX
    STA $1D52                       ; $9A8765  8D 52 1D     MX
    LDA $1D54                       ; $9A8768  AD 54 1D     MX
    EOR $1D58                       ; $9A876B  4D 58 1D     MX
    ADC #$0000                      ; $9A876E  69 00 00     MX
    STA $1D52                       ; $9A8771  8D 52 1D     MX
    STA $0004                       ; $9A8774  8D 04 00     MX
    PLP                             ; $9A8777  28           MX
    LDA $00D0                       ; $9A8778  AD D0 00     Mx
    STA $00BA                       ; $9A877B  8D BA 00     Mx
    SEP #$20                        ; $9A877E  E2 20        Mx
    LDA $1D56                       ; $9A8780  AD 56 1D     mx
    STA $4202                       ; $9A8783  8D 02 42     mx
    LDA $00BA                       ; $9A8786  AD BA 00     mx
    STA $4203                       ; $9A8789  8D 03 42     mx
    NOP                             ; $9A878C  EA           mx
    NOP                             ; $9A878D  EA           mx
    NOP                             ; $9A878E  EA           mx
    REP #$20                        ; $9A878F  C2 20        mx
    LDA $4216                       ; $9A8791  AD 16 42     Mx
    STA $00BA                       ; $9A8794  8D BA 00     Mx
    STA $00A8                       ; $9A8797  8D A8 00     Mx
    LDA $00D0                       ; $9A879A  AD D0 00     Mx
    STA $00BA                       ; $9A879D  8D BA 00     Mx
    SEP #$20                        ; $9A87A0  E2 20        Mx
    LDA $1D56                       ; $9A87A2  AD 56 1D     mx
    STA $4202                       ; $9A87A5  8D 02 42     mx
    LDA $00BB                       ; $9A87A8  AD BB 00     mx
    STA $4203                       ; $9A87AB  8D 03 42     mx
    NOP                             ; $9A87AE  EA           mx
    NOP                             ; $9A87AF  EA           mx
    NOP                             ; $9A87B0  EA           mx
    REP #$20                        ; $9A87B1  C2 20        mx
    LDA $4216                       ; $9A87B3  AD 16 42     Mx
    STA $00BB                       ; $9A87B6  8D BB 00     Mx
    STZ $00F4                       ; $9A87B9  9C F4 00     Mx
    STZ $00F2                       ; $9A87BC  9C F2 00     Mx
    STA $00F3                       ; $9A87BF  8D F3 00     Mx
    LDA $00F2                       ; $9A87C2  AD F2 00     Mx
    CLC                             ; $9A87C5  18           Mx
    ADC $00A8                       ; $9A87C6  6D A8 00     Mx
    STA $00F2                       ; $9A87C9  8D F2 00     Mx
    LDA $00F4                       ; $9A87CC  AD F4 00     Mx
    ADC #$0000                      ; $9A87CF  69 00 00     Mx
    STA $00F4                       ; $9A87D2  8D F4 00     Mx
    LDA $00F3                       ; $9A87D5  AD F3 00     Mx
    STA $00D0                       ; $9A87D8  8D D0 00     Mx
    LDA $00F6                       ; $9A87DB  AD F6 00     Mx
    CMP $00D0                       ; $9A87DE  CD D0 00     Mx
    BCC L_9A87E6                    ; $9A87E1  90 03        Mx
    JMP L_9A881E                    ; $9A87E3  4C 1E 88     Mx
L_9A87E6:
    LDA #$000A                      ; $9A87E6  A9 0A 00     Mx
    STA $00D0                       ; $9A87E9  8D D0 00     Mx
    LDA $1D58                       ; $9A87EC  AD 58 1D     Mx
    ORA $0003                       ; $9A87EF  0D 03 00     Mx
    STA $00BA                       ; $9A87F2  8D BA 00     Mx
    INC $00D0                       ; $9A87F5  EE D0 00     Mx
    SEP #$20                        ; $9A87F8  E2 20        Mx
    LDA $00D0                       ; $9A87FA  AD D0 00     mx
    STA $4202                       ; $9A87FD  8D 02 42     mx
    LDA $00BA                       ; $9A8800  AD BA 00     mx
    STA $4203                       ; $9A8803  8D 03 42     mx
    NOP                             ; $9A8806  EA           mx
    NOP                             ; $9A8807  EA           mx
    NOP                             ; $9A8808  EA           mx
    REP #$20                        ; $9A8809  C2 20        mx
    LDA $4216                       ; $9A880B  AD 16 42     Mx
    STA $00BA                       ; $9A880E  8D BA 00     Mx
    LDA $00BB                       ; $9A8811  AD BB 00     Mx
    AND #$00FF                      ; $9A8814  29 FF 00     Mx
    SEC                             ; $9A8817  38           Mx
    SBC #$0005                      ; $9A8818  E9 05 00     Mx
    STA $00D6                       ; $9A881B  8D D6 00     Mx
L_9A881E:
    LDA #$FFF8                      ; $9A881E  A9 F8 FF     Mx
    STA $00D0                       ; $9A8821  8D D0 00     Mx
    LDA #$FFFC                      ; $9A8824  A9 FC FF     Mx
    STA $00D3                       ; $9A8827  8D D3 00     Mx
    STZ $00D6                       ; $9A882A  9C D6 00     Mx
    JMP L_9A8D65                    ; $9A882D  4C 65 8D     Mx
L_9A8830:
    PHP                             ; $9A8830  08           Mx
    REP #$30                        ; $9A8831  C2 30        Mx
    LDA $4212                       ; $9A8833  AD 12 42     MX
    SEP #$20                        ; $9A8836  E2 20        MX
    CLC                             ; $9A8838  18           mX
    ADC $1D57                       ; $9A8839  6D 57 1D     mX
    STA $1D57                       ; $9A883C  8D 57 1D     mX
    REP #$20                        ; $9A883F  C2 20        mX
    LDA $4212                       ; $9A8841  AD 12 42     MX
    TAX                             ; $9A8844  AA           MX
    SEP #$20                        ; $9A8845  E2 20        MX
    EOR $1D58                       ; $9A8847  4D 58 1D     mX
    STA $1D58                       ; $9A884A  8D 58 1D     mX
    TXA                             ; $9A884D  8A           mX
    ADC $1D59                       ; $9A884E  6D 59 1D     mX
    REP #$20                        ; $9A8851  C2 20        mX
    LDA $1D56                       ; $9A8853  AD 56 1D     MX
    INC                             ; $9A8856  1A           MX
    ROR                             ; $9A8857  6A           MX
    LSR $1D58                       ; $9A8858  4E 58 1D     MX
    EOR #$2B41                      ; $9A885B  49 41 2B     MX
    SBC #$000F                      ; $9A885E  E9 0F 00     MX
    STA $1D56                       ; $9A8861  8D 56 1D     MX
    LDA $1D58                       ; $9A8864  AD 58 1D     MX
    EOR #$1D87                      ; $9A8867  49 87 1D     MX
    STA $1D58                       ; $9A886A  8D 58 1D     MX
    LDA $1D52                       ; $9A886D  AD 52 1D     MX
    EOR $1D56                       ; $9A8870  4D 56 1D     MX
    STA $0002                       ; $9A8873  8D 02 00     MX
    INC                             ; $9A8876  1A           MX
    STA $1D52                       ; $9A8877  8D 52 1D     MX
    LDA $1D54                       ; $9A887A  AD 54 1D     MX
    EOR $1D58                       ; $9A887D  4D 58 1D     MX
    ADC #$0000                      ; $9A8880  69 00 00     MX
    STA $1D52                       ; $9A8883  8D 52 1D     MX
    STA $0004                       ; $9A8886  8D 04 00     MX
    PLP                             ; $9A8889  28           MX
    LDA $0002                       ; $9A888A  AD 02 00     Mx
    AND #$0003                      ; $9A888D  29 03 00     Mx
    BEQ L_9A8895                    ; $9A8890  F0 03        Mx
    JMP L_9A8986                    ; $9A8892  4C 86 89     Mx
L_9A8895:
    LDA #$03E7                      ; $9A8895  A9 E7 03     Mx
    STA $00D0                       ; $9A8898  8D D0 00     Mx
    PHP                             ; $9A889B  08           Mx
    REP #$30                        ; $9A889C  C2 30        Mx
    LDA $4212                       ; $9A889E  AD 12 42     MX
    SEP #$20                        ; $9A88A1  E2 20        MX
    CLC                             ; $9A88A3  18           mX
    ADC $1D57                       ; $9A88A4  6D 57 1D     mX
    STA $1D57                       ; $9A88A7  8D 57 1D     mX
    REP #$20                        ; $9A88AA  C2 20        mX
    LDA $4212                       ; $9A88AC  AD 12 42     MX
    TAX                             ; $9A88AF  AA           MX
    SEP #$20                        ; $9A88B0  E2 20        MX
    EOR $1D58                       ; $9A88B2  4D 58 1D     mX
    STA $1D58                       ; $9A88B5  8D 58 1D     mX
    TXA                             ; $9A88B8  8A           mX
    ADC $1D59                       ; $9A88B9  6D 59 1D     mX
    REP #$20                        ; $9A88BC  C2 20        mX
    LDA $1D56                       ; $9A88BE  AD 56 1D     MX
    INC                             ; $9A88C1  1A           MX
    ROR                             ; $9A88C2  6A           MX
    LSR $1D58                       ; $9A88C3  4E 58 1D     MX
    EOR #$2B41                      ; $9A88C6  49 41 2B     MX
    SBC #$000F                      ; $9A88C9  E9 0F 00     MX
    STA $1D56                       ; $9A88CC  8D 56 1D     MX
    LDA $1D58                       ; $9A88CF  AD 58 1D     MX
    EOR #$1D87                      ; $9A88D2  49 87 1D     MX
    STA $1D58                       ; $9A88D5  8D 58 1D     MX
    LDA $1D52                       ; $9A88D8  AD 52 1D     MX
    EOR $1D56                       ; $9A88DB  4D 56 1D     MX
    STA $0002                       ; $9A88DE  8D 02 00     MX
    INC                             ; $9A88E1  1A           MX
    STA $1D52                       ; $9A88E2  8D 52 1D     MX
    LDA $1D54                       ; $9A88E5  AD 54 1D     MX
    EOR $1D58                       ; $9A88E8  4D 58 1D     MX
    ADC #$0000                      ; $9A88EB  69 00 00     MX
    STA $1D52                       ; $9A88EE  8D 52 1D     MX
    STA $0004                       ; $9A88F1  8D 04 00     MX
    PLP                             ; $9A88F4  28           MX
    LDA $00D0                       ; $9A88F5  AD D0 00     Mx
    STA $00BA                       ; $9A88F8  8D BA 00     Mx
    SEP #$20                        ; $9A88FB  E2 20        Mx
    LDA $1D56                       ; $9A88FD  AD 56 1D     mx
    STA $4202                       ; $9A8900  8D 02 42     mx
    LDA $00BA                       ; $9A8903  AD BA 00     mx
    STA $4203                       ; $9A8906  8D 03 42     mx
    NOP                             ; $9A8909  EA           mx
    NOP                             ; $9A890A  EA           mx
    NOP                             ; $9A890B  EA           mx
    REP #$20                        ; $9A890C  C2 20        mx
    LDA $4216                       ; $9A890E  AD 16 42     Mx
    STA $00BA                       ; $9A8911  8D BA 00     Mx
    STA $00A8                       ; $9A8914  8D A8 00     Mx
    LDA $00D0                       ; $9A8917  AD D0 00     Mx
    STA $00BA                       ; $9A891A  8D BA 00     Mx
    SEP #$20                        ; $9A891D  E2 20        Mx
    LDA $1D56                       ; $9A891F  AD 56 1D     mx
    STA $4202                       ; $9A8922  8D 02 42     mx
    LDA $00BB                       ; $9A8925  AD BB 00     mx
    STA $4203                       ; $9A8928  8D 03 42     mx
    NOP                             ; $9A892B  EA           mx
    NOP                             ; $9A892C  EA           mx
    NOP                             ; $9A892D  EA           mx
    REP #$20                        ; $9A892E  C2 20        mx
    LDA $4216                       ; $9A8930  AD 16 42     Mx
    STA $00BB                       ; $9A8933  8D BB 00     Mx
    STZ $00F4                       ; $9A8936  9C F4 00     Mx
    STZ $00F2                       ; $9A8939  9C F2 00     Mx
    STA $00F3                       ; $9A893C  8D F3 00     Mx
    LDA $00F2                       ; $9A893F  AD F2 00     Mx
    CLC                             ; $9A8942  18           Mx
    ADC $00A8                       ; $9A8943  6D A8 00     Mx
    STA $00F2                       ; $9A8946  8D F2 00     Mx
    LDA $00F4                       ; $9A8949  AD F4 00     Mx
    ADC #$0000                      ; $9A894C  69 00 00     Mx
    STA $00F4                       ; $9A894F  8D F4 00     Mx
    LDA $00F3                       ; $9A8952  AD F3 00     Mx
    STA $00D0                       ; $9A8955  8D D0 00     Mx
    LDA $00F6                       ; $9A8958  AD F6 00     Mx
    CMP $00D0                       ; $9A895B  CD D0 00     Mx
    BEQ L_9A8962                    ; $9A895E  F0 02        Mx
    BPL L_9A8965                    ; $9A8960  10 03        Mx
L_9A8962:
    JMP L_9A8B0F                    ; $9A8962  4C 0F 8B     Mx
L_9A8965:
    LDA #$FFFC                      ; $9A8965  A9 FC FF     Mx
    STA $00D0                       ; $9A8968  8D D0 00     Mx
    LDA #$FFF6                      ; $9A896B  A9 F6 FF     Mx
    STA $00D3                       ; $9A896E  8D D3 00     Mx
    STZ $00D6                       ; $9A8971  9C D6 00     Mx
    LDA #$0008                      ; $9A8974  A9 08 00     Mx
    CLC                             ; $9A8977  18           Mx
    ADC $00D9                       ; $9A8978  6D D9 00     Mx
    STA $00D9                       ; $9A897B  8D D9 00     Mx
    BPL L_9A8983                    ; $9A897E  10 03        Mx
    JMP L_9A8D65                    ; $9A8980  4C 65 8D     Mx
L_9A8983:
    JMP L_9A8CE3                    ; $9A8983  4C E3 8C     Mx
L_9A8986:
    LDA $00F6                       ; $9A8986  AD F6 00     Mx
    CMP #$0037                      ; $9A8989  C9 37 00     Mx
    BCS L_9A89A1                    ; $9A898C  B0 13        Mx
    LDA $00B4                       ; $9A898E  AD B4 00     Mx
    CMP #$00C8                      ; $9A8991  C9 C8 00     Mx
    BCC L_9A89A1                    ; $9A8994  90 0B        Mx
    LDA $1D58                       ; $9A8996  AD 58 1D     Mx
    CMP #$4000                      ; $9A8999  C9 00 40     Mx
    BCC L_9A89DA                    ; $9A899C  90 3C        Mx
    JMP L_9A8A47                    ; $9A899E  4C 47 8A     Mx
L_9A89A1:
    LDA #$001F                      ; $9A89A1  A9 1F 00     Mx
    STA $00D0                       ; $9A89A4  8D D0 00     Mx
    LDA $00B4                       ; $9A89A7  AD B4 00     Mx
    CMP #$002C                      ; $9A89AA  C9 2C 00     Mx
    BCS L_9A89B5                    ; $9A89AD  B0 06        Mx
    LDA #$007F                      ; $9A89AF  A9 7F 00     Mx
    STA $00D0                       ; $9A89B2  8D D0 00     Mx
L_9A89B5:
    LDA $1D56                       ; $9A89B5  AD 56 1D     Mx
    AND $00D0                       ; $9A89B8  2D D0 00     Mx
    BEQ L_9A89C0                    ; $9A89BB  F0 03        Mx
    JMP L_9A8A47                    ; $9A89BD  4C 47 8A     Mx
L_9A89C0:
    LDY #$08                        ; $9A89C0  A0 08        Mx
    LDA ($CC),Y                     ; $9A89C2  B1 CC        Mx
    AND #$0008                      ; $9A89C4  29 08 00     Mx
    BNE L_9A8A47                    ; $9A89C7  D0 7E        Mx
    LDY #$DA                        ; $9A89C9  A0 DA        Mx
    LDA ($CC),Y                     ; $9A89CB  B1 CC        Mx
    CMP #$0002                      ; $9A89CD  C9 02 00     Mx
    BPL L_9A8A47                    ; $9A89D0  10 75        Mx
    LDX $0C19                       ; $9A89D2  AE 19 0C     Mx
    CPX $0A96                       ; $9A89D5  EC 96 0A     Mx
    BEQ L_9A8A47                    ; $9A89D8  F0 6D        Mx
L_9A89DA:
    LDA $00D9                       ; $9A89DA  AD D9 00     Mx
    SEC                             ; $9A89DD  38           Mx
    SBC #$0020                      ; $9A89DE  E9 20 00     Mx
    BPL L_9A89EA                    ; $9A89E1  10 07        Mx
    EOR #$FFFF                      ; $9A89E3  49 FF FF     Mx
    CLC                             ; $9A89E6  18           Mx
    ADC #$0001                      ; $9A89E7  69 01 00     Mx
L_9A89EA:
    CMP #$0020                      ; $9A89EA  C9 20 00     Mx
    BCC L_9A8A47                    ; $9A89ED  90 58        Mx
    LDA $00D9                       ; $9A89EF  AD D9 00     Mx
    SEC                             ; $9A89F2  38           Mx
    SBC #$0040                      ; $9A89F3  E9 40 00     Mx
    BPL L_9A89FF                    ; $9A89F6  10 07        Mx
    EOR #$FFFF                      ; $9A89F8  49 FF FF     Mx
    CLC                             ; $9A89FB  18           Mx
    ADC #$0001                      ; $9A89FC  69 01 00     Mx
L_9A89FF:
    CMP #$0020                      ; $9A89FF  C9 20 00     Mx
    BCC L_9A8A47                    ; $9A8A02  90 43        Mx
    LDA #$000A                      ; $9A8A04  A9 0A 00     Mx
    STA $00D6                       ; $9A8A07  8D D6 00     Mx
    LDA $1D58                       ; $9A8A0A  AD 58 1D     Mx
    AND #$0001                      ; $9A8A0D  29 01 00     Mx
    BNE L_9A8A1F                    ; $9A8A10  D0 0D        Mx
    LDA $00D6                       ; $9A8A12  AD D6 00     Mx
    EOR #$FFFF                      ; $9A8A15  49 FF FF     Mx
    CLC                             ; $9A8A18  18           Mx
    ADC #$0001                      ; $9A8A19  69 01 00     Mx
    STA $00D6                       ; $9A8A1C  8D D6 00     Mx
L_9A8A1F:
    LDA #$FFF1                      ; $9A8A1F  A9 F1 FF     Mx
    STA $00D0                       ; $9A8A22  8D D0 00     Mx
    LDA #$FFEC                      ; $9A8A25  A9 EC FF     Mx
    STA $00D3                       ; $9A8A28  8D D3 00     Mx
    LDA $00B4                       ; $9A8A2B  AD B4 00     Mx
    CMP #$012C                      ; $9A8A2E  C9 2C 01     Mx
    BCC L_9A8A44                    ; $9A8A31  90 11        Mx
    LDA $0006                       ; $9A8A33  AD 06 00     Mx
    AND #$0003                      ; $9A8A36  29 03 00     Mx
    BNE L_9A8A44                    ; $9A8A39  D0 09        Mx
    LDA #$0050                      ; $9A8A3B  A9 50 00     Mx
    STA $00D0                       ; $9A8A3E  8D D0 00     Mx
    STA $165D                       ; $9A8A41  8D 5D 16     Mx
L_9A8A44:
    JMP L_9A8D65                    ; $9A8A44  4C 65 8D     Mx
L_9A8A47:
    PHP                             ; $9A8A47  08           Mx
    REP #$30                        ; $9A8A48  C2 30        Mx
    LDA $4212                       ; $9A8A4A  AD 12 42     MX
    SEP #$20                        ; $9A8A4D  E2 20        MX
    CLC                             ; $9A8A4F  18           mX
    ADC $1D57                       ; $9A8A50  6D 57 1D     mX
    STA $1D57                       ; $9A8A53  8D 57 1D     mX
    REP #$20                        ; $9A8A56  C2 20        mX
    LDA $4212                       ; $9A8A58  AD 12 42     MX
    TAX                             ; $9A8A5B  AA           MX
    SEP #$20                        ; $9A8A5C  E2 20        MX
    EOR $1D58                       ; $9A8A5E  4D 58 1D     mX
    STA $1D58                       ; $9A8A61  8D 58 1D     mX
    TXA                             ; $9A8A64  8A           mX
    ADC $1D59                       ; $9A8A65  6D 59 1D     mX
    REP #$20                        ; $9A8A68  C2 20        mX
    LDA $1D56                       ; $9A8A6A  AD 56 1D     MX
    INC                             ; $9A8A6D  1A           MX
    ROR                             ; $9A8A6E  6A           MX
    LSR $1D58                       ; $9A8A6F  4E 58 1D     MX
    EOR #$2B41                      ; $9A8A72  49 41 2B     MX
    SBC #$000F                      ; $9A8A75  E9 0F 00     MX
    STA $1D56                       ; $9A8A78  8D 56 1D     MX
    LDA $1D58                       ; $9A8A7B  AD 58 1D     MX
    EOR #$1D87                      ; $9A8A7E  49 87 1D     MX
    STA $1D58                       ; $9A8A81  8D 58 1D     MX
    LDA $1D52                       ; $9A8A84  AD 52 1D     MX
    EOR $1D56                       ; $9A8A87  4D 56 1D     MX
    STA $0002                       ; $9A8A8A  8D 02 00     MX
    INC                             ; $9A8A8D  1A           MX
    STA $1D52                       ; $9A8A8E  8D 52 1D     MX
    LDA $1D54                       ; $9A8A91  AD 54 1D     MX
    EOR $1D58                       ; $9A8A94  4D 58 1D     MX
    ADC #$0000                      ; $9A8A97  69 00 00     MX
    STA $1D52                       ; $9A8A9A  8D 52 1D     MX
    STA $0004                       ; $9A8A9D  8D 04 00     MX
    PLP                             ; $9A8AA0  28           MX
    LDA #$03E7                      ; $9A8AA1  A9 E7 03     Mx
    STA $00BA                       ; $9A8AA4  8D BA 00     Mx
    SEP #$20                        ; $9A8AA7  E2 20        Mx
    LDA $1D56                       ; $9A8AA9  AD 56 1D     mx
    STA $4202                       ; $9A8AAC  8D 02 42     mx
    LDA $00BA                       ; $9A8AAF  AD BA 00     mx
    STA $4203                       ; $9A8AB2  8D 03 42     mx
    NOP                             ; $9A8AB5  EA           mx
    NOP                             ; $9A8AB6  EA           mx
    NOP                             ; $9A8AB7  EA           mx
    REP #$20                        ; $9A8AB8  C2 20        mx
    LDA $4216                       ; $9A8ABA  AD 16 42     Mx
    STA $00BA                       ; $9A8ABD  8D BA 00     Mx
    STA $00A8                       ; $9A8AC0  8D A8 00     Mx
    LDA #$03E7                      ; $9A8AC3  A9 E7 03     Mx
    STA $00BA                       ; $9A8AC6  8D BA 00     Mx
    SEP #$20                        ; $9A8AC9  E2 20        Mx
    LDA $1D56                       ; $9A8ACB  AD 56 1D     mx
    STA $4202                       ; $9A8ACE  8D 02 42     mx
    LDA $00BB                       ; $9A8AD1  AD BB 00     mx
    STA $4203                       ; $9A8AD4  8D 03 42     mx
    NOP                             ; $9A8AD7  EA           mx
    NOP                             ; $9A8AD8  EA           mx
    NOP                             ; $9A8AD9  EA           mx
    REP #$20                        ; $9A8ADA  C2 20        mx
    LDA $4216                       ; $9A8ADC  AD 16 42     Mx
    STA $00BB                       ; $9A8ADF  8D BB 00     Mx
    STZ $00F4                       ; $9A8AE2  9C F4 00     Mx
    STZ $00F2                       ; $9A8AE5  9C F2 00     Mx
    STA $00F3                       ; $9A8AE8  8D F3 00     Mx
    LDA $00F2                       ; $9A8AEB  AD F2 00     Mx
    CLC                             ; $9A8AEE  18           Mx
    ADC $00A8                       ; $9A8AEF  6D A8 00     Mx
    STA $00F2                       ; $9A8AF2  8D F2 00     Mx
    LDA $00F4                       ; $9A8AF5  AD F4 00     Mx
    ADC #$0000                      ; $9A8AF8  69 00 00     Mx
    STA $00F4                       ; $9A8AFB  8D F4 00     Mx
    LDA $00F3                       ; $9A8AFE  AD F3 00     Mx
    STA $00D0                       ; $9A8B01  8D D0 00     Mx
    LDA $00F6                       ; $9A8B04  AD F6 00     Mx
    CMP $00D0                       ; $9A8B07  CD D0 00     Mx
    BCC L_9A8B0F                    ; $9A8B0A  90 03        Mx
    JMP L_9A8CE3                    ; $9A8B0C  4C E3 8C     Mx
L_9A8B0F:
    REP #$10                        ; $9A8B0F  C2 10        Mx
    LDA #$001F                      ; $9A8B11  A9 1F 00     MX
    STA $00D0                       ; $9A8B14  8D D0 00     MX
    LDA $1D57                       ; $9A8B17  AD 57 1D     MX
    AND $00D0                       ; $9A8B1A  2D D0 00     MX
    ASL                             ; $9A8B1D  0A           MX
    TAX                             ; $9A8B1E  AA           MX
    LDA $92BE,X                     ; $9A8B1F  BD BE 92     MX
    LDY $00B4                       ; $9A8B22  AC B4 00     MX
    CPY #$0064                      ; $9A8B25  C0 64 00     MX
    BCS L_9A8B2E                    ; $9A8B28  B0 04        MX
    CMP #$8000                      ; $9A8B2A  C9 00 80     MX
    ROR                             ; $9A8B2D  6A           MX
L_9A8B2E:
    STA $00DF                       ; $9A8B2E  8D DF 00     MX
    LDA $92C6,X                     ; $9A8B31  BD C6 92     MX
    LDY $00B4                       ; $9A8B34  AC B4 00     MX
    CPY #$0064                      ; $9A8B37  C0 64 00     MX
    BCS L_9A8B44                    ; $9A8B3A  B0 08        MX
    CMP #$8000                      ; $9A8B3C  C9 00 80     MX
    ROR                             ; $9A8B3F  6A           MX
    CMP #$8000                      ; $9A8B40  C9 00 80     MX
    ROR                             ; $9A8B43  6A           MX
L_9A8B44:
    STA $00D9                       ; $9A8B44  8D D9 00     MX
    SEP #$10                        ; $9A8B47  E2 10        MX
    LDA $0003                       ; $9A8B49  AD 03 00     Mx
    AND #$0001                      ; $9A8B4C  29 01 00     Mx
    BNE L_9A8B8A                    ; $9A8B4F  D0 39        Mx
    LDA #$0002                      ; $9A8B51  A9 02 00     Mx
    STA $00D0                       ; $9A8B54  8D D0 00     Mx
    LDA $0004                       ; $9A8B57  AD 04 00     Mx
    LSR                             ; $9A8B5A  4A           Mx
    STA $00BA                       ; $9A8B5B  8D BA 00     Mx
    INC $00D0                       ; $9A8B5E  EE D0 00     Mx
    SEP #$20                        ; $9A8B61  E2 20        Mx
    LDA $00D0                       ; $9A8B63  AD D0 00     mx
    STA $4202                       ; $9A8B66  8D 02 42     mx
    LDA $00BA                       ; $9A8B69  AD BA 00     mx
    STA $4203                       ; $9A8B6C  8D 03 42     mx
    NOP                             ; $9A8B6F  EA           mx
    NOP                             ; $9A8B70  EA           mx
    NOP                             ; $9A8B71  EA           mx
    REP #$20                        ; $9A8B72  C2 20        mx
    LDA $4216                       ; $9A8B74  AD 16 42     Mx
    STA $00BA                       ; $9A8B77  8D BA 00     Mx
    LDA $00BB                       ; $9A8B7A  AD BB 00     Mx
    AND #$00FF                      ; $9A8B7D  29 FF 00     Mx
    CLC                             ; $9A8B80  18           Mx
    ADC #$0005                      ; $9A8B81  69 05 00     Mx
    STA $00D0                       ; $9A8B84  8D D0 00     Mx
    JMP L_9A8B97                    ; $9A8B87  4C 97 8B     Mx
L_9A8B8A:
    LDA $0005                       ; $9A8B8A  AD 05 00     Mx
    AND #$0003                      ; $9A8B8D  29 03 00     Mx
    CLC                             ; $9A8B90  18           Mx
    ADC #$0006                      ; $9A8B91  69 06 00     Mx
    STA $00D0                       ; $9A8B94  8D D0 00     Mx
L_9A8B97:
    LDA $00D9                       ; $9A8B97  AD D9 00     Mx
    BPL L_9A8BA3                    ; $9A8B9A  10 07        Mx
    EOR #$FFFF                      ; $9A8B9C  49 FF FF     Mx
    CLC                             ; $9A8B9F  18           Mx
    ADC #$0001                      ; $9A8BA0  69 01 00     Mx
L_9A8BA3:
    STZ $00C4                       ; $9A8BA3  9C C4 00     Mx
    STA $00C2                       ; $9A8BA6  8D C2 00     Mx
    LDA $00D0                       ; $9A8BA9  AD D0 00     Mx
    SEP #$20                        ; $9A8BAC  E2 20        Mx
    STA $4202                       ; $9A8BAE  8D 02 42     mx
    LDA $00C2                       ; $9A8BB1  AD C2 00     mx
    STA $4203                       ; $9A8BB4  8D 03 42     mx
    NOP                             ; $9A8BB7  EA           mx
    NOP                             ; $9A8BB8  EA           mx
    NOP                             ; $9A8BB9  EA           mx
    REP #$20                        ; $9A8BBA  C2 20        mx
    LDA $4216                       ; $9A8BBC  AD 16 42     Mx
    STA $00A8                       ; $9A8BBF  8D A8 00     Mx
    LDA $00D0                       ; $9A8BC2  AD D0 00     Mx
    SEP #$20                        ; $9A8BC5  E2 20        Mx
    STA $4202                       ; $9A8BC7  8D 02 42     mx
    LDA $00C3                       ; $9A8BCA  AD C3 00     mx
    STA $4203                       ; $9A8BCD  8D 03 42     mx
    NOP                             ; $9A8BD0  EA           mx
    REP #$20                        ; $9A8BD1  C2 20        mx
    STZ $00F2                       ; $9A8BD3  9C F2 00     Mx
    STZ $00F0                       ; $9A8BD6  9C F0 00     Mx
    LDA $4216                       ; $9A8BD9  AD 16 42     Mx
    STA $00F1                       ; $9A8BDC  8D F1 00     Mx
    LDA $00F0                       ; $9A8BDF  AD F0 00     Mx
    CLC                             ; $9A8BE2  18           Mx
    ADC $00A8                       ; $9A8BE3  6D A8 00     Mx
    STA $00F0                       ; $9A8BE6  8D F0 00     Mx
    LDA $00F2                       ; $9A8BE9  AD F2 00     Mx
    ADC #$0000                      ; $9A8BEC  69 00 00     Mx
    STA $00F2                       ; $9A8BEF  8D F2 00     Mx
    LDA $00D9                       ; $9A8BF2  AD D9 00     Mx
    BPL L_9A8C13                    ; $9A8BF5  10 1C        Mx
    LDA $00F0                       ; $9A8BF7  AD F0 00     Mx
    EOR #$FFFF                      ; $9A8BFA  49 FF FF     Mx
    CLC                             ; $9A8BFD  18           Mx
    ADC #$0001                      ; $9A8BFE  69 01 00     Mx
    STA $00C2                       ; $9A8C01  8D C2 00     Mx
    LDA $00F2                       ; $9A8C04  AD F2 00     Mx
    EOR #$FFFF                      ; $9A8C07  49 FF FF     Mx
    ADC #$0000                      ; $9A8C0A  69 00 00     Mx
    STA $00C4                       ; $9A8C0D  8D C4 00     Mx
    JMP L_9A8C1F                    ; $9A8C10  4C 1F 8C     Mx
L_9A8C13:
    LDA $00F0                       ; $9A8C13  AD F0 00     Mx
    STA $00C2                       ; $9A8C16  8D C2 00     Mx
    LDA $00F2                       ; $9A8C19  AD F2 00     Mx
    STA $00C4                       ; $9A8C1C  8D C4 00     Mx
L_9A8C1F:
    LDA $00DF                       ; $9A8C1F  AD DF 00     Mx
    BPL L_9A8C2B                    ; $9A8C22  10 07        Mx
    EOR #$FFFF                      ; $9A8C24  49 FF FF     Mx
    CLC                             ; $9A8C27  18           Mx
    ADC #$0001                      ; $9A8C28  69 01 00     Mx
L_9A8C2B:
    STZ $00C8                       ; $9A8C2B  9C C8 00     Mx
    STA $00C6                       ; $9A8C2E  8D C6 00     Mx
    LDA $00D0                       ; $9A8C31  AD D0 00     Mx
    SEP #$20                        ; $9A8C34  E2 20        Mx
    STA $4202                       ; $9A8C36  8D 02 42     mx
    LDA $00C6                       ; $9A8C39  AD C6 00     mx
    STA $4203                       ; $9A8C3C  8D 03 42     mx
    NOP                             ; $9A8C3F  EA           mx
    NOP                             ; $9A8C40  EA           mx
    NOP                             ; $9A8C41  EA           mx
    REP #$20                        ; $9A8C42  C2 20        mx
    LDA $4216                       ; $9A8C44  AD 16 42     Mx
    STA $00A8                       ; $9A8C47  8D A8 00     Mx
    LDA $00D0                       ; $9A8C4A  AD D0 00     Mx
    SEP #$20                        ; $9A8C4D  E2 20        Mx
    STA $4202                       ; $9A8C4F  8D 02 42     mx
    LDA $00C7                       ; $9A8C52  AD C7 00     mx
    STA $4203                       ; $9A8C55  8D 03 42     mx
    NOP                             ; $9A8C58  EA           mx
    REP #$20                        ; $9A8C59  C2 20        mx
    STZ $00F2                       ; $9A8C5B  9C F2 00     Mx
    STZ $00F0                       ; $9A8C5E  9C F0 00     Mx
    LDA $4216                       ; $9A8C61  AD 16 42     Mx
    STA $00F1                       ; $9A8C64  8D F1 00     Mx
    LDA $00F0                       ; $9A8C67  AD F0 00     Mx
    CLC                             ; $9A8C6A  18           Mx
    ADC $00A8                       ; $9A8C6B  6D A8 00     Mx
    STA $00F0                       ; $9A8C6E  8D F0 00     Mx
    LDA $00F2                       ; $9A8C71  AD F2 00     Mx
    ADC #$0000                      ; $9A8C74  69 00 00     Mx
    STA $00F2                       ; $9A8C77  8D F2 00     Mx
    LDA $00DF                       ; $9A8C7A  AD DF 00     Mx
    BPL L_9A8C9B                    ; $9A8C7D  10 1C        Mx
    LDA $00F0                       ; $9A8C7F  AD F0 00     Mx
    EOR #$FFFF                      ; $9A8C82  49 FF FF     Mx
    CLC                             ; $9A8C85  18           Mx
    ADC #$0001                      ; $9A8C86  69 01 00     Mx
    STA $00C6                       ; $9A8C89  8D C6 00     Mx
    LDA $00F2                       ; $9A8C8C  AD F2 00     Mx
    EOR #$FFFF                      ; $9A8C8F  49 FF FF     Mx
    ADC #$0000                      ; $9A8C92  69 00 00     Mx
    STA $00C8                       ; $9A8C95  8D C8 00     Mx
    JMP L_9A8CA7                    ; $9A8C98  4C A7 8C     Mx
L_9A8C9B:
    LDA $00F0                       ; $9A8C9B  AD F0 00     Mx
    STA $00C6                       ; $9A8C9E  8D C6 00     Mx
    LDA $00F2                       ; $9A8CA1  AD F2 00     Mx
    STA $00C8                       ; $9A8CA4  8D C8 00     Mx
L_9A8CA7:
    LDA $00C3                       ; $9A8CA7  AD C3 00     Mx
    CMP #$8000                      ; $9A8CAA  C9 00 80     Mx
    ROR                             ; $9A8CAD  6A           Mx
    CMP #$8000                      ; $9A8CAE  C9 00 80     Mx
    ROR                             ; $9A8CB1  6A           Mx
    CMP #$8000                      ; $9A8CB2  C9 00 80     Mx
    ROR                             ; $9A8CB5  6A           Mx
    CMP #$8000                      ; $9A8CB6  C9 00 80     Mx
    ROR                             ; $9A8CB9  6A           Mx
    CMP #$0000                      ; $9A8CBA  C9 00 00     Mx
    BMI L_9A8CC7                    ; $9A8CBD  30 08        Mx
    CMP #$0007                      ; $9A8CBF  C9 07 00     Mx
    BCS L_9A8CC7                    ; $9A8CC2  B0 03        Mx
    LDA #$0007                      ; $9A8CC4  A9 07 00     Mx
L_9A8CC7:
    STA $00D0                       ; $9A8CC7  8D D0 00     Mx
    LDA $00C7                       ; $9A8CCA  AD C7 00     Mx
    CMP #$8000                      ; $9A8CCD  C9 00 80     Mx
    ROR                             ; $9A8CD0  6A           Mx
    CMP #$8000                      ; $9A8CD1  C9 00 80     Mx
    ROR                             ; $9A8CD4  6A           Mx
    CMP #$8000                      ; $9A8CD5  C9 00 80     Mx
    ROR                             ; $9A8CD8  6A           Mx
    CMP #$8000                      ; $9A8CD9  C9 00 80     Mx
    ROR                             ; $9A8CDC  6A           Mx
    STA $00D6                       ; $9A8CDD  8D D6 00     Mx
    JMP L_9A8D5F                    ; $9A8CE0  4C 5F 8D     Mx
L_9A8CE3:
    LDX $0A96                       ; $9A8CE3  AE 96 0A     Mx
    CPX $0C19                       ; $9A8CE6  EC 19 0C     Mx
    BNE L_9A8CF0                    ; $9A8CE9  D0 05        Mx
    STZ $00D6                       ; $9A8CEB  9C D6 00     Mx
    BRA L_9A8D27                    ; $9A8CEE  80 37        Mx
L_9A8CF0:
    LDA #$0002                      ; $9A8CF0  A9 02 00     Mx
    STA $00D0                       ; $9A8CF3  8D D0 00     Mx
    LDA $0006                       ; $9A8CF6  AD 06 00     Mx
    LSR                             ; $9A8CF9  4A           Mx
    LSR                             ; $9A8CFA  4A           Mx
    STA $00BA                       ; $9A8CFB  8D BA 00     Mx
    INC $00D0                       ; $9A8CFE  EE D0 00     Mx
    SEP #$20                        ; $9A8D01  E2 20        Mx
    LDA $00D0                       ; $9A8D03  AD D0 00     mx
    STA $4202                       ; $9A8D06  8D 02 42     mx
    LDA $00BA                       ; $9A8D09  AD BA 00     mx
    STA $4203                       ; $9A8D0C  8D 03 42     mx
    NOP                             ; $9A8D0F  EA           mx
    NOP                             ; $9A8D10  EA           mx
    NOP                             ; $9A8D11  EA           mx
    REP #$20                        ; $9A8D12  C2 20        mx
    LDA $4216                       ; $9A8D14  AD 16 42     Mx
    STA $00BA                       ; $9A8D17  8D BA 00     Mx
    LDA $00BB                       ; $9A8D1A  AD BB 00     Mx
    AND #$00FF                      ; $9A8D1D  29 FF 00     Mx
    SEC                             ; $9A8D20  38           Mx
    SBC #$0001                      ; $9A8D21  E9 01 00     Mx
    STA $00D6                       ; $9A8D24  8D D6 00     Mx
L_9A8D27:
    LDA #$0002                      ; $9A8D27  A9 02 00     Mx
    STA $00D0                       ; $9A8D2A  8D D0 00     Mx
    LDA $1D56                       ; $9A8D2D  AD 56 1D     Mx
    EOR $1D57                       ; $9A8D30  4D 57 1D     Mx
    STA $00BA                       ; $9A8D33  8D BA 00     Mx
    INC $00D0                       ; $9A8D36  EE D0 00     Mx
    SEP #$20                        ; $9A8D39  E2 20        Mx
    LDA $00D0                       ; $9A8D3B  AD D0 00     mx
    STA $4202                       ; $9A8D3E  8D 02 42     mx
    LDA $00BA                       ; $9A8D41  AD BA 00     mx
    STA $4203                       ; $9A8D44  8D 03 42     mx
    NOP                             ; $9A8D47  EA           mx
    NOP                             ; $9A8D48  EA           mx
    NOP                             ; $9A8D49  EA           mx
    REP #$20                        ; $9A8D4A  C2 20        mx
    LDA $4216                       ; $9A8D4C  AD 16 42     Mx
    STA $00BA                       ; $9A8D4F  8D BA 00     Mx
    LDA $00BB                       ; $9A8D52  AD BB 00     Mx
    AND #$00FF                      ; $9A8D55  29 FF 00     Mx
    SEC                             ; $9A8D58  38           Mx
    SBC #$0001                      ; $9A8D59  E9 01 00     Mx
    STA $00D0                       ; $9A8D5C  8D D0 00     Mx
L_9A8D5F:
    LDA #$FFFB                      ; $9A8D5F  A9 FB FF     Mx
    STA $00D3                       ; $9A8D62  8D D3 00     Mx
L_9A8D65:
    SEP #$10                        ; $9A8D65  E2 10        Mx
    STZ $1D76                       ; $9A8D67  9C 76 1D     Mx
    LDA $0CCB                       ; $9A8D6A  AD CB 0C     Mx
    CMP #$0002                      ; $9A8D6D  C9 02 00     Mx
    BCC L_9A8D7C                    ; $9A8D70  90 0A        Mx
    BNE L_9A8D85                    ; $9A8D72  D0 11        Mx
    LDA $0CC7                       ; $9A8D74  AD C7 0C     Mx
    CMP #$001E                      ; $9A8D77  C9 1E 00     Mx
    BCS L_9A8D85                    ; $9A8D7A  B0 09        Mx
L_9A8D7C:
    LDA #$0004                      ; $9A8D7C  A9 04 00     Mx
    JSL L_9ABBD5                    ; $9A8D7F  22 D5 BB 9A  Mx
    BRA L_9A8D88                    ; $9A8D83  80 03        Mx
L_9A8D85:
    JSR L_9AA0ED                    ; $9A8D85  20 ED A0     Mx
L_9A8D88:
    LDA $00D3                       ; $9A8D88  AD D3 00     Mx
    EOR #$FFFF                      ; $9A8D8B  49 FF FF     Mx
    CLC                             ; $9A8D8E  18           Mx
    ADC #$0001                      ; $9A8D8F  69 01 00     Mx
    CMP #$0040                      ; $9A8D92  C9 40 00     Mx
    BCC L_9A8D9A                    ; $9A8D95  90 03        Mx
    LDA #$0040                      ; $9A8D97  A9 40 00     Mx
L_9A8D9A:
    STA $00D3                       ; $9A8D9A  8D D3 00     Mx
    LDY #$62                        ; $9A8D9D  A0 62        Mx
    LDA ($CC),Y                     ; $9A8D9F  B1 CC        Mx
    STA $00D9                       ; $9A8DA1  8D D9 00     Mx
    BMI L_9A8DB3                    ; $9A8DA4  30 0D        Mx
    LDA $00D0                       ; $9A8DA6  AD D0 00     Mx
    EOR #$FFFF                      ; $9A8DA9  49 FF FF     Mx
    CLC                             ; $9A8DAC  18           Mx
    ADC #$0001                      ; $9A8DAD  69 01 00     Mx
    STA $00D0                       ; $9A8DB0  8D D0 00     Mx
L_9A8DB3:
    LDA $00F6                       ; $9A8DB3  AD F6 00     Mx
    LDX #$00                        ; $9A8DB6  A2 00        Mx
L_9A8DB8:
    INX                             ; $9A8DB8  E8           Mx
    SEC                             ; $9A8DB9  38           Mx
    SBC #$03E8                      ; $9A8DBA  E9 E8 03     Mx
    BPL L_9A8DB8                    ; $9A8DBD  10 F9        Mx
    DEX                             ; $9A8DBF  CA           Mx
    CLC                             ; $9A8DC0  18           Mx
    ADC #$03E8                      ; $9A8DC1  69 E8 03     Mx
    PHA                             ; $9A8DC4  48           Mx
    TXA                             ; $9A8DC5  8A           Mx
    AND #$00FF                      ; $9A8DC6  29 FF 00     Mx
    STA $1131                       ; $9A8DC9  8D 31 11     Mx
    PLA                             ; $9A8DCC  68           Mx
    LDX #$00                        ; $9A8DCD  A2 00        Mx
L_9A8DCF:
    INX                             ; $9A8DCF  E8           Mx
    SEC                             ; $9A8DD0  38           Mx
    SBC #$0064                      ; $9A8DD1  E9 64 00     Mx
    BPL L_9A8DCF                    ; $9A8DD4  10 F9        Mx
    DEX                             ; $9A8DD6  CA           Mx
    CLC                             ; $9A8DD7  18           Mx
    ADC #$0064                      ; $9A8DD8  69 64 00     Mx
    PHA                             ; $9A8DDB  48           Mx
    TXA                             ; $9A8DDC  8A           Mx
    AND #$00FF                      ; $9A8DDD  29 FF 00     Mx
    STA $1133                       ; $9A8DE0  8D 33 11     Mx
    PLA                             ; $9A8DE3  68           Mx
    LDX #$00                        ; $9A8DE4  A2 00        Mx
L_9A8DE6:
    INX                             ; $9A8DE6  E8           Mx
    SEC                             ; $9A8DE7  38           Mx
    SBC #$000A                      ; $9A8DE8  E9 0A 00     Mx
    BPL L_9A8DE6                    ; $9A8DEB  10 F9        Mx
    DEX                             ; $9A8DED  CA           Mx
    TXA                             ; $9A8DEE  8A           Mx
    AND #$00FF                      ; $9A8DEF  29 FF 00     Mx
    STA $1135                       ; $9A8DF2  8D 35 11     Mx
    LDA $00D9                       ; $9A8DF5  AD D9 00     Mx
    CLC                             ; $9A8DF8  18           Mx
    ADC $00D0                       ; $9A8DF9  6D D0 00     Mx
    STA $0BC3                       ; $9A8DFC  8D C3 0B     Mx
    STA $00D9                       ; $9A8DFF  8D D9 00     Mx
    STZ $0C19                       ; $9A8E02  9C 19 0C     Mx
    LDA #$0374                      ; $9A8E05  A9 74 03     Mx
    CLC                             ; $9A8E08  18           Mx
    ADC $00D6                       ; $9A8E09  6D D6 00     Mx
    STA $0BC7                       ; $9A8E0C  8D C7 0B     Mx
    LDA #$0068                      ; $9A8E0F  A9 68 00     Mx
    CLC                             ; $9A8E12  18           Mx
    ADC $00D3                       ; $9A8E13  6D D3 00     Mx
    STA $0BC5                       ; $9A8E16  8D C5 0B     Mx
    LDA $00D9                       ; $9A8E19  AD D9 00     Mx
    SEC                             ; $9A8E1C  38           Mx
    SBC $0BD9                       ; $9A8E1D  ED D9 0B     Mx
    STA $00D9                       ; $9A8E20  8D D9 00     Mx
    LDA $0BC7                       ; $9A8E23  AD C7 0B     Mx
    SEC                             ; $9A8E26  38           Mx
    SBC $0BE1                       ; $9A8E27  ED E1 0B     Mx
    STA $00DF                       ; $9A8E2A  8D DF 00     Mx
    LDA $00D3                       ; $9A8E2D  AD D3 00     Mx
    STA $00D6                       ; $9A8E30  8D D6 00     Mx
    LDA $00D9                       ; $9A8E33  AD D9 00     Mx
    STA $00DC                       ; $9A8E36  8D DC 00     Mx
    LDA $00DF                       ; $9A8E39  AD DF 00     Mx
    STA $00B7                       ; $9A8E3C  8D B7 00     Mx
    LDA $00DC                       ; $9A8E3F  AD DC 00     Mx
    BPL L_9A8E4E                    ; $9A8E42  10 0A        Mx
    EOR #$FFFF                      ; $9A8E44  49 FF FF     Mx
    CLC                             ; $9A8E47  18           Mx
    ADC #$0001                      ; $9A8E48  69 01 00     Mx
    STA $00DC                       ; $9A8E4B  8D DC 00     Mx
L_9A8E4E:
    LDA $00B7                       ; $9A8E4E  AD B7 00     Mx
    BPL L_9A8E5D                    ; $9A8E51  10 0A        Mx
    EOR #$FFFF                      ; $9A8E53  49 FF FF     Mx
    CLC                             ; $9A8E56  18           Mx
    ADC #$0001                      ; $9A8E57  69 01 00     Mx
    STA $00B7                       ; $9A8E5A  8D B7 00     Mx
L_9A8E5D:
    LDA $00DC                       ; $9A8E5D  AD DC 00     Mx
    CMP $00B7                       ; $9A8E60  CD B7 00     Mx
    BCS L_9A8E77                    ; $9A8E63  B0 12        Mx
    LDA $00B7                       ; $9A8E65  AD B7 00     Mx
    STA $00BA                       ; $9A8E68  8D BA 00     Mx
    LDA $00DC                       ; $9A8E6B  AD DC 00     Mx
    STA $00B7                       ; $9A8E6E  8D B7 00     Mx
    LDA $00BA                       ; $9A8E71  AD BA 00     Mx
    STA $00DC                       ; $9A8E74  8D DC 00     Mx
L_9A8E77:
    LSR $00B7                       ; $9A8E77  4E B7 00     Mx
    LDA $00B7                       ; $9A8E7A  AD B7 00     Mx
    CLC                             ; $9A8E7D  18           Mx
    ADC $00DC                       ; $9A8E7E  6D DC 00     Mx
    STA $00DC                       ; $9A8E81  8D DC 00     Mx
    LSR $00B7                       ; $9A8E84  4E B7 00     Mx
    LSR $00B7                       ; $9A8E87  4E B7 00     Mx
    LDA $00DC                       ; $9A8E8A  AD DC 00     Mx
    SEC                             ; $9A8E8D  38           Mx
    SBC $00B7                       ; $9A8E8E  ED B7 00     Mx
    STA $00DC                       ; $9A8E91  8D DC 00     Mx
    CMP #$0083                      ; $9A8E94  C9 83 00     Mx
    BCC L_9A8EBF                    ; $9A8E97  90 26        Mx
    STA $00B7                       ; $9A8E99  8D B7 00     Mx
    LDA #$0082                      ; $9A8E9C  A9 82 00     Mx
    STA $00DC                       ; $9A8E9F  8D DC 00     Mx
    LDA $00B7                       ; $9A8EA2  AD B7 00     Mx
    SEC                             ; $9A8EA5  38           Mx
    SBC $00DC                       ; $9A8EA6  ED DC 00     Mx
    STA $00B7                       ; $9A8EA9  8D B7 00     Mx
    LSR $00B7                       ; $9A8EAC  4E B7 00     Mx
    LSR $00B7                       ; $9A8EAF  4E B7 00     Mx
    LSR $00B7                       ; $9A8EB2  4E B7 00     Mx
    LDA $00DC                       ; $9A8EB5  AD DC 00     Mx
    CLC                             ; $9A8EB8  18           Mx
    ADC $00B7                       ; $9A8EB9  6D B7 00     Mx
    STA $00DC                       ; $9A8EBC  8D DC 00     Mx
L_9A8EBF:
    LSR                             ; $9A8EBF  4A           Mx
    SEP #$20                        ; $9A8EC0  E2 20        Mx
    STA $4202                       ; $9A8EC2  8D 02 42     mx
    LDA #$6E                        ; $9A8EC5  A9 6E        mx
    STA $4203                       ; $9A8EC7  8D 03 42     mx
    NOP                             ; $9A8ECA  EA           mx
    NOP                             ; $9A8ECB  EA           mx
    NOP                             ; $9A8ECC  EA           mx
    REP #$20                        ; $9A8ECD  C2 20        mx
    LDA $4216                       ; $9A8ECF  AD 16 42     Mx
    STA $00F2                       ; $9A8ED2  8D F2 00     Mx
    STZ $00F4                       ; $9A8ED5  9C F4 00     Mx
    ASL $00F2                       ; $9A8ED8  0E F2 00     Mx
    ROL $00F4                       ; $9A8EDB  2E F4 00     Mx
    LDY #$08                        ; $9A8EDE  A0 08        Mx
    LDA ($CC),Y                     ; $9A8EE0  B1 CC        Mx
    STA $00B2                       ; $9A8EE2  8D B2 00     Mx
    LDA $00F3                       ; $9A8EE5  AD F3 00     Mx
    AND #$FFFF                      ; $9A8EE8  29 FF FF     Mx
    STA $00DC                       ; $9A8EEB  8D DC 00     Mx
    LDX $0B9C                       ; $9A8EEE  AE 9C 0B     Mx
    BNE L_9A8F14                    ; $9A8EF1  D0 21        Mx
    STA $00D3                       ; $9A8EF3  8D D3 00     Mx
    LSR $00D3                       ; $9A8EF6  4E D3 00     Mx
    LSR $00D3                       ; $9A8EF9  4E D3 00     Mx
    LDA $00DC                       ; $9A8EFC  AD DC 00     Mx
    SEC                             ; $9A8EFF  38           Mx
    SBC $00D3                       ; $9A8F00  ED D3 00     Mx
    STA $00DC                       ; $9A8F03  8D DC 00     Mx
    CMP #$0023                      ; $9A8F06  C9 23 00     Mx
    BCS L_9A8F1F                    ; $9A8F09  B0 14        Mx
    LDA #$0023                      ; $9A8F0B  A9 23 00     Mx
    STA $00DC                       ; $9A8F0E  8D DC 00     Mx
    JMP L_9A8F1F                    ; $9A8F11  4C 1F 8F     Mx
L_9A8F14:
    CMP #$0032                      ; $9A8F14  C9 32 00     Mx
    BCS L_9A8F1F                    ; $9A8F17  B0 06        Mx
    LDA #$0032                      ; $9A8F19  A9 32 00     Mx
    STA $00DC                       ; $9A8F1C  8D DC 00     Mx
L_9A8F1F:
    LDY #$04                        ; $9A8F1F  A0 04        Mx
    LDA ($CC),Y                     ; $9A8F21  B1 CC        Mx
    CMP #$000E                      ; $9A8F23  C9 0E 00     Mx
    BEQ L_9A8F49                    ; $9A8F26  F0 21        Mx
    CMP #$001C                      ; $9A8F28  C9 1C 00     Mx
    BEQ L_9A8F49                    ; $9A8F2B  F0 1C        Mx
    CMP #$001E                      ; $9A8F2D  C9 1E 00     Mx
    BEQ L_9A8F49                    ; $9A8F30  F0 17        Mx
    CMP #$0010                      ; $9A8F32  C9 10 00     Mx
    BEQ L_9A8F55                    ; $9A8F35  F0 1E        Mx
    CMP #$0034                      ; $9A8F37  C9 34 00     Mx
    BNE L_9A8F5F                    ; $9A8F3A  D0 23        Mx
    LDA $00DC                       ; $9A8F3C  AD DC 00     Mx
    SEC                             ; $9A8F3F  38           Mx
    SBC #$000A                      ; $9A8F40  E9 0A 00     Mx
    STA $00DC                       ; $9A8F43  8D DC 00     Mx
    JMP L_9A8F5F                    ; $9A8F46  4C 5F 8F     Mx
L_9A8F49:
    LDA $00DC                       ; $9A8F49  AD DC 00     Mx
    CLC                             ; $9A8F4C  18           Mx
    ADC #$0010                      ; $9A8F4D  69 10 00     Mx
    STA $00DC                       ; $9A8F50  8D DC 00     Mx
    BRA L_9A8F69                    ; $9A8F53  80 14        Mx
L_9A8F55:
    LDA $00DC                       ; $9A8F55  AD DC 00     Mx
    CLC                             ; $9A8F58  18           Mx
    ADC #$000A                      ; $9A8F59  69 0A 00     Mx
    STA $00DC                       ; $9A8F5C  8D DC 00     Mx
L_9A8F5F:
    LDA $00DC                       ; $9A8F5F  AD DC 00     Mx
    CLC                             ; $9A8F62  18           Mx
    ADC #$000A                      ; $9A8F63  69 0A 00     Mx
    STA $00DC                       ; $9A8F66  8D DC 00     Mx
L_9A8F69:
    STA $0C2B                       ; $9A8F69  8D 2B 0C     Mx
    LDA $00D9                       ; $9A8F6C  AD D9 00     Mx
    STA $00E5                       ; $9A8F6F  8D E5 00     Mx
    LDA $00D9                       ; $9A8F72  AD D9 00     Mx
    BPL L_9A8F81                    ; $9A8F75  10 0A        Mx
    EOR #$FFFF                      ; $9A8F77  49 FF FF     Mx
    CLC                             ; $9A8F7A  18           Mx
    ADC #$0001                      ; $9A8F7B  69 01 00     Mx
    STA $00D9                       ; $9A8F7E  8D D9 00     Mx
L_9A8F81:
    LDX $00DC                       ; $9A8F81  AE DC 00     Mx
    STX $00EE                       ; $9A8F84  8E EE 00     Mx
    LDA #$0000                      ; $9A8F87  A9 00 00     Mx
    STA $00EA                       ; $9A8F8A  8D EA 00     Mx
    LDA $00D9                       ; $9A8F8D  AD D9 00     Mx
    STA $4204                       ; $9A8F90  8D 04 42     Mx
    LDX $00EE                       ; $9A8F93  AE EE 00     Mx
    STX $4206                       ; $9A8F96  8E 06 42     Mx
    NOP                             ; $9A8F99  EA           Mx
    NOP                             ; $9A8F9A  EA           Mx
    NOP                             ; $9A8F9B  EA           Mx
    NOP                             ; $9A8F9C  EA           Mx
    NOP                             ; $9A8F9D  EA           Mx
    NOP                             ; $9A8F9E  EA           Mx
    NOP                             ; $9A8F9F  EA           Mx
    STZ $00F0                       ; $9A8FA0  9C F0 00     Mx
    LDA $4214                       ; $9A8FA3  AD 14 42     Mx
    STA $00F2                       ; $9A8FA6  8D F2 00     Mx
    LDX $4216                       ; $9A8FA9  AE 16 42     Mx
    STX $00EC                       ; $9A8FAC  8E EC 00     Mx
    LDA $00EB                       ; $9A8FAF  AD EB 00     Mx
    STA $4204                       ; $9A8FB2  8D 04 42     Mx
    LDX $00EE                       ; $9A8FB5  AE EE 00     Mx
    STX $4206                       ; $9A8FB8  8E 06 42     Mx
    NOP                             ; $9A8FBB  EA           Mx
    NOP                             ; $9A8FBC  EA           Mx
    NOP                             ; $9A8FBD  EA           Mx
    NOP                             ; $9A8FBE  EA           Mx
    NOP                             ; $9A8FBF  EA           Mx
    NOP                             ; $9A8FC0  EA           Mx
    NOP                             ; $9A8FC1  EA           Mx
    STZ $00F0                       ; $9A8FC2  9C F0 00     Mx
    LDA $4214                       ; $9A8FC5  AD 14 42     Mx
    ORA $00F1                       ; $9A8FC8  0D F1 00     Mx
    STA $00F1                       ; $9A8FCB  8D F1 00     Mx
    LDX $4216                       ; $9A8FCE  AE 16 42     Mx
    STX $00EB                       ; $9A8FD1  8E EB 00     Mx
    LDA $00EA                       ; $9A8FD4  AD EA 00     Mx
    STA $4204                       ; $9A8FD7  8D 04 42     Mx
    LDX $00EE                       ; $9A8FDA  AE EE 00     Mx
    STX $4206                       ; $9A8FDD  8E 06 42     Mx
    NOP                             ; $9A8FE0  EA           Mx
    NOP                             ; $9A8FE1  EA           Mx
    NOP                             ; $9A8FE2  EA           Mx
    NOP                             ; $9A8FE3  EA           Mx
    NOP                             ; $9A8FE4  EA           Mx
    NOP                             ; $9A8FE5  EA           Mx
    NOP                             ; $9A8FE6  EA           Mx
    NOP                             ; $9A8FE7  EA           Mx
    LDA $4214                       ; $9A8FE8  AD 14 42     Mx
    ORA $00F0                       ; $9A8FEB  0D F0 00     Mx
    STA $00F0                       ; $9A8FEE  8D F0 00     Mx
    LDA $00F0                       ; $9A8FF1  AD F0 00     Mx
    STA $0BE3                       ; $9A8FF4  8D E3 0B     Mx
    LDA $00F2                       ; $9A8FF7  AD F2 00     Mx
    STA $0BE5                       ; $9A8FFA  8D E5 0B     Mx
    LDA $00E5                       ; $9A8FFD  AD E5 00     Mx
    BPL L_9A901B                    ; $9A9000  10 19        Mx
    LDA $0BE3                       ; $9A9002  AD E3 0B     Mx
    EOR #$FFFF                      ; $9A9005  49 FF FF     Mx
    CLC                             ; $9A9008  18           Mx
    ADC #$0001                      ; $9A9009  69 01 00     Mx
    STA $0BE3                       ; $9A900C  8D E3 0B     Mx
    LDA $0BE5                       ; $9A900F  AD E5 0B     Mx
    EOR #$FFFF                      ; $9A9012  49 FF FF     Mx
    ADC #$0000                      ; $9A9015  69 00 00     Mx
    STA $0BE5                       ; $9A9018  8D E5 0B     Mx
L_9A901B:
    LDA $00DF                       ; $9A901B  AD DF 00     Mx
    STA $00E5                       ; $9A901E  8D E5 00     Mx
    LDA $00DF                       ; $9A9021  AD DF 00     Mx
    BPL L_9A9030                    ; $9A9024  10 0A        Mx
    EOR #$FFFF                      ; $9A9026  49 FF FF     Mx
    CLC                             ; $9A9029  18           Mx
    ADC #$0001                      ; $9A902A  69 01 00     Mx
    STA $00DF                       ; $9A902D  8D DF 00     Mx
L_9A9030:
    LDX $00DC                       ; $9A9030  AE DC 00     Mx
    STX $00EE                       ; $9A9033  8E EE 00     Mx
    LDA #$0000                      ; $9A9036  A9 00 00     Mx
    STA $00EA                       ; $9A9039  8D EA 00     Mx
    LDA $00DF                       ; $9A903C  AD DF 00     Mx
    STA $4204                       ; $9A903F  8D 04 42     Mx
    LDX $00EE                       ; $9A9042  AE EE 00     Mx
    STX $4206                       ; $9A9045  8E 06 42     Mx
    NOP                             ; $9A9048  EA           Mx
    NOP                             ; $9A9049  EA           Mx
    NOP                             ; $9A904A  EA           Mx
    NOP                             ; $9A904B  EA           Mx
    NOP                             ; $9A904C  EA           Mx
    NOP                             ; $9A904D  EA           Mx
    NOP                             ; $9A904E  EA           Mx
    STZ $00F0                       ; $9A904F  9C F0 00     Mx
    LDA $4214                       ; $9A9052  AD 14 42     Mx
    STA $00F2                       ; $9A9055  8D F2 00     Mx
    LDX $4216                       ; $9A9058  AE 16 42     Mx
    STX $00EC                       ; $9A905B  8E EC 00     Mx
    LDA $00EB                       ; $9A905E  AD EB 00     Mx
    STA $4204                       ; $9A9061  8D 04 42     Mx
    LDX $00EE                       ; $9A9064  AE EE 00     Mx
    STX $4206                       ; $9A9067  8E 06 42     Mx
    NOP                             ; $9A906A  EA           Mx
    NOP                             ; $9A906B  EA           Mx
    NOP                             ; $9A906C  EA           Mx
    NOP                             ; $9A906D  EA           Mx
    NOP                             ; $9A906E  EA           Mx
    NOP                             ; $9A906F  EA           Mx
    NOP                             ; $9A9070  EA           Mx
    STZ $00F0                       ; $9A9071  9C F0 00     Mx
    LDA $4214                       ; $9A9074  AD 14 42     Mx
    ORA $00F1                       ; $9A9077  0D F1 00     Mx
    STA $00F1                       ; $9A907A  8D F1 00     Mx
    LDX $4216                       ; $9A907D  AE 16 42     Mx
    STX $00EB                       ; $9A9080  8E EB 00     Mx
    LDA $00EA                       ; $9A9083  AD EA 00     Mx
    STA $4204                       ; $9A9086  8D 04 42     Mx
    LDX $00EE                       ; $9A9089  AE EE 00     Mx
    STX $4206                       ; $9A908C  8E 06 42     Mx
    NOP                             ; $9A908F  EA           Mx
    NOP                             ; $9A9090  EA           Mx
    NOP                             ; $9A9091  EA           Mx
    NOP                             ; $9A9092  EA           Mx
    NOP                             ; $9A9093  EA           Mx
    NOP                             ; $9A9094  EA           Mx
    NOP                             ; $9A9095  EA           Mx
    NOP                             ; $9A9096  EA           Mx
    LDA $4214                       ; $9A9097  AD 14 42     Mx
    ORA $00F0                       ; $9A909A  0D F0 00     Mx
    STA $00F0                       ; $9A909D  8D F0 00     Mx
    LDA $00F0                       ; $9A90A0  AD F0 00     Mx
    STA $0BEB                       ; $9A90A3  8D EB 0B     Mx
    LDA $00F2                       ; $9A90A6  AD F2 00     Mx
    STA $0BED                       ; $9A90A9  8D ED 0B     Mx
    LDA $00E5                       ; $9A90AC  AD E5 00     Mx
    BPL L_9A90CA                    ; $9A90AF  10 19        Mx
    LDA $0BEB                       ; $9A90B1  AD EB 0B     Mx
    EOR #$FFFF                      ; $9A90B4  49 FF FF     Mx
    CLC                             ; $9A90B7  18           Mx
    ADC #$0001                      ; $9A90B8  69 01 00     Mx
    STA $0BEB                       ; $9A90BB  8D EB 0B     Mx
    LDA $0BED                       ; $9A90BE  AD ED 0B     Mx
    EOR #$FFFF                      ; $9A90C1  49 FF FF     Mx
    ADC #$0000                      ; $9A90C4  69 00 00     Mx
    STA $0BED                       ; $9A90C7  8D ED 0B     Mx
L_9A90CA:
    LDA $00DC                       ; $9A90CA  AD DC 00     Mx
    SEP #$20                        ; $9A90CD  E2 20        Mx
    STA $4202                       ; $9A90CF  8D 02 42     mx
    LDA #$80                        ; $9A90D2  A9 80        mx
    STA $4203                       ; $9A90D4  8D 03 42     mx
    NOP                             ; $9A90D7  EA           mx
    NOP                             ; $9A90D8  EA           mx
    NOP                             ; $9A90D9  EA           mx
    REP #$20                        ; $9A90DA  C2 20        mx
    LDA $4216                       ; $9A90DC  AD 16 42     Mx
    STA $00A8                       ; $9A90DF  8D A8 00     Mx
    LDA $00DC                       ; $9A90E2  AD DC 00     Mx
    SEP #$20                        ; $9A90E5  E2 20        Mx
    STA $4202                       ; $9A90E7  8D 02 42     mx
    LDA #$12                        ; $9A90EA  A9 12        mx
    STA $4203                       ; $9A90EC  8D 03 42     mx
    NOP                             ; $9A90EF  EA           mx
    REP #$20                        ; $9A90F0  C2 20        mx
    STZ $00F4                       ; $9A90F2  9C F4 00     Mx
    STZ $00F2                       ; $9A90F5  9C F2 00     Mx
    LDA $4216                       ; $9A90F8  AD 16 42     Mx
    STA $00F3                       ; $9A90FB  8D F3 00     Mx
    LDA $00F2                       ; $9A90FE  AD F2 00     Mx
    CLC                             ; $9A9101  18           Mx
    ADC $00A8                       ; $9A9102  6D A8 00     Mx
    STA $00F2                       ; $9A9105  8D F2 00     Mx
    LDA $00F4                       ; $9A9108  AD F4 00     Mx
    ADC #$0000                      ; $9A910B  69 00 00     Mx
    STA $00F4                       ; $9A910E  8D F4 00     Mx
    LDA $00F2                       ; $9A9111  AD F2 00     Mx
    EOR #$FFFF                      ; $9A9114  49 FF FF     Mx
    CLC                             ; $9A9117  18           Mx
    ADC #$0001                      ; $9A9118  69 01 00     Mx
    STA $00A4                       ; $9A911B  8D A4 00     Mx
    LDA $00F4                       ; $9A911E  AD F4 00     Mx
    EOR #$FFFF                      ; $9A9121  49 FF FF     Mx
    ADC #$0000                      ; $9A9124  69 00 00     Mx
    STA $00A6                       ; $9A9127  8D A6 00     Mx
    LDA $0BDB                       ; $9A912A  AD DB 0B     Mx
    SEC                             ; $9A912D  38           Mx
    SBC #$0000                      ; $9A912E  E9 00 00     Mx
    STA $00A8                       ; $9A9131  8D A8 00     Mx
    LDA $0BDD                       ; $9A9134  AD DD 0B     Mx
    SBC $0BC5                       ; $9A9137  ED C5 0B     Mx
    STA $00AA                       ; $9A913A  8D AA 00     Mx
    LDA $00A8                       ; $9A913D  AD A8 00     Mx
    EOR #$FFFF                      ; $9A9140  49 FF FF     Mx
    CLC                             ; $9A9143  18           Mx
    ADC #$0001                      ; $9A9144  69 01 00     Mx
    STA $00A8                       ; $9A9147  8D A8 00     Mx
    LDA $00AA                       ; $9A914A  AD AA 00     Mx
    EOR #$FFFF                      ; $9A914D  49 FF FF     Mx
    ADC #$0000                      ; $9A9150  69 00 00     Mx
    STA $00AA                       ; $9A9153  8D AA 00     Mx
    STA $00E5                       ; $9A9156  8D E5 00     Mx
    BPL L_9A9174                    ; $9A9159  10 19        Mx
    LDA $00A8                       ; $9A915B  AD A8 00     Mx
    EOR #$FFFF                      ; $9A915E  49 FF FF     Mx
    CLC                             ; $9A9161  18           Mx
    ADC #$0001                      ; $9A9162  69 01 00     Mx
    STA $00A8                       ; $9A9165  8D A8 00     Mx
    LDA $00AA                       ; $9A9168  AD AA 00     Mx
    EOR #$FFFF                      ; $9A916B  49 FF FF     Mx
    ADC #$0000                      ; $9A916E  69 00 00     Mx
    STA $00AA                       ; $9A9171  8D AA 00     Mx
L_9A9174:
    LDX $00DC                       ; $9A9174  AE DC 00     Mx
    STX $00EE                       ; $9A9177  8E EE 00     Mx
    LDA $00A8                       ; $9A917A  AD A8 00     Mx
    STA $00EA                       ; $9A917D  8D EA 00     Mx
    LDA $00AA                       ; $9A9180  AD AA 00     Mx
    STA $4204                       ; $9A9183  8D 04 42     Mx
    LDX $00EE                       ; $9A9186  AE EE 00     Mx
    STX $4206                       ; $9A9189  8E 06 42     Mx
    NOP                             ; $9A918C  EA           Mx
    NOP                             ; $9A918D  EA           Mx
    NOP                             ; $9A918E  EA           Mx
    NOP                             ; $9A918F  EA           Mx
    NOP                             ; $9A9190  EA           Mx
    NOP                             ; $9A9191  EA           Mx
    NOP                             ; $9A9192  EA           Mx
    STZ $00F0                       ; $9A9193  9C F0 00     Mx
    LDA $4214                       ; $9A9196  AD 14 42     Mx
    STA $00F2                       ; $9A9199  8D F2 00     Mx
    LDX $4216                       ; $9A919C  AE 16 42     Mx
    STX $00EC                       ; $9A919F  8E EC 00     Mx
    LDA $00EB                       ; $9A91A2  AD EB 00     Mx
    STA $4204                       ; $9A91A5  8D 04 42     Mx
    LDX $00EE                       ; $9A91A8  AE EE 00     Mx
    STX $4206                       ; $9A91AB  8E 06 42     Mx
    NOP                             ; $9A91AE  EA           Mx
    NOP                             ; $9A91AF  EA           Mx
    NOP                             ; $9A91B0  EA           Mx
    NOP                             ; $9A91B1  EA           Mx
    NOP                             ; $9A91B2  EA           Mx
    NOP                             ; $9A91B3  EA           Mx
    NOP                             ; $9A91B4  EA           Mx
    STZ $00F0                       ; $9A91B5  9C F0 00     Mx
    LDA $4214                       ; $9A91B8  AD 14 42     Mx
    ORA $00F1                       ; $9A91BB  0D F1 00     Mx
    STA $00F1                       ; $9A91BE  8D F1 00     Mx
    LDX $4216                       ; $9A91C1  AE 16 42     Mx
    STX $00EB                       ; $9A91C4  8E EB 00     Mx
    LDA $00EA                       ; $9A91C7  AD EA 00     Mx
    STA $4204                       ; $9A91CA  8D 04 42     Mx
    LDX $00EE                       ; $9A91CD  AE EE 00     Mx
    STX $4206                       ; $9A91D0  8E 06 42     Mx
    NOP                             ; $9A91D3  EA           Mx
    NOP                             ; $9A91D4  EA           Mx
    NOP                             ; $9A91D5  EA           Mx
    NOP                             ; $9A91D6  EA           Mx
    NOP                             ; $9A91D7  EA           Mx
    NOP                             ; $9A91D8  EA           Mx
    NOP                             ; $9A91D9  EA           Mx
    NOP                             ; $9A91DA  EA           Mx
    LDA $4214                       ; $9A91DB  AD 14 42     Mx
    ORA $00F0                       ; $9A91DE  0D F0 00     Mx
    STA $00F0                       ; $9A91E1  8D F0 00     Mx
    LDA $00E5                       ; $9A91E4  AD E5 00     Mx
    BPL L_9A9202                    ; $9A91E7  10 19        Mx
    LDA $00F0                       ; $9A91E9  AD F0 00     Mx
    EOR #$FFFF                      ; $9A91EC  49 FF FF     Mx
    CLC                             ; $9A91EF  18           Mx
    ADC #$0001                      ; $9A91F0  69 01 00     Mx
    STA $00F0                       ; $9A91F3  8D F0 00     Mx
    LDA $00F2                       ; $9A91F6  AD F2 00     Mx
    EOR #$FFFF                      ; $9A91F9  49 FF FF     Mx
    ADC #$0000                      ; $9A91FC  69 00 00     Mx
    STA $00F2                       ; $9A91FF  8D F2 00     Mx
L_9A9202:
    LDA $00A4                       ; $9A9202  AD A4 00     Mx
    SEC                             ; $9A9205  38           Mx
    SBC $00F0                       ; $9A9206  ED F0 00     Mx
    STA $0BE7                       ; $9A9209  8D E7 0B     Mx
    LDA $00A6                       ; $9A920C  AD A6 00     Mx
    SBC $00F2                       ; $9A920F  ED F2 00     Mx
    STA $0BE9                       ; $9A9212  8D E9 0B     Mx
    LDA #$0001                      ; $9A9215  A9 01 00     Mx
    STA $0BC1                       ; $9A9218  8D C1 0B     Mx
    STZ $0C19                       ; $9A921B  9C 19 0C     Mx
L_9A921E:
    LDA $1139                       ; $9A921E  AD 39 11     Mx
    BEQ L_9A9247                    ; $9A9221  F0 24        Mx
    BMI L_9A9247                    ; $9A9223  30 22        Mx
    LDA $0C19                       ; $9A9225  AD 19 0C     Mx
    BNE L_9A9232                    ; $9A9228  D0 08        Mx
    LDA $0BDD                       ; $9A922A  AD DD 0B     Mx
    CMP #$001E                      ; $9A922D  C9 1E 00     Mx
    BCS L_9A9247                    ; $9A9230  B0 15        Mx
L_9A9232:
    STZ $0BE5                       ; $9A9232  9C E5 0B     Mx
    STZ $0BE3                       ; $9A9235  9C E3 0B     Mx
    STZ $0BED                       ; $9A9238  9C ED 0B     Mx
    STZ $0BEB                       ; $9A923B  9C EB 0B     Mx
    STZ $0BE9                       ; $9A923E  9C E9 0B     Mx
    STZ $0BE7                       ; $9A9241  9C E7 0B     Mx
    JMP L_9A92B7                    ; $9A9244  4C B7 92     Mx
L_9A9247:
    JSR L_9A9534                    ; $9A9247  20 34 95     Mx
    LDA $0BC1                       ; $9A924A  AD C1 0B     Mx
    CMP #$0001                      ; $9A924D  C9 01 00     Mx
    BEQ L_9A925D                    ; $9A9250  F0 0B        Mx
    STZ $1131                       ; $9A9252  9C 31 11     Mx
    STZ $1133                       ; $9A9255  9C 33 11     Mx
    STZ $1135                       ; $9A9258  9C 35 11     Mx
    BRA L_9A928F                    ; $9A925B  80 32        Mx
L_9A925D:
    LDA $1615                       ; $9A925D  AD 15 16     Mx
    BNE L_9A928F                    ; $9A9260  D0 2D        Mx
    LDA $0BF9                       ; $9A9262  AD F9 0B     Mx
    BNE L_9A928F                    ; $9A9265  D0 28        Mx
    LDA $0B50                       ; $9A9267  AD 50 0B     Mx
    BNE L_9A928F                    ; $9A926A  D0 23        Mx
    LDA $0CD3                       ; $9A926C  AD D3 0C     Mx
    BNE L_9A928F                    ; $9A926F  D0 1E        Mx
    LDA $0C2B                       ; $9A9271  AD 2B 0C     Mx
    BPL L_9A928F                    ; $9A9274  10 19        Mx
    CMP #$FFEC                      ; $9A9276  C9 EC FF     Mx
    BCC L_9A928F                    ; $9A9279  90 14        Mx
    LDA $0BDD                       ; $9A927B  AD DD 0B     Mx
    CMP #$005E                      ; $9A927E  C9 5E 00     Mx
    BCC L_9A9288                    ; $9A9281  90 05        Mx
    CMP #$0077                      ; $9A9283  C9 77 00     Mx
    BCC L_9A928F                    ; $9A9286  90 07        Mx
L_9A9288:
    LDA #$000B                      ; $9A9288  A9 0B 00     Mx
    JSL L_9ABBD5                    ; $9A928B  22 D5 BB 9A  Mx
L_9A928F:
    INC $0C27                       ; $9A928F  EE 27 0C     Mx
    LDA $0C2B                       ; $9A9292  AD 2B 0C     Mx
    BPL L_9A92A7                    ; $9A9295  10 10        Mx
    STZ $1131                       ; $9A9297  9C 31 11     Mx
    STZ $1133                       ; $9A929A  9C 33 11     Mx
    STZ $1135                       ; $9A929D  9C 35 11     Mx
    CMP #$FF38                      ; $9A92A0  C9 38 FF     Mx
    BCS L_9A92A7                    ; $9A92A3  B0 02        Mx
    BRA L_9A92B7                    ; $9A92A5  80 10        Mx
L_9A92A7:
    DEC $0C2B                       ; $9A92A7  CE 2B 0C     Mx
    BNE L_9A92B7                    ; $9A92AA  D0 0B        Mx
    LDA $0BC1                       ; $9A92AC  AD C1 0B     Mx
    CMP #$0001                      ; $9A92AF  C9 01 00     Mx
    BNE L_9A92B7                    ; $9A92B2  D0 03        Mx
    STZ $0CD1                       ; $9A92B4  9C D1 0C     Mx
L_9A92B7:
    LDA $0BE1                       ; $9A92B7  AD E1 0B     Mx
    STA $0BF3                       ; $9A92BA  8D F3 0B     Mx
    RTS                             ; $9A92BD  60           Mx
    db $38,$F1,$38,$F1,$38,$F1,$B2,$F2,$B0,$F4,$1D,$F7,$E1,$F9,$E1,$FC ; $9A92BE
    db $00,$00,$1F,$03,$1F,$06,$E3,$08,$50,$0B,$4E,$0D,$C8,$0E,$C8,$0E ; $9A92CE
    db $C8,$0E,$C8,$0E,$C8,$0E,$4E,$0D,$50,$0B,$E3,$08,$1F,$06,$1F,$03 ; $9A92DE
    db $00,$00,$E1,$FC,$E1,$F9,$1D,$F7,$B0,$F4,$B2,$F2,$38,$F1,$38,$F1 ; $9A92EE
    db $38,$F1,$38,$F1,$38,$F1,$B2,$F2,$B0,$F4,$1D,$F7,$E1,$F9,$E1,$FC ; $9A92FE
L_9A930E:
    LDA $00D3                       ; $9A930E  AD D3 00     Mx
    CMP #$0020                      ; $9A9311  C9 20 00     Mx
    BPL L_9A9320                    ; $9A9314  10 0A        Mx
    LDA $00F6                       ; $9A9316  AD F6 00     Mx
    SEC                             ; $9A9319  38           Mx
    SBC #$00F0                      ; $9A931A  E9 F0 00     Mx
    STA $00F6                       ; $9A931D  8D F6 00     Mx
L_9A9320:
    LDA $00D3                       ; $9A9320  AD D3 00     Mx
    CMP #$003C                      ; $9A9323  C9 3C 00     Mx
    BMI L_9A932B                    ; $9A9326  30 03        Mx
    JMP L_9A9409                    ; $9A9328  4C 09 94     Mx
L_9A932B:
    LDA $00D0                       ; $9A932B  AD D0 00     Mx
    SEC                             ; $9A932E  38           Mx
    SBC $0B9C                       ; $9A932F  ED 9C 0B     Mx
    BPL L_9A933B                    ; $9A9332  10 07        Mx
    EOR #$FFFF                      ; $9A9334  49 FF FF     Mx
    CLC                             ; $9A9337  18           Mx
    ADC #$0001                      ; $9A9338  69 01 00     Mx
L_9A933B:
    CMP #$0040                      ; $9A933B  C9 40 00     Mx
    BMI L_9A934D                    ; $9A933E  30 0D        Mx
    SEC                             ; $9A9340  38           Mx
    SBC #$0080                      ; $9A9341  E9 80 00     Mx
    BPL L_9A934D                    ; $9A9344  10 07        Mx
    EOR #$FFFF                      ; $9A9346  49 FF FF     Mx
    CLC                             ; $9A9349  18           Mx
    ADC #$0001                      ; $9A934A  69 01 00     Mx
L_9A934D:
    SEC                             ; $9A934D  38           Mx
    SBC #$0014                      ; $9A934E  E9 14 00     Mx
    BMI L_9A9356                    ; $9A9351  30 03        Mx
    JMP L_9A9409                    ; $9A9353  4C 09 94     Mx
L_9A9356:
    LDA $00D3                       ; $9A9356  AD D3 00     Mx
    ASL                             ; $9A9359  0A           Mx
    ASL                             ; $9A935A  0A           Mx
    SEC                             ; $9A935B  38           Mx
    SBC #$0138                      ; $9A935C  E9 38 01     Mx
    EOR #$FFFF                      ; $9A935F  49 FF FF     Mx
    CLC                             ; $9A9362  18           Mx
    ADC #$0001                      ; $9A9363  69 01 00     Mx
    STA $00D3                       ; $9A9366  8D D3 00     Mx
    LDY #$32                        ; $9A9369  A0 32        Mx
    LDA ($CC),Y                     ; $9A936B  B1 CC        Mx
    SEC                             ; $9A936D  38           Mx
    SBC $00D9                       ; $9A936E  ED D9 00     Mx
    BMI L_9A9376                    ; $9A9371  30 03        Mx
    JMP L_9A93FF                    ; $9A9373  4C FF 93     Mx
L_9A9376:
    EOR #$FFFF                      ; $9A9376  49 FF FF     Mx
    CLC                             ; $9A9379  18           Mx
    ADC #$0001                      ; $9A937A  69 01 00     Mx
    CLC                             ; $9A937D  18           Mx
    ADC #$0008                      ; $9A937E  69 08 00     Mx
    STA $00D6                       ; $9A9381  8D D6 00     Mx
    LDA $00D3                       ; $9A9384  AD D3 00     Mx
    STA $00AE                       ; $9A9387  8D AE 00     Mx
    SEP #$20                        ; $9A938A  E2 20        Mx
    LDA $00D6                       ; $9A938C  AD D6 00     mx
    STA $4202                       ; $9A938F  8D 02 42     mx
    LDA $00D3                       ; $9A9392  AD D3 00     mx
    STA $4203                       ; $9A9395  8D 03 42     mx
    NOP                             ; $9A9398  EA           mx
    NOP                             ; $9A9399  EA           mx
    NOP                             ; $9A939A  EA           mx
    REP #$20                        ; $9A939B  C2 20        mx
    LDA $4216                       ; $9A939D  AD 16 42     Mx
    STA $00D3                       ; $9A93A0  8D D3 00     Mx
    STA $00A8                       ; $9A93A3  8D A8 00     Mx
    LDA $00AE                       ; $9A93A6  AD AE 00     Mx
    STA $00D3                       ; $9A93A9  8D D3 00     Mx
    SEP #$20                        ; $9A93AC  E2 20        Mx
    LDA $00D6                       ; $9A93AE  AD D6 00     mx
    STA $4202                       ; $9A93B1  8D 02 42     mx
    LDA $00D4                       ; $9A93B4  AD D4 00     mx
    STA $4203                       ; $9A93B7  8D 03 42     mx
    NOP                             ; $9A93BA  EA           mx
    NOP                             ; $9A93BB  EA           mx
    NOP                             ; $9A93BC  EA           mx
    REP #$20                        ; $9A93BD  C2 20        mx
    LDA $4216                       ; $9A93BF  AD 16 42     Mx
    STA $00D4                       ; $9A93C2  8D D4 00     Mx
    STZ $00F4                       ; $9A93C5  9C F4 00     Mx
    STZ $00F2                       ; $9A93C8  9C F2 00     Mx
    STA $00F3                       ; $9A93CB  8D F3 00     Mx
    LDA $00F2                       ; $9A93CE  AD F2 00     Mx
    CLC                             ; $9A93D1  18           Mx
    ADC $00A8                       ; $9A93D2  6D A8 00     Mx
    STA $00F2                       ; $9A93D5  8D F2 00     Mx
    LDA $00F4                       ; $9A93D8  AD F4 00     Mx
    ADC #$0000                      ; $9A93DB  69 00 00     Mx
    STA $00F4                       ; $9A93DE  8D F4 00     Mx
    LDA $00F4                       ; $9A93E1  AD F4 00     Mx
    CMP #$8000                      ; $9A93E4  C9 00 80     Mx
    ROR                             ; $9A93E7  6A           Mx
    ROR $00F2                       ; $9A93E8  6E F2 00     Mx
    CMP #$8000                      ; $9A93EB  C9 00 80     Mx
    ROR                             ; $9A93EE  6A           Mx
    ROR $00F2                       ; $9A93EF  6E F2 00     Mx
    CMP #$8000                      ; $9A93F2  C9 00 80     Mx
    ROR                             ; $9A93F5  6A           Mx
    ROR $00F2                       ; $9A93F6  6E F2 00     Mx
    LDA $00F2                       ; $9A93F9  AD F2 00     Mx
    STA $00D3                       ; $9A93FC  8D D3 00     Mx
L_9A93FF:
    LDA $00F6                       ; $9A93FF  AD F6 00     Mx
    SEC                             ; $9A9402  38           Mx
    SBC $00D3                       ; $9A9403  ED D3 00     Mx
    STA $00F6                       ; $9A9406  8D F6 00     Mx
L_9A9409:
    RTS                             ; $9A9409  60           Mx
L_9A940A:
    STZ $0C2B                       ; $9A940A  9C 2B 0C     Mx
    LDY #$2E                        ; $9A940D  A0 2E        Mx
    LDA ($CC),Y                     ; $9A940F  B1 CC        Mx
    STA $0BD9                       ; $9A9411  8D D9 0B     Mx
    LDY #$32                        ; $9A9414  A0 32        Mx
    LDA ($CC),Y                     ; $9A9416  B1 CC        Mx
    STA $0BDD                       ; $9A9418  8D DD 0B     Mx
    LDY #$36                        ; $9A941B  A0 36        Mx
    LDA ($CC),Y                     ; $9A941D  B1 CC        Mx
    CLC                             ; $9A941F  18           Mx
    ADC $0BF5                       ; $9A9420  6D F5 0B     Mx
    STA $0BF3                       ; $9A9423  8D F3 0B     Mx
    STA $0BE1                       ; $9A9426  8D E1 0B     Mx
    STZ $0BE3                       ; $9A9429  9C E3 0B     Mx
    STZ $0BE5                       ; $9A942C  9C E5 0B     Mx
    STZ $0BEB                       ; $9A942F  9C EB 0B     Mx
    STZ $0BED                       ; $9A9432  9C ED 0B     Mx
    STZ $0BE7                       ; $9A9435  9C E7 0B     Mx
    STZ $0BE9                       ; $9A9438  9C E9 0B     Mx
    RTS                             ; $9A943B  60           Mx
L_9A943C:
    LDA $0BE3                       ; $9A943C  AD E3 0B     Mx
    CLC                             ; $9A943F  18           Mx
    ADC $0BD7                       ; $9A9440  6D D7 0B     Mx
    STA $0BCB                       ; $9A9443  8D CB 0B     Mx
    LDA $0BE5                       ; $9A9446  AD E5 0B     Mx
    ADC $0BD9                       ; $9A9449  6D D9 0B     Mx
    STA $0BCD                       ; $9A944C  8D CD 0B     Mx
    LDA $0BEB                       ; $9A944F  AD EB 0B     Mx
    CLC                             ; $9A9452  18           Mx
    ADC $0BDF                       ; $9A9453  6D DF 0B     Mx
    STA $0BD3                       ; $9A9456  8D D3 0B     Mx
    LDA $0BED                       ; $9A9459  AD ED 0B     Mx
    ADC $0BE1                       ; $9A945C  6D E1 0B     Mx
    STA $0BD5                       ; $9A945F  8D D5 0B     Mx
    LDA $0BDB                       ; $9A9462  AD DB 0B     Mx
    SEC                             ; $9A9465  38           Mx
    SBC $0BE7                       ; $9A9466  ED E7 0B     Mx
    STA $0BCF                       ; $9A9469  8D CF 0B     Mx
    LDA $0BDD                       ; $9A946C  AD DD 0B     Mx
    SBC $0BE9                       ; $9A946F  ED E9 0B     Mx
    STA $0BD1                       ; $9A9472  8D D1 0B     Mx
    RTS                             ; $9A9475  60           Mx
L_9A9476:
    LDX #$00                        ; $9A9476  A2 00        Mx
    LDA $0BE3                       ; $9A9478  AD E3 0B     Mx
    CLC                             ; $9A947B  18           Mx
    ADC $0BD7                       ; $9A947C  6D D7 0B     Mx
    STA $0BD7                       ; $9A947F  8D D7 0B     Mx
    LDA $0BE5                       ; $9A9482  AD E5 0B     Mx
    ADC $0BD9                       ; $9A9485  6D D9 0B     Mx
    CMP $0BD9                       ; $9A9488  CD D9 0B     Mx
    BEQ L_9A9492                    ; $9A948B  F0 05        Mx
    STA $0BD9                       ; $9A948D  8D D9 0B     Mx
    LDX #$01                        ; $9A9490  A2 01        Mx
L_9A9492:
    LDA $0BEB                       ; $9A9492  AD EB 0B     Mx
    CLC                             ; $9A9495  18           Mx
    ADC $0BDF                       ; $9A9496  6D DF 0B     Mx
    STA $0BDF                       ; $9A9499  8D DF 0B     Mx
    LDA $0BED                       ; $9A949C  AD ED 0B     Mx
    ADC $0BE1                       ; $9A949F  6D E1 0B     Mx
    CMP $0BE1                       ; $9A94A2  CD E1 0B     Mx
    BEQ L_9A94AC                    ; $9A94A5  F0 05        Mx
    STA $0BE1                       ; $9A94A7  8D E1 0B     Mx
    LDX #$01                        ; $9A94AA  A2 01        Mx
L_9A94AC:
    LDA $0BDB                       ; $9A94AC  AD DB 0B     Mx
    SEC                             ; $9A94AF  38           Mx
    SBC $0BE7                       ; $9A94B0  ED E7 0B     Mx
    STA $0BDB                       ; $9A94B3  8D DB 0B     Mx
    LDA $0BDD                       ; $9A94B6  AD DD 0B     Mx
    SBC $0BE9                       ; $9A94B9  ED E9 0B     Mx
    CMP $0BDD                       ; $9A94BC  CD DD 0B     Mx
    BEQ L_9A94C6                    ; $9A94BF  F0 05        Mx
    STA $0BDD                       ; $9A94C1  8D DD 0B     Mx
    LDX #$01                        ; $9A94C4  A2 01        Mx
L_9A94C6:
    LDY $0C11                       ; $9A94C6  AC 11 0C     Mx
    BNE L_9A94DE                    ; $9A94C9  D0 13        Mx
    LDY $0A96                       ; $9A94CB  AC 96 0A     Mx
    BEQ L_9A94DA                    ; $9A94CE  F0 0A        Mx
    CPY $0C19                       ; $9A94D0  CC 19 0C     Mx
    BEQ L_9A94DE                    ; $9A94D3  F0 09        Mx
    CPY $0C1F                       ; $9A94D5  CC 1F 0C     Mx
    BEQ L_9A94DE                    ; $9A94D8  F0 04        Mx
L_9A94DA:
    CPX #$00                        ; $9A94DA  E0 00        Mx
    BEQ L_9A94F0                    ; $9A94DC  F0 12        Mx
L_9A94DE:
    LDA $0C13                       ; $9A94DE  AD 13 0C     Mx
    CLC                             ; $9A94E1  18           Mx
    ADC #$0001                      ; $9A94E2  69 01 00     Mx
    CMP #$0018                      ; $9A94E5  C9 18 00     Mx
    BCC L_9A94ED                    ; $9A94E8  90 03        Mx
    LDA #$0000                      ; $9A94EA  A9 00 00     Mx
L_9A94ED:
    STA $0C13                       ; $9A94ED  8D 13 0C     Mx
L_9A94F0:
    LDY $0C11                       ; $9A94F0  AC 11 0C     Mx
    BNE L_9A94FA                    ; $9A94F3  D0 05        Mx
    LDA $0A96                       ; $9A94F5  AD 96 0A     Mx
    BEQ L_9A9533                    ; $9A94F8  F0 39        Mx
L_9A94FA:
    LDA $00C0                       ; $9A94FA  AD C0 00     Mx
    BNE L_9A9533                    ; $9A94FD  D0 34        Mx
    LDA $0C09                       ; $9A94FF  AD 09 0C     Mx
    STA $0C0D                       ; $9A9502  8D 0D 0C     Mx
    LDA $0C05                       ; $9A9505  AD 05 0C     Mx
    STA $0C09                       ; $9A9508  8D 09 0C     Mx
    LDA $0C01                       ; $9A950B  AD 01 0C     Mx
    STA $0C05                       ; $9A950E  8D 05 0C     Mx
    LDA $0BBB                       ; $9A9511  AD BB 0B     Mx
    DEC                             ; $9A9514  3A           Mx
    DEC                             ; $9A9515  3A           Mx
    STA $0C01                       ; $9A9516  8D 01 0C     Mx
    LDA $0C0B                       ; $9A9519  AD 0B 0C     Mx
    STA $0C0F                       ; $9A951C  8D 0F 0C     Mx
    LDA $0C07                       ; $9A951F  AD 07 0C     Mx
    STA $0C0B                       ; $9A9522  8D 0B 0C     Mx
    LDA $0C03                       ; $9A9525  AD 03 0C     Mx
    STA $0C07                       ; $9A9528  8D 07 0C     Mx
    LDA $0BBD                       ; $9A952B  AD BD 0B     Mx
    DEC                             ; $9A952E  3A           Mx
    DEC                             ; $9A952F  3A           Mx
    STA $0C03                       ; $9A9530  8D 03 0C     Mx
L_9A9533:
    RTS                             ; $9A9533  60           Mx
L_9A9534:
    LDA $0BDD                       ; $9A9534  AD DD 0B     Mx
    BMI L_9A953C                    ; $9A9537  30 03        Mx
    JMP L_9A95CB                    ; $9A9539  4C CB 95     Mx
L_9A953C:
    LDA $0BDB                       ; $9A953C  AD DB 0B     Mx
    EOR #$FFFF                      ; $9A953F  49 FF FF     Mx
    CLC                             ; $9A9542  18           Mx
    ADC #$0001                      ; $9A9543  69 01 00     Mx
    STA $0BDB                       ; $9A9546  8D DB 0B     Mx
    LDA $0BDD                       ; $9A9549  AD DD 0B     Mx
    EOR #$FFFF                      ; $9A954C  49 FF FF     Mx
    ADC #$0000                      ; $9A954F  69 00 00     Mx
    STA $0BDD                       ; $9A9552  8D DD 0B     Mx
    LDA $0BE9                       ; $9A9555  AD E9 0B     Mx
    BNE L_9A9566                    ; $9A9558  D0 0C        Mx
    STZ $0BE7                       ; $9A955A  9C E7 0B     Mx
    STZ $0BDD                       ; $9A955D  9C DD 0B     Mx
    STZ $0BDB                       ; $9A9560  9C DB 0B     Mx
    JMP L_9A9607                    ; $9A9563  4C 07 96     Mx
L_9A9566:
    STA $00D9                       ; $9A9566  8D D9 00     Mx
    LDA #$0001                      ; $9A9569  A9 01 00     Mx
    STA $0BFF                       ; $9A956C  8D FF 0B     Mx
    LDA $0BE7                       ; $9A956F  AD E7 0B     Mx
    STA $00D6                       ; $9A9572  8D D6 00     Mx
    LDA $0BE9                       ; $9A9575  AD E9 0B     Mx
    CMP #$00F0                      ; $9A9578  C9 F0 00     Mx
    BCS L_9A9587                    ; $9A957B  B0 0A        Mx
    CMP #$0010                      ; $9A957D  C9 10 00     Mx
    BCC L_9A9590                    ; $9A9580  90 0E        Mx
    LDA #$0010                      ; $9A9582  A9 10 00     Mx
    BRA L_9A958A                    ; $9A9585  80 03        Mx
L_9A9587:
    ORA #$FF00                      ; $9A9587  09 00 FF     Mx
L_9A958A:
    STA $0BE9                       ; $9A958A  8D E9 0B     Mx
    STA $00D9                       ; $9A958D  8D D9 00     Mx
L_9A9590:
    LSR $00D9                       ; $9A9590  4E D9 00     Mx
    ROR $00D6                       ; $9A9593  6E D6 00     Mx
    LSR $00D9                       ; $9A9596  4E D9 00     Mx
    ROR $00D6                       ; $9A9599  6E D6 00     Mx
    LDA $0BE7                       ; $9A959C  AD E7 0B     Mx
    SEC                             ; $9A959F  38           Mx
    SBC $00D6                       ; $9A95A0  ED D6 00     Mx
    STA $00D6                       ; $9A95A3  8D D6 00     Mx
    LDA $0BE9                       ; $9A95A6  AD E9 0B     Mx
    SBC $00D9                       ; $9A95A9  ED D9 00     Mx
    STA $00D9                       ; $9A95AC  8D D9 00     Mx
    LDA $00D6                       ; $9A95AF  AD D6 00     Mx
    EOR #$FFFF                      ; $9A95B2  49 FF FF     Mx
    CLC                             ; $9A95B5  18           Mx
    ADC #$0001                      ; $9A95B6  69 01 00     Mx
    STA $0BE7                       ; $9A95B9  8D E7 0B     Mx
    LDA $00D9                       ; $9A95BC  AD D9 00     Mx
    EOR #$FFFF                      ; $9A95BF  49 FF FF     Mx
    ADC #$0000                      ; $9A95C2  69 00 00     Mx
    STA $0BE9                       ; $9A95C5  8D E9 0B     Mx
    JSR L_9A960C                    ; $9A95C8  20 0C 96     Mx
L_9A95CB:
    LDA $0BDD                       ; $9A95CB  AD DD 0B     Mx
    BNE L_9A95D8                    ; $9A95CE  D0 08        Mx
    LDA $0BE7                       ; $9A95D0  AD E7 0B     Mx
    ORA $0BE9                       ; $9A95D3  0D E9 0B     Mx
    BEQ L_9A9607                    ; $9A95D6  F0 2F        Mx
L_9A95D8:
    LDA $0BE7                       ; $9A95D8  AD E7 0B     Mx
    CLC                             ; $9A95DB  18           Mx
    ADC #$2500                      ; $9A95DC  69 00 25     Mx
    STA $0BE7                       ; $9A95DF  8D E7 0B     Mx
    LDA $0BE9                       ; $9A95E2  AD E9 0B     Mx
    ADC #$0000                      ; $9A95E5  69 00 00     Mx
    STA $0BE9                       ; $9A95E8  8D E9 0B     Mx
    BNE L_9A9607                    ; $9A95EB  D0 1A        Mx
    LDA $165D                       ; $9A95ED  AD 5D 16     Mx
    BEQ L_9A9607                    ; $9A95F0  F0 15        Mx
    STZ $165D                       ; $9A95F2  9C 5D 16     Mx
    LDA $1613                       ; $9A95F5  AD 13 16     Mx
    BNE L_9A9607                    ; $9A95F8  D0 0D        Mx
    LDA #$0010                      ; $9A95FA  A9 10 00     Mx
    JSL L_BDFDF3                    ; $9A95FD  22 F3 FD BD  Mx
    LDA #$0064                      ; $9A9601  A9 64 00     Mx
    STA $1613                       ; $9A9604  8D 13 16     Mx
L_9A9607:
    RTS                             ; $9A9607  60           Mx
L_9A9608:
    JSR L_9A960C                    ; $9A9608  20 0C 96     Mx
    RTL                             ; $9A960B  6B           Mx
L_9A960C:
    LDA $1D56                       ; $9A960C  AD 56 1D     Mx
    AND #$0003                      ; $9A960F  29 03 00     Mx
    BEQ L_9A9621                    ; $9A9612  F0 0D        Mx
    CMP #$0001                      ; $9A9614  C9 01 00     Mx
    BEQ L_9A9628                    ; $9A9617  F0 0F        Mx
    LDA #$0005                      ; $9A9619  A9 05 00     Mx
    JSL L_BDFDF3                    ; $9A961C  22 F3 FD BD  Mx
    RTS                             ; $9A9620  60           Mx
L_9A9621:
    LDA #$0016                      ; $9A9621  A9 16 00     Mx
    JSL L_BDFDF3                    ; $9A9624  22 F3 FD BD  Mx
L_9A9628:
    LDA #$0017                      ; $9A9628  A9 17 00     Mx
    JSL L_BDFDF3                    ; $9A962B  22 F3 FD BD  Mx
    RTS                             ; $9A962F  60           Mx
L_9A9630:
    LDA $0BBF                       ; $9A9630  AD BF 0B     Mx
    CMP #$0002                      ; $9A9633  C9 02 00     Mx
    BEQ L_9A9639                    ; $9A9636  F0 01        Mx
    RTS                             ; $9A9638  60           Mx
L_9A9639:
    LDA $0C2B                       ; $9A9639  AD 2B 0C     Mx
    BMI L_9A9644                    ; $9A963C  30 06        Mx
    CMP #$0005                      ; $9A963E  C9 05 00     Mx
    BCC L_9A9644                    ; $9A9641  90 01        Mx
    RTS                             ; $9A9643  60           Mx
L_9A9644:
    LDA $0BCD                       ; $9A9644  AD CD 0B     Mx
    STA $00E2                       ; $9A9647  8D E2 00     Mx
    BPL L_9A9650                    ; $9A964A  10 04        Mx
    JMP L_9A99E7                    ; $9A964C  4C E7 99     Mx
L_9A964F:
    RTS                             ; $9A964F  60           Mx
L_9A9650:
    LDA $0C1F                       ; $9A9650  AD 1F 0C     Mx
    AND #$00FF                      ; $9A9653  29 FF 00     Mx
    CMP #$0003                      ; $9A9656  C9 03 00     Mx
    BCS L_9A964F                    ; $9A9659  B0 F4        Mx
    REP #$10                        ; $9A965B  C2 10        Mx
    LDX #$0000                      ; $9A965D  A2 00 00     MX
    STZ $00EC                       ; $9A9660  9C EC 00     MX
    LDA $0BD1                       ; $9A9663  AD D1 0B     MX
    CLC                             ; $9A9666  18           MX
    ADC #$000C                      ; $9A9667  69 0C 00     MX
    STA $00E5                       ; $9A966A  8D E5 00     MX
    CMP #$007C                      ; $9A966D  C9 7C 00     MX
    BCC L_9A967B                    ; $9A9670  90 09        MX
    JMP L_9A995F                    ; $9A9672  4C 5F 99     MX
L_9A9675:
    STZ $0C29                       ; $9A9675  9C 29 0C     MX
    JMP L_9A99BF                    ; $9A9678  4C BF 99     MX
L_9A967B:
    CMP #$0062                      ; $9A967B  C9 62 00     MX
    BCC L_9A9675                    ; $9A967E  90 F5        MX
    LDA $0C29                       ; $9A9680  AD 29 0C     MX
    BMI L_9A9688                    ; $9A9683  30 03        MX
    JMP L_9A974C                    ; $9A9685  4C 4C 97     MX
L_9A9688:
    LDA $0BED                       ; $9A9688  AD ED 0B     MX
    AND #$8000                      ; $9A968B  29 00 80     MX
    STA $00A4                       ; $9A968E  8D A4 00     MX
    LDA $0BED                       ; $9A9691  AD ED 0B     MX
    LSR                             ; $9A9694  4A           MX
    ROR $0BEB                       ; $9A9695  6E EB 0B     MX
    ORA $00A4                       ; $9A9698  0D A4 00     MX
    STA $0BED                       ; $9A969B  8D ED 0B     MX
    LDA $0BE9                       ; $9A969E  AD E9 0B     MX
    STA $00D3                       ; $9A96A1  8D D3 00     MX
    LDA $0BE7                       ; $9A96A4  AD E7 0B     MX
    STA $00D0                       ; $9A96A7  8D D0 00     MX
    LDA $00D3                       ; $9A96AA  AD D3 00     MX
    CMP #$8000                      ; $9A96AD  C9 00 80     MX
    ROR                             ; $9A96B0  6A           MX
    ROR $00D0                       ; $9A96B1  6E D0 00     MX
    CMP #$8000                      ; $9A96B4  C9 00 80     MX
    ROR                             ; $9A96B7  6A           MX
    ROR $00D0                       ; $9A96B8  6E D0 00     MX
    STA $00D3                       ; $9A96BB  8D D3 00     MX
    LDA $0BE7                       ; $9A96BE  AD E7 0B     MX
    SEC                             ; $9A96C1  38           MX
    SBC $00D0                       ; $9A96C2  ED D0 00     MX
    STA $0BE7                       ; $9A96C5  8D E7 0B     MX
    LDA $0BE9                       ; $9A96C8  AD E9 0B     MX
    SBC $00D3                       ; $9A96CB  ED D3 00     MX
    STA $0BE9                       ; $9A96CE  8D E9 0B     MX
    LDA $0BCD                       ; $9A96D1  AD CD 0B     MX
    SEC                             ; $9A96D4  38           MX
    SBC #$0102                      ; $9A96D5  E9 02 01     MX
    STA $00A4                       ; $9A96D8  8D A4 00     MX
    LDA #$0000                      ; $9A96DB  A9 00 00     MX
    SBC #$0000                      ; $9A96DE  E9 00 00     MX
    STA $00EA                       ; $9A96E1  8D EA 00     MX
    LDA $00A4                       ; $9A96E4  AD A4 00     MX
    STA $00E9                       ; $9A96E7  8D E9 00     MX
    ASL $00E8                       ; $9A96EA  0E E8 00     MX
    ROL $00EA                       ; $9A96ED  2E EA 00     MX
    ASL $00E8                       ; $9A96F0  0E E8 00     MX
    ROL $00EA                       ; $9A96F3  2E EA 00     MX
    ASL $00E8                       ; $9A96F6  0E E8 00     MX
    ROL $00EA                       ; $9A96F9  2E EA 00     MX
    ASL $00E8                       ; $9A96FC  0E E8 00     MX
    ROL $00EA                       ; $9A96FF  2E EA 00     MX
    LDA $0BE3                       ; $9A9702  AD E3 0B     MX
    SEC                             ; $9A9705  38           MX
    SBC $00E8                       ; $9A9706  ED E8 00     MX
    STA $00A6                       ; $9A9709  8D A6 00     MX
    STA $00AA                       ; $9A970C  8D AA 00     MX
    LDA $0BE5                       ; $9A970F  AD E5 0B     MX
    SBC $00EA                       ; $9A9712  ED EA 00     MX
    STA $00A8                       ; $9A9715  8D A8 00     MX
    STA $00AC                       ; $9A9718  8D AC 00     MX
    LDA $00AC                       ; $9A971B  AD AC 00     MX
    CMP #$8000                      ; $9A971E  C9 00 80     MX
    ROR                             ; $9A9721  6A           MX
    ROR $00AA                       ; $9A9722  6E AA 00     MX
    CMP #$8000                      ; $9A9725  C9 00 80     MX
    ROR                             ; $9A9728  6A           MX
    ROR $00AA                       ; $9A9729  6E AA 00     MX
    CMP #$8000                      ; $9A972C  C9 00 80     MX
    ROR                             ; $9A972F  6A           MX
    ROR $00AA                       ; $9A9730  6E AA 00     MX
    STA $00AC                       ; $9A9733  8D AC 00     MX
    LDA $00A6                       ; $9A9736  AD A6 00     MX
    SEC                             ; $9A9739  38           MX
    SBC $00AA                       ; $9A973A  ED AA 00     MX
    STA $0BE3                       ; $9A973D  8D E3 0B     MX
    LDA $00A8                       ; $9A9740  AD A8 00     MX
    SBC $00AC                       ; $9A9743  ED AC 00     MX
    STA $0BE5                       ; $9A9746  8D E5 0B     MX
    JMP L_9A995F                    ; $9A9749  4C 5F 99     MX
L_9A974C:
    LDA $0BD5                       ; $9A974C  AD D5 0B     MX
    STA $00DF                       ; $9A974F  8D DF 00     MX
    JMP L_9A9876                    ; $9A9752  4C 76 98     MX
L_9A9755:
    LDA $0BCD                       ; $9A9755  AD CD 0B     MX
    SEC                             ; $9A9758  38           MX
    SBC $00E2                       ; $9A9759  ED E2 00     MX
    STA $00D6                       ; $9A975C  8D D6 00     MX
    LDA $0BD1                       ; $9A975F  AD D1 0B     MX
    SEC                             ; $9A9762  38           MX
    SBC $AAD8,X                     ; $9A9763  FD D8 AA     MX
    STA $00D9                       ; $9A9766  8D D9 00     MX
    LDA $0BD5                       ; $9A9769  AD D5 0B     MX
    SEC                             ; $9A976C  38           MX
    SBC $AADA,X                     ; $9A976D  FD DA AA     MX
    STA $00DC                       ; $9A9770  8D DC 00     MX
    LDA $AADC,X                     ; $9A9773  BD DC AA     MX
    STA $00B4                       ; $9A9776  8D B4 00     MX
    TXA                             ; $9A9779  8A           MX
    CLC                             ; $9A977A  18           MX
    ADC #$0008                      ; $9A977B  69 08 00     MX
    TAX                             ; $9A977E  AA           MX
    LDA $00D6                       ; $9A977F  AD D6 00     MX
    BPL L_9A978E                    ; $9A9782  10 0A        MX
    EOR #$FFFF                      ; $9A9784  49 FF FF     MX
    CLC                             ; $9A9787  18           MX
    ADC #$0001                      ; $9A9788  69 01 00     MX
    STA $00D6                       ; $9A978B  8D D6 00     MX
L_9A978E:
    LDA $00D9                       ; $9A978E  AD D9 00     MX
    BPL L_9A979D                    ; $9A9791  10 0A        MX
    EOR #$FFFF                      ; $9A9793  49 FF FF     MX
    CLC                             ; $9A9796  18           MX
    ADC #$0001                      ; $9A9797  69 01 00     MX
    STA $00D9                       ; $9A979A  8D D9 00     MX
L_9A979D:
    LDA $00DC                       ; $9A979D  AD DC 00     MX
    BPL L_9A97AC                    ; $9A97A0  10 0A        MX
    EOR #$FFFF                      ; $9A97A2  49 FF FF     MX
    CLC                             ; $9A97A5  18           MX
    ADC #$0001                      ; $9A97A6  69 01 00     MX
    STA $00DC                       ; $9A97A9  8D DC 00     MX
L_9A97AC:
    LDA $00D6                       ; $9A97AC  AD D6 00     MX
    CMP $00D9                       ; $9A97AF  CD D9 00     MX
    BPL L_9A97C6                    ; $9A97B2  10 12        MX
    LDA $00D6                       ; $9A97B4  AD D6 00     MX
    STA $00BA                       ; $9A97B7  8D BA 00     MX
    LDA $00D9                       ; $9A97BA  AD D9 00     MX
    STA $00D6                       ; $9A97BD  8D D6 00     MX
    LDA $00BA                       ; $9A97C0  AD BA 00     MX
    STA $00D9                       ; $9A97C3  8D D9 00     MX
L_9A97C6:
    LDA $00D9                       ; $9A97C6  AD D9 00     MX
    CMP $00DC                       ; $9A97C9  CD DC 00     MX
    BPL L_9A97FA                    ; $9A97CC  10 2C        MX
    LDA $00D9                       ; $9A97CE  AD D9 00     MX
    STA $00BA                       ; $9A97D1  8D BA 00     MX
    LDA $00DC                       ; $9A97D4  AD DC 00     MX
    STA $00D9                       ; $9A97D7  8D D9 00     MX
    LDA $00BA                       ; $9A97DA  AD BA 00     MX
    STA $00DC                       ; $9A97DD  8D DC 00     MX
    LDA $00D6                       ; $9A97E0  AD D6 00     MX
    CMP $00D9                       ; $9A97E3  CD D9 00     MX
    BPL L_9A97FA                    ; $9A97E6  10 12        MX
    LDA $00D6                       ; $9A97E8  AD D6 00     MX
    STA $00BA                       ; $9A97EB  8D BA 00     MX
    LDA $00D9                       ; $9A97EE  AD D9 00     MX
    STA $00D6                       ; $9A97F1  8D D6 00     MX
    LDA $00BA                       ; $9A97F4  AD BA 00     MX
    STA $00D9                       ; $9A97F7  8D D9 00     MX
L_9A97FA:
    LSR $00D9                       ; $9A97FA  4E D9 00     MX
    LDA $00DC                       ; $9A97FD  AD DC 00     MX
    LSR                             ; $9A9800  4A           MX
    LSR                             ; $9A9801  4A           MX
    STA $00DC                       ; $9A9802  8D DC 00     MX
    LDA $00D6                       ; $9A9805  AD D6 00     MX
    CLC                             ; $9A9808  18           MX
    ADC $00D9                       ; $9A9809  6D D9 00     MX
    CLC                             ; $9A980C  18           MX
    ADC $00DC                       ; $9A980D  6D DC 00     MX
    SEC                             ; $9A9810  38           MX
    SBC #$0005                      ; $9A9811  E9 05 00     MX
    BCC L_9A981E                    ; $9A9814  90 08        MX
    CMP #$0046                      ; $9A9816  C9 46 00     MX
    BCC L_9A9876                    ; $9A9819  90 5B        MX
    JMP L_9A995F                    ; $9A981B  4C 5F 99     MX
L_9A981E:
    LDA $00B4                       ; $9A981E  AD B4 00     MX
    BMI L_9A9869                    ; $9A9821  30 46        MX
    BEQ L_9A9869                    ; $9A9823  F0 44        MX
    LDA $0C29                       ; $9A9825  AD 29 0C     MX
    BMI L_9A9876                    ; $9A9828  30 4C        MX
    LDA $00EC                       ; $9A982A  AD EC 00     MX
    BNE L_9A9843                    ; $9A982D  D0 14        MX
    INC $00EC                       ; $9A982F  EE EC 00     MX
    LDA $00B4                       ; $9A9832  AD B4 00     MX
    CMP #$0003                      ; $9A9835  C9 03 00     MX
    BCC L_9A9840                    ; $9A9838  90 06        MX
    LDA #$002E                      ; $9A983A  A9 2E 00     MX
    STA $0C57                       ; $9A983D  8D 57 0C     MX
L_9A9840:
    JSR L_9A9D5C                    ; $9A9840  20 5C 9D     MX
L_9A9843:
    LDA $AACE,X                     ; $9A9843  BD CE AA     MX
    STA $00D6                       ; $9A9846  8D D6 00     MX
    LDA $AAD0,X                     ; $9A9849  BD D0 AA     MX
    STA $00D9                       ; $9A984C  8D D9 00     MX
    LDA $AAD2,X                     ; $9A984F  BD D2 AA     MX
    STA $00DC                       ; $9A9852  8D DC 00     MX
    PHX                             ; $9A9855  DA           MX
    JSR L_9AA16C                    ; $9A9856  20 6C A1     MX
    PLX                             ; $9A9859  FA           MX
    LDA $00EC                       ; $9A985A  AD EC 00     MX
    JMP L_9A9876                    ; $9A985D  4C 76 98     MX
L_9A9860:
    INC $0BE5                       ; $9A9860  EE E5 0B     MX
    INC $0BED                       ; $9A9863  EE ED 0B     MX
    JMP L_9A9881                    ; $9A9866  4C 81 98     MX
L_9A9869:
    PHX                             ; $9A9869  DA           MX
    LDA $00EC                       ; $9A986A  AD EC 00     MX
    PHA                             ; $9A986D  48           MX
    JSR L_9A9D81                    ; $9A986E  20 81 9D     MX
    PLA                             ; $9A9871  68           MX
    STA $00EC                       ; $9A9872  8D EC 00     MX
    PLX                             ; $9A9875  FA           MX
L_9A9876:
    LDA $AAD6,X                     ; $9A9876  BD D6 AA     MX
    STA $00E2                       ; $9A9879  8D E2 00     MX
    BEQ L_9A9881                    ; $9A987C  F0 03        MX
    JMP L_9A9755                    ; $9A987E  4C 55 97     MX
L_9A9881:
    LDA $00EC                       ; $9A9881  AD EC 00     MX
    BNE L_9A9889                    ; $9A9884  D0 03        MX
    JMP L_9A995F                    ; $9A9886  4C 5F 99     MX
L_9A9889:
    SEP #$10                        ; $9A9889  E2 10        MX
    LDA $0BE4                       ; $9A988B  AD E4 0B     Mx
    STA $00D6                       ; $9A988E  8D D6 00     Mx
    STA $00D0                       ; $9A9891  8D D0 00     Mx
    LDA $0BEC                       ; $9A9894  AD EC 0B     Mx
    STA $00D9                       ; $9A9897  8D D9 00     Mx
    STA $00D3                       ; $9A989A  8D D3 00     Mx
    LDA $0BE8                       ; $9A989D  AD E8 0B     Mx
    STA $00DC                       ; $9A98A0  8D DC 00     Mx
    LDA $00D0                       ; $9A98A3  AD D0 00     Mx
    BPL L_9A98B2                    ; $9A98A6  10 0A        Mx
    EOR #$FFFF                      ; $9A98A8  49 FF FF     Mx
    CLC                             ; $9A98AB  18           Mx
    ADC #$0001                      ; $9A98AC  69 01 00     Mx
    STA $00D0                       ; $9A98AF  8D D0 00     Mx
L_9A98B2:
    LDA $00D3                       ; $9A98B2  AD D3 00     Mx
    BPL L_9A98C1                    ; $9A98B5  10 0A        Mx
    EOR #$FFFF                      ; $9A98B7  49 FF FF     Mx
    CLC                             ; $9A98BA  18           Mx
    ADC #$0001                      ; $9A98BB  69 01 00     Mx
    STA $00D3                       ; $9A98BE  8D D3 00     Mx
L_9A98C1:
    LDA $00D3                       ; $9A98C1  AD D3 00     Mx
    CMP $00D0                       ; $9A98C4  CD D0 00     Mx
    BCS L_9A98CF                    ; $9A98C7  B0 06        Mx
    LDA $00D0                       ; $9A98C9  AD D0 00     Mx
    STA $00D3                       ; $9A98CC  8D D3 00     Mx
L_9A98CF:
    LDA $00D3                       ; $9A98CF  AD D3 00     Mx
    CMP #$00E1                      ; $9A98D2  C9 E1 00     Mx
    BCC L_9A992B                    ; $9A98D5  90 54        Mx
    LDA $0BE9                       ; $9A98D7  AD E9 0B     Mx
    BPL L_9A98E7                    ; $9A98DA  10 0B        Mx
    LDA $00DD                       ; $9A98DC  AD DD 00     Mx
    AND #$00FF                      ; $9A98DF  29 FF 00     Mx
    ORA #$FF00                      ; $9A98E2  09 00 FF     Mx
    BNE L_9A98ED                    ; $9A98E5  D0 06        Mx
L_9A98E7:
    LDA $00DD                       ; $9A98E7  AD DD 00     Mx
    AND #$00FF                      ; $9A98EA  29 FF 00     Mx
L_9A98ED:
    STA $00B7                       ; $9A98ED  8D B7 00     Mx
L_9A98F0:
    LSR $00D3                       ; $9A98F0  4E D3 00     Mx
    LDA $00D6                       ; $9A98F3  AD D6 00     Mx
    CMP #$8000                      ; $9A98F6  C9 00 80     Mx
    ROR                             ; $9A98F9  6A           Mx
    STA $00D6                       ; $9A98FA  8D D6 00     Mx
    LDA $00D9                       ; $9A98FD  AD D9 00     Mx
    CMP #$8000                      ; $9A9900  C9 00 80     Mx
    ROR                             ; $9A9903  6A           Mx
    STA $00D9                       ; $9A9904  8D D9 00     Mx
    LDA $00DC                       ; $9A9907  AD DC 00     Mx
    CLC                             ; $9A990A  18           Mx
    ADC $00B7                       ; $9A990B  6D B7 00     Mx
    STA $00DC                       ; $9A990E  8D DC 00     Mx
    LDA $00D3                       ; $9A9911  AD D3 00     Mx
    CMP #$00E0                      ; $9A9914  C9 E0 00     Mx
    BCS L_9A98F0                    ; $9A9917  B0 D7        Mx
    STZ $0BE3                       ; $9A9919  9C E3 0B     Mx
    LDA $00D6                       ; $9A991C  AD D6 00     Mx
    STA $0BE4                       ; $9A991F  8D E4 0B     Mx
    STZ $0BEB                       ; $9A9922  9C EB 0B     Mx
    LDA $00D9                       ; $9A9925  AD D9 00     Mx
    STA $0BEC                       ; $9A9928  8D EC 0B     Mx
L_9A992B:
    LDX #$00                        ; $9A992B  A2 00        Mx
    LDA $0BE9                       ; $9A992D  AD E9 0B     Mx
    BPL L_9A994B                    ; $9A9930  10 19        Mx
    LDA $00DC                       ; $9A9932  AD DC 00     Mx
    LDX #$FF                        ; $9A9935  A2 FF        Mx
    CMP #$FCD0                      ; $9A9937  C9 D0 FC     Mx
    BCS L_9A993F                    ; $9A993A  B0 03        Mx
    LDA #$FCD0                      ; $9A993C  A9 D0 FC     Mx
L_9A993F:
    STZ $0BE7                       ; $9A993F  9C E7 0B     Mx
    STX $0BEA                       ; $9A9942  8E EA 0B     Mx
    STA $0BE8                       ; $9A9945  8D E8 0B     Mx
    JMP L_9A995F                    ; $9A9948  4C 5F 99     Mx
L_9A994B:
    LDA $00DC                       ; $9A994B  AD DC 00     Mx
    CMP #$0330                      ; $9A994E  C9 30 03     Mx
    BCC L_9A9956                    ; $9A9951  90 03        Mx
    LDA #$0330                      ; $9A9953  A9 30 03     Mx
L_9A9956:
    STZ $0BE7                       ; $9A9956  9C E7 0B     Mx
    STX $0BEA                       ; $9A9959  8E EA 0B     Mx
    STA $0BE8                       ; $9A995C  8D E8 0B     Mx
L_9A995F:
    LDA $0BD5                       ; $9A995F  AD D5 0B     MX
    SEC                             ; $9A9962  38           MX
    SBC $0C45                       ; $9A9963  ED 45 0C     MX
    CLC                             ; $9A9966  18           MX
    ADC #$000A                      ; $9A9967  69 0A 00     MX
    BMI L_9A99BF                    ; $9A996A  30 53        MX
    CMP #$0046                      ; $9A996C  C9 46 00     MX
    BCS L_9A99BF                    ; $9A996F  B0 4E        MX
    LDA $0BD1                       ; $9A9971  AD D1 0B     MX
    CLC                             ; $9A9974  18           MX
    ADC #$000C                      ; $9A9975  69 0C 00     MX
    CMP #$0070                      ; $9A9978  C9 70 00     MX
    BCC L_9A99BF                    ; $9A997B  90 42        MX
    CMP #$0098                      ; $9A997D  C9 98 00     MX
    BCS L_9A99BF                    ; $9A9980  B0 3D        MX
    LDA $0BCD                       ; $9A9982  AD CD 0B     MX
    CLC                             ; $9A9985  18           MX
    ADC #$0005                      ; $9A9986  69 05 00     MX
    CMP #$010C                      ; $9A9989  C9 0C 01     MX
    BCC L_9A99BF                    ; $9A998C  90 31        MX
    LDA $0BE5                       ; $9A998E  AD E5 0B     MX
    BMI L_9A99BF                    ; $9A9991  30 2C        MX
    JSR L_9A99C2                    ; $9A9993  20 C2 99     MX
    STZ $0CD1                       ; $9A9996  9C D1 0C     MX
    LDA $0BE3                       ; $9A9999  AD E3 0B     MX
    EOR #$FFFF                      ; $9A999C  49 FF FF     MX
    CLC                             ; $9A999F  18           MX
    ADC #$0001                      ; $9A99A0  69 01 00     MX
    STA $0BE3                       ; $9A99A3  8D E3 0B     MX
    LDA $0BE5                       ; $9A99A6  AD E5 0B     MX
    EOR #$FFFF                      ; $9A99A9  49 FF FF     MX
    ADC #$0000                      ; $9A99AC  69 00 00     MX
    CMP #$8000                      ; $9A99AF  C9 00 80     MX
    ROR                             ; $9A99B2  6A           MX
    ROR $0BE3                       ; $9A99B3  6E E3 0B     MX
    STA $0BE5                       ; $9A99B6  8D E5 0B     MX
    LDA #$0001                      ; $9A99B9  A9 01 00     MX
    STA $1D76                       ; $9A99BC  8D 76 1D     MX
L_9A99BF:
    SEP #$10                        ; $9A99BF  E2 10        MX
    RTS                             ; $9A99C1  60           Mx
L_9A99C2:
    LDA $1605                       ; $9A99C2  AD 05 16     MX
    BNE L_9A99DF                    ; $9A99C5  D0 18        MX
    LDA $1D56                       ; $9A99C7  AD 56 1D     MX
    AND #$0002                      ; $9A99CA  29 02 00     MX
    BEQ L_9A99D8                    ; $9A99CD  F0 09        MX
    LDA #$0004                      ; $9A99CF  A9 04 00     MX
    JSL L_BDFDF3                    ; $9A99D2  22 F3 FD BD  MX
    BRA L_9A99DF                    ; $9A99D6  80 07        MX
L_9A99D8:
    LDA #$0015                      ; $9A99D8  A9 15 00     MX
    JSL L_BDFDF3                    ; $9A99DB  22 F3 FD BD  MX
L_9A99DF:
    LDA #$0007                      ; $9A99DF  A9 07 00     MX
    STA $1605                       ; $9A99E2  8D 05 16     MX
    RTS                             ; $9A99E5  60           MX
L_9A99E6:
    RTS                             ; $9A99E6  60           Mx
L_9A99E7:
    LDA $0C1F                       ; $9A99E7  AD 1F 0C     Mx
    AND #$00FF                      ; $9A99EA  29 FF 00     Mx
    CMP #$0003                      ; $9A99ED  C9 03 00     Mx
    BCC L_9A99E6                    ; $9A99F0  90 F4        Mx
    REP #$10                        ; $9A99F2  C2 10        Mx
    LDX #$0000                      ; $9A99F4  A2 00 00     MX
    STZ $00EC                       ; $9A99F7  9C EC 00     MX
    LDA $0BD1                       ; $9A99FA  AD D1 0B     MX
    CLC                             ; $9A99FD  18           MX
    ADC #$000C                      ; $9A99FE  69 0C 00     MX
    STA $00E5                       ; $9A9A01  8D E5 00     MX
    CMP #$007C                      ; $9A9A04  C9 7C 00     MX
    BCC L_9A9A12                    ; $9A9A07  90 09        MX
    JMP L_9A9CF9                    ; $9A9A09  4C F9 9C     MX
L_9A9A0C:
    STZ $0C29                       ; $9A9A0C  9C 29 0C     MX
    JMP L_9A9D59                    ; $9A9A0F  4C 59 9D     MX
L_9A9A12:
    CMP #$0062                      ; $9A9A12  C9 62 00     MX
    BCC L_9A9A0C                    ; $9A9A15  90 F5        MX
    LDA $0C29                       ; $9A9A17  AD 29 0C     MX
    BMI L_9A9A1F                    ; $9A9A1A  30 03        MX
    JMP L_9A9AE3                    ; $9A9A1C  4C E3 9A     MX
L_9A9A1F:
    LDA $0BED                       ; $9A9A1F  AD ED 0B     MX
    AND #$8000                      ; $9A9A22  29 00 80     MX
    STA $00A4                       ; $9A9A25  8D A4 00     MX
    LDA $0BED                       ; $9A9A28  AD ED 0B     MX
    LSR                             ; $9A9A2B  4A           MX
    ROR $0BEB                       ; $9A9A2C  6E EB 0B     MX
    ORA $00A4                       ; $9A9A2F  0D A4 00     MX
    STA $0BED                       ; $9A9A32  8D ED 0B     MX
    LDA $0BE9                       ; $9A9A35  AD E9 0B     MX
    STA $00D3                       ; $9A9A38  8D D3 00     MX
    LDA $0BE7                       ; $9A9A3B  AD E7 0B     MX
    STA $00D0                       ; $9A9A3E  8D D0 00     MX
    LDA $00D3                       ; $9A9A41  AD D3 00     MX
    CMP #$8000                      ; $9A9A44  C9 00 80     MX
    ROR                             ; $9A9A47  6A           MX
    ROR $00D0                       ; $9A9A48  6E D0 00     MX
    CMP #$8000                      ; $9A9A4B  C9 00 80     MX
    ROR                             ; $9A9A4E  6A           MX
    ROR $00D0                       ; $9A9A4F  6E D0 00     MX
    STA $00D3                       ; $9A9A52  8D D3 00     MX
    LDA $0BE7                       ; $9A9A55  AD E7 0B     MX
    SEC                             ; $9A9A58  38           MX
    SBC $00D0                       ; $9A9A59  ED D0 00     MX
    STA $0BE7                       ; $9A9A5C  8D E7 0B     MX
    LDA $0BE9                       ; $9A9A5F  AD E9 0B     MX
    SBC $00D3                       ; $9A9A62  ED D3 00     MX
    STA $0BE9                       ; $9A9A65  8D E9 0B     MX
    LDA $0BCD                       ; $9A9A68  AD CD 0B     MX
    SEC                             ; $9A9A6B  38           MX
    SBC #$FF06                      ; $9A9A6C  E9 06 FF     MX
    STA $00A4                       ; $9A9A6F  8D A4 00     MX
    LDA #$0000                      ; $9A9A72  A9 00 00     MX
    SBC #$0000                      ; $9A9A75  E9 00 00     MX
    STA $00EA                       ; $9A9A78  8D EA 00     MX
    LDA $00A4                       ; $9A9A7B  AD A4 00     MX
    STA $00E9                       ; $9A9A7E  8D E9 00     MX
    ASL $00E8                       ; $9A9A81  0E E8 00     MX
    ROL $00EA                       ; $9A9A84  2E EA 00     MX
    ASL $00E8                       ; $9A9A87  0E E8 00     MX
    ROL $00EA                       ; $9A9A8A  2E EA 00     MX
    ASL $00E8                       ; $9A9A8D  0E E8 00     MX
    ROL $00EA                       ; $9A9A90  2E EA 00     MX
    ASL $00E8                       ; $9A9A93  0E E8 00     MX
    ROL $00EA                       ; $9A9A96  2E EA 00     MX
    LDA $0BE3                       ; $9A9A99  AD E3 0B     MX
    SEC                             ; $9A9A9C  38           MX
    SBC $00E8                       ; $9A9A9D  ED E8 00     MX
    STA $00A6                       ; $9A9AA0  8D A6 00     MX
    STA $00AA                       ; $9A9AA3  8D AA 00     MX
    LDA $0BE5                       ; $9A9AA6  AD E5 0B     MX
    SBC $00EA                       ; $9A9AA9  ED EA 00     MX
    STA $00A8                       ; $9A9AAC  8D A8 00     MX
    STA $00AC                       ; $9A9AAF  8D AC 00     MX
    LDA $00AC                       ; $9A9AB2  AD AC 00     MX
    CMP #$8000                      ; $9A9AB5  C9 00 80     MX
    ROR                             ; $9A9AB8  6A           MX
    ROR $00AA                       ; $9A9AB9  6E AA 00     MX
    CMP #$8000                      ; $9A9ABC  C9 00 80     MX
    ROR                             ; $9A9ABF  6A           MX
    ROR $00AA                       ; $9A9AC0  6E AA 00     MX
    CMP #$8000                      ; $9A9AC3  C9 00 80     MX
    ROR                             ; $9A9AC6  6A           MX
    ROR $00AA                       ; $9A9AC7  6E AA 00     MX
    STA $00AC                       ; $9A9ACA  8D AC 00     MX
    LDA $00A6                       ; $9A9ACD  AD A6 00     MX
    SEC                             ; $9A9AD0  38           MX
    SBC $00AA                       ; $9A9AD1  ED AA 00     MX
    STA $0BE3                       ; $9A9AD4  8D E3 0B     MX
    LDA $00A8                       ; $9A9AD7  AD A8 00     MX
    SBC $00AC                       ; $9A9ADA  ED AC 00     MX
    STA $0BE5                       ; $9A9ADD  8D E5 0B     MX
    JMP L_9A9CF9                    ; $9A9AE0  4C F9 9C     MX
L_9A9AE3:
    LDA $0BD5                       ; $9A9AE3  AD D5 0B     MX
    STA $00DF                       ; $9A9AE6  8D DF 00     MX
    JMP L_9A9C10                    ; $9A9AE9  4C 10 9C     MX
L_9A9AEC:
    LDA $0BCD                       ; $9A9AEC  AD CD 0B     MX
    SEC                             ; $9A9AEF  38           MX
    SBC $00E2                       ; $9A9AF0  ED E2 00     MX
    STA $00D6                       ; $9A9AF3  8D D6 00     MX
    LDA $0BD1                       ; $9A9AF6  AD D1 0B     MX
    SEC                             ; $9A9AF9  38           MX
    SBC $AA5E,X                     ; $9A9AFA  FD 5E AA     MX
    STA $00D9                       ; $9A9AFD  8D D9 00     MX
    LDA $0BD5                       ; $9A9B00  AD D5 0B     MX
    SEC                             ; $9A9B03  38           MX
    SBC $AA60,X                     ; $9A9B04  FD 60 AA     MX
    STA $00DC                       ; $9A9B07  8D DC 00     MX
    LDA $AA62,X                     ; $9A9B0A  BD 62 AA     MX
    STA $00B4                       ; $9A9B0D  8D B4 00     MX
    TXA                             ; $9A9B10  8A           MX
    CLC                             ; $9A9B11  18           MX
    ADC #$0008                      ; $9A9B12  69 08 00     MX
    TAX                             ; $9A9B15  AA           MX
    LDA $00D6                       ; $9A9B16  AD D6 00     MX
    BPL L_9A9B25                    ; $9A9B19  10 0A        MX
    EOR #$FFFF                      ; $9A9B1B  49 FF FF     MX
    CLC                             ; $9A9B1E  18           MX
    ADC #$0001                      ; $9A9B1F  69 01 00     MX
    STA $00D6                       ; $9A9B22  8D D6 00     MX
L_9A9B25:
    LDA $00D9                       ; $9A9B25  AD D9 00     MX
    BPL L_9A9B34                    ; $9A9B28  10 0A        MX
    EOR #$FFFF                      ; $9A9B2A  49 FF FF     MX
    CLC                             ; $9A9B2D  18           MX
    ADC #$0001                      ; $9A9B2E  69 01 00     MX
    STA $00D9                       ; $9A9B31  8D D9 00     MX
L_9A9B34:
    LDA $00DC                       ; $9A9B34  AD DC 00     MX
    BPL L_9A9B43                    ; $9A9B37  10 0A        MX
    EOR #$FFFF                      ; $9A9B39  49 FF FF     MX
    CLC                             ; $9A9B3C  18           MX
    ADC #$0001                      ; $9A9B3D  69 01 00     MX
    STA $00DC                       ; $9A9B40  8D DC 00     MX
L_9A9B43:
    LDA $00D6                       ; $9A9B43  AD D6 00     MX
    CMP $00D9                       ; $9A9B46  CD D9 00     MX
    BPL L_9A9B5D                    ; $9A9B49  10 12        MX
    LDA $00D6                       ; $9A9B4B  AD D6 00     MX
    STA $00BA                       ; $9A9B4E  8D BA 00     MX
    LDA $00D9                       ; $9A9B51  AD D9 00     MX
    STA $00D6                       ; $9A9B54  8D D6 00     MX
    LDA $00BA                       ; $9A9B57  AD BA 00     MX
    STA $00D9                       ; $9A9B5A  8D D9 00     MX
L_9A9B5D:
    LDA $00D9                       ; $9A9B5D  AD D9 00     MX
    CMP $00DC                       ; $9A9B60  CD DC 00     MX
    BPL L_9A9B91                    ; $9A9B63  10 2C        MX
    LDA $00D9                       ; $9A9B65  AD D9 00     MX
    STA $00BA                       ; $9A9B68  8D BA 00     MX
    LDA $00DC                       ; $9A9B6B  AD DC 00     MX
    STA $00D9                       ; $9A9B6E  8D D9 00     MX
    LDA $00BA                       ; $9A9B71  AD BA 00     MX
    STA $00DC                       ; $9A9B74  8D DC 00     MX
    LDA $00D6                       ; $9A9B77  AD D6 00     MX
    CMP $00D9                       ; $9A9B7A  CD D9 00     MX
    BPL L_9A9B91                    ; $9A9B7D  10 12        MX
    LDA $00D6                       ; $9A9B7F  AD D6 00     MX
    STA $00BA                       ; $9A9B82  8D BA 00     MX
    LDA $00D9                       ; $9A9B85  AD D9 00     MX
    STA $00D6                       ; $9A9B88  8D D6 00     MX
    LDA $00BA                       ; $9A9B8B  AD BA 00     MX
    STA $00D9                       ; $9A9B8E  8D D9 00     MX
L_9A9B91:
    LSR $00D9                       ; $9A9B91  4E D9 00     MX
    LDA $00DC                       ; $9A9B94  AD DC 00     MX
    LSR                             ; $9A9B97  4A           MX
    LSR                             ; $9A9B98  4A           MX
    STA $00DC                       ; $9A9B99  8D DC 00     MX
    LDA $00D6                       ; $9A9B9C  AD D6 00     MX
    CLC                             ; $9A9B9F  18           MX
    ADC $00D9                       ; $9A9BA0  6D D9 00     MX
    CLC                             ; $9A9BA3  18           MX
    ADC $00DC                       ; $9A9BA4  6D DC 00     MX
    SEC                             ; $9A9BA7  38           MX
    SBC #$0005                      ; $9A9BA8  E9 05 00     MX
    BCC L_9A9BB5                    ; $9A9BAB  90 08        MX
    CMP #$0046                      ; $9A9BAD  C9 46 00     MX
    BCC L_9A9C10                    ; $9A9BB0  90 5E        MX
    JMP L_9A9CF9                    ; $9A9BB2  4C F9 9C     MX
L_9A9BB5:
    LDA $00B4                       ; $9A9BB5  AD B4 00     MX
    BMI L_9A9C03                    ; $9A9BB8  30 49        MX
    BEQ L_9A9C03                    ; $9A9BBA  F0 47        MX
    LDA $0C29                       ; $9A9BBC  AD 29 0C     MX
    BMI L_9A9C10                    ; $9A9BBF  30 4F        MX
    LDA $00EC                       ; $9A9BC1  AD EC 00     MX
    BNE L_9A9BDD                    ; $9A9BC4  D0 17        MX
    INC $00EC                       ; $9A9BC6  EE EC 00     MX
    LDA $00B4                       ; $9A9BC9  AD B4 00     MX
    CMP #$0003                      ; $9A9BCC  C9 03 00     MX
    BCC L_9A9BDA                    ; $9A9BCF  90 09        MX
    LDA #$002E                      ; $9A9BD1  A9 2E 00     MX
    STA $0C57                       ; $9A9BD4  8D 57 0C     MX
    INC $00EC                       ; $9A9BD7  EE EC 00     MX
L_9A9BDA:
    JSR L_9A9D5C                    ; $9A9BDA  20 5C 9D     MX
L_9A9BDD:
    LDA $AA54,X                     ; $9A9BDD  BD 54 AA     MX
    STA $00D6                       ; $9A9BE0  8D D6 00     MX
    LDA $AA56,X                     ; $9A9BE3  BD 56 AA     MX
    STA $00D9                       ; $9A9BE6  8D D9 00     MX
    LDA $AA58,X                     ; $9A9BE9  BD 58 AA     MX
    STA $00DC                       ; $9A9BEC  8D DC 00     MX
    PHX                             ; $9A9BEF  DA           MX
    JSR L_9AA16C                    ; $9A9BF0  20 6C A1     MX
    PLX                             ; $9A9BF3  FA           MX
    LDA $00EC                       ; $9A9BF4  AD EC 00     MX
    JMP L_9A9C10                    ; $9A9BF7  4C 10 9C     MX
L_9A9BFA:
    INC $0BE5                       ; $9A9BFA  EE E5 0B     MX
    INC $0BED                       ; $9A9BFD  EE ED 0B     MX
    JMP L_9A9C1B                    ; $9A9C00  4C 1B 9C     MX
L_9A9C03:
    PHX                             ; $9A9C03  DA           MX
    LDA $00EC                       ; $9A9C04  AD EC 00     MX
    PHA                             ; $9A9C07  48           MX
    JSR L_9A9D81                    ; $9A9C08  20 81 9D     MX
    PLA                             ; $9A9C0B  68           MX
    STA $00EC                       ; $9A9C0C  8D EC 00     MX
    PLX                             ; $9A9C0F  FA           MX
L_9A9C10:
    LDA $AA5C,X                     ; $9A9C10  BD 5C AA     MX
    STA $00E2                       ; $9A9C13  8D E2 00     MX
    BEQ L_9A9C1B                    ; $9A9C16  F0 03        MX
    JMP L_9A9AEC                    ; $9A9C18  4C EC 9A     MX
L_9A9C1B:
    LDA $00EC                       ; $9A9C1B  AD EC 00     MX
    BNE L_9A9C23                    ; $9A9C1E  D0 03        MX
    JMP L_9A9CF9                    ; $9A9C20  4C F9 9C     MX
L_9A9C23:
    SEP #$10                        ; $9A9C23  E2 10        MX
    LDA $0BE4                       ; $9A9C25  AD E4 0B     Mx
    STA $00D6                       ; $9A9C28  8D D6 00     Mx
    STA $00D0                       ; $9A9C2B  8D D0 00     Mx
    LDA $0BEC                       ; $9A9C2E  AD EC 0B     Mx
    STA $00D9                       ; $9A9C31  8D D9 00     Mx
    STA $00D3                       ; $9A9C34  8D D3 00     Mx
    LDA $0BE8                       ; $9A9C37  AD E8 0B     Mx
    STA $00DC                       ; $9A9C3A  8D DC 00     Mx
    LDA $00D0                       ; $9A9C3D  AD D0 00     Mx
    BPL L_9A9C4C                    ; $9A9C40  10 0A        Mx
    EOR #$FFFF                      ; $9A9C42  49 FF FF     Mx
    CLC                             ; $9A9C45  18           Mx
    ADC #$0001                      ; $9A9C46  69 01 00     Mx
    STA $00D0                       ; $9A9C49  8D D0 00     Mx
L_9A9C4C:
    LDA $00D3                       ; $9A9C4C  AD D3 00     Mx
    BPL L_9A9C5B                    ; $9A9C4F  10 0A        Mx
    EOR #$FFFF                      ; $9A9C51  49 FF FF     Mx
    CLC                             ; $9A9C54  18           Mx
    ADC #$0001                      ; $9A9C55  69 01 00     Mx
    STA $00D3                       ; $9A9C58  8D D3 00     Mx
L_9A9C5B:
    LDA $00D3                       ; $9A9C5B  AD D3 00     Mx
    CMP $00D0                       ; $9A9C5E  CD D0 00     Mx
    BCS L_9A9C69                    ; $9A9C61  B0 06        Mx
    LDA $00D0                       ; $9A9C63  AD D0 00     Mx
    STA $00D3                       ; $9A9C66  8D D3 00     Mx
L_9A9C69:
    LDA $00D3                       ; $9A9C69  AD D3 00     Mx
    CMP #$00E1                      ; $9A9C6C  C9 E1 00     Mx
    BCC L_9A9CC5                    ; $9A9C6F  90 54        Mx
    LDA $0BE9                       ; $9A9C71  AD E9 0B     Mx
    BPL L_9A9C81                    ; $9A9C74  10 0B        Mx
    LDA $00DD                       ; $9A9C76  AD DD 00     Mx
    AND #$00FF                      ; $9A9C79  29 FF 00     Mx
    ORA #$FF00                      ; $9A9C7C  09 00 FF     Mx
    BNE L_9A9C87                    ; $9A9C7F  D0 06        Mx
L_9A9C81:
    LDA $00DD                       ; $9A9C81  AD DD 00     Mx
    AND #$00FF                      ; $9A9C84  29 FF 00     Mx
L_9A9C87:
    STA $00B7                       ; $9A9C87  8D B7 00     Mx
L_9A9C8A:
    LSR $00D3                       ; $9A9C8A  4E D3 00     Mx
    LDA $00D6                       ; $9A9C8D  AD D6 00     Mx
    CMP #$8000                      ; $9A9C90  C9 00 80     Mx
    ROR                             ; $9A9C93  6A           Mx
    STA $00D6                       ; $9A9C94  8D D6 00     Mx
    LDA $00D9                       ; $9A9C97  AD D9 00     Mx
    CMP #$8000                      ; $9A9C9A  C9 00 80     Mx
    ROR                             ; $9A9C9D  6A           Mx
    STA $00D9                       ; $9A9C9E  8D D9 00     Mx
    LDA $00DC                       ; $9A9CA1  AD DC 00     Mx
    CLC                             ; $9A9CA4  18           Mx
    ADC $00B7                       ; $9A9CA5  6D B7 00     Mx
    STA $00DC                       ; $9A9CA8  8D DC 00     Mx
    LDA $00D3                       ; $9A9CAB  AD D3 00     Mx
    CMP #$00E0                      ; $9A9CAE  C9 E0 00     Mx
    BCS L_9A9C8A                    ; $9A9CB1  B0 D7        Mx
    STZ $0BE3                       ; $9A9CB3  9C E3 0B     Mx
    LDA $00D6                       ; $9A9CB6  AD D6 00     Mx
    STA $0BE4                       ; $9A9CB9  8D E4 0B     Mx
    STZ $0BEB                       ; $9A9CBC  9C EB 0B     Mx
    LDA $00D9                       ; $9A9CBF  AD D9 00     Mx
    STA $0BEC                       ; $9A9CC2  8D EC 0B     Mx
L_9A9CC5:
    LDX #$00                        ; $9A9CC5  A2 00        Mx
    LDA $0BE9                       ; $9A9CC7  AD E9 0B     Mx
    BPL L_9A9CE5                    ; $9A9CCA  10 19        Mx
    LDA $00DC                       ; $9A9CCC  AD DC 00     Mx
    LDX #$FF                        ; $9A9CCF  A2 FF        Mx
    CMP #$FCD0                      ; $9A9CD1  C9 D0 FC     Mx
    BCS L_9A9CD9                    ; $9A9CD4  B0 03        Mx
    LDA #$FCD0                      ; $9A9CD6  A9 D0 FC     Mx
L_9A9CD9:
    STZ $0BE7                       ; $9A9CD9  9C E7 0B     Mx
    STX $0BEA                       ; $9A9CDC  8E EA 0B     Mx
    STA $0BE8                       ; $9A9CDF  8D E8 0B     Mx
    JMP L_9A9CF9                    ; $9A9CE2  4C F9 9C     Mx
L_9A9CE5:
    LDA $00DC                       ; $9A9CE5  AD DC 00     Mx
    CMP #$0330                      ; $9A9CE8  C9 30 03     Mx
    BCC L_9A9CF0                    ; $9A9CEB  90 03        Mx
    LDA #$0330                      ; $9A9CED  A9 30 03     Mx
L_9A9CF0:
    STZ $0BE7                       ; $9A9CF0  9C E7 0B     Mx
    STX $0BEA                       ; $9A9CF3  8E EA 0B     Mx
    STA $0BE8                       ; $9A9CF6  8D E8 0B     Mx
L_9A9CF9:
    LDA $0BD5                       ; $9A9CF9  AD D5 0B     MX
    SEC                             ; $9A9CFC  38           MX
    SBC $0C45                       ; $9A9CFD  ED 45 0C     MX
    CLC                             ; $9A9D00  18           MX
    ADC #$000A                      ; $9A9D01  69 0A 00     MX
    BMI L_9A9D59                    ; $9A9D04  30 53        MX
    CMP #$0046                      ; $9A9D06  C9 46 00     MX
    BCS L_9A9D59                    ; $9A9D09  B0 4E        MX
    LDA $0BD1                       ; $9A9D0B  AD D1 0B     MX
    CLC                             ; $9A9D0E  18           MX
    ADC #$000C                      ; $9A9D0F  69 0C 00     MX
    CMP #$0070                      ; $9A9D12  C9 70 00     MX
    BCC L_9A9D59                    ; $9A9D15  90 42        MX
    CMP #$00AC                      ; $9A9D17  C9 AC 00     MX
    BCS L_9A9D59                    ; $9A9D1A  B0 3D        MX
    LDA $0BCD                       ; $9A9D1C  AD CD 0B     MX
    SEC                             ; $9A9D1F  38           MX
    SBC #$0005                      ; $9A9D20  E9 05 00     MX
    CMP #$FEFC                      ; $9A9D23  C9 FC FE     MX
    BCS L_9A9D59                    ; $9A9D26  B0 31        MX
    JSR L_9A99C2                    ; $9A9D28  20 C2 99     MX
    STZ $0CD1                       ; $9A9D2B  9C D1 0C     MX
    LDA $0BE5                       ; $9A9D2E  AD E5 0B     MX
    BPL L_9A9D59                    ; $9A9D31  10 26        MX
    LDA $0BE3                       ; $9A9D33  AD E3 0B     MX
    EOR #$FFFF                      ; $9A9D36  49 FF FF     MX
    CLC                             ; $9A9D39  18           MX
    ADC #$0001                      ; $9A9D3A  69 01 00     MX
    STA $0BE3                       ; $9A9D3D  8D E3 0B     MX
    LDA $0BE5                       ; $9A9D40  AD E5 0B     MX
    EOR #$FFFF                      ; $9A9D43  49 FF FF     MX
    ADC #$0000                      ; $9A9D46  69 00 00     MX
    CMP #$8000                      ; $9A9D49  C9 00 80     MX
    ROR                             ; $9A9D4C  6A           MX
    ROR $0BE3                       ; $9A9D4D  6E E3 0B     MX
    STA $0BE5                       ; $9A9D50  8D E5 0B     MX
    LDA #$0001                      ; $9A9D53  A9 01 00     MX
    STA $1D76                       ; $9A9D56  8D 76 1D     MX
L_9A9D59:
    SEP #$10                        ; $9A9D59  E2 10        MX
    RTS                             ; $9A9D5B  60           Mx
L_9A9D5C:
    PHX                             ; $9A9D5C  DA           MX
    LDA $1603                       ; $9A9D5D  AD 03 16     MX
    BNE L_9A9D77                    ; $9A9D60  D0 15        MX
    LDA $1D57                       ; $9A9D62  AD 57 1D     MX
    AND #$0003                      ; $9A9D65  29 03 00     MX
    ASL                             ; $9A9D68  0A           MX
    TAX                             ; $9A9D69  AA           MX
    LDA $9D79,X                     ; $9A9D6A  BD 79 9D     MX
    JSL L_BDFDF3                    ; $9A9D6D  22 F3 FD BD  MX
    LDA #$0007                      ; $9A9D71  A9 07 00     MX
    STA $1603                       ; $9A9D74  8D 03 16     MX
L_9A9D77:
    PLX                             ; $9A9D77  FA           MX
    RTS                             ; $9A9D78  60           MX
    db $13,$00,$19,$00,$1A,$00,$13,$00                                 ; $9A9D79
L_9A9D81:
    STZ $0CD1                       ; $9A9D81  9C D1 0C     MX
    LDA $00B4                       ; $9A9D84  AD B4 00     MX
    STA $00A6                       ; $9A9D87  8D A6 00     MX
    LDA $0BE9                       ; $9A9D8A  AD E9 0B     MX
    BPL L_9A9D92                    ; $9A9D8D  10 03        MX
L_9A9D8F:
    JMP L_9AA053                    ; $9A9D8F  4C 53 A0     MX
L_9A9D92:
    ORA $0BE7                       ; $9A9D92  0D E7 0B     MX
    BEQ L_9A9D8F                    ; $9A9D95  F0 F8        MX
    INC $00B4                       ; $9A9D97  EE B4 00     MX
    BNE L_9A9DA5                    ; $9A9D9A  D0 09        MX
    LDA #$0001                      ; $9A9D9C  A9 01 00     MX
    STA $0C29                       ; $9A9D9F  8D 29 0C     MX
    JMP L_9AA053                    ; $9A9DA2  4C 53 A0     MX
L_9A9DA5:
    LDA $0C29                       ; $9A9DA5  AD 29 0C     MX
    BMI L_9A9D8F                    ; $9A9DA8  30 E5        MX
    BEQ L_9A9D8F                    ; $9A9DAA  F0 E3        MX
    LDA #$FFFF                      ; $9A9DAC  A9 FF FF     MX
    STA $0C29                       ; $9A9DAF  8D 29 0C     MX
    LDA $0B50                       ; $9A9DB2  AD 50 0B     MX
    BNE L_9A9D8F                    ; $9A9DB5  D0 D8        MX
    LDA $0BFF                       ; $9A9DB7  AD FF 0B     MX
    BNE L_9A9D8F                    ; $9A9DBA  D0 D3        MX
    LDA #$003C                      ; $9A9DBC  A9 3C 00     MX
    STA $0BF9                       ; $9A9DBF  8D F9 0B     MX
    LDA $0BD9                       ; $9A9DC2  AD D9 0B     MX
    BMI L_9A9DE3                    ; $9A9DC5  30 1C        MX
    STX $00AE                       ; $9A9DC7  8E AE 00     MX
    STY $00B0                       ; $9A9DCA  8C B0 00     MX
    SEP #$10                        ; $9A9DCD  E2 10        MX
    LDA $0C3B                       ; $9A9DCF  AD 3B 0C     Mx
    LDX #$04                        ; $9A9DD2  A2 04        Mx
    JSL $00A53A                     ; $9A9DD4  22 3A A5 00  Mx
    REP #$10                        ; $9A9DD8  C2 10        Mx
    LDY $00B0                       ; $9A9DDA  AC B0 00     MX
    LDX $00AE                       ; $9A9DDD  AE AE 00     MX
    JMP L_9A9DFC                    ; $9A9DE0  4C FC 9D     MX
L_9A9DE3:
    STX $00AE                       ; $9A9DE3  8E AE 00     MX
    STY $00B0                       ; $9A9DE6  8C B0 00     MX
    SEP #$10                        ; $9A9DE9  E2 10        MX
    LDA $0C3B                       ; $9A9DEB  AD 3B 0C     Mx
    LDX #$04                        ; $9A9DEE  A2 04        Mx
    JSL $00A720                     ; $9A9DF0  22 20 A7 00  Mx
    REP #$10                        ; $9A9DF4  C2 10        Mx
    LDY $00B0                       ; $9A9DF6  AC B0 00     MX
    LDX $00AE                       ; $9A9DF9  AE AE 00     MX
L_9A9DFC:
    LDA $1611                       ; $9A9DFC  AD 11 16     MX
    BNE L_9A9E0E                    ; $9A9DFF  D0 0D        MX
    LDA #$0012                      ; $9A9E01  A9 12 00     MX
    JSL L_BDFDF3                    ; $9A9E04  22 F3 FD BD  MX
    LDA #$0064                      ; $9A9E08  A9 64 00     MX
    STA $1611                       ; $9A9E0B  8D 11 16     MX
L_9A9E0E:
    STZ $160F                       ; $9A9E0E  9C 0F 16     MX
    LDA $0BB5                       ; $9A9E11  AD B5 0B     MX
    STA $00D0                       ; $9A9E14  8D D0 00     MX
    LDY #$0008                      ; $9A9E17  A0 08 00     MX
    LDA ($D0),Y                     ; $9A9E1A  B1 D0        MX
    CMP #$0004                      ; $9A9E1C  C9 04 00     MX
    BNE L_9A9E40                    ; $9A9E1F  D0 1F        MX
    LDA $0C2B                       ; $9A9E21  AD 2B 0C     MX
    BPL L_9A9E33                    ; $9A9E24  10 0D        MX
    CMP #$FFFA                      ; $9A9E26  C9 FA FF     MX
    BCS L_9A9E33                    ; $9A9E29  B0 08        MX
    LDA #$0004                      ; $9A9E2B  A9 04 00     MX
    STA $0C57                       ; $9A9E2E  8D 57 0C     MX
    BRA L_9A9E39                    ; $9A9E31  80 06        MX
L_9A9E33:
    LDA #$005C                      ; $9A9E33  A9 5C 00     MX
    STA $0C57                       ; $9A9E36  8D 57 0C     MX
L_9A9E39:
    JSL $1AEF16                     ; $9A9E39  22 16 EF 1A  MX
    JMP L_9A9EB2                    ; $9A9E3D  4C B2 9E     MX
L_9A9E40:
    LDX $0C1F                       ; $9A9E40  AE 1F 0C     MX
    CPX $0A96                       ; $9A9E43  EC 96 0A     MX
    BNE L_9A9E5F                    ; $9A9E46  D0 17        MX
    LDA $00C0                       ; $9A9E48  AD C0 00     MX
    BEQ L_9A9E56                    ; $9A9E4B  F0 09        MX
    LDA #$000A                      ; $9A9E4D  A9 0A 00     MX
    JSL L_BDFDF3                    ; $9A9E50  22 F3 FD BD  MX
    BRA L_9A9E66                    ; $9A9E54  80 10        MX
L_9A9E56:
    LDA #$0018                      ; $9A9E56  A9 18 00     MX
    JSL L_BDFDF3                    ; $9A9E59  22 F3 FD BD  MX
    BRA L_9A9E66                    ; $9A9E5D  80 07        MX
L_9A9E5F:
    LDA #$0006                      ; $9A9E5F  A9 06 00     MX
    JSL L_BDFDF3                    ; $9A9E62  22 F3 FD BD  MX
L_9A9E66:
    LDA $0BE5                       ; $9A9E66  AD E5 0B     MX
    BPL L_9A9E72                    ; $9A9E69  10 07        MX
    EOR #$FFFF                      ; $9A9E6B  49 FF FF     MX
    CLC                             ; $9A9E6E  18           MX
    ADC #$0001                      ; $9A9E6F  69 01 00     MX
L_9A9E72:
    CMP #$0002                      ; $9A9E72  C9 02 00     MX
    BCC L_9A9EAC                    ; $9A9E75  90 35        MX
    LDA $0BD9                       ; $9A9E77  AD D9 0B     MX
    AND #$8000                      ; $9A9E7A  29 00 80     MX
    EOR $0BE5                       ; $9A9E7D  4D E5 0B     MX
    AND #$8000                      ; $9A9E80  29 00 80     MX
    BNE L_9A9EAC                    ; $9A9E83  D0 27        MX
    LDA $0BE5                       ; $9A9E85  AD E5 0B     MX
    BPL L_9A9E91                    ; $9A9E88  10 07        MX
    EOR #$FFFF                      ; $9A9E8A  49 FF FF     MX
    CLC                             ; $9A9E8D  18           MX
    ADC #$0001                      ; $9A9E8E  69 01 00     MX
L_9A9E91:
    AND #$0007                      ; $9A9E91  29 07 00     MX
    CMP #$0001                      ; $9A9E94  C9 01 00     MX
    BCC L_9A9EAC                    ; $9A9E97  90 13        MX
    LDA $0BE9                       ; $9A9E99  AD E9 0B     MX
    BMI L_9A9EAC                    ; $9A9E9C  30 0E        MX
    CMP #$0001                      ; $9A9E9E  C9 01 00     MX
    BCC L_9A9EAC                    ; $9A9EA1  90 09        MX
    LDA #$001C                      ; $9A9EA3  A9 1C 00     MX
    STA $0C57                       ; $9A9EA6  8D 57 0C     MX
    JMP L_9A9EB2                    ; $9A9EA9  4C B2 9E     MX
L_9A9EAC:
    LDA #$0004                      ; $9A9EAC  A9 04 00     MX
    STA $0C57                       ; $9A9EAF  8D 57 0C     MX
L_9A9EB2:
    LDA $0C21                       ; $9A9EB2  AD 21 0C     MX
    CMP $0C1F                       ; $9A9EB5  CD 1F 0C     MX
    BEQ L_9A9EF8                    ; $9A9EB8  F0 3E        MX
    LDA #$0001                      ; $9A9EBA  A9 01 00     MX
    STA $00D3                       ; $9A9EBD  8D D3 00     MX
    LDA $0C23                       ; $9A9EC0  AD 23 0C     MX
    CMP #$0003                      ; $9A9EC3  C9 03 00     MX
    BCS L_9A9ECB                    ; $9A9EC6  B0 03        MX
    JMP L_9A9F6C                    ; $9A9EC8  4C 6C 9F     MX
L_9A9ECB:
    LDA $0C21                       ; $9A9ECB  AD 21 0C     MX
    DEC                             ; $9A9ECE  3A           MX
    LSR                             ; $9A9ECF  4A           MX
    AND #$00FF                      ; $9A9ED0  29 FF 00     MX
    STA $00A4                       ; $9A9ED3  8D A4 00     MX
    LDA $0C1F                       ; $9A9ED6  AD 1F 0C     MX
    DEC                             ; $9A9ED9  3A           MX
    LSR                             ; $9A9EDA  4A           MX
    AND #$00FF                      ; $9A9EDB  29 FF 00     MX
    CMP $00A4                       ; $9A9EDE  CD A4 00     MX
    BNE L_9A9EE6                    ; $9A9EE1  D0 03        MX
    JMP L_9A9F78                    ; $9A9EE3  4C 78 9F     MX
L_9A9EE6:
    LDA $0C1F                       ; $9A9EE6  AD 1F 0C     MX
    STA $0C21                       ; $9A9EE9  8D 21 0C     MX
    LDA $00D3                       ; $9A9EEC  AD D3 00     MX
    STA $0C23                       ; $9A9EEF  8D 23 0C     MX
    STZ $0A96                       ; $9A9EF2  9C 96 0A     MX
    JMP L_9A9F78                    ; $9A9EF5  4C 78 9F     MX
L_9A9EF8:
    LDA $0C23                       ; $9A9EF8  AD 23 0C     MX
    CLC                             ; $9A9EFB  18           MX
    ADC #$0001                      ; $9A9EFC  69 01 00     MX
    STA $00D3                       ; $9A9EFF  8D D3 00     MX
    CMP #$0003                      ; $9A9F02  C9 03 00     MX
    BEQ L_9A9F26                    ; $9A9F05  F0 1F        MX
    BCS L_9A9F1F                    ; $9A9F07  B0 16        MX
    CMP #$0002                      ; $9A9F09  C9 02 00     MX
    BCC L_9A9F6C                    ; $9A9F0C  90 5E        MX
    LDA $160F                       ; $9A9F0E  AD 0F 16     MX
    CMP #$000C                      ; $9A9F11  C9 0C 00     MX
    BEQ L_9A9F6C                    ; $9A9F14  F0 56        MX
    LDA #$0005                      ; $9A9F16  A9 05 00     MX
    JSL L_9ABBD5                    ; $9A9F19  22 D5 BB 9A  MX
    BRA L_9A9F6C                    ; $9A9F1D  80 4D        MX
L_9A9F1F:
    CMP #$000A                      ; $9A9F1F  C9 0A 00     MX
    BCS L_9A9F63                    ; $9A9F22  B0 3F        MX
    BRA L_9A9F44                    ; $9A9F24  80 1E        MX
L_9A9F26:
    LDA $0BBB                       ; $9A9F26  AD BB 0B     MX
    STA $0C01                       ; $9A9F29  8D 01 0C     MX
    STA $0C05                       ; $9A9F2C  8D 05 0C     MX
    STA $0C09                       ; $9A9F2F  8D 09 0C     MX
    STA $0C0D                       ; $9A9F32  8D 0D 0C     MX
    LDA $0BBD                       ; $9A9F35  AD BD 0B     MX
    STA $0C03                       ; $9A9F38  8D 03 0C     MX
    STA $0C07                       ; $9A9F3B  8D 07 0C     MX
    STA $0C0B                       ; $9A9F3E  8D 0B 0C     MX
    STA $0C0F                       ; $9A9F41  8D 0F 0C     MX
L_9A9F44:
    LDA $0C1F                       ; $9A9F44  AD 1F 0C     MX
    STA $0A96                       ; $9A9F47  8D 96 0A     MX
    LDA $160F                       ; $9A9F4A  AD 0F 16     MX
    CMP #$000C                      ; $9A9F4D  C9 0C 00     MX
    BEQ L_9A9F61                    ; $9A9F50  F0 0F        MX
    LDA $0C23                       ; $9A9F52  AD 23 0C     MX
    AND #$0001                      ; $9A9F55  29 01 00     MX
    BNE L_9A9F61                    ; $9A9F58  D0 07        MX
    LDA #$0003                      ; $9A9F5A  A9 03 00     MX
    JSL L_9ABBD5                    ; $9A9F5D  22 D5 BB 9A  MX
L_9A9F61:
    BRA L_9A9F6C                    ; $9A9F61  80 09        MX
L_9A9F63:
    STZ $0A96                       ; $9A9F63  9C 96 0A     MX
    LDA #$0001                      ; $9A9F66  A9 01 00     MX
    STA $00D3                       ; $9A9F69  8D D3 00     MX
L_9A9F6C:
    LDA $0C1F                       ; $9A9F6C  AD 1F 0C     MX
    STA $0C21                       ; $9A9F6F  8D 21 0C     MX
    LDA $00D3                       ; $9A9F72  AD D3 00     MX
    STA $0C23                       ; $9A9F75  8D 23 0C     MX
L_9A9F78:
    LDA $0A96                       ; $9A9F78  AD 96 0A     MX
    BEQ L_9A9FB6                    ; $9A9F7B  F0 39        MX
    LDA $0BD9                       ; $9A9F7D  AD D9 0B     MX
    BPL L_9A9F9D                    ; $9A9F80  10 1B        MX
    LDA $0A96                       ; $9A9F82  AD 96 0A     MX
    AND #$00FF                      ; $9A9F85  29 FF 00     MX
    CMP #$0003                      ; $9A9F88  C9 03 00     MX
    BCC L_9A9FB6                    ; $9A9F8B  90 29        MX
    LDA $0C57                       ; $9A9F8D  AD 57 0C     MX
    CMP #$003A                      ; $9A9F90  C9 3A 00     MX
    BEQ L_9A9FB6                    ; $9A9F93  F0 21        MX
    LDA #$0070                      ; $9A9F95  A9 70 00     MX
    STA $0C57                       ; $9A9F98  8D 57 0C     MX
    BRA L_9A9FB6                    ; $9A9F9B  80 19        MX
L_9A9F9D:
    LDA $0A96                       ; $9A9F9D  AD 96 0A     MX
    AND #$00FF                      ; $9A9FA0  29 FF 00     MX
    CMP #$0003                      ; $9A9FA3  C9 03 00     MX
    BCS L_9A9FB6                    ; $9A9FA6  B0 0E        MX
    LDA $0C57                       ; $9A9FA8  AD 57 0C     MX
    CMP #$003A                      ; $9A9FAB  C9 3A 00     MX
    BEQ L_9A9FB6                    ; $9A9FAE  F0 06        MX
    LDA #$0070                      ; $9A9FB0  A9 70 00     MX
    STA $0C57                       ; $9A9FB3  8D 57 0C     MX
L_9A9FB6:
    LDA $160F                       ; $9A9FB6  AD 0F 16     MX
    BEQ L_9A9FC2                    ; $9A9FB9  F0 07        MX
    LDA $160F                       ; $9A9FBB  AD 0F 16     MX
    JSL L_BDFDF3                    ; $9A9FBE  22 F3 FD BD  MX
L_9A9FC2:
    JSR L_9AA05A                    ; $9A9FC2  20 5A A0     MX
    STZ $1D76                       ; $9A9FC5  9C 76 1D     MX
    LDA $0AA0                       ; $9A9FC8  AD A0 0A     MX
    BEQ L_9A9FEB                    ; $9A9FCB  F0 1E        MX
    DEC                             ; $9A9FCD  3A           MX
    LSR                             ; $9A9FCE  4A           MX
    STA $00A4                       ; $9A9FCF  8D A4 00     MX
    LDA $0C1F                       ; $9A9FD2  AD 1F 0C     MX
    AND #$00FF                      ; $9A9FD5  29 FF 00     MX
    DEC                             ; $9A9FD8  3A           MX
    LSR                             ; $9A9FD9  4A           MX
    CMP $00A4                       ; $9A9FDA  CD A4 00     MX
    BNE L_9A9FEB                    ; $9A9FDD  D0 0C        MX
    LDA $0AA0                       ; $9A9FDF  AD A0 0A     MX
    DEC                             ; $9A9FE2  3A           MX
    AND #$0003                      ; $9A9FE3  29 03 00     MX
    ASL                             ; $9A9FE6  0A           MX
    TAX                             ; $9A9FE7  AA           MX
    INC $1CA9,X                     ; $9A9FE8  FE A9 1C     MX
L_9A9FEB:
    LDA #$0035                      ; $9A9FEB  A9 35 00     MX
    STA $0778                       ; $9A9FEE  8D 78 07     MX
    STA $0860                       ; $9A9FF1  8D 60 08     MX
    STA $0948                       ; $9A9FF4  8D 48 09     MX
    STA $0A30                       ; $9A9FF7  8D 30 0A     MX
    LDA #$001E                      ; $9A9FFA  A9 1E 00     MX
    STA $077A                       ; $9A9FFD  8D 7A 07     MX
    STA $0862                       ; $9AA000  8D 62 08     MX
    STA $094A                       ; $9AA003  8D 4A 09     MX
    STA $0A32                       ; $9AA006  8D 32 0A     MX
    LDA $0BE3                       ; $9AA009  AD E3 0B     MX
    STA $00D0                       ; $9AA00C  8D D0 00     MX
    LDA $0BE5                       ; $9AA00F  AD E5 0B     MX
    STA $00D3                       ; $9AA012  8D D3 00     MX
    AND #$8000                      ; $9AA015  29 00 80     MX
    STA $00A4                       ; $9AA018  8D A4 00     MX
    LDA $00D3                       ; $9AA01B  AD D3 00     MX
    LSR                             ; $9AA01E  4A           MX
    ROR $00D0                       ; $9AA01F  6E D0 00     MX
    ORA $00A4                       ; $9AA022  0D A4 00     MX
    STA $0BE5                       ; $9AA025  8D E5 0B     MX
    LDA $00D0                       ; $9AA028  AD D0 00     MX
    STA $0BE3                       ; $9AA02B  8D E3 0B     MX
    LDA $0BEB                       ; $9AA02E  AD EB 0B     MX
    STA $00D0                       ; $9AA031  8D D0 00     MX
    LDA $0BED                       ; $9AA034  AD ED 0B     MX
    STA $00D3                       ; $9AA037  8D D3 00     MX
    AND #$8000                      ; $9AA03A  29 00 80     MX
    STA $00A4                       ; $9AA03D  8D A4 00     MX
    LDA $00D3                       ; $9AA040  AD D3 00     MX
    LSR                             ; $9AA043  4A           MX
    ROR $00D0                       ; $9AA044  6E D0 00     MX
    ORA $00A4                       ; $9AA047  0D A4 00     MX
    STA $0BED                       ; $9AA04A  8D ED 0B     MX
    LDA $00D0                       ; $9AA04D  AD D0 00     MX
    STA $0BEB                       ; $9AA050  8D EB 0B     MX
L_9AA053:
    LDA $00A6                       ; $9AA053  AD A6 00     MX
    STA $00B4                       ; $9AA056  8D B4 00     MX
    RTS                             ; $9AA059  60           MX
L_9AA05A:
    LDA $0B52                       ; $9AA05A  AD 52 0B     MX
    CMP #$003A                      ; $9AA05D  C9 3A 00     MX
    BNE L_9AA065                    ; $9AA060  D0 03        MX
    JMP L_9AA0DC                    ; $9AA062  4C DC A0     MX
L_9AA065:
    LDA $0C3B                       ; $9AA065  AD 3B 0C     MX
    CMP #$0003                      ; $9AA068  C9 03 00     MX
    BEQ L_9AA073                    ; $9AA06B  F0 06        MX
    LDA #$000C                      ; $9AA06D  A9 0C 00     MX
    JMP L_9AA094                    ; $9AA070  4C 94 A0     MX
L_9AA073:
    LDA $0B52                       ; $9AA073  AD 52 0B     MX
    CMP #$000E                      ; $9AA076  C9 0E 00     MX
    BEQ L_9AA08A                    ; $9AA079  F0 0F        MX
    CMP #$001C                      ; $9AA07B  C9 1C 00     MX
    BEQ L_9AA08A                    ; $9AA07E  F0 0A        MX
    CMP #$001E                      ; $9AA080  C9 1E 00     MX
    BEQ L_9AA08F                    ; $9AA083  F0 0A        MX
    LDA #$0000                      ; $9AA085  A9 00 00     MX
    BRA L_9AA094                    ; $9AA088  80 0A        MX
L_9AA08A:
    LDA #$0004                      ; $9AA08A  A9 04 00     MX
    BRA L_9AA094                    ; $9AA08D  80 05        MX
L_9AA08F:
    LDA #$0008                      ; $9AA08F  A9 08 00     MX
    BRA L_9AA094                    ; $9AA092  80 00        MX
L_9AA094:
    STA $00BA                       ; $9AA094  8D BA 00     MX
    LDA $1D56                       ; $9AA097  AD 56 1D     MX
    AND #$0001                      ; $9AA09A  29 01 00     MX
    ASL                             ; $9AA09D  0A           MX
    CLC                             ; $9AA09E  18           MX
    ADC $00BA                       ; $9AA09F  6D BA 00     MX
    TAX                             ; $9AA0A2  AA           MX
    LDA $1AA0DD,X                   ; $9AA0A3  BF DD A0 1A  MX
    BEQ L_9AA0DC                    ; $9AA0A7  F0 33        MX
    CMP #$000D                      ; $9AA0A9  C9 0D 00     MX
    BEQ L_9AA0B3                    ; $9AA0AC  F0 05        MX
    CMP #$000E                      ; $9AA0AE  C9 0E 00     MX
    BNE L_9AA0D8                    ; $9AA0B1  D0 25        MX
L_9AA0B3:
    PHA                             ; $9AA0B3  48           MX
    LDA $0CD7                       ; $9AA0B4  AD D7 0C     MX
    AND #$0003                      ; $9AA0B7  29 03 00     MX
    CMP #$0003                      ; $9AA0BA  C9 03 00     MX
    BNE L_9AA0D7                    ; $9AA0BD  D0 18        MX
    LDA $1D76                       ; $9AA0BF  AD 76 1D     MX
    BEQ L_9AA0D7                    ; $9AA0C2  F0 13        MX
    PLA                             ; $9AA0C4  68           MX
    LDA $0C3B                       ; $9AA0C5  AD 3B 0C     MX
    CMP #$0002                      ; $9AA0C8  C9 02 00     MX
    BEQ L_9AA0D2                    ; $9AA0CB  F0 05        MX
    LDA #$0002                      ; $9AA0CD  A9 02 00     MX
    BRA L_9AA0D8                    ; $9AA0D0  80 06        MX
L_9AA0D2:
    LDA #$0011                      ; $9AA0D2  A9 11 00     MX
    BRA L_9AA0D8                    ; $9AA0D5  80 01        MX
L_9AA0D7:
    PLA                             ; $9AA0D7  68           MX
L_9AA0D8:
    JSL L_9ABBD5                    ; $9AA0D8  22 D5 BB 9A  MX
L_9AA0DC:
    RTS                             ; $9AA0DC  60           MX
    db $0E,$00,$02,$00,$0E,$00,$02,$00,$0E,$00,$02,$00,$02,$00,$0D,$00 ; $9AA0DD
L_9AA0ED:
    REP #$10                        ; $9AA0ED  C2 10        Mx
    LDA $00D0                       ; $9AA0EF  AD D0 00     MX
    PHA                             ; $9AA0F2  48           MX
    LDA $00D3                       ; $9AA0F3  AD D3 00     MX
    PHA                             ; $9AA0F6  48           MX
    LDA $0B52                       ; $9AA0F7  AD 52 0B     MX
    CMP #$0008                      ; $9AA0FA  C9 08 00     MX
    BNE L_9AA11D                    ; $9AA0FD  D0 1E        MX
    LDY #$0078                      ; $9AA0FF  A0 78 00     MX
    LDA ($CC),Y                     ; $9AA102  B1 CC        MX
    CMP #$0070                      ; $9AA104  C9 70 00     MX
    BCC L_9AA11D                    ; $9AA107  90 14        MX
    LDY #$007A                      ; $9AA109  A0 7A 00     MX
    LDA ($CC),Y                     ; $9AA10C  B1 CC        MX
    CMP #$0070                      ; $9AA10E  C9 70 00     MX
    BCC L_9AA11D                    ; $9AA111  90 0A        MX
    LDA #$0008                      ; $9AA113  A9 08 00     MX
    JSL L_9ABBD5                    ; $9AA116  22 D5 BB 9A  MX
    JMP L_9AA155                    ; $9AA11A  4C 55 A1     MX
L_9AA11D:
    LDA $0C3B                       ; $9AA11D  AD 3B 0C     MX
    CMP #$0002                      ; $9AA120  C9 02 00     MX
    BEQ L_9AA139                    ; $9AA123  F0 14        MX
    LDA $0B52                       ; $9AA125  AD 52 0B     MX
    CMP #$0008                      ; $9AA128  C9 08 00     MX
    BEQ L_9AA133                    ; $9AA12B  F0 06        MX
    LDA #$0008                      ; $9AA12D  A9 08 00     MX
    JMP L_9AA13C                    ; $9AA130  4C 3C A1     MX
L_9AA133:
    LDA #$0004                      ; $9AA133  A9 04 00     MX
    JMP L_9AA13C                    ; $9AA136  4C 3C A1     MX
L_9AA139:
    LDA #$0000                      ; $9AA139  A9 00 00     MX
L_9AA13C:
    STA $00BA                       ; $9AA13C  8D BA 00     MX
    LDA $0006                       ; $9AA13F  AD 06 00     MX
    AND #$0001                      ; $9AA142  29 01 00     MX
    ASL                             ; $9AA145  0A           MX
    CLC                             ; $9AA146  18           MX
    ADC $00BA                       ; $9AA147  6D BA 00     MX
    TAX                             ; $9AA14A  AA           MX
    LDA $1AA160,X                   ; $9AA14B  BF 60 A1 1A  MX
    BEQ L_9AA155                    ; $9AA14F  F0 04        MX
    JSL L_9ABBD5                    ; $9AA151  22 D5 BB 9A  MX
L_9AA155:
    PLA                             ; $9AA155  68           MX
    STA $00D3                       ; $9AA156  8D D3 00     MX
    PLA                             ; $9AA159  68           MX
    STA $00D0                       ; $9AA15A  8D D0 00     MX
    SEP #$10                        ; $9AA15D  E2 10        MX
    RTS                             ; $9AA15F  60           Mx
    db $06,$00,$00,$00,$07,$00,$00,$00,$07,$00,$07,$00                 ; $9AA160
L_9AA16C:
    LDA $0B50                       ; $9AA16C  AD 50 0B     MX
    BEQ L_9AA172                    ; $9AA16F  F0 01        MX
    RTS                             ; $9AA171  60           MX
L_9AA172:
    ASL $00D6                       ; $9AA172  0E D6 00     MX
    ASL $00D6                       ; $9AA175  0E D6 00     MX
    ASL $00D6                       ; $9AA178  0E D6 00     MX
    ASL $00D6                       ; $9AA17B  0E D6 00     MX
    ASL $00D9                       ; $9AA17E  0E D9 00     MX
    ASL $00D9                       ; $9AA181  0E D9 00     MX
    ASL $00D9                       ; $9AA184  0E D9 00     MX
    ASL $00D9                       ; $9AA187  0E D9 00     MX
    ASL $00DC                       ; $9AA18A  0E DC 00     MX
    ASL $00DC                       ; $9AA18D  0E DC 00     MX
    ASL $00DC                       ; $9AA190  0E DC 00     MX
    ASL $00DC                       ; $9AA193  0E DC 00     MX
    ASL $00DF                       ; $9AA196  0E DF 00     MX
    ASL $00DF                       ; $9AA199  0E DF 00     MX
    ASL $00DF                       ; $9AA19C  0E DF 00     MX
    ASL $00DF                       ; $9AA19F  0E DF 00     MX
    ASL $00E2                       ; $9AA1A2  0E E2 00     MX
    ASL $00E2                       ; $9AA1A5  0E E2 00     MX
    ASL $00E2                       ; $9AA1A8  0E E2 00     MX
    ASL $00E2                       ; $9AA1AB  0E E2 00     MX
    ASL $00E5                       ; $9AA1AE  0E E5 00     MX
    ASL $00E5                       ; $9AA1B1  0E E5 00     MX
    ASL $00E5                       ; $9AA1B4  0E E5 00     MX
    ASL $00E5                       ; $9AA1B7  0E E5 00     MX
    STZ $0CD1                       ; $9AA1BA  9C D1 0C     MX
    LDA $00D6                       ; $9AA1BD  AD D6 00     MX
    STA $00A8                       ; $9AA1C0  8D A8 00     MX
    LDA $00D9                       ; $9AA1C3  AD D9 00     MX
    STA $00AA                       ; $9AA1C6  8D AA 00     MX
    LDA $00E2                       ; $9AA1C9  AD E2 00     MX
    STA $00B0                       ; $9AA1CC  8D B0 00     MX
    LDA $00E5                       ; $9AA1CF  AD E5 00     MX
    STA $00B2                       ; $9AA1D2  8D B2 00     MX
    LDA $00E2                       ; $9AA1D5  AD E2 00     MX
    STA $00D0                       ; $9AA1D8  8D D0 00     MX
    LDA $00DF                       ; $9AA1DB  AD DF 00     MX
    STA $00D3                       ; $9AA1DE  8D D3 00     MX
    LDA $00D6                       ; $9AA1E1  AD D6 00     MX
    STA $00E2                       ; $9AA1E4  8D E2 00     MX
    LDA $00DC                       ; $9AA1E7  AD DC 00     MX
    STA $00E5                       ; $9AA1EA  8D E5 00     MX
    JSR L_9AA972                    ; $9AA1ED  20 72 A9     MX
    STA $00B7                       ; $9AA1F0  8D B7 00     MX
    EOR #$FFFF                      ; $9AA1F3  49 FF FF     MX
    CLC                             ; $9AA1F6  18           MX
    ADC #$0001                      ; $9AA1F7  69 01 00     MX
    CLC                             ; $9AA1FA  18           MX
    ADC #$0080                      ; $9AA1FB  69 80 00     MX
    STA $00D0                       ; $9AA1FE  8D D0 00     MX
    JSR L_9AAB50                    ; $9AA201  20 50 AB     MX
    LDA $0BE5                       ; $9AA204  AD E5 0B     MX
    STA $00A4                       ; $9AA207  8D A4 00     MX
    LDA $0BE4                       ; $9AA20A  AD E4 0B     MX
    LSR                             ; $9AA20D  4A           MX
    LSR                             ; $9AA20E  4A           MX
    LSR                             ; $9AA20F  4A           MX
    LSR                             ; $9AA210  4A           MX
    AND #$00FF                      ; $9AA211  29 FF 00     MX
    STA $00D9                       ; $9AA214  8D D9 00     MX
    LDA $00A5                       ; $9AA217  AD A5 00     MX
    AND #$0080                      ; $9AA21A  29 80 00     MX
    ORA $00D9                       ; $9AA21D  0D D9 00     MX
    STA $00D9                       ; $9AA220  8D D9 00     MX
    STA $00DF                       ; $9AA223  8D DF 00     MX
    LDA $0BED                       ; $9AA226  AD ED 0B     MX
    STA $00A4                       ; $9AA229  8D A4 00     MX
    LDA $0BEC                       ; $9AA22C  AD EC 0B     MX
    LSR                             ; $9AA22F  4A           MX
    LSR                             ; $9AA230  4A           MX
    LSR                             ; $9AA231  4A           MX
    LSR                             ; $9AA232  4A           MX
    AND #$00FF                      ; $9AA233  29 FF 00     MX
    STA $00E2                       ; $9AA236  8D E2 00     MX
    LDA $00A5                       ; $9AA239  AD A5 00     MX
    AND #$0080                      ; $9AA23C  29 80 00     MX
    ORA $00E2                       ; $9AA23F  0D E2 00     MX
    STA $00E2                       ; $9AA242  8D E2 00     MX
    STA $00F6                       ; $9AA245  8D F6 00     MX
    SEP #$20                        ; $9AA248  E2 20        MX
    LDA $00D3                       ; $9AA24A  AD D3 00     mX
    STA $0BAF                       ; $9AA24D  8D AF 0B     mX
    BPL L_9AA257                    ; $9AA250  10 05        mX
    EOR #$FF                        ; $9AA252  49 FF        mX
    CLC                             ; $9AA254  18           mX
    ADC #$01                        ; $9AA255  69 01        mX
L_9AA257:
    STA $4202                       ; $9AA257  8D 02 42     mX
    LDA $00D9                       ; $9AA25A  AD D9 00     mX
    STA $0BB1                       ; $9AA25D  8D B1 0B     mX
    BPL L_9AA267                    ; $9AA260  10 05        mX
    EOR #$FF                        ; $9AA262  49 FF        mX
    CLC                             ; $9AA264  18           mX
    ADC #$01                        ; $9AA265  69 01        mX
L_9AA267:
    STA $4203                       ; $9AA267  8D 03 42     mX
    LDA $0BAF                       ; $9AA26A  AD AF 0B     mX
    EOR $0BB1                       ; $9AA26D  4D B1 0B     mX
    AND #$80                        ; $9AA270  29 80        mX
    BPL L_9AA286                    ; $9AA272  10 12        mX
    REP #$20                        ; $9AA274  C2 20        mX
    LDA $4216                       ; $9AA276  AD 16 42     MX
    EOR #$FFFF                      ; $9AA279  49 FF FF     MX
    CLC                             ; $9AA27C  18           MX
    ADC #$0001                      ; $9AA27D  69 01 00     MX
    STA $00D9                       ; $9AA280  8D D9 00     MX
    JMP L_9AA28E                    ; $9AA283  4C 8E A2     MX
L_9AA286:
    REP #$20                        ; $9AA286  C2 20        mX
    LDA $4216                       ; $9AA288  AD 16 42     MX
    STA $00D9                       ; $9AA28B  8D D9 00     MX
L_9AA28E:
    SEP #$20                        ; $9AA28E  E2 20        MX
    LDA $00D0                       ; $9AA290  AD D0 00     mX
    STA $0BAF                       ; $9AA293  8D AF 0B     mX
    BPL L_9AA29D                    ; $9AA296  10 05        mX
    EOR #$FF                        ; $9AA298  49 FF        mX
    CLC                             ; $9AA29A  18           mX
    ADC #$01                        ; $9AA29B  69 01        mX
L_9AA29D:
    STA $4202                       ; $9AA29D  8D 02 42     mX
    LDA $00F6                       ; $9AA2A0  AD F6 00     mX
    STA $0BB1                       ; $9AA2A3  8D B1 0B     mX
    BPL L_9AA2AD                    ; $9AA2A6  10 05        mX
    EOR #$FF                        ; $9AA2A8  49 FF        mX
    CLC                             ; $9AA2AA  18           mX
    ADC #$01                        ; $9AA2AB  69 01        mX
L_9AA2AD:
    STA $4203                       ; $9AA2AD  8D 03 42     mX
    LDA $0BAF                       ; $9AA2B0  AD AF 0B     mX
    EOR $0BB1                       ; $9AA2B3  4D B1 0B     mX
    AND #$80                        ; $9AA2B6  29 80        mX
    BPL L_9AA2CC                    ; $9AA2B8  10 12        mX
    REP #$20                        ; $9AA2BA  C2 20        mX
    LDA $4216                       ; $9AA2BC  AD 16 42     MX
    EOR #$FFFF                      ; $9AA2BF  49 FF FF     MX
    CLC                             ; $9AA2C2  18           MX
    ADC #$0001                      ; $9AA2C3  69 01 00     MX
    STA $00F6                       ; $9AA2C6  8D F6 00     MX
    JMP L_9AA2D4                    ; $9AA2C9  4C D4 A2     MX
L_9AA2CC:
    REP #$20                        ; $9AA2CC  C2 20        mX
    LDA $4216                       ; $9AA2CE  AD 16 42     MX
    STA $00F6                       ; $9AA2D1  8D F6 00     MX
L_9AA2D4:
    LDA $00D9                       ; $9AA2D4  AD D9 00     MX
    SEC                             ; $9AA2D7  38           MX
    SBC $00F6                       ; $9AA2D8  ED F6 00     MX
    STA $00D9                       ; $9AA2DB  8D D9 00     MX
    SEP #$20                        ; $9AA2DE  E2 20        MX
    LDA $00D0                       ; $9AA2E0  AD D0 00     mX
    STA $0BAF                       ; $9AA2E3  8D AF 0B     mX
    BPL L_9AA2ED                    ; $9AA2E6  10 05        mX
    EOR #$FF                        ; $9AA2E8  49 FF        mX
    CLC                             ; $9AA2EA  18           mX
    ADC #$01                        ; $9AA2EB  69 01        mX
L_9AA2ED:
    STA $4202                       ; $9AA2ED  8D 02 42     mX
    LDA $00DF                       ; $9AA2F0  AD DF 00     mX
    STA $0BB1                       ; $9AA2F3  8D B1 0B     mX
    BPL L_9AA2FD                    ; $9AA2F6  10 05        mX
    EOR #$FF                        ; $9AA2F8  49 FF        mX
    CLC                             ; $9AA2FA  18           mX
    ADC #$01                        ; $9AA2FB  69 01        mX
L_9AA2FD:
    STA $4203                       ; $9AA2FD  8D 03 42     mX
    LDA $0BAF                       ; $9AA300  AD AF 0B     mX
    EOR $0BB1                       ; $9AA303  4D B1 0B     mX
    AND #$80                        ; $9AA306  29 80        mX
    BPL L_9AA31C                    ; $9AA308  10 12        mX
    REP #$20                        ; $9AA30A  C2 20        mX
    LDA $4216                       ; $9AA30C  AD 16 42     MX
    EOR #$FFFF                      ; $9AA30F  49 FF FF     MX
    CLC                             ; $9AA312  18           MX
    ADC #$0001                      ; $9AA313  69 01 00     MX
    STA $00DF                       ; $9AA316  8D DF 00     MX
    JMP L_9AA324                    ; $9AA319  4C 24 A3     MX
L_9AA31C:
    REP #$20                        ; $9AA31C  C2 20        mX
    LDA $4216                       ; $9AA31E  AD 16 42     MX
    STA $00DF                       ; $9AA321  8D DF 00     MX
L_9AA324:
    SEP #$20                        ; $9AA324  E2 20        MX
    LDA $00D3                       ; $9AA326  AD D3 00     mX
    STA $0BAF                       ; $9AA329  8D AF 0B     mX
    BPL L_9AA333                    ; $9AA32C  10 05        mX
    EOR #$FF                        ; $9AA32E  49 FF        mX
    CLC                             ; $9AA330  18           mX
    ADC #$01                        ; $9AA331  69 01        mX
L_9AA333:
    STA $4202                       ; $9AA333  8D 02 42     mX
    LDA $00E2                       ; $9AA336  AD E2 00     mX
    STA $0BB1                       ; $9AA339  8D B1 0B     mX
    BPL L_9AA343                    ; $9AA33C  10 05        mX
    EOR #$FF                        ; $9AA33E  49 FF        mX
    CLC                             ; $9AA340  18           mX
    ADC #$01                        ; $9AA341  69 01        mX
L_9AA343:
    STA $4203                       ; $9AA343  8D 03 42     mX
    LDA $0BAF                       ; $9AA346  AD AF 0B     mX
    EOR $0BB1                       ; $9AA349  4D B1 0B     mX
    AND #$80                        ; $9AA34C  29 80        mX
    BPL L_9AA362                    ; $9AA34E  10 12        mX
    REP #$20                        ; $9AA350  C2 20        mX
    LDA $4216                       ; $9AA352  AD 16 42     MX
    EOR #$FFFF                      ; $9AA355  49 FF FF     MX
    CLC                             ; $9AA358  18           MX
    ADC #$0001                      ; $9AA359  69 01 00     MX
    STA $00E2                       ; $9AA35C  8D E2 00     MX
    JMP L_9AA36A                    ; $9AA35F  4C 6A A3     MX
L_9AA362:
    REP #$20                        ; $9AA362  C2 20        mX
    LDA $4216                       ; $9AA364  AD 16 42     MX
    STA $00E2                       ; $9AA367  8D E2 00     MX
L_9AA36A:
    LDA $00DF                       ; $9AA36A  AD DF 00     MX
    CLC                             ; $9AA36D  18           MX
    ADC $00E2                       ; $9AA36E  6D E2 00     MX
    STA $00E2                       ; $9AA371  8D E2 00     MX
    SEP #$10                        ; $9AA374  E2 10        MX
    LDX $00DA                       ; $9AA376  AE DA 00     Mx
    BPL L_9AA384                    ; $9AA379  10 09        Mx
    STZ $00D9                       ; $9AA37B  9C D9 00     Mx
    DEC $00D9                       ; $9AA37E  CE D9 00     Mx
    JMP L_9AA387                    ; $9AA381  4C 87 A3     Mx
L_9AA384:
    STZ $00D9                       ; $9AA384  9C D9 00     Mx
L_9AA387:
    STX $00D9                       ; $9AA387  8E D9 00     Mx
    LDX $00E3                       ; $9AA38A  AE E3 00     Mx
    BPL L_9AA398                    ; $9AA38D  10 09        Mx
    STZ $00E2                       ; $9AA38F  9C E2 00     Mx
    DEC $00E2                       ; $9AA392  CE E2 00     Mx
    JMP L_9AA39B                    ; $9AA395  4C 9B A3     Mx
L_9AA398:
    STZ $00E2                       ; $9AA398  9C E2 00     Mx
L_9AA39B:
    STX $00E2                       ; $9AA39B  8E E2 00     Mx
    LDX $00F7                       ; $9AA39E  AE F7 00     Mx
    BPL L_9AA3AC                    ; $9AA3A1  10 09        Mx
    STZ $00F6                       ; $9AA3A3  9C F6 00     Mx
    DEC $00F6                       ; $9AA3A6  CE F6 00     Mx
    JMP L_9AA3AF                    ; $9AA3A9  4C AF A3     Mx
L_9AA3AC:
    STZ $00F6                       ; $9AA3AC  9C F6 00     Mx
L_9AA3AF:
    STX $00F6                       ; $9AA3AF  8E F6 00     Mx
    LDX $00E0                       ; $9AA3B2  AE E0 00     Mx
    BPL L_9AA3C0                    ; $9AA3B5  10 09        Mx
    STZ $00DF                       ; $9AA3B7  9C DF 00     Mx
    DEC $00DF                       ; $9AA3BA  CE DF 00     Mx
    JMP L_9AA3C3                    ; $9AA3BD  4C C3 A3     Mx
L_9AA3C0:
    STZ $00DF                       ; $9AA3C0  9C DF 00     Mx
L_9AA3C3:
    STX $00DF                       ; $9AA3C3  8E DF 00     Mx
    REP #$10                        ; $9AA3C6  C2 10        Mx
    LDA $00E2                       ; $9AA3C8  AD E2 00     MX
    EOR #$FFFF                      ; $9AA3CB  49 FF FF     MX
    CLC                             ; $9AA3CE  18           MX
    ADC #$0001                      ; $9AA3CF  69 01 00     MX
    STA $00E2                       ; $9AA3D2  8D E2 00     MX
    LDA $00B7                       ; $9AA3D5  AD B7 00     MX
    STA $00D0                       ; $9AA3D8  8D D0 00     MX
    JSR L_9AAB50                    ; $9AA3DB  20 50 AB     MX
    LDA $00D9                       ; $9AA3DE  AD D9 00     MX
    STA $00DF                       ; $9AA3E1  8D DF 00     MX
    LDA $00E2                       ; $9AA3E4  AD E2 00     MX
    STA $00F6                       ; $9AA3E7  8D F6 00     MX
    SEP #$20                        ; $9AA3EA  E2 20        MX
    LDA $00D3                       ; $9AA3EC  AD D3 00     mX
    STA $0BAF                       ; $9AA3EF  8D AF 0B     mX
    BPL L_9AA3F9                    ; $9AA3F2  10 05        mX
    EOR #$FF                        ; $9AA3F4  49 FF        mX
    CLC                             ; $9AA3F6  18           mX
    ADC #$01                        ; $9AA3F7  69 01        mX
L_9AA3F9:
    STA $4202                       ; $9AA3F9  8D 02 42     mX
    LDA $00D9                       ; $9AA3FC  AD D9 00     mX
    STA $0BB1                       ; $9AA3FF  8D B1 0B     mX
    BPL L_9AA409                    ; $9AA402  10 05        mX
    EOR #$FF                        ; $9AA404  49 FF        mX
    CLC                             ; $9AA406  18           mX
    ADC #$01                        ; $9AA407  69 01        mX
L_9AA409:
    STA $4203                       ; $9AA409  8D 03 42     mX
    LDA $0BAF                       ; $9AA40C  AD AF 0B     mX
    EOR $0BB1                       ; $9AA40F  4D B1 0B     mX
    AND #$80                        ; $9AA412  29 80        mX
    BPL L_9AA428                    ; $9AA414  10 12        mX
    REP #$20                        ; $9AA416  C2 20        mX
    LDA $4216                       ; $9AA418  AD 16 42     MX
    EOR #$FFFF                      ; $9AA41B  49 FF FF     MX
    CLC                             ; $9AA41E  18           MX
    ADC #$0001                      ; $9AA41F  69 01 00     MX
    STA $00D9                       ; $9AA422  8D D9 00     MX
    JMP L_9AA430                    ; $9AA425  4C 30 A4     MX
L_9AA428:
    REP #$20                        ; $9AA428  C2 20        mX
    LDA $4216                       ; $9AA42A  AD 16 42     MX
    STA $00D9                       ; $9AA42D  8D D9 00     MX
L_9AA430:
    SEP #$20                        ; $9AA430  E2 20        MX
    LDA $00D0                       ; $9AA432  AD D0 00     mX
    STA $0BAF                       ; $9AA435  8D AF 0B     mX
    BPL L_9AA43F                    ; $9AA438  10 05        mX
    EOR #$FF                        ; $9AA43A  49 FF        mX
    CLC                             ; $9AA43C  18           mX
    ADC #$01                        ; $9AA43D  69 01        mX
L_9AA43F:
    STA $4202                       ; $9AA43F  8D 02 42     mX
    LDA $00F6                       ; $9AA442  AD F6 00     mX
    STA $0BB1                       ; $9AA445  8D B1 0B     mX
    BPL L_9AA44F                    ; $9AA448  10 05        mX
    EOR #$FF                        ; $9AA44A  49 FF        mX
    CLC                             ; $9AA44C  18           mX
    ADC #$01                        ; $9AA44D  69 01        mX
L_9AA44F:
    STA $4203                       ; $9AA44F  8D 03 42     mX
    LDA $0BAF                       ; $9AA452  AD AF 0B     mX
    EOR $0BB1                       ; $9AA455  4D B1 0B     mX
    AND #$80                        ; $9AA458  29 80        mX
    BPL L_9AA46E                    ; $9AA45A  10 12        mX
    REP #$20                        ; $9AA45C  C2 20        mX
    LDA $4216                       ; $9AA45E  AD 16 42     MX
    EOR #$FFFF                      ; $9AA461  49 FF FF     MX
    CLC                             ; $9AA464  18           MX
    ADC #$0001                      ; $9AA465  69 01 00     MX
    STA $00F6                       ; $9AA468  8D F6 00     MX
    JMP L_9AA476                    ; $9AA46B  4C 76 A4     MX
L_9AA46E:
    REP #$20                        ; $9AA46E  C2 20        mX
    LDA $4216                       ; $9AA470  AD 16 42     MX
    STA $00F6                       ; $9AA473  8D F6 00     MX
L_9AA476:
    LDA $00D9                       ; $9AA476  AD D9 00     MX
    SEC                             ; $9AA479  38           MX
    SBC $00F6                       ; $9AA47A  ED F6 00     MX
    STA $00D9                       ; $9AA47D  8D D9 00     MX
    SEP #$20                        ; $9AA480  E2 20        MX
    LDA $00D0                       ; $9AA482  AD D0 00     mX
    STA $0BAF                       ; $9AA485  8D AF 0B     mX
    BPL L_9AA48F                    ; $9AA488  10 05        mX
    EOR #$FF                        ; $9AA48A  49 FF        mX
    CLC                             ; $9AA48C  18           mX
    ADC #$01                        ; $9AA48D  69 01        mX
L_9AA48F:
    STA $4202                       ; $9AA48F  8D 02 42     mX
    LDA $00DF                       ; $9AA492  AD DF 00     mX
    STA $0BB1                       ; $9AA495  8D B1 0B     mX
    BPL L_9AA49F                    ; $9AA498  10 05        mX
    EOR #$FF                        ; $9AA49A  49 FF        mX
    CLC                             ; $9AA49C  18           mX
    ADC #$01                        ; $9AA49D  69 01        mX
L_9AA49F:
    STA $4203                       ; $9AA49F  8D 03 42     mX
    LDA $0BAF                       ; $9AA4A2  AD AF 0B     mX
    EOR $0BB1                       ; $9AA4A5  4D B1 0B     mX
    AND #$80                        ; $9AA4A8  29 80        mX
    BPL L_9AA4BE                    ; $9AA4AA  10 12        mX
    REP #$20                        ; $9AA4AC  C2 20        mX
    LDA $4216                       ; $9AA4AE  AD 16 42     MX
    EOR #$FFFF                      ; $9AA4B1  49 FF FF     MX
    CLC                             ; $9AA4B4  18           MX
    ADC #$0001                      ; $9AA4B5  69 01 00     MX
    STA $00DF                       ; $9AA4B8  8D DF 00     MX
    JMP L_9AA4C6                    ; $9AA4BB  4C C6 A4     MX
L_9AA4BE:
    REP #$20                        ; $9AA4BE  C2 20        mX
    LDA $4216                       ; $9AA4C0  AD 16 42     MX
    STA $00DF                       ; $9AA4C3  8D DF 00     MX
L_9AA4C6:
    SEP #$20                        ; $9AA4C6  E2 20        MX
    LDA $00D3                       ; $9AA4C8  AD D3 00     mX
    STA $0BAF                       ; $9AA4CB  8D AF 0B     mX
    BPL L_9AA4D5                    ; $9AA4CE  10 05        mX
    EOR #$FF                        ; $9AA4D0  49 FF        mX
    CLC                             ; $9AA4D2  18           mX
    ADC #$01                        ; $9AA4D3  69 01        mX
L_9AA4D5:
    STA $4202                       ; $9AA4D5  8D 02 42     mX
    LDA $00E2                       ; $9AA4D8  AD E2 00     mX
    STA $0BB1                       ; $9AA4DB  8D B1 0B     mX
    BPL L_9AA4E5                    ; $9AA4DE  10 05        mX
    EOR #$FF                        ; $9AA4E0  49 FF        mX
    CLC                             ; $9AA4E2  18           mX
    ADC #$01                        ; $9AA4E3  69 01        mX
L_9AA4E5:
    STA $4203                       ; $9AA4E5  8D 03 42     mX
    LDA $0BAF                       ; $9AA4E8  AD AF 0B     mX
    EOR $0BB1                       ; $9AA4EB  4D B1 0B     mX
    AND #$80                        ; $9AA4EE  29 80        mX
    BPL L_9AA504                    ; $9AA4F0  10 12        mX
    REP #$20                        ; $9AA4F2  C2 20        mX
    LDA $4216                       ; $9AA4F4  AD 16 42     MX
    EOR #$FFFF                      ; $9AA4F7  49 FF FF     MX
    CLC                             ; $9AA4FA  18           MX
    ADC #$0001                      ; $9AA4FB  69 01 00     MX
    STA $00E2                       ; $9AA4FE  8D E2 00     MX
    JMP L_9AA50C                    ; $9AA501  4C 0C A5     MX
L_9AA504:
    REP #$20                        ; $9AA504  C2 20        mX
    LDA $4216                       ; $9AA506  AD 16 42     MX
    STA $00E2                       ; $9AA509  8D E2 00     MX
L_9AA50C:
    LDA $00DF                       ; $9AA50C  AD DF 00     MX
    CLC                             ; $9AA50F  18           MX
    ADC $00E2                       ; $9AA510  6D E2 00     MX
    STA $00E2                       ; $9AA513  8D E2 00     MX
    STZ $0BE3                       ; $9AA516  9C E3 0B     MX
    LDX #$0000                      ; $9AA519  A2 00 00     MX
    LDA $00D9                       ; $9AA51C  AD D9 00     MX
    BPL L_9AA524                    ; $9AA51F  10 03        MX
    LDX #$FFFF                      ; $9AA521  A2 FF FF     MX
L_9AA524:
    STX $0BE5                       ; $9AA524  8E E5 0B     MX
    LDA $00D9                       ; $9AA527  AD D9 00     MX
    STA $0BE4                       ; $9AA52A  8D E4 0B     MX
    LDA $0BE5                       ; $9AA52D  AD E5 0B     MX
    CMP #$8000                      ; $9AA530  C9 00 80     MX
    ROR                             ; $9AA533  6A           MX
    ROR $0BE3                       ; $9AA534  6E E3 0B     MX
    CMP #$8000                      ; $9AA537  C9 00 80     MX
    ROR                             ; $9AA53A  6A           MX
    ROR $0BE3                       ; $9AA53B  6E E3 0B     MX
    CMP #$8000                      ; $9AA53E  C9 00 80     MX
    ROR                             ; $9AA541  6A           MX
    ROR $0BE3                       ; $9AA542  6E E3 0B     MX
    CMP #$8000                      ; $9AA545  C9 00 80     MX
    ROR                             ; $9AA548  6A           MX
    ROR $0BE3                       ; $9AA549  6E E3 0B     MX
    STA $0BE5                       ; $9AA54C  8D E5 0B     MX
    STZ $0BEB                       ; $9AA54F  9C EB 0B     MX
    LDX #$0000                      ; $9AA552  A2 00 00     MX
    LDA $00E2                       ; $9AA555  AD E2 00     MX
    BPL L_9AA55D                    ; $9AA558  10 03        MX
    LDX #$FFFF                      ; $9AA55A  A2 FF FF     MX
L_9AA55D:
    STX $0BED                       ; $9AA55D  8E ED 0B     MX
    LDA $00E2                       ; $9AA560  AD E2 00     MX
    STA $0BEC                       ; $9AA563  8D EC 0B     MX
    LDA $0BED                       ; $9AA566  AD ED 0B     MX
    CMP #$8000                      ; $9AA569  C9 00 80     MX
    ROR                             ; $9AA56C  6A           MX
    ROR $0BEB                       ; $9AA56D  6E EB 0B     MX
    CMP #$8000                      ; $9AA570  C9 00 80     MX
    ROR                             ; $9AA573  6A           MX
    ROR $0BEB                       ; $9AA574  6E EB 0B     MX
    CMP #$8000                      ; $9AA577  C9 00 80     MX
    ROR                             ; $9AA57A  6A           MX
    ROR $0BEB                       ; $9AA57B  6E EB 0B     MX
    CMP #$8000                      ; $9AA57E  C9 00 80     MX
    ROR                             ; $9AA581  6A           MX
    ROR $0BEB                       ; $9AA582  6E EB 0B     MX
    STA $0BED                       ; $9AA585  8D ED 0B     MX
    LDA $00A8                       ; $9AA588  AD A8 00     MX
    STA $00D6                       ; $9AA58B  8D D6 00     MX
    LDA $00AA                       ; $9AA58E  AD AA 00     MX
    STA $00D9                       ; $9AA591  8D D9 00     MX
    LDA $00B0                       ; $9AA594  AD B0 00     MX
    STA $00E2                       ; $9AA597  8D E2 00     MX
    LDA $00B2                       ; $9AA59A  AD B2 00     MX
    STA $00E5                       ; $9AA59D  8D E5 00     MX
    LDA $00E2                       ; $9AA5A0  AD E2 00     MX
    STA $00D0                       ; $9AA5A3  8D D0 00     MX
    LDA $00E5                       ; $9AA5A6  AD E5 00     MX
    STA $00D3                       ; $9AA5A9  8D D3 00     MX
    LDA $00D6                       ; $9AA5AC  AD D6 00     MX
    STA $00E2                       ; $9AA5AF  8D E2 00     MX
    LDA $00D9                       ; $9AA5B2  AD D9 00     MX
    STA $00E5                       ; $9AA5B5  8D E5 00     MX
    JSR L_9AA972                    ; $9AA5B8  20 72 A9     MX
    STA $00B7                       ; $9AA5BB  8D B7 00     MX
    EOR #$FFFF                      ; $9AA5BE  49 FF FF     MX
    CLC                             ; $9AA5C1  18           MX
    ADC #$0001                      ; $9AA5C2  69 01 00     MX
    CLC                             ; $9AA5C5  18           MX
    ADC #$0080                      ; $9AA5C6  69 80 00     MX
    STA $00D0                       ; $9AA5C9  8D D0 00     MX
    JSR L_9AAB50                    ; $9AA5CC  20 50 AB     MX
    LDA $0BE5                       ; $9AA5CF  AD E5 0B     MX
    STA $00B2                       ; $9AA5D2  8D B2 00     MX
    LDA $0BE4                       ; $9AA5D5  AD E4 0B     MX
    LSR                             ; $9AA5D8  4A           MX
    LSR                             ; $9AA5D9  4A           MX
    LSR                             ; $9AA5DA  4A           MX
    LSR                             ; $9AA5DB  4A           MX
    AND #$00FF                      ; $9AA5DC  29 FF 00     MX
    STA $00D9                       ; $9AA5DF  8D D9 00     MX
    LDA $00B3                       ; $9AA5E2  AD B3 00     MX
    AND #$0080                      ; $9AA5E5  29 80 00     MX
    ORA $00D9                       ; $9AA5E8  0D D9 00     MX
    STA $00D9                       ; $9AA5EB  8D D9 00     MX
    STA $00DF                       ; $9AA5EE  8D DF 00     MX
    LDA $0BE9                       ; $9AA5F1  AD E9 0B     MX
    STA $00B2                       ; $9AA5F4  8D B2 00     MX
    LDA $0BE8                       ; $9AA5F7  AD E8 0B     MX
    LSR                             ; $9AA5FA  4A           MX
    LSR                             ; $9AA5FB  4A           MX
    LSR                             ; $9AA5FC  4A           MX
    LSR                             ; $9AA5FD  4A           MX
    AND #$00FF                      ; $9AA5FE  29 FF 00     MX
    STA $00E2                       ; $9AA601  8D E2 00     MX
    LDA $00B3                       ; $9AA604  AD B3 00     MX
    AND #$0080                      ; $9AA607  29 80 00     MX
    ORA $00E2                       ; $9AA60A  0D E2 00     MX
    STA $00E2                       ; $9AA60D  8D E2 00     MX
    STA $00F6                       ; $9AA610  8D F6 00     MX
    SEP #$20                        ; $9AA613  E2 20        MX
    LDA $00D3                       ; $9AA615  AD D3 00     mX
    STA $0BAF                       ; $9AA618  8D AF 0B     mX
    BPL L_9AA622                    ; $9AA61B  10 05        mX
    EOR #$FF                        ; $9AA61D  49 FF        mX
    CLC                             ; $9AA61F  18           mX
    ADC #$01                        ; $9AA620  69 01        mX
L_9AA622:
    STA $4202                       ; $9AA622  8D 02 42     mX
    LDA $00D9                       ; $9AA625  AD D9 00     mX
    STA $0BB1                       ; $9AA628  8D B1 0B     mX
    BPL L_9AA632                    ; $9AA62B  10 05        mX
    EOR #$FF                        ; $9AA62D  49 FF        mX
    CLC                             ; $9AA62F  18           mX
    ADC #$01                        ; $9AA630  69 01        mX
L_9AA632:
    STA $4203                       ; $9AA632  8D 03 42     mX
    LDA $0BAF                       ; $9AA635  AD AF 0B     mX
    EOR $0BB1                       ; $9AA638  4D B1 0B     mX
    AND #$80                        ; $9AA63B  29 80        mX
    BPL L_9AA651                    ; $9AA63D  10 12        mX
    REP #$20                        ; $9AA63F  C2 20        mX
    LDA $4216                       ; $9AA641  AD 16 42     MX
    EOR #$FFFF                      ; $9AA644  49 FF FF     MX
    CLC                             ; $9AA647  18           MX
    ADC #$0001                      ; $9AA648  69 01 00     MX
    STA $00D9                       ; $9AA64B  8D D9 00     MX
    JMP L_9AA659                    ; $9AA64E  4C 59 A6     MX
L_9AA651:
    REP #$20                        ; $9AA651  C2 20        mX
    LDA $4216                       ; $9AA653  AD 16 42     MX
    STA $00D9                       ; $9AA656  8D D9 00     MX
L_9AA659:
    SEP #$20                        ; $9AA659  E2 20        MX
    LDA $00D0                       ; $9AA65B  AD D0 00     mX
    STA $0BAF                       ; $9AA65E  8D AF 0B     mX
    BPL L_9AA668                    ; $9AA661  10 05        mX
    EOR #$FF                        ; $9AA663  49 FF        mX
    CLC                             ; $9AA665  18           mX
    ADC #$01                        ; $9AA666  69 01        mX
L_9AA668:
    STA $4202                       ; $9AA668  8D 02 42     mX
    LDA $00F6                       ; $9AA66B  AD F6 00     mX
    STA $0BB1                       ; $9AA66E  8D B1 0B     mX
    BPL L_9AA678                    ; $9AA671  10 05        mX
    EOR #$FF                        ; $9AA673  49 FF        mX
    CLC                             ; $9AA675  18           mX
    ADC #$01                        ; $9AA676  69 01        mX
L_9AA678:
    STA $4203                       ; $9AA678  8D 03 42     mX
    LDA $0BAF                       ; $9AA67B  AD AF 0B     mX
    EOR $0BB1                       ; $9AA67E  4D B1 0B     mX
    AND #$80                        ; $9AA681  29 80        mX
    BPL L_9AA697                    ; $9AA683  10 12        mX
    REP #$20                        ; $9AA685  C2 20        mX
    LDA $4216                       ; $9AA687  AD 16 42     MX
    EOR #$FFFF                      ; $9AA68A  49 FF FF     MX
    CLC                             ; $9AA68D  18           MX
    ADC #$0001                      ; $9AA68E  69 01 00     MX
    STA $00F6                       ; $9AA691  8D F6 00     MX
    JMP L_9AA69F                    ; $9AA694  4C 9F A6     MX
L_9AA697:
    REP #$20                        ; $9AA697  C2 20        mX
    LDA $4216                       ; $9AA699  AD 16 42     MX
    STA $00F6                       ; $9AA69C  8D F6 00     MX
L_9AA69F:
    LDA $00D9                       ; $9AA69F  AD D9 00     MX
    SEC                             ; $9AA6A2  38           MX
    SBC $00F6                       ; $9AA6A3  ED F6 00     MX
    STA $00D9                       ; $9AA6A6  8D D9 00     MX
    SEP #$20                        ; $9AA6A9  E2 20        MX
    LDA $00D0                       ; $9AA6AB  AD D0 00     mX
    STA $0BAF                       ; $9AA6AE  8D AF 0B     mX
    BPL L_9AA6B8                    ; $9AA6B1  10 05        mX
    EOR #$FF                        ; $9AA6B3  49 FF        mX
    CLC                             ; $9AA6B5  18           mX
    ADC #$01                        ; $9AA6B6  69 01        mX
L_9AA6B8:
    STA $4202                       ; $9AA6B8  8D 02 42     mX
    LDA $00DF                       ; $9AA6BB  AD DF 00     mX
    STA $0BB1                       ; $9AA6BE  8D B1 0B     mX
    BPL L_9AA6C8                    ; $9AA6C1  10 05        mX
    EOR #$FF                        ; $9AA6C3  49 FF        mX
    CLC                             ; $9AA6C5  18           mX
    ADC #$01                        ; $9AA6C6  69 01        mX
L_9AA6C8:
    STA $4203                       ; $9AA6C8  8D 03 42     mX
    LDA $0BAF                       ; $9AA6CB  AD AF 0B     mX
    EOR $0BB1                       ; $9AA6CE  4D B1 0B     mX
    AND #$80                        ; $9AA6D1  29 80        mX
    BPL L_9AA6E7                    ; $9AA6D3  10 12        mX
    REP #$20                        ; $9AA6D5  C2 20        mX
    LDA $4216                       ; $9AA6D7  AD 16 42     MX
    EOR #$FFFF                      ; $9AA6DA  49 FF FF     MX
    CLC                             ; $9AA6DD  18           MX
    ADC #$0001                      ; $9AA6DE  69 01 00     MX
    STA $00DF                       ; $9AA6E1  8D DF 00     MX
    JMP L_9AA6EF                    ; $9AA6E4  4C EF A6     MX
L_9AA6E7:
    REP #$20                        ; $9AA6E7  C2 20        mX
    LDA $4216                       ; $9AA6E9  AD 16 42     MX
    STA $00DF                       ; $9AA6EC  8D DF 00     MX
L_9AA6EF:
    SEP #$20                        ; $9AA6EF  E2 20        MX
    LDA $00D3                       ; $9AA6F1  AD D3 00     mX
    STA $0BAF                       ; $9AA6F4  8D AF 0B     mX
    BPL L_9AA6FE                    ; $9AA6F7  10 05        mX
    EOR #$FF                        ; $9AA6F9  49 FF        mX
    CLC                             ; $9AA6FB  18           mX
    ADC #$01                        ; $9AA6FC  69 01        mX
L_9AA6FE:
    STA $4202                       ; $9AA6FE  8D 02 42     mX
    LDA $00E2                       ; $9AA701  AD E2 00     mX
    STA $0BB1                       ; $9AA704  8D B1 0B     mX
    BPL L_9AA70E                    ; $9AA707  10 05        mX
    EOR #$FF                        ; $9AA709  49 FF        mX
    CLC                             ; $9AA70B  18           mX
    ADC #$01                        ; $9AA70C  69 01        mX
L_9AA70E:
    STA $4203                       ; $9AA70E  8D 03 42     mX
    LDA $0BAF                       ; $9AA711  AD AF 0B     mX
    EOR $0BB1                       ; $9AA714  4D B1 0B     mX
    AND #$80                        ; $9AA717  29 80        mX
    BPL L_9AA72D                    ; $9AA719  10 12        mX
    REP #$20                        ; $9AA71B  C2 20        mX
    LDA $4216                       ; $9AA71D  AD 16 42     MX
    EOR #$FFFF                      ; $9AA720  49 FF FF     MX
    CLC                             ; $9AA723  18           MX
    ADC #$0001                      ; $9AA724  69 01 00     MX
    STA $00E2                       ; $9AA727  8D E2 00     MX
    JMP L_9AA735                    ; $9AA72A  4C 35 A7     MX
L_9AA72D:
    REP #$20                        ; $9AA72D  C2 20        mX
    LDA $4216                       ; $9AA72F  AD 16 42     MX
    STA $00E2                       ; $9AA732  8D E2 00     MX
L_9AA735:
    LDA $00DF                       ; $9AA735  AD DF 00     MX
    CLC                             ; $9AA738  18           MX
    ADC $00E2                       ; $9AA739  6D E2 00     MX
    STA $00E2                       ; $9AA73C  8D E2 00     MX
    LDA $00E2                       ; $9AA73F  AD E2 00     MX
    EOR #$FFFF                      ; $9AA742  49 FF FF     MX
    CLC                             ; $9AA745  18           MX
    ADC #$0001                      ; $9AA746  69 01 00     MX
    STA $00E2                       ; $9AA749  8D E2 00     MX
    LDA $00B7                       ; $9AA74C  AD B7 00     MX
    STA $00D0                       ; $9AA74F  8D D0 00     MX
    AND #$007F                      ; $9AA752  29 7F 00     MX
    ASL                             ; $9AA755  0A           MX
    TAY                             ; $9AA756  A8           MX
    LDA $ABEB,Y                     ; $9AA757  B9 EB AB     MX
    STA $00D3                       ; $9AA75A  8D D3 00     MX
    LDA $ABAB,Y                     ; $9AA75D  B9 AB AB     MX
    STA $00D0                       ; $9AA760  8D D0 00     MX
    BPL L_9AA76C                    ; $9AA763  10 07        MX
    EOR #$FFFF                      ; $9AA765  49 FF FF     MX
    CLC                             ; $9AA768  18           MX
    ADC #$0001                      ; $9AA769  69 01 00     MX
L_9AA76C:
    LSR                             ; $9AA76C  4A           MX
    LSR                             ; $9AA76D  4A           MX
    LSR                             ; $9AA76E  4A           MX
    LSR                             ; $9AA76F  4A           MX
    LSR                             ; $9AA770  4A           MX
    STA $00A4                       ; $9AA771  8D A4 00     MX
    LDA $00D0                       ; $9AA774  AD D0 00     MX
    BPL L_9AA783                    ; $9AA777  10 0A        MX
    LDA $00A4                       ; $9AA779  AD A4 00     MX
    EOR #$FFFF                      ; $9AA77C  49 FF FF     MX
    CLC                             ; $9AA77F  18           MX
    ADC #$0001                      ; $9AA780  69 01 00     MX
L_9AA783:
    STA $00D0                       ; $9AA783  8D D0 00     MX
    LDA $00D3                       ; $9AA786  AD D3 00     MX
    BPL L_9AA792                    ; $9AA789  10 07        MX
    EOR #$FFFF                      ; $9AA78B  49 FF FF     MX
    CLC                             ; $9AA78E  18           MX
    ADC #$0001                      ; $9AA78F  69 01 00     MX
L_9AA792:
    LSR                             ; $9AA792  4A           MX
    LSR                             ; $9AA793  4A           MX
    LSR                             ; $9AA794  4A           MX
    LSR                             ; $9AA795  4A           MX
    LSR                             ; $9AA796  4A           MX
    STA $00A4                       ; $9AA797  8D A4 00     MX
    LDA $00D3                       ; $9AA79A  AD D3 00     MX
    BPL L_9AA7A9                    ; $9AA79D  10 0A        MX
    LDA $00A4                       ; $9AA79F  AD A4 00     MX
    EOR #$FFFF                      ; $9AA7A2  49 FF FF     MX
    CLC                             ; $9AA7A5  18           MX
    ADC #$0001                      ; $9AA7A6  69 01 00     MX
L_9AA7A9:
    STA $00D3                       ; $9AA7A9  8D D3 00     MX
    LDA $00D9                       ; $9AA7AC  AD D9 00     MX
    STA $00DF                       ; $9AA7AF  8D DF 00     MX
    LDA $00E2                       ; $9AA7B2  AD E2 00     MX
    STA $00F6                       ; $9AA7B5  8D F6 00     MX
    SEP #$20                        ; $9AA7B8  E2 20        MX
    LDA $00D3                       ; $9AA7BA  AD D3 00     mX
    STA $0BAF                       ; $9AA7BD  8D AF 0B     mX
    BPL L_9AA7C7                    ; $9AA7C0  10 05        mX
    EOR #$FF                        ; $9AA7C2  49 FF        mX
    CLC                             ; $9AA7C4  18           mX
    ADC #$01                        ; $9AA7C5  69 01        mX
L_9AA7C7:
    STA $4202                       ; $9AA7C7  8D 02 42     mX
    LDA $00D9                       ; $9AA7CA  AD D9 00     mX
    STA $0BB1                       ; $9AA7CD  8D B1 0B     mX
    BPL L_9AA7D7                    ; $9AA7D0  10 05        mX
    EOR #$FF                        ; $9AA7D2  49 FF        mX
    CLC                             ; $9AA7D4  18           mX
    ADC #$01                        ; $9AA7D5  69 01        mX
L_9AA7D7:
    STA $4203                       ; $9AA7D7  8D 03 42     mX
    LDA $0BAF                       ; $9AA7DA  AD AF 0B     mX
    EOR $0BB1                       ; $9AA7DD  4D B1 0B     mX
    AND #$80                        ; $9AA7E0  29 80        mX
    BPL L_9AA7F6                    ; $9AA7E2  10 12        mX
    REP #$20                        ; $9AA7E4  C2 20        mX
    LDA $4216                       ; $9AA7E6  AD 16 42     MX
    EOR #$FFFF                      ; $9AA7E9  49 FF FF     MX
    CLC                             ; $9AA7EC  18           MX
    ADC #$0001                      ; $9AA7ED  69 01 00     MX
    STA $00D9                       ; $9AA7F0  8D D9 00     MX
    JMP L_9AA7FE                    ; $9AA7F3  4C FE A7     MX
L_9AA7F6:
    REP #$20                        ; $9AA7F6  C2 20        mX
    LDA $4216                       ; $9AA7F8  AD 16 42     MX
    STA $00D9                       ; $9AA7FB  8D D9 00     MX
L_9AA7FE:
    SEP #$20                        ; $9AA7FE  E2 20        MX
    LDA $00D0                       ; $9AA800  AD D0 00     mX
    STA $0BAF                       ; $9AA803  8D AF 0B     mX
    BPL L_9AA80D                    ; $9AA806  10 05        mX
    EOR #$FF                        ; $9AA808  49 FF        mX
    CLC                             ; $9AA80A  18           mX
    ADC #$01                        ; $9AA80B  69 01        mX
L_9AA80D:
    STA $4202                       ; $9AA80D  8D 02 42     mX
    LDA $00F6                       ; $9AA810  AD F6 00     mX
    STA $0BB1                       ; $9AA813  8D B1 0B     mX
    BPL L_9AA81D                    ; $9AA816  10 05        mX
    EOR #$FF                        ; $9AA818  49 FF        mX
    CLC                             ; $9AA81A  18           mX
    ADC #$01                        ; $9AA81B  69 01        mX
L_9AA81D:
    STA $4203                       ; $9AA81D  8D 03 42     mX
    LDA $0BAF                       ; $9AA820  AD AF 0B     mX
    EOR $0BB1                       ; $9AA823  4D B1 0B     mX
    AND #$80                        ; $9AA826  29 80        mX
    BPL L_9AA83C                    ; $9AA828  10 12        mX
    REP #$20                        ; $9AA82A  C2 20        mX
    LDA $4216                       ; $9AA82C  AD 16 42     MX
    EOR #$FFFF                      ; $9AA82F  49 FF FF     MX
    CLC                             ; $9AA832  18           MX
    ADC #$0001                      ; $9AA833  69 01 00     MX
    STA $00F6                       ; $9AA836  8D F6 00     MX
    JMP L_9AA844                    ; $9AA839  4C 44 A8     MX
L_9AA83C:
    REP #$20                        ; $9AA83C  C2 20        mX
    LDA $4216                       ; $9AA83E  AD 16 42     MX
    STA $00F6                       ; $9AA841  8D F6 00     MX
L_9AA844:
    LDA $00D9                       ; $9AA844  AD D9 00     MX
    SEC                             ; $9AA847  38           MX
    SBC $00F6                       ; $9AA848  ED F6 00     MX
    STA $00D9                       ; $9AA84B  8D D9 00     MX
    SEP #$20                        ; $9AA84E  E2 20        MX
    LDA $00D0                       ; $9AA850  AD D0 00     mX
    STA $0BAF                       ; $9AA853  8D AF 0B     mX
    BPL L_9AA85D                    ; $9AA856  10 05        mX
    EOR #$FF                        ; $9AA858  49 FF        mX
    CLC                             ; $9AA85A  18           mX
    ADC #$01                        ; $9AA85B  69 01        mX
L_9AA85D:
    STA $4202                       ; $9AA85D  8D 02 42     mX
    LDA $00DF                       ; $9AA860  AD DF 00     mX
    STA $0BB1                       ; $9AA863  8D B1 0B     mX
    BPL L_9AA86D                    ; $9AA866  10 05        mX
    EOR #$FF                        ; $9AA868  49 FF        mX
    CLC                             ; $9AA86A  18           mX
    ADC #$01                        ; $9AA86B  69 01        mX
L_9AA86D:
    STA $4203                       ; $9AA86D  8D 03 42     mX
    LDA $0BAF                       ; $9AA870  AD AF 0B     mX
    EOR $0BB1                       ; $9AA873  4D B1 0B     mX
    AND #$80                        ; $9AA876  29 80        mX
    BPL L_9AA88C                    ; $9AA878  10 12        mX
    REP #$20                        ; $9AA87A  C2 20        mX
    LDA $4216                       ; $9AA87C  AD 16 42     MX
    EOR #$FFFF                      ; $9AA87F  49 FF FF     MX
    CLC                             ; $9AA882  18           MX
    ADC #$0001                      ; $9AA883  69 01 00     MX
    STA $00DF                       ; $9AA886  8D DF 00     MX
    JMP L_9AA894                    ; $9AA889  4C 94 A8     MX
L_9AA88C:
    REP #$20                        ; $9AA88C  C2 20        mX
    LDA $4216                       ; $9AA88E  AD 16 42     MX
    STA $00DF                       ; $9AA891  8D DF 00     MX
L_9AA894:
    SEP #$20                        ; $9AA894  E2 20        MX
    LDA $00D3                       ; $9AA896  AD D3 00     mX
    STA $0BAF                       ; $9AA899  8D AF 0B     mX
    BPL L_9AA8A3                    ; $9AA89C  10 05        mX
    EOR #$FF                        ; $9AA89E  49 FF        mX
    CLC                             ; $9AA8A0  18           mX
    ADC #$01                        ; $9AA8A1  69 01        mX
L_9AA8A3:
    STA $4202                       ; $9AA8A3  8D 02 42     mX
    LDA $00E2                       ; $9AA8A6  AD E2 00     mX
    STA $0BB1                       ; $9AA8A9  8D B1 0B     mX
    BPL L_9AA8B3                    ; $9AA8AC  10 05        mX
    EOR #$FF                        ; $9AA8AE  49 FF        mX
    CLC                             ; $9AA8B0  18           mX
    ADC #$01                        ; $9AA8B1  69 01        mX
L_9AA8B3:
    STA $4203                       ; $9AA8B3  8D 03 42     mX
    LDA $0BAF                       ; $9AA8B6  AD AF 0B     mX
    EOR $0BB1                       ; $9AA8B9  4D B1 0B     mX
    AND #$80                        ; $9AA8BC  29 80        mX
    BPL L_9AA8D2                    ; $9AA8BE  10 12        mX
    REP #$20                        ; $9AA8C0  C2 20        mX
    LDA $4216                       ; $9AA8C2  AD 16 42     MX
    EOR #$FFFF                      ; $9AA8C5  49 FF FF     MX
    CLC                             ; $9AA8C8  18           MX
    ADC #$0001                      ; $9AA8C9  69 01 00     MX
    STA $00E2                       ; $9AA8CC  8D E2 00     MX
    JMP L_9AA8DA                    ; $9AA8CF  4C DA A8     MX
L_9AA8D2:
    REP #$20                        ; $9AA8D2  C2 20        mX
    LDA $4216                       ; $9AA8D4  AD 16 42     MX
    STA $00E2                       ; $9AA8D7  8D E2 00     MX
L_9AA8DA:
    LDA $00DF                       ; $9AA8DA  AD DF 00     MX
    CLC                             ; $9AA8DD  18           MX
    ADC $00E2                       ; $9AA8DE  6D E2 00     MX
    STA $00E2                       ; $9AA8E1  8D E2 00     MX
    STZ $0BE3                       ; $9AA8E4  9C E3 0B     MX
    LDX #$0000                      ; $9AA8E7  A2 00 00     MX
    LDA $00D9                       ; $9AA8EA  AD D9 00     MX
    AND #$8000                      ; $9AA8ED  29 00 80     MX
    BPL L_9AA8F5                    ; $9AA8F0  10 03        MX
    LDX #$FFFF                      ; $9AA8F2  A2 FF FF     MX
L_9AA8F5:
    STX $0BE5                       ; $9AA8F5  8E E5 0B     MX
    LDA $00D9                       ; $9AA8F8  AD D9 00     MX
    STA $0BE4                       ; $9AA8FB  8D E4 0B     MX
    LDA $0BE5                       ; $9AA8FE  AD E5 0B     MX
    CMP #$8000                      ; $9AA901  C9 00 80     MX
    ROR                             ; $9AA904  6A           MX
    ROR $0BE3                       ; $9AA905  6E E3 0B     MX
    CMP #$8000                      ; $9AA908  C9 00 80     MX
    ROR                             ; $9AA90B  6A           MX
    ROR $0BE3                       ; $9AA90C  6E E3 0B     MX
    CMP #$8000                      ; $9AA90F  C9 00 80     MX
    ROR                             ; $9AA912  6A           MX
    ROR $0BE3                       ; $9AA913  6E E3 0B     MX
    STA $0BE5                       ; $9AA916  8D E5 0B     MX
    STZ $0BE7                       ; $9AA919  9C E7 0B     MX
    LDX #$0000                      ; $9AA91C  A2 00 00     MX
    LDA $00E2                       ; $9AA91F  AD E2 00     MX
    AND #$8000                      ; $9AA922  29 00 80     MX
    BEQ L_9AA92A                    ; $9AA925  F0 03        MX
    LDX #$FFFF                      ; $9AA927  A2 FF FF     MX
L_9AA92A:
    STX $0BE9                       ; $9AA92A  8E E9 0B     MX
    LDA $00E2                       ; $9AA92D  AD E2 00     MX
    STA $0BE8                       ; $9AA930  8D E8 0B     MX
    LDA $0BE9                       ; $9AA933  AD E9 0B     MX
    CMP #$8000                      ; $9AA936  C9 00 80     MX
    ROR                             ; $9AA939  6A           MX
    ROR $0BE7                       ; $9AA93A  6E E7 0B     MX
    CMP #$8000                      ; $9AA93D  C9 00 80     MX
    ROR                             ; $9AA940  6A           MX
    ROR $0BE7                       ; $9AA941  6E E7 0B     MX
    CMP #$8000                      ; $9AA944  C9 00 80     MX
    ROR                             ; $9AA947  6A           MX
    ROR $0BE7                       ; $9AA948  6E E7 0B     MX
    CMP #$8000                      ; $9AA94B  C9 00 80     MX
    ROR                             ; $9AA94E  6A           MX
    ROR $0BE7                       ; $9AA94F  6E E7 0B     MX
    CMP #$8000                      ; $9AA952  C9 00 80     MX
    ROR                             ; $9AA955  6A           MX
    ROR $0BE7                       ; $9AA956  6E E7 0B     MX
    STA $0BE9                       ; $9AA959  8D E9 0B     MX
    CMP #$0000                      ; $9AA95C  C9 00 00     MX
    BMI L_9AA96B                    ; $9AA95F  30 0A        MX
    CMP #$8000                      ; $9AA961  C9 00 80     MX
    ROR                             ; $9AA964  6A           MX
    ROR $0BE7                       ; $9AA965  6E E7 0B     MX
    STA $0BE9                       ; $9AA968  8D E9 0B     MX
L_9AA96B:
    LDA #$0001                      ; $9AA96B  A9 01 00     MX
    STA $1D76                       ; $9AA96E  8D 76 1D     MX
    RTS                             ; $9AA971  60           MX
L_9AA972:
    STZ $00D6                       ; $9AA972  9C D6 00     MX
    LDA $00D0                       ; $9AA975  AD D0 00     MX
    SEC                             ; $9AA978  38           MX
    SBC $00E2                       ; $9AA979  ED E2 00     MX
    STA $00D0                       ; $9AA97C  8D D0 00     MX
    BCS L_9AA9AD                    ; $9AA97F  B0 2C        MX
    EOR #$FFFF                      ; $9AA981  49 FF FF     MX
    CLC                             ; $9AA984  18           MX
    ADC #$0001                      ; $9AA985  69 01 00     MX
    STA $00D0                       ; $9AA988  8D D0 00     MX
    LDA $00D3                       ; $9AA98B  AD D3 00     MX
    SEC                             ; $9AA98E  38           MX
    SBC $00E5                       ; $9AA98F  ED E5 00     MX
    STA $00D3                       ; $9AA992  8D D3 00     MX
    BPL L_9AA9F2                    ; $9AA995  10 5B        MX
    LDA #$0008                      ; $9AA997  A9 08 00     MX
    STA $00D6                       ; $9AA99A  8D D6 00     MX
    LDA $00D3                       ; $9AA99D  AD D3 00     MX
    EOR #$FFFF                      ; $9AA9A0  49 FF FF     MX
    CLC                             ; $9AA9A3  18           MX
    ADC #$0001                      ; $9AA9A4  69 01 00     MX
    STA $00D3                       ; $9AA9A7  8D D3 00     MX
    JMP L_9AA9DA                    ; $9AA9AA  4C DA A9     MX
L_9AA9AD:
    LDA #$0010                      ; $9AA9AD  A9 10 00     MX
    STA $00D6                       ; $9AA9B0  8D D6 00     MX
    LDA $00D3                       ; $9AA9B3  AD D3 00     MX
    SEC                             ; $9AA9B6  38           MX
    SBC $00E5                       ; $9AA9B7  ED E5 00     MX
    STA $00D3                       ; $9AA9BA  8D D3 00     MX
    STA $00A4                       ; $9AA9BD  8D A4 00     MX
    LDA $00D3                       ; $9AA9C0  AD D3 00     MX
    BPL L_9AA9CF                    ; $9AA9C3  10 0A        MX
    EOR #$FFFF                      ; $9AA9C5  49 FF FF     MX
    CLC                             ; $9AA9C8  18           MX
    ADC #$0001                      ; $9AA9C9  69 01 00     MX
    STA $00D3                       ; $9AA9CC  8D D3 00     MX
L_9AA9CF:
    LDA $00A4                       ; $9AA9CF  AD A4 00     MX
    BMI L_9AA9EC                    ; $9AA9D2  30 18        MX
    LDA #$0018                      ; $9AA9D4  A9 18 00     MX
    STA $00D6                       ; $9AA9D7  8D D6 00     MX
L_9AA9DA:
    LDA $00D0                       ; $9AA9DA  AD D0 00     MX
    STA $00BA                       ; $9AA9DD  8D BA 00     MX
    LDA $00D3                       ; $9AA9E0  AD D3 00     MX
    STA $00D0                       ; $9AA9E3  8D D0 00     MX
    LDA $00BA                       ; $9AA9E6  AD BA 00     MX
    STA $00D3                       ; $9AA9E9  8D D3 00     MX
L_9AA9EC:
    ASL $00D6                       ; $9AA9EC  0E D6 00     MX
    ASL $00D6                       ; $9AA9EF  0E D6 00     MX
L_9AA9F2:
    STZ $00B7                       ; $9AA9F2  9C B7 00     MX
    LDA $00D0                       ; $9AA9F5  AD D0 00     MX
    CMP $00D3                       ; $9AA9F8  CD D3 00     MX
    BCS L_9AAA24                    ; $9AA9FB  B0 27        MX
    LDA $00D3                       ; $9AA9FD  AD D3 00     MX
    LSR                             ; $9AAA00  4A           MX
    LSR                             ; $9AAA01  4A           MX
    LSR                             ; $9AAA02  4A           MX
    LSR                             ; $9AAA03  4A           MX
    STA $00D3                       ; $9AAA04  8D D3 00     MX
    BNE L_9AAA19                    ; $9AAA07  D0 10        MX
    JMP L_9AAA52                    ; $9AAA09  4C 52 AA     MX
L_9AAA0C:
    INC $00D6                       ; $9AAA0C  EE D6 00     MX
    LDA $00B7                       ; $9AAA0F  AD B7 00     MX
    CLC                             ; $9AAA12  18           MX
    ADC $00D3                       ; $9AAA13  6D D3 00     MX
    STA $00B7                       ; $9AAA16  8D B7 00     MX
L_9AAA19:
    LDA $00B7                       ; $9AAA19  AD B7 00     MX
    CMP $00D0                       ; $9AAA1C  CD D0 00     MX
    BCC L_9AAA0C                    ; $9AAA1F  90 EB        MX
    JMP L_9AAA52                    ; $9AAA21  4C 52 AA     MX
L_9AAA24:
    LDA $00D6                       ; $9AAA24  AD D6 00     MX
    CLC                             ; $9AAA27  18           MX
    ADC #$001F                      ; $9AAA28  69 1F 00     MX
    STA $00D6                       ; $9AAA2B  8D D6 00     MX
    LDA $00D0                       ; $9AAA2E  AD D0 00     MX
    LSR                             ; $9AAA31  4A           MX
    LSR                             ; $9AAA32  4A           MX
    LSR                             ; $9AAA33  4A           MX
    LSR                             ; $9AAA34  4A           MX
    STA $00D0                       ; $9AAA35  8D D0 00     MX
    BNE L_9AAA4A                    ; $9AAA38  D0 10        MX
    JMP L_9AAA52                    ; $9AAA3A  4C 52 AA     MX
L_9AAA3D:
    DEC $00D6                       ; $9AAA3D  CE D6 00     MX
    LDA $00B7                       ; $9AAA40  AD B7 00     MX
    CLC                             ; $9AAA43  18           MX
    ADC $00D0                       ; $9AAA44  6D D0 00     MX
    STA $00B7                       ; $9AAA47  8D B7 00     MX
L_9AAA4A:
    LDA $00B7                       ; $9AAA4A  AD B7 00     MX
    CMP $00D3                       ; $9AAA4D  CD D3 00     MX
    BCC L_9AAA3D                    ; $9AAA50  90 EB        MX
L_9AAA52:
    LDA #$007F                      ; $9AAA52  A9 7F 00     MX
    AND $00D6                       ; $9AAA55  2D D6 00     MX
    STA $00D0                       ; $9AAA58  8D D0 00     MX
    RTS                             ; $9AAA5B  60           MX
    db $FF,$FE,$64,$00,$74,$03,$01,$00,$01,$FF,$64,$00,$6F,$03,$01,$00 ; $9AAA5C
    db $06,$FF,$64,$00,$6D,$03,$02,$00,$0B,$FF,$64,$00,$6F,$03,$03,$00 ; $9AAA6C
    db $0D,$FF,$64,$00,$74,$03,$04,$00,$0B,$FF,$64,$00,$79,$03,$03,$00 ; $9AAA7C
    db $06,$FF,$64,$00,$7B,$03,$02,$00,$01,$FF,$64,$00,$79,$03,$01,$00 ; $9AAA8C
    db $06,$FF,$64,$00,$74,$03,$FF,$FF,$06,$FF,$62,$00,$74,$03,$FF,$FF ; $9AAA9C
    db $06,$FF,$60,$00,$74,$03,$FE,$FF,$06,$FF,$5E,$00,$74,$03,$FE,$FF ; $9AAAAC
    db $06,$FF,$5E,$00,$74,$03,$FE,$FF,$06,$FF,$5E,$00,$74,$03,$FE,$FF ; $9AAABC
    db $06,$FF,$5E,$00,$74,$03,$FE,$FF,$00,$00,$FB,$00,$64,$00,$74,$03 ; $9AAACC
    db $04,$00,$FD,$00,$64,$00,$6F,$03,$03,$00,$02,$01,$64,$00,$6D,$03 ; $9AAADC
    db $02,$00,$07,$01,$64,$00,$6F,$03,$01,$00,$09,$01,$64,$00,$74,$03 ; $9AAAEC
    db $01,$00,$07,$01,$64,$00,$79,$03,$01,$00,$02,$01,$64,$00,$7B,$03 ; $9AAAFC
    db $02,$00,$FD,$00,$64,$00,$79,$03,$03,$00,$02,$01,$64,$00,$74,$03 ; $9AAB0C
    db $FF,$FF,$02,$01,$62,$00,$74,$03,$FF,$FF,$02,$01,$60,$00,$74,$03 ; $9AAB1C
    db $FE,$FF,$02,$01,$5E,$00,$74,$03,$FE,$FF,$02,$01,$5E,$00,$74,$03 ; $9AAB2C
    db $FE,$FF,$02,$01,$5E,$00,$74,$03,$FE,$FF,$02,$01,$5E,$00,$74,$03 ; $9AAB3C
    db $FE,$FF,$00,$00                                                 ; $9AAB4C
L_9AAB50:
    AND #$007F                      ; $9AAB50  29 7F 00     MX
    ASL                             ; $9AAB53  0A           MX
    TAY                             ; $9AAB54  A8           MX
    LDA $ABEB,Y                     ; $9AAB55  B9 EB AB     MX
    STA $00D3                       ; $9AAB58  8D D3 00     MX
    LDA $ABAB,Y                     ; $9AAB5B  B9 AB AB     MX
    STA $00D0                       ; $9AAB5E  8D D0 00     MX
    BPL L_9AAB6A                    ; $9AAB61  10 07        MX
    EOR #$FFFF                      ; $9AAB63  49 FF FF     MX
    CLC                             ; $9AAB66  18           MX
    ADC #$0001                      ; $9AAB67  69 01 00     MX
L_9AAB6A:
    LSR                             ; $9AAB6A  4A           MX
    LSR                             ; $9AAB6B  4A           MX
    LSR                             ; $9AAB6C  4A           MX
    LSR                             ; $9AAB6D  4A           MX
    LSR                             ; $9AAB6E  4A           MX
    STA $00A4                       ; $9AAB6F  8D A4 00     MX
    LDA $00D0                       ; $9AAB72  AD D0 00     MX
    BPL L_9AAB81                    ; $9AAB75  10 0A        MX
    LDA $00A4                       ; $9AAB77  AD A4 00     MX
    EOR #$FFFF                      ; $9AAB7A  49 FF FF     MX
    CLC                             ; $9AAB7D  18           MX
    ADC #$0001                      ; $9AAB7E  69 01 00     MX
L_9AAB81:
    STA $00D0                       ; $9AAB81  8D D0 00     MX
    LDA $00D3                       ; $9AAB84  AD D3 00     MX
    BPL L_9AAB90                    ; $9AAB87  10 07        MX
    EOR #$FFFF                      ; $9AAB89  49 FF FF     MX
    CLC                             ; $9AAB8C  18           MX
    ADC #$0001                      ; $9AAB8D  69 01 00     MX
L_9AAB90:
    LSR                             ; $9AAB90  4A           MX
    LSR                             ; $9AAB91  4A           MX
    LSR                             ; $9AAB92  4A           MX
    LSR                             ; $9AAB93  4A           MX
    LSR                             ; $9AAB94  4A           MX
    STA $00A4                       ; $9AAB95  8D A4 00     MX
    LDA $00D3                       ; $9AAB98  AD D3 00     MX
    BPL L_9AABA7                    ; $9AAB9B  10 0A        MX
    LDA $00A4                       ; $9AAB9D  AD A4 00     MX
    EOR #$FFFF                      ; $9AABA0  49 FF FF     MX
    CLC                             ; $9AABA3  18           MX
    ADC #$0001                      ; $9AABA4  69 01 00     MX
L_9AABA7:
    STA $00D3                       ; $9AABA7  8D D3 00     MX
    RTS                             ; $9AABAA  60           MX
    db $00,$F0,$05,$F0,$14,$F0,$2C,$F0,$4F,$F0,$7B,$F0,$B0,$F0,$EF,$F0 ; $9AABAB
    db $38,$F1,$89,$F1,$E4,$F1,$47,$F2,$B2,$F2,$26,$F3,$A2,$F3,$25,$F4 ; $9AABBB
    db $B0,$F4,$41,$F5,$DA,$F5,$78,$F6,$1D,$F7,$C6,$F7,$75,$F8,$29,$F9 ; $9AABCB
    db $E1,$F9,$9C,$FA,$5B,$FB,$1D,$FC,$E1,$FC,$A7,$FD,$6F,$FE,$37,$FF ; $9AABDB
    db $00,$00,$C9,$00,$91,$01,$59,$02,$1F,$03,$E3,$03,$A5,$04,$64,$05 ; $9AABEB
    db $1F,$06,$D7,$06,$8B,$07,$3A,$08,$E3,$08,$88,$09,$26,$0A,$BF,$0A ; $9AABFB
    db $50,$0B,$DB,$0B,$5E,$0C,$DA,$0C,$4E,$0D,$B9,$0D,$1C,$0E,$77,$0E ; $9AAC0B
    db $C8,$0E,$11,$0F,$50,$0F,$85,$0F,$B1,$0F,$D4,$0F,$EC,$0F,$FB,$0F ; $9AAC1B
    db $00,$10,$FB,$0F,$EC,$0F,$D4,$0F,$B1,$0F,$85,$0F,$50,$0F,$11,$0F ; $9AAC2B
    db $C8,$0E,$77,$0E,$1C,$0E,$B9,$0D,$4E,$0D,$DA,$0C,$5E,$0C,$DB,$0B ; $9AAC3B
    db $50,$0B,$BF,$0A,$26,$0A,$88,$09,$E3,$08,$3A,$08,$8B,$07,$D7,$06 ; $9AAC4B
    db $1F,$06,$64,$05,$A5,$04,$E3,$03,$1F,$03,$59,$02,$91,$01,$C9,$00 ; $9AAC5B
    db $00,$00,$38,$FF,$6F,$FE,$A7,$FD,$E1,$FC,$1D,$FC,$5B,$FB,$9C,$FA ; $9AAC6B
    db $E1,$F9,$29,$F9,$75,$F8,$C7,$F7,$1D,$F7,$78,$F6,$DA,$F5,$42,$F5 ; $9AAC7B
    db $B0,$F4,$25,$F4,$A2,$F3,$26,$F3,$B2,$F2,$47,$F2,$E4,$F1,$89,$F1 ; $9AAC8B
    db $38,$F1,$EF,$F0,$B0,$F0,$7B,$F0,$4F,$F0,$2C,$F0,$14,$F0,$05,$F0 ; $9AAC9B
    db $00,$F0,$05,$F0,$14,$F0,$2C,$F0,$4F,$F0,$7B,$F0,$B0,$F0,$EF,$F0 ; $9AACAB
    db $38,$F1,$89,$F1,$E4,$F1,$47,$F2,$B2,$F2,$26,$F3,$A2,$F3,$25,$F4 ; $9AACBB
    db $B0,$F4,$41,$F5,$DA,$F5,$78,$F6,$1D,$F7,$C6,$F7,$75,$F8,$29,$F9 ; $9AACCB
    db $E1,$F9,$9C,$FA,$5B,$FB,$1D,$FC,$E1,$FC,$A7,$FD,$6F,$FE,$37,$FF ; $9AACDB
L_9AACEB:
    CLC                             ; $9AACEB  18           MX
    STZ $00F0                       ; $9AACEC  9C F0 00     MX
    STZ $00F2                       ; $9AACEF  9C F2 00     MX
    ROL $00EA                       ; $9AACF2  2E EA 00     MX
    ROL $00EC                       ; $9AACF5  2E EC 00     MX
    ROL $00F0                       ; $9AACF8  2E F0 00     MX
    ROL $00F2                       ; $9AACFB  2E F2 00     MX
    ROL                             ; $9AACFE  2A           MX
    EOR #$0001                      ; $9AACFF  49 01 00     MX
    ROR                             ; $9AAD02  6A           MX
    LDA $00F0                       ; $9AAD03  AD F0 00     MX
    SBC $00EE                       ; $9AAD06  ED EE 00     MX
    STA $00F0                       ; $9AAD09  8D F0 00     MX
    LDA $00F2                       ; $9AAD0C  AD F2 00     MX
    SBC #$0000                      ; $9AAD0F  E9 00 00     MX
    STA $00F2                       ; $9AAD12  8D F2 00     MX
    BCS L_9AAD2B                    ; $9AAD15  B0 14        MX
    LDA $00F0                       ; $9AAD17  AD F0 00     MX
    CLC                             ; $9AAD1A  18           MX
    ADC $00EE                       ; $9AAD1B  6D EE 00     MX
    STA $00F0                       ; $9AAD1E  8D F0 00     MX
    LDA $00F2                       ; $9AAD21  AD F2 00     MX
    ADC #$0000                      ; $9AAD24  69 00 00     MX
    STA $00F2                       ; $9AAD27  8D F2 00     MX
    CLC                             ; $9AAD2A  18           MX
L_9AAD2B:
    ROL $00EA                       ; $9AAD2B  2E EA 00     MX
    ROL $00EC                       ; $9AAD2E  2E EC 00     MX
    ROL $00F0                       ; $9AAD31  2E F0 00     MX
    ROL $00F2                       ; $9AAD34  2E F2 00     MX
    ROL                             ; $9AAD37  2A           MX
    EOR #$0001                      ; $9AAD38  49 01 00     MX
    ROR                             ; $9AAD3B  6A           MX
    LDA $00F0                       ; $9AAD3C  AD F0 00     MX
    SBC $00EE                       ; $9AAD3F  ED EE 00     MX
    STA $00F0                       ; $9AAD42  8D F0 00     MX
    LDA $00F2                       ; $9AAD45  AD F2 00     MX
    SBC #$0000                      ; $9AAD48  E9 00 00     MX
    STA $00F2                       ; $9AAD4B  8D F2 00     MX
    BCS L_9AAD64                    ; $9AAD4E  B0 14        MX
    LDA $00F0                       ; $9AAD50  AD F0 00     MX
    CLC                             ; $9AAD53  18           MX
    ADC $00EE                       ; $9AAD54  6D EE 00     MX
    STA $00F0                       ; $9AAD57  8D F0 00     MX
    LDA $00F2                       ; $9AAD5A  AD F2 00     MX
    ADC #$0000                      ; $9AAD5D  69 00 00     MX
    STA $00F2                       ; $9AAD60  8D F2 00     MX
    CLC                             ; $9AAD63  18           MX
L_9AAD64:
    ROL $00EA                       ; $9AAD64  2E EA 00     MX
    ROL $00EC                       ; $9AAD67  2E EC 00     MX
    ROL $00F0                       ; $9AAD6A  2E F0 00     MX
    ROL $00F2                       ; $9AAD6D  2E F2 00     MX
    ROL                             ; $9AAD70  2A           MX
    EOR #$0001                      ; $9AAD71  49 01 00     MX
    ROR                             ; $9AAD74  6A           MX
    LDA $00F0                       ; $9AAD75  AD F0 00     MX
    SBC $00EE                       ; $9AAD78  ED EE 00     MX
    STA $00F0                       ; $9AAD7B  8D F0 00     MX
    LDA $00F2                       ; $9AAD7E  AD F2 00     MX
    SBC #$0000                      ; $9AAD81  E9 00 00     MX
    STA $00F2                       ; $9AAD84  8D F2 00     MX
    BCS L_9AAD9D                    ; $9AAD87  B0 14        MX
    LDA $00F0                       ; $9AAD89  AD F0 00     MX
    CLC                             ; $9AAD8C  18           MX
    ADC $00EE                       ; $9AAD8D  6D EE 00     MX
    STA $00F0                       ; $9AAD90  8D F0 00     MX
    LDA $00F2                       ; $9AAD93  AD F2 00     MX
    ADC #$0000                      ; $9AAD96  69 00 00     MX
    STA $00F2                       ; $9AAD99  8D F2 00     MX
    CLC                             ; $9AAD9C  18           MX
L_9AAD9D:
    ROL $00EA                       ; $9AAD9D  2E EA 00     MX
    ROL $00EC                       ; $9AADA0  2E EC 00     MX
    ROL $00F0                       ; $9AADA3  2E F0 00     MX
    ROL $00F2                       ; $9AADA6  2E F2 00     MX
    ROL                             ; $9AADA9  2A           MX
    EOR #$0001                      ; $9AADAA  49 01 00     MX
    ROR                             ; $9AADAD  6A           MX
    LDA $00F0                       ; $9AADAE  AD F0 00     MX
    SBC $00EE                       ; $9AADB1  ED EE 00     MX
    STA $00F0                       ; $9AADB4  8D F0 00     MX
    LDA $00F2                       ; $9AADB7  AD F2 00     MX
    SBC #$0000                      ; $9AADBA  E9 00 00     MX
    STA $00F2                       ; $9AADBD  8D F2 00     MX
    BCS L_9AADD6                    ; $9AADC0  B0 14        MX
    LDA $00F0                       ; $9AADC2  AD F0 00     MX
    CLC                             ; $9AADC5  18           MX
    ADC $00EE                       ; $9AADC6  6D EE 00     MX
    STA $00F0                       ; $9AADC9  8D F0 00     MX
    LDA $00F2                       ; $9AADCC  AD F2 00     MX
    ADC #$0000                      ; $9AADCF  69 00 00     MX
    STA $00F2                       ; $9AADD2  8D F2 00     MX
    CLC                             ; $9AADD5  18           MX
L_9AADD6:
    ROL $00EA                       ; $9AADD6  2E EA 00     MX
    ROL $00EC                       ; $9AADD9  2E EC 00     MX
    ROL $00F0                       ; $9AADDC  2E F0 00     MX
    ROL $00F2                       ; $9AADDF  2E F2 00     MX
    ROL                             ; $9AADE2  2A           MX
    EOR #$0001                      ; $9AADE3  49 01 00     MX
    ROR                             ; $9AADE6  6A           MX
    LDA $00F0                       ; $9AADE7  AD F0 00     MX
    SBC $00EE                       ; $9AADEA  ED EE 00     MX
    STA $00F0                       ; $9AADED  8D F0 00     MX
    LDA $00F2                       ; $9AADF0  AD F2 00     MX
    SBC #$0000                      ; $9AADF3  E9 00 00     MX
    STA $00F2                       ; $9AADF6  8D F2 00     MX
    BCS L_9AAE0F                    ; $9AADF9  B0 14        MX
    LDA $00F0                       ; $9AADFB  AD F0 00     MX
    CLC                             ; $9AADFE  18           MX
    ADC $00EE                       ; $9AADFF  6D EE 00     MX
    STA $00F0                       ; $9AAE02  8D F0 00     MX
    LDA $00F2                       ; $9AAE05  AD F2 00     MX
    ADC #$0000                      ; $9AAE08  69 00 00     MX
    STA $00F2                       ; $9AAE0B  8D F2 00     MX
    CLC                             ; $9AAE0E  18           MX
L_9AAE0F:
    ROL $00EA                       ; $9AAE0F  2E EA 00     MX
    ROL $00EC                       ; $9AAE12  2E EC 00     MX
    ROL $00F0                       ; $9AAE15  2E F0 00     MX
    ROL $00F2                       ; $9AAE18  2E F2 00     MX
    ROL                             ; $9AAE1B  2A           MX
    EOR #$0001                      ; $9AAE1C  49 01 00     MX
    ROR                             ; $9AAE1F  6A           MX
    LDA $00F0                       ; $9AAE20  AD F0 00     MX
    SBC $00EE                       ; $9AAE23  ED EE 00     MX
    STA $00F0                       ; $9AAE26  8D F0 00     MX
    LDA $00F2                       ; $9AAE29  AD F2 00     MX
    SBC #$0000                      ; $9AAE2C  E9 00 00     MX
    STA $00F2                       ; $9AAE2F  8D F2 00     MX
    BCS L_9AAE48                    ; $9AAE32  B0 14        MX
    LDA $00F0                       ; $9AAE34  AD F0 00     MX
    CLC                             ; $9AAE37  18           MX
    ADC $00EE                       ; $9AAE38  6D EE 00     MX
    STA $00F0                       ; $9AAE3B  8D F0 00     MX
    LDA $00F2                       ; $9AAE3E  AD F2 00     MX
    ADC #$0000                      ; $9AAE41  69 00 00     MX
    STA $00F2                       ; $9AAE44  8D F2 00     MX
    CLC                             ; $9AAE47  18           MX
L_9AAE48:
    ROL $00EA                       ; $9AAE48  2E EA 00     MX
    ROL $00EC                       ; $9AAE4B  2E EC 00     MX
    ROL $00F0                       ; $9AAE4E  2E F0 00     MX
    ROL $00F2                       ; $9AAE51  2E F2 00     MX
    ROL                             ; $9AAE54  2A           MX
    EOR #$0001                      ; $9AAE55  49 01 00     MX
    ROR                             ; $9AAE58  6A           MX
    LDA $00F0                       ; $9AAE59  AD F0 00     MX
    SBC $00EE                       ; $9AAE5C  ED EE 00     MX
    STA $00F0                       ; $9AAE5F  8D F0 00     MX
    LDA $00F2                       ; $9AAE62  AD F2 00     MX
    SBC #$0000                      ; $9AAE65  E9 00 00     MX
    STA $00F2                       ; $9AAE68  8D F2 00     MX
    BCS L_9AAE81                    ; $9AAE6B  B0 14        MX
    LDA $00F0                       ; $9AAE6D  AD F0 00     MX
    CLC                             ; $9AAE70  18           MX
    ADC $00EE                       ; $9AAE71  6D EE 00     MX
    STA $00F0                       ; $9AAE74  8D F0 00     MX
    LDA $00F2                       ; $9AAE77  AD F2 00     MX
    ADC #$0000                      ; $9AAE7A  69 00 00     MX
    STA $00F2                       ; $9AAE7D  8D F2 00     MX
    CLC                             ; $9AAE80  18           MX
L_9AAE81:
    ROL $00EA                       ; $9AAE81  2E EA 00     MX
    ROL $00EC                       ; $9AAE84  2E EC 00     MX
    ROL $00F0                       ; $9AAE87  2E F0 00     MX
    ROL $00F2                       ; $9AAE8A  2E F2 00     MX
    ROL                             ; $9AAE8D  2A           MX
    EOR #$0001                      ; $9AAE8E  49 01 00     MX
    ROR                             ; $9AAE91  6A           MX
    LDA $00F0                       ; $9AAE92  AD F0 00     MX
    SBC $00EE                       ; $9AAE95  ED EE 00     MX
    STA $00F0                       ; $9AAE98  8D F0 00     MX
    LDA $00F2                       ; $9AAE9B  AD F2 00     MX
    SBC #$0000                      ; $9AAE9E  E9 00 00     MX
    STA $00F2                       ; $9AAEA1  8D F2 00     MX
    BCS L_9AAEBA                    ; $9AAEA4  B0 14        MX
    LDA $00F0                       ; $9AAEA6  AD F0 00     MX
    CLC                             ; $9AAEA9  18           MX
    ADC $00EE                       ; $9AAEAA  6D EE 00     MX
    STA $00F0                       ; $9AAEAD  8D F0 00     MX
    LDA $00F2                       ; $9AAEB0  AD F2 00     MX
    ADC #$0000                      ; $9AAEB3  69 00 00     MX
    STA $00F2                       ; $9AAEB6  8D F2 00     MX
    CLC                             ; $9AAEB9  18           MX
L_9AAEBA:
    ROL $00EA                       ; $9AAEBA  2E EA 00     MX
    ROL $00EC                       ; $9AAEBD  2E EC 00     MX
    ROL $00F0                       ; $9AAEC0  2E F0 00     MX
    ROL $00F2                       ; $9AAEC3  2E F2 00     MX
    ROL                             ; $9AAEC6  2A           MX
    EOR #$0001                      ; $9AAEC7  49 01 00     MX
    ROR                             ; $9AAECA  6A           MX
    LDA $00F0                       ; $9AAECB  AD F0 00     MX
    SBC $00EE                       ; $9AAECE  ED EE 00     MX
    STA $00F0                       ; $9AAED1  8D F0 00     MX
    LDA $00F2                       ; $9AAED4  AD F2 00     MX
    SBC #$0000                      ; $9AAED7  E9 00 00     MX
    STA $00F2                       ; $9AAEDA  8D F2 00     MX
    BCS L_9AAEF3                    ; $9AAEDD  B0 14        MX
    LDA $00F0                       ; $9AAEDF  AD F0 00     MX
    CLC                             ; $9AAEE2  18           MX
    ADC $00EE                       ; $9AAEE3  6D EE 00     MX
    STA $00F0                       ; $9AAEE6  8D F0 00     MX
    LDA $00F2                       ; $9AAEE9  AD F2 00     MX
    ADC #$0000                      ; $9AAEEC  69 00 00     MX
    STA $00F2                       ; $9AAEEF  8D F2 00     MX
    CLC                             ; $9AAEF2  18           MX
L_9AAEF3:
    ROL $00EA                       ; $9AAEF3  2E EA 00     MX
    ROL $00EC                       ; $9AAEF6  2E EC 00     MX
    ROL $00F0                       ; $9AAEF9  2E F0 00     MX
    ROL $00F2                       ; $9AAEFC  2E F2 00     MX
    ROL                             ; $9AAEFF  2A           MX
    EOR #$0001                      ; $9AAF00  49 01 00     MX
    ROR                             ; $9AAF03  6A           MX
    LDA $00F0                       ; $9AAF04  AD F0 00     MX
    SBC $00EE                       ; $9AAF07  ED EE 00     MX
    STA $00F0                       ; $9AAF0A  8D F0 00     MX
    LDA $00F2                       ; $9AAF0D  AD F2 00     MX
    SBC #$0000                      ; $9AAF10  E9 00 00     MX
    STA $00F2                       ; $9AAF13  8D F2 00     MX
    BCS L_9AAF2C                    ; $9AAF16  B0 14        MX
    LDA $00F0                       ; $9AAF18  AD F0 00     MX
    CLC                             ; $9AAF1B  18           MX
    ADC $00EE                       ; $9AAF1C  6D EE 00     MX
    STA $00F0                       ; $9AAF1F  8D F0 00     MX
    LDA $00F2                       ; $9AAF22  AD F2 00     MX
    ADC #$0000                      ; $9AAF25  69 00 00     MX
    STA $00F2                       ; $9AAF28  8D F2 00     MX
    CLC                             ; $9AAF2B  18           MX
L_9AAF2C:
    ROL $00EA                       ; $9AAF2C  2E EA 00     MX
    ROL $00EC                       ; $9AAF2F  2E EC 00     MX
    ROL $00F0                       ; $9AAF32  2E F0 00     MX
    ROL $00F2                       ; $9AAF35  2E F2 00     MX
    ROL                             ; $9AAF38  2A           MX
    EOR #$0001                      ; $9AAF39  49 01 00     MX
    ROR                             ; $9AAF3C  6A           MX
    LDA $00F0                       ; $9AAF3D  AD F0 00     MX
    SBC $00EE                       ; $9AAF40  ED EE 00     MX
    STA $00F0                       ; $9AAF43  8D F0 00     MX
    LDA $00F2                       ; $9AAF46  AD F2 00     MX
    SBC #$0000                      ; $9AAF49  E9 00 00     MX
    STA $00F2                       ; $9AAF4C  8D F2 00     MX
    BCS L_9AAF65                    ; $9AAF4F  B0 14        MX
    LDA $00F0                       ; $9AAF51  AD F0 00     MX
    CLC                             ; $9AAF54  18           MX
    ADC $00EE                       ; $9AAF55  6D EE 00     MX
    STA $00F0                       ; $9AAF58  8D F0 00     MX
    LDA $00F2                       ; $9AAF5B  AD F2 00     MX
    ADC #$0000                      ; $9AAF5E  69 00 00     MX
    STA $00F2                       ; $9AAF61  8D F2 00     MX
    CLC                             ; $9AAF64  18           MX
L_9AAF65:
    ROL $00EA                       ; $9AAF65  2E EA 00     MX
    ROL $00EC                       ; $9AAF68  2E EC 00     MX
    ROL $00F0                       ; $9AAF6B  2E F0 00     MX
    ROL $00F2                       ; $9AAF6E  2E F2 00     MX
    ROL                             ; $9AAF71  2A           MX
    EOR #$0001                      ; $9AAF72  49 01 00     MX
    ROR                             ; $9AAF75  6A           MX
    LDA $00F0                       ; $9AAF76  AD F0 00     MX
    SBC $00EE                       ; $9AAF79  ED EE 00     MX
    STA $00F0                       ; $9AAF7C  8D F0 00     MX
    LDA $00F2                       ; $9AAF7F  AD F2 00     MX
    SBC #$0000                      ; $9AAF82  E9 00 00     MX
    STA $00F2                       ; $9AAF85  8D F2 00     MX
    BCS L_9AAF9E                    ; $9AAF88  B0 14        MX
    LDA $00F0                       ; $9AAF8A  AD F0 00     MX
    CLC                             ; $9AAF8D  18           MX
    ADC $00EE                       ; $9AAF8E  6D EE 00     MX
    STA $00F0                       ; $9AAF91  8D F0 00     MX
    LDA $00F2                       ; $9AAF94  AD F2 00     MX
    ADC #$0000                      ; $9AAF97  69 00 00     MX
    STA $00F2                       ; $9AAF9A  8D F2 00     MX
    CLC                             ; $9AAF9D  18           MX
L_9AAF9E:
    ROL $00EA                       ; $9AAF9E  2E EA 00     MX
    ROL $00EC                       ; $9AAFA1  2E EC 00     MX
    ROL $00F0                       ; $9AAFA4  2E F0 00     MX
    ROL $00F2                       ; $9AAFA7  2E F2 00     MX
    ROL                             ; $9AAFAA  2A           MX
    EOR #$0001                      ; $9AAFAB  49 01 00     MX
    ROR                             ; $9AAFAE  6A           MX
    LDA $00F0                       ; $9AAFAF  AD F0 00     MX
    SBC $00EE                       ; $9AAFB2  ED EE 00     MX
    STA $00F0                       ; $9AAFB5  8D F0 00     MX
    LDA $00F2                       ; $9AAFB8  AD F2 00     MX
    SBC #$0000                      ; $9AAFBB  E9 00 00     MX
    STA $00F2                       ; $9AAFBE  8D F2 00     MX
    BCS L_9AAFD7                    ; $9AAFC1  B0 14        MX
    LDA $00F0                       ; $9AAFC3  AD F0 00     MX
    CLC                             ; $9AAFC6  18           MX
    ADC $00EE                       ; $9AAFC7  6D EE 00     MX
    STA $00F0                       ; $9AAFCA  8D F0 00     MX
    LDA $00F2                       ; $9AAFCD  AD F2 00     MX
    ADC #$0000                      ; $9AAFD0  69 00 00     MX
    STA $00F2                       ; $9AAFD3  8D F2 00     MX
    CLC                             ; $9AAFD6  18           MX
L_9AAFD7:
    ROL $00EA                       ; $9AAFD7  2E EA 00     MX
    ROL $00EC                       ; $9AAFDA  2E EC 00     MX
    ROL $00F0                       ; $9AAFDD  2E F0 00     MX
    ROL $00F2                       ; $9AAFE0  2E F2 00     MX
    ROL                             ; $9AAFE3  2A           MX
    EOR #$0001                      ; $9AAFE4  49 01 00     MX
    ROR                             ; $9AAFE7  6A           MX
    LDA $00F0                       ; $9AAFE8  AD F0 00     MX
    SBC $00EE                       ; $9AAFEB  ED EE 00     MX
    STA $00F0                       ; $9AAFEE  8D F0 00     MX
    LDA $00F2                       ; $9AAFF1  AD F2 00     MX
    SBC #$0000                      ; $9AAFF4  E9 00 00     MX
    STA $00F2                       ; $9AAFF7  8D F2 00     MX
    BCS L_9AB010                    ; $9AAFFA  B0 14        MX
    LDA $00F0                       ; $9AAFFC  AD F0 00     MX
    CLC                             ; $9AAFFF  18           MX
    ADC $00EE                       ; $9AB000  6D EE 00     MX
    STA $00F0                       ; $9AB003  8D F0 00     MX
    LDA $00F2                       ; $9AB006  AD F2 00     MX
    ADC #$0000                      ; $9AB009  69 00 00     MX
    STA $00F2                       ; $9AB00C  8D F2 00     MX
    CLC                             ; $9AB00F  18           MX
L_9AB010:
    ROL $00EA                       ; $9AB010  2E EA 00     MX
    ROL $00EC                       ; $9AB013  2E EC 00     MX
    ROL $00F0                       ; $9AB016  2E F0 00     MX
    ROL $00F2                       ; $9AB019  2E F2 00     MX
    ROL                             ; $9AB01C  2A           MX
    EOR #$0001                      ; $9AB01D  49 01 00     MX
    ROR                             ; $9AB020  6A           MX
    LDA $00F0                       ; $9AB021  AD F0 00     MX
    SBC $00EE                       ; $9AB024  ED EE 00     MX
    STA $00F0                       ; $9AB027  8D F0 00     MX
    LDA $00F2                       ; $9AB02A  AD F2 00     MX
    SBC #$0000                      ; $9AB02D  E9 00 00     MX
    STA $00F2                       ; $9AB030  8D F2 00     MX
    BCS L_9AB049                    ; $9AB033  B0 14        MX
    LDA $00F0                       ; $9AB035  AD F0 00     MX
    CLC                             ; $9AB038  18           MX
    ADC $00EE                       ; $9AB039  6D EE 00     MX
    STA $00F0                       ; $9AB03C  8D F0 00     MX
    LDA $00F2                       ; $9AB03F  AD F2 00     MX
    ADC #$0000                      ; $9AB042  69 00 00     MX
    STA $00F2                       ; $9AB045  8D F2 00     MX
    CLC                             ; $9AB048  18           MX
L_9AB049:
    ROL $00EA                       ; $9AB049  2E EA 00     MX
    ROL $00EC                       ; $9AB04C  2E EC 00     MX
    ROL $00F0                       ; $9AB04F  2E F0 00     MX
    ROL $00F2                       ; $9AB052  2E F2 00     MX
    ROL                             ; $9AB055  2A           MX
    EOR #$0001                      ; $9AB056  49 01 00     MX
    ROR                             ; $9AB059  6A           MX
    LDA $00F0                       ; $9AB05A  AD F0 00     MX
    SBC $00EE                       ; $9AB05D  ED EE 00     MX
    STA $00F0                       ; $9AB060  8D F0 00     MX
    LDA $00F2                       ; $9AB063  AD F2 00     MX
    SBC #$0000                      ; $9AB066  E9 00 00     MX
    STA $00F2                       ; $9AB069  8D F2 00     MX
    BCS L_9AB082                    ; $9AB06C  B0 14        MX
    LDA $00F0                       ; $9AB06E  AD F0 00     MX
    CLC                             ; $9AB071  18           MX
    ADC $00EE                       ; $9AB072  6D EE 00     MX
    STA $00F0                       ; $9AB075  8D F0 00     MX
    LDA $00F2                       ; $9AB078  AD F2 00     MX
    ADC #$0000                      ; $9AB07B  69 00 00     MX
    STA $00F2                       ; $9AB07E  8D F2 00     MX
    CLC                             ; $9AB081  18           MX
L_9AB082:
    ROL $00EA                       ; $9AB082  2E EA 00     MX
    ROL $00EC                       ; $9AB085  2E EC 00     MX
    ROL $00F0                       ; $9AB088  2E F0 00     MX
    ROL $00F2                       ; $9AB08B  2E F2 00     MX
    ROL                             ; $9AB08E  2A           MX
    EOR #$0001                      ; $9AB08F  49 01 00     MX
    ROR                             ; $9AB092  6A           MX
    LDA $00F0                       ; $9AB093  AD F0 00     MX
    SBC $00EE                       ; $9AB096  ED EE 00     MX
    STA $00F0                       ; $9AB099  8D F0 00     MX
    LDA $00F2                       ; $9AB09C  AD F2 00     MX
    SBC #$0000                      ; $9AB09F  E9 00 00     MX
    STA $00F2                       ; $9AB0A2  8D F2 00     MX
    BCS L_9AB0BB                    ; $9AB0A5  B0 14        MX
    LDA $00F0                       ; $9AB0A7  AD F0 00     MX
    CLC                             ; $9AB0AA  18           MX
    ADC $00EE                       ; $9AB0AB  6D EE 00     MX
    STA $00F0                       ; $9AB0AE  8D F0 00     MX
    LDA $00F2                       ; $9AB0B1  AD F2 00     MX
    ADC #$0000                      ; $9AB0B4  69 00 00     MX
    STA $00F2                       ; $9AB0B7  8D F2 00     MX
    CLC                             ; $9AB0BA  18           MX
L_9AB0BB:
    ROL $00EA                       ; $9AB0BB  2E EA 00     MX
    ROL $00EC                       ; $9AB0BE  2E EC 00     MX
    ROL $00F0                       ; $9AB0C1  2E F0 00     MX
    ROL $00F2                       ; $9AB0C4  2E F2 00     MX
    ROL                             ; $9AB0C7  2A           MX
    EOR #$0001                      ; $9AB0C8  49 01 00     MX
    ROR                             ; $9AB0CB  6A           MX
    LDA $00F0                       ; $9AB0CC  AD F0 00     MX
    SBC $00EE                       ; $9AB0CF  ED EE 00     MX
    STA $00F0                       ; $9AB0D2  8D F0 00     MX
    LDA $00F2                       ; $9AB0D5  AD F2 00     MX
    SBC #$0000                      ; $9AB0D8  E9 00 00     MX
    STA $00F2                       ; $9AB0DB  8D F2 00     MX
    BCS L_9AB0F4                    ; $9AB0DE  B0 14        MX
    LDA $00F0                       ; $9AB0E0  AD F0 00     MX
    CLC                             ; $9AB0E3  18           MX
    ADC $00EE                       ; $9AB0E4  6D EE 00     MX
    STA $00F0                       ; $9AB0E7  8D F0 00     MX
    LDA $00F2                       ; $9AB0EA  AD F2 00     MX
    ADC #$0000                      ; $9AB0ED  69 00 00     MX
    STA $00F2                       ; $9AB0F0  8D F2 00     MX
    CLC                             ; $9AB0F3  18           MX
L_9AB0F4:
    ROL $00EA                       ; $9AB0F4  2E EA 00     MX
    ROL $00EC                       ; $9AB0F7  2E EC 00     MX
    ROL $00F0                       ; $9AB0FA  2E F0 00     MX
    ROL $00F2                       ; $9AB0FD  2E F2 00     MX
    ROL                             ; $9AB100  2A           MX
    EOR #$0001                      ; $9AB101  49 01 00     MX
    ROR                             ; $9AB104  6A           MX
    LDA $00F0                       ; $9AB105  AD F0 00     MX
    SBC $00EE                       ; $9AB108  ED EE 00     MX
    STA $00F0                       ; $9AB10B  8D F0 00     MX
    LDA $00F2                       ; $9AB10E  AD F2 00     MX
    SBC #$0000                      ; $9AB111  E9 00 00     MX
    STA $00F2                       ; $9AB114  8D F2 00     MX
    BCS L_9AB12D                    ; $9AB117  B0 14        MX
    LDA $00F0                       ; $9AB119  AD F0 00     MX
    CLC                             ; $9AB11C  18           MX
    ADC $00EE                       ; $9AB11D  6D EE 00     MX
    STA $00F0                       ; $9AB120  8D F0 00     MX
    LDA $00F2                       ; $9AB123  AD F2 00     MX
    ADC #$0000                      ; $9AB126  69 00 00     MX
    STA $00F2                       ; $9AB129  8D F2 00     MX
    CLC                             ; $9AB12C  18           MX
L_9AB12D:
    ROL $00EA                       ; $9AB12D  2E EA 00     MX
    ROL $00EC                       ; $9AB130  2E EC 00     MX
    ROL $00F0                       ; $9AB133  2E F0 00     MX
    ROL $00F2                       ; $9AB136  2E F2 00     MX
    ROL                             ; $9AB139  2A           MX
    EOR #$0001                      ; $9AB13A  49 01 00     MX
    ROR                             ; $9AB13D  6A           MX
    LDA $00F0                       ; $9AB13E  AD F0 00     MX
    SBC $00EE                       ; $9AB141  ED EE 00     MX
    STA $00F0                       ; $9AB144  8D F0 00     MX
    LDA $00F2                       ; $9AB147  AD F2 00     MX
    SBC #$0000                      ; $9AB14A  E9 00 00     MX
    STA $00F2                       ; $9AB14D  8D F2 00     MX
    BCS L_9AB166                    ; $9AB150  B0 14        MX
    LDA $00F0                       ; $9AB152  AD F0 00     MX
    CLC                             ; $9AB155  18           MX
    ADC $00EE                       ; $9AB156  6D EE 00     MX
    STA $00F0                       ; $9AB159  8D F0 00     MX
    LDA $00F2                       ; $9AB15C  AD F2 00     MX
    ADC #$0000                      ; $9AB15F  69 00 00     MX
    STA $00F2                       ; $9AB162  8D F2 00     MX
    CLC                             ; $9AB165  18           MX
L_9AB166:
    ROL $00EA                       ; $9AB166  2E EA 00     MX
    ROL $00EC                       ; $9AB169  2E EC 00     MX
    ROL $00F0                       ; $9AB16C  2E F0 00     MX
    ROL $00F2                       ; $9AB16F  2E F2 00     MX
    ROL                             ; $9AB172  2A           MX
    EOR #$0001                      ; $9AB173  49 01 00     MX
    ROR                             ; $9AB176  6A           MX
    LDA $00F0                       ; $9AB177  AD F0 00     MX
    SBC $00EE                       ; $9AB17A  ED EE 00     MX
    STA $00F0                       ; $9AB17D  8D F0 00     MX
    LDA $00F2                       ; $9AB180  AD F2 00     MX
    SBC #$0000                      ; $9AB183  E9 00 00     MX
    STA $00F2                       ; $9AB186  8D F2 00     MX
    BCS L_9AB19F                    ; $9AB189  B0 14        MX
    LDA $00F0                       ; $9AB18B  AD F0 00     MX
    CLC                             ; $9AB18E  18           MX
    ADC $00EE                       ; $9AB18F  6D EE 00     MX
    STA $00F0                       ; $9AB192  8D F0 00     MX
    LDA $00F2                       ; $9AB195  AD F2 00     MX
    ADC #$0000                      ; $9AB198  69 00 00     MX
    STA $00F2                       ; $9AB19B  8D F2 00     MX
    CLC                             ; $9AB19E  18           MX
L_9AB19F:
    ROL $00EA                       ; $9AB19F  2E EA 00     MX
    ROL $00EC                       ; $9AB1A2  2E EC 00     MX
    ROL $00F0                       ; $9AB1A5  2E F0 00     MX
    ROL $00F2                       ; $9AB1A8  2E F2 00     MX
    ROL                             ; $9AB1AB  2A           MX
    EOR #$0001                      ; $9AB1AC  49 01 00     MX
    ROR                             ; $9AB1AF  6A           MX
    LDA $00F0                       ; $9AB1B0  AD F0 00     MX
    SBC $00EE                       ; $9AB1B3  ED EE 00     MX
    STA $00F0                       ; $9AB1B6  8D F0 00     MX
    LDA $00F2                       ; $9AB1B9  AD F2 00     MX
    SBC #$0000                      ; $9AB1BC  E9 00 00     MX
    STA $00F2                       ; $9AB1BF  8D F2 00     MX
    BCS L_9AB1D8                    ; $9AB1C2  B0 14        MX
    LDA $00F0                       ; $9AB1C4  AD F0 00     MX
    CLC                             ; $9AB1C7  18           MX
    ADC $00EE                       ; $9AB1C8  6D EE 00     MX
    STA $00F0                       ; $9AB1CB  8D F0 00     MX
    LDA $00F2                       ; $9AB1CE  AD F2 00     MX
    ADC #$0000                      ; $9AB1D1  69 00 00     MX
    STA $00F2                       ; $9AB1D4  8D F2 00     MX
    CLC                             ; $9AB1D7  18           MX
L_9AB1D8:
    ROL $00EA                       ; $9AB1D8  2E EA 00     MX
    ROL $00EC                       ; $9AB1DB  2E EC 00     MX
    ROL $00F0                       ; $9AB1DE  2E F0 00     MX
    ROL $00F2                       ; $9AB1E1  2E F2 00     MX
    ROL                             ; $9AB1E4  2A           MX
    EOR #$0001                      ; $9AB1E5  49 01 00     MX
    ROR                             ; $9AB1E8  6A           MX
    LDA $00F0                       ; $9AB1E9  AD F0 00     MX
    SBC $00EE                       ; $9AB1EC  ED EE 00     MX
    STA $00F0                       ; $9AB1EF  8D F0 00     MX
    LDA $00F2                       ; $9AB1F2  AD F2 00     MX
    SBC #$0000                      ; $9AB1F5  E9 00 00     MX
    STA $00F2                       ; $9AB1F8  8D F2 00     MX
    BCS L_9AB211                    ; $9AB1FB  B0 14        MX
    LDA $00F0                       ; $9AB1FD  AD F0 00     MX
    CLC                             ; $9AB200  18           MX
    ADC $00EE                       ; $9AB201  6D EE 00     MX
    STA $00F0                       ; $9AB204  8D F0 00     MX
    LDA $00F2                       ; $9AB207  AD F2 00     MX
    ADC #$0000                      ; $9AB20A  69 00 00     MX
    STA $00F2                       ; $9AB20D  8D F2 00     MX
    CLC                             ; $9AB210  18           MX
L_9AB211:
    ROL $00EA                       ; $9AB211  2E EA 00     MX
    ROL $00EC                       ; $9AB214  2E EC 00     MX
    ROL $00F0                       ; $9AB217  2E F0 00     MX
    ROL $00F2                       ; $9AB21A  2E F2 00     MX
    ROL                             ; $9AB21D  2A           MX
    EOR #$0001                      ; $9AB21E  49 01 00     MX
    ROR                             ; $9AB221  6A           MX
    LDA $00F0                       ; $9AB222  AD F0 00     MX
    SBC $00EE                       ; $9AB225  ED EE 00     MX
    STA $00F0                       ; $9AB228  8D F0 00     MX
    LDA $00F2                       ; $9AB22B  AD F2 00     MX
    SBC #$0000                      ; $9AB22E  E9 00 00     MX
    STA $00F2                       ; $9AB231  8D F2 00     MX
    BCS L_9AB24A                    ; $9AB234  B0 14        MX
    LDA $00F0                       ; $9AB236  AD F0 00     MX
    CLC                             ; $9AB239  18           MX
    ADC $00EE                       ; $9AB23A  6D EE 00     MX
    STA $00F0                       ; $9AB23D  8D F0 00     MX
    LDA $00F2                       ; $9AB240  AD F2 00     MX
    ADC #$0000                      ; $9AB243  69 00 00     MX
    STA $00F2                       ; $9AB246  8D F2 00     MX
    CLC                             ; $9AB249  18           MX
L_9AB24A:
    ROL $00EA                       ; $9AB24A  2E EA 00     MX
    ROL $00EC                       ; $9AB24D  2E EC 00     MX
    ROL $00F0                       ; $9AB250  2E F0 00     MX
    ROL $00F2                       ; $9AB253  2E F2 00     MX
    ROL                             ; $9AB256  2A           MX
    EOR #$0001                      ; $9AB257  49 01 00     MX
    ROR                             ; $9AB25A  6A           MX
    LDA $00F0                       ; $9AB25B  AD F0 00     MX
    SBC $00EE                       ; $9AB25E  ED EE 00     MX
    STA $00F0                       ; $9AB261  8D F0 00     MX
    LDA $00F2                       ; $9AB264  AD F2 00     MX
    SBC #$0000                      ; $9AB267  E9 00 00     MX
    STA $00F2                       ; $9AB26A  8D F2 00     MX
    BCS L_9AB283                    ; $9AB26D  B0 14        MX
    LDA $00F0                       ; $9AB26F  AD F0 00     MX
    CLC                             ; $9AB272  18           MX
    ADC $00EE                       ; $9AB273  6D EE 00     MX
    STA $00F0                       ; $9AB276  8D F0 00     MX
    LDA $00F2                       ; $9AB279  AD F2 00     MX
    ADC #$0000                      ; $9AB27C  69 00 00     MX
    STA $00F2                       ; $9AB27F  8D F2 00     MX
    CLC                             ; $9AB282  18           MX
L_9AB283:
    ROL $00EA                       ; $9AB283  2E EA 00     MX
    ROL $00EC                       ; $9AB286  2E EC 00     MX
    ROL $00F0                       ; $9AB289  2E F0 00     MX
    ROL $00F2                       ; $9AB28C  2E F2 00     MX
    ROL                             ; $9AB28F  2A           MX
    EOR #$0001                      ; $9AB290  49 01 00     MX
    ROR                             ; $9AB293  6A           MX
    LDA $00F0                       ; $9AB294  AD F0 00     MX
    SBC $00EE                       ; $9AB297  ED EE 00     MX
    STA $00F0                       ; $9AB29A  8D F0 00     MX
    LDA $00F2                       ; $9AB29D  AD F2 00     MX
    SBC #$0000                      ; $9AB2A0  E9 00 00     MX
    STA $00F2                       ; $9AB2A3  8D F2 00     MX
    BCS L_9AB2BC                    ; $9AB2A6  B0 14        MX
    LDA $00F0                       ; $9AB2A8  AD F0 00     MX
    CLC                             ; $9AB2AB  18           MX
    ADC $00EE                       ; $9AB2AC  6D EE 00     MX
    STA $00F0                       ; $9AB2AF  8D F0 00     MX
    LDA $00F2                       ; $9AB2B2  AD F2 00     MX
    ADC #$0000                      ; $9AB2B5  69 00 00     MX
    STA $00F2                       ; $9AB2B8  8D F2 00     MX
    CLC                             ; $9AB2BB  18           MX
L_9AB2BC:
    ROL $00EA                       ; $9AB2BC  2E EA 00     MX
    ROL $00EC                       ; $9AB2BF  2E EC 00     MX
    ROL $00F0                       ; $9AB2C2  2E F0 00     MX
    ROL $00F2                       ; $9AB2C5  2E F2 00     MX
    ROL                             ; $9AB2C8  2A           MX
    EOR #$0001                      ; $9AB2C9  49 01 00     MX
    ROR                             ; $9AB2CC  6A           MX
    LDA $00F0                       ; $9AB2CD  AD F0 00     MX
    SBC $00EE                       ; $9AB2D0  ED EE 00     MX
    STA $00F0                       ; $9AB2D3  8D F0 00     MX
    LDA $00F2                       ; $9AB2D6  AD F2 00     MX
    SBC #$0000                      ; $9AB2D9  E9 00 00     MX
    STA $00F2                       ; $9AB2DC  8D F2 00     MX
    BCS L_9AB2F5                    ; $9AB2DF  B0 14        MX
    LDA $00F0                       ; $9AB2E1  AD F0 00     MX
    CLC                             ; $9AB2E4  18           MX
    ADC $00EE                       ; $9AB2E5  6D EE 00     MX
    STA $00F0                       ; $9AB2E8  8D F0 00     MX
    LDA $00F2                       ; $9AB2EB  AD F2 00     MX
    ADC #$0000                      ; $9AB2EE  69 00 00     MX
    STA $00F2                       ; $9AB2F1  8D F2 00     MX
    CLC                             ; $9AB2F4  18           MX
L_9AB2F5:
    ROL $00EA                       ; $9AB2F5  2E EA 00     MX
    ROL $00EC                       ; $9AB2F8  2E EC 00     MX
    ROL $00F0                       ; $9AB2FB  2E F0 00     MX
    ROL $00F2                       ; $9AB2FE  2E F2 00     MX
    ROL                             ; $9AB301  2A           MX
    EOR #$0001                      ; $9AB302  49 01 00     MX
    ROR                             ; $9AB305  6A           MX
    LDA $00F0                       ; $9AB306  AD F0 00     MX
    SBC $00EE                       ; $9AB309  ED EE 00     MX
    STA $00F0                       ; $9AB30C  8D F0 00     MX
    LDA $00F2                       ; $9AB30F  AD F2 00     MX
    SBC #$0000                      ; $9AB312  E9 00 00     MX
    STA $00F2                       ; $9AB315  8D F2 00     MX
    BCS L_9AB32E                    ; $9AB318  B0 14        MX
    LDA $00F0                       ; $9AB31A  AD F0 00     MX
    CLC                             ; $9AB31D  18           MX
    ADC $00EE                       ; $9AB31E  6D EE 00     MX
    STA $00F0                       ; $9AB321  8D F0 00     MX
    LDA $00F2                       ; $9AB324  AD F2 00     MX
    ADC #$0000                      ; $9AB327  69 00 00     MX
    STA $00F2                       ; $9AB32A  8D F2 00     MX
    CLC                             ; $9AB32D  18           MX
L_9AB32E:
    ROL $00EA                       ; $9AB32E  2E EA 00     MX
    ROL $00EC                       ; $9AB331  2E EC 00     MX
    ROL $00F0                       ; $9AB334  2E F0 00     MX
    ROL $00F2                       ; $9AB337  2E F2 00     MX
    ROL                             ; $9AB33A  2A           MX
    EOR #$0001                      ; $9AB33B  49 01 00     MX
    ROR                             ; $9AB33E  6A           MX
    LDA $00F0                       ; $9AB33F  AD F0 00     MX
    SBC $00EE                       ; $9AB342  ED EE 00     MX
    STA $00F0                       ; $9AB345  8D F0 00     MX
    LDA $00F2                       ; $9AB348  AD F2 00     MX
    SBC #$0000                      ; $9AB34B  E9 00 00     MX
    STA $00F2                       ; $9AB34E  8D F2 00     MX
    BCS L_9AB367                    ; $9AB351  B0 14        MX
    LDA $00F0                       ; $9AB353  AD F0 00     MX
    CLC                             ; $9AB356  18           MX
    ADC $00EE                       ; $9AB357  6D EE 00     MX
    STA $00F0                       ; $9AB35A  8D F0 00     MX
    LDA $00F2                       ; $9AB35D  AD F2 00     MX
    ADC #$0000                      ; $9AB360  69 00 00     MX
    STA $00F2                       ; $9AB363  8D F2 00     MX
    CLC                             ; $9AB366  18           MX
L_9AB367:
    ROL $00EA                       ; $9AB367  2E EA 00     MX
    ROL $00EC                       ; $9AB36A  2E EC 00     MX
    ROL $00F0                       ; $9AB36D  2E F0 00     MX
    ROL $00F2                       ; $9AB370  2E F2 00     MX
    ROL                             ; $9AB373  2A           MX
    EOR #$0001                      ; $9AB374  49 01 00     MX
    ROR                             ; $9AB377  6A           MX
    LDA $00F0                       ; $9AB378  AD F0 00     MX
    SBC $00EE                       ; $9AB37B  ED EE 00     MX
    STA $00F0                       ; $9AB37E  8D F0 00     MX
    LDA $00F2                       ; $9AB381  AD F2 00     MX
    SBC #$0000                      ; $9AB384  E9 00 00     MX
    STA $00F2                       ; $9AB387  8D F2 00     MX
    BCS L_9AB3A0                    ; $9AB38A  B0 14        MX
    LDA $00F0                       ; $9AB38C  AD F0 00     MX
    CLC                             ; $9AB38F  18           MX
    ADC $00EE                       ; $9AB390  6D EE 00     MX
    STA $00F0                       ; $9AB393  8D F0 00     MX
    LDA $00F2                       ; $9AB396  AD F2 00     MX
    ADC #$0000                      ; $9AB399  69 00 00     MX
    STA $00F2                       ; $9AB39C  8D F2 00     MX
    CLC                             ; $9AB39F  18           MX
L_9AB3A0:
    ROL $00EA                       ; $9AB3A0  2E EA 00     MX
    ROL $00EC                       ; $9AB3A3  2E EC 00     MX
    ROL $00F0                       ; $9AB3A6  2E F0 00     MX
    ROL $00F2                       ; $9AB3A9  2E F2 00     MX
    ROL                             ; $9AB3AC  2A           MX
    EOR #$0001                      ; $9AB3AD  49 01 00     MX
    ROR                             ; $9AB3B0  6A           MX
    LDA $00F0                       ; $9AB3B1  AD F0 00     MX
    SBC $00EE                       ; $9AB3B4  ED EE 00     MX
    STA $00F0                       ; $9AB3B7  8D F0 00     MX
    LDA $00F2                       ; $9AB3BA  AD F2 00     MX
    SBC #$0000                      ; $9AB3BD  E9 00 00     MX
    STA $00F2                       ; $9AB3C0  8D F2 00     MX
    BCS L_9AB3D9                    ; $9AB3C3  B0 14        MX
    LDA $00F0                       ; $9AB3C5  AD F0 00     MX
    CLC                             ; $9AB3C8  18           MX
    ADC $00EE                       ; $9AB3C9  6D EE 00     MX
    STA $00F0                       ; $9AB3CC  8D F0 00     MX
    LDA $00F2                       ; $9AB3CF  AD F2 00     MX
    ADC #$0000                      ; $9AB3D2  69 00 00     MX
    STA $00F2                       ; $9AB3D5  8D F2 00     MX
    CLC                             ; $9AB3D8  18           MX
L_9AB3D9:
    ROL $00EA                       ; $9AB3D9  2E EA 00     MX
    ROL $00EC                       ; $9AB3DC  2E EC 00     MX
    ROL $00F0                       ; $9AB3DF  2E F0 00     MX
    ROL $00F2                       ; $9AB3E2  2E F2 00     MX
    ROL                             ; $9AB3E5  2A           MX
    EOR #$0001                      ; $9AB3E6  49 01 00     MX
    ROR                             ; $9AB3E9  6A           MX
    LDA $00F0                       ; $9AB3EA  AD F0 00     MX
    SBC $00EE                       ; $9AB3ED  ED EE 00     MX
    STA $00F0                       ; $9AB3F0  8D F0 00     MX
    LDA $00F2                       ; $9AB3F3  AD F2 00     MX
    SBC #$0000                      ; $9AB3F6  E9 00 00     MX
    STA $00F2                       ; $9AB3F9  8D F2 00     MX
    BCS L_9AB412                    ; $9AB3FC  B0 14        MX
    LDA $00F0                       ; $9AB3FE  AD F0 00     MX
    CLC                             ; $9AB401  18           MX
    ADC $00EE                       ; $9AB402  6D EE 00     MX
    STA $00F0                       ; $9AB405  8D F0 00     MX
    LDA $00F2                       ; $9AB408  AD F2 00     MX
    ADC #$0000                      ; $9AB40B  69 00 00     MX
    STA $00F2                       ; $9AB40E  8D F2 00     MX
    CLC                             ; $9AB411  18           MX
L_9AB412:
    ROL $00EA                       ; $9AB412  2E EA 00     MX
    ROL $00EC                       ; $9AB415  2E EC 00     MX
    RTL                             ; $9AB418  6B           MX
L_9AB419:
    STZ $00EC                       ; $9AB419  9C EC 00     MX
    STZ $00F0                       ; $9AB41C  9C F0 00     MX
    STZ $00F2                       ; $9AB41F  9C F2 00     MX
    STZ $00F4                       ; $9AB422  9C F4 00     MX
    CLC                             ; $9AB425  18           MX
    ROR $00EA                       ; $9AB426  6E EA 00     MX
    BCC L_9AB43E                    ; $9AB429  90 13        MX
    LDA $00F2                       ; $9AB42B  AD F2 00     MX
    CLC                             ; $9AB42E  18           MX
    ADC $00EE                       ; $9AB42F  6D EE 00     MX
    STA $00F2                       ; $9AB432  8D F2 00     MX
    LDA $00F4                       ; $9AB435  AD F4 00     MX
    ADC $00F0                       ; $9AB438  6D F0 00     MX
    STA $00F4                       ; $9AB43B  8D F4 00     MX
L_9AB43E:
    ASL $00EE                       ; $9AB43E  0E EE 00     MX
    ROL $00F0                       ; $9AB441  2E F0 00     MX
    ROR $00EA                       ; $9AB444  6E EA 00     MX
    BCC L_9AB45C                    ; $9AB447  90 13        MX
    LDA $00F2                       ; $9AB449  AD F2 00     MX
    CLC                             ; $9AB44C  18           MX
    ADC $00EE                       ; $9AB44D  6D EE 00     MX
    STA $00F2                       ; $9AB450  8D F2 00     MX
    LDA $00F4                       ; $9AB453  AD F4 00     MX
    ADC $00F0                       ; $9AB456  6D F0 00     MX
    STA $00F4                       ; $9AB459  8D F4 00     MX
L_9AB45C:
    ASL $00EE                       ; $9AB45C  0E EE 00     MX
    ROL $00F0                       ; $9AB45F  2E F0 00     MX
    ROR $00EA                       ; $9AB462  6E EA 00     MX
    BCC L_9AB47A                    ; $9AB465  90 13        MX
    LDA $00F2                       ; $9AB467  AD F2 00     MX
    CLC                             ; $9AB46A  18           MX
    ADC $00EE                       ; $9AB46B  6D EE 00     MX
    STA $00F2                       ; $9AB46E  8D F2 00     MX
    LDA $00F4                       ; $9AB471  AD F4 00     MX
    ADC $00F0                       ; $9AB474  6D F0 00     MX
    STA $00F4                       ; $9AB477  8D F4 00     MX
L_9AB47A:
    ASL $00EE                       ; $9AB47A  0E EE 00     MX
    ROL $00F0                       ; $9AB47D  2E F0 00     MX
    ROR $00EA                       ; $9AB480  6E EA 00     MX
    BCC L_9AB498                    ; $9AB483  90 13        MX
    LDA $00F2                       ; $9AB485  AD F2 00     MX
    CLC                             ; $9AB488  18           MX
    ADC $00EE                       ; $9AB489  6D EE 00     MX
    STA $00F2                       ; $9AB48C  8D F2 00     MX
    LDA $00F4                       ; $9AB48F  AD F4 00     MX
    ADC $00F0                       ; $9AB492  6D F0 00     MX
    STA $00F4                       ; $9AB495  8D F4 00     MX
L_9AB498:
    ASL $00EE                       ; $9AB498  0E EE 00     MX
    ROL $00F0                       ; $9AB49B  2E F0 00     MX
    ROR $00EA                       ; $9AB49E  6E EA 00     MX
    BCC L_9AB4B6                    ; $9AB4A1  90 13        MX
    LDA $00F2                       ; $9AB4A3  AD F2 00     MX
    CLC                             ; $9AB4A6  18           MX
    ADC $00EE                       ; $9AB4A7  6D EE 00     MX
    STA $00F2                       ; $9AB4AA  8D F2 00     MX
    LDA $00F4                       ; $9AB4AD  AD F4 00     MX
    ADC $00F0                       ; $9AB4B0  6D F0 00     MX
    STA $00F4                       ; $9AB4B3  8D F4 00     MX
L_9AB4B6:
    ASL $00EE                       ; $9AB4B6  0E EE 00     MX
    ROL $00F0                       ; $9AB4B9  2E F0 00     MX
    ROR $00EA                       ; $9AB4BC  6E EA 00     MX
    BCC L_9AB4D4                    ; $9AB4BF  90 13        MX
    LDA $00F2                       ; $9AB4C1  AD F2 00     MX
    CLC                             ; $9AB4C4  18           MX
    ADC $00EE                       ; $9AB4C5  6D EE 00     MX
    STA $00F2                       ; $9AB4C8  8D F2 00     MX
    LDA $00F4                       ; $9AB4CB  AD F4 00     MX
    ADC $00F0                       ; $9AB4CE  6D F0 00     MX
    STA $00F4                       ; $9AB4D1  8D F4 00     MX
L_9AB4D4:
    ASL $00EE                       ; $9AB4D4  0E EE 00     MX
    ROL $00F0                       ; $9AB4D7  2E F0 00     MX
    ROR $00EA                       ; $9AB4DA  6E EA 00     MX
    BCC L_9AB4F2                    ; $9AB4DD  90 13        MX
    LDA $00F2                       ; $9AB4DF  AD F2 00     MX
    CLC                             ; $9AB4E2  18           MX
    ADC $00EE                       ; $9AB4E3  6D EE 00     MX
    STA $00F2                       ; $9AB4E6  8D F2 00     MX
    LDA $00F4                       ; $9AB4E9  AD F4 00     MX
    ADC $00F0                       ; $9AB4EC  6D F0 00     MX
    STA $00F4                       ; $9AB4EF  8D F4 00     MX
L_9AB4F2:
    ASL $00EE                       ; $9AB4F2  0E EE 00     MX
    ROL $00F0                       ; $9AB4F5  2E F0 00     MX
    ROR $00EA                       ; $9AB4F8  6E EA 00     MX
    BCC L_9AB510                    ; $9AB4FB  90 13        MX
    LDA $00F2                       ; $9AB4FD  AD F2 00     MX
    CLC                             ; $9AB500  18           MX
    ADC $00EE                       ; $9AB501  6D EE 00     MX
    STA $00F2                       ; $9AB504  8D F2 00     MX
    LDA $00F4                       ; $9AB507  AD F4 00     MX
    ADC $00F0                       ; $9AB50A  6D F0 00     MX
    STA $00F4                       ; $9AB50D  8D F4 00     MX
L_9AB510:
    ASL $00EE                       ; $9AB510  0E EE 00     MX
    ROL $00F0                       ; $9AB513  2E F0 00     MX
    ROR $00EA                       ; $9AB516  6E EA 00     MX
    BCC L_9AB52E                    ; $9AB519  90 13        MX
    LDA $00F2                       ; $9AB51B  AD F2 00     MX
    CLC                             ; $9AB51E  18           MX
    ADC $00EE                       ; $9AB51F  6D EE 00     MX
    STA $00F2                       ; $9AB522  8D F2 00     MX
    LDA $00F4                       ; $9AB525  AD F4 00     MX
    ADC $00F0                       ; $9AB528  6D F0 00     MX
    STA $00F4                       ; $9AB52B  8D F4 00     MX
L_9AB52E:
    ASL $00EE                       ; $9AB52E  0E EE 00     MX
    ROL $00F0                       ; $9AB531  2E F0 00     MX
    ROR $00EA                       ; $9AB534  6E EA 00     MX
    BCC L_9AB54C                    ; $9AB537  90 13        MX
    LDA $00F2                       ; $9AB539  AD F2 00     MX
    CLC                             ; $9AB53C  18           MX
    ADC $00EE                       ; $9AB53D  6D EE 00     MX
    STA $00F2                       ; $9AB540  8D F2 00     MX
    LDA $00F4                       ; $9AB543  AD F4 00     MX
    ADC $00F0                       ; $9AB546  6D F0 00     MX
    STA $00F4                       ; $9AB549  8D F4 00     MX
L_9AB54C:
    ASL $00EE                       ; $9AB54C  0E EE 00     MX
    ROL $00F0                       ; $9AB54F  2E F0 00     MX
    ROR $00EA                       ; $9AB552  6E EA 00     MX
    BCC L_9AB56A                    ; $9AB555  90 13        MX
    LDA $00F2                       ; $9AB557  AD F2 00     MX
    CLC                             ; $9AB55A  18           MX
    ADC $00EE                       ; $9AB55B  6D EE 00     MX
    STA $00F2                       ; $9AB55E  8D F2 00     MX
    LDA $00F4                       ; $9AB561  AD F4 00     MX
    ADC $00F0                       ; $9AB564  6D F0 00     MX
    STA $00F4                       ; $9AB567  8D F4 00     MX
L_9AB56A:
    ASL $00EE                       ; $9AB56A  0E EE 00     MX
    ROL $00F0                       ; $9AB56D  2E F0 00     MX
    ROR $00EA                       ; $9AB570  6E EA 00     MX
    BCC L_9AB588                    ; $9AB573  90 13        MX
    LDA $00F2                       ; $9AB575  AD F2 00     MX
    CLC                             ; $9AB578  18           MX
    ADC $00EE                       ; $9AB579  6D EE 00     MX
    STA $00F2                       ; $9AB57C  8D F2 00     MX
    LDA $00F4                       ; $9AB57F  AD F4 00     MX
    ADC $00F0                       ; $9AB582  6D F0 00     MX
    STA $00F4                       ; $9AB585  8D F4 00     MX
L_9AB588:
    ASL $00EE                       ; $9AB588  0E EE 00     MX
    ROL $00F0                       ; $9AB58B  2E F0 00     MX
    ROR $00EA                       ; $9AB58E  6E EA 00     MX
    BCC L_9AB5A6                    ; $9AB591  90 13        MX
    LDA $00F2                       ; $9AB593  AD F2 00     MX
    CLC                             ; $9AB596  18           MX
    ADC $00EE                       ; $9AB597  6D EE 00     MX
    STA $00F2                       ; $9AB59A  8D F2 00     MX
    LDA $00F4                       ; $9AB59D  AD F4 00     MX
    ADC $00F0                       ; $9AB5A0  6D F0 00     MX
    STA $00F4                       ; $9AB5A3  8D F4 00     MX
L_9AB5A6:
    ASL $00EE                       ; $9AB5A6  0E EE 00     MX
    ROL $00F0                       ; $9AB5A9  2E F0 00     MX
    ROR $00EA                       ; $9AB5AC  6E EA 00     MX
    BCC L_9AB5C4                    ; $9AB5AF  90 13        MX
    LDA $00F2                       ; $9AB5B1  AD F2 00     MX
    CLC                             ; $9AB5B4  18           MX
    ADC $00EE                       ; $9AB5B5  6D EE 00     MX
    STA $00F2                       ; $9AB5B8  8D F2 00     MX
    LDA $00F4                       ; $9AB5BB  AD F4 00     MX
    ADC $00F0                       ; $9AB5BE  6D F0 00     MX
    STA $00F4                       ; $9AB5C1  8D F4 00     MX
L_9AB5C4:
    ASL $00EE                       ; $9AB5C4  0E EE 00     MX
    ROL $00F0                       ; $9AB5C7  2E F0 00     MX
    ROR $00EA                       ; $9AB5CA  6E EA 00     MX
    BCC L_9AB5E2                    ; $9AB5CD  90 13        MX
    LDA $00F2                       ; $9AB5CF  AD F2 00     MX
    CLC                             ; $9AB5D2  18           MX
    ADC $00EE                       ; $9AB5D3  6D EE 00     MX
    STA $00F2                       ; $9AB5D6  8D F2 00     MX
    LDA $00F4                       ; $9AB5D9  AD F4 00     MX
    ADC $00F0                       ; $9AB5DC  6D F0 00     MX
    STA $00F4                       ; $9AB5DF  8D F4 00     MX
L_9AB5E2:
    ASL $00EE                       ; $9AB5E2  0E EE 00     MX
    ROL $00F0                       ; $9AB5E5  2E F0 00     MX
    ROR $00EA                       ; $9AB5E8  6E EA 00     MX
    BCC L_9AB600                    ; $9AB5EB  90 13        MX
    LDA $00F2                       ; $9AB5ED  AD F2 00     MX
    CLC                             ; $9AB5F0  18           MX
    ADC $00EE                       ; $9AB5F1  6D EE 00     MX
    STA $00F2                       ; $9AB5F4  8D F2 00     MX
    LDA $00F4                       ; $9AB5F7  AD F4 00     MX
    ADC $00F0                       ; $9AB5FA  6D F0 00     MX
    STA $00F4                       ; $9AB5FD  8D F4 00     MX
L_9AB600:
    ASL $00EE                       ; $9AB600  0E EE 00     MX
    ROL $00F0                       ; $9AB603  2E F0 00     MX
    ROR $00EA                       ; $9AB606  6E EA 00     MX
    BCC L_9AB61E                    ; $9AB609  90 13        MX
    LDA $00F2                       ; $9AB60B  AD F2 00     MX
    CLC                             ; $9AB60E  18           MX
    ADC $00EE                       ; $9AB60F  6D EE 00     MX
    STA $00F2                       ; $9AB612  8D F2 00     MX
    LDA $00F4                       ; $9AB615  AD F4 00     MX
    ADC $00F0                       ; $9AB618  6D F0 00     MX
    STA $00F4                       ; $9AB61B  8D F4 00     MX
L_9AB61E:
    ASL $00EE                       ; $9AB61E  0E EE 00     MX
    ROL $00F0                       ; $9AB621  2E F0 00     MX
    ROR $00EA                       ; $9AB624  6E EA 00     MX
    BCC L_9AB63C                    ; $9AB627  90 13        MX
    LDA $00F2                       ; $9AB629  AD F2 00     MX
    CLC                             ; $9AB62C  18           MX
    ADC $00EE                       ; $9AB62D  6D EE 00     MX
    STA $00F2                       ; $9AB630  8D F2 00     MX
    LDA $00F4                       ; $9AB633  AD F4 00     MX
    ADC $00F0                       ; $9AB636  6D F0 00     MX
    STA $00F4                       ; $9AB639  8D F4 00     MX
L_9AB63C:
    ASL $00EE                       ; $9AB63C  0E EE 00     MX
    ROL $00F0                       ; $9AB63F  2E F0 00     MX
    ROR $00EA                       ; $9AB642  6E EA 00     MX
    BCC L_9AB65A                    ; $9AB645  90 13        MX
    LDA $00F2                       ; $9AB647  AD F2 00     MX
    CLC                             ; $9AB64A  18           MX
    ADC $00EE                       ; $9AB64B  6D EE 00     MX
    STA $00F2                       ; $9AB64E  8D F2 00     MX
    LDA $00F4                       ; $9AB651  AD F4 00     MX
    ADC $00F0                       ; $9AB654  6D F0 00     MX
    STA $00F4                       ; $9AB657  8D F4 00     MX
L_9AB65A:
    ASL $00EE                       ; $9AB65A  0E EE 00     MX
    ROL $00F0                       ; $9AB65D  2E F0 00     MX
    ROR $00EA                       ; $9AB660  6E EA 00     MX
    BCC L_9AB678                    ; $9AB663  90 13        MX
    LDA $00F2                       ; $9AB665  AD F2 00     MX
    CLC                             ; $9AB668  18           MX
    ADC $00EE                       ; $9AB669  6D EE 00     MX
    STA $00F2                       ; $9AB66C  8D F2 00     MX
    LDA $00F4                       ; $9AB66F  AD F4 00     MX
    ADC $00F0                       ; $9AB672  6D F0 00     MX
    STA $00F4                       ; $9AB675  8D F4 00     MX
L_9AB678:
    ASL $00EE                       ; $9AB678  0E EE 00     MX
    ROL $00F0                       ; $9AB67B  2E F0 00     MX
    ROR $00EA                       ; $9AB67E  6E EA 00     MX
    BCC L_9AB696                    ; $9AB681  90 13        MX
    LDA $00F2                       ; $9AB683  AD F2 00     MX
    CLC                             ; $9AB686  18           MX
    ADC $00EE                       ; $9AB687  6D EE 00     MX
    STA $00F2                       ; $9AB68A  8D F2 00     MX
    LDA $00F4                       ; $9AB68D  AD F4 00     MX
    ADC $00F0                       ; $9AB690  6D F0 00     MX
    STA $00F4                       ; $9AB693  8D F4 00     MX
L_9AB696:
    ASL $00EE                       ; $9AB696  0E EE 00     MX
    ROL $00F0                       ; $9AB699  2E F0 00     MX
    ROR $00EA                       ; $9AB69C  6E EA 00     MX
    BCC L_9AB6B4                    ; $9AB69F  90 13        MX
    LDA $00F2                       ; $9AB6A1  AD F2 00     MX
    CLC                             ; $9AB6A4  18           MX
    ADC $00EE                       ; $9AB6A5  6D EE 00     MX
    STA $00F2                       ; $9AB6A8  8D F2 00     MX
    LDA $00F4                       ; $9AB6AB  AD F4 00     MX
    ADC $00F0                       ; $9AB6AE  6D F0 00     MX
    STA $00F4                       ; $9AB6B1  8D F4 00     MX
L_9AB6B4:
    ASL $00EE                       ; $9AB6B4  0E EE 00     MX
    ROL $00F0                       ; $9AB6B7  2E F0 00     MX
    ROR $00EA                       ; $9AB6BA  6E EA 00     MX
    BCC L_9AB6D2                    ; $9AB6BD  90 13        MX
    LDA $00F2                       ; $9AB6BF  AD F2 00     MX
    CLC                             ; $9AB6C2  18           MX
    ADC $00EE                       ; $9AB6C3  6D EE 00     MX
    STA $00F2                       ; $9AB6C6  8D F2 00     MX
    LDA $00F4                       ; $9AB6C9  AD F4 00     MX
    ADC $00F0                       ; $9AB6CC  6D F0 00     MX
    STA $00F4                       ; $9AB6CF  8D F4 00     MX
L_9AB6D2:
    ASL $00EE                       ; $9AB6D2  0E EE 00     MX
    ROL $00F0                       ; $9AB6D5  2E F0 00     MX
    ROR $00EA                       ; $9AB6D8  6E EA 00     MX
    BCC L_9AB6F0                    ; $9AB6DB  90 13        MX
    LDA $00F2                       ; $9AB6DD  AD F2 00     MX
    CLC                             ; $9AB6E0  18           MX
    ADC $00EE                       ; $9AB6E1  6D EE 00     MX
    STA $00F2                       ; $9AB6E4  8D F2 00     MX
    LDA $00F4                       ; $9AB6E7  AD F4 00     MX
    ADC $00F0                       ; $9AB6EA  6D F0 00     MX
    STA $00F4                       ; $9AB6ED  8D F4 00     MX
L_9AB6F0:
    ASL $00EE                       ; $9AB6F0  0E EE 00     MX
    ROL $00F0                       ; $9AB6F3  2E F0 00     MX
    ROR $00EA                       ; $9AB6F6  6E EA 00     MX
    BCC L_9AB70E                    ; $9AB6F9  90 13        MX
    LDA $00F2                       ; $9AB6FB  AD F2 00     MX
    CLC                             ; $9AB6FE  18           MX
    ADC $00EE                       ; $9AB6FF  6D EE 00     MX
    STA $00F2                       ; $9AB702  8D F2 00     MX
    LDA $00F4                       ; $9AB705  AD F4 00     MX
    ADC $00F0                       ; $9AB708  6D F0 00     MX
    STA $00F4                       ; $9AB70B  8D F4 00     MX
L_9AB70E:
    ASL $00EE                       ; $9AB70E  0E EE 00     MX
    ROL $00F0                       ; $9AB711  2E F0 00     MX
    ROR $00EA                       ; $9AB714  6E EA 00     MX
    BCC L_9AB72C                    ; $9AB717  90 13        MX
    LDA $00F2                       ; $9AB719  AD F2 00     MX
    CLC                             ; $9AB71C  18           MX
    ADC $00EE                       ; $9AB71D  6D EE 00     MX
    STA $00F2                       ; $9AB720  8D F2 00     MX
    LDA $00F4                       ; $9AB723  AD F4 00     MX
    ADC $00F0                       ; $9AB726  6D F0 00     MX
    STA $00F4                       ; $9AB729  8D F4 00     MX
L_9AB72C:
    ASL $00EE                       ; $9AB72C  0E EE 00     MX
    ROL $00F0                       ; $9AB72F  2E F0 00     MX
    ROR $00EA                       ; $9AB732  6E EA 00     MX
    BCC L_9AB74A                    ; $9AB735  90 13        MX
    LDA $00F2                       ; $9AB737  AD F2 00     MX
    CLC                             ; $9AB73A  18           MX
    ADC $00EE                       ; $9AB73B  6D EE 00     MX
    STA $00F2                       ; $9AB73E  8D F2 00     MX
    LDA $00F4                       ; $9AB741  AD F4 00     MX
    ADC $00F0                       ; $9AB744  6D F0 00     MX
    STA $00F4                       ; $9AB747  8D F4 00     MX
L_9AB74A:
    ASL $00EE                       ; $9AB74A  0E EE 00     MX
    ROL $00F0                       ; $9AB74D  2E F0 00     MX
    ROR $00EA                       ; $9AB750  6E EA 00     MX
    BCC L_9AB768                    ; $9AB753  90 13        MX
    LDA $00F2                       ; $9AB755  AD F2 00     MX
    CLC                             ; $9AB758  18           MX
    ADC $00EE                       ; $9AB759  6D EE 00     MX
    STA $00F2                       ; $9AB75C  8D F2 00     MX
    LDA $00F4                       ; $9AB75F  AD F4 00     MX
    ADC $00F0                       ; $9AB762  6D F0 00     MX
    STA $00F4                       ; $9AB765  8D F4 00     MX
L_9AB768:
    ASL $00EE                       ; $9AB768  0E EE 00     MX
    ROL $00F0                       ; $9AB76B  2E F0 00     MX
    ROR $00EA                       ; $9AB76E  6E EA 00     MX
    BCC L_9AB786                    ; $9AB771  90 13        MX
    LDA $00F2                       ; $9AB773  AD F2 00     MX
    CLC                             ; $9AB776  18           MX
    ADC $00EE                       ; $9AB777  6D EE 00     MX
    STA $00F2                       ; $9AB77A  8D F2 00     MX
    LDA $00F4                       ; $9AB77D  AD F4 00     MX
    ADC $00F0                       ; $9AB780  6D F0 00     MX
    STA $00F4                       ; $9AB783  8D F4 00     MX
L_9AB786:
    ASL $00EE                       ; $9AB786  0E EE 00     MX
    ROL $00F0                       ; $9AB789  2E F0 00     MX
    ROR $00EA                       ; $9AB78C  6E EA 00     MX
    BCC L_9AB7A4                    ; $9AB78F  90 13        MX
    LDA $00F2                       ; $9AB791  AD F2 00     MX
    CLC                             ; $9AB794  18           MX
    ADC $00EE                       ; $9AB795  6D EE 00     MX
    STA $00F2                       ; $9AB798  8D F2 00     MX
    LDA $00F4                       ; $9AB79B  AD F4 00     MX
    ADC $00F0                       ; $9AB79E  6D F0 00     MX
    STA $00F4                       ; $9AB7A1  8D F4 00     MX
L_9AB7A4:
    ASL $00EE                       ; $9AB7A4  0E EE 00     MX
    ROL $00F0                       ; $9AB7A7  2E F0 00     MX
    ROR $00EA                       ; $9AB7AA  6E EA 00     MX
    BCC L_9AB7C2                    ; $9AB7AD  90 13        MX
    LDA $00F2                       ; $9AB7AF  AD F2 00     MX
    CLC                             ; $9AB7B2  18           MX
    ADC $00EE                       ; $9AB7B3  6D EE 00     MX
    STA $00F2                       ; $9AB7B6  8D F2 00     MX
    LDA $00F4                       ; $9AB7B9  AD F4 00     MX
    ADC $00F0                       ; $9AB7BC  6D F0 00     MX
    STA $00F4                       ; $9AB7BF  8D F4 00     MX
L_9AB7C2:
    ASL $00EE                       ; $9AB7C2  0E EE 00     MX
    ROL $00F0                       ; $9AB7C5  2E F0 00     MX
    ROR $00EA                       ; $9AB7C8  6E EA 00     MX
    BCC L_9AB7E0                    ; $9AB7CB  90 13        MX
    LDA $00F2                       ; $9AB7CD  AD F2 00     MX
    CLC                             ; $9AB7D0  18           MX
    ADC $00EE                       ; $9AB7D1  6D EE 00     MX
    STA $00F2                       ; $9AB7D4  8D F2 00     MX
    LDA $00F4                       ; $9AB7D7  AD F4 00     MX
    ADC $00F0                       ; $9AB7DA  6D F0 00     MX
    STA $00F4                       ; $9AB7DD  8D F4 00     MX
L_9AB7E0:
    ASL $00EE                       ; $9AB7E0  0E EE 00     MX
    ROL $00F0                       ; $9AB7E3  2E F0 00     MX
    RTS                             ; $9AB7E6  60           MX
L_9AB7E7:
    STZ $00EC                       ; $9AB7E7  9C EC 00     MX
    STZ $00F0                       ; $9AB7EA  9C F0 00     MX
    STZ $00F2                       ; $9AB7ED  9C F2 00     MX
    STZ $00F4                       ; $9AB7F0  9C F4 00     MX
    CLC                             ; $9AB7F3  18           MX
    ROR $00EA                       ; $9AB7F4  6E EA 00     MX
    BCC L_9AB80C                    ; $9AB7F7  90 13        MX
    LDA $00F2                       ; $9AB7F9  AD F2 00     MX
    CLC                             ; $9AB7FC  18           MX
    ADC $00EE                       ; $9AB7FD  6D EE 00     MX
    STA $00F2                       ; $9AB800  8D F2 00     MX
    LDA $00F4                       ; $9AB803  AD F4 00     MX
    ADC $00F0                       ; $9AB806  6D F0 00     MX
    STA $00F4                       ; $9AB809  8D F4 00     MX
L_9AB80C:
    ASL $00EE                       ; $9AB80C  0E EE 00     MX
    ROL $00F0                       ; $9AB80F  2E F0 00     MX
    ROR $00EA                       ; $9AB812  6E EA 00     MX
    BCC L_9AB82A                    ; $9AB815  90 13        MX
    LDA $00F2                       ; $9AB817  AD F2 00     MX
    CLC                             ; $9AB81A  18           MX
    ADC $00EE                       ; $9AB81B  6D EE 00     MX
    STA $00F2                       ; $9AB81E  8D F2 00     MX
    LDA $00F4                       ; $9AB821  AD F4 00     MX
    ADC $00F0                       ; $9AB824  6D F0 00     MX
    STA $00F4                       ; $9AB827  8D F4 00     MX
L_9AB82A:
    ASL $00EE                       ; $9AB82A  0E EE 00     MX
    ROL $00F0                       ; $9AB82D  2E F0 00     MX
    ROR $00EA                       ; $9AB830  6E EA 00     MX
    BCC L_9AB848                    ; $9AB833  90 13        MX
    LDA $00F2                       ; $9AB835  AD F2 00     MX
    CLC                             ; $9AB838  18           MX
    ADC $00EE                       ; $9AB839  6D EE 00     MX
    STA $00F2                       ; $9AB83C  8D F2 00     MX
    LDA $00F4                       ; $9AB83F  AD F4 00     MX
    ADC $00F0                       ; $9AB842  6D F0 00     MX
    STA $00F4                       ; $9AB845  8D F4 00     MX
L_9AB848:
    ASL $00EE                       ; $9AB848  0E EE 00     MX
    ROL $00F0                       ; $9AB84B  2E F0 00     MX
    ROR $00EA                       ; $9AB84E  6E EA 00     MX
    BCC L_9AB866                    ; $9AB851  90 13        MX
    LDA $00F2                       ; $9AB853  AD F2 00     MX
    CLC                             ; $9AB856  18           MX
    ADC $00EE                       ; $9AB857  6D EE 00     MX
    STA $00F2                       ; $9AB85A  8D F2 00     MX
    LDA $00F4                       ; $9AB85D  AD F4 00     MX
    ADC $00F0                       ; $9AB860  6D F0 00     MX
    STA $00F4                       ; $9AB863  8D F4 00     MX
L_9AB866:
    ASL $00EE                       ; $9AB866  0E EE 00     MX
    ROL $00F0                       ; $9AB869  2E F0 00     MX
    ROR $00EA                       ; $9AB86C  6E EA 00     MX
    BCC L_9AB884                    ; $9AB86F  90 13        MX
    LDA $00F2                       ; $9AB871  AD F2 00     MX
    CLC                             ; $9AB874  18           MX
    ADC $00EE                       ; $9AB875  6D EE 00     MX
    STA $00F2                       ; $9AB878  8D F2 00     MX
    LDA $00F4                       ; $9AB87B  AD F4 00     MX
    ADC $00F0                       ; $9AB87E  6D F0 00     MX
    STA $00F4                       ; $9AB881  8D F4 00     MX
L_9AB884:
    ASL $00EE                       ; $9AB884  0E EE 00     MX
    ROL $00F0                       ; $9AB887  2E F0 00     MX
    ROR $00EA                       ; $9AB88A  6E EA 00     MX
    BCC L_9AB8A2                    ; $9AB88D  90 13        MX
    LDA $00F2                       ; $9AB88F  AD F2 00     MX
    CLC                             ; $9AB892  18           MX
    ADC $00EE                       ; $9AB893  6D EE 00     MX
    STA $00F2                       ; $9AB896  8D F2 00     MX
    LDA $00F4                       ; $9AB899  AD F4 00     MX
    ADC $00F0                       ; $9AB89C  6D F0 00     MX
    STA $00F4                       ; $9AB89F  8D F4 00     MX
L_9AB8A2:
    ASL $00EE                       ; $9AB8A2  0E EE 00     MX
    ROL $00F0                       ; $9AB8A5  2E F0 00     MX
    ROR $00EA                       ; $9AB8A8  6E EA 00     MX
    BCC L_9AB8C0                    ; $9AB8AB  90 13        MX
    LDA $00F2                       ; $9AB8AD  AD F2 00     MX
    CLC                             ; $9AB8B0  18           MX
    ADC $00EE                       ; $9AB8B1  6D EE 00     MX
    STA $00F2                       ; $9AB8B4  8D F2 00     MX
    LDA $00F4                       ; $9AB8B7  AD F4 00     MX
    ADC $00F0                       ; $9AB8BA  6D F0 00     MX
    STA $00F4                       ; $9AB8BD  8D F4 00     MX
L_9AB8C0:
    ASL $00EE                       ; $9AB8C0  0E EE 00     MX
    ROL $00F0                       ; $9AB8C3  2E F0 00     MX
    ROR $00EA                       ; $9AB8C6  6E EA 00     MX
    BCC L_9AB8DE                    ; $9AB8C9  90 13        MX
    LDA $00F2                       ; $9AB8CB  AD F2 00     MX
    CLC                             ; $9AB8CE  18           MX
    ADC $00EE                       ; $9AB8CF  6D EE 00     MX
    STA $00F2                       ; $9AB8D2  8D F2 00     MX
    LDA $00F4                       ; $9AB8D5  AD F4 00     MX
    ADC $00F0                       ; $9AB8D8  6D F0 00     MX
    STA $00F4                       ; $9AB8DB  8D F4 00     MX
L_9AB8DE:
    ASL $00EE                       ; $9AB8DE  0E EE 00     MX
    ROL $00F0                       ; $9AB8E1  2E F0 00     MX
    ROR $00EA                       ; $9AB8E4  6E EA 00     MX
    BCC L_9AB8FC                    ; $9AB8E7  90 13        MX
    LDA $00F2                       ; $9AB8E9  AD F2 00     MX
    CLC                             ; $9AB8EC  18           MX
    ADC $00EE                       ; $9AB8ED  6D EE 00     MX
    STA $00F2                       ; $9AB8F0  8D F2 00     MX
    LDA $00F4                       ; $9AB8F3  AD F4 00     MX
    ADC $00F0                       ; $9AB8F6  6D F0 00     MX
    STA $00F4                       ; $9AB8F9  8D F4 00     MX
L_9AB8FC:
    ASL $00EE                       ; $9AB8FC  0E EE 00     MX
    ROL $00F0                       ; $9AB8FF  2E F0 00     MX
    ROR $00EA                       ; $9AB902  6E EA 00     MX
    BCC L_9AB91A                    ; $9AB905  90 13        MX
    LDA $00F2                       ; $9AB907  AD F2 00     MX
    CLC                             ; $9AB90A  18           MX
    ADC $00EE                       ; $9AB90B  6D EE 00     MX
    STA $00F2                       ; $9AB90E  8D F2 00     MX
    LDA $00F4                       ; $9AB911  AD F4 00     MX
    ADC $00F0                       ; $9AB914  6D F0 00     MX
    STA $00F4                       ; $9AB917  8D F4 00     MX
L_9AB91A:
    ASL $00EE                       ; $9AB91A  0E EE 00     MX
    ROL $00F0                       ; $9AB91D  2E F0 00     MX
    ROR $00EA                       ; $9AB920  6E EA 00     MX
    BCC L_9AB938                    ; $9AB923  90 13        MX
    LDA $00F2                       ; $9AB925  AD F2 00     MX
    CLC                             ; $9AB928  18           MX
    ADC $00EE                       ; $9AB929  6D EE 00     MX
    STA $00F2                       ; $9AB92C  8D F2 00     MX
    LDA $00F4                       ; $9AB92F  AD F4 00     MX
    ADC $00F0                       ; $9AB932  6D F0 00     MX
    STA $00F4                       ; $9AB935  8D F4 00     MX
L_9AB938:
    ASL $00EE                       ; $9AB938  0E EE 00     MX
    ROL $00F0                       ; $9AB93B  2E F0 00     MX
    ROR $00EA                       ; $9AB93E  6E EA 00     MX
    BCC L_9AB956                    ; $9AB941  90 13        MX
    LDA $00F2                       ; $9AB943  AD F2 00     MX
    CLC                             ; $9AB946  18           MX
    ADC $00EE                       ; $9AB947  6D EE 00     MX
    STA $00F2                       ; $9AB94A  8D F2 00     MX
    LDA $00F4                       ; $9AB94D  AD F4 00     MX
    ADC $00F0                       ; $9AB950  6D F0 00     MX
    STA $00F4                       ; $9AB953  8D F4 00     MX
L_9AB956:
    ASL $00EE                       ; $9AB956  0E EE 00     MX
    ROL $00F0                       ; $9AB959  2E F0 00     MX
    ROR $00EA                       ; $9AB95C  6E EA 00     MX
    BCC L_9AB974                    ; $9AB95F  90 13        MX
    LDA $00F2                       ; $9AB961  AD F2 00     MX
    CLC                             ; $9AB964  18           MX
    ADC $00EE                       ; $9AB965  6D EE 00     MX
    STA $00F2                       ; $9AB968  8D F2 00     MX
    LDA $00F4                       ; $9AB96B  AD F4 00     MX
    ADC $00F0                       ; $9AB96E  6D F0 00     MX
    STA $00F4                       ; $9AB971  8D F4 00     MX
L_9AB974:
    ASL $00EE                       ; $9AB974  0E EE 00     MX
    ROL $00F0                       ; $9AB977  2E F0 00     MX
    ROR $00EA                       ; $9AB97A  6E EA 00     MX
    BCC L_9AB992                    ; $9AB97D  90 13        MX
    LDA $00F2                       ; $9AB97F  AD F2 00     MX
    CLC                             ; $9AB982  18           MX
    ADC $00EE                       ; $9AB983  6D EE 00     MX
    STA $00F2                       ; $9AB986  8D F2 00     MX
    LDA $00F4                       ; $9AB989  AD F4 00     MX
    ADC $00F0                       ; $9AB98C  6D F0 00     MX
    STA $00F4                       ; $9AB98F  8D F4 00     MX
L_9AB992:
    ASL $00EE                       ; $9AB992  0E EE 00     MX
    ROL $00F0                       ; $9AB995  2E F0 00     MX
    ROR $00EA                       ; $9AB998  6E EA 00     MX
    BCC L_9AB9B0                    ; $9AB99B  90 13        MX
    LDA $00F2                       ; $9AB99D  AD F2 00     MX
    CLC                             ; $9AB9A0  18           MX
    ADC $00EE                       ; $9AB9A1  6D EE 00     MX
    STA $00F2                       ; $9AB9A4  8D F2 00     MX
    LDA $00F4                       ; $9AB9A7  AD F4 00     MX
    ADC $00F0                       ; $9AB9AA  6D F0 00     MX
    STA $00F4                       ; $9AB9AD  8D F4 00     MX
L_9AB9B0:
    ASL $00EE                       ; $9AB9B0  0E EE 00     MX
    ROL $00F0                       ; $9AB9B3  2E F0 00     MX
    ROR $00EA                       ; $9AB9B6  6E EA 00     MX
    BCC L_9AB9CE                    ; $9AB9B9  90 13        MX
    LDA $00F2                       ; $9AB9BB  AD F2 00     MX
    CLC                             ; $9AB9BE  18           MX
    ADC $00EE                       ; $9AB9BF  6D EE 00     MX
    STA $00F2                       ; $9AB9C2  8D F2 00     MX
    LDA $00F4                       ; $9AB9C5  AD F4 00     MX
    ADC $00F0                       ; $9AB9C8  6D F0 00     MX
    STA $00F4                       ; $9AB9CB  8D F4 00     MX
L_9AB9CE:
    ASL $00EE                       ; $9AB9CE  0E EE 00     MX
    ROL $00F0                       ; $9AB9D1  2E F0 00     MX
    ROR $00EA                       ; $9AB9D4  6E EA 00     MX
    BCC L_9AB9EC                    ; $9AB9D7  90 13        MX
    LDA $00F2                       ; $9AB9D9  AD F2 00     MX
    CLC                             ; $9AB9DC  18           MX
    ADC $00EE                       ; $9AB9DD  6D EE 00     MX
    STA $00F2                       ; $9AB9E0  8D F2 00     MX
    LDA $00F4                       ; $9AB9E3  AD F4 00     MX
    ADC $00F0                       ; $9AB9E6  6D F0 00     MX
    STA $00F4                       ; $9AB9E9  8D F4 00     MX
L_9AB9EC:
    ASL $00EE                       ; $9AB9EC  0E EE 00     MX
    ROL $00F0                       ; $9AB9EF  2E F0 00     MX
    ROR $00EA                       ; $9AB9F2  6E EA 00     MX
    BCC L_9ABA0A                    ; $9AB9F5  90 13        MX
    LDA $00F2                       ; $9AB9F7  AD F2 00     MX
    CLC                             ; $9AB9FA  18           MX
    ADC $00EE                       ; $9AB9FB  6D EE 00     MX
    STA $00F2                       ; $9AB9FE  8D F2 00     MX
    LDA $00F4                       ; $9ABA01  AD F4 00     MX
    ADC $00F0                       ; $9ABA04  6D F0 00     MX
    STA $00F4                       ; $9ABA07  8D F4 00     MX
L_9ABA0A:
    ASL $00EE                       ; $9ABA0A  0E EE 00     MX
    ROL $00F0                       ; $9ABA0D  2E F0 00     MX
    ROR $00EA                       ; $9ABA10  6E EA 00     MX
    BCC L_9ABA28                    ; $9ABA13  90 13        MX
    LDA $00F2                       ; $9ABA15  AD F2 00     MX
    CLC                             ; $9ABA18  18           MX
    ADC $00EE                       ; $9ABA19  6D EE 00     MX
    STA $00F2                       ; $9ABA1C  8D F2 00     MX
    LDA $00F4                       ; $9ABA1F  AD F4 00     MX
    ADC $00F0                       ; $9ABA22  6D F0 00     MX
    STA $00F4                       ; $9ABA25  8D F4 00     MX
L_9ABA28:
    ASL $00EE                       ; $9ABA28  0E EE 00     MX
    ROL $00F0                       ; $9ABA2B  2E F0 00     MX
    ROR $00EA                       ; $9ABA2E  6E EA 00     MX
    BCC L_9ABA46                    ; $9ABA31  90 13        MX
    LDA $00F2                       ; $9ABA33  AD F2 00     MX
    CLC                             ; $9ABA36  18           MX
    ADC $00EE                       ; $9ABA37  6D EE 00     MX
    STA $00F2                       ; $9ABA3A  8D F2 00     MX
    LDA $00F4                       ; $9ABA3D  AD F4 00     MX
    ADC $00F0                       ; $9ABA40  6D F0 00     MX
    STA $00F4                       ; $9ABA43  8D F4 00     MX
L_9ABA46:
    ASL $00EE                       ; $9ABA46  0E EE 00     MX
    ROL $00F0                       ; $9ABA49  2E F0 00     MX
    ROR $00EA                       ; $9ABA4C  6E EA 00     MX
    BCC L_9ABA64                    ; $9ABA4F  90 13        MX
    LDA $00F2                       ; $9ABA51  AD F2 00     MX
    CLC                             ; $9ABA54  18           MX
    ADC $00EE                       ; $9ABA55  6D EE 00     MX
    STA $00F2                       ; $9ABA58  8D F2 00     MX
    LDA $00F4                       ; $9ABA5B  AD F4 00     MX
    ADC $00F0                       ; $9ABA5E  6D F0 00     MX
    STA $00F4                       ; $9ABA61  8D F4 00     MX
L_9ABA64:
    ASL $00EE                       ; $9ABA64  0E EE 00     MX
    ROL $00F0                       ; $9ABA67  2E F0 00     MX
    ROR $00EA                       ; $9ABA6A  6E EA 00     MX
    BCC L_9ABA82                    ; $9ABA6D  90 13        MX
    LDA $00F2                       ; $9ABA6F  AD F2 00     MX
    CLC                             ; $9ABA72  18           MX
    ADC $00EE                       ; $9ABA73  6D EE 00     MX
    STA $00F2                       ; $9ABA76  8D F2 00     MX
    LDA $00F4                       ; $9ABA79  AD F4 00     MX
    ADC $00F0                       ; $9ABA7C  6D F0 00     MX
    STA $00F4                       ; $9ABA7F  8D F4 00     MX
L_9ABA82:
    ASL $00EE                       ; $9ABA82  0E EE 00     MX
    ROL $00F0                       ; $9ABA85  2E F0 00     MX
    ROR $00EA                       ; $9ABA88  6E EA 00     MX
    BCC L_9ABAA0                    ; $9ABA8B  90 13        MX
    LDA $00F2                       ; $9ABA8D  AD F2 00     MX
    CLC                             ; $9ABA90  18           MX
    ADC $00EE                       ; $9ABA91  6D EE 00     MX
    STA $00F2                       ; $9ABA94  8D F2 00     MX
    LDA $00F4                       ; $9ABA97  AD F4 00     MX
    ADC $00F0                       ; $9ABA9A  6D F0 00     MX
    STA $00F4                       ; $9ABA9D  8D F4 00     MX
L_9ABAA0:
    ASL $00EE                       ; $9ABAA0  0E EE 00     MX
    ROL $00F0                       ; $9ABAA3  2E F0 00     MX
    ROR $00EA                       ; $9ABAA6  6E EA 00     MX
    BCC L_9ABABE                    ; $9ABAA9  90 13        MX
    LDA $00F2                       ; $9ABAAB  AD F2 00     MX
    CLC                             ; $9ABAAE  18           MX
    ADC $00EE                       ; $9ABAAF  6D EE 00     MX
    STA $00F2                       ; $9ABAB2  8D F2 00     MX
    LDA $00F4                       ; $9ABAB5  AD F4 00     MX
    ADC $00F0                       ; $9ABAB8  6D F0 00     MX
    STA $00F4                       ; $9ABABB  8D F4 00     MX
L_9ABABE:
    ASL $00EE                       ; $9ABABE  0E EE 00     MX
    ROL $00F0                       ; $9ABAC1  2E F0 00     MX
    ROR $00EA                       ; $9ABAC4  6E EA 00     MX
    BCC L_9ABADC                    ; $9ABAC7  90 13        MX
    LDA $00F2                       ; $9ABAC9  AD F2 00     MX
    CLC                             ; $9ABACC  18           MX
    ADC $00EE                       ; $9ABACD  6D EE 00     MX
    STA $00F2                       ; $9ABAD0  8D F2 00     MX
    LDA $00F4                       ; $9ABAD3  AD F4 00     MX
    ADC $00F0                       ; $9ABAD6  6D F0 00     MX
    STA $00F4                       ; $9ABAD9  8D F4 00     MX
L_9ABADC:
    ASL $00EE                       ; $9ABADC  0E EE 00     MX
    ROL $00F0                       ; $9ABADF  2E F0 00     MX
    ROR $00EA                       ; $9ABAE2  6E EA 00     MX
    BCC L_9ABAFA                    ; $9ABAE5  90 13        MX
    LDA $00F2                       ; $9ABAE7  AD F2 00     MX
    CLC                             ; $9ABAEA  18           MX
    ADC $00EE                       ; $9ABAEB  6D EE 00     MX
    STA $00F2                       ; $9ABAEE  8D F2 00     MX
    LDA $00F4                       ; $9ABAF1  AD F4 00     MX
    ADC $00F0                       ; $9ABAF4  6D F0 00     MX
    STA $00F4                       ; $9ABAF7  8D F4 00     MX
L_9ABAFA:
    ASL $00EE                       ; $9ABAFA  0E EE 00     MX
    ROL $00F0                       ; $9ABAFD  2E F0 00     MX
    ROR $00EA                       ; $9ABB00  6E EA 00     MX
    BCC L_9ABB18                    ; $9ABB03  90 13        MX
    LDA $00F2                       ; $9ABB05  AD F2 00     MX
    CLC                             ; $9ABB08  18           MX
    ADC $00EE                       ; $9ABB09  6D EE 00     MX
    STA $00F2                       ; $9ABB0C  8D F2 00     MX
    LDA $00F4                       ; $9ABB0F  AD F4 00     MX
    ADC $00F0                       ; $9ABB12  6D F0 00     MX
    STA $00F4                       ; $9ABB15  8D F4 00     MX
L_9ABB18:
    ASL $00EE                       ; $9ABB18  0E EE 00     MX
    ROL $00F0                       ; $9ABB1B  2E F0 00     MX
    ROR $00EA                       ; $9ABB1E  6E EA 00     MX
    BCC L_9ABB36                    ; $9ABB21  90 13        MX
    LDA $00F2                       ; $9ABB23  AD F2 00     MX
    CLC                             ; $9ABB26  18           MX
    ADC $00EE                       ; $9ABB27  6D EE 00     MX
    STA $00F2                       ; $9ABB2A  8D F2 00     MX
    LDA $00F4                       ; $9ABB2D  AD F4 00     MX
    ADC $00F0                       ; $9ABB30  6D F0 00     MX
    STA $00F4                       ; $9ABB33  8D F4 00     MX
L_9ABB36:
    ASL $00EE                       ; $9ABB36  0E EE 00     MX
    ROL $00F0                       ; $9ABB39  2E F0 00     MX
    ROR $00EA                       ; $9ABB3C  6E EA 00     MX
    BCC L_9ABB54                    ; $9ABB3F  90 13        MX
    LDA $00F2                       ; $9ABB41  AD F2 00     MX
    CLC                             ; $9ABB44  18           MX
    ADC $00EE                       ; $9ABB45  6D EE 00     MX
    STA $00F2                       ; $9ABB48  8D F2 00     MX
    LDA $00F4                       ; $9ABB4B  AD F4 00     MX
    ADC $00F0                       ; $9ABB4E  6D F0 00     MX
    STA $00F4                       ; $9ABB51  8D F4 00     MX
L_9ABB54:
    ASL $00EE                       ; $9ABB54  0E EE 00     MX
    ROL $00F0                       ; $9ABB57  2E F0 00     MX
    ROR $00EA                       ; $9ABB5A  6E EA 00     MX
    BCC L_9ABB72                    ; $9ABB5D  90 13        MX
    LDA $00F2                       ; $9ABB5F  AD F2 00     MX
    CLC                             ; $9ABB62  18           MX
    ADC $00EE                       ; $9ABB63  6D EE 00     MX
    STA $00F2                       ; $9ABB66  8D F2 00     MX
    LDA $00F4                       ; $9ABB69  AD F4 00     MX
    ADC $00F0                       ; $9ABB6C  6D F0 00     MX
    STA $00F4                       ; $9ABB6F  8D F4 00     MX
L_9ABB72:
    ASL $00EE                       ; $9ABB72  0E EE 00     MX
    ROL $00F0                       ; $9ABB75  2E F0 00     MX
    ROR $00EA                       ; $9ABB78  6E EA 00     MX
    BCC L_9ABB90                    ; $9ABB7B  90 13        MX
    LDA $00F2                       ; $9ABB7D  AD F2 00     MX
    CLC                             ; $9ABB80  18           MX
    ADC $00EE                       ; $9ABB81  6D EE 00     MX
    STA $00F2                       ; $9ABB84  8D F2 00     MX
    LDA $00F4                       ; $9ABB87  AD F4 00     MX
    ADC $00F0                       ; $9ABB8A  6D F0 00     MX
    STA $00F4                       ; $9ABB8D  8D F4 00     MX
L_9ABB90:
    ASL $00EE                       ; $9ABB90  0E EE 00     MX
    ROL $00F0                       ; $9ABB93  2E F0 00     MX
    ROR $00EA                       ; $9ABB96  6E EA 00     MX
    BCC L_9ABBAE                    ; $9ABB99  90 13        MX
    LDA $00F2                       ; $9ABB9B  AD F2 00     MX
    CLC                             ; $9ABB9E  18           MX
    ADC $00EE                       ; $9ABB9F  6D EE 00     MX
    STA $00F2                       ; $9ABBA2  8D F2 00     MX
    LDA $00F4                       ; $9ABBA5  AD F4 00     MX
    ADC $00F0                       ; $9ABBA8  6D F0 00     MX
    STA $00F4                       ; $9ABBAB  8D F4 00     MX
L_9ABBAE:
    ASL $00EE                       ; $9ABBAE  0E EE 00     MX
    ROL $00F0                       ; $9ABBB1  2E F0 00     MX
    RTL                             ; $9ABBB4  6B           MX
    db $C0,$08,$A8,$09,$C0,$08,$A8,$09,$F0,$06,$D8,$07,$F0,$06,$D8,$07 ; $9ABBB5
    db $D8,$07,$F0,$06,$A8,$09,$C0,$08,$F0,$06,$D8,$07,$C0,$08,$A8,$09 ; $9ABBC5
L_9ABBD5:
    PHX                             ; $9ABBD5  DA           Mx
    PHP                             ; $9ABBD6  08           Mx
    REP #$30                        ; $9ABBD7  C2 30        Mx
    LDX $0B4A                       ; $9ABBD9  AE 4A 0B     MX
    BEQ L_9ABBE1                    ; $9ABBDC  F0 03        MX
    JMP L_9ABCAB                    ; $9ABBDE  4C AB BC     MX
L_9ABBE1:
    CMP #$000A                      ; $9ABBE1  C9 0A 00     MX
    BNE L_9ABC3D                    ; $9ABBE4  D0 57        MX
L_9ABBE6:
    STA $00BA                       ; $9ABBE6  8D BA 00     MX
    LDA $0BC1                       ; $9ABBE9  AD C1 0B     MX
    BEQ L_9ABC28                    ; $9ABBEC  F0 3A        MX
    LDA $0C25                       ; $9ABBEE  AD 25 0C     MX
    BNE L_9ABC28                    ; $9ABBF1  D0 35        MX
    LDX $1603                       ; $9ABBF3  AE 03 16     MX
    BNE L_9ABC25                    ; $9ABBF6  D0 2D        MX
    LDA $0BF9                       ; $9ABBF8  AD F9 0B     MX
    BNE L_9ABC25                    ; $9ABBFB  D0 28        MX
    LDA $0B50                       ; $9ABBFD  AD 50 0B     MX
    BNE L_9ABC25                    ; $9ABC00  D0 23        MX
    LDA $0CD3                       ; $9ABC02  AD D3 0C     MX
    BNE L_9ABC25                    ; $9ABC05  D0 1E        MX
    LDA $0C2B                       ; $9ABC07  AD 2B 0C     MX
    BPL L_9ABC13                    ; $9ABC0A  10 07        MX
    CMP #$FFF6                      ; $9ABC0C  C9 F6 FF     MX
    BCS L_9ABC25                    ; $9ABC0F  B0 14        MX
    BRA L_9ABC18                    ; $9ABC11  80 05        MX
L_9ABC13:
    CMP #$0005                      ; $9ABC13  C9 05 00     MX
    BCC L_9ABC25                    ; $9ABC16  90 0D        MX
L_9ABC18:
    LDA $0BDD                       ; $9ABC18  AD DD 0B     MX
    CMP #$005E                      ; $9ABC1B  C9 5E 00     MX
    BCC L_9ABC28                    ; $9ABC1E  90 08        MX
    CMP #$0077                      ; $9ABC20  C9 77 00     MX
    BCS L_9ABC28                    ; $9ABC23  B0 03        MX
L_9ABC25:
    JMP L_9ABCAB                    ; $9ABC25  4C AB BC     MX
L_9ABC28:
    LDA $0CD7                       ; $9ABC28  AD D7 0C     MX
    AND #$0003                      ; $9ABC2B  29 03 00     MX
    CMP #$0000                      ; $9ABC2E  C9 00 00     MX
    BNE L_9ABC38                    ; $9ABC31  D0 05        MX
    LDA $1D76                       ; $9ABC33  AD 76 1D     MX
    BNE L_9ABC47                    ; $9ABC36  D0 0F        MX
L_9ABC38:
    LDA $00BA                       ; $9ABC38  AD BA 00     MX
    BRA L_9ABC42                    ; $9ABC3B  80 05        MX
L_9ABC3D:
    CMP #$0010                      ; $9ABC3D  C9 10 00     MX
    BEQ L_9ABBE6                    ; $9ABC40  F0 A4        MX
L_9ABC42:
    LDX $1607                       ; $9ABC42  AE 07 16     MX
    BEQ L_9ABC5B                    ; $9ABC45  F0 14        MX
L_9ABC47:
    CMP #$0002                      ; $9ABC47  C9 02 00     MX
    BEQ L_9ABC91                    ; $9ABC4A  F0 45        MX
    CMP #$000D                      ; $9ABC4C  C9 0D 00     MX
    BEQ L_9ABC91                    ; $9ABC4F  F0 40        MX
    CMP #$000E                      ; $9ABC51  C9 0E 00     MX
    BEQ L_9ABC91                    ; $9ABC54  F0 3B        MX
    CMP #$000B                      ; $9ABC56  C9 0B 00     MX
    BEQ L_9ABC91                    ; $9ABC59  F0 36        MX
L_9ABC5B:
    CMP #$0003                      ; $9ABC5B  C9 03 00     MX
    BNE L_9ABC62                    ; $9ABC5E  D0 02        MX
    BRA L_9ABC6E                    ; $9ABC60  80 0C        MX
L_9ABC62:
    CMP #$000F                      ; $9ABC62  C9 0F 00     MX
    BNE L_9ABC69                    ; $9ABC65  D0 02        MX
    BRA L_9ABC7C                    ; $9ABC67  80 13        MX
L_9ABC69:
    CMP #$0005                      ; $9ABC69  C9 05 00     MX
    BNE L_9ABC91                    ; $9ABC6C  D0 23        MX
L_9ABC6E:
    PHA                             ; $9ABC6E  48           MX
    LDA $0CCB                       ; $9ABC6F  AD CB 0C     MX
    ORA $0CC9                       ; $9ABC72  0D C9 0C     MX
    BNE L_9ABC7B                    ; $9ABC75  D0 04        MX
    PLA                             ; $9ABC77  68           MX
    JMP L_9ABCAB                    ; $9ABC78  4C AB BC     MX
L_9ABC7B:
    PLA                             ; $9ABC7B  68           MX
L_9ABC7C:
    STA $00BA                       ; $9ABC7C  8D BA 00     MX
    LDA $1615                       ; $9ABC7F  AD 15 16     MX
    BEQ L_9ABC8E                    ; $9ABC82  F0 0A        MX
    JSL L_BDFE69                    ; $9ABC84  22 69 FE BD  MX
    STZ $1615                       ; $9ABC88  9C 15 16     MX
    STZ $1617                       ; $9ABC8B  9C 17 16     MX
L_9ABC8E:
    LDA $00BA                       ; $9ABC8E  AD BA 00     MX
L_9ABC91:
    DEC                             ; $9ABC91  3A           MX
    ASL                             ; $9ABC92  0A           MX
    TAX                             ; $9ABC93  AA           MX
    LDA $1615                       ; $9ABC94  AD 15 16     MX
    BNE L_9ABCAB                    ; $9ABC97  D0 12        MX
    LDA $163B,X                     ; $9ABC99  BD 3B 16     MX
    STA $1617                       ; $9ABC9C  8D 17 16     MX
    LDA $1619,X                     ; $9ABC9F  BD 19 16     MX
    BEQ L_9ABCAB                    ; $9ABCA2  F0 07        MX
    STA $1615                       ; $9ABCA4  8D 15 16     MX
    JSL L_BDFDF3                    ; $9ABCA7  22 F3 FD BD  MX
L_9ABCAB:
    PLP                             ; $9ABCAB  28           MX
    PLX                             ; $9ABCAC  FA           Mx
    RTL                             ; $9ABCAD  6B           Mx
L_9ABCAE:
    PHB                             ; $9ABCAE  8B           Mx
    PHK                             ; $9ABCAF  4B           Mx
    PLB                             ; $9ABCB0  AB           Mx
    REP #$30                        ; $9ABCB1  C2 30        Mx
    LDA $0006                       ; $9ABCB3  AD 06 00     MX
    AND #$0001                      ; $9ABCB6  29 01 00     MX
    BEQ L_9ABCBE                    ; $9ABCB9  F0 03        MX
    JMP L_9ACC94                    ; $9ABCBB  4C 94 CC     MX
L_9ABCBE:
    LDA $0E7B                       ; $9ABCBE  AD 7B 0E     MX
    BPL L_9ABCC6                    ; $9ABCC1  10 03        MX
    JMP L_9AC498                    ; $9ABCC3  4C 98 C4     MX
L_9ABCC6:
    BNE L_9ABCD0                    ; $9ABCC6  D0 08        MX
    LDX $0E7D                       ; $9ABCC8  AE 7D 0E     MX
    BNE L_9ABCD0                    ; $9ABCCB  D0 03        MX
    JMP L_9ACC64                    ; $9ABCCD  4C 64 CC     MX
L_9ABCD0:
    STA $0E7D                       ; $9ABCD0  8D 7D 0E     MX
    ASL                             ; $9ABCD3  0A           MX
    TAX                             ; $9ABCD4  AA           MX
    LDA $EF04,X                     ; $9ABCD5  BD 04 EF     MX
    TAX                             ; $9ABCD8  AA           MX
    LDA #$0600                      ; $9ABCD9  A9 00 06     MX
    TCD                             ; $9ABCDC  5B           MX
    LDA $DE24,X                     ; $9ABCDD  BD 24 DE     MX
    CLC                             ; $9ABCE0  18           MX
    ADC $00                         ; $9ABCE1  65 00        MX
    STA $00                         ; $9ABCE3  85 00        MX
    LDA $DE26,X                     ; $9ABCE5  BD 26 DE     MX
    ADC $0FB9                       ; $9ABCE8  6D B9 0F     MX
    STA $0EAA                       ; $9ABCEB  8D AA 0E     MX
    LDA $DE28,X                     ; $9ABCEE  BD 28 DE     MX
    CLC                             ; $9ABCF1  18           MX
    ADC $02                         ; $9ABCF2  65 02        MX
    STA $02                         ; $9ABCF4  85 02        MX
    LDA $DE2A,X                     ; $9ABCF6  BD 2A DE     MX
    ADC $0FBB                       ; $9ABCF9  6D BB 0F     MX
    STA $0EAC                       ; $9ABCFC  8D AC 0E     MX
    LDA $DE2C,X                     ; $9ABCFF  BD 2C DE     MX
    CLC                             ; $9ABD02  18           MX
    ADC $04                         ; $9ABD03  65 04        MX
    STA $04                         ; $9ABD05  85 04        MX
    LDA $DE2E,X                     ; $9ABD07  BD 2E DE     MX
    ADC $0FBD                       ; $9ABD0A  6D BD 0F     MX
    STA $0EAE                       ; $9ABD0D  8D AE 0E     MX
    LDA $DE30,X                     ; $9ABD10  BD 30 DE     MX
    CLC                             ; $9ABD13  18           MX
    ADC $06                         ; $9ABD14  65 06        MX
    STA $06                         ; $9ABD16  85 06        MX
    LDA $DE32,X                     ; $9ABD18  BD 32 DE     MX
    ADC $0FBF                       ; $9ABD1B  6D BF 0F     MX
    STA $0EB0                       ; $9ABD1E  8D B0 0E     MX
    LDA $DE34,X                     ; $9ABD21  BD 34 DE     MX
    CLC                             ; $9ABD24  18           MX
    ADC $08                         ; $9ABD25  65 08        MX
    STA $08                         ; $9ABD27  85 08        MX
    LDA $DE36,X                     ; $9ABD29  BD 36 DE     MX
    ADC $0FC1                       ; $9ABD2C  6D C1 0F     MX
    STA $0EB2                       ; $9ABD2F  8D B2 0E     MX
    LDA $DE38,X                     ; $9ABD32  BD 38 DE     MX
    CLC                             ; $9ABD35  18           MX
    ADC $0A                         ; $9ABD36  65 0A        MX
    STA $0A                         ; $9ABD38  85 0A        MX
    LDA $DE3A,X                     ; $9ABD3A  BD 3A DE     MX
    ADC $0FC3                       ; $9ABD3D  6D C3 0F     MX
    STA $0EB4                       ; $9ABD40  8D B4 0E     MX
    LDA $DE3C,X                     ; $9ABD43  BD 3C DE     MX
    CLC                             ; $9ABD46  18           MX
    ADC $0C                         ; $9ABD47  65 0C        MX
    STA $0C                         ; $9ABD49  85 0C        MX
    LDA $DE3E,X                     ; $9ABD4B  BD 3E DE     MX
    ADC $0FC5                       ; $9ABD4E  6D C5 0F     MX
    STA $0EB6                       ; $9ABD51  8D B6 0E     MX
    LDA $DE40,X                     ; $9ABD54  BD 40 DE     MX
    CLC                             ; $9ABD57  18           MX
    ADC $0E                         ; $9ABD58  65 0E        MX
    STA $0E                         ; $9ABD5A  85 0E        MX
    LDA $DE42,X                     ; $9ABD5C  BD 42 DE     MX
    ADC $0FC7                       ; $9ABD5F  6D C7 0F     MX
    STA $0EB8                       ; $9ABD62  8D B8 0E     MX
    LDA $DE44,X                     ; $9ABD65  BD 44 DE     MX
    CLC                             ; $9ABD68  18           MX
    ADC $10                         ; $9ABD69  65 10        MX
    STA $10                         ; $9ABD6B  85 10        MX
    LDA $DE46,X                     ; $9ABD6D  BD 46 DE     MX
    ADC $0FC9                       ; $9ABD70  6D C9 0F     MX
    STA $0EBA                       ; $9ABD73  8D BA 0E     MX
    LDA $DE48,X                     ; $9ABD76  BD 48 DE     MX
    CLC                             ; $9ABD79  18           MX
    ADC $12                         ; $9ABD7A  65 12        MX
    STA $12                         ; $9ABD7C  85 12        MX
    LDA $DE4A,X                     ; $9ABD7E  BD 4A DE     MX
    ADC $0FCB                       ; $9ABD81  6D CB 0F     MX
    STA $0EBC                       ; $9ABD84  8D BC 0E     MX
    LDA $DE4C,X                     ; $9ABD87  BD 4C DE     MX
    CLC                             ; $9ABD8A  18           MX
    ADC $14                         ; $9ABD8B  65 14        MX
    STA $14                         ; $9ABD8D  85 14        MX
    LDA $DE4E,X                     ; $9ABD8F  BD 4E DE     MX
    ADC $0FCD                       ; $9ABD92  6D CD 0F     MX
    STA $0EBE                       ; $9ABD95  8D BE 0E     MX
    LDA $DE50,X                     ; $9ABD98  BD 50 DE     MX
    CLC                             ; $9ABD9B  18           MX
    ADC $16                         ; $9ABD9C  65 16        MX
    STA $16                         ; $9ABD9E  85 16        MX
    LDA $DE52,X                     ; $9ABDA0  BD 52 DE     MX
    ADC $0FCF                       ; $9ABDA3  6D CF 0F     MX
    STA $0EC0                       ; $9ABDA6  8D C0 0E     MX
    LDA $DE54,X                     ; $9ABDA9  BD 54 DE     MX
    CLC                             ; $9ABDAC  18           MX
    ADC $18                         ; $9ABDAD  65 18        MX
    STA $18                         ; $9ABDAF  85 18        MX
    LDA $DE56,X                     ; $9ABDB1  BD 56 DE     MX
    ADC $0FD1                       ; $9ABDB4  6D D1 0F     MX
    STA $0EC2                       ; $9ABDB7  8D C2 0E     MX
    LDA $DE58,X                     ; $9ABDBA  BD 58 DE     MX
    CLC                             ; $9ABDBD  18           MX
    ADC $1A                         ; $9ABDBE  65 1A        MX
    STA $1A                         ; $9ABDC0  85 1A        MX
    LDA $DE5A,X                     ; $9ABDC2  BD 5A DE     MX
    ADC $0FD3                       ; $9ABDC5  6D D3 0F     MX
    STA $0EC4                       ; $9ABDC8  8D C4 0E     MX
    LDA $DE5C,X                     ; $9ABDCB  BD 5C DE     MX
    CLC                             ; $9ABDCE  18           MX
    ADC $1C                         ; $9ABDCF  65 1C        MX
    STA $1C                         ; $9ABDD1  85 1C        MX
    LDA $DE5E,X                     ; $9ABDD3  BD 5E DE     MX
    ADC $0FD5                       ; $9ABDD6  6D D5 0F     MX
    STA $0EC6                       ; $9ABDD9  8D C6 0E     MX
    LDA $DE60,X                     ; $9ABDDC  BD 60 DE     MX
    CLC                             ; $9ABDDF  18           MX
    ADC $1E                         ; $9ABDE0  65 1E        MX
    STA $1E                         ; $9ABDE2  85 1E        MX
    LDA $DE62,X                     ; $9ABDE4  BD 62 DE     MX
    ADC $0FD7                       ; $9ABDE7  6D D7 0F     MX
    STA $0EC8                       ; $9ABDEA  8D C8 0E     MX
    LDA $DE64,X                     ; $9ABDED  BD 64 DE     MX
    CLC                             ; $9ABDF0  18           MX
    ADC $20                         ; $9ABDF1  65 20        MX
    STA $20                         ; $9ABDF3  85 20        MX
    LDA $DE66,X                     ; $9ABDF5  BD 66 DE     MX
    ADC $0FD9                       ; $9ABDF8  6D D9 0F     MX
    STA $0ECA                       ; $9ABDFB  8D CA 0E     MX
    LDA $DE68,X                     ; $9ABDFE  BD 68 DE     MX
    CLC                             ; $9ABE01  18           MX
    ADC $22                         ; $9ABE02  65 22        MX
    STA $22                         ; $9ABE04  85 22        MX
    LDA $DE6A,X                     ; $9ABE06  BD 6A DE     MX
    ADC $0FDB                       ; $9ABE09  6D DB 0F     MX
    STA $0ECC                       ; $9ABE0C  8D CC 0E     MX
    LDA $DE6C,X                     ; $9ABE0F  BD 6C DE     MX
    CLC                             ; $9ABE12  18           MX
    ADC $24                         ; $9ABE13  65 24        MX
    STA $24                         ; $9ABE15  85 24        MX
    LDA $DE6E,X                     ; $9ABE17  BD 6E DE     MX
    ADC $0FDD                       ; $9ABE1A  6D DD 0F     MX
    STA $0ECE                       ; $9ABE1D  8D CE 0E     MX
    LDA $DE70,X                     ; $9ABE20  BD 70 DE     MX
    CLC                             ; $9ABE23  18           MX
    ADC $26                         ; $9ABE24  65 26        MX
    STA $26                         ; $9ABE26  85 26        MX
    LDA $DE72,X                     ; $9ABE28  BD 72 DE     MX
    ADC $0FDF                       ; $9ABE2B  6D DF 0F     MX
    STA $0ED0                       ; $9ABE2E  8D D0 0E     MX
    LDA $DE74,X                     ; $9ABE31  BD 74 DE     MX
    CLC                             ; $9ABE34  18           MX
    ADC $28                         ; $9ABE35  65 28        MX
    STA $28                         ; $9ABE37  85 28        MX
    LDA $DE76,X                     ; $9ABE39  BD 76 DE     MX
    ADC $0FE1                       ; $9ABE3C  6D E1 0F     MX
    STA $0ED2                       ; $9ABE3F  8D D2 0E     MX
    LDA $DE78,X                     ; $9ABE42  BD 78 DE     MX
    CLC                             ; $9ABE45  18           MX
    ADC $2A                         ; $9ABE46  65 2A        MX
    STA $2A                         ; $9ABE48  85 2A        MX
    LDA $DE7A,X                     ; $9ABE4A  BD 7A DE     MX
    ADC $0FE3                       ; $9ABE4D  6D E3 0F     MX
    STA $0ED4                       ; $9ABE50  8D D4 0E     MX
    LDA $DE7C,X                     ; $9ABE53  BD 7C DE     MX
    CLC                             ; $9ABE56  18           MX
    ADC $2C                         ; $9ABE57  65 2C        MX
    STA $2C                         ; $9ABE59  85 2C        MX
    LDA $DE7E,X                     ; $9ABE5B  BD 7E DE     MX
    ADC $0FE5                       ; $9ABE5E  6D E5 0F     MX
    STA $0ED6                       ; $9ABE61  8D D6 0E     MX
    LDA $DE80,X                     ; $9ABE64  BD 80 DE     MX
    CLC                             ; $9ABE67  18           MX
    ADC $2E                         ; $9ABE68  65 2E        MX
    STA $2E                         ; $9ABE6A  85 2E        MX
    LDA $DE82,X                     ; $9ABE6C  BD 82 DE     MX
    ADC $0FE7                       ; $9ABE6F  6D E7 0F     MX
    STA $0ED8                       ; $9ABE72  8D D8 0E     MX
    LDA $DE84,X                     ; $9ABE75  BD 84 DE     MX
    CLC                             ; $9ABE78  18           MX
    ADC $30                         ; $9ABE79  65 30        MX
    STA $30                         ; $9ABE7B  85 30        MX
    LDA $DE86,X                     ; $9ABE7D  BD 86 DE     MX
    ADC $0FE9                       ; $9ABE80  6D E9 0F     MX
    STA $0EDA                       ; $9ABE83  8D DA 0E     MX
    LDA $DE88,X                     ; $9ABE86  BD 88 DE     MX
    CLC                             ; $9ABE89  18           MX
    ADC $32                         ; $9ABE8A  65 32        MX
    STA $32                         ; $9ABE8C  85 32        MX
    LDA $DE8A,X                     ; $9ABE8E  BD 8A DE     MX
    ADC $0FEB                       ; $9ABE91  6D EB 0F     MX
    STA $0EDC                       ; $9ABE94  8D DC 0E     MX
    LDA $DE8C,X                     ; $9ABE97  BD 8C DE     MX
    CLC                             ; $9ABE9A  18           MX
    ADC $34                         ; $9ABE9B  65 34        MX
    STA $34                         ; $9ABE9D  85 34        MX
    LDA $DE8E,X                     ; $9ABE9F  BD 8E DE     MX
    ADC $0FED                       ; $9ABEA2  6D ED 0F     MX
    STA $0EDE                       ; $9ABEA5  8D DE 0E     MX
    LDA $DE90,X                     ; $9ABEA8  BD 90 DE     MX
    CLC                             ; $9ABEAB  18           MX
    ADC $36                         ; $9ABEAC  65 36        MX
    STA $36                         ; $9ABEAE  85 36        MX
    LDA $DE92,X                     ; $9ABEB0  BD 92 DE     MX
    ADC $0FEF                       ; $9ABEB3  6D EF 0F     MX
    STA $0EE0                       ; $9ABEB6  8D E0 0E     MX
    LDA $DE94,X                     ; $9ABEB9  BD 94 DE     MX
    CLC                             ; $9ABEBC  18           MX
    ADC $38                         ; $9ABEBD  65 38        MX
    STA $38                         ; $9ABEBF  85 38        MX
    LDA $DE96,X                     ; $9ABEC1  BD 96 DE     MX
    ADC $0FF1                       ; $9ABEC4  6D F1 0F     MX
    STA $0EE2                       ; $9ABEC7  8D E2 0E     MX
    LDA $DE98,X                     ; $9ABECA  BD 98 DE     MX
    CLC                             ; $9ABECD  18           MX
    ADC $3A                         ; $9ABECE  65 3A        MX
    STA $3A                         ; $9ABED0  85 3A        MX
    LDA $DE9A,X                     ; $9ABED2  BD 9A DE     MX
    ADC $0FF3                       ; $9ABED5  6D F3 0F     MX
    STA $0EE4                       ; $9ABED8  8D E4 0E     MX
    LDA $DE9C,X                     ; $9ABEDB  BD 9C DE     MX
    CLC                             ; $9ABEDE  18           MX
    ADC $3C                         ; $9ABEDF  65 3C        MX
    STA $3C                         ; $9ABEE1  85 3C        MX
    LDA $DE9E,X                     ; $9ABEE3  BD 9E DE     MX
    ADC $0FF5                       ; $9ABEE6  6D F5 0F     MX
    STA $0EE6                       ; $9ABEE9  8D E6 0E     MX
    LDA $DEA0,X                     ; $9ABEEC  BD A0 DE     MX
    CLC                             ; $9ABEEF  18           MX
    ADC $3E                         ; $9ABEF0  65 3E        MX
    STA $3E                         ; $9ABEF2  85 3E        MX
    LDA $DEA2,X                     ; $9ABEF4  BD A2 DE     MX
    ADC $0FF7                       ; $9ABEF7  6D F7 0F     MX
    STA $0EE8                       ; $9ABEFA  8D E8 0E     MX
    LDA $DEA4,X                     ; $9ABEFD  BD A4 DE     MX
    CLC                             ; $9ABF00  18           MX
    ADC $40                         ; $9ABF01  65 40        MX
    STA $40                         ; $9ABF03  85 40        MX
    LDA $DEA6,X                     ; $9ABF05  BD A6 DE     MX
    ADC $0FF9                       ; $9ABF08  6D F9 0F     MX
    STA $0EEA                       ; $9ABF0B  8D EA 0E     MX
    LDA $DEA8,X                     ; $9ABF0E  BD A8 DE     MX
    CLC                             ; $9ABF11  18           MX
    ADC $42                         ; $9ABF12  65 42        MX
    STA $42                         ; $9ABF14  85 42        MX
    LDA $DEAA,X                     ; $9ABF16  BD AA DE     MX
    ADC $0FFB                       ; $9ABF19  6D FB 0F     MX
    STA $0EEC                       ; $9ABF1C  8D EC 0E     MX
    LDA $DEAC,X                     ; $9ABF1F  BD AC DE     MX
    CLC                             ; $9ABF22  18           MX
    ADC $44                         ; $9ABF23  65 44        MX
    STA $44                         ; $9ABF25  85 44        MX
    LDA $DEAE,X                     ; $9ABF27  BD AE DE     MX
    ADC $0FFD                       ; $9ABF2A  6D FD 0F     MX
    STA $0EEE                       ; $9ABF2D  8D EE 0E     MX
    LDA $DEB0,X                     ; $9ABF30  BD B0 DE     MX
    CLC                             ; $9ABF33  18           MX
    ADC $46                         ; $9ABF34  65 46        MX
    STA $46                         ; $9ABF36  85 46        MX
    LDA $DEB2,X                     ; $9ABF38  BD B2 DE     MX
    ADC $0FFF                       ; $9ABF3B  6D FF 0F     MX
    STA $0EF0                       ; $9ABF3E  8D F0 0E     MX
    LDA $DEB4,X                     ; $9ABF41  BD B4 DE     MX
    CLC                             ; $9ABF44  18           MX
    ADC $48                         ; $9ABF45  65 48        MX
    STA $48                         ; $9ABF47  85 48        MX
    LDA $DEB6,X                     ; $9ABF49  BD B6 DE     MX
    ADC $1001                       ; $9ABF4C  6D 01 10     MX
    STA $0EF2                       ; $9ABF4F  8D F2 0E     MX
    LDA $DEB8,X                     ; $9ABF52  BD B8 DE     MX
    CLC                             ; $9ABF55  18           MX
    ADC $4A                         ; $9ABF56  65 4A        MX
    STA $4A                         ; $9ABF58  85 4A        MX
    LDA $DEBA,X                     ; $9ABF5A  BD BA DE     MX
    ADC $1003                       ; $9ABF5D  6D 03 10     MX
    STA $0EF4                       ; $9ABF60  8D F4 0E     MX
    LDA $DEBC,X                     ; $9ABF63  BD BC DE     MX
    CLC                             ; $9ABF66  18           MX
    ADC $4C                         ; $9ABF67  65 4C        MX
    STA $4C                         ; $9ABF69  85 4C        MX
    LDA $DEBE,X                     ; $9ABF6B  BD BE DE     MX
    ADC $1005                       ; $9ABF6E  6D 05 10     MX
    STA $0EF6                       ; $9ABF71  8D F6 0E     MX
    LDA $DEC0,X                     ; $9ABF74  BD C0 DE     MX
    CLC                             ; $9ABF77  18           MX
    ADC $4E                         ; $9ABF78  65 4E        MX
    STA $4E                         ; $9ABF7A  85 4E        MX
    LDA $DEC2,X                     ; $9ABF7C  BD C2 DE     MX
    ADC $1007                       ; $9ABF7F  6D 07 10     MX
    STA $0EF8                       ; $9ABF82  8D F8 0E     MX
    LDA $DEC4,X                     ; $9ABF85  BD C4 DE     MX
    CLC                             ; $9ABF88  18           MX
    ADC $50                         ; $9ABF89  65 50        MX
    STA $50                         ; $9ABF8B  85 50        MX
    LDA $DEC6,X                     ; $9ABF8D  BD C6 DE     MX
    ADC $1009                       ; $9ABF90  6D 09 10     MX
    STA $0EFA                       ; $9ABF93  8D FA 0E     MX
    LDA $DEC8,X                     ; $9ABF96  BD C8 DE     MX
    CLC                             ; $9ABF99  18           MX
    ADC $52                         ; $9ABF9A  65 52        MX
    STA $52                         ; $9ABF9C  85 52        MX
    LDA $DECA,X                     ; $9ABF9E  BD CA DE     MX
    ADC $100B                       ; $9ABFA1  6D 0B 10     MX
    STA $0EFC                       ; $9ABFA4  8D FC 0E     MX
    LDA $DECC,X                     ; $9ABFA7  BD CC DE     MX
    CLC                             ; $9ABFAA  18           MX
    ADC $54                         ; $9ABFAB  65 54        MX
    STA $54                         ; $9ABFAD  85 54        MX
    LDA $DECE,X                     ; $9ABFAF  BD CE DE     MX
    ADC $100D                       ; $9ABFB2  6D 0D 10     MX
    STA $0EFE                       ; $9ABFB5  8D FE 0E     MX
    LDA $DED0,X                     ; $9ABFB8  BD D0 DE     MX
    CLC                             ; $9ABFBB  18           MX
    ADC $56                         ; $9ABFBC  65 56        MX
    STA $56                         ; $9ABFBE  85 56        MX
    LDA $DED2,X                     ; $9ABFC0  BD D2 DE     MX
    ADC $100F                       ; $9ABFC3  6D 0F 10     MX
    STA $0F00                       ; $9ABFC6  8D 00 0F     MX
    LDA $DED4,X                     ; $9ABFC9  BD D4 DE     MX
    CLC                             ; $9ABFCC  18           MX
    ADC $58                         ; $9ABFCD  65 58        MX
    STA $58                         ; $9ABFCF  85 58        MX
    LDA $DED6,X                     ; $9ABFD1  BD D6 DE     MX
    ADC $1011                       ; $9ABFD4  6D 11 10     MX
    STA $0F02                       ; $9ABFD7  8D 02 0F     MX
    LDA $DED8,X                     ; $9ABFDA  BD D8 DE     MX
    CLC                             ; $9ABFDD  18           MX
    ADC $5A                         ; $9ABFDE  65 5A        MX
    STA $5A                         ; $9ABFE0  85 5A        MX
    LDA $DEDA,X                     ; $9ABFE2  BD DA DE     MX
    ADC $1013                       ; $9ABFE5  6D 13 10     MX
    STA $0F04                       ; $9ABFE8  8D 04 0F     MX
    LDA $DEDC,X                     ; $9ABFEB  BD DC DE     MX
    CLC                             ; $9ABFEE  18           MX
    ADC $5C                         ; $9ABFEF  65 5C        MX
    STA $5C                         ; $9ABFF1  85 5C        MX
    LDA $DEDE,X                     ; $9ABFF3  BD DE DE     MX
    ADC $1015                       ; $9ABFF6  6D 15 10     MX
    STA $0F06                       ; $9ABFF9  8D 06 0F     MX
    LDA $DEE0,X                     ; $9ABFFC  BD E0 DE     MX
    CLC                             ; $9ABFFF  18           MX
    ADC $5E                         ; $9AC000  65 5E        MX
    STA $5E                         ; $9AC002  85 5E        MX
    LDA $DEE2,X                     ; $9AC004  BD E2 DE     MX
    ADC $1017                       ; $9AC007  6D 17 10     MX
    STA $0F08                       ; $9AC00A  8D 08 0F     MX
    LDA $DEE4,X                     ; $9AC00D  BD E4 DE     MX
    CLC                             ; $9AC010  18           MX
    ADC $60                         ; $9AC011  65 60        MX
    STA $60                         ; $9AC013  85 60        MX
    LDA $DEE6,X                     ; $9AC015  BD E6 DE     MX
    ADC $1019                       ; $9AC018  6D 19 10     MX
    STA $0F0A                       ; $9AC01B  8D 0A 0F     MX
    LDA $DEE8,X                     ; $9AC01E  BD E8 DE     MX
    CLC                             ; $9AC021  18           MX
    ADC $62                         ; $9AC022  65 62        MX
    STA $62                         ; $9AC024  85 62        MX
    LDA $DEEA,X                     ; $9AC026  BD EA DE     MX
    ADC $101B                       ; $9AC029  6D 1B 10     MX
    STA $0F0C                       ; $9AC02C  8D 0C 0F     MX
    LDA $DEEC,X                     ; $9AC02F  BD EC DE     MX
    CLC                             ; $9AC032  18           MX
    ADC $64                         ; $9AC033  65 64        MX
    STA $64                         ; $9AC035  85 64        MX
    LDA $DEEE,X                     ; $9AC037  BD EE DE     MX
    ADC $101D                       ; $9AC03A  6D 1D 10     MX
    STA $0F0E                       ; $9AC03D  8D 0E 0F     MX
    LDA $DEF0,X                     ; $9AC040  BD F0 DE     MX
    CLC                             ; $9AC043  18           MX
    ADC $66                         ; $9AC044  65 66        MX
    STA $66                         ; $9AC046  85 66        MX
    LDA $DEF2,X                     ; $9AC048  BD F2 DE     MX
    ADC $101F                       ; $9AC04B  6D 1F 10     MX
    STA $0F10                       ; $9AC04E  8D 10 0F     MX
    LDA $DEF4,X                     ; $9AC051  BD F4 DE     MX
    CLC                             ; $9AC054  18           MX
    ADC $68                         ; $9AC055  65 68        MX
    STA $68                         ; $9AC057  85 68        MX
    LDA $DEF6,X                     ; $9AC059  BD F6 DE     MX
    ADC $1021                       ; $9AC05C  6D 21 10     MX
    STA $0F12                       ; $9AC05F  8D 12 0F     MX
    LDA $DEF8,X                     ; $9AC062  BD F8 DE     MX
    CLC                             ; $9AC065  18           MX
    ADC $6A                         ; $9AC066  65 6A        MX
    STA $6A                         ; $9AC068  85 6A        MX
    LDA $DEFA,X                     ; $9AC06A  BD FA DE     MX
    ADC $1023                       ; $9AC06D  6D 23 10     MX
    STA $0F14                       ; $9AC070  8D 14 0F     MX
    LDA $DEFC,X                     ; $9AC073  BD FC DE     MX
    CLC                             ; $9AC076  18           MX
    ADC $6C                         ; $9AC077  65 6C        MX
    STA $6C                         ; $9AC079  85 6C        MX
    LDA $DEFE,X                     ; $9AC07B  BD FE DE     MX
    ADC $1025                       ; $9AC07E  6D 25 10     MX
    STA $0F16                       ; $9AC081  8D 16 0F     MX
    LDA $DF00,X                     ; $9AC084  BD 00 DF     MX
    CLC                             ; $9AC087  18           MX
    ADC $6E                         ; $9AC088  65 6E        MX
    STA $6E                         ; $9AC08A  85 6E        MX
    LDA $DF02,X                     ; $9AC08C  BD 02 DF     MX
    ADC $1027                       ; $9AC08F  6D 27 10     MX
    STA $0F18                       ; $9AC092  8D 18 0F     MX
    LDA $DF04,X                     ; $9AC095  BD 04 DF     MX
    CLC                             ; $9AC098  18           MX
    ADC $70                         ; $9AC099  65 70        MX
    STA $70                         ; $9AC09B  85 70        MX
    LDA $DF06,X                     ; $9AC09D  BD 06 DF     MX
    ADC $1029                       ; $9AC0A0  6D 29 10     MX
    STA $0F1A                       ; $9AC0A3  8D 1A 0F     MX
    LDA $DF08,X                     ; $9AC0A6  BD 08 DF     MX
    CLC                             ; $9AC0A9  18           MX
    ADC $72                         ; $9AC0AA  65 72        MX
    STA $72                         ; $9AC0AC  85 72        MX
    LDA $DF0A,X                     ; $9AC0AE  BD 0A DF     MX
    ADC $102B                       ; $9AC0B1  6D 2B 10     MX
    STA $0F1C                       ; $9AC0B4  8D 1C 0F     MX
    LDA $DF0C,X                     ; $9AC0B7  BD 0C DF     MX
    CLC                             ; $9AC0BA  18           MX
    ADC $74                         ; $9AC0BB  65 74        MX
    STA $74                         ; $9AC0BD  85 74        MX
    LDA $DF0E,X                     ; $9AC0BF  BD 0E DF     MX
    ADC $102D                       ; $9AC0C2  6D 2D 10     MX
    STA $0F1E                       ; $9AC0C5  8D 1E 0F     MX
    LDA $DF10,X                     ; $9AC0C8  BD 10 DF     MX
    CLC                             ; $9AC0CB  18           MX
    ADC $76                         ; $9AC0CC  65 76        MX
    STA $76                         ; $9AC0CE  85 76        MX
    LDA $DF12,X                     ; $9AC0D0  BD 12 DF     MX
    ADC $102F                       ; $9AC0D3  6D 2F 10     MX
    STA $0F20                       ; $9AC0D6  8D 20 0F     MX
    LDA $DF14,X                     ; $9AC0D9  BD 14 DF     MX
    CLC                             ; $9AC0DC  18           MX
    ADC $78                         ; $9AC0DD  65 78        MX
    STA $78                         ; $9AC0DF  85 78        MX
    LDA $DF16,X                     ; $9AC0E1  BD 16 DF     MX
    ADC $1031                       ; $9AC0E4  6D 31 10     MX
    STA $0F22                       ; $9AC0E7  8D 22 0F     MX
    LDA $DF18,X                     ; $9AC0EA  BD 18 DF     MX
    CLC                             ; $9AC0ED  18           MX
    ADC $7A                         ; $9AC0EE  65 7A        MX
    STA $7A                         ; $9AC0F0  85 7A        MX
    LDA $DF1A,X                     ; $9AC0F2  BD 1A DF     MX
    ADC $1033                       ; $9AC0F5  6D 33 10     MX
    STA $0F24                       ; $9AC0F8  8D 24 0F     MX
    LDA $DF1C,X                     ; $9AC0FB  BD 1C DF     MX
    CLC                             ; $9AC0FE  18           MX
    ADC $7C                         ; $9AC0FF  65 7C        MX
    STA $7C                         ; $9AC101  85 7C        MX
    LDA $DF1E,X                     ; $9AC103  BD 1E DF     MX
    ADC $1035                       ; $9AC106  6D 35 10     MX
    STA $0F26                       ; $9AC109  8D 26 0F     MX
    LDA $DF20,X                     ; $9AC10C  BD 20 DF     MX
    CLC                             ; $9AC10F  18           MX
    ADC $7E                         ; $9AC110  65 7E        MX
    STA $7E                         ; $9AC112  85 7E        MX
    LDA $DF22,X                     ; $9AC114  BD 22 DF     MX
    ADC $1037                       ; $9AC117  6D 37 10     MX
    STA $0F28                       ; $9AC11A  8D 28 0F     MX
    LDA $DF24,X                     ; $9AC11D  BD 24 DF     MX
    CLC                             ; $9AC120  18           MX
    ADC $80                         ; $9AC121  65 80        MX
    STA $80                         ; $9AC123  85 80        MX
    LDA $DF26,X                     ; $9AC125  BD 26 DF     MX
    ADC $1039                       ; $9AC128  6D 39 10     MX
    STA $0F2A                       ; $9AC12B  8D 2A 0F     MX
    LDA $DF28,X                     ; $9AC12E  BD 28 DF     MX
    CLC                             ; $9AC131  18           MX
    ADC $82                         ; $9AC132  65 82        MX
    STA $82                         ; $9AC134  85 82        MX
    LDA $DF2A,X                     ; $9AC136  BD 2A DF     MX
    ADC $103B                       ; $9AC139  6D 3B 10     MX
    STA $0F2C                       ; $9AC13C  8D 2C 0F     MX
    LDA $DF2C,X                     ; $9AC13F  BD 2C DF     MX
    CLC                             ; $9AC142  18           MX
    ADC $84                         ; $9AC143  65 84        MX
    STA $84                         ; $9AC145  85 84        MX
    LDA $DF2E,X                     ; $9AC147  BD 2E DF     MX
    ADC $103D                       ; $9AC14A  6D 3D 10     MX
    STA $0F2E                       ; $9AC14D  8D 2E 0F     MX
    LDA $DF30,X                     ; $9AC150  BD 30 DF     MX
    CLC                             ; $9AC153  18           MX
    ADC $86                         ; $9AC154  65 86        MX
    STA $86                         ; $9AC156  85 86        MX
    LDA $DF32,X                     ; $9AC158  BD 32 DF     MX
    ADC $103F                       ; $9AC15B  6D 3F 10     MX
    STA $0F30                       ; $9AC15E  8D 30 0F     MX
    LDA $DF34,X                     ; $9AC161  BD 34 DF     MX
    CLC                             ; $9AC164  18           MX
    ADC $88                         ; $9AC165  65 88        MX
    STA $88                         ; $9AC167  85 88        MX
    LDA $DF36,X                     ; $9AC169  BD 36 DF     MX
    ADC $1041                       ; $9AC16C  6D 41 10     MX
    STA $0F32                       ; $9AC16F  8D 32 0F     MX
    LDA $DF38,X                     ; $9AC172  BD 38 DF     MX
    CLC                             ; $9AC175  18           MX
    ADC $8A                         ; $9AC176  65 8A        MX
    STA $8A                         ; $9AC178  85 8A        MX
    LDA $DF3A,X                     ; $9AC17A  BD 3A DF     MX
    ADC $1043                       ; $9AC17D  6D 43 10     MX
    STA $0F34                       ; $9AC180  8D 34 0F     MX
    LDA $DF3C,X                     ; $9AC183  BD 3C DF     MX
    CLC                             ; $9AC186  18           MX
    ADC $8C                         ; $9AC187  65 8C        MX
    STA $8C                         ; $9AC189  85 8C        MX
    LDA $DF3E,X                     ; $9AC18B  BD 3E DF     MX
    ADC $1045                       ; $9AC18E  6D 45 10     MX
    STA $0F36                       ; $9AC191  8D 36 0F     MX
    LDA $DF40,X                     ; $9AC194  BD 40 DF     MX
    CLC                             ; $9AC197  18           MX
    ADC $8E                         ; $9AC198  65 8E        MX
    STA $8E                         ; $9AC19A  85 8E        MX
    LDA $DF42,X                     ; $9AC19C  BD 42 DF     MX
    ADC $1047                       ; $9AC19F  6D 47 10     MX
    STA $0F38                       ; $9AC1A2  8D 38 0F     MX
    LDA $DF44,X                     ; $9AC1A5  BD 44 DF     MX
    CLC                             ; $9AC1A8  18           MX
    ADC $90                         ; $9AC1A9  65 90        MX
    STA $90                         ; $9AC1AB  85 90        MX
    LDA $DF46,X                     ; $9AC1AD  BD 46 DF     MX
    ADC $1049                       ; $9AC1B0  6D 49 10     MX
    STA $0F3A                       ; $9AC1B3  8D 3A 0F     MX
    LDA $DF48,X                     ; $9AC1B6  BD 48 DF     MX
    CLC                             ; $9AC1B9  18           MX
    ADC $92                         ; $9AC1BA  65 92        MX
    STA $92                         ; $9AC1BC  85 92        MX
    LDA $DF4A,X                     ; $9AC1BE  BD 4A DF     MX
    ADC $104B                       ; $9AC1C1  6D 4B 10     MX
    STA $0F3C                       ; $9AC1C4  8D 3C 0F     MX
    LDA $DF4C,X                     ; $9AC1C7  BD 4C DF     MX
    CLC                             ; $9AC1CA  18           MX
    ADC $94                         ; $9AC1CB  65 94        MX
    STA $94                         ; $9AC1CD  85 94        MX
    LDA $DF4E,X                     ; $9AC1CF  BD 4E DF     MX
    ADC $104D                       ; $9AC1D2  6D 4D 10     MX
    STA $0F3E                       ; $9AC1D5  8D 3E 0F     MX
    LDA $DF50,X                     ; $9AC1D8  BD 50 DF     MX
    CLC                             ; $9AC1DB  18           MX
    ADC $96                         ; $9AC1DC  65 96        MX
    STA $96                         ; $9AC1DE  85 96        MX
    LDA $DF52,X                     ; $9AC1E0  BD 52 DF     MX
    ADC $104F                       ; $9AC1E3  6D 4F 10     MX
    STA $0F40                       ; $9AC1E6  8D 40 0F     MX
    LDA $DF54,X                     ; $9AC1E9  BD 54 DF     MX
    CLC                             ; $9AC1EC  18           MX
    ADC $98                         ; $9AC1ED  65 98        MX
    STA $98                         ; $9AC1EF  85 98        MX
    LDA $DF56,X                     ; $9AC1F1  BD 56 DF     MX
    ADC $1051                       ; $9AC1F4  6D 51 10     MX
    STA $0F42                       ; $9AC1F7  8D 42 0F     MX
    LDA $DF58,X                     ; $9AC1FA  BD 58 DF     MX
    CLC                             ; $9AC1FD  18           MX
    ADC $9A                         ; $9AC1FE  65 9A        MX
    STA $9A                         ; $9AC200  85 9A        MX
    LDA $DF5A,X                     ; $9AC202  BD 5A DF     MX
    ADC $1053                       ; $9AC205  6D 53 10     MX
    STA $0F44                       ; $9AC208  8D 44 0F     MX
    LDA $DF5C,X                     ; $9AC20B  BD 5C DF     MX
    CLC                             ; $9AC20E  18           MX
    ADC $9C                         ; $9AC20F  65 9C        MX
    STA $9C                         ; $9AC211  85 9C        MX
    LDA $DF5E,X                     ; $9AC213  BD 5E DF     MX
    ADC $1055                       ; $9AC216  6D 55 10     MX
    STA $0F46                       ; $9AC219  8D 46 0F     MX
    LDA $DF60,X                     ; $9AC21C  BD 60 DF     MX
    CLC                             ; $9AC21F  18           MX
    ADC $9E                         ; $9AC220  65 9E        MX
    STA $9E                         ; $9AC222  85 9E        MX
    LDA $DF62,X                     ; $9AC224  BD 62 DF     MX
    ADC $1057                       ; $9AC227  6D 57 10     MX
    STA $0F48                       ; $9AC22A  8D 48 0F     MX
    LDA $DF64,X                     ; $9AC22D  BD 64 DF     MX
    CLC                             ; $9AC230  18           MX
    ADC $A0                         ; $9AC231  65 A0        MX
    STA $A0                         ; $9AC233  85 A0        MX
    LDA $DF66,X                     ; $9AC235  BD 66 DF     MX
    ADC $1059                       ; $9AC238  6D 59 10     MX
    STA $0F4A                       ; $9AC23B  8D 4A 0F     MX
    LDA $DF68,X                     ; $9AC23E  BD 68 DF     MX
    CLC                             ; $9AC241  18           MX
    ADC $A2                         ; $9AC242  65 A2        MX
    STA $A2                         ; $9AC244  85 A2        MX
    LDA $DF6A,X                     ; $9AC246  BD 6A DF     MX
    ADC $105B                       ; $9AC249  6D 5B 10     MX
    STA $0F4C                       ; $9AC24C  8D 4C 0F     MX
    LDA $DF6C,X                     ; $9AC24F  BD 6C DF     MX
    CLC                             ; $9AC252  18           MX
    ADC $A4                         ; $9AC253  65 A4        MX
    STA $A4                         ; $9AC255  85 A4        MX
    LDA $DF6E,X                     ; $9AC257  BD 6E DF     MX
    ADC $105D                       ; $9AC25A  6D 5D 10     MX
    STA $0F4E                       ; $9AC25D  8D 4E 0F     MX
    LDA $DF70,X                     ; $9AC260  BD 70 DF     MX
    CLC                             ; $9AC263  18           MX
    ADC $A6                         ; $9AC264  65 A6        MX
    STA $A6                         ; $9AC266  85 A6        MX
    LDA $DF72,X                     ; $9AC268  BD 72 DF     MX
    ADC $105F                       ; $9AC26B  6D 5F 10     MX
    STA $0F50                       ; $9AC26E  8D 50 0F     MX
    LDA $DF74,X                     ; $9AC271  BD 74 DF     MX
    CLC                             ; $9AC274  18           MX
    ADC $A8                         ; $9AC275  65 A8        MX
    STA $A8                         ; $9AC277  85 A8        MX
    LDA $DF76,X                     ; $9AC279  BD 76 DF     MX
    ADC $1061                       ; $9AC27C  6D 61 10     MX
    STA $0F52                       ; $9AC27F  8D 52 0F     MX
    LDA $DF78,X                     ; $9AC282  BD 78 DF     MX
    CLC                             ; $9AC285  18           MX
    ADC $AA                         ; $9AC286  65 AA        MX
    STA $AA                         ; $9AC288  85 AA        MX
    LDA $DF7A,X                     ; $9AC28A  BD 7A DF     MX
    ADC $1063                       ; $9AC28D  6D 63 10     MX
    STA $0F54                       ; $9AC290  8D 54 0F     MX
    LDA $DF7C,X                     ; $9AC293  BD 7C DF     MX
    CLC                             ; $9AC296  18           MX
    ADC $AC                         ; $9AC297  65 AC        MX
    STA $AC                         ; $9AC299  85 AC        MX
    LDA $DF7E,X                     ; $9AC29B  BD 7E DF     MX
    ADC $1065                       ; $9AC29E  6D 65 10     MX
    STA $0F56                       ; $9AC2A1  8D 56 0F     MX
    LDA $DF80,X                     ; $9AC2A4  BD 80 DF     MX
    CLC                             ; $9AC2A7  18           MX
    ADC $AE                         ; $9AC2A8  65 AE        MX
    STA $AE                         ; $9AC2AA  85 AE        MX
    LDA $DF82,X                     ; $9AC2AC  BD 82 DF     MX
    ADC $1067                       ; $9AC2AF  6D 67 10     MX
    STA $0F58                       ; $9AC2B2  8D 58 0F     MX
    LDA $DF84,X                     ; $9AC2B5  BD 84 DF     MX
    CLC                             ; $9AC2B8  18           MX
    ADC $B0                         ; $9AC2B9  65 B0        MX
    STA $B0                         ; $9AC2BB  85 B0        MX
    LDA $DF86,X                     ; $9AC2BD  BD 86 DF     MX
    ADC $1069                       ; $9AC2C0  6D 69 10     MX
    STA $0F5A                       ; $9AC2C3  8D 5A 0F     MX
    LDA $DF88,X                     ; $9AC2C6  BD 88 DF     MX
    CLC                             ; $9AC2C9  18           MX
    ADC $B2                         ; $9AC2CA  65 B2        MX
    STA $B2                         ; $9AC2CC  85 B2        MX
    LDA $DF8A,X                     ; $9AC2CE  BD 8A DF     MX
    ADC $106B                       ; $9AC2D1  6D 6B 10     MX
    STA $0F5C                       ; $9AC2D4  8D 5C 0F     MX
    LDA $DF8C,X                     ; $9AC2D7  BD 8C DF     MX
    CLC                             ; $9AC2DA  18           MX
    ADC $B4                         ; $9AC2DB  65 B4        MX
    STA $B4                         ; $9AC2DD  85 B4        MX
    LDA $DF8E,X                     ; $9AC2DF  BD 8E DF     MX
    ADC $106D                       ; $9AC2E2  6D 6D 10     MX
    STA $0F5E                       ; $9AC2E5  8D 5E 0F     MX
    LDA $DF90,X                     ; $9AC2E8  BD 90 DF     MX
    CLC                             ; $9AC2EB  18           MX
    ADC $B6                         ; $9AC2EC  65 B6        MX
    STA $B6                         ; $9AC2EE  85 B6        MX
    LDA $DF92,X                     ; $9AC2F0  BD 92 DF     MX
    ADC $106F                       ; $9AC2F3  6D 6F 10     MX
    STA $0F60                       ; $9AC2F6  8D 60 0F     MX
    LDA $DF94,X                     ; $9AC2F9  BD 94 DF     MX
    CLC                             ; $9AC2FC  18           MX
    ADC $B8                         ; $9AC2FD  65 B8        MX
    STA $B8                         ; $9AC2FF  85 B8        MX
    LDA $DF96,X                     ; $9AC301  BD 96 DF     MX
    ADC $1071                       ; $9AC304  6D 71 10     MX
    STA $0F62                       ; $9AC307  8D 62 0F     MX
    LDA $DF98,X                     ; $9AC30A  BD 98 DF     MX
    CLC                             ; $9AC30D  18           MX
    ADC $BA                         ; $9AC30E  65 BA        MX
    STA $BA                         ; $9AC310  85 BA        MX
    LDA $DF9A,X                     ; $9AC312  BD 9A DF     MX
    ADC $1073                       ; $9AC315  6D 73 10     MX
    STA $0F64                       ; $9AC318  8D 64 0F     MX
    LDA $DF9C,X                     ; $9AC31B  BD 9C DF     MX
    CLC                             ; $9AC31E  18           MX
    ADC $BC                         ; $9AC31F  65 BC        MX
    STA $BC                         ; $9AC321  85 BC        MX
    LDA $DF9E,X                     ; $9AC323  BD 9E DF     MX
    ADC $1075                       ; $9AC326  6D 75 10     MX
    STA $0F66                       ; $9AC329  8D 66 0F     MX
    LDA $DFA0,X                     ; $9AC32C  BD A0 DF     MX
    CLC                             ; $9AC32F  18           MX
    ADC $BE                         ; $9AC330  65 BE        MX
    STA $BE                         ; $9AC332  85 BE        MX
    LDA $DFA2,X                     ; $9AC334  BD A2 DF     MX
    ADC $1077                       ; $9AC337  6D 77 10     MX
    STA $0F68                       ; $9AC33A  8D 68 0F     MX
    LDA $DFA4,X                     ; $9AC33D  BD A4 DF     MX
    CLC                             ; $9AC340  18           MX
    ADC $C0                         ; $9AC341  65 C0        MX
    STA $C0                         ; $9AC343  85 C0        MX
    LDA $DFA6,X                     ; $9AC345  BD A6 DF     MX
    ADC $1079                       ; $9AC348  6D 79 10     MX
    STA $0F6A                       ; $9AC34B  8D 6A 0F     MX
    LDA $DFA8,X                     ; $9AC34E  BD A8 DF     MX
    CLC                             ; $9AC351  18           MX
    ADC $C2                         ; $9AC352  65 C2        MX
    STA $C2                         ; $9AC354  85 C2        MX
    LDA $DFAA,X                     ; $9AC356  BD AA DF     MX
    ADC $107B                       ; $9AC359  6D 7B 10     MX
    STA $0F6C                       ; $9AC35C  8D 6C 0F     MX
    LDA $DFAC,X                     ; $9AC35F  BD AC DF     MX
    CLC                             ; $9AC362  18           MX
    ADC $C4                         ; $9AC363  65 C4        MX
    STA $C4                         ; $9AC365  85 C4        MX
    LDA $DFAE,X                     ; $9AC367  BD AE DF     MX
    ADC $107D                       ; $9AC36A  6D 7D 10     MX
    STA $0F6E                       ; $9AC36D  8D 6E 0F     MX
    LDA $DFB0,X                     ; $9AC370  BD B0 DF     MX
    CLC                             ; $9AC373  18           MX
    ADC $C6                         ; $9AC374  65 C6        MX
    STA $C6                         ; $9AC376  85 C6        MX
    LDA $DFB2,X                     ; $9AC378  BD B2 DF     MX
    ADC $107F                       ; $9AC37B  6D 7F 10     MX
    STA $0F70                       ; $9AC37E  8D 70 0F     MX
    LDA $DFB4,X                     ; $9AC381  BD B4 DF     MX
    CLC                             ; $9AC384  18           MX
    ADC $C8                         ; $9AC385  65 C8        MX
    STA $C8                         ; $9AC387  85 C8        MX
    LDA $DFB6,X                     ; $9AC389  BD B6 DF     MX
    ADC $1081                       ; $9AC38C  6D 81 10     MX
    STA $0F72                       ; $9AC38F  8D 72 0F     MX
    LDA $DFB8,X                     ; $9AC392  BD B8 DF     MX
    CLC                             ; $9AC395  18           MX
    ADC $CA                         ; $9AC396  65 CA        MX
    STA $CA                         ; $9AC398  85 CA        MX
    LDA $DFBA,X                     ; $9AC39A  BD BA DF     MX
    ADC $1083                       ; $9AC39D  6D 83 10     MX
    STA $0F74                       ; $9AC3A0  8D 74 0F     MX
    LDA $DFBC,X                     ; $9AC3A3  BD BC DF     MX
    CLC                             ; $9AC3A6  18           MX
    ADC $CC                         ; $9AC3A7  65 CC        MX
    STA $CC                         ; $9AC3A9  85 CC        MX
    LDA $DFBE,X                     ; $9AC3AB  BD BE DF     MX
    ADC $1085                       ; $9AC3AE  6D 85 10     MX
    STA $0F76                       ; $9AC3B1  8D 76 0F     MX
    LDA $DFC0,X                     ; $9AC3B4  BD C0 DF     MX
    CLC                             ; $9AC3B7  18           MX
    ADC $CE                         ; $9AC3B8  65 CE        MX
    STA $CE                         ; $9AC3BA  85 CE        MX
    LDA $DFC2,X                     ; $9AC3BC  BD C2 DF     MX
    ADC $1087                       ; $9AC3BF  6D 87 10     MX
    STA $0F78                       ; $9AC3C2  8D 78 0F     MX
    LDA $DFC4,X                     ; $9AC3C5  BD C4 DF     MX
    CLC                             ; $9AC3C8  18           MX
    ADC $D0                         ; $9AC3C9  65 D0        MX
    STA $D0                         ; $9AC3CB  85 D0        MX
    LDA $DFC6,X                     ; $9AC3CD  BD C6 DF     MX
    ADC $1089                       ; $9AC3D0  6D 89 10     MX
    STA $0F7A                       ; $9AC3D3  8D 7A 0F     MX
    LDA $DFC8,X                     ; $9AC3D6  BD C8 DF     MX
    CLC                             ; $9AC3D9  18           MX
    ADC $D2                         ; $9AC3DA  65 D2        MX
    STA $D2                         ; $9AC3DC  85 D2        MX
    LDA $DFCA,X                     ; $9AC3DE  BD CA DF     MX
    ADC $108B                       ; $9AC3E1  6D 8B 10     MX
    STA $0F7C                       ; $9AC3E4  8D 7C 0F     MX
    LDA $DFCC,X                     ; $9AC3E7  BD CC DF     MX
    CLC                             ; $9AC3EA  18           MX
    ADC $D4                         ; $9AC3EB  65 D4        MX
    STA $D4                         ; $9AC3ED  85 D4        MX
    LDA $DFCE,X                     ; $9AC3EF  BD CE DF     MX
    ADC $108D                       ; $9AC3F2  6D 8D 10     MX
    STA $0F7E                       ; $9AC3F5  8D 7E 0F     MX
    LDA $DFD0,X                     ; $9AC3F8  BD D0 DF     MX
    CLC                             ; $9AC3FB  18           MX
    ADC $D6                         ; $9AC3FC  65 D6        MX
    STA $D6                         ; $9AC3FE  85 D6        MX
    LDA $DFD2,X                     ; $9AC400  BD D2 DF     MX
    ADC $108F                       ; $9AC403  6D 8F 10     MX
    STA $0F80                       ; $9AC406  8D 80 0F     MX
    LDA $DFD4,X                     ; $9AC409  BD D4 DF     MX
    CLC                             ; $9AC40C  18           MX
    ADC $D8                         ; $9AC40D  65 D8        MX
    STA $D8                         ; $9AC40F  85 D8        MX
    LDA $DFD6,X                     ; $9AC411  BD D6 DF     MX
    ADC $1091                       ; $9AC414  6D 91 10     MX
    STA $0F82                       ; $9AC417  8D 82 0F     MX
    LDA $DFD8,X                     ; $9AC41A  BD D8 DF     MX
    CLC                             ; $9AC41D  18           MX
    ADC $DA                         ; $9AC41E  65 DA        MX
    STA $DA                         ; $9AC420  85 DA        MX
    LDA $DFDA,X                     ; $9AC422  BD DA DF     MX
    ADC $1093                       ; $9AC425  6D 93 10     MX
    STA $0F84                       ; $9AC428  8D 84 0F     MX
    LDA $DFDC,X                     ; $9AC42B  BD DC DF     MX
    CLC                             ; $9AC42E  18           MX
    ADC $DC                         ; $9AC42F  65 DC        MX
    STA $DC                         ; $9AC431  85 DC        MX
    LDA $DFDE,X                     ; $9AC433  BD DE DF     MX
    ADC $1095                       ; $9AC436  6D 95 10     MX
    STA $0F86                       ; $9AC439  8D 86 0F     MX
    LDA $DFE0,X                     ; $9AC43C  BD E0 DF     MX
    CLC                             ; $9AC43F  18           MX
    ADC $DE                         ; $9AC440  65 DE        MX
    STA $DE                         ; $9AC442  85 DE        MX
    LDA $DFE2,X                     ; $9AC444  BD E2 DF     MX
    ADC $1097                       ; $9AC447  6D 97 10     MX
    STA $0F88                       ; $9AC44A  8D 88 0F     MX
    LDA $DFE4,X                     ; $9AC44D  BD E4 DF     MX
    CLC                             ; $9AC450  18           MX
    ADC $E0                         ; $9AC451  65 E0        MX
    STA $E0                         ; $9AC453  85 E0        MX
    LDA $DFE6,X                     ; $9AC455  BD E6 DF     MX
    ADC $1099                       ; $9AC458  6D 99 10     MX
    STA $0F8A                       ; $9AC45B  8D 8A 0F     MX
    LDA $DFE8,X                     ; $9AC45E  BD E8 DF     MX
    CLC                             ; $9AC461  18           MX
    ADC $E2                         ; $9AC462  65 E2        MX
    STA $E2                         ; $9AC464  85 E2        MX
    LDA $DFEA,X                     ; $9AC466  BD EA DF     MX
    ADC $109B                       ; $9AC469  6D 9B 10     MX
    STA $0F8C                       ; $9AC46C  8D 8C 0F     MX
    LDA $DFEC,X                     ; $9AC46F  BD EC DF     MX
    CLC                             ; $9AC472  18           MX
    ADC $E4                         ; $9AC473  65 E4        MX
    STA $E4                         ; $9AC475  85 E4        MX
    LDA $DFEE,X                     ; $9AC477  BD EE DF     MX
    ADC $109D                       ; $9AC47A  6D 9D 10     MX
    STA $0F8E                       ; $9AC47D  8D 8E 0F     MX
    LDA $DFF0,X                     ; $9AC480  BD F0 DF     MX
    CLC                             ; $9AC483  18           MX
    ADC $E6                         ; $9AC484  65 E6        MX
    STA $E6                         ; $9AC486  85 E6        MX
    LDA $DFF2,X                     ; $9AC488  BD F2 DF     MX
    ADC $109F                       ; $9AC48B  6D 9F 10     MX
    STA $0F90                       ; $9AC48E  8D 90 0F     MX
    LDA #$0000                      ; $9AC491  A9 00 00     MX
    TCD                             ; $9AC494  5B           MX
    JMP L_9ACC64                    ; $9AC495  4C 64 CC     MX
L_9AC498:
    STA $0E7D                       ; $9AC498  8D 7D 0E     MX
    EOR #$FFFF                      ; $9AC49B  49 FF FF     MX
    CLC                             ; $9AC49E  18           MX
    ADC #$0001                      ; $9AC49F  69 01 00     MX
    ASL                             ; $9AC4A2  0A           MX
    TAX                             ; $9AC4A3  AA           MX
    LDA $EF04,X                     ; $9AC4A4  BD 04 EF     MX
    TAX                             ; $9AC4A7  AA           MX
    LDA #$0600                      ; $9AC4A8  A9 00 06     MX
    TCD                             ; $9AC4AB  5B           MX
    LDA $00                         ; $9AC4AC  A5 00        MX
    SEC                             ; $9AC4AE  38           MX
    SBC $DE24,X                     ; $9AC4AF  FD 24 DE     MX
    STA $00                         ; $9AC4B2  85 00        MX
    LDA $0FB9                       ; $9AC4B4  AD B9 0F     MX
    SBC $DE26,X                     ; $9AC4B7  FD 26 DE     MX
    STA $0EAA                       ; $9AC4BA  8D AA 0E     MX
    LDA $02                         ; $9AC4BD  A5 02        MX
    SEC                             ; $9AC4BF  38           MX
    SBC $DE28,X                     ; $9AC4C0  FD 28 DE     MX
    STA $02                         ; $9AC4C3  85 02        MX
    LDA $0FBB                       ; $9AC4C5  AD BB 0F     MX
    SBC $DE2A,X                     ; $9AC4C8  FD 2A DE     MX
    STA $0EAC                       ; $9AC4CB  8D AC 0E     MX
    LDA $04                         ; $9AC4CE  A5 04        MX
    SEC                             ; $9AC4D0  38           MX
    SBC $DE2C,X                     ; $9AC4D1  FD 2C DE     MX
    STA $04                         ; $9AC4D4  85 04        MX
    LDA $0FBD                       ; $9AC4D6  AD BD 0F     MX
    SBC $DE2E,X                     ; $9AC4D9  FD 2E DE     MX
    STA $0EAE                       ; $9AC4DC  8D AE 0E     MX
    LDA $06                         ; $9AC4DF  A5 06        MX
    SEC                             ; $9AC4E1  38           MX
    SBC $DE30,X                     ; $9AC4E2  FD 30 DE     MX
    STA $06                         ; $9AC4E5  85 06        MX
    LDA $0FBF                       ; $9AC4E7  AD BF 0F     MX
    SBC $DE32,X                     ; $9AC4EA  FD 32 DE     MX
    STA $0EB0                       ; $9AC4ED  8D B0 0E     MX
    LDA $08                         ; $9AC4F0  A5 08        MX
    SEC                             ; $9AC4F2  38           MX
    SBC $DE34,X                     ; $9AC4F3  FD 34 DE     MX
    STA $08                         ; $9AC4F6  85 08        MX
    LDA $0FC1                       ; $9AC4F8  AD C1 0F     MX
    SBC $DE36,X                     ; $9AC4FB  FD 36 DE     MX
    STA $0EB2                       ; $9AC4FE  8D B2 0E     MX
    LDA $0A                         ; $9AC501  A5 0A        MX
    SEC                             ; $9AC503  38           MX
    SBC $DE38,X                     ; $9AC504  FD 38 DE     MX
    STA $0A                         ; $9AC507  85 0A        MX
    LDA $0FC3                       ; $9AC509  AD C3 0F     MX
    SBC $DE3A,X                     ; $9AC50C  FD 3A DE     MX
    STA $0EB4                       ; $9AC50F  8D B4 0E     MX
    LDA $0C                         ; $9AC512  A5 0C        MX
    SEC                             ; $9AC514  38           MX
    SBC $DE3C,X                     ; $9AC515  FD 3C DE     MX
    STA $0C                         ; $9AC518  85 0C        MX
    LDA $0FC5                       ; $9AC51A  AD C5 0F     MX
    SBC $DE3E,X                     ; $9AC51D  FD 3E DE     MX
    STA $0EB6                       ; $9AC520  8D B6 0E     MX
    LDA $0E                         ; $9AC523  A5 0E        MX
    SEC                             ; $9AC525  38           MX
    SBC $DE40,X                     ; $9AC526  FD 40 DE     MX
    STA $0E                         ; $9AC529  85 0E        MX
    LDA $0FC7                       ; $9AC52B  AD C7 0F     MX
    SBC $DE42,X                     ; $9AC52E  FD 42 DE     MX
    STA $0EB8                       ; $9AC531  8D B8 0E     MX
    LDA $10                         ; $9AC534  A5 10        MX
    SEC                             ; $9AC536  38           MX
    SBC $DE44,X                     ; $9AC537  FD 44 DE     MX
    STA $10                         ; $9AC53A  85 10        MX
    LDA $0FC9                       ; $9AC53C  AD C9 0F     MX
    SBC $DE46,X                     ; $9AC53F  FD 46 DE     MX
    STA $0EBA                       ; $9AC542  8D BA 0E     MX
    LDA $12                         ; $9AC545  A5 12        MX
    SEC                             ; $9AC547  38           MX
    SBC $DE48,X                     ; $9AC548  FD 48 DE     MX
    STA $12                         ; $9AC54B  85 12        MX
    LDA $0FCB                       ; $9AC54D  AD CB 0F     MX
    SBC $DE4A,X                     ; $9AC550  FD 4A DE     MX
    STA $0EBC                       ; $9AC553  8D BC 0E     MX
    LDA $14                         ; $9AC556  A5 14        MX
    SEC                             ; $9AC558  38           MX
    SBC $DE4C,X                     ; $9AC559  FD 4C DE     MX
    STA $14                         ; $9AC55C  85 14        MX
    LDA $0FCD                       ; $9AC55E  AD CD 0F     MX
    SBC $DE4E,X                     ; $9AC561  FD 4E DE     MX
    STA $0EBE                       ; $9AC564  8D BE 0E     MX
    LDA $16                         ; $9AC567  A5 16        MX
    SEC                             ; $9AC569  38           MX
    SBC $DE50,X                     ; $9AC56A  FD 50 DE     MX
    STA $16                         ; $9AC56D  85 16        MX
    LDA $0FCF                       ; $9AC56F  AD CF 0F     MX
    SBC $DE52,X                     ; $9AC572  FD 52 DE     MX
    STA $0EC0                       ; $9AC575  8D C0 0E     MX
    LDA $18                         ; $9AC578  A5 18        MX
    SEC                             ; $9AC57A  38           MX
    SBC $DE54,X                     ; $9AC57B  FD 54 DE     MX
    STA $18                         ; $9AC57E  85 18        MX
    LDA $0FD1                       ; $9AC580  AD D1 0F     MX
    SBC $DE56,X                     ; $9AC583  FD 56 DE     MX
    STA $0EC2                       ; $9AC586  8D C2 0E     MX
    LDA $1A                         ; $9AC589  A5 1A        MX
    SEC                             ; $9AC58B  38           MX
    SBC $DE58,X                     ; $9AC58C  FD 58 DE     MX
    STA $1A                         ; $9AC58F  85 1A        MX
    LDA $0FD3                       ; $9AC591  AD D3 0F     MX
    SBC $DE5A,X                     ; $9AC594  FD 5A DE     MX
    STA $0EC4                       ; $9AC597  8D C4 0E     MX
    LDA $1C                         ; $9AC59A  A5 1C        MX
    SEC                             ; $9AC59C  38           MX
    SBC $DE5C,X                     ; $9AC59D  FD 5C DE     MX
    STA $1C                         ; $9AC5A0  85 1C        MX
    LDA $0FD5                       ; $9AC5A2  AD D5 0F     MX
    SBC $DE5E,X                     ; $9AC5A5  FD 5E DE     MX
    STA $0EC6                       ; $9AC5A8  8D C6 0E     MX
    LDA $1E                         ; $9AC5AB  A5 1E        MX
    SEC                             ; $9AC5AD  38           MX
    SBC $DE60,X                     ; $9AC5AE  FD 60 DE     MX
    STA $1E                         ; $9AC5B1  85 1E        MX
    LDA $0FD7                       ; $9AC5B3  AD D7 0F     MX
    SBC $DE62,X                     ; $9AC5B6  FD 62 DE     MX
    STA $0EC8                       ; $9AC5B9  8D C8 0E     MX
    LDA $20                         ; $9AC5BC  A5 20        MX
    SEC                             ; $9AC5BE  38           MX
    SBC $DE64,X                     ; $9AC5BF  FD 64 DE     MX
    STA $20                         ; $9AC5C2  85 20        MX
    LDA $0FD9                       ; $9AC5C4  AD D9 0F     MX
    SBC $DE66,X                     ; $9AC5C7  FD 66 DE     MX
    STA $0ECA                       ; $9AC5CA  8D CA 0E     MX
    LDA $22                         ; $9AC5CD  A5 22        MX
    SEC                             ; $9AC5CF  38           MX
    SBC $DE68,X                     ; $9AC5D0  FD 68 DE     MX
    STA $22                         ; $9AC5D3  85 22        MX
    LDA $0FDB                       ; $9AC5D5  AD DB 0F     MX
    SBC $DE6A,X                     ; $9AC5D8  FD 6A DE     MX
    STA $0ECC                       ; $9AC5DB  8D CC 0E     MX
    LDA $24                         ; $9AC5DE  A5 24        MX
    SEC                             ; $9AC5E0  38           MX
    SBC $DE6C,X                     ; $9AC5E1  FD 6C DE     MX
    STA $24                         ; $9AC5E4  85 24        MX
    LDA $0FDD                       ; $9AC5E6  AD DD 0F     MX
    SBC $DE6E,X                     ; $9AC5E9  FD 6E DE     MX
    STA $0ECE                       ; $9AC5EC  8D CE 0E     MX
    LDA $26                         ; $9AC5EF  A5 26        MX
    SEC                             ; $9AC5F1  38           MX
    SBC $DE70,X                     ; $9AC5F2  FD 70 DE     MX
    STA $26                         ; $9AC5F5  85 26        MX
    LDA $0FDF                       ; $9AC5F7  AD DF 0F     MX
    SBC $DE72,X                     ; $9AC5FA  FD 72 DE     MX
    STA $0ED0                       ; $9AC5FD  8D D0 0E     MX
    LDA $28                         ; $9AC600  A5 28        MX
    SEC                             ; $9AC602  38           MX
    SBC $DE74,X                     ; $9AC603  FD 74 DE     MX
    STA $28                         ; $9AC606  85 28        MX
    LDA $0FE1                       ; $9AC608  AD E1 0F     MX
    SBC $DE76,X                     ; $9AC60B  FD 76 DE     MX
    STA $0ED2                       ; $9AC60E  8D D2 0E     MX
    LDA $2A                         ; $9AC611  A5 2A        MX
    SEC                             ; $9AC613  38           MX
    SBC $DE78,X                     ; $9AC614  FD 78 DE     MX
    STA $2A                         ; $9AC617  85 2A        MX
    LDA $0FE3                       ; $9AC619  AD E3 0F     MX
    SBC $DE7A,X                     ; $9AC61C  FD 7A DE     MX
    STA $0ED4                       ; $9AC61F  8D D4 0E     MX
    LDA $2C                         ; $9AC622  A5 2C        MX
    SEC                             ; $9AC624  38           MX
    SBC $DE7C,X                     ; $9AC625  FD 7C DE     MX
    STA $2C                         ; $9AC628  85 2C        MX
    LDA $0FE5                       ; $9AC62A  AD E5 0F     MX
    SBC $DE7E,X                     ; $9AC62D  FD 7E DE     MX
    STA $0ED6                       ; $9AC630  8D D6 0E     MX
    LDA $2E                         ; $9AC633  A5 2E        MX
    SEC                             ; $9AC635  38           MX
    SBC $DE80,X                     ; $9AC636  FD 80 DE     MX
    STA $2E                         ; $9AC639  85 2E        MX
    LDA $0FE7                       ; $9AC63B  AD E7 0F     MX
    SBC $DE82,X                     ; $9AC63E  FD 82 DE     MX
    STA $0ED8                       ; $9AC641  8D D8 0E     MX
    LDA $30                         ; $9AC644  A5 30        MX
    SEC                             ; $9AC646  38           MX
    SBC $DE84,X                     ; $9AC647  FD 84 DE     MX
    STA $30                         ; $9AC64A  85 30        MX
    LDA $0FE9                       ; $9AC64C  AD E9 0F     MX
    SBC $DE86,X                     ; $9AC64F  FD 86 DE     MX
    STA $0EDA                       ; $9AC652  8D DA 0E     MX
    LDA $32                         ; $9AC655  A5 32        MX
    SEC                             ; $9AC657  38           MX
    SBC $DE88,X                     ; $9AC658  FD 88 DE     MX
    STA $32                         ; $9AC65B  85 32        MX
    LDA $0FEB                       ; $9AC65D  AD EB 0F     MX
    SBC $DE8A,X                     ; $9AC660  FD 8A DE     MX
    STA $0EDC                       ; $9AC663  8D DC 0E     MX
    LDA $34                         ; $9AC666  A5 34        MX
    SEC                             ; $9AC668  38           MX
    SBC $DE8C,X                     ; $9AC669  FD 8C DE     MX
    STA $34                         ; $9AC66C  85 34        MX
    LDA $0FED                       ; $9AC66E  AD ED 0F     MX
    SBC $DE8E,X                     ; $9AC671  FD 8E DE     MX
    STA $0EDE                       ; $9AC674  8D DE 0E     MX
    LDA $36                         ; $9AC677  A5 36        MX
    SEC                             ; $9AC679  38           MX
    SBC $DE90,X                     ; $9AC67A  FD 90 DE     MX
    STA $36                         ; $9AC67D  85 36        MX
    LDA $0FEF                       ; $9AC67F  AD EF 0F     MX
    SBC $DE92,X                     ; $9AC682  FD 92 DE     MX
    STA $0EE0                       ; $9AC685  8D E0 0E     MX
    LDA $38                         ; $9AC688  A5 38        MX
    SEC                             ; $9AC68A  38           MX
    SBC $DE94,X                     ; $9AC68B  FD 94 DE     MX
    STA $38                         ; $9AC68E  85 38        MX
    LDA $0FF1                       ; $9AC690  AD F1 0F     MX
    SBC $DE96,X                     ; $9AC693  FD 96 DE     MX
    STA $0EE2                       ; $9AC696  8D E2 0E     MX
    LDA $3A                         ; $9AC699  A5 3A        MX
    SEC                             ; $9AC69B  38           MX
    SBC $DE98,X                     ; $9AC69C  FD 98 DE     MX
    STA $3A                         ; $9AC69F  85 3A        MX
    LDA $0FF3                       ; $9AC6A1  AD F3 0F     MX
    SBC $DE9A,X                     ; $9AC6A4  FD 9A DE     MX
    STA $0EE4                       ; $9AC6A7  8D E4 0E     MX
    LDA $3C                         ; $9AC6AA  A5 3C        MX
    SEC                             ; $9AC6AC  38           MX
    SBC $DE9C,X                     ; $9AC6AD  FD 9C DE     MX
    STA $3C                         ; $9AC6B0  85 3C        MX
    LDA $0FF5                       ; $9AC6B2  AD F5 0F     MX
    SBC $DE9E,X                     ; $9AC6B5  FD 9E DE     MX
    STA $0EE6                       ; $9AC6B8  8D E6 0E     MX
    LDA $3E                         ; $9AC6BB  A5 3E        MX
    SEC                             ; $9AC6BD  38           MX
    SBC $DEA0,X                     ; $9AC6BE  FD A0 DE     MX
    STA $3E                         ; $9AC6C1  85 3E        MX
    LDA $0FF7                       ; $9AC6C3  AD F7 0F     MX
    SBC $DEA2,X                     ; $9AC6C6  FD A2 DE     MX
    STA $0EE8                       ; $9AC6C9  8D E8 0E     MX
    LDA $40                         ; $9AC6CC  A5 40        MX
    SEC                             ; $9AC6CE  38           MX
    SBC $DEA4,X                     ; $9AC6CF  FD A4 DE     MX
    STA $40                         ; $9AC6D2  85 40        MX
    LDA $0FF9                       ; $9AC6D4  AD F9 0F     MX
    SBC $DEA6,X                     ; $9AC6D7  FD A6 DE     MX
    STA $0EEA                       ; $9AC6DA  8D EA 0E     MX
    LDA $42                         ; $9AC6DD  A5 42        MX
    SEC                             ; $9AC6DF  38           MX
    SBC $DEA8,X                     ; $9AC6E0  FD A8 DE     MX
    STA $42                         ; $9AC6E3  85 42        MX
    LDA $0FFB                       ; $9AC6E5  AD FB 0F     MX
    SBC $DEAA,X                     ; $9AC6E8  FD AA DE     MX
    STA $0EEC                       ; $9AC6EB  8D EC 0E     MX
    LDA $44                         ; $9AC6EE  A5 44        MX
    SEC                             ; $9AC6F0  38           MX
    SBC $DEAC,X                     ; $9AC6F1  FD AC DE     MX
    STA $44                         ; $9AC6F4  85 44        MX
    LDA $0FFD                       ; $9AC6F6  AD FD 0F     MX
    SBC $DEAE,X                     ; $9AC6F9  FD AE DE     MX
    STA $0EEE                       ; $9AC6FC  8D EE 0E     MX
    LDA $46                         ; $9AC6FF  A5 46        MX
    SEC                             ; $9AC701  38           MX
    SBC $DEB0,X                     ; $9AC702  FD B0 DE     MX
    STA $46                         ; $9AC705  85 46        MX
    LDA $0FFF                       ; $9AC707  AD FF 0F     MX
    SBC $DEB2,X                     ; $9AC70A  FD B2 DE     MX
    STA $0EF0                       ; $9AC70D  8D F0 0E     MX
    LDA $48                         ; $9AC710  A5 48        MX
    SEC                             ; $9AC712  38           MX
    SBC $DEB4,X                     ; $9AC713  FD B4 DE     MX
    STA $48                         ; $9AC716  85 48        MX
    LDA $1001                       ; $9AC718  AD 01 10     MX
    SBC $DEB6,X                     ; $9AC71B  FD B6 DE     MX
    STA $0EF2                       ; $9AC71E  8D F2 0E     MX
    LDA $4A                         ; $9AC721  A5 4A        MX
    SEC                             ; $9AC723  38           MX
    SBC $DEB8,X                     ; $9AC724  FD B8 DE     MX
    STA $4A                         ; $9AC727  85 4A        MX
    LDA $1003                       ; $9AC729  AD 03 10     MX
    SBC $DEBA,X                     ; $9AC72C  FD BA DE     MX
    STA $0EF4                       ; $9AC72F  8D F4 0E     MX
    LDA $4C                         ; $9AC732  A5 4C        MX
    SEC                             ; $9AC734  38           MX
    SBC $DEBC,X                     ; $9AC735  FD BC DE     MX
    STA $4C                         ; $9AC738  85 4C        MX
    LDA $1005                       ; $9AC73A  AD 05 10     MX
    SBC $DEBE,X                     ; $9AC73D  FD BE DE     MX
    STA $0EF6                       ; $9AC740  8D F6 0E     MX
    LDA $4E                         ; $9AC743  A5 4E        MX
    SEC                             ; $9AC745  38           MX
    SBC $DEC0,X                     ; $9AC746  FD C0 DE     MX
    STA $4E                         ; $9AC749  85 4E        MX
    LDA $1007                       ; $9AC74B  AD 07 10     MX
    SBC $DEC2,X                     ; $9AC74E  FD C2 DE     MX
    STA $0EF8                       ; $9AC751  8D F8 0E     MX
    LDA $50                         ; $9AC754  A5 50        MX
    SEC                             ; $9AC756  38           MX
    SBC $DEC4,X                     ; $9AC757  FD C4 DE     MX
    STA $50                         ; $9AC75A  85 50        MX
    LDA $1009                       ; $9AC75C  AD 09 10     MX
    SBC $DEC6,X                     ; $9AC75F  FD C6 DE     MX
    STA $0EFA                       ; $9AC762  8D FA 0E     MX
    LDA $52                         ; $9AC765  A5 52        MX
    SEC                             ; $9AC767  38           MX
    SBC $DEC8,X                     ; $9AC768  FD C8 DE     MX
    STA $52                         ; $9AC76B  85 52        MX
    LDA $100B                       ; $9AC76D  AD 0B 10     MX
    SBC $DECA,X                     ; $9AC770  FD CA DE     MX
    STA $0EFC                       ; $9AC773  8D FC 0E     MX
    LDA $54                         ; $9AC776  A5 54        MX
    SEC                             ; $9AC778  38           MX
    SBC $DECC,X                     ; $9AC779  FD CC DE     MX
    STA $54                         ; $9AC77C  85 54        MX
    LDA $100D                       ; $9AC77E  AD 0D 10     MX
    SBC $DECE,X                     ; $9AC781  FD CE DE     MX
    STA $0EFE                       ; $9AC784  8D FE 0E     MX
    LDA $56                         ; $9AC787  A5 56        MX
    SEC                             ; $9AC789  38           MX
    SBC $DED0,X                     ; $9AC78A  FD D0 DE     MX
    STA $56                         ; $9AC78D  85 56        MX
    LDA $100F                       ; $9AC78F  AD 0F 10     MX
    SBC $DED2,X                     ; $9AC792  FD D2 DE     MX
    STA $0F00                       ; $9AC795  8D 00 0F     MX
    LDA $58                         ; $9AC798  A5 58        MX
    SEC                             ; $9AC79A  38           MX
    SBC $DED4,X                     ; $9AC79B  FD D4 DE     MX
    STA $58                         ; $9AC79E  85 58        MX
    LDA $1011                       ; $9AC7A0  AD 11 10     MX
    SBC $DED6,X                     ; $9AC7A3  FD D6 DE     MX
    STA $0F02                       ; $9AC7A6  8D 02 0F     MX
    LDA $5A                         ; $9AC7A9  A5 5A        MX
    SEC                             ; $9AC7AB  38           MX
    SBC $DED8,X                     ; $9AC7AC  FD D8 DE     MX
    STA $5A                         ; $9AC7AF  85 5A        MX
    LDA $1013                       ; $9AC7B1  AD 13 10     MX
    SBC $DEDA,X                     ; $9AC7B4  FD DA DE     MX
    STA $0F04                       ; $9AC7B7  8D 04 0F     MX
    LDA $5C                         ; $9AC7BA  A5 5C        MX
    SEC                             ; $9AC7BC  38           MX
    SBC $DEDC,X                     ; $9AC7BD  FD DC DE     MX
    STA $5C                         ; $9AC7C0  85 5C        MX
    LDA $1015                       ; $9AC7C2  AD 15 10     MX
    SBC $DEDE,X                     ; $9AC7C5  FD DE DE     MX
    STA $0F06                       ; $9AC7C8  8D 06 0F     MX
    LDA $5E                         ; $9AC7CB  A5 5E        MX
    SEC                             ; $9AC7CD  38           MX
    SBC $DEE0,X                     ; $9AC7CE  FD E0 DE     MX
    STA $5E                         ; $9AC7D1  85 5E        MX
    LDA $1017                       ; $9AC7D3  AD 17 10     MX
    SBC $DEE2,X                     ; $9AC7D6  FD E2 DE     MX
    STA $0F08                       ; $9AC7D9  8D 08 0F     MX
    LDA $60                         ; $9AC7DC  A5 60        MX
    SEC                             ; $9AC7DE  38           MX
    SBC $DEE4,X                     ; $9AC7DF  FD E4 DE     MX
    STA $60                         ; $9AC7E2  85 60        MX
    LDA $1019                       ; $9AC7E4  AD 19 10     MX
    SBC $DEE6,X                     ; $9AC7E7  FD E6 DE     MX
    STA $0F0A                       ; $9AC7EA  8D 0A 0F     MX
    LDA $62                         ; $9AC7ED  A5 62        MX
    SEC                             ; $9AC7EF  38           MX
    SBC $DEE8,X                     ; $9AC7F0  FD E8 DE     MX
    STA $62                         ; $9AC7F3  85 62        MX
    LDA $101B                       ; $9AC7F5  AD 1B 10     MX
    SBC $DEEA,X                     ; $9AC7F8  FD EA DE     MX
    STA $0F0C                       ; $9AC7FB  8D 0C 0F     MX
    LDA $64                         ; $9AC7FE  A5 64        MX
    SEC                             ; $9AC800  38           MX
    SBC $DEEC,X                     ; $9AC801  FD EC DE     MX
    STA $64                         ; $9AC804  85 64        MX
    LDA $101D                       ; $9AC806  AD 1D 10     MX
    SBC $DEEE,X                     ; $9AC809  FD EE DE     MX
    STA $0F0E                       ; $9AC80C  8D 0E 0F     MX
    LDA $66                         ; $9AC80F  A5 66        MX
    SEC                             ; $9AC811  38           MX
    SBC $DEF0,X                     ; $9AC812  FD F0 DE     MX
    STA $66                         ; $9AC815  85 66        MX
    LDA $101F                       ; $9AC817  AD 1F 10     MX
    SBC $DEF2,X                     ; $9AC81A  FD F2 DE     MX
    STA $0F10                       ; $9AC81D  8D 10 0F     MX
    LDA $68                         ; $9AC820  A5 68        MX
    SEC                             ; $9AC822  38           MX
    SBC $DEF4,X                     ; $9AC823  FD F4 DE     MX
    STA $68                         ; $9AC826  85 68        MX
    LDA $1021                       ; $9AC828  AD 21 10     MX
    SBC $DEF6,X                     ; $9AC82B  FD F6 DE     MX
    STA $0F12                       ; $9AC82E  8D 12 0F     MX
    LDA $6A                         ; $9AC831  A5 6A        MX
    SEC                             ; $9AC833  38           MX
    SBC $DEF8,X                     ; $9AC834  FD F8 DE     MX
    STA $6A                         ; $9AC837  85 6A        MX
    LDA $1023                       ; $9AC839  AD 23 10     MX
    SBC $DEFA,X                     ; $9AC83C  FD FA DE     MX
    STA $0F14                       ; $9AC83F  8D 14 0F     MX
    LDA $6C                         ; $9AC842  A5 6C        MX
    SEC                             ; $9AC844  38           MX
    SBC $DEFC,X                     ; $9AC845  FD FC DE     MX
    STA $6C                         ; $9AC848  85 6C        MX
    LDA $1025                       ; $9AC84A  AD 25 10     MX
    SBC $DEFE,X                     ; $9AC84D  FD FE DE     MX
    STA $0F16                       ; $9AC850  8D 16 0F     MX
    LDA $6E                         ; $9AC853  A5 6E        MX
    SEC                             ; $9AC855  38           MX
    SBC $DF00,X                     ; $9AC856  FD 00 DF     MX
    STA $6E                         ; $9AC859  85 6E        MX
    LDA $1027                       ; $9AC85B  AD 27 10     MX
    SBC $DF02,X                     ; $9AC85E  FD 02 DF     MX
    STA $0F18                       ; $9AC861  8D 18 0F     MX
    LDA $70                         ; $9AC864  A5 70        MX
    SEC                             ; $9AC866  38           MX
    SBC $DF04,X                     ; $9AC867  FD 04 DF     MX
    STA $70                         ; $9AC86A  85 70        MX
    LDA $1029                       ; $9AC86C  AD 29 10     MX
    SBC $DF06,X                     ; $9AC86F  FD 06 DF     MX
    STA $0F1A                       ; $9AC872  8D 1A 0F     MX
    LDA $72                         ; $9AC875  A5 72        MX
    SEC                             ; $9AC877  38           MX
    SBC $DF08,X                     ; $9AC878  FD 08 DF     MX
    STA $72                         ; $9AC87B  85 72        MX
    LDA $102B                       ; $9AC87D  AD 2B 10     MX
    SBC $DF0A,X                     ; $9AC880  FD 0A DF     MX
    STA $0F1C                       ; $9AC883  8D 1C 0F     MX
    LDA $74                         ; $9AC886  A5 74        MX
    SEC                             ; $9AC888  38           MX
    SBC $DF0C,X                     ; $9AC889  FD 0C DF     MX
    STA $74                         ; $9AC88C  85 74        MX
    LDA $102D                       ; $9AC88E  AD 2D 10     MX
    SBC $DF0E,X                     ; $9AC891  FD 0E DF     MX
    STA $0F1E                       ; $9AC894  8D 1E 0F     MX
    LDA $76                         ; $9AC897  A5 76        MX
    SEC                             ; $9AC899  38           MX
    SBC $DF10,X                     ; $9AC89A  FD 10 DF     MX
    STA $76                         ; $9AC89D  85 76        MX
    LDA $102F                       ; $9AC89F  AD 2F 10     MX
    SBC $DF12,X                     ; $9AC8A2  FD 12 DF     MX
    STA $0F20                       ; $9AC8A5  8D 20 0F     MX
    LDA $78                         ; $9AC8A8  A5 78        MX
    SEC                             ; $9AC8AA  38           MX
    SBC $DF14,X                     ; $9AC8AB  FD 14 DF     MX
    STA $78                         ; $9AC8AE  85 78        MX
    LDA $1031                       ; $9AC8B0  AD 31 10     MX
    SBC $DF16,X                     ; $9AC8B3  FD 16 DF     MX
    STA $0F22                       ; $9AC8B6  8D 22 0F     MX
    LDA $7A                         ; $9AC8B9  A5 7A        MX
    SEC                             ; $9AC8BB  38           MX
    SBC $DF18,X                     ; $9AC8BC  FD 18 DF     MX
    STA $7A                         ; $9AC8BF  85 7A        MX
    LDA $1033                       ; $9AC8C1  AD 33 10     MX
    SBC $DF1A,X                     ; $9AC8C4  FD 1A DF     MX
    STA $0F24                       ; $9AC8C7  8D 24 0F     MX
    LDA $7C                         ; $9AC8CA  A5 7C        MX
    SEC                             ; $9AC8CC  38           MX
    SBC $DF1C,X                     ; $9AC8CD  FD 1C DF     MX
    STA $7C                         ; $9AC8D0  85 7C        MX
    LDA $1035                       ; $9AC8D2  AD 35 10     MX
    SBC $DF1E,X                     ; $9AC8D5  FD 1E DF     MX
    STA $0F26                       ; $9AC8D8  8D 26 0F     MX
    LDA $7E                         ; $9AC8DB  A5 7E        MX
    SEC                             ; $9AC8DD  38           MX
    SBC $DF20,X                     ; $9AC8DE  FD 20 DF     MX
    STA $7E                         ; $9AC8E1  85 7E        MX
    LDA $1037                       ; $9AC8E3  AD 37 10     MX
    SBC $DF22,X                     ; $9AC8E6  FD 22 DF     MX
    STA $0F28                       ; $9AC8E9  8D 28 0F     MX
    LDA $80                         ; $9AC8EC  A5 80        MX
    SEC                             ; $9AC8EE  38           MX
    SBC $DF24,X                     ; $9AC8EF  FD 24 DF     MX
    STA $80                         ; $9AC8F2  85 80        MX
    LDA $1039                       ; $9AC8F4  AD 39 10     MX
    SBC $DF26,X                     ; $9AC8F7  FD 26 DF     MX
    STA $0F2A                       ; $9AC8FA  8D 2A 0F     MX
    LDA $82                         ; $9AC8FD  A5 82        MX
    SEC                             ; $9AC8FF  38           MX
    SBC $DF28,X                     ; $9AC900  FD 28 DF     MX
    STA $82                         ; $9AC903  85 82        MX
    LDA $103B                       ; $9AC905  AD 3B 10     MX
    SBC $DF2A,X                     ; $9AC908  FD 2A DF     MX
    STA $0F2C                       ; $9AC90B  8D 2C 0F     MX
    LDA $84                         ; $9AC90E  A5 84        MX
    SEC                             ; $9AC910  38           MX
    SBC $DF2C,X                     ; $9AC911  FD 2C DF     MX
    STA $84                         ; $9AC914  85 84        MX
    LDA $103D                       ; $9AC916  AD 3D 10     MX
    SBC $DF2E,X                     ; $9AC919  FD 2E DF     MX
    STA $0F2E                       ; $9AC91C  8D 2E 0F     MX
    LDA $86                         ; $9AC91F  A5 86        MX
    SEC                             ; $9AC921  38           MX
    SBC $DF30,X                     ; $9AC922  FD 30 DF     MX
    STA $86                         ; $9AC925  85 86        MX
    LDA $103F                       ; $9AC927  AD 3F 10     MX
    SBC $DF32,X                     ; $9AC92A  FD 32 DF     MX
    STA $0F30                       ; $9AC92D  8D 30 0F     MX
    LDA $88                         ; $9AC930  A5 88        MX
    SEC                             ; $9AC932  38           MX
    SBC $DF34,X                     ; $9AC933  FD 34 DF     MX
    STA $88                         ; $9AC936  85 88        MX
    LDA $1041                       ; $9AC938  AD 41 10     MX
    SBC $DF36,X                     ; $9AC93B  FD 36 DF     MX
    STA $0F32                       ; $9AC93E  8D 32 0F     MX
    LDA $8A                         ; $9AC941  A5 8A        MX
    SEC                             ; $9AC943  38           MX
    SBC $DF38,X                     ; $9AC944  FD 38 DF     MX
    STA $8A                         ; $9AC947  85 8A        MX
    LDA $1043                       ; $9AC949  AD 43 10     MX
    SBC $DF3A,X                     ; $9AC94C  FD 3A DF     MX
    STA $0F34                       ; $9AC94F  8D 34 0F     MX
    LDA $8C                         ; $9AC952  A5 8C        MX
    SEC                             ; $9AC954  38           MX
    SBC $DF3C,X                     ; $9AC955  FD 3C DF     MX
    STA $8C                         ; $9AC958  85 8C        MX
    LDA $1045                       ; $9AC95A  AD 45 10     MX
    SBC $DF3E,X                     ; $9AC95D  FD 3E DF     MX
    STA $0F36                       ; $9AC960  8D 36 0F     MX
    LDA $8E                         ; $9AC963  A5 8E        MX
    SEC                             ; $9AC965  38           MX
    SBC $DF40,X                     ; $9AC966  FD 40 DF     MX
    STA $8E                         ; $9AC969  85 8E        MX
    LDA $1047                       ; $9AC96B  AD 47 10     MX
    SBC $DF42,X                     ; $9AC96E  FD 42 DF     MX
    STA $0F38                       ; $9AC971  8D 38 0F     MX
    LDA $90                         ; $9AC974  A5 90        MX
    SEC                             ; $9AC976  38           MX
    SBC $DF44,X                     ; $9AC977  FD 44 DF     MX
    STA $90                         ; $9AC97A  85 90        MX
    LDA $1049                       ; $9AC97C  AD 49 10     MX
    SBC $DF46,X                     ; $9AC97F  FD 46 DF     MX
    STA $0F3A                       ; $9AC982  8D 3A 0F     MX
    LDA $92                         ; $9AC985  A5 92        MX
    SEC                             ; $9AC987  38           MX
    SBC $DF48,X                     ; $9AC988  FD 48 DF     MX
    STA $92                         ; $9AC98B  85 92        MX
    LDA $104B                       ; $9AC98D  AD 4B 10     MX
    SBC $DF4A,X                     ; $9AC990  FD 4A DF     MX
    STA $0F3C                       ; $9AC993  8D 3C 0F     MX
    LDA $94                         ; $9AC996  A5 94        MX
    SEC                             ; $9AC998  38           MX
    SBC $DF4C,X                     ; $9AC999  FD 4C DF     MX
    STA $94                         ; $9AC99C  85 94        MX
    LDA $104D                       ; $9AC99E  AD 4D 10     MX
    SBC $DF4E,X                     ; $9AC9A1  FD 4E DF     MX
    STA $0F3E                       ; $9AC9A4  8D 3E 0F     MX
    LDA $96                         ; $9AC9A7  A5 96        MX
    SEC                             ; $9AC9A9  38           MX
    SBC $DF50,X                     ; $9AC9AA  FD 50 DF     MX
    STA $96                         ; $9AC9AD  85 96        MX
    LDA $104F                       ; $9AC9AF  AD 4F 10     MX
    SBC $DF52,X                     ; $9AC9B2  FD 52 DF     MX
    STA $0F40                       ; $9AC9B5  8D 40 0F     MX
    LDA $98                         ; $9AC9B8  A5 98        MX
    SEC                             ; $9AC9BA  38           MX
    SBC $DF54,X                     ; $9AC9BB  FD 54 DF     MX
    STA $98                         ; $9AC9BE  85 98        MX
    LDA $1051                       ; $9AC9C0  AD 51 10     MX
    SBC $DF56,X                     ; $9AC9C3  FD 56 DF     MX
    STA $0F42                       ; $9AC9C6  8D 42 0F     MX
    LDA $9A                         ; $9AC9C9  A5 9A        MX
    SEC                             ; $9AC9CB  38           MX
    SBC $DF58,X                     ; $9AC9CC  FD 58 DF     MX
    STA $9A                         ; $9AC9CF  85 9A        MX
    LDA $1053                       ; $9AC9D1  AD 53 10     MX
    SBC $DF5A,X                     ; $9AC9D4  FD 5A DF     MX
    STA $0F44                       ; $9AC9D7  8D 44 0F     MX
    LDA $9C                         ; $9AC9DA  A5 9C        MX
    SEC                             ; $9AC9DC  38           MX
    SBC $DF5C,X                     ; $9AC9DD  FD 5C DF     MX
    STA $9C                         ; $9AC9E0  85 9C        MX
    LDA $1055                       ; $9AC9E2  AD 55 10     MX
    SBC $DF5E,X                     ; $9AC9E5  FD 5E DF     MX
    STA $0F46                       ; $9AC9E8  8D 46 0F     MX
    LDA $9E                         ; $9AC9EB  A5 9E        MX
    SEC                             ; $9AC9ED  38           MX
    SBC $DF60,X                     ; $9AC9EE  FD 60 DF     MX
    STA $9E                         ; $9AC9F1  85 9E        MX
    LDA $1057                       ; $9AC9F3  AD 57 10     MX
    SBC $DF62,X                     ; $9AC9F6  FD 62 DF     MX
    STA $0F48                       ; $9AC9F9  8D 48 0F     MX
    LDA $A0                         ; $9AC9FC  A5 A0        MX
    SEC                             ; $9AC9FE  38           MX
    SBC $DF64,X                     ; $9AC9FF  FD 64 DF     MX
    STA $A0                         ; $9ACA02  85 A0        MX
    LDA $1059                       ; $9ACA04  AD 59 10     MX
    SBC $DF66,X                     ; $9ACA07  FD 66 DF     MX
    STA $0F4A                       ; $9ACA0A  8D 4A 0F     MX
    LDA $A2                         ; $9ACA0D  A5 A2        MX
    SEC                             ; $9ACA0F  38           MX
    SBC $DF68,X                     ; $9ACA10  FD 68 DF     MX
    STA $A2                         ; $9ACA13  85 A2        MX
    LDA $105B                       ; $9ACA15  AD 5B 10     MX
    SBC $DF6A,X                     ; $9ACA18  FD 6A DF     MX
    STA $0F4C                       ; $9ACA1B  8D 4C 0F     MX
    LDA $A4                         ; $9ACA1E  A5 A4        MX
    SEC                             ; $9ACA20  38           MX
    SBC $DF6C,X                     ; $9ACA21  FD 6C DF     MX
    STA $A4                         ; $9ACA24  85 A4        MX
    LDA $105D                       ; $9ACA26  AD 5D 10     MX
    SBC $DF6E,X                     ; $9ACA29  FD 6E DF     MX
    STA $0F4E                       ; $9ACA2C  8D 4E 0F     MX
    LDA $A6                         ; $9ACA2F  A5 A6        MX
    SEC                             ; $9ACA31  38           MX
    SBC $DF70,X                     ; $9ACA32  FD 70 DF     MX
    STA $A6                         ; $9ACA35  85 A6        MX
    LDA $105F                       ; $9ACA37  AD 5F 10     MX
    SBC $DF72,X                     ; $9ACA3A  FD 72 DF     MX
    STA $0F50                       ; $9ACA3D  8D 50 0F     MX
    LDA $A8                         ; $9ACA40  A5 A8        MX
    SEC                             ; $9ACA42  38           MX
    SBC $DF74,X                     ; $9ACA43  FD 74 DF     MX
    STA $A8                         ; $9ACA46  85 A8        MX
    LDA $1061                       ; $9ACA48  AD 61 10     MX
    SBC $DF76,X                     ; $9ACA4B  FD 76 DF     MX
    STA $0F52                       ; $9ACA4E  8D 52 0F     MX
    LDA $AA                         ; $9ACA51  A5 AA        MX
    SEC                             ; $9ACA53  38           MX
    SBC $DF78,X                     ; $9ACA54  FD 78 DF     MX
    STA $AA                         ; $9ACA57  85 AA        MX
    LDA $1063                       ; $9ACA59  AD 63 10     MX
    SBC $DF7A,X                     ; $9ACA5C  FD 7A DF     MX
    STA $0F54                       ; $9ACA5F  8D 54 0F     MX
    LDA $AC                         ; $9ACA62  A5 AC        MX
    SEC                             ; $9ACA64  38           MX
    SBC $DF7C,X                     ; $9ACA65  FD 7C DF     MX
    STA $AC                         ; $9ACA68  85 AC        MX
    LDA $1065                       ; $9ACA6A  AD 65 10     MX
    SBC $DF7E,X                     ; $9ACA6D  FD 7E DF     MX
    STA $0F56                       ; $9ACA70  8D 56 0F     MX
    LDA $AE                         ; $9ACA73  A5 AE        MX
    SEC                             ; $9ACA75  38           MX
    SBC $DF80,X                     ; $9ACA76  FD 80 DF     MX
    STA $AE                         ; $9ACA79  85 AE        MX
    LDA $1067                       ; $9ACA7B  AD 67 10     MX
    SBC $DF82,X                     ; $9ACA7E  FD 82 DF     MX
    STA $0F58                       ; $9ACA81  8D 58 0F     MX
    LDA $B0                         ; $9ACA84  A5 B0        MX
    SEC                             ; $9ACA86  38           MX
    SBC $DF84,X                     ; $9ACA87  FD 84 DF     MX
    STA $B0                         ; $9ACA8A  85 B0        MX
    LDA $1069                       ; $9ACA8C  AD 69 10     MX
    SBC $DF86,X                     ; $9ACA8F  FD 86 DF     MX
    STA $0F5A                       ; $9ACA92  8D 5A 0F     MX
    LDA $B2                         ; $9ACA95  A5 B2        MX
    SEC                             ; $9ACA97  38           MX
    SBC $DF88,X                     ; $9ACA98  FD 88 DF     MX
    STA $B2                         ; $9ACA9B  85 B2        MX
    LDA $106B                       ; $9ACA9D  AD 6B 10     MX
    SBC $DF8A,X                     ; $9ACAA0  FD 8A DF     MX
    STA $0F5C                       ; $9ACAA3  8D 5C 0F     MX
    LDA $B4                         ; $9ACAA6  A5 B4        MX
    SEC                             ; $9ACAA8  38           MX
    SBC $DF8C,X                     ; $9ACAA9  FD 8C DF     MX
    STA $B4                         ; $9ACAAC  85 B4        MX
    LDA $106D                       ; $9ACAAE  AD 6D 10     MX
    SBC $DF8E,X                     ; $9ACAB1  FD 8E DF     MX
    STA $0F5E                       ; $9ACAB4  8D 5E 0F     MX
    LDA $B6                         ; $9ACAB7  A5 B6        MX
    SEC                             ; $9ACAB9  38           MX
    SBC $DF90,X                     ; $9ACABA  FD 90 DF     MX
    STA $B6                         ; $9ACABD  85 B6        MX
    LDA $106F                       ; $9ACABF  AD 6F 10     MX
    SBC $DF92,X                     ; $9ACAC2  FD 92 DF     MX
    STA $0F60                       ; $9ACAC5  8D 60 0F     MX
    LDA $B8                         ; $9ACAC8  A5 B8        MX
    SEC                             ; $9ACACA  38           MX
    SBC $DF94,X                     ; $9ACACB  FD 94 DF     MX
    STA $B8                         ; $9ACACE  85 B8        MX
    LDA $1071                       ; $9ACAD0  AD 71 10     MX
    SBC $DF96,X                     ; $9ACAD3  FD 96 DF     MX
    STA $0F62                       ; $9ACAD6  8D 62 0F     MX
    LDA $BA                         ; $9ACAD9  A5 BA        MX
    SEC                             ; $9ACADB  38           MX
    SBC $DF98,X                     ; $9ACADC  FD 98 DF     MX
    STA $BA                         ; $9ACADF  85 BA        MX
    LDA $1073                       ; $9ACAE1  AD 73 10     MX
    SBC $DF9A,X                     ; $9ACAE4  FD 9A DF     MX
    STA $0F64                       ; $9ACAE7  8D 64 0F     MX
    LDA $BC                         ; $9ACAEA  A5 BC        MX
    SEC                             ; $9ACAEC  38           MX
    SBC $DF9C,X                     ; $9ACAED  FD 9C DF     MX
    STA $BC                         ; $9ACAF0  85 BC        MX
    LDA $1075                       ; $9ACAF2  AD 75 10     MX
    SBC $DF9E,X                     ; $9ACAF5  FD 9E DF     MX
    STA $0F66                       ; $9ACAF8  8D 66 0F     MX
    LDA $BE                         ; $9ACAFB  A5 BE        MX
    SEC                             ; $9ACAFD  38           MX
    SBC $DFA0,X                     ; $9ACAFE  FD A0 DF     MX
    STA $BE                         ; $9ACB01  85 BE        MX
    LDA $1077                       ; $9ACB03  AD 77 10     MX
    SBC $DFA2,X                     ; $9ACB06  FD A2 DF     MX
    STA $0F68                       ; $9ACB09  8D 68 0F     MX
    LDA $C0                         ; $9ACB0C  A5 C0        MX
    SEC                             ; $9ACB0E  38           MX
    SBC $DFA4,X                     ; $9ACB0F  FD A4 DF     MX
    STA $C0                         ; $9ACB12  85 C0        MX
    LDA $1079                       ; $9ACB14  AD 79 10     MX
    SBC $DFA6,X                     ; $9ACB17  FD A6 DF     MX
    STA $0F6A                       ; $9ACB1A  8D 6A 0F     MX
    LDA $C2                         ; $9ACB1D  A5 C2        MX
    SEC                             ; $9ACB1F  38           MX
    SBC $DFA8,X                     ; $9ACB20  FD A8 DF     MX
    STA $C2                         ; $9ACB23  85 C2        MX
    LDA $107B                       ; $9ACB25  AD 7B 10     MX
    SBC $DFAA,X                     ; $9ACB28  FD AA DF     MX
    STA $0F6C                       ; $9ACB2B  8D 6C 0F     MX
    LDA $C4                         ; $9ACB2E  A5 C4        MX
    SEC                             ; $9ACB30  38           MX
    SBC $DFAC,X                     ; $9ACB31  FD AC DF     MX
    STA $C4                         ; $9ACB34  85 C4        MX
    LDA $107D                       ; $9ACB36  AD 7D 10     MX
    SBC $DFAE,X                     ; $9ACB39  FD AE DF     MX
    STA $0F6E                       ; $9ACB3C  8D 6E 0F     MX
    LDA $C6                         ; $9ACB3F  A5 C6        MX
    SEC                             ; $9ACB41  38           MX
    SBC $DFB0,X                     ; $9ACB42  FD B0 DF     MX
    STA $C6                         ; $9ACB45  85 C6        MX
    LDA $107F                       ; $9ACB47  AD 7F 10     MX
    SBC $DFB2,X                     ; $9ACB4A  FD B2 DF     MX
    STA $0F70                       ; $9ACB4D  8D 70 0F     MX
    LDA $C8                         ; $9ACB50  A5 C8        MX
    SEC                             ; $9ACB52  38           MX
    SBC $DFB4,X                     ; $9ACB53  FD B4 DF     MX
    STA $C8                         ; $9ACB56  85 C8        MX
    LDA $1081                       ; $9ACB58  AD 81 10     MX
    SBC $DFB6,X                     ; $9ACB5B  FD B6 DF     MX
    STA $0F72                       ; $9ACB5E  8D 72 0F     MX
    LDA $CA                         ; $9ACB61  A5 CA        MX
    SEC                             ; $9ACB63  38           MX
    SBC $DFB8,X                     ; $9ACB64  FD B8 DF     MX
    STA $CA                         ; $9ACB67  85 CA        MX
    LDA $1083                       ; $9ACB69  AD 83 10     MX
    SBC $DFBA,X                     ; $9ACB6C  FD BA DF     MX
    STA $0F74                       ; $9ACB6F  8D 74 0F     MX
    LDA $CC                         ; $9ACB72  A5 CC        MX
    SEC                             ; $9ACB74  38           MX
    SBC $DFBC,X                     ; $9ACB75  FD BC DF     MX
    STA $CC                         ; $9ACB78  85 CC        MX
    LDA $1085                       ; $9ACB7A  AD 85 10     MX
    SBC $DFBE,X                     ; $9ACB7D  FD BE DF     MX
    STA $0F76                       ; $9ACB80  8D 76 0F     MX
    LDA $CE                         ; $9ACB83  A5 CE        MX
    SEC                             ; $9ACB85  38           MX
    SBC $DFC0,X                     ; $9ACB86  FD C0 DF     MX
    STA $CE                         ; $9ACB89  85 CE        MX
    LDA $1087                       ; $9ACB8B  AD 87 10     MX
    SBC $DFC2,X                     ; $9ACB8E  FD C2 DF     MX
    STA $0F78                       ; $9ACB91  8D 78 0F     MX
    LDA $D0                         ; $9ACB94  A5 D0        MX
    SEC                             ; $9ACB96  38           MX
    SBC $DFC4,X                     ; $9ACB97  FD C4 DF     MX
    STA $D0                         ; $9ACB9A  85 D0        MX
    LDA $1089                       ; $9ACB9C  AD 89 10     MX
    SBC $DFC6,X                     ; $9ACB9F  FD C6 DF     MX
    STA $0F7A                       ; $9ACBA2  8D 7A 0F     MX
    LDA $D2                         ; $9ACBA5  A5 D2        MX
    SEC                             ; $9ACBA7  38           MX
    SBC $DFC8,X                     ; $9ACBA8  FD C8 DF     MX
    STA $D2                         ; $9ACBAB  85 D2        MX
    LDA $108B                       ; $9ACBAD  AD 8B 10     MX
    SBC $DFCA,X                     ; $9ACBB0  FD CA DF     MX
    STA $0F7C                       ; $9ACBB3  8D 7C 0F     MX
    LDA $D4                         ; $9ACBB6  A5 D4        MX
    SEC                             ; $9ACBB8  38           MX
    SBC $DFCC,X                     ; $9ACBB9  FD CC DF     MX
    STA $D4                         ; $9ACBBC  85 D4        MX
    LDA $108D                       ; $9ACBBE  AD 8D 10     MX
    SBC $DFCE,X                     ; $9ACBC1  FD CE DF     MX
    STA $0F7E                       ; $9ACBC4  8D 7E 0F     MX
    LDA $D6                         ; $9ACBC7  A5 D6        MX
    SEC                             ; $9ACBC9  38           MX
    SBC $DFD0,X                     ; $9ACBCA  FD D0 DF     MX
    STA $D6                         ; $9ACBCD  85 D6        MX
    LDA $108F                       ; $9ACBCF  AD 8F 10     MX
    SBC $DFD2,X                     ; $9ACBD2  FD D2 DF     MX
    STA $0F80                       ; $9ACBD5  8D 80 0F     MX
    LDA $D8                         ; $9ACBD8  A5 D8        MX
    SEC                             ; $9ACBDA  38           MX
    SBC $DFD4,X                     ; $9ACBDB  FD D4 DF     MX
    STA $D8                         ; $9ACBDE  85 D8        MX
    LDA $1091                       ; $9ACBE0  AD 91 10     MX
    SBC $DFD6,X                     ; $9ACBE3  FD D6 DF     MX
    STA $0F82                       ; $9ACBE6  8D 82 0F     MX
    LDA $DA                         ; $9ACBE9  A5 DA        MX
    SEC                             ; $9ACBEB  38           MX
    SBC $DFD8,X                     ; $9ACBEC  FD D8 DF     MX
    STA $DA                         ; $9ACBEF  85 DA        MX
    LDA $1093                       ; $9ACBF1  AD 93 10     MX
    SBC $DFDA,X                     ; $9ACBF4  FD DA DF     MX
    STA $0F84                       ; $9ACBF7  8D 84 0F     MX
    LDA $DC                         ; $9ACBFA  A5 DC        MX
    SEC                             ; $9ACBFC  38           MX
    SBC $DFDC,X                     ; $9ACBFD  FD DC DF     MX
    STA $DC                         ; $9ACC00  85 DC        MX
    LDA $1095                       ; $9ACC02  AD 95 10     MX
    SBC $DFDE,X                     ; $9ACC05  FD DE DF     MX
    STA $0F86                       ; $9ACC08  8D 86 0F     MX
    LDA $DE                         ; $9ACC0B  A5 DE        MX
    SEC                             ; $9ACC0D  38           MX
    SBC $DFE0,X                     ; $9ACC0E  FD E0 DF     MX
    STA $DE                         ; $9ACC11  85 DE        MX
    LDA $1097                       ; $9ACC13  AD 97 10     MX
    SBC $DFE2,X                     ; $9ACC16  FD E2 DF     MX
    STA $0F88                       ; $9ACC19  8D 88 0F     MX
    LDA $E0                         ; $9ACC1C  A5 E0        MX
    SEC                             ; $9ACC1E  38           MX
    SBC $DFE4,X                     ; $9ACC1F  FD E4 DF     MX
    STA $E0                         ; $9ACC22  85 E0        MX
    LDA $1099                       ; $9ACC24  AD 99 10     MX
    SBC $DFE6,X                     ; $9ACC27  FD E6 DF     MX
    STA $0F8A                       ; $9ACC2A  8D 8A 0F     MX
    LDA $E2                         ; $9ACC2D  A5 E2        MX
    SEC                             ; $9ACC2F  38           MX
    SBC $DFE8,X                     ; $9ACC30  FD E8 DF     MX
    STA $E2                         ; $9ACC33  85 E2        MX
    LDA $109B                       ; $9ACC35  AD 9B 10     MX
    SBC $DFEA,X                     ; $9ACC38  FD EA DF     MX
    STA $0F8C                       ; $9ACC3B  8D 8C 0F     MX
    LDA $E4                         ; $9ACC3E  A5 E4        MX
    SEC                             ; $9ACC40  38           MX
    SBC $DFEC,X                     ; $9ACC41  FD EC DF     MX
    STA $E4                         ; $9ACC44  85 E4        MX
    LDA $109D                       ; $9ACC46  AD 9D 10     MX
    SBC $DFEE,X                     ; $9ACC49  FD EE DF     MX
    STA $0F8E                       ; $9ACC4C  8D 8E 0F     MX
    LDA $E6                         ; $9ACC4F  A5 E6        MX
    SEC                             ; $9ACC51  38           MX
    SBC $DFF0,X                     ; $9ACC52  FD F0 DF     MX
    STA $E6                         ; $9ACC55  85 E6        MX
    LDA $109F                       ; $9ACC57  AD 9F 10     MX
    SBC $DFF2,X                     ; $9ACC5A  FD F2 DF     MX
    STA $0F90                       ; $9ACC5D  8D 90 0F     MX
    LDA #$0000                      ; $9ACC60  A9 00 00     MX
    TCD                             ; $9ACC63  5B           MX
L_9ACC64:
    LDA $0F90                       ; $9ACC64  AD 90 0F     MX
    STA $0F92                       ; $9ACC67  8D 92 0F     MX
    STA $0F94                       ; $9ACC6A  8D 94 0F     MX
    STA $0F96                       ; $9ACC6D  8D 96 0F     MX
    STA $0F98                       ; $9ACC70  8D 98 0F     MX
    SEP #$10                        ; $9ACC73  E2 10        MX
    LDA #$013F                      ; $9ACC75  A9 3F 01     Mx
    SEC                             ; $9ACC78  38           Mx
    SBC $012B                       ; $9ACC79  ED 2B 01     Mx
    SEP #$20                        ; $9ACC7C  E2 20        Mx
    STA $0EA3                       ; $9ACC7E  8D A3 0E     mx
    REP #$20                        ; $9ACC81  C2 20        mx
    LDA #$011F                      ; $9ACC83  A9 1F 01     Mx
    SEC                             ; $9ACC86  38           Mx
    SBC $012B                       ; $9ACC87  ED 2B 01     Mx
    SEP #$20                        ; $9ACC8A  E2 20        Mx
    STA $0F9E                       ; $9ACC8C  8D 9E 0F     mx
    REP #$20                        ; $9ACC8F  C2 20        mx
    JMP L_9ADC67                    ; $9ACC91  4C 67 DC     Mx
L_9ACC94:
    LDA $0E7B                       ; $9ACC94  AD 7B 0E     MX
    BPL L_9ACC9C                    ; $9ACC97  10 03        MX
    JMP L_9AD46E                    ; $9ACC99  4C 6E D4     MX
L_9ACC9C:
    BNE L_9ACCA6                    ; $9ACC9C  D0 08        MX
    LDX $0E7D                       ; $9ACC9E  AE 7D 0E     MX
    BNE L_9ACCA6                    ; $9ACCA1  D0 03        MX
    JMP L_9ADC3A                    ; $9ACCA3  4C 3A DC     MX
L_9ACCA6:
    STA $0E7D                       ; $9ACCA6  8D 7D 0E     MX
    ASL                             ; $9ACCA9  0A           MX
    TAX                             ; $9ACCAA  AA           MX
    LDA $EF04,X                     ; $9ACCAB  BD 04 EF     MX
    TAX                             ; $9ACCAE  AA           MX
    LDA #$0600                      ; $9ACCAF  A9 00 06     MX
    TCD                             ; $9ACCB2  5B           MX
    LDA $DE24,X                     ; $9ACCB3  BD 24 DE     MX
    CLC                             ; $9ACCB6  18           MX
    ADC $00                         ; $9ACCB7  65 00        MX
    STA $00                         ; $9ACCB9  85 00        MX
    LDA $DE26,X                     ; $9ACCBB  BD 26 DE     MX
    ADC $0EAA                       ; $9ACCBE  6D AA 0E     MX
    STA $0FB9                       ; $9ACCC1  8D B9 0F     MX
    LDA $DE28,X                     ; $9ACCC4  BD 28 DE     MX
    CLC                             ; $9ACCC7  18           MX
    ADC $02                         ; $9ACCC8  65 02        MX
    STA $02                         ; $9ACCCA  85 02        MX
    LDA $DE2A,X                     ; $9ACCCC  BD 2A DE     MX
    ADC $0EAC                       ; $9ACCCF  6D AC 0E     MX
    STA $0FBB                       ; $9ACCD2  8D BB 0F     MX
    LDA $DE2C,X                     ; $9ACCD5  BD 2C DE     MX
    CLC                             ; $9ACCD8  18           MX
    ADC $04                         ; $9ACCD9  65 04        MX
    STA $04                         ; $9ACCDB  85 04        MX
    LDA $DE2E,X                     ; $9ACCDD  BD 2E DE     MX
    ADC $0EAE                       ; $9ACCE0  6D AE 0E     MX
    STA $0FBD                       ; $9ACCE3  8D BD 0F     MX
    LDA $DE30,X                     ; $9ACCE6  BD 30 DE     MX
    CLC                             ; $9ACCE9  18           MX
    ADC $06                         ; $9ACCEA  65 06        MX
    STA $06                         ; $9ACCEC  85 06        MX
    LDA $DE32,X                     ; $9ACCEE  BD 32 DE     MX
    ADC $0EB0                       ; $9ACCF1  6D B0 0E     MX
    STA $0FBF                       ; $9ACCF4  8D BF 0F     MX
    LDA $DE34,X                     ; $9ACCF7  BD 34 DE     MX
    CLC                             ; $9ACCFA  18           MX
    ADC $08                         ; $9ACCFB  65 08        MX
    STA $08                         ; $9ACCFD  85 08        MX
    LDA $DE36,X                     ; $9ACCFF  BD 36 DE     MX
    ADC $0EB2                       ; $9ACD02  6D B2 0E     MX
    STA $0FC1                       ; $9ACD05  8D C1 0F     MX
    LDA $DE38,X                     ; $9ACD08  BD 38 DE     MX
    CLC                             ; $9ACD0B  18           MX
    ADC $0A                         ; $9ACD0C  65 0A        MX
    STA $0A                         ; $9ACD0E  85 0A        MX
    LDA $DE3A,X                     ; $9ACD10  BD 3A DE     MX
    ADC $0EB4                       ; $9ACD13  6D B4 0E     MX
    STA $0FC3                       ; $9ACD16  8D C3 0F     MX
    LDA $DE3C,X                     ; $9ACD19  BD 3C DE     MX
    CLC                             ; $9ACD1C  18           MX
    ADC $0C                         ; $9ACD1D  65 0C        MX
    STA $0C                         ; $9ACD1F  85 0C        MX
    LDA $DE3E,X                     ; $9ACD21  BD 3E DE     MX
    ADC $0EB6                       ; $9ACD24  6D B6 0E     MX
    STA $0FC5                       ; $9ACD27  8D C5 0F     MX
    LDA $DE40,X                     ; $9ACD2A  BD 40 DE     MX
    CLC                             ; $9ACD2D  18           MX
    ADC $0E                         ; $9ACD2E  65 0E        MX
    STA $0E                         ; $9ACD30  85 0E        MX
    LDA $DE42,X                     ; $9ACD32  BD 42 DE     MX
    ADC $0EB8                       ; $9ACD35  6D B8 0E     MX
    STA $0FC7                       ; $9ACD38  8D C7 0F     MX
    LDA $DE44,X                     ; $9ACD3B  BD 44 DE     MX
    CLC                             ; $9ACD3E  18           MX
    ADC $10                         ; $9ACD3F  65 10        MX
    STA $10                         ; $9ACD41  85 10        MX
    LDA $DE46,X                     ; $9ACD43  BD 46 DE     MX
    ADC $0EBA                       ; $9ACD46  6D BA 0E     MX
    STA $0FC9                       ; $9ACD49  8D C9 0F     MX
    LDA $DE48,X                     ; $9ACD4C  BD 48 DE     MX
    CLC                             ; $9ACD4F  18           MX
    ADC $12                         ; $9ACD50  65 12        MX
    STA $12                         ; $9ACD52  85 12        MX
    LDA $DE4A,X                     ; $9ACD54  BD 4A DE     MX
    ADC $0EBC                       ; $9ACD57  6D BC 0E     MX
    STA $0FCB                       ; $9ACD5A  8D CB 0F     MX
    LDA $DE4C,X                     ; $9ACD5D  BD 4C DE     MX
    CLC                             ; $9ACD60  18           MX
    ADC $14                         ; $9ACD61  65 14        MX
    STA $14                         ; $9ACD63  85 14        MX
    LDA $DE4E,X                     ; $9ACD65  BD 4E DE     MX
    ADC $0EBE                       ; $9ACD68  6D BE 0E     MX
    STA $0FCD                       ; $9ACD6B  8D CD 0F     MX
    LDA $DE50,X                     ; $9ACD6E  BD 50 DE     MX
    CLC                             ; $9ACD71  18           MX
    ADC $16                         ; $9ACD72  65 16        MX
    STA $16                         ; $9ACD74  85 16        MX
    LDA $DE52,X                     ; $9ACD76  BD 52 DE     MX
    ADC $0EC0                       ; $9ACD79  6D C0 0E     MX
    STA $0FCF                       ; $9ACD7C  8D CF 0F     MX
    LDA $DE54,X                     ; $9ACD7F  BD 54 DE     MX
    CLC                             ; $9ACD82  18           MX
    ADC $18                         ; $9ACD83  65 18        MX
    STA $18                         ; $9ACD85  85 18        MX
    LDA $DE56,X                     ; $9ACD87  BD 56 DE     MX
    ADC $0EC2                       ; $9ACD8A  6D C2 0E     MX
    STA $0FD1                       ; $9ACD8D  8D D1 0F     MX
    LDA $DE58,X                     ; $9ACD90  BD 58 DE     MX
    CLC                             ; $9ACD93  18           MX
    ADC $1A                         ; $9ACD94  65 1A        MX
    STA $1A                         ; $9ACD96  85 1A        MX
    LDA $DE5A,X                     ; $9ACD98  BD 5A DE     MX
    ADC $0EC4                       ; $9ACD9B  6D C4 0E     MX
    STA $0FD3                       ; $9ACD9E  8D D3 0F     MX
    LDA $DE5C,X                     ; $9ACDA1  BD 5C DE     MX
    CLC                             ; $9ACDA4  18           MX
    ADC $1C                         ; $9ACDA5  65 1C        MX
    STA $1C                         ; $9ACDA7  85 1C        MX
    LDA $DE5E,X                     ; $9ACDA9  BD 5E DE     MX
    ADC $0EC6                       ; $9ACDAC  6D C6 0E     MX
    STA $0FD5                       ; $9ACDAF  8D D5 0F     MX
    LDA $DE60,X                     ; $9ACDB2  BD 60 DE     MX
    CLC                             ; $9ACDB5  18           MX
    ADC $1E                         ; $9ACDB6  65 1E        MX
    STA $1E                         ; $9ACDB8  85 1E        MX
    LDA $DE62,X                     ; $9ACDBA  BD 62 DE     MX
    ADC $0EC8                       ; $9ACDBD  6D C8 0E     MX
    STA $0FD7                       ; $9ACDC0  8D D7 0F     MX
    LDA $DE64,X                     ; $9ACDC3  BD 64 DE     MX
    CLC                             ; $9ACDC6  18           MX
    ADC $20                         ; $9ACDC7  65 20        MX
    STA $20                         ; $9ACDC9  85 20        MX
    LDA $DE66,X                     ; $9ACDCB  BD 66 DE     MX
    ADC $0ECA                       ; $9ACDCE  6D CA 0E     MX
    STA $0FD9                       ; $9ACDD1  8D D9 0F     MX
    LDA $DE68,X                     ; $9ACDD4  BD 68 DE     MX
    CLC                             ; $9ACDD7  18           MX
    ADC $22                         ; $9ACDD8  65 22        MX
    STA $22                         ; $9ACDDA  85 22        MX
    LDA $DE6A,X                     ; $9ACDDC  BD 6A DE     MX
    ADC $0ECC                       ; $9ACDDF  6D CC 0E     MX
    STA $0FDB                       ; $9ACDE2  8D DB 0F     MX
    LDA $DE6C,X                     ; $9ACDE5  BD 6C DE     MX
    CLC                             ; $9ACDE8  18           MX
    ADC $24                         ; $9ACDE9  65 24        MX
    STA $24                         ; $9ACDEB  85 24        MX
    LDA $DE6E,X                     ; $9ACDED  BD 6E DE     MX
    ADC $0ECE                       ; $9ACDF0  6D CE 0E     MX
    STA $0FDD                       ; $9ACDF3  8D DD 0F     MX
    LDA $DE70,X                     ; $9ACDF6  BD 70 DE     MX
    CLC                             ; $9ACDF9  18           MX
    ADC $26                         ; $9ACDFA  65 26        MX
    STA $26                         ; $9ACDFC  85 26        MX
    LDA $DE72,X                     ; $9ACDFE  BD 72 DE     MX
    ADC $0ED0                       ; $9ACE01  6D D0 0E     MX
    STA $0FDF                       ; $9ACE04  8D DF 0F     MX
    LDA $DE74,X                     ; $9ACE07  BD 74 DE     MX
    CLC                             ; $9ACE0A  18           MX
    ADC $28                         ; $9ACE0B  65 28        MX
    STA $28                         ; $9ACE0D  85 28        MX
    LDA $DE76,X                     ; $9ACE0F  BD 76 DE     MX
    ADC $0ED2                       ; $9ACE12  6D D2 0E     MX
    STA $0FE1                       ; $9ACE15  8D E1 0F     MX
    LDA $DE78,X                     ; $9ACE18  BD 78 DE     MX
    CLC                             ; $9ACE1B  18           MX
    ADC $2A                         ; $9ACE1C  65 2A        MX
    STA $2A                         ; $9ACE1E  85 2A        MX
    LDA $DE7A,X                     ; $9ACE20  BD 7A DE     MX
    ADC $0ED4                       ; $9ACE23  6D D4 0E     MX
    STA $0FE3                       ; $9ACE26  8D E3 0F     MX
    LDA $DE7C,X                     ; $9ACE29  BD 7C DE     MX
    CLC                             ; $9ACE2C  18           MX
    ADC $2C                         ; $9ACE2D  65 2C        MX
    STA $2C                         ; $9ACE2F  85 2C        MX
    LDA $DE7E,X                     ; $9ACE31  BD 7E DE     MX
    ADC $0ED6                       ; $9ACE34  6D D6 0E     MX
    STA $0FE5                       ; $9ACE37  8D E5 0F     MX
    LDA $DE80,X                     ; $9ACE3A  BD 80 DE     MX
    CLC                             ; $9ACE3D  18           MX
    ADC $2E                         ; $9ACE3E  65 2E        MX
    STA $2E                         ; $9ACE40  85 2E        MX
    LDA $DE82,X                     ; $9ACE42  BD 82 DE     MX
    ADC $0ED8                       ; $9ACE45  6D D8 0E     MX
    STA $0FE7                       ; $9ACE48  8D E7 0F     MX
    LDA $DE84,X                     ; $9ACE4B  BD 84 DE     MX
    CLC                             ; $9ACE4E  18           MX
    ADC $30                         ; $9ACE4F  65 30        MX
    STA $30                         ; $9ACE51  85 30        MX
    LDA $DE86,X                     ; $9ACE53  BD 86 DE     MX
    ADC $0EDA                       ; $9ACE56  6D DA 0E     MX
    STA $0FE9                       ; $9ACE59  8D E9 0F     MX
    LDA $DE88,X                     ; $9ACE5C  BD 88 DE     MX
    CLC                             ; $9ACE5F  18           MX
    ADC $32                         ; $9ACE60  65 32        MX
    STA $32                         ; $9ACE62  85 32        MX
    LDA $DE8A,X                     ; $9ACE64  BD 8A DE     MX
    ADC $0EDC                       ; $9ACE67  6D DC 0E     MX
    STA $0FEB                       ; $9ACE6A  8D EB 0F     MX
    LDA $DE8C,X                     ; $9ACE6D  BD 8C DE     MX
    CLC                             ; $9ACE70  18           MX
    ADC $34                         ; $9ACE71  65 34        MX
    STA $34                         ; $9ACE73  85 34        MX
    LDA $DE8E,X                     ; $9ACE75  BD 8E DE     MX
    ADC $0EDE                       ; $9ACE78  6D DE 0E     MX
    STA $0FED                       ; $9ACE7B  8D ED 0F     MX
    LDA $DE90,X                     ; $9ACE7E  BD 90 DE     MX
    CLC                             ; $9ACE81  18           MX
    ADC $36                         ; $9ACE82  65 36        MX
    STA $36                         ; $9ACE84  85 36        MX
    LDA $DE92,X                     ; $9ACE86  BD 92 DE     MX
    ADC $0EE0                       ; $9ACE89  6D E0 0E     MX
    STA $0FEF                       ; $9ACE8C  8D EF 0F     MX
    LDA $DE94,X                     ; $9ACE8F  BD 94 DE     MX
    CLC                             ; $9ACE92  18           MX
    ADC $38                         ; $9ACE93  65 38        MX
    STA $38                         ; $9ACE95  85 38        MX
    LDA $DE96,X                     ; $9ACE97  BD 96 DE     MX
    ADC $0EE2                       ; $9ACE9A  6D E2 0E     MX
    STA $0FF1                       ; $9ACE9D  8D F1 0F     MX
    LDA $DE98,X                     ; $9ACEA0  BD 98 DE     MX
    CLC                             ; $9ACEA3  18           MX
    ADC $3A                         ; $9ACEA4  65 3A        MX
    STA $3A                         ; $9ACEA6  85 3A        MX
    LDA $DE9A,X                     ; $9ACEA8  BD 9A DE     MX
    ADC $0EE4                       ; $9ACEAB  6D E4 0E     MX
    STA $0FF3                       ; $9ACEAE  8D F3 0F     MX
    LDA $DE9C,X                     ; $9ACEB1  BD 9C DE     MX
    CLC                             ; $9ACEB4  18           MX
    ADC $3C                         ; $9ACEB5  65 3C        MX
    STA $3C                         ; $9ACEB7  85 3C        MX
    LDA $DE9E,X                     ; $9ACEB9  BD 9E DE     MX
    ADC $0EE6                       ; $9ACEBC  6D E6 0E     MX
    STA $0FF5                       ; $9ACEBF  8D F5 0F     MX
    LDA $DEA0,X                     ; $9ACEC2  BD A0 DE     MX
    CLC                             ; $9ACEC5  18           MX
    ADC $3E                         ; $9ACEC6  65 3E        MX
    STA $3E                         ; $9ACEC8  85 3E        MX
    LDA $DEA2,X                     ; $9ACECA  BD A2 DE     MX
    ADC $0EE8                       ; $9ACECD  6D E8 0E     MX
    STA $0FF7                       ; $9ACED0  8D F7 0F     MX
    LDA $DEA4,X                     ; $9ACED3  BD A4 DE     MX
    CLC                             ; $9ACED6  18           MX
    ADC $40                         ; $9ACED7  65 40        MX
    STA $40                         ; $9ACED9  85 40        MX
    LDA $DEA6,X                     ; $9ACEDB  BD A6 DE     MX
    ADC $0EEA                       ; $9ACEDE  6D EA 0E     MX
    STA $0FF9                       ; $9ACEE1  8D F9 0F     MX
    LDA $DEA8,X                     ; $9ACEE4  BD A8 DE     MX
    CLC                             ; $9ACEE7  18           MX
    ADC $42                         ; $9ACEE8  65 42        MX
    STA $42                         ; $9ACEEA  85 42        MX
    LDA $DEAA,X                     ; $9ACEEC  BD AA DE     MX
    ADC $0EEC                       ; $9ACEEF  6D EC 0E     MX
    STA $0FFB                       ; $9ACEF2  8D FB 0F     MX
    LDA $DEAC,X                     ; $9ACEF5  BD AC DE     MX
    CLC                             ; $9ACEF8  18           MX
    ADC $44                         ; $9ACEF9  65 44        MX
    STA $44                         ; $9ACEFB  85 44        MX
    LDA $DEAE,X                     ; $9ACEFD  BD AE DE     MX
    ADC $0EEE                       ; $9ACF00  6D EE 0E     MX
    STA $0FFD                       ; $9ACF03  8D FD 0F     MX
    LDA $DEB0,X                     ; $9ACF06  BD B0 DE     MX
    CLC                             ; $9ACF09  18           MX
    ADC $46                         ; $9ACF0A  65 46        MX
    STA $46                         ; $9ACF0C  85 46        MX
    LDA $DEB2,X                     ; $9ACF0E  BD B2 DE     MX
    ADC $0EF0                       ; $9ACF11  6D F0 0E     MX
    STA $0FFF                       ; $9ACF14  8D FF 0F     MX
    LDA $DEB4,X                     ; $9ACF17  BD B4 DE     MX
    CLC                             ; $9ACF1A  18           MX
    ADC $48                         ; $9ACF1B  65 48        MX
    STA $48                         ; $9ACF1D  85 48        MX
    LDA $DEB6,X                     ; $9ACF1F  BD B6 DE     MX
    ADC $0EF2                       ; $9ACF22  6D F2 0E     MX
    STA $1001                       ; $9ACF25  8D 01 10     MX
    LDA $DEB8,X                     ; $9ACF28  BD B8 DE     MX
    CLC                             ; $9ACF2B  18           MX
    ADC $4A                         ; $9ACF2C  65 4A        MX
    STA $4A                         ; $9ACF2E  85 4A        MX
    LDA $DEBA,X                     ; $9ACF30  BD BA DE     MX
    ADC $0EF4                       ; $9ACF33  6D F4 0E     MX
    STA $1003                       ; $9ACF36  8D 03 10     MX
    LDA $DEBC,X                     ; $9ACF39  BD BC DE     MX
    CLC                             ; $9ACF3C  18           MX
    ADC $4C                         ; $9ACF3D  65 4C        MX
    STA $4C                         ; $9ACF3F  85 4C        MX
    LDA $DEBE,X                     ; $9ACF41  BD BE DE     MX
    ADC $0EF6                       ; $9ACF44  6D F6 0E     MX
    STA $1005                       ; $9ACF47  8D 05 10     MX
    LDA $DEC0,X                     ; $9ACF4A  BD C0 DE     MX
    CLC                             ; $9ACF4D  18           MX
    ADC $4E                         ; $9ACF4E  65 4E        MX
    STA $4E                         ; $9ACF50  85 4E        MX
    LDA $DEC2,X                     ; $9ACF52  BD C2 DE     MX
    ADC $0EF8                       ; $9ACF55  6D F8 0E     MX
    STA $1007                       ; $9ACF58  8D 07 10     MX
    LDA $DEC4,X                     ; $9ACF5B  BD C4 DE     MX
    CLC                             ; $9ACF5E  18           MX
    ADC $50                         ; $9ACF5F  65 50        MX
    STA $50                         ; $9ACF61  85 50        MX
    LDA $DEC6,X                     ; $9ACF63  BD C6 DE     MX
    ADC $0EFA                       ; $9ACF66  6D FA 0E     MX
    STA $1009                       ; $9ACF69  8D 09 10     MX
    LDA $DEC8,X                     ; $9ACF6C  BD C8 DE     MX
    CLC                             ; $9ACF6F  18           MX
    ADC $52                         ; $9ACF70  65 52        MX
    STA $52                         ; $9ACF72  85 52        MX
    LDA $DECA,X                     ; $9ACF74  BD CA DE     MX
    ADC $0EFC                       ; $9ACF77  6D FC 0E     MX
    STA $100B                       ; $9ACF7A  8D 0B 10     MX
    LDA $DECC,X                     ; $9ACF7D  BD CC DE     MX
    CLC                             ; $9ACF80  18           MX
    ADC $54                         ; $9ACF81  65 54        MX
    STA $54                         ; $9ACF83  85 54        MX
    LDA $DECE,X                     ; $9ACF85  BD CE DE     MX
    ADC $0EFE                       ; $9ACF88  6D FE 0E     MX
    STA $100D                       ; $9ACF8B  8D 0D 10     MX
    LDA $DED0,X                     ; $9ACF8E  BD D0 DE     MX
    CLC                             ; $9ACF91  18           MX
    ADC $56                         ; $9ACF92  65 56        MX
    STA $56                         ; $9ACF94  85 56        MX
    LDA $DED2,X                     ; $9ACF96  BD D2 DE     MX
    ADC $0F00                       ; $9ACF99  6D 00 0F     MX
    STA $100F                       ; $9ACF9C  8D 0F 10     MX
    LDA $DED4,X                     ; $9ACF9F  BD D4 DE     MX
    CLC                             ; $9ACFA2  18           MX
    ADC $58                         ; $9ACFA3  65 58        MX
    STA $58                         ; $9ACFA5  85 58        MX
    LDA $DED6,X                     ; $9ACFA7  BD D6 DE     MX
    ADC $0F02                       ; $9ACFAA  6D 02 0F     MX
    STA $1011                       ; $9ACFAD  8D 11 10     MX
    LDA $DED8,X                     ; $9ACFB0  BD D8 DE     MX
    CLC                             ; $9ACFB3  18           MX
    ADC $5A                         ; $9ACFB4  65 5A        MX
    STA $5A                         ; $9ACFB6  85 5A        MX
    LDA $DEDA,X                     ; $9ACFB8  BD DA DE     MX
    ADC $0F04                       ; $9ACFBB  6D 04 0F     MX
    STA $1013                       ; $9ACFBE  8D 13 10     MX
    LDA $DEDC,X                     ; $9ACFC1  BD DC DE     MX
    CLC                             ; $9ACFC4  18           MX
    ADC $5C                         ; $9ACFC5  65 5C        MX
    STA $5C                         ; $9ACFC7  85 5C        MX
    LDA $DEDE,X                     ; $9ACFC9  BD DE DE     MX
    ADC $0F06                       ; $9ACFCC  6D 06 0F     MX
    STA $1015                       ; $9ACFCF  8D 15 10     MX
    LDA $DEE0,X                     ; $9ACFD2  BD E0 DE     MX
    CLC                             ; $9ACFD5  18           MX
    ADC $5E                         ; $9ACFD6  65 5E        MX
    STA $5E                         ; $9ACFD8  85 5E        MX
    LDA $DEE2,X                     ; $9ACFDA  BD E2 DE     MX
    ADC $0F08                       ; $9ACFDD  6D 08 0F     MX
    STA $1017                       ; $9ACFE0  8D 17 10     MX
    LDA $DEE4,X                     ; $9ACFE3  BD E4 DE     MX
    CLC                             ; $9ACFE6  18           MX
    ADC $60                         ; $9ACFE7  65 60        MX
    STA $60                         ; $9ACFE9  85 60        MX
    LDA $DEE6,X                     ; $9ACFEB  BD E6 DE     MX
    ADC $0F0A                       ; $9ACFEE  6D 0A 0F     MX
    STA $1019                       ; $9ACFF1  8D 19 10     MX
    LDA $DEE8,X                     ; $9ACFF4  BD E8 DE     MX
    CLC                             ; $9ACFF7  18           MX
    ADC $62                         ; $9ACFF8  65 62        MX
    STA $62                         ; $9ACFFA  85 62        MX
    LDA $DEEA,X                     ; $9ACFFC  BD EA DE     MX
    ADC $0F0C                       ; $9ACFFF  6D 0C 0F     MX
    STA $101B                       ; $9AD002  8D 1B 10     MX
    LDA $DEEC,X                     ; $9AD005  BD EC DE     MX
    CLC                             ; $9AD008  18           MX
    ADC $64                         ; $9AD009  65 64        MX
    STA $64                         ; $9AD00B  85 64        MX
    LDA $DEEE,X                     ; $9AD00D  BD EE DE     MX
    ADC $0F0E                       ; $9AD010  6D 0E 0F     MX
    STA $101D                       ; $9AD013  8D 1D 10     MX
    LDA $DEF0,X                     ; $9AD016  BD F0 DE     MX
    CLC                             ; $9AD019  18           MX
    ADC $66                         ; $9AD01A  65 66        MX
    STA $66                         ; $9AD01C  85 66        MX
    LDA $DEF2,X                     ; $9AD01E  BD F2 DE     MX
    ADC $0F10                       ; $9AD021  6D 10 0F     MX
    STA $101F                       ; $9AD024  8D 1F 10     MX
    LDA $DEF4,X                     ; $9AD027  BD F4 DE     MX
    CLC                             ; $9AD02A  18           MX
    ADC $68                         ; $9AD02B  65 68        MX
    STA $68                         ; $9AD02D  85 68        MX
    LDA $DEF6,X                     ; $9AD02F  BD F6 DE     MX
    ADC $0F12                       ; $9AD032  6D 12 0F     MX
    STA $1021                       ; $9AD035  8D 21 10     MX
    LDA $DEF8,X                     ; $9AD038  BD F8 DE     MX
    CLC                             ; $9AD03B  18           MX
    ADC $6A                         ; $9AD03C  65 6A        MX
    STA $6A                         ; $9AD03E  85 6A        MX
    LDA $DEFA,X                     ; $9AD040  BD FA DE     MX
    ADC $0F14                       ; $9AD043  6D 14 0F     MX
    STA $1023                       ; $9AD046  8D 23 10     MX
    LDA $DEFC,X                     ; $9AD049  BD FC DE     MX
    CLC                             ; $9AD04C  18           MX
    ADC $6C                         ; $9AD04D  65 6C        MX
    STA $6C                         ; $9AD04F  85 6C        MX
    LDA $DEFE,X                     ; $9AD051  BD FE DE     MX
    ADC $0F16                       ; $9AD054  6D 16 0F     MX
    STA $1025                       ; $9AD057  8D 25 10     MX
    LDA $DF00,X                     ; $9AD05A  BD 00 DF     MX
    CLC                             ; $9AD05D  18           MX
    ADC $6E                         ; $9AD05E  65 6E        MX
    STA $6E                         ; $9AD060  85 6E        MX
    LDA $DF02,X                     ; $9AD062  BD 02 DF     MX
    ADC $0F18                       ; $9AD065  6D 18 0F     MX
    STA $1027                       ; $9AD068  8D 27 10     MX
    LDA $DF04,X                     ; $9AD06B  BD 04 DF     MX
    CLC                             ; $9AD06E  18           MX
    ADC $70                         ; $9AD06F  65 70        MX
    STA $70                         ; $9AD071  85 70        MX
    LDA $DF06,X                     ; $9AD073  BD 06 DF     MX
    ADC $0F1A                       ; $9AD076  6D 1A 0F     MX
    STA $1029                       ; $9AD079  8D 29 10     MX
    LDA $DF08,X                     ; $9AD07C  BD 08 DF     MX
    CLC                             ; $9AD07F  18           MX
    ADC $72                         ; $9AD080  65 72        MX
    STA $72                         ; $9AD082  85 72        MX
    LDA $DF0A,X                     ; $9AD084  BD 0A DF     MX
    ADC $0F1C                       ; $9AD087  6D 1C 0F     MX
    STA $102B                       ; $9AD08A  8D 2B 10     MX
    LDA $DF0C,X                     ; $9AD08D  BD 0C DF     MX
    CLC                             ; $9AD090  18           MX
    ADC $74                         ; $9AD091  65 74        MX
    STA $74                         ; $9AD093  85 74        MX
    LDA $DF0E,X                     ; $9AD095  BD 0E DF     MX
    ADC $0F1E                       ; $9AD098  6D 1E 0F     MX
    STA $102D                       ; $9AD09B  8D 2D 10     MX
    LDA $DF10,X                     ; $9AD09E  BD 10 DF     MX
    CLC                             ; $9AD0A1  18           MX
    ADC $76                         ; $9AD0A2  65 76        MX
    STA $76                         ; $9AD0A4  85 76        MX
    LDA $DF12,X                     ; $9AD0A6  BD 12 DF     MX
    ADC $0F20                       ; $9AD0A9  6D 20 0F     MX
    STA $102F                       ; $9AD0AC  8D 2F 10     MX
    LDA $DF14,X                     ; $9AD0AF  BD 14 DF     MX
    CLC                             ; $9AD0B2  18           MX
    ADC $78                         ; $9AD0B3  65 78        MX
    STA $78                         ; $9AD0B5  85 78        MX
    LDA $DF16,X                     ; $9AD0B7  BD 16 DF     MX
    ADC $0F22                       ; $9AD0BA  6D 22 0F     MX
    STA $1031                       ; $9AD0BD  8D 31 10     MX
    LDA $DF18,X                     ; $9AD0C0  BD 18 DF     MX
    CLC                             ; $9AD0C3  18           MX
    ADC $7A                         ; $9AD0C4  65 7A        MX
    STA $7A                         ; $9AD0C6  85 7A        MX
    LDA $DF1A,X                     ; $9AD0C8  BD 1A DF     MX
    ADC $0F24                       ; $9AD0CB  6D 24 0F     MX
    STA $1033                       ; $9AD0CE  8D 33 10     MX
    LDA $DF1C,X                     ; $9AD0D1  BD 1C DF     MX
    CLC                             ; $9AD0D4  18           MX
    ADC $7C                         ; $9AD0D5  65 7C        MX
    STA $7C                         ; $9AD0D7  85 7C        MX
    LDA $DF1E,X                     ; $9AD0D9  BD 1E DF     MX
    ADC $0F26                       ; $9AD0DC  6D 26 0F     MX
    STA $1035                       ; $9AD0DF  8D 35 10     MX
    LDA $DF20,X                     ; $9AD0E2  BD 20 DF     MX
    CLC                             ; $9AD0E5  18           MX
    ADC $7E                         ; $9AD0E6  65 7E        MX
    STA $7E                         ; $9AD0E8  85 7E        MX
    LDA $DF22,X                     ; $9AD0EA  BD 22 DF     MX
    ADC $0F28                       ; $9AD0ED  6D 28 0F     MX
    STA $1037                       ; $9AD0F0  8D 37 10     MX
    LDA $DF24,X                     ; $9AD0F3  BD 24 DF     MX
    CLC                             ; $9AD0F6  18           MX
    ADC $80                         ; $9AD0F7  65 80        MX
    STA $80                         ; $9AD0F9  85 80        MX
    LDA $DF26,X                     ; $9AD0FB  BD 26 DF     MX
    ADC $0F2A                       ; $9AD0FE  6D 2A 0F     MX
    STA $1039                       ; $9AD101  8D 39 10     MX
    LDA $DF28,X                     ; $9AD104  BD 28 DF     MX
    CLC                             ; $9AD107  18           MX
    ADC $82                         ; $9AD108  65 82        MX
    STA $82                         ; $9AD10A  85 82        MX
    LDA $DF2A,X                     ; $9AD10C  BD 2A DF     MX
    ADC $0F2C                       ; $9AD10F  6D 2C 0F     MX
    STA $103B                       ; $9AD112  8D 3B 10     MX
    LDA $DF2C,X                     ; $9AD115  BD 2C DF     MX
    CLC                             ; $9AD118  18           MX
    ADC $84                         ; $9AD119  65 84        MX
    STA $84                         ; $9AD11B  85 84        MX
    LDA $DF2E,X                     ; $9AD11D  BD 2E DF     MX
    ADC $0F2E                       ; $9AD120  6D 2E 0F     MX
    STA $103D                       ; $9AD123  8D 3D 10     MX
    LDA $DF30,X                     ; $9AD126  BD 30 DF     MX
    CLC                             ; $9AD129  18           MX
    ADC $86                         ; $9AD12A  65 86        MX
    STA $86                         ; $9AD12C  85 86        MX
    LDA $DF32,X                     ; $9AD12E  BD 32 DF     MX
    ADC $0F30                       ; $9AD131  6D 30 0F     MX
    STA $103F                       ; $9AD134  8D 3F 10     MX
    LDA $DF34,X                     ; $9AD137  BD 34 DF     MX
    CLC                             ; $9AD13A  18           MX
    ADC $88                         ; $9AD13B  65 88        MX
    STA $88                         ; $9AD13D  85 88        MX
    LDA $DF36,X                     ; $9AD13F  BD 36 DF     MX
    ADC $0F32                       ; $9AD142  6D 32 0F     MX
    STA $1041                       ; $9AD145  8D 41 10     MX
    LDA $DF38,X                     ; $9AD148  BD 38 DF     MX
    CLC                             ; $9AD14B  18           MX
    ADC $8A                         ; $9AD14C  65 8A        MX
    STA $8A                         ; $9AD14E  85 8A        MX
    LDA $DF3A,X                     ; $9AD150  BD 3A DF     MX
    ADC $0F34                       ; $9AD153  6D 34 0F     MX
    STA $1043                       ; $9AD156  8D 43 10     MX
    LDA $DF3C,X                     ; $9AD159  BD 3C DF     MX
    CLC                             ; $9AD15C  18           MX
    ADC $8C                         ; $9AD15D  65 8C        MX
    STA $8C                         ; $9AD15F  85 8C        MX
    LDA $DF3E,X                     ; $9AD161  BD 3E DF     MX
    ADC $0F36                       ; $9AD164  6D 36 0F     MX
    STA $1045                       ; $9AD167  8D 45 10     MX
    LDA $DF40,X                     ; $9AD16A  BD 40 DF     MX
    CLC                             ; $9AD16D  18           MX
    ADC $8E                         ; $9AD16E  65 8E        MX
    STA $8E                         ; $9AD170  85 8E        MX
    LDA $DF42,X                     ; $9AD172  BD 42 DF     MX
    ADC $0F38                       ; $9AD175  6D 38 0F     MX
    STA $1047                       ; $9AD178  8D 47 10     MX
    LDA $DF44,X                     ; $9AD17B  BD 44 DF     MX
    CLC                             ; $9AD17E  18           MX
    ADC $90                         ; $9AD17F  65 90        MX
    STA $90                         ; $9AD181  85 90        MX
    LDA $DF46,X                     ; $9AD183  BD 46 DF     MX
    ADC $0F3A                       ; $9AD186  6D 3A 0F     MX
    STA $1049                       ; $9AD189  8D 49 10     MX
    LDA $DF48,X                     ; $9AD18C  BD 48 DF     MX
    CLC                             ; $9AD18F  18           MX
    ADC $92                         ; $9AD190  65 92        MX
    STA $92                         ; $9AD192  85 92        MX
    LDA $DF4A,X                     ; $9AD194  BD 4A DF     MX
    ADC $0F3C                       ; $9AD197  6D 3C 0F     MX
    STA $104B                       ; $9AD19A  8D 4B 10     MX
    LDA $DF4C,X                     ; $9AD19D  BD 4C DF     MX
    CLC                             ; $9AD1A0  18           MX
    ADC $94                         ; $9AD1A1  65 94        MX
    STA $94                         ; $9AD1A3  85 94        MX
    LDA $DF4E,X                     ; $9AD1A5  BD 4E DF     MX
    ADC $0F3E                       ; $9AD1A8  6D 3E 0F     MX
    STA $104D                       ; $9AD1AB  8D 4D 10     MX
    LDA $DF50,X                     ; $9AD1AE  BD 50 DF     MX
    CLC                             ; $9AD1B1  18           MX
    ADC $96                         ; $9AD1B2  65 96        MX
    STA $96                         ; $9AD1B4  85 96        MX
    LDA $DF52,X                     ; $9AD1B6  BD 52 DF     MX
    ADC $0F40                       ; $9AD1B9  6D 40 0F     MX
    STA $104F                       ; $9AD1BC  8D 4F 10     MX
    LDA $DF54,X                     ; $9AD1BF  BD 54 DF     MX
    CLC                             ; $9AD1C2  18           MX
    ADC $98                         ; $9AD1C3  65 98        MX
    STA $98                         ; $9AD1C5  85 98        MX
    LDA $DF56,X                     ; $9AD1C7  BD 56 DF     MX
    ADC $0F42                       ; $9AD1CA  6D 42 0F     MX
    STA $1051                       ; $9AD1CD  8D 51 10     MX
    LDA $DF58,X                     ; $9AD1D0  BD 58 DF     MX
    CLC                             ; $9AD1D3  18           MX
    ADC $9A                         ; $9AD1D4  65 9A        MX
    STA $9A                         ; $9AD1D6  85 9A        MX
    LDA $DF5A,X                     ; $9AD1D8  BD 5A DF     MX
    ADC $0F44                       ; $9AD1DB  6D 44 0F     MX
    STA $1053                       ; $9AD1DE  8D 53 10     MX
    LDA $DF5C,X                     ; $9AD1E1  BD 5C DF     MX
    CLC                             ; $9AD1E4  18           MX
    ADC $9C                         ; $9AD1E5  65 9C        MX
    STA $9C                         ; $9AD1E7  85 9C        MX
    LDA $DF5E,X                     ; $9AD1E9  BD 5E DF     MX
    ADC $0F46                       ; $9AD1EC  6D 46 0F     MX
    STA $1055                       ; $9AD1EF  8D 55 10     MX
    LDA $DF60,X                     ; $9AD1F2  BD 60 DF     MX
    CLC                             ; $9AD1F5  18           MX
    ADC $9E                         ; $9AD1F6  65 9E        MX
    STA $9E                         ; $9AD1F8  85 9E        MX
    LDA $DF62,X                     ; $9AD1FA  BD 62 DF     MX
    ADC $0F48                       ; $9AD1FD  6D 48 0F     MX
    STA $1057                       ; $9AD200  8D 57 10     MX
    LDA $DF64,X                     ; $9AD203  BD 64 DF     MX
    CLC                             ; $9AD206  18           MX
    ADC $A0                         ; $9AD207  65 A0        MX
    STA $A0                         ; $9AD209  85 A0        MX
    LDA $DF66,X                     ; $9AD20B  BD 66 DF     MX
    ADC $0F4A                       ; $9AD20E  6D 4A 0F     MX
    STA $1059                       ; $9AD211  8D 59 10     MX
    LDA $DF68,X                     ; $9AD214  BD 68 DF     MX
    CLC                             ; $9AD217  18           MX
    ADC $A2                         ; $9AD218  65 A2        MX
    STA $A2                         ; $9AD21A  85 A2        MX
    LDA $DF6A,X                     ; $9AD21C  BD 6A DF     MX
    ADC $0F4C                       ; $9AD21F  6D 4C 0F     MX
    STA $105B                       ; $9AD222  8D 5B 10     MX
    LDA $DF6C,X                     ; $9AD225  BD 6C DF     MX
    CLC                             ; $9AD228  18           MX
    ADC $A4                         ; $9AD229  65 A4        MX
    STA $A4                         ; $9AD22B  85 A4        MX
    LDA $DF6E,X                     ; $9AD22D  BD 6E DF     MX
    ADC $0F4E                       ; $9AD230  6D 4E 0F     MX
    STA $105D                       ; $9AD233  8D 5D 10     MX
    LDA $DF70,X                     ; $9AD236  BD 70 DF     MX
    CLC                             ; $9AD239  18           MX
    ADC $A6                         ; $9AD23A  65 A6        MX
    STA $A6                         ; $9AD23C  85 A6        MX
    LDA $DF72,X                     ; $9AD23E  BD 72 DF     MX
    ADC $0F50                       ; $9AD241  6D 50 0F     MX
    STA $105F                       ; $9AD244  8D 5F 10     MX
    LDA $DF74,X                     ; $9AD247  BD 74 DF     MX
    CLC                             ; $9AD24A  18           MX
    ADC $A8                         ; $9AD24B  65 A8        MX
    STA $A8                         ; $9AD24D  85 A8        MX
    LDA $DF76,X                     ; $9AD24F  BD 76 DF     MX
    ADC $0F52                       ; $9AD252  6D 52 0F     MX
    STA $1061                       ; $9AD255  8D 61 10     MX
    LDA $DF78,X                     ; $9AD258  BD 78 DF     MX
    CLC                             ; $9AD25B  18           MX
    ADC $AA                         ; $9AD25C  65 AA        MX
    STA $AA                         ; $9AD25E  85 AA        MX
    LDA $DF7A,X                     ; $9AD260  BD 7A DF     MX
    ADC $0F54                       ; $9AD263  6D 54 0F     MX
    STA $1063                       ; $9AD266  8D 63 10     MX
    LDA $DF7C,X                     ; $9AD269  BD 7C DF     MX
    CLC                             ; $9AD26C  18           MX
    ADC $AC                         ; $9AD26D  65 AC        MX
    STA $AC                         ; $9AD26F  85 AC        MX
    LDA $DF7E,X                     ; $9AD271  BD 7E DF     MX
    ADC $0F56                       ; $9AD274  6D 56 0F     MX
    STA $1065                       ; $9AD277  8D 65 10     MX
    LDA $DF80,X                     ; $9AD27A  BD 80 DF     MX
    CLC                             ; $9AD27D  18           MX
    ADC $AE                         ; $9AD27E  65 AE        MX
    STA $AE                         ; $9AD280  85 AE        MX
    LDA $DF82,X                     ; $9AD282  BD 82 DF     MX
    ADC $0F58                       ; $9AD285  6D 58 0F     MX
    STA $1067                       ; $9AD288  8D 67 10     MX
    LDA $DF84,X                     ; $9AD28B  BD 84 DF     MX
    CLC                             ; $9AD28E  18           MX
    ADC $B0                         ; $9AD28F  65 B0        MX
    STA $B0                         ; $9AD291  85 B0        MX
    LDA $DF86,X                     ; $9AD293  BD 86 DF     MX
    ADC $0F5A                       ; $9AD296  6D 5A 0F     MX
    STA $1069                       ; $9AD299  8D 69 10     MX
    LDA $DF88,X                     ; $9AD29C  BD 88 DF     MX
    CLC                             ; $9AD29F  18           MX
    ADC $B2                         ; $9AD2A0  65 B2        MX
    STA $B2                         ; $9AD2A2  85 B2        MX
    LDA $DF8A,X                     ; $9AD2A4  BD 8A DF     MX
    ADC $0F5C                       ; $9AD2A7  6D 5C 0F     MX
    STA $106B                       ; $9AD2AA  8D 6B 10     MX
    LDA $DF8C,X                     ; $9AD2AD  BD 8C DF     MX
    CLC                             ; $9AD2B0  18           MX
    ADC $B4                         ; $9AD2B1  65 B4        MX
    STA $B4                         ; $9AD2B3  85 B4        MX
    LDA $DF8E,X                     ; $9AD2B5  BD 8E DF     MX
    ADC $0F5E                       ; $9AD2B8  6D 5E 0F     MX
    STA $106D                       ; $9AD2BB  8D 6D 10     MX
    LDA $DF90,X                     ; $9AD2BE  BD 90 DF     MX
    CLC                             ; $9AD2C1  18           MX
    ADC $B6                         ; $9AD2C2  65 B6        MX
    STA $B6                         ; $9AD2C4  85 B6        MX
    LDA $DF92,X                     ; $9AD2C6  BD 92 DF     MX
    ADC $0F60                       ; $9AD2C9  6D 60 0F     MX
    STA $106F                       ; $9AD2CC  8D 6F 10     MX
    LDA $DF94,X                     ; $9AD2CF  BD 94 DF     MX
    CLC                             ; $9AD2D2  18           MX
    ADC $B8                         ; $9AD2D3  65 B8        MX
    STA $B8                         ; $9AD2D5  85 B8        MX
    LDA $DF96,X                     ; $9AD2D7  BD 96 DF     MX
    ADC $0F62                       ; $9AD2DA  6D 62 0F     MX
    STA $1071                       ; $9AD2DD  8D 71 10     MX
    LDA $DF98,X                     ; $9AD2E0  BD 98 DF     MX
    CLC                             ; $9AD2E3  18           MX
    ADC $BA                         ; $9AD2E4  65 BA        MX
    STA $BA                         ; $9AD2E6  85 BA        MX
    LDA $DF9A,X                     ; $9AD2E8  BD 9A DF     MX
    ADC $0F64                       ; $9AD2EB  6D 64 0F     MX
    STA $1073                       ; $9AD2EE  8D 73 10     MX
    LDA $DF9C,X                     ; $9AD2F1  BD 9C DF     MX
    CLC                             ; $9AD2F4  18           MX
    ADC $BC                         ; $9AD2F5  65 BC        MX
    STA $BC                         ; $9AD2F7  85 BC        MX
    LDA $DF9E,X                     ; $9AD2F9  BD 9E DF     MX
    ADC $0F66                       ; $9AD2FC  6D 66 0F     MX
    STA $1075                       ; $9AD2FF  8D 75 10     MX
    LDA $DFA0,X                     ; $9AD302  BD A0 DF     MX
    CLC                             ; $9AD305  18           MX
    ADC $BE                         ; $9AD306  65 BE        MX
    STA $BE                         ; $9AD308  85 BE        MX
    LDA $DFA2,X                     ; $9AD30A  BD A2 DF     MX
    ADC $0F68                       ; $9AD30D  6D 68 0F     MX
    STA $1077                       ; $9AD310  8D 77 10     MX
    LDA $DFA4,X                     ; $9AD313  BD A4 DF     MX
    CLC                             ; $9AD316  18           MX
    ADC $C0                         ; $9AD317  65 C0        MX
    STA $C0                         ; $9AD319  85 C0        MX
    LDA $DFA6,X                     ; $9AD31B  BD A6 DF     MX
    ADC $0F6A                       ; $9AD31E  6D 6A 0F     MX
    STA $1079                       ; $9AD321  8D 79 10     MX
    LDA $DFA8,X                     ; $9AD324  BD A8 DF     MX
    CLC                             ; $9AD327  18           MX
    ADC $C2                         ; $9AD328  65 C2        MX
    STA $C2                         ; $9AD32A  85 C2        MX
    LDA $DFAA,X                     ; $9AD32C  BD AA DF     MX
    ADC $0F6C                       ; $9AD32F  6D 6C 0F     MX
    STA $107B                       ; $9AD332  8D 7B 10     MX
    LDA $DFAC,X                     ; $9AD335  BD AC DF     MX
    CLC                             ; $9AD338  18           MX
    ADC $C4                         ; $9AD339  65 C4        MX
    STA $C4                         ; $9AD33B  85 C4        MX
    LDA $DFAE,X                     ; $9AD33D  BD AE DF     MX
    ADC $0F6E                       ; $9AD340  6D 6E 0F     MX
    STA $107D                       ; $9AD343  8D 7D 10     MX
    LDA $DFB0,X                     ; $9AD346  BD B0 DF     MX
    CLC                             ; $9AD349  18           MX
    ADC $C6                         ; $9AD34A  65 C6        MX
    STA $C6                         ; $9AD34C  85 C6        MX
    LDA $DFB2,X                     ; $9AD34E  BD B2 DF     MX
    ADC $0F70                       ; $9AD351  6D 70 0F     MX
    STA $107F                       ; $9AD354  8D 7F 10     MX
    LDA $DFB4,X                     ; $9AD357  BD B4 DF     MX
    CLC                             ; $9AD35A  18           MX
    ADC $C8                         ; $9AD35B  65 C8        MX
    STA $C8                         ; $9AD35D  85 C8        MX
    LDA $DFB6,X                     ; $9AD35F  BD B6 DF     MX
    ADC $0F72                       ; $9AD362  6D 72 0F     MX
    STA $1081                       ; $9AD365  8D 81 10     MX
    LDA $DFB8,X                     ; $9AD368  BD B8 DF     MX
    CLC                             ; $9AD36B  18           MX
    ADC $CA                         ; $9AD36C  65 CA        MX
    STA $CA                         ; $9AD36E  85 CA        MX
    LDA $DFBA,X                     ; $9AD370  BD BA DF     MX
    ADC $0F74                       ; $9AD373  6D 74 0F     MX
    STA $1083                       ; $9AD376  8D 83 10     MX
    LDA $DFBC,X                     ; $9AD379  BD BC DF     MX
    CLC                             ; $9AD37C  18           MX
    ADC $CC                         ; $9AD37D  65 CC        MX
    STA $CC                         ; $9AD37F  85 CC        MX
    LDA $DFBE,X                     ; $9AD381  BD BE DF     MX
    ADC $0F76                       ; $9AD384  6D 76 0F     MX
    STA $1085                       ; $9AD387  8D 85 10     MX
    LDA $DFC0,X                     ; $9AD38A  BD C0 DF     MX
    CLC                             ; $9AD38D  18           MX
    ADC $CE                         ; $9AD38E  65 CE        MX
    STA $CE                         ; $9AD390  85 CE        MX
    LDA $DFC2,X                     ; $9AD392  BD C2 DF     MX
    ADC $0F78                       ; $9AD395  6D 78 0F     MX
    STA $1087                       ; $9AD398  8D 87 10     MX
    LDA $DFC4,X                     ; $9AD39B  BD C4 DF     MX
    CLC                             ; $9AD39E  18           MX
    ADC $D0                         ; $9AD39F  65 D0        MX
    STA $D0                         ; $9AD3A1  85 D0        MX
    LDA $DFC6,X                     ; $9AD3A3  BD C6 DF     MX
    ADC $0F7A                       ; $9AD3A6  6D 7A 0F     MX
    STA $1089                       ; $9AD3A9  8D 89 10     MX
    LDA $DFC8,X                     ; $9AD3AC  BD C8 DF     MX
    CLC                             ; $9AD3AF  18           MX
    ADC $D2                         ; $9AD3B0  65 D2        MX
    STA $D2                         ; $9AD3B2  85 D2        MX
    LDA $DFCA,X                     ; $9AD3B4  BD CA DF     MX
    ADC $0F7C                       ; $9AD3B7  6D 7C 0F     MX
    STA $108B                       ; $9AD3BA  8D 8B 10     MX
    LDA $DFCC,X                     ; $9AD3BD  BD CC DF     MX
    CLC                             ; $9AD3C0  18           MX
    ADC $D4                         ; $9AD3C1  65 D4        MX
    STA $D4                         ; $9AD3C3  85 D4        MX
    LDA $DFCE,X                     ; $9AD3C5  BD CE DF     MX
    ADC $0F7E                       ; $9AD3C8  6D 7E 0F     MX
    STA $108D                       ; $9AD3CB  8D 8D 10     MX
    LDA $DFD0,X                     ; $9AD3CE  BD D0 DF     MX
    CLC                             ; $9AD3D1  18           MX
    ADC $D6                         ; $9AD3D2  65 D6        MX
    STA $D6                         ; $9AD3D4  85 D6        MX
    LDA $DFD2,X                     ; $9AD3D6  BD D2 DF     MX
    ADC $0F80                       ; $9AD3D9  6D 80 0F     MX
    STA $108F                       ; $9AD3DC  8D 8F 10     MX
    LDA $DFD4,X                     ; $9AD3DF  BD D4 DF     MX
    CLC                             ; $9AD3E2  18           MX
    ADC $D8                         ; $9AD3E3  65 D8        MX
    STA $D8                         ; $9AD3E5  85 D8        MX
    LDA $DFD6,X                     ; $9AD3E7  BD D6 DF     MX
    ADC $0F82                       ; $9AD3EA  6D 82 0F     MX
    STA $1091                       ; $9AD3ED  8D 91 10     MX
    LDA $DFD8,X                     ; $9AD3F0  BD D8 DF     MX
    CLC                             ; $9AD3F3  18           MX
    ADC $DA                         ; $9AD3F4  65 DA        MX
    STA $DA                         ; $9AD3F6  85 DA        MX
    LDA $DFDA,X                     ; $9AD3F8  BD DA DF     MX
    ADC $0F84                       ; $9AD3FB  6D 84 0F     MX
    STA $1093                       ; $9AD3FE  8D 93 10     MX
    LDA $DFDC,X                     ; $9AD401  BD DC DF     MX
    CLC                             ; $9AD404  18           MX
    ADC $DC                         ; $9AD405  65 DC        MX
    STA $DC                         ; $9AD407  85 DC        MX
    LDA $DFDE,X                     ; $9AD409  BD DE DF     MX
    ADC $0F86                       ; $9AD40C  6D 86 0F     MX
    STA $1095                       ; $9AD40F  8D 95 10     MX
    LDA $DFE0,X                     ; $9AD412  BD E0 DF     MX
    CLC                             ; $9AD415  18           MX
    ADC $DE                         ; $9AD416  65 DE        MX
    STA $DE                         ; $9AD418  85 DE        MX
    LDA $DFE2,X                     ; $9AD41A  BD E2 DF     MX
    ADC $0F88                       ; $9AD41D  6D 88 0F     MX
    STA $1097                       ; $9AD420  8D 97 10     MX
    LDA $DFE4,X                     ; $9AD423  BD E4 DF     MX
    CLC                             ; $9AD426  18           MX
    ADC $E0                         ; $9AD427  65 E0        MX
    STA $E0                         ; $9AD429  85 E0        MX
    LDA $DFE6,X                     ; $9AD42B  BD E6 DF     MX
    ADC $0F8A                       ; $9AD42E  6D 8A 0F     MX
    STA $1099                       ; $9AD431  8D 99 10     MX
    LDA $DFE8,X                     ; $9AD434  BD E8 DF     MX
    CLC                             ; $9AD437  18           MX
    ADC $E2                         ; $9AD438  65 E2        MX
    STA $E2                         ; $9AD43A  85 E2        MX
    LDA $DFEA,X                     ; $9AD43C  BD EA DF     MX
    ADC $0F8C                       ; $9AD43F  6D 8C 0F     MX
    STA $109B                       ; $9AD442  8D 9B 10     MX
    LDA $DFEC,X                     ; $9AD445  BD EC DF     MX
    CLC                             ; $9AD448  18           MX
    ADC $E4                         ; $9AD449  65 E4        MX
    STA $E4                         ; $9AD44B  85 E4        MX
    LDA $DFEE,X                     ; $9AD44D  BD EE DF     MX
    ADC $0F8E                       ; $9AD450  6D 8E 0F     MX
    STA $109D                       ; $9AD453  8D 9D 10     MX
    LDA $DFF0,X                     ; $9AD456  BD F0 DF     MX
    CLC                             ; $9AD459  18           MX
    ADC $E6                         ; $9AD45A  65 E6        MX
    STA $E6                         ; $9AD45C  85 E6        MX
    LDA $DFF2,X                     ; $9AD45E  BD F2 DF     MX
    ADC $0F90                       ; $9AD461  6D 90 0F     MX
    STA $109F                       ; $9AD464  8D 9F 10     MX
    LDA #$0000                      ; $9AD467  A9 00 00     MX
    TCD                             ; $9AD46A  5B           MX
    JMP L_9ADC3A                    ; $9AD46B  4C 3A DC     MX
L_9AD46E:
    STA $0E7D                       ; $9AD46E  8D 7D 0E     MX
    EOR #$FFFF                      ; $9AD471  49 FF FF     MX
    CLC                             ; $9AD474  18           MX
    ADC #$0001                      ; $9AD475  69 01 00     MX
    ASL                             ; $9AD478  0A           MX
    TAX                             ; $9AD479  AA           MX
    LDA $EF04,X                     ; $9AD47A  BD 04 EF     MX
    TAX                             ; $9AD47D  AA           MX
    LDA #$0600                      ; $9AD47E  A9 00 06     MX
    TCD                             ; $9AD481  5B           MX
    LDA $00                         ; $9AD482  A5 00        MX
    SEC                             ; $9AD484  38           MX
    SBC $DE24,X                     ; $9AD485  FD 24 DE     MX
    STA $00                         ; $9AD488  85 00        MX
    LDA $0EAA                       ; $9AD48A  AD AA 0E     MX
    SBC $DE26,X                     ; $9AD48D  FD 26 DE     MX
    STA $0FB9                       ; $9AD490  8D B9 0F     MX
    LDA $02                         ; $9AD493  A5 02        MX
    SEC                             ; $9AD495  38           MX
    SBC $DE28,X                     ; $9AD496  FD 28 DE     MX
    STA $02                         ; $9AD499  85 02        MX
    LDA $0EAC                       ; $9AD49B  AD AC 0E     MX
    SBC $DE2A,X                     ; $9AD49E  FD 2A DE     MX
    STA $0FBB                       ; $9AD4A1  8D BB 0F     MX
    LDA $04                         ; $9AD4A4  A5 04        MX
    SEC                             ; $9AD4A6  38           MX
    SBC $DE2C,X                     ; $9AD4A7  FD 2C DE     MX
    STA $04                         ; $9AD4AA  85 04        MX
    LDA $0EAE                       ; $9AD4AC  AD AE 0E     MX
    SBC $DE2E,X                     ; $9AD4AF  FD 2E DE     MX
    STA $0FBD                       ; $9AD4B2  8D BD 0F     MX
    LDA $06                         ; $9AD4B5  A5 06        MX
    SEC                             ; $9AD4B7  38           MX
    SBC $DE30,X                     ; $9AD4B8  FD 30 DE     MX
    STA $06                         ; $9AD4BB  85 06        MX
    LDA $0EB0                       ; $9AD4BD  AD B0 0E     MX
    SBC $DE32,X                     ; $9AD4C0  FD 32 DE     MX
    STA $0FBF                       ; $9AD4C3  8D BF 0F     MX
    LDA $08                         ; $9AD4C6  A5 08        MX
    SEC                             ; $9AD4C8  38           MX
    SBC $DE34,X                     ; $9AD4C9  FD 34 DE     MX
    STA $08                         ; $9AD4CC  85 08        MX
    LDA $0EB2                       ; $9AD4CE  AD B2 0E     MX
    SBC $DE36,X                     ; $9AD4D1  FD 36 DE     MX
    STA $0FC1                       ; $9AD4D4  8D C1 0F     MX
    LDA $0A                         ; $9AD4D7  A5 0A        MX
    SEC                             ; $9AD4D9  38           MX
    SBC $DE38,X                     ; $9AD4DA  FD 38 DE     MX
    STA $0A                         ; $9AD4DD  85 0A        MX
    LDA $0EB4                       ; $9AD4DF  AD B4 0E     MX
    SBC $DE3A,X                     ; $9AD4E2  FD 3A DE     MX
    STA $0FC3                       ; $9AD4E5  8D C3 0F     MX
    LDA $0C                         ; $9AD4E8  A5 0C        MX
    SEC                             ; $9AD4EA  38           MX
    SBC $DE3C,X                     ; $9AD4EB  FD 3C DE     MX
    STA $0C                         ; $9AD4EE  85 0C        MX
    LDA $0EB6                       ; $9AD4F0  AD B6 0E     MX
    SBC $DE3E,X                     ; $9AD4F3  FD 3E DE     MX
    STA $0FC5                       ; $9AD4F6  8D C5 0F     MX
    LDA $0E                         ; $9AD4F9  A5 0E        MX
    SEC                             ; $9AD4FB  38           MX
    SBC $DE40,X                     ; $9AD4FC  FD 40 DE     MX
    STA $0E                         ; $9AD4FF  85 0E        MX
    LDA $0EB8                       ; $9AD501  AD B8 0E     MX
    SBC $DE42,X                     ; $9AD504  FD 42 DE     MX
    STA $0FC7                       ; $9AD507  8D C7 0F     MX
    LDA $10                         ; $9AD50A  A5 10        MX
    SEC                             ; $9AD50C  38           MX
    SBC $DE44,X                     ; $9AD50D  FD 44 DE     MX
    STA $10                         ; $9AD510  85 10        MX
    LDA $0EBA                       ; $9AD512  AD BA 0E     MX
    SBC $DE46,X                     ; $9AD515  FD 46 DE     MX
    STA $0FC9                       ; $9AD518  8D C9 0F     MX
    LDA $12                         ; $9AD51B  A5 12        MX
    SEC                             ; $9AD51D  38           MX
    SBC $DE48,X                     ; $9AD51E  FD 48 DE     MX
    STA $12                         ; $9AD521  85 12        MX
    LDA $0EBC                       ; $9AD523  AD BC 0E     MX
    SBC $DE4A,X                     ; $9AD526  FD 4A DE     MX
    STA $0FCB                       ; $9AD529  8D CB 0F     MX
    LDA $14                         ; $9AD52C  A5 14        MX
    SEC                             ; $9AD52E  38           MX
    SBC $DE4C,X                     ; $9AD52F  FD 4C DE     MX
    STA $14                         ; $9AD532  85 14        MX
    LDA $0EBE                       ; $9AD534  AD BE 0E     MX
    SBC $DE4E,X                     ; $9AD537  FD 4E DE     MX
    STA $0FCD                       ; $9AD53A  8D CD 0F     MX
    LDA $16                         ; $9AD53D  A5 16        MX
    SEC                             ; $9AD53F  38           MX
    SBC $DE50,X                     ; $9AD540  FD 50 DE     MX
    STA $16                         ; $9AD543  85 16        MX
    LDA $0EC0                       ; $9AD545  AD C0 0E     MX
    SBC $DE52,X                     ; $9AD548  FD 52 DE     MX
    STA $0FCF                       ; $9AD54B  8D CF 0F     MX
    LDA $18                         ; $9AD54E  A5 18        MX
    SEC                             ; $9AD550  38           MX
    SBC $DE54,X                     ; $9AD551  FD 54 DE     MX
    STA $18                         ; $9AD554  85 18        MX
    LDA $0EC2                       ; $9AD556  AD C2 0E     MX
    SBC $DE56,X                     ; $9AD559  FD 56 DE     MX
    STA $0FD1                       ; $9AD55C  8D D1 0F     MX
    LDA $1A                         ; $9AD55F  A5 1A        MX
    SEC                             ; $9AD561  38           MX
    SBC $DE58,X                     ; $9AD562  FD 58 DE     MX
    STA $1A                         ; $9AD565  85 1A        MX
    LDA $0EC4                       ; $9AD567  AD C4 0E     MX
    SBC $DE5A,X                     ; $9AD56A  FD 5A DE     MX
    STA $0FD3                       ; $9AD56D  8D D3 0F     MX
    LDA $1C                         ; $9AD570  A5 1C        MX
    SEC                             ; $9AD572  38           MX
    SBC $DE5C,X                     ; $9AD573  FD 5C DE     MX
    STA $1C                         ; $9AD576  85 1C        MX
    LDA $0EC6                       ; $9AD578  AD C6 0E     MX
    SBC $DE5E,X                     ; $9AD57B  FD 5E DE     MX
    STA $0FD5                       ; $9AD57E  8D D5 0F     MX
    LDA $1E                         ; $9AD581  A5 1E        MX
    SEC                             ; $9AD583  38           MX
    SBC $DE60,X                     ; $9AD584  FD 60 DE     MX
    STA $1E                         ; $9AD587  85 1E        MX
    LDA $0EC8                       ; $9AD589  AD C8 0E     MX
    SBC $DE62,X                     ; $9AD58C  FD 62 DE     MX
    STA $0FD7                       ; $9AD58F  8D D7 0F     MX
    LDA $20                         ; $9AD592  A5 20        MX
    SEC                             ; $9AD594  38           MX
    SBC $DE64,X                     ; $9AD595  FD 64 DE     MX
    STA $20                         ; $9AD598  85 20        MX
    LDA $0ECA                       ; $9AD59A  AD CA 0E     MX
    SBC $DE66,X                     ; $9AD59D  FD 66 DE     MX
    STA $0FD9                       ; $9AD5A0  8D D9 0F     MX
    LDA $22                         ; $9AD5A3  A5 22        MX
    SEC                             ; $9AD5A5  38           MX
    SBC $DE68,X                     ; $9AD5A6  FD 68 DE     MX
    STA $22                         ; $9AD5A9  85 22        MX
    LDA $0ECC                       ; $9AD5AB  AD CC 0E     MX
    SBC $DE6A,X                     ; $9AD5AE  FD 6A DE     MX
    STA $0FDB                       ; $9AD5B1  8D DB 0F     MX
    LDA $24                         ; $9AD5B4  A5 24        MX
    SEC                             ; $9AD5B6  38           MX
    SBC $DE6C,X                     ; $9AD5B7  FD 6C DE     MX
    STA $24                         ; $9AD5BA  85 24        MX
    LDA $0ECE                       ; $9AD5BC  AD CE 0E     MX
    SBC $DE6E,X                     ; $9AD5BF  FD 6E DE     MX
    STA $0FDD                       ; $9AD5C2  8D DD 0F     MX
    LDA $26                         ; $9AD5C5  A5 26        MX
    SEC                             ; $9AD5C7  38           MX
    SBC $DE70,X                     ; $9AD5C8  FD 70 DE     MX
    STA $26                         ; $9AD5CB  85 26        MX
    LDA $0ED0                       ; $9AD5CD  AD D0 0E     MX
    SBC $DE72,X                     ; $9AD5D0  FD 72 DE     MX
    STA $0FDF                       ; $9AD5D3  8D DF 0F     MX
    LDA $28                         ; $9AD5D6  A5 28        MX
    SEC                             ; $9AD5D8  38           MX
    SBC $DE74,X                     ; $9AD5D9  FD 74 DE     MX
    STA $28                         ; $9AD5DC  85 28        MX
    LDA $0ED2                       ; $9AD5DE  AD D2 0E     MX
    SBC $DE76,X                     ; $9AD5E1  FD 76 DE     MX
    STA $0FE1                       ; $9AD5E4  8D E1 0F     MX
    LDA $2A                         ; $9AD5E7  A5 2A        MX
    SEC                             ; $9AD5E9  38           MX
    SBC $DE78,X                     ; $9AD5EA  FD 78 DE     MX
    STA $2A                         ; $9AD5ED  85 2A        MX
    LDA $0ED4                       ; $9AD5EF  AD D4 0E     MX
    SBC $DE7A,X                     ; $9AD5F2  FD 7A DE     MX
    STA $0FE3                       ; $9AD5F5  8D E3 0F     MX
    LDA $2C                         ; $9AD5F8  A5 2C        MX
    SEC                             ; $9AD5FA  38           MX
    SBC $DE7C,X                     ; $9AD5FB  FD 7C DE     MX
    STA $2C                         ; $9AD5FE  85 2C        MX
    LDA $0ED6                       ; $9AD600  AD D6 0E     MX
    SBC $DE7E,X                     ; $9AD603  FD 7E DE     MX
    STA $0FE5                       ; $9AD606  8D E5 0F     MX
    LDA $2E                         ; $9AD609  A5 2E        MX
    SEC                             ; $9AD60B  38           MX
    SBC $DE80,X                     ; $9AD60C  FD 80 DE     MX
    STA $2E                         ; $9AD60F  85 2E        MX
    LDA $0ED8                       ; $9AD611  AD D8 0E     MX
    SBC $DE82,X                     ; $9AD614  FD 82 DE     MX
    STA $0FE7                       ; $9AD617  8D E7 0F     MX
    LDA $30                         ; $9AD61A  A5 30        MX
    SEC                             ; $9AD61C  38           MX
    SBC $DE84,X                     ; $9AD61D  FD 84 DE     MX
    STA $30                         ; $9AD620  85 30        MX
    LDA $0EDA                       ; $9AD622  AD DA 0E     MX
    SBC $DE86,X                     ; $9AD625  FD 86 DE     MX
    STA $0FE9                       ; $9AD628  8D E9 0F     MX
    LDA $32                         ; $9AD62B  A5 32        MX
    SEC                             ; $9AD62D  38           MX
    SBC $DE88,X                     ; $9AD62E  FD 88 DE     MX
    STA $32                         ; $9AD631  85 32        MX
    LDA $0EDC                       ; $9AD633  AD DC 0E     MX
    SBC $DE8A,X                     ; $9AD636  FD 8A DE     MX
    STA $0FEB                       ; $9AD639  8D EB 0F     MX
    LDA $34                         ; $9AD63C  A5 34        MX
    SEC                             ; $9AD63E  38           MX
    SBC $DE8C,X                     ; $9AD63F  FD 8C DE     MX
    STA $34                         ; $9AD642  85 34        MX
    LDA $0EDE                       ; $9AD644  AD DE 0E     MX
    SBC $DE8E,X                     ; $9AD647  FD 8E DE     MX
    STA $0FED                       ; $9AD64A  8D ED 0F     MX
    LDA $36                         ; $9AD64D  A5 36        MX
    SEC                             ; $9AD64F  38           MX
    SBC $DE90,X                     ; $9AD650  FD 90 DE     MX
    STA $36                         ; $9AD653  85 36        MX
    LDA $0EE0                       ; $9AD655  AD E0 0E     MX
    SBC $DE92,X                     ; $9AD658  FD 92 DE     MX
    STA $0FEF                       ; $9AD65B  8D EF 0F     MX
    LDA $38                         ; $9AD65E  A5 38        MX
    SEC                             ; $9AD660  38           MX
    SBC $DE94,X                     ; $9AD661  FD 94 DE     MX
    STA $38                         ; $9AD664  85 38        MX
    LDA $0EE2                       ; $9AD666  AD E2 0E     MX
    SBC $DE96,X                     ; $9AD669  FD 96 DE     MX
    STA $0FF1                       ; $9AD66C  8D F1 0F     MX
    LDA $3A                         ; $9AD66F  A5 3A        MX
    SEC                             ; $9AD671  38           MX
    SBC $DE98,X                     ; $9AD672  FD 98 DE     MX
    STA $3A                         ; $9AD675  85 3A        MX
    LDA $0EE4                       ; $9AD677  AD E4 0E     MX
    SBC $DE9A,X                     ; $9AD67A  FD 9A DE     MX
    STA $0FF3                       ; $9AD67D  8D F3 0F     MX
    LDA $3C                         ; $9AD680  A5 3C        MX
    SEC                             ; $9AD682  38           MX
    SBC $DE9C,X                     ; $9AD683  FD 9C DE     MX
    STA $3C                         ; $9AD686  85 3C        MX
    LDA $0EE6                       ; $9AD688  AD E6 0E     MX
    SBC $DE9E,X                     ; $9AD68B  FD 9E DE     MX
    STA $0FF5                       ; $9AD68E  8D F5 0F     MX
    LDA $3E                         ; $9AD691  A5 3E        MX
    SEC                             ; $9AD693  38           MX
    SBC $DEA0,X                     ; $9AD694  FD A0 DE     MX
    STA $3E                         ; $9AD697  85 3E        MX
    LDA $0EE8                       ; $9AD699  AD E8 0E     MX
    SBC $DEA2,X                     ; $9AD69C  FD A2 DE     MX
    STA $0FF7                       ; $9AD69F  8D F7 0F     MX
    LDA $40                         ; $9AD6A2  A5 40        MX
    SEC                             ; $9AD6A4  38           MX
    SBC $DEA4,X                     ; $9AD6A5  FD A4 DE     MX
    STA $40                         ; $9AD6A8  85 40        MX
    LDA $0EEA                       ; $9AD6AA  AD EA 0E     MX
    SBC $DEA6,X                     ; $9AD6AD  FD A6 DE     MX
    STA $0FF9                       ; $9AD6B0  8D F9 0F     MX
    LDA $42                         ; $9AD6B3  A5 42        MX
    SEC                             ; $9AD6B5  38           MX
    SBC $DEA8,X                     ; $9AD6B6  FD A8 DE     MX
    STA $42                         ; $9AD6B9  85 42        MX
    LDA $0EEC                       ; $9AD6BB  AD EC 0E     MX
    SBC $DEAA,X                     ; $9AD6BE  FD AA DE     MX
    STA $0FFB                       ; $9AD6C1  8D FB 0F     MX
    LDA $44                         ; $9AD6C4  A5 44        MX
    SEC                             ; $9AD6C6  38           MX
    SBC $DEAC,X                     ; $9AD6C7  FD AC DE     MX
    STA $44                         ; $9AD6CA  85 44        MX
    LDA $0EEE                       ; $9AD6CC  AD EE 0E     MX
    SBC $DEAE,X                     ; $9AD6CF  FD AE DE     MX
    STA $0FFD                       ; $9AD6D2  8D FD 0F     MX
    LDA $46                         ; $9AD6D5  A5 46        MX
    SEC                             ; $9AD6D7  38           MX
    SBC $DEB0,X                     ; $9AD6D8  FD B0 DE     MX
    STA $46                         ; $9AD6DB  85 46        MX
    LDA $0EF0                       ; $9AD6DD  AD F0 0E     MX
    SBC $DEB2,X                     ; $9AD6E0  FD B2 DE     MX
    STA $0FFF                       ; $9AD6E3  8D FF 0F     MX
    LDA $48                         ; $9AD6E6  A5 48        MX
    SEC                             ; $9AD6E8  38           MX
    SBC $DEB4,X                     ; $9AD6E9  FD B4 DE     MX
    STA $48                         ; $9AD6EC  85 48        MX
    LDA $0EF2                       ; $9AD6EE  AD F2 0E     MX
    SBC $DEB6,X                     ; $9AD6F1  FD B6 DE     MX
    STA $1001                       ; $9AD6F4  8D 01 10     MX
    LDA $4A                         ; $9AD6F7  A5 4A        MX
    SEC                             ; $9AD6F9  38           MX
    SBC $DEB8,X                     ; $9AD6FA  FD B8 DE     MX
    STA $4A                         ; $9AD6FD  85 4A        MX
    LDA $0EF4                       ; $9AD6FF  AD F4 0E     MX
    SBC $DEBA,X                     ; $9AD702  FD BA DE     MX
    STA $1003                       ; $9AD705  8D 03 10     MX
    LDA $4C                         ; $9AD708  A5 4C        MX
    SEC                             ; $9AD70A  38           MX
    SBC $DEBC,X                     ; $9AD70B  FD BC DE     MX
    STA $4C                         ; $9AD70E  85 4C        MX
    LDA $0EF6                       ; $9AD710  AD F6 0E     MX
    SBC $DEBE,X                     ; $9AD713  FD BE DE     MX
    STA $1005                       ; $9AD716  8D 05 10     MX
    LDA $4E                         ; $9AD719  A5 4E        MX
    SEC                             ; $9AD71B  38           MX
    SBC $DEC0,X                     ; $9AD71C  FD C0 DE     MX
    STA $4E                         ; $9AD71F  85 4E        MX
    LDA $0EF8                       ; $9AD721  AD F8 0E     MX
    SBC $DEC2,X                     ; $9AD724  FD C2 DE     MX
    STA $1007                       ; $9AD727  8D 07 10     MX
    LDA $50                         ; $9AD72A  A5 50        MX
    SEC                             ; $9AD72C  38           MX
    SBC $DEC4,X                     ; $9AD72D  FD C4 DE     MX
    STA $50                         ; $9AD730  85 50        MX
    LDA $0EFA                       ; $9AD732  AD FA 0E     MX
    SBC $DEC6,X                     ; $9AD735  FD C6 DE     MX
    STA $1009                       ; $9AD738  8D 09 10     MX
    LDA $52                         ; $9AD73B  A5 52        MX
    SEC                             ; $9AD73D  38           MX
    SBC $DEC8,X                     ; $9AD73E  FD C8 DE     MX
    STA $52                         ; $9AD741  85 52        MX
    LDA $0EFC                       ; $9AD743  AD FC 0E     MX
    SBC $DECA,X                     ; $9AD746  FD CA DE     MX
    STA $100B                       ; $9AD749  8D 0B 10     MX
    LDA $54                         ; $9AD74C  A5 54        MX
    SEC                             ; $9AD74E  38           MX
    SBC $DECC,X                     ; $9AD74F  FD CC DE     MX
    STA $54                         ; $9AD752  85 54        MX
    LDA $0EFE                       ; $9AD754  AD FE 0E     MX
    SBC $DECE,X                     ; $9AD757  FD CE DE     MX
    STA $100D                       ; $9AD75A  8D 0D 10     MX
    LDA $56                         ; $9AD75D  A5 56        MX
    SEC                             ; $9AD75F  38           MX
    SBC $DED0,X                     ; $9AD760  FD D0 DE     MX
    STA $56                         ; $9AD763  85 56        MX
    LDA $0F00                       ; $9AD765  AD 00 0F     MX
    SBC $DED2,X                     ; $9AD768  FD D2 DE     MX
    STA $100F                       ; $9AD76B  8D 0F 10     MX
    LDA $58                         ; $9AD76E  A5 58        MX
    SEC                             ; $9AD770  38           MX
    SBC $DED4,X                     ; $9AD771  FD D4 DE     MX
    STA $58                         ; $9AD774  85 58        MX
    LDA $0F02                       ; $9AD776  AD 02 0F     MX
    SBC $DED6,X                     ; $9AD779  FD D6 DE     MX
    STA $1011                       ; $9AD77C  8D 11 10     MX
    LDA $5A                         ; $9AD77F  A5 5A        MX
    SEC                             ; $9AD781  38           MX
    SBC $DED8,X                     ; $9AD782  FD D8 DE     MX
    STA $5A                         ; $9AD785  85 5A        MX
    LDA $0F04                       ; $9AD787  AD 04 0F     MX
    SBC $DEDA,X                     ; $9AD78A  FD DA DE     MX
    STA $1013                       ; $9AD78D  8D 13 10     MX
    LDA $5C                         ; $9AD790  A5 5C        MX
    SEC                             ; $9AD792  38           MX
    SBC $DEDC,X                     ; $9AD793  FD DC DE     MX
    STA $5C                         ; $9AD796  85 5C        MX
    LDA $0F06                       ; $9AD798  AD 06 0F     MX
    SBC $DEDE,X                     ; $9AD79B  FD DE DE     MX
    STA $1015                       ; $9AD79E  8D 15 10     MX
    LDA $5E                         ; $9AD7A1  A5 5E        MX
    SEC                             ; $9AD7A3  38           MX
    SBC $DEE0,X                     ; $9AD7A4  FD E0 DE     MX
    STA $5E                         ; $9AD7A7  85 5E        MX
    LDA $0F08                       ; $9AD7A9  AD 08 0F     MX
    SBC $DEE2,X                     ; $9AD7AC  FD E2 DE     MX
    STA $1017                       ; $9AD7AF  8D 17 10     MX
    LDA $60                         ; $9AD7B2  A5 60        MX
    SEC                             ; $9AD7B4  38           MX
    SBC $DEE4,X                     ; $9AD7B5  FD E4 DE     MX
    STA $60                         ; $9AD7B8  85 60        MX
    LDA $0F0A                       ; $9AD7BA  AD 0A 0F     MX
    SBC $DEE6,X                     ; $9AD7BD  FD E6 DE     MX
    STA $1019                       ; $9AD7C0  8D 19 10     MX
    LDA $62                         ; $9AD7C3  A5 62        MX
    SEC                             ; $9AD7C5  38           MX
    SBC $DEE8,X                     ; $9AD7C6  FD E8 DE     MX
    STA $62                         ; $9AD7C9  85 62        MX
    LDA $0F0C                       ; $9AD7CB  AD 0C 0F     MX
    SBC $DEEA,X                     ; $9AD7CE  FD EA DE     MX
    STA $101B                       ; $9AD7D1  8D 1B 10     MX
    LDA $64                         ; $9AD7D4  A5 64        MX
    SEC                             ; $9AD7D6  38           MX
    SBC $DEEC,X                     ; $9AD7D7  FD EC DE     MX
    STA $64                         ; $9AD7DA  85 64        MX
    LDA $0F0E                       ; $9AD7DC  AD 0E 0F     MX
    SBC $DEEE,X                     ; $9AD7DF  FD EE DE     MX
    STA $101D                       ; $9AD7E2  8D 1D 10     MX
    LDA $66                         ; $9AD7E5  A5 66        MX
    SEC                             ; $9AD7E7  38           MX
    SBC $DEF0,X                     ; $9AD7E8  FD F0 DE     MX
    STA $66                         ; $9AD7EB  85 66        MX
    LDA $0F10                       ; $9AD7ED  AD 10 0F     MX
    SBC $DEF2,X                     ; $9AD7F0  FD F2 DE     MX
    STA $101F                       ; $9AD7F3  8D 1F 10     MX
    LDA $68                         ; $9AD7F6  A5 68        MX
    SEC                             ; $9AD7F8  38           MX
    SBC $DEF4,X                     ; $9AD7F9  FD F4 DE     MX
    STA $68                         ; $9AD7FC  85 68        MX
    LDA $0F12                       ; $9AD7FE  AD 12 0F     MX
    SBC $DEF6,X                     ; $9AD801  FD F6 DE     MX
    STA $1021                       ; $9AD804  8D 21 10     MX
    LDA $6A                         ; $9AD807  A5 6A        MX
    SEC                             ; $9AD809  38           MX
    SBC $DEF8,X                     ; $9AD80A  FD F8 DE     MX
    STA $6A                         ; $9AD80D  85 6A        MX
    LDA $0F14                       ; $9AD80F  AD 14 0F     MX
    SBC $DEFA,X                     ; $9AD812  FD FA DE     MX
    STA $1023                       ; $9AD815  8D 23 10     MX
    LDA $6C                         ; $9AD818  A5 6C        MX
    SEC                             ; $9AD81A  38           MX
    SBC $DEFC,X                     ; $9AD81B  FD FC DE     MX
    STA $6C                         ; $9AD81E  85 6C        MX
    LDA $0F16                       ; $9AD820  AD 16 0F     MX
    SBC $DEFE,X                     ; $9AD823  FD FE DE     MX
    STA $1025                       ; $9AD826  8D 25 10     MX
    LDA $6E                         ; $9AD829  A5 6E        MX
    SEC                             ; $9AD82B  38           MX
    SBC $DF00,X                     ; $9AD82C  FD 00 DF     MX
    STA $6E                         ; $9AD82F  85 6E        MX
    LDA $0F18                       ; $9AD831  AD 18 0F     MX
    SBC $DF02,X                     ; $9AD834  FD 02 DF     MX
    STA $1027                       ; $9AD837  8D 27 10     MX
    LDA $70                         ; $9AD83A  A5 70        MX
    SEC                             ; $9AD83C  38           MX
    SBC $DF04,X                     ; $9AD83D  FD 04 DF     MX
    STA $70                         ; $9AD840  85 70        MX
    LDA $0F1A                       ; $9AD842  AD 1A 0F     MX
    SBC $DF06,X                     ; $9AD845  FD 06 DF     MX
    STA $1029                       ; $9AD848  8D 29 10     MX
    LDA $72                         ; $9AD84B  A5 72        MX
    SEC                             ; $9AD84D  38           MX
    SBC $DF08,X                     ; $9AD84E  FD 08 DF     MX
    STA $72                         ; $9AD851  85 72        MX
    LDA $0F1C                       ; $9AD853  AD 1C 0F     MX
    SBC $DF0A,X                     ; $9AD856  FD 0A DF     MX
    STA $102B                       ; $9AD859  8D 2B 10     MX
    LDA $74                         ; $9AD85C  A5 74        MX
    SEC                             ; $9AD85E  38           MX
    SBC $DF0C,X                     ; $9AD85F  FD 0C DF     MX
    STA $74                         ; $9AD862  85 74        MX
    LDA $0F1E                       ; $9AD864  AD 1E 0F     MX
    SBC $DF0E,X                     ; $9AD867  FD 0E DF     MX
    STA $102D                       ; $9AD86A  8D 2D 10     MX
    LDA $76                         ; $9AD86D  A5 76        MX
    SEC                             ; $9AD86F  38           MX
    SBC $DF10,X                     ; $9AD870  FD 10 DF     MX
    STA $76                         ; $9AD873  85 76        MX
    LDA $0F20                       ; $9AD875  AD 20 0F     MX
    SBC $DF12,X                     ; $9AD878  FD 12 DF     MX
    STA $102F                       ; $9AD87B  8D 2F 10     MX
    LDA $78                         ; $9AD87E  A5 78        MX
    SEC                             ; $9AD880  38           MX
    SBC $DF14,X                     ; $9AD881  FD 14 DF     MX
    STA $78                         ; $9AD884  85 78        MX
    LDA $0F22                       ; $9AD886  AD 22 0F     MX
    SBC $DF16,X                     ; $9AD889  FD 16 DF     MX
    STA $1031                       ; $9AD88C  8D 31 10     MX
    LDA $7A                         ; $9AD88F  A5 7A        MX
    SEC                             ; $9AD891  38           MX
    SBC $DF18,X                     ; $9AD892  FD 18 DF     MX
    STA $7A                         ; $9AD895  85 7A        MX
    LDA $0F24                       ; $9AD897  AD 24 0F     MX
    SBC $DF1A,X                     ; $9AD89A  FD 1A DF     MX
    STA $1033                       ; $9AD89D  8D 33 10     MX
    LDA $7C                         ; $9AD8A0  A5 7C        MX
    SEC                             ; $9AD8A2  38           MX
    SBC $DF1C,X                     ; $9AD8A3  FD 1C DF     MX
    STA $7C                         ; $9AD8A6  85 7C        MX
    LDA $0F26                       ; $9AD8A8  AD 26 0F     MX
    SBC $DF1E,X                     ; $9AD8AB  FD 1E DF     MX
    STA $1035                       ; $9AD8AE  8D 35 10     MX
    LDA $7E                         ; $9AD8B1  A5 7E        MX
    SEC                             ; $9AD8B3  38           MX
    SBC $DF20,X                     ; $9AD8B4  FD 20 DF     MX
    STA $7E                         ; $9AD8B7  85 7E        MX
    LDA $0F28                       ; $9AD8B9  AD 28 0F     MX
    SBC $DF22,X                     ; $9AD8BC  FD 22 DF     MX
    STA $1037                       ; $9AD8BF  8D 37 10     MX
    LDA $80                         ; $9AD8C2  A5 80        MX
    SEC                             ; $9AD8C4  38           MX
    SBC $DF24,X                     ; $9AD8C5  FD 24 DF     MX
    STA $80                         ; $9AD8C8  85 80        MX
    LDA $0F2A                       ; $9AD8CA  AD 2A 0F     MX
    SBC $DF26,X                     ; $9AD8CD  FD 26 DF     MX
    STA $1039                       ; $9AD8D0  8D 39 10     MX
    LDA $82                         ; $9AD8D3  A5 82        MX
    SEC                             ; $9AD8D5  38           MX
    SBC $DF28,X                     ; $9AD8D6  FD 28 DF     MX
    STA $82                         ; $9AD8D9  85 82        MX
    LDA $0F2C                       ; $9AD8DB  AD 2C 0F     MX
    SBC $DF2A,X                     ; $9AD8DE  FD 2A DF     MX
    STA $103B                       ; $9AD8E1  8D 3B 10     MX
    LDA $84                         ; $9AD8E4  A5 84        MX
    SEC                             ; $9AD8E6  38           MX
    SBC $DF2C,X                     ; $9AD8E7  FD 2C DF     MX
    STA $84                         ; $9AD8EA  85 84        MX
    LDA $0F2E                       ; $9AD8EC  AD 2E 0F     MX
    SBC $DF2E,X                     ; $9AD8EF  FD 2E DF     MX
    STA $103D                       ; $9AD8F2  8D 3D 10     MX
    LDA $86                         ; $9AD8F5  A5 86        MX
    SEC                             ; $9AD8F7  38           MX
    SBC $DF30,X                     ; $9AD8F8  FD 30 DF     MX
    STA $86                         ; $9AD8FB  85 86        MX
    LDA $0F30                       ; $9AD8FD  AD 30 0F     MX
    SBC $DF32,X                     ; $9AD900  FD 32 DF     MX
    STA $103F                       ; $9AD903  8D 3F 10     MX
    LDA $88                         ; $9AD906  A5 88        MX
    SEC                             ; $9AD908  38           MX
    SBC $DF34,X                     ; $9AD909  FD 34 DF     MX
    STA $88                         ; $9AD90C  85 88        MX
    LDA $0F32                       ; $9AD90E  AD 32 0F     MX
    SBC $DF36,X                     ; $9AD911  FD 36 DF     MX
    STA $1041                       ; $9AD914  8D 41 10     MX
    LDA $8A                         ; $9AD917  A5 8A        MX
    SEC                             ; $9AD919  38           MX
    SBC $DF38,X                     ; $9AD91A  FD 38 DF     MX
    STA $8A                         ; $9AD91D  85 8A        MX
    LDA $0F34                       ; $9AD91F  AD 34 0F     MX
    SBC $DF3A,X                     ; $9AD922  FD 3A DF     MX
    STA $1043                       ; $9AD925  8D 43 10     MX
    LDA $8C                         ; $9AD928  A5 8C        MX
    SEC                             ; $9AD92A  38           MX
    SBC $DF3C,X                     ; $9AD92B  FD 3C DF     MX
    STA $8C                         ; $9AD92E  85 8C        MX
    LDA $0F36                       ; $9AD930  AD 36 0F     MX
    SBC $DF3E,X                     ; $9AD933  FD 3E DF     MX
    STA $1045                       ; $9AD936  8D 45 10     MX
    LDA $8E                         ; $9AD939  A5 8E        MX
    SEC                             ; $9AD93B  38           MX
    SBC $DF40,X                     ; $9AD93C  FD 40 DF     MX
    STA $8E                         ; $9AD93F  85 8E        MX
    LDA $0F38                       ; $9AD941  AD 38 0F     MX
    SBC $DF42,X                     ; $9AD944  FD 42 DF     MX
    STA $1047                       ; $9AD947  8D 47 10     MX
    LDA $90                         ; $9AD94A  A5 90        MX
    SEC                             ; $9AD94C  38           MX
    SBC $DF44,X                     ; $9AD94D  FD 44 DF     MX
    STA $90                         ; $9AD950  85 90        MX
    LDA $0F3A                       ; $9AD952  AD 3A 0F     MX
    SBC $DF46,X                     ; $9AD955  FD 46 DF     MX
    STA $1049                       ; $9AD958  8D 49 10     MX
    LDA $92                         ; $9AD95B  A5 92        MX
    SEC                             ; $9AD95D  38           MX
    SBC $DF48,X                     ; $9AD95E  FD 48 DF     MX
    STA $92                         ; $9AD961  85 92        MX
    LDA $0F3C                       ; $9AD963  AD 3C 0F     MX
    SBC $DF4A,X                     ; $9AD966  FD 4A DF     MX
    STA $104B                       ; $9AD969  8D 4B 10     MX
    LDA $94                         ; $9AD96C  A5 94        MX
    SEC                             ; $9AD96E  38           MX
    SBC $DF4C,X                     ; $9AD96F  FD 4C DF     MX
    STA $94                         ; $9AD972  85 94        MX
    LDA $0F3E                       ; $9AD974  AD 3E 0F     MX
    SBC $DF4E,X                     ; $9AD977  FD 4E DF     MX
    STA $104D                       ; $9AD97A  8D 4D 10     MX
    LDA $96                         ; $9AD97D  A5 96        MX
    SEC                             ; $9AD97F  38           MX
    SBC $DF50,X                     ; $9AD980  FD 50 DF     MX
    STA $96                         ; $9AD983  85 96        MX
    LDA $0F40                       ; $9AD985  AD 40 0F     MX
    SBC $DF52,X                     ; $9AD988  FD 52 DF     MX
    STA $104F                       ; $9AD98B  8D 4F 10     MX
    LDA $98                         ; $9AD98E  A5 98        MX
    SEC                             ; $9AD990  38           MX
    SBC $DF54,X                     ; $9AD991  FD 54 DF     MX
    STA $98                         ; $9AD994  85 98        MX
    LDA $0F42                       ; $9AD996  AD 42 0F     MX
    SBC $DF56,X                     ; $9AD999  FD 56 DF     MX
    STA $1051                       ; $9AD99C  8D 51 10     MX
    LDA $9A                         ; $9AD99F  A5 9A        MX
    SEC                             ; $9AD9A1  38           MX
    SBC $DF58,X                     ; $9AD9A2  FD 58 DF     MX
    STA $9A                         ; $9AD9A5  85 9A        MX
    LDA $0F44                       ; $9AD9A7  AD 44 0F     MX
    SBC $DF5A,X                     ; $9AD9AA  FD 5A DF     MX
    STA $1053                       ; $9AD9AD  8D 53 10     MX
    LDA $9C                         ; $9AD9B0  A5 9C        MX
    SEC                             ; $9AD9B2  38           MX
    SBC $DF5C,X                     ; $9AD9B3  FD 5C DF     MX
    STA $9C                         ; $9AD9B6  85 9C        MX
    LDA $0F46                       ; $9AD9B8  AD 46 0F     MX
    SBC $DF5E,X                     ; $9AD9BB  FD 5E DF     MX
    STA $1055                       ; $9AD9BE  8D 55 10     MX
    LDA $9E                         ; $9AD9C1  A5 9E        MX
    SEC                             ; $9AD9C3  38           MX
    SBC $DF60,X                     ; $9AD9C4  FD 60 DF     MX
    STA $9E                         ; $9AD9C7  85 9E        MX
    LDA $0F48                       ; $9AD9C9  AD 48 0F     MX
    SBC $DF62,X                     ; $9AD9CC  FD 62 DF     MX
    STA $1057                       ; $9AD9CF  8D 57 10     MX
    LDA $A0                         ; $9AD9D2  A5 A0        MX
    SEC                             ; $9AD9D4  38           MX
    SBC $DF64,X                     ; $9AD9D5  FD 64 DF     MX
    STA $A0                         ; $9AD9D8  85 A0        MX
    LDA $0F4A                       ; $9AD9DA  AD 4A 0F     MX
    SBC $DF66,X                     ; $9AD9DD  FD 66 DF     MX
    STA $1059                       ; $9AD9E0  8D 59 10     MX
    LDA $A2                         ; $9AD9E3  A5 A2        MX
    SEC                             ; $9AD9E5  38           MX
    SBC $DF68,X                     ; $9AD9E6  FD 68 DF     MX
    STA $A2                         ; $9AD9E9  85 A2        MX
    LDA $0F4C                       ; $9AD9EB  AD 4C 0F     MX
    SBC $DF6A,X                     ; $9AD9EE  FD 6A DF     MX
    STA $105B                       ; $9AD9F1  8D 5B 10     MX
    LDA $A4                         ; $9AD9F4  A5 A4        MX
    SEC                             ; $9AD9F6  38           MX
    SBC $DF6C,X                     ; $9AD9F7  FD 6C DF     MX
    STA $A4                         ; $9AD9FA  85 A4        MX
    LDA $0F4E                       ; $9AD9FC  AD 4E 0F     MX
    SBC $DF6E,X                     ; $9AD9FF  FD 6E DF     MX
    STA $105D                       ; $9ADA02  8D 5D 10     MX
    LDA $A6                         ; $9ADA05  A5 A6        MX
    SEC                             ; $9ADA07  38           MX
    SBC $DF70,X                     ; $9ADA08  FD 70 DF     MX
    STA $A6                         ; $9ADA0B  85 A6        MX
    LDA $0F50                       ; $9ADA0D  AD 50 0F     MX
    SBC $DF72,X                     ; $9ADA10  FD 72 DF     MX
    STA $105F                       ; $9ADA13  8D 5F 10     MX
    LDA $A8                         ; $9ADA16  A5 A8        MX
    SEC                             ; $9ADA18  38           MX
    SBC $DF74,X                     ; $9ADA19  FD 74 DF     MX
    STA $A8                         ; $9ADA1C  85 A8        MX
    LDA $0F52                       ; $9ADA1E  AD 52 0F     MX
    SBC $DF76,X                     ; $9ADA21  FD 76 DF     MX
    STA $1061                       ; $9ADA24  8D 61 10     MX
    LDA $AA                         ; $9ADA27  A5 AA        MX
    SEC                             ; $9ADA29  38           MX
    SBC $DF78,X                     ; $9ADA2A  FD 78 DF     MX
    STA $AA                         ; $9ADA2D  85 AA        MX
    LDA $0F54                       ; $9ADA2F  AD 54 0F     MX
    SBC $DF7A,X                     ; $9ADA32  FD 7A DF     MX
    STA $1063                       ; $9ADA35  8D 63 10     MX
    LDA $AC                         ; $9ADA38  A5 AC        MX
    SEC                             ; $9ADA3A  38           MX
    SBC $DF7C,X                     ; $9ADA3B  FD 7C DF     MX
    STA $AC                         ; $9ADA3E  85 AC        MX
    LDA $0F56                       ; $9ADA40  AD 56 0F     MX
    SBC $DF7E,X                     ; $9ADA43  FD 7E DF     MX
    STA $1065                       ; $9ADA46  8D 65 10     MX
    LDA $AE                         ; $9ADA49  A5 AE        MX
    SEC                             ; $9ADA4B  38           MX
    SBC $DF80,X                     ; $9ADA4C  FD 80 DF     MX
    STA $AE                         ; $9ADA4F  85 AE        MX
    LDA $0F58                       ; $9ADA51  AD 58 0F     MX
    SBC $DF82,X                     ; $9ADA54  FD 82 DF     MX
    STA $1067                       ; $9ADA57  8D 67 10     MX
    LDA $B0                         ; $9ADA5A  A5 B0        MX
    SEC                             ; $9ADA5C  38           MX
    SBC $DF84,X                     ; $9ADA5D  FD 84 DF     MX
    STA $B0                         ; $9ADA60  85 B0        MX
    LDA $0F5A                       ; $9ADA62  AD 5A 0F     MX
    SBC $DF86,X                     ; $9ADA65  FD 86 DF     MX
    STA $1069                       ; $9ADA68  8D 69 10     MX
    LDA $B2                         ; $9ADA6B  A5 B2        MX
    SEC                             ; $9ADA6D  38           MX
    SBC $DF88,X                     ; $9ADA6E  FD 88 DF     MX
    STA $B2                         ; $9ADA71  85 B2        MX
    LDA $0F5C                       ; $9ADA73  AD 5C 0F     MX
    SBC $DF8A,X                     ; $9ADA76  FD 8A DF     MX
    STA $106B                       ; $9ADA79  8D 6B 10     MX
    LDA $B4                         ; $9ADA7C  A5 B4        MX
    SEC                             ; $9ADA7E  38           MX
    SBC $DF8C,X                     ; $9ADA7F  FD 8C DF     MX
    STA $B4                         ; $9ADA82  85 B4        MX
    LDA $0F5E                       ; $9ADA84  AD 5E 0F     MX
    SBC $DF8E,X                     ; $9ADA87  FD 8E DF     MX
    STA $106D                       ; $9ADA8A  8D 6D 10     MX
    LDA $B6                         ; $9ADA8D  A5 B6        MX
    SEC                             ; $9ADA8F  38           MX
    SBC $DF90,X                     ; $9ADA90  FD 90 DF     MX
    STA $B6                         ; $9ADA93  85 B6        MX
    LDA $0F60                       ; $9ADA95  AD 60 0F     MX
    SBC $DF92,X                     ; $9ADA98  FD 92 DF     MX
    STA $106F                       ; $9ADA9B  8D 6F 10     MX
    LDA $B8                         ; $9ADA9E  A5 B8        MX
    SEC                             ; $9ADAA0  38           MX
    SBC $DF94,X                     ; $9ADAA1  FD 94 DF     MX
    STA $B8                         ; $9ADAA4  85 B8        MX
    LDA $0F62                       ; $9ADAA6  AD 62 0F     MX
    SBC $DF96,X                     ; $9ADAA9  FD 96 DF     MX
    STA $1071                       ; $9ADAAC  8D 71 10     MX
    LDA $BA                         ; $9ADAAF  A5 BA        MX
    SEC                             ; $9ADAB1  38           MX
    SBC $DF98,X                     ; $9ADAB2  FD 98 DF     MX
    STA $BA                         ; $9ADAB5  85 BA        MX
    LDA $0F64                       ; $9ADAB7  AD 64 0F     MX
    SBC $DF9A,X                     ; $9ADABA  FD 9A DF     MX
    STA $1073                       ; $9ADABD  8D 73 10     MX
    LDA $BC                         ; $9ADAC0  A5 BC        MX
    SEC                             ; $9ADAC2  38           MX
    SBC $DF9C,X                     ; $9ADAC3  FD 9C DF     MX
    STA $BC                         ; $9ADAC6  85 BC        MX
    LDA $0F66                       ; $9ADAC8  AD 66 0F     MX
    SBC $DF9E,X                     ; $9ADACB  FD 9E DF     MX
    STA $1075                       ; $9ADACE  8D 75 10     MX
    LDA $BE                         ; $9ADAD1  A5 BE        MX
    SEC                             ; $9ADAD3  38           MX
    SBC $DFA0,X                     ; $9ADAD4  FD A0 DF     MX
    STA $BE                         ; $9ADAD7  85 BE        MX
    LDA $0F68                       ; $9ADAD9  AD 68 0F     MX
    SBC $DFA2,X                     ; $9ADADC  FD A2 DF     MX
    STA $1077                       ; $9ADADF  8D 77 10     MX
    LDA $C0                         ; $9ADAE2  A5 C0        MX
    SEC                             ; $9ADAE4  38           MX
    SBC $DFA4,X                     ; $9ADAE5  FD A4 DF     MX
    STA $C0                         ; $9ADAE8  85 C0        MX
    LDA $0F6A                       ; $9ADAEA  AD 6A 0F     MX
    SBC $DFA6,X                     ; $9ADAED  FD A6 DF     MX
    STA $1079                       ; $9ADAF0  8D 79 10     MX
    LDA $C2                         ; $9ADAF3  A5 C2        MX
    SEC                             ; $9ADAF5  38           MX
    SBC $DFA8,X                     ; $9ADAF6  FD A8 DF     MX
    STA $C2                         ; $9ADAF9  85 C2        MX
    LDA $0F6C                       ; $9ADAFB  AD 6C 0F     MX
    SBC $DFAA,X                     ; $9ADAFE  FD AA DF     MX
    STA $107B                       ; $9ADB01  8D 7B 10     MX
    LDA $C4                         ; $9ADB04  A5 C4        MX
    SEC                             ; $9ADB06  38           MX
    SBC $DFAC,X                     ; $9ADB07  FD AC DF     MX
    STA $C4                         ; $9ADB0A  85 C4        MX
    LDA $0F6E                       ; $9ADB0C  AD 6E 0F     MX
    SBC $DFAE,X                     ; $9ADB0F  FD AE DF     MX
    STA $107D                       ; $9ADB12  8D 7D 10     MX
    LDA $C6                         ; $9ADB15  A5 C6        MX
    SEC                             ; $9ADB17  38           MX
    SBC $DFB0,X                     ; $9ADB18  FD B0 DF     MX
    STA $C6                         ; $9ADB1B  85 C6        MX
    LDA $0F70                       ; $9ADB1D  AD 70 0F     MX
    SBC $DFB2,X                     ; $9ADB20  FD B2 DF     MX
    STA $107F                       ; $9ADB23  8D 7F 10     MX
    LDA $C8                         ; $9ADB26  A5 C8        MX
    SEC                             ; $9ADB28  38           MX
    SBC $DFB4,X                     ; $9ADB29  FD B4 DF     MX
    STA $C8                         ; $9ADB2C  85 C8        MX
    LDA $0F72                       ; $9ADB2E  AD 72 0F     MX
    SBC $DFB6,X                     ; $9ADB31  FD B6 DF     MX
    STA $1081                       ; $9ADB34  8D 81 10     MX
    LDA $CA                         ; $9ADB37  A5 CA        MX
    SEC                             ; $9ADB39  38           MX
    SBC $DFB8,X                     ; $9ADB3A  FD B8 DF     MX
    STA $CA                         ; $9ADB3D  85 CA        MX
    LDA $0F74                       ; $9ADB3F  AD 74 0F     MX
    SBC $DFBA,X                     ; $9ADB42  FD BA DF     MX
    STA $1083                       ; $9ADB45  8D 83 10     MX
    LDA $CC                         ; $9ADB48  A5 CC        MX
    SEC                             ; $9ADB4A  38           MX
    SBC $DFBC,X                     ; $9ADB4B  FD BC DF     MX
    STA $CC                         ; $9ADB4E  85 CC        MX
    LDA $0F76                       ; $9ADB50  AD 76 0F     MX
    SBC $DFBE,X                     ; $9ADB53  FD BE DF     MX
    STA $1085                       ; $9ADB56  8D 85 10     MX
    LDA $CE                         ; $9ADB59  A5 CE        MX
    SEC                             ; $9ADB5B  38           MX
    SBC $DFC0,X                     ; $9ADB5C  FD C0 DF     MX
    STA $CE                         ; $9ADB5F  85 CE        MX
    LDA $0F78                       ; $9ADB61  AD 78 0F     MX
    SBC $DFC2,X                     ; $9ADB64  FD C2 DF     MX
    STA $1087                       ; $9ADB67  8D 87 10     MX
    LDA $D0                         ; $9ADB6A  A5 D0        MX
    SEC                             ; $9ADB6C  38           MX
    SBC $DFC4,X                     ; $9ADB6D  FD C4 DF     MX
    STA $D0                         ; $9ADB70  85 D0        MX
    LDA $0F7A                       ; $9ADB72  AD 7A 0F     MX
    SBC $DFC6,X                     ; $9ADB75  FD C6 DF     MX
    STA $1089                       ; $9ADB78  8D 89 10     MX
    LDA $D2                         ; $9ADB7B  A5 D2        MX
    SEC                             ; $9ADB7D  38           MX
    SBC $DFC8,X                     ; $9ADB7E  FD C8 DF     MX
    STA $D2                         ; $9ADB81  85 D2        MX
    LDA $0F7C                       ; $9ADB83  AD 7C 0F     MX
    SBC $DFCA,X                     ; $9ADB86  FD CA DF     MX
    STA $108B                       ; $9ADB89  8D 8B 10     MX
    LDA $D4                         ; $9ADB8C  A5 D4        MX
    SEC                             ; $9ADB8E  38           MX
    SBC $DFCC,X                     ; $9ADB8F  FD CC DF     MX
    STA $D4                         ; $9ADB92  85 D4        MX
    LDA $0F7E                       ; $9ADB94  AD 7E 0F     MX
    SBC $DFCE,X                     ; $9ADB97  FD CE DF     MX
    STA $108D                       ; $9ADB9A  8D 8D 10     MX
    LDA $D6                         ; $9ADB9D  A5 D6        MX
    SEC                             ; $9ADB9F  38           MX
    SBC $DFD0,X                     ; $9ADBA0  FD D0 DF     MX
    STA $D6                         ; $9ADBA3  85 D6        MX
    LDA $0F80                       ; $9ADBA5  AD 80 0F     MX
    SBC $DFD2,X                     ; $9ADBA8  FD D2 DF     MX
    STA $108F                       ; $9ADBAB  8D 8F 10     MX
    LDA $D8                         ; $9ADBAE  A5 D8        MX
    SEC                             ; $9ADBB0  38           MX
    SBC $DFD4,X                     ; $9ADBB1  FD D4 DF     MX
    STA $D8                         ; $9ADBB4  85 D8        MX
    LDA $0F82                       ; $9ADBB6  AD 82 0F     MX
    SBC $DFD6,X                     ; $9ADBB9  FD D6 DF     MX
    STA $1091                       ; $9ADBBC  8D 91 10     MX
    LDA $DA                         ; $9ADBBF  A5 DA        MX
    SEC                             ; $9ADBC1  38           MX
    SBC $DFD8,X                     ; $9ADBC2  FD D8 DF     MX
    STA $DA                         ; $9ADBC5  85 DA        MX
    LDA $0F84                       ; $9ADBC7  AD 84 0F     MX
    SBC $DFDA,X                     ; $9ADBCA  FD DA DF     MX
    STA $1093                       ; $9ADBCD  8D 93 10     MX
    LDA $DC                         ; $9ADBD0  A5 DC        MX
    SEC                             ; $9ADBD2  38           MX
    SBC $DFDC,X                     ; $9ADBD3  FD DC DF     MX
    STA $DC                         ; $9ADBD6  85 DC        MX
    LDA $0F86                       ; $9ADBD8  AD 86 0F     MX
    SBC $DFDE,X                     ; $9ADBDB  FD DE DF     MX
    STA $1095                       ; $9ADBDE  8D 95 10     MX
    LDA $DE                         ; $9ADBE1  A5 DE        MX
    SEC                             ; $9ADBE3  38           MX
    SBC $DFE0,X                     ; $9ADBE4  FD E0 DF     MX
    STA $DE                         ; $9ADBE7  85 DE        MX
    LDA $0F88                       ; $9ADBE9  AD 88 0F     MX
    SBC $DFE2,X                     ; $9ADBEC  FD E2 DF     MX
    STA $1097                       ; $9ADBEF  8D 97 10     MX
    LDA $E0                         ; $9ADBF2  A5 E0        MX
    SEC                             ; $9ADBF4  38           MX
    SBC $DFE4,X                     ; $9ADBF5  FD E4 DF     MX
    STA $E0                         ; $9ADBF8  85 E0        MX
    LDA $0F8A                       ; $9ADBFA  AD 8A 0F     MX
    SBC $DFE6,X                     ; $9ADBFD  FD E6 DF     MX
    STA $1099                       ; $9ADC00  8D 99 10     MX
    LDA $E2                         ; $9ADC03  A5 E2        MX
    SEC                             ; $9ADC05  38           MX
    SBC $DFE8,X                     ; $9ADC06  FD E8 DF     MX
    STA $E2                         ; $9ADC09  85 E2        MX
    LDA $0F8C                       ; $9ADC0B  AD 8C 0F     MX
    SBC $DFEA,X                     ; $9ADC0E  FD EA DF     MX
    STA $109B                       ; $9ADC11  8D 9B 10     MX
    LDA $E4                         ; $9ADC14  A5 E4        MX
    SEC                             ; $9ADC16  38           MX
    SBC $DFEC,X                     ; $9ADC17  FD EC DF     MX
    STA $E4                         ; $9ADC1A  85 E4        MX
    LDA $0F8E                       ; $9ADC1C  AD 8E 0F     MX
    SBC $DFEE,X                     ; $9ADC1F  FD EE DF     MX
    STA $109D                       ; $9ADC22  8D 9D 10     MX
    LDA $E6                         ; $9ADC25  A5 E6        MX
    SEC                             ; $9ADC27  38           MX
    SBC $DFF0,X                     ; $9ADC28  FD F0 DF     MX
    STA $E6                         ; $9ADC2B  85 E6        MX
    LDA $0F90                       ; $9ADC2D  AD 90 0F     MX
    SBC $DFF2,X                     ; $9ADC30  FD F2 DF     MX
    STA $109F                       ; $9ADC33  8D 9F 10     MX
    LDA #$0000                      ; $9ADC36  A9 00 00     MX
    TCD                             ; $9ADC39  5B           MX
L_9ADC3A:
    LDA $109F                       ; $9ADC3A  AD 9F 10     MX
    STA $10A1                       ; $9ADC3D  8D A1 10     MX
    STA $10A3                       ; $9ADC40  8D A3 10     MX
    STA $10A5                       ; $9ADC43  8D A5 10     MX
    STA $10A7                       ; $9ADC46  8D A7 10     MX
    SEP #$10                        ; $9ADC49  E2 10        MX
    LDA #$013F                      ; $9ADC4B  A9 3F 01     Mx
    SEC                             ; $9ADC4E  38           Mx
    SBC $012B                       ; $9ADC4F  ED 2B 01     Mx
    SEP #$20                        ; $9ADC52  E2 20        Mx
    STA $0FB2                       ; $9ADC54  8D B2 0F     mx
    REP #$20                        ; $9ADC57  C2 20        mx
    LDA #$011F                      ; $9ADC59  A9 1F 01     Mx
    SEC                             ; $9ADC5C  38           Mx
    SBC $012B                       ; $9ADC5D  ED 2B 01     Mx
    SEP #$20                        ; $9ADC60  E2 20        Mx
    STA $10AD                       ; $9ADC62  8D AD 10     mx
    REP #$20                        ; $9ADC65  C2 20        mx
L_9ADC67:
    LDA $0E7B                       ; $9ADC67  AD 7B 0E     Mx
    BNE L_9ADC6F                    ; $9ADC6A  D0 03        Mx
    JMP L_9ADCF1                    ; $9ADC6C  4C F1 DC     Mx
L_9ADC6F:
    BPL L_9ADCB7                    ; $9ADC6F  10 46        Mx
    EOR #$FFFF                      ; $9ADC71  49 FF FF     Mx
    CLC                             ; $9ADC74  18           Mx
    ADC #$0001                      ; $9ADC75  69 01 00     Mx
    STA $00DF                       ; $9ADC78  8D DF 00     Mx
    STZ $00D0                       ; $9ADC7B  9C D0 00     Mx
    STZ $00D2                       ; $9ADC7E  9C D2 00     Mx
    LDX #$2D                        ; $9ADC81  A2 2D        Mx
    STX $00D1                       ; $9ADC83  8E D1 00     Mx
    SEP #$20                        ; $9ADC86  E2 20        Mx
    LDA $00DF                       ; $9ADC88  AD DF 00     mx
    STA $4202                       ; $9ADC8B  8D 02 42     mx
    LDA $00D1                       ; $9ADC8E  AD D1 00     mx
    STA $4203                       ; $9ADC91  8D 03 42     mx
    NOP                             ; $9ADC94  EA           mx
    NOP                             ; $9ADC95  EA           mx
    NOP                             ; $9ADC96  EA           mx
    REP #$20                        ; $9ADC97  C2 20        mx
    LDA $4216                       ; $9ADC99  AD 16 42     Mx
    STA $00D1                       ; $9ADC9C  8D D1 00     Mx
    LDA $0E8B                       ; $9ADC9F  AD 8B 0E     Mx
    SEC                             ; $9ADCA2  38           Mx
    SBC $00D0                       ; $9ADCA3  ED D0 00     Mx
    STA $0E8B                       ; $9ADCA6  8D 8B 0E     Mx
    LDA $0E89                       ; $9ADCA9  AD 89 0E     Mx
    SBC $00DF                       ; $9ADCAC  ED DF 00     Mx
    SBC $00D2                       ; $9ADCAF  ED D2 00     Mx
    STA $0E89                       ; $9ADCB2  8D 89 0E     Mx
    BRA L_9ADCF1                    ; $9ADCB5  80 3A        Mx
L_9ADCB7:
    STZ $00D0                       ; $9ADCB7  9C D0 00     Mx
    STZ $00D2                       ; $9ADCBA  9C D2 00     Mx
    LDX #$2D                        ; $9ADCBD  A2 2D        Mx
    STX $00D1                       ; $9ADCBF  8E D1 00     Mx
    SEP #$20                        ; $9ADCC2  E2 20        Mx
    LDA $0E7B                       ; $9ADCC4  AD 7B 0E     mx
    STA $4202                       ; $9ADCC7  8D 02 42     mx
    LDA $00D1                       ; $9ADCCA  AD D1 00     mx
    STA $4203                       ; $9ADCCD  8D 03 42     mx
    NOP                             ; $9ADCD0  EA           mx
    NOP                             ; $9ADCD1  EA           mx
    NOP                             ; $9ADCD2  EA           mx
    REP #$20                        ; $9ADCD3  C2 20        mx
    LDA $4216                       ; $9ADCD5  AD 16 42     Mx
    STA $00D1                       ; $9ADCD8  8D D1 00     Mx
    LDA $0E8B                       ; $9ADCDB  AD 8B 0E     Mx
    CLC                             ; $9ADCDE  18           Mx
    ADC $00D0                       ; $9ADCDF  6D D0 00     Mx
    STA $0E8B                       ; $9ADCE2  8D 8B 0E     Mx
    LDA $0E89                       ; $9ADCE5  AD 89 0E     Mx
    ADC $0E7B                       ; $9ADCE8  6D 7B 0E     Mx
    ADC $00D2                       ; $9ADCEB  6D D2 00     Mx
    STA $0E89                       ; $9ADCEE  8D 89 0E     Mx
L_9ADCF1:
    LDA $0E89                       ; $9ADCF1  AD 89 0E     Mx
    CMP #$0078                      ; $9ADCF4  C9 78 00     Mx
    BCS L_9ADD09                    ; $9ADCF7  B0 10        Mx
    LDA $0E89                       ; $9ADCF9  AD 89 0E     Mx
    CLC                             ; $9ADCFC  18           Mx
    ADC #$0028                      ; $9ADCFD  69 28 00     Mx
    AND #$07FF                      ; $9ADD00  29 FF 07     Mx
    STA $0E8D                       ; $9ADD03  8D 8D 0E     Mx
    JMP L_9ADD24                    ; $9ADD06  4C 24 DD     Mx
L_9ADD09:
    CMP #$01B4                      ; $9ADD09  C9 B4 01     Mx
    BCC L_9ADD1E                    ; $9ADD0C  90 10        Mx
    LDA $0E89                       ; $9ADD0E  AD 89 0E     Mx
    SEC                             ; $9ADD11  38           Mx
    SBC #$0338                      ; $9ADD12  E9 38 03     Mx
    AND #$07FF                      ; $9ADD15  29 FF 07     Mx
    STA $0E8D                       ; $9ADD18  8D 8D 0E     Mx
    JMP L_9ADD24                    ; $9ADD1B  4C 24 DD     Mx
L_9ADD1E:
    LDA #$0098                      ; $9ADD1E  A9 98 00     Mx
    STA $0E8D                       ; $9ADD21  8D 8D 0E     Mx
L_9ADD24:
    PLB                             ; $9ADD24  AB           Mx
    LDA $0B50                       ; $9ADD25  AD 50 0B     Mx
    BNE L_9ADD2D                    ; $9ADD28  D0 03        Mx
    JMP L_9ADDB2                    ; $9ADD2A  4C B2 DD     Mx
L_9ADD2D:
    STZ $15FD                       ; $9ADD2D  9C FD 15     Mx
    DEC $0B50                       ; $9ADD30  CE 50 0B     Mx
    BNE L_9ADD86                    ; $9ADD33  D0 51        Mx
    REP #$10                        ; $9ADD35  C2 10        Mx
    LDA $0006                       ; $9ADD37  AD 06 00     MX
    AND #$0003                      ; $9ADD3A  29 03 00     MX
    CMP #$0003                      ; $9ADD3D  C9 03 00     MX
    BEQ L_9ADD4C                    ; $9ADD40  F0 0A        MX
L_9ADD42:
    LDA #$0001                      ; $9ADD42  A9 01 00     MX
    STA $0B50                       ; $9ADD45  8D 50 0B     MX
    SEP #$10                        ; $9ADD48  E2 10        MX
    BRA L_9ADD86                    ; $9ADD4A  80 3A        Mx
L_9ADD4C:
    LDA $0E7B                       ; $9ADD4C  AD 7B 0E     MX
    BNE L_9ADD42                    ; $9ADD4F  D0 F1        MX
    LDA #$6000                      ; $9ADD51  A9 00 60     MX
    STA $7E2002,X                   ; $9ADD54  9F 02 20 7E  MX
    LDA #$0110                      ; $9ADD58  A9 10 01     MX
    STA $7E2000,X                   ; $9ADD5B  9F 00 20 7E  MX
    LDA #$1801                      ; $9ADD5F  A9 01 18     MX
    STA $7E2004,X                   ; $9ADD62  9F 04 20 7E  MX
    LDA #$8004                      ; $9ADD66  A9 04 80     MX
    STA $7E2008,X                   ; $9ADD69  9F 08 20 7E  MX
    LDA #$E255                      ; $9ADD6D  A9 55 E2     MX
    STA $7E2006,X                   ; $9ADD70  9F 06 20 7E  MX
    TXA                             ; $9ADD74  8A           MX
    CLC                             ; $9ADD75  18           MX
    ADC #$000A                      ; $9ADD76  69 0A 00     MX
    TAX                             ; $9ADD79  AA           MX
    STA $0109                       ; $9ADD7A  8D 09 01     MX
    AND #$0000                      ; $9ADD7D  29 00 00     MX
    STA $7E2000,X                   ; $9ADD80  9F 00 20 7E  MX
    SEP #$10                        ; $9ADD84  E2 10        MX
L_9ADD86:
    LDA $0B50                       ; $9ADD86  AD 50 0B     Mx
    CMP #$00B3                      ; $9ADD89  C9 B3 00     Mx
    BEQ L_9ADDA9                    ; $9ADD8C  F0 1B        Mx
    LDA #$02FF                      ; $9ADD8E  A9 FF 02     Mx
    STA $10C5                       ; $9ADD91  8D C5 10     Mx
    LDA $0B6C                       ; $9ADD94  AD 6C 0B     Mx
    BEQ L_9ADDD2                    ; $9ADD97  F0 39        Mx
    LDA $0B76                       ; $9ADD99  AD 76 0B     Mx
    CMP #$0310                      ; $9ADD9C  C9 10 03     Mx
    BEQ L_9ADDD2                    ; $9ADD9F  F0 31        Mx
    LDA #$00F7                      ; $9ADDA1  A9 F7 00     Mx
    STA $10CB                       ; $9ADDA4  8D CB 10     Mx
    BRA L_9ADDD8                    ; $9ADDA7  80 2F        Mx
L_9ADDA9:
    LDA #$031F                      ; $9ADDA9  A9 1F 03     Mx
    STA $10C5                       ; $9ADDAC  8D C5 10     Mx
    JMP L_9ADDD2                    ; $9ADDAF  4C D2 DD     Mx
L_9ADDB2:
    LDA #$031F                      ; $9ADDB2  A9 1F 03     Mx
    STA $10C5                       ; $9ADDB5  8D C5 10     Mx
    LDA $0CD3                       ; $9ADDB8  AD D3 0C     Mx
    BEQ L_9ADDD2                    ; $9ADDBB  F0 15        Mx
    DEC $0CD3                       ; $9ADDBD  CE D3 0C     Mx
    BNE L_9ADDCA                    ; $9ADDC0  D0 08        Mx
    REP #$10                        ; $9ADDC2  C2 10        Mx
    JSL $009C70                     ; $9ADDC4  22 70 9C 00  MX
    SEP #$10                        ; $9ADDC8  E2 10        MX
L_9ADDCA:
    LDA #$007F                      ; $9ADDCA  A9 7F 00     Mx
    STA $10CB                       ; $9ADDCD  8D CB 10     Mx
    BNE L_9ADDD8                    ; $9ADDD0  D0 06        Mx
L_9ADDD2:
    LDA #$0027                      ; $9ADDD2  A9 27 00     Mx
    STA $10CB                       ; $9ADDD5  8D CB 10     Mx
L_9ADDD8:
    LDA $0006                       ; $9ADDD8  AD 06 00     Mx
    AND #$0001                      ; $9ADDDB  29 01 00     Mx
    BEQ L_9ADE02                    ; $9ADDDE  F0 22        Mx
    LDA $0FB9                       ; $9ADDE0  AD B9 0F     Mx
    STA $0FAD                       ; $9ADDE3  8D AD 0F     Mx
    STA $0FB0                       ; $9ADDE6  8D B0 0F     Mx
    STA $0FB3                       ; $9ADDE9  8D B3 0F     Mx
    STA $0FB6                       ; $9ADDEC  8D B6 0F     Mx
    STA $10B1                       ; $9ADDEF  8D B1 10     Mx
    LDA $0E8D                       ; $9ADDF2  AD 8D 0E     Mx
    STA $10AB                       ; $9ADDF5  8D AB 10     Mx
    STA $10AE                       ; $9ADDF8  8D AE 10     Mx
    STA $10B4                       ; $9ADDFB  8D B4 10     Mx
    STA $10B7                       ; $9ADDFE  8D B7 10     Mx
    RTL                             ; $9ADE01  6B           Mx
L_9ADE02:
    LDA $0EAA                       ; $9ADE02  AD AA 0E     Mx
    STA $0E9E                       ; $9ADE05  8D 9E 0E     Mx
    STA $0EA1                       ; $9ADE08  8D A1 0E     Mx
    STA $0EA4                       ; $9ADE0B  8D A4 0E     Mx
    STA $0EA7                       ; $9ADE0E  8D A7 0E     Mx
    STA $0FA2                       ; $9ADE11  8D A2 0F     Mx
    LDA $0E8D                       ; $9ADE14  AD 8D 0E     Mx
    STA $0F9C                       ; $9ADE17  8D 9C 0F     Mx
    STA $0F9F                       ; $9ADE1A  8D 9F 0F     Mx
    STA $0FA5                       ; $9ADE1D  8D A5 0F     Mx
    STA $0FA8                       ; $9ADE20  8D A8 0F     Mx
    RTL                             ; $9ADE23  6B           Mx
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADE24
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADE34
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADE44
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADE54
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADE64
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADE74
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADE84
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADE94
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADEA4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADEB4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADEC4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADED4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADEE4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADEF4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF04
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF14
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF24
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF34
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF44
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF54
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF64
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF74
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF84
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADF94
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADFA4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADFB4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADFC4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADFD4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADFE4
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9ADFF4
    db $00,$00,$01,$00,$C0,$00,$01,$00,$80,$01,$01,$00,$40,$02,$01,$00 ; $9AE004
    db $00,$03,$01,$00,$C0,$03,$01,$00,$80,$04,$01,$00,$40,$05,$01,$00 ; $9AE014
    db $00,$06,$01,$00,$C0,$06,$01,$00,$80,$07,$01,$00,$40,$08,$01,$00 ; $9AE024
    db $00,$09,$01,$00,$C0,$09,$01,$00,$80,$0A,$01,$00,$40,$0B,$01,$00 ; $9AE034
    db $00,$0C,$01,$00,$C0,$0C,$01,$00,$80,$0D,$01,$00,$40,$0E,$01,$00 ; $9AE044
    db $00,$0F,$01,$00,$C0,$0F,$01,$00,$80,$10,$01,$00,$40,$11,$01,$00 ; $9AE054
    db $00,$12,$01,$00,$C0,$12,$01,$00,$80,$13,$01,$00,$40,$14,$01,$00 ; $9AE064
    db $00,$15,$01,$00,$C0,$15,$01,$00,$80,$16,$01,$00,$40,$17,$01,$00 ; $9AE074
    db $00,$18,$01,$00,$C0,$18,$01,$00,$80,$19,$01,$00,$40,$1A,$01,$00 ; $9AE084
    db $00,$1B,$01,$00,$C0,$1B,$01,$00,$80,$1C,$01,$00,$40,$1D,$01,$00 ; $9AE094
    db $00,$1E,$01,$00,$C0,$1E,$01,$00,$80,$1F,$01,$00,$40,$20,$01,$00 ; $9AE0A4
    db $00,$21,$01,$00,$C0,$21,$01,$00,$80,$22,$01,$00,$40,$23,$01,$00 ; $9AE0B4
    db $00,$24,$01,$00,$C0,$24,$01,$00,$80,$25,$01,$00,$40,$26,$01,$00 ; $9AE0C4
    db $00,$27,$01,$00,$C0,$27,$01,$00,$80,$28,$01,$00,$40,$29,$01,$00 ; $9AE0D4
    db $00,$2A,$01,$00,$C0,$2A,$01,$00,$80,$2B,$01,$00,$40,$2C,$01,$00 ; $9AE0E4
    db $00,$2D,$01,$00,$C0,$2D,$01,$00,$80,$2E,$01,$00,$40,$2F,$01,$00 ; $9AE0F4
    db $00,$30,$01,$00,$C0,$30,$01,$00,$80,$31,$01,$00,$40,$32,$01,$00 ; $9AE104
    db $00,$33,$01,$00,$C0,$33,$01,$00,$80,$34,$01,$00,$40,$35,$01,$00 ; $9AE114
    db $00,$36,$01,$00,$C0,$36,$01,$00,$80,$37,$01,$00,$40,$38,$01,$00 ; $9AE124
    db $00,$39,$01,$00,$C0,$39,$01,$00,$80,$3A,$01,$00,$40,$3B,$01,$00 ; $9AE134
    db $00,$3C,$01,$00,$C0,$3C,$01,$00,$80,$3D,$01,$00,$40,$3E,$01,$00 ; $9AE144
    db $00,$3F,$01,$00,$C0,$3F,$01,$00,$80,$40,$01,$00,$40,$41,$01,$00 ; $9AE154
    db $00,$42,$01,$00,$C0,$42,$01,$00,$80,$43,$01,$00,$40,$44,$01,$00 ; $9AE164
    db $00,$45,$01,$00,$C0,$45,$01,$00,$80,$46,$01,$00,$40,$47,$01,$00 ; $9AE174
    db $00,$48,$01,$00,$C0,$48,$01,$00,$80,$49,$01,$00,$40,$4A,$01,$00 ; $9AE184
    db $00,$4B,$01,$00,$C0,$4B,$01,$00,$80,$4C,$01,$00,$40,$4D,$01,$00 ; $9AE194
    db $00,$4E,$01,$00,$C0,$4E,$01,$00,$80,$4F,$01,$00,$40,$50,$01,$00 ; $9AE1A4
    db $00,$51,$01,$00,$C0,$51,$01,$00,$80,$52,$01,$00,$40,$53,$01,$00 ; $9AE1B4
    db $00,$54,$01,$00,$C0,$54,$01,$00,$80,$55,$01,$00,$40,$56,$01,$00 ; $9AE1C4
    db $00,$57,$01,$00,$C0,$57,$01,$00,$80,$58,$01,$00,$40,$59,$01,$00 ; $9AE1D4
    db $00,$00,$02,$00,$80,$01,$02,$00,$00,$03,$02,$00,$80,$04,$02,$00 ; $9AE1E4
    db $00,$06,$02,$00,$80,$07,$02,$00,$00,$09,$02,$00,$80,$0A,$02,$00 ; $9AE1F4
    db $00,$0C,$02,$00,$80,$0D,$02,$00,$00,$0F,$02,$00,$80,$10,$02,$00 ; $9AE204
    db $00,$12,$02,$00,$80,$13,$02,$00,$00,$15,$02,$00,$80,$16,$02,$00 ; $9AE214
    db $00,$18,$02,$00,$80,$19,$02,$00,$00,$1B,$02,$00,$80,$1C,$02,$00 ; $9AE224
    db $00,$1E,$02,$00,$80,$1F,$02,$00,$00,$21,$02,$00,$80,$22,$02,$00 ; $9AE234
    db $00,$24,$02,$00,$80,$25,$02,$00,$00,$27,$02,$00,$80,$28,$02,$00 ; $9AE244
    db $00,$2A,$02,$00,$80,$2B,$02,$00,$00,$2D,$02,$00,$80,$2E,$02,$00 ; $9AE254
    db $00,$30,$02,$00,$80,$31,$02,$00,$00,$33,$02,$00,$80,$34,$02,$00 ; $9AE264
    db $00,$36,$02,$00,$80,$37,$02,$00,$00,$39,$02,$00,$80,$3A,$02,$00 ; $9AE274
    db $00,$3C,$02,$00,$80,$3D,$02,$00,$00,$3F,$02,$00,$80,$40,$02,$00 ; $9AE284
    db $00,$42,$02,$00,$80,$43,$02,$00,$00,$45,$02,$00,$80,$46,$02,$00 ; $9AE294
    db $00,$48,$02,$00,$80,$49,$02,$00,$00,$4B,$02,$00,$80,$4C,$02,$00 ; $9AE2A4
    db $00,$4E,$02,$00,$80,$4F,$02,$00,$00,$51,$02,$00,$80,$52,$02,$00 ; $9AE2B4
    db $00,$54,$02,$00,$80,$55,$02,$00,$00,$57,$02,$00,$80,$58,$02,$00 ; $9AE2C4
    db $00,$5A,$02,$00,$80,$5B,$02,$00,$00,$5D,$02,$00,$80,$5E,$02,$00 ; $9AE2D4
    db $00,$60,$02,$00,$80,$61,$02,$00,$00,$63,$02,$00,$80,$64,$02,$00 ; $9AE2E4
    db $00,$66,$02,$00,$80,$67,$02,$00,$00,$69,$02,$00,$80,$6A,$02,$00 ; $9AE2F4
    db $00,$6C,$02,$00,$80,$6D,$02,$00,$00,$6F,$02,$00,$80,$70,$02,$00 ; $9AE304
    db $00,$72,$02,$00,$80,$73,$02,$00,$00,$75,$02,$00,$80,$76,$02,$00 ; $9AE314
    db $00,$78,$02,$00,$80,$79,$02,$00,$00,$7B,$02,$00,$80,$7C,$02,$00 ; $9AE324
    db $00,$7E,$02,$00,$80,$7F,$02,$00,$00,$81,$02,$00,$80,$82,$02,$00 ; $9AE334
    db $00,$84,$02,$00,$80,$85,$02,$00,$00,$87,$02,$00,$80,$88,$02,$00 ; $9AE344
    db $00,$8A,$02,$00,$80,$8B,$02,$00,$00,$8D,$02,$00,$80,$8E,$02,$00 ; $9AE354
    db $00,$90,$02,$00,$80,$91,$02,$00,$00,$93,$02,$00,$80,$94,$02,$00 ; $9AE364
    db $00,$96,$02,$00,$80,$97,$02,$00,$00,$99,$02,$00,$80,$9A,$02,$00 ; $9AE374
    db $00,$9C,$02,$00,$80,$9D,$02,$00,$00,$9F,$02,$00,$80,$A0,$02,$00 ; $9AE384
    db $00,$A2,$02,$00,$80,$A3,$02,$00,$00,$A5,$02,$00,$80,$A6,$02,$00 ; $9AE394
    db $00,$A8,$02,$00,$80,$A9,$02,$00,$00,$AB,$02,$00,$80,$AC,$02,$00 ; $9AE3A4
    db $00,$AE,$02,$00,$80,$AF,$02,$00,$00,$B1,$02,$00,$80,$B2,$02,$00 ; $9AE3B4
    db $00,$00,$03,$00,$40,$02,$03,$00,$80,$04,$03,$00,$C0,$06,$03,$00 ; $9AE3C4
    db $00,$09,$03,$00,$40,$0B,$03,$00,$80,$0D,$03,$00,$C0,$0F,$03,$00 ; $9AE3D4
    db $00,$12,$03,$00,$40,$14,$03,$00,$80,$16,$03,$00,$C0,$18,$03,$00 ; $9AE3E4
    db $00,$1B,$03,$00,$40,$1D,$03,$00,$80,$1F,$03,$00,$C0,$21,$03,$00 ; $9AE3F4
    db $00,$24,$03,$00,$40,$26,$03,$00,$80,$28,$03,$00,$C0,$2A,$03,$00 ; $9AE404
    db $00,$2D,$03,$00,$40,$2F,$03,$00,$80,$31,$03,$00,$C0,$33,$03,$00 ; $9AE414
    db $00,$36,$03,$00,$40,$38,$03,$00,$80,$3A,$03,$00,$C0,$3C,$03,$00 ; $9AE424
    db $00,$3F,$03,$00,$40,$41,$03,$00,$80,$43,$03,$00,$C0,$45,$03,$00 ; $9AE434
    db $00,$48,$03,$00,$40,$4A,$03,$00,$80,$4C,$03,$00,$C0,$4E,$03,$00 ; $9AE444
    db $00,$51,$03,$00,$40,$53,$03,$00,$80,$55,$03,$00,$C0,$57,$03,$00 ; $9AE454
    db $00,$5A,$03,$00,$40,$5C,$03,$00,$80,$5E,$03,$00,$C0,$60,$03,$00 ; $9AE464
    db $00,$63,$03,$00,$40,$65,$03,$00,$80,$67,$03,$00,$C0,$69,$03,$00 ; $9AE474
    db $00,$6C,$03,$00,$40,$6E,$03,$00,$80,$70,$03,$00,$C0,$72,$03,$00 ; $9AE484
    db $00,$75,$03,$00,$40,$77,$03,$00,$80,$79,$03,$00,$C0,$7B,$03,$00 ; $9AE494
    db $00,$7E,$03,$00,$40,$80,$03,$00,$80,$82,$03,$00,$C0,$84,$03,$00 ; $9AE4A4
    db $00,$87,$03,$00,$40,$89,$03,$00,$80,$8B,$03,$00,$C0,$8D,$03,$00 ; $9AE4B4
    db $00,$90,$03,$00,$40,$92,$03,$00,$80,$94,$03,$00,$C0,$96,$03,$00 ; $9AE4C4
    db $00,$99,$03,$00,$40,$9B,$03,$00,$80,$9D,$03,$00,$C0,$9F,$03,$00 ; $9AE4D4
    db $00,$A2,$03,$00,$40,$A4,$03,$00,$80,$A6,$03,$00,$C0,$A8,$03,$00 ; $9AE4E4
    db $00,$AB,$03,$00,$40,$AD,$03,$00,$80,$AF,$03,$00,$C0,$B1,$03,$00 ; $9AE4F4
    db $00,$B4,$03,$00,$40,$B6,$03,$00,$80,$B8,$03,$00,$C0,$BA,$03,$00 ; $9AE504
    db $00,$BD,$03,$00,$40,$BF,$03,$00,$80,$C1,$03,$00,$C0,$C3,$03,$00 ; $9AE514
    db $00,$C6,$03,$00,$40,$C8,$03,$00,$80,$CA,$03,$00,$C0,$CC,$03,$00 ; $9AE524
    db $00,$CF,$03,$00,$40,$D1,$03,$00,$80,$D3,$03,$00,$C0,$D5,$03,$00 ; $9AE534
    db $00,$D8,$03,$00,$40,$DA,$03,$00,$80,$DC,$03,$00,$C0,$DE,$03,$00 ; $9AE544
    db $00,$E1,$03,$00,$40,$E3,$03,$00,$80,$E5,$03,$00,$C0,$E7,$03,$00 ; $9AE554
    db $00,$EA,$03,$00,$40,$EC,$03,$00,$80,$EE,$03,$00,$C0,$F0,$03,$00 ; $9AE564
    db $00,$F3,$03,$00,$40,$F5,$03,$00,$80,$F7,$03,$00,$C0,$F9,$03,$00 ; $9AE574
    db $00,$FC,$03,$00,$40,$FE,$03,$00,$80,$00,$04,$00,$C0,$02,$04,$00 ; $9AE584
    db $00,$05,$04,$00,$40,$07,$04,$00,$80,$09,$04,$00,$C0,$0B,$04,$00 ; $9AE594
    db $00,$00,$04,$00,$00,$03,$04,$00,$00,$06,$04,$00,$00,$09,$04,$00 ; $9AE5A4
    db $00,$0C,$04,$00,$00,$0F,$04,$00,$00,$12,$04,$00,$00,$15,$04,$00 ; $9AE5B4
    db $00,$18,$04,$00,$00,$1B,$04,$00,$00,$1E,$04,$00,$00,$21,$04,$00 ; $9AE5C4
    db $00,$24,$04,$00,$00,$27,$04,$00,$00,$2A,$04,$00,$00,$2D,$04,$00 ; $9AE5D4
    db $00,$30,$04,$00,$00,$33,$04,$00,$00,$36,$04,$00,$00,$39,$04,$00 ; $9AE5E4
    db $00,$3C,$04,$00,$00,$3F,$04,$00,$00,$42,$04,$00,$00,$45,$04,$00 ; $9AE5F4
    db $00,$48,$04,$00,$00,$4B,$04,$00,$00,$4E,$04,$00,$00,$51,$04,$00 ; $9AE604
    db $00,$54,$04,$00,$00,$57,$04,$00,$00,$5A,$04,$00,$00,$5D,$04,$00 ; $9AE614
    db $00,$60,$04,$00,$00,$63,$04,$00,$00,$66,$04,$00,$00,$69,$04,$00 ; $9AE624
    db $00,$6C,$04,$00,$00,$6F,$04,$00,$00,$72,$04,$00,$00,$75,$04,$00 ; $9AE634
    db $00,$78,$04,$00,$00,$7B,$04,$00,$00,$7E,$04,$00,$00,$81,$04,$00 ; $9AE644
    db $00,$84,$04,$00,$00,$87,$04,$00,$00,$8A,$04,$00,$00,$8D,$04,$00 ; $9AE654
    db $00,$90,$04,$00,$00,$93,$04,$00,$00,$96,$04,$00,$00,$99,$04,$00 ; $9AE664
    db $00,$9C,$04,$00,$00,$9F,$04,$00,$00,$A2,$04,$00,$00,$A5,$04,$00 ; $9AE674
    db $00,$A8,$04,$00,$00,$AB,$04,$00,$00,$AE,$04,$00,$00,$B1,$04,$00 ; $9AE684
    db $00,$B4,$04,$00,$00,$B7,$04,$00,$00,$BA,$04,$00,$00,$BD,$04,$00 ; $9AE694
    db $00,$C0,$04,$00,$00,$C3,$04,$00,$00,$C6,$04,$00,$00,$C9,$04,$00 ; $9AE6A4
    db $00,$CC,$04,$00,$00,$CF,$04,$00,$00,$D2,$04,$00,$00,$D5,$04,$00 ; $9AE6B4
    db $00,$D8,$04,$00,$00,$DB,$04,$00,$00,$DE,$04,$00,$00,$E1,$04,$00 ; $9AE6C4
    db $00,$E4,$04,$00,$00,$E7,$04,$00,$00,$EA,$04,$00,$00,$ED,$04,$00 ; $9AE6D4
    db $00,$F0,$04,$00,$00,$F3,$04,$00,$00,$F6,$04,$00,$00,$F9,$04,$00 ; $9AE6E4
    db $00,$FC,$04,$00,$00,$FF,$04,$00,$00,$02,$05,$00,$00,$05,$05,$00 ; $9AE6F4
    db $00,$08,$05,$00,$00,$0B,$05,$00,$00,$0E,$05,$00,$00,$11,$05,$00 ; $9AE704
    db $00,$14,$05,$00,$00,$17,$05,$00,$00,$1A,$05,$00,$00,$1D,$05,$00 ; $9AE714
    db $00,$20,$05,$00,$00,$23,$05,$00,$00,$26,$05,$00,$00,$29,$05,$00 ; $9AE724
    db $00,$2C,$05,$00,$00,$2F,$05,$00,$00,$32,$05,$00,$00,$35,$05,$00 ; $9AE734
    db $00,$38,$05,$00,$00,$3B,$05,$00,$00,$3E,$05,$00,$00,$41,$05,$00 ; $9AE744
    db $00,$44,$05,$00,$00,$47,$05,$00,$00,$4A,$05,$00,$00,$4D,$05,$00 ; $9AE754
    db $00,$50,$05,$00,$00,$53,$05,$00,$00,$56,$05,$00,$00,$59,$05,$00 ; $9AE764
    db $00,$5C,$05,$00,$00,$5F,$05,$00,$00,$62,$05,$00,$00,$65,$05,$00 ; $9AE774
    db $00,$00,$05,$00,$C0,$03,$05,$00,$80,$07,$05,$00,$40,$0B,$05,$00 ; $9AE784
    db $00,$0F,$05,$00,$C0,$12,$05,$00,$80,$16,$05,$00,$40,$1A,$05,$00 ; $9AE794
    db $00,$1E,$05,$00,$C0,$21,$05,$00,$80,$25,$05,$00,$40,$29,$05,$00 ; $9AE7A4
    db $00,$2D,$05,$00,$C0,$30,$05,$00,$80,$34,$05,$00,$40,$38,$05,$00 ; $9AE7B4
    db $00,$3C,$05,$00,$C0,$3F,$05,$00,$80,$43,$05,$00,$40,$47,$05,$00 ; $9AE7C4
    db $00,$4B,$05,$00,$C0,$4E,$05,$00,$80,$52,$05,$00,$40,$56,$05,$00 ; $9AE7D4
    db $00,$5A,$05,$00,$C0,$5D,$05,$00,$80,$61,$05,$00,$40,$65,$05,$00 ; $9AE7E4
    db $00,$69,$05,$00,$C0,$6C,$05,$00,$80,$70,$05,$00,$40,$74,$05,$00 ; $9AE7F4
    db $00,$78,$05,$00,$C0,$7B,$05,$00,$80,$7F,$05,$00,$40,$83,$05,$00 ; $9AE804
    db $00,$87,$05,$00,$C0,$8A,$05,$00,$80,$8E,$05,$00,$40,$92,$05,$00 ; $9AE814
    db $00,$96,$05,$00,$C0,$99,$05,$00,$80,$9D,$05,$00,$40,$A1,$05,$00 ; $9AE824
    db $00,$A5,$05,$00,$C0,$A8,$05,$00,$80,$AC,$05,$00,$40,$B0,$05,$00 ; $9AE834
    db $00,$B4,$05,$00,$C0,$B7,$05,$00,$80,$BB,$05,$00,$40,$BF,$05,$00 ; $9AE844
    db $00,$C3,$05,$00,$C0,$C6,$05,$00,$80,$CA,$05,$00,$40,$CE,$05,$00 ; $9AE854
    db $00,$D2,$05,$00,$C0,$D5,$05,$00,$80,$D9,$05,$00,$40,$DD,$05,$00 ; $9AE864
    db $00,$E1,$05,$00,$C0,$E4,$05,$00,$80,$E8,$05,$00,$40,$EC,$05,$00 ; $9AE874
    db $00,$F0,$05,$00,$C0,$F3,$05,$00,$80,$F7,$05,$00,$40,$FB,$05,$00 ; $9AE884
    db $00,$FF,$05,$00,$C0,$02,$06,$00,$80,$06,$06,$00,$40,$0A,$06,$00 ; $9AE894
    db $00,$0E,$06,$00,$C0,$11,$06,$00,$80,$15,$06,$00,$40,$19,$06,$00 ; $9AE8A4
    db $00,$1D,$06,$00,$C0,$20,$06,$00,$80,$24,$06,$00,$40,$28,$06,$00 ; $9AE8B4
    db $00,$2C,$06,$00,$C0,$2F,$06,$00,$80,$33,$06,$00,$40,$37,$06,$00 ; $9AE8C4
    db $00,$3B,$06,$00,$C0,$3E,$06,$00,$80,$42,$06,$00,$40,$46,$06,$00 ; $9AE8D4
    db $00,$4A,$06,$00,$C0,$4D,$06,$00,$80,$51,$06,$00,$40,$55,$06,$00 ; $9AE8E4
    db $00,$59,$06,$00,$C0,$5C,$06,$00,$80,$60,$06,$00,$40,$64,$06,$00 ; $9AE8F4
    db $00,$68,$06,$00,$C0,$6B,$06,$00,$80,$6F,$06,$00,$40,$73,$06,$00 ; $9AE904
    db $00,$77,$06,$00,$C0,$7A,$06,$00,$80,$7E,$06,$00,$40,$82,$06,$00 ; $9AE914
    db $00,$86,$06,$00,$C0,$89,$06,$00,$80,$8D,$06,$00,$40,$91,$06,$00 ; $9AE924
    db $00,$95,$06,$00,$C0,$98,$06,$00,$80,$9C,$06,$00,$40,$A0,$06,$00 ; $9AE934
    db $00,$A4,$06,$00,$C0,$A7,$06,$00,$80,$AB,$06,$00,$40,$AF,$06,$00 ; $9AE944
    db $00,$B3,$06,$00,$C0,$B6,$06,$00,$80,$BA,$06,$00,$40,$BE,$06,$00 ; $9AE954
    db $00,$00,$06,$00,$80,$04,$06,$00,$00,$09,$06,$00,$80,$0D,$06,$00 ; $9AE964
    db $00,$12,$06,$00,$80,$16,$06,$00,$00,$1B,$06,$00,$80,$1F,$06,$00 ; $9AE974
    db $00,$24,$06,$00,$80,$28,$06,$00,$00,$2D,$06,$00,$80,$31,$06,$00 ; $9AE984
    db $00,$36,$06,$00,$80,$3A,$06,$00,$00,$3F,$06,$00,$80,$43,$06,$00 ; $9AE994
    db $00,$48,$06,$00,$80,$4C,$06,$00,$00,$51,$06,$00,$80,$55,$06,$00 ; $9AE9A4
    db $00,$5A,$06,$00,$80,$5E,$06,$00,$00,$63,$06,$00,$80,$67,$06,$00 ; $9AE9B4
    db $00,$6C,$06,$00,$80,$70,$06,$00,$00,$75,$06,$00,$80,$79,$06,$00 ; $9AE9C4
    db $00,$7E,$06,$00,$80,$82,$06,$00,$00,$87,$06,$00,$80,$8B,$06,$00 ; $9AE9D4
    db $00,$90,$06,$00,$80,$94,$06,$00,$00,$99,$06,$00,$80,$9D,$06,$00 ; $9AE9E4
    db $00,$A2,$06,$00,$80,$A6,$06,$00,$00,$AB,$06,$00,$80,$AF,$06,$00 ; $9AE9F4
    db $00,$B4,$06,$00,$80,$B8,$06,$00,$00,$BD,$06,$00,$80,$C1,$06,$00 ; $9AEA04
    db $00,$C6,$06,$00,$80,$CA,$06,$00,$00,$CF,$06,$00,$80,$D3,$06,$00 ; $9AEA14
    db $00,$D8,$06,$00,$80,$DC,$06,$00,$00,$E1,$06,$00,$80,$E5,$06,$00 ; $9AEA24
    db $00,$EA,$06,$00,$80,$EE,$06,$00,$00,$F3,$06,$00,$80,$F7,$06,$00 ; $9AEA34
    db $00,$FC,$06,$00,$80,$00,$07,$00,$00,$05,$07,$00,$80,$09,$07,$00 ; $9AEA44
    db $00,$0E,$07,$00,$80,$12,$07,$00,$00,$17,$07,$00,$80,$1B,$07,$00 ; $9AEA54
    db $00,$20,$07,$00,$80,$24,$07,$00,$00,$29,$07,$00,$80,$2D,$07,$00 ; $9AEA64
    db $00,$32,$07,$00,$80,$36,$07,$00,$00,$3B,$07,$00,$80,$3F,$07,$00 ; $9AEA74
    db $00,$44,$07,$00,$80,$48,$07,$00,$00,$4D,$07,$00,$80,$51,$07,$00 ; $9AEA84
    db $00,$56,$07,$00,$80,$5A,$07,$00,$00,$5F,$07,$00,$80,$63,$07,$00 ; $9AEA94
    db $00,$68,$07,$00,$80,$6C,$07,$00,$00,$71,$07,$00,$80,$75,$07,$00 ; $9AEAA4
    db $00,$7A,$07,$00,$80,$7E,$07,$00,$00,$83,$07,$00,$80,$87,$07,$00 ; $9AEAB4
    db $00,$8C,$07,$00,$80,$90,$07,$00,$00,$95,$07,$00,$80,$99,$07,$00 ; $9AEAC4
    db $00,$9E,$07,$00,$80,$A2,$07,$00,$00,$A7,$07,$00,$80,$AB,$07,$00 ; $9AEAD4
    db $00,$B0,$07,$00,$80,$B4,$07,$00,$00,$B9,$07,$00,$80,$BD,$07,$00 ; $9AEAE4
    db $00,$C2,$07,$00,$80,$C6,$07,$00,$00,$CB,$07,$00,$80,$CF,$07,$00 ; $9AEAF4
    db $00,$D4,$07,$00,$80,$D8,$07,$00,$00,$DD,$07,$00,$80,$E1,$07,$00 ; $9AEB04
    db $00,$E6,$07,$00,$80,$EA,$07,$00,$00,$EF,$07,$00,$80,$F3,$07,$00 ; $9AEB14
    db $00,$F8,$07,$00,$80,$FC,$07,$00,$00,$01,$08,$00,$80,$05,$08,$00 ; $9AEB24
    db $00,$0A,$08,$00,$80,$0E,$08,$00,$00,$13,$08,$00,$80,$17,$08,$00 ; $9AEB34
    db $00,$00,$07,$00,$40,$05,$07,$00,$80,$0A,$07,$00,$C0,$0F,$07,$00 ; $9AEB44
    db $00,$15,$07,$00,$40,$1A,$07,$00,$80,$1F,$07,$00,$C0,$24,$07,$00 ; $9AEB54
    db $00,$2A,$07,$00,$40,$2F,$07,$00,$80,$34,$07,$00,$C0,$39,$07,$00 ; $9AEB64
    db $00,$3F,$07,$00,$40,$44,$07,$00,$80,$49,$07,$00,$C0,$4E,$07,$00 ; $9AEB74
    db $00,$54,$07,$00,$40,$59,$07,$00,$80,$5E,$07,$00,$C0,$63,$07,$00 ; $9AEB84
    db $00,$69,$07,$00,$40,$6E,$07,$00,$80,$73,$07,$00,$C0,$78,$07,$00 ; $9AEB94
    db $00,$7E,$07,$00,$40,$83,$07,$00,$80,$88,$07,$00,$C0,$8D,$07,$00 ; $9AEBA4
    db $00,$93,$07,$00,$40,$98,$07,$00,$80,$9D,$07,$00,$C0,$A2,$07,$00 ; $9AEBB4
    db $00,$A8,$07,$00,$40,$AD,$07,$00,$80,$B2,$07,$00,$C0,$B7,$07,$00 ; $9AEBC4
    db $00,$BD,$07,$00,$40,$C2,$07,$00,$80,$C7,$07,$00,$C0,$CC,$07,$00 ; $9AEBD4
    db $00,$D2,$07,$00,$40,$D7,$07,$00,$80,$DC,$07,$00,$C0,$E1,$07,$00 ; $9AEBE4
    db $00,$E7,$07,$00,$40,$EC,$07,$00,$80,$F1,$07,$00,$C0,$F6,$07,$00 ; $9AEBF4
    db $00,$FC,$07,$00,$40,$01,$08,$00,$80,$06,$08,$00,$C0,$0B,$08,$00 ; $9AEC04
    db $00,$11,$08,$00,$40,$16,$08,$00,$80,$1B,$08,$00,$C0,$20,$08,$00 ; $9AEC14
    db $00,$26,$08,$00,$40,$2B,$08,$00,$80,$30,$08,$00,$C0,$35,$08,$00 ; $9AEC24
    db $00,$3B,$08,$00,$40,$40,$08,$00,$80,$45,$08,$00,$C0,$4A,$08,$00 ; $9AEC34
    db $00,$50,$08,$00,$40,$55,$08,$00,$80,$5A,$08,$00,$C0,$5F,$08,$00 ; $9AEC44
    db $00,$65,$08,$00,$40,$6A,$08,$00,$80,$6F,$08,$00,$C0,$74,$08,$00 ; $9AEC54
    db $00,$7A,$08,$00,$40,$7F,$08,$00,$80,$84,$08,$00,$C0,$89,$08,$00 ; $9AEC64
    db $00,$8F,$08,$00,$40,$94,$08,$00,$80,$99,$08,$00,$C0,$9E,$08,$00 ; $9AEC74
    db $00,$A4,$08,$00,$40,$A9,$08,$00,$80,$AE,$08,$00,$C0,$B3,$08,$00 ; $9AEC84
    db $00,$B9,$08,$00,$40,$BE,$08,$00,$80,$C3,$08,$00,$C0,$C8,$08,$00 ; $9AEC94
    db $00,$CE,$08,$00,$40,$D3,$08,$00,$80,$D8,$08,$00,$C0,$DD,$08,$00 ; $9AECA4
    db $00,$E3,$08,$00,$40,$E8,$08,$00,$80,$ED,$08,$00,$C0,$F2,$08,$00 ; $9AECB4
    db $00,$F8,$08,$00,$40,$FD,$08,$00,$80,$02,$09,$00,$C0,$07,$09,$00 ; $9AECC4
    db $00,$0D,$09,$00,$40,$12,$09,$00,$80,$17,$09,$00,$C0,$1C,$09,$00 ; $9AECD4
    db $00,$22,$09,$00,$40,$27,$09,$00,$80,$2C,$09,$00,$C0,$31,$09,$00 ; $9AECE4
    db $00,$37,$09,$00,$40,$3C,$09,$00,$80,$41,$09,$00,$C0,$46,$09,$00 ; $9AECF4
    db $00,$4C,$09,$00,$40,$51,$09,$00,$80,$56,$09,$00,$C0,$5B,$09,$00 ; $9AED04
    db $00,$61,$09,$00,$40,$66,$09,$00,$80,$6B,$09,$00,$C0,$70,$09,$00 ; $9AED14
    db $00,$00,$08,$00,$00,$06,$08,$00,$00,$0C,$08,$00,$00,$12,$08,$00 ; $9AED24
    db $00,$18,$08,$00,$00,$1E,$08,$00,$00,$24,$08,$00,$00,$2A,$08,$00 ; $9AED34
    db $00,$30,$08,$00,$00,$36,$08,$00,$00,$3C,$08,$00,$00,$42,$08,$00 ; $9AED44
    db $00,$48,$08,$00,$00,$4E,$08,$00,$00,$54,$08,$00,$00,$5A,$08,$00 ; $9AED54
    db $00,$60,$08,$00,$00,$66,$08,$00,$00,$6C,$08,$00,$00,$72,$08,$00 ; $9AED64
    db $00,$78,$08,$00,$00,$7E,$08,$00,$00,$84,$08,$00,$00,$8A,$08,$00 ; $9AED74
    db $00,$90,$08,$00,$00,$96,$08,$00,$00,$9C,$08,$00,$00,$A2,$08,$00 ; $9AED84
    db $00,$A8,$08,$00,$00,$AE,$08,$00,$00,$B4,$08,$00,$00,$BA,$08,$00 ; $9AED94
    db $00,$C0,$08,$00,$00,$C6,$08,$00,$00,$CC,$08,$00,$00,$D2,$08,$00 ; $9AEDA4
    db $00,$D8,$08,$00,$00,$DE,$08,$00,$00,$E4,$08,$00,$00,$EA,$08,$00 ; $9AEDB4
    db $00,$F0,$08,$00,$00,$F6,$08,$00,$00,$FC,$08,$00,$00,$02,$09,$00 ; $9AEDC4
    db $00,$08,$09,$00,$00,$0E,$09,$00,$00,$14,$09,$00,$00,$1A,$09,$00 ; $9AEDD4
    db $00,$20,$09,$00,$00,$26,$09,$00,$00,$2C,$09,$00,$00,$32,$09,$00 ; $9AEDE4
    db $00,$38,$09,$00,$00,$3E,$09,$00,$00,$44,$09,$00,$00,$4A,$09,$00 ; $9AEDF4
    db $00,$50,$09,$00,$00,$56,$09,$00,$00,$5C,$09,$00,$00,$62,$09,$00 ; $9AEE04
    db $00,$68,$09,$00,$00,$6E,$09,$00,$00,$74,$09,$00,$00,$7A,$09,$00 ; $9AEE14
    db $00,$80,$09,$00,$00,$86,$09,$00,$00,$8C,$09,$00,$00,$92,$09,$00 ; $9AEE24
    db $00,$98,$09,$00,$00,$9E,$09,$00,$00,$A4,$09,$00,$00,$AA,$09,$00 ; $9AEE34
    db $00,$B0,$09,$00,$00,$B6,$09,$00,$00,$BC,$09,$00,$00,$C2,$09,$00 ; $9AEE44
    db $00,$C8,$09,$00,$00,$CE,$09,$00,$00,$D4,$09,$00,$00,$DA,$09,$00 ; $9AEE54
    db $00,$E0,$09,$00,$00,$E6,$09,$00,$00,$EC,$09,$00,$00,$F2,$09,$00 ; $9AEE64
    db $00,$F8,$09,$00,$00,$FE,$09,$00,$00,$04,$0A,$00,$00,$0A,$0A,$00 ; $9AEE74
    db $00,$10,$0A,$00,$00,$16,$0A,$00,$00,$1C,$0A,$00,$00,$22,$0A,$00 ; $9AEE84
    db $00,$28,$0A,$00,$00,$2E,$0A,$00,$00,$34,$0A,$00,$00,$3A,$0A,$00 ; $9AEE94
    db $00,$40,$0A,$00,$00,$46,$0A,$00,$00,$4C,$0A,$00,$00,$52,$0A,$00 ; $9AEEA4
    db $00,$58,$0A,$00,$00,$5E,$0A,$00,$00,$64,$0A,$00,$00,$6A,$0A,$00 ; $9AEEB4
    db $00,$70,$0A,$00,$00,$76,$0A,$00,$00,$7C,$0A,$00,$00,$82,$0A,$00 ; $9AEEC4
    db $00,$88,$0A,$00,$00,$8E,$0A,$00,$00,$94,$0A,$00,$00,$9A,$0A,$00 ; $9AEED4
    db $00,$A0,$0A,$00,$00,$A6,$0A,$00,$00,$AC,$0A,$00,$00,$B2,$0A,$00 ; $9AEEE4
    db $00,$B8,$0A,$00,$00,$BE,$0A,$00,$00,$C4,$0A,$00,$00,$CA,$0A,$00 ; $9AEEF4
    db $00,$00,$E0,$01,$C0,$03,$A0,$05,$80,$07,$60,$09,$40,$0B,$20,$0D ; $9AEF04
    db $00,$0F                                                         ; $9AEF14
L_9AEF16:
    LDA #$0014                      ; $9AEF16  A9 14 00     MX
    JSL L_BDFDF3                    ; $9AEF19  22 F3 FD BD  MX
    LDA #$0013                      ; $9AEF1D  A9 13 00     MX
    JSL L_BDFDF3                    ; $9AEF20  22 F3 FD BD  MX
    LDA #$0019                      ; $9AEF24  A9 19 00     MX
    JSL L_BDFDF3                    ; $9AEF27  22 F3 FD BD  MX
    LDA #$001A                      ; $9AEF2B  A9 1A 00     MX
    JSL L_BDFDF3                    ; $9AEF2E  22 F3 FD BD  MX
    LDA $1D57                       ; $9AEF32  AD 57 1D     MX
    AND #$0003                      ; $9AEF35  29 03 00     MX
    BNE L_9AEF48                    ; $9AEF38  D0 0E        MX
    LDA #$000C                      ; $9AEF3A  A9 0C 00     MX
    STA $15F9                       ; $9AEF3D  8D F9 15     MX
    LDA #$0014                      ; $9AEF40  A9 14 00     MX
    STA $15FB                       ; $9AEF43  8D FB 15     MX
    BRA L_9AEF59                    ; $9AEF46  80 11        MX
L_9AEF48:
    CMP #$0001                      ; $9AEF48  C9 01 00     MX
    BEQ L_9AEF59                    ; $9AEF4B  F0 0C        MX
    LDA #$0002                      ; $9AEF4D  A9 02 00     MX
    STA $15F9                       ; $9AEF50  8D F9 15     MX
    LDA #$0014                      ; $9AEF53  A9 14 00     MX
    STA $15FB                       ; $9AEF56  8D FB 15     MX
L_9AEF59:
    LDA $0BB5                       ; $9AEF59  AD B5 0B     MX
    STA $00D0                       ; $9AEF5C  8D D0 00     MX
    LDA $0C1F                       ; $9AEF5F  AD 1F 0C     MX
    DEC                             ; $9AEF62  3A           MX
    AND #$0003                      ; $9AEF63  29 03 00     MX
    ASL                             ; $9AEF66  0A           MX
    TAX                             ; $9AEF67  AA           MX
    INC $1CA1,X                     ; $9AEF68  FE A1 1C     MX
    LDA $0C2B                       ; $9AEF6B  AD 2B 0C     MX
    BEQ L_9AEF7A                    ; $9AEF6E  F0 0A        MX
    BMI L_9AEF75                    ; $9AEF70  30 03        MX
L_9AEF72:
    JMP L_9AF006                    ; $9AEF72  4C 06 F0     MX
L_9AEF75:
    CMP #$FFFC                      ; $9AEF75  C9 FC FF     MX
    BCC L_9AEF72                    ; $9AEF78  90 F8        MX
L_9AEF7A:
    LDA #$000F                      ; $9AEF7A  A9 0F 00     MX
    STA $1137                       ; $9AEF7D  8D 37 11     MX
    LDA $0CD5                       ; $9AEF80  AD D5 0C     MX
    CMP #$0003                      ; $9AEF83  C9 03 00     MX
    BCC L_9AF006                    ; $9AEF86  90 7E        MX
    LDA $133D                       ; $9AEF88  AD 3D 13     MX
    BNE L_9AF006                    ; $9AEF8B  D0 79        MX
    LDY #$0000                      ; $9AEF8D  A0 00 00     MX
    LDA ($D0),Y                     ; $9AEF90  B1 D0        MX
    AND #$FF00                      ; $9AEF92  29 00 FF     MX
    BEQ L_9AF006                    ; $9AEF95  F0 6F        MX
    LDY #$00C8                      ; $9AEF97  A0 C8 00     MX
    LDA ($D0),Y                     ; $9AEF9A  B1 D0        MX
    CMP #$0009                      ; $9AEF9C  C9 09 00     MX
    BCC L_9AF006                    ; $9AEF9F  90 65        MX
    TXA                             ; $9AEFA1  8A           MX
    LSR                             ; $9AEFA2  4A           MX
    LSR                             ; $9AEFA3  4A           MX
    BEQ L_9AEFAF                    ; $9AEFA4  F0 09        MX
    LDA $1CA5                       ; $9AEFA6  AD A5 1C     MX
    CLC                             ; $9AEFA9  18           MX
    ADC $1CA7                       ; $9AEFAA  6D A7 1C     MX
    BRA L_9AEFB6                    ; $9AEFAD  80 07        MX
L_9AEFAF:
    LDA $1CA1                       ; $9AEFAF  AD A1 1C     MX
    CLC                             ; $9AEFB2  18           MX
    ADC $1CA3                       ; $9AEFB3  6D A3 1C     MX
L_9AEFB6:
    CMP #$0007                      ; $9AEFB6  C9 07 00     MX
    BCC L_9AF006                    ; $9AEFB9  90 4B        MX
    LDY #$00AC                      ; $9AEFBB  A0 AC 00     MX
    SEP #$20                        ; $9AEFBE  E2 20        MX
    LDA ($D0),Y                     ; $9AEFC0  B1 D0        mX
    STA $00A4                       ; $9AEFC2  8D A4 00     mX
    LDX #$0000                      ; $9AEFC5  A2 00 00     mX
L_9AEFC8:
    LDA $F009,X                     ; $9AEFC8  BD 09 F0     mX
    BMI L_9AF006                    ; $9AEFCB  30 39        mX
    CMP $00A4                       ; $9AEFCD  CD A4 00     mX
    BEQ L_9AEFD6                    ; $9AEFD0  F0 04        mX
    INX                             ; $9AEFD2  E8           mX
    JMP L_9AEFC8                    ; $9AEFD3  4C C8 EF     mX
L_9AEFD6:
    REP #$20                        ; $9AEFD6  C2 20        mX
    LDA #$000C                      ; $9AEFD8  A9 0C 00     MX
    JSL L_9ABBD5                    ; $9AEFDB  22 D5 BB 9A  MX
    LDA #$000C                      ; $9AEFDF  A9 0C 00     MX
    STA $160F                       ; $9AEFE2  8D 0F 16     MX
    LDA #$003A                      ; $9AEFE5  A9 3A 00     MX
    STA $0C57                       ; $9AEFE8  8D 57 0C     MX
    LDA #$0001                      ; $9AEFEB  A9 01 00     MX
    STA $1341                       ; $9AEFEE  8D 41 13     MX
    STA $133D                       ; $9AEFF1  8D 3D 13     MX
    LDA $0BD9                       ; $9AEFF4  AD D9 0B     MX
    STA $133F                       ; $9AEFF7  8D 3F 13     MX
    LDA #$0012                      ; $9AEFFA  A9 12 00     MX
    STA $1137                       ; $9AEFFD  8D 37 11     MX
    REP #$20                        ; $9AF000  C2 20        MX
    JSL L_A7E253                    ; $9AF002  22 53 E2 A7  MX
L_9AF006:
    REP #$20                        ; $9AF006  C2 20        MX
    RTL                             ; $9AF008  6B           MX
    db $22,$6E,$00,$60,$04,$62,$64,$06,$16,$18,$1A,$1C,$24,$26,$6A,$6C ; $9AF009
    db $3C,$40,$42,$44,$46,$48,$76,$78,$7A,$50,$52,$84,$86,$54,$36,$38 ; $9AF019
    db $3A,$34,$3E,$08,$0A,$1E,$12,$14,$0E,$28,$2A,$20,$4E,$4C,$4A,$FF ; $9AF029
    db $AD,$D9,$0B,$10,$07,$49,$FF,$FF,$18,$69,$01,$00,$C9,$11,$00,$B0 ; $9AF039
    db $03,$9C,$E5,$15,$AD,$41,$13,$F0,$05,$9C,$43,$13,$80,$01,$6B,$A9 ; $9AF049
    db $02,$00,$CD,$41,$13,$F0,$15,$8D,$41,$13,$AD,$E5,$15,$F0,$04,$9C ; $9AF059
    db $41,$13,$6B,$A9,$01,$00,$8D,$E5,$15,$4C,$55,$F2,$AD,$56,$1D,$29 ; $9AF069
    db $03,$00,$D0,$0B,$DA,$5A,$A9,$0B,$00,$22,$F3,$FD,$BD,$7A,$FA,$A2 ; $9AF079
    db $2E,$00,$BD,$B5,$15,$89,$80,$00,$D0,$71,$29,$FF,$00,$F0,$7C,$AD ; $9AF089
    db $BE,$00,$D0,$0D,$BD,$85,$15,$18,$69,$02,$00,$29,$0F,$00,$9D,$85 ; $9AF099
    db $15,$20,$8E,$F1,$BD,$45,$13,$8D,$EC,$00,$BD,$A5,$13,$38,$E9,$10 ; $9AF0A9
    db $03,$4A,$8D,$EA,$00,$20,$17,$F4,$18,$69,$C0,$01,$8D,$EE,$00,$BD ; $9AF0B9
    db $B5,$15,$EB,$29,$80,$00,$8D,$A4,$00,$BD,$A5,$13,$C9,$00,$80,$6A ; $9AF0C9
    db $38,$FD,$75,$13,$38,$ED,$2B,$01,$8D,$F0,$00,$BD,$85,$15,$DA,$AA ; $9AF0D9
    db $BF,$8A,$F5,$1A,$8D,$F2,$00,$E2,$20,$A9,$28,$0D,$A4,$00,$8D,$2A ; $9AF0E9
    db $00,$C2,$20,$22,$00,$E0,$2B,$FA,$EE,$43,$13,$CA,$CA,$30,$03,$4C ; $9AF0F9
    db $8B,$F0,$AD,$43,$13,$D0,$03,$9C,$41,$13,$6B,$AD,$BE,$00,$D0,$17 ; $9AF109
    db $BD,$85,$15,$18,$69,$02,$00,$9D,$85,$15,$C9,$06,$00,$90,$08,$A9 ; $9AF119
    db $FF,$FF,$9D,$B5,$15,$80,$D4,$BD,$45,$13,$8D,$EC,$00,$BD,$A5,$13 ; $9AF129
    db $38,$E9,$10,$03,$4A,$8D,$EA,$00,$20,$17,$F4,$18,$69,$BC,$01,$8D ; $9AF139
    db $EE,$00,$BD,$A5,$13,$C9,$00,$80,$6A,$38,$FD,$75,$13,$38,$ED,$2B ; $9AF149
    db $01,$8D,$F0,$00,$9C,$A4,$00,$BD,$65,$14,$30,$06,$A9,$40,$00,$8D ; $9AF159
    db $A4,$00,$BD,$85,$15,$DA,$AA,$BF,$9A,$F5,$1A,$8D,$F2,$00,$E2,$20 ; $9AF169
    db $A9,$28,$0D,$A4,$00,$8D,$2A,$00,$C2,$20,$22,$07,$E0,$2B,$FA,$EE ; $9AF179
    db $43,$13,$4C,$04,$F1,$BD,$75,$13,$10,$64,$BD,$05,$14,$49,$FF,$FF ; $9AF189
    db $18,$69,$01,$00,$9D,$05,$14,$BD,$75,$13,$49,$FF,$FF,$69,$00,$00 ; $9AF199
    db $9D,$75,$13,$BD,$25,$15,$49,$FF,$FF,$18,$69,$01,$00,$8D,$A4,$00 ; $9AF1A9
    db $8D,$A8,$00,$BD,$95,$14,$49,$FF,$FF,$69,$00,$00,$8D,$A6,$00,$8D ; $9AF1B9
    db $AA,$00,$C9,$00,$80,$6E,$AA,$00,$6E,$A8,$00,$AD,$A4,$00,$38,$ED ; $9AF1C9
    db $A8,$00,$9D,$25,$15,$AD,$A6,$00,$ED,$AA,$00,$9D,$95,$14,$E2,$20 ; $9AF1D9
    db $DE,$B5,$15,$C2,$20,$D0,$07,$9E,$85,$15,$9E,$B5,$15,$60,$BD,$25 ; $9AF1E9
    db $15,$18,$69,$00,$25,$9D,$25,$15,$BD,$95,$14,$69,$00,$00,$9D,$95 ; $9AF1F9
    db $14,$BD,$D5,$13,$18,$7D,$F5,$14,$9D,$D5,$13,$BD,$45,$13,$7D,$65 ; $9AF209
    db $14,$9D,$45,$13,$BD,$05,$14,$38,$FD,$25,$15,$9D,$05,$14,$BD,$75 ; $9AF219
    db $13,$FD,$95,$14,$9D,$75,$13,$BD,$35,$14,$18,$7D,$55,$15,$9D,$35 ; $9AF229
    db $14,$BD,$A5,$13,$7D,$C5,$14,$9D,$A5,$13,$C9,$9D,$03,$B0,$06,$C9 ; $9AF239
    db $4C,$03,$90,$01,$60,$9C,$C5,$14,$9C,$55,$15,$60,$A2,$2E,$00,$AD ; $9AF249
    db $3F,$13,$10,$25,$BF,$CA,$F4,$1A,$18,$69,$F4,$FE,$9D,$45,$13,$BF ; $9AF259
    db $0A,$F5,$1A,$9D,$75,$13,$A9,$74,$03,$9D,$A5,$13,$BF,$4A,$F5,$1A ; $9AF269
    db $9D,$85,$15,$CA,$CA,$10,$DD,$80,$23,$BF,$CA,$F4,$1A,$18,$69,$07 ; $9AF279
    db $01,$9D,$45,$13,$BF,$0A,$F5,$1A,$9D,$75,$13,$A9,$74,$03,$9D,$A5 ; $9AF289
    db $13,$BF,$4A,$F5,$1A,$9D,$85,$15,$CA,$CA,$10,$DD,$A2,$2E,$00,$20 ; $9AF299
    db $CC,$F2,$20,$B7,$F3,$29,$01,$00,$F0,$05,$A9,$04,$80,$80,$03,$A9 ; $9AF2A9
    db $04,$00,$9D,$B5,$15,$9E,$D5,$13,$9E,$05,$14,$9E,$35,$14,$CA,$CA ; $9AF2B9
    db $10,$DD,$6B,$20,$B7,$F3,$29,$0F,$00,$38,$E9,$02,$00,$9C,$A4,$00 ; $9AF2C9
    db $9C,$A6,$00,$10,$03,$CE,$A6,$00,$8D,$A5,$00,$AD,$A4,$00,$0A,$2E ; $9AF2D9
    db $A6,$00,$0A,$2E,$A6,$00,$0A,$2E,$A6,$00,$0A,$2E,$A6,$00,$0A,$2E ; $9AF2E9
    db $A6,$00,$8D,$A4,$00,$20,$B7,$F3,$29,$03,$00,$D0,$06,$0E,$A4,$00 ; $9AF2F9
    db $2E,$A6,$00,$AD,$3F,$13,$30,$19,$AD,$A4,$00,$49,$FF,$FF,$18,$69 ; $9AF309
    db $01,$00,$8D,$A4,$00,$AD,$A6,$00,$49,$FF,$FF,$69,$00,$00,$8D,$A6 ; $9AF319
    db $00,$AD,$A4,$00,$9D,$F5,$14,$AD,$A6,$00,$9D,$65,$14,$20,$B7,$F3 ; $9AF329
    db $29,$0F,$00,$38,$E9,$0A,$00,$9C,$A4,$00,$9C,$A6,$00,$10,$03,$CE ; $9AF339
    db $A6,$00,$8D,$A5,$00,$AD,$A4,$00,$0A,$2E,$A6,$00,$0A,$2E,$A6,$00 ; $9AF349
    db $0A,$2E,$A6,$00,$0A,$2E,$A6,$00,$0A,$2E,$A6,$00,$8D,$A4,$00,$20 ; $9AF359
    db $B7,$F3,$29,$03,$00,$D0,$06,$0E,$A4,$00,$2E,$A6,$00,$AD,$A4,$00 ; $9AF369
    db $9D,$25,$15,$AD,$A6,$00,$9D,$95,$14,$20,$B7,$F3,$29,$0F,$00,$38 ; $9AF379
    db $E9,$08,$00,$9C,$A4,$00,$9C,$A6,$00,$10,$03,$CE,$A6,$00,$8D,$A5 ; $9AF389
    db $00,$AD,$A4,$00,$0A,$2E,$A6,$00,$0A,$2E,$A6,$00,$0A,$2E,$A6,$00 ; $9AF399
    db $0A,$2E,$A6,$00,$9D,$55,$15,$AD,$A6,$00,$9D,$C5,$14,$60,$DA,$08 ; $9AF3A9
    db $C2,$30,$AD,$12,$42,$E2,$20,$18,$6D,$57,$1D,$8D,$57,$1D,$C2,$20 ; $9AF3B9
    db $AD,$12,$42,$AA,$E2,$20,$4D,$58,$1D,$8D,$58,$1D,$8A,$6D,$59,$1D ; $9AF3C9
    db $C2,$20,$AD,$56,$1D,$1A,$6A,$4E,$58,$1D,$49,$41,$2B,$E9,$0F,$00 ; $9AF3D9
    db $8D,$56,$1D,$AD,$58,$1D,$49,$87,$1D,$8D,$58,$1D,$AD,$52,$1D,$4D ; $9AF3E9
    db $56,$1D,$8D,$02,$00,$1A,$8D,$52,$1D,$AD,$54,$1D,$4D,$58,$1D,$69 ; $9AF3F9
    db $00,$00,$8D,$52,$1D,$8D,$04,$00,$28,$FA,$AD,$02,$00,$60,$DA,$AD ; $9AF409
    db $EC,$00,$8D,$A6,$00,$30,$03,$4C,$7E,$F4,$49,$FF,$FF,$18,$69,$01 ; $9AF419
    db $00,$8D,$EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5,$27,$8D,$EA,$00 ; $9AF429
    db $AD,$EE,$00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2,$20,$8D,$02,$42 ; $9AF439
    db $AD,$EB,$00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD,$16,$42,$8D,$F2 ; $9AF449
    db $00,$AD,$F3,$00,$29,$FF,$00,$49,$FF,$FF,$18,$69,$01,$00,$18,$6D ; $9AF459
    db $A6,$00,$AC,$C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C,$C8,$F4,$38,$FD ; $9AF469
    db $AA,$0E,$4C,$C8,$F4,$8D,$EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5 ; $9AF479
    db $A7,$8D,$EA,$00,$AD,$EE,$00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2 ; $9AF489
    db $20,$8D,$02,$42,$AD,$EB,$00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD ; $9AF499
    db $16,$42,$8D,$F2,$00,$AD,$F3,$00,$29,$FF,$00,$18,$6D,$A6,$00,$AC ; $9AF4A9
    db $C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C,$C8,$F4,$38,$FD,$AA,$0E,$FA ; $9AF4B9
    db $60,$00,$00,$00,$00,$02,$00,$04,$00,$00,$00,$02,$00,$04,$00,$00 ; $9AF4C9
    db $00,$02,$00,$04,$00,$00,$00,$02,$00,$04,$00,$00,$00,$02,$00,$04 ; $9AF4D9
    db $00,$00,$00,$00,$00,$02,$00,$04,$00,$00,$00,$02,$00,$04,$00,$00 ; $9AF4E9
    db $00,$02,$00,$04,$00,$00,$00,$02,$00,$04,$00,$00,$00,$02,$00,$04 ; $9AF4F9
    db $00,$70,$00,$70,$00,$70,$00,$70,$00,$78,$00,$78,$00,$78,$00,$80 ; $9AF509
    db $00,$80,$00,$80,$00,$88,$00,$88,$00,$88,$00,$90,$00,$90,$00,$90 ; $9AF519
    db $00,$70,$00,$70,$00,$70,$00,$70,$00,$78,$00,$78,$00,$78,$00,$80 ; $9AF529
    db $00,$80,$00,$80,$00,$88,$00,$88,$00,$88,$00,$90,$00,$90,$00,$90 ; $9AF539
    db $00,$0E,$00,$00,$00,$02,$00,$04,$00,$06,$00,$08,$00,$0A,$00,$0C ; $9AF549
    db $00,$0E,$00,$00,$00,$02,$00,$04,$00,$06,$00,$08,$00,$0A,$00,$0C ; $9AF559
    db $00,$0E,$00,$00,$00,$02,$00,$04,$00,$06,$00,$08,$00,$0A,$00,$0C ; $9AF569
    db $00,$0E,$00,$00,$00,$02,$00,$04,$00,$06,$00,$08,$00,$0A,$00,$0C ; $9AF579
    db $00,$70,$01,$71,$01,$72,$01,$73,$01,$74,$01,$75,$01,$76,$01,$77 ; $9AF589
    db $01,$80,$01,$82,$01,$84,$01,$C1,$B7,$01,$1A,$34,$1A,$00,$4E,$00 ; $9AF599
    db $00,$00,$01,$1C,$24,$18,$00,$5E,$00,$02,$00,$01,$1C,$14,$18,$00 ; $9AF5A9
    db $6E,$00,$04,$00,$01,$1F,$04,$15,$00,$7E,$00,$06,$00,$80,$24,$02 ; $9AF5B9
    db $18,$00,$88,$00,$08,$00,$00,$00,$04,$04,$00,$05,$0D,$0A,$02,$09 ; $9AF5C9
    db $1D,$12,$0B,$17,$1B,$27,$03,$04,$07,$00,$06,$09,$0C,$03,$0C,$13 ; $9AF5D9
    db $18,$07,$13,$0F,$33,$0F,$28,$40,$50,$80,$20,$00,$40,$80,$80,$C0 ; $9AF5E9
    db $80,$C0,$00,$80,$80,$80,$F8,$00,$F0,$00,$E0,$00,$40,$80,$80,$C0 ; $9AF5F9
    db $80,$C0,$00,$80,$80,$80,$27,$CA,$6B,$87,$9B,$15,$AA,$27,$3E,$39 ; $9AF609
    db $3E,$38,$78,$78,$2C,$00,$F0,$F0,$F0,$F0,$E0,$F0,$D0,$F0,$C0,$F8 ; $9AF619
    db $41,$78,$07,$78,$3F,$00,$80,$00,$80,$00,$40,$C0,$A0,$40,$20,$E0 ; $9AF629
    db $D8,$38,$28,$18,$14,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$60,$10 ; $9AF639
    db $F8,$00,$F8,$04,$FC,$00,$00,$07,$01,$06,$07,$08,$02,$0C,$05,$09 ; $9AF649
    db $0B,$13,$02,$1A,$05,$34,$06,$06,$06,$06,$0F,$0F,$0F,$0F,$0E,$0F ; $9AF659
    db $1C,$1F,$1D,$1F,$3B,$3F,$C0,$00,$10,$10,$80,$30,$00,$50,$A0,$90 ; $9AF669
    db $40,$20,$00,$60,$80,$60,$F0,$00,$E0,$00,$50,$10,$B0,$B0,$70,$F0 ; $9AF679
    db $E0,$E0,$E0,$E0,$E0,$E0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9AF689
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9AF699
    db $00,$00,$00,$00,$00,$00,$80,$10,$50,$10,$18,$08,$60,$48,$2C,$04 ; $9AF6A9
    db $10,$04,$14,$00,$04,$00,$F0,$00,$70,$08,$38,$00,$78,$04,$3C,$00 ; $9AF6B9
    db $1C,$00,$1C,$00,$0C,$02,$10,$14,$38,$22,$10,$02,$0A,$02,$03,$01 ; $9AF6C9
    db $0C,$09,$05,$00,$02,$00,$14,$02,$3E,$00,$1E,$00,$0E,$01,$07,$00 ; $9AF6D9
    db $0F,$00,$07,$00,$03,$00,$1F,$23,$2F,$39,$4A,$79,$49,$7C,$E4,$9C ; $9AF6E9
    db $9E,$7E,$FF,$7F,$FE,$01,$3B,$07,$29,$3F,$48,$7B,$48,$7D,$84,$FC ; $9AF6F9
    db $1E,$FE,$7F,$FF,$00,$FF,$80,$80,$80,$C0,$C0,$C0,$40,$E0,$C0,$20 ; $9AF709
    db $00,$00,$00,$80,$00,$80,$80,$80,$80,$C0,$C0,$C0,$40,$E0,$00,$E0 ; $9AF719
    db $00,$00,$00,$80,$00,$80,$13,$00,$11,$00,$19,$00,$01,$08,$09,$00 ; $9AF729
    db $01,$08,$00,$08,$01,$09,$1F,$00,$1F,$00,$1F,$00,$0F,$00,$0F,$00 ; $9AF739
    db $0F,$00,$0F,$00,$0F,$00,$08,$04,$C6,$02,$24,$02,$13,$03,$08,$26 ; $9AF749
    db $74,$40,$88,$C0,$10,$80,$FC,$02,$FE,$01,$3E,$01,$1F,$00,$3E,$00 ; $9AF759
    db $7C,$00,$F8,$00,$F0,$00,$1B,$20,$21,$58,$2F,$4C,$59,$28,$0B,$74 ; $9AF769
    db $1D,$66,$16,$ED,$11,$EE,$3F,$3F,$7F,$7F,$73,$7F,$07,$0F,$71,$71 ; $9AF779
    db $70,$70,$F0,$F0,$F0,$F0,$00,$E0,$80,$40,$80,$40,$80,$40,$80,$00 ; $9AF789
    db $80,$00,$00,$00,$00,$80,$E0,$E0,$C0,$C0,$C0,$C0,$C0,$C0,$80,$80 ; $9AF799
    db $80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C ; $9AF7A9
    db $02,$1F,$05,$1E,$0A,$34,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$0F ; $9AF7B9
    db $1B,$18,$17,$10,$37,$30,$00,$08,$0A,$0A,$0C,$0A,$16,$18,$4D,$71 ; $9AF7C9
    db $70,$81,$92,$01,$00,$00,$0C,$02,$0E,$01,$0E,$01,$1E,$61,$7F,$80 ; $9AF7D9
    db $FF,$00,$FF,$00,$F8,$00,$10,$07,$14,$03,$08,$07,$08,$07,$00,$0F ; $9AF7E9
    db $00,$0F,$04,$0B,$04,$0B,$1B,$03,$1B,$03,$0B,$03,$07,$07,$0F,$0F ; $9AF7F9
    db $0F,$0F,$0F,$0F,$0F,$0F,$C1,$B7,$01,$1F,$06,$15,$00,$7C,$00,$00 ; $9AF809
    db $00,$01,$1F,$16,$15,$00,$6C,$00,$02,$00,$01,$21,$26,$13,$00,$5C ; $9AF819
    db $00,$04,$00,$01,$19,$34,$1B,$00,$4E,$00,$06,$00,$81,$28,$36,$0C ; $9AF829
    db $00,$4C,$00,$08,$00,$00,$00,$00,$00,$00,$00,$02,$03,$02,$04,$08 ; $9AF839
    db $09,$28,$30,$08,$00,$00,$00,$00,$00,$00,$03,$03,$04,$07,$08,$0F ; $9AF849
    db $00,$3C,$00,$0C,$00,$00,$00,$38,$38,$30,$C8,$80,$08,$00,$10,$10 ; $9AF859
    db $00,$00,$50,$38,$58,$00,$38,$38,$C4,$F8,$04,$F8,$04,$F0,$08,$70 ; $9AF869
    db $08,$70,$08,$78,$80,$02,$04,$01,$06,$02,$04,$02,$0C,$01,$0D,$03 ; $9AF879
    db $0B,$04,$08,$09,$00,$07,$07,$07,$07,$07,$07,$0F,$0F,$0E,$0F,$0C ; $9AF889
    db $0F,$0F,$0F,$0F,$0F,$E0,$EC,$58,$44,$F8,$C4,$B0,$88,$E0,$98,$58 ; $9AF899
    db $00,$98,$60,$70,$88,$1C,$FC,$BC,$FC,$3C,$FC,$78,$F8,$78,$F8,$F8 ; $9AF8A9
    db $F8,$F8,$F8,$F8,$F8,$5B,$97,$9D,$1B,$FD,$3A,$3E,$38,$38,$38,$66 ; $9AF8B9
    db $40,$07,$20,$24,$22,$E0,$F0,$E0,$F8,$C0,$F8,$41,$78,$47,$78,$7F ; $9AF8C9
    db $00,$3F,$00,$3E,$00,$80,$60,$20,$F0,$D0,$30,$20,$10,$18,$08,$10 ; $9AF8D9
    db $08,$08,$04,$C4,$00,$00,$00,$00,$00,$70,$00,$F0,$08,$F8,$00,$F8 ; $9AF8E9
    db $04,$FC,$02,$FC,$02,$00,$00,$00,$00,$01,$01,$01,$00,$00,$02,$07 ; $9AF8F9
    db $04,$09,$0C,$02,$18,$00,$00,$00,$01,$01,$02,$01,$02,$03,$04,$07 ; $9AF909
    db $08,$0F,$00,$0E,$10,$D0,$88,$00,$90,$A0,$00,$40,$00,$80,$00,$00 ; $9AF919
    db $00,$00,$00,$00,$00,$F8,$00,$F0,$00,$E0,$00,$C0,$00,$80,$00,$00 ; $9AF929
    db $00,$00,$00,$00,$00,$05,$04,$01,$04,$04,$01,$00,$01,$01,$00,$03 ; $9AF939
    db $00,$01,$02,$01,$03,$07,$00,$07,$00,$07,$00,$03,$00,$03,$00,$03 ; $9AF949
    db $00,$03,$00,$01,$03,$00,$80,$80,$80,$00,$00,$00,$00,$80,$80,$00 ; $9AF959
    db $80,$80,$00,$80,$80,$80,$00,$80,$00,$00,$80,$00,$80,$80,$00,$80 ; $9AF969
    db $00,$80,$00,$80,$80,$08,$00,$10,$01,$01,$02,$00,$03,$01,$06,$01 ; $9AF979
    db $06,$01,$06,$00,$06,$08,$01,$11,$01,$02,$02,$02,$02,$06,$06,$07 ; $9AF989
    db $07,$07,$07,$07,$07,$D8,$88,$50,$88,$58,$88,$80,$08,$A0,$0C,$98 ; $9AF999
    db $04,$08,$94,$80,$EC,$F8,$00,$F8,$00,$F8,$00,$F0,$00,$F4,$04,$6C ; $9AF9A9
    db $0C,$6C,$0C,$1C,$9C,$0A,$02,$07,$18,$07,$18,$04,$3B,$01,$3B,$09 ; $9AF9B9
    db $33,$08,$33,$07,$34,$05,$07,$19,$19,$1C,$1C,$3C,$3C,$3C,$3C,$3C ; $9AF9C9
    db $3C,$3C,$3C,$38,$3C,$60,$10,$20,$10,$90,$60,$E0,$00,$40,$A0,$60 ; $9AF9D9
    db $F0,$20,$F0,$A8,$F8,$F0,$F0,$F0,$F0,$70,$70,$00,$00,$00,$00,$00 ; $9AF9E9
    db $00,$00,$00,$00,$00,$24,$22,$24,$22,$04,$22,$24,$22,$40,$66,$08 ; $9AF9F9
    db $44,$D0,$88,$00,$90,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$7E,$00,$7C ; $9AFA09
    db $80,$F8,$00,$F0,$00,$26,$02,$10,$02,$12,$00,$02,$03,$09,$02,$03 ; $9AFA19
    db $08,$01,$08,$09,$08,$3E,$01,$1E,$01,$1E,$01,$0F,$00,$0F,$00,$0F ; $9AFA29
    db $00,$0F,$00,$0F,$00,$10,$0C,$3C,$2C,$2C,$3C,$70,$4C,$4C,$7E,$7F ; $9AFA39
    db $BF,$7F,$BF,$7E,$01,$00,$1C,$2C,$3C,$2C,$3C,$40,$7C,$4C,$7E,$3F ; $9AFA49
    db $FF,$3F,$FF,$00,$7F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9AFA59
    db $00,$80,$C0,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9AFA69
    db $00,$80,$C0,$00,$C0,$01,$03,$02,$01,$03,$00,$02,$03,$03,$01,$03 ; $9AFA79
    db $00,$00,$00,$00,$00,$01,$03,$00,$03,$00,$03,$02,$03,$01,$03,$00 ; $9AFA89
    db $03,$00,$00,$00,$00,$80,$C0,$40,$E0,$00,$E0,$E0,$F8,$FC,$FE,$F0 ; $9AFA99
    db $0E,$00,$00,$00,$00,$80,$C0,$40,$E0,$00,$E0,$E0,$F8,$FC,$FE,$00 ; $9AFAA9
    db $FE,$00,$00,$00,$00,$C1,$B7,$01,$2E,$03,$06,$00,$7F,$00,$00,$00 ; $9AFAB9
    db $01,$28,$13,$0C,$00,$6F,$00,$02,$00,$01,$28,$23,$0C,$00,$5F,$00 ; $9AFAC9
    db $04,$00,$01,$29,$2F,$0B,$00,$53,$00,$06,$00,$01,$1B,$34,$19,$00 ; $9AFAD9
    db $4E,$00,$08,$00,$00,$26,$2E,$16,$00,$5C,$00,$0A,$00,$00,$36,$3E ; $9AFAE9
    db $06,$00,$4C,$00,$1A,$00,$80,$38,$3E,$04,$00,$4C,$00,$0B,$00,$00 ; $9AFAF9
    db $00,$28,$28,$1A,$36,$35,$03,$08,$01,$00,$00,$13,$00,$00,$00,$00 ; $9AFB09
    db $30,$28,$06,$3E,$01,$3F,$00,$1F,$00,$0F,$00,$1B,$00,$00,$00,$00 ; $9AFB19
    db $00,$00,$00,$00,$00,$00,$00,$80,$80,$A0,$60,$10,$30,$94,$0C,$00 ; $9AFB29
    db $00,$00,$00,$00,$00,$00,$00,$80,$40,$E0,$10,$F0,$08,$FC,$02,$00 ; $9AFB39
    db $00,$00,$00,$00,$01,$00,$03,$00,$03,$00,$07,$00,$07,$01,$06,$00 ; $9AFB49
    db $00,$00,$00,$01,$01,$03,$03,$03,$03,$07,$07,$07,$07,$07,$07,$11 ; $9AFB59
    db $E0,$60,$C2,$00,$C2,$20,$C6,$30,$8E,$E8,$66,$70,$6C,$40,$5C,$BF ; $9AFB69
    db $80,$BE,$82,$BE,$82,$BA,$82,$C6,$C6,$9E,$FE,$9C,$FC,$BC,$FC,$06 ; $9AFB79
    db $7B,$02,$79,$0A,$F1,$33,$C0,$3D,$C6,$35,$C7,$85,$47,$EC,$0F,$78 ; $9AFB89
    db $78,$7C,$7C,$FC,$FC,$FC,$FC,$F8,$FC,$F8,$FC,$F8,$FC,$F0,$FC,$C0 ; $9AFB99
    db $00,$40,$80,$C0,$C0,$60,$C0,$20,$E0,$40,$F0,$68,$F0,$E8,$18,$00 ; $9AFBA9
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$00,$C0 ; $9AFBB9
    db $88,$48,$88,$10,$80,$90,$00,$20,$10,$40,$20,$80,$40,$00,$00,$F8 ; $9AFBC9
    db $00,$F8,$00,$F0,$00,$F0,$00,$F0,$00,$E0,$00,$C0,$00,$00,$00,$46 ; $9AFBD9
    db $02,$24,$02,$12,$01,$09,$02,$0A,$01,$05,$08,$09,$08,$0A,$09,$7E ; $9AFBE9
    db $01,$3E,$01,$1F,$00,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$00 ; $9AFBF9
    db $00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$02,$02,$04,$11,$1E,$00 ; $9AFC09
    db $00,$00,$00,$00,$00,$00,$01,$01,$00,$03,$00,$03,$04,$11,$1E,$09 ; $9AFC19
    db $00,$22,$31,$4C,$60,$D0,$88,$A0,$00,$40,$00,$80,$00,$00,$00,$0F ; $9AFC29
    db $30,$3F,$40,$7C,$80,$F8,$00,$E0,$00,$C0,$00,$80,$00,$00,$00,$19 ; $9AFC39
    db $10,$18,$11,$09,$11,$22,$30,$12,$20,$24,$42,$48,$04,$10,$88,$1F ; $9AFC49
    db $00,$1F,$00,$1F,$00,$3E,$00,$3E,$00,$7E,$00,$7C,$80,$F8,$00,$80 ; $9AFC59
    db $80,$80,$C0,$40,$C0,$00,$E0,$E0,$F0,$FC,$FE,$F0,$0E,$00,$00,$80 ; $9AFC69
    db $80,$80,$C0,$40,$C0,$00,$E0,$E0,$F0,$FC,$FE,$00,$FE,$00,$00,$00 ; $9AFC79
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$0B,$0D,$1E,$0A,$1C,$00 ; $9AFC89
    db $00,$00,$00,$00,$00,$00,$00,$00,$03,$0B,$0C,$1F,$10,$1F,$10,$22 ; $9AFC99
    db $06,$13,$01,$08,$01,$19,$10,$D2,$E0,$24,$C0,$88,$00,$20,$00,$3E ; $9AFCA9
    db $01,$1F,$00,$0F,$00,$1F,$60,$FE,$00,$FC,$00,$F8,$00,$E0,$00,$02 ; $9AFCB9
    db $04,$04,$08,$02,$08,$0E,$10,$0F,$10,$34,$08,$1B,$25,$05,$3A,$07 ; $9AFCC9
    db $07,$0F,$0F,$0F,$0F,$1F,$1F,$1F,$1F,$07,$07,$38,$39,$38,$38,$F0 ; $9AFCD9
    db $CC,$B0,$8C,$90,$A8,$20,$58,$20,$D0,$80,$A0,$40,$00,$40,$80,$3C ; $9AFCE9
    db $FC,$7C,$FC,$78,$F8,$F8,$F8,$F0,$F0,$60,$E0,$C0,$C0,$80,$80,$CF ; $9AFCF9
    db $0C,$9E,$1C,$67,$40,$64,$40,$60,$44,$24,$44,$88,$C0,$48,$80,$F0 ; $9AFD09
    db $FC,$E1,$FC,$7F,$00,$7C,$00,$7C,$00,$7C,$00,$F8,$00,$F8,$00,$B4 ; $9AFD19
    db $0C,$18,$04,$8A,$06,$C5,$03,$23,$01,$12,$01,$09,$00,$04,$01,$7C ; $9AFD29
    db $00,$FC,$02,$FE,$01,$FF,$00,$3F,$00,$1F,$00,$0F,$00,$07,$00,$00 ; $9AFD39
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $9AFD49
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0B ; $9AFD59
    db $09,$03,$09,$02,$00,$02,$00,$02,$00,$03,$01,$06,$01,$03,$07,$0F ; $9AFD69
    db $00,$0F,$00,$06,$01,$06,$01,$06,$01,$07,$00,$07,$00,$03,$07,$26 ; $9AFD79
    db $3F,$56,$38,$CC,$30,$BA,$7C,$5E,$3E,$2E,$1F,$19,$07,$07,$00,$26 ; $9AFD89
    db $3F,$10,$7E,$00,$FC,$38,$FE,$1E,$7E,$0E,$3F,$01,$1F,$00,$07,$00 ; $9AFD99
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00 ; $9AFDA9
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$60 ; $9AFDB9
    db $E0,$60,$F0,$90,$70,$C0,$38,$B8,$FC,$FF,$7F,$FC,$03,$00,$00,$60 ; $9AFDC9
    db $E0,$60,$F0,$10,$F0,$00,$F8,$B8,$FC,$7F,$FF,$00,$FF,$00,$00,$28 ; $9AFDD9
    db $30,$38,$38,$38,$38,$34,$3C,$36,$3A,$3B,$37,$3F,$00,$00,$00,$20 ; $9AFDE9
    db $38,$38,$38,$38,$38,$34,$3C,$32,$3E,$33,$3F,$00,$3F,$00,$00,$FF ; $9AFDF9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE09
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE19
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE29
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE39
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE49
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE59
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE69
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE79
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE89
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFE99
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFEA9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFEB9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFEC9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFED9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFEE9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFEF9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF09
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF19
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF29
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF39
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF49
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF59
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF69
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF79
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF89
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFF99
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFFA9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFFB9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFFC9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFFD9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $9AFFE9
    db $00,$00,$FF,$FF,$00,$00,$FF                                     ; $9AFFF9
