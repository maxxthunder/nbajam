; bank $82  (file offset $010000)
org $828000

L_828000:
    LDX $07D9                       ; $828000  AE D9 07     Mx
    BEQ L_82800B                    ; $828003  F0 06        Mx
    LDA $0006,X                     ; $828005  BD 06 00     Mx
    JMP L_828CC4                    ; $828008  4C C4 8C     Mx
L_82800B:
    LDA $0854                       ; $82800B  AD 54 08     Mx
    STA $0A90                       ; $82800E  8D 90 0A     Mx
    LDA $07EA                       ; $828011  AD EA 07     Mx
    BNE L_828022                    ; $828014  D0 0C        Mx
    LDA $0A9A                       ; $828016  AD 9A 0A     Mx
    BNE L_828022                    ; $828019  D0 07        Mx
    LDA $088A                       ; $82801B  AD 8A 08     Mx
    BNE L_828022                    ; $82801E  D0 02        Mx
    BRA L_82802B                    ; $828020  80 09        Mx
L_828022:
    STZ $0894                       ; $828022  9C 94 08     Mx
    STZ $0A90                       ; $828025  9C 90 0A     Mx
    JMP L_828CC1                    ; $828028  4C C1 8C     Mx
L_82802B:
    LDX $00C0                       ; $82802B  AE C0 00     Mx
    BNE L_828081                    ; $82802E  D0 51        Mx
    LDA $07D8                       ; $828030  AD D8 07     Mx
    CMP $0C19                       ; $828033  CD 19 0C     Mx
    BNE L_82807E                    ; $828036  D0 46        Mx
    LDX $06F1                       ; $828038  AE F1 06     Mx
    BEQ L_82807E                    ; $82803B  F0 41        Mx
    LDA $0774                       ; $82803D  AD 74 07     Mx
    BEQ L_828055                    ; $828040  F0 13        Mx
    INC                             ; $828042  1A           Mx
    BEQ L_828055                    ; $828043  F0 10        Mx
    LDA $0786                       ; $828045  AD 86 07     Mx
    BNE L_828055                    ; $828048  D0 0B        Mx
    STZ $085E                       ; $82804A  9C 5E 08     Mx
    LDA $08B8                       ; $82804D  AD B8 08     Mx
    STA $00B7                       ; $828050  8D B7 00     Mx
    BRA L_828066                    ; $828053  80 11        Mx
L_828055:
    LDA $0770                       ; $828055  AD 70 07     Mx
    BEQ L_82807E                    ; $828058  F0 24        Mx
    LDA #$0003                      ; $82805A  A9 03 00     Mx
    STA $0894                       ; $82805D  8D 94 08     Mx
    LDA $08BA                       ; $828060  AD BA 08     Mx
    STA $00B7                       ; $828063  8D B7 00     Mx
L_828066:
    LDA $0A90                       ; $828066  AD 90 0A     Mx
    AND #$0F00                      ; $828069  29 00 0F     Mx
    ORA $08BC                       ; $82806C  0D BC 08     Mx
    ORA $00B7                       ; $82806F  0D B7 00     Mx
    STA $0A90                       ; $828072  8D 90 0A     Mx
    STZ $0890                       ; $828075  9C 90 08     Mx
    LDA #$0014                      ; $828078  A9 14 00     Mx
    STA $0870                       ; $82807B  8D 70 08     Mx
L_82807E:
    JMP L_828CC1                    ; $82807E  4C C1 8C     Mx
L_828081:
    LDA $0C19                       ; $828081  AD 19 0C     Mx
    BNE L_828089                    ; $828084  D0 03        Mx
    JMP L_828A84                    ; $828086  4C 84 8A     Mx
L_828089:
    LDA $0866                       ; $828089  AD 66 08     Mx
    BEQ L_8280A1                    ; $82808C  F0 13        Mx
    LDA $0C19                       ; $82808E  AD 19 0C     Mx
    CMP $07D8                       ; $828091  CD D8 07     Mx
    BEQ L_8280A4                    ; $828094  F0 0E        Mx
    AND #$00FF                      ; $828096  29 FF 00     Mx
    CMP #$0001                      ; $828099  C9 01 00     Mx
    BNE L_8280A1                    ; $82809C  D0 03        Mx
    JMP L_82849C                    ; $82809E  4C 9C 84     Mx
L_8280A1:
    JMP L_828720                    ; $8280A1  4C 20 87     Mx
L_8280A4:
    LDX $06F1                       ; $8280A4  AE F1 06     Mx
    BEQ L_8280EE                    ; $8280A7  F0 45        Mx
    LDA $0774                       ; $8280A9  AD 74 07     Mx
    BEQ L_8280C2                    ; $8280AC  F0 14        Mx
    INC                             ; $8280AE  1A           Mx
    BEQ L_8280C2                    ; $8280AF  F0 11        Mx
    LDA $0786                       ; $8280B1  AD 86 07     Mx
    BNE L_8280C2                    ; $8280B4  D0 0C        Mx
    STZ $085E                       ; $8280B6  9C 5E 08     Mx
    LDA $08B8                       ; $8280B9  AD B8 08     Mx
    STA $00B7                       ; $8280BC  8D B7 00     Mx
    JMP L_8280D3                    ; $8280BF  4C D3 80     Mx
L_8280C2:
    LDA $0770                       ; $8280C2  AD 70 07     Mx
    BEQ L_8280EE                    ; $8280C5  F0 27        Mx
    LDA #$0003                      ; $8280C7  A9 03 00     Mx
    STA $0894                       ; $8280CA  8D 94 08     Mx
    LDA $08BA                       ; $8280CD  AD BA 08     Mx
    STA $00B7                       ; $8280D0  8D B7 00     Mx
L_8280D3:
    LDA $0A90                       ; $8280D3  AD 90 0A     Mx
    AND #$0F00                      ; $8280D6  29 00 0F     Mx
    ORA $08BC                       ; $8280D9  0D BC 08     Mx
    ORA $00B7                       ; $8280DC  0D B7 00     Mx
    STA $0A90                       ; $8280DF  8D 90 0A     Mx
    STZ $0890                       ; $8280E2  9C 90 08     Mx
    LDA #$0014                      ; $8280E5  A9 14 00     Mx
    STA $0870                       ; $8280E8  8D 70 08     Mx
    JMP L_828CC1                    ; $8280EB  4C C1 8C     Mx
L_8280EE:
    LDA #$0001                      ; $8280EE  A9 01 00     Mx
    STA $0892                       ; $8280F1  8D 92 08     Mx
    LDA $07E0                       ; $8280F4  AD E0 07     Mx
    BIT #$0002                      ; $8280F7  89 02 00     Mx
    BNE L_82810C                    ; $8280FA  D0 10        Mx
    LDA $080A                       ; $8280FC  AD 0A 08     Mx
    BNE L_82810F                    ; $8280FF  D0 0E        Mx
    LDA $0A90                       ; $828101  AD 90 0A     Mx
    BIT $08BA                       ; $828104  2C BA 08     Mx
    BEQ L_828112                    ; $828107  F0 09        Mx
    JMP L_828409                    ; $828109  4C 09 84     Mx
L_82810C:
    JMP L_828496                    ; $82810C  4C 96 84     Mx
L_82810F:
    JMP L_828447                    ; $82810F  4C 47 84     Mx
L_828112:
    LDA $07E0                       ; $828112  AD E0 07     Mx
    BIT #$0001                      ; $828115  89 01 00     Mx
    BNE L_82810F                    ; $828118  D0 F5        Mx
    LDA $0868                       ; $82811A  AD 68 08     Mx
    BEQ L_828122                    ; $82811D  F0 03        Mx
    JMP L_82818C                    ; $82811F  4C 8C 81     Mx
L_828122:
    LDA $0928                       ; $828122  AD 28 09     Mx
    CMP $083C                       ; $828125  CD 3C 08     Mx
    BCC L_82814D                    ; $828128  90 23        Mx
    LDA $0A10                       ; $82812A  AD 10 0A     Mx
    CMP $083C                       ; $82812D  CD 3C 08     Mx
    BCC L_82814D                    ; $828130  90 1B        Mx
    LDA $083A                       ; $828132  AD 3A 08     Mx
    STA $00D0                       ; $828135  8D D0 00     Mx
    LDA #$0374                      ; $828138  A9 74 03     Mx
    STA $00D3                       ; $82813B  8D D3 00     Mx
    JSR L_828C3B                    ; $82813E  20 3B 8C     Mx
    LDA $089E                       ; $828141  AD 9E 08     Mx
    BPL L_828150                    ; $828144  10 0A        Mx
    CMP #$FFF3                      ; $828146  C9 F3 FF     Mx
    BCC L_828159                    ; $828149  90 0E        Mx
    BRA L_828150                    ; $82814B  80 03        Mx
L_82814D:
    JMP L_8281BC                    ; $82814D  4C BC 81     Mx
L_828150:
    LDA $0A90                       ; $828150  AD 90 0A     Mx
    ORA $08BC                       ; $828153  0D BC 08     Mx
    STA $0A90                       ; $828156  8D 90 0A     Mx
L_828159:
    LDA $0CCB                       ; $828159  AD CB 0C     Mx
    CMP #$0002                      ; $82815C  C9 02 00     Mx
    BCC L_82816E                    ; $82815F  90 0D        Mx
    LDA $0CCD                       ; $828161  AD CD 0C     Mx
    BNE L_828171                    ; $828164  D0 0B        Mx
    LDA $0CCF                       ; $828166  AD CF 0C     Mx
    CMP #$0003                      ; $828169  C9 03 00     Mx
    BCS L_828171                    ; $82816C  B0 03        Mx
L_82816E:
    JMP L_8283DF                    ; $82816E  4C DF 83     Mx
L_828171:
    LDA $083C                       ; $828171  AD 3C 08     Mx
    CMP #$0088                      ; $828174  C9 88 00     Mx
    BCC L_82817C                    ; $828177  90 03        Mx
L_828179:
    JMP L_828CC1                    ; $828179  4C C1 8C     Mx
L_82817C:
    CMP #$0028                      ; $82817C  C9 28 00     Mx
    BCC L_82816E                    ; $82817F  90 ED        Mx
    LDA $1D56                       ; $828181  AD 56 1D     Mx
    AND #$000F                      ; $828184  29 0F 00     Mx
    BNE L_828179                    ; $828187  D0 F0        Mx
    JMP L_8283DF                    ; $828189  4C DF 83     Mx
L_82818C:
    LDA $0A90                       ; $82818C  AD 90 0A     Mx
    AND #$FEFF                      ; $82818F  29 FF FE     Mx
    STA $0A90                       ; $828192  8D 90 0A     Mx
    STZ $0894                       ; $828195  9C 94 08     Mx
    LDA $083C                       ; $828198  AD 3C 08     Mx
    CMP #$00B8                      ; $82819B  C9 B8 00     Mx
    BCS L_8281A3                    ; $82819E  B0 03        Mx
    JMP L_8283DF                    ; $8281A0  4C DF 83     Mx
L_8281A3:
    STZ $085C                       ; $8281A3  9C 5C 08     Mx
    STZ $085E                       ; $8281A6  9C 5E 08     Mx
    JSR L_82867A                    ; $8281A9  20 7A 86     Mx
    BNE L_8281B9                    ; $8281AC  D0 0B        Mx
    LDA $1D56                       ; $8281AE  AD 56 1D     Mx
    AND #$000F                      ; $8281B1  29 0F 00     Mx
    BNE L_8281B9                    ; $8281B4  D0 03        Mx
    JMP L_8283DF                    ; $8281B6  4C DF 83     Mx
L_8281B9:
    JMP L_828CC1                    ; $8281B9  4C C1 8C     Mx
L_8281BC:
    LDA $0CCB                       ; $8281BC  AD CB 0C     Mx
    CMP #$0002                      ; $8281BF  C9 02 00     Mx
    BCS L_8281C7                    ; $8281C2  B0 03        Mx
    JMP L_8283DF                    ; $8281C4  4C DF 83     Mx
L_8281C7:
    LDA $0CCD                       ; $8281C7  AD CD 0C     Mx
    BNE L_8281D7                    ; $8281CA  D0 0B        Mx
    LDA $0CCF                       ; $8281CC  AD CF 0C     Mx
    CMP #$0003                      ; $8281CF  C9 03 00     Mx
    BCS L_8281D7                    ; $8281D2  B0 03        Mx
    JMP L_8283DF                    ; $8281D4  4C DF 83     Mx
L_8281D7:
    LDA $0850                       ; $8281D7  AD 50 08     Mx
    CMP #$0040                      ; $8281DA  C9 40 00     Mx
    BCS L_82820F                    ; $8281DD  B0 30        Mx
    LDA $083C                       ; $8281DF  AD 3C 08     Mx
    CMP $0850                       ; $8281E2  CD 50 08     Mx
    BCC L_82820F                    ; $8281E5  90 28        Mx
    LDA $084A                       ; $8281E7  AD 4A 08     Mx
    SEC                             ; $8281EA  38           Mx
    SBC $083E                       ; $8281EB  ED 3E 08     Mx
    BPL L_8281F7                    ; $8281EE  10 07        Mx
    EOR #$FFFF                      ; $8281F0  49 FF FF     Mx
    CLC                             ; $8281F3  18           Mx
    ADC #$0001                      ; $8281F4  69 01 00     Mx
L_8281F7:
    CMP #$0041                      ; $8281F7  C9 41 00     Mx
    BCC L_828209                    ; $8281FA  90 0D        Mx
    SEC                             ; $8281FC  38           Mx
    SBC #$0080                      ; $8281FD  E9 80 00     Mx
    BPL L_828209                    ; $828200  10 07        Mx
    EOR #$FFFF                      ; $828202  49 FF FF     Mx
    CLC                             ; $828205  18           Mx
    ADC #$0001                      ; $828206  69 01 00     Mx
L_828209:
    SEC                             ; $828209  38           Mx
    SBC #$0020                      ; $82820A  E9 20 00     Mx
    BMI L_82824A                    ; $82820D  30 3B        Mx
L_82820F:
    LDA $0852                       ; $82820F  AD 52 08     Mx
    CMP #$0040                      ; $828212  C9 40 00     Mx
    BCS L_828247                    ; $828215  B0 30        Mx
    LDA $083C                       ; $828217  AD 3C 08     Mx
    CMP $0852                       ; $82821A  CD 52 08     Mx
    BCC L_828247                    ; $82821D  90 28        Mx
    LDA $084C                       ; $82821F  AD 4C 08     Mx
    SEC                             ; $828222  38           Mx
    SBC $083E                       ; $828223  ED 3E 08     Mx
    BPL L_82822F                    ; $828226  10 07        Mx
    EOR #$FFFF                      ; $828228  49 FF FF     Mx
    CLC                             ; $82822B  18           Mx
    ADC #$0001                      ; $82822C  69 01 00     Mx
L_82822F:
    CMP #$0041                      ; $82822F  C9 41 00     Mx
    BCC L_828241                    ; $828232  90 0D        Mx
    SEC                             ; $828234  38           Mx
    SBC #$0080                      ; $828235  E9 80 00     Mx
    BPL L_828241                    ; $828238  10 07        Mx
    EOR #$FFFF                      ; $82823A  49 FF FF     Mx
    CLC                             ; $82823D  18           Mx
    ADC #$0001                      ; $82823E  69 01 00     Mx
L_828241:
    SEC                             ; $828241  38           Mx
    SBC #$0020                      ; $828242  E9 20 00     Mx
    BMI L_82824A                    ; $828245  30 03        Mx
L_828247:
    JMP L_8282DD                    ; $828247  4C DD 82     Mx
L_82824A:
    LDA $084E                       ; $82824A  AD 4E 08     Mx
    CMP #$0038                      ; $82824D  C9 38 00     Mx
    BCC L_82825A                    ; $828250  90 08        Mx
    JSR L_82867A                    ; $828252  20 7A 86     Mx
    BEQ L_82825A                    ; $828255  F0 03        Mx
    JMP L_828CC1                    ; $828257  4C C1 8C     Mx
L_82825A:
    LDA $0A92                       ; $82825A  AD 92 0A     Mx
    SEC                             ; $82825D  38           Mx
    SBC #$0002                      ; $82825E  E9 02 00     Mx
    STA $00D0                       ; $828261  8D D0 00     Mx
    BEQ L_828268                    ; $828264  F0 02        Mx
    BPL L_8282A3                    ; $828266  10 3B        Mx
L_828268:
    LDA $1D56                       ; $828268  AD 56 1D     Mx
    AND #$0001                      ; $82826B  29 01 00     Mx
    STA $0A94                       ; $82826E  8D 94 0A     Mx
    LDA #$002B                      ; $828271  A9 2B 00     Mx
    STA $00D0                       ; $828274  8D D0 00     Mx
    LDA $1D57                       ; $828277  AD 57 1D     Mx
    STA $00BA                       ; $82827A  8D BA 00     Mx
    INC $00D0                       ; $82827D  EE D0 00     Mx
    SEP #$20                        ; $828280  E2 20        Mx
    LDA $00D0                       ; $828282  AD D0 00     mx
    STA $4202                       ; $828285  8D 02 42     mx
    LDA $00BA                       ; $828288  AD BA 00     mx
    STA $4203                       ; $82828B  8D 03 42     mx
    NOP                             ; $82828E  EA           mx
    NOP                             ; $82828F  EA           mx
    NOP                             ; $828290  EA           mx
    REP #$20                        ; $828291  C2 20        mx
    LDA $4216                       ; $828293  AD 16 42     Mx
    STA $00BA                       ; $828296  8D BA 00     Mx
    LDA $00BB                       ; $828299  AD BB 00     Mx
    AND #$00FF                      ; $82829C  29 FF 00     Mx
    CLC                             ; $82829F  18           Mx
    ADC #$000A                      ; $8282A0  69 0A 00     Mx
L_8282A3:
    STA $0A92                       ; $8282A3  8D 92 0A     Mx
    LDA $083A                       ; $8282A6  AD 3A 08     Mx
    STA $00D0                       ; $8282A9  8D D0 00     Mx
    LDA #$0374                      ; $8282AC  A9 74 03     Mx
    STA $00D3                       ; $8282AF  8D D3 00     Mx
    JSR L_828C3B                    ; $8282B2  20 3B 8C     Mx
    BNE L_8282BA                    ; $8282B5  D0 03        Mx
    JMP L_8283DF                    ; $8282B7  4C DF 83     Mx
L_8282BA:
    LDA $00D1                       ; $8282BA  AD D1 00     Mx
    LDX $0A94                       ; $8282BD  AE 94 0A     Mx
    BEQ L_8282C6                    ; $8282C0  F0 04        Mx
    CLC                             ; $8282C2  18           Mx
    ADC #$0010                      ; $8282C3  69 10 00     Mx
L_8282C6:
    SEP #$20                        ; $8282C6  E2 20        Mx
    TAX                             ; $8282C8  AA           mx
    LDA $A7E957,X                   ; $8282C9  BF 57 E9 A7  mx
    STA $0A91                       ; $8282CD  8D 91 0A     mx
    REP #$20                        ; $8282D0  C2 20        mx
    LDA $083C                       ; $8282D2  AD 3C 08     Mx
    CMP #$0040                      ; $8282D5  C9 40 00     Mx
    BCS L_828315                    ; $8282D8  B0 3B        Mx
    JMP L_8283DF                    ; $8282DA  4C DF 83     Mx
L_8282DD:
    LDA $0850                       ; $8282DD  AD 50 08     Mx
    CMP #$0034                      ; $8282E0  C9 34 00     Mx
    BCC L_828312                    ; $8282E3  90 2D        Mx
    LDA $0852                       ; $8282E5  AD 52 08     Mx
    CMP #$0034                      ; $8282E8  C9 34 00     Mx
    BCC L_828312                    ; $8282EB  90 25        Mx
    LDA $083A                       ; $8282ED  AD 3A 08     Mx
    STA $00D0                       ; $8282F0  8D D0 00     Mx
    LDA #$0374                      ; $8282F3  A9 74 03     Mx
    STA $00D3                       ; $8282F6  8D D3 00     Mx
    JSR L_828C3B                    ; $8282F9  20 3B 8C     Mx
    LDA $089E                       ; $8282FC  AD 9E 08     Mx
    BPL L_828306                    ; $8282FF  10 05        Mx
    CMP #$FFF3                      ; $828301  C9 F3 FF     Mx
    BCC L_828315                    ; $828304  90 0F        Mx
L_828306:
    LDA $0A90                       ; $828306  AD 90 0A     Mx
    ORA $08BC                       ; $828309  0D BC 08     Mx
    STA $0A90                       ; $82830C  8D 90 0A     Mx
    JMP L_828315                    ; $82830F  4C 15 83     Mx
L_828312:
    JMP L_82825A                    ; $828312  4C 5A 82     Mx
L_828315:
    LDA $083C                       ; $828315  AD 3C 08     Mx
    CMP #$0028                      ; $828318  C9 28 00     Mx
    BCC L_828325                    ; $82831B  90 08        Mx
    LDX $06F1                       ; $82831D  AE F1 06     Mx
    BEQ L_828328                    ; $828320  F0 06        Mx
    JMP L_828CC1                    ; $828322  4C C1 8C     Mx
L_828325:
    JMP L_8283DF                    ; $828325  4C DF 83     Mx
L_828328:
    LDA $080E                       ; $828328  AD 0E 08     Mx
    SEC                             ; $82832B  38           Mx
    SBC #$0310                      ; $82832C  E9 10 03     Mx
    LSR                             ; $82832F  4A           Mx
    BPL L_828335                    ; $828330  10 03        Mx
    LDA #$0000                      ; $828332  A9 00 00     Mx
L_828335:
    CMP #$0070                      ; $828335  C9 70 00     Mx
    BCC L_82833D                    ; $828338  90 03        Mx
    LDA #$0070                      ; $82833A  A9 70 00     Mx
L_82833D:
    ASL                             ; $82833D  0A           Mx
    TAX                             ; $82833E  AA           Mx
    LDA $0806                       ; $82833F  AD 06 08     Mx
    BMI L_82834D                    ; $828342  30 09        Mx
    CMP $A7E62E,X                   ; $828344  DF 2E E6 A7  Mx
    BCC L_82834D                    ; $828348  90 03        Mx
    JMP L_828394                    ; $82834A  4C 94 83     Mx
L_82834D:
    LDA $083C                       ; $82834D  AD 3C 08     Mx
    CMP #$00F5                      ; $828350  C9 F5 00     Mx
    BCS L_828394                    ; $828353  B0 3F        Mx
    LDA #$0006                      ; $828355  A9 06 00     Mx
    STA $00D3                       ; $828358  8D D3 00     Mx
    LDA $0CCB                       ; $82835B  AD CB 0C     Mx
    CMP #$0046                      ; $82835E  C9 46 00     Mx
    BCS L_828369                    ; $828361  B0 06        Mx
    LDA #$0003                      ; $828363  A9 03 00     Mx
    STA $00D3                       ; $828366  8D D3 00     Mx
L_828369:
    LDA $08B2                       ; $828369  AD B2 08     Mx
    BMI L_828394                    ; $82836C  30 26        Mx
    CMP $00D3                       ; $82836E  CD D3 00     Mx
    BMI L_828394                    ; $828371  30 21        Mx
    LDA $0CCB                       ; $828373  AD CB 0C     Mx
    CMP #$0028                      ; $828376  C9 28 00     Mx
    BCC L_8283DF                    ; $828379  90 64        Mx
    LDA #$0008                      ; $82837B  A9 08 00     Mx
    STA $00D0                       ; $82837E  8D D0 00     Mx
    LDA $0850                       ; $828381  AD 50 08     Mx
    CMP #$0038                      ; $828384  C9 38 00     Mx
    BCC L_8283AA                    ; $828387  90 21        Mx
    LDA $0852                       ; $828389  AD 52 08     Mx
    CMP #$0038                      ; $82838C  C9 38 00     Mx
    BCC L_8283AA                    ; $82838F  90 19        Mx
    JMP L_8283DF                    ; $828391  4C DF 83     Mx
L_828394:
    LDA #$0019                      ; $828394  A9 19 00     Mx
    STA $00D0                       ; $828397  8D D0 00     Mx
    LDA $089E                       ; $82839A  AD 9E 08     Mx
    BPL L_8283AA                    ; $82839D  10 0B        Mx
    CMP #$FFF8                      ; $82839F  C9 F8 FF     Mx
    BCS L_8283AA                    ; $8283A2  B0 06        Mx
    LDA #$000F                      ; $8283A4  A9 0F 00     Mx
    STA $00D0                       ; $8283A7  8D D0 00     Mx
L_8283AA:
    LDA $1D57                       ; $8283AA  AD 57 1D     Mx
    STA $00BA                       ; $8283AD  8D BA 00     Mx
    INC $00D0                       ; $8283B0  EE D0 00     Mx
    SEP #$20                        ; $8283B3  E2 20        Mx
    LDA $00D0                       ; $8283B5  AD D0 00     mx
    STA $4202                       ; $8283B8  8D 02 42     mx
    LDA $00BA                       ; $8283BB  AD BA 00     mx
    STA $4203                       ; $8283BE  8D 03 42     mx
    NOP                             ; $8283C1  EA           mx
    NOP                             ; $8283C2  EA           mx
    NOP                             ; $8283C3  EA           mx
    REP #$20                        ; $8283C4  C2 20        mx
    LDA $4216                       ; $8283C6  AD 16 42     Mx
    STA $00BA                       ; $8283C9  8D BA 00     Mx
    LDA $00BB                       ; $8283CC  AD BB 00     Mx
    AND #$00FF                      ; $8283CF  29 FF 00     Mx
    BEQ L_8283D7                    ; $8283D2  F0 03        Mx
L_8283D4:
    JMP L_828CC1                    ; $8283D4  4C C1 8C     Mx
L_8283D7:
    LDA $083C                       ; $8283D7  AD 3C 08     Mx
    CMP #$00C0                      ; $8283DA  C9 C0 00     Mx
    BCS L_8283D4                    ; $8283DD  B0 F5        Mx
L_8283DF:
    LDA $07D8                       ; $8283DF  AD D8 07     Mx
    CMP $0C19                       ; $8283E2  CD 19 0C     Mx
    BNE L_8283F4                    ; $8283E5  D0 0D        Mx
    LDX $06F1                       ; $8283E7  AE F1 06     Mx
    BEQ L_8283F4                    ; $8283EA  F0 08        Mx
    LDA $083C                       ; $8283EC  AD 3C 08     Mx
    CMP #$0080                      ; $8283EF  C9 80 00     Mx
    BCS L_828406                    ; $8283F2  B0 12        Mx
L_8283F4:
    LDA $0A90                       ; $8283F4  AD 90 0A     Mx
    ORA $08BA                       ; $8283F7  0D BA 08     Mx
    ORA $08BC                       ; $8283FA  0D BC 08     Mx
    STA $0A90                       ; $8283FD  8D 90 0A     Mx
    LDA #$0001                      ; $828400  A9 01 00     Mx
    STA $0894                       ; $828403  8D 94 08     Mx
L_828406:
    JMP L_828CC1                    ; $828406  4C C1 8C     Mx
L_828409:
    LDA $0894                       ; $828409  AD 94 08     Mx
    STA $00D6                       ; $82840C  8D D6 00     Mx
    BEQ L_828406                    ; $82840F  F0 F5        Mx
    BMI L_828406                    ; $828411  30 F3        Mx
    LDX $06F1                       ; $828413  AE F1 06     Mx
    BNE L_828406                    ; $828416  D0 EE        Mx
    LDA $1D58                       ; $828418  AD 58 1D     Mx
    AND #$000F                      ; $82841B  29 0F 00     Mx
    CMP #$0009                      ; $82841E  C9 09 00     Mx
    BNE L_828406                    ; $828421  D0 E3        Mx
    LDA $0CCB                       ; $828423  AD CB 0C     Mx
    CMP #$0002                      ; $828426  C9 02 00     Mx
    BCC L_828406                    ; $828429  90 DB        Mx
    LDA $0CCD                       ; $82842B  AD CD 0C     Mx
    BNE L_828438                    ; $82842E  D0 08        Mx
    LDA $0CCF                       ; $828430  AD CF 0C     Mx
    CMP #$0003                      ; $828433  C9 03 00     Mx
    BCC L_828406                    ; $828436  90 CE        Mx
L_828438:
    DEC $00D6                       ; $828438  CE D6 00     Mx
    DEC $00D6                       ; $82843B  CE D6 00     Mx
    LDA $00D6                       ; $82843E  AD D6 00     Mx
    STA $0894                       ; $828441  8D 94 08     Mx
    JMP L_828496                    ; $828444  4C 96 84     Mx
L_828447:
    LDX $06F1                       ; $828447  AE F1 06     Mx
    BEQ L_828457                    ; $82844A  F0 0B        Mx
    LDA $076C                       ; $82844C  AD 6C 07     Mx
    AND $08BA                       ; $82844F  2D BA 08     Mx
    BNE L_828406                    ; $828452  D0 B2        Mx
L_828454:
    JMP L_828496                    ; $828454  4C 96 84     Mx
L_828457:
    LDA $07DC                       ; $828457  AD DC 07     Mx
    CMP #$0022                      ; $82845A  C9 22 00     Mx
    BEQ L_828454                    ; $82845D  F0 F5        Mx
    LDA $1D57                       ; $82845F  AD 57 1D     Mx
    AND #$0007                      ; $828462  29 07 00     Mx
    BEQ L_828454                    ; $828465  F0 ED        Mx
    LDA $1D56                       ; $828467  AD 56 1D     Mx
    AND #$000F                      ; $82846A  29 0F 00     Mx
    BNE L_828499                    ; $82846D  D0 2A        Mx
    LDA $08B2                       ; $82846F  AD B2 08     Mx
    CLC                             ; $828472  18           Mx
    ADC #$0005                      ; $828473  69 05 00     Mx
    BMI L_828488                    ; $828476  30 10        Mx
    LDA $07E0                       ; $828478  AD E0 07     Mx
    AND #$0004                      ; $82847B  29 04 00     Mx
    BNE L_828499                    ; $82847E  D0 19        Mx
    LDA $0CCB                       ; $828480  AD CB 0C     Mx
    CMP #$0002                      ; $828483  C9 02 00     Mx
    BCC L_828499                    ; $828486  90 11        Mx
L_828488:
    LDA $07E0                       ; $828488  AD E0 07     Mx
    BIT #$000C                      ; $82848B  89 0C 00     Mx
    BNE L_828499                    ; $82848E  D0 09        Mx
    JSR L_82867A                    ; $828490  20 7A 86     Mx
    JMP L_828CC1                    ; $828493  4C C1 8C     Mx
L_828496:
    STZ $0A90                       ; $828496  9C 90 0A     Mx
L_828499:
    JMP L_828CC1                    ; $828499  4C C1 8C     Mx
L_82849C:
    STZ $0890                       ; $82849C  9C 90 08     Mx
    LDA $0892                       ; $82849F  AD 92 08     Mx
    CMP #$0001                      ; $8284A2  C9 01 00     Mx
    BCS L_8284E7                    ; $8284A5  B0 40        Mx
    LDA #$0001                      ; $8284A7  A9 01 00     Mx
    STA $0892                       ; $8284AA  8D 92 08     Mx
    JSR L_828CA6                    ; $8284AD  20 A6 8C     Mx
    TAX                             ; $8284B0  AA           Mx
    LDA $A7E838,X                   ; $8284B1  BF 38 E8 A7  Mx
    AND #$00FF                      ; $8284B5  29 FF 00     Mx
    STA $00D0                       ; $8284B8  8D D0 00     Mx
    LDA $1D56                       ; $8284BB  AD 56 1D     Mx
    STA $00BA                       ; $8284BE  8D BA 00     Mx
    INC $00D0                       ; $8284C1  EE D0 00     Mx
    SEP #$20                        ; $8284C4  E2 20        Mx
    LDA $00D0                       ; $8284C6  AD D0 00     mx
    STA $4202                       ; $8284C9  8D 02 42     mx
    LDA $00BA                       ; $8284CC  AD BA 00     mx
    STA $4203                       ; $8284CF  8D 03 42     mx
    NOP                             ; $8284D2  EA           mx
    NOP                             ; $8284D3  EA           mx
    NOP                             ; $8284D4  EA           mx
    REP #$20                        ; $8284D5  C2 20        mx
    LDA $4216                       ; $8284D7  AD 16 42     Mx
    STA $00BA                       ; $8284DA  8D BA 00     Mx
    LDA $00BB                       ; $8284DD  AD BB 00     Mx
    AND #$00FF                      ; $8284E0  29 FF 00     Mx
    INC                             ; $8284E3  1A           Mx
    STA $0894                       ; $8284E4  8D 94 08     Mx
L_8284E7:
    LDA $07F0                       ; $8284E7  AD F0 07     Mx
    ASL                             ; $8284EA  0A           Mx
    ASL                             ; $8284EB  0A           Mx
    ASL                             ; $8284EC  0A           Mx
    ASL                             ; $8284ED  0A           Mx
    STA $00D9                       ; $8284EE  8D D9 00     Mx
    LDA $0850                       ; $8284F1  AD 50 08     Mx
    CMP #$0028                      ; $8284F4  C9 28 00     Mx
    BPL L_828521                    ; $8284F7  10 28        Mx
    LDA $084A                       ; $8284F9  AD 4A 08     Mx
    SEC                             ; $8284FC  38           Mx
    SBC $00D9                       ; $8284FD  ED D9 00     Mx
    BPL L_828509                    ; $828500  10 07        Mx
    EOR #$FFFF                      ; $828502  49 FF FF     Mx
    CLC                             ; $828505  18           Mx
    ADC #$0001                      ; $828506  69 01 00     Mx
L_828509:
    CMP #$0041                      ; $828509  C9 41 00     Mx
    BCC L_82851B                    ; $82850C  90 0D        Mx
    SEC                             ; $82850E  38           Mx
    SBC #$0080                      ; $82850F  E9 80 00     Mx
    BPL L_82851B                    ; $828512  10 07        Mx
    EOR #$FFFF                      ; $828514  49 FF FF     Mx
    CLC                             ; $828517  18           Mx
    ADC #$0001                      ; $828518  69 01 00     Mx
L_82851B:
    SEC                             ; $82851B  38           Mx
    SBC #$0010                      ; $82851C  E9 10 00     Mx
    BMI L_828557                    ; $82851F  30 36        Mx
L_828521:
    LDA $0852                       ; $828521  AD 52 08     Mx
    CMP #$0028                      ; $828524  C9 28 00     Mx
    BMI L_82852C                    ; $828527  30 03        Mx
    JMP L_8285BE                    ; $828529  4C BE 85     Mx
L_82852C:
    LDA $084C                       ; $82852C  AD 4C 08     Mx
    SEC                             ; $82852F  38           Mx
    SBC $00D9                       ; $828530  ED D9 00     Mx
    BPL L_82853C                    ; $828533  10 07        Mx
    EOR #$FFFF                      ; $828535  49 FF FF     Mx
    CLC                             ; $828538  18           Mx
    ADC #$0001                      ; $828539  69 01 00     Mx
L_82853C:
    CMP #$0041                      ; $82853C  C9 41 00     Mx
    BCC L_82854E                    ; $82853F  90 0D        Mx
    SEC                             ; $828541  38           Mx
    SBC #$0080                      ; $828542  E9 80 00     Mx
    BPL L_82854E                    ; $828545  10 07        Mx
    EOR #$FFFF                      ; $828547  49 FF FF     Mx
    CLC                             ; $82854A  18           Mx
    ADC #$0001                      ; $82854B  69 01 00     Mx
L_82854E:
    SEC                             ; $82854E  38           Mx
    SBC #$0010                      ; $82854F  E9 10 00     Mx
    BMI L_828557                    ; $828552  30 03        Mx
    JMP L_8285BE                    ; $828554  4C BE 85     Mx
L_828557:
    LDA #$0037                      ; $828557  A9 37 00     Mx
    STA $00D0                       ; $82855A  8D D0 00     Mx
    LDA $1D58                       ; $82855D  AD 58 1D     Mx
    STA $00BA                       ; $828560  8D BA 00     Mx
    INC $00D0                       ; $828563  EE D0 00     Mx
    SEP #$20                        ; $828566  E2 20        Mx
    LDA $00D0                       ; $828568  AD D0 00     mx
    STA $4202                       ; $82856B  8D 02 42     mx
    LDA $00BA                       ; $82856E  AD BA 00     mx
    STA $4203                       ; $828571  8D 03 42     mx
    NOP                             ; $828574  EA           mx
    NOP                             ; $828575  EA           mx
    NOP                             ; $828576  EA           mx
    REP #$20                        ; $828577  C2 20        mx
    LDA $4216                       ; $828579  AD 16 42     Mx
    STA $00BA                       ; $82857C  8D BA 00     Mx
    LDA $00BB                       ; $82857F  AD BB 00     Mx
    AND #$00FF                      ; $828582  29 FF 00     Mx
    STA $00D0                       ; $828585  8D D0 00     Mx
    LDA $08B2                       ; $828588  AD B2 08     Mx
    CLC                             ; $82858B  18           Mx
    ADC $089E                       ; $82858C  6D 9E 08     Mx
    BMI L_828599                    ; $82858F  30 08        Mx
    CMP #$0010                      ; $828591  C9 10 00     Mx
    BMI L_828599                    ; $828594  30 03        Mx
    LDA #$000F                      ; $828596  A9 0F 00     Mx
L_828599:
    CLC                             ; $828599  18           Mx
    ADC #$000F                      ; $82859A  69 0F 00     Mx
    BPL L_8285A2                    ; $82859D  10 03        Mx
    LDA #$0000                      ; $82859F  A9 00 00     Mx
L_8285A2:
    TAX                             ; $8285A2  AA           Mx
    LDA $A7E857,X                   ; $8285A3  BF 57 E8 A7  Mx
    AND #$00FF                      ; $8285A7  29 FF 00     Mx
    CMP $00D0                       ; $8285AA  CD D0 00     Mx
    BCC L_8285D7                    ; $8285AD  90 28        Mx
    LDA $0A90                       ; $8285AF  AD 90 0A     Mx
    ORA $08BC                       ; $8285B2  0D BC 08     Mx
    ORA $08B8                       ; $8285B5  0D B8 08     Mx
    STA $0A90                       ; $8285B8  8D 90 0A     Mx
    JMP L_828677                    ; $8285BB  4C 77 86     Mx
L_8285BE:
    LDA $1D56                       ; $8285BE  AD 56 1D     Mx
    AND #$003F                      ; $8285C1  29 3F 00     Mx
    BEQ L_8285D7                    ; $8285C4  F0 11        Mx
    LDA $0894                       ; $8285C6  AD 94 08     Mx
    SEC                             ; $8285C9  38           Mx
    SBC #$0002                      ; $8285CA  E9 02 00     Mx
    STA $00D0                       ; $8285CD  8D D0 00     Mx
    BEQ L_8285D7                    ; $8285D0  F0 05        Mx
    BMI L_8285D7                    ; $8285D2  30 03        Mx
    JMP L_828652                    ; $8285D4  4C 52 86     Mx
L_8285D7:
    LDA #$0010                      ; $8285D7  A9 10 00     Mx
    STA $00D0                       ; $8285DA  8D D0 00     Mx
    LDA $1D57                       ; $8285DD  AD 57 1D     Mx
    STA $00BA                       ; $8285E0  8D BA 00     Mx
    INC $00D0                       ; $8285E3  EE D0 00     Mx
    SEP #$20                        ; $8285E6  E2 20        Mx
    LDA $00D0                       ; $8285E8  AD D0 00     mx
    STA $4202                       ; $8285EB  8D 02 42     mx
    LDA $00BA                       ; $8285EE  AD BA 00     mx
    STA $4203                       ; $8285F1  8D 03 42     mx
    NOP                             ; $8285F4  EA           mx
    NOP                             ; $8285F5  EA           mx
    NOP                             ; $8285F6  EA           mx
    REP #$20                        ; $8285F7  C2 20        mx
    LDA $4216                       ; $8285F9  AD 16 42     Mx
    STA $00BA                       ; $8285FC  8D BA 00     Mx
    LDA $00BB                       ; $8285FF  AD BB 00     Mx
    AND #$00FF                      ; $828602  29 FF 00     Mx
    ASL                             ; $828605  0A           Mx
    ASL                             ; $828606  0A           Mx
    TAX                             ; $828607  AA           Mx
    LDA $A7E877,X                   ; $828608  BF 77 E8 A7  Mx
    EOR #$FFFF                      ; $82860C  49 FF FF     Mx
    CLC                             ; $82860F  18           Mx
    ADC #$0001                      ; $828610  69 01 00     Mx
    STA $0896                       ; $828613  8D 96 08     Mx
    LDA $A7E879,X                   ; $828616  BF 79 E8 A7  Mx
    STA $0898                       ; $82861A  8D 98 08     Mx
    LDA #$009F                      ; $82861D  A9 9F 00     Mx
    STA $00D0                       ; $828620  8D D0 00     Mx
    LDA $1D58                       ; $828623  AD 58 1D     Mx
    STA $00BA                       ; $828626  8D BA 00     Mx
    INC $00D0                       ; $828629  EE D0 00     Mx
    SEP #$20                        ; $82862C  E2 20        Mx
    LDA $00D0                       ; $82862E  AD D0 00     mx
    STA $4202                       ; $828631  8D 02 42     mx
    LDA $00BA                       ; $828634  AD BA 00     mx
    STA $4203                       ; $828637  8D 03 42     mx
    NOP                             ; $82863A  EA           mx
    NOP                             ; $82863B  EA           mx
    NOP                             ; $82863C  EA           mx
    REP #$20                        ; $82863D  C2 20        mx
    LDA $4216                       ; $82863F  AD 16 42     Mx
    STA $00BA                       ; $828642  8D BA 00     Mx
    LDA $00BB                       ; $828645  AD BB 00     Mx
    AND #$00FF                      ; $828648  29 FF 00     Mx
    CLC                             ; $82864B  18           Mx
    ADC #$001A                      ; $82864C  69 1A 00     Mx
    STA $00D0                       ; $82864F  8D D0 00     Mx
L_828652:
    LDA $00D0                       ; $828652  AD D0 00     Mx
    STA $0894                       ; $828655  8D 94 08     Mx
    LDA $0896                       ; $828658  AD 96 08     Mx
    STA $00D0                       ; $82865B  8D D0 00     Mx
    LDA $0898                       ; $82865E  AD 98 08     Mx
    STA $00D3                       ; $828661  8D D3 00     Mx
    JSR L_828C3B                    ; $828664  20 3B 8C     Mx
    BNE L_828677                    ; $828667  D0 0E        Mx
    LDA $0006                       ; $828669  AD 06 00     Mx
    AND #$000F                      ; $82866C  29 0F 00     Mx
    CMP #$000C                      ; $82866F  C9 0C 00     Mx
    BNE L_828677                    ; $828672  D0 03        Mx
    STZ $0894                       ; $828674  9C 94 08     Mx
L_828677:
    JMP L_828CC1                    ; $828677  4C C1 8C     Mx
L_82867A:
    LDX $06F1                       ; $82867A  AE F1 06     Mx
    BEQ L_828682                    ; $82867D  F0 03        Mx
    JMP L_828719                    ; $82867F  4C 19 87     Mx
L_828682:
    LDA $084E                       ; $828682  AD 4E 08     Mx
    CLC                             ; $828685  18           Mx
    ADC #$000A                      ; $828686  69 0A 00     Mx
    STA $00D0                       ; $828689  8D D0 00     Mx
    CMP $0850                       ; $82868C  CD 50 08     Mx
    BCC L_8286B9                    ; $82868F  90 28        Mx
    LDA $084A                       ; $828691  AD 4A 08     Mx
    SEC                             ; $828694  38           Mx
    SBC $0848                       ; $828695  ED 48 08     Mx
    BPL L_8286A1                    ; $828698  10 07        Mx
    EOR #$FFFF                      ; $82869A  49 FF FF     Mx
    CLC                             ; $82869D  18           Mx
    ADC #$0001                      ; $82869E  69 01 00     Mx
L_8286A1:
    CMP #$0041                      ; $8286A1  C9 41 00     Mx
    BCC L_8286B3                    ; $8286A4  90 0D        Mx
    SEC                             ; $8286A6  38           Mx
    SBC #$0080                      ; $8286A7  E9 80 00     Mx
    BPL L_8286B3                    ; $8286AA  10 07        Mx
    EOR #$FFFF                      ; $8286AC  49 FF FF     Mx
    CLC                             ; $8286AF  18           Mx
    ADC #$0001                      ; $8286B0  69 01 00     Mx
L_8286B3:
    SEC                             ; $8286B3  38           Mx
    SBC #$0010                      ; $8286B4  E9 10 00     Mx
    BMI L_82870A                    ; $8286B7  30 51        Mx
L_8286B9:
    LDA $00D0                       ; $8286B9  AD D0 00     Mx
    CMP $0852                       ; $8286BC  CD 52 08     Mx
    BCC L_8286E9                    ; $8286BF  90 28        Mx
    LDA $084C                       ; $8286C1  AD 4C 08     Mx
    SEC                             ; $8286C4  38           Mx
    SBC $0848                       ; $8286C5  ED 48 08     Mx
    BPL L_8286D1                    ; $8286C8  10 07        Mx
    EOR #$FFFF                      ; $8286CA  49 FF FF     Mx
    CLC                             ; $8286CD  18           Mx
    ADC #$0001                      ; $8286CE  69 01 00     Mx
L_8286D1:
    CMP #$0041                      ; $8286D1  C9 41 00     Mx
    BCC L_8286E3                    ; $8286D4  90 0D        Mx
    SEC                             ; $8286D6  38           Mx
    SBC #$0080                      ; $8286D7  E9 80 00     Mx
    BPL L_8286E3                    ; $8286DA  10 07        Mx
    EOR #$FFFF                      ; $8286DC  49 FF FF     Mx
    CLC                             ; $8286DF  18           Mx
    ADC #$0001                      ; $8286E0  69 01 00     Mx
L_8286E3:
    SEC                             ; $8286E3  38           Mx
    SBC #$0010                      ; $8286E4  E9 10 00     Mx
    BMI L_82870A                    ; $8286E7  30 21        Mx
L_8286E9:
    LDA $06F4                       ; $8286E9  AD F4 06     Mx
    LSR                             ; $8286EC  4A           Mx
    TAX                             ; $8286ED  AA           Mx
    LDA $82DF6E,X                   ; $8286EE  BF 6E DF 82  Mx
    AND #$00FF                      ; $8286F2  29 FF 00     Mx
    BEQ L_828719                    ; $8286F5  F0 22        Mx
L_8286F7:
    LDA #$0014                      ; $8286F7  A9 14 00     Mx
    STA $0870                       ; $8286FA  8D 70 08     Mx
    LDA $0A90                       ; $8286FD  AD 90 0A     Mx
    ORA $08BC                       ; $828700  0D BC 08     Mx
    ORA $08B8                       ; $828703  0D B8 08     Mx
    STA $0A90                       ; $828706  8D 90 0A     Mx
    RTS                             ; $828709  60           Mx
L_82870A:
    LDA $0868                       ; $82870A  AD 68 08     Mx
    BEQ L_828719                    ; $82870D  F0 0A        Mx
    LDA $1D56                       ; $82870F  AD 56 1D     Mx
    AND #$00C0                      ; $828712  29 C0 00     Mx
    BNE L_828719                    ; $828715  D0 02        Mx
    BRA L_8286F7                    ; $828717  80 DE        Mx
L_828719:
    LDA #$0000                      ; $828719  A9 00 00     Mx
    STA $00D0                       ; $82871C  8D D0 00     Mx
    RTS                             ; $82871F  60           Mx
L_828720:
    JSR L_828CA6                    ; $828720  20 A6 8C     Mx
    STA $00E5                       ; $828723  8D E5 00     Mx
    STZ $0890                       ; $828726  9C 90 08     Mx
    LDA $0892                       ; $828729  AD 92 08     Mx
    BMI L_828776                    ; $82872C  30 48        Mx
    LDA #$FFFF                      ; $82872E  A9 FF FF     Mx
    STA $0892                       ; $828731  8D 92 08     Mx
    LDX $00E5                       ; $828734  AE E5 00     Mx
    LDA $A7E8BB,X                   ; $828737  BF BB E8 A7  Mx
    AND #$00FF                      ; $82873B  29 FF 00     Mx
    STA $00D0                       ; $82873E  8D D0 00     Mx
    LSR                             ; $828741  4A           Mx
    LSR                             ; $828742  4A           Mx
    STA $00D6                       ; $828743  8D D6 00     Mx
    LDA $1D56                       ; $828746  AD 56 1D     Mx
    STA $00BA                       ; $828749  8D BA 00     Mx
    INC $00D0                       ; $82874C  EE D0 00     Mx
    SEP #$20                        ; $82874F  E2 20        Mx
    LDA $00D0                       ; $828751  AD D0 00     mx
    STA $4202                       ; $828754  8D 02 42     mx
    LDA $00BA                       ; $828757  AD BA 00     mx
    STA $4203                       ; $82875A  8D 03 42     mx
    NOP                             ; $82875D  EA           mx
    NOP                             ; $82875E  EA           mx
    NOP                             ; $82875F  EA           mx
    REP #$20                        ; $828760  C2 20        mx
    LDA $4216                       ; $828762  AD 16 42     Mx
    STA $00BA                       ; $828765  8D BA 00     Mx
    LDA $00BB                       ; $828768  AD BB 00     Mx
    AND #$00FF                      ; $82876B  29 FF 00     Mx
    INC                             ; $82876E  1A           Mx
    CLC                             ; $82876F  18           Mx
    ADC $00D6                       ; $828770  6D D6 00     Mx
    STA $0894                       ; $828773  8D 94 08     Mx
L_828776:
    LDA $0894                       ; $828776  AD 94 08     Mx
    SEC                             ; $828779  38           Mx
    SBC #$0002                      ; $82877A  E9 02 00     Mx
    BEQ L_828787                    ; $82877D  F0 08        Mx
    BMI L_828787                    ; $82877F  30 06        Mx
    STA $00D0                       ; $828781  8D D0 00     Mx
    JMP L_8288DF                    ; $828784  4C DF 88     Mx
L_828787:
    LDA #$09A8                      ; $828787  A9 A8 09     Mx
    STA $00DC                       ; $82878A  8D DC 00     Mx
    CMP $00CC                       ; $82878D  CD CC 00     Mx
    BNE L_828795                    ; $828790  D0 03        Mx
    JMP L_8287F0                    ; $828792  4C F0 87     Mx
L_828795:
    LDY #$64                        ; $828795  A0 64        Mx
    LDA ($CC),Y                     ; $828797  B1 CC        Mx
    CMP #$00F0                      ; $828799  C9 F0 00     Mx
    BCC L_8287A1                    ; $82879C  90 03        Mx
    JMP L_8287F0                    ; $82879E  4C F0 87     Mx
L_8287A1:
    LDY #$08                        ; $8287A1  A0 08        Mx
    LDA ($CC),Y                     ; $8287A3  B1 CC        Mx
    AND #$0004                      ; $8287A5  29 04 00     Mx
    BNE L_8287EA                    ; $8287A8  D0 40        Mx
    LDA $06F4                       ; $8287AA  AD F4 06     Mx
    CMP #$0030                      ; $8287AD  C9 30 00     Mx
    BNE L_8287B5                    ; $8287B0  D0 03        Mx
    JMP L_8287EA                    ; $8287B2  4C EA 87     Mx
L_8287B5:
    LDA $075A                       ; $8287B5  AD 5A 07     Mx
    SEC                             ; $8287B8  38           Mx
    SBC $0762                       ; $8287B9  ED 62 07     Mx
    BPL L_8287C5                    ; $8287BC  10 07        Mx
    EOR #$FFFF                      ; $8287BE  49 FF FF     Mx
    CLC                             ; $8287C1  18           Mx
    ADC #$0001                      ; $8287C2  69 01 00     Mx
L_8287C5:
    CMP #$0041                      ; $8287C5  C9 41 00     Mx
    BMI L_8287D7                    ; $8287C8  30 0D        Mx
    SEC                             ; $8287CA  38           Mx
    SBC #$0080                      ; $8287CB  E9 80 00     Mx
    BPL L_8287D7                    ; $8287CE  10 07        Mx
    EOR #$FFFF                      ; $8287D0  49 FF FF     Mx
    CLC                             ; $8287D3  18           Mx
    ADC #$0001                      ; $8287D4  69 01 00     Mx
L_8287D7:
    SEC                             ; $8287D7  38           Mx
    SBC #$001C                      ; $8287D8  E9 1C 00     Mx
    BMI L_8287EA                    ; $8287DB  30 0D        Mx
    BEQ L_8287EA                    ; $8287DD  F0 0B        Mx
    LDA $0768                       ; $8287DF  AD 68 07     Mx
    CMP #$0080                      ; $8287E2  C9 80 00     Mx
    BCS L_8287EA                    ; $8287E5  B0 03        Mx
    JMP L_8287F0                    ; $8287E7  4C F0 87     Mx
L_8287EA:
    LDA $00CC                       ; $8287EA  AD CC 00     Mx
    STA $00DC                       ; $8287ED  8D DC 00     Mx
L_8287F0:
    LDY #$2E                        ; $8287F0  A0 2E        Mx
    LDA ($DC),Y                     ; $8287F2  B1 DC        Mx
    STA $00D0                       ; $8287F4  8D D0 00     Mx
    LDY #$36                        ; $8287F7  A0 36        Mx
    LDA ($DC),Y                     ; $8287F9  B1 DC        Mx
    STA $00D3                       ; $8287FB  8D D3 00     Mx
    LDA $0CCB                       ; $8287FE  AD CB 0C     Mx
    CMP #$0008                      ; $828801  C9 08 00     Mx
    BCS L_828809                    ; $828804  B0 03        Mx
L_828806:
    JMP L_828883                    ; $828806  4C 83 88     Mx
L_828809:
    LDA $0CCD                       ; $828809  AD CD 0C     Mx
    BNE L_828816                    ; $82880C  D0 08        Mx
    LDA $0CCF                       ; $82880E  AD CF 0C     Mx
    CMP #$0006                      ; $828811  C9 06 00     Mx
    BCC L_828806                    ; $828814  90 F0        Mx
L_828816:
    LDY #$08                        ; $828816  A0 08        Mx
    LDA ($CC),Y                     ; $828818  B1 CC        Mx
    AND #$0001                      ; $82881A  29 01 00     Mx
    BNE L_828806                    ; $82881D  D0 E7        Mx
    LDY #$39                        ; $82881F  A0 39        Mx
    LDA ($DC),Y                     ; $828821  B1 DC        Mx
    CMP #$8000                      ; $828823  C9 00 80     Mx
    ROR                             ; $828826  6A           Mx
    CMP #$8000                      ; $828827  C9 00 80     Mx
    ROR                             ; $82882A  6A           Mx
    CMP #$8000                      ; $82882B  C9 00 80     Mx
    ROR                             ; $82882E  6A           Mx
    CMP #$8000                      ; $82882F  C9 00 80     Mx
    ROR                             ; $828832  6A           Mx
    CLC                             ; $828833  18           Mx
    ADC $00D0                       ; $828834  6D D0 00     Mx
    STA $00D0                       ; $828837  8D D0 00     Mx
    LDY #$41                        ; $82883A  A0 41        Mx
    LDA ($DC),Y                     ; $82883C  B1 DC        Mx
    CMP #$8000                      ; $82883E  C9 00 80     Mx
    ROR                             ; $828841  6A           Mx
    CMP #$8000                      ; $828842  C9 00 80     Mx
    ROR                             ; $828845  6A           Mx
    CMP #$8000                      ; $828846  C9 00 80     Mx
    ROR                             ; $828849  6A           Mx
    CLC                             ; $82884A  18           Mx
    ADC $00D3                       ; $82884B  6D D3 00     Mx
    STA $00D3                       ; $82884E  8D D3 00     Mx
    LDA $0A0A                       ; $828851  AD 0A 0A     Mx
    CLC                             ; $828854  18           Mx
    ADC $00D0                       ; $828855  6D D0 00     Mx
    ASL $00D0                       ; $828858  0E D0 00     Mx
    CLC                             ; $82885B  18           Mx
    ADC $00D0                       ; $82885C  6D D0 00     Mx
    CMP #$8000                      ; $82885F  C9 00 80     Mx
    ROR                             ; $828862  6A           Mx
    CMP #$8000                      ; $828863  C9 00 80     Mx
    ROR                             ; $828866  6A           Mx
    STA $00D0                       ; $828867  8D D0 00     Mx
    LDA #$0374                      ; $82886A  A9 74 03     Mx
    CLC                             ; $82886D  18           Mx
    ADC $00D3                       ; $82886E  6D D3 00     Mx
    ASL $00D3                       ; $828871  0E D3 00     Mx
    CLC                             ; $828874  18           Mx
    ADC $00D3                       ; $828875  6D D3 00     Mx
    CMP #$8000                      ; $828878  C9 00 80     Mx
    ROR                             ; $82887B  6A           Mx
    CMP #$8000                      ; $82887C  C9 00 80     Mx
    ROR                             ; $82887F  6A           Mx
    STA $00D3                       ; $828880  8D D3 00     Mx
L_828883:
    LDA $00D0                       ; $828883  AD D0 00     Mx
    STA $0896                       ; $828886  8D 96 08     Mx
    LDA $00D3                       ; $828889  AD D3 00     Mx
    STA $0898                       ; $82888C  8D 98 08     Mx
    LDA #$0019                      ; $82888F  A9 19 00     Mx
    STA $00D0                       ; $828892  8D D0 00     Mx
    LDY #$68                        ; $828895  A0 68        Mx
    LDA ($CC),Y                     ; $828897  B1 CC        Mx
    CMP #$00F8                      ; $828899  C9 F8 00     Mx
    BCS L_8288DF                    ; $82889C  B0 41        Mx
    LDX $00E5                       ; $82889E  AE E5 00     Mx
    LDA $A7E8DA,X                   ; $8288A1  BF DA E8 A7  Mx
    AND #$00FF                      ; $8288A5  29 FF 00     Mx
    STA $00D0                       ; $8288A8  8D D0 00     Mx
    LSR                             ; $8288AB  4A           Mx
    LSR                             ; $8288AC  4A           Mx
    STA $00D6                       ; $8288AD  8D D6 00     Mx
    LDA $1D58                       ; $8288B0  AD 58 1D     Mx
    STA $00BA                       ; $8288B3  8D BA 00     Mx
    INC $00D0                       ; $8288B6  EE D0 00     Mx
    SEP #$20                        ; $8288B9  E2 20        Mx
    LDA $00D0                       ; $8288BB  AD D0 00     mx
    STA $4202                       ; $8288BE  8D 02 42     mx
    LDA $00BA                       ; $8288C1  AD BA 00     mx
    STA $4203                       ; $8288C4  8D 03 42     mx
    NOP                             ; $8288C7  EA           mx
    NOP                             ; $8288C8  EA           mx
    NOP                             ; $8288C9  EA           mx
    REP #$20                        ; $8288CA  C2 20        mx
    LDA $4216                       ; $8288CC  AD 16 42     Mx
    STA $00BA                       ; $8288CF  8D BA 00     Mx
    LDA $00BB                       ; $8288D2  AD BB 00     Mx
    AND #$00FF                      ; $8288D5  29 FF 00     Mx
    CLC                             ; $8288D8  18           Mx
    ADC $00D6                       ; $8288D9  6D D6 00     Mx
    STA $00D0                       ; $8288DC  8D D0 00     Mx
L_8288DF:
    LDA $00D0                       ; $8288DF  AD D0 00     Mx
    STA $0894                       ; $8288E2  8D 94 08     Mx
    LDA $0896                       ; $8288E5  AD 96 08     Mx
    STA $00D0                       ; $8288E8  8D D0 00     Mx
    LDA $0898                       ; $8288EB  AD 98 08     Mx
    STA $00D3                       ; $8288EE  8D D3 00     Mx
    JSR L_828C3B                    ; $8288F1  20 3B 8C     Mx
    STA $00D6                       ; $8288F4  8D D6 00     Mx
    LDA $0A0C                       ; $8288F7  AD 0C 0A     Mx
    SEC                             ; $8288FA  38           Mx
    SBC #$0008                      ; $8288FB  E9 08 00     Mx
    STA $00D0                       ; $8288FE  8D D0 00     Mx
    CMP #$00F0                      ; $828901  C9 F0 00     Mx
    BCC L_82890D                    ; $828904  90 07        Mx
    SEC                             ; $828906  38           Mx
    SBC #$0040                      ; $828907  E9 40 00     Mx
    STA $00D0                       ; $82890A  8D D0 00     Mx
L_82890D:
    LDA $0840                       ; $82890D  AD 40 08     Mx
    CMP $00D0                       ; $828910  CD D0 00     Mx
    BCC L_82891E                    ; $828913  90 09        Mx
    LDA $00D6                       ; $828915  AD D6 00     Mx
    ORA $08BC                       ; $828918  0D BC 08     Mx
    STA $00D6                       ; $82891B  8D D6 00     Mx
L_82891E:
    LDA $0844                       ; $82891E  AD 44 08     Mx
    CMP #$001A                      ; $828921  C9 1A 00     Mx
    BCS L_82893E                    ; $828924  B0 18        Mx
    LDA $0CCB                       ; $828926  AD CB 0C     Mx
    CMP #$0008                      ; $828929  C9 08 00     Mx
    BCC L_82893B                    ; $82892C  90 0D        Mx
    LDA $0CCD                       ; $82892E  AD CD 0C     Mx
    BNE L_82893E                    ; $828931  D0 0B        Mx
    LDA $0CCF                       ; $828933  AD CF 0C     Mx
    CMP #$0006                      ; $828936  C9 06 00     Mx
    BCS L_82893E                    ; $828939  B0 03        Mx
L_82893B:
    JMP L_8289C2                    ; $82893B  4C C2 89     Mx
L_82893E:
    LDX $00E5                       ; $82893E  AE E5 00     Mx
    LDA $A7E8F9,X                   ; $828941  BF F9 E8 A7  Mx
    AND #$00FF                      ; $828945  29 FF 00     Mx
    CMP $0844                       ; $828948  CD 44 08     Mx
    BCS L_828950                    ; $82894B  B0 03        Mx
    JMP L_8289DF                    ; $82894D  4C DF 89     Mx
L_828950:
    LDA #$0104                      ; $828950  A9 04 01     Mx
    STA $00BA                       ; $828953  8D BA 00     Mx
    SEP #$20                        ; $828956  E2 20        Mx
    LDA $1D56                       ; $828958  AD 56 1D     mx
    STA $4202                       ; $82895B  8D 02 42     mx
    LDA $00BA                       ; $82895E  AD BA 00     mx
    STA $4203                       ; $828961  8D 03 42     mx
    NOP                             ; $828964  EA           mx
    NOP                             ; $828965  EA           mx
    NOP                             ; $828966  EA           mx
    REP #$20                        ; $828967  C2 20        mx
    LDA $4216                       ; $828969  AD 16 42     Mx
    STA $00BA                       ; $82896C  8D BA 00     Mx
    STA $00A8                       ; $82896F  8D A8 00     Mx
    LDA #$0104                      ; $828972  A9 04 01     Mx
    STA $00BA                       ; $828975  8D BA 00     Mx
    SEP #$20                        ; $828978  E2 20        Mx
    LDA $1D56                       ; $82897A  AD 56 1D     mx
    STA $4202                       ; $82897D  8D 02 42     mx
    LDA $00BB                       ; $828980  AD BB 00     mx
    STA $4203                       ; $828983  8D 03 42     mx
    NOP                             ; $828986  EA           mx
    NOP                             ; $828987  EA           mx
    NOP                             ; $828988  EA           mx
    REP #$20                        ; $828989  C2 20        mx
    LDA $4216                       ; $82898B  AD 16 42     Mx
    STA $00BB                       ; $82898E  8D BB 00     Mx
    STZ $00F4                       ; $828991  9C F4 00     Mx
    STZ $00F2                       ; $828994  9C F2 00     Mx
    STA $00F3                       ; $828997  8D F3 00     Mx
    LDA $00F2                       ; $82899A  AD F2 00     Mx
    CLC                             ; $82899D  18           Mx
    ADC $00A8                       ; $82899E  6D A8 00     Mx
    STA $00F2                       ; $8289A1  8D F2 00     Mx
    LDA $00F4                       ; $8289A4  AD F4 00     Mx
    ADC #$0000                      ; $8289A7  69 00 00     Mx
    STA $00F4                       ; $8289AA  8D F4 00     Mx
    LDA $00F3                       ; $8289AD  AD F3 00     Mx
    STA $00D0                       ; $8289B0  8D D0 00     Mx
    LDX $00E5                       ; $8289B3  AE E5 00     Mx
    LDA $A7E919,X                   ; $8289B6  BF 19 E9 A7  Mx
    AND #$00FF                      ; $8289BA  29 FF 00     Mx
    CMP $00D0                       ; $8289BD  CD D0 00     Mx
    BCC L_8289DF                    ; $8289C0  90 1D        Mx
L_8289C2:
    LDA $00D6                       ; $8289C2  AD D6 00     Mx
    AND #$0F00                      ; $8289C5  29 00 0F     Mx
    ORA $08B8                       ; $8289C8  0D B8 08     Mx
    STA $00D6                       ; $8289CB  8D D6 00     Mx
    LDA $1D56                       ; $8289CE  AD 56 1D     Mx
    AND #$0001                      ; $8289D1  29 01 00     Mx
    BNE L_8289DF                    ; $8289D4  D0 09        Mx
    LDA $00D6                       ; $8289D6  AD D6 00     Mx
    ORA $08BC                       ; $8289D9  0D BC 08     Mx
    STA $00D6                       ; $8289DC  8D D6 00     Mx
L_8289DF:
    LDA $0844                       ; $8289DF  AD 44 08     Mx
    CMP #$002F                      ; $8289E2  C9 2F 00     Mx
    BCC L_8289EA                    ; $8289E5  90 03        Mx
    JMP L_828A7B                    ; $8289E7  4C 7B 8A     Mx
L_8289EA:
    LDY #$04                        ; $8289EA  A0 04        Mx
    LDA ($CC),Y                     ; $8289EC  B1 CC        Mx
    CMP #$0030                      ; $8289EE  C9 30 00     Mx
    BEQ L_8289F9                    ; $8289F1  F0 06        Mx
    LDY #$32                        ; $8289F3  A0 32        Mx
    LDA ($CC),Y                     ; $8289F5  B1 CC        Mx
    BNE L_828A35                    ; $8289F7  D0 3C        Mx
L_8289F9:
    LDY #$08                        ; $8289F9  A0 08        Mx
    LDA ($CC),Y                     ; $8289FB  B1 CC        Mx
    AND #$0001                      ; $8289FD  29 01 00     Mx
    BEQ L_828A7B                    ; $828A00  F0 79        Mx
    LDA #$0005                      ; $828A02  A9 05 00     Mx
    STA $00D0                       ; $828A05  8D D0 00     Mx
    LDA $1D57                       ; $828A08  AD 57 1D     Mx
    STA $00BA                       ; $828A0B  8D BA 00     Mx
    INC $00D0                       ; $828A0E  EE D0 00     Mx
    SEP #$20                        ; $828A11  E2 20        Mx
    LDA $00D0                       ; $828A13  AD D0 00     mx
    STA $4202                       ; $828A16  8D 02 42     mx
    LDA $00BA                       ; $828A19  AD BA 00     mx
    STA $4203                       ; $828A1C  8D 03 42     mx
    NOP                             ; $828A1F  EA           mx
    NOP                             ; $828A20  EA           mx
    NOP                             ; $828A21  EA           mx
    REP #$20                        ; $828A22  C2 20        mx
    LDA $4216                       ; $828A24  AD 16 42     Mx
    STA $00BA                       ; $828A27  8D BA 00     Mx
    LDA $00BB                       ; $828A2A  AD BB 00     Mx
    AND #$00FF                      ; $828A2D  29 FF 00     Mx
    BNE L_828A7B                    ; $828A30  D0 49        Mx
    JMP L_828A72                    ; $828A32  4C 72 8A     Mx
L_828A35:
    LDA #$003C                      ; $828A35  A9 3C 00     Mx
    STA $00D0                       ; $828A38  8D D0 00     Mx
    LDA $1D56                       ; $828A3B  AD 56 1D     Mx
    STA $00BA                       ; $828A3E  8D BA 00     Mx
    INC $00D0                       ; $828A41  EE D0 00     Mx
    SEP #$20                        ; $828A44  E2 20        Mx
    LDA $00D0                       ; $828A46  AD D0 00     mx
    STA $4202                       ; $828A49  8D 02 42     mx
    LDA $00BA                       ; $828A4C  AD BA 00     mx
    STA $4203                       ; $828A4F  8D 03 42     mx
    NOP                             ; $828A52  EA           mx
    NOP                             ; $828A53  EA           mx
    NOP                             ; $828A54  EA           mx
    REP #$20                        ; $828A55  C2 20        mx
    LDA $4216                       ; $828A57  AD 16 42     Mx
    STA $00BA                       ; $828A5A  8D BA 00     Mx
    LDA $00BB                       ; $828A5D  AD BB 00     Mx
    AND #$00FF                      ; $828A60  29 FF 00     Mx
    STA $00D0                       ; $828A63  8D D0 00     Mx
    LDX $00E5                       ; $828A66  AE E5 00     Mx
    LDA $A7E938,X                   ; $828A69  BF 38 E9 A7  Mx
    CMP $00D0                       ; $828A6D  CD D0 00     Mx
    BCC L_828A7B                    ; $828A70  90 09        Mx
L_828A72:
    LDA $00D6                       ; $828A72  AD D6 00     Mx
    ORA $08BA                       ; $828A75  0D BA 08     Mx
    STA $00D6                       ; $828A78  8D D6 00     Mx
L_828A7B:
    LDA $00D6                       ; $828A7B  AD D6 00     Mx
    STA $0A90                       ; $828A7E  8D 90 0A     Mx
    JMP L_828CC1                    ; $828A81  4C C1 8C     Mx
L_828A84:
    LDA $088A                       ; $828A84  AD 8A 08     Mx
    BEQ L_828A8C                    ; $828A87  F0 03        Mx
L_828A89:
    JMP L_82849C                    ; $828A89  4C 9C 84     Mx
L_828A8C:
    LDA $07A2                       ; $828A8C  AD A2 07     Mx
    BNE L_828A89                    ; $828A8F  D0 F8        Mx
    STZ $0890                       ; $828A91  9C 90 08     Mx
    LDA $0892                       ; $828A94  AD 92 08     Mx
    BEQ L_828AF0                    ; $828A97  F0 57        Mx
    STZ $0892                       ; $828A99  9C 92 08     Mx
    LDA $089E                       ; $828A9C  AD 9E 08     Mx
    CLC                             ; $828A9F  18           Mx
    ADC $08B2                       ; $828AA0  6D B2 08     Mx
    BMI L_828AAD                    ; $828AA3  30 08        Mx
    CMP #$0010                      ; $828AA5  C9 10 00     Mx
    BMI L_828AAD                    ; $828AA8  30 03        Mx
    LDA #$000F                      ; $828AAA  A9 0F 00     Mx
L_828AAD:
    CLC                             ; $828AAD  18           Mx
    ADC #$000F                      ; $828AAE  69 0F 00     Mx
    BPL L_828AB6                    ; $828AB1  10 03        Mx
    LDA #$0000                      ; $828AB3  A9 00 00     Mx
L_828AB6:
    TAX                             ; $828AB6  AA           Mx
    LDA $A7E7FA,X                   ; $828AB7  BF FA E7 A7  Mx
    AND #$00FF                      ; $828ABB  29 FF 00     Mx
    STA $00D0                       ; $828ABE  8D D0 00     Mx
    LDA $1D56                       ; $828AC1  AD 56 1D     Mx
    STA $00BA                       ; $828AC4  8D BA 00     Mx
    INC $00D0                       ; $828AC7  EE D0 00     Mx
    SEP #$20                        ; $828ACA  E2 20        Mx
    LDA $00D0                       ; $828ACC  AD D0 00     mx
    STA $4202                       ; $828ACF  8D 02 42     mx
    LDA $00BA                       ; $828AD2  AD BA 00     mx
    STA $4203                       ; $828AD5  8D 03 42     mx
    NOP                             ; $828AD8  EA           mx
    NOP                             ; $828AD9  EA           mx
    NOP                             ; $828ADA  EA           mx
    REP #$20                        ; $828ADB  C2 20        mx
    LDA $4216                       ; $828ADD  AD 16 42     Mx
    STA $00BA                       ; $828AE0  8D BA 00     Mx
    LDA $00BB                       ; $828AE3  AD BB 00     Mx
    AND #$00FF                      ; $828AE6  29 FF 00     Mx
    CLC                             ; $828AE9  18           Mx
    ADC #$0002                      ; $828AEA  69 02 00     Mx
    STA $0894                       ; $828AED  8D 94 08     Mx
L_828AF0:
    LDA $0894                       ; $828AF0  AD 94 08     Mx
    SEC                             ; $828AF3  38           Mx
    SBC #$0002                      ; $828AF4  E9 02 00     Mx
    BEQ L_828B01                    ; $828AF7  F0 08        Mx
    BMI L_828B01                    ; $828AF9  30 06        Mx
    STA $00D0                       ; $828AFB  8D D0 00     Mx
    JMP L_828BED                    ; $828AFE  4C ED 8B     Mx
L_828B01:
    LDA $06F4                       ; $828B01  AD F4 06     Mx
    CMP #$0030                      ; $828B04  C9 30 00     Mx
    BNE L_828B0C                    ; $828B07  D0 03        Mx
    JMP L_828B23                    ; $828B09  4C 23 8B     Mx
L_828B0C:
    LDA $0844                       ; $828B0C  AD 44 08     Mx
    CMP $075C                       ; $828B0F  CD 5C 07     Mx
    BCS L_828B17                    ; $828B12  B0 03        Mx
    JMP L_828B23                    ; $828B14  4C 23 8B     Mx
L_828B17:
    STZ $00D0                       ; $828B17  9C D0 00     Mx
    LDA #$0374                      ; $828B1A  A9 74 03     Mx
    STA $00D3                       ; $828B1D  8D D3 00     Mx
    JMP L_828B8D                    ; $828B20  4C 8D 8B     Mx
L_828B23:
    LDA $0BE5                       ; $828B23  AD E5 0B     Mx
    STA $00DF                       ; $828B26  8D DF 00     Mx
    LDA $0BE3                       ; $828B29  AD E3 0B     Mx
    ASL                             ; $828B2C  0A           Mx
    ROL $00DF                       ; $828B2D  2E DF 00     Mx
    ASL                             ; $828B30  0A           Mx
    ROL $00DF                       ; $828B31  2E DF 00     Mx
    ASL                             ; $828B34  0A           Mx
    ROL $00DF                       ; $828B35  2E DF 00     Mx
    CLC                             ; $828B38  18           Mx
    ADC $0BD7                       ; $828B39  6D D7 0B     Mx
    STA $00A4                       ; $828B3C  8D A4 00     Mx
    LDA $0BD9                       ; $828B3F  AD D9 0B     Mx
    ADC $00DF                       ; $828B42  6D DF 00     Mx
    STA $00D0                       ; $828B45  8D D0 00     Mx
    LDA $00A4                       ; $828B48  AD A4 00     Mx
    CLC                             ; $828B4B  18           Mx
    ADC $0BE3                       ; $828B4C  6D E3 0B     Mx
    LDA $00D0                       ; $828B4F  AD D0 00     Mx
    ADC $0BE5                       ; $828B52  6D E5 0B     Mx
    STA $00D0                       ; $828B55  8D D0 00     Mx
    LDA $0BED                       ; $828B58  AD ED 0B     Mx
    STA $00DC                       ; $828B5B  8D DC 00     Mx
    LDA $0BEB                       ; $828B5E  AD EB 0B     Mx
    ASL                             ; $828B61  0A           Mx
    ROL $00DC                       ; $828B62  2E DC 00     Mx
    ASL                             ; $828B65  0A           Mx
    ROL $00DC                       ; $828B66  2E DC 00     Mx
    ASL                             ; $828B69  0A           Mx
    ROL $00DC                       ; $828B6A  2E DC 00     Mx
    CLC                             ; $828B6D  18           Mx
    ADC $0BDF                       ; $828B6E  6D DF 0B     Mx
    STA $00A4                       ; $828B71  8D A4 00     Mx
    LDA $0BE1                       ; $828B74  AD E1 0B     Mx
    ADC $00DC                       ; $828B77  6D DC 00     Mx
    STA $00D3                       ; $828B7A  8D D3 00     Mx
    LDA $00A4                       ; $828B7D  AD A4 00     Mx
    CLC                             ; $828B80  18           Mx
    ADC $0BEB                       ; $828B81  6D EB 0B     Mx
    LDA $00D3                       ; $828B84  AD D3 00     Mx
    ADC $0BED                       ; $828B87  6D ED 0B     Mx
    STA $00D3                       ; $828B8A  8D D3 00     Mx
L_828B8D:
    LDA $00D0                       ; $828B8D  AD D0 00     Mx
    STA $0896                       ; $828B90  8D 96 08     Mx
    LDA $00D3                       ; $828B93  AD D3 00     Mx
    STA $0898                       ; $828B96  8D 98 08     Mx
    LDA $08B2                       ; $828B99  AD B2 08     Mx
    CLC                             ; $828B9C  18           Mx
    ADC $089E                       ; $828B9D  6D 9E 08     Mx
    BMI L_828BAA                    ; $828BA0  30 08        Mx
    CMP #$0010                      ; $828BA2  C9 10 00     Mx
    BMI L_828BAA                    ; $828BA5  30 03        Mx
    LDA #$000F                      ; $828BA7  A9 0F 00     Mx
L_828BAA:
    CLC                             ; $828BAA  18           Mx
    ADC #$000F                      ; $828BAB  69 0F 00     Mx
    BPL L_828BB3                    ; $828BAE  10 03        Mx
    LDA #$0000                      ; $828BB0  A9 00 00     Mx
L_828BB3:
    TAX                             ; $828BB3  AA           Mx
    LDA $A7E819,X                   ; $828BB4  BF 19 E8 A7  Mx
    AND #$00FF                      ; $828BB8  29 FF 00     Mx
    STA $00D0                       ; $828BBB  8D D0 00     Mx
    LDA $1D58                       ; $828BBE  AD 58 1D     Mx
    STA $00BA                       ; $828BC1  8D BA 00     Mx
    INC $00D0                       ; $828BC4  EE D0 00     Mx
    SEP #$20                        ; $828BC7  E2 20        Mx
    LDA $00D0                       ; $828BC9  AD D0 00     mx
    STA $4202                       ; $828BCC  8D 02 42     mx
    LDA $00BA                       ; $828BCF  AD BA 00     mx
    STA $4203                       ; $828BD2  8D 03 42     mx
    NOP                             ; $828BD5  EA           mx
    NOP                             ; $828BD6  EA           mx
    NOP                             ; $828BD7  EA           mx
    REP #$20                        ; $828BD8  C2 20        mx
    LDA $4216                       ; $828BDA  AD 16 42     Mx
    STA $00BA                       ; $828BDD  8D BA 00     Mx
    LDA $00BB                       ; $828BE0  AD BB 00     Mx
    AND #$00FF                      ; $828BE3  29 FF 00     Mx
    CLC                             ; $828BE6  18           Mx
    ADC #$0005                      ; $828BE7  69 05 00     Mx
    STA $00D0                       ; $828BEA  8D D0 00     Mx
L_828BED:
    LDA $00D0                       ; $828BED  AD D0 00     Mx
    STA $0894                       ; $828BF0  8D 94 08     Mx
    LDA $0896                       ; $828BF3  AD 96 08     Mx
    STA $00D0                       ; $828BF6  8D D0 00     Mx
    LDA $0898                       ; $828BF9  AD 98 08     Mx
    STA $00D3                       ; $828BFC  8D D3 00     Mx
    JSR L_828C3B                    ; $828BFF  20 3B 8C     Mx
    LDA $0844                       ; $828C02  AD 44 08     Mx
    CMP #$0018                      ; $828C05  C9 18 00     Mx
    BCS L_828C38                    ; $828C08  B0 2E        Mx
    LDA $0BDD                       ; $828C0A  AD DD 0B     Mx
    CMP #$0038                      ; $828C0D  C9 38 00     Mx
    BCC L_828C38                    ; $828C10  90 26        Mx
    CMP #$006A                      ; $828C12  C9 6A 00     Mx
    BCS L_828C38                    ; $828C15  B0 21        Mx
    LDX $0C1F                       ; $828C17  AE 1F 0C     Mx
    CPX $07D8                       ; $828C1A  EC D8 07     Mx
    BEQ L_828C38                    ; $828C1D  F0 19        Mx
    CPX $06F0                       ; $828C1F  EC F0 06     Mx
    BEQ L_828C38                    ; $828C22  F0 14        Mx
    LDA $1D57                       ; $828C24  AD 57 1D     Mx
    AND #$0003                      ; $828C27  29 03 00     Mx
    CMP #$0002                      ; $828C2A  C9 02 00     Mx
    BNE L_828C38                    ; $828C2D  D0 09        Mx
    LDA $0A90                       ; $828C2F  AD 90 0A     Mx
    ORA $08BA                       ; $828C32  0D BA 08     Mx
    STA $0A90                       ; $828C35  8D 90 0A     Mx
L_828C38:
    JMP L_828CC1                    ; $828C38  4C C1 8C     Mx
L_828C3B:
    LDA $0806                       ; $828C3B  AD 06 08     Mx
    SEC                             ; $828C3E  38           Mx
    SBC $00D0                       ; $828C3F  ED D0 00     Mx
    STZ $00D0                       ; $828C42  9C D0 00     Mx
    STA $00B7                       ; $828C45  8D B7 00     Mx
    BPL L_828C51                    ; $828C48  10 07        Mx
    EOR #$FFFF                      ; $828C4A  49 FF FF     Mx
    CLC                             ; $828C4D  18           Mx
    ADC #$0001                      ; $828C4E  69 01 00     Mx
L_828C51:
    SEC                             ; $828C51  38           Mx
    SBC #$000A                      ; $828C52  E9 0A 00     Mx
    BMI L_828C6A                    ; $828C55  30 13        Mx
    LDA $00B7                       ; $828C57  AD B7 00     Mx
    BMI L_828C64                    ; $828C5A  30 08        Mx
    LDA #$0200                      ; $828C5C  A9 00 02     Mx
    STA $00D0                       ; $828C5F  8D D0 00     Mx
    BRA L_828C6A                    ; $828C62  80 06        Mx
L_828C64:
    LDA #$0100                      ; $828C64  A9 00 01     Mx
    STA $00D0                       ; $828C67  8D D0 00     Mx
L_828C6A:
    LDA $080E                       ; $828C6A  AD 0E 08     Mx
    SEC                             ; $828C6D  38           Mx
    SBC $00D3                       ; $828C6E  ED D3 00     Mx
    STA $00B7                       ; $828C71  8D B7 00     Mx
    BPL L_828C7D                    ; $828C74  10 07        Mx
    EOR #$FFFF                      ; $828C76  49 FF FF     Mx
    CLC                             ; $828C79  18           Mx
    ADC #$0001                      ; $828C7A  69 01 00     Mx
L_828C7D:
    SEC                             ; $828C7D  38           Mx
    SBC #$000A                      ; $828C7E  E9 0A 00     Mx
    BMI L_828C9C                    ; $828C81  30 19        Mx
    LDA $00B7                       ; $828C83  AD B7 00     Mx
    BMI L_828C93                    ; $828C86  30 0B        Mx
    LDA #$0800                      ; $828C88  A9 00 08     Mx
    ORA $00D0                       ; $828C8B  0D D0 00     Mx
    STA $00D0                       ; $828C8E  8D D0 00     Mx
    BRA L_828C9C                    ; $828C91  80 09        Mx
L_828C93:
    LDA #$0400                      ; $828C93  A9 00 04     Mx
    ORA $00D0                       ; $828C96  0D D0 00     Mx
    STA $00D0                       ; $828C99  8D D0 00     Mx
L_828C9C:
    LDA $00D0                       ; $828C9C  AD D0 00     Mx
    STA $0A90                       ; $828C9F  8D 90 0A     Mx
    LDA $00D0                       ; $828CA2  AD D0 00     Mx
    RTS                             ; $828CA5  60           Mx
L_828CA6:
    LDA $08B2                       ; $828CA6  AD B2 08     Mx
    CLC                             ; $828CA9  18           Mx
    ADC $089E                       ; $828CAA  6D 9E 08     Mx
    BMI L_828CB7                    ; $828CAD  30 08        Mx
    CMP #$0010                      ; $828CAF  C9 10 00     Mx
    BMI L_828CB7                    ; $828CB2  30 03        Mx
    LDA #$000F                      ; $828CB4  A9 0F 00     Mx
L_828CB7:
    CLC                             ; $828CB7  18           Mx
    ADC #$000F                      ; $828CB8  69 0F 00     Mx
    BPL L_828CC0                    ; $828CBB  10 03        Mx
    LDA #$0000                      ; $828CBD  A9 00 00     Mx
L_828CC0:
    RTS                             ; $828CC0  60           Mx
L_828CC1:
    LDA $0A90                       ; $828CC1  AD 90 0A     Mx
L_828CC4:
    JSR L_829BB4                    ; $828CC4  20 B4 9B     Mx
    LDA $0810                       ; $828CC7  AD 10 08     Mx
    CLC                             ; $828CCA  18           Mx
    ADC $0804                       ; $828CCB  6D 04 08     Mx
    STA $07FA                       ; $828CCE  8D FA 07     Mx
    LDA $0812                       ; $828CD1  AD 12 08     Mx
    ADC $0806                       ; $828CD4  6D 06 08     Mx
    STA $07F8                       ; $828CD7  8D F8 07     Mx
    SEC                             ; $828CDA  38           Mx
    SBC #$0006                      ; $828CDB  E9 06 00     Mx
    STA $082E                       ; $828CDE  8D 2E 08     Mx
    CLC                             ; $828CE1  18           Mx
    ADC #$000C                      ; $828CE2  69 0C 00     Mx
    STA $0830                       ; $828CE5  8D 30 08     Mx
    LDA $0818                       ; $828CE8  AD 18 08     Mx
    CLC                             ; $828CEB  18           Mx
    ADC $080C                       ; $828CEC  6D 0C 08     Mx
    STA $0802                       ; $828CEF  8D 02 08     Mx
    LDA $081A                       ; $828CF2  AD 1A 08     Mx
    ADC $080E                       ; $828CF5  6D 0E 08     Mx
    STA $0800                       ; $828CF8  8D 00 08     Mx
    LDA $0814                       ; $828CFB  AD 14 08     Mx
    CLC                             ; $828CFE  18           Mx
    ADC $0808                       ; $828CFF  6D 08 08     Mx
    STA $07FE                       ; $828D02  8D FE 07     Mx
    LDA $0816                       ; $828D05  AD 16 08     Mx
    ADC $080A                       ; $828D08  6D 0A 08     Mx
    STA $07FC                       ; $828D0B  8D FC 07     Mx
    LDA $07DC                       ; $828D0E  AD DC 07     Mx
    STA $00AA                       ; $828D11  8D AA 00     Mx
    LDA $0BD9                       ; $828D14  AD D9 0B     Mx
    STA $00A8                       ; $828D17  8D A8 00     Mx
    LDA $0BF9                       ; $828D1A  AD F9 0B     Mx
    BNE L_828D64                    ; $828D1D  D0 45        Mx
    LDA $0C19                       ; $828D1F  AD 19 0C     Mx
    BNE L_828D67                    ; $828D22  D0 43        Mx
    LDA $07EA                       ; $828D24  AD EA 07     Mx
    BEQ L_828D31                    ; $828D27  F0 08        Mx
    LDX $0C1B                       ; $828D29  AE 1B 0C     Mx
    CPX $07D8                       ; $828D2C  EC D8 07     Mx
    BNE L_828D64                    ; $828D2F  D0 33        Mx
L_828D31:
    LDA $07DC                       ; $828D31  AD DC 07     Mx
    CMP #$0032                      ; $828D34  C9 32 00     Mx
    BNE L_828D3C                    ; $828D37  D0 03        Mx
    JMP L_8293D6                    ; $828D39  4C D6 93     Mx
L_828D3C:
    CMP #$0030                      ; $828D3C  C9 30 00     Mx
    BEQ L_828D64                    ; $828D3F  F0 23        Mx
    LDX $0A9A                       ; $828D41  AE 9A 0A     Mx
    BEQ L_828D52                    ; $828D44  F0 0C        Mx
    LDA $07D8                       ; $828D46  AD D8 07     Mx
    SEC                             ; $828D49  38           Mx
    SBC $0C1B                       ; $828D4A  ED 1B 0C     Mx
    AND #$00FF                      ; $828D4D  29 FF 00     Mx
    BNE L_828D64                    ; $828D50  D0 12        Mx
L_828D52:
    LDA $0844                       ; $828D52  AD 44 08     Mx
    CMP #$0020                      ; $828D55  C9 20 00     Mx
    BCS L_828D64                    ; $828D58  B0 0A        Mx
    LDA $07E0                       ; $828D5A  AD E0 07     Mx
    BNE L_828D64                    ; $828D5D  D0 05        Mx
    LDA $0862                       ; $828D5F  AD 62 08     Mx
    BEQ L_828D91                    ; $828D62  F0 2D        Mx
L_828D64:
    JMP L_829807                    ; $828D64  4C 07 98     Mx
L_828D67:
    CMP $07D8                       ; $828D67  CD D8 07     Mx
    BEQ L_828D64                    ; $828D6A  F0 F8        Mx
    LDA $0866                       ; $828D6C  AD 66 08     Mx
    AND #$007F                      ; $828D6F  29 7F 00     Mx
    BNE L_828D64                    ; $828D72  D0 F0        Mx
    LDY #$54                        ; $828D74  A0 54        Mx
    LDA $00A8                       ; $828D76  AD A8 00     Mx
    SEC                             ; $828D79  38           Mx
    SBC ($CC),Y                     ; $828D7A  F1 CC        Mx
    STA $00A8                       ; $828D7C  8D A8 00     Mx
    LDA $07DC                       ; $828D7F  AD DC 07     Mx
    CMP #$002C                      ; $828D82  C9 2C 00     Mx
    BEQ L_828D91                    ; $828D85  F0 0A        Mx
    CMP #$0020                      ; $828D87  C9 20 00     Mx
    BCC L_828D64                    ; $828D8A  90 D8        Mx
    CMP #$0025                      ; $828D8C  C9 25 00     Mx
    BCS L_828D64                    ; $828D8F  B0 D3        Mx
L_828D91:
    LDA $00A8                       ; $828D91  AD A8 00     Mx
    CLC                             ; $828D94  18           Mx
    ADC $0BEF                       ; $828D95  6D EF 0B     Mx
    STA $00EA                       ; $828D98  8D EA 00     Mx
    CLC                             ; $828D9B  18           Mx
    ADC #$0012                      ; $828D9C  69 12 00     Mx
    STA $00EC                       ; $828D9F  8D EC 00     Mx
    LDA $082E                       ; $828DA2  AD 2E 08     Mx
    SEC                             ; $828DA5  38           Mx
    SBC #$0002                      ; $828DA6  E9 02 00     Mx
    SEC                             ; $828DA9  38           Mx
    SBC $00EC                       ; $828DAA  ED EC 00     Mx
    BMI L_828DB2                    ; $828DAD  30 03        Mx
    JMP L_829807                    ; $828DAF  4C 07 98     Mx
L_828DB2:
    LDA $0830                       ; $828DB2  AD 30 08     Mx
    CLC                             ; $828DB5  18           Mx
    ADC #$0006                      ; $828DB6  69 06 00     Mx
    SEC                             ; $828DB9  38           Mx
    SBC $00EA                       ; $828DBA  ED EA 00     Mx
    BPL L_828DC2                    ; $828DBD  10 03        Mx
    JMP L_829807                    ; $828DBF  4C 07 98     Mx
L_828DC2:
    LDA $0800                       ; $828DC2  AD 00 08     Mx
    SEC                             ; $828DC5  38           Mx
    SBC $0BF3                       ; $828DC6  ED F3 0B     Mx
    BMI L_828DD2                    ; $828DC9  30 07        Mx
    CMP #$0018                      ; $828DCB  C9 18 00     Mx
    BCS L_828D64                    ; $828DCE  B0 94        Mx
    BCC L_828DDA                    ; $828DD0  90 08        Mx
L_828DD2:
    CMP #$FFF0                      ; $828DD2  C9 F0 FF     Mx
    BCS L_828DDA                    ; $828DD5  B0 03        Mx
L_828DD7:
    JMP L_829807                    ; $828DD7  4C 07 98     Mx
L_828DDA:
    LDA $07FC                       ; $828DDA  AD FC 07     Mx
    SEC                             ; $828DDD  38           Mx
    SBC $0BDD                       ; $828DDE  ED DD 0B     Mx
    BMI L_828DF0                    ; $828DE1  30 0D        Mx
    CMP #$000D                      ; $828DE3  C9 0D 00     Mx
    BCS L_828DD7                    ; $828DE6  B0 EF        Mx
    LDA $07FC                       ; $828DE8  AD FC 07     Mx
    BNE L_828DD7                    ; $828DEB  D0 EA        Mx
    JMP L_828E16                    ; $828DED  4C 16 8E     Mx
L_828DF0:
    STA $00B2                       ; $828DF0  8D B2 00     Mx
    LDX $080A                       ; $828DF3  AE 0A 08     Mx
    BEQ L_828E02                    ; $828DF6  F0 0A        Mx
    CMP #$FFE2                      ; $828DF8  C9 E2 FF     Mx
    BCS L_828E13                    ; $828DFB  B0 16        Mx
    LDA #$FFAF                      ; $828DFD  A9 AF FF     Mx
    BRA L_828E05                    ; $828E00  80 03        Mx
L_828E02:
    LDA #$FFC8                      ; $828E02  A9 C8 FF     Mx
L_828E05:
    LDX $08A2                       ; $828E05  AE A2 08     Mx
    BEQ L_828E0E                    ; $828E08  F0 04        Mx
    CLC                             ; $828E0A  18           Mx
    ADC #$000E                      ; $828E0B  69 0E 00     Mx
L_828E0E:
    CMP $00B2                       ; $828E0E  CD B2 00     Mx
    BCC L_828E16                    ; $828E11  90 03        Mx
L_828E13:
    JMP L_829807                    ; $828E13  4C 07 98     Mx
L_828E16:
    LDA $080A                       ; $828E16  AD 0A 08     Mx
    BEQ L_828E64                    ; $828E19  F0 49        Mx
    LDA #$0005                      ; $828E1B  A9 05 00     Mx
    STA $0862                       ; $828E1E  8D 62 08     Mx
    LDA #$012C                      ; $828E21  A9 2C 01     Mx
    STA $0C3F                       ; $828E24  8D 3F 0C     Mx
    LDA $0844                       ; $828E27  AD 44 08     Mx
    CMP #$0010                      ; $828E2A  C9 10 00     Mx
    BCS L_828E13                    ; $828E2D  B0 E4        Mx
    LDA $0C19                       ; $828E2F  AD 19 0C     Mx
    BNE L_828E64                    ; $828E32  D0 30        Mx
    LDA $0C2B                       ; $828E34  AD 2B 0C     Mx
    BMI L_828E64                    ; $828E37  30 2B        Mx
    LDA $07F0                       ; $828E39  AD F0 07     Mx
    ASL                             ; $828E3C  0A           Mx
    ASL                             ; $828E3D  0A           Mx
    ASL                             ; $828E3E  0A           Mx
    ASL                             ; $828E3F  0A           Mx
    SEC                             ; $828E40  38           Mx
    SBC $0846                       ; $828E41  ED 46 08     Mx
    BPL L_828E4D                    ; $828E44  10 07        Mx
    EOR #$FFFF                      ; $828E46  49 FF FF     Mx
    CLC                             ; $828E49  18           Mx
    ADC #$0001                      ; $828E4A  69 01 00     Mx
L_828E4D:
    CMP #$0040                      ; $828E4D  C9 40 00     Mx
    BCC L_828E5F                    ; $828E50  90 0D        Mx
    SEC                             ; $828E52  38           Mx
    SBC #$0080                      ; $828E53  E9 80 00     Mx
    BPL L_828E5F                    ; $828E56  10 07        Mx
    EOR #$FFFF                      ; $828E58  49 FF FF     Mx
    CLC                             ; $828E5B  18           Mx
    ADC #$0001                      ; $828E5C  69 01 00     Mx
L_828E5F:
    CMP #$0020                      ; $828E5F  C9 20 00     Mx
    BCS L_828E13                    ; $828E62  B0 AF        Mx
L_828E64:
    LDA $0C25                       ; $828E64  AD 25 0C     Mx
    CMP #$07D8                      ; $828E67  C9 D8 07     Mx
    BNE L_828E6F                    ; $828E6A  D0 03        Mx
    JMP L_8290F8                    ; $828E6C  4C F8 90     Mx
L_828E6F:
    LDA $09B0                       ; $828E6F  AD B0 09     Mx
    ORA $08C8                       ; $828E72  0D C8 08     Mx
    AND #$0004                      ; $828E75  29 04 00     Mx
    BNE L_828E7D                    ; $828E78  D0 03        Mx
    JMP L_8290AB                    ; $828E7A  4C AB 90     Mx
L_828E7D:
    LDA $0C19                       ; $828E7D  AD 19 0C     Mx
    BNE L_828E85                    ; $828E80  D0 03        Mx
    JMP L_8290ED                    ; $828E82  4C ED 90     Mx
L_828E85:
    LDA $1D56                       ; $828E85  AD 56 1D     Mx
    AND $0003                       ; $828E88  2D 03 00     Mx
    BEQ L_828E90                    ; $828E8B  F0 03        Mx
    JMP L_829807                    ; $828E8D  4C 07 98     Mx
L_828E90:
    LDY #$32                        ; $828E90  A0 32        Mx
    LDA ($CC),Y                     ; $828E92  B1 CC        Mx
    CMP $080A                       ; $828E94  CD 0A 08     Mx
    BCC L_828E9C                    ; $828E97  90 03        Mx
    JMP L_8290AB                    ; $828E99  4C AB 90     Mx
L_828E9C:
    LDY #$06                        ; $828E9C  A0 06        Mx
    LDA ($CC),Y                     ; $828E9E  B1 CC        Mx
    BNE L_828EA5                    ; $828EA0  D0 03        Mx
    JMP L_8290AB                    ; $828EA2  4C AB 90     Mx
L_828EA5:
    LDA $0006                       ; $828EA5  AD 06 00     Mx
    AND #$000F                      ; $828EA8  29 0F 00     Mx
    BNE L_828EC5                    ; $828EAB  D0 18        Mx
    LDA #$0014                      ; $828EAD  A9 14 00     Mx
    STA $0C3D                       ; $828EB0  8D 3D 0C     Mx
    LDA $1611                       ; $828EB3  AD 11 16     Mx
    BNE L_828EC5                    ; $828EB6  D0 0D        Mx
    LDA #$0011                      ; $828EB8  A9 11 00     Mx
    JSL L_BDFDF3                    ; $828EBB  22 F3 FD BD  Mx
    LDA #$0064                      ; $828EBF  A9 64 00     Mx
    STA $1611                       ; $828EC2  8D 11 16     Mx
L_828EC5:
    LDA #$0004                      ; $828EC5  A9 04 00     Mx
    LDX $07D8                       ; $828EC8  AE D8 07     Mx
    CPX $0A96                       ; $828ECB  EC 96 0A     Mx
    BNE L_828ED3                    ; $828ECE  D0 03        Mx
    LDA #$000A                      ; $828ED0  A9 0A 00     Mx
L_828ED3:
    LDX $07D9                       ; $828ED3  AE D9 07     Mx
    BNE L_828EDB                    ; $828ED6  D0 03        Mx
    LDA #$0004                      ; $828ED8  A9 04 00     Mx
L_828EDB:
    STA $00D0                       ; $828EDB  8D D0 00     Mx
    LDA $08B2                       ; $828EDE  AD B2 08     Mx
    BMI L_828EF2                    ; $828EE1  30 0F        Mx
    CMP #$0064                      ; $828EE3  C9 64 00     Mx
    BCC L_828EEB                    ; $828EE6  90 03        Mx
    LDA #$0064                      ; $828EE8  A9 64 00     Mx
L_828EEB:
    CLC                             ; $828EEB  18           Mx
    ADC $00D0                       ; $828EEC  6D D0 00     Mx
    STA $00D0                       ; $828EEF  8D D0 00     Mx
L_828EF2:
    LDA #$0064                      ; $828EF2  A9 64 00     Mx
    STA $00D3                       ; $828EF5  8D D3 00     Mx
    LDA $1D56                       ; $828EF8  AD 56 1D     Mx
    STA $00BA                       ; $828EFB  8D BA 00     Mx
    INC $00D3                       ; $828EFE  EE D3 00     Mx
    SEP #$20                        ; $828F01  E2 20        Mx
    LDA $00D3                       ; $828F03  AD D3 00     mx
    STA $4202                       ; $828F06  8D 02 42     mx
    LDA $00BA                       ; $828F09  AD BA 00     mx
    STA $4203                       ; $828F0C  8D 03 42     mx
    NOP                             ; $828F0F  EA           mx
    NOP                             ; $828F10  EA           mx
    NOP                             ; $828F11  EA           mx
    REP #$20                        ; $828F12  C2 20        mx
    LDA $4216                       ; $828F14  AD 16 42     Mx
    STA $00BA                       ; $828F17  8D BA 00     Mx
    LDA $00BB                       ; $828F1A  AD BB 00     Mx
    AND #$00FF                      ; $828F1D  29 FF 00     Mx
    INC                             ; $828F20  1A           Mx
    CMP $00D0                       ; $828F21  CD D0 00     Mx
    BCC L_828F29                    ; $828F24  90 03        Mx
    JMP L_8290AB                    ; $828F26  4C AB 90     Mx
L_828F29:
    LDA #$0087                      ; $828F29  A9 87 00     Mx
    STA $089A                       ; $828F2C  8D 9A 08     Mx
    LDA $07DC                       ; $828F2F  AD DC 07     Mx
    CMP #$0024                      ; $828F32  C9 24 00     Mx
    BEQ L_828F91                    ; $828F35  F0 5A        Mx
    LDA $1D58                       ; $828F37  AD 58 1D     Mx
    CMP #$3333                      ; $828F3A  C9 33 33     Mx
    BCC L_828F91                    ; $828F3D  90 52        Mx
    LDY #$3E                        ; $828F3F  A0 3E        Mx
    LDA ($CC),Y                     ; $828F41  B1 CC        Mx
    BMI L_828F91                    ; $828F43  30 4C        Mx
L_828F45:
    LDA $07DC                       ; $828F45  AD DC 07     Mx
    CMP #$0024                      ; $828F48  C9 24 00     Mx
    BNE L_828F50                    ; $828F4B  D0 03        Mx
    JMP L_828F99                    ; $828F4D  4C 99 8F     Mx
L_828F50:
    LDA $0B50                       ; $828F50  AD 50 0B     Mx
    BNE L_828F85                    ; $828F53  D0 30        Mx
    LDA $0BF9                       ; $828F55  AD F9 0B     Mx
    BNE L_828F85                    ; $828F58  D0 2B        Mx
    LDA $0C25                       ; $828F5A  AD 25 0C     Mx
    BNE L_828F74                    ; $828F5D  D0 15        Mx
    LDA $0BC1                       ; $828F5F  AD C1 0B     Mx
    CMP #$0001                      ; $828F62  C9 01 00     Mx
    BNE L_828F6C                    ; $828F65  D0 05        Mx
    LDA $0C2B                       ; $828F67  AD 2B 0C     Mx
    BMI L_828F85                    ; $828F6A  30 19        Mx
L_828F6C:
    LDA $07DC                       ; $828F6C  AD DC 07     Mx
    CMP #$0032                      ; $828F6F  C9 32 00     Mx
    BEQ L_828F85                    ; $828F72  F0 11        Mx
L_828F74:
    LDA $1615                       ; $828F74  AD 15 16     Mx
    BNE L_828F85                    ; $828F77  D0 0C        Mx
    LDA $07EA                       ; $828F79  AD EA 07     Mx
    BNE L_828F85                    ; $828F7C  D0 07        Mx
    LDA #$000A                      ; $828F7E  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $828F81  22 D5 BB 9A  Mx
L_828F85:
    LDA #$0002                      ; $828F85  A9 02 00     Mx
    STA $0BC1                       ; $828F88  8D C1 0B     Mx
    STZ $0C2B                       ; $828F8B  9C 2B 0C     Mx
    JMP L_8295C1                    ; $828F8E  4C C1 95     Mx
L_828F91:
    LDA $1D58                       ; $828F91  AD 58 1D     Mx
    CMP #$3333                      ; $828F94  C9 33 33     Mx
    BCC L_828F45                    ; $828F97  90 AC        Mx
L_828F99:
    LDA $07EA                       ; $828F99  AD EA 07     Mx
    BNE L_828FC2                    ; $828F9C  D0 24        Mx
    LDA $0B50                       ; $828F9E  AD 50 0B     Mx
    BNE L_828FC2                    ; $828FA1  D0 1F        Mx
    LDA $0CD3                       ; $828FA3  AD D3 0C     Mx
    BNE L_828FC2                    ; $828FA6  D0 1A        Mx
    LDA $0C19                       ; $828FA8  AD 19 0C     Mx
    BEQ L_828FC2                    ; $828FAB  F0 15        Mx
    LDA $0BF9                       ; $828FAD  AD F9 0B     Mx
    BNE L_828FC2                    ; $828FB0  D0 10        Mx
    LDY #$06                        ; $828FB2  A0 06        Mx
    LDA ($CC),Y                     ; $828FB4  B1 CC        Mx
    CMP #$0006                      ; $828FB6  C9 06 00     Mx
    BCC L_828FC2                    ; $828FB9  90 07        Mx
    LDA #$0010                      ; $828FBB  A9 10 00     Mx
    JSL L_9ABBD5                    ; $828FBE  22 D5 BB 9A  Mx
L_828FC2:
    LDY #$88                        ; $828FC2  A0 88        Mx
    LDA #$000F                      ; $828FC4  A9 0F 00     Mx
    STA ($CC),Y                     ; $828FC7  91 CC        Mx
    LDY #$8A                        ; $828FC9  A0 8A        Mx
    STA ($CC),Y                     ; $828FCB  91 CC        Mx
    LDA #$000F                      ; $828FCD  A9 0F 00     Mx
    STA $0860                       ; $828FD0  8D 60 08     Mx
    LDA #$000F                      ; $828FD3  A9 0F 00     Mx
    STA $0862                       ; $828FD6  8D 62 08     Mx
    REP #$10                        ; $828FD9  C2 10        Mx
    LDY #$0066                      ; $828FDB  A0 66 00     MX
    LDA ($CC),Y                     ; $828FDE  B1 CC        MX
    AND #$007F                      ; $828FE0  29 7F 00     MX
    PHA                             ; $828FE3  48           MX
    LDA $0C19                       ; $828FE4  AD 19 0C     MX
    BEQ L_829050                    ; $828FE7  F0 67        MX
    LDA $0BD9                       ; $828FE9  AD D9 0B     MX
    CLC                             ; $828FEC  18           MX
    ADC $0BEF                       ; $828FED  6D EF 0B     MX
    LDY #$0054                      ; $828FF0  A0 54 00     MX
    SEC                             ; $828FF3  38           MX
    SBC ($CC),Y                     ; $828FF4  F1 CC        MX
    BPL L_829002                    ; $828FF6  10 0A        MX
    CMP #$FEF4                      ; $828FF8  C9 F4 FE     MX
    BCS L_82900A                    ; $828FFB  B0 0D        MX
    LDA #$FEF4                      ; $828FFD  A9 F4 FE     MX
    BRA L_82900A                    ; $829000  80 08        MX
L_829002:
    CMP #$010C                      ; $829002  C9 0C 01     MX
    BCC L_82900A                    ; $829005  90 03        MX
    LDA #$010C                      ; $829007  A9 0C 01     MX
L_82900A:
    STA $0BD9                       ; $82900A  8D D9 0B     MX
    LDA $0BDD                       ; $82900D  AD DD 0B     MX
    CLC                             ; $829010  18           MX
    ADC $0BF1                       ; $829011  6D F1 0B     MX
    STA $0BDD                       ; $829014  8D DD 0B     MX
    LDA $0BF3                       ; $829017  AD F3 0B     MX
    CMP #$0310                      ; $82901A  C9 10 03     MX
    BCC L_829029                    ; $82901D  90 0A        MX
    CMP #$03F0                      ; $82901F  C9 F0 03     MX
    BCC L_82902C                    ; $829022  90 08        MX
    LDA #$03F0                      ; $829024  A9 F0 03     MX
    BRA L_82902C                    ; $829027  80 03        MX
L_829029:
    LDA #$0310                      ; $829029  A9 10 03     MX
L_82902C:
    STA $0BE1                       ; $82902C  8D E1 0B     MX
    STA $0BF3                       ; $82902F  8D F3 0B     MX
    STZ $0C19                       ; $829032  9C 19 0C     MX
    STZ $00CC                       ; $829035  9C CC 00     MX
    STZ $0C2B                       ; $829038  9C 2B 0C     MX
    STZ $0BEF                       ; $82903B  9C EF 0B     MX
    STZ $0BF1                       ; $82903E  9C F1 0B     MX
    STZ $0C11                       ; $829041  9C 11 0C     MX
    LDA #$0002                      ; $829044  A9 02 00     MX
    STA $0BBF                       ; $829047  8D BF 0B     MX
    LDA #$0002                      ; $82904A  A9 02 00     MX
    STA $0BC1                       ; $82904D  8D C1 0B     MX
L_829050:
    PLA                             ; $829050  68           MX
    ASL                             ; $829051  0A           MX
    TAX                             ; $829052  AA           MX
    LDY #$0000                      ; $829053  A0 00 00     MX
    STZ $0BED                       ; $829056  9C ED 0B     MX
    LDA $9AABEB,X                   ; $829059  BF EB AB 9A  MX
    BPL L_829062                    ; $82905D  10 03        MX
    DEC $0BED                       ; $82905F  CE ED 0B     MX
L_829062:
    ASL                             ; $829062  0A           MX
    ROL $0BED                       ; $829063  2E ED 0B     MX
    ASL                             ; $829066  0A           MX
    ROL $0BED                       ; $829067  2E ED 0B     MX
    ASL                             ; $82906A  0A           MX
    ROL $0BED                       ; $82906B  2E ED 0B     MX
    ASL                             ; $82906E  0A           MX
    ROL $0BED                       ; $82906F  2E ED 0B     MX
    STA $0BEB                       ; $829072  8D EB 0B     MX
    LDY #$0000                      ; $829075  A0 00 00     MX
    STZ $0BE5                       ; $829078  9C E5 0B     MX
    LDA $9AABAB,X                   ; $82907B  BF AB AB 9A  MX
    BPL L_829084                    ; $82907F  10 03        MX
    DEC $0BE5                       ; $829081  CE E5 0B     MX
L_829084:
    ASL                             ; $829084  0A           MX
    ROL $0BE5                       ; $829085  2E E5 0B     MX
    ASL                             ; $829088  0A           MX
    ROL $0BE5                       ; $829089  2E E5 0B     MX
    ASL                             ; $82908C  0A           MX
    ROL $0BE5                       ; $82908D  2E E5 0B     MX
    ASL                             ; $829090  0A           MX
    ROL $0BE5                       ; $829091  2E E5 0B     MX
    STA $0BE3                       ; $829094  8D E3 0B     MX
    LDA #$FFFC                      ; $829097  A9 FC FF     MX
    STA $0BE9                       ; $82909A  8D E9 0B     MX
    LDA #$F700                      ; $82909D  A9 00 F7     MX
    STA $0BE7                       ; $8290A0  8D E7 0B     MX
    SEP #$10                        ; $8290A3  E2 10        MX
    JMP L_8290CC                    ; $8290A5  4C CC 90     Mx
L_8290A8:
    JMP L_8295B9                    ; $8290A8  4C B9 95     Mx
L_8290AB:
    LDA $0C19                       ; $8290AB  AD 19 0C     Mx
    BEQ L_8290ED                    ; $8290AE  F0 3D        Mx
    LDY #$32                        ; $8290B0  A0 32        Mx
    LDA ($CC),Y                     ; $8290B2  B1 CC        Mx
    BEQ L_8290E1                    ; $8290B4  F0 2B        Mx
    LDY #$08                        ; $8290B6  A0 08        Mx
    LDA ($CC),Y                     ; $8290B8  B1 CC        Mx
    AND #$0004                      ; $8290BA  29 04 00     Mx
    BEQ L_8290E1                    ; $8290BD  F0 22        Mx
    LDA $080A                       ; $8290BF  AD 0A 08     Mx
    BEQ L_8290E1                    ; $8290C2  F0 1D        Mx
    LDA $1D56                       ; $8290C4  AD 56 1D     Mx
    AND #$0007                      ; $8290C7  29 07 00     Mx
    BNE L_8290DE                    ; $8290CA  D0 12        Mx
L_8290CC:
    LDA #$0002                      ; $8290CC  A9 02 00     Mx
    STA $086C                       ; $8290CF  8D 6C 08     Mx
    STZ $07DE                       ; $8290D2  9C DE 07     Mx
    LDA #$0030                      ; $8290D5  A9 30 00     Mx
    STA $07DC                       ; $8290D8  8D DC 07     Mx
    STA $07DA                       ; $8290DB  8D DA 07     Mx
L_8290DE:
    JMP L_828E13                    ; $8290DE  4C 13 8E     Mx
L_8290E1:
    LDA $07DC                       ; $8290E1  AD DC 07     Mx
    CMP #$002C                      ; $8290E4  C9 2C 00     Mx
    BEQ L_8290F8                    ; $8290E7  F0 0F        Mx
    BRA L_8290F5                    ; $8290E9  80 0A        Mx
L_8290EB:
    BRA L_8290F8                    ; $8290EB  80 0B        Mx
L_8290ED:
    LDA $1D56                       ; $8290ED  AD 56 1D     Mx
    AND #$0003                      ; $8290F0  29 03 00     Mx
    BEQ L_8290F8                    ; $8290F3  F0 03        Mx
L_8290F5:
    JMP L_829807                    ; $8290F5  4C 07 98     Mx
L_8290F8:
    LDA $0C19                       ; $8290F8  AD 19 0C     Mx
    BEQ L_829100                    ; $8290FB  F0 03        Mx
L_8290FD:
    JMP L_829174                    ; $8290FD  4C 74 91     Mx
L_829100:
    LDA $1607                       ; $829100  AD 07 16     Mx
    BNE L_8290FD                    ; $829103  D0 F8        Mx
    LDA $08BE                       ; $829105  AD BE 08     Mx
    AND #$0002                      ; $829108  29 02 00     Mx
    BNE L_8290FD                    ; $82910B  D0 F0        Mx
    LDA $0C2B                       ; $82910D  AD 2B 0C     Mx
    BMI L_829174                    ; $829110  30 62        Mx
    LDA $0840                       ; $829112  AD 40 08     Mx
    CMP #$0046                      ; $829115  C9 46 00     Mx
    BCS L_829174                    ; $829118  B0 5A        Mx
    LDA $0BC1                       ; $82911A  AD C1 0B     Mx
    CMP #$0001                      ; $82911D  C9 01 00     Mx
    BNE L_829174                    ; $829120  D0 52        Mx
    LDA $0C1F                       ; $829122  AD 1F 0C     Mx
    AND #$00FF                      ; $829125  29 FF 00     Mx
    CMP #$0003                      ; $829128  C9 03 00     Mx
    BCC L_829171                    ; $82912B  90 44        Mx
    LDA $0BE8                       ; $82912D  AD E8 0B     Mx
    LSR                             ; $829130  4A           Mx
    LSR                             ; $829131  4A           Mx
    LSR                             ; $829132  4A           Mx
    LSR                             ; $829133  4A           Mx
    LSR                             ; $829134  4A           Mx
    LSR                             ; $829135  4A           Mx
    BEQ L_829174                    ; $829136  F0 3C        Mx
    BMI L_829174                    ; $829138  30 3A        Mx
    LDX $0A96                       ; $82913A  AE 96 0A     Mx
    CPX $07D8                       ; $82913D  EC D8 07     Mx
    BEQ L_829174                    ; $829140  F0 32        Mx
    LDA $08B2                       ; $829142  AD B2 08     Mx
    SEC                             ; $829145  38           Mx
    SBC #$0005                      ; $829146  E9 05 00     Mx
    BMI L_829155                    ; $829149  30 0A        Mx
    LDA $0BE8                       ; $82914B  AD E8 0B     Mx
    CMP #$0380                      ; $82914E  C9 80 03     Mx
    BMI L_829174                    ; $829151  30 21        Mx
    BRA L_82915D                    ; $829153  80 08        Mx
L_829155:
    LDA $0BE8                       ; $829155  AD E8 0B     Mx
    CMP #$0280                      ; $829158  C9 80 02     Mx
    BMI L_829174                    ; $82915B  30 17        Mx
L_82915D:
    LDA $0006                       ; $82915D  AD 06 00     Mx
    AND #$0004                      ; $829160  29 04 00     Mx
    BNE L_829171                    ; $829163  D0 0C        Mx
    LDX $07D8                       ; $829165  AE D8 07     Mx
    STX $0A98                       ; $829168  8E 98 0A     Mx
    JSL L_A7EBCB                    ; $82916B  22 CB EB A7  Mx
    BRA L_829174                    ; $82916F  80 03        Mx
L_829171:
    JMP L_829807                    ; $829171  4C 07 98     Mx
L_829174:
    LDA $07DC                       ; $829174  AD DC 07     Mx
    CMP #$0024                      ; $829177  C9 24 00     Mx
    BEQ L_829184                    ; $82917A  F0 08        Mx
    CMP #$0020                      ; $82917C  C9 20 00     Mx
    BEQ L_8291B0                    ; $82917F  F0 2F        Mx
    JMP L_82923B                    ; $829181  4C 3B 92     Mx
L_829184:
    LDA #$FFFC                      ; $829184  A9 FC FF     Mx
    STA $0BE9                       ; $829187  8D E9 0B     Mx
    LDA #$F700                      ; $82918A  A9 00 F7     Mx
    STA $0BE7                       ; $82918D  8D E7 0B     Mx
    LDA $07EA                       ; $829190  AD EA 07     Mx
    BNE L_8291AD                    ; $829193  D0 18        Mx
    LDA $0B50                       ; $829195  AD 50 0B     Mx
    BNE L_8291AD                    ; $829198  D0 13        Mx
    LDA $0BF9                       ; $82919A  AD F9 0B     Mx
    BNE L_8291AD                    ; $82919D  D0 0E        Mx
    LDA #$0010                      ; $82919F  A9 10 00     Mx
    JSL L_9ABBD5                    ; $8291A2  22 D5 BB 9A  Mx
    LDA #$0003                      ; $8291A6  A9 03 00     Mx
    JSL L_BDFDF3                    ; $8291A9  22 F3 FD BD  Mx
L_8291AD:
    JMP L_8291FE                    ; $8291AD  4C FE 91     Mx
L_8291B0:
    LDA $0C19                       ; $8291B0  AD 19 0C     Mx
    BEQ L_8291B8                    ; $8291B3  F0 03        Mx
    JMP L_829807                    ; $8291B5  4C 07 98     Mx
L_8291B8:
    LDA #$FFFD                      ; $8291B8  A9 FD FF     Mx
    STA $0BE9                       ; $8291BB  8D E9 0B     Mx
    LDA #$6600                      ; $8291BE  A9 00 66     Mx
    STA $0BE7                       ; $8291C1  8D E7 0B     Mx
    LDA $0B50                       ; $8291C4  AD 50 0B     Mx
    BNE L_8291FE                    ; $8291C7  D0 35        Mx
    LDA $0BF9                       ; $8291C9  AD F9 0B     Mx
    BNE L_8291FE                    ; $8291CC  D0 30        Mx
    LDA $1615                       ; $8291CE  AD 15 16     Mx
    BNE L_8291FE                    ; $8291D1  D0 2B        Mx
    LDA $0C19                       ; $8291D3  AD 19 0C     Mx
    BNE L_8291FE                    ; $8291D6  D0 26        Mx
    LDA $07EA                       ; $8291D8  AD EA 07     Mx
    BNE L_8291FE                    ; $8291DB  D0 21        Mx
    LDA $0C25                       ; $8291DD  AD 25 0C     Mx
    BNE L_8291F7                    ; $8291E0  D0 15        Mx
    LDA $0BC1                       ; $8291E2  AD C1 0B     Mx
    CMP #$0001                      ; $8291E5  C9 01 00     Mx
    BNE L_8291EF                    ; $8291E8  D0 05        Mx
    LDA $0C2B                       ; $8291EA  AD 2B 0C     Mx
    BMI L_8291FE                    ; $8291ED  30 0F        Mx
L_8291EF:
    LDA $07DC                       ; $8291EF  AD DC 07     Mx
    CMP #$0032                      ; $8291F2  C9 32 00     Mx
    BEQ L_8291FE                    ; $8291F5  F0 07        Mx
L_8291F7:
    LDA #$000A                      ; $8291F7  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $8291FA  22 D5 BB 9A  Mx
L_8291FE:
    LDA $07F0                       ; $8291FE  AD F0 07     Mx
    ASL                             ; $829201  0A           Mx
    ASL                             ; $829202  0A           Mx
    TAX                             ; $829203  AA           Mx
    LDA $A7E489,X                   ; $829204  BF 89 E4 A7  Mx
    STA $0BE5                       ; $829208  8D E5 0B     Mx
    STZ $0BE3                       ; $82920B  9C E3 0B     Mx
    LDA $A7E48B,X                   ; $82920E  BF 8B E4 A7  Mx
    STA $0BED                       ; $829212  8D ED 0B     Mx
    STZ $0BEB                       ; $829215  9C EB 0B     Mx
    LDA #$0002                      ; $829218  A9 02 00     Mx
    STA $0BC1                       ; $82921B  8D C1 0B     Mx
    STZ $0C2B                       ; $82921E  9C 2B 0C     Mx
    LDA $0A98                       ; $829221  AD 98 0A     Mx
    BNE L_829232                    ; $829224  D0 0C        Mx
    LDA $07D8                       ; $829226  AD D8 07     Mx
    DEC                             ; $829229  3A           Mx
    AND #$0003                      ; $82922A  29 03 00     Mx
    ASL                             ; $82922D  0A           Mx
    TAX                             ; $82922E  AA           Mx
    INC $1CB9,X                     ; $82922F  FE B9 1C     Mx
L_829232:
    LDA #$0019                      ; $829232  A9 19 00     Mx
    STA $0862                       ; $829235  8D 62 08     Mx
    JMP L_829763                    ; $829238  4C 63 97     Mx
L_82923B:
    CMP #$002C                      ; $82923B  C9 2C 00     Mx
    BEQ L_829243                    ; $82923E  F0 03        Mx
    JMP L_829374                    ; $829240  4C 74 93     Mx
L_829243:
    LDA #$00B9                      ; $829243  A9 B9 00     Mx
    STA $00D0                       ; $829246  8D D0 00     Mx
    LDA $1D57                       ; $829249  AD 57 1D     Mx
    STA $00BA                       ; $82924C  8D BA 00     Mx
    INC $00D0                       ; $82924F  EE D0 00     Mx
    SEP #$20                        ; $829252  E2 20        Mx
    LDA $00D0                       ; $829254  AD D0 00     mx
    STA $4202                       ; $829257  8D 02 42     mx
    LDA $00BA                       ; $82925A  AD BA 00     mx
    STA $4203                       ; $82925D  8D 03 42     mx
    NOP                             ; $829260  EA           mx
    NOP                             ; $829261  EA           mx
    NOP                             ; $829262  EA           mx
    REP #$20                        ; $829263  C2 20        mx
    LDA $4216                       ; $829265  AD 16 42     Mx
    STA $00BA                       ; $829268  8D BA 00     Mx
    LDA $00BB                       ; $82926B  AD BB 00     Mx
    AND #$00FF                      ; $82926E  29 FF 00     Mx
    CMP $08A8                       ; $829271  CD A8 08     Mx
    BCC L_829279                    ; $829274  90 03        Mx
    JMP L_829807                    ; $829276  4C 07 98     Mx
L_829279:
    LDA #$0014                      ; $829279  A9 14 00     Mx
    STA $0860                       ; $82927C  8D 60 08     Mx
    LDA $0C19                       ; $82927F  AD 19 0C     Mx
    BNE L_829287                    ; $829282  D0 03        Mx
    JMP L_8292B2                    ; $829284  4C B2 92     Mx
L_829287:
    LDY #$04                        ; $829287  A0 04        Mx
    LDA #$0000                      ; $829289  A9 00 00     Mx
    STA ($CC),Y                     ; $82928C  91 CC        Mx
    LDY #$02                        ; $82928E  A0 02        Mx
    STA ($CC),Y                     ; $829290  91 CC        Mx
    LDY #$8A                        ; $829292  A0 8A        Mx
    LDA #$0032                      ; $829294  A9 32 00     Mx
    STA ($CC),Y                     ; $829297  91 CC        Mx
    LDA $07D8                       ; $829299  AD D8 07     Mx
    DEC                             ; $82929C  3A           Mx
    AND #$0003                      ; $82929D  29 03 00     Mx
    ASL                             ; $8292A0  0A           Mx
    TAX                             ; $8292A1  AA           Mx
    INC $1CB1,X                     ; $8292A2  FE B1 1C     Mx
    LDA $0C3F                       ; $8292A5  AD 3F 0C     Mx
    BNE L_8292B2                    ; $8292A8  D0 08        Mx
    LDA $1D57                       ; $8292AA  AD 57 1D     Mx
    CMP #$2E14                      ; $8292AD  C9 14 2E     Mx
    BCS L_8292D0                    ; $8292B0  B0 1E        Mx
L_8292B2:
    LDA #$000C                      ; $8292B2  A9 0C 00     Mx
    STA $07DC                       ; $8292B5  8D DC 07     Mx
    LDA #$FFFF                      ; $8292B8  A9 FF FF     Mx
    STA $07E2                       ; $8292BB  8D E2 07     Mx
    STZ $07E4                       ; $8292BE  9C E4 07     Mx
    STZ $082A                       ; $8292C1  9C 2A 08     Mx
    STZ $07E0                       ; $8292C4  9C E0 07     Mx
    LDA #$FFF8                      ; $8292C7  A9 F8 FF     Mx
    STA $07E6                       ; $8292CA  8D E6 07     Mx
    JMP L_8293E1                    ; $8292CD  4C E1 93     Mx
L_8292D0:
    LDA #$012C                      ; $8292D0  A9 2C 01     Mx
    STA $0C3F                       ; $8292D3  8D 3F 0C     Mx
    LDA #$0019                      ; $8292D6  A9 19 00     Mx
    STA $0862                       ; $8292D9  8D 62 08     Mx
    LDA #$001E                      ; $8292DC  A9 1E 00     Mx
    STA $0BF1                       ; $8292DF  8D F1 0B     Mx
    LDA $0C19                       ; $8292E2  AD 19 0C     Mx
    BEQ L_82934D                    ; $8292E5  F0 66        Mx
    LDA $0BD9                       ; $8292E7  AD D9 0B     Mx
    CLC                             ; $8292EA  18           Mx
    ADC $0BEF                       ; $8292EB  6D EF 0B     Mx
    LDY #$54                        ; $8292EE  A0 54        Mx
    SEC                             ; $8292F0  38           Mx
    SBC ($CC),Y                     ; $8292F1  F1 CC        Mx
    BPL L_8292FF                    ; $8292F3  10 0A        Mx
    CMP #$FEF4                      ; $8292F5  C9 F4 FE     Mx
    BCS L_829307                    ; $8292F8  B0 0D        Mx
    LDA #$FEF4                      ; $8292FA  A9 F4 FE     Mx
    BRA L_829307                    ; $8292FD  80 08        Mx
L_8292FF:
    CMP #$010C                      ; $8292FF  C9 0C 01     Mx
    BCC L_829307                    ; $829302  90 03        Mx
    LDA #$010C                      ; $829304  A9 0C 01     Mx
L_829307:
    STA $0BD9                       ; $829307  8D D9 0B     Mx
    LDA $0BDD                       ; $82930A  AD DD 0B     Mx
    CLC                             ; $82930D  18           Mx
    ADC $0BF1                       ; $82930E  6D F1 0B     Mx
    STA $0BDD                       ; $829311  8D DD 0B     Mx
    LDA $0BF3                       ; $829314  AD F3 0B     Mx
    CMP #$0310                      ; $829317  C9 10 03     Mx
    BCC L_829326                    ; $82931A  90 0A        Mx
    CMP #$03F0                      ; $82931C  C9 F0 03     Mx
    BCC L_829329                    ; $82931F  90 08        Mx
    LDA #$03F0                      ; $829321  A9 F0 03     Mx
    BRA L_829329                    ; $829324  80 03        Mx
L_829326:
    LDA #$0310                      ; $829326  A9 10 03     Mx
L_829329:
    STA $0BE1                       ; $829329  8D E1 0B     Mx
    STA $0BF3                       ; $82932C  8D F3 0B     Mx
    STZ $0C19                       ; $82932F  9C 19 0C     Mx
    STZ $00CC                       ; $829332  9C CC 00     Mx
    STZ $0C2B                       ; $829335  9C 2B 0C     Mx
    STZ $0BEF                       ; $829338  9C EF 0B     Mx
    STZ $0BF1                       ; $82933B  9C F1 0B     Mx
    STZ $0C11                       ; $82933E  9C 11 0C     Mx
    LDA #$0002                      ; $829341  A9 02 00     Mx
    STA $0BBF                       ; $829344  8D BF 0B     Mx
    LDA #$0002                      ; $829347  A9 02 00     Mx
    STA $0BC1                       ; $82934A  8D C1 0B     Mx
L_82934D:
    LDA $0006                       ; $82934D  AD 06 00     Mx
    AND #$0007                      ; $829350  29 07 00     Mx
    ASL                             ; $829353  0A           Mx
    TAX                             ; $829354  AA           Mx
    LDA $A7E479,X                   ; $829355  BF 79 E4 A7  Mx
    STA $0BE5                       ; $829359  8D E5 0B     Mx
    STZ $0BE3                       ; $82935C  9C E3 0B     Mx
    LDA $1D56                       ; $82935F  AD 56 1D     Mx
    AND #$0007                      ; $829362  29 07 00     Mx
    ASL                             ; $829365  0A           Mx
    TAX                             ; $829366  AA           Mx
    LDA $A7E479,X                   ; $829367  BF 79 E4 A7  Mx
    STA $0BED                       ; $82936B  8D ED 0B     Mx
    STZ $0BEB                       ; $82936E  9C EB 0B     Mx
    JMP L_829763                    ; $829371  4C 63 97     Mx
L_829374:
    LDA $07DC                       ; $829374  AD DC 07     Mx
    CMP #$0002                      ; $829377  C9 02 00     Mx
    BEQ L_829386                    ; $82937A  F0 0A        Mx
    CMP #$0000                      ; $82937C  C9 00 00     Mx
    BEQ L_829386                    ; $82937F  F0 05        Mx
    CMP #$0014                      ; $829381  C9 14 00     Mx
    BNE L_8293E1                    ; $829384  D0 5B        Mx
L_829386:
    LDA $080A                       ; $829386  AD 0A 08     Mx
    BNE L_8293E1                    ; $829389  D0 56        Mx
    LDA $0BDD                       ; $82938B  AD DD 0B     Mx
    BNE L_8293E1                    ; $82938E  D0 51        Mx
    LDA $0BE9                       ; $829390  AD E9 0B     Mx
    ORA $0BE7                       ; $829393  0D E7 0B     Mx
    BNE L_8293E1                    ; $829396  D0 49        Mx
    LDA $0816                       ; $829398  AD 16 08     Mx
    ORA $0814                       ; $82939B  0D 14 08     Mx
    BNE L_8293E1                    ; $82939E  D0 41        Mx
    LDA #$0032                      ; $8293A0  A9 32 00     Mx
    STA $07DC                       ; $8293A3  8D DC 07     Mx
    LDA #$FFFF                      ; $8293A6  A9 FF FF     Mx
    STA $07E2                       ; $8293A9  8D E2 07     Mx
    STZ $07E4                       ; $8293AC  9C E4 07     Mx
    STZ $082A                       ; $8293AF  9C 2A 08     Mx
    STZ $07E0                       ; $8293B2  9C E0 07     Mx
    LDA #$FFF8                      ; $8293B5  A9 F8 FF     Mx
    STA $07E6                       ; $8293B8  8D E6 07     Mx
    STZ $0BE5                       ; $8293BB  9C E5 0B     Mx
    STZ $0BE3                       ; $8293BE  9C E3 0B     Mx
    STZ $0BEB                       ; $8293C1  9C EB 0B     Mx
    STZ $0BED                       ; $8293C4  9C ED 0B     Mx
    STZ $0812                       ; $8293C7  9C 12 08     Mx
    STZ $0810                       ; $8293CA  9C 10 08     Mx
    STZ $081A                       ; $8293CD  9C 1A 08     Mx
    STZ $0818                       ; $8293D0  9C 18 08     Mx
L_8293D3:
    JMP L_829807                    ; $8293D3  4C 07 98     Mx
L_8293D6:
    LDA $07E2                       ; $8293D6  AD E2 07     Mx
    CMP #$0002                      ; $8293D9  C9 02 00     Mx
    BNE L_8293D3                    ; $8293DC  D0 F5        Mx
    JMP L_8295B9                    ; $8293DE  4C B9 95     Mx
L_8293E1:
    LDA $0C25                       ; $8293E1  AD 25 0C     Mx
    BNE L_8293E9                    ; $8293E4  D0 03        Mx
    JMP L_829593                    ; $8293E6  4C 93 95     Mx
L_8293E9:
    CMP #$07D8                      ; $8293E9  C9 D8 07     Mx
    BNE L_8293F1                    ; $8293EC  D0 03        Mx
    JMP L_829593                    ; $8293EE  4C 93 95     Mx
L_8293F1:
    LDA #$00A0                      ; $8293F1  A9 A0 00     Mx
    STA $00D0                       ; $8293F4  8D D0 00     Mx
    PHP                             ; $8293F7  08           Mx
    REP #$30                        ; $8293F8  C2 30        Mx
    LDA $4212                       ; $8293FA  AD 12 42     MX
    SEP #$20                        ; $8293FD  E2 20        MX
    CLC                             ; $8293FF  18           mX
    ADC $1D57                       ; $829400  6D 57 1D     mX
    STA $1D57                       ; $829403  8D 57 1D     mX
    REP #$20                        ; $829406  C2 20        mX
    LDA $4212                       ; $829408  AD 12 42     MX
    TAX                             ; $82940B  AA           MX
    SEP #$20                        ; $82940C  E2 20        MX
    EOR $1D58                       ; $82940E  4D 58 1D     mX
    STA $1D58                       ; $829411  8D 58 1D     mX
    TXA                             ; $829414  8A           mX
    ADC $1D59                       ; $829415  6D 59 1D     mX
    REP #$20                        ; $829418  C2 20        mX
    LDA $1D56                       ; $82941A  AD 56 1D     MX
    INC                             ; $82941D  1A           MX
    ROR                             ; $82941E  6A           MX
    LSR $1D58                       ; $82941F  4E 58 1D     MX
    EOR #$2B41                      ; $829422  49 41 2B     MX
    SBC #$000F                      ; $829425  E9 0F 00     MX
    STA $1D56                       ; $829428  8D 56 1D     MX
    LDA $1D58                       ; $82942B  AD 58 1D     MX
    EOR #$1D87                      ; $82942E  49 87 1D     MX
    STA $1D58                       ; $829431  8D 58 1D     MX
    LDA $1D52                       ; $829434  AD 52 1D     MX
    EOR $1D56                       ; $829437  4D 56 1D     MX
    STA $0002                       ; $82943A  8D 02 00     MX
    INC                             ; $82943D  1A           MX
    STA $1D52                       ; $82943E  8D 52 1D     MX
    LDA $1D54                       ; $829441  AD 54 1D     MX
    EOR $1D58                       ; $829444  4D 58 1D     MX
    ADC #$0000                      ; $829447  69 00 00     MX
    STA $1D52                       ; $82944A  8D 52 1D     MX
    STA $0004                       ; $82944D  8D 04 00     MX
    PLP                             ; $829450  28           MX
    INC $00D0                       ; $829451  EE D0 00     Mx
    LDA $1D56                       ; $829454  AD 56 1D     Mx
    STA $00BA                       ; $829457  8D BA 00     Mx
    SEP #$20                        ; $82945A  E2 20        Mx
    LDA $00D0                       ; $82945C  AD D0 00     mx
    STA $4202                       ; $82945F  8D 02 42     mx
    LDA $00BA                       ; $829462  AD BA 00     mx
    STA $4203                       ; $829465  8D 03 42     mx
    NOP                             ; $829468  EA           mx
    NOP                             ; $829469  EA           mx
    NOP                             ; $82946A  EA           mx
    REP #$20                        ; $82946B  C2 20        mx
    LDA $4216                       ; $82946D  AD 16 42     Mx
    STA $00BA                       ; $829470  8D BA 00     Mx
    LDA $00BB                       ; $829473  AD BB 00     Mx
    AND #$00FF                      ; $829476  29 FF 00     Mx
    STA $00D0                       ; $829479  8D D0 00     Mx
    LDA $08BE                       ; $82947C  AD BE 08     Mx
    AND #$0001                      ; $82947F  29 01 00     Mx
    BEQ L_829487                    ; $829482  F0 03        Mx
    STZ $00D0                       ; $829484  9C D0 00     Mx
L_829487:
    STZ $00B7                       ; $829487  9C B7 00     Mx
    LDA $08B2                       ; $82948A  AD B2 08     Mx
    BMI L_82949F                    ; $82948D  30 10        Mx
    CMP #$0010                      ; $82948F  C9 10 00     Mx
    BCC L_829497                    ; $829492  90 03        Mx
    LDA #$000F                      ; $829494  A9 0F 00     Mx
L_829497:
    ASL                             ; $829497  0A           Mx
    TAX                             ; $829498  AA           Mx
    LDA $9599,X                     ; $829499  BD 99 95     Mx
    STA $00B7                       ; $82949C  8D B7 00     Mx
L_82949F:
    LDA $0C27                       ; $82949F  AD 27 0C     Mx
    SEC                             ; $8294A2  38           Mx
    SBC #$0003                      ; $8294A3  E9 03 00     Mx
    BPL L_8294AF                    ; $8294A6  10 07        Mx
    EOR #$FFFF                      ; $8294A8  49 FF FF     Mx
    CLC                             ; $8294AB  18           Mx
    ADC #$0001                      ; $8294AC  69 01 00     Mx
L_8294AF:
    LSR                             ; $8294AF  4A           Mx
    CLC                             ; $8294B0  18           Mx
    ADC $00B7                       ; $8294B1  6D B7 00     Mx
    INC                             ; $8294B4  1A           Mx
    CMP $00D0                       ; $8294B5  CD D0 00     Mx
    BCS L_8294BD                    ; $8294B8  B0 03        Mx
    JMP L_829596                    ; $8294BA  4C 96 95     Mx
L_8294BD:
    LDA $1D56                       ; $8294BD  AD 56 1D     Mx
    CMP #$CCCC                      ; $8294C0  C9 CC CC     Mx
    BCC L_8294C8                    ; $8294C3  90 03        Mx
    JMP L_829596                    ; $8294C5  4C 96 95     Mx
L_8294C8:
    JSR L_8297DE                    ; $8294C8  20 DE 97     Mx
    LDA $07D8                       ; $8294CB  AD D8 07     Mx
    DEC                             ; $8294CE  3A           Mx
    AND #$0003                      ; $8294CF  29 03 00     Mx
    ASL                             ; $8294D2  0A           Mx
    TAX                             ; $8294D3  AA           Mx
    INC $1CB1,X                     ; $8294D4  FE B1 1C     Mx
    LDA $0C25                       ; $8294D7  AD 25 0C     Mx
    BNE L_829500                    ; $8294DA  D0 24        Mx
    LDA $0BC1                       ; $8294DC  AD C1 0B     Mx
    CMP #$0001                      ; $8294DF  C9 01 00     Mx
    BNE L_8294E9                    ; $8294E2  D0 05        Mx
    LDA $0C2B                       ; $8294E4  AD 2B 0C     Mx
    BMI L_829516                    ; $8294E7  30 2D        Mx
L_8294E9:
    LDA $07DC                       ; $8294E9  AD DC 07     Mx
    CMP #$0032                      ; $8294EC  C9 32 00     Mx
    BEQ L_829516                    ; $8294EF  F0 25        Mx
    LDA $0B50                       ; $8294F1  AD 50 0B     Mx
    BNE L_829516                    ; $8294F4  D0 20        Mx
    LDA $07EA                       ; $8294F6  AD EA 07     Mx
    BNE L_829516                    ; $8294F9  D0 1B        Mx
    LDA $0BF9                       ; $8294FB  AD F9 0B     Mx
    BNE L_829516                    ; $8294FE  D0 16        Mx
L_829500:
    LDA $1615                       ; $829500  AD 15 16     Mx
    BNE L_829516                    ; $829503  D0 11        Mx
    LDA $0C25                       ; $829505  AD 25 0C     Mx
    BNE L_82950F                    ; $829508  D0 05        Mx
    LDA $0C2B                       ; $82950A  AD 2B 0C     Mx
    BMI L_829516                    ; $82950D  30 07        Mx
L_82950F:
    LDA #$000A                      ; $82950F  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $829512  22 D5 BB 9A  Mx
L_829516:
    LDA $0003                       ; $829516  AD 03 00     Mx
    CMP #$051E                      ; $829519  C9 1E 05     Mx
    BCS L_829588                    ; $82951C  B0 6A        Mx
    JMP L_829596                    ; $82951E  4C 96 95     Mx
L_829521:
    REP #$10                        ; $829521  C2 10        Mx
    LDA $0846                       ; $829523  AD 46 08     MX
    AND #$007F                      ; $829526  29 7F 00     MX
    ASL                             ; $829529  0A           MX
    TAX                             ; $82952A  AA           MX
    LDY #$0000                      ; $82952B  A0 00 00     MX
    STZ $0BE5                       ; $82952E  9C E5 0B     MX
    LDA $9AABEB,X                   ; $829531  BF EB AB 9A  MX
    BPL L_82953A                    ; $829535  10 03        MX
    DEC $0BE5                       ; $829537  CE E5 0B     MX
L_82953A:
    ASL                             ; $82953A  0A           MX
    ROL $0BE5                       ; $82953B  2E E5 0B     MX
    ASL                             ; $82953E  0A           MX
    ROL $0BE5                       ; $82953F  2E E5 0B     MX
    ASL                             ; $829542  0A           MX
    ROL $0BE5                       ; $829543  2E E5 0B     MX
    ASL                             ; $829546  0A           MX
    ROL $0BE5                       ; $829547  2E E5 0B     MX
    ASL                             ; $82954A  0A           MX
    ROL $0BE5                       ; $82954B  2E E5 0B     MX
    STA $0BE3                       ; $82954E  8D E3 0B     MX
    LDY #$0000                      ; $829551  A0 00 00     MX
    STZ $0BED                       ; $829554  9C ED 0B     MX
    LDA $9AABAB,X                   ; $829557  BF AB AB 9A  MX
    BPL L_829560                    ; $82955B  10 03        MX
    DEC $0BED                       ; $82955D  CE ED 0B     MX
L_829560:
    ASL                             ; $829560  0A           MX
    ROL $0BED                       ; $829561  2E ED 0B     MX
    ASL                             ; $829564  0A           MX
    ROL $0BED                       ; $829565  2E ED 0B     MX
    ASL                             ; $829568  0A           MX
    ROL $0BED                       ; $829569  2E ED 0B     MX
    ASL                             ; $82956C  0A           MX
    ROL $0BED                       ; $82956D  2E ED 0B     MX
    ASL                             ; $829570  0A           MX
    ROL $0BED                       ; $829571  2E ED 0B     MX
    STA $0BEB                       ; $829574  8D EB 0B     MX
    LDA #$FFFC                      ; $829577  A9 FC FF     MX
    STA $0BE9                       ; $82957A  8D E9 0B     MX
    LDA #$6300                      ; $82957D  A9 00 63     MX
    STA $0BE7                       ; $829580  8D E7 0B     MX
    SEP #$10                        ; $829583  E2 10        MX
    JMP L_829596                    ; $829585  4C 96 95     Mx
L_829588:
    LDA $07DC                       ; $829588  AD DC 07     Mx
    CMP #$0032                      ; $82958B  C9 32 00     Mx
    BNE L_829593                    ; $82958E  D0 03        Mx
    JSR L_82D182                    ; $829590  20 82 D1     Mx
L_829593:
    JMP L_8295B9                    ; $829593  4C B9 95     Mx
L_829596:
    JMP L_829807                    ; $829596  4C 07 98     Mx
    db $00,$00,$04,$00,$07,$00,$0A,$00,$0C,$00,$0F,$00,$13,$00,$16,$00 ; $829599
    db $19,$00,$1E,$00,$24,$00,$28,$00,$2A,$00,$2D,$00,$2F,$00,$32,$00 ; $8295A9
L_8295B9:
    LDA $0C19                       ; $8295B9  AD 19 0C     Mx
    BEQ L_8295C1                    ; $8295BC  F0 03        Mx
    JMP L_829807                    ; $8295BE  4C 07 98     Mx
L_8295C1:
    STZ $0C25                       ; $8295C1  9C 25 0C     Mx
    STZ $0C27                       ; $8295C4  9C 27 0C     Mx
    STZ $0BFF                       ; $8295C7  9C FF 0B     Mx
    REP #$10                        ; $8295CA  C2 10        Mx
    LDA $07D8                       ; $8295CC  AD D8 07     MX
    AND #$FF00                      ; $8295CF  29 00 FF     MX
    BEQ L_8295D7                    ; $8295D2  F0 03        MX
    JMP L_8296A9                    ; $8295D4  4C A9 96     MX
L_8295D7:
    LDA $1CE9                       ; $8295D7  AD E9 1C     MX
    BNE L_8295DF                    ; $8295DA  D0 03        MX
L_8295DC:
    JMP L_8296A9                    ; $8295DC  4C A9 96     MX
L_8295DF:
    LDA $06F0                       ; $8295DF  AD F0 06     MX
    AND #$FF00                      ; $8295E2  29 00 FF     MX
    BEQ L_8295DC                    ; $8295E5  F0 F5        MX
    STA $00A4                       ; $8295E7  8D A4 00     MX
    LDA $07D8                       ; $8295EA  AD D8 07     MX
    AND #$00FF                      ; $8295ED  29 FF 00     MX
    ORA $00A4                       ; $8295F0  0D A4 00     MX
    STA $07D8                       ; $8295F3  8D D8 07     MX
    LDA $06F0                       ; $8295F6  AD F0 06     MX
    AND #$00FF                      ; $8295F9  29 FF 00     MX
    STA $06F0                       ; $8295FC  8D F0 06     MX
    STZ $07AA                       ; $8295FF  9C AA 07     MX
    STZ $07AC                       ; $829602  9C AC 07     MX
    LDA $0776                       ; $829605  AD 76 07     MX
    STA $085E                       ; $829608  8D 5E 08     MX
    LDA $0772                       ; $82960B  AD 72 07     MX
    STA $085A                       ; $82960E  8D 5A 08     MX
    LDA $08BA                       ; $829611  AD BA 08     MX
    LDX $07D2                       ; $829614  AE D2 07     MX
    STA $07D2                       ; $829617  8D D2 07     MX
    STX $08BA                       ; $82961A  8E BA 08     MX
    LDA $08B8                       ; $82961D  AD B8 08     MX
    LDX $07D0                       ; $829620  AE D0 07     MX
    STA $07D0                       ; $829623  8D D0 07     MX
    STX $08B8                       ; $829626  8E B8 08     MX
    LDA $08BC                       ; $829629  AD BC 08     MX
    LDX $07D4                       ; $82962C  AE D4 07     MX
    STA $07D4                       ; $82962F  8D D4 07     MX
    STX $08BC                       ; $829632  8E BC 08     MX
    LDA $08BE                       ; $829635  AD BE 08     MX
    LDX $07D6                       ; $829638  AE D6 07     MX
    STA $07D6                       ; $82963B  8D D6 07     MX
    STX $08BE                       ; $82963E  8E BE 08     MX
    LDA $1C5D                       ; $829641  AD 5D 1C     MX
    CMP #$0002                      ; $829644  C9 02 00     MX
    BEQ L_8296A9                    ; $829647  F0 60        MX
    LDA $0B1A                       ; $829649  AD 1A 0B     MX
    LDX $0B0A                       ; $82964C  AE 0A 0B     MX
    STA $0B0A                       ; $82964F  8D 0A 0B     MX
    STX $0B1A                       ; $829652  8E 1A 0B     MX
    LDA $0B1C                       ; $829655  AD 1C 0B     MX
    LDX $0B0C                       ; $829658  AE 0C 0B     MX
    STA $0B0C                       ; $82965B  8D 0C 0B     MX
    STX $0B1C                       ; $82965E  8E 1C 0B     MX
    LDA $0B1E                       ; $829661  AD 1E 0B     MX
    LDX $0B0E                       ; $829664  AE 0E 0B     MX
    STA $0B0E                       ; $829667  8D 0E 0B     MX
    STX $0B1E                       ; $82966A  8E 1E 0B     MX
    LDA $0B20                       ; $82966D  AD 20 0B     MX
    LDX $0B10                       ; $829670  AE 10 0B     MX
    STA $0B10                       ; $829673  8D 10 0B     MX
    STX $0B20                       ; $829676  8E 20 0B     MX
    LDA $0B22                       ; $829679  AD 22 0B     MX
    LDX $0B12                       ; $82967C  AE 12 0B     MX
    STA $0B12                       ; $82967F  8D 12 0B     MX
    STX $0B22                       ; $829682  8E 22 0B     MX
    LDA $0B24                       ; $829685  AD 24 0B     MX
    LDX $0B14                       ; $829688  AE 14 0B     MX
    STA $0B14                       ; $82968B  8D 14 0B     MX
    STX $0B24                       ; $82968E  8E 24 0B     MX
    LDA $0B26                       ; $829691  AD 26 0B     MX
    LDX $0B16                       ; $829694  AE 16 0B     MX
    STA $0B16                       ; $829697  8D 16 0B     MX
    STX $0B26                       ; $82969A  8E 26 0B     MX
    LDA $0B28                       ; $82969D  AD 28 0B     MX
    LDX $0B18                       ; $8296A0  AE 18 0B     MX
    STA $0B18                       ; $8296A3  8D 18 0B     MX
    STX $0B28                       ; $8296A6  8E 28 0B     MX
L_8296A9:
    LDA $07D8                       ; $8296A9  AD D8 07     MX
    STA $0C19                       ; $8296AC  8D 19 0C     MX
    LDA #$07D8                      ; $8296AF  A9 D8 07     MX
    STA $00CC                       ; $8296B2  8D CC 00     MX
    LDA #$0032                      ; $8296B5  A9 32 00     MX
    STA $0870                       ; $8296B8  8D 70 08     MX
    LDX $07E8                       ; $8296BB  AE E8 07     MX
    LDA #$2500                      ; $8296BE  A9 00 25     MX
    STA $00D1                       ; $8296C1  8D D1 00     MX
    LDA $A58000,X                   ; $8296C4  BF 00 80 A5  MX
    CLC                             ; $8296C8  18           MX
    ADC $07E6                       ; $8296C9  6D E6 07     MX
    STA $00D0                       ; $8296CC  8D D0 00     MX
    LDA #$0020                      ; $8296CF  A9 20 00     MX
    STA $0BEF                       ; $8296D2  8D EF 0B     MX
    LDA $07F8                       ; $8296D5  AD F8 07     MX
    STA $0BD9                       ; $8296D8  8D D9 0B     MX
    LDA $07DC                       ; $8296DB  AD DC 07     MX
    CMP #$0022                      ; $8296DE  C9 22 00     MX
    BNE L_8296F8                    ; $8296E1  D0 15        MX
    LDA $08A2                       ; $8296E3  AD A2 08     MX
    BEQ L_8296F0                    ; $8296E6  F0 08        MX
    LDA #$002D                      ; $8296E8  A9 2D 00     MX
    STA $0BF1                       ; $8296EB  8D F1 0B     MX
    BRA L_8296FE                    ; $8296EE  80 0E        MX
L_8296F0:
    LDA #$0041                      ; $8296F0  A9 41 00     MX
    STA $0BF1                       ; $8296F3  8D F1 0B     MX
    BRA L_8296FE                    ; $8296F6  80 06        MX
L_8296F8:
    LDA #$001E                      ; $8296F8  A9 1E 00     MX
    STA $0BF1                       ; $8296FB  8D F1 0B     MX
L_8296FE:
    LDA $07FC                       ; $8296FE  AD FC 07     MX
    STA $0BDD                       ; $829701  8D DD 0B     MX
    LDY #$0004                      ; $829704  A0 04 00     MX
    LDA [$D0],Y                     ; $829707  B7 D0        MX
    STA $0BF5                       ; $829709  8D F5 0B     MX
    CLC                             ; $82970C  18           MX
    ADC $0800                       ; $82970D  6D 00 08     MX
    STA $0BF3                       ; $829710  8D F3 0B     MX
    STA $0BE1                       ; $829713  8D E1 0B     MX
    STZ $0868                       ; $829716  9C 68 08     MX
    STZ $086A                       ; $829719  9C 6A 08     MX
    STZ $0C11                       ; $82971C  9C 11 0C     MX
    STZ $0894                       ; $82971F  9C 94 08     MX
    STZ $0854                       ; $829722  9C 54 08     MX
    LDA #$000A                      ; $829725  A9 0A 00     MX
    STA $0870                       ; $829728  8D 70 08     MX
    SEP #$10                        ; $82972B  E2 10        MX
    LDA #$0004                      ; $82972D  A9 04 00     Mx
    STA $0BBF                       ; $829730  8D BF 0B     Mx
    LDA $080A                       ; $829733  AD 0A 08     Mx
    BNE L_829763                    ; $829736  D0 2B        Mx
    STZ $0BC1                       ; $829738  9C C1 0B     Mx
    LDA $07DC                       ; $82973B  AD DC 07     Mx
    CMP #$0032                      ; $82973E  C9 32 00     Mx
    BEQ L_829763                    ; $829741  F0 20        Mx
    CMP #$002E                      ; $829743  C9 2E 00     Mx
    BEQ L_829763                    ; $829746  F0 1B        Mx
    LDA #$000C                      ; $829748  A9 0C 00     Mx
    STA $07DC                       ; $82974B  8D DC 07     Mx
    LDA #$FFFF                      ; $82974E  A9 FF FF     Mx
    STA $07E2                       ; $829751  8D E2 07     Mx
    STZ $07E4                       ; $829754  9C E4 07     Mx
    STZ $082A                       ; $829757  9C 2A 08     Mx
    STZ $07E0                       ; $82975A  9C E0 07     Mx
    LDA #$FFF8                      ; $82975D  A9 F8 FF     Mx
    STA $07E6                       ; $829760  8D E6 07     Mx
L_829763:
    LDA #$0087                      ; $829763  A9 87 00     Mx
    STA $089A                       ; $829766  8D 9A 08     Mx
    LDA #$003C                      ; $829769  A9 3C 00     Mx
    STA $07DE                       ; $82976C  8D DE 07     Mx
    LDA $07DC                       ; $82976F  AD DC 07     Mx
    CMP #$0022                      ; $829772  C9 22 00     Mx
    BNE L_8297C7                    ; $829775  D0 50        Mx
    LDA $0BC1                       ; $829777  AD C1 0B     Mx
    CMP #$0001                      ; $82977A  C9 01 00     Mx
    BNE L_8297C7                    ; $82977D  D0 48        Mx
    LDA $0C2B                       ; $82977F  AD 2B 0C     Mx
    BPL L_8297C7                    ; $829782  10 43        Mx
    CMP #$FF4C                      ; $829784  C9 4C FF     Mx
    BCC L_8297C7                    ; $829787  90 3E        Mx
    LDA $0A98                       ; $829789  AD 98 0A     Mx
    BNE L_82979A                    ; $82978C  D0 0C        Mx
    LDA $07D8                       ; $82978E  AD D8 07     Mx
    DEC                             ; $829791  3A           Mx
    AND #$0003                      ; $829792  29 03 00     Mx
    ASL                             ; $829795  0A           Mx
    TAX                             ; $829796  AA           Mx
    INC $1CC1,X                     ; $829797  FE C1 1C     Mx
L_82979A:
    LDA $0B50                       ; $82979A  AD 50 0B     Mx
    BNE L_8297C7                    ; $82979D  D0 28        Mx
    LDA $0BF9                       ; $82979F  AD F9 0B     Mx
    BNE L_8297C7                    ; $8297A2  D0 23        Mx
    LDA $07EA                       ; $8297A4  AD EA 07     Mx
    BNE L_8297C7                    ; $8297A7  D0 1E        Mx
    LDA $0C2B                       ; $8297A9  AD 2B 0C     Mx
    BPL L_8297C7                    ; $8297AC  10 19        Mx
    LDA $0B52                       ; $8297AE  AD 52 0B     Mx
    CMP #$003A                      ; $8297B1  C9 3A 00     Mx
    BEQ L_8297C7                    ; $8297B4  F0 11        Mx
    LDA $1615                       ; $8297B6  AD 15 16     Mx
    BNE L_8297C7                    ; $8297B9  D0 0C        Mx
    LDA $07EA                       ; $8297BB  AD EA 07     Mx
    BNE L_8297C7                    ; $8297BE  D0 07        Mx
    LDA #$0009                      ; $8297C0  A9 09 00     Mx
    JSL L_9ABBD5                    ; $8297C3  22 D5 BB 9A  Mx
L_8297C7:
    STZ $0C2B                       ; $8297C7  9C 2B 0C     Mx
    LDA $0866                       ; $8297CA  AD 66 08     Mx
    BNE L_829807                    ; $8297CD  D0 38        Mx
    LDX $00AA                       ; $8297CF  AE AA 00     Mx
    LDA $A7E4B9,X                   ; $8297D2  BF B9 E4 A7  Mx
    BEQ L_829807                    ; $8297D6  F0 2F        Mx
    JSR L_8297DE                    ; $8297D8  20 DE 97     Mx
    JMP L_829807                    ; $8297DB  4C 07 98     Mx
L_8297DE:
    LDA $0C3D                       ; $8297DE  AD 3D 0C     Mx
    BNE L_829806                    ; $8297E1  D0 23        Mx
    LDA $0C1F                       ; $8297E3  AD 1F 0C     Mx
    AND #$00FF                      ; $8297E6  29 FF 00     Mx
    CMP #$0003                      ; $8297E9  C9 03 00     Mx
    BCC L_829806                    ; $8297EC  90 18        Mx
    LDA #$0014                      ; $8297EE  A9 14 00     Mx
    STA $0C3D                       ; $8297F1  8D 3D 0C     Mx
    LDA $1611                       ; $8297F4  AD 11 16     Mx
    BNE L_829806                    ; $8297F7  D0 0D        Mx
    LDA #$0011                      ; $8297F9  A9 11 00     Mx
    JSL L_BDFDF3                    ; $8297FC  22 F3 FD BD  Mx
    LDA #$0064                      ; $829800  A9 64 00     Mx
    STA $1611                       ; $829803  8D 11 16     Mx
L_829806:
    RTS                             ; $829806  60           Mx
L_829807:
    LDA $089C                       ; $829807  AD 9C 08     Mx
    BNE L_829831                    ; $82980A  D0 25        Mx
    LDA $07EA                       ; $82980C  AD EA 07     Mx
    BNE L_829831                    ; $82980F  D0 20        Mx
    LDA $088C                       ; $829811  AD 8C 08     Mx
    BNE L_829831                    ; $829814  D0 1B        Mx
    LDA $07DC                       ; $829816  AD DC 07     Mx
    CMP #$0020                      ; $829819  C9 20 00     Mx
    BCC L_829823                    ; $82981C  90 05        Mx
    CMP #$0025                      ; $82981E  C9 25 00     Mx
    BCC L_829831                    ; $829821  90 0E        Mx
L_829823:
    LDA $0810                       ; $829823  AD 10 08     Mx
    ORA $0818                       ; $829826  0D 18 08     Mx
    ORA $081A                       ; $829829  0D 1A 08     Mx
    ORA $0812                       ; $82982C  0D 12 08     Mx
    BNE L_829834                    ; $82982F  D0 03        Mx
L_829831:
    JMP L_829A33                    ; $829831  4C 33 9A     Mx
L_829834:
    LDA $080A                       ; $829834  AD 0A 08     Mx
    BNE L_829831                    ; $829837  D0 F8        Mx
    LDA $086C                       ; $829839  AD 6C 08     Mx
    BNE L_829831                    ; $82983C  D0 F3        Mx
    LDA $07E0                       ; $82983E  AD E0 07     Mx
    BNE L_829831                    ; $829841  D0 EE        Mx
    LDA $09DA                       ; $829843  AD DA 09     Mx
    BNE L_82986C                    ; $829846  D0 24        Mx
    LDA $0A3C                       ; $829848  AD 3C 0A     Mx
    BNE L_82986C                    ; $82984B  D0 1F        Mx
    LDA $0850                       ; $82984D  AD 50 08     Mx
    CMP #$0025                      ; $829850  C9 25 00     Mx
    BCS L_82986C                    ; $829853  B0 17        Mx
    CMP #$000A                      ; $829855  C9 0A 00     Mx
    BCC L_82986C                    ; $829858  90 12        Mx
    LDA $082E                       ; $82985A  AD 2E 08     Mx
    SEC                             ; $82985D  38           Mx
    SBC $0A00                       ; $82985E  ED 00 0A     Mx
    BPL L_82986C                    ; $829861  10 09        Mx
    LDA $0830                       ; $829863  AD 30 08     Mx
    SEC                             ; $829866  38           Mx
    SBC $09FE                       ; $829867  ED FE 09     Mx
    BPL L_82986F                    ; $82986A  10 03        Mx
L_82986C:
    JMP L_82993B                    ; $82986C  4C 3B 99     Mx
L_82986F:
    LDA $0800                       ; $82986F  AD 00 08     Mx
    SEC                             ; $829872  38           Mx
    SBC $09D0                       ; $829873  ED D0 09     Mx
    BCC L_829880                    ; $829876  90 08        Mx
    CMP #$000C                      ; $829878  C9 0C 00     Mx
    BCC L_829888                    ; $82987B  90 0B        Mx
    JMP L_82993B                    ; $82987D  4C 3B 99     Mx
L_829880:
    CMP #$FFF4                      ; $829880  C9 F4 FF     Mx
    BCS L_829888                    ; $829883  B0 03        Mx
    JMP L_82993B                    ; $829885  4C 3B 99     Mx
L_829888:
    LDA $0806                       ; $829888  AD 06 08     Mx
    SEC                             ; $82988B  38           Mx
    SBC $09D6                       ; $82988C  ED D6 09     Mx
    CMP #$000C                      ; $82988F  C9 0C 00     Mx
    BPL L_8298FA                    ; $829892  10 66        Mx
    CMP #$FFF4                      ; $829894  C9 F4 FF     Mx
    BMI L_8298FA                    ; $829897  30 61        Mx
    STZ $0818                       ; $829899  9C 18 08     Mx
    STZ $081A                       ; $82989C  9C 1A 08     Mx
    LDA $0806                       ; $82989F  AD 06 08     Mx
    SEC                             ; $8298A2  38           Mx
    SBC $09D6                       ; $8298A3  ED D6 09     Mx
    BMI L_8298D1                    ; $8298A6  30 29        Mx
    LDA $0810                       ; $8298A8  AD 10 08     Mx
    CLC                             ; $8298AB  18           Mx
    ADC #$C000                      ; $8298AC  69 00 C0     Mx
    STA $0810                       ; $8298AF  8D 10 08     Mx
    LDA $0812                       ; $8298B2  AD 12 08     Mx
    ADC #$0000                      ; $8298B5  69 00 00     Mx
    STA $0812                       ; $8298B8  8D 12 08     Mx
    LDA $09E0                       ; $8298BB  AD E0 09     Mx
    SEC                             ; $8298BE  38           Mx
    SBC #$2000                      ; $8298BF  E9 00 20     Mx
    STA $09E0                       ; $8298C2  8D E0 09     Mx
    LDA $09E2                       ; $8298C5  AD E2 09     Mx
    SBC #$0000                      ; $8298C8  E9 00 00     Mx
    STA $09E2                       ; $8298CB  8D E2 09     Mx
    JMP L_82993B                    ; $8298CE  4C 3B 99     Mx
L_8298D1:
    LDA $0810                       ; $8298D1  AD 10 08     Mx
    SEC                             ; $8298D4  38           Mx
    SBC #$C000                      ; $8298D5  E9 00 C0     Mx
    STA $0810                       ; $8298D8  8D 10 08     Mx
    LDA $0812                       ; $8298DB  AD 12 08     Mx
    SBC #$0000                      ; $8298DE  E9 00 00     Mx
    STA $0812                       ; $8298E1  8D 12 08     Mx
    LDA $09E0                       ; $8298E4  AD E0 09     Mx
    CLC                             ; $8298E7  18           Mx
    ADC #$2000                      ; $8298E8  69 00 20     Mx
    STA $09E0                       ; $8298EB  8D E0 09     Mx
    LDA $09E2                       ; $8298EE  AD E2 09     Mx
    ADC #$0000                      ; $8298F1  69 00 00     Mx
    STA $09E2                       ; $8298F4  8D E2 09     Mx
    JMP L_82993B                    ; $8298F7  4C 3B 99     Mx
L_8298FA:
    STZ $0810                       ; $8298FA  9C 10 08     Mx
    STZ $0812                       ; $8298FD  9C 12 08     Mx
    LDA $080E                       ; $829900  AD 0E 08     Mx
    CMP $09DE                       ; $829903  CD DE 09     Mx
    BMI L_829923                    ; $829906  30 1B        Mx
    CMP #$03E4                      ; $829908  C9 E4 03     Mx
    BCS L_829928                    ; $82990B  B0 1B        Mx
L_82990D:
    LDA $0818                       ; $82990D  AD 18 08     Mx
    CLC                             ; $829910  18           Mx
    ADC #$8000                      ; $829911  69 00 80     Mx
    STA $0818                       ; $829914  8D 18 08     Mx
    LDA $081A                       ; $829917  AD 1A 08     Mx
    ADC #$0000                      ; $82991A  69 00 00     Mx
    STA $081A                       ; $82991D  8D 1A 08     Mx
    JMP L_82993B                    ; $829920  4C 3B 99     Mx
L_829923:
    CMP #$031C                      ; $829923  C9 1C 03     Mx
    BCC L_82990D                    ; $829926  90 E5        Mx
L_829928:
    LDA $0818                       ; $829928  AD 18 08     Mx
    SEC                             ; $82992B  38           Mx
    SBC #$8000                      ; $82992C  E9 00 80     Mx
    STA $0818                       ; $82992F  8D 18 08     Mx
    LDA $081A                       ; $829932  AD 1A 08     Mx
    SBC #$0000                      ; $829935  E9 00 00     Mx
    STA $081A                       ; $829938  8D 1A 08     Mx
L_82993B:
    LDA $08F2                       ; $82993B  AD F2 08     Mx
    BNE L_829964                    ; $82993E  D0 24        Mx
    LDA $0954                       ; $829940  AD 54 09     Mx
    BNE L_829964                    ; $829943  D0 1F        Mx
    LDA $0852                       ; $829945  AD 52 08     Mx
    CMP #$0025                      ; $829948  C9 25 00     Mx
    BCS L_829964                    ; $82994B  B0 17        Mx
    CMP #$000A                      ; $82994D  C9 0A 00     Mx
    BCC L_829964                    ; $829950  90 12        Mx
    LDA $082E                       ; $829952  AD 2E 08     Mx
    SEC                             ; $829955  38           Mx
    SBC $0918                       ; $829956  ED 18 09     Mx
    BPL L_829964                    ; $829959  10 09        Mx
    LDA $0830                       ; $82995B  AD 30 08     Mx
    SEC                             ; $82995E  38           Mx
    SBC $0916                       ; $82995F  ED 16 09     Mx
    BPL L_829967                    ; $829962  10 03        Mx
L_829964:
    JMP L_829A33                    ; $829964  4C 33 9A     Mx
L_829967:
    LDA $0800                       ; $829967  AD 00 08     Mx
    SEC                             ; $82996A  38           Mx
    SBC $08E8                       ; $82996B  ED E8 08     Mx
    BCC L_829978                    ; $82996E  90 08        Mx
    CMP #$000C                      ; $829970  C9 0C 00     Mx
    BCC L_829980                    ; $829973  90 0B        Mx
    JMP L_829A33                    ; $829975  4C 33 9A     Mx
L_829978:
    CMP #$FFF4                      ; $829978  C9 F4 FF     Mx
    BCS L_829980                    ; $82997B  B0 03        Mx
    JMP L_829A33                    ; $82997D  4C 33 9A     Mx
L_829980:
    LDA $0806                       ; $829980  AD 06 08     Mx
    SEC                             ; $829983  38           Mx
    SBC $08EE                       ; $829984  ED EE 08     Mx
    CMP #$000C                      ; $829987  C9 0C 00     Mx
    BPL L_8299F2                    ; $82998A  10 66        Mx
    CMP #$FFF4                      ; $82998C  C9 F4 FF     Mx
    BMI L_8299F2                    ; $82998F  30 61        Mx
    STZ $0818                       ; $829991  9C 18 08     Mx
    STZ $081A                       ; $829994  9C 1A 08     Mx
    LDA $0806                       ; $829997  AD 06 08     Mx
    SEC                             ; $82999A  38           Mx
    SBC $08EE                       ; $82999B  ED EE 08     Mx
    BMI L_8299C9                    ; $82999E  30 29        Mx
    LDA $0810                       ; $8299A0  AD 10 08     Mx
    CLC                             ; $8299A3  18           Mx
    ADC #$C000                      ; $8299A4  69 00 C0     Mx
    STA $0810                       ; $8299A7  8D 10 08     Mx
    LDA $0812                       ; $8299AA  AD 12 08     Mx
    ADC #$0000                      ; $8299AD  69 00 00     Mx
    STA $0812                       ; $8299B0  8D 12 08     Mx
    LDA $08F8                       ; $8299B3  AD F8 08     Mx
    SEC                             ; $8299B6  38           Mx
    SBC #$2000                      ; $8299B7  E9 00 20     Mx
    STA $08F8                       ; $8299BA  8D F8 08     Mx
    LDA $08FA                       ; $8299BD  AD FA 08     Mx
    SBC #$0000                      ; $8299C0  E9 00 00     Mx
    STA $08FA                       ; $8299C3  8D FA 08     Mx
    JMP L_829A33                    ; $8299C6  4C 33 9A     Mx
L_8299C9:
    LDA $0810                       ; $8299C9  AD 10 08     Mx
    SEC                             ; $8299CC  38           Mx
    SBC #$C000                      ; $8299CD  E9 00 C0     Mx
    STA $0810                       ; $8299D0  8D 10 08     Mx
    LDA $0812                       ; $8299D3  AD 12 08     Mx
    SBC #$0000                      ; $8299D6  E9 00 00     Mx
    STA $0812                       ; $8299D9  8D 12 08     Mx
    LDA $08F8                       ; $8299DC  AD F8 08     Mx
    CLC                             ; $8299DF  18           Mx
    ADC #$2000                      ; $8299E0  69 00 20     Mx
    STA $08F8                       ; $8299E3  8D F8 08     Mx
    LDA $08FA                       ; $8299E6  AD FA 08     Mx
    ADC #$0000                      ; $8299E9  69 00 00     Mx
    STA $08FA                       ; $8299EC  8D FA 08     Mx
    JMP L_829A33                    ; $8299EF  4C 33 9A     Mx
L_8299F2:
    STZ $0810                       ; $8299F2  9C 10 08     Mx
    STZ $0812                       ; $8299F5  9C 12 08     Mx
    LDA $080E                       ; $8299F8  AD 0E 08     Mx
    CMP $08F6                       ; $8299FB  CD F6 08     Mx
    BMI L_829A1B                    ; $8299FE  30 1B        Mx
    CMP #$03E4                      ; $829A00  C9 E4 03     Mx
    BCS L_829A20                    ; $829A03  B0 1B        Mx
L_829A05:
    LDA $0818                       ; $829A05  AD 18 08     Mx
    CLC                             ; $829A08  18           Mx
    ADC #$8000                      ; $829A09  69 00 80     Mx
    STA $0818                       ; $829A0C  8D 18 08     Mx
    LDA $081A                       ; $829A0F  AD 1A 08     Mx
    ADC #$0000                      ; $829A12  69 00 00     Mx
    STA $081A                       ; $829A15  8D 1A 08     Mx
    JMP L_829A33                    ; $829A18  4C 33 9A     Mx
L_829A1B:
    CMP #$031C                      ; $829A1B  C9 1C 03     Mx
    BCC L_829A05                    ; $829A1E  90 E5        Mx
L_829A20:
    LDA $0818                       ; $829A20  AD 18 08     Mx
    SEC                             ; $829A23  38           Mx
    SBC #$8000                      ; $829A24  E9 00 80     Mx
    STA $0818                       ; $829A27  8D 18 08     Mx
    LDA $081A                       ; $829A2A  AD 1A 08     Mx
    SBC #$0000                      ; $829A2D  E9 00 00     Mx
    STA $081A                       ; $829A30  8D 1A 08     Mx
L_829A33:
    LDA $080C                       ; $829A33  AD 0C 08     Mx
    CLC                             ; $829A36  18           Mx
    ADC $0818                       ; $829A37  6D 18 08     Mx
    STA $0802                       ; $829A3A  8D 02 08     Mx
    LDA $080E                       ; $829A3D  AD 0E 08     Mx
    ADC $081A                       ; $829A40  6D 1A 08     Mx
    STA $0800                       ; $829A43  8D 00 08     Mx
    CMP #$0310                      ; $829A46  C9 10 03     Mx
    BCC L_829A5C                    ; $829A49  90 11        Mx
    CMP #$03F0                      ; $829A4B  C9 F0 03     Mx
    BCC L_829A6E                    ; $829A4E  90 1E        Mx
    LDA $0856                       ; $829A50  AD 56 08     Mx
    AND #$FBFF                      ; $829A53  29 FF FB     Mx
    STA $0856                       ; $829A56  8D 56 08     Mx
    JMP L_829A65                    ; $829A59  4C 65 9A     Mx
L_829A5C:
    LDA $0856                       ; $829A5C  AD 56 08     Mx
    AND #$F7FF                      ; $829A5F  29 FF F7     Mx
    STA $0856                       ; $829A62  8D 56 08     Mx
L_829A65:
    STZ $081A                       ; $829A65  9C 1A 08     Mx
    STZ $0818                       ; $829A68  9C 18 08     Mx
    JMP L_829A86                    ; $829A6B  4C 86 9A     Mx
L_829A6E:
    LDA $081A                       ; $829A6E  AD 1A 08     Mx
    BEQ L_829A86                    ; $829A71  F0 13        Mx
    BPL L_829A7D                    ; $829A73  10 08        Mx
    LDA $0856                       ; $829A75  AD 56 08     Mx
    ORA #$0400                      ; $829A78  09 00 04     Mx
    BNE L_829A83                    ; $829A7B  D0 06        Mx
L_829A7D:
    LDA $0856                       ; $829A7D  AD 56 08     Mx
    ORA #$0800                      ; $829A80  09 00 08     Mx
L_829A83:
    STA $0856                       ; $829A83  8D 56 08     Mx
L_829A86:
    LDA $07EA                       ; $829A86  AD EA 07     Mx
    BEQ L_829A96                    ; $829A89  F0 0B        Mx
    LDA $080A                       ; $829A8B  AD 0A 08     Mx
    CMP #$0001                      ; $829A8E  C9 01 00     Mx
    BPL L_829A96                    ; $829A91  10 03        Mx
    JMP L_829AE8                    ; $829A93  4C E8 9A     Mx
L_829A96:
    LDA $07F8                       ; $829A96  AD F8 07     Mx
    BPL L_829AA8                    ; $829A99  10 0D        Mx
    CMP #$FF00                      ; $829A9B  C9 00 FF     Mx
    BCS L_829AD0                    ; $829A9E  B0 30        Mx
    LDA $0812                       ; $829AA0  AD 12 08     Mx
    BPL L_829AD0                    ; $829AA3  10 2B        Mx
    JMP L_829ABE                    ; $829AA5  4C BE 9A     Mx
L_829AA8:
    CMP #$010C                      ; $829AA8  C9 0C 01     Mx
    BCC L_829AD0                    ; $829AAB  90 23        Mx
    LDA $0812                       ; $829AAD  AD 12 08     Mx
    BMI L_829AD0                    ; $829AB0  30 1E        Mx
    LDA $0856                       ; $829AB2  AD 56 08     Mx
    AND #$FEFF                      ; $829AB5  29 FF FE     Mx
    STA $0856                       ; $829AB8  8D 56 08     Mx
    JMP L_829AC7                    ; $829ABB  4C C7 9A     Mx
L_829ABE:
    LDA $0856                       ; $829ABE  AD 56 08     Mx
    AND #$FDFF                      ; $829AC1  29 FF FD     Mx
    STA $0856                       ; $829AC4  8D 56 08     Mx
L_829AC7:
    STZ $0812                       ; $829AC7  9C 12 08     Mx
    STZ $0810                       ; $829ACA  9C 10 08     Mx
    JMP L_829AE8                    ; $829ACD  4C E8 9A     Mx
L_829AD0:
    LDA $0812                       ; $829AD0  AD 12 08     Mx
    BEQ L_829AE8                    ; $829AD3  F0 13        Mx
    BPL L_829ADF                    ; $829AD5  10 08        Mx
    LDA $0856                       ; $829AD7  AD 56 08     Mx
    ORA #$0100                      ; $829ADA  09 00 01     Mx
    BNE L_829AE5                    ; $829ADD  D0 06        Mx
L_829ADF:
    LDA $0856                       ; $829ADF  AD 56 08     Mx
    ORA #$0200                      ; $829AE2  09 00 02     Mx
L_829AE5:
    STA $0856                       ; $829AE5  8D 56 08     Mx
L_829AE8:
    LDA $07FC                       ; $829AE8  AD FC 07     Mx
    BNE L_829AFF                    ; $829AEB  D0 12        Mx
    LDA $07E0                       ; $829AED  AD E0 07     Mx
    AND #$0004                      ; $829AF0  29 04 00     Mx
    BNE L_829B16                    ; $829AF3  D0 21        Mx
    LDA $087C                       ; $829AF5  AD 7C 08     Mx
    BEQ L_829B16                    ; $829AF8  F0 1C        Mx
    STZ $0C11                       ; $829AFA  9C 11 0C     Mx
    BRA L_829B16                    ; $829AFD  80 17        Mx
L_829AFF:
    BMI L_829B0A                    ; $829AFF  30 09        Mx
    LDX $07DC                       ; $829B01  AE DC 07     Mx
    LDA $02DF90,X                   ; $829B04  BF 90 DF 02  Mx
    BNE L_829B16                    ; $829B08  D0 0C        Mx
L_829B0A:
    STZ $080A                       ; $829B0A  9C 0A 08     Mx
    STZ $0808                       ; $829B0D  9C 08 08     Mx
    STZ $07FC                       ; $829B10  9C FC 07     Mx
    STZ $07FE                       ; $829B13  9C FE 07     Mx
L_829B16:
    LDA $0810                       ; $829B16  AD 10 08     Mx
    CLC                             ; $829B19  18           Mx
    ADC $0804                       ; $829B1A  6D 04 08     Mx
    STA $0804                       ; $829B1D  8D 04 08     Mx
    LDA $0812                       ; $829B20  AD 12 08     Mx
    ADC $0806                       ; $829B23  6D 06 08     Mx
    STA $0806                       ; $829B26  8D 06 08     Mx
    LDA $0818                       ; $829B29  AD 18 08     Mx
    CLC                             ; $829B2C  18           Mx
    ADC $080C                       ; $829B2D  6D 0C 08     Mx
    STA $080C                       ; $829B30  8D 0C 08     Mx
    LDA $081A                       ; $829B33  AD 1A 08     Mx
    ADC $080E                       ; $829B36  6D 0E 08     Mx
    STA $080E                       ; $829B39  8D 0E 08     Mx
    LDA $0814                       ; $829B3C  AD 14 08     Mx
    CLC                             ; $829B3F  18           Mx
    ADC $0808                       ; $829B40  6D 08 08     Mx
    STA $0808                       ; $829B43  8D 08 08     Mx
    LDA $0816                       ; $829B46  AD 16 08     Mx
    ADC $080A                       ; $829B49  6D 0A 08     Mx
    BPL L_829B51                    ; $829B4C  10 03        Mx
    LDA #$0000                      ; $829B4E  A9 00 00     Mx
L_829B51:
    STA $080A                       ; $829B51  8D 0A 08     Mx
    LDX $07DC                       ; $829B54  AE DC 07     Mx
    LDA $82DFD4,X                   ; $829B57  BF D4 DF 82  Mx
    BEQ L_829B69                    ; $829B5B  F0 0C        Mx
    STZ $0812                       ; $829B5D  9C 12 08     Mx
    STZ $0810                       ; $829B60  9C 10 08     Mx
    STZ $081A                       ; $829B63  9C 1A 08     Mx
    STZ $0818                       ; $829B66  9C 18 08     Mx
L_829B69:
    REP #$10                        ; $829B69  C2 10        Mx
    LDA $07DC                       ; $829B6B  AD DC 07     MX
    ASL                             ; $829B6E  0A           MX
    ASL                             ; $829B6F  0A           MX
    ASL                             ; $829B70  0A           MX
    CLC                             ; $829B71  18           MX
    ADC $07F0                       ; $829B72  6D F0 07     MX
    ADC $07F0                       ; $829B75  6D F0 07     MX
    STA $07E8                       ; $829B78  8D E8 07     MX
    TAX                             ; $829B7B  AA           MX
    DEC $07E4                       ; $829B7C  CE E4 07     MX
    BPL L_829BA6                    ; $829B7F  10 25        MX
    LDA $998210,X                   ; $829B81  BF 10 82 99  MX
    STA $07E4                       ; $829B85  8D E4 07     MX
    INC $07E2                       ; $829B88  EE E2 07     MX
    LDA $07E6                       ; $829B8B  AD E6 07     MX
    CLC                             ; $829B8E  18           MX
    ADC #$0008                      ; $829B8F  69 08 00     MX
    STA $07E6                       ; $829B92  8D E6 07     MX
    LDA $998420,X                   ; $829B95  BF 20 84 99  MX
    CMP $07E2                       ; $829B99  CD E2 07     MX
    BEQ L_829BA0                    ; $829B9C  F0 02        MX
    BCS L_829BA6                    ; $829B9E  B0 06        MX
L_829BA0:
    STZ $07E2                       ; $829BA0  9C E2 07     MX
    STZ $07E6                       ; $829BA3  9C E6 07     MX
L_829BA6:
    LDA $998000,X                   ; $829BA6  BF 00 80 99  MX
    CLC                             ; $829BAA  18           MX
    ADC $07E6                       ; $829BAB  6D E6 07     MX
    STA $08B4                       ; $829BAE  8D B4 08     MX
    SEP #$10                        ; $829BB1  E2 10        MX
    RTL                             ; $829BB3  6B           Mx
L_829BB4:
    LDX $07EA                       ; $829BB4  AE EA 07     Mx
    BNE L_829BEF                    ; $829BB7  D0 36        Mx
    LDX $0A9A                       ; $829BB9  AE 9A 0A     Mx
    BEQ L_829BC1                    ; $829BBC  F0 03        Mx
    JMP L_829D94                    ; $829BBE  4C 94 9D     Mx
L_829BC1:
    LDX $088A                       ; $829BC1  AE 8A 08     Mx
    BEQ L_829BEC                    ; $829BC4  F0 26        Mx
    DEC $088A                       ; $829BC6  CE 8A 08     Mx
    BNE L_829BD9                    ; $829BC9  D0 0E        Mx
    PHA                             ; $829BCB  48           Mx
    LDA #$FFFF                      ; $829BCC  A9 FF FF     Mx
    STA $0856                       ; $829BCF  8D 56 08     Mx
    STZ $088C                       ; $829BD2  9C 8C 08     Mx
    PLA                             ; $829BD5  68           Mx
    JMP L_829E4C                    ; $829BD6  4C 4C 9E     Mx
L_829BD9:
    LDX $088C                       ; $829BD9  AE 8C 08     Mx
    BEQ L_829BE1                    ; $829BDC  F0 03        Mx
    JMP L_829E4F                    ; $829BDE  4C 4F 9E     Mx
L_829BE1:
    PHA                             ; $829BE1  48           Mx
    LDA $0856                       ; $829BE2  AD 56 08     Mx
    AND #$F0FF                      ; $829BE5  29 FF F0     Mx
    STA $0856                       ; $829BE8  8D 56 08     Mx
    PLA                             ; $829BEB  68           Mx
L_829BEC:
    JMP L_829E4C                    ; $829BEC  4C 4C 9E     Mx
L_829BEF:
    LDA #$FFFF                      ; $829BEF  A9 FF FF     Mx
    STA $0856                       ; $829BF2  8D 56 08     Mx
    STZ $00A4                       ; $829BF5  9C A4 00     Mx
    LDA $080A                       ; $829BF8  AD 0A 08     Mx
    BEQ L_829C03                    ; $829BFB  F0 06        Mx
    LDA #$0000                      ; $829BFD  A9 00 00     Mx
    JMP L_829E4C                    ; $829C00  4C 4C 9E     Mx
L_829C03:
    LDA $087C                       ; $829C03  AD 7C 08     Mx
    BNE L_829C69                    ; $829C06  D0 61        Mx
    LDX $0C1B                       ; $829C08  AE 1B 0C     Mx
    CPX $07D8                       ; $829C0B  EC D8 07     Mx
    BNE L_829C73                    ; $829C0E  D0 63        Mx
    STZ $00D0                       ; $829C10  9C D0 00     Mx
    LDA $0806                       ; $829C13  AD 06 08     Mx
    SEC                             ; $829C16  38           Mx
    SBC $0BFB                       ; $829C17  ED FB 0B     Mx
    AND #$FFFC                      ; $829C1A  29 FC FF     Mx
    BMI L_829C32                    ; $829C1D  30 13        Mx
    BNE L_829C29                    ; $829C1F  D0 08        Mx
    STZ $0812                       ; $829C21  9C 12 08     Mx
    STZ $0810                       ; $829C24  9C 10 08     Mx
    BRA L_829C38                    ; $829C27  80 0F        Mx
L_829C29:
    LDA #$0200                      ; $829C29  A9 00 02     Mx
    STA $00A4                       ; $829C2C  8D A4 00     Mx
    JMP L_829C38                    ; $829C2F  4C 38 9C     Mx
L_829C32:
    LDA #$0100                      ; $829C32  A9 00 01     Mx
    STA $00A4                       ; $829C35  8D A4 00     Mx
L_829C38:
    LDA $080E                       ; $829C38  AD 0E 08     Mx
    SEC                             ; $829C3B  38           Mx
    SBC $0BFD                       ; $829C3C  ED FD 0B     Mx
    AND #$FFFC                      ; $829C3F  29 FC FF     Mx
    BMI L_829C5A                    ; $829C42  30 16        Mx
    BNE L_829C4E                    ; $829C44  D0 08        Mx
    STZ $081A                       ; $829C46  9C 1A 08     Mx
    STZ $0818                       ; $829C49  9C 18 08     Mx
    BRA L_829C63                    ; $829C4C  80 15        Mx
L_829C4E:
    LDA #$0800                      ; $829C4E  A9 00 08     Mx
    ORA $00A4                       ; $829C51  0D A4 00     Mx
    STA $00A4                       ; $829C54  8D A4 00     Mx
    JMP L_829C63                    ; $829C57  4C 63 9C     Mx
L_829C5A:
    LDA #$0400                      ; $829C5A  A9 00 04     Mx
    ORA $00A4                       ; $829C5D  0D A4 00     Mx
    STA $00A4                       ; $829C60  8D A4 00     Mx
L_829C63:
    LDA $00A4                       ; $829C63  AD A4 00     Mx
    JMP L_829E4C                    ; $829C66  4C 4C 9E     Mx
L_829C69:
    LDX $0C1B                       ; $829C69  AE 1B 0C     Mx
    BEQ L_829C73                    ; $829C6C  F0 05        Mx
    CPX $07D8                       ; $829C6E  EC D8 07     Mx
    BNE L_829C76                    ; $829C71  D0 03        Mx
L_829C73:
    JMP L_829D0A                    ; $829C73  4C 0A 9D     Mx
L_829C76:
    LDA $0C19                       ; $829C76  AD 19 0C     Mx
    BEQ L_829CE1                    ; $829C79  F0 66        Mx
    LDA $0BD9                       ; $829C7B  AD D9 0B     Mx
    CLC                             ; $829C7E  18           Mx
    ADC $0BEF                       ; $829C7F  6D EF 0B     Mx
    LDY #$54                        ; $829C82  A0 54        Mx
    SEC                             ; $829C84  38           Mx
    SBC ($CC),Y                     ; $829C85  F1 CC        Mx
    BPL L_829C93                    ; $829C87  10 0A        Mx
    CMP #$FEF4                      ; $829C89  C9 F4 FE     Mx
    BCS L_829C9B                    ; $829C8C  B0 0D        Mx
    LDA #$FEF4                      ; $829C8E  A9 F4 FE     Mx
    BRA L_829C9B                    ; $829C91  80 08        Mx
L_829C93:
    CMP #$010C                      ; $829C93  C9 0C 01     Mx
    BCC L_829C9B                    ; $829C96  90 03        Mx
    LDA #$010C                      ; $829C98  A9 0C 01     Mx
L_829C9B:
    STA $0BD9                       ; $829C9B  8D D9 0B     Mx
    LDA $0BDD                       ; $829C9E  AD DD 0B     Mx
    CLC                             ; $829CA1  18           Mx
    ADC $0BF1                       ; $829CA2  6D F1 0B     Mx
    STA $0BDD                       ; $829CA5  8D DD 0B     Mx
    LDA $0BF3                       ; $829CA8  AD F3 0B     Mx
    CMP #$0310                      ; $829CAB  C9 10 03     Mx
    BCC L_829CBA                    ; $829CAE  90 0A        Mx
    CMP #$03F0                      ; $829CB0  C9 F0 03     Mx
    BCC L_829CBD                    ; $829CB3  90 08        Mx
    LDA #$03F0                      ; $829CB5  A9 F0 03     Mx
    BRA L_829CBD                    ; $829CB8  80 03        Mx
L_829CBA:
    LDA #$0310                      ; $829CBA  A9 10 03     Mx
L_829CBD:
    STA $0BE1                       ; $829CBD  8D E1 0B     Mx
    STA $0BF3                       ; $829CC0  8D F3 0B     Mx
    STZ $0C19                       ; $829CC3  9C 19 0C     Mx
    STZ $00CC                       ; $829CC6  9C CC 00     Mx
    STZ $0C2B                       ; $829CC9  9C 2B 0C     Mx
    STZ $0BEF                       ; $829CCC  9C EF 0B     Mx
    STZ $0BF1                       ; $829CCF  9C F1 0B     Mx
    STZ $0C11                       ; $829CD2  9C 11 0C     Mx
    LDA #$0002                      ; $829CD5  A9 02 00     Mx
    STA $0BBF                       ; $829CD8  8D BF 0B     Mx
    LDA #$0002                      ; $829CDB  A9 02 00     Mx
    STA $0BC1                       ; $829CDE  8D C1 0B     Mx
L_829CE1:
    LDA $0C1B                       ; $829CE1  AD 1B 0C     Mx
    AND #$00FF                      ; $829CE4  29 FF 00     Mx
    DEC                             ; $829CE7  3A           Mx
    ASL                             ; $829CE8  0A           Mx
    TAX                             ; $829CE9  AA           Mx
    LDA $9ABBCD,X                   ; $829CEA  BF CD BB 9A  Mx
    STA $00CC                       ; $829CEE  8D CC 00     Mx
    LDY #$2E                        ; $829CF1  A0 2E        Mx
    LDA ($CC),Y                     ; $829CF3  B1 CC        Mx
    STA $0BD9                       ; $829CF5  8D D9 0B     Mx
    LDY #$36                        ; $829CF8  A0 36        Mx
    LDA ($CC),Y                     ; $829CFA  B1 CC        Mx
    STA $0BE1                       ; $829CFC  8D E1 0B     Mx
    LDY #$32                        ; $829CFF  A0 32        Mx
    LDA ($CC),Y                     ; $829D01  B1 CC        Mx
    CLC                             ; $829D03  18           Mx
    ADC #$0019                      ; $829D04  69 19 00     Mx
    STA $0BDD                       ; $829D07  8D DD 0B     Mx
L_829D0A:
    STZ $00D0                       ; $829D0A  9C D0 00     Mx
    LDA $0806                       ; $829D0D  AD 06 08     Mx
    SEC                             ; $829D10  38           Mx
    SBC $07EC                       ; $829D11  ED EC 07     Mx
    AND #$FFFC                      ; $829D14  29 FC FF     Mx
    BMI L_829D2F                    ; $829D17  30 16        Mx
    BNE L_829D23                    ; $829D19  D0 08        Mx
    STZ $0812                       ; $829D1B  9C 12 08     Mx
    STZ $0810                       ; $829D1E  9C 10 08     Mx
    BRA L_829D3F                    ; $829D21  80 1C        Mx
L_829D23:
    STA $00D0                       ; $829D23  8D D0 00     Mx
    LDA #$0200                      ; $829D26  A9 00 02     Mx
    STA $00A4                       ; $829D29  8D A4 00     Mx
    JMP L_829D3F                    ; $829D2C  4C 3F 9D     Mx
L_829D2F:
    EOR #$FFFF                      ; $829D2F  49 FF FF     Mx
    CLC                             ; $829D32  18           Mx
    ADC #$0001                      ; $829D33  69 01 00     Mx
    STA $00D0                       ; $829D36  8D D0 00     Mx
    LDA #$0100                      ; $829D39  A9 00 01     Mx
    STA $00A4                       ; $829D3C  8D A4 00     Mx
L_829D3F:
    LDA $080E                       ; $829D3F  AD 0E 08     Mx
    SEC                             ; $829D42  38           Mx
    SBC $07EE                       ; $829D43  ED EE 07     Mx
    AND #$FFFC                      ; $829D46  29 FC FF     Mx
    BMI L_829D61                    ; $829D49  30 16        Mx
    BNE L_829D55                    ; $829D4B  D0 08        Mx
    STZ $081A                       ; $829D4D  9C 1A 08     Mx
    STZ $0818                       ; $829D50  9C 18 08     Mx
    BRA L_829D6A                    ; $829D53  80 15        Mx
L_829D55:
    LDA #$0800                      ; $829D55  A9 00 08     Mx
    ORA $00A4                       ; $829D58  0D A4 00     Mx
    STA $00A4                       ; $829D5B  8D A4 00     Mx
    JMP L_829D6A                    ; $829D5E  4C 6A 9D     Mx
L_829D61:
    LDA #$0400                      ; $829D61  A9 00 04     Mx
    ORA $00A4                       ; $829D64  0D A4 00     Mx
    STA $00A4                       ; $829D67  8D A4 00     Mx
L_829D6A:
    LDA $00A4                       ; $829D6A  AD A4 00     Mx
    BEQ L_829D72                    ; $829D6D  F0 03        Mx
    JMP L_829E4C                    ; $829D6F  4C 4C 9E     Mx
L_829D72:
    LDX $0846                       ; $829D72  AE 46 08     Mx
    LDA $A7E377,X                   ; $829D75  BF 77 E3 A7  Mx
    AND #$0007                      ; $829D79  29 07 00     Mx
    STA $07F0                       ; $829D7C  8D F0 07     Mx
    STZ $0812                       ; $829D7F  9C 12 08     Mx
    STZ $0810                       ; $829D82  9C 10 08     Mx
    STZ $081A                       ; $829D85  9C 1A 08     Mx
    STZ $0818                       ; $829D88  9C 18 08     Mx
    STZ $0816                       ; $829D8B  9C 16 08     Mx
    STZ $0814                       ; $829D8E  9C 14 08     Mx
    STZ $07EA                       ; $829D91  9C EA 07     Mx
L_829D94:
    LDA #$0087                      ; $829D94  A9 87 00     Mx
    STA $089A                       ; $829D97  8D 9A 08     Mx
    LDA #$FFFF                      ; $829D9A  A9 FF FF     Mx
    STA $0856                       ; $829D9D  8D 56 08     Mx
    LDA $0702                       ; $829DA0  AD 02 07     Mx
    ORA $07EA                       ; $829DA3  0D EA 07     Mx
    ORA $08D2                       ; $829DA6  0D D2 08     Mx
    ORA $09BA                       ; $829DA9  0D BA 09     Mx
    BEQ L_829DB1                    ; $829DAC  F0 03        Mx
    JMP L_829E49                    ; $829DAE  4C 49 9E     Mx
L_829DB1:
    LDA $0C3B                       ; $829DB1  AD 3B 0C     Mx
    BNE L_829DBB                    ; $829DB4  D0 05        Mx
    STZ $0CD3                       ; $829DB6  9C D3 0C     Mx
    BRA L_829DC1                    ; $829DB9  80 06        Mx
L_829DBB:
    LDA #$003C                      ; $829DBB  A9 3C 00     Mx
    STA $0CD3                       ; $829DBE  8D D3 0C     Mx
L_829DC1:
    LDA $0B50                       ; $829DC1  AD 50 0B     Mx
    BNE L_829DE4                    ; $829DC4  D0 1E        Mx
    LDA $0C19                       ; $829DC6  AD 19 0C     Mx
    AND #$00FF                      ; $829DC9  29 FF 00     Mx
    SEC                             ; $829DCC  38           Mx
    SBC $0C1B                       ; $829DCD  ED 1B 0C     Mx
    AND #$00FF                      ; $829DD0  29 FF 00     Mx
    BNE L_829DE7                    ; $829DD3  D0 12        Mx
    LDA $0C19                       ; $829DD5  AD 19 0C     Mx
    AND #$00FF                      ; $829DD8  29 FF 00     Mx
    SEC                             ; $829DDB  38           Mx
    SBC $07D8                       ; $829DDC  ED D8 07     Mx
    AND #$00FF                      ; $829DDF  29 FF 00     Mx
    BEQ L_829DFE                    ; $829DE2  F0 1A        Mx
L_829DE4:
    JMP L_829E49                    ; $829DE4  4C 49 9E     Mx
L_829DE7:
    LDY #$2E                        ; $829DE7  A0 2E        Mx
    LDA ($CC),Y                     ; $829DE9  B1 CC        Mx
    STA $0BD9                       ; $829DEB  8D D9 0B     Mx
    LDY #$36                        ; $829DEE  A0 36        Mx
    LDA ($CC),Y                     ; $829DF0  B1 CC        Mx
    STA $0BE1                       ; $829DF2  8D E1 0B     Mx
    STA $0BF3                       ; $829DF5  8D F3 0B     Mx
    STZ $0BDD                       ; $829DF8  9C DD 0B     Mx
    JMP L_829E49                    ; $829DFB  4C 49 9E     Mx
L_829DFE:
    LDX $083E                       ; $829DFE  AE 3E 08     Mx
    LDA $A7E377,X                   ; $829E01  BF 77 E3 A7  Mx
    AND #$0007                      ; $829E05  29 07 00     Mx
    STA $07F0                       ; $829E08  8D F0 07     Mx
    LDA $0A9A                       ; $829E0B  AD 9A 0A     Mx
    BEQ L_829E18                    ; $829E0E  F0 08        Mx
    DEC $0A9A                       ; $829E10  CE 9A 0A     Mx
    BEQ L_829E18                    ; $829E13  F0 03        Mx
    JMP L_829E49                    ; $829E15  4C 49 9E     Mx
L_829E18:
    STZ $0C1B                       ; $829E18  9C 1B 0C     Mx
    LDA $0806                       ; $829E1B  AD 06 08     Mx
    CLC                             ; $829E1E  18           Mx
    ADC #$001E                      ; $829E1F  69 1E 00     Mx
    STA $07EC                       ; $829E22  8D EC 07     Mx
    LDA #$001E                      ; $829E25  A9 1E 00     Mx
    STA $07A2                       ; $829E28  8D A2 07     Mx
    STA $0A5A                       ; $829E2B  8D 5A 0A     Mx
    STA $0972                       ; $829E2E  8D 72 09     Mx
    STZ $07A4                       ; $829E31  9C A4 07     Mx
    STZ $0A5C                       ; $829E34  9C 5C 0A     Mx
    STZ $0974                       ; $829E37  9C 74 09     Mx
    LDA #$0001                      ; $829E3A  A9 01 00     Mx
    STA $07EA                       ; $829E3D  8D EA 07     Mx
    STZ $0860                       ; $829E40  9C 60 08     Mx
    LDA $08B8                       ; $829E43  AD B8 08     Mx
    JMP L_829E4C                    ; $829E46  4C 4C 9E     Mx
L_829E49:
    LDA #$0000                      ; $829E49  A9 00 00     Mx
L_829E4C:
    JMP L_829E52                    ; $829E4C  4C 52 9E     Mx
L_829E4F:
    LDA $0854                       ; $829E4F  AD 54 08     Mx
L_829E52:
    AND $0856                       ; $829E52  2D 56 08     Mx
    STA $00A4                       ; $829E55  8D A4 00     Mx
    AND #$0F00                      ; $829E58  29 00 0F     Mx
    BEQ L_829E70                    ; $829E5B  F0 13        Mx
    STA $00A6                       ; $829E5D  8D A6 00     Mx
    LDA $0854                       ; $829E60  AD 54 08     Mx
    AND #$0F00                      ; $829E63  29 00 0F     Mx
    CMP $00A6                       ; $829E66  CD A6 00     Mx
    BNE L_829E70                    ; $829E69  D0 05        Mx
    INC $088E                       ; $829E6B  EE 8E 08     Mx
    BNE L_829EA0                    ; $829E6E  D0 30        Mx
L_829E70:
    LDA $1D56                       ; $829E70  AD 56 1D     Mx
    AND #$000F                      ; $829E73  29 0F 00     Mx
    BNE L_829E9D                    ; $829E76  D0 25        Mx
    LDA $080A                       ; $829E78  AD 0A 08     Mx
    BNE L_829E9D                    ; $829E7B  D0 20        Mx
    LDA $0812                       ; $829E7D  AD 12 08     Mx
    ORA $081A                       ; $829E80  0D 1A 08     Mx
    BEQ L_829E9D                    ; $829E83  F0 18        Mx
    LDA $1D58                       ; $829E85  AD 58 1D     Mx
    AND #$0001                      ; $829E88  29 01 00     Mx
    BEQ L_829E96                    ; $829E8B  F0 09        Mx
    LDA #$000D                      ; $829E8D  A9 0D 00     Mx
    JSL L_BDFDF3                    ; $829E90  22 F3 FD BD  Mx
    BRA L_829E9D                    ; $829E94  80 07        Mx
L_829E96:
    LDA #$000E                      ; $829E96  A9 0E 00     Mx
    JSL L_BDFDF3                    ; $829E99  22 F3 FD BD  Mx
L_829E9D:
    STZ $088E                       ; $829E9D  9C 8E 08     Mx
L_829EA0:
    LDA $0CCB                       ; $829EA0  AD CB 0C     Mx
    ORA $0CC9                       ; $829EA3  0D C9 0C     Mx
    BNE L_829EB0                    ; $829EA6  D0 08        Mx
    LDA $0854                       ; $829EA8  AD 54 08     Mx
    AND #$F0FF                      ; $829EAB  29 FF F0     Mx
    BRA L_829EB3                    ; $829EAE  80 03        Mx
L_829EB0:
    LDA $00A4                       ; $829EB0  AD A4 00     Mx
L_829EB3:
    STA $0854                       ; $829EB3  8D 54 08     Mx
    LDA $08BE                       ; $829EB6  AD BE 08     Mx
    AND #$0008                      ; $829EB9  29 08 00     Mx
    BEQ L_829ED2                    ; $829EBC  F0 14        Mx
    LDA $087C                       ; $829EBE  AD 7C 08     Mx
    BEQ L_829ED2                    ; $829EC1  F0 0F        Mx
    LDA $07D8                       ; $829EC3  AD D8 07     Mx
    STA $0A96                       ; $829EC6  8D 96 0A     Mx
    STA $0C21                       ; $829EC9  8D 21 0C     Mx
    LDA #$0003                      ; $829ECC  A9 03 00     Mx
    STA $0C23                       ; $829ECF  8D 23 0C     Mx
L_829ED2:
    LDA $07DA                       ; $829ED2  AD DA 07     Mx
    BEQ L_829F1D                    ; $829ED5  F0 46        Mx
    LDA $07DC                       ; $829ED7  AD DC 07     Mx
    STA $07DC                       ; $829EDA  8D DC 07     Mx
    LDA #$FFFF                      ; $829EDD  A9 FF FF     Mx
    STA $07E2                       ; $829EE0  8D E2 07     Mx
    STZ $07E4                       ; $829EE3  9C E4 07     Mx
    STZ $082A                       ; $829EE6  9C 2A 08     Mx
    STZ $07E0                       ; $829EE9  9C E0 07     Mx
    LDA #$FFF8                      ; $829EEC  A9 F8 FF     Mx
    STA $07E6                       ; $829EEF  8D E6 07     Mx
    LDA $07DC                       ; $829EF2  AD DC 07     Mx
    CMP #$0030                      ; $829EF5  C9 30 00     Mx
    BNE L_829F1A                    ; $829EF8  D0 20        Mx
    LDA $0812                       ; $829EFA  AD 12 08     Mx
    BPL L_829F0C                    ; $829EFD  10 0D        Mx
    LDX #$02                        ; $829EFF  A2 02        Mx
    LDA $081A                       ; $829F01  AD 1A 08     Mx
    BMI L_829F09                    ; $829F04  30 03        Mx
    DEX                             ; $829F06  CA           Mx
    BRA L_829F17                    ; $829F07  80 0E        Mx
L_829F09:
    INX                             ; $829F09  E8           Mx
    BRA L_829F17                    ; $829F0A  80 0B        Mx
L_829F0C:
    LDX #$06                        ; $829F0C  A2 06        Mx
    LDA $081A                       ; $829F0E  AD 1A 08     Mx
    BMI L_829F16                    ; $829F11  30 03        Mx
    INX                             ; $829F13  E8           Mx
    BRA L_829F17                    ; $829F14  80 01        Mx
L_829F16:
    DEX                             ; $829F16  CA           Mx
L_829F17:
    STX $07F0                       ; $829F17  8E F0 07     Mx
L_829F1A:
    STZ $07DA                       ; $829F1A  9C DA 07     Mx
L_829F1D:
    LDA $086C                       ; $829F1D  AD 6C 08     Mx
    BEQ L_829F2D                    ; $829F20  F0 0B        Mx
    LDA $07DC                       ; $829F22  AD DC 07     Mx
    CMP #$0030                      ; $829F25  C9 30 00     Mx
    BEQ L_829F2D                    ; $829F28  F0 03        Mx
    STZ $086C                       ; $829F2A  9C 6C 08     Mx
L_829F2D:
    LDA $0854                       ; $829F2D  AD 54 08     Mx
    AND $08BC                       ; $829F30  2D BC 08     Mx
    BEQ L_829F46                    ; $829F33  F0 11        Mx
    INC $086E                       ; $829F35  EE 6E 08     Mx
    LDA $0870                       ; $829F38  AD 70 08     Mx
    CMP #$0005                      ; $829F3B  C9 05 00     Mx
    BCC L_829F4F                    ; $829F3E  90 0F        Mx
    STZ $0870                       ; $829F40  9C 70 08     Mx
    JMP L_829FCE                    ; $829F43  4C CE 9F     Mx
L_829F46:
    STZ $086E                       ; $829F46  9C 6E 08     Mx
    INC $0870                       ; $829F49  EE 70 08     Mx
    JMP L_829FCE                    ; $829F4C  4C CE 9F     Mx
L_829F4F:
    LDA $086E                       ; $829F4F  AD 6E 08     Mx
    CMP #$0001                      ; $829F52  C9 01 00     Mx
    BNE L_829FCE                    ; $829F55  D0 77        Mx
    LDA $0870                       ; $829F57  AD 70 08     Mx
    BEQ L_829FCE                    ; $829F5A  F0 72        Mx
    LDA $087C                       ; $829F5C  AD 7C 08     Mx
    BEQ L_829FCE                    ; $829F5F  F0 6D        Mx
    LDA $080A                       ; $829F61  AD 0A 08     Mx
    BNE L_829FCE                    ; $829F64  D0 68        Mx
    LDA $07DC                       ; $829F66  AD DC 07     Mx
    CMP #$002E                      ; $829F69  C9 2E 00     Mx
    BEQ L_829FCE                    ; $829F6C  F0 60        Mx
    LDA $0CCB                       ; $829F6E  AD CB 0C     Mx
    CMP #$00A9                      ; $829F71  C9 A9 00     Mx
    BCS L_829FCE                    ; $829F74  B0 58        Mx
    LDX $07D9                       ; $829F76  AE D9 07     Mx
    BNE L_829F8B                    ; $829F79  D0 10        Mx
    LDA $0850                       ; $829F7B  AD 50 08     Mx
    CMP #$0046                      ; $829F7E  C9 46 00     Mx
    BCC L_829F8B                    ; $829F81  90 08        Mx
    LDA $0852                       ; $829F83  AD 52 08     Mx
    CMP #$0046                      ; $829F86  C9 46 00     Mx
    BCS L_829FCE                    ; $829F89  B0 43        Mx
L_829F8B:
    LDX $07D8                       ; $829F8B  AE D8 07     Mx
    CPX $0A96                       ; $829F8E  EC 96 0A     Mx
    BEQ L_829FA2                    ; $829F91  F0 0F        Mx
    LDA $0872                       ; $829F93  AD 72 08     Mx
    CMP #$0004                      ; $829F96  C9 04 00     Mx
    BCC L_829FCE                    ; $829F99  90 33        Mx
    SEC                             ; $829F9B  38           Mx
    SBC #$0003                      ; $829F9C  E9 03 00     Mx
    STA $0872                       ; $829F9F  8D 72 08     Mx
L_829FA2:
    STZ $0868                       ; $829FA2  9C 68 08     Mx
    LDA $07DC                       ; $829FA5  AD DC 07     Mx
    CMP #$000C                      ; $829FA8  C9 0C 00     Mx
    BEQ L_829FB3                    ; $829FAB  F0 06        Mx
    LDA #$0001                      ; $829FAD  A9 01 00     Mx
    STA $0868                       ; $829FB0  8D 68 08     Mx
L_829FB3:
    LDA #$002E                      ; $829FB3  A9 2E 00     Mx
    STA $07DC                       ; $829FB6  8D DC 07     Mx
    LDA #$FFFF                      ; $829FB9  A9 FF FF     Mx
    STA $07E2                       ; $829FBC  8D E2 07     Mx
    STZ $07E4                       ; $829FBF  9C E4 07     Mx
    STZ $082A                       ; $829FC2  9C 2A 08     Mx
    STZ $07E0                       ; $829FC5  9C E0 07     Mx
    LDA #$FFF8                      ; $829FC8  A9 F8 FF     Mx
    STA $07E6                       ; $829FCB  8D E6 07     Mx
L_829FCE:
    LDA $08BE                       ; $829FCE  AD BE 08     Mx
    AND #$0004                      ; $829FD1  29 04 00     Mx
    BEQ L_829FE1                    ; $829FD4  F0 0B        Mx
    LDA #$0020                      ; $829FD6  A9 20 00     Mx
    STA $0872                       ; $829FD9  8D 72 08     Mx
    STZ $0874                       ; $829FDC  9C 74 08     Mx
    BRA L_82A03E                    ; $829FDF  80 5D        Mx
L_829FE1:
    LDA $086E                       ; $829FE1  AD 6E 08     Mx
    BEQ L_82A019                    ; $829FE4  F0 33        Mx
    LDA $07EA                       ; $829FE6  AD EA 07     Mx
    BNE L_82A019                    ; $829FE9  D0 2E        Mx
    LDX $07D8                       ; $829FEB  AE D8 07     Mx
    CPX $0A96                       ; $829FEE  EC 96 0A     Mx
    BEQ L_82A019                    ; $829FF1  F0 26        Mx
    LDA $0874                       ; $829FF3  AD 74 08     Mx
    SEC                             ; $829FF6  38           Mx
    SBC $0878                       ; $829FF7  ED 78 08     Mx
    STA $0874                       ; $829FFA  8D 74 08     Mx
    LDA $0872                       ; $829FFD  AD 72 08     Mx
    BEQ L_82A013                    ; $82A000  F0 11        Mx
    SBC #$0000                      ; $82A002  E9 00 00     Mx
    STA $0872                       ; $82A005  8D 72 08     Mx
    BNE L_82A010                    ; $82A008  D0 06        Mx
    LDA #$000A                      ; $82A00A  A9 0A 00     Mx
    STA $087A                       ; $82A00D  8D 7A 08     Mx
L_82A010:
    JMP L_82A03E                    ; $82A010  4C 3E A0     Mx
L_82A013:
    STZ $086E                       ; $82A013  9C 6E 08     Mx
    JMP L_82A03E                    ; $82A016  4C 3E A0     Mx
L_82A019:
    LDA $087A                       ; $82A019  AD 7A 08     Mx
    BEQ L_82A023                    ; $82A01C  F0 05        Mx
    DEC $087A                       ; $82A01E  CE 7A 08     Mx
    BRA L_82A03E                    ; $82A021  80 1B        Mx
L_82A023:
    LDA $0874                       ; $82A023  AD 74 08     Mx
    CLC                             ; $82A026  18           Mx
    ADC $0876                       ; $82A027  6D 76 08     Mx
    STA $0874                       ; $82A02A  8D 74 08     Mx
    LDA $0872                       ; $82A02D  AD 72 08     Mx
    ADC #$0000                      ; $82A030  69 00 00     Mx
    CMP #$0020                      ; $82A033  C9 20 00     Mx
    BCC L_82A03B                    ; $82A036  90 03        Mx
    LDA #$0020                      ; $82A038  A9 20 00     Mx
L_82A03B:
    STA $0872                       ; $82A03B  8D 72 08     Mx
L_82A03E:
    LDA $0858                       ; $82A03E  AD 58 08     Mx
    STA $085A                       ; $82A041  8D 5A 08     Mx
    LDA $0854                       ; $82A044  AD 54 08     Mx
    AND $08BA                       ; $82A047  2D BA 08     Mx
    BEQ L_82A04F                    ; $82A04A  F0 03        Mx
    LDA #$0001                      ; $82A04C  A9 01 00     Mx
L_82A04F:
    STA $0858                       ; $82A04F  8D 58 08     Mx
    LDA $0854                       ; $82A052  AD 54 08     Mx
    AND $08B8                       ; $82A055  2D B8 08     Mx
    BEQ L_82A067                    ; $82A058  F0 0D        Mx
    LDA $085E                       ; $82A05A  AD 5E 08     Mx
    BEQ L_82A064                    ; $82A05D  F0 05        Mx
    LDA #$FFFF                      ; $82A05F  A9 FF FF     Mx
    BRA L_82A067                    ; $82A062  80 03        Mx
L_82A064:
    LDA #$0001                      ; $82A064  A9 01 00     Mx
L_82A067:
    STA $085E                       ; $82A067  8D 5E 08     Mx
    LDA $085E                       ; $82A06A  AD 5E 08     Mx
    STA $085C                       ; $82A06D  8D 5C 08     Mx
    LDA $0862                       ; $82A070  AD 62 08     Mx
    BEQ L_82A079                    ; $82A073  F0 04        Mx
    DEC                             ; $82A075  3A           Mx
    STA $0862                       ; $82A076  8D 62 08     Mx
L_82A079:
    LDA $0860                       ; $82A079  AD 60 08     Mx
    BEQ L_82A088                    ; $82A07C  F0 0A        Mx
    STZ $0858                       ; $82A07E  9C 58 08     Mx
    STZ $085C                       ; $82A081  9C 5C 08     Mx
    DEC                             ; $82A084  3A           Mx
    STA $0860                       ; $82A085  8D 60 08     Mx
L_82A088:
    LDA $07DC                       ; $82A088  AD DC 07     Mx
    CMP #$0038                      ; $82A08B  C9 38 00     Mx
    BEQ L_82A0FC                    ; $82A08E  F0 6C        Mx
    LDA $087C                       ; $82A090  AD 7C 08     Mx
    BEQ L_82A0FC                    ; $82A093  F0 67        Mx
    LDA $080A                       ; $82A095  AD 0A 08     Mx
    BEQ L_82A0FC                    ; $82A098  F0 62        Mx
    LDA $0722                       ; $82A09A  AD 22 07     Mx
    BNE L_82A0FC                    ; $82A09D  D0 5D        Mx
    LDA $085C                       ; $82A09F  AD 5C 08     Mx
    BEQ L_82A0FC                    ; $82A0A2  F0 58        Mx
    INC                             ; $82A0A4  1A           Mx
    BEQ L_82A0FC                    ; $82A0A5  F0 55        Mx
    STZ $15EB                       ; $82A0A7  9C EB 15     Mx
    STZ $15F5                       ; $82A0AA  9C F5 15     Mx
    LDA $0848                       ; $82A0AD  AD 48 08     Mx
    TAX                             ; $82A0B0  AA           Mx
    CLC                             ; $82A0B1  18           Mx
    ADC #$0040                      ; $82A0B2  69 40 00     Mx
    AND #$007F                      ; $82A0B5  29 7F 00     Mx
    TAY                             ; $82A0B8  A8           Mx
    LDA $A7E377,X                   ; $82A0B9  BF 77 E3 A7  Mx
    AND #$0007                      ; $82A0BD  29 07 00     Mx
    STA $07F0                       ; $82A0C0  8D F0 07     Mx
    LDA #$0038                      ; $82A0C3  A9 38 00     Mx
    STA $07DC                       ; $82A0C6  8D DC 07     Mx
    LDA #$FFFF                      ; $82A0C9  A9 FF FF     Mx
    STA $07E2                       ; $82A0CC  8D E2 07     Mx
    STZ $07E4                       ; $82A0CF  9C E4 07     Mx
    STZ $082A                       ; $82A0D2  9C 2A 08     Mx
    STZ $07E0                       ; $82A0D5  9C E0 07     Mx
    LDA #$FFF8                      ; $82A0D8  A9 F8 FF     Mx
    STA $07E6                       ; $82A0DB  8D E6 07     Mx
    LDA #$0002                      ; $82A0DE  A9 02 00     Mx
    STA $07E0                       ; $82A0E1  8D E0 07     Mx
    LDA #$0087                      ; $82A0E4  A9 87 00     Mx
    STA $07B2                       ; $82A0E7  8D B2 07     Mx
    STZ $0C39                       ; $82A0EA  9C 39 0C     Mx
    LDA $07D8                       ; $82A0ED  AD D8 07     Mx
    AND #$00FF                      ; $82A0F0  29 FF 00     Mx
    STA $0AA0                       ; $82A0F3  8D A0 0A     Mx
    LDA #$00D2                      ; $82A0F6  A9 D2 00     Mx
    STA $0A9E                       ; $82A0F9  8D 9E 0A     Mx
L_82A0FC:
    LDA $089A                       ; $82A0FC  AD 9A 08     Mx
    BEQ L_82A104                    ; $82A0FF  F0 03        Mx
    DEC $089A                       ; $82A101  CE 9A 08     Mx
L_82A104:
    LDA $0C19                       ; $82A104  AD 19 0C     Mx
    BNE L_82A140                    ; $82A107  D0 37        Mx
    LDA $1607                       ; $82A109  AD 07 16     Mx
    BNE L_82A140                    ; $82A10C  D0 32        Mx
    LDA $0BC1                       ; $82A10E  AD C1 0B     Mx
    CMP #$0001                      ; $82A111  C9 01 00     Mx
    BNE L_82A140                    ; $82A114  D0 2A        Mx
    LDA $07DC                       ; $82A116  AD DC 07     Mx
    LSR                             ; $82A119  4A           Mx
    TAX                             ; $82A11A  AA           Mx
    LDA $82DF6E,X                   ; $82A11B  BF 6E DF 82  Mx
    AND #$00FF                      ; $82A11F  29 FF 00     Mx
    BEQ L_82A140                    ; $82A122  F0 1C        Mx
    LDA $0C2B                       ; $82A124  AD 2B 0C     Mx
    BPL L_82A140                    ; $82A127  10 17        Mx
    LDA $0844                       ; $82A129  AD 44 08     Mx
    CMP #$0050                      ; $82A12C  C9 50 00     Mx
    BCS L_82A140                    ; $82A12F  B0 0F        Mx
    LDA $0C25                       ; $82A131  AD 25 0C     Mx
    BNE L_82A140                    ; $82A134  D0 0A        Mx
    LDA $0860                       ; $82A136  AD 60 08     Mx
    BNE L_82A140                    ; $82A139  D0 05        Mx
    LDA $07EA                       ; $82A13B  AD EA 07     Mx
    BEQ L_82A143                    ; $82A13E  F0 03        Mx
L_82A140:
    JMP L_82A67E                    ; $82A140  4C 7E A6     Mx
L_82A143:
    LDA $0A9C                       ; $82A143  AD 9C 0A     Mx
    BEQ L_82A14B                    ; $82A146  F0 03        Mx
L_82A148:
    JMP L_82A67E                    ; $82A148  4C 7E A6     Mx
L_82A14B:
    LDA $0A9A                       ; $82A14B  AD 9A 0A     Mx
    BNE L_82A148                    ; $82A14E  D0 F8        Mx
    LDA $0B50                       ; $82A150  AD 50 0B     Mx
    BNE L_82A148                    ; $82A153  D0 F3        Mx
    LDA $0BD9                       ; $82A155  AD D9 0B     Mx
    BMI L_82A172                    ; $82A158  30 18        Mx
    LDA $0CCB                       ; $82A15A  AD CB 0C     Mx
    CMP #$0002                      ; $82A15D  C9 02 00     Mx
    BCC L_82A148                    ; $82A160  90 E6        Mx
    LDA $0844                       ; $82A162  AD 44 08     Mx
    CMP $0A14                       ; $82A165  CD 14 0A     Mx
    BCS L_82A172                    ; $82A168  B0 08        Mx
    CMP $092C                       ; $82A16A  CD 2C 09     Mx
    BCS L_82A172                    ; $82A16D  B0 03        Mx
    JMP L_82A148                    ; $82A16F  4C 48 A1     Mx
L_82A172:
    LDA $080E                       ; $82A172  AD 0E 08     Mx
    SEC                             ; $82A175  38           Mx
    SBC #$0374                      ; $82A176  E9 74 03     Mx
    BPL L_82A182                    ; $82A179  10 07        Mx
    EOR #$FFFF                      ; $82A17B  49 FF FF     Mx
    CLC                             ; $82A17E  18           Mx
    ADC #$0001                      ; $82A17F  69 01 00     Mx
L_82A182:
    STA $00D3                       ; $82A182  8D D3 00     Mx
    CMP #$0020                      ; $82A185  C9 20 00     Mx
    BCS L_82A1AE                    ; $82A188  B0 24        Mx
    LDA $0806                       ; $82A18A  AD 06 08     Mx
    BPL L_82A196                    ; $82A18D  10 07        Mx
    EOR #$FFFF                      ; $82A18F  49 FF FF     Mx
    CLC                             ; $82A192  18           Mx
    ADC #$0001                      ; $82A193  69 01 00     Mx
L_82A196:
    STA $00D0                       ; $82A196  8D D0 00     Mx
    CMP #$010C                      ; $82A199  C9 0C 01     Mx
    BCS L_82A148                    ; $82A19C  B0 AA        Mx
    LDA $00D3                       ; $82A19E  AD D3 00     Mx
    CMP #$000A                      ; $82A1A1  C9 0A 00     Mx
    BCS L_82A1AE                    ; $82A1A4  B0 08        Mx
    LDA $00D0                       ; $82A1A6  AD D0 00     Mx
    CMP #$00FC                      ; $82A1A9  C9 FC 00     Mx
    BCS L_82A148                    ; $82A1AC  B0 9A        Mx
L_82A1AE:
    LDA $0BE8                       ; $82A1AE  AD E8 0B     Mx
    STA $00B2                       ; $82A1B1  8D B2 00     Mx
    BPL L_82A1C0                    ; $82A1B4  10 0A        Mx
    EOR #$FFFF                      ; $82A1B6  49 FF FF     Mx
    CLC                             ; $82A1B9  18           Mx
    ADC #$0001                      ; $82A1BA  69 01 00     Mx
    STA $00A6                       ; $82A1BD  8D A6 00     Mx
L_82A1C0:
    LDX #$19                        ; $82A1C0  A2 19        Mx
    STX $4202                       ; $82A1C2  8E 02 42     Mx
    LDX $00A6                       ; $82A1C5  AE A6 00     Mx
    STX $4203                       ; $82A1C8  8E 03 42     Mx
    NOP                             ; $82A1CB  EA           Mx
    NOP                             ; $82A1CC  EA           Mx
    NOP                             ; $82A1CD  EA           Mx
    NOP                             ; $82A1CE  EA           Mx
    LDA $4216                       ; $82A1CF  AD 16 42     Mx
    STA $00A8                       ; $82A1D2  8D A8 00     Mx
    LDX #$19                        ; $82A1D5  A2 19        Mx
    STX $4202                       ; $82A1D7  8E 02 42     Mx
    LDX $00A7                       ; $82A1DA  AE A7 00     Mx
    STX $4203                       ; $82A1DD  8E 03 42     Mx
    NOP                             ; $82A1E0  EA           Mx
    NOP                             ; $82A1E1  EA           Mx
    STZ $00F4                       ; $82A1E2  9C F4 00     Mx
    STZ $00F2                       ; $82A1E5  9C F2 00     Mx
    LDA $4216                       ; $82A1E8  AD 16 42     Mx
    STA $00F3                       ; $82A1EB  8D F3 00     Mx
    LDA $00F2                       ; $82A1EE  AD F2 00     Mx
    CLC                             ; $82A1F1  18           Mx
    ADC $00A8                       ; $82A1F2  6D A8 00     Mx
    STA $00F2                       ; $82A1F5  8D F2 00     Mx
    LDA $00F4                       ; $82A1F8  AD F4 00     Mx
    ADC #$0000                      ; $82A1FB  69 00 00     Mx
    STA $00F4                       ; $82A1FE  8D F4 00     Mx
    LDA $00B2                       ; $82A201  AD B2 00     Mx
    BPL L_82A21F                    ; $82A204  10 19        Mx
    LDA $00F2                       ; $82A206  AD F2 00     Mx
    EOR #$FFFF                      ; $82A209  49 FF FF     Mx
    CLC                             ; $82A20C  18           Mx
    ADC #$0001                      ; $82A20D  69 01 00     Mx
    STA $00F2                       ; $82A210  8D F2 00     Mx
    LDA $00F4                       ; $82A213  AD F4 00     Mx
    EOR #$FFFF                      ; $82A216  49 FF FF     Mx
    ADC #$0000                      ; $82A219  69 00 00     Mx
    STA $00F4                       ; $82A21C  8D F4 00     Mx
L_82A21F:
    LDX $00F2                       ; $82A21F  AE F2 00     Mx
    LDA $00F3                       ; $82A222  AD F3 00     Mx
    STZ $00F2                       ; $82A225  9C F2 00     Mx
    STX $00F3                       ; $82A228  8E F3 00     Mx
    STA $00F4                       ; $82A22B  8D F4 00     Mx
    LDA $0BDB                       ; $82A22E  AD DB 0B     Mx
    SEC                             ; $82A231  38           Mx
    SBC $00F2                       ; $82A232  ED F2 00     Mx
    STA $0B8C                       ; $82A235  8D 8C 0B     Mx
    LDA $0BDD                       ; $82A238  AD DD 0B     Mx
    SBC $00F4                       ; $82A23B  ED F4 00     Mx
    STA $00DC                       ; $82A23E  8D DC 00     Mx
    LDA $0B8C                       ; $82A241  AD 8C 0B     Mx
    SEC                             ; $82A244  38           Mx
    SBC #$5C00                      ; $82A245  E9 00 5C     Mx
    STA $0B8C                       ; $82A248  8D 8C 0B     Mx
    LDA $00DC                       ; $82A24B  AD DC 00     Mx
    SBC #$002B                      ; $82A24E  E9 2B 00     Mx
    STA $00DC                       ; $82A251  8D DC 00     Mx
    LDA $00DC                       ; $82A254  AD DC 00     Mx
    CMP #$0070                      ; $82A257  C9 70 00     Mx
    BCS L_82A288                    ; $82A25A  B0 2C        Mx
    SEC                             ; $82A25C  38           Mx
    SBC #$0050                      ; $82A25D  E9 50 00     Mx
    BMI L_82A288                    ; $82A260  30 26        Mx
    LDA $080E                       ; $82A262  AD 0E 08     Mx
    SEC                             ; $82A265  38           Mx
    SBC #$0374                      ; $82A266  E9 74 03     Mx
    BPL L_82A272                    ; $82A269  10 07        Mx
    EOR #$FFFF                      ; $82A26B  49 FF FF     Mx
    CLC                             ; $82A26E  18           Mx
    ADC #$0001                      ; $82A26F  69 01 00     Mx
L_82A272:
    CMP #$000A                      ; $82A272  C9 0A 00     Mx
    BPL L_82A28B                    ; $82A275  10 14        Mx
    LDA $0806                       ; $82A277  AD 06 08     Mx
    BPL L_82A283                    ; $82A27A  10 07        Mx
    EOR #$FFFF                      ; $82A27C  49 FF FF     Mx
    CLC                             ; $82A27F  18           Mx
    ADC #$0001                      ; $82A280  69 01 00     Mx
L_82A283:
    CMP #$00FA                      ; $82A283  C9 FA 00     Mx
    BCC L_82A28B                    ; $82A286  90 03        Mx
L_82A288:
    JMP L_82A67E                    ; $82A288  4C 7E A6     Mx
L_82A28B:
    LDA $0BE4                       ; $82A28B  AD E4 0B     Mx
    STA $00B2                       ; $82A28E  8D B2 00     Mx
    BPL L_82A29D                    ; $82A291  10 0A        Mx
    EOR #$FFFF                      ; $82A293  49 FF FF     Mx
    CLC                             ; $82A296  18           Mx
    ADC #$0001                      ; $82A297  69 01 00     Mx
    STA $00A6                       ; $82A29A  8D A6 00     Mx
L_82A29D:
    LDX #$19                        ; $82A29D  A2 19        Mx
    STX $4202                       ; $82A29F  8E 02 42     Mx
    LDX $00A6                       ; $82A2A2  AE A6 00     Mx
    STX $4203                       ; $82A2A5  8E 03 42     Mx
    NOP                             ; $82A2A8  EA           Mx
    NOP                             ; $82A2A9  EA           Mx
    NOP                             ; $82A2AA  EA           Mx
    NOP                             ; $82A2AB  EA           Mx
    LDA $4216                       ; $82A2AC  AD 16 42     Mx
    STA $00A8                       ; $82A2AF  8D A8 00     Mx
    LDX #$19                        ; $82A2B2  A2 19        Mx
    STX $4202                       ; $82A2B4  8E 02 42     Mx
    LDX $00A7                       ; $82A2B7  AE A7 00     Mx
    STX $4203                       ; $82A2BA  8E 03 42     Mx
    NOP                             ; $82A2BD  EA           Mx
    NOP                             ; $82A2BE  EA           Mx
    STZ $00F4                       ; $82A2BF  9C F4 00     Mx
    STZ $00F2                       ; $82A2C2  9C F2 00     Mx
    LDA $4216                       ; $82A2C5  AD 16 42     Mx
    STA $00F3                       ; $82A2C8  8D F3 00     Mx
    LDA $00F2                       ; $82A2CB  AD F2 00     Mx
    CLC                             ; $82A2CE  18           Mx
    ADC $00A8                       ; $82A2CF  6D A8 00     Mx
    STA $00F2                       ; $82A2D2  8D F2 00     Mx
    LDA $00F4                       ; $82A2D5  AD F4 00     Mx
    ADC #$0000                      ; $82A2D8  69 00 00     Mx
    STA $00F4                       ; $82A2DB  8D F4 00     Mx
    LDA $00B2                       ; $82A2DE  AD B2 00     Mx
    BPL L_82A2FC                    ; $82A2E1  10 19        Mx
    LDA $00F2                       ; $82A2E3  AD F2 00     Mx
    EOR #$FFFF                      ; $82A2E6  49 FF FF     Mx
    CLC                             ; $82A2E9  18           Mx
    ADC #$0001                      ; $82A2EA  69 01 00     Mx
    STA $00F2                       ; $82A2ED  8D F2 00     Mx
    LDA $00F4                       ; $82A2F0  AD F4 00     Mx
    EOR #$FFFF                      ; $82A2F3  49 FF FF     Mx
    ADC #$0000                      ; $82A2F6  69 00 00     Mx
    STA $00F4                       ; $82A2F9  8D F4 00     Mx
L_82A2FC:
    LDA $0BD9                       ; $82A2FC  AD D9 0B     Mx
    CLC                             ; $82A2FF  18           Mx
    ADC $00F3                       ; $82A300  6D F3 00     Mx
    STA $00E2                       ; $82A303  8D E2 00     Mx
    LDA $0BEC                       ; $82A306  AD EC 0B     Mx
    STA $00B2                       ; $82A309  8D B2 00     Mx
    BPL L_82A318                    ; $82A30C  10 0A        Mx
    EOR #$FFFF                      ; $82A30E  49 FF FF     Mx
    CLC                             ; $82A311  18           Mx
    ADC #$0001                      ; $82A312  69 01 00     Mx
    STA $00A6                       ; $82A315  8D A6 00     Mx
L_82A318:
    LDX #$19                        ; $82A318  A2 19        Mx
    STX $4202                       ; $82A31A  8E 02 42     Mx
    LDX $00A6                       ; $82A31D  AE A6 00     Mx
    STX $4203                       ; $82A320  8E 03 42     Mx
    NOP                             ; $82A323  EA           Mx
    NOP                             ; $82A324  EA           Mx
    NOP                             ; $82A325  EA           Mx
    NOP                             ; $82A326  EA           Mx
    LDA $4216                       ; $82A327  AD 16 42     Mx
    STA $00A8                       ; $82A32A  8D A8 00     Mx
    LDX #$19                        ; $82A32D  A2 19        Mx
    STX $4202                       ; $82A32F  8E 02 42     Mx
    LDX $00A7                       ; $82A332  AE A7 00     Mx
    STX $4203                       ; $82A335  8E 03 42     Mx
    NOP                             ; $82A338  EA           Mx
    NOP                             ; $82A339  EA           Mx
    STZ $00F4                       ; $82A33A  9C F4 00     Mx
    STZ $00F2                       ; $82A33D  9C F2 00     Mx
    LDA $4216                       ; $82A340  AD 16 42     Mx
    STA $00F3                       ; $82A343  8D F3 00     Mx
    LDA $00F2                       ; $82A346  AD F2 00     Mx
    CLC                             ; $82A349  18           Mx
    ADC $00A8                       ; $82A34A  6D A8 00     Mx
    STA $00F2                       ; $82A34D  8D F2 00     Mx
    LDA $00F4                       ; $82A350  AD F4 00     Mx
    ADC #$0000                      ; $82A353  69 00 00     Mx
    STA $00F4                       ; $82A356  8D F4 00     Mx
    LDA $00B2                       ; $82A359  AD B2 00     Mx
    BPL L_82A377                    ; $82A35C  10 19        Mx
    LDA $00F2                       ; $82A35E  AD F2 00     Mx
    EOR #$FFFF                      ; $82A361  49 FF FF     Mx
    CLC                             ; $82A364  18           Mx
    ADC #$0001                      ; $82A365  69 01 00     Mx
    STA $00F2                       ; $82A368  8D F2 00     Mx
    LDA $00F4                       ; $82A36B  AD F4 00     Mx
    EOR #$FFFF                      ; $82A36E  49 FF FF     Mx
    ADC #$0000                      ; $82A371  69 00 00     Mx
    STA $00F4                       ; $82A374  8D F4 00     Mx
L_82A377:
    LDA $0BE1                       ; $82A377  AD E1 0B     Mx
    CLC                             ; $82A37A  18           Mx
    ADC $00F3                       ; $82A37B  6D F3 00     Mx
    STA $00E5                       ; $82A37E  8D E5 00     Mx
    LDA $00E5                       ; $82A381  AD E5 00     Mx
    SEC                             ; $82A384  38           Mx
    SBC #$0374                      ; $82A385  E9 74 03     Mx
    BPL L_82A391                    ; $82A388  10 07        Mx
    EOR #$FFFF                      ; $82A38A  49 FF FF     Mx
    CLC                             ; $82A38D  18           Mx
    ADC #$0001                      ; $82A38E  69 01 00     Mx
L_82A391:
    STA $00D3                       ; $82A391  8D D3 00     Mx
    CMP #$0020                      ; $82A394  C9 20 00     Mx
    BPL L_82A3C0                    ; $82A397  10 27        Mx
    LDA $00E2                       ; $82A399  AD E2 00     Mx
    BPL L_82A3A5                    ; $82A39C  10 07        Mx
    EOR #$FFFF                      ; $82A39E  49 FF FF     Mx
    CLC                             ; $82A3A1  18           Mx
    ADC #$0001                      ; $82A3A2  69 01 00     Mx
L_82A3A5:
    CMP #$00F8                      ; $82A3A5  C9 F8 00     Mx
    BCS L_82A3C0                    ; $82A3A8  B0 16        Mx
    STA $00D0                       ; $82A3AA  8D D0 00     Mx
    LDA $00D3                       ; $82A3AD  AD D3 00     Mx
    CMP #$000C                      ; $82A3B0  C9 0C 00     Mx
    BCC L_82A3B8                    ; $82A3B3  90 03        Mx
L_82A3B5:
    JMP L_82A67E                    ; $82A3B5  4C 7E A6     Mx
L_82A3B8:
    LDA $00D0                       ; $82A3B8  AD D0 00     Mx
    CMP #$00FA                      ; $82A3BB  C9 FA 00     Mx
    BCS L_82A3B5                    ; $82A3BE  B0 F5        Mx
L_82A3C0:
    LDA $0806                       ; $82A3C0  AD 06 08     Mx
    STA $00D0                       ; $82A3C3  8D D0 00     Mx
    LDA $080E                       ; $82A3C6  AD 0E 08     Mx
    STA $00D3                       ; $82A3C9  8D D3 00     Mx
    JSL $00AEF9                     ; $82A3CC  22 F9 AE 00  Mx
    LDA $00D3                       ; $82A3D0  AD D3 00     Mx
    CMP #$0030                      ; $82A3D3  C9 30 00     Mx
    BCS L_82A3B5                    ; $82A3D6  B0 DD        Mx
    LDX $00D0                       ; $82A3D8  AE D0 00     Mx
    LDA $A7E377,X                   ; $82A3DB  BF 77 E3 A7  Mx
    AND #$0007                      ; $82A3DF  29 07 00     Mx
    STA $07F0                       ; $82A3E2  8D F0 07     Mx
    LDA #$0001                      ; $82A3E5  A9 01 00     Mx
    STA $0858                       ; $82A3E8  8D 58 08     Mx
    LDA $07D8                       ; $82A3EB  AD D8 07     Mx
    AND #$00FF                      ; $82A3EE  29 FF 00     Mx
    STA $0A9C                       ; $82A3F1  8D 9C 0A     Mx
    JMP L_82A67E                    ; $82A3F4  4C 7E A6     Mx
L_82A3F7:
    LDA $00DC                       ; $82A3F7  AD DC 00     Mx
    STA $00F6                       ; $82A3FA  8D F6 00     Mx
    LDA #$0019                      ; $82A3FD  A9 19 00     Mx
    STA $00DC                       ; $82A400  8D DC 00     Mx
    LDA $0806                       ; $82A403  AD 06 08     Mx
    SEC                             ; $82A406  38           Mx
    SBC $00E2                       ; $82A407  ED E2 00     Mx
    BPL L_82A413                    ; $82A40A  10 07        Mx
    EOR #$FFFF                      ; $82A40C  49 FF FF     Mx
    CLC                             ; $82A40F  18           Mx
    ADC #$0001                      ; $82A410  69 01 00     Mx
L_82A413:
    STA $00D9                       ; $82A413  8D D9 00     Mx
    LDA $080E                       ; $82A416  AD 0E 08     Mx
    SEC                             ; $82A419  38           Mx
    SBC $00E5                       ; $82A41A  ED E5 00     Mx
    BPL L_82A426                    ; $82A41D  10 07        Mx
    EOR #$FFFF                      ; $82A41F  49 FF FF     Mx
    CLC                             ; $82A422  18           Mx
    ADC #$0001                      ; $82A423  69 01 00     Mx
L_82A426:
    STA $00DF                       ; $82A426  8D DF 00     Mx
    LDA $00D9                       ; $82A429  AD D9 00     Mx
    STA $00E5                       ; $82A42C  8D E5 00     Mx
    BPL L_82A43B                    ; $82A42F  10 0A        Mx
    EOR #$FFFF                      ; $82A431  49 FF FF     Mx
    CLC                             ; $82A434  18           Mx
    ADC #$0001                      ; $82A435  69 01 00     Mx
    STA $00D9                       ; $82A438  8D D9 00     Mx
L_82A43B:
    LDX $00DC                       ; $82A43B  AE DC 00     Mx
    STX $00EE                       ; $82A43E  8E EE 00     Mx
    LDA #$0000                      ; $82A441  A9 00 00     Mx
    STA $00EA                       ; $82A444  8D EA 00     Mx
    LDA $00D9                       ; $82A447  AD D9 00     Mx
    STA $4204                       ; $82A44A  8D 04 42     Mx
    LDX $00EE                       ; $82A44D  AE EE 00     Mx
    STX $4206                       ; $82A450  8E 06 42     Mx
    NOP                             ; $82A453  EA           Mx
    NOP                             ; $82A454  EA           Mx
    NOP                             ; $82A455  EA           Mx
    NOP                             ; $82A456  EA           Mx
    NOP                             ; $82A457  EA           Mx
    NOP                             ; $82A458  EA           Mx
    NOP                             ; $82A459  EA           Mx
    STZ $00F0                       ; $82A45A  9C F0 00     Mx
    LDA $4214                       ; $82A45D  AD 14 42     Mx
    STA $00F2                       ; $82A460  8D F2 00     Mx
    LDX $4216                       ; $82A463  AE 16 42     Mx
    STX $00EC                       ; $82A466  8E EC 00     Mx
    LDA $00EB                       ; $82A469  AD EB 00     Mx
    STA $4204                       ; $82A46C  8D 04 42     Mx
    LDX $00EE                       ; $82A46F  AE EE 00     Mx
    STX $4206                       ; $82A472  8E 06 42     Mx
    NOP                             ; $82A475  EA           Mx
    NOP                             ; $82A476  EA           Mx
    NOP                             ; $82A477  EA           Mx
    NOP                             ; $82A478  EA           Mx
    NOP                             ; $82A479  EA           Mx
    NOP                             ; $82A47A  EA           Mx
    NOP                             ; $82A47B  EA           Mx
    STZ $00F0                       ; $82A47C  9C F0 00     Mx
    LDA $4214                       ; $82A47F  AD 14 42     Mx
    ORA $00F1                       ; $82A482  0D F1 00     Mx
    STA $00F1                       ; $82A485  8D F1 00     Mx
    LDX $4216                       ; $82A488  AE 16 42     Mx
    STX $00EB                       ; $82A48B  8E EB 00     Mx
    LDA $00EA                       ; $82A48E  AD EA 00     Mx
    STA $4204                       ; $82A491  8D 04 42     Mx
    LDX $00EE                       ; $82A494  AE EE 00     Mx
    STX $4206                       ; $82A497  8E 06 42     Mx
    NOP                             ; $82A49A  EA           Mx
    NOP                             ; $82A49B  EA           Mx
    NOP                             ; $82A49C  EA           Mx
    NOP                             ; $82A49D  EA           Mx
    NOP                             ; $82A49E  EA           Mx
    NOP                             ; $82A49F  EA           Mx
    NOP                             ; $82A4A0  EA           Mx
    NOP                             ; $82A4A1  EA           Mx
    LDA $4214                       ; $82A4A2  AD 14 42     Mx
    ORA $00F0                       ; $82A4A5  0D F0 00     Mx
    STA $00F0                       ; $82A4A8  8D F0 00     Mx
    LDA $00F0                       ; $82A4AB  AD F0 00     Mx
    STA $00C2                       ; $82A4AE  8D C2 00     Mx
    LDA $00F2                       ; $82A4B1  AD F2 00     Mx
    STA $00C4                       ; $82A4B4  8D C4 00     Mx
    LDA $00E5                       ; $82A4B7  AD E5 00     Mx
    BPL L_82A4D5                    ; $82A4BA  10 19        Mx
    LDA $00C2                       ; $82A4BC  AD C2 00     Mx
    EOR #$FFFF                      ; $82A4BF  49 FF FF     Mx
    CLC                             ; $82A4C2  18           Mx
    ADC #$0001                      ; $82A4C3  69 01 00     Mx
    STA $00C2                       ; $82A4C6  8D C2 00     Mx
    LDA $00C4                       ; $82A4C9  AD C4 00     Mx
    EOR #$FFFF                      ; $82A4CC  49 FF FF     Mx
    ADC #$0000                      ; $82A4CF  69 00 00     Mx
    STA $00C4                       ; $82A4D2  8D C4 00     Mx
L_82A4D5:
    LDA $00DF                       ; $82A4D5  AD DF 00     Mx
    STA $00E5                       ; $82A4D8  8D E5 00     Mx
    BPL L_82A4E7                    ; $82A4DB  10 0A        Mx
    EOR #$FFFF                      ; $82A4DD  49 FF FF     Mx
    CLC                             ; $82A4E0  18           Mx
    ADC #$0001                      ; $82A4E1  69 01 00     Mx
    STA $00DF                       ; $82A4E4  8D DF 00     Mx
L_82A4E7:
    LDX $00DC                       ; $82A4E7  AE DC 00     Mx
    STX $00EE                       ; $82A4EA  8E EE 00     Mx
    LDA #$0000                      ; $82A4ED  A9 00 00     Mx
    STA $00EA                       ; $82A4F0  8D EA 00     Mx
    LDA $00DF                       ; $82A4F3  AD DF 00     Mx
    STA $4204                       ; $82A4F6  8D 04 42     Mx
    LDX $00EE                       ; $82A4F9  AE EE 00     Mx
    STX $4206                       ; $82A4FC  8E 06 42     Mx
    NOP                             ; $82A4FF  EA           Mx
    NOP                             ; $82A500  EA           Mx
    NOP                             ; $82A501  EA           Mx
    NOP                             ; $82A502  EA           Mx
    NOP                             ; $82A503  EA           Mx
    NOP                             ; $82A504  EA           Mx
    NOP                             ; $82A505  EA           Mx
    STZ $00F0                       ; $82A506  9C F0 00     Mx
    LDA $4214                       ; $82A509  AD 14 42     Mx
    STA $00F2                       ; $82A50C  8D F2 00     Mx
    LDX $4216                       ; $82A50F  AE 16 42     Mx
    STX $00EC                       ; $82A512  8E EC 00     Mx
    LDA $00EB                       ; $82A515  AD EB 00     Mx
    STA $4204                       ; $82A518  8D 04 42     Mx
    LDX $00EE                       ; $82A51B  AE EE 00     Mx
    STX $4206                       ; $82A51E  8E 06 42     Mx
    NOP                             ; $82A521  EA           Mx
    NOP                             ; $82A522  EA           Mx
    NOP                             ; $82A523  EA           Mx
    NOP                             ; $82A524  EA           Mx
    NOP                             ; $82A525  EA           Mx
    NOP                             ; $82A526  EA           Mx
    NOP                             ; $82A527  EA           Mx
    STZ $00F0                       ; $82A528  9C F0 00     Mx
    LDA $4214                       ; $82A52B  AD 14 42     Mx
    ORA $00F1                       ; $82A52E  0D F1 00     Mx
    STA $00F1                       ; $82A531  8D F1 00     Mx
    LDX $4216                       ; $82A534  AE 16 42     Mx
    STX $00EB                       ; $82A537  8E EB 00     Mx
    LDA $00EA                       ; $82A53A  AD EA 00     Mx
    STA $4204                       ; $82A53D  8D 04 42     Mx
    LDX $00EE                       ; $82A540  AE EE 00     Mx
    STX $4206                       ; $82A543  8E 06 42     Mx
    NOP                             ; $82A546  EA           Mx
    NOP                             ; $82A547  EA           Mx
    NOP                             ; $82A548  EA           Mx
    NOP                             ; $82A549  EA           Mx
    NOP                             ; $82A54A  EA           Mx
    NOP                             ; $82A54B  EA           Mx
    NOP                             ; $82A54C  EA           Mx
    NOP                             ; $82A54D  EA           Mx
    LDA $4214                       ; $82A54E  AD 14 42     Mx
    ORA $00F0                       ; $82A551  0D F0 00     Mx
    STA $00F0                       ; $82A554  8D F0 00     Mx
    LDA $00F0                       ; $82A557  AD F0 00     Mx
    STA $00C6                       ; $82A55A  8D C6 00     Mx
    LDA $00F2                       ; $82A55D  AD F2 00     Mx
    STA $00C8                       ; $82A560  8D C8 00     Mx
    LDA $00E5                       ; $82A563  AD E5 00     Mx
    BPL L_82A581                    ; $82A566  10 19        Mx
    LDA $00C6                       ; $82A568  AD C6 00     Mx
    EOR #$FFFF                      ; $82A56B  49 FF FF     Mx
    CLC                             ; $82A56E  18           Mx
    ADC #$0001                      ; $82A56F  69 01 00     Mx
    STA $00C6                       ; $82A572  8D C6 00     Mx
    LDA $00C8                       ; $82A575  AD C8 00     Mx
    EOR #$FFFF                      ; $82A578  49 FF FF     Mx
    ADC #$0000                      ; $82A57B  69 00 00     Mx
    STA $00C8                       ; $82A57E  8D C8 00     Mx
L_82A581:
    LDA $00C2                       ; $82A581  AD C2 00     Mx
    STA $0810                       ; $82A584  8D 10 08     Mx
    LDA $00C4                       ; $82A587  AD C4 00     Mx
    STA $0812                       ; $82A58A  8D 12 08     Mx
    LDA $00C6                       ; $82A58D  AD C6 00     Mx
    STA $0818                       ; $82A590  8D 18 08     Mx
    LDA $00C8                       ; $82A593  AD C8 00     Mx
    STA $081A                       ; $82A596  8D 1A 08     Mx
    LDA #$0080                      ; $82A599  A9 80 00     Mx
    STA $00D3                       ; $82A59C  8D D3 00     Mx
    SEP #$20                        ; $82A59F  E2 20        Mx
    LDA $00DC                       ; $82A5A1  AD DC 00     mx
    STA $4202                       ; $82A5A4  8D 02 42     mx
    LDA $00D3                       ; $82A5A7  AD D3 00     mx
    STA $4203                       ; $82A5AA  8D 03 42     mx
    NOP                             ; $82A5AD  EA           mx
    NOP                             ; $82A5AE  EA           mx
    NOP                             ; $82A5AF  EA           mx
    REP #$20                        ; $82A5B0  C2 20        mx
    LDA $4216                       ; $82A5B2  AD 16 42     Mx
    STA $00D3                       ; $82A5B5  8D D3 00     Mx
    STA $00A8                       ; $82A5B8  8D A8 00     Mx
    LDA #$0012                      ; $82A5BB  A9 12 00     Mx
    STA $00D3                       ; $82A5BE  8D D3 00     Mx
    SEP #$20                        ; $82A5C1  E2 20        Mx
    LDA $00DC                       ; $82A5C3  AD DC 00     mx
    STA $4202                       ; $82A5C6  8D 02 42     mx
    LDA $00D3                       ; $82A5C9  AD D3 00     mx
    STA $4203                       ; $82A5CC  8D 03 42     mx
    NOP                             ; $82A5CF  EA           mx
    NOP                             ; $82A5D0  EA           mx
    NOP                             ; $82A5D1  EA           mx
    REP #$20                        ; $82A5D2  C2 20        mx
    LDA $4216                       ; $82A5D4  AD 16 42     Mx
    STA $00D3                       ; $82A5D7  8D D3 00     Mx
    STZ $0B82                       ; $82A5DA  9C 82 0B     Mx
    STZ $0B80                       ; $82A5DD  9C 80 0B     Mx
    STA $0B81                       ; $82A5E0  8D 81 0B     Mx
    LDA $0B80                       ; $82A5E3  AD 80 0B     Mx
    CLC                             ; $82A5E6  18           Mx
    ADC $00A8                       ; $82A5E7  6D A8 00     Mx
    STA $0B80                       ; $82A5EA  8D 80 0B     Mx
    LDA $0B82                       ; $82A5ED  AD 82 0B     Mx
    ADC #$0000                      ; $82A5F0  69 00 00     Mx
    STA $0B82                       ; $82A5F3  8D 82 0B     Mx
    LDA $00F6                       ; $82A5F6  AD F6 00     Mx
    SEC                             ; $82A5F9  38           Mx
    SBC #$0038                      ; $82A5FA  E9 38 00     Mx
    STA $00F6                       ; $82A5FD  8D F6 00     Mx
    LDA $0808                       ; $82A600  AD 08 08     Mx
    SEC                             ; $82A603  38           Mx
    SBC #$0000                      ; $82A604  E9 00 00     Mx
    STA $00C2                       ; $82A607  8D C2 00     Mx
    LDA $080A                       ; $82A60A  AD 0A 08     Mx
    SBC $00F6                       ; $82A60D  ED F6 00     Mx
    STA $00C4                       ; $82A610  8D C4 00     Mx
    STA $00E5                       ; $82A613  8D E5 00     Mx
    BPL L_82A631                    ; $82A616  10 19        Mx
    LDA $00C2                       ; $82A618  AD C2 00     Mx
    EOR #$FFFF                      ; $82A61B  49 FF FF     Mx
    CLC                             ; $82A61E  18           Mx
    ADC #$0001                      ; $82A61F  69 01 00     Mx
    STA $00C2                       ; $82A622  8D C2 00     Mx
    LDA $00C4                       ; $82A625  AD C4 00     Mx
    EOR #$FFFF                      ; $82A628  49 FF FF     Mx
    ADC #$0000                      ; $82A62B  69 00 00     Mx
    STA $00C4                       ; $82A62E  8D C4 00     Mx
L_82A631:
    LDA $00C3                       ; $82A631  AD C3 00     Mx
    STA $4204                       ; $82A634  8D 04 42     Mx
    LDX $00DC                       ; $82A637  AE DC 00     Mx
    STX $4206                       ; $82A63A  8E 06 42     Mx
    NOP                             ; $82A63D  EA           Mx
    NOP                             ; $82A63E  EA           Mx
    NOP                             ; $82A63F  EA           Mx
    NOP                             ; $82A640  EA           Mx
    STZ $00EA                       ; $82A641  9C EA 00     Mx
    STZ $00EC                       ; $82A644  9C EC 00     Mx
    LDA $00E5                       ; $82A647  AD E5 00     Mx
    BPL L_82A659                    ; $82A64A  10 0D        Mx
    LDA $4214                       ; $82A64C  AD 14 42     Mx
    EOR #$FFFF                      ; $82A64F  49 FF FF     Mx
    CLC                             ; $82A652  18           Mx
    ADC #$0001                      ; $82A653  69 01 00     Mx
    JMP L_82A65C                    ; $82A656  4C 5C A6     Mx
L_82A659:
    LDA $4214                       ; $82A659  AD 14 42     Mx
L_82A65C:
    STA $00EB                       ; $82A65C  8D EB 00     Mx
    LDA $0B80                       ; $82A65F  AD 80 0B     Mx
    CLC                             ; $82A662  18           Mx
    ADC $00EA                       ; $82A663  6D EA 00     Mx
    STA $0B80                       ; $82A666  8D 80 0B     Mx
    LDA $0B82                       ; $82A669  AD 82 0B     Mx
    ADC $00EC                       ; $82A66C  6D EC 00     Mx
    STA $0B82                       ; $82A66F  8D 82 0B     Mx
    LDA $0B80                       ; $82A672  AD 80 0B     Mx
    STA $0814                       ; $82A675  8D 14 08     Mx
    LDA $0B82                       ; $82A678  AD 82 0B     Mx
    STA $0816                       ; $82A67B  8D 16 08     Mx
L_82A67E:
    LDX $07DC                       ; $82A67E  AE DC 07     Mx
    JSR ($A685,X)                   ; $82A681  FC 85 A6     Mx
    RTS                             ; $82A684  60           Mx
    db $C7,$A6,$7A,$A7,$7A,$A7,$FD,$AA,$17,$AC,$37,$B1,$1A,$B2,$42,$AF ; $82A685
    db $08,$AE,$37,$B1,$C7,$A6,$37,$B1,$FD,$AA,$37,$B1,$42,$AF,$DB,$B0 ; $82A695
    db $D4,$B3,$D4,$B3,$DA,$B2,$7A,$A7,$7A,$A7,$C7,$A6,$49,$B5,$BD,$B5 ; $82A6A5
    db $DA,$B7,$F5,$B8,$08,$AE,$52,$B9,$9E,$C7,$A5,$BF,$95,$C8,$37,$B1 ; $82A6B5
    db $37,$B1                                                         ; $82A6C5
L_82A6C7:
    LDA $087C                       ; $82A6C7  AD 7C 08     Mx
    BEQ L_82A6D2                    ; $82A6CA  F0 06        Mx
    LDA #$000C                      ; $82A6CC  A9 0C 00     Mx
    JMP L_82A72D                    ; $82A6CF  4C 2D A7     Mx
L_82A6D2:
    LDA $0854                       ; $82A6D2  AD 54 08     Mx
    AND #$0F00                      ; $82A6D5  29 00 0F     Mx
    BEQ L_82A6E0                    ; $82A6D8  F0 06        Mx
L_82A6DA:
    LDA #$0002                      ; $82A6DA  A9 02 00     Mx
    JMP L_82A72D                    ; $82A6DD  4C 2D A7     Mx
L_82A6E0:
    LDA $0812                       ; $82A6E0  AD 12 08     Mx
    ORA $0810                       ; $82A6E3  0D 10 08     Mx
    ORA $081A                       ; $82A6E6  0D 1A 08     Mx
    ORA $0818                       ; $82A6E9  0D 18 08     Mx
    ORA $0816                       ; $82A6EC  0D 16 08     Mx
    ORA $0814                       ; $82A6EF  0D 14 08     Mx
    BNE L_82A6DA                    ; $82A6F2  D0 E6        Mx
    LDA $07DE                       ; $82A6F4  AD DE 07     Mx
    BEQ L_82A6FE                    ; $82A6F7  F0 05        Mx
    DEC $07DE                       ; $82A6F9  CE DE 07     Mx
    BNE L_82A70C                    ; $82A6FC  D0 0E        Mx
L_82A6FE:
    LDA $0846                       ; $82A6FE  AD 46 08     Mx
    TAX                             ; $82A701  AA           Mx
    LDA $A7E377,X                   ; $82A702  BF 77 E3 A7  Mx
    AND #$0007                      ; $82A706  29 07 00     Mx
    STA $07F0                       ; $82A709  8D F0 07     Mx
L_82A70C:
    LDA $0858                       ; $82A70C  AD 58 08     Mx
    BEQ L_82A717                    ; $82A70F  F0 06        Mx
    JSR L_82C9D7                    ; $82A711  20 D7 C9     Mx
    JMP L_82A779                    ; $82A714  4C 79 A7     Mx
L_82A717:
    LDA $085C                       ; $82A717  AD 5C 08     Mx
    BEQ L_82A722                    ; $82A71A  F0 06        Mx
    JSR L_82D202                    ; $82A71C  20 02 D2     Mx
    JMP L_82A779                    ; $82A71F  4C 79 A7     Mx
L_82A722:
    LDA $0844                       ; $82A722  AD 44 08     Mx
    CMP #$0046                      ; $82A725  C9 46 00     Mx
    BCC L_82A748                    ; $82A728  90 1E        Mx
    LDA #$0000                      ; $82A72A  A9 00 00     Mx
L_82A72D:
    STA $07DC                       ; $82A72D  8D DC 07     Mx
    LDA #$FFFF                      ; $82A730  A9 FF FF     Mx
    STA $07E2                       ; $82A733  8D E2 07     Mx
    STZ $07E4                       ; $82A736  9C E4 07     Mx
    STZ $082A                       ; $82A739  9C 2A 08     Mx
    STZ $07E0                       ; $82A73C  9C E0 07     Mx
    LDA #$FFF8                      ; $82A73F  A9 F8 FF     Mx
    STA $07E6                       ; $82A742  8D E6 07     Mx
    JMP L_82A779                    ; $82A745  4C 79 A7     Mx
L_82A748:
    LDA $0866                       ; $82A748  AD 66 08     Mx
    BNE L_82A76A                    ; $82A74B  D0 1D        Mx
    LDA $0C19                       ; $82A74D  AD 19 0C     Mx
    BEQ L_82A76A                    ; $82A750  F0 18        Mx
    LDA $0806                       ; $82A752  AD 06 08     Mx
    SEC                             ; $82A755  38           Mx
    SBC $0BD9                       ; $82A756  ED D9 0B     Mx
    BCS L_82A76A                    ; $82A759  B0 0F        Mx
    LDA $0806                       ; $82A75B  AD 06 08     Mx
    BPL L_82A76A                    ; $82A75E  10 0A        Mx
    SEC                             ; $82A760  38           Mx
    SBC $A7E784                     ; $82A761  EF 84 E7 A7  Mx
    BCS L_82A76A                    ; $82A765  B0 03        Mx
    JMP L_82A773                    ; $82A767  4C 73 A7     Mx
L_82A76A:
    LDA #$0014                      ; $82A76A  A9 14 00     Mx
    STA $07DC                       ; $82A76D  8D DC 07     Mx
    JMP L_82A779                    ; $82A770  4C 79 A7     Mx
L_82A773:
    LDA #$002A                      ; $82A773  A9 2A 00     Mx
    STA $07DC                       ; $82A776  8D DC 07     Mx
L_82A779:
    RTS                             ; $82A779  60           Mx
L_82A77A:
    STZ $0814                       ; $82A77A  9C 14 08     Mx
    STZ $0816                       ; $82A77D  9C 16 08     Mx
    LDX $07F0                       ; $82A780  AE F0 07     Mx
    LDA $A7E35F,X                   ; $82A783  BF 5F E3 A7  Mx
    STA $00EA                       ; $82A787  8D EA 00     Mx
    SEP #$20                        ; $82A78A  E2 20        Mx
    LDA $0855                       ; $82A78C  AD 55 08     mx
    AND #$0F                        ; $82A78F  29 0F        mx
    BNE L_82A796                    ; $82A791  D0 03        mx
    LDA $00EA                       ; $82A793  AD EA 00     mx
L_82A796:
    TAX                             ; $82A796  AA           mx
    LDA $A7E367,X                   ; $82A797  BF 67 E3 A7  mx
    AND #$07                        ; $82A79B  29 07        mx
    STA $07F0                       ; $82A79D  8D F0 07     mx
    REP #$20                        ; $82A7A0  C2 20        mx
    LDA $0866                       ; $82A7A2  AD 66 08     Mx
    BNE L_82A7C9                    ; $82A7A5  D0 22        Mx
    LDA $0C19                       ; $82A7A7  AD 19 0C     Mx
    BEQ L_82A7C9                    ; $82A7AA  F0 1D        Mx
    LDA $0806                       ; $82A7AC  AD 06 08     Mx
    SEC                             ; $82A7AF  38           Mx
    SBC $0BD9                       ; $82A7B0  ED D9 0B     Mx
    BCS L_82A7C9                    ; $82A7B3  B0 14        Mx
    LDA $0806                       ; $82A7B5  AD 06 08     Mx
    BPL L_82A7C9                    ; $82A7B8  10 0F        Mx
    SEC                             ; $82A7BA  38           Mx
    SBC $A7E784                     ; $82A7BB  EF 84 E7 A7  Mx
    BCS L_82A7C9                    ; $82A7BF  B0 08        Mx
    LDA $0844                       ; $82A7C1  AD 44 08     Mx
    CMP #$0046                      ; $82A7C4  C9 46 00     Mx
    BCC L_82A7E6                    ; $82A7C7  90 1D        Mx
L_82A7C9:
    LDA $087C                       ; $82A7C9  AD 7C 08     Mx
    BNE L_82A7D7                    ; $82A7CC  D0 09        Mx
    LDA #$0002                      ; $82A7CE  A9 02 00     Mx
    STA $07DC                       ; $82A7D1  8D DC 07     Mx
    JMP L_82A857                    ; $82A7D4  4C 57 A8     Mx
L_82A7D7:
    LDA #$0004                      ; $82A7D7  A9 04 00     Mx
    STA $07DC                       ; $82A7DA  8D DC 07     Mx
    LDA #$0001                      ; $82A7DD  A9 01 00     Mx
    STA $086A                       ; $82A7E0  8D 6A 08     Mx
    JMP L_82A857                    ; $82A7E3  4C 57 A8     Mx
L_82A7E6:
    LDX $0846                       ; $82A7E6  AE 46 08     Mx
    LDA $A7E377,X                   ; $82A7E9  BF 77 E3 A7  Mx
    AND #$0007                      ; $82A7ED  29 07 00     Mx
    STA $00A6                       ; $82A7F0  8D A6 00     Mx
    CMP $07F0                       ; $82A7F3  CD F0 07     Mx
    BEQ L_82A83E                    ; $82A7F6  F0 46        Mx
    CLC                             ; $82A7F8  18           Mx
    ADC #$0004                      ; $82A7F9  69 04 00     Mx
    AND #$0007                      ; $82A7FC  29 07 00     Mx
    CMP $07F0                       ; $82A7FF  CD F0 07     Mx
    BEQ L_82A83E                    ; $82A802  F0 3A        Mx
    LDA $07DC                       ; $82A804  AD DC 07     Mx
    CMP #$0026                      ; $82A807  C9 26 00     Mx
    BEQ L_82A851                    ; $82A80A  F0 45        Mx
    CMP #$0002                      ; $82A80C  C9 02 00     Mx
    BEQ L_82A820                    ; $82A80F  F0 0F        Mx
    LDA #$0026                      ; $82A811  A9 26 00     Mx
    STA $07DC                       ; $82A814  8D DC 07     Mx
    JMP L_82A851                    ; $82A817  4C 51 A8     Mx
L_82A81A:
    LDA #$0028                      ; $82A81A  A9 28 00     Mx
    JMP L_82A823                    ; $82A81D  4C 23 A8     Mx
L_82A820:
    LDA #$0026                      ; $82A820  A9 26 00     Mx
L_82A823:
    STA $07DC                       ; $82A823  8D DC 07     Mx
    LDA #$FFFF                      ; $82A826  A9 FF FF     Mx
    STA $07E2                       ; $82A829  8D E2 07     Mx
    STZ $07E4                       ; $82A82C  9C E4 07     Mx
    STZ $082A                       ; $82A82F  9C 2A 08     Mx
    STZ $07E0                       ; $82A832  9C E0 07     Mx
    LDA #$FFF8                      ; $82A835  A9 F8 FF     Mx
    STA $07E6                       ; $82A838  8D E6 07     Mx
    JMP L_82A851                    ; $82A83B  4C 51 A8     Mx
L_82A83E:
    LDA $07DC                       ; $82A83E  AD DC 07     Mx
    CMP #$0028                      ; $82A841  C9 28 00     Mx
    BEQ L_82A851                    ; $82A844  F0 0B        Mx
    CMP #$0002                      ; $82A846  C9 02 00     Mx
    BEQ L_82A81A                    ; $82A849  F0 CF        Mx
    LDA #$0028                      ; $82A84B  A9 28 00     Mx
    STA $07DC                       ; $82A84E  8D DC 07     Mx
L_82A851:
    LDA $00A6                       ; $82A851  AD A6 00     Mx
    STA $07F0                       ; $82A854  8D F0 07     Mx
L_82A857:
    LDX #$00                        ; $82A857  A2 00        Mx
    LDA $0854                       ; $82A859  AD 54 08     Mx
    STA $00E8                       ; $82A85C  8D E8 00     Mx
    AND #$0F00                      ; $82A85F  29 00 0F     Mx
    BNE L_82A8A1                    ; $82A862  D0 3D        Mx
    LDA $0812                       ; $82A864  AD 12 08     Mx
    ORA $0810                       ; $82A867  0D 10 08     Mx
    ORA $081A                       ; $82A86A  0D 1A 08     Mx
    ORA $0818                       ; $82A86D  0D 18 08     Mx
    BNE L_82A8A1                    ; $82A870  D0 2F        Mx
    LDA #$003C                      ; $82A872  A9 3C 00     Mx
    STA $07DE                       ; $82A875  8D DE 07     Mx
    LDA $087C                       ; $82A878  AD 7C 08     Mx
    BNE L_82A883                    ; $82A87B  D0 06        Mx
    LDA #$0000                      ; $82A87D  A9 00 00     Mx
    JMP L_82A886                    ; $82A880  4C 86 A8     Mx
L_82A883:
    LDA #$0006                      ; $82A883  A9 06 00     Mx
L_82A886:
    STA $07DC                       ; $82A886  8D DC 07     Mx
    LDA #$FFFF                      ; $82A889  A9 FF FF     Mx
    STA $07E2                       ; $82A88C  8D E2 07     Mx
    STZ $07E4                       ; $82A88F  9C E4 07     Mx
    STZ $082A                       ; $82A892  9C 2A 08     Mx
    STZ $07E0                       ; $82A895  9C E0 07     Mx
    LDA #$FFF8                      ; $82A898  A9 F8 FF     Mx
    STA $07E6                       ; $82A89B  8D E6 07     Mx
    JMP L_82AAFB                    ; $82A89E  4C FB AA     Mx
L_82A8A1:
    LDA $07EA                       ; $82A8A1  AD EA 07     Mx
    BEQ L_82A8AF                    ; $82A8A4  F0 09        Mx
    LDA #$0400                      ; $82A8A6  A9 00 04     Mx
    STA $00E5                       ; $82A8A9  8D E5 00     Mx
    JMP L_82A90C                    ; $82A8AC  4C 0C A9     Mx
L_82A8AF:
    LDA $08AA                       ; $82A8AF  AD AA 08     Mx
    STA $00E5                       ; $82A8B2  8D E5 00     Mx
    LDA $0CCB                       ; $82A8B5  AD CB 0C     Mx
    CMP #$0032                      ; $82A8B8  C9 32 00     Mx
    BCS L_82A8CC                    ; $82A8BB  B0 0F        Mx
    LDA $08B2                       ; $82A8BD  AD B2 08     Mx
    BMI L_82A8CC                    ; $82A8C0  30 0A        Mx
    LDA $00E5                       ; $82A8C2  AD E5 00     Mx
    CLC                             ; $82A8C5  18           Mx
    ADC #$0038                      ; $82A8C6  69 38 00     Mx
    STA $00E5                       ; $82A8C9  8D E5 00     Mx
L_82A8CC:
    LDA $089C                       ; $82A8CC  AD 9C 08     Mx
    BEQ L_82A8E0                    ; $82A8CF  F0 0F        Mx
    LDA $0866                       ; $82A8D1  AD 66 08     Mx
    BNE L_82A8E0                    ; $82A8D4  D0 0A        Mx
    LDA $00E5                       ; $82A8D6  AD E5 00     Mx
    CLC                             ; $82A8D9  18           Mx
    ADC #$0200                      ; $82A8DA  69 00 02     Mx
    STA $00E5                       ; $82A8DD  8D E5 00     Mx
L_82A8E0:
    LDA $0866                       ; $82A8E0  AD 66 08     Mx
    BMI L_82A8FD                    ; $82A8E3  30 18        Mx
    BEQ L_82A8FD                    ; $82A8E5  F0 16        Mx
    LDA $00E5                       ; $82A8E7  AD E5 00     Mx
    SEC                             ; $82A8EA  38           Mx
    SBC #$0028                      ; $82A8EB  E9 28 00     Mx
    STA $00E5                       ; $82A8EE  8D E5 00     Mx
    LDY $087C                       ; $82A8F1  AC 7C 08     Mx
    BEQ L_82A8FD                    ; $82A8F4  F0 07        Mx
    SEC                             ; $82A8F6  38           Mx
    SBC #$0040                      ; $82A8F7  E9 40 00     Mx
    STA $00E5                       ; $82A8FA  8D E5 00     Mx
L_82A8FD:
    LDA $086E                       ; $82A8FD  AD 6E 08     Mx
    BEQ L_82A90C                    ; $82A900  F0 0A        Mx
    LDA $00E5                       ; $82A902  AD E5 00     Mx
    CLC                             ; $82A905  18           Mx
    ADC #$00FC                      ; $82A906  69 FC 00     Mx
    STA $00E5                       ; $82A909  8D E5 00     Mx
L_82A90C:
    LDA $00E5                       ; $82A90C  AD E5 00     Mx
    LSR                             ; $82A90F  4A           Mx
    LSR                             ; $82A910  4A           Mx
    STA $00A4                       ; $82A911  8D A4 00     Mx
    LDA $00E5                       ; $82A914  AD E5 00     Mx
    SEC                             ; $82A917  38           Mx
    SBC $00A4                       ; $82A918  ED A4 00     Mx
    STA $00E2                       ; $82A91B  8D E2 00     Mx
    LDA $0854                       ; $82A91E  AD 54 08     Mx
    AND #$0100                      ; $82A921  29 00 01     Mx
    BNE L_82A929                    ; $82A924  D0 03        Mx
    JMP L_82A96D                    ; $82A926  4C 6D A9     Mx
L_82A929:
    LDX #$01                        ; $82A929  A2 01        Mx
    LDA $0810                       ; $82A92B  AD 10 08     Mx
    CLC                             ; $82A92E  18           Mx
    ADC #$8000                      ; $82A92F  69 00 80     Mx
    STA $0810                       ; $82A932  8D 10 08     Mx
    LDA $0812                       ; $82A935  AD 12 08     Mx
    ADC #$0000                      ; $82A938  69 00 00     Mx
    STA $0812                       ; $82A93B  8D 12 08     Mx
    BPL L_82A943                    ; $82A93E  10 03        Mx
    JMP L_82A96A                    ; $82A940  4C 6A A9     Mx
L_82A943:
    LDY $0818                       ; $82A943  AC 18 08     Mx
    BEQ L_82A959                    ; $82A946  F0 11        Mx
    LDA $00E5                       ; $82A948  AD E5 00     Mx
    LSR                             ; $82A94B  4A           Mx
    STA $00B2                       ; $82A94C  8D B2 00     Mx
    LDA $00E5                       ; $82A94F  AD E5 00     Mx
    SEC                             ; $82A952  38           Mx
    SBC $00B2                       ; $82A953  ED B2 00     Mx
    STA $00E5                       ; $82A956  8D E5 00     Mx
L_82A959:
    LDA $0811                       ; $82A959  AD 11 08     Mx
    CMP $00E5                       ; $82A95C  CD E5 00     Mx
    BCC L_82A9C4                    ; $82A95F  90 63        Mx
    LDA $00E5                       ; $82A961  AD E5 00     Mx
    STZ $0810                       ; $82A964  9C 10 08     Mx
    STA $0811                       ; $82A967  8D 11 08     Mx
L_82A96A:
    JMP L_82A9C4                    ; $82A96A  4C C4 A9     Mx
L_82A96D:
    LDA $0854                       ; $82A96D  AD 54 08     Mx
    AND #$0200                      ; $82A970  29 00 02     Mx
    BEQ L_82A96A                    ; $82A973  F0 F5        Mx
    LDX #$01                        ; $82A975  A2 01        Mx
    LDA $0810                       ; $82A977  AD 10 08     Mx
    SEC                             ; $82A97A  38           Mx
    SBC #$8000                      ; $82A97B  E9 00 80     Mx
    STA $0810                       ; $82A97E  8D 10 08     Mx
    LDA $0812                       ; $82A981  AD 12 08     Mx
    SBC #$0000                      ; $82A984  E9 00 00     Mx
    STA $0812                       ; $82A987  8D 12 08     Mx
    BMI L_82A98F                    ; $82A98A  30 03        Mx
    JMP L_82A9C4                    ; $82A98C  4C C4 A9     Mx
L_82A98F:
    LDY $0818                       ; $82A98F  AC 18 08     Mx
    BEQ L_82A9A5                    ; $82A992  F0 11        Mx
    LDA $00E5                       ; $82A994  AD E5 00     Mx
    LSR                             ; $82A997  4A           Mx
    STA $00B2                       ; $82A998  8D B2 00     Mx
    LDA $00E5                       ; $82A99B  AD E5 00     Mx
    SEC                             ; $82A99E  38           Mx
    SBC $00B2                       ; $82A99F  ED B2 00     Mx
    STA $00E5                       ; $82A9A2  8D E5 00     Mx
L_82A9A5:
    LDA $0811                       ; $82A9A5  AD 11 08     Mx
    CLC                             ; $82A9A8  18           Mx
    ADC $00E5                       ; $82A9A9  6D E5 00     Mx
    BCS L_82A9C4                    ; $82A9AC  B0 16        Mx
    LDA $00E5                       ; $82A9AE  AD E5 00     Mx
    EOR #$FFFF                      ; $82A9B1  49 FF FF     Mx
    CLC                             ; $82A9B4  18           Mx
    ADC #$0001                      ; $82A9B5  69 01 00     Mx
    STZ $0810                       ; $82A9B8  9C 10 08     Mx
    STZ $0812                       ; $82A9BB  9C 12 08     Mx
    DEC $0812                       ; $82A9BE  CE 12 08     Mx
    STA $0811                       ; $82A9C1  8D 11 08     Mx
L_82A9C4:
    CPX #$00                        ; $82A9C4  E0 00        Mx
    BNE L_82AA06                    ; $82A9C6  D0 3E        Mx
    LDA $0812                       ; $82A9C8  AD 12 08     Mx
    BMI L_82A9EB                    ; $82A9CB  30 1E        Mx
    LDA $0810                       ; $82A9CD  AD 10 08     Mx
    SEC                             ; $82A9D0  38           Mx
    SBC #$8000                      ; $82A9D1  E9 00 80     Mx
    STA $0810                       ; $82A9D4  8D 10 08     Mx
    LDA $0812                       ; $82A9D7  AD 12 08     Mx
    SBC #$0000                      ; $82A9DA  E9 00 00     Mx
    STA $0812                       ; $82A9DD  8D 12 08     Mx
    BCS L_82AA06                    ; $82A9E0  B0 24        Mx
    STZ $0812                       ; $82A9E2  9C 12 08     Mx
    STZ $0810                       ; $82A9E5  9C 10 08     Mx
    JMP L_82AA06                    ; $82A9E8  4C 06 AA     Mx
L_82A9EB:
    LDA $0810                       ; $82A9EB  AD 10 08     Mx
    CLC                             ; $82A9EE  18           Mx
    ADC #$8000                      ; $82A9EF  69 00 80     Mx
    STA $0810                       ; $82A9F2  8D 10 08     Mx
    LDA $0812                       ; $82A9F5  AD 12 08     Mx
    ADC #$0000                      ; $82A9F8  69 00 00     Mx
    STA $0812                       ; $82A9FB  8D 12 08     Mx
    BCC L_82AA06                    ; $82A9FE  90 06        Mx
    STZ $0812                       ; $82AA00  9C 12 08     Mx
    STZ $0810                       ; $82AA03  9C 10 08     Mx
L_82AA06:
    LDX #$00                        ; $82AA06  A2 00        Mx
    LDA $0854                       ; $82AA08  AD 54 08     Mx
    AND #$0400                      ; $82AA0B  29 00 04     Mx
    BNE L_82AA13                    ; $82AA0E  D0 03        Mx
    JMP L_82AA41                    ; $82AA10  4C 41 AA     Mx
L_82AA13:
    LDX #$01                        ; $82AA13  A2 01        Mx
    LDA $0818                       ; $82AA15  AD 18 08     Mx
    CLC                             ; $82AA18  18           Mx
    ADC #$4000                      ; $82AA19  69 00 40     Mx
    STA $0818                       ; $82AA1C  8D 18 08     Mx
    LDA $081A                       ; $82AA1F  AD 1A 08     Mx
    ADC #$0000                      ; $82AA22  69 00 00     Mx
    STA $081A                       ; $82AA25  8D 1A 08     Mx
    BPL L_82AA2D                    ; $82AA28  10 03        Mx
    JMP L_82AA82                    ; $82AA2A  4C 82 AA     Mx
L_82AA2D:
    LDA $0819                       ; $82AA2D  AD 19 08     Mx
    CMP $00E2                       ; $82AA30  CD E2 00     Mx
    BCC L_82AA82                    ; $82AA33  90 4D        Mx
    LDA $00E2                       ; $82AA35  AD E2 00     Mx
    STZ $0818                       ; $82AA38  9C 18 08     Mx
    STA $0819                       ; $82AA3B  8D 19 08     Mx
    JMP L_82AA82                    ; $82AA3E  4C 82 AA     Mx
L_82AA41:
    LDA $0854                       ; $82AA41  AD 54 08     Mx
    AND #$0800                      ; $82AA44  29 00 08     Mx
    BEQ L_82AA82                    ; $82AA47  F0 39        Mx
    LDX #$01                        ; $82AA49  A2 01        Mx
    LDA $0818                       ; $82AA4B  AD 18 08     Mx
    SEC                             ; $82AA4E  38           Mx
    SBC #$4000                      ; $82AA4F  E9 00 40     Mx
    STA $0818                       ; $82AA52  8D 18 08     Mx
    LDA $081A                       ; $82AA55  AD 1A 08     Mx
    SBC #$0000                      ; $82AA58  E9 00 00     Mx
    STA $081A                       ; $82AA5B  8D 1A 08     Mx
    BMI L_82AA63                    ; $82AA5E  30 03        Mx
    JMP L_82AA82                    ; $82AA60  4C 82 AA     Mx
L_82AA63:
    LDA $0819                       ; $82AA63  AD 19 08     Mx
    CLC                             ; $82AA66  18           Mx
    ADC $00E2                       ; $82AA67  6D E2 00     Mx
    BCS L_82AA82                    ; $82AA6A  B0 16        Mx
    LDA $00E2                       ; $82AA6C  AD E2 00     Mx
    EOR #$FFFF                      ; $82AA6F  49 FF FF     Mx
    CLC                             ; $82AA72  18           Mx
    ADC #$0001                      ; $82AA73  69 01 00     Mx
    STZ $0818                       ; $82AA76  9C 18 08     Mx
    STZ $081A                       ; $82AA79  9C 1A 08     Mx
    DEC $081A                       ; $82AA7C  CE 1A 08     Mx
    STA $0819                       ; $82AA7F  8D 19 08     Mx
L_82AA82:
    CPX #$00                        ; $82AA82  E0 00        Mx
    BNE L_82AAC4                    ; $82AA84  D0 3E        Mx
    LDA $081A                       ; $82AA86  AD 1A 08     Mx
    BMI L_82AAA9                    ; $82AA89  30 1E        Mx
    LDA $0818                       ; $82AA8B  AD 18 08     Mx
    SEC                             ; $82AA8E  38           Mx
    SBC #$8000                      ; $82AA8F  E9 00 80     Mx
    STA $0818                       ; $82AA92  8D 18 08     Mx
    LDA $081A                       ; $82AA95  AD 1A 08     Mx
    SBC #$0000                      ; $82AA98  E9 00 00     Mx
    STA $081A                       ; $82AA9B  8D 1A 08     Mx
    BCS L_82AAC4                    ; $82AA9E  B0 24        Mx
    STZ $081A                       ; $82AAA0  9C 1A 08     Mx
    STZ $0818                       ; $82AAA3  9C 18 08     Mx
    JMP L_82AAC4                    ; $82AAA6  4C C4 AA     Mx
L_82AAA9:
    LDA $0818                       ; $82AAA9  AD 18 08     Mx
    CLC                             ; $82AAAC  18           Mx
    ADC #$8000                      ; $82AAAD  69 00 80     Mx
    STA $0818                       ; $82AAB0  8D 18 08     Mx
    LDA $081A                       ; $82AAB3  AD 1A 08     Mx
    ADC #$0000                      ; $82AAB6  69 00 00     Mx
    STA $081A                       ; $82AAB9  8D 1A 08     Mx
    BCC L_82AAC4                    ; $82AABC  90 06        Mx
    STZ $081A                       ; $82AABE  9C 1A 08     Mx
    STZ $0818                       ; $82AAC1  9C 18 08     Mx
L_82AAC4:
    LDA $087C                       ; $82AAC4  AD 7C 08     Mx
    BEQ L_82AADA                    ; $82AAC7  F0 11        Mx
    LDA $07E2                       ; $82AAC9  AD E2 07     Mx
    CMP #$0006                      ; $82AACC  C9 06 00     Mx
    BNE L_82AADA                    ; $82AACF  D0 09        Mx
    LDA $07E4                       ; $82AAD1  AD E4 07     Mx
    BNE L_82AADA                    ; $82AAD4  D0 04        Mx
    JSL L_9A9608                    ; $82AAD6  22 08 96 9A  Mx
L_82AADA:
    LDA $0858                       ; $82AADA  AD 58 08     Mx
    BNE L_82AAE2                    ; $82AADD  D0 03        Mx
    JMP L_82AAF3                    ; $82AADF  4C F3 AA     Mx
L_82AAE2:
    LDA $087C                       ; $82AAE2  AD 7C 08     Mx
    BNE L_82AAED                    ; $82AAE5  D0 06        Mx
    JSR L_82C9D7                    ; $82AAE7  20 D7 C9     Mx
    JMP L_82AAFB                    ; $82AAEA  4C FB AA     Mx
L_82AAED:
    JSR L_82D53D                    ; $82AAED  20 3D D5     Mx
    JMP L_82AAFB                    ; $82AAF0  4C FB AA     Mx
L_82AAF3:
    LDA $085C                       ; $82AAF3  AD 5C 08     Mx
    BEQ L_82AAFB                    ; $82AAF6  F0 03        Mx
    JSR L_82D202                    ; $82AAF8  20 02 D2     Mx
L_82AAFB:
    RTS                             ; $82AAFB  60           Mx
L_82AAFC:
    RTS                             ; $82AAFC  60           Mx
L_82AAFD:
    LDA $0C19                       ; $82AAFD  AD 19 0C     Mx
    CMP $07D8                       ; $82AB00  CD D8 07     Mx
    BEQ L_82AB0B                    ; $82AB03  F0 06        Mx
    LDA #$0000                      ; $82AB05  A9 00 00     Mx
    JMP L_82AB16                    ; $82AB08  4C 16 AB     Mx
L_82AB0B:
    LDA $0854                       ; $82AB0B  AD 54 08     Mx
    AND #$0F00                      ; $82AB0E  29 00 0F     Mx
    BEQ L_82AB31                    ; $82AB11  F0 1E        Mx
L_82AB13:
    LDA #$0004                      ; $82AB13  A9 04 00     Mx
L_82AB16:
    STA $07DC                       ; $82AB16  8D DC 07     Mx
    LDA #$FFFF                      ; $82AB19  A9 FF FF     Mx
    STA $07E2                       ; $82AB1C  8D E2 07     Mx
    STZ $07E4                       ; $82AB1F  9C E4 07     Mx
    STZ $082A                       ; $82AB22  9C 2A 08     Mx
    STZ $07E0                       ; $82AB25  9C E0 07     Mx
    LDA #$FFF8                      ; $82AB28  A9 F8 FF     Mx
    STA $07E6                       ; $82AB2B  8D E6 07     Mx
    JMP L_82AC16                    ; $82AB2E  4C 16 AC     Mx
L_82AB31:
    LDA $07E2                       ; $82AB31  AD E2 07     Mx
    CMP #$0002                      ; $82AB34  C9 02 00     Mx
    BNE L_82AB41                    ; $82AB37  D0 08        Mx
    LDA $07DC                       ; $82AB39  AD DC 07     Mx
    CMP #$0018                      ; $82AB3C  C9 18 00     Mx
    BEQ L_82AB57                    ; $82AB3F  F0 16        Mx
L_82AB41:
    LDA $07F0                       ; $82AB41  AD F0 07     Mx
    ASL                             ; $82AB44  0A           Mx
    TAX                             ; $82AB45  AA           Mx
    LDA $07E2                       ; $82AB46  AD E2 07     Mx
    CMP $A6DBF3,X                   ; $82AB49  DF F3 DB A6  Mx
    BNE L_82AB60                    ; $82AB4D  D0 11        Mx
    LDA $07DC                       ; $82AB4F  AD DC 07     Mx
    CMP #$0018                      ; $82AB52  C9 18 00     Mx
    BEQ L_82AB60                    ; $82AB55  F0 09        Mx
L_82AB57:
    LDA $07E4                       ; $82AB57  AD E4 07     Mx
    BNE L_82AB60                    ; $82AB5A  D0 04        Mx
    JSL L_9A9608                    ; $82AB5C  22 08 96 9A  Mx
L_82AB60:
    LDA $0812                       ; $82AB60  AD 12 08     Mx
    ORA $0810                       ; $82AB63  0D 10 08     Mx
    ORA $081A                       ; $82AB66  0D 1A 08     Mx
    ORA $0818                       ; $82AB69  0D 18 08     Mx
    ORA $0816                       ; $82AB6C  0D 16 08     Mx
    ORA $0814                       ; $82AB6F  0D 14 08     Mx
    BNE L_82AB13                    ; $82AB72  D0 9F        Mx
    LDA $07DE                       ; $82AB74  AD DE 07     Mx
    BEQ L_82AB8C                    ; $82AB77  F0 13        Mx
    DEC $07DE                       ; $82AB79  CE DE 07     Mx
    BNE L_82AB8C                    ; $82AB7C  D0 0E        Mx
    LDA $083E                       ; $82AB7E  AD 3E 08     Mx
    TAX                             ; $82AB81  AA           Mx
    LDA $A7E377,X                   ; $82AB82  BF 77 E3 A7  Mx
    AND #$0007                      ; $82AB86  29 07 00     Mx
    STA $07F0                       ; $82AB89  8D F0 07     Mx
L_82AB8C:
    LDA $0858                       ; $82AB8C  AD 58 08     Mx
    BNE L_82AB94                    ; $82AB8F  D0 03        Mx
    JMP L_82AB9A                    ; $82AB91  4C 9A AB     Mx
L_82AB94:
    JSR L_82D53D                    ; $82AB94  20 3D D5     Mx
    JMP L_82AC16                    ; $82AB97  4C 16 AC     Mx
L_82AB9A:
    LDA $085C                       ; $82AB9A  AD 5C 08     Mx
    BEQ L_82ABA5                    ; $82AB9D  F0 06        Mx
    JSR L_82D202                    ; $82AB9F  20 02 D2     Mx
    JMP L_82AC16                    ; $82ABA2  4C 16 AC     Mx
L_82ABA5:
    LDA $07DE                       ; $82ABA5  AD DE 07     Mx
    BEQ L_82ABAD                    ; $82ABA8  F0 03        Mx
    JMP L_82AC16                    ; $82ABAA  4C 16 AC     Mx
L_82ABAD:
    LDA $0850                       ; $82ABAD  AD 50 08     Mx
    CMP #$0046                      ; $82ABB0  C9 46 00     Mx
    BCC L_82ABBD                    ; $82ABB3  90 08        Mx
    LDA $0852                       ; $82ABB5  AD 52 08     Mx
    CMP #$0046                      ; $82ABB8  C9 46 00     Mx
    BCS L_82ABF3                    ; $82ABBB  B0 36        Mx
L_82ABBD:
    LDA $07DC                       ; $82ABBD  AD DC 07     Mx
    CMP #$0018                      ; $82ABC0  C9 18 00     Mx
    BNE L_82ABC8                    ; $82ABC3  D0 03        Mx
    JMP L_82AC16                    ; $82ABC5  4C 16 AC     Mx
L_82ABC8:
    LDA #$0018                      ; $82ABC8  A9 18 00     Mx
    STA $07DC                       ; $82ABCB  8D DC 07     Mx
    LDA #$FFFF                      ; $82ABCE  A9 FF FF     Mx
    STA $07E2                       ; $82ABD1  8D E2 07     Mx
    STZ $07E4                       ; $82ABD4  9C E4 07     Mx
    STZ $082A                       ; $82ABD7  9C 2A 08     Mx
    STZ $07E0                       ; $82ABDA  9C E0 07     Mx
    LDA #$FFF8                      ; $82ABDD  A9 F8 FF     Mx
    STA $07E6                       ; $82ABE0  8D E6 07     Mx
    LDX $07F0                       ; $82ABE3  AE F0 07     Mx
    LDA $A7E4FB,X                   ; $82ABE6  BF FB E4 A7  Mx
    AND #$0007                      ; $82ABEA  29 07 00     Mx
    STA $07F0                       ; $82ABED  8D F0 07     Mx
    JMP L_82AC16                    ; $82ABF0  4C 16 AC     Mx
L_82ABF3:
    LDA $07DC                       ; $82ABF3  AD DC 07     Mx
    CMP #$0006                      ; $82ABF6  C9 06 00     Mx
    BEQ L_82AC16                    ; $82ABF9  F0 1B        Mx
    LDA #$0006                      ; $82ABFB  A9 06 00     Mx
    STA $07DC                       ; $82ABFE  8D DC 07     Mx
    LDA #$FFFF                      ; $82AC01  A9 FF FF     Mx
    STA $07E2                       ; $82AC04  8D E2 07     Mx
    STZ $07E4                       ; $82AC07  9C E4 07     Mx
    STZ $082A                       ; $82AC0A  9C 2A 08     Mx
    STZ $07E0                       ; $82AC0D  9C E0 07     Mx
    LDA #$FFF8                      ; $82AC10  A9 F8 FF     Mx
    STA $07E6                       ; $82AC13  8D E6 07     Mx
L_82AC16:
    RTS                             ; $82AC16  60           Mx
L_82AC17:
    LDA $082A                       ; $82AC17  AD 2A 08     Mx
    CMP #$0001                      ; $82AC1A  C9 01 00     Mx
    BEQ L_82AC45                    ; $82AC1D  F0 26        Mx
    CMP #$0002                      ; $82AC1F  C9 02 00     Mx
    BEQ L_82AC2C                    ; $82AC22  F0 08        Mx
    CMP #$0003                      ; $82AC24  C9 03 00     Mx
    BNE L_82AC2F                    ; $82AC27  D0 06        Mx
    JMP L_82AD74                    ; $82AC29  4C 74 AD     Mx
L_82AC2C:
    JMP L_82AC94                    ; $82AC2C  4C 94 AC     Mx
L_82AC2F:
    LDA $086E                       ; $82AC2F  AD 6E 08     Mx
    BEQ L_82AC39                    ; $82AC32  F0 05        Mx
    LDA #$003E                      ; $82AC34  A9 3E 00     Mx
    BNE L_82AC3C                    ; $82AC37  D0 03        Mx
L_82AC39:
    LDA #$0036                      ; $82AC39  A9 36 00     Mx
L_82AC3C:
    STA $07DE                       ; $82AC3C  8D DE 07     Mx
    LDA #$0001                      ; $82AC3F  A9 01 00     Mx
    STA $082A                       ; $82AC42  8D 2A 08     Mx
L_82AC45:
    LDA $07E2                       ; $82AC45  AD E2 07     Mx
    CMP #$0002                      ; $82AC48  C9 02 00     Mx
    BCS L_82AC5B                    ; $82AC4B  B0 0E        Mx
    LDA $0858                       ; $82AC4D  AD 58 08     Mx
    BNE L_82AC6D                    ; $82AC50  D0 1B        Mx
    LDA #$0001                      ; $82AC52  A9 01 00     Mx
    STA $0868                       ; $82AC55  8D 68 08     Mx
    JMP L_82AC6D                    ; $82AC58  4C 6D AC     Mx
L_82AC5B:
    CMP #$0004                      ; $82AC5B  C9 04 00     Mx
    BCS L_82AC70                    ; $82AC5E  B0 10        Mx
    CMP #$0003                      ; $82AC60  C9 03 00     Mx
    BNE L_82AC6D                    ; $82AC63  D0 08        Mx
    LDA $0868                       ; $82AC65  AD 68 08     Mx
    BEQ L_82AC70                    ; $82AC68  F0 06        Mx
    JMP L_82ADAF                    ; $82AC6A  4C AF AD     Mx
L_82AC6D:
    JMP L_82AE07                    ; $82AC6D  4C 07 AE     Mx
L_82AC70:
    DEC $07DE                       ; $82AC70  CE DE 07     Mx
    DEC $07DE                       ; $82AC73  CE DE 07     Mx
    BPL L_82AC84                    ; $82AC76  10 0C        Mx
    STZ $07DE                       ; $82AC78  9C DE 07     Mx
    LDA #$0002                      ; $82AC7B  A9 02 00     Mx
    STA $082A                       ; $82AC7E  8D 2A 08     Mx
    JMP L_82AC94                    ; $82AC81  4C 94 AC     Mx
L_82AC84:
    LDX $07DE                       ; $82AC84  AE DE 07     Mx
    LDA $A7E3F7,X                   ; $82AC87  BF F7 E3 A7  Mx
    STA $0816                       ; $82AC8B  8D 16 08     Mx
    STZ $0814                       ; $82AC8E  9C 14 08     Mx
    JMP L_82ACF2                    ; $82AC91  4C F2 AC     Mx
L_82AC94:
    LDA #$0003                      ; $82AC94  A9 03 00     Mx
    STA $07E4                       ; $82AC97  8D E4 07     Mx
    LDA $07DE                       ; $82AC9A  AD DE 07     Mx
    CLC                             ; $82AC9D  18           Mx
    ADC #$0002                      ; $82AC9E  69 02 00     Mx
    CMP #$003E                      ; $82ACA1  C9 3E 00     Mx
    BCC L_82ACA9                    ; $82ACA4  90 03        Mx
    LDA #$003C                      ; $82ACA6  A9 3C 00     Mx
L_82ACA9:
    STA $07DE                       ; $82ACA9  8D DE 07     Mx
    TAX                             ; $82ACAC  AA           Mx
    LDA $A7E3F7,X                   ; $82ACAD  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $82ACB1  49 FF FF     Mx
    CLC                             ; $82ACB4  18           Mx
    ADC #$0001                      ; $82ACB5  69 01 00     Mx
    STA $0816                       ; $82ACB8  8D 16 08     Mx
    STZ $0814                       ; $82ACBB  9C 14 08     Mx
    LDA $0808                       ; $82ACBE  AD 08 08     Mx
    CLC                             ; $82ACC1  18           Mx
    ADC $0814                       ; $82ACC2  6D 14 08     Mx
    STA $00E8                       ; $82ACC5  8D E8 00     Mx
    LDA $080A                       ; $82ACC8  AD 0A 08     Mx
    ADC $0816                       ; $82ACCB  6D 16 08     Mx
    BPL L_82ACEB                    ; $82ACCE  10 1B        Mx
    STZ $080A                       ; $82ACD0  9C 0A 08     Mx
    STZ $0808                       ; $82ACD3  9C 08 08     Mx
    STZ $07FC                       ; $82ACD6  9C FC 07     Mx
    STZ $07FE                       ; $82ACD9  9C FE 07     Mx
    STZ $0816                       ; $82ACDC  9C 16 08     Mx
    STZ $0814                       ; $82ACDF  9C 14 08     Mx
    LDA #$0003                      ; $82ACE2  A9 03 00     Mx
    STA $082A                       ; $82ACE5  8D 2A 08     Mx
    JMP L_82AD74                    ; $82ACE8  4C 74 AD     Mx
L_82ACEB:
    CPX #$2E                        ; $82ACEB  E0 2E        Mx
    BCC L_82ACF2                    ; $82ACED  90 03        Mx
    JMP L_82ACFC                    ; $82ACEF  4C FC AC     Mx
L_82ACF2:
    LDA $0858                       ; $82ACF2  AD 58 08     Mx
    BNE L_82AD6E                    ; $82ACF5  D0 77        Mx
    LDA $0C19                       ; $82ACF7  AD 19 0C     Mx
    BEQ L_82AD6E                    ; $82ACFA  F0 72        Mx
L_82ACFC:
    STZ $07E4                       ; $82ACFC  9C E4 07     Mx
    LDA $07D8                       ; $82ACFF  AD D8 07     Mx
    CMP $0C19                       ; $82AD02  CD 19 0C     Mx
    BNE L_82AD6B                    ; $82AD05  D0 64        Mx
    LDX $07E8                       ; $82AD07  AE E8 07     Mx
    LDA $08A2                       ; $82AD0A  AD A2 08     Mx
    BEQ L_82AD3E                    ; $82AD0D  F0 2F        Mx
    LDA #$2800                      ; $82AD0F  A9 00 28     Mx
    STA $00D1                       ; $82AD12  8D D1 00     Mx
    LDA $A88000,X                   ; $82AD15  BF 00 80 A8  Mx
    CLC                             ; $82AD19  18           Mx
    ADC $07E6                       ; $82AD1A  6D E6 07     Mx
    STA $00D0                       ; $82AD1D  8D D0 00     Mx
    LDY #$00                        ; $82AD20  A0 00        Mx
    LDA [$D0],Y                     ; $82AD22  B7 D0        Mx
    STA $0BEF                       ; $82AD24  8D EF 0B     Mx
    LDY #$02                        ; $82AD27  A0 02        Mx
    LDA [$D0],Y                     ; $82AD29  B7 D0        Mx
    STA $0BF1                       ; $82AD2B  8D F1 0B     Mx
    LDY #$04                        ; $82AD2E  A0 04        Mx
    LDA [$D0],Y                     ; $82AD30  B7 D0        Mx
    STA $0BF5                       ; $82AD32  8D F5 0B     Mx
    CLC                             ; $82AD35  18           Mx
    ADC $0800                       ; $82AD36  6D 00 08     Mx
    STA $0BF3                       ; $82AD39  8D F3 0B     Mx
    BRA L_82AD6B                    ; $82AD3C  80 2D        Mx
L_82AD3E:
    LDA #$2500                      ; $82AD3E  A9 00 25     Mx
    STA $00D1                       ; $82AD41  8D D1 00     Mx
    LDA $A58000,X                   ; $82AD44  BF 00 80 A5  Mx
    CLC                             ; $82AD48  18           Mx
    ADC $07E6                       ; $82AD49  6D E6 07     Mx
    STA $00D0                       ; $82AD4C  8D D0 00     Mx
    LDY #$00                        ; $82AD4F  A0 00        Mx
    LDA [$D0],Y                     ; $82AD51  B7 D0        Mx
    STA $0BEF                       ; $82AD53  8D EF 0B     Mx
    LDY #$02                        ; $82AD56  A0 02        Mx
    LDA [$D0],Y                     ; $82AD58  B7 D0        Mx
    STA $0BF1                       ; $82AD5A  8D F1 0B     Mx
    LDY #$04                        ; $82AD5D  A0 04        Mx
    LDA [$D0],Y                     ; $82AD5F  B7 D0        Mx
    STA $0BF5                       ; $82AD61  8D F5 0B     Mx
    CLC                             ; $82AD64  18           Mx
    ADC $0800                       ; $82AD65  6D 00 08     Mx
    STA $0BF3                       ; $82AD68  8D F3 0B     Mx
L_82AD6B:
    JMP L_82AD74                    ; $82AD6B  4C 74 AD     Mx
L_82AD6E:
    LDA #$0003                      ; $82AD6E  A9 03 00     Mx
    STA $07E4                       ; $82AD71  8D E4 07     Mx
L_82AD74:
    LDA $07E2                       ; $82AD74  AD E2 07     Mx
    CMP #$0008                      ; $82AD77  C9 08 00     Mx
    BNE L_82AD84                    ; $82AD7A  D0 08        Mx
    LDA $07E4                       ; $82AD7C  AD E4 07     Mx
    BNE L_82ADAC                    ; $82AD7F  D0 2B        Mx
    JMP L_82ADD8                    ; $82AD81  4C D8 AD     Mx
L_82AD84:
    CMP #$0004                      ; $82AD84  C9 04 00     Mx
    BNE L_82ADAC                    ; $82AD87  D0 23        Mx
    LDA $0C19                       ; $82AD89  AD 19 0C     Mx
    BEQ L_82ADAC                    ; $82AD8C  F0 1E        Mx
    LDA $087C                       ; $82AD8E  AD 7C 08     Mx
    BEQ L_82ADAC                    ; $82AD91  F0 19        Mx
    LDA #$0002                      ; $82AD93  A9 02 00     Mx
    STA $0BBF                       ; $82AD96  8D BF 0B     Mx
    STZ $0BC1                       ; $82AD99  9C C1 0B     Mx
    LDX $07DE                       ; $82AD9C  AE DE 07     Mx
    LDA $A7E435,X                   ; $82AD9F  BF 35 E4 A7  Mx
    STA $0BC9                       ; $82ADA3  8D C9 0B     Mx
    LDA #$0019                      ; $82ADA6  A9 19 00     Mx
    STA $0862                       ; $82ADA9  8D 62 08     Mx
L_82ADAC:
    JMP L_82AE07                    ; $82ADAC  4C 07 AE     Mx
L_82ADAF:
    LDA #$000C                      ; $82ADAF  A9 0C 00     Mx
    STA $07DC                       ; $82ADB2  8D DC 07     Mx
    LDA #$FFFF                      ; $82ADB5  A9 FF FF     Mx
    STA $07E2                       ; $82ADB8  8D E2 07     Mx
    STZ $07E4                       ; $82ADBB  9C E4 07     Mx
    STZ $082A                       ; $82ADBE  9C 2A 08     Mx
    STZ $07E0                       ; $82ADC1  9C E0 07     Mx
    LDA #$FFF8                      ; $82ADC4  A9 F8 FF     Mx
    STA $07E6                       ; $82ADC7  8D E6 07     Mx
    LDA $086A                       ; $82ADCA  AD 6A 08     Mx
    BNE L_82ADD2                    ; $82ADCD  D0 03        Mx
    STZ $0868                       ; $82ADCF  9C 68 08     Mx
L_82ADD2:
    JSR L_82D182                    ; $82ADD2  20 82 D1     Mx
    JMP L_82AE07                    ; $82ADD5  4C 07 AE     Mx
L_82ADD8:
    LDA $080A                       ; $82ADD8  AD 0A 08     Mx
    BEQ L_82ADE6                    ; $82ADDB  F0 09        Mx
    LDA #$0003                      ; $82ADDD  A9 03 00     Mx
    STA $07E4                       ; $82ADE0  8D E4 07     Mx
    JMP L_82AE07                    ; $82ADE3  4C 07 AE     Mx
L_82ADE6:
    LDA #$0000                      ; $82ADE6  A9 00 00     Mx
    STA $07DC                       ; $82ADE9  8D DC 07     Mx
    LDA #$FFFF                      ; $82ADEC  A9 FF FF     Mx
    STA $07E2                       ; $82ADEF  8D E2 07     Mx
    STZ $07E4                       ; $82ADF2  9C E4 07     Mx
    STZ $082A                       ; $82ADF5  9C 2A 08     Mx
    STZ $07E0                       ; $82ADF8  9C E0 07     Mx
    LDA #$FFF8                      ; $82ADFB  A9 F8 FF     Mx
    STA $07E6                       ; $82ADFE  8D E6 07     Mx
    LDA #$0014                      ; $82AE01  A9 14 00     Mx
    STA $0860                       ; $82AE04  8D 60 08     Mx
L_82AE07:
    RTS                             ; $82AE07  60           Mx
L_82AE08:
    LDA $082A                       ; $82AE08  AD 2A 08     Mx
    CMP #$0001                      ; $82AE0B  C9 01 00     Mx
    BEQ L_82AE33                    ; $82AE0E  F0 23        Mx
    CMP #$0002                      ; $82AE10  C9 02 00     Mx
    BEQ L_82AE71                    ; $82AE13  F0 5C        Mx
    CMP #$0003                      ; $82AE15  C9 03 00     Mx
    BNE L_82AE1D                    ; $82AE18  D0 03        Mx
    JMP L_82AEDC                    ; $82AE1A  4C DC AE     Mx
L_82AE1D:
    LDA $086E                       ; $82AE1D  AD 6E 08     Mx
    BEQ L_82AE27                    ; $82AE20  F0 05        Mx
    LDA #$0036                      ; $82AE22  A9 36 00     Mx
    BNE L_82AE2A                    ; $82AE25  D0 03        Mx
L_82AE27:
    LDA #$0030                      ; $82AE27  A9 30 00     Mx
L_82AE2A:
    STA $07DE                       ; $82AE2A  8D DE 07     Mx
    LDA #$0001                      ; $82AE2D  A9 01 00     Mx
    STA $082A                       ; $82AE30  8D 2A 08     Mx
L_82AE33:
    DEC $07DE                       ; $82AE33  CE DE 07     Mx
    DEC $07DE                       ; $82AE36  CE DE 07     Mx
    BPL L_82AE47                    ; $82AE39  10 0C        Mx
    STZ $07DE                       ; $82AE3B  9C DE 07     Mx
    LDA #$0002                      ; $82AE3E  A9 02 00     Mx
    STA $082A                       ; $82AE41  8D 2A 08     Mx
    JMP L_82AE71                    ; $82AE44  4C 71 AE     Mx
L_82AE47:
    LDX $07DE                       ; $82AE47  AE DE 07     Mx
    LDA $A7E3F7,X                   ; $82AE4A  BF F7 E3 A7  Mx
    STA $0816                       ; $82AE4E  8D 16 08     Mx
    STZ $0814                       ; $82AE51  9C 14 08     Mx
    CPX #$14                        ; $82AE54  E0 14        Mx
    BMI L_82AE63                    ; $82AE56  30 0B        Mx
    LDA $07E2                       ; $82AE58  AD E2 07     Mx
    CMP #$0003                      ; $82AE5B  C9 03 00     Mx
    BCS L_82AED6                    ; $82AE5E  B0 76        Mx
    JMP L_82AEEC                    ; $82AE60  4C EC AE     Mx
L_82AE63:
    LDA $0C19                       ; $82AE63  AD 19 0C     Mx
    BEQ L_82AED6                    ; $82AE66  F0 6E        Mx
    LDA #$0000                      ; $82AE68  A9 00 00     Mx
    STA $07E4                       ; $82AE6B  8D E4 07     Mx
    JMP L_82AEDC                    ; $82AE6E  4C DC AE     Mx
L_82AE71:
    LDA #$0003                      ; $82AE71  A9 03 00     Mx
    STA $07E4                       ; $82AE74  8D E4 07     Mx
    LDA $07DE                       ; $82AE77  AD DE 07     Mx
    CLC                             ; $82AE7A  18           Mx
    ADC #$0002                      ; $82AE7B  69 02 00     Mx
    CMP #$0036                      ; $82AE7E  C9 36 00     Mx
    BCC L_82AE86                    ; $82AE81  90 03        Mx
    LDA #$0034                      ; $82AE83  A9 34 00     Mx
L_82AE86:
    STA $07DE                       ; $82AE86  8D DE 07     Mx
    TAX                             ; $82AE89  AA           Mx
    LDA $A7E3F7,X                   ; $82AE8A  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $82AE8E  49 FF FF     Mx
    CLC                             ; $82AE91  18           Mx
    ADC #$0001                      ; $82AE92  69 01 00     Mx
    STA $0816                       ; $82AE95  8D 16 08     Mx
    STZ $0814                       ; $82AE98  9C 14 08     Mx
    LDA $0808                       ; $82AE9B  AD 08 08     Mx
    CLC                             ; $82AE9E  18           Mx
    ADC $0814                       ; $82AE9F  6D 14 08     Mx
    STA $00E8                       ; $82AEA2  8D E8 00     Mx
    LDA $080A                       ; $82AEA5  AD 0A 08     Mx
    ADC $0816                       ; $82AEA8  6D 16 08     Mx
    BPL L_82AEC8                    ; $82AEAB  10 1B        Mx
    STZ $080A                       ; $82AEAD  9C 0A 08     Mx
    STZ $0808                       ; $82AEB0  9C 08 08     Mx
    STZ $07FC                       ; $82AEB3  9C FC 07     Mx
    STZ $07FE                       ; $82AEB6  9C FE 07     Mx
    STZ $0816                       ; $82AEB9  9C 16 08     Mx
    STZ $0814                       ; $82AEBC  9C 14 08     Mx
    LDA #$0003                      ; $82AEBF  A9 03 00     Mx
    STA $082A                       ; $82AEC2  8D 2A 08     Mx
    JMP L_82AEDC                    ; $82AEC5  4C DC AE     Mx
L_82AEC8:
    LDA $0C19                       ; $82AEC8  AD 19 0C     Mx
    BEQ L_82AED6                    ; $82AECB  F0 09        Mx
    LDA #$0000                      ; $82AECD  A9 00 00     Mx
    STA $07E4                       ; $82AED0  8D E4 07     Mx
    JMP L_82AEDC                    ; $82AED3  4C DC AE     Mx
L_82AED6:
    LDA #$0003                      ; $82AED6  A9 03 00     Mx
    STA $07E4                       ; $82AED9  8D E4 07     Mx
L_82AEDC:
    LDA $07E2                       ; $82AEDC  AD E2 07     Mx
    CMP #$0005                      ; $82AEDF  C9 05 00     Mx
    BNE L_82AEEC                    ; $82AEE2  D0 08        Mx
    LDA $07E4                       ; $82AEE4  AD E4 07     Mx
    BNE L_82AF41                    ; $82AEE7  D0 58        Mx
    JMP L_82AF12                    ; $82AEE9  4C 12 AF     Mx
L_82AEEC:
    CMP #$0003                      ; $82AEEC  C9 03 00     Mx
    BNE L_82AF41                    ; $82AEEF  D0 50        Mx
    LDA $0C19                       ; $82AEF1  AD 19 0C     Mx
    BEQ L_82AF41                    ; $82AEF4  F0 4B        Mx
    LDA $087C                       ; $82AEF6  AD 7C 08     Mx
    BEQ L_82AF0F                    ; $82AEF9  F0 14        Mx
    LDA $087C                       ; $82AEFB  AD 7C 08     Mx
    BEQ L_82AF41                    ; $82AEFE  F0 41        Mx
    LDA #$0002                      ; $82AF00  A9 02 00     Mx
    STA $0BBF                       ; $82AF03  8D BF 0B     Mx
    STZ $0BC1                       ; $82AF06  9C C1 0B     Mx
    LDA #$0019                      ; $82AF09  A9 19 00     Mx
    STA $0862                       ; $82AF0C  8D 62 08     Mx
L_82AF0F:
    JMP L_82AF41                    ; $82AF0F  4C 41 AF     Mx
L_82AF12:
    LDA $080A                       ; $82AF12  AD 0A 08     Mx
    BEQ L_82AF20                    ; $82AF15  F0 09        Mx
    LDA #$0003                      ; $82AF17  A9 03 00     Mx
    STA $07E4                       ; $82AF1A  8D E4 07     Mx
    JMP L_82AF41                    ; $82AF1D  4C 41 AF     Mx
L_82AF20:
    LDA #$0000                      ; $82AF20  A9 00 00     Mx
    STA $07DC                       ; $82AF23  8D DC 07     Mx
    LDA #$FFFF                      ; $82AF26  A9 FF FF     Mx
    STA $07E2                       ; $82AF29  8D E2 07     Mx
    STZ $07E4                       ; $82AF2C  9C E4 07     Mx
    STZ $082A                       ; $82AF2F  9C 2A 08     Mx
    STZ $07E0                       ; $82AF32  9C E0 07     Mx
    LDA #$FFF8                      ; $82AF35  A9 F8 FF     Mx
    STA $07E6                       ; $82AF38  8D E6 07     Mx
    LDA #$0014                      ; $82AF3B  A9 14 00     Mx
    STA $0860                       ; $82AF3E  8D 60 08     Mx
L_82AF41:
    RTS                             ; $82AF41  60           Mx
L_82AF42:
    LDA $082A                       ; $82AF42  AD 2A 08     Mx
    CMP #$0001                      ; $82AF45  C9 01 00     Mx
    BEQ L_82AF7D                    ; $82AF48  F0 33        Mx
    CMP #$0002                      ; $82AF4A  C9 02 00     Mx
    BEQ L_82AFC7                    ; $82AF4D  F0 78        Mx
    CMP #$0003                      ; $82AF4F  C9 03 00     Mx
    BNE L_82AF57                    ; $82AF52  D0 03        Mx
    JMP L_82B044                    ; $82AF54  4C 44 B0     Mx
L_82AF57:
    LDA $086E                       ; $82AF57  AD 6E 08     Mx
    BEQ L_82AF61                    ; $82AF5A  F0 05        Mx
    LDA #$003E                      ; $82AF5C  A9 3E 00     Mx
    BNE L_82AF64                    ; $82AF5F  D0 03        Mx
L_82AF61:
    LDA #$0036                      ; $82AF61  A9 36 00     Mx
L_82AF64:
    STA $07DE                       ; $82AF64  8D DE 07     Mx
    LDA $07E2                       ; $82AF67  AD E2 07     Mx
    CMP #$0001                      ; $82AF6A  C9 01 00     Mx
    BEQ L_82AF77                    ; $82AF6D  F0 08        Mx
    LDA $0858                       ; $82AF6F  AD 58 08     Mx
    BNE L_82AF7F                    ; $82AF72  D0 0B        Mx
    JMP L_82B08F                    ; $82AF74  4C 8F B0     Mx
L_82AF77:
    LDA #$0001                      ; $82AF77  A9 01 00     Mx
    STA $082A                       ; $82AF7A  8D 2A 08     Mx
L_82AF7D:
    BRA L_82AF82                    ; $82AF7D  80 03        Mx
L_82AF7F:
    JMP L_82B0DA                    ; $82AF7F  4C DA B0     Mx
L_82AF82:
    LDA $07DC                       ; $82AF82  AD DC 07     Mx
    CMP #$001C                      ; $82AF85  C9 1C 00     Mx
    BNE L_82AF90                    ; $82AF88  D0 06        Mx
    LDA #$0001                      ; $82AF8A  A9 01 00     Mx
    STA $0812                       ; $82AF8D  8D 12 08     Mx
L_82AF90:
    DEC $07DE                       ; $82AF90  CE DE 07     Mx
    DEC $07DE                       ; $82AF93  CE DE 07     Mx
    BPL L_82AFA4                    ; $82AF96  10 0C        Mx
    STZ $07DE                       ; $82AF98  9C DE 07     Mx
    LDA #$0002                      ; $82AF9B  A9 02 00     Mx
    STA $082A                       ; $82AF9E  8D 2A 08     Mx
    JMP L_82AFC7                    ; $82AFA1  4C C7 AF     Mx
L_82AFA4:
    LDX $07DE                       ; $82AFA4  AE DE 07     Mx
    LDA $A7E3F7,X                   ; $82AFA7  BF F7 E3 A7  Mx
    STA $0816                       ; $82AFAB  8D 16 08     Mx
    STZ $0814                       ; $82AFAE  9C 14 08     Mx
    LDA $0858                       ; $82AFB1  AD 58 08     Mx
    BNE L_82AFC4                    ; $82AFB4  D0 0E        Mx
    LDA $0C19                       ; $82AFB6  AD 19 0C     Mx
    BEQ L_82AFC4                    ; $82AFB9  F0 09        Mx
    LDA #$0000                      ; $82AFBB  A9 00 00     Mx
    STA $07E4                       ; $82AFBE  8D E4 07     Mx
    JMP L_82B044                    ; $82AFC1  4C 44 B0     Mx
L_82AFC4:
    JMP L_82B03E                    ; $82AFC4  4C 3E B0     Mx
L_82AFC7:
    LDA #$0003                      ; $82AFC7  A9 03 00     Mx
    STA $07E4                       ; $82AFCA  8D E4 07     Mx
    LDA $07DE                       ; $82AFCD  AD DE 07     Mx
    CLC                             ; $82AFD0  18           Mx
    ADC #$0002                      ; $82AFD1  69 02 00     Mx
    CMP #$0036                      ; $82AFD4  C9 36 00     Mx
    BCC L_82AFDC                    ; $82AFD7  90 03        Mx
    LDA #$0034                      ; $82AFD9  A9 34 00     Mx
L_82AFDC:
    STA $07DE                       ; $82AFDC  8D DE 07     Mx
    TAX                             ; $82AFDF  AA           Mx
    LDA $A7E3F7,X                   ; $82AFE0  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $82AFE4  49 FF FF     Mx
    CLC                             ; $82AFE7  18           Mx
    ADC #$0001                      ; $82AFE8  69 01 00     Mx
    STA $0816                       ; $82AFEB  8D 16 08     Mx
    STZ $0814                       ; $82AFEE  9C 14 08     Mx
    LDA $0808                       ; $82AFF1  AD 08 08     Mx
    CLC                             ; $82AFF4  18           Mx
    ADC $0814                       ; $82AFF5  6D 14 08     Mx
    STA $00E8                       ; $82AFF8  8D E8 00     Mx
    LDA $080A                       ; $82AFFB  AD 0A 08     Mx
    ADC $0816                       ; $82AFFE  6D 16 08     Mx
    BPL L_82B024                    ; $82B001  10 21        Mx
    STZ $080A                       ; $82B003  9C 0A 08     Mx
    STZ $0808                       ; $82B006  9C 08 08     Mx
    STZ $07FC                       ; $82B009  9C FC 07     Mx
    STZ $07FE                       ; $82B00C  9C FE 07     Mx
    STZ $0816                       ; $82B00F  9C 16 08     Mx
    STZ $0814                       ; $82B012  9C 14 08     Mx
    STZ $0812                       ; $82B015  9C 12 08     Mx
    STZ $0810                       ; $82B018  9C 10 08     Mx
    LDA #$0003                      ; $82B01B  A9 03 00     Mx
    STA $082A                       ; $82B01E  8D 2A 08     Mx
    JMP L_82B044                    ; $82B021  4C 44 B0     Mx
L_82B024:
    CPX #$2E                        ; $82B024  E0 2E        Mx
    BCC L_82B02B                    ; $82B026  90 03        Mx
    JMP L_82B035                    ; $82B028  4C 35 B0     Mx
L_82B02B:
    LDA $0858                       ; $82B02B  AD 58 08     Mx
    BNE L_82B03E                    ; $82B02E  D0 0E        Mx
    LDA $0C19                       ; $82B030  AD 19 0C     Mx
    BEQ L_82B03E                    ; $82B033  F0 09        Mx
L_82B035:
    LDA #$0000                      ; $82B035  A9 00 00     Mx
    STA $07E4                       ; $82B038  8D E4 07     Mx
    JMP L_82B044                    ; $82B03B  4C 44 B0     Mx
L_82B03E:
    LDA #$0003                      ; $82B03E  A9 03 00     Mx
    STA $07E4                       ; $82B041  8D E4 07     Mx
L_82B044:
    LDA $07E2                       ; $82B044  AD E2 07     Mx
    CMP #$0006                      ; $82B047  C9 06 00     Mx
    BEQ L_82B059                    ; $82B04A  F0 0D        Mx
    CMP #$0003                      ; $82B04C  C9 03 00     Mx
    BNE L_82B061                    ; $82B04F  D0 10        Mx
    LDA $07DC                       ; $82B051  AD DC 07     Mx
    CMP #$001C                      ; $82B054  C9 1C 00     Mx
    BNE L_82B061                    ; $82B057  D0 08        Mx
L_82B059:
    LDA $07E4                       ; $82B059  AD E4 07     Mx
    BNE L_82B0DA                    ; $82B05C  D0 7C        Mx
    JMP L_82B0AB                    ; $82B05E  4C AB B0     Mx
L_82B061:
    LDA $07E2                       ; $82B061  AD E2 07     Mx
    CMP #$0002                      ; $82B064  C9 02 00     Mx
    BNE L_82B0DA                    ; $82B067  D0 71        Mx
    LDA $0C19                       ; $82B069  AD 19 0C     Mx
    BEQ L_82B0DA                    ; $82B06C  F0 6C        Mx
    LDA $087C                       ; $82B06E  AD 7C 08     Mx
    BEQ L_82B08C                    ; $82B071  F0 19        Mx
    LDA #$0002                      ; $82B073  A9 02 00     Mx
    STA $0BBF                       ; $82B076  8D BF 0B     Mx
    STZ $0BC1                       ; $82B079  9C C1 0B     Mx
    LDX $07DE                       ; $82B07C  AE DE 07     Mx
    LDA $A7E435,X                   ; $82B07F  BF 35 E4 A7  Mx
    STA $0BC9                       ; $82B083  8D C9 0B     Mx
    LDA #$0019                      ; $82B086  A9 19 00     Mx
    STA $0862                       ; $82B089  8D 62 08     Mx
L_82B08C:
    JMP L_82B0DA                    ; $82B08C  4C DA B0     Mx
L_82B08F:
    LDA $086A                       ; $82B08F  AD 6A 08     Mx
    BEQ L_82B09A                    ; $82B092  F0 06        Mx
    LDA #$0001                      ; $82B094  A9 01 00     Mx
    STA $0868                       ; $82B097  8D 68 08     Mx
L_82B09A:
    JSR L_82D182                    ; $82B09A  20 82 D1     Mx
    LDA $07DC                       ; $82B09D  AD DC 07     Mx
    CMP #$002E                      ; $82B0A0  C9 2E 00     Mx
    BEQ L_82B0D4                    ; $82B0A3  F0 2F        Mx
    LDA #$000C                      ; $82B0A5  A9 0C 00     Mx
    JMP L_82B0BC                    ; $82B0A8  4C BC B0     Mx
L_82B0AB:
    LDA $080A                       ; $82B0AB  AD 0A 08     Mx
    BEQ L_82B0B9                    ; $82B0AE  F0 09        Mx
    LDA #$0003                      ; $82B0B0  A9 03 00     Mx
    STA $07E4                       ; $82B0B3  8D E4 07     Mx
    JMP L_82B0DA                    ; $82B0B6  4C DA B0     Mx
L_82B0B9:
    LDA #$0000                      ; $82B0B9  A9 00 00     Mx
L_82B0BC:
    STA $07DC                       ; $82B0BC  8D DC 07     Mx
    LDA #$FFFF                      ; $82B0BF  A9 FF FF     Mx
    STA $07E2                       ; $82B0C2  8D E2 07     Mx
    STZ $07E4                       ; $82B0C5  9C E4 07     Mx
    STZ $082A                       ; $82B0C8  9C 2A 08     Mx
    STZ $07E0                       ; $82B0CB  9C E0 07     Mx
    LDA #$FFF8                      ; $82B0CE  A9 F8 FF     Mx
    STA $07E6                       ; $82B0D1  8D E6 07     Mx
L_82B0D4:
    LDA #$0014                      ; $82B0D4  A9 14 00     Mx
    STA $0860                       ; $82B0D7  8D 60 08     Mx
L_82B0DA:
    RTS                             ; $82B0DA  60           Mx
L_82B0DB:
    LDA $07E2                       ; $82B0DB  AD E2 07     Mx
    CMP #$0005                      ; $82B0DE  C9 05 00     Mx
    BEQ L_82B0F0                    ; $82B0E1  F0 0D        Mx
    CMP #$0004                      ; $82B0E3  C9 04 00     Mx
    BNE L_82B136                    ; $82B0E6  D0 4E        Mx
    LDA $0C19                       ; $82B0E8  AD 19 0C     Mx
    BNE L_82B0F8                    ; $82B0EB  D0 0B        Mx
    JMP L_82B136                    ; $82B0ED  4C 36 B1     Mx
L_82B0F0:
    LDA $07E4                       ; $82B0F0  AD E4 07     Mx
    BNE L_82B136                    ; $82B0F3  D0 41        Mx
    JMP L_82B115                    ; $82B0F5  4C 15 B1     Mx
L_82B0F8:
    LDA $087C                       ; $82B0F8  AD 7C 08     Mx
    BEQ L_82B112                    ; $82B0FB  F0 15        Mx
    LDA #$0002                      ; $82B0FD  A9 02 00     Mx
    STA $0BBF                       ; $82B100  8D BF 0B     Mx
    STZ $0BC1                       ; $82B103  9C C1 0B     Mx
    LDX $07DE                       ; $82B106  AE DE 07     Mx
    STZ $0BC9                       ; $82B109  9C C9 0B     Mx
    LDA #$0019                      ; $82B10C  A9 19 00     Mx
    STA $0862                       ; $82B10F  8D 62 08     Mx
L_82B112:
    JMP L_82B136                    ; $82B112  4C 36 B1     Mx
L_82B115:
    LDA #$0000                      ; $82B115  A9 00 00     Mx
    STA $07DC                       ; $82B118  8D DC 07     Mx
    LDA #$FFFF                      ; $82B11B  A9 FF FF     Mx
    STA $07E2                       ; $82B11E  8D E2 07     Mx
    STZ $07E4                       ; $82B121  9C E4 07     Mx
    STZ $082A                       ; $82B124  9C 2A 08     Mx
    STZ $07E0                       ; $82B127  9C E0 07     Mx
    LDA #$FFF8                      ; $82B12A  A9 F8 FF     Mx
    STA $07E6                       ; $82B12D  8D E6 07     Mx
    LDA #$0014                      ; $82B130  A9 14 00     Mx
    STA $0860                       ; $82B133  8D 60 08     Mx
L_82B136:
    RTS                             ; $82B136  60           Mx
L_82B137:
    LDA $07E2                       ; $82B137  AD E2 07     Mx
    CMP #$0001                      ; $82B13A  C9 01 00     Mx
    BEQ L_82B17E                    ; $82B13D  F0 3F        Mx
    CMP #$0002                      ; $82B13F  C9 02 00     Mx
    BEQ L_82B193                    ; $82B142  F0 4F        Mx
    CMP #$0005                      ; $82B144  C9 05 00     Mx
    BEQ L_82B176                    ; $82B147  F0 2D        Mx
    CMP #$0003                      ; $82B149  C9 03 00     Mx
    BNE L_82B163                    ; $82B14C  D0 15        Mx
    LDA $07DC                       ; $82B14E  AD DC 07     Mx
    CMP #$001A                      ; $82B151  C9 1A 00     Mx
    BEQ L_82B176                    ; $82B154  F0 20        Mx
    CMP #$003E                      ; $82B156  C9 3E 00     Mx
    BEQ L_82B176                    ; $82B159  F0 1B        Mx
    CMP #$0040                      ; $82B15B  C9 40 00     Mx
    BEQ L_82B176                    ; $82B15E  F0 16        Mx
    JMP L_82B219                    ; $82B160  4C 19 B2     Mx
L_82B163:
    CMP #$0002                      ; $82B163  C9 02 00     Mx
    BEQ L_82B16B                    ; $82B166  F0 03        Mx
L_82B168:
    JMP L_82B219                    ; $82B168  4C 19 B2     Mx
L_82B16B:
    LDA $07DC                       ; $82B16B  AD DC 07     Mx
L_82B16E:
    CMP #$0012                      ; $82B16E  C9 12 00     Mx
    BEQ L_82B176                    ; $82B171  F0 03        Mx
    JMP L_82B219                    ; $82B173  4C 19 B2     Mx
L_82B176:
    LDA $07E4                       ; $82B176  AD E4 07     Mx
    BNE L_82B168                    ; $82B179  D0 ED        Mx
    JMP L_82B1FE                    ; $82B17B  4C FE B1     Mx
L_82B17E:
    LDA $07DC                       ; $82B17E  AD DC 07     Mx
    CMP #$0012                      ; $82B181  C9 12 00     Mx
    BEQ L_82B1A5                    ; $82B184  F0 1F        Mx
    CMP #$003E                      ; $82B186  C9 3E 00     Mx
    BEQ L_82B1A5                    ; $82B189  F0 1A        Mx
    CMP #$0040                      ; $82B18B  C9 40 00     Mx
    BEQ L_82B1A5                    ; $82B18E  F0 15        Mx
    JMP L_82B219                    ; $82B190  4C 19 B2     Mx
L_82B193:
    LDA $07DC                       ; $82B193  AD DC 07     Mx
    CMP #$000A                      ; $82B196  C9 0A 00     Mx
    BEQ L_82B1A5                    ; $82B199  F0 0A        Mx
    CMP #$001A                      ; $82B19B  C9 1A 00     Mx
    BEQ L_82B1A5                    ; $82B19E  F0 05        Mx
    CMP #$0016                      ; $82B1A0  C9 16 00     Mx
    BNE L_82B16E                    ; $82B1A3  D0 C9        Mx
L_82B1A5:
    LDA $07E4                       ; $82B1A5  AD E4 07     Mx
    BEQ L_82B1AD                    ; $82B1A8  F0 03        Mx
    JMP L_82B219                    ; $82B1AA  4C 19 B2     Mx
L_82B1AD:
    LDA $0C19                       ; $82B1AD  AD 19 0C     Mx
    CMP $07D8                       ; $82B1B0  CD D8 07     Mx
    BNE L_82B219                    ; $82B1B3  D0 64        Mx
    LDA $086E                       ; $82B1B5  AD 6E 08     Mx
    STA $00A4                       ; $82B1B8  8D A4 00     Mx
    LDA $080A                       ; $82B1BB  AD 0A 08     Mx
    STA $00A6                       ; $82B1BE  8D A6 00     Mx
    LDA $07A4                       ; $82B1C1  AD A4 07     Mx
    STA $0B88                       ; $82B1C4  8D 88 0B     Mx
    LDA $071E                       ; $82B1C7  AD 1E 07     Mx
    STA $00AA                       ; $82B1CA  8D AA 00     Mx
    LDA $0722                       ; $82B1CD  AD 22 07     Mx
    STA $00AC                       ; $82B1D0  8D AC 00     Mx
    LDA $0726                       ; $82B1D3  AD 26 07     Mx
    STA $00AE                       ; $82B1D6  8D AE 00     Mx
    LDA $0729                       ; $82B1D9  AD 29 07     Mx
    STA $00A8                       ; $82B1DC  8D A8 00     Mx
    LDA $0731                       ; $82B1DF  AD 31 07     Mx
    STA $00B0                       ; $82B1E2  8D B0 00     Mx
    JSL L_A7DCCB                    ; $82B1E5  22 CB DC A7  Mx
    LDA $00DC                       ; $82B1E9  AD DC 00     Mx
    STA $07A2                       ; $82B1EC  8D A2 07     Mx
    LDA #$0019                      ; $82B1EF  A9 19 00     Mx
    STA $0862                       ; $82B1F2  8D 62 08     Mx
    LDA #$0014                      ; $82B1F5  A9 14 00     Mx
    STA $0860                       ; $82B1F8  8D 60 08     Mx
    JMP L_82B219                    ; $82B1FB  4C 19 B2     Mx
L_82B1FE:
    LDA #$0000                      ; $82B1FE  A9 00 00     Mx
    STA $07DC                       ; $82B201  8D DC 07     Mx
    LDA #$FFFF                      ; $82B204  A9 FF FF     Mx
    STA $07E2                       ; $82B207  8D E2 07     Mx
    STZ $07E4                       ; $82B20A  9C E4 07     Mx
    STZ $082A                       ; $82B20D  9C 2A 08     Mx
    STZ $07E0                       ; $82B210  9C E0 07     Mx
    LDA #$FFF8                      ; $82B213  A9 F8 FF     Mx
    STA $07E6                       ; $82B216  8D E6 07     Mx
L_82B219:
    RTS                             ; $82B219  60           Mx
L_82B21A:
    LDA $0C19                       ; $82B21A  AD 19 0C     Mx
    CMP $07D8                       ; $82B21D  CD D8 07     Mx
    BEQ L_82B228                    ; $82B220  F0 06        Mx
    LDA #$0000                      ; $82B222  A9 00 00     Mx
    JMP L_82B238                    ; $82B225  4C 38 B2     Mx
L_82B228:
    LDA $0854                       ; $82B228  AD 54 08     Mx
    AND #$0F00                      ; $82B22B  29 00 0F     Mx
    BEQ L_82B291                    ; $82B22E  F0 61        Mx
L_82B230:
    LDA $0868                       ; $82B230  AD 68 08     Mx
    BNE L_82B253                    ; $82B233  D0 1E        Mx
    LDA #$0004                      ; $82B235  A9 04 00     Mx
L_82B238:
    STA $07DC                       ; $82B238  8D DC 07     Mx
    LDA #$FFFF                      ; $82B23B  A9 FF FF     Mx
    STA $07E2                       ; $82B23E  8D E2 07     Mx
    STZ $07E4                       ; $82B241  9C E4 07     Mx
    STZ $082A                       ; $82B244  9C 2A 08     Mx
    STZ $07E0                       ; $82B247  9C E0 07     Mx
    LDA #$FFF8                      ; $82B24A  A9 F8 FF     Mx
    STA $07E6                       ; $82B24D  8D E6 07     Mx
    JMP L_82B2C3                    ; $82B250  4C C3 B2     Mx
L_82B253:
    LDA $07F0                       ; $82B253  AD F0 07     Mx
    STA $00A4                       ; $82B256  8D A4 00     Mx
    LDX $07F0                       ; $82B259  AE F0 07     Mx
    LDA $A7E35F,X                   ; $82B25C  BF 5F E3 A7  Mx
    STA $00EA                       ; $82B260  8D EA 00     Mx
    SEP #$20                        ; $82B263  E2 20        Mx
    LDA $0855                       ; $82B265  AD 55 08     mx
    AND #$0F                        ; $82B268  29 0F        mx
    BNE L_82B26F                    ; $82B26A  D0 03        mx
    LDA $00EA                       ; $82B26C  AD EA 00     mx
L_82B26F:
    TAX                             ; $82B26F  AA           mx
    LDA $A7E367,X                   ; $82B270  BF 67 E3 A7  mx
    AND #$07                        ; $82B274  29 07        mx
    STA $07F0                       ; $82B276  8D F0 07     mx
    REP #$20                        ; $82B279  C2 20        mx
    LDA $07F0                       ; $82B27B  AD F0 07     Mx
    CMP $00A4                       ; $82B27E  CD A4 00     Mx
    BEQ L_82B289                    ; $82B281  F0 06        Mx
    LDA #$003C                      ; $82B283  A9 3C 00     Mx
    STA $07DE                       ; $82B286  8D DE 07     Mx
L_82B289:
    LDA $07DE                       ; $82B289  AD DE 07     Mx
    BNE L_82B2A5                    ; $82B28C  D0 17        Mx
    JMP L_82B2C3                    ; $82B28E  4C C3 B2     Mx
L_82B291:
    LDA $0812                       ; $82B291  AD 12 08     Mx
    ORA $0810                       ; $82B294  0D 10 08     Mx
    ORA $081A                       ; $82B297  0D 1A 08     Mx
    ORA $0818                       ; $82B29A  0D 18 08     Mx
    ORA $0816                       ; $82B29D  0D 16 08     Mx
    ORA $0814                       ; $82B2A0  0D 14 08     Mx
    BNE L_82B230                    ; $82B2A3  D0 8B        Mx
L_82B2A5:
    DEC $07DE                       ; $82B2A5  CE DE 07     Mx
    BEQ L_82B2B2                    ; $82B2A8  F0 08        Mx
    LDA $07DE                       ; $82B2AA  AD DE 07     Mx
    BNE L_82B2C3                    ; $82B2AD  D0 14        Mx
    JMP L_82B2B2                    ; $82B2AF  4C B2 B2     Mx
L_82B2B2:
    LDA $083E                       ; $82B2B2  AD 3E 08     Mx
    TAX                             ; $82B2B5  AA           Mx
    LDA $A7E377,X                   ; $82B2B6  BF 77 E3 A7  Mx
    AND #$00FF                      ; $82B2BA  29 FF 00     Mx
    AND #$0007                      ; $82B2BD  29 07 00     Mx
    STA $07F0                       ; $82B2C0  8D F0 07     Mx
L_82B2C3:
    LDA $0858                       ; $82B2C3  AD 58 08     Mx
    BNE L_82B2CB                    ; $82B2C6  D0 03        Mx
    JMP L_82B2D1                    ; $82B2C8  4C D1 B2     Mx
L_82B2CB:
    JSR L_82D53D                    ; $82B2CB  20 3D D5     Mx
    JMP L_82B2D9                    ; $82B2CE  4C D9 B2     Mx
L_82B2D1:
    LDA $085C                       ; $82B2D1  AD 5C 08     Mx
    BEQ L_82B2D9                    ; $82B2D4  F0 03        Mx
    JSR L_82D202                    ; $82B2D6  20 02 D2     Mx
L_82B2D9:
    RTS                             ; $82B2D9  60           Mx
L_82B2DA:
    LDA $07E2                       ; $82B2DA  AD E2 07     Mx
    CMP #$0003                      ; $82B2DD  C9 03 00     Mx
    BNE L_82B2E5                    ; $82B2E0  D0 03        Mx
    JMP L_82B35B                    ; $82B2E2  4C 5B B3     Mx
L_82B2E5:
    BCS L_82B2EA                    ; $82B2E5  B0 03        Mx
    JMP L_82B3D3                    ; $82B2E7  4C D3 B3     Mx
L_82B2EA:
    LDA $07FC                       ; $82B2EA  AD FC 07     Mx
    BPL L_82B34C                    ; $82B2ED  10 5D        Mx
L_82B2EF:
    STZ $080A                       ; $82B2EF  9C 0A 08     Mx
    STZ $0808                       ; $82B2F2  9C 08 08     Mx
    STZ $07FC                       ; $82B2F5  9C FC 07     Mx
    STZ $07FE                       ; $82B2F8  9C FE 07     Mx
    STZ $0816                       ; $82B2FB  9C 16 08     Mx
    STZ $0814                       ; $82B2FE  9C 14 08     Mx
    LDA $07E2                       ; $82B301  AD E2 07     Mx
    CMP #$0008                      ; $82B304  C9 08 00     Mx
    BEQ L_82B30C                    ; $82B307  F0 03        Mx
    JMP L_82B3D3                    ; $82B309  4C D3 B3     Mx
L_82B30C:
    LDA $087C                       ; $82B30C  AD 7C 08     Mx
    BEQ L_82B322                    ; $82B30F  F0 11        Mx
    JSR L_82D182                    ; $82B311  20 82 D1     Mx
    LDA $07DC                       ; $82B314  AD DC 07     Mx
    CMP #$002E                      ; $82B317  C9 2E 00     Mx
    BEQ L_82B33D                    ; $82B31A  F0 21        Mx
    LDA #$000C                      ; $82B31C  A9 0C 00     Mx
    JMP L_82B325                    ; $82B31F  4C 25 B3     Mx
L_82B322:
    LDA #$0000                      ; $82B322  A9 00 00     Mx
L_82B325:
    STA $07DC                       ; $82B325  8D DC 07     Mx
    LDA #$FFFF                      ; $82B328  A9 FF FF     Mx
    STA $07E2                       ; $82B32B  8D E2 07     Mx
    STZ $07E4                       ; $82B32E  9C E4 07     Mx
    STZ $082A                       ; $82B331  9C 2A 08     Mx
    STZ $07E0                       ; $82B334  9C E0 07     Mx
    LDA #$FFF8                      ; $82B337  A9 F8 FF     Mx
    STA $07E6                       ; $82B33A  8D E6 07     Mx
L_82B33D:
    STZ $0812                       ; $82B33D  9C 12 08     Mx
    STZ $0810                       ; $82B340  9C 10 08     Mx
    STZ $081A                       ; $82B343  9C 1A 08     Mx
    STZ $0818                       ; $82B346  9C 18 08     Mx
    JMP L_82B3D3                    ; $82B349  4C D3 B3     Mx
L_82B34C:
    LDA $07FC                       ; $82B34C  AD FC 07     Mx
    BNE L_82B35B                    ; $82B34F  D0 0A        Mx
    LDA $0816                       ; $82B351  AD 16 08     Mx
    BMI L_82B2EF                    ; $82B354  30 99        Mx
    ORA $0814                       ; $82B356  0D 14 08     Mx
    BEQ L_82B2EF                    ; $82B359  F0 94        Mx
L_82B35B:
    LDA $081C                       ; $82B35B  AD 1C 08     Mx
    BEQ L_82B387                    ; $82B35E  F0 27        Mx
    LDA $081C                       ; $82B360  AD 1C 08     Mx
    STA $0816                       ; $82B363  8D 16 08     Mx
    LDA $081E                       ; $82B366  AD 1E 08     Mx
    STA $0814                       ; $82B369  8D 14 08     Mx
    LDA $0820                       ; $82B36C  AD 20 08     Mx
    STA $0812                       ; $82B36F  8D 12 08     Mx
    LDA $0822                       ; $82B372  AD 22 08     Mx
    STA $0810                       ; $82B375  8D 10 08     Mx
    LDA $0824                       ; $82B378  AD 24 08     Mx
    STA $081A                       ; $82B37B  8D 1A 08     Mx
    LDA $0826                       ; $82B37E  AD 26 08     Mx
    STA $0818                       ; $82B381  8D 18 08     Mx
    STZ $081C                       ; $82B384  9C 1C 08     Mx
L_82B387:
    LDA $0814                       ; $82B387  AD 14 08     Mx
    SEC                             ; $82B38A  38           Mx
    SBC #$2500                      ; $82B38B  E9 00 25     Mx
    STA $0814                       ; $82B38E  8D 14 08     Mx
    LDA $0816                       ; $82B391  AD 16 08     Mx
    SBC #$0000                      ; $82B394  E9 00 00     Mx
    STA $0816                       ; $82B397  8D 16 08     Mx
    LDA $07E2                       ; $82B39A  AD E2 07     Mx
    CMP #$0007                      ; $82B39D  C9 07 00     Mx
    BEQ L_82B3CD                    ; $82B3A0  F0 2B        Mx
    CMP #$0003                      ; $82B3A2  C9 03 00     Mx
    BNE L_82B3D3                    ; $82B3A5  D0 2C        Mx
    LDA $0814                       ; $82B3A7  AD 14 08     Mx
    SEC                             ; $82B3AA  38           Mx
    SBC #$9A00                      ; $82B3AB  E9 00 9A     Mx
    LDA $0816                       ; $82B3AE  AD 16 08     Mx
    SBC #$0002                      ; $82B3B1  E9 02 00     Mx
    BPL L_82B3CD                    ; $82B3B4  10 17        Mx
    LDA $07E4                       ; $82B3B6  AD E4 07     Mx
    BNE L_82B3D3                    ; $82B3B9  D0 18        Mx
    LDA $07E2                       ; $82B3BB  AD E2 07     Mx
    CMP #$0003                      ; $82B3BE  C9 03 00     Mx
    BNE L_82B3D3                    ; $82B3C1  D0 10        Mx
    LDA #$0008                      ; $82B3C3  A9 08 00     Mx
    JSL L_BDFDF3                    ; $82B3C6  22 F3 FD BD  Mx
    JMP L_82B3D3                    ; $82B3CA  4C D3 B3     Mx
L_82B3CD:
    LDA #$0001                      ; $82B3CD  A9 01 00     Mx
    STA $07E4                       ; $82B3D0  8D E4 07     Mx
L_82B3D3:
    RTS                             ; $82B3D3  60           Mx
L_82B3D4:
    LDA $07FC                       ; $82B3D4  AD FC 07     Mx
    BPL L_82B457                    ; $82B3D7  10 7E        Mx
L_82B3D9:
    STZ $080A                       ; $82B3D9  9C 0A 08     Mx
    STZ $0808                       ; $82B3DC  9C 08 08     Mx
    STZ $07FC                       ; $82B3DF  9C FC 07     Mx
    STZ $07FE                       ; $82B3E2  9C FE 07     Mx
    STZ $0816                       ; $82B3E5  9C 16 08     Mx
    STZ $0814                       ; $82B3E8  9C 14 08     Mx
    LDA $07E2                       ; $82B3EB  AD E2 07     Mx
    CMP #$0004                      ; $82B3EE  C9 04 00     Mx
    BEQ L_82B406                    ; $82B3F1  F0 13        Mx
    CMP #$0003                      ; $82B3F3  C9 03 00     Mx
    BEQ L_82B3FB                    ; $82B3F6  F0 03        Mx
    JMP L_82B548                    ; $82B3F8  4C 48 B5     Mx
L_82B3FB:
    LDA $07DC                       ; $82B3FB  AD DC 07     Mx
    CMP #$0020                      ; $82B3FE  C9 20 00     Mx
    BEQ L_82B406                    ; $82B401  F0 03        Mx
    JMP L_82B548                    ; $82B403  4C 48 B5     Mx
L_82B406:
    LDA $07D8                       ; $82B406  AD D8 07     Mx
    AND #$00FF                      ; $82B409  29 FF 00     Mx
    CMP $0A9C                       ; $82B40C  CD 9C 0A     Mx
    BNE L_82B414                    ; $82B40F  D0 03        Mx
    STZ $0A9C                       ; $82B411  9C 9C 0A     Mx
L_82B414:
    LDA $087C                       ; $82B414  AD 7C 08     Mx
    BEQ L_82B42D                    ; $82B417  F0 14        Mx
    STZ $0868                       ; $82B419  9C 68 08     Mx
    JSR L_82D182                    ; $82B41C  20 82 D1     Mx
    LDA $07DC                       ; $82B41F  AD DC 07     Mx
    CMP #$002E                      ; $82B422  C9 2E 00     Mx
    BEQ L_82B448                    ; $82B425  F0 21        Mx
    LDA #$000C                      ; $82B427  A9 0C 00     Mx
    JMP L_82B430                    ; $82B42A  4C 30 B4     Mx
L_82B42D:
    LDA #$0000                      ; $82B42D  A9 00 00     Mx
L_82B430:
    STA $07DC                       ; $82B430  8D DC 07     Mx
    LDA #$FFFF                      ; $82B433  A9 FF FF     Mx
    STA $07E2                       ; $82B436  8D E2 07     Mx
    STZ $07E4                       ; $82B439  9C E4 07     Mx
    STZ $082A                       ; $82B43C  9C 2A 08     Mx
    STZ $07E0                       ; $82B43F  9C E0 07     Mx
    LDA #$FFF8                      ; $82B442  A9 F8 FF     Mx
    STA $07E6                       ; $82B445  8D E6 07     Mx
L_82B448:
    STZ $0812                       ; $82B448  9C 12 08     Mx
    STZ $0810                       ; $82B44B  9C 10 08     Mx
    STZ $081A                       ; $82B44E  9C 1A 08     Mx
    STZ $0818                       ; $82B451  9C 18 08     Mx
    JMP L_82B548                    ; $82B454  4C 48 B5     Mx
L_82B457:
    LDA $07FC                       ; $82B457  AD FC 07     Mx
    BNE L_82B469                    ; $82B45A  D0 0D        Mx
    LDA $0816                       ; $82B45C  AD 16 08     Mx
    BMI L_82B466                    ; $82B45F  30 05        Mx
    ORA $0814                       ; $82B461  0D 14 08     Mx
    BNE L_82B469                    ; $82B464  D0 03        Mx
L_82B466:
    JMP L_82B3D9                    ; $82B466  4C D9 B3     Mx
L_82B469:
    LDA $0814                       ; $82B469  AD 14 08     Mx
    SEC                             ; $82B46C  38           Mx
    SBC #$2500                      ; $82B46D  E9 00 25     Mx
    STA $0814                       ; $82B470  8D 14 08     Mx
    LDA $0816                       ; $82B473  AD 16 08     Mx
    SBC #$0000                      ; $82B476  E9 00 00     Mx
    STA $0816                       ; $82B479  8D 16 08     Mx
    LDA $0CCB                       ; $82B47C  AD CB 0C     Mx
    BEQ L_82B486                    ; $82B47F  F0 05        Mx
    LDA $087C                       ; $82B481  AD 7C 08     Mx
    BNE L_82B489                    ; $82B484  D0 03        Mx
L_82B486:
    JMP L_82B508                    ; $82B486  4C 08 B5     Mx
L_82B489:
    LDA $07DC                       ; $82B489  AD DC 07     Mx
    CMP #$0022                      ; $82B48C  C9 22 00     Mx
    BNE L_82B508                    ; $82B48F  D0 77        Mx
    LDA $083C                       ; $82B491  AD 3C 08     Mx
    CMP #$0040                      ; $82B494  C9 40 00     Mx
    BCS L_82B508                    ; $82B497  B0 6F        Mx
    LDA $0858                       ; $82B499  AD 58 08     Mx
    BEQ L_82B508                    ; $82B49C  F0 6A        Mx
    EOR $085A                       ; $82B49E  4D 5A 08     Mx
    BEQ L_82B508                    ; $82B4A1  F0 65        Mx
    LDX $083E                       ; $82B4A3  AE 3E 08     Mx
    LDA $A7E377,X                   ; $82B4A6  BF 77 E3 A7  Mx
    AND #$0007                      ; $82B4AA  29 07 00     Mx
    BEQ L_82B508                    ; $82B4AD  F0 59        Mx
    STA $07F0                       ; $82B4AF  8D F0 07     Mx
    STA $07F2                       ; $82B4B2  8D F2 07     Mx
    ASL                             ; $82B4B5  0A           Mx
    TAX                             ; $82B4B6  AA           Mx
    LDA #$24D3                      ; $82B4B7  A9 D3 24     Mx
    STA $00D1                       ; $82B4BA  8D D1 00     Mx
    STZ $07E4                       ; $82B4BD  9C E4 07     Mx
    LDA $24D3F6,X                   ; $82B4C0  BF F6 D3 24  Mx
    STA $0886                       ; $82B4C4  8D 86 08     Mx
    STA $00D0                       ; $82B4C7  8D D0 00     Mx
    LDA #$0008                      ; $82B4CA  A9 08 00     Mx
    STA $0888                       ; $82B4CD  8D 88 08     Mx
    STZ $07F6                       ; $82B4D0  9C F6 07     Mx
    LDA #$0082                      ; $82B4D3  A9 82 00     Mx
    STA $0884                       ; $82B4D6  8D 84 08     Mx
    LDA #$0008                      ; $82B4D9  A9 08 00     Mx
    STA $07E0                       ; $82B4DC  8D E0 07     Mx
    LDY $0888                       ; $82B4DF  AC 88 08     Mx
    LDA [$D0],Y                     ; $82B4E2  B7 D0        Mx
    STA $07E4                       ; $82B4E4  8D E4 07     Mx
    INY                             ; $82B4E7  C8           Mx
    INY                             ; $82B4E8  C8           Mx
    LDA [$D0],Y                     ; $82B4E9  B7 D0        Mx
    STA $07E6                       ; $82B4EB  8D E6 07     Mx
    STZ $07E2                       ; $82B4EE  9C E2 07     Mx
    INY                             ; $82B4F1  C8           Mx
    INY                             ; $82B4F2  C8           Mx
    STY $0888                       ; $82B4F3  8C 88 08     Mx
    STZ $07DE                       ; $82B4F6  9C DE 07     Mx
    LDA #$003A                      ; $82B4F9  A9 3A 00     Mx
    STA $07DC                       ; $82B4FC  8D DC 07     Mx
    LDA #$0002                      ; $82B4FF  A9 02 00     Mx
    STA $0C3B                       ; $82B502  8D 3B 0C     Mx
    JMP L_82B548                    ; $82B505  4C 48 B5     Mx
L_82B508:
    LDA $07DC                       ; $82B508  AD DC 07     Mx
    CMP #$0022                      ; $82B50B  C9 22 00     Mx
    BNE L_82B53A                    ; $82B50E  D0 2A        Mx
    LDA $07E2                       ; $82B510  AD E2 07     Mx
    BNE L_82B527                    ; $82B513  D0 12        Mx
    LDA $0814                       ; $82B515  AD 14 08     Mx
    SEC                             ; $82B518  38           Mx
    SBC #$9A00                      ; $82B519  E9 00 9A     Mx
    LDA $0816                       ; $82B51C  AD 16 08     Mx
    SBC #$0002                      ; $82B51F  E9 02 00     Mx
    BPL L_82B542                    ; $82B522  10 1E        Mx
    JMP L_82B548                    ; $82B524  4C 48 B5     Mx
L_82B527:
    CMP #$0002                      ; $82B527  C9 02 00     Mx
    BNE L_82B532                    ; $82B52A  D0 06        Mx
    LDA $087C                       ; $82B52C  AD 7C 08     Mx
    JMP L_82B542                    ; $82B52F  4C 42 B5     Mx
L_82B532:
    CMP #$0003                      ; $82B532  C9 03 00     Mx
    BEQ L_82B542                    ; $82B535  F0 0B        Mx
    JMP L_82B548                    ; $82B537  4C 48 B5     Mx
L_82B53A:
    LDA $07E2                       ; $82B53A  AD E2 07     Mx
    CMP #$0002                      ; $82B53D  C9 02 00     Mx
    BNE L_82B548                    ; $82B540  D0 06        Mx
L_82B542:
    LDA #$0001                      ; $82B542  A9 01 00     Mx
    STA $07E4                       ; $82B545  8D E4 07     Mx
L_82B548:
    RTS                             ; $82B548  60           Mx
L_82B549:
    STZ $0812                       ; $82B549  9C 12 08     Mx
    STZ $0810                       ; $82B54C  9C 10 08     Mx
    STZ $081A                       ; $82B54F  9C 1A 08     Mx
    STZ $0818                       ; $82B552  9C 18 08     Mx
    STZ $0816                       ; $82B555  9C 16 08     Mx
    STZ $0814                       ; $82B558  9C 14 08     Mx
    LDA $087C                       ; $82B55B  AD 7C 08     Mx
    BEQ L_82B57E                    ; $82B55E  F0 1E        Mx
    LDA #$000C                      ; $82B560  A9 0C 00     Mx
    STA $07DC                       ; $82B563  8D DC 07     Mx
    LDA #$FFFF                      ; $82B566  A9 FF FF     Mx
    STA $07E2                       ; $82B569  8D E2 07     Mx
    STZ $07E4                       ; $82B56C  9C E4 07     Mx
    STZ $082A                       ; $82B56F  9C 2A 08     Mx
    STZ $07E0                       ; $82B572  9C E0 07     Mx
    LDA #$FFF8                      ; $82B575  A9 F8 FF     Mx
    STA $07E6                       ; $82B578  8D E6 07     Mx
    JMP L_82B5BC                    ; $82B57B  4C BC B5     Mx
L_82B57E:
    LDA $0846                       ; $82B57E  AD 46 08     Mx
    TAX                             ; $82B581  AA           Mx
    LDA $A7E377,X                   ; $82B582  BF 77 E3 A7  Mx
    AND #$0007                      ; $82B586  29 07 00     Mx
    STA $07F0                       ; $82B589  8D F0 07     Mx
    ASL                             ; $82B58C  0A           Mx
    TAX                             ; $82B58D  AA           Mx
    LDA $07E2                       ; $82B58E  AD E2 07     Mx
    CMP #$0003                      ; $82B591  C9 03 00     Mx
    BNE L_82B59B                    ; $82B594  D0 05        Mx
    LDX $085C                       ; $82B596  AE 5C 08     Mx
    BEQ L_82B5A1                    ; $82B599  F0 06        Mx
L_82B59B:
    CMP $A7E4A9,X                   ; $82B59B  DF A9 E4 A7  Mx
    BCC L_82B5BC                    ; $82B59F  90 1B        Mx
L_82B5A1:
    LDA #$0000                      ; $82B5A1  A9 00 00     Mx
    STA $07DC                       ; $82B5A4  8D DC 07     Mx
    LDA #$FFFF                      ; $82B5A7  A9 FF FF     Mx
    STA $07E2                       ; $82B5AA  8D E2 07     Mx
    STZ $07E4                       ; $82B5AD  9C E4 07     Mx
    STZ $082A                       ; $82B5B0  9C 2A 08     Mx
    STZ $07E0                       ; $82B5B3  9C E0 07     Mx
    LDA #$FFF8                      ; $82B5B6  A9 F8 FF     Mx
    STA $07E6                       ; $82B5B9  8D E6 07     Mx
L_82B5BC:
    RTS                             ; $82B5BC  60           Mx
L_82B5BD:
    STZ $0812                       ; $82B5BD  9C 12 08     Mx
    STZ $0810                       ; $82B5C0  9C 10 08     Mx
    STZ $081A                       ; $82B5C3  9C 1A 08     Mx
    STZ $0818                       ; $82B5C6  9C 18 08     Mx
    STZ $0816                       ; $82B5C9  9C 16 08     Mx
    STZ $0814                       ; $82B5CC  9C 14 08     Mx
    LDA $087C                       ; $82B5CF  AD 7C 08     Mx
    BNE L_82B5DA                    ; $82B5D2  D0 06        Mx
    LDA #$0000                      ; $82B5D4  A9 00 00     Mx
    JMP L_82B7C1                    ; $82B5D7  4C C1 B7     Mx
L_82B5DA:
    LDX $07F0                       ; $82B5DA  AE F0 07     Mx
    LDA $A7E4FB,X                   ; $82B5DD  BF FB E4 A7  Mx
    AND #$0007                      ; $82B5E1  29 07 00     Mx
    STA $07F0                       ; $82B5E4  8D F0 07     Mx
    LDA $07E2                       ; $82B5E7  AD E2 07     Mx
    CMP #$0008                      ; $82B5EA  C9 08 00     Mx
    BNE L_82B5F2                    ; $82B5ED  D0 03        Mx
    JMP L_82B766                    ; $82B5EF  4C 66 B7     Mx
L_82B5F2:
    CMP #$0004                      ; $82B5F2  C9 04 00     Mx
    BEQ L_82B5FA                    ; $82B5F5  F0 03        Mx
    JMP L_82B7D9                    ; $82B5F7  4C D9 B7     Mx
L_82B5FA:
    STZ $00B0                       ; $82B5FA  9C B0 00     Mx
    LDA $0A3C                       ; $82B5FD  AD 3C 0A     Mx
    BNE L_82B60A                    ; $82B600  D0 08        Mx
    LDA $0850                       ; $82B602  AD 50 08     Mx
    CMP #$0020                      ; $82B605  C9 20 00     Mx
    BCC L_82B60D                    ; $82B608  90 03        Mx
L_82B60A:
    JMP L_82B691                    ; $82B60A  4C 91 B6     Mx
L_82B60D:
    LDA $1D56                       ; $82B60D  AD 56 1D     Mx
    AND #$0003                      ; $82B610  29 03 00     Mx
    BNE L_82B618                    ; $82B613  D0 03        Mx
    JMP L_82B691                    ; $82B615  4C 91 B6     Mx
L_82B618:
    LDA $084A                       ; $82B618  AD 4A 08     Mx
    CLC                             ; $82B61B  18           Mx
    AND #$007F                      ; $82B61C  29 7F 00     Mx
    ASL                             ; $82B61F  0A           Mx
    TAX                             ; $82B620  AA           Mx
    LDY #$00                        ; $82B621  A0 00        Mx
    STZ $09E2                       ; $82B623  9C E2 09     Mx
    LDA $9AABEB,X                   ; $82B626  BF EB AB 9A  Mx
    BPL L_82B62F                    ; $82B62A  10 03        Mx
    DEC $09E2                       ; $82B62C  CE E2 09     Mx
L_82B62F:
    ASL                             ; $82B62F  0A           Mx
    ROL $09E2                       ; $82B630  2E E2 09     Mx
    ASL                             ; $82B633  0A           Mx
    ROL $09E2                       ; $82B634  2E E2 09     Mx
    ASL                             ; $82B637  0A           Mx
    ROL $09E2                       ; $82B638  2E E2 09     Mx
    ASL                             ; $82B63B  0A           Mx
    ROL $09E2                       ; $82B63C  2E E2 09     Mx
    ASL                             ; $82B63F  0A           Mx
    ROL $09E2                       ; $82B640  2E E2 09     Mx
    STA $09E0                       ; $82B643  8D E0 09     Mx
    LDY #$00                        ; $82B646  A0 00        Mx
    STZ $09EA                       ; $82B648  9C EA 09     Mx
    LDA $9AABAB,X                   ; $82B64B  BF AB AB 9A  Mx
    BPL L_82B654                    ; $82B64F  10 03        Mx
    DEC $09EA                       ; $82B651  CE EA 09     Mx
L_82B654:
    ASL                             ; $82B654  0A           Mx
    ROL $09EA                       ; $82B655  2E EA 09     Mx
    ASL                             ; $82B658  0A           Mx
    ROL $09EA                       ; $82B659  2E EA 09     Mx
    ASL                             ; $82B65C  0A           Mx
    ROL $09EA                       ; $82B65D  2E EA 09     Mx
    ASL                             ; $82B660  0A           Mx
    ROL $09EA                       ; $82B661  2E EA 09     Mx
    ASL                             ; $82B664  0A           Mx
    ROL $09EA                       ; $82B665  2E EA 09     Mx
    STA $09E8                       ; $82B668  8D E8 09     Mx
    LDA $09DA                       ; $82B66B  AD DA 09     Mx
    BNE L_82B67C                    ; $82B66E  D0 0C        Mx
    LDA #$E400                      ; $82B670  A9 00 E4     Mx
    STA $09E4                       ; $82B673  8D E4 09     Mx
    LDA #$0002                      ; $82B676  A9 02 00     Mx
    STA $09E6                       ; $82B679  8D E6 09     Mx
L_82B67C:
    LDA #$0030                      ; $82B67C  A9 30 00     Mx
    STA $09AC                       ; $82B67F  8D AC 09     Mx
    STA $09AA                       ; $82B682  8D AA 09     Mx
    LDA #$0020                      ; $82B685  A9 20 00     Mx
    STA $0A3C                       ; $82B688  8D 3C 0A     Mx
    LDA #$0001                      ; $82B68B  A9 01 00     Mx
    STA $00B0                       ; $82B68E  8D B0 00     Mx
L_82B691:
    LDA $0954                       ; $82B691  AD 54 09     Mx
    BNE L_82B69E                    ; $82B694  D0 08        Mx
    LDA $0852                       ; $82B696  AD 52 08     Mx
    CMP #$0020                      ; $82B699  C9 20 00     Mx
    BCC L_82B6A1                    ; $82B69C  90 03        Mx
L_82B69E:
    JMP L_82B724                    ; $82B69E  4C 24 B7     Mx
L_82B6A1:
    LDA $1D57                       ; $82B6A1  AD 57 1D     Mx
    AND #$0003                      ; $82B6A4  29 03 00     Mx
    BNE L_82B6AC                    ; $82B6A7  D0 03        Mx
    JMP L_82B724                    ; $82B6A9  4C 24 B7     Mx
L_82B6AC:
    LDA $084A                       ; $82B6AC  AD 4A 08     Mx
    AND #$007F                      ; $82B6AF  29 7F 00     Mx
    ASL                             ; $82B6B2  0A           Mx
    TAX                             ; $82B6B3  AA           Mx
    LDY #$00                        ; $82B6B4  A0 00        Mx
    STZ $08FA                       ; $82B6B6  9C FA 08     Mx
    LDA $9AABEB,X                   ; $82B6B9  BF EB AB 9A  Mx
    BPL L_82B6C2                    ; $82B6BD  10 03        Mx
    DEC $08FA                       ; $82B6BF  CE FA 08     Mx
L_82B6C2:
    ASL                             ; $82B6C2  0A           Mx
    ROL $08FA                       ; $82B6C3  2E FA 08     Mx
    ASL                             ; $82B6C6  0A           Mx
    ROL $08FA                       ; $82B6C7  2E FA 08     Mx
    ASL                             ; $82B6CA  0A           Mx
    ROL $08FA                       ; $82B6CB  2E FA 08     Mx
    ASL                             ; $82B6CE  0A           Mx
    ROL $08FA                       ; $82B6CF  2E FA 08     Mx
    ASL                             ; $82B6D2  0A           Mx
    ROL $08FA                       ; $82B6D3  2E FA 08     Mx
    STA $08F8                       ; $82B6D6  8D F8 08     Mx
    LDY #$00                        ; $82B6D9  A0 00        Mx
    STZ $0902                       ; $82B6DB  9C 02 09     Mx
    LDA $9AABAB,X                   ; $82B6DE  BF AB AB 9A  Mx
    BPL L_82B6E7                    ; $82B6E2  10 03        Mx
    DEC $0902                       ; $82B6E4  CE 02 09     Mx
L_82B6E7:
    ASL                             ; $82B6E7  0A           Mx
    ROL $0902                       ; $82B6E8  2E 02 09     Mx
    ASL                             ; $82B6EB  0A           Mx
    ROL $0902                       ; $82B6EC  2E 02 09     Mx
    ASL                             ; $82B6EF  0A           Mx
    ROL $0902                       ; $82B6F0  2E 02 09     Mx
    ASL                             ; $82B6F3  0A           Mx
    ROL $0902                       ; $82B6F4  2E 02 09     Mx
    ASL                             ; $82B6F7  0A           Mx
    ROL $0902                       ; $82B6F8  2E 02 09     Mx
    STA $0900                       ; $82B6FB  8D 00 09     Mx
    LDA $08F2                       ; $82B6FE  AD F2 08     Mx
    BNE L_82B70F                    ; $82B701  D0 0C        Mx
    LDA #$E400                      ; $82B703  A9 00 E4     Mx
    STA $08FC                       ; $82B706  8D FC 08     Mx
    LDA #$0002                      ; $82B709  A9 02 00     Mx
    STA $08FE                       ; $82B70C  8D FE 08     Mx
L_82B70F:
    LDA #$0030                      ; $82B70F  A9 30 00     Mx
    STA $08C4                       ; $82B712  8D C4 08     Mx
    STA $08C2                       ; $82B715  8D C2 08     Mx
    LDA #$0020                      ; $82B718  A9 20 00     Mx
    STA $0954                       ; $82B71B  8D 54 09     Mx
    LDA #$0001                      ; $82B71E  A9 01 00     Mx
    STA $00B0                       ; $82B721  8D B0 00     Mx
L_82B724:
    LDA $00B0                       ; $82B724  AD B0 00     Mx
    BEQ L_82B763                    ; $82B727  F0 3A        Mx
    LDA #$0023                      ; $82B729  A9 23 00     Mx
    JSL L_BDFDF3                    ; $82B72C  22 F3 FD BD  Mx
    LDA $1D56                       ; $82B730  AD 56 1D     Mx
    AND #$0003                      ; $82B733  29 03 00     Mx
    BEQ L_82B751                    ; $82B736  F0 19        Mx
    CMP #$0001                      ; $82B738  C9 01 00     Mx
    BNE L_82B763                    ; $82B73B  D0 26        Mx
    LDA $1613                       ; $82B73D  AD 13 16     Mx
    BNE L_82B74F                    ; $82B740  D0 0D        Mx
    LDA #$0010                      ; $82B742  A9 10 00     Mx
    JSL L_BDFDF3                    ; $82B745  22 F3 FD BD  Mx
    LDA #$0064                      ; $82B749  A9 64 00     Mx
    STA $1613                       ; $82B74C  8D 13 16     Mx
L_82B74F:
    BRA L_82B763                    ; $82B74F  80 12        Mx
L_82B751:
    LDA $1611                       ; $82B751  AD 11 16     Mx
    BNE L_82B763                    ; $82B754  D0 0D        Mx
    LDA #$0011                      ; $82B756  A9 11 00     Mx
    JSL L_BDFDF3                    ; $82B759  22 F3 FD BD  Mx
    LDA #$0064                      ; $82B75D  A9 64 00     Mx
    STA $1611                       ; $82B760  8D 11 16     Mx
L_82B763:
    JMP L_82B7D9                    ; $82B763  4C D9 B7     Mx
L_82B766:
    LDA #$000C                      ; $82B766  A9 0C 00     Mx
    STA $07DC                       ; $82B769  8D DC 07     Mx
    LDA #$FFFF                      ; $82B76C  A9 FF FF     Mx
    STA $07E2                       ; $82B76F  8D E2 07     Mx
    STZ $07E4                       ; $82B772  9C E4 07     Mx
    STZ $082A                       ; $82B775  9C 2A 08     Mx
    STZ $07E0                       ; $82B778  9C E0 07     Mx
    LDA #$FFF8                      ; $82B77B  A9 F8 FF     Mx
    STA $07E6                       ; $82B77E  8D E6 07     Mx
    LDA $0850                       ; $82B781  AD 50 08     Mx
    CMP #$003C                      ; $82B784  C9 3C 00     Mx
    BCS L_82B796                    ; $82B787  B0 0D        Mx
    CMP #$001E                      ; $82B789  C9 1E 00     Mx
    BCC L_82B7AE                    ; $82B78C  90 20        Mx
    LDA $09AC                       ; $82B78E  AD AC 09     Mx
    CMP #$002C                      ; $82B791  C9 2C 00     Mx
    BEQ L_82B7AE                    ; $82B794  F0 18        Mx
L_82B796:
    LDA $0852                       ; $82B796  AD 52 08     Mx
    CMP #$003C                      ; $82B799  C9 3C 00     Mx
    BCS L_82B7AB                    ; $82B79C  B0 0D        Mx
    CMP #$001E                      ; $82B79E  C9 1E 00     Mx
    BCC L_82B7AE                    ; $82B7A1  90 0B        Mx
    LDA $08C4                       ; $82B7A3  AD C4 08     Mx
    CMP #$002C                      ; $82B7A6  C9 2C 00     Mx
    BEQ L_82B7AE                    ; $82B7A9  F0 03        Mx
L_82B7AB:
    JMP L_82B7D9                    ; $82B7AB  4C D9 B7     Mx
L_82B7AE:
    LDA $0CCB                       ; $82B7AE  AD CB 0C     Mx
    CMP #$0003                      ; $82B7B1  C9 03 00     Mx
    BCC L_82B7D9                    ; $82B7B4  90 23        Mx
    LDA $1D56                       ; $82B7B6  AD 56 1D     Mx
    AND #$0001                      ; $82B7B9  29 01 00     Mx
    BEQ L_82B7D9                    ; $82B7BC  F0 1B        Mx
    LDA #$002E                      ; $82B7BE  A9 2E 00     Mx
L_82B7C1:
    STA $07DC                       ; $82B7C1  8D DC 07     Mx
    LDA #$FFFF                      ; $82B7C4  A9 FF FF     Mx
    STA $07E2                       ; $82B7C7  8D E2 07     Mx
    STZ $07E4                       ; $82B7CA  9C E4 07     Mx
    STZ $082A                       ; $82B7CD  9C 2A 08     Mx
    STZ $07E0                       ; $82B7D0  9C E0 07     Mx
    LDA #$FFF8                      ; $82B7D3  A9 F8 FF     Mx
    STA $07E6                       ; $82B7D6  8D E6 07     Mx
L_82B7D9:
    RTS                             ; $82B7D9  60           Mx
L_82B7DA:
    LDA #$000A                      ; $82B7DA  A9 0A 00     Mx
    STA $0860                       ; $82B7DD  8D 60 08     Mx
    LDA $0816                       ; $82B7E0  AD 16 08     Mx
    BPL L_82B80A                    ; $82B7E3  10 25        Mx
    LDA $07FC                       ; $82B7E5  AD FC 07     Mx
    BMI L_82B7EF                    ; $82B7E8  30 05        Mx
    ORA $07FE                       ; $82B7EA  0D FE 07     Mx
    BNE L_82B80A                    ; $82B7ED  D0 1B        Mx
L_82B7EF:
    STZ $080A                       ; $82B7EF  9C 0A 08     Mx
    STZ $0808                       ; $82B7F2  9C 08 08     Mx
    STZ $0812                       ; $82B7F5  9C 12 08     Mx
    STZ $0810                       ; $82B7F8  9C 10 08     Mx
    STZ $081A                       ; $82B7FB  9C 1A 08     Mx
    STZ $0818                       ; $82B7FE  9C 18 08     Mx
    STZ $0816                       ; $82B801  9C 16 08     Mx
    STZ $0814                       ; $82B804  9C 14 08     Mx
    JMP L_82B820                    ; $82B807  4C 20 B8     Mx
L_82B80A:
    LDA $0814                       ; $82B80A  AD 14 08     Mx
    SEC                             ; $82B80D  38           Mx
    SBC #$2500                      ; $82B80E  E9 00 25     Mx
    STA $0814                       ; $82B811  8D 14 08     Mx
    LDA $0816                       ; $82B814  AD 16 08     Mx
    SBC #$0000                      ; $82B817  E9 00 00     Mx
    STA $0816                       ; $82B81A  8D 16 08     Mx
    JMP L_82B820                    ; $82B81D  4C 20 B8     Mx
L_82B820:
    LDA $086C                       ; $82B820  AD 6C 08     Mx
    BEQ L_82B846                    ; $82B823  F0 21        Mx
    DEC $086C                       ; $82B825  CE 6C 08     Mx
    BNE L_82B8A3                    ; $82B828  D0 79        Mx
    LDA $0854                       ; $82B82A  AD 54 08     Mx
    AND $08B8                       ; $82B82D  2D B8 08     Mx
    BEQ L_82B846                    ; $82B830  F0 14        Mx
    LDA $086C                       ; $82B832  AD 6C 08     Mx
    CMP #$0004                      ; $82B835  C9 04 00     Mx
    BCC L_82B846                    ; $82B838  90 0C        Mx
    SEC                             ; $82B83A  38           Mx
    SBC #$0008                      ; $82B83B  E9 08 00     Mx
    BCS L_82B843                    ; $82B83E  B0 03        Mx
    LDA #$0004                      ; $82B840  A9 04 00     Mx
L_82B843:
    STA $086C                       ; $82B843  8D 6C 08     Mx
L_82B846:
    LDA $080A                       ; $82B846  AD 0A 08     Mx
    ORA $0808                       ; $82B849  0D 08 08     Mx
    BNE L_82B8A3                    ; $82B84C  D0 55        Mx
    STZ $0812                       ; $82B84E  9C 12 08     Mx
    STZ $0810                       ; $82B851  9C 10 08     Mx
    STZ $081A                       ; $82B854  9C 1A 08     Mx
    STZ $0818                       ; $82B857  9C 18 08     Mx
    LDA $07E2                       ; $82B85A  AD E2 07     Mx
    CMP #$0004                      ; $82B85D  C9 04 00     Mx
    BEQ L_82B867                    ; $82B860  F0 05        Mx
    CMP #$000E                      ; $82B862  C9 0E 00     Mx
    BNE L_82B8DB                    ; $82B865  D0 74        Mx
L_82B867:
    LDA $087C                       ; $82B867  AD 7C 08     Mx
    BEQ L_82B87C                    ; $82B86A  F0 10        Mx
    JSR L_82D182                    ; $82B86C  20 82 D1     Mx
    LDA $07DC                       ; $82B86F  AD DC 07     Mx
    CMP #$002E                      ; $82B872  C9 2E 00     Mx
    BEQ L_82B87F                    ; $82B875  F0 08        Mx
    LDA #$000C                      ; $82B877  A9 0C 00     Mx
    BNE L_82B87F                    ; $82B87A  D0 03        Mx
L_82B87C:
    LDA #$0000                      ; $82B87C  A9 00 00     Mx
L_82B87F:
    STA $07DC                       ; $82B87F  8D DC 07     Mx
    LDA #$FFFF                      ; $82B882  A9 FF FF     Mx
    STA $07E2                       ; $82B885  8D E2 07     Mx
    STZ $07E4                       ; $82B888  9C E4 07     Mx
    STZ $082A                       ; $82B88B  9C 2A 08     Mx
    STZ $07E0                       ; $82B88E  9C E0 07     Mx
    LDA #$FFF8                      ; $82B891  A9 F8 FF     Mx
    STA $07E6                       ; $82B894  8D E6 07     Mx
    LDA #$003C                      ; $82B897  A9 3C 00     Mx
    STA $07DE                       ; $82B89A  8D DE 07     Mx
    STZ $086C                       ; $82B89D  9C 6C 08     Mx
    JMP L_82B8DB                    ; $82B8A0  4C DB B8     Mx
L_82B8A3:
    LDA $07E2                       ; $82B8A3  AD E2 07     Mx
    CMP #$0004                      ; $82B8A6  C9 04 00     Mx
    BNE L_82B8CA                    ; $82B8A9  D0 1F        Mx
    LDA $07DE                       ; $82B8AB  AD DE 07     Mx
    CMP #$0003                      ; $82B8AE  C9 03 00     Mx
    BEQ L_82B8EB                    ; $82B8B1  F0 38        Mx
    LDA $07E4                       ; $82B8B3  AD E4 07     Mx
    BNE L_82B8CA                    ; $82B8B6  D0 12        Mx
    LDA $1613                       ; $82B8B8  AD 13 16     Mx
    BNE L_82B8CA                    ; $82B8BB  D0 0D        Mx
    LDA #$000F                      ; $82B8BD  A9 0F 00     Mx
    JSL L_BDFDF3                    ; $82B8C0  22 F3 FD BD  Mx
    LDA #$0064                      ; $82B8C4  A9 64 00     Mx
    STA $1613                       ; $82B8C7  8D 13 16     Mx
L_82B8CA:
    LDA $07E2                       ; $82B8CA  AD E2 07     Mx
    CMP #$0007                      ; $82B8CD  C9 07 00     Mx
    BEQ L_82B8D5                    ; $82B8D0  F0 03        Mx
    JMP L_82B8DB                    ; $82B8D2  4C DB B8     Mx
L_82B8D5:
    LDA #$0014                      ; $82B8D5  A9 14 00     Mx
    STA $07E4                       ; $82B8D8  8D E4 07     Mx
L_82B8DB:
    LDA $07E2                       ; $82B8DB  AD E2 07     Mx
    CMP #$0004                      ; $82B8DE  C9 04 00     Mx
    BNE L_82B8F4                    ; $82B8E1  D0 11        Mx
    LDA $07DE                       ; $82B8E3  AD DE 07     Mx
    CMP #$0003                      ; $82B8E6  C9 03 00     Mx
    BNE L_82B8F4                    ; $82B8E9  D0 09        Mx
L_82B8EB:
    STZ $086C                       ; $82B8EB  9C 6C 08     Mx
    LDA #$0001                      ; $82B8EE  A9 01 00     Mx
    STA $07E4                       ; $82B8F1  8D E4 07     Mx
L_82B8F4:
    RTS                             ; $82B8F4  60           Mx
L_82B8F5:
    LDA $0C19                       ; $82B8F5  AD 19 0C     Mx
    BNE L_82B908                    ; $82B8F8  D0 0E        Mx
    LDA $0846                       ; $82B8FA  AD 46 08     Mx
    TAX                             ; $82B8FD  AA           Mx
    LDA $A7E377,X                   ; $82B8FE  BF 77 E3 A7  Mx
    AND #$0007                      ; $82B902  29 07 00     Mx
    STA $07F0                       ; $82B905  8D F0 07     Mx
L_82B908:
    LDA $0C19                       ; $82B908  AD 19 0C     Mx
    CMP $07D8                       ; $82B90B  CD D8 07     Mx
    BNE L_82B91E                    ; $82B90E  D0 0E        Mx
    LDA $0BDD                       ; $82B910  AD DD 0B     Mx
    BEQ L_82B91E                    ; $82B913  F0 09        Mx
    STZ $0BDD                       ; $82B915  9C DD 0B     Mx
    LDA #$001E                      ; $82B918  A9 1E 00     Mx
    STA $0BF1                       ; $82B91B  8D F1 0B     Mx
L_82B91E:
    LDA $07E2                       ; $82B91E  AD E2 07     Mx
    CMP #$0004                      ; $82B921  C9 04 00     Mx
    BNE L_82B951                    ; $82B924  D0 2B        Mx
    LDA $0C19                       ; $82B926  AD 19 0C     Mx
    CMP $07D8                       ; $82B929  CD D8 07     Mx
    BEQ L_82B933                    ; $82B92C  F0 05        Mx
    LDA #$0000                      ; $82B92E  A9 00 00     Mx
    BRA L_82B936                    ; $82B931  80 03        Mx
L_82B933:
    LDA #$000C                      ; $82B933  A9 0C 00     Mx
L_82B936:
    STA $07DC                       ; $82B936  8D DC 07     Mx
    LDA #$FFFF                      ; $82B939  A9 FF FF     Mx
    STA $07E2                       ; $82B93C  8D E2 07     Mx
    STZ $07E4                       ; $82B93F  9C E4 07     Mx
    STZ $082A                       ; $82B942  9C 2A 08     Mx
    STZ $07E0                       ; $82B945  9C E0 07     Mx
    LDA #$FFF8                      ; $82B948  A9 F8 FF     Mx
    STA $07E6                       ; $82B94B  8D E6 07     Mx
    JSR L_82D182                    ; $82B94E  20 82 D1     Mx
L_82B951:
    RTS                             ; $82B951  60           Mx
L_82B952:
    LDA $07E2                       ; $82B952  AD E2 07     Mx
    CMP #$0005                      ; $82B955  C9 05 00     Mx
    BNE L_82B990                    ; $82B958  D0 36        Mx
    LDA $07D8                       ; $82B95A  AD D8 07     Mx
    CMP $0C19                       ; $82B95D  CD 19 0C     Mx
    BNE L_82B972                    ; $82B960  D0 10        Mx
    JSR L_82D182                    ; $82B962  20 82 D1     Mx
    LDA $07DC                       ; $82B965  AD DC 07     Mx
    CMP #$002E                      ; $82B968  C9 2E 00     Mx
    BEQ L_82B975                    ; $82B96B  F0 08        Mx
    LDA #$000C                      ; $82B96D  A9 0C 00     Mx
    BNE L_82B975                    ; $82B970  D0 03        Mx
L_82B972:
    LDA #$0000                      ; $82B972  A9 00 00     Mx
L_82B975:
    STA $07DC                       ; $82B975  8D DC 07     Mx
    LDA #$FFFF                      ; $82B978  A9 FF FF     Mx
    STA $07E2                       ; $82B97B  8D E2 07     Mx
    STZ $07E4                       ; $82B97E  9C E4 07     Mx
    STZ $082A                       ; $82B981  9C 2A 08     Mx
    STZ $07E0                       ; $82B984  9C E0 07     Mx
    LDA #$FFF8                      ; $82B987  A9 F8 FF     Mx
    STA $07E6                       ; $82B98A  8D E6 07     Mx
    JMP L_82BFA4                    ; $82B98D  4C A4 BF     Mx
L_82B990:
    CMP #$0003                      ; $82B990  C9 03 00     Mx
    BEQ L_82B998                    ; $82B993  F0 03        Mx
    JMP L_82BFA4                    ; $82B995  4C A4 BF     Mx
L_82B998:
    LDA $07F0                       ; $82B998  AD F0 07     Mx
    ASL                             ; $82B99B  0A           Mx
    ASL                             ; $82B99C  0A           Mx
    ASL                             ; $82B99D  0A           Mx
    ASL                             ; $82B99E  0A           Mx
    CLC                             ; $82B99F  18           Mx
    ADC #$0008                      ; $82B9A0  69 08 00     Mx
    STA $00D9                       ; $82B9A3  8D D9 00     Mx
    LDA $07E4                       ; $82B9A6  AD E4 07     Mx
    CMP #$0002                      ; $82B9A9  C9 02 00     Mx
    BNE L_82B9B1                    ; $82B9AC  D0 03        Mx
    JMP L_82BA7A                    ; $82B9AE  4C 7A BA     Mx
L_82B9B1:
    CMP #$0001                      ; $82B9B1  C9 01 00     Mx
    BEQ L_82BA1C                    ; $82B9B4  F0 66        Mx
    CMP #$0000                      ; $82B9B6  C9 00 00     Mx
    BEQ L_82B9BE                    ; $82B9B9  F0 03        Mx
    JMP L_82BFA4                    ; $82B9BB  4C A4 BF     Mx
L_82B9BE:
    LDA $0784                       ; $82B9BE  AD 84 07     Mx
    BNE L_82BA19                    ; $82B9C1  D0 56        Mx
    LDA $084E                       ; $82B9C3  AD 4E 08     Mx
    CMP #$000A                      ; $82B9C6  C9 0A 00     Mx
    BCC L_82BA19                    ; $82B9C9  90 4E        Mx
    CMP #$0028                      ; $82B9CB  C9 28 00     Mx
    BCS L_82BA19                    ; $82B9CE  B0 49        Mx
    LDA $0848                       ; $82B9D0  AD 48 08     Mx
    SEC                             ; $82B9D3  38           Mx
    SBC $00D9                       ; $82B9D4  ED D9 00     Mx
    BPL L_82B9E0                    ; $82B9D7  10 07        Mx
    EOR #$FFFF                      ; $82B9D9  49 FF FF     Mx
    CLC                             ; $82B9DC  18           Mx
    ADC #$0001                      ; $82B9DD  69 01 00     Mx
L_82B9E0:
    CMP #$0040                      ; $82B9E0  C9 40 00     Mx
    BCC L_82B9F2                    ; $82B9E3  90 0D        Mx
    SEC                             ; $82B9E5  38           Mx
    SBC #$0080                      ; $82B9E6  E9 80 00     Mx
    BPL L_82B9F2                    ; $82B9E9  10 07        Mx
    EOR #$FFFF                      ; $82B9EB  49 FF FF     Mx
    CLC                             ; $82B9EE  18           Mx
    ADC #$0001                      ; $82B9EF  69 01 00     Mx
L_82B9F2:
    SEC                             ; $82B9F2  38           Mx
    SBC #$0018                      ; $82B9F3  E9 18 00     Mx
    BPL L_82BA19                    ; $82B9F6  10 21        Mx
    LDA $06F4                       ; $82B9F8  AD F4 06     Mx
    STA $00A4                       ; $82B9FB  8D A4 00     Mx
    LDA $0722                       ; $82B9FE  AD 22 07     Mx
    STA $00A8                       ; $82BA01  8D A8 00     Mx
    LDA #$0003                      ; $82BA04  A9 03 00     Mx
    STA $00A6                       ; $82BA07  8D A6 00     Mx
    LDA $07CA                       ; $82BA0A  AD CA 07     Mx
    STA $00AA                       ; $82BA0D  8D AA 00     Mx
    LDA $06F8                       ; $82BA10  AD F8 06     Mx
    STA $00AC                       ; $82BA13  8D AC 00     Mx
    JMP L_82BAD8                    ; $82BA16  4C D8 BA     Mx
L_82BA19:
    JMP L_82BFA4                    ; $82BA19  4C A4 BF     Mx
L_82BA1C:
    LDA $0A3C                       ; $82BA1C  AD 3C 0A     Mx
    BNE L_82BA77                    ; $82BA1F  D0 56        Mx
    LDA $0850                       ; $82BA21  AD 50 08     Mx
    CMP #$000A                      ; $82BA24  C9 0A 00     Mx
    BCC L_82BA19                    ; $82BA27  90 F0        Mx
    CMP #$0028                      ; $82BA29  C9 28 00     Mx
    BCS L_82BA77                    ; $82BA2C  B0 49        Mx
    LDA $084A                       ; $82BA2E  AD 4A 08     Mx
    SEC                             ; $82BA31  38           Mx
    SBC $00D9                       ; $82BA32  ED D9 00     Mx
    BPL L_82BA3E                    ; $82BA35  10 07        Mx
    EOR #$FFFF                      ; $82BA37  49 FF FF     Mx
    CLC                             ; $82BA3A  18           Mx
    ADC #$0001                      ; $82BA3B  69 01 00     Mx
L_82BA3E:
    CMP #$0040                      ; $82BA3E  C9 40 00     Mx
    BCC L_82BA50                    ; $82BA41  90 0D        Mx
    SEC                             ; $82BA43  38           Mx
    SBC #$0080                      ; $82BA44  E9 80 00     Mx
    BPL L_82BA50                    ; $82BA47  10 07        Mx
    EOR #$FFFF                      ; $82BA49  49 FF FF     Mx
    CLC                             ; $82BA4C  18           Mx
    ADC #$0001                      ; $82BA4D  69 01 00     Mx
L_82BA50:
    SEC                             ; $82BA50  38           Mx
    SBC #$0018                      ; $82BA51  E9 18 00     Mx
    BPL L_82BA77                    ; $82BA54  10 21        Mx
    LDA $09AC                       ; $82BA56  AD AC 09     Mx
    STA $00A4                       ; $82BA59  8D A4 00     Mx
    LDA $09DA                       ; $82BA5C  AD DA 09     Mx
    STA $00A8                       ; $82BA5F  8D A8 00     Mx
    LDA #$0001                      ; $82BA62  A9 01 00     Mx
    STA $00A6                       ; $82BA65  8D A6 00     Mx
    LDA $0A82                       ; $82BA68  AD 82 0A     Mx
    STA $00AA                       ; $82BA6B  8D AA 00     Mx
    LDA $09B0                       ; $82BA6E  AD B0 09     Mx
    STA $00AC                       ; $82BA71  8D AC 00     Mx
    JMP L_82BAD8                    ; $82BA74  4C D8 BA     Mx
L_82BA77:
    JMP L_82BFA4                    ; $82BA77  4C A4 BF     Mx
L_82BA7A:
    LDA $0954                       ; $82BA7A  AD 54 09     Mx
    BNE L_82BAD5                    ; $82BA7D  D0 56        Mx
    LDA $0852                       ; $82BA7F  AD 52 08     Mx
    CMP #$000A                      ; $82BA82  C9 0A 00     Mx
    BCC L_82BA19                    ; $82BA85  90 92        Mx
    CMP #$0028                      ; $82BA87  C9 28 00     Mx
    BCS L_82BAD5                    ; $82BA8A  B0 49        Mx
    LDA $084C                       ; $82BA8C  AD 4C 08     Mx
    SEC                             ; $82BA8F  38           Mx
    SBC $00D9                       ; $82BA90  ED D9 00     Mx
    BPL L_82BA9C                    ; $82BA93  10 07        Mx
    EOR #$FFFF                      ; $82BA95  49 FF FF     Mx
    CLC                             ; $82BA98  18           Mx
    ADC #$0001                      ; $82BA99  69 01 00     Mx
L_82BA9C:
    CMP #$0040                      ; $82BA9C  C9 40 00     Mx
    BCC L_82BAAE                    ; $82BA9F  90 0D        Mx
    SEC                             ; $82BAA1  38           Mx
    SBC #$0080                      ; $82BAA2  E9 80 00     Mx
    BPL L_82BAAE                    ; $82BAA5  10 07        Mx
    EOR #$FFFF                      ; $82BAA7  49 FF FF     Mx
    CLC                             ; $82BAAA  18           Mx
    ADC #$0001                      ; $82BAAB  69 01 00     Mx
L_82BAAE:
    SEC                             ; $82BAAE  38           Mx
    SBC #$0018                      ; $82BAAF  E9 18 00     Mx
    BPL L_82BAD5                    ; $82BAB2  10 21        Mx
    LDA $08C4                       ; $82BAB4  AD C4 08     Mx
    STA $00A4                       ; $82BAB7  8D A4 00     Mx
    LDA $08F2                       ; $82BABA  AD F2 08     Mx
    STA $00A8                       ; $82BABD  8D A8 00     Mx
    LDA #$0002                      ; $82BAC0  A9 02 00     Mx
    STA $00A6                       ; $82BAC3  8D A6 00     Mx
    LDA $099A                       ; $82BAC6  AD 9A 09     Mx
    STA $00AA                       ; $82BAC9  8D AA 00     Mx
    LDA $08C8                       ; $82BACC  AD C8 08     Mx
    STA $00AC                       ; $82BACF  8D AC 00     Mx
    JMP L_82BAD8                    ; $82BAD2  4C D8 BA     Mx
L_82BAD5:
    JMP L_82BFA4                    ; $82BAD5  4C A4 BF     Mx
L_82BAD8:
    LDA $00A4                       ; $82BAD8  AD A4 00     Mx
    CMP #$002E                      ; $82BADB  C9 2E 00     Mx
    BEQ L_82BAEA                    ; $82BADE  F0 0A        Mx
    CMP #$0020                      ; $82BAE0  C9 20 00     Mx
    BEQ L_82BAEA                    ; $82BAE3  F0 05        Mx
    CMP #$0022                      ; $82BAE5  C9 22 00     Mx
    BNE L_82BAF5                    ; $82BAE8  D0 0B        Mx
L_82BAEA:
    LDA $1D56                       ; $82BAEA  AD 56 1D     Mx
    CMP #$6666                      ; $82BAED  C9 66 66     Mx
    BCC L_82BAF5                    ; $82BAF0  90 03        Mx
L_82BAF2:
    JMP L_82BFA4                    ; $82BAF2  4C A4 BF     Mx
L_82BAF5:
    LDA $00A8                       ; $82BAF5  AD A8 00     Mx
    CMP #$0048                      ; $82BAF8  C9 48 00     Mx
    BPL L_82BAF2                    ; $82BAFB  10 F5        Mx
    LDA $00D9                       ; $82BAFD  AD D9 00     Mx
    AND #$007F                      ; $82BB00  29 7F 00     Mx
    ASL                             ; $82BB03  0A           Mx
    TAX                             ; $82BB04  AA           Mx
    LDA $00AC                       ; $82BB05  AD AC 00     Mx
    BIT #$0001                      ; $82BB08  89 01 00     Mx
    BNE L_82BB17                    ; $82BB0B  D0 0A        Mx
    BIT #$0004                      ; $82BB0D  89 04 00     Mx
    BNE L_82BB3F                    ; $82BB10  D0 2D        Mx
    LDA $00AA                       ; $82BB12  AD AA 00     Mx
    BMI L_82BB25                    ; $82BB15  30 0E        Mx
L_82BB17:
    LDA $1D56                       ; $82BB17  AD 56 1D     Mx
    AND #$0003                      ; $82BB1A  29 03 00     Mx
    CMP #$0003                      ; $82BB1D  C9 03 00     Mx
    BEQ L_82BB3F                    ; $82BB20  F0 1D        Mx
    JMP L_82BB35                    ; $82BB22  4C 35 BB     Mx
L_82BB25:
    LDA $1D56                       ; $82BB25  AD 56 1D     Mx
    AND #$0003                      ; $82BB28  29 03 00     Mx
    CMP #$0002                      ; $82BB2B  C9 02 00     Mx
    BCS L_82BB3F                    ; $82BB2E  B0 0F        Mx
    CMP #$0001                      ; $82BB30  C9 01 00     Mx
    BEQ L_82BB3A                    ; $82BB33  F0 05        Mx
L_82BB35:
    LDA #$0003                      ; $82BB35  A9 03 00     Mx
    BNE L_82BB42                    ; $82BB38  D0 08        Mx
L_82BB3A:
    LDA #$0005                      ; $82BB3A  A9 05 00     Mx
    BNE L_82BB42                    ; $82BB3D  D0 03        Mx
L_82BB3F:
    LDA #$0005                      ; $82BB3F  A9 05 00     Mx
L_82BB42:
    STA $00AE                       ; $82BB42  8D AE 00     Mx
    PHX                             ; $82BB45  DA           Mx
    LDA $160D                       ; $82BB46  AD 0D 16     Mx
    BNE L_82BB8B                    ; $82BB49  D0 40        Mx
    LDA #$0028                      ; $82BB4B  A9 28 00     Mx
    STA $160D                       ; $82BB4E  8D 0D 16     Mx
    LDA #$0023                      ; $82BB51  A9 23 00     Mx
    JSL L_BDFDF3                    ; $82BB54  22 F3 FD BD  Mx
    LDA $1D56                       ; $82BB58  AD 56 1D     Mx
    AND #$0003                      ; $82BB5B  29 03 00     Mx
    BEQ L_82BB79                    ; $82BB5E  F0 19        Mx
    CMP #$0001                      ; $82BB60  C9 01 00     Mx
    BNE L_82BB8B                    ; $82BB63  D0 26        Mx
    LDA $1613                       ; $82BB65  AD 13 16     Mx
    BNE L_82BB77                    ; $82BB68  D0 0D        Mx
    LDA #$0010                      ; $82BB6A  A9 10 00     Mx
    JSL L_BDFDF3                    ; $82BB6D  22 F3 FD BD  Mx
    LDA #$0064                      ; $82BB71  A9 64 00     Mx
    STA $1613                       ; $82BB74  8D 13 16     Mx
L_82BB77:
    BRA L_82BB8B                    ; $82BB77  80 12        Mx
L_82BB79:
    LDA $1611                       ; $82BB79  AD 11 16     Mx
    BNE L_82BB8B                    ; $82BB7C  D0 0D        Mx
    LDA #$0011                      ; $82BB7E  A9 11 00     Mx
    JSL L_BDFDF3                    ; $82BB81  22 F3 FD BD  Mx
    LDA #$0064                      ; $82BB85  A9 64 00     Mx
    STA $1611                       ; $82BB88  8D 11 16     Mx
L_82BB8B:
    PLX                             ; $82BB8B  FA           Mx
    LDA $00A6                       ; $82BB8C  AD A6 00     Mx
    CMP #$0002                      ; $82BB8F  C9 02 00     Mx
    BNE L_82BB97                    ; $82BB92  D0 03        Mx
    JMP L_82BC13                    ; $82BB94  4C 13 BC     Mx
L_82BB97:
    CMP #$0001                      ; $82BB97  C9 01 00     Mx
    BNE L_82BB9F                    ; $82BB9A  D0 03        Mx
    JMP L_82BC87                    ; $82BB9C  4C 87 BC     Mx
L_82BB9F:
    LDA #$06F0                      ; $82BB9F  A9 F0 06     Mx
    STA $00D0                       ; $82BBA2  8D D0 00     Mx
    STZ $072A                       ; $82BBA5  9C 2A 07     Mx
    LDA $9AABEB,X                   ; $82BBA8  BF EB AB 9A  Mx
    BPL L_82BBB1                    ; $82BBAC  10 03        Mx
    DEC $072A                       ; $82BBAE  CE 2A 07     Mx
L_82BBB1:
    LDY $00AE                       ; $82BBB1  AC AE 00     Mx
    STY $06F6                       ; $82BBB4  8C F6 06     Mx
L_82BBB7:
    ASL                             ; $82BBB7  0A           Mx
    ROL $072A                       ; $82BBB8  2E 2A 07     Mx
    DEY                             ; $82BBBB  88           Mx
    BNE L_82BBB7                    ; $82BBBC  D0 F9        Mx
    STA $0728                       ; $82BBBE  8D 28 07     Mx
    STZ $0732                       ; $82BBC1  9C 32 07     Mx
    LDA $9AABAB,X                   ; $82BBC4  BF AB AB 9A  Mx
    BPL L_82BBCD                    ; $82BBC8  10 03        Mx
    DEC $0732                       ; $82BBCA  CE 32 07     Mx
L_82BBCD:
    LDY $00AE                       ; $82BBCD  AC AE 00     Mx
L_82BBD0:
    ASL                             ; $82BBD0  0A           Mx
    ROL $0732                       ; $82BBD1  2E 32 07     Mx
    DEY                             ; $82BBD4  88           Mx
    BNE L_82BBD0                    ; $82BBD5  D0 F9        Mx
    STA $0730                       ; $82BBD7  8D 30 07     Mx
    LDA $0722                       ; $82BBDA  AD 22 07     Mx
    BNE L_82BBEB                    ; $82BBDD  D0 0C        Mx
    LDA #$E400                      ; $82BBDF  A9 00 E4     Mx
    STA $072C                       ; $82BBE2  8D 2C 07     Mx
    LDA #$0002                      ; $82BBE5  A9 02 00     Mx
    STA $072E                       ; $82BBE8  8D 2E 07     Mx
L_82BBEB:
    LDA #$002D                      ; $82BBEB  A9 2D 00     Mx
    STA $0784                       ; $82BBEE  8D 84 07     Mx
    LDA #$0030                      ; $82BBF1  A9 30 00     Mx
    STA $06F4                       ; $82BBF4  8D F4 06     Mx
    STA $06F2                       ; $82BBF7  8D F2 06     Mx
    STZ $07A2                       ; $82BBFA  9C A2 07     Mx
    LDA $0C25                       ; $82BBFD  AD 25 0C     Mx
    CMP #$06F0                      ; $82BC00  C9 F0 06     Mx
    BNE L_82BC08                    ; $82BC03  D0 03        Mx
    STZ $0C25                       ; $82BC05  9C 25 0C     Mx
L_82BC08:
    LDA $0794                       ; $82BC08  AD 94 07     Mx
    BNE L_82BC10                    ; $82BC0B  D0 03        Mx
    JMP L_82BFA4                    ; $82BC0D  4C A4 BF     Mx
L_82BC10:
    JMP L_82BCF8                    ; $82BC10  4C F8 BC     Mx
L_82BC13:
    LDA #$08C0                      ; $82BC13  A9 C0 08     Mx
    STA $00D0                       ; $82BC16  8D D0 00     Mx
    STZ $08FA                       ; $82BC19  9C FA 08     Mx
    LDA $9AABEB,X                   ; $82BC1C  BF EB AB 9A  Mx
    BPL L_82BC25                    ; $82BC20  10 03        Mx
    DEC $08FA                       ; $82BC22  CE FA 08     Mx
L_82BC25:
    LDY $00AE                       ; $82BC25  AC AE 00     Mx
    STY $08C6                       ; $82BC28  8C C6 08     Mx
L_82BC2B:
    ASL                             ; $82BC2B  0A           Mx
    ROL $08FA                       ; $82BC2C  2E FA 08     Mx
    DEY                             ; $82BC2F  88           Mx
    BNE L_82BC2B                    ; $82BC30  D0 F9        Mx
    STA $08F8                       ; $82BC32  8D F8 08     Mx
    STZ $0902                       ; $82BC35  9C 02 09     Mx
    LDA $9AABAB,X                   ; $82BC38  BF AB AB 9A  Mx
    BPL L_82BC41                    ; $82BC3C  10 03        Mx
    DEC $0902                       ; $82BC3E  CE 02 09     Mx
L_82BC41:
    LDY $00AE                       ; $82BC41  AC AE 00     Mx
L_82BC44:
    ASL                             ; $82BC44  0A           Mx
    ROL $0902                       ; $82BC45  2E 02 09     Mx
    DEY                             ; $82BC48  88           Mx
    BNE L_82BC44                    ; $82BC49  D0 F9        Mx
    STA $0900                       ; $82BC4B  8D 00 09     Mx
    LDA $08F2                       ; $82BC4E  AD F2 08     Mx
    BNE L_82BC5F                    ; $82BC51  D0 0C        Mx
    LDA #$E400                      ; $82BC53  A9 00 E4     Mx
    STA $08FC                       ; $82BC56  8D FC 08     Mx
    LDA #$0002                      ; $82BC59  A9 02 00     Mx
    STA $08FE                       ; $82BC5C  8D FE 08     Mx
L_82BC5F:
    LDA #$002D                      ; $82BC5F  A9 2D 00     Mx
    STA $0954                       ; $82BC62  8D 54 09     Mx
    LDA #$0030                      ; $82BC65  A9 30 00     Mx
    STA $08C4                       ; $82BC68  8D C4 08     Mx
    STA $08C2                       ; $82BC6B  8D C2 08     Mx
    STZ $0972                       ; $82BC6E  9C 72 09     Mx
    LDA $0C25                       ; $82BC71  AD 25 0C     Mx
    CMP #$08C0                      ; $82BC74  C9 C0 08     Mx
    BNE L_82BC7C                    ; $82BC77  D0 03        Mx
    STZ $0C25                       ; $82BC79  9C 25 0C     Mx
L_82BC7C:
    LDA $0964                       ; $82BC7C  AD 64 09     Mx
    BNE L_82BC84                    ; $82BC7F  D0 03        Mx
    JMP L_82BFA4                    ; $82BC81  4C A4 BF     Mx
L_82BC84:
    JMP L_82BCF8                    ; $82BC84  4C F8 BC     Mx
L_82BC87:
    LDA #$09A8                      ; $82BC87  A9 A8 09     Mx
    STA $00D0                       ; $82BC8A  8D D0 00     Mx
    STZ $09E2                       ; $82BC8D  9C E2 09     Mx
    LDA $9AABEB,X                   ; $82BC90  BF EB AB 9A  Mx
    BPL L_82BC99                    ; $82BC94  10 03        Mx
    DEC $09E2                       ; $82BC96  CE E2 09     Mx
L_82BC99:
    LDY $00AE                       ; $82BC99  AC AE 00     Mx
    STY $09AE                       ; $82BC9C  8C AE 09     Mx
L_82BC9F:
    ASL                             ; $82BC9F  0A           Mx
    ROL $09E2                       ; $82BCA0  2E E2 09     Mx
    DEY                             ; $82BCA3  88           Mx
    BNE L_82BC9F                    ; $82BCA4  D0 F9        Mx
    STA $09E0                       ; $82BCA6  8D E0 09     Mx
    STZ $09EA                       ; $82BCA9  9C EA 09     Mx
    LDA $9AABAB,X                   ; $82BCAC  BF AB AB 9A  Mx
    BPL L_82BCB5                    ; $82BCB0  10 03        Mx
    DEC $09EA                       ; $82BCB2  CE EA 09     Mx
L_82BCB5:
    LDY $00AE                       ; $82BCB5  AC AE 00     Mx
L_82BCB8:
    ASL                             ; $82BCB8  0A           Mx
    ROL $09EA                       ; $82BCB9  2E EA 09     Mx
    DEY                             ; $82BCBC  88           Mx
    BNE L_82BCB8                    ; $82BCBD  D0 F9        Mx
    STA $09E8                       ; $82BCBF  8D E8 09     Mx
    LDA $09DA                       ; $82BCC2  AD DA 09     Mx
    BNE L_82BCD3                    ; $82BCC5  D0 0C        Mx
    LDA #$E400                      ; $82BCC7  A9 00 E4     Mx
    STA $09E4                       ; $82BCCA  8D E4 09     Mx
    LDA #$0002                      ; $82BCCD  A9 02 00     Mx
    STA $09E6                       ; $82BCD0  8D E6 09     Mx
L_82BCD3:
    LDA #$002D                      ; $82BCD3  A9 2D 00     Mx
    STA $0A3C                       ; $82BCD6  8D 3C 0A     Mx
    LDA #$0030                      ; $82BCD9  A9 30 00     Mx
    STA $09AC                       ; $82BCDC  8D AC 09     Mx
    STA $09AA                       ; $82BCDF  8D AA 09     Mx
    STZ $0A5A                       ; $82BCE2  9C 5A 0A     Mx
    LDA $0C25                       ; $82BCE5  AD 25 0C     Mx
    CMP #$09A8                      ; $82BCE8  C9 A8 09     Mx
    BNE L_82BCF0                    ; $82BCEB  D0 03        Mx
    STZ $0C25                       ; $82BCED  9C 25 0C     Mx
L_82BCF0:
    LDA $0A4C                       ; $82BCF0  AD 4C 0A     Mx
    BNE L_82BCF8                    ; $82BCF3  D0 03        Mx
    JMP L_82BFA4                    ; $82BCF5  4C A4 BF     Mx
L_82BCF8:
    LDA #$0032                      ; $82BCF8  A9 32 00     Mx
    STA $00DF                       ; $82BCFB  8D DF 00     Mx
    LDA $00A4                       ; $82BCFE  AD A4 00     Mx
    CMP #$002E                      ; $82BD01  C9 2E 00     Mx
    BEQ L_82BD27                    ; $82BD04  F0 21        Mx
    LDA $00AA                       ; $82BD06  AD AA 00     Mx
    BMI L_82BD21                    ; $82BD09  30 16        Mx
    CMP #$0010                      ; $82BD0B  C9 10 00     Mx
    BCC L_82BD13                    ; $82BD0E  90 03        Mx
    LDA #$000F                      ; $82BD10  A9 0F 00     Mx
L_82BD13:
    TAX                             ; $82BD13  AA           Mx
    LDA $A7E61B,X                   ; $82BD14  BF 1B E6 A7  Mx
    AND #$00FF                      ; $82BD18  29 FF 00     Mx
    STA $00DF                       ; $82BD1B  8D DF 00     Mx
    JMP L_82BD27                    ; $82BD1E  4C 27 BD     Mx
L_82BD21:
    LDA #$0014                      ; $82BD21  A9 14 00     Mx
    STA $00DF                       ; $82BD24  8D DF 00     Mx
L_82BD27:
    LDA #$0064                      ; $82BD27  A9 64 00     Mx
    STA $00D3                       ; $82BD2A  8D D3 00     Mx
    LDA $1D56                       ; $82BD2D  AD 56 1D     Mx
    STA $00BA                       ; $82BD30  8D BA 00     Mx
    INC $00D3                       ; $82BD33  EE D3 00     Mx
    SEP #$20                        ; $82BD36  E2 20        Mx
    LDA $00D3                       ; $82BD38  AD D3 00     mx
    STA $4202                       ; $82BD3B  8D 02 42     mx
    LDA $00BA                       ; $82BD3E  AD BA 00     mx
    STA $4203                       ; $82BD41  8D 03 42     mx
    NOP                             ; $82BD44  EA           mx
    NOP                             ; $82BD45  EA           mx
    NOP                             ; $82BD46  EA           mx
    REP #$20                        ; $82BD47  C2 20        mx
    LDA $4216                       ; $82BD49  AD 16 42     Mx
    STA $00BA                       ; $82BD4C  8D BA 00     Mx
    LDA $00BB                       ; $82BD4F  AD BB 00     Mx
    AND #$00FF                      ; $82BD52  29 FF 00     Mx
    CMP $00DF                       ; $82BD55  CD DF 00     Mx
    BCS L_82BD5D                    ; $82BD58  B0 03        Mx
L_82BD5A:
    JMP L_82BFA4                    ; $82BD5A  4C A4 BF     Mx
L_82BD5D:
    LDA $0C3F                       ; $82BD5D  AD 3F 0C     Mx
    BNE L_82BD5A                    ; $82BD60  D0 F8        Mx
    LDA #$00B4                      ; $82BD62  A9 B4 00     Mx
    STA $0C3F                       ; $82BD65  8D 3F 0C     Mx
    LDA $07D8                       ; $82BD68  AD D8 07     Mx
    DEC                             ; $82BD6B  3A           Mx
    AND #$0003                      ; $82BD6C  29 03 00     Mx
    ASL                             ; $82BD6F  0A           Mx
    TAX                             ; $82BD70  AA           Mx
    INC $1CB1,X                     ; $82BD71  FE B1 1C     Mx
    LDA #$0087                      ; $82BD74  A9 87 00     Mx
    STA $089A                       ; $82BD77  8D 9A 08     Mx
    LDY #$8A                        ; $82BD7A  A0 8A        Mx
    LDA #$0034                      ; $82BD7C  A9 34 00     Mx
    STA ($D0),Y                     ; $82BD7F  91 D0        Mx
    LDA #$001E                      ; $82BD81  A9 1E 00     Mx
    STA $0BF1                       ; $82BD84  8D F1 0B     Mx
    LDA $0C19                       ; $82BD87  AD 19 0C     Mx
    BEQ L_82BDF2                    ; $82BD8A  F0 66        Mx
    LDA $0BD9                       ; $82BD8C  AD D9 0B     Mx
    CLC                             ; $82BD8F  18           Mx
    ADC $0BEF                       ; $82BD90  6D EF 0B     Mx
    LDY #$54                        ; $82BD93  A0 54        Mx
    SEC                             ; $82BD95  38           Mx
    SBC ($CC),Y                     ; $82BD96  F1 CC        Mx
    BPL L_82BDA4                    ; $82BD98  10 0A        Mx
    CMP #$FEF4                      ; $82BD9A  C9 F4 FE     Mx
    BCS L_82BDAC                    ; $82BD9D  B0 0D        Mx
    LDA #$FEF4                      ; $82BD9F  A9 F4 FE     Mx
    BRA L_82BDAC                    ; $82BDA2  80 08        Mx
L_82BDA4:
    CMP #$010C                      ; $82BDA4  C9 0C 01     Mx
    BCC L_82BDAC                    ; $82BDA7  90 03        Mx
    LDA #$010C                      ; $82BDA9  A9 0C 01     Mx
L_82BDAC:
    STA $0BD9                       ; $82BDAC  8D D9 0B     Mx
    LDA $0BDD                       ; $82BDAF  AD DD 0B     Mx
    CLC                             ; $82BDB2  18           Mx
    ADC $0BF1                       ; $82BDB3  6D F1 0B     Mx
    STA $0BDD                       ; $82BDB6  8D DD 0B     Mx
    LDA $0BF3                       ; $82BDB9  AD F3 0B     Mx
    CMP #$0310                      ; $82BDBC  C9 10 03     Mx
    BCC L_82BDCB                    ; $82BDBF  90 0A        Mx
    CMP #$03F0                      ; $82BDC1  C9 F0 03     Mx
    BCC L_82BDCE                    ; $82BDC4  90 08        Mx
    LDA #$03F0                      ; $82BDC6  A9 F0 03     Mx
    BRA L_82BDCE                    ; $82BDC9  80 03        Mx
L_82BDCB:
    LDA #$0310                      ; $82BDCB  A9 10 03     Mx
L_82BDCE:
    STA $0BE1                       ; $82BDCE  8D E1 0B     Mx
    STA $0BF3                       ; $82BDD1  8D F3 0B     Mx
    STZ $0C19                       ; $82BDD4  9C 19 0C     Mx
    STZ $00CC                       ; $82BDD7  9C CC 00     Mx
    STZ $0C2B                       ; $82BDDA  9C 2B 0C     Mx
    STZ $0BEF                       ; $82BDDD  9C EF 0B     Mx
    STZ $0BF1                       ; $82BDE0  9C F1 0B     Mx
    STZ $0C11                       ; $82BDE3  9C 11 0C     Mx
    LDA #$0002                      ; $82BDE6  A9 02 00     Mx
    STA $0BBF                       ; $82BDE9  8D BF 0B     Mx
    LDA #$0002                      ; $82BDEC  A9 02 00     Mx
    STA $0BC1                       ; $82BDEF  8D C1 0B     Mx
L_82BDF2:
    LDA $0BDD                       ; $82BDF2  AD DD 0B     Mx
    CMP #$005A                      ; $82BDF5  C9 5A 00     Mx
    BCC L_82BE00                    ; $82BDF8  90 06        Mx
    LDA #$001E                      ; $82BDFA  A9 1E 00     Mx
    STA $0BDD                       ; $82BDFD  8D DD 0B     Mx
L_82BE00:
    STZ $0BE5                       ; $82BE00  9C E5 0B     Mx
    STZ $0BE3                       ; $82BE03  9C E3 0B     Mx
    PHP                             ; $82BE06  08           Mx
    REP #$30                        ; $82BE07  C2 30        Mx
    LDA $4212                       ; $82BE09  AD 12 42     MX
    SEP #$20                        ; $82BE0C  E2 20        MX
    CLC                             ; $82BE0E  18           mX
    ADC $1D57                       ; $82BE0F  6D 57 1D     mX
    STA $1D57                       ; $82BE12  8D 57 1D     mX
    REP #$20                        ; $82BE15  C2 20        mX
    LDA $4212                       ; $82BE17  AD 12 42     MX
    TAX                             ; $82BE1A  AA           MX
    SEP #$20                        ; $82BE1B  E2 20        MX
    EOR $1D58                       ; $82BE1D  4D 58 1D     mX
    STA $1D58                       ; $82BE20  8D 58 1D     mX
    TXA                             ; $82BE23  8A           mX
    ADC $1D59                       ; $82BE24  6D 59 1D     mX
    REP #$20                        ; $82BE27  C2 20        mX
    LDA $1D56                       ; $82BE29  AD 56 1D     MX
    INC                             ; $82BE2C  1A           MX
    ROR                             ; $82BE2D  6A           MX
    LSR $1D58                       ; $82BE2E  4E 58 1D     MX
    EOR #$2B41                      ; $82BE31  49 41 2B     MX
    SBC #$000F                      ; $82BE34  E9 0F 00     MX
    STA $1D56                       ; $82BE37  8D 56 1D     MX
    LDA $1D58                       ; $82BE3A  AD 58 1D     MX
    EOR #$1D87                      ; $82BE3D  49 87 1D     MX
    STA $1D58                       ; $82BE40  8D 58 1D     MX
    LDA $1D52                       ; $82BE43  AD 52 1D     MX
    EOR $1D56                       ; $82BE46  4D 56 1D     MX
    STA $0002                       ; $82BE49  8D 02 00     MX
    INC                             ; $82BE4C  1A           MX
    STA $1D52                       ; $82BE4D  8D 52 1D     MX
    LDA $1D54                       ; $82BE50  AD 54 1D     MX
    EOR $1D58                       ; $82BE53  4D 58 1D     MX
    ADC #$0000                      ; $82BE56  69 00 00     MX
    STA $1D52                       ; $82BE59  8D 52 1D     MX
    STA $0004                       ; $82BE5C  8D 04 00     MX
    PLP                             ; $82BE5F  28           MX
    LDA #$01FF                      ; $82BE60  A9 FF 01     Mx
    STA $00BA                       ; $82BE63  8D BA 00     Mx
    SEP #$20                        ; $82BE66  E2 20        Mx
    LDA $1D56                       ; $82BE68  AD 56 1D     mx
    STA $4202                       ; $82BE6B  8D 02 42     mx
    LDA $00BA                       ; $82BE6E  AD BA 00     mx
    STA $4203                       ; $82BE71  8D 03 42     mx
    NOP                             ; $82BE74  EA           mx
    NOP                             ; $82BE75  EA           mx
    NOP                             ; $82BE76  EA           mx
    REP #$20                        ; $82BE77  C2 20        mx
    LDA $4216                       ; $82BE79  AD 16 42     Mx
    STA $00BA                       ; $82BE7C  8D BA 00     Mx
    STA $00A8                       ; $82BE7F  8D A8 00     Mx
    LDA #$01FF                      ; $82BE82  A9 FF 01     Mx
    STA $00BA                       ; $82BE85  8D BA 00     Mx
    SEP #$20                        ; $82BE88  E2 20        Mx
    LDA $1D56                       ; $82BE8A  AD 56 1D     mx
    STA $4202                       ; $82BE8D  8D 02 42     mx
    LDA $00BB                       ; $82BE90  AD BB 00     mx
    STA $4203                       ; $82BE93  8D 03 42     mx
    NOP                             ; $82BE96  EA           mx
    NOP                             ; $82BE97  EA           mx
    NOP                             ; $82BE98  EA           mx
    REP #$20                        ; $82BE99  C2 20        mx
    LDA $4216                       ; $82BE9B  AD 16 42     Mx
    STA $00BB                       ; $82BE9E  8D BB 00     Mx
    STZ $00F4                       ; $82BEA1  9C F4 00     Mx
    STZ $00F2                       ; $82BEA4  9C F2 00     Mx
    STA $00F3                       ; $82BEA7  8D F3 00     Mx
    LDA $00F2                       ; $82BEAA  AD F2 00     Mx
    CLC                             ; $82BEAD  18           Mx
    ADC $00A8                       ; $82BEAE  6D A8 00     Mx
    STA $00F2                       ; $82BEB1  8D F2 00     Mx
    LDA $00F4                       ; $82BEB4  AD F4 00     Mx
    ADC #$0000                      ; $82BEB7  69 00 00     Mx
    STA $00F4                       ; $82BEBA  8D F4 00     Mx
    LDA $00F3                       ; $82BEBD  AD F3 00     Mx
    AND #$01FF                      ; $82BEC0  29 FF 01     Mx
    SEC                             ; $82BEC3  38           Mx
    SBC #$0100                      ; $82BEC4  E9 00 01     Mx
    BPL L_82BECC                    ; $82BEC7  10 03        Mx
    DEC $0BE5                       ; $82BEC9  CE E5 0B     Mx
L_82BECC:
    STA $0BE4                       ; $82BECC  8D E4 0B     Mx
    STZ $0BED                       ; $82BECF  9C ED 0B     Mx
    STZ $0BEB                       ; $82BED2  9C EB 0B     Mx
    PHP                             ; $82BED5  08           Mx
    REP #$30                        ; $82BED6  C2 30        Mx
    LDA $4212                       ; $82BED8  AD 12 42     MX
    SEP #$20                        ; $82BEDB  E2 20        MX
    CLC                             ; $82BEDD  18           mX
    ADC $1D57                       ; $82BEDE  6D 57 1D     mX
    STA $1D57                       ; $82BEE1  8D 57 1D     mX
    REP #$20                        ; $82BEE4  C2 20        mX
    LDA $4212                       ; $82BEE6  AD 12 42     MX
    TAX                             ; $82BEE9  AA           MX
    SEP #$20                        ; $82BEEA  E2 20        MX
    EOR $1D58                       ; $82BEEC  4D 58 1D     mX
    STA $1D58                       ; $82BEEF  8D 58 1D     mX
    TXA                             ; $82BEF2  8A           mX
    ADC $1D59                       ; $82BEF3  6D 59 1D     mX
    REP #$20                        ; $82BEF6  C2 20        mX
    LDA $1D56                       ; $82BEF8  AD 56 1D     MX
    INC                             ; $82BEFB  1A           MX
    ROR                             ; $82BEFC  6A           MX
    LSR $1D58                       ; $82BEFD  4E 58 1D     MX
    EOR #$2B41                      ; $82BF00  49 41 2B     MX
    SBC #$000F                      ; $82BF03  E9 0F 00     MX
    STA $1D56                       ; $82BF06  8D 56 1D     MX
    LDA $1D58                       ; $82BF09  AD 58 1D     MX
    EOR #$1D87                      ; $82BF0C  49 87 1D     MX
    STA $1D58                       ; $82BF0F  8D 58 1D     MX
    LDA $1D52                       ; $82BF12  AD 52 1D     MX
    EOR $1D56                       ; $82BF15  4D 56 1D     MX
    STA $0002                       ; $82BF18  8D 02 00     MX
    INC                             ; $82BF1B  1A           MX
    STA $1D52                       ; $82BF1C  8D 52 1D     MX
    LDA $1D54                       ; $82BF1F  AD 54 1D     MX
    EOR $1D58                       ; $82BF22  4D 58 1D     MX
    ADC #$0000                      ; $82BF25  69 00 00     MX
    STA $1D52                       ; $82BF28  8D 52 1D     MX
    STA $0004                       ; $82BF2B  8D 04 00     MX
    PLP                             ; $82BF2E  28           MX
    LDA #$01FF                      ; $82BF2F  A9 FF 01     Mx
    STA $00BA                       ; $82BF32  8D BA 00     Mx
    SEP #$20                        ; $82BF35  E2 20        Mx
    LDA $1D56                       ; $82BF37  AD 56 1D     mx
    STA $4202                       ; $82BF3A  8D 02 42     mx
    LDA $00BA                       ; $82BF3D  AD BA 00     mx
    STA $4203                       ; $82BF40  8D 03 42     mx
    NOP                             ; $82BF43  EA           mx
    NOP                             ; $82BF44  EA           mx
    NOP                             ; $82BF45  EA           mx
    REP #$20                        ; $82BF46  C2 20        mx
    LDA $4216                       ; $82BF48  AD 16 42     Mx
    STA $00BA                       ; $82BF4B  8D BA 00     Mx
    STA $00A8                       ; $82BF4E  8D A8 00     Mx
    LDA #$01FF                      ; $82BF51  A9 FF 01     Mx
    STA $00BA                       ; $82BF54  8D BA 00     Mx
    SEP #$20                        ; $82BF57  E2 20        Mx
    LDA $1D56                       ; $82BF59  AD 56 1D     mx
    STA $4202                       ; $82BF5C  8D 02 42     mx
    LDA $00BB                       ; $82BF5F  AD BB 00     mx
    STA $4203                       ; $82BF62  8D 03 42     mx
    NOP                             ; $82BF65  EA           mx
    NOP                             ; $82BF66  EA           mx
    NOP                             ; $82BF67  EA           mx
    REP #$20                        ; $82BF68  C2 20        mx
    LDA $4216                       ; $82BF6A  AD 16 42     Mx
    STA $00BB                       ; $82BF6D  8D BB 00     Mx
    STZ $00F4                       ; $82BF70  9C F4 00     Mx
    STZ $00F2                       ; $82BF73  9C F2 00     Mx
    STA $00F3                       ; $82BF76  8D F3 00     Mx
    LDA $00F2                       ; $82BF79  AD F2 00     Mx
    CLC                             ; $82BF7C  18           Mx
    ADC $00A8                       ; $82BF7D  6D A8 00     Mx
    STA $00F2                       ; $82BF80  8D F2 00     Mx
    LDA $00F4                       ; $82BF83  AD F4 00     Mx
    ADC #$0000                      ; $82BF86  69 00 00     Mx
    STA $00F4                       ; $82BF89  8D F4 00     Mx
    LDA $00F3                       ; $82BF8C  AD F3 00     Mx
    AND #$01FF                      ; $82BF8F  29 FF 01     Mx
    SEC                             ; $82BF92  38           Mx
    SBC #$0100                      ; $82BF93  E9 00 01     Mx
    BPL L_82BF9B                    ; $82BF96  10 03        Mx
    DEC $0BED                       ; $82BF98  CE ED 0B     Mx
L_82BF9B:
    STA $0BEC                       ; $82BF9B  8D EC 0B     Mx
    STZ $0BE9                       ; $82BF9E  9C E9 0B     Mx
    STZ $0BE7                       ; $82BFA1  9C E7 0B     Mx
L_82BFA4:
    RTS                             ; $82BFA4  60           Mx
L_82BFA5:
    LDA $07F2                       ; $82BFA5  AD F2 07     Mx
    BEQ L_82BFAF                    ; $82BFA8  F0 05        Mx
    CMP #$0004                      ; $82BFAA  C9 04 00     Mx
    BNE L_82BFB2                    ; $82BFAD  D0 03        Mx
L_82BFAF:
    LDA #$0002                      ; $82BFAF  A9 02 00     Mx
L_82BFB2:
    STA $07F0                       ; $82BFB2  8D F0 07     Mx
    LDA #$0001                      ; $82BFB5  A9 01 00     Mx
    STA $15EB                       ; $82BFB8  8D EB 15     Mx
    LDA #$2400                      ; $82BFBB  A9 00 24     Mx
    STA $00D1                       ; $82BFBE  8D D1 00     Mx
    LDA $0886                       ; $82BFC1  AD 86 08     Mx
    STA $00D0                       ; $82BFC4  8D D0 00     Mx
    LDA $07E4                       ; $82BFC7  AD E4 07     Mx
    BEQ L_82BFCF                    ; $82BFCA  F0 03        Mx
    JMP L_82C6BC                    ; $82BFCC  4C BC C6     Mx
L_82BFCF:
    LDY $0888                       ; $82BFCF  AC 88 08     Mx
    LDA [$D0],Y                     ; $82BFD2  B7 D0        Mx
    STA $07E4                       ; $82BFD4  8D E4 07     Mx
    INY                             ; $82BFD7  C8           Mx
    INY                             ; $82BFD8  C8           Mx
    LDA [$D0],Y                     ; $82BFD9  B7 D0        Mx
    STA $07E6                       ; $82BFDB  8D E6 07     Mx
    STZ $07E2                       ; $82BFDE  9C E2 07     Mx
    INY                             ; $82BFE1  C8           Mx
    INY                             ; $82BFE2  C8           Mx
    STY $0888                       ; $82BFE3  8C 88 08     Mx
    LDA $07E4                       ; $82BFE6  AD E4 07     Mx
    BMI L_82BFEE                    ; $82BFE9  30 03        Mx
    JMP L_82C6BC                    ; $82BFEB  4C BC C6     Mx
L_82BFEE:
    LDA $07E6                       ; $82BFEE  AD E6 07     Mx
    CMP #$0001                      ; $82BFF1  C9 01 00     Mx
    BEQ L_82C039                    ; $82BFF4  F0 43        Mx
    CMP #$0002                      ; $82BFF6  C9 02 00     Mx
    BNE L_82BFFE                    ; $82BFF9  D0 03        Mx
    JMP L_82C521                    ; $82BFFB  4C 21 C5     Mx
L_82BFFE:
    CMP #$0003                      ; $82BFFE  C9 03 00     Mx
    BNE L_82C006                    ; $82C001  D0 03        Mx
    JMP L_82C500                    ; $82C003  4C 00 C5     Mx
L_82C006:
    CMP #$0004                      ; $82C006  C9 04 00     Mx
    BNE L_82C00E                    ; $82C009  D0 03        Mx
    JMP L_82C4F0                    ; $82C00B  4C F0 C4     Mx
L_82C00E:
    CMP #$0005                      ; $82C00E  C9 05 00     Mx
    BNE L_82C016                    ; $82C011  D0 03        Mx
    JMP L_82C478                    ; $82C013  4C 78 C4     Mx
L_82C016:
    CMP #$0006                      ; $82C016  C9 06 00     Mx
    BNE L_82C01E                    ; $82C019  D0 03        Mx
    JMP L_82C497                    ; $82C01B  4C 97 C4     Mx
L_82C01E:
    CMP #$0007                      ; $82C01E  C9 07 00     Mx
    BNE L_82C026                    ; $82C021  D0 03        Mx
    JMP L_82C463                    ; $82C023  4C 63 C4     Mx
L_82C026:
    CMP #$0008                      ; $82C026  C9 08 00     Mx
    BNE L_82C02E                    ; $82C029  D0 03        Mx
    JMP L_82C488                    ; $82C02B  4C 88 C4     Mx
L_82C02E:
    CMP #$0009                      ; $82C02E  C9 09 00     Mx
    BNE L_82C036                    ; $82C031  D0 03        Mx
    JMP L_82C4B7                    ; $82C033  4C B7 C4     Mx
L_82C036:
    JMP L_82BFCF                    ; $82C036  4C CF BF     Mx
L_82C039:
    LDY $0888                       ; $82C039  AC 88 08     Mx
    INY                             ; $82C03C  C8           Mx
    INY                             ; $82C03D  C8           Mx
    LDA [$D0],Y                     ; $82C03E  B7 D0        Mx
    STA $07DE                       ; $82C040  8D DE 07     Mx
    CMP #$003E                      ; $82C043  C9 3E 00     Mx
    BCC L_82C04E                    ; $82C046  90 06        Mx
    LDA #$0001                      ; $82C048  A9 01 00     Mx
    STA $15ED                       ; $82C04B  8D ED 15     Mx
L_82C04E:
    INY                             ; $82C04E  C8           Mx
    INY                             ; $82C04F  C8           Mx
    STY $0888                       ; $82C050  8C 88 08     Mx
    REP #$10                        ; $82C053  C2 10        Mx
    LDA $0884                       ; $82C055  AD 84 08     MX
    ASL                             ; $82C058  0A           MX
    ASL                             ; $82C059  0A           MX
    TAX                             ; $82C05A  AA           MX
    LDA $A4B5F0,X                   ; $82C05B  BF F0 B5 A4  MX
    STA $00A4                       ; $82C05F  8D A4 00     MX
    LDA $A4B5F2,X                   ; $82C062  BF F2 B5 A4  MX
    STA $00D6                       ; $82C066  8D D6 00     MX
    LDA $A4B5F4,X                   ; $82C069  BF F4 B5 A4  MX
    STA $00D3                       ; $82C06D  8D D3 00     MX
    LDA $A4B5F6,X                   ; $82C070  BF F6 B5 A4  MX
    STA $00B0                       ; $82C074  8D B0 00     MX
    SEP #$10                        ; $82C077  E2 10        MX
    LDA $083A                       ; $82C079  AD 3A 08     Mx
    CLC                             ; $82C07C  18           Mx
    ADC $00A4                       ; $82C07D  6D A4 00     Mx
    STA $0BC3                       ; $82C080  8D C3 0B     Mx
    STA $00D9                       ; $82C083  8D D9 00     Mx
    LDA #$0374                      ; $82C086  A9 74 03     Mx
    CLC                             ; $82C089  18           Mx
    ADC $00D6                       ; $82C08A  6D D6 00     Mx
    STA $0BC7                       ; $82C08D  8D C7 0B     Mx
    LDA #$0068                      ; $82C090  A9 68 00     Mx
    CLC                             ; $82C093  18           Mx
    ADC $00D3                       ; $82C094  6D D3 00     Mx
    LDX $08A2                       ; $82C097  AE A2 08     Mx
    BEQ L_82C0A0                    ; $82C09A  F0 04        Mx
    CLC                             ; $82C09C  18           Mx
    ADC #$000A                      ; $82C09D  69 0A 00     Mx
L_82C0A0:
    STA $0BC5                       ; $82C0A0  8D C5 0B     Mx
    LDA $00D9                       ; $82C0A3  AD D9 00     Mx
    SEC                             ; $82C0A6  38           Mx
    SBC $0806                       ; $82C0A7  ED 06 08     Mx
    STA $00D9                       ; $82C0AA  8D D9 00     Mx
    LDA $0BC7                       ; $82C0AD  AD C7 0B     Mx
    SEC                             ; $82C0B0  38           Mx
    SBC $080E                       ; $82C0B1  ED 0E 08     Mx
    STA $00DF                       ; $82C0B4  8D DF 00     Mx
    STZ $00D3                       ; $82C0B7  9C D3 00     Mx
    LDA $00D3                       ; $82C0BA  AD D3 00     Mx
    STA $00D6                       ; $82C0BD  8D D6 00     Mx
    LDA $00D9                       ; $82C0C0  AD D9 00     Mx
    STA $00DC                       ; $82C0C3  8D DC 00     Mx
    LDA $00DF                       ; $82C0C6  AD DF 00     Mx
    STA $00B7                       ; $82C0C9  8D B7 00     Mx
    LDA $00DC                       ; $82C0CC  AD DC 00     Mx
    BPL L_82C0DB                    ; $82C0CF  10 0A        Mx
    EOR #$FFFF                      ; $82C0D1  49 FF FF     Mx
    CLC                             ; $82C0D4  18           Mx
    ADC #$0001                      ; $82C0D5  69 01 00     Mx
    STA $00DC                       ; $82C0D8  8D DC 00     Mx
L_82C0DB:
    LDA $00B7                       ; $82C0DB  AD B7 00     Mx
    BPL L_82C0EA                    ; $82C0DE  10 0A        Mx
    EOR #$FFFF                      ; $82C0E0  49 FF FF     Mx
    CLC                             ; $82C0E3  18           Mx
    ADC #$0001                      ; $82C0E4  69 01 00     Mx
    STA $00B7                       ; $82C0E7  8D B7 00     Mx
L_82C0EA:
    LDA $00DC                       ; $82C0EA  AD DC 00     Mx
    CMP $00B7                       ; $82C0ED  CD B7 00     Mx
    BCS L_82C104                    ; $82C0F0  B0 12        Mx
    LDA $00B7                       ; $82C0F2  AD B7 00     Mx
    STA $00BA                       ; $82C0F5  8D BA 00     Mx
    LDA $00DC                       ; $82C0F8  AD DC 00     Mx
    STA $00B7                       ; $82C0FB  8D B7 00     Mx
    LDA $00BA                       ; $82C0FE  AD BA 00     Mx
    STA $00DC                       ; $82C101  8D DC 00     Mx
L_82C104:
    LSR $00B7                       ; $82C104  4E B7 00     Mx
    LDA $00B7                       ; $82C107  AD B7 00     Mx
    CLC                             ; $82C10A  18           Mx
    ADC $00DC                       ; $82C10B  6D DC 00     Mx
    STA $00DC                       ; $82C10E  8D DC 00     Mx
    LSR $00B7                       ; $82C111  4E B7 00     Mx
    LSR $00B7                       ; $82C114  4E B7 00     Mx
    LDA $00DC                       ; $82C117  AD DC 00     Mx
    SEC                             ; $82C11A  38           Mx
    SBC $00B7                       ; $82C11B  ED B7 00     Mx
    STA $00DC                       ; $82C11E  8D DC 00     Mx
    CMP #$0083                      ; $82C121  C9 83 00     Mx
    BCC L_82C14C                    ; $82C124  90 26        Mx
    STA $00B7                       ; $82C126  8D B7 00     Mx
    LDA #$0082                      ; $82C129  A9 82 00     Mx
    STA $00DC                       ; $82C12C  8D DC 00     Mx
    LDA $00B7                       ; $82C12F  AD B7 00     Mx
    SEC                             ; $82C132  38           Mx
    SBC $00DC                       ; $82C133  ED DC 00     Mx
    STA $00B7                       ; $82C136  8D B7 00     Mx
    LSR $00B7                       ; $82C139  4E B7 00     Mx
    LSR $00B7                       ; $82C13C  4E B7 00     Mx
    LSR $00B7                       ; $82C13F  4E B7 00     Mx
    LDA $00DC                       ; $82C142  AD DC 00     Mx
    CLC                             ; $82C145  18           Mx
    ADC $00B7                       ; $82C146  6D B7 00     Mx
    STA $00DC                       ; $82C149  8D DC 00     Mx
L_82C14C:
    LSR                             ; $82C14C  4A           Mx
    SEP #$20                        ; $82C14D  E2 20        Mx
    STA $4202                       ; $82C14F  8D 02 42     mx
    LDA #$6E                        ; $82C152  A9 6E        mx
    STA $4203                       ; $82C154  8D 03 42     mx
    NOP                             ; $82C157  EA           mx
    NOP                             ; $82C158  EA           mx
    NOP                             ; $82C159  EA           mx
    REP #$20                        ; $82C15A  C2 20        mx
    LDA $4216                       ; $82C15C  AD 16 42     Mx
    STA $00F2                       ; $82C15F  8D F2 00     Mx
    STZ $00F4                       ; $82C162  9C F4 00     Mx
    ASL $00F2                       ; $82C165  0E F2 00     Mx
    ROL $00F4                       ; $82C168  2E F4 00     Mx
    LDA $00F3                       ; $82C16B  AD F3 00     Mx
    AND #$FFFF                      ; $82C16E  29 FF FF     Mx
    STA $00DC                       ; $82C171  8D DC 00     Mx
    JMP L_82C18D                    ; $82C174  4C 8D C1     Mx
L_82C177:
    STA $00D3                       ; $82C177  8D D3 00     Mx
    LSR $00D3                       ; $82C17A  4E D3 00     Mx
    LSR $00D3                       ; $82C17D  4E D3 00     Mx
    LDA $00DC                       ; $82C180  AD DC 00     Mx
    SEC                             ; $82C183  38           Mx
    SBC $00D3                       ; $82C184  ED D3 00     Mx
    CMP #$0023                      ; $82C187  C9 23 00     Mx
    JMP L_82C198                    ; $82C18A  4C 98 C1     Mx
L_82C18D:
    CMP #$0032                      ; $82C18D  C9 32 00     Mx
    BCS L_82C198                    ; $82C190  B0 06        Mx
    LDA #$0032                      ; $82C192  A9 32 00     Mx
    STA $00DC                       ; $82C195  8D DC 00     Mx
L_82C198:
    LDA $07DE                       ; $82C198  AD DE 07     Mx
    STA $00DC                       ; $82C19B  8D DC 00     Mx
    LDA $00D9                       ; $82C19E  AD D9 00     Mx
    STA $00E5                       ; $82C1A1  8D E5 00     Mx
    LDA $00D9                       ; $82C1A4  AD D9 00     Mx
    BPL L_82C1B3                    ; $82C1A7  10 0A        Mx
    EOR #$FFFF                      ; $82C1A9  49 FF FF     Mx
    CLC                             ; $82C1AC  18           Mx
    ADC #$0001                      ; $82C1AD  69 01 00     Mx
    STA $00D9                       ; $82C1B0  8D D9 00     Mx
L_82C1B3:
    LDX $00DC                       ; $82C1B3  AE DC 00     Mx
    STX $00EE                       ; $82C1B6  8E EE 00     Mx
    LDA #$0000                      ; $82C1B9  A9 00 00     Mx
    STA $00EA                       ; $82C1BC  8D EA 00     Mx
    LDA $00D9                       ; $82C1BF  AD D9 00     Mx
    STA $4204                       ; $82C1C2  8D 04 42     Mx
    LDX $00EE                       ; $82C1C5  AE EE 00     Mx
    STX $4206                       ; $82C1C8  8E 06 42     Mx
    NOP                             ; $82C1CB  EA           Mx
    NOP                             ; $82C1CC  EA           Mx
    NOP                             ; $82C1CD  EA           Mx
    NOP                             ; $82C1CE  EA           Mx
    NOP                             ; $82C1CF  EA           Mx
    NOP                             ; $82C1D0  EA           Mx
    NOP                             ; $82C1D1  EA           Mx
    STZ $00F0                       ; $82C1D2  9C F0 00     Mx
    LDA $4214                       ; $82C1D5  AD 14 42     Mx
    STA $00F2                       ; $82C1D8  8D F2 00     Mx
    LDX $4216                       ; $82C1DB  AE 16 42     Mx
    STX $00EC                       ; $82C1DE  8E EC 00     Mx
    LDA $00EB                       ; $82C1E1  AD EB 00     Mx
    STA $4204                       ; $82C1E4  8D 04 42     Mx
    LDX $00EE                       ; $82C1E7  AE EE 00     Mx
    STX $4206                       ; $82C1EA  8E 06 42     Mx
    NOP                             ; $82C1ED  EA           Mx
    NOP                             ; $82C1EE  EA           Mx
    NOP                             ; $82C1EF  EA           Mx
    NOP                             ; $82C1F0  EA           Mx
    NOP                             ; $82C1F1  EA           Mx
    NOP                             ; $82C1F2  EA           Mx
    NOP                             ; $82C1F3  EA           Mx
    STZ $00F0                       ; $82C1F4  9C F0 00     Mx
    LDA $4214                       ; $82C1F7  AD 14 42     Mx
    ORA $00F1                       ; $82C1FA  0D F1 00     Mx
    STA $00F1                       ; $82C1FD  8D F1 00     Mx
    LDX $4216                       ; $82C200  AE 16 42     Mx
    STX $00EB                       ; $82C203  8E EB 00     Mx
    LDA $00EA                       ; $82C206  AD EA 00     Mx
    STA $4204                       ; $82C209  8D 04 42     Mx
    LDX $00EE                       ; $82C20C  AE EE 00     Mx
    STX $4206                       ; $82C20F  8E 06 42     Mx
    NOP                             ; $82C212  EA           Mx
    NOP                             ; $82C213  EA           Mx
    NOP                             ; $82C214  EA           Mx
    NOP                             ; $82C215  EA           Mx
    NOP                             ; $82C216  EA           Mx
    NOP                             ; $82C217  EA           Mx
    NOP                             ; $82C218  EA           Mx
    NOP                             ; $82C219  EA           Mx
    LDA $4214                       ; $82C21A  AD 14 42     Mx
    ORA $00F0                       ; $82C21D  0D F0 00     Mx
    STA $00F0                       ; $82C220  8D F0 00     Mx
    LDA $00F0                       ; $82C223  AD F0 00     Mx
    STA $0810                       ; $82C226  8D 10 08     Mx
    LDA $00F2                       ; $82C229  AD F2 00     Mx
    STA $0812                       ; $82C22C  8D 12 08     Mx
    LDA $00E5                       ; $82C22F  AD E5 00     Mx
    BPL L_82C24D                    ; $82C232  10 19        Mx
    LDA $0810                       ; $82C234  AD 10 08     Mx
    EOR #$FFFF                      ; $82C237  49 FF FF     Mx
    CLC                             ; $82C23A  18           Mx
    ADC #$0001                      ; $82C23B  69 01 00     Mx
    STA $0810                       ; $82C23E  8D 10 08     Mx
    LDA $0812                       ; $82C241  AD 12 08     Mx
    EOR #$FFFF                      ; $82C244  49 FF FF     Mx
    ADC #$0000                      ; $82C247  69 00 00     Mx
    STA $0812                       ; $82C24A  8D 12 08     Mx
L_82C24D:
    LDA $00DF                       ; $82C24D  AD DF 00     Mx
    STA $00E5                       ; $82C250  8D E5 00     Mx
    LDA $00DF                       ; $82C253  AD DF 00     Mx
    BPL L_82C262                    ; $82C256  10 0A        Mx
    EOR #$FFFF                      ; $82C258  49 FF FF     Mx
    CLC                             ; $82C25B  18           Mx
    ADC #$0001                      ; $82C25C  69 01 00     Mx
    STA $00DF                       ; $82C25F  8D DF 00     Mx
L_82C262:
    LDX $00DC                       ; $82C262  AE DC 00     Mx
    STX $00EE                       ; $82C265  8E EE 00     Mx
    LDA #$0000                      ; $82C268  A9 00 00     Mx
    STA $00EA                       ; $82C26B  8D EA 00     Mx
    LDA $00DF                       ; $82C26E  AD DF 00     Mx
    STA $4204                       ; $82C271  8D 04 42     Mx
    LDX $00EE                       ; $82C274  AE EE 00     Mx
    STX $4206                       ; $82C277  8E 06 42     Mx
    NOP                             ; $82C27A  EA           Mx
    NOP                             ; $82C27B  EA           Mx
    NOP                             ; $82C27C  EA           Mx
    NOP                             ; $82C27D  EA           Mx
    NOP                             ; $82C27E  EA           Mx
    NOP                             ; $82C27F  EA           Mx
    NOP                             ; $82C280  EA           Mx
    STZ $00F0                       ; $82C281  9C F0 00     Mx
    LDA $4214                       ; $82C284  AD 14 42     Mx
    STA $00F2                       ; $82C287  8D F2 00     Mx
    LDX $4216                       ; $82C28A  AE 16 42     Mx
    STX $00EC                       ; $82C28D  8E EC 00     Mx
    LDA $00EB                       ; $82C290  AD EB 00     Mx
    STA $4204                       ; $82C293  8D 04 42     Mx
    LDX $00EE                       ; $82C296  AE EE 00     Mx
    STX $4206                       ; $82C299  8E 06 42     Mx
    NOP                             ; $82C29C  EA           Mx
    NOP                             ; $82C29D  EA           Mx
    NOP                             ; $82C29E  EA           Mx
    NOP                             ; $82C29F  EA           Mx
    NOP                             ; $82C2A0  EA           Mx
    NOP                             ; $82C2A1  EA           Mx
    NOP                             ; $82C2A2  EA           Mx
    STZ $00F0                       ; $82C2A3  9C F0 00     Mx
    LDA $4214                       ; $82C2A6  AD 14 42     Mx
    ORA $00F1                       ; $82C2A9  0D F1 00     Mx
    STA $00F1                       ; $82C2AC  8D F1 00     Mx
    LDX $4216                       ; $82C2AF  AE 16 42     Mx
    STX $00EB                       ; $82C2B2  8E EB 00     Mx
    LDA $00EA                       ; $82C2B5  AD EA 00     Mx
    STA $4204                       ; $82C2B8  8D 04 42     Mx
    LDX $00EE                       ; $82C2BB  AE EE 00     Mx
    STX $4206                       ; $82C2BE  8E 06 42     Mx
    NOP                             ; $82C2C1  EA           Mx
    NOP                             ; $82C2C2  EA           Mx
    NOP                             ; $82C2C3  EA           Mx
    NOP                             ; $82C2C4  EA           Mx
    NOP                             ; $82C2C5  EA           Mx
    NOP                             ; $82C2C6  EA           Mx
    NOP                             ; $82C2C7  EA           Mx
    NOP                             ; $82C2C8  EA           Mx
    LDA $4214                       ; $82C2C9  AD 14 42     Mx
    ORA $00F0                       ; $82C2CC  0D F0 00     Mx
    STA $00F0                       ; $82C2CF  8D F0 00     Mx
    LDA $00F0                       ; $82C2D2  AD F0 00     Mx
    STA $0818                       ; $82C2D5  8D 18 08     Mx
    LDA $00F2                       ; $82C2D8  AD F2 00     Mx
    STA $081A                       ; $82C2DB  8D 1A 08     Mx
    LDA $00E5                       ; $82C2DE  AD E5 00     Mx
    BPL L_82C2FC                    ; $82C2E1  10 19        Mx
    LDA $0818                       ; $82C2E3  AD 18 08     Mx
    EOR #$FFFF                      ; $82C2E6  49 FF FF     Mx
    CLC                             ; $82C2E9  18           Mx
    ADC #$0001                      ; $82C2EA  69 01 00     Mx
    STA $0818                       ; $82C2ED  8D 18 08     Mx
    LDA $081A                       ; $82C2F0  AD 1A 08     Mx
    EOR #$FFFF                      ; $82C2F3  49 FF FF     Mx
    ADC #$0000                      ; $82C2F6  69 00 00     Mx
    STA $081A                       ; $82C2F9  8D 1A 08     Mx
L_82C2FC:
    LDA $00DC                       ; $82C2FC  AD DC 00     Mx
    SEP #$20                        ; $82C2FF  E2 20        Mx
    STA $4202                       ; $82C301  8D 02 42     mx
    LDA #$80                        ; $82C304  A9 80        mx
    STA $4203                       ; $82C306  8D 03 42     mx
    NOP                             ; $82C309  EA           mx
    NOP                             ; $82C30A  EA           mx
    NOP                             ; $82C30B  EA           mx
    REP #$20                        ; $82C30C  C2 20        mx
    LDA $4216                       ; $82C30E  AD 16 42     Mx
    STA $00A8                       ; $82C311  8D A8 00     Mx
    LDA $00DC                       ; $82C314  AD DC 00     Mx
    SEP #$20                        ; $82C317  E2 20        Mx
    STA $4202                       ; $82C319  8D 02 42     mx
    LDA #$12                        ; $82C31C  A9 12        mx
    STA $4203                       ; $82C31E  8D 03 42     mx
    NOP                             ; $82C321  EA           mx
    REP #$20                        ; $82C322  C2 20        mx
    STZ $00F4                       ; $82C324  9C F4 00     Mx
    STZ $00F2                       ; $82C327  9C F2 00     Mx
    LDA $4216                       ; $82C32A  AD 16 42     Mx
    STA $00F3                       ; $82C32D  8D F3 00     Mx
    LDA $00F2                       ; $82C330  AD F2 00     Mx
    CLC                             ; $82C333  18           Mx
    ADC $00A8                       ; $82C334  6D A8 00     Mx
    STA $00F2                       ; $82C337  8D F2 00     Mx
    LDA $00F4                       ; $82C33A  AD F4 00     Mx
    ADC #$0000                      ; $82C33D  69 00 00     Mx
    STA $00F4                       ; $82C340  8D F4 00     Mx
    LDA $00F2                       ; $82C343  AD F2 00     Mx
    EOR #$FFFF                      ; $82C346  49 FF FF     Mx
    CLC                             ; $82C349  18           Mx
    ADC #$0001                      ; $82C34A  69 01 00     Mx
    STA $00A4                       ; $82C34D  8D A4 00     Mx
    LDA $00F4                       ; $82C350  AD F4 00     Mx
    EOR #$FFFF                      ; $82C353  49 FF FF     Mx
    ADC #$0000                      ; $82C356  69 00 00     Mx
    STA $00A6                       ; $82C359  8D A6 00     Mx
    LDA $0808                       ; $82C35C  AD 08 08     Mx
    SEC                             ; $82C35F  38           Mx
    SBC #$0000                      ; $82C360  E9 00 00     Mx
    STA $00A8                       ; $82C363  8D A8 00     Mx
    LDA $080A                       ; $82C366  AD 0A 08     Mx
    SBC $0BC5                       ; $82C369  ED C5 0B     Mx
    STA $00AA                       ; $82C36C  8D AA 00     Mx
    LDA $00A8                       ; $82C36F  AD A8 00     Mx
    EOR #$FFFF                      ; $82C372  49 FF FF     Mx
    CLC                             ; $82C375  18           Mx
    ADC #$0001                      ; $82C376  69 01 00     Mx
    STA $00A8                       ; $82C379  8D A8 00     Mx
    LDA $00AA                       ; $82C37C  AD AA 00     Mx
    EOR #$FFFF                      ; $82C37F  49 FF FF     Mx
    ADC #$0000                      ; $82C382  69 00 00     Mx
    STA $00AA                       ; $82C385  8D AA 00     Mx
    STA $00E5                       ; $82C388  8D E5 00     Mx
    BPL L_82C3A6                    ; $82C38B  10 19        Mx
    LDA $00A8                       ; $82C38D  AD A8 00     Mx
    EOR #$FFFF                      ; $82C390  49 FF FF     Mx
    CLC                             ; $82C393  18           Mx
    ADC #$0001                      ; $82C394  69 01 00     Mx
    STA $00A8                       ; $82C397  8D A8 00     Mx
    LDA $00AA                       ; $82C39A  AD AA 00     Mx
    EOR #$FFFF                      ; $82C39D  49 FF FF     Mx
    ADC #$0000                      ; $82C3A0  69 00 00     Mx
    STA $00AA                       ; $82C3A3  8D AA 00     Mx
L_82C3A6:
    LDX $00DC                       ; $82C3A6  AE DC 00     Mx
    STX $00EE                       ; $82C3A9  8E EE 00     Mx
    LDA $00A8                       ; $82C3AC  AD A8 00     Mx
    STA $00EA                       ; $82C3AF  8D EA 00     Mx
    LDA $00AA                       ; $82C3B2  AD AA 00     Mx
    STA $4204                       ; $82C3B5  8D 04 42     Mx
    LDX $00EE                       ; $82C3B8  AE EE 00     Mx
    STX $4206                       ; $82C3BB  8E 06 42     Mx
    NOP                             ; $82C3BE  EA           Mx
    NOP                             ; $82C3BF  EA           Mx
    NOP                             ; $82C3C0  EA           Mx
    NOP                             ; $82C3C1  EA           Mx
    NOP                             ; $82C3C2  EA           Mx
    NOP                             ; $82C3C3  EA           Mx
    NOP                             ; $82C3C4  EA           Mx
    STZ $00F0                       ; $82C3C5  9C F0 00     Mx
    LDA $4214                       ; $82C3C8  AD 14 42     Mx
    STA $00F2                       ; $82C3CB  8D F2 00     Mx
    LDX $4216                       ; $82C3CE  AE 16 42     Mx
    STX $00EC                       ; $82C3D1  8E EC 00     Mx
    LDA $00EB                       ; $82C3D4  AD EB 00     Mx
    STA $4204                       ; $82C3D7  8D 04 42     Mx
    LDX $00EE                       ; $82C3DA  AE EE 00     Mx
    STX $4206                       ; $82C3DD  8E 06 42     Mx
    NOP                             ; $82C3E0  EA           Mx
    NOP                             ; $82C3E1  EA           Mx
    NOP                             ; $82C3E2  EA           Mx
    NOP                             ; $82C3E3  EA           Mx
    NOP                             ; $82C3E4  EA           Mx
    NOP                             ; $82C3E5  EA           Mx
    NOP                             ; $82C3E6  EA           Mx
    STZ $00F0                       ; $82C3E7  9C F0 00     Mx
    LDA $4214                       ; $82C3EA  AD 14 42     Mx
    ORA $00F1                       ; $82C3ED  0D F1 00     Mx
    STA $00F1                       ; $82C3F0  8D F1 00     Mx
    LDX $4216                       ; $82C3F3  AE 16 42     Mx
    STX $00EB                       ; $82C3F6  8E EB 00     Mx
    LDA $00EA                       ; $82C3F9  AD EA 00     Mx
    STA $4204                       ; $82C3FC  8D 04 42     Mx
    LDX $00EE                       ; $82C3FF  AE EE 00     Mx
    STX $4206                       ; $82C402  8E 06 42     Mx
    NOP                             ; $82C405  EA           Mx
    NOP                             ; $82C406  EA           Mx
    NOP                             ; $82C407  EA           Mx
    NOP                             ; $82C408  EA           Mx
    NOP                             ; $82C409  EA           Mx
    NOP                             ; $82C40A  EA           Mx
    NOP                             ; $82C40B  EA           Mx
    NOP                             ; $82C40C  EA           Mx
    LDA $4214                       ; $82C40D  AD 14 42     Mx
    ORA $00F0                       ; $82C410  0D F0 00     Mx
    STA $00F0                       ; $82C413  8D F0 00     Mx
    LDA $00E5                       ; $82C416  AD E5 00     Mx
    BPL L_82C434                    ; $82C419  10 19        Mx
    LDA $00F0                       ; $82C41B  AD F0 00     Mx
    EOR #$FFFF                      ; $82C41E  49 FF FF     Mx
    CLC                             ; $82C421  18           Mx
    ADC #$0001                      ; $82C422  69 01 00     Mx
    STA $00F0                       ; $82C425  8D F0 00     Mx
    LDA $00F2                       ; $82C428  AD F2 00     Mx
    EOR #$FFFF                      ; $82C42B  49 FF FF     Mx
    ADC #$0000                      ; $82C42E  69 00 00     Mx
    STA $00F2                       ; $82C431  8D F2 00     Mx
L_82C434:
    LDA $00A4                       ; $82C434  AD A4 00     Mx
    SEC                             ; $82C437  38           Mx
    SBC $00F0                       ; $82C438  ED F0 00     Mx
    STA $0814                       ; $82C43B  8D 14 08     Mx
    LDA $00A6                       ; $82C43E  AD A6 00     Mx
    SBC $00F2                       ; $82C441  ED F2 00     Mx
    STA $0816                       ; $82C444  8D 16 08     Mx
    LDA $0814                       ; $82C447  AD 14 08     Mx
    EOR #$FFFF                      ; $82C44A  49 FF FF     Mx
    CLC                             ; $82C44D  18           Mx
    ADC #$0001                      ; $82C44E  69 01 00     Mx
    STA $0814                       ; $82C451  8D 14 08     Mx
    LDA $0816                       ; $82C454  AD 16 08     Mx
    EOR #$FFFF                      ; $82C457  49 FF FF     Mx
    ADC #$0000                      ; $82C45A  69 00 00     Mx
    STA $0816                       ; $82C45D  8D 16 08     Mx
    JMP L_82BFCF                    ; $82C460  4C CF BF     Mx
L_82C463:
    LDA #$001E                      ; $82C463  A9 1E 00     Mx
    STA $07DE                       ; $82C466  8D DE 07     Mx
    LDA #$7800                      ; $82C469  A9 00 78     Mx
    STA $0814                       ; $82C46C  8D 14 08     Mx
    LDA #$0003                      ; $82C46F  A9 03 00     Mx
    STA $0816                       ; $82C472  8D 16 08     Mx
    JMP L_82BFCF                    ; $82C475  4C CF BF     Mx
L_82C478:
    LDY $0888                       ; $82C478  AC 88 08     Mx
    LDA [$D0],Y                     ; $82C47B  B7 D0        Mx
    STA $07F0                       ; $82C47D  8D F0 07     Mx
    INY                             ; $82C480  C8           Mx
    INY                             ; $82C481  C8           Mx
    STY $0888                       ; $82C482  8C 88 08     Mx
    JMP L_82BFCF                    ; $82C485  4C CF BF     Mx
L_82C488:
    LDA #$0008                      ; $82C488  A9 08 00     Mx
    STA $07E0                       ; $82C48B  8D E0 07     Mx
    LDA #$0384                      ; $82C48E  A9 84 03     Mx
    STA $00F6                       ; $82C491  8D F6 00     Mx
    JMP L_82BFCF                    ; $82C494  4C CF BF     Mx
L_82C497:
    LDA $0C19                       ; $82C497  AD 19 0C     Mx
    CMP $07D8                       ; $82C49A  CD D8 07     Mx
    BNE L_82C4A8                    ; $82C49D  D0 09        Mx
    LDA #$0002                      ; $82C49F  A9 02 00     Mx
    STA $0BBF                       ; $82C4A2  8D BF 0B     Mx
    STZ $0BC1                       ; $82C4A5  9C C1 0B     Mx
L_82C4A8:
    LDA #$0019                      ; $82C4A8  A9 19 00     Mx
    STA $0862                       ; $82C4AB  8D 62 08     Mx
    LDA #$0008                      ; $82C4AE  A9 08 00     Mx
    STA $07E0                       ; $82C4B1  8D E0 07     Mx
    JMP L_82BFCF                    ; $82C4B4  4C CF BF     Mx
L_82C4B7:
    LDY $0888                       ; $82C4B7  AC 88 08     Mx
    LDA [$D0],Y                     ; $82C4BA  B7 D0        Mx
    PHY                             ; $82C4BC  5A           Mx
    CMP #$0011                      ; $82C4BD  C9 11 00     Mx
    BNE L_82C4CA                    ; $82C4C0  D0 08        Mx
    LDX $1611                       ; $82C4C2  AE 11 16     Mx
    BEQ L_82C4DD                    ; $82C4C5  F0 16        Mx
    JMP L_82C4E7                    ; $82C4C7  4C E7 C4     Mx
L_82C4CA:
    CMP #$0000                      ; $82C4CA  C9 00 00     Mx
    BNE L_82C4D7                    ; $82C4CD  D0 08        Mx
    LDX #$01                        ; $82C4CF  A2 01        Mx
    STX $15F5                       ; $82C4D1  8E F5 15     Mx
    STZ $15F7                       ; $82C4D4  9C F7 15     Mx
L_82C4D7:
    JSL L_BDFDF3                    ; $82C4D7  22 F3 FD BD  Mx
    BRA L_82C4E7                    ; $82C4DB  80 0A        Mx
L_82C4DD:
    JSL L_BDFDF3                    ; $82C4DD  22 F3 FD BD  Mx
    LDA #$0064                      ; $82C4E1  A9 64 00     Mx
    STA $1611                       ; $82C4E4  8D 11 16     Mx
L_82C4E7:
    PLY                             ; $82C4E7  7A           Mx
    INY                             ; $82C4E8  C8           Mx
    INY                             ; $82C4E9  C8           Mx
    STY $0888                       ; $82C4EA  8C 88 08     Mx
    JMP L_82BFCF                    ; $82C4ED  4C CF BF     Mx
L_82C4F0:
    LDY $0888                       ; $82C4F0  AC 88 08     Mx
    LDA [$D0],Y                     ; $82C4F3  B7 D0        Mx
    STA $1137                       ; $82C4F5  8D 37 11     Mx
    INY                             ; $82C4F8  C8           Mx
    INY                             ; $82C4F9  C8           Mx
    STY $0888                       ; $82C4FA  8C 88 08     Mx
    JMP L_82BFCF                    ; $82C4FD  4C CF BF     Mx
L_82C500:
    LDX $07F0                       ; $82C500  AE F0 07     Mx
    LDA $A7E35F,X                   ; $82C503  BF 5F E3 A7  Mx
    AND #$0003                      ; $82C507  29 03 00     Mx
    CMP #$0002                      ; $82C50A  C9 02 00     Mx
    BEQ L_82C518                    ; $82C50D  F0 09        Mx
    LDA #$0006                      ; $82C50F  A9 06 00     Mx
    STA $07F0                       ; $82C512  8D F0 07     Mx
    JMP L_82BFCF                    ; $82C515  4C CF BF     Mx
L_82C518:
    LDA #$0002                      ; $82C518  A9 02 00     Mx
    STA $07F0                       ; $82C51B  8D F0 07     Mx
    JMP L_82BFCF                    ; $82C51E  4C CF BF     Mx
L_82C521:
    LDA $0B4A                       ; $82C521  AD 4A 0B     Mx
    BNE L_82C52B                    ; $82C524  D0 05        Mx
    STZ $15F5                       ; $82C526  9C F5 15     Mx
    BRA L_82C539                    ; $82C529  80 0E        Mx
L_82C52B:
    CMP #$0002                      ; $82C52B  C9 02 00     Mx
    BCC L_82C539                    ; $82C52E  90 09        Mx
    STZ $0CCB                       ; $82C530  9C CB 0C     Mx
    STZ $0CC9                       ; $82C533  9C C9 0C     Mx
    STZ $0CC7                       ; $82C536  9C C7 0C     Mx
L_82C539:
    STZ $0CD1                       ; $82C539  9C D1 0C     Mx
    STZ $0C11                       ; $82C53C  9C 11 0C     Mx
    LDY $0888                       ; $82C53F  AC 88 08     Mx
    LDA [$D0],Y                     ; $82C542  B7 D0        Mx
    INY                             ; $82C544  C8           Mx
    INY                             ; $82C545  C8           Mx
    STY $0888                       ; $82C546  8C 88 08     Mx
    STA $07F6                       ; $82C549  8D F6 07     Mx
    STZ $0812                       ; $82C54C  9C 12 08     Mx
    STZ $0810                       ; $82C54F  9C 10 08     Mx
    STZ $081A                       ; $82C552  9C 1A 08     Mx
    STZ $0818                       ; $82C555  9C 18 08     Mx
    CMP #$0000                      ; $82C558  C9 00 00     Mx
    BEQ L_82C563                    ; $82C55B  F0 06        Mx
    STZ $0816                       ; $82C55D  9C 16 08     Mx
    STZ $0814                       ; $82C560  9C 14 08     Mx
L_82C563:
    LDA $0C19                       ; $82C563  AD 19 0C     Mx
    CMP $07D8                       ; $82C566  CD D8 07     Mx
    BNE L_82C598                    ; $82C569  D0 2D        Mx
    STZ $0C19                       ; $82C56B  9C 19 0C     Mx
    STZ $00CC                       ; $82C56E  9C CC 00     Mx
    STZ $0C2B                       ; $82C571  9C 2B 0C     Mx
    STZ $0BEF                       ; $82C574  9C EF 0B     Mx
    STZ $0BF1                       ; $82C577  9C F1 0B     Mx
    LDA #$0002                      ; $82C57A  A9 02 00     Mx
    STA $0BBF                       ; $82C57D  8D BF 0B     Mx
    LDA #$0001                      ; $82C580  A9 01 00     Mx
    STA $0BC1                       ; $82C583  8D C1 0B     Mx
    LDA $083A                       ; $82C586  AD 3A 08     Mx
    STA $0BD9                       ; $82C589  8D D9 0B     Mx
    LDA #$0374                      ; $82C58C  A9 74 03     Mx
    STA $0BE1                       ; $82C58F  8D E1 0B     Mx
    LDA #$0068                      ; $82C592  A9 68 00     Mx
    STA $0BDD                       ; $82C595  8D DD 0B     Mx
L_82C598:
    LDA #$0019                      ; $82C598  A9 19 00     Mx
    STA $0862                       ; $82C59B  8D 62 08     Mx
    STZ $0C2B                       ; $82C59E  9C 2B 0C     Mx
    STZ $00E5                       ; $82C5A1  9C E5 00     Mx
    LDA $0B4A                       ; $82C5A4  AD 4A 0B     Mx
    CMP #$0002                      ; $82C5A7  C9 02 00     Mx
    BCS L_82C5C1                    ; $82C5AA  B0 15        Mx
    LDA $1D57                       ; $82C5AC  AD 57 1D     Mx
    CMP #$07AE                      ; $82C5AF  C9 AE 07     Mx
    BCS L_82C5C1                    ; $82C5B2  B0 0D        Mx
    LDA $1D56                       ; $82C5B4  AD 56 1D     Mx
    AND #$0007                      ; $82C5B7  29 07 00     Mx
    SEC                             ; $82C5BA  38           Mx
    SBC #$0004                      ; $82C5BB  E9 04 00     Mx
    STA $00E5                       ; $82C5BE  8D E5 00     Mx
L_82C5C1:
    LDA $0BD9                       ; $82C5C1  AD D9 0B     Mx
    CLC                             ; $82C5C4  18           Mx
    ADC $00E5                       ; $82C5C5  6D E5 00     Mx
    STA $0BD9                       ; $82C5C8  8D D9 0B     Mx
    LDA $08B2                       ; $82C5CB  AD B2 08     Mx
    BPL L_82C5F5                    ; $82C5CE  10 25        Mx
    BPL L_82C5D9                    ; $82C5D0  10 07        Mx
    EOR #$FFFF                      ; $82C5D2  49 FF FF     Mx
    CLC                             ; $82C5D5  18           Mx
    ADC #$0001                      ; $82C5D6  69 01 00     Mx
L_82C5D9:
    CMP #$0010                      ; $82C5D9  C9 10 00     Mx
    BCC L_82C5E1                    ; $82C5DC  90 03        Mx
    LDA #$0010                      ; $82C5DE  A9 10 00     Mx
L_82C5E1:
    LSR                             ; $82C5E1  4A           Mx
    INC                             ; $82C5E2  1A           Mx
    STA $00A4                       ; $82C5E3  8D A4 00     Mx
    LDA $1D58                       ; $82C5E6  AD 58 1D     Mx
    AND #$000F                      ; $82C5E9  29 0F 00     Mx
    INC                             ; $82C5EC  1A           Mx
    CMP $00A4                       ; $82C5ED  CD A4 00     Mx
    BCS L_82C5FD                    ; $82C5F0  B0 0B        Mx
    JMP L_82C600                    ; $82C5F2  4C 00 C6     Mx
L_82C5F5:
    LDA $1D58                       ; $82C5F5  AD 58 1D     Mx
    AND #$001F                      ; $82C5F8  29 1F 00     Mx
    BEQ L_82C600                    ; $82C5FB  F0 03        Mx
L_82C5FD:
    JMP L_82C67D                    ; $82C5FD  4C 7D C6     Mx
L_82C600:
    LDA $0B4A                       ; $82C600  AD 4A 0B     Mx
    CMP #$0002                      ; $82C603  C9 02 00     Mx
    BCS L_82C5FD                    ; $82C606  B0 F5        Mx
    LDA $08B2                       ; $82C608  AD B2 08     Mx
    BMI L_82C613                    ; $82C60B  30 06        Mx
    SEC                             ; $82C60D  38           Mx
    SBC #$0002                      ; $82C60E  E9 02 00     Mx
    BPL L_82C5FD                    ; $82C611  10 EA        Mx
L_82C613:
    LDX $07D8                       ; $82C613  AE D8 07     Mx
    CPX $0A96                       ; $82C616  EC 96 0A     Mx
    BEQ L_82C67D                    ; $82C619  F0 62        Mx
    LDA #$001C                      ; $82C61B  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $82C61E  22 F3 FD BD  Mx
    LDA #$001C                      ; $82C622  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $82C625  22 F3 FD BD  Mx
    LDA #$001C                      ; $82C629  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $82C62C  22 F3 FD BD  Mx
    LDA $1D56                       ; $82C630  AD 56 1D     Mx
    STA $0B84                       ; $82C633  8D 84 0B     Mx
    LDA $1D58                       ; $82C636  AD 58 1D     Mx
    AND #$0003                      ; $82C639  29 03 00     Mx
    SEC                             ; $82C63C  38           Mx
    SBC #$0002                      ; $82C63D  E9 02 00     Mx
    STA $00D6                       ; $82C640  8D D6 00     Mx
    LDA $1D57                       ; $82C643  AD 57 1D     Mx
    CLC                             ; $82C646  18           Mx
    ADC #$4000                      ; $82C647  69 00 40     Mx
    STA $0B9F                       ; $82C64A  8D 9F 0B     Mx
    LDA $1D57                       ; $82C64D  AD 57 1D     Mx
    AND #$0001                      ; $82C650  29 01 00     Mx
    ADC #$0000                      ; $82C653  69 00 00     Mx
    STA $00E8                       ; $82C656  8D E8 00     Mx
    LDA #$006C                      ; $82C659  A9 6C 00     Mx
    STA $0BDD                       ; $82C65C  8D DD 0B     Mx
    LDA #$F100                      ; $82C65F  A9 00 F1     Mx
    STA $0B88                       ; $82C662  8D 88 0B     Mx
    LDA #$FFFA                      ; $82C665  A9 FA FF     Mx
    STA $00D9                       ; $82C668  8D D9 00     Mx
    LDA #$000F                      ; $82C66B  A9 0F 00     Mx
    STA $077A                       ; $82C66E  8D 7A 07     Mx
    STA $0862                       ; $82C671  8D 62 08     Mx
    STA $094A                       ; $82C674  8D 4A 09     Mx
    STA $0A32                       ; $82C677  8D 32 0A     Mx
    JMP L_82C695                    ; $82C67A  4C 95 C6     Mx
L_82C67D:
    STZ $00E8                       ; $82C67D  9C E8 00     Mx
    STZ $0B9F                       ; $82C680  9C 9F 0B     Mx
    STZ $00D6                       ; $82C683  9C D6 00     Mx
    STZ $0B84                       ; $82C686  9C 84 0B     Mx
    LDA #$9400                      ; $82C689  A9 00 94     Mx
    STA $0B88                       ; $82C68C  8D 88 0B     Mx
    LDA #$0000                      ; $82C68F  A9 00 00     Mx
    STA $00D9                       ; $82C692  8D D9 00     Mx
L_82C695:
    LDA $0B9F                       ; $82C695  AD 9F 0B     Mx
    STA $0BE3                       ; $82C698  8D E3 0B     Mx
    LDA $00E8                       ; $82C69B  AD E8 00     Mx
    STA $0BE5                       ; $82C69E  8D E5 0B     Mx
    LDA $0B84                       ; $82C6A1  AD 84 0B     Mx
    STA $0BEB                       ; $82C6A4  8D EB 0B     Mx
    LDA $00D6                       ; $82C6A7  AD D6 00     Mx
    STA $0BED                       ; $82C6AA  8D ED 0B     Mx
    LDA $0B88                       ; $82C6AD  AD 88 0B     Mx
    STA $0BE7                       ; $82C6B0  8D E7 0B     Mx
    LDA $00D9                       ; $82C6B3  AD D9 00     Mx
    STA $0BE9                       ; $82C6B6  8D E9 0B     Mx
    JMP L_82BFCF                    ; $82C6B9  4C CF BF     Mx
L_82C6BC:
    LDA $0816                       ; $82C6BC  AD 16 08     Mx
    BPL L_82C6DA                    ; $82C6BF  10 19        Mx
    LDA $07FC                       ; $82C6C1  AD FC 07     Mx
    BMI L_82C6CB                    ; $82C6C4  30 05        Mx
    ORA $07FE                       ; $82C6C6  0D FE 07     Mx
    BNE L_82C6DA                    ; $82C6C9  D0 0F        Mx
L_82C6CB:
    STZ $080A                       ; $82C6CB  9C 0A 08     Mx
    STZ $0808                       ; $82C6CE  9C 08 08     Mx
    STZ $0816                       ; $82C6D1  9C 16 08     Mx
    STZ $0814                       ; $82C6D4  9C 14 08     Mx
    JMP L_82C6FC                    ; $82C6D7  4C FC C6     Mx
L_82C6DA:
    ORA $0814                       ; $82C6DA  0D 14 08     Mx
    BNE L_82C6E9                    ; $82C6DD  D0 0A        Mx
    LDA $07F6                       ; $82C6DF  AD F6 07     Mx
    BEQ L_82C6E9                    ; $82C6E2  F0 05        Mx
    DEC $07F6                       ; $82C6E4  CE F6 07     Mx
    BNE L_82C6FC                    ; $82C6E7  D0 13        Mx
L_82C6E9:
    LDA $0814                       ; $82C6E9  AD 14 08     Mx
    SEC                             ; $82C6EC  38           Mx
    SBC #$2500                      ; $82C6ED  E9 00 25     Mx
    STA $0814                       ; $82C6F0  8D 14 08     Mx
    LDA $0816                       ; $82C6F3  AD 16 08     Mx
    SBC #$0000                      ; $82C6F6  E9 00 00     Mx
    STA $0816                       ; $82C6F9  8D 16 08     Mx
L_82C6FC:
    LDA $07DE                       ; $82C6FC  AD DE 07     Mx
    BEQ L_82C759                    ; $82C6FF  F0 58        Mx
    DEC $07DE                       ; $82C701  CE DE 07     Mx
    BEQ L_82C759                    ; $82C704  F0 53        Mx
    LDA $07DE                       ; $82C706  AD DE 07     Mx
    CMP #$000A                      ; $82C709  C9 0A 00     Mx
    BCS L_82C71D                    ; $82C70C  B0 0F        Mx
    STZ $15ED                       ; $82C70E  9C ED 15     Mx
    STZ $15F5                       ; $82C711  9C F5 15     Mx
    LDA #$FFFF                      ; $82C714  A9 FF FF     Mx
    STA $15F3                       ; $82C717  8D F3 15     Mx
L_82C71A:
    JMP L_82C79D                    ; $82C71A  4C 9D C7     Mx
L_82C71D:
    LDA $15ED                       ; $82C71D  AD ED 15     Mx
    BEQ L_82C71A                    ; $82C720  F0 F8        Mx
    LDA $15F3                       ; $82C722  AD F3 15     Mx
    CLC                             ; $82C725  18           Mx
    ADC #$0001                      ; $82C726  69 01 00     Mx
    CMP #$0006                      ; $82C729  C9 06 00     Mx
    BCC L_82C731                    ; $82C72C  90 03        Mx
    LDA #$0000                      ; $82C72E  A9 00 00     Mx
L_82C731:
    STA $15F3                       ; $82C731  8D F3 15     Mx
    BNE L_82C71A                    ; $82C734  D0 E4        Mx
    LDA $1D56                       ; $82C736  AD 56 1D     Mx
    AND #$001F                      ; $82C739  29 1F 00     Mx
    STA $00A4                       ; $82C73C  8D A4 00     Mx
    LDA #$0106                      ; $82C73F  A9 06 01     Mx
    SEC                             ; $82C742  38           Mx
    SBC $012B                       ; $82C743  ED 2B 01     Mx
    SEC                             ; $82C746  38           Mx
    SBC $00A4                       ; $82C747  ED A4 00     Mx
    STA $15F1                       ; $82C74A  8D F1 15     Mx
    LDA $1D58                       ; $82C74D  AD 58 1D     Mx
    AND #$00FF                      ; $82C750  29 FF 00     Mx
    STA $15EF                       ; $82C753  8D EF 15     Mx
    JMP L_82C79D                    ; $82C756  4C 9D C7     Mx
L_82C759:
    LDA $080A                       ; $82C759  AD 0A 08     Mx
    ORA $0808                       ; $82C75C  0D 08 08     Mx
    BEQ L_82C764                    ; $82C75F  F0 03        Mx
    JMP L_82C79D                    ; $82C761  4C 9D C7     Mx
L_82C764:
    STZ $0812                       ; $82C764  9C 12 08     Mx
    STZ $0810                       ; $82C767  9C 10 08     Mx
    STZ $081A                       ; $82C76A  9C 1A 08     Mx
    STZ $0818                       ; $82C76D  9C 18 08     Mx
    STZ $0816                       ; $82C770  9C 16 08     Mx
    STZ $0814                       ; $82C773  9C 14 08     Mx
    LDA #$0014                      ; $82C776  A9 14 00     Mx
    STA $0860                       ; $82C779  8D 60 08     Mx
    LDA #$003C                      ; $82C77C  A9 3C 00     Mx
    STA $07DE                       ; $82C77F  8D DE 07     Mx
    LDA #$0000                      ; $82C782  A9 00 00     Mx
    STA $07DC                       ; $82C785  8D DC 07     Mx
    LDA #$FFFF                      ; $82C788  A9 FF FF     Mx
    STA $07E2                       ; $82C78B  8D E2 07     Mx
    STZ $07E4                       ; $82C78E  9C E4 07     Mx
    STZ $082A                       ; $82C791  9C 2A 08     Mx
    STZ $07E0                       ; $82C794  9C E0 07     Mx
    LDA #$FFF8                      ; $82C797  A9 F8 FF     Mx
    STA $07E6                       ; $82C79A  8D E6 07     Mx
L_82C79D:
    RTS                             ; $82C79D  60           Mx
L_82C79E:
    LDA $07E2                       ; $82C79E  AD E2 07     Mx
    CMP #$0001                      ; $82C7A1  C9 01 00     Mx
    BEQ L_82C7CD                    ; $82C7A4  F0 27        Mx
    STZ $0812                       ; $82C7A6  9C 12 08     Mx
    STZ $0810                       ; $82C7A9  9C 10 08     Mx
    STZ $081A                       ; $82C7AC  9C 1A 08     Mx
    STZ $0818                       ; $82C7AF  9C 18 08     Mx
    LDA #$0002                      ; $82C7B2  A9 02 00     Mx
    STA $07E0                       ; $82C7B5  8D E0 07     Mx
    STZ $0C29                       ; $82C7B8  9C 29 0C     Mx
    STZ $0C27                       ; $82C7BB  9C 27 0C     Mx
    LDA #$06F0                      ; $82C7BE  A9 F0 06     Mx
    STA $0C25                       ; $82C7C1  8D 25 0C     Mx
    LDA $0C19                       ; $82C7C4  AD 19 0C     Mx
    STA $0C1F                       ; $82C7C7  8D 1F 0C     Mx
    JMP L_82C824                    ; $82C7CA  4C 24 C8     Mx
L_82C7CD:
    LDA #$0001                      ; $82C7CD  A9 01 00     Mx
    STA $07E4                       ; $82C7D0  8D E4 07     Mx
    LDA $07D8                       ; $82C7D3  AD D8 07     Mx
    CMP $0C19                       ; $82C7D6  CD 19 0C     Mx
    BNE L_82C824                    ; $82C7D9  D0 49        Mx
    LDA $086E                       ; $82C7DB  AD 6E 08     Mx
    STA $00A4                       ; $82C7DE  8D A4 00     Mx
    LDA $080A                       ; $82C7E1  AD 0A 08     Mx
    STA $00A6                       ; $82C7E4  8D A6 00     Mx
    STZ $0B88                       ; $82C7E7  9C 88 0B     Mx
    LDA $071E                       ; $82C7EA  AD 1E 07     Mx
    STA $00AA                       ; $82C7ED  8D AA 00     Mx
    LDA $0722                       ; $82C7F0  AD 22 07     Mx
    STA $00AC                       ; $82C7F3  8D AC 00     Mx
    LDA $0726                       ; $82C7F6  AD 26 07     Mx
    STA $00AE                       ; $82C7F9  8D AE 00     Mx
    LDA $0729                       ; $82C7FC  AD 29 07     Mx
    STA $00A8                       ; $82C7FF  8D A8 00     Mx
    LDA $0731                       ; $82C802  AD 31 07     Mx
    STA $00B0                       ; $82C805  8D B0 00     Mx
    STZ $07A4                       ; $82C808  9C A4 07     Mx
    STZ $0C39                       ; $82C80B  9C 39 0C     Mx
    JSL L_A7DCCB                    ; $82C80E  22 CB DC A7  Mx
    LDA $00DC                       ; $82C812  AD DC 00     Mx
    STA $07A2                       ; $82C815  8D A2 07     Mx
    LDA #$0019                      ; $82C818  A9 19 00     Mx
    STA $0862                       ; $82C81B  8D 62 08     Mx
    LDA #$0014                      ; $82C81E  A9 14 00     Mx
    STA $0860                       ; $82C821  8D 60 08     Mx
L_82C824:
    LDA $07FC                       ; $82C824  AD FC 07     Mx
    BPL L_82C86F                    ; $82C827  10 46        Mx
L_82C829:
    STZ $080A                       ; $82C829  9C 0A 08     Mx
    STZ $0808                       ; $82C82C  9C 08 08     Mx
    STZ $07FC                       ; $82C82F  9C FC 07     Mx
    STZ $07FE                       ; $82C832  9C FE 07     Mx
    STZ $0816                       ; $82C835  9C 16 08     Mx
    STZ $0814                       ; $82C838  9C 14 08     Mx
    LDA $087C                       ; $82C83B  AD 7C 08     Mx
    BEQ L_82C851                    ; $82C83E  F0 11        Mx
    JSR L_82D182                    ; $82C840  20 82 D1     Mx
    LDA $07DC                       ; $82C843  AD DC 07     Mx
    CMP #$002E                      ; $82C846  C9 2E 00     Mx
    BEQ L_82C86C                    ; $82C849  F0 21        Mx
    LDA #$000C                      ; $82C84B  A9 0C 00     Mx
    JMP L_82C854                    ; $82C84E  4C 54 C8     Mx
L_82C851:
    LDA #$0000                      ; $82C851  A9 00 00     Mx
L_82C854:
    STA $07DC                       ; $82C854  8D DC 07     Mx
    LDA #$FFFF                      ; $82C857  A9 FF FF     Mx
    STA $07E2                       ; $82C85A  8D E2 07     Mx
    STZ $07E4                       ; $82C85D  9C E4 07     Mx
    STZ $082A                       ; $82C860  9C 2A 08     Mx
    STZ $07E0                       ; $82C863  9C E0 07     Mx
    LDA #$FFF8                      ; $82C866  A9 F8 FF     Mx
    STA $07E6                       ; $82C869  8D E6 07     Mx
L_82C86C:
    JMP L_82C894                    ; $82C86C  4C 94 C8     Mx
L_82C86F:
    LDA $07FC                       ; $82C86F  AD FC 07     Mx
    BNE L_82C881                    ; $82C872  D0 0D        Mx
    LDA $0816                       ; $82C874  AD 16 08     Mx
    BMI L_82C87E                    ; $82C877  30 05        Mx
    ORA $0814                       ; $82C879  0D 14 08     Mx
    BNE L_82C881                    ; $82C87C  D0 03        Mx
L_82C87E:
    JMP L_82C829                    ; $82C87E  4C 29 C8     Mx
L_82C881:
    LDA $0814                       ; $82C881  AD 14 08     Mx
    SEC                             ; $82C884  38           Mx
    SBC #$2500                      ; $82C885  E9 00 25     Mx
    STA $0814                       ; $82C888  8D 14 08     Mx
    LDA $0816                       ; $82C88B  AD 16 08     Mx
    SBC #$0000                      ; $82C88E  E9 00 00     Mx
    STA $0816                       ; $82C891  8D 16 08     Mx
L_82C894:
    RTS                             ; $82C894  60           Mx
L_82C895:
    LDA #$001E                      ; $82C895  A9 1E 00     Mx
    STA $0862                       ; $82C898  8D 62 08     Mx
    LDA #$0005                      ; $82C89B  A9 05 00     Mx
    STA $07A2                       ; $82C89E  8D A2 07     Mx
    STZ $0894                       ; $82C8A1  9C 94 08     Mx
    STZ $0A90                       ; $82C8A4  9C 90 0A     Mx
    LDA $0B6E                       ; $82C8A7  AD 6E 0B     Mx
    CMP #$0058                      ; $82C8AA  C9 58 00     Mx
    BCS L_82C8DD                    ; $82C8AD  B0 2E        Mx
    LDA $07E2                       ; $82C8AF  AD E2 07     Mx
    CMP #$0007                      ; $82C8B2  C9 07 00     Mx
    BCC L_82C8BC                    ; $82C8B5  90 05        Mx
    LDA $07E4                       ; $82C8B7  AD E4 07     Mx
    BEQ L_82C8BF                    ; $82C8BA  F0 03        Mx
L_82C8BC:
    JMP L_82C9D6                    ; $82C8BC  4C D6 C9     Mx
L_82C8BF:
    LDA #$003C                      ; $82C8BF  A9 3C 00     Mx
    STA $07DC                       ; $82C8C2  8D DC 07     Mx
    LDA #$FFFF                      ; $82C8C5  A9 FF FF     Mx
    STA $07E2                       ; $82C8C8  8D E2 07     Mx
    STZ $07E4                       ; $82C8CB  9C E4 07     Mx
    STZ $082A                       ; $82C8CE  9C 2A 08     Mx
    STZ $07E0                       ; $82C8D1  9C E0 07     Mx
    LDA #$FFF8                      ; $82C8D4  A9 F8 FF     Mx
    STA $07E6                       ; $82C8D7  8D E6 07     Mx
    JMP L_82C9D6                    ; $82C8DA  4C D6 C9     Mx
L_82C8DD:
    LDA $0814                       ; $82C8DD  AD 14 08     Mx
    BNE L_82C900                    ; $82C8E0  D0 1E        Mx
    LDA $07E2                       ; $82C8E2  AD E2 07     Mx
    CMP #$0008                      ; $82C8E5  C9 08 00     Mx
    BCC L_82C8BC                    ; $82C8E8  90 D2        Mx
    BNE L_82C900                    ; $82C8EA  D0 14        Mx
    LDA $07E4                       ; $82C8EC  AD E4 07     Mx
    BNE L_82C8BC                    ; $82C8EF  D0 CB        Mx
    LDA #$5600                      ; $82C8F1  A9 00 56     Mx
    STA $0814                       ; $82C8F4  8D 14 08     Mx
    LDA #$0004                      ; $82C8F7  A9 04 00     Mx
    STA $0816                       ; $82C8FA  8D 16 08     Mx
    JMP L_82C9D6                    ; $82C8FD  4C D6 C9     Mx
L_82C900:
    LDX $07D9                       ; $82C900  AE D9 07     Mx
    BNE L_82C90D                    ; $82C903  D0 08        Mx
    LDA #$0003                      ; $82C905  A9 03 00     Mx
    STA $0864                       ; $82C908  8D 64 08     Mx
    BRA L_82C918                    ; $82C90B  80 0B        Mx
L_82C90D:
    LDA $0858                       ; $82C90D  AD 58 08     Mx
    EOR $085A                       ; $82C910  4D 5A 08     Mx
    BEQ L_82C918                    ; $82C913  F0 03        Mx
    INC $0864                       ; $82C915  EE 64 08     Mx
L_82C918:
    LDA $0814                       ; $82C918  AD 14 08     Mx
    SEC                             ; $82C91B  38           Mx
    SBC #$2500                      ; $82C91C  E9 00 25     Mx
    STA $0814                       ; $82C91F  8D 14 08     Mx
    LDA $0816                       ; $82C922  AD 16 08     Mx
    SBC #$0000                      ; $82C925  E9 00 00     Mx
    STA $0816                       ; $82C928  8D 16 08     Mx
    BMI L_82C930                    ; $82C92B  30 03        Mx
    JMP L_82C9D0                    ; $82C92D  4C D0 C9     Mx
L_82C930:
    LDA $080A                       ; $82C930  AD 0A 08     Mx
    ORA $0808                       ; $82C933  0D 08 08     Mx
    BNE L_82C95F                    ; $82C936  D0 27        Mx
    LDA #$FFFF                      ; $82C938  A9 FF FF     Mx
    STA $076E                       ; $82C93B  8D 6E 07     Mx
    STA $0A26                       ; $82C93E  8D 26 0A     Mx
    LDA #$0000                      ; $82C941  A9 00 00     Mx
    STA $07DC                       ; $82C944  8D DC 07     Mx
    LDA #$FFFF                      ; $82C947  A9 FF FF     Mx
    STA $07E2                       ; $82C94A  8D E2 07     Mx
    STZ $07E4                       ; $82C94D  9C E4 07     Mx
    STZ $082A                       ; $82C950  9C 2A 08     Mx
    STZ $07E0                       ; $82C953  9C E0 07     Mx
    LDA #$FFF8                      ; $82C956  A9 F8 FF     Mx
    STA $07E6                       ; $82C959  8D E6 07     Mx
    JMP L_82C9D6                    ; $82C95C  4C D6 C9     Mx
L_82C95F:
    LDA $07E2                       ; $82C95F  AD E2 07     Mx
    CMP #$000B                      ; $82C962  C9 0B 00     Mx
    BEQ L_82C9D0                    ; $82C965  F0 69        Mx
    CMP #$000A                      ; $82C967  C9 0A 00     Mx
    BNE L_82C9D6                    ; $82C96A  D0 6A        Mx
    LDA $0BE5                       ; $82C96C  AD E5 0B     Mx
    BNE L_82C9D6                    ; $82C96F  D0 65        Mx
    LDA $08C4                       ; $82C971  AD C4 08     Mx
    CMP #$003C                      ; $82C974  C9 3C 00     Mx
    BEQ L_82C981                    ; $82C977  F0 08        Mx
    LDA $0864                       ; $82C979  AD 64 08     Mx
    CMP $0A34                       ; $82C97C  CD 34 0A     Mx
    BRA L_82C987                    ; $82C97F  80 06        Mx
L_82C981:
    LDA $0864                       ; $82C981  AD 64 08     Mx
    CMP $094C                       ; $82C984  CD 4C 09     Mx
L_82C987:
    BEQ L_82C98D                    ; $82C987  F0 04        Mx
    BCC L_82C9D6                    ; $82C989  90 4B        Mx
    BRA L_82C98F                    ; $82C98B  80 02        Mx
L_82C98D:
    BRA L_82C9D6                    ; $82C98D  80 47        Mx
L_82C98F:
    LDA $0BD9                       ; $82C98F  AD D9 0B     Mx
    SEC                             ; $82C992  38           Mx
    SBC #$0014                      ; $82C993  E9 14 00     Mx
    STA $0BD9                       ; $82C996  8D D9 0B     Mx
    LDA #$8000                      ; $82C999  A9 00 80     Mx
    STA $0BE3                       ; $82C99C  8D E3 0B     Mx
    LDA #$FFFE                      ; $82C99F  A9 FE FF     Mx
    STA $0BE5                       ; $82C9A2  8D E5 0B     Mx
    LDA #$7000                      ; $82C9A5  A9 00 70     Mx
    STA $0BEB                       ; $82C9A8  8D EB 0B     Mx
    LDA #$FFFF                      ; $82C9AB  A9 FF FF     Mx
    STA $0BED                       ; $82C9AE  8D ED 0B     Mx
    LDA $06F4                       ; $82C9B1  AD F4 06     Mx
    CMP #$003C                      ; $82C9B4  C9 3C 00     Mx
    BEQ L_82C9C1                    ; $82C9B7  F0 08        Mx
    LDA #$06F0                      ; $82C9B9  A9 F0 06     Mx
    STA $0C25                       ; $82C9BC  8D 25 0C     Mx
    BRA L_82C9C7                    ; $82C9BF  80 06        Mx
L_82C9C1:
    LDA #$07D8                      ; $82C9C1  A9 D8 07     Mx
    STA $0C25                       ; $82C9C4  8D 25 0C     Mx
L_82C9C7:
    LDA #$0003                      ; $82C9C7  A9 03 00     Mx
    JSL L_BDFDF3                    ; $82C9CA  22 F3 FD BD  Mx
    BRA L_82C9D6                    ; $82C9CE  80 06        Mx
L_82C9D0:
    LDA #$0002                      ; $82C9D0  A9 02 00     Mx
    STA $07E4                       ; $82C9D3  8D E4 07     Mx
L_82C9D6:
    RTS                             ; $82C9D6  60           Mx
L_82C9D7:
    LDA $0866                       ; $82C9D7  AD 66 08     Mx
    BEQ L_82C9E4                    ; $82C9DA  F0 08        Mx
    LDA $0C19                       ; $82C9DC  AD 19 0C     Mx
    BEQ L_82C9E4                    ; $82C9DF  F0 03        Mx
L_82C9E1:
    JMP L_82D13A                    ; $82C9E1  4C 3A D1     Mx
L_82C9E4:
    LDA $0BF9                       ; $82C9E4  AD F9 0B     Mx
    BNE L_82C9E1                    ; $82C9E7  D0 F8        Mx
    LDA $088A                       ; $82C9E9  AD 8A 08     Mx
    BNE L_82C9E1                    ; $82C9EC  D0 F3        Mx
    LDA $0C19                       ; $82C9EE  AD 19 0C     Mx
    BNE L_82C9F6                    ; $82C9F1  D0 03        Mx
L_82C9F3:
    JMP L_82CA2E                    ; $82C9F3  4C 2E CA     Mx
L_82C9F6:
    LDY #$08                        ; $82C9F6  A0 08        Mx
    LDA ($CC),Y                     ; $82C9F8  B1 CC        Mx
    AND #$0001                      ; $82C9FA  29 01 00     Mx
    BNE L_82C9F3                    ; $82C9FD  D0 F4        Mx
    LDA $0846                       ; $82C9FF  AD 46 08     Mx
    TAX                             ; $82CA02  AA           Mx
    LDA $A7E377,X                   ; $82CA03  BF 77 E3 A7  Mx
    AND #$0007                      ; $82CA07  29 07 00     Mx
    STA $07F0                       ; $82CA0A  8D F0 07     Mx
    LDY #$08                        ; $82CA0D  A0 08        Mx
    LDA ($CC),Y                     ; $82CA0F  B1 CC        Mx
    AND #$0004                      ; $82CA11  29 04 00     Mx
    BNE L_82CA19                    ; $82CA14  D0 03        Mx
    JMP L_82CAEB                    ; $82CA16  4C EB CA     Mx
L_82CA19:
    LDA $1D56                       ; $82CA19  AD 56 1D     Mx
    EOR $1D57                       ; $82CA1C  4D 57 1D     Mx
    EOR $0006                       ; $82CA1F  4D 06 00     Mx
    AND #$0007                      ; $82CA22  29 07 00     Mx
    ASL                             ; $82CA25  0A           Mx
    TAX                             ; $82CA26  AA           Mx
    LDA $A7E5FB,X                   ; $82CA27  BF FB E5 A7  Mx
    JMP L_82CAEE                    ; $82CA2B  4C EE CA     Mx
L_82CA2E:
    LDA $0BDD                       ; $82CA2E  AD DD 0B     Mx
    CMP #$0014                      ; $82CA31  C9 14 00     Mx
    BCS L_82CA39                    ; $82CA34  B0 03        Mx
    JMP L_82CADE                    ; $82CA36  4C DE CA     Mx
L_82CA39:
    LDA $0BD9                       ; $82CA39  AD D9 0B     Mx
    STA $00E2                       ; $82CA3C  8D E2 00     Mx
    LDA $0BE1                       ; $82CA3F  AD E1 0B     Mx
    STA $00E5                       ; $82CA42  8D E5 00     Mx
    LDA $0C19                       ; $82CA45  AD 19 0C     Mx
    BEQ L_82CA4D                    ; $82CA48  F0 03        Mx
    JMP L_82CA95                    ; $82CA4A  4C 95 CA     Mx
L_82CA4D:
    LDX #$00                        ; $82CA4D  A2 00        Mx
    LDA $0BE4                       ; $82CA4F  AD E4 0B     Mx
    BPL L_82CA56                    ; $82CA52  10 02        Mx
    LDX #$FF                        ; $82CA54  A2 FF        Mx
L_82CA56:
    ASL                             ; $82CA56  0A           Mx
    ASL                             ; $82CA57  0A           Mx
    STA $0BAF                       ; $82CA58  8D AF 0B     Mx
    ASL                             ; $82CA5B  0A           Mx
    ASL                             ; $82CA5C  0A           Mx
    CLC                             ; $82CA5D  18           Mx
    ADC $0BAF                       ; $82CA5E  6D AF 0B     Mx
    STA $00D0                       ; $82CA61  8D D0 00     Mx
    STX $00D2                       ; $82CA64  8E D2 00     Mx
    LDA $00D1                       ; $82CA67  AD D1 00     Mx
    CLC                             ; $82CA6A  18           Mx
    ADC $00E2                       ; $82CA6B  6D E2 00     Mx
    STA $00E2                       ; $82CA6E  8D E2 00     Mx
    LDX #$00                        ; $82CA71  A2 00        Mx
    LDA $0BEC                       ; $82CA73  AD EC 0B     Mx
    BPL L_82CA7A                    ; $82CA76  10 02        Mx
    LDX #$FF                        ; $82CA78  A2 FF        Mx
L_82CA7A:
    ASL                             ; $82CA7A  0A           Mx
    ASL                             ; $82CA7B  0A           Mx
    STA $0BAF                       ; $82CA7C  8D AF 0B     Mx
    ASL                             ; $82CA7F  0A           Mx
    ASL                             ; $82CA80  0A           Mx
    CLC                             ; $82CA81  18           Mx
    ADC $0BAF                       ; $82CA82  6D AF 0B     Mx
    STA $00D0                       ; $82CA85  8D D0 00     Mx
    STX $00D2                       ; $82CA88  8E D2 00     Mx
    LDA $00D1                       ; $82CA8B  AD D1 00     Mx
    CLC                             ; $82CA8E  18           Mx
    ADC $00E5                       ; $82CA8F  6D E5 00     Mx
    STA $00E5                       ; $82CA92  8D E5 00     Mx
L_82CA95:
    LDA $0806                       ; $82CA95  AD 06 08     Mx
    STA $00D0                       ; $82CA98  8D D0 00     Mx
    LDA $080E                       ; $82CA9B  AD 0E 08     Mx
    STA $00D3                       ; $82CA9E  8D D3 00     Mx
    JSL $00AEF9                     ; $82CAA1  22 F9 AE 00  Mx
    TAX                             ; $82CAA5  AA           Mx
    LDA $A7E377,X                   ; $82CAA6  BF 77 E3 A7  Mx
    AND #$0007                      ; $82CAAA  29 07 00     Mx
    STA $07F0                       ; $82CAAD  8D F0 07     Mx
    LDA $00D3                       ; $82CAB0  AD D3 00     Mx
    CMP #$0060                      ; $82CAB3  C9 60 00     Mx
    BCC L_82CABB                    ; $82CAB6  90 03        Mx
    JMP L_82CAEB                    ; $82CAB8  4C EB CA     Mx
L_82CABB:
    LDA $0C19                       ; $82CABB  AD 19 0C     Mx
    BNE L_82CACD                    ; $82CABE  D0 0D        Mx
    LDA $0BC1                       ; $82CAC0  AD C1 0B     Mx
    CMP #$0001                      ; $82CAC3  C9 01 00     Mx
    BNE L_82CACD                    ; $82CAC6  D0 05        Mx
    LDA $0C2B                       ; $82CAC8  AD 2B 0C     Mx
    BMI L_82CAD2                    ; $82CACB  30 05        Mx
L_82CACD:
    LDA $00C0                       ; $82CACD  AD C0 00     Mx
    BNE L_82CAD8                    ; $82CAD0  D0 06        Mx
L_82CAD2:
    LDA #$0022                      ; $82CAD2  A9 22 00     Mx
    JMP L_82CAEE                    ; $82CAD5  4C EE CA     Mx
L_82CAD8:
    LDA #$0024                      ; $82CAD8  A9 24 00     Mx
    JMP L_82CAEE                    ; $82CADB  4C EE CA     Mx
L_82CADE:
    LDX $0846                       ; $82CADE  AE 46 08     Mx
    LDA $A7E377,X                   ; $82CAE1  BF 77 E3 A7  Mx
    AND #$0007                      ; $82CAE5  29 07 00     Mx
    STA $07F0                       ; $82CAE8  8D F0 07     Mx
L_82CAEB:
    LDA #$0020                      ; $82CAEB  A9 20 00     Mx
L_82CAEE:
    CMP #$0022                      ; $82CAEE  C9 22 00     Mx
    BNE L_82CB02                    ; $82CAF1  D0 0F        Mx
    LDX $07F0                       ; $82CAF3  AE F0 07     Mx
    CPX #$04                        ; $82CAF6  E0 04        Mx
    BNE L_82CB1A                    ; $82CAF8  D0 20        Mx
    LDX #$03                        ; $82CAFA  A2 03        Mx
    STX $07F0                       ; $82CAFC  8E F0 07     Mx
    JMP L_82CB1A                    ; $82CAFF  4C 1A CB     Mx
L_82CB02:
    CMP #$0024                      ; $82CB02  C9 24 00     Mx
    BNE L_82CB1D                    ; $82CB05  D0 16        Mx
    LDX $07F0                       ; $82CB07  AE F0 07     Mx
    LDA $A7E60B,X                   ; $82CB0A  BF 0B E6 A7  Mx
    AND #$0007                      ; $82CB0E  29 07 00     Mx
    STA $07F0                       ; $82CB11  8D F0 07     Mx
    LDA #$0024                      ; $82CB14  A9 24 00     Mx
    JMP L_82CB1D                    ; $82CB17  4C 1D CB     Mx
L_82CB1A:
    LDA #$0022                      ; $82CB1A  A9 22 00     Mx
L_82CB1D:
    STA $07DC                       ; $82CB1D  8D DC 07     Mx
    LDA #$FFFF                      ; $82CB20  A9 FF FF     Mx
    STA $07E2                       ; $82CB23  8D E2 07     Mx
    STZ $07E4                       ; $82CB26  9C E4 07     Mx
    STZ $082A                       ; $82CB29  9C 2A 08     Mx
    STZ $07E0                       ; $82CB2C  9C E0 07     Mx
    LDA #$FFF8                      ; $82CB2F  A9 F8 FF     Mx
    STA $07E6                       ; $82CB32  8D E6 07     Mx
    LDA $0C19                       ; $82CB35  AD 19 0C     Mx
    BNE L_82CB3D                    ; $82CB38  D0 03        Mx
    JMP L_82CCAC                    ; $82CB3A  4C AC CC     Mx
L_82CB3D:
    LDA #$FF0C                      ; $82CB3D  A9 0C FF     Mx
    STA $00D0                       ; $82CB40  8D D0 00     Mx
    LDA $080E                       ; $82CB43  AD 0E 08     Mx
    CMP #$0374                      ; $82CB46  C9 74 03     Mx
    BCS L_82CB53                    ; $82CB49  B0 08        Mx
    LDA #$036B                      ; $82CB4B  A9 6B 03     Mx
    STA $00D3                       ; $82CB4E  8D D3 00     Mx
    BRA L_82CB59                    ; $82CB51  80 06        Mx
L_82CB53:
    LDA #$037D                      ; $82CB53  A9 7D 03     Mx
    STA $00D3                       ; $82CB56  8D D3 00     Mx
L_82CB59:
    LDY #$08                        ; $82CB59  A0 08        Mx
    LDA ($CC),Y                     ; $82CB5B  B1 CC        Mx
    AND #$0004                      ; $82CB5D  29 04 00     Mx
    BEQ L_82CB80                    ; $82CB60  F0 1E        Mx
    LDA $00D0                       ; $82CB62  AD D0 00     Mx
    STA $00E2                       ; $82CB65  8D E2 00     Mx
    STZ $0B94                       ; $82CB68  9C 94 0B     Mx
    LDA #$0054                      ; $82CB6B  A9 54 00     Mx
    STA $00F6                       ; $82CB6E  8D F6 00     Mx
    STZ $0BAD                       ; $82CB71  9C AD 0B     Mx
    LDA $00D3                       ; $82CB74  AD D3 00     Mx
    STA $00E5                       ; $82CB77  8D E5 00     Mx
    STZ $0B98                       ; $82CB7A  9C 98 0B     Mx
    JMP L_82CE2A                    ; $82CB7D  4C 2A CE     Mx
L_82CB80:
    LDA $07DC                       ; $82CB80  AD DC 07     Mx
    CMP #$0020                      ; $82CB83  C9 20 00     Mx
    BEQ L_82CB8B                    ; $82CB86  F0 03        Mx
    JMP L_82CC25                    ; $82CB88  4C 25 CC     Mx
L_82CB8B:
    LDA $0844                       ; $82CB8B  AD 44 08     Mx
    CMP #$00CC                      ; $82CB8E  C9 CC 00     Mx
    BCC L_82CBC2                    ; $82CB91  90 2F        Mx
    STZ $0812                       ; $82CB93  9C 12 08     Mx
    STZ $081A                       ; $82CB96  9C 1A 08     Mx
    STZ $0810                       ; $82CB99  9C 10 08     Mx
    STZ $0818                       ; $82CB9C  9C 18 08     Mx
    LDA $086E                       ; $82CB9F  AD 6E 08     Mx
    BEQ L_82CBB3                    ; $82CBA2  F0 0F        Mx
    LDA #$9000                      ; $82CBA4  A9 00 90     Mx
    STA $0814                       ; $82CBA7  8D 14 08     Mx
    LDA #$0004                      ; $82CBAA  A9 04 00     Mx
    STA $0816                       ; $82CBAD  8D 16 08     Mx
    JMP L_82D13A                    ; $82CBB0  4C 3A D1     Mx
L_82CBB3:
    LDA #$3000                      ; $82CBB3  A9 00 30     Mx
    STA $0814                       ; $82CBB6  8D 14 08     Mx
    LDA #$0004                      ; $82CBB9  A9 04 00     Mx
    STA $0816                       ; $82CBBC  8D 16 08     Mx
    JMP L_82D13A                    ; $82CBBF  4C 3A D1     Mx
L_82CBC2:
    LDA $0812                       ; $82CBC2  AD 12 08     Mx
    CMP #$8000                      ; $82CBC5  C9 00 80     Mx
    ROR                             ; $82CBC8  6A           Mx
    ROR $0810                       ; $82CBC9  6E 10 08     Mx
    CMP #$8000                      ; $82CBCC  C9 00 80     Mx
    ROR                             ; $82CBCF  6A           Mx
    ROR $0810                       ; $82CBD0  6E 10 08     Mx
    LDX $086E                       ; $82CBD3  AE 6E 08     Mx
    BNE L_82CBDF                    ; $82CBD6  D0 07        Mx
    CMP #$8000                      ; $82CBD8  C9 00 80     Mx
    ROR                             ; $82CBDB  6A           Mx
    ROR $0810                       ; $82CBDC  6E 10 08     Mx
L_82CBDF:
    STA $0812                       ; $82CBDF  8D 12 08     Mx
    LDA $081A                       ; $82CBE2  AD 1A 08     Mx
    CMP #$8000                      ; $82CBE5  C9 00 80     Mx
    ROR                             ; $82CBE8  6A           Mx
    ROR $0818                       ; $82CBE9  6E 18 08     Mx
    CMP #$8000                      ; $82CBEC  C9 00 80     Mx
    ROR                             ; $82CBEF  6A           Mx
    ROR $0818                       ; $82CBF0  6E 18 08     Mx
    LDX $086E                       ; $82CBF3  AE 6E 08     Mx
    BNE L_82CBFF                    ; $82CBF6  D0 07        Mx
    CMP #$8000                      ; $82CBF8  C9 00 80     Mx
    ROR                             ; $82CBFB  6A           Mx
    ROR $0818                       ; $82CBFC  6E 18 08     Mx
L_82CBFF:
    STA $081A                       ; $82CBFF  8D 1A 08     Mx
    LDA $086E                       ; $82CC02  AD 6E 08     Mx
    BEQ L_82CC16                    ; $82CC05  F0 0F        Mx
    LDA #$9000                      ; $82CC07  A9 00 90     Mx
    STA $0814                       ; $82CC0A  8D 14 08     Mx
    LDA #$0004                      ; $82CC0D  A9 04 00     Mx
    STA $0816                       ; $82CC10  8D 16 08     Mx
    JMP L_82D13A                    ; $82CC13  4C 3A D1     Mx
L_82CC16:
    LDA #$3000                      ; $82CC16  A9 00 30     Mx
    STA $0814                       ; $82CC19  8D 14 08     Mx
    LDA #$0004                      ; $82CC1C  A9 04 00     Mx
    STA $0816                       ; $82CC1F  8D 16 08     Mx
    JMP L_82D13A                    ; $82CC22  4C 3A D1     Mx
L_82CC25:
    LDY #$2E                        ; $82CC25  A0 2E        Mx
    LDA ($CC),Y                     ; $82CC27  B1 CC        Mx
    STA $00E2                       ; $82CC29  8D E2 00     Mx
    LDY #$36                        ; $82CC2C  A0 36        Mx
    LDA ($CC),Y                     ; $82CC2E  B1 CC        Mx
    STA $00E5                       ; $82CC30  8D E5 00     Mx
    LDA #$0068                      ; $82CC33  A9 68 00     Mx
    STA $00F6                       ; $82CC36  8D F6 00     Mx
    STA $0BAD                       ; $82CC39  8D AD 0B     Mx
    LDA $00D3                       ; $82CC3C  AD D3 00     Mx
    SEC                             ; $82CC3F  38           Mx
    SBC $00E5                       ; $82CC40  ED E5 00     Mx
    STA $00D3                       ; $82CC43  8D D3 00     Mx
    BPL L_82CC4F                    ; $82CC46  10 07        Mx
    EOR #$FFFF                      ; $82CC48  49 FF FF     Mx
    CLC                             ; $82CC4B  18           Mx
    ADC #$0001                      ; $82CC4C  69 01 00     Mx
L_82CC4F:
    STA $00D9                       ; $82CC4F  8D D9 00     Mx
    LDA $00D0                       ; $82CC52  AD D0 00     Mx
    SEC                             ; $82CC55  38           Mx
    SBC $00E2                       ; $82CC56  ED E2 00     Mx
    STA $00D0                       ; $82CC59  8D D0 00     Mx
    BPL L_82CC65                    ; $82CC5C  10 07        Mx
    EOR #$FFFF                      ; $82CC5E  49 FF FF     Mx
    CLC                             ; $82CC61  18           Mx
    ADC #$0001                      ; $82CC62  69 01 00     Mx
L_82CC65:
    STA $00D6                       ; $82CC65  8D D6 00     Mx
    CMP $00D9                       ; $82CC68  CD D9 00     Mx
    BCS L_82CC8D                    ; $82CC6B  B0 20        Mx
    LDA $00D9                       ; $82CC6D  AD D9 00     Mx
    STA $00D6                       ; $82CC70  8D D6 00     Mx
    JMP L_82CC8D                    ; $82CC73  4C 8D CC     Mx
L_82CC76:
    LDA $00D0                       ; $82CC76  AD D0 00     Mx
    CMP #$8000                      ; $82CC79  C9 00 80     Mx
    ROR                             ; $82CC7C  6A           Mx
    STA $00D0                       ; $82CC7D  8D D0 00     Mx
    LDA $00D3                       ; $82CC80  AD D3 00     Mx
    CMP #$8000                      ; $82CC83  C9 00 80     Mx
    ROR                             ; $82CC86  6A           Mx
    STA $00D3                       ; $82CC87  8D D3 00     Mx
    LSR $00D6                       ; $82CC8A  4E D6 00     Mx
L_82CC8D:
    LDA $00D6                       ; $82CC8D  AD D6 00     Mx
    CMP #$0017                      ; $82CC90  C9 17 00     Mx
    BCS L_82CC76                    ; $82CC93  B0 E1        Mx
    LDA $00E2                       ; $82CC95  AD E2 00     Mx
    CLC                             ; $82CC98  18           Mx
    ADC $00D0                       ; $82CC99  6D D0 00     Mx
    STA $00E2                       ; $82CC9C  8D E2 00     Mx
    LDA $00E5                       ; $82CC9F  AD E5 00     Mx
    CLC                             ; $82CCA2  18           Mx
    ADC $00D3                       ; $82CCA3  6D D3 00     Mx
    STA $00E5                       ; $82CCA6  8D E5 00     Mx
    JMP L_82CDD9                    ; $82CCA9  4C D9 CD     Mx
L_82CCAC:
    LDA $0BD9                       ; $82CCAC  AD D9 0B     Mx
    STA $00E2                       ; $82CCAF  8D E2 00     Mx
    LDA $0BD7                       ; $82CCB2  AD D7 0B     Mx
    STA $0B94                       ; $82CCB5  8D 94 0B     Mx
    LDA $0BE1                       ; $82CCB8  AD E1 0B     Mx
    STA $00E5                       ; $82CCBB  8D E5 00     Mx
    LDA $0BDF                       ; $82CCBE  AD DF 0B     Mx
    STA $0B98                       ; $82CCC1  8D 98 0B     Mx
    LDA $0BDD                       ; $82CCC4  AD DD 0B     Mx
    STA $00F6                       ; $82CCC7  8D F6 00     Mx
    LDA $0BDB                       ; $82CCCA  AD DB 0B     Mx
    STA $0BAD                       ; $82CCCD  8D AD 0B     Mx
    LDA $0BE5                       ; $82CCD0  AD E5 0B     Mx
    STA $00D0                       ; $82CCD3  8D D0 00     Mx
    LDA $0BE3                       ; $82CCD6  AD E3 0B     Mx
    STA $0B7C                       ; $82CCD9  8D 7C 0B     Mx
    LDA $0BED                       ; $82CCDC  AD ED 0B     Mx
    STA $00D3                       ; $82CCDF  8D D3 00     Mx
    LDA $0BEB                       ; $82CCE2  AD EB 0B     Mx
    STA $0B80                       ; $82CCE5  8D 80 0B     Mx
    LDA $0BE9                       ; $82CCE8  AD E9 0B     Mx
    STA $00D6                       ; $82CCEB  8D D6 00     Mx
    LDA $0BE7                       ; $82CCEE  AD E7 0B     Mx
    STA $0B84                       ; $82CCF1  8D 84 0B     Mx
    LDA $0B7C                       ; $82CCF4  AD 7C 0B     Mx
    ASL                             ; $82CCF7  0A           Mx
    STA $00A4                       ; $82CCF8  8D A4 00     Mx
    ROL $00D0                       ; $82CCFB  2E D0 00     Mx
    LDA $00D0                       ; $82CCFE  AD D0 00     Mx
    STA $00A6                       ; $82CD01  8D A6 00     Mx
    LDA $00A4                       ; $82CD04  AD A4 00     Mx
    ASL                             ; $82CD07  0A           Mx
    ROL $00D0                       ; $82CD08  2E D0 00     Mx
    ASL                             ; $82CD0B  0A           Mx
    ROL $00D0                       ; $82CD0C  2E D0 00     Mx
    ASL                             ; $82CD0F  0A           Mx
    ROL $00D0                       ; $82CD10  2E D0 00     Mx
    ASL                             ; $82CD13  0A           Mx
    ROL $00D0                       ; $82CD14  2E D0 00     Mx
    SEC                             ; $82CD17  38           Mx
    SBC $00A4                       ; $82CD18  ED A4 00     Mx
    STA $0B7C                       ; $82CD1B  8D 7C 0B     Mx
    LDA $00D0                       ; $82CD1E  AD D0 00     Mx
    SBC $00A6                       ; $82CD21  ED A6 00     Mx
    STA $00D0                       ; $82CD24  8D D0 00     Mx
    LDA $0B94                       ; $82CD27  AD 94 0B     Mx
    CLC                             ; $82CD2A  18           Mx
    ADC $0B7C                       ; $82CD2B  6D 7C 0B     Mx
    STA $0B94                       ; $82CD2E  8D 94 0B     Mx
    LDA $00E2                       ; $82CD31  AD E2 00     Mx
    ADC $00D0                       ; $82CD34  6D D0 00     Mx
    STA $00E2                       ; $82CD37  8D E2 00     Mx
    LDA $0B80                       ; $82CD3A  AD 80 0B     Mx
    ASL                             ; $82CD3D  0A           Mx
    STA $00A4                       ; $82CD3E  8D A4 00     Mx
    ROL $00D3                       ; $82CD41  2E D3 00     Mx
    LDA $00D3                       ; $82CD44  AD D3 00     Mx
    STA $00A6                       ; $82CD47  8D A6 00     Mx
    LDA $00A4                       ; $82CD4A  AD A4 00     Mx
    ASL                             ; $82CD4D  0A           Mx
    ROL $00D3                       ; $82CD4E  2E D3 00     Mx
    ASL                             ; $82CD51  0A           Mx
    ROL $00D3                       ; $82CD52  2E D3 00     Mx
    ASL                             ; $82CD55  0A           Mx
    ROL $00D3                       ; $82CD56  2E D3 00     Mx
    ASL                             ; $82CD59  0A           Mx
    ROL $00D3                       ; $82CD5A  2E D3 00     Mx
    SEC                             ; $82CD5D  38           Mx
    SBC $00A4                       ; $82CD5E  ED A4 00     Mx
    STA $0B80                       ; $82CD61  8D 80 0B     Mx
    LDA $00D3                       ; $82CD64  AD D3 00     Mx
    SBC $00A6                       ; $82CD67  ED A6 00     Mx
    STA $00D3                       ; $82CD6A  8D D3 00     Mx
    LDA $0B98                       ; $82CD6D  AD 98 0B     Mx
    CLC                             ; $82CD70  18           Mx
    ADC $0B80                       ; $82CD71  6D 80 0B     Mx
    STA $0B98                       ; $82CD74  8D 98 0B     Mx
    LDA $00E5                       ; $82CD77  AD E5 00     Mx
    ADC $00D3                       ; $82CD7A  6D D3 00     Mx
    STA $00E5                       ; $82CD7D  8D E5 00     Mx
    LDA $0B84                       ; $82CD80  AD 84 0B     Mx
    ASL                             ; $82CD83  0A           Mx
    STA $00A4                       ; $82CD84  8D A4 00     Mx
    ROL $00D6                       ; $82CD87  2E D6 00     Mx
    LDA $00D6                       ; $82CD8A  AD D6 00     Mx
    STA $00A6                       ; $82CD8D  8D A6 00     Mx
    LDA $00A4                       ; $82CD90  AD A4 00     Mx
    ASL                             ; $82CD93  0A           Mx
    ROL $00D6                       ; $82CD94  2E D6 00     Mx
    ASL                             ; $82CD97  0A           Mx
    ROL $00D6                       ; $82CD98  2E D6 00     Mx
    ASL                             ; $82CD9B  0A           Mx
    ROL $00D6                       ; $82CD9C  2E D6 00     Mx
    ASL                             ; $82CD9F  0A           Mx
    ROL $00D6                       ; $82CDA0  2E D6 00     Mx
    SEC                             ; $82CDA3  38           Mx
    SBC $00A4                       ; $82CDA4  ED A4 00     Mx
    STA $0B84                       ; $82CDA7  8D 84 0B     Mx
    LDA $00D6                       ; $82CDAA  AD D6 00     Mx
    SBC $00A6                       ; $82CDAD  ED A6 00     Mx
    STA $00D6                       ; $82CDB0  8D D6 00     Mx
    LDA $0BAD                       ; $82CDB3  AD AD 0B     Mx
    SEC                             ; $82CDB6  38           Mx
    SBC $0B84                       ; $82CDB7  ED 84 0B     Mx
    STA $0BAD                       ; $82CDBA  8D AD 0B     Mx
    LDA $00F6                       ; $82CDBD  AD F6 00     Mx
    SBC $00D6                       ; $82CDC0  ED D6 00     Mx
    STA $00F6                       ; $82CDC3  8D F6 00     Mx
    LDA $0BAD                       ; $82CDC6  AD AD 0B     Mx
    SEC                             ; $82CDC9  38           Mx
    SBC #$DF00                      ; $82CDCA  E9 00 DF     Mx
    STA $0BAD                       ; $82CDCD  8D AD 0B     Mx
    LDA $00F6                       ; $82CDD0  AD F6 00     Mx
    SBC #$003E                      ; $82CDD3  E9 3E 00     Mx
    STA $00F6                       ; $82CDD6  8D F6 00     Mx
L_82CDD9:
    LDA $00D0                       ; $82CDD9  AD D0 00     Mx
    BMI L_82CDE8                    ; $82CDDC  30 0A        Mx
    CMP #$00EE                      ; $82CDDE  C9 EE 00     Mx
    BCC L_82CE2A                    ; $82CDE1  90 47        Mx
    LDA #$00F6                      ; $82CDE3  A9 F6 00     Mx
    BRA L_82CDF0                    ; $82CDE6  80 08        Mx
L_82CDE8:
    CMP #$FF1A                      ; $82CDE8  C9 1A FF     Mx
    BCS L_82CE2A                    ; $82CDEB  B0 3D        Mx
    LDA #$FF12                      ; $82CDED  A9 12 FF     Mx
L_82CDF0:
    STA $00BA                       ; $82CDF0  8D BA 00     Mx
    LDA $00D3                       ; $82CDF3  AD D3 00     Mx
    SEC                             ; $82CDF6  38           Mx
    SBC #$0374                      ; $82CDF7  E9 74 03     Mx
    BPL L_82CE03                    ; $82CDFA  10 07        Mx
    EOR #$FFFF                      ; $82CDFC  49 FF FF     Mx
    CLC                             ; $82CDFF  18           Mx
    ADC #$0001                      ; $82CE00  69 01 00     Mx
L_82CE03:
    CMP #$000F                      ; $82CE03  C9 0F 00     Mx
    BCS L_82CE2A                    ; $82CE06  B0 22        Mx
    LDA $00D3                       ; $82CE08  AD D3 00     Mx
    CMP #$0374                      ; $82CE0B  C9 74 03     Mx
    BCC L_82CE1E                    ; $82CE0E  90 0E        Mx
    LDA #$0383                      ; $82CE10  A9 83 03     Mx
    STA $00D3                       ; $82CE13  8D D3 00     Mx
    LDA $00BA                       ; $82CE16  AD BA 00     Mx
    STA $00D0                       ; $82CE19  8D D0 00     Mx
    BRA L_82CE2A                    ; $82CE1C  80 0C        Mx
L_82CE1E:
    LDA #$0365                      ; $82CE1E  A9 65 03     Mx
    STA $00D3                       ; $82CE21  8D D3 00     Mx
    LDA $00BA                       ; $82CE24  AD BA 00     Mx
    STA $00D0                       ; $82CE27  8D D0 00     Mx
L_82CE2A:
    LDA #$001E                      ; $82CE2A  A9 1E 00     Mx
    STA $00DC                       ; $82CE2D  8D DC 00     Mx
    STZ $00C2                       ; $82CE30  9C C2 00     Mx
    STZ $00C4                       ; $82CE33  9C C4 00     Mx
    STZ $00C6                       ; $82CE36  9C C6 00     Mx
    STZ $00C8                       ; $82CE39  9C C8 00     Mx
    LDA $0C25                       ; $82CE3C  AD 25 0C     Mx
    CMP #$07D8                      ; $82CE3F  C9 D8 07     Mx
    BNE L_82CE47                    ; $82CE42  D0 03        Mx
    JMP L_82D008                    ; $82CE44  4C 08 D0     Mx
L_82CE47:
    LDA $00E2                       ; $82CE47  AD E2 00     Mx
    STA $00D9                       ; $82CE4A  8D D9 00     Mx
    LDA $00E5                       ; $82CE4D  AD E5 00     Mx
    STA $00DF                       ; $82CE50  8D DF 00     Mx
    LDA $00D9                       ; $82CE53  AD D9 00     Mx
    SEC                             ; $82CE56  38           Mx
    SBC $0806                       ; $82CE57  ED 06 08     Mx
    STA $00D9                       ; $82CE5A  8D D9 00     Mx
    LDA $00DF                       ; $82CE5D  AD DF 00     Mx
    SEC                             ; $82CE60  38           Mx
    SBC $080E                       ; $82CE61  ED 0E 08     Mx
    STA $00DF                       ; $82CE64  8D DF 00     Mx
    LDA #$001E                      ; $82CE67  A9 1E 00     Mx
    LDX $07DC                       ; $82CE6A  AE DC 07     Mx
    CPX #$22                        ; $82CE6D  E0 22        Mx
    BNE L_82CE75                    ; $82CE6F  D0 04        Mx
    CLC                             ; $82CE71  18           Mx
    ADC #$0014                      ; $82CE72  69 14 00     Mx
L_82CE75:
    LDX $00DA                       ; $82CE75  AE DA 00     Mx
    BMI L_82CE82                    ; $82CE78  30 08        Mx
    CMP $00D9                       ; $82CE7A  CD D9 00     Mx
    BCS L_82CE82                    ; $82CE7D  B0 03        Mx
    STA $00D9                       ; $82CE7F  8D D9 00     Mx
L_82CE82:
    LDX $00E0                       ; $82CE82  AE E0 00     Mx
    BMI L_82CE8F                    ; $82CE85  30 08        Mx
    CMP $00DF                       ; $82CE87  CD DF 00     Mx
    BCS L_82CE8F                    ; $82CE8A  B0 03        Mx
    STA $00DF                       ; $82CE8C  8D DF 00     Mx
L_82CE8F:
    EOR #$FFFF                      ; $82CE8F  49 FF FF     Mx
    CLC                             ; $82CE92  18           Mx
    ADC #$0001                      ; $82CE93  69 01 00     Mx
    LDX $00DA                       ; $82CE96  AE DA 00     Mx
    BPL L_82CEA3                    ; $82CE99  10 08        Mx
    CMP $00D9                       ; $82CE9B  CD D9 00     Mx
    BCC L_82CEA3                    ; $82CE9E  90 03        Mx
    STA $00D9                       ; $82CEA0  8D D9 00     Mx
L_82CEA3:
    LDX $00E0                       ; $82CEA3  AE E0 00     Mx
    BPL L_82CEB0                    ; $82CEA6  10 08        Mx
    CMP $00DF                       ; $82CEA8  CD DF 00     Mx
    BCC L_82CEB0                    ; $82CEAB  90 03        Mx
    STA $00DF                       ; $82CEAD  8D DF 00     Mx
L_82CEB0:
    LDA $00D9                       ; $82CEB0  AD D9 00     Mx
    STA $00E5                       ; $82CEB3  8D E5 00     Mx
    BPL L_82CEC2                    ; $82CEB6  10 0A        Mx
    EOR #$FFFF                      ; $82CEB8  49 FF FF     Mx
    CLC                             ; $82CEBB  18           Mx
    ADC #$0001                      ; $82CEBC  69 01 00     Mx
    STA $00D9                       ; $82CEBF  8D D9 00     Mx
L_82CEC2:
    LDX $00DC                       ; $82CEC2  AE DC 00     Mx
    STX $00EE                       ; $82CEC5  8E EE 00     Mx
    LDA #$0000                      ; $82CEC8  A9 00 00     Mx
    STA $00EA                       ; $82CECB  8D EA 00     Mx
    LDA $00D9                       ; $82CECE  AD D9 00     Mx
    STA $4204                       ; $82CED1  8D 04 42     Mx
    LDX $00EE                       ; $82CED4  AE EE 00     Mx
    STX $4206                       ; $82CED7  8E 06 42     Mx
    NOP                             ; $82CEDA  EA           Mx
    NOP                             ; $82CEDB  EA           Mx
    NOP                             ; $82CEDC  EA           Mx
    NOP                             ; $82CEDD  EA           Mx
    NOP                             ; $82CEDE  EA           Mx
    NOP                             ; $82CEDF  EA           Mx
    NOP                             ; $82CEE0  EA           Mx
    STZ $00F0                       ; $82CEE1  9C F0 00     Mx
    LDA $4214                       ; $82CEE4  AD 14 42     Mx
    STA $00F2                       ; $82CEE7  8D F2 00     Mx
    LDX $4216                       ; $82CEEA  AE 16 42     Mx
    STX $00EC                       ; $82CEED  8E EC 00     Mx
    LDA $00EB                       ; $82CEF0  AD EB 00     Mx
    STA $4204                       ; $82CEF3  8D 04 42     Mx
    LDX $00EE                       ; $82CEF6  AE EE 00     Mx
    STX $4206                       ; $82CEF9  8E 06 42     Mx
    NOP                             ; $82CEFC  EA           Mx
    NOP                             ; $82CEFD  EA           Mx
    NOP                             ; $82CEFE  EA           Mx
    NOP                             ; $82CEFF  EA           Mx
    NOP                             ; $82CF00  EA           Mx
    NOP                             ; $82CF01  EA           Mx
    NOP                             ; $82CF02  EA           Mx
    STZ $00F0                       ; $82CF03  9C F0 00     Mx
    LDA $4214                       ; $82CF06  AD 14 42     Mx
    ORA $00F1                       ; $82CF09  0D F1 00     Mx
    STA $00F1                       ; $82CF0C  8D F1 00     Mx
    LDX $4216                       ; $82CF0F  AE 16 42     Mx
    STX $00EB                       ; $82CF12  8E EB 00     Mx
    LDA $00EA                       ; $82CF15  AD EA 00     Mx
    STA $4204                       ; $82CF18  8D 04 42     Mx
    LDX $00EE                       ; $82CF1B  AE EE 00     Mx
    STX $4206                       ; $82CF1E  8E 06 42     Mx
    NOP                             ; $82CF21  EA           Mx
    NOP                             ; $82CF22  EA           Mx
    NOP                             ; $82CF23  EA           Mx
    NOP                             ; $82CF24  EA           Mx
    NOP                             ; $82CF25  EA           Mx
    NOP                             ; $82CF26  EA           Mx
    NOP                             ; $82CF27  EA           Mx
    NOP                             ; $82CF28  EA           Mx
    LDA $4214                       ; $82CF29  AD 14 42     Mx
    ORA $00F0                       ; $82CF2C  0D F0 00     Mx
    STA $00F0                       ; $82CF2F  8D F0 00     Mx
    LDA $00F0                       ; $82CF32  AD F0 00     Mx
    STA $00C2                       ; $82CF35  8D C2 00     Mx
    LDA $00F2                       ; $82CF38  AD F2 00     Mx
    STA $00C4                       ; $82CF3B  8D C4 00     Mx
    LDA $00E5                       ; $82CF3E  AD E5 00     Mx
    BPL L_82CF5C                    ; $82CF41  10 19        Mx
    LDA $00C2                       ; $82CF43  AD C2 00     Mx
    EOR #$FFFF                      ; $82CF46  49 FF FF     Mx
    CLC                             ; $82CF49  18           Mx
    ADC #$0001                      ; $82CF4A  69 01 00     Mx
    STA $00C2                       ; $82CF4D  8D C2 00     Mx
    LDA $00C4                       ; $82CF50  AD C4 00     Mx
    EOR #$FFFF                      ; $82CF53  49 FF FF     Mx
    ADC #$0000                      ; $82CF56  69 00 00     Mx
    STA $00C4                       ; $82CF59  8D C4 00     Mx
L_82CF5C:
    LDA $00DF                       ; $82CF5C  AD DF 00     Mx
    STA $00E5                       ; $82CF5F  8D E5 00     Mx
    BPL L_82CF6E                    ; $82CF62  10 0A        Mx
    EOR #$FFFF                      ; $82CF64  49 FF FF     Mx
    CLC                             ; $82CF67  18           Mx
    ADC #$0001                      ; $82CF68  69 01 00     Mx
    STA $00DF                       ; $82CF6B  8D DF 00     Mx
L_82CF6E:
    LDX $00DC                       ; $82CF6E  AE DC 00     Mx
    STX $00EE                       ; $82CF71  8E EE 00     Mx
    LDA #$0000                      ; $82CF74  A9 00 00     Mx
    STA $00EA                       ; $82CF77  8D EA 00     Mx
    LDA $00DF                       ; $82CF7A  AD DF 00     Mx
    STA $4204                       ; $82CF7D  8D 04 42     Mx
    LDX $00EE                       ; $82CF80  AE EE 00     Mx
    STX $4206                       ; $82CF83  8E 06 42     Mx
    NOP                             ; $82CF86  EA           Mx
    NOP                             ; $82CF87  EA           Mx
    NOP                             ; $82CF88  EA           Mx
    NOP                             ; $82CF89  EA           Mx
    NOP                             ; $82CF8A  EA           Mx
    NOP                             ; $82CF8B  EA           Mx
    NOP                             ; $82CF8C  EA           Mx
    STZ $00F0                       ; $82CF8D  9C F0 00     Mx
    LDA $4214                       ; $82CF90  AD 14 42     Mx
    STA $00F2                       ; $82CF93  8D F2 00     Mx
    LDX $4216                       ; $82CF96  AE 16 42     Mx
    STX $00EC                       ; $82CF99  8E EC 00     Mx
    LDA $00EB                       ; $82CF9C  AD EB 00     Mx
    STA $4204                       ; $82CF9F  8D 04 42     Mx
    LDX $00EE                       ; $82CFA2  AE EE 00     Mx
    STX $4206                       ; $82CFA5  8E 06 42     Mx
    NOP                             ; $82CFA8  EA           Mx
    NOP                             ; $82CFA9  EA           Mx
    NOP                             ; $82CFAA  EA           Mx
    NOP                             ; $82CFAB  EA           Mx
    NOP                             ; $82CFAC  EA           Mx
    NOP                             ; $82CFAD  EA           Mx
    NOP                             ; $82CFAE  EA           Mx
    STZ $00F0                       ; $82CFAF  9C F0 00     Mx
    LDA $4214                       ; $82CFB2  AD 14 42     Mx
    ORA $00F1                       ; $82CFB5  0D F1 00     Mx
    STA $00F1                       ; $82CFB8  8D F1 00     Mx
    LDX $4216                       ; $82CFBB  AE 16 42     Mx
    STX $00EB                       ; $82CFBE  8E EB 00     Mx
    LDA $00EA                       ; $82CFC1  AD EA 00     Mx
    STA $4204                       ; $82CFC4  8D 04 42     Mx
    LDX $00EE                       ; $82CFC7  AE EE 00     Mx
    STX $4206                       ; $82CFCA  8E 06 42     Mx
    NOP                             ; $82CFCD  EA           Mx
    NOP                             ; $82CFCE  EA           Mx
    NOP                             ; $82CFCF  EA           Mx
    NOP                             ; $82CFD0  EA           Mx
    NOP                             ; $82CFD1  EA           Mx
    NOP                             ; $82CFD2  EA           Mx
    NOP                             ; $82CFD3  EA           Mx
    NOP                             ; $82CFD4  EA           Mx
    LDA $4214                       ; $82CFD5  AD 14 42     Mx
    ORA $00F0                       ; $82CFD8  0D F0 00     Mx
    STA $00F0                       ; $82CFDB  8D F0 00     Mx
    LDA $00F0                       ; $82CFDE  AD F0 00     Mx
    STA $00C6                       ; $82CFE1  8D C6 00     Mx
    LDA $00F2                       ; $82CFE4  AD F2 00     Mx
    STA $00C8                       ; $82CFE7  8D C8 00     Mx
    LDA $00E5                       ; $82CFEA  AD E5 00     Mx
    BPL L_82D008                    ; $82CFED  10 19        Mx
    LDA $00C6                       ; $82CFEF  AD C6 00     Mx
    EOR #$FFFF                      ; $82CFF2  49 FF FF     Mx
    CLC                             ; $82CFF5  18           Mx
    ADC #$0001                      ; $82CFF6  69 01 00     Mx
    STA $00C6                       ; $82CFF9  8D C6 00     Mx
    LDA $00C8                       ; $82CFFC  AD C8 00     Mx
    EOR #$FFFF                      ; $82CFFF  49 FF FF     Mx
    ADC #$0000                      ; $82D002  69 00 00     Mx
    STA $00C8                       ; $82D005  8D C8 00     Mx
L_82D008:
    LDA $00C2                       ; $82D008  AD C2 00     Mx
    STA $0810                       ; $82D00B  8D 10 08     Mx
    LDA $00C4                       ; $82D00E  AD C4 00     Mx
    STA $0812                       ; $82D011  8D 12 08     Mx
    LDA $00C6                       ; $82D014  AD C6 00     Mx
    STA $0818                       ; $82D017  8D 18 08     Mx
    LDA $00C8                       ; $82D01A  AD C8 00     Mx
    STA $081A                       ; $82D01D  8D 1A 08     Mx
    LDA #$0080                      ; $82D020  A9 80 00     Mx
    STA $00D3                       ; $82D023  8D D3 00     Mx
    SEP #$20                        ; $82D026  E2 20        Mx
    LDA $00DC                       ; $82D028  AD DC 00     mx
    STA $4202                       ; $82D02B  8D 02 42     mx
    LDA $00D3                       ; $82D02E  AD D3 00     mx
    STA $4203                       ; $82D031  8D 03 42     mx
    NOP                             ; $82D034  EA           mx
    NOP                             ; $82D035  EA           mx
    NOP                             ; $82D036  EA           mx
    REP #$20                        ; $82D037  C2 20        mx
    LDA $4216                       ; $82D039  AD 16 42     Mx
    STA $00D3                       ; $82D03C  8D D3 00     Mx
    STA $00A8                       ; $82D03F  8D A8 00     Mx
    LDA #$0012                      ; $82D042  A9 12 00     Mx
    STA $00D3                       ; $82D045  8D D3 00     Mx
    SEP #$20                        ; $82D048  E2 20        Mx
    LDA $00DC                       ; $82D04A  AD DC 00     mx
    STA $4202                       ; $82D04D  8D 02 42     mx
    LDA $00D3                       ; $82D050  AD D3 00     mx
    STA $4203                       ; $82D053  8D 03 42     mx
    NOP                             ; $82D056  EA           mx
    NOP                             ; $82D057  EA           mx
    NOP                             ; $82D058  EA           mx
    REP #$20                        ; $82D059  C2 20        mx
    LDA $4216                       ; $82D05B  AD 16 42     Mx
    STA $00D3                       ; $82D05E  8D D3 00     Mx
    STZ $0B82                       ; $82D061  9C 82 0B     Mx
    STZ $0B80                       ; $82D064  9C 80 0B     Mx
    STA $0B81                       ; $82D067  8D 81 0B     Mx
    LDA $0B80                       ; $82D06A  AD 80 0B     Mx
    CLC                             ; $82D06D  18           Mx
    ADC $00A8                       ; $82D06E  6D A8 00     Mx
    STA $0B80                       ; $82D071  8D 80 0B     Mx
    LDA $0B82                       ; $82D074  AD 82 0B     Mx
    ADC #$0000                      ; $82D077  69 00 00     Mx
    STA $0B82                       ; $82D07A  8D 82 0B     Mx
    LDA $00F6                       ; $82D07D  AD F6 00     Mx
    SBC #$002E                      ; $82D080  E9 2E 00     Mx
    STA $00F6                       ; $82D083  8D F6 00     Mx
    LDA $0808                       ; $82D086  AD 08 08     Mx
    SEC                             ; $82D089  38           Mx
    SBC $0BAD                       ; $82D08A  ED AD 0B     Mx
    STA $00C2                       ; $82D08D  8D C2 00     Mx
    LDA $080A                       ; $82D090  AD 0A 08     Mx
    SBC $00F6                       ; $82D093  ED F6 00     Mx
    STA $00C4                       ; $82D096  8D C4 00     Mx
    STA $00E5                       ; $82D099  8D E5 00     Mx
    BPL L_82D0B7                    ; $82D09C  10 19        Mx
    LDA $00C2                       ; $82D09E  AD C2 00     Mx
    EOR #$FFFF                      ; $82D0A1  49 FF FF     Mx
    CLC                             ; $82D0A4  18           Mx
    ADC #$0001                      ; $82D0A5  69 01 00     Mx
    STA $00C2                       ; $82D0A8  8D C2 00     Mx
    LDA $00C4                       ; $82D0AB  AD C4 00     Mx
    EOR #$FFFF                      ; $82D0AE  49 FF FF     Mx
    ADC #$0000                      ; $82D0B1  69 00 00     Mx
    STA $00C4                       ; $82D0B4  8D C4 00     Mx
L_82D0B7:
    LDA $00C3                       ; $82D0B7  AD C3 00     Mx
    STA $4204                       ; $82D0BA  8D 04 42     Mx
    LDX $00DC                       ; $82D0BD  AE DC 00     Mx
    STX $4206                       ; $82D0C0  8E 06 42     Mx
    NOP                             ; $82D0C3  EA           Mx
    NOP                             ; $82D0C4  EA           Mx
    NOP                             ; $82D0C5  EA           Mx
    NOP                             ; $82D0C6  EA           Mx
    STZ $00EA                       ; $82D0C7  9C EA 00     Mx
    STZ $00EC                       ; $82D0CA  9C EC 00     Mx
    LDA $00E5                       ; $82D0CD  AD E5 00     Mx
    BPL L_82D0DF                    ; $82D0D0  10 0D        Mx
    LDA $4214                       ; $82D0D2  AD 14 42     Mx
    EOR #$FFFF                      ; $82D0D5  49 FF FF     Mx
    CLC                             ; $82D0D8  18           Mx
    ADC #$0001                      ; $82D0D9  69 01 00     Mx
    JMP L_82D0E2                    ; $82D0DC  4C E2 D0     Mx
L_82D0DF:
    LDA $4214                       ; $82D0DF  AD 14 42     Mx
L_82D0E2:
    STA $00EB                       ; $82D0E2  8D EB 00     Mx
    LDA $0B80                       ; $82D0E5  AD 80 0B     Mx
    CLC                             ; $82D0E8  18           Mx
    ADC $00EA                       ; $82D0E9  6D EA 00     Mx
    STA $0B80                       ; $82D0EC  8D 80 0B     Mx
    LDA $0B82                       ; $82D0EF  AD 82 0B     Mx
    ADC $00EC                       ; $82D0F2  6D EC 00     Mx
    STA $0B82                       ; $82D0F5  8D 82 0B     Mx
    LDA $0B80                       ; $82D0F8  AD 80 0B     Mx
    SEC                             ; $82D0FB  38           Mx
    SBC #$C000                      ; $82D0FC  E9 00 C0     Mx
    LDA $0B82                       ; $82D0FF  AD 82 0B     Mx
    SBC #$0003                      ; $82D102  E9 03 00     Mx
    BPL L_82D113                    ; $82D105  10 0C        Mx
    LDA #$0003                      ; $82D107  A9 03 00     Mx
    STA $0B82                       ; $82D10A  8D 82 0B     Mx
    LDA #$C000                      ; $82D10D  A9 00 C0     Mx
    STA $0B80                       ; $82D110  8D 80 0B     Mx
L_82D113:
    LDA $0B80                       ; $82D113  AD 80 0B     Mx
    SEC                             ; $82D116  38           Mx
    SBC #$A200                      ; $82D117  E9 00 A2     Mx
    LDA $0B82                       ; $82D11A  AD 82 0B     Mx
    SBC #$0004                      ; $82D11D  E9 04 00     Mx
    BMI L_82D12E                    ; $82D120  30 0C        Mx
    LDA #$0004                      ; $82D122  A9 04 00     Mx
    STA $0B82                       ; $82D125  8D 82 0B     Mx
    LDA #$A200                      ; $82D128  A9 00 A2     Mx
    STA $0B80                       ; $82D12B  8D 80 0B     Mx
L_82D12E:
    LDA $0B80                       ; $82D12E  AD 80 0B     Mx
    STA $0814                       ; $82D131  8D 14 08     Mx
    LDA $0B82                       ; $82D134  AD 82 0B     Mx
    STA $0816                       ; $82D137  8D 16 08     Mx
L_82D13A:
    LDA $07DC                       ; $82D13A  AD DC 07     Mx
    CMP #$0024                      ; $82D13D  C9 24 00     Mx
    BNE L_82D178                    ; $82D140  D0 36        Mx
    LDA $0816                       ; $82D142  AD 16 08     Mx
    STA $081C                       ; $82D145  8D 1C 08     Mx
    LDA $0814                       ; $82D148  AD 14 08     Mx
    STA $081E                       ; $82D14B  8D 1E 08     Mx
    LDA $0812                       ; $82D14E  AD 12 08     Mx
    STA $0820                       ; $82D151  8D 20 08     Mx
    LDA $0810                       ; $82D154  AD 10 08     Mx
    STA $0822                       ; $82D157  8D 22 08     Mx
    LDA $081A                       ; $82D15A  AD 1A 08     Mx
    STA $0824                       ; $82D15D  8D 24 08     Mx
    LDA $0818                       ; $82D160  AD 18 08     Mx
    STA $0826                       ; $82D163  8D 26 08     Mx
    STZ $0816                       ; $82D166  9C 16 08     Mx
    STZ $0814                       ; $82D169  9C 14 08     Mx
    STZ $0812                       ; $82D16C  9C 12 08     Mx
    STZ $0810                       ; $82D16F  9C 10 08     Mx
    STZ $081A                       ; $82D172  9C 1A 08     Mx
    STZ $0818                       ; $82D175  9C 18 08     Mx
L_82D178:
    STZ $0868                       ; $82D178  9C 68 08     Mx
    LDA #$FFFF                      ; $82D17B  A9 FF FF     Mx
    STA $0856                       ; $82D17E  8D 56 08     Mx
    RTS                             ; $82D181  60           Mx
L_82D182:
    LDX $07D9                       ; $82D182  AE D9 07     Mx
    BEQ L_82D18F                    ; $82D185  F0 08        Mx
    LDA $07DC                       ; $82D187  AD DC 07     Mx
    CMP #$0004                      ; $82D18A  C9 04 00     Mx
    BEQ L_82D201                    ; $82D18D  F0 72        Mx
L_82D18F:
    LDA $080A                       ; $82D18F  AD 0A 08     Mx
    BNE L_82D201                    ; $82D192  D0 6D        Mx
    LDA $07EA                       ; $82D194  AD EA 07     Mx
    BNE L_82D201                    ; $82D197  D0 68        Mx
    LDA $09AC                       ; $82D199  AD AC 09     Mx
    CMP #$0030                      ; $82D19C  C9 30 00     Mx
    BEQ L_82D1B6                    ; $82D19F  F0 15        Mx
    LDA $0850                       ; $82D1A1  AD 50 08     Mx
    CMP #$0030                      ; $82D1A4  C9 30 00     Mx
    BCS L_82D1B6                    ; $82D1A7  B0 0D        Mx
    CMP #$0018                      ; $82D1A9  C9 18 00     Mx
    BCC L_82D1D6                    ; $82D1AC  90 28        Mx
    LDA $09AC                       ; $82D1AE  AD AC 09     Mx
    CMP #$002C                      ; $82D1B1  C9 2C 00     Mx
    BEQ L_82D1D6                    ; $82D1B4  F0 20        Mx
L_82D1B6:
    LDA $08C4                       ; $82D1B6  AD C4 08     Mx
    CMP #$0030                      ; $82D1B9  C9 30 00     Mx
    BEQ L_82D1D3                    ; $82D1BC  F0 15        Mx
    LDA $0852                       ; $82D1BE  AD 52 08     Mx
    CMP #$0030                      ; $82D1C1  C9 30 00     Mx
    BCS L_82D1D3                    ; $82D1C4  B0 0D        Mx
    CMP #$0018                      ; $82D1C6  C9 18 00     Mx
    BCC L_82D1D6                    ; $82D1C9  90 0B        Mx
    LDA $08C4                       ; $82D1CB  AD C4 08     Mx
    CMP #$002C                      ; $82D1CE  C9 2C 00     Mx
    BEQ L_82D1D6                    ; $82D1D1  F0 03        Mx
L_82D1D3:
    JMP L_82D201                    ; $82D1D3  4C 01 D2     Mx
L_82D1D6:
    LDA $0CCB                       ; $82D1D6  AD CB 0C     Mx
    CMP #$0003                      ; $82D1D9  C9 03 00     Mx
    BCC L_82D201                    ; $82D1DC  90 23        Mx
    LDA $0CCB                       ; $82D1DE  AD CB 0C     Mx
    CMP #$00A9                      ; $82D1E1  C9 A9 00     Mx
    BCS L_82D201                    ; $82D1E4  B0 1B        Mx
    LDA #$002E                      ; $82D1E6  A9 2E 00     Mx
    STA $07DC                       ; $82D1E9  8D DC 07     Mx
    LDA #$FFFF                      ; $82D1EC  A9 FF FF     Mx
    STA $07E2                       ; $82D1EF  8D E2 07     Mx
    STZ $07E4                       ; $82D1F2  9C E4 07     Mx
    STZ $082A                       ; $82D1F5  9C 2A 08     Mx
    STZ $07E0                       ; $82D1F8  9C E0 07     Mx
    LDA #$FFF8                      ; $82D1FB  A9 F8 FF     Mx
    STA $07E6                       ; $82D1FE  8D E6 07     Mx
L_82D201:
    RTS                             ; $82D201  60           Mx
L_82D202:
    LDA $1683                       ; $82D202  AD 83 16     Mx
    CMP #$001B                      ; $82D205  C9 1B 00     Mx
    BNE L_82D20D                    ; $82D208  D0 03        Mx
    JMP L_82D280                    ; $82D20A  4C 80 D2     Mx
L_82D20D:
    LDX $07D8                       ; $82D20D  AE D8 07     Mx
    CPX $0C19                       ; $82D210  EC 19 0C     Mx
    BEQ L_82D281                    ; $82D213  F0 6C        Mx
    LDA $086E                       ; $82D215  AD 6E 08     Mx
    BEQ L_82D242                    ; $82D218  F0 28        Mx
    LDA $0872                       ; $82D21A  AD 72 08     Mx
    CMP #$000A                      ; $82D21D  C9 0A 00     Mx
    BCC L_82D280                    ; $82D220  90 5E        Mx
    LDX $085C                       ; $82D222  AE 5C 08     Mx
    INX                             ; $82D225  E8           Mx
    BEQ L_82D280                    ; $82D226  F0 58        Mx
    LDX $07D8                       ; $82D228  AE D8 07     Mx
    CPX $0A96                       ; $82D22B  EC 96 0A     Mx
    BEQ L_82D23D                    ; $82D22E  F0 0D        Mx
    SEC                             ; $82D230  38           Mx
    SBC #$0009                      ; $82D231  E9 09 00     Mx
    STA $0872                       ; $82D234  8D 72 08     Mx
    LDA #$000A                      ; $82D237  A9 0A 00     Mx
    STA $087A                       ; $82D23A  8D 7A 08     Mx
L_82D23D:
    LDA #$0036                      ; $82D23D  A9 36 00     Mx
    BNE L_82D256                    ; $82D240  D0 14        Mx
L_82D242:
    LDA $0866                       ; $82D242  AD 66 08     Mx
    BNE L_82D280                    ; $82D245  D0 39        Mx
    LDA $0B6C                       ; $82D247  AD 6C 0B     Mx
    BNE L_82D280                    ; $82D24A  D0 34        Mx
    LDA #$0008                      ; $82D24C  A9 08 00     Mx
    JSL L_BDFDF3                    ; $82D24F  22 F3 FD BD  Mx
    LDA #$002C                      ; $82D253  A9 2C 00     Mx
L_82D256:
    STZ $0812                       ; $82D256  9C 12 08     Mx
    STZ $0810                       ; $82D259  9C 10 08     Mx
    STZ $081A                       ; $82D25C  9C 1A 08     Mx
    STZ $0818                       ; $82D25F  9C 18 08     Mx
    STZ $0816                       ; $82D262  9C 16 08     Mx
    STZ $0814                       ; $82D265  9C 14 08     Mx
    STA $07DC                       ; $82D268  8D DC 07     Mx
    LDA #$FFFF                      ; $82D26B  A9 FF FF     Mx
    STA $07E2                       ; $82D26E  8D E2 07     Mx
    STZ $07E4                       ; $82D271  9C E4 07     Mx
    STZ $082A                       ; $82D274  9C 2A 08     Mx
    STZ $07E0                       ; $82D277  9C E0 07     Mx
    LDA #$FFF8                      ; $82D27A  A9 F8 FF     Mx
    STA $07E6                       ; $82D27D  8D E6 07     Mx
L_82D280:
    RTS                             ; $82D280  60           Mx
L_82D281:
    LDX $085C                       ; $82D281  AE 5C 08     Mx
    INX                             ; $82D284  E8           Mx
    BEQ L_82D280                    ; $82D285  F0 F9        Mx
    STZ $0812                       ; $82D287  9C 12 08     Mx
    STZ $0810                       ; $82D28A  9C 10 08     Mx
    STZ $081A                       ; $82D28D  9C 1A 08     Mx
    STZ $0818                       ; $82D290  9C 18 08     Mx
    STZ $0816                       ; $82D293  9C 16 08     Mx
    STZ $0814                       ; $82D296  9C 14 08     Mx
    STZ $082A                       ; $82D299  9C 2A 08     Mx
    STZ $0C1B                       ; $82D29C  9C 1B 0C     Mx
    STZ $0C29                       ; $82D29F  9C 29 0C     Mx
    STZ $0C27                       ; $82D2A2  9C 27 0C     Mx
    LDA #$06F0                      ; $82D2A5  A9 F0 06     Mx
    STA $0C25                       ; $82D2A8  8D 25 0C     Mx
    LDA $0C19                       ; $82D2AB  AD 19 0C     Mx
    STA $0C1F                       ; $82D2AE  8D 1F 0C     Mx
    STZ $0868                       ; $82D2B1  9C 68 08     Mx
    LDA $00C0                       ; $82D2B4  AD C0 00     Mx
    STA $0C39                       ; $82D2B7  8D 39 0C     Mx
    LDA $07F0                       ; $82D2BA  AD F0 07     Mx
    STA $00A4                       ; $82D2BD  8D A4 00     Mx
    LDA $0848                       ; $82D2C0  AD 48 08     Mx
    TAX                             ; $82D2C3  AA           Mx
    LDA $A7E377,X                   ; $82D2C4  BF 77 E3 A7  Mx
    AND #$0007                      ; $82D2C8  29 07 00     Mx
    STA $07F0                       ; $82D2CB  8D F0 07     Mx
    TXA                             ; $82D2CE  8A           Mx
    CLC                             ; $82D2CF  18           Mx
    ADC #$0040                      ; $82D2D0  69 40 00     Mx
    AND #$007F                      ; $82D2D3  29 7F 00     Mx
    TAX                             ; $82D2D6  AA           Mx
    LDA $A7E377,X                   ; $82D2D7  BF 77 E3 A7  Mx
    AND #$0007                      ; $82D2DB  29 07 00     Mx
    STA $0708                       ; $82D2DE  8D 08 07     Mx
    LDA $07EA                       ; $82D2E1  AD EA 07     Mx
    BNE L_82D2F6                    ; $82D2E4  D0 10        Mx
    LDA $1D56                       ; $82D2E6  AD 56 1D     Mx
    AND #$0003                      ; $82D2E9  29 03 00     Mx
    BNE L_82D2F6                    ; $82D2EC  D0 08        Mx
    LDA $084E                       ; $82D2EE  AD 4E 08     Mx
    CMP #$0038                      ; $82D2F1  C9 38 00     Mx
    BCS L_82D2F9                    ; $82D2F4  B0 03        Mx
L_82D2F6:
    JMP L_82D39A                    ; $82D2F6  4C 9A D3     Mx
L_82D2F9:
    CMP #$0100                      ; $82D2F9  C9 00 01     Mx
    BPL L_82D2F6                    ; $82D2FC  10 F8        Mx
    LDA $00A4                       ; $82D2FE  AD A4 00     Mx
    CMP #$0003                      ; $82D301  C9 03 00     Mx
    BCC L_82D318                    ; $82D304  90 12        Mx
    CMP #$0006                      ; $82D306  C9 06 00     Mx
    BCC L_82D349                    ; $82D309  90 3E        Mx
    LDA $07F0                       ; $82D30B  AD F0 07     Mx
    BEQ L_82D331                    ; $82D30E  F0 21        Mx
    CMP #$0001                      ; $82D310  C9 01 00     Mx
    BEQ L_82D331                    ; $82D313  F0 1C        Mx
    JMP L_82D349                    ; $82D315  4C 49 D3     Mx
L_82D318:
    LDA $07F0                       ; $82D318  AD F0 07     Mx
    CMP #$0002                      ; $82D31B  C9 02 00     Mx
    BEQ L_82D33D                    ; $82D31E  F0 1D        Mx
    CMP #$0007                      ; $82D320  C9 07 00     Mx
    BNE L_82D349                    ; $82D323  D0 24        Mx
    LDA #$0002                      ; $82D325  A9 02 00     Mx
    STA $07F0                       ; $82D328  8D F0 07     Mx
    LDA #$003E                      ; $82D32B  A9 3E 00     Mx
    JMP L_82D4C5                    ; $82D32E  4C C5 D4     Mx
L_82D331:
    LDA #$0006                      ; $82D331  A9 06 00     Mx
    STA $07F0                       ; $82D334  8D F0 07     Mx
    LDA #$003E                      ; $82D337  A9 3E 00     Mx
    JMP L_82D4C5                    ; $82D33A  4C C5 D4     Mx
L_82D33D:
    LDA #$0001                      ; $82D33D  A9 01 00     Mx
    STA $07F0                       ; $82D340  8D F0 07     Mx
    LDA #$003E                      ; $82D343  A9 3E 00     Mx
    JMP L_82D4C5                    ; $82D346  4C C5 D4     Mx
L_82D349:
    LDA $00A4                       ; $82D349  AD A4 00     Mx
    CMP #$0002                      ; $82D34C  C9 02 00     Mx
    BCC L_82D39A                    ; $82D34F  90 49        Mx
    CMP #$0005                      ; $82D351  C9 05 00     Mx
    BCC L_82D366                    ; $82D354  90 10        Mx
    CMP #$0007                      ; $82D356  C9 07 00     Mx
    BEQ L_82D39A                    ; $82D359  F0 3F        Mx
    LDA $07F0                       ; $82D35B  AD F0 07     Mx
    CMP #$0006                      ; $82D35E  C9 06 00     Mx
    BEQ L_82D37F                    ; $82D361  F0 1C        Mx
    JMP L_82D39A                    ; $82D363  4C 9A D3     Mx
L_82D366:
    LDA $07F0                       ; $82D366  AD F0 07     Mx
    CMP #$0005                      ; $82D369  C9 05 00     Mx
    BEQ L_82D38E                    ; $82D36C  F0 20        Mx
    CMP #$0002                      ; $82D36E  C9 02 00     Mx
    BNE L_82D39A                    ; $82D371  D0 27        Mx
    LDA #$0003                      ; $82D373  A9 03 00     Mx
    STA $07F0                       ; $82D376  8D F0 07     Mx
    LDA #$0040                      ; $82D379  A9 40 00     Mx
    JMP L_82D4C5                    ; $82D37C  4C C5 D4     Mx
L_82D37F:
    LDA #$0005                      ; $82D37F  A9 05 00     Mx
    STA $07F0                       ; $82D382  8D F0 07     Mx
    LDA #$0040                      ; $82D385  A9 40 00     Mx
    JMP L_82D4C5                    ; $82D388  4C C5 D4     Mx
L_82D38B:
    JMP L_82D4C5                    ; $82D38B  4C C5 D4     Mx
L_82D38E:
    LDA #$0002                      ; $82D38E  A9 02 00     Mx
    STA $07F0                       ; $82D391  8D F0 07     Mx
    LDA #$0040                      ; $82D394  A9 40 00     Mx
    JMP L_82D4C5                    ; $82D397  4C C5 D4     Mx
L_82D39A:
    PHP                             ; $82D39A  08           Mx
    REP #$30                        ; $82D39B  C2 30        Mx
    LDA $4212                       ; $82D39D  AD 12 42     MX
    SEP #$20                        ; $82D3A0  E2 20        MX
    CLC                             ; $82D3A2  18           mX
    ADC $1D57                       ; $82D3A3  6D 57 1D     mX
    STA $1D57                       ; $82D3A6  8D 57 1D     mX
    REP #$20                        ; $82D3A9  C2 20        mX
    LDA $4212                       ; $82D3AB  AD 12 42     MX
    TAX                             ; $82D3AE  AA           MX
    SEP #$20                        ; $82D3AF  E2 20        MX
    EOR $1D58                       ; $82D3B1  4D 58 1D     mX
    STA $1D58                       ; $82D3B4  8D 58 1D     mX
    TXA                             ; $82D3B7  8A           mX
    ADC $1D59                       ; $82D3B8  6D 59 1D     mX
    REP #$20                        ; $82D3BB  C2 20        mX
    LDA $1D56                       ; $82D3BD  AD 56 1D     MX
    INC                             ; $82D3C0  1A           MX
    ROR                             ; $82D3C1  6A           MX
    LSR $1D58                       ; $82D3C2  4E 58 1D     MX
    EOR #$2B41                      ; $82D3C5  49 41 2B     MX
    SBC #$000F                      ; $82D3C8  E9 0F 00     MX
    STA $1D56                       ; $82D3CB  8D 56 1D     MX
    LDA $1D58                       ; $82D3CE  AD 58 1D     MX
    EOR #$1D87                      ; $82D3D1  49 87 1D     MX
    STA $1D58                       ; $82D3D4  8D 58 1D     MX
    LDA $1D52                       ; $82D3D7  AD 52 1D     MX
    EOR $1D56                       ; $82D3DA  4D 56 1D     MX
    STA $0002                       ; $82D3DD  8D 02 00     MX
    INC                             ; $82D3E0  1A           MX
    STA $1D52                       ; $82D3E1  8D 52 1D     MX
    LDA $1D54                       ; $82D3E4  AD 54 1D     MX
    EOR $1D58                       ; $82D3E7  4D 58 1D     MX
    ADC #$0000                      ; $82D3EA  69 00 00     MX
    STA $1D52                       ; $82D3ED  8D 52 1D     MX
    STA $0004                       ; $82D3F0  8D 04 00     MX
    PLP                             ; $82D3F3  28           MX
    LDA $0002                       ; $82D3F4  AD 02 00     Mx
    CMP #$5999                      ; $82D3F7  C9 99 59     Mx
    BCC L_82D3FF                    ; $82D3FA  90 03        Mx
L_82D3FC:
    JMP L_82D492                    ; $82D3FC  4C 92 D4     Mx
L_82D3FF:
    LDA $082A                       ; $82D3FF  AD 2A 08     Mx
    BNE L_82D3FC                    ; $82D402  D0 F8        Mx
    LDA $084E                       ; $82D404  AD 4E 08     Mx
    CMP #$005A                      ; $82D407  C9 5A 00     Mx
    BCC L_82D3FC                    ; $82D40A  90 F0        Mx
    CMP #$0168                      ; $82D40C  C9 68 01     Mx
    BCC L_82D414                    ; $82D40F  90 03        Mx
    JMP L_82D3FC                    ; $82D411  4C FC D3     Mx
L_82D414:
    LDA $00A4                       ; $82D414  AD A4 00     Mx
    CMP #$0002                      ; $82D417  C9 02 00     Mx
    BCC L_82D437                    ; $82D41A  90 1B        Mx
    CMP #$0005                      ; $82D41C  C9 05 00     Mx
    BCS L_82D437                    ; $82D41F  B0 16        Mx
    LDA $07F0                       ; $82D421  AD F0 07     Mx
    CMP #$0001                      ; $82D424  C9 01 00     Mx
    BEQ L_82D42E                    ; $82D427  F0 05        Mx
    CMP #$0002                      ; $82D429  C9 02 00     Mx
    BNE L_82D492                    ; $82D42C  D0 64        Mx
L_82D42E:
    LDA #$0003                      ; $82D42E  A9 03 00     Mx
    STA $07F0                       ; $82D431  8D F0 07     Mx
    JMP L_82D4BC                    ; $82D434  4C BC D4     Mx
L_82D437:
    CMP #$0005                      ; $82D437  C9 05 00     Mx
    BEQ L_82D47C                    ; $82D43A  F0 40        Mx
    CMP #$0006                      ; $82D43C  C9 06 00     Mx
    BEQ L_82D47C                    ; $82D43F  F0 3B        Mx
    CMP #$0000                      ; $82D441  C9 00 00     Mx
    BEQ L_82D466                    ; $82D444  F0 20        Mx
    CMP #$0001                      ; $82D446  C9 01 00     Mx
    BEQ L_82D466                    ; $82D449  F0 1B        Mx
    CMP #$0007                      ; $82D44B  C9 07 00     Mx
    BNE L_82D492                    ; $82D44E  D0 42        Mx
    LDA $07F0                       ; $82D450  AD F0 07     Mx
    CMP #$0005                      ; $82D453  C9 05 00     Mx
    BEQ L_82D45D                    ; $82D456  F0 05        Mx
    CMP #$0006                      ; $82D458  C9 06 00     Mx
    BNE L_82D492                    ; $82D45B  D0 35        Mx
L_82D45D:
    LDA #$0007                      ; $82D45D  A9 07 00     Mx
    STA $07F0                       ; $82D460  8D F0 07     Mx
    JMP L_82D4BC                    ; $82D463  4C BC D4     Mx
L_82D466:
    LDA $07F0                       ; $82D466  AD F0 07     Mx
    CMP #$0002                      ; $82D469  C9 02 00     Mx
    BEQ L_82D473                    ; $82D46C  F0 05        Mx
    CMP #$0003                      ; $82D46E  C9 03 00     Mx
    BNE L_82D492                    ; $82D471  D0 1F        Mx
L_82D473:
    LDA #$0001                      ; $82D473  A9 01 00     Mx
    STA $07F0                       ; $82D476  8D F0 07     Mx
    JMP L_82D4BC                    ; $82D479  4C BC D4     Mx
L_82D47C:
    LDA $07F0                       ; $82D47C  AD F0 07     Mx
    CMP #$0006                      ; $82D47F  C9 06 00     Mx
    BEQ L_82D489                    ; $82D482  F0 05        Mx
    CMP #$0007                      ; $82D484  C9 07 00     Mx
    BNE L_82D492                    ; $82D487  D0 09        Mx
L_82D489:
    LDA #$0005                      ; $82D489  A9 05 00     Mx
    STA $07F0                       ; $82D48C  8D F0 07     Mx
    JMP L_82D4BC                    ; $82D48F  4C BC D4     Mx
L_82D492:
    LDA $084E                       ; $82D492  AD 4E 08     Mx
    CMP #$0082                      ; $82D495  C9 82 00     Mx
    BCC L_82D4C2                    ; $82D498  90 28        Mx
    CMP #$0168                      ; $82D49A  C9 68 01     Mx
    BCC L_82D4A2                    ; $82D49D  90 03        Mx
    STZ $0C39                       ; $82D49F  9C 39 0C     Mx
L_82D4A2:
    LDA $0006                       ; $82D4A2  AD 06 00     Mx
    AND #$0007                      ; $82D4A5  29 07 00     Mx
    CMP #$0004                      ; $82D4A8  C9 04 00     Mx
    BEQ L_82D4B3                    ; $82D4AB  F0 06        Mx
    LDA #$000A                      ; $82D4AD  A9 0A 00     Mx
    JMP L_82D4C5                    ; $82D4B0  4C C5 D4     Mx
L_82D4B3:
    LDA #$001A                      ; $82D4B3  A9 1A 00     Mx
    STZ $0C39                       ; $82D4B6  9C 39 0C     Mx
    JMP L_82D4C5                    ; $82D4B9  4C C5 D4     Mx
L_82D4BC:
    LDA #$0016                      ; $82D4BC  A9 16 00     Mx
    JMP L_82D4C5                    ; $82D4BF  4C C5 D4     Mx
L_82D4C2:
    LDA #$0012                      ; $82D4C2  A9 12 00     Mx
L_82D4C5:
    STA $07DC                       ; $82D4C5  8D DC 07     Mx
    LDA #$FFFF                      ; $82D4C8  A9 FF FF     Mx
    STA $07E2                       ; $82D4CB  8D E2 07     Mx
    STZ $07E4                       ; $82D4CE  9C E4 07     Mx
    STZ $082A                       ; $82D4D1  9C 2A 08     Mx
    STZ $07E0                       ; $82D4D4  9C E0 07     Mx
    LDA #$FFF8                      ; $82D4D7  A9 F8 FF     Mx
    STA $07E6                       ; $82D4DA  8D E6 07     Mx
    LDA #$0002                      ; $82D4DD  A9 02 00     Mx
    STA $07E0                       ; $82D4E0  8D E0 07     Mx
    STZ $088C                       ; $82D4E3  9C 8C 08     Mx
    LDA $080A                       ; $82D4E6  AD 0A 08     Mx
    BNE L_82D51B                    ; $82D4E9  D0 30        Mx
    LDA $07A6                       ; $82D4EB  AD A6 07     Mx
    BEQ L_82D51B                    ; $82D4EE  F0 2B        Mx
    CMP #$0009                      ; $82D4F0  C9 09 00     Mx
    BCC L_82D51B                    ; $82D4F3  90 26        Mx
    LDA $0768                       ; $82D4F5  AD 68 07     Mx
    CMP #$0023                      ; $82D4F8  C9 23 00     Mx
    BCC L_82D51B                    ; $82D4FB  90 1E        Mx
    LDA $076A                       ; $82D4FD  AD 6A 07     Mx
    CMP #$0023                      ; $82D500  C9 23 00     Mx
    BCC L_82D51B                    ; $82D503  90 16        Mx
    LDA $084E                       ; $82D505  AD 4E 08     Mx
    CMP #$0028                      ; $82D508  C9 28 00     Mx
    BCC L_82D51B                    ; $82D50B  90 0E        Mx
    LDA #$0001                      ; $82D50D  A9 01 00     Mx
    STA $07A4                       ; $82D510  8D A4 07     Mx
    LDA #$0032                      ; $82D513  A9 32 00     Mx
    STA $07A2                       ; $82D516  8D A2 07     Mx
    BNE L_82D527                    ; $82D519  D0 0C        Mx
L_82D51B:
    STZ $072A                       ; $82D51B  9C 2A 07     Mx
    STZ $0728                       ; $82D51E  9C 28 07     Mx
    STZ $0732                       ; $82D521  9C 32 07     Mx
    STZ $0730                       ; $82D524  9C 30 07     Mx
L_82D527:
    LDA #$0087                      ; $82D527  A9 87 00     Mx
    STA $07B2                       ; $82D52A  8D B2 07     Mx
    LDA $07D8                       ; $82D52D  AD D8 07     Mx
    AND #$00FF                      ; $82D530  29 FF 00     Mx
    STA $0AA0                       ; $82D533  8D A0 0A     Mx
    LDA #$00D2                      ; $82D536  A9 D2 00     Mx
    STA $0A9E                       ; $82D539  8D 9E 0A     Mx
    RTS                             ; $82D53C  60           Mx
L_82D53D:
    REP #$10                        ; $82D53D  C2 10        Mx
    STZ $0BFF                       ; $82D53F  9C FF 0B     MX
    STZ $0816                       ; $82D542  9C 16 08     MX
    STZ $0814                       ; $82D545  9C 14 08     MX
    STZ $082A                       ; $82D548  9C 2A 08     MX
    STZ $0C29                       ; $82D54B  9C 29 0C     MX
    STZ $0BC9                       ; $82D54E  9C C9 0B     MX
    STZ $1131                       ; $82D551  9C 31 11     MX
    STZ $1133                       ; $82D554  9C 33 11     MX
    STZ $1135                       ; $82D557  9C 35 11     MX
    STZ $0868                       ; $82D55A  9C 68 08     MX
    LDX $07F0                       ; $82D55D  AE F0 07     MX
    BEQ L_82D56A                    ; $82D560  F0 08        MX
    CPX #$0004                      ; $82D562  E0 04 00     MX
    BEQ L_82D56A                    ; $82D565  F0 03        MX
L_82D567:
    JMP L_82D5AB                    ; $82D567  4C AB D5     MX
L_82D56A:
    LDA $083C                       ; $82D56A  AD 3C 08     MX
    CMP #$0028                      ; $82D56D  C9 28 00     MX
    BCC L_82D567                    ; $82D570  90 F5        MX
    CMP #$0096                      ; $82D572  C9 96 00     MX
    BCS L_82D567                    ; $82D575  B0 F0        MX
    LDA $080E                       ; $82D577  AD 0E 08     MX
    CMP #$0356                      ; $82D57A  C9 56 03     MX
    BCC L_82D567                    ; $82D57D  90 E8        MX
    CMP #$0392                      ; $82D57F  C9 92 03     MX
    BCS L_82D567                    ; $82D582  B0 E3        MX
    CPX #$0000                      ; $82D584  E0 00 00     MX
    BEQ L_82D58E                    ; $82D587  F0 05        MX
    LDX #$0003                      ; $82D589  A2 03 00     MX
    BNE L_82D591                    ; $82D58C  D0 03        MX
L_82D58E:
    LDX #$0001                      ; $82D58E  A2 01 00     MX
L_82D591:
    STX $07F0                       ; $82D591  8E F0 07     MX
    LDA #$0002                      ; $82D594  A9 02 00     MX
    STA $0C3B                       ; $82D597  8D 3B 0C     MX
    LDA $086E                       ; $82D59A  AD 6E 08     MX
    BEQ L_82D5A5                    ; $82D59D  F0 06        MX
    LDA #$0010                      ; $82D59F  A9 10 00     MX
    JMP L_82DB71                    ; $82D5A2  4C 71 DB     MX
L_82D5A5:
    LDA #$0034                      ; $82D5A5  A9 34 00     MX
    JMP L_82DB71                    ; $82D5A8  4C 71 DB     MX
L_82D5AB:
    LDA $083E                       ; $82D5AB  AD 3E 08     MX
    STA $00D9                       ; $82D5AE  8D D9 00     MX
    CLC                             ; $82D5B1  18           MX
    ADC #$0008                      ; $82D5B2  69 08 00     MX
    AND #$007F                      ; $82D5B5  29 7F 00     MX
    LSR                             ; $82D5B8  4A           MX
    LSR                             ; $82D5B9  4A           MX
    LSR                             ; $82D5BA  4A           MX
    LSR                             ; $82D5BB  4A           MX
    SEC                             ; $82D5BC  38           MX
    SBC #$0005                      ; $82D5BD  E9 05 00     MX
    BMI L_82D5D0                    ; $82D5C0  30 0E        MX
    LDA $083C                       ; $82D5C2  AD 3C 08     MX
    CMP #$0046                      ; $82D5C5  C9 46 00     MX
    BCS L_82D5CD                    ; $82D5C8  B0 03        MX
    JMP L_82D720                    ; $82D5CA  4C 20 D7     MX
L_82D5CD:
    JMP L_82DB0D                    ; $82D5CD  4C 0D DB     MX
L_82D5D0:
    LDA $083C                       ; $82D5D0  AD 3C 08     MX
    CMP #$0030                      ; $82D5D3  C9 30 00     MX
    BCS L_82D5DB                    ; $82D5D6  B0 03        MX
    JMP L_82D666                    ; $82D5D8  4C 66 D6     MX
L_82D5DB:
    LDA $07F0                       ; $82D5DB  AD F0 07     MX
    ASL                             ; $82D5DE  0A           MX
    ASL                             ; $82D5DF  0A           MX
    ASL                             ; $82D5E0  0A           MX
    ASL                             ; $82D5E1  0A           MX
    SEC                             ; $82D5E2  38           MX
    SBC $083E                       ; $82D5E3  ED 3E 08     MX
    BPL L_82D5EF                    ; $82D5E6  10 07        MX
    EOR #$FFFF                      ; $82D5E8  49 FF FF     MX
    CLC                             ; $82D5EB  18           MX
    ADC #$0001                      ; $82D5EC  69 01 00     MX
L_82D5EF:
    CMP #$0040                      ; $82D5EF  C9 40 00     MX
    BCC L_82D601                    ; $82D5F2  90 0D        MX
    SEC                             ; $82D5F4  38           MX
    SBC #$0080                      ; $82D5F5  E9 80 00     MX
    BPL L_82D601                    ; $82D5F8  10 07        MX
    EOR #$FFFF                      ; $82D5FA  49 FF FF     MX
    CLC                             ; $82D5FD  18           MX
    ADC #$0001                      ; $82D5FE  69 01 00     MX
L_82D601:
    SEC                             ; $82D601  38           MX
    SBC #$0018                      ; $82D602  E9 18 00     MX
    BPL L_82D622                    ; $82D605  10 1B        MX
    LDA $08BE                       ; $82D607  AD BE 08     MX
    AND #$0010                      ; $82D60A  29 10 00     MX
    BEQ L_82D61A                    ; $82D60D  F0 0B        MX
    LDA $083C                       ; $82D60F  AD 3C 08     MX
    CMP #$0110                      ; $82D612  C9 10 01     MX
    BCS L_82D622                    ; $82D615  B0 0B        MX
    JMP L_82D720                    ; $82D617  4C 20 D7     MX
L_82D61A:
    LDA $083C                       ; $82D61A  AD 3C 08     MX
    CMP #$0088                      ; $82D61D  C9 88 00     MX
    BCC L_82D625                    ; $82D620  90 03        MX
L_82D622:
    JMP L_82DB0D                    ; $82D622  4C 0D DB     MX
L_82D625:
    LDA $080E                       ; $82D625  AD 0E 08     MX
    CMP #$0330                      ; $82D628  C9 30 03     MX
    BCC L_82D622                    ; $82D62B  90 F5        MX
    CMP #$03D0                      ; $82D62D  C9 D0 03     MX
    BCS L_82D622                    ; $82D630  B0 F0        MX
    LDA $0812                       ; $82D632  AD 12 08     MX
    BPL L_82D64A                    ; $82D635  10 13        MX
    LDA $0810                       ; $82D637  AD 10 08     MX
    EOR #$FFFF                      ; $82D63A  49 FF FF     MX
    CLC                             ; $82D63D  18           MX
    ADC #$0001                      ; $82D63E  69 01 00     MX
    LDA $0812                       ; $82D641  AD 12 08     MX
    EOR #$FFFF                      ; $82D644  49 FF FF     MX
    ADC #$0000                      ; $82D647  69 00 00     MX
L_82D64A:
    BNE L_82D666                    ; $82D64A  D0 1A        MX
    LDA $081A                       ; $82D64C  AD 1A 08     MX
    BPL L_82D664                    ; $82D64F  10 13        MX
    LDA $0818                       ; $82D651  AD 18 08     MX
    EOR #$FFFF                      ; $82D654  49 FF FF     MX
    CLC                             ; $82D657  18           MX
    ADC #$0001                      ; $82D658  69 01 00     MX
    LDA $081A                       ; $82D65B  AD 1A 08     MX
    EOR #$FFFF                      ; $82D65E  49 FF FF     MX
    ADC #$0000                      ; $82D661  69 00 00     MX
L_82D664:
    BEQ L_82D622                    ; $82D664  F0 BC        MX
L_82D666:
    LDX $09A8                       ; $82D666  AE A8 09     MX
    CPX $0A96                       ; $82D669  EC 96 0A     MX
    BNE L_82D677                    ; $82D66C  D0 09        MX
    LDA #$000B                      ; $82D66E  A9 0B 00     MX
    STA $00D0                       ; $82D671  8D D0 00     MX
    JMP L_82D67D                    ; $82D674  4C 7D D6     MX
L_82D677:
    LDA $0A76                       ; $82D677  AD 76 0A     MX
    STA $00D0                       ; $82D67A  8D D0 00     MX
L_82D67D:
    ASL                             ; $82D67D  0A           MX
    TAX                             ; $82D67E  AA           MX
    LDA $DA9B,X                     ; $82D67F  BD 9B DA     MX
    STA $00D6                       ; $82D682  8D D6 00     MX
    LDA $DAB3,X                     ; $82D685  BD B3 DA     MX
    STA $00D0                       ; $82D688  8D D0 00     MX
    LDA $0850                       ; $82D68B  AD 50 08     MX
    CMP $083C                       ; $82D68E  CD 3C 08     MX
    BCS L_82D6C3                    ; $82D691  B0 30        MX
    CMP $00D6                       ; $82D693  CD D6 00     MX
    BCS L_82D6C3                    ; $82D696  B0 2B        MX
    LDA $084A                       ; $82D698  AD 4A 08     MX
    SEC                             ; $82D69B  38           MX
    SBC $00D9                       ; $82D69C  ED D9 00     MX
    BPL L_82D6A8                    ; $82D69F  10 07        MX
    EOR #$FFFF                      ; $82D6A1  49 FF FF     MX
    CLC                             ; $82D6A4  18           MX
    ADC #$0001                      ; $82D6A5  69 01 00     MX
L_82D6A8:
    CMP #$0040                      ; $82D6A8  C9 40 00     MX
    BCC L_82D6BA                    ; $82D6AB  90 0D        MX
    SEC                             ; $82D6AD  38           MX
    SBC #$0080                      ; $82D6AE  E9 80 00     MX
    BPL L_82D6BA                    ; $82D6B1  10 07        MX
    EOR #$FFFF                      ; $82D6B3  49 FF FF     MX
    CLC                             ; $82D6B6  18           MX
    ADC #$0001                      ; $82D6B7  69 01 00     MX
L_82D6BA:
    SEC                             ; $82D6BA  38           MX
    SBC $00D0                       ; $82D6BB  ED D0 00     MX
    BPL L_82D6C3                    ; $82D6BE  10 03        MX
    JMP L_82DACB                    ; $82D6C0  4C CB DA     MX
L_82D6C3:
    LDX $08C0                       ; $82D6C3  AE C0 08     MX
    CPX $0A96                       ; $82D6C6  EC 96 0A     MX
    BNE L_82D6D4                    ; $82D6C9  D0 09        MX
    LDA #$000B                      ; $82D6CB  A9 0B 00     MX
    STA $00D0                       ; $82D6CE  8D D0 00     MX
    JMP L_82D6DA                    ; $82D6D1  4C DA D6     MX
L_82D6D4:
    LDA $098E                       ; $82D6D4  AD 8E 09     MX
    STA $00D0                       ; $82D6D7  8D D0 00     MX
L_82D6DA:
    ASL                             ; $82D6DA  0A           MX
    TAX                             ; $82D6DB  AA           MX
    LDA $DA9B,X                     ; $82D6DC  BD 9B DA     MX
    STA $00D6                       ; $82D6DF  8D D6 00     MX
    LDA $DAB3,X                     ; $82D6E2  BD B3 DA     MX
    STA $00D0                       ; $82D6E5  8D D0 00     MX
    LDA $0852                       ; $82D6E8  AD 52 08     MX
    CMP $083C                       ; $82D6EB  CD 3C 08     MX
    BCS L_82D720                    ; $82D6EE  B0 30        MX
    CMP $00D6                       ; $82D6F0  CD D6 00     MX
    BCS L_82D720                    ; $82D6F3  B0 2B        MX
    LDA $084C                       ; $82D6F5  AD 4C 08     MX
    SEC                             ; $82D6F8  38           MX
    SBC $00D9                       ; $82D6F9  ED D9 00     MX
    BPL L_82D705                    ; $82D6FC  10 07        MX
    EOR #$FFFF                      ; $82D6FE  49 FF FF     MX
    CLC                             ; $82D701  18           MX
    ADC #$0001                      ; $82D702  69 01 00     MX
L_82D705:
    CMP #$0040                      ; $82D705  C9 40 00     MX
    BCC L_82D717                    ; $82D708  90 0D        MX
    SEC                             ; $82D70A  38           MX
    SBC #$0080                      ; $82D70B  E9 80 00     MX
    BPL L_82D717                    ; $82D70E  10 07        MX
    EOR #$FFFF                      ; $82D710  49 FF FF     MX
    CLC                             ; $82D713  18           MX
    ADC #$0001                      ; $82D714  69 01 00     MX
L_82D717:
    SEC                             ; $82D717  38           MX
    SBC $00D0                       ; $82D718  ED D0 00     MX
    BPL L_82D720                    ; $82D71B  10 03        MX
    JMP L_82DACB                    ; $82D71D  4C CB DA     MX
L_82D720:
    LDX $083E                       ; $82D720  AE 3E 08     MX
    LDA $A7E377,X                   ; $82D723  BF 77 E3 A7  MX
    AND #$0007                      ; $82D727  29 07 00     MX
    STA $00A4                       ; $82D72A  8D A4 00     MX
    CMP #$0005                      ; $82D72D  C9 05 00     MX
    BCS L_82D737                    ; $82D730  B0 05        MX
    LDA $00A4                       ; $82D732  AD A4 00     MX
    BRA L_82D74B                    ; $82D735  80 14        MX
L_82D737:
    LDA $083C                       ; $82D737  AD 3C 08     MX
    CMP #$0030                      ; $82D73A  C9 30 00     MX
    BCC L_82D744                    ; $82D73D  90 05        MX
    LDA $00A4                       ; $82D73F  AD A4 00     MX
    BRA L_82D74B                    ; $82D742  80 07        MX
L_82D744:
    LDX $083E                       ; $82D744  AE 3E 08     MX
    LDA $81DE4A,X                   ; $82D747  BF 4A DE 81  MX
L_82D74B:
    AND #$0007                      ; $82D74B  29 07 00     MX
    STA $07F0                       ; $82D74E  8D F0 07     MX
    ASL                             ; $82D751  0A           MX
    STA $00D9                       ; $82D752  8D D9 00     MX
    SEP #$20                        ; $82D755  E2 20        MX
    PHB                             ; $82D757  8B           mX
    LDA #$24                        ; $82D758  A9 24        mX
    PHA                             ; $82D75A  48           mX
    PLB                             ; $82D75B  AB           mX
    REP #$20                        ; $82D75C  C2 20        mX
    LDA #$0004                      ; $82D75E  A9 04 00     MX
    STA $07E0                       ; $82D761  8D E0 07     MX
    LDX $07D8                       ; $82D764  AE D8 07     MX
    CPX $0A96                       ; $82D767  EC 96 0A     MX
    BEQ L_82D792                    ; $82D76A  F0 26        MX
    LDA $08BE                       ; $82D76C  AD BE 08     MX
    AND #$0010                      ; $82D76F  29 10 00     MX
    BNE L_82D792                    ; $82D772  D0 1E        MX
    LDA $08A0                       ; $82D774  AD A0 08     MX
    ASL                             ; $82D777  0A           MX
    TAX                             ; $82D778  AA           MX
    JMP ($D77C,X)                   ; $82D779  7C 7C D7     MX
    db $BE,$D8,$BE,$D8,$BE,$D8,$73,$D8,$73,$D8,$28,$D8,$DD,$D7,$DD,$D7 ; $82D77C
    db $92,$D7,$92,$D7,$92,$D7                                         ; $82D78C
L_82D792:
    LDA $00D9                       ; $82D792  AD D9 00     MX
    CLC                             ; $82D795  18           MX
    ADC #$D62E                      ; $82D796  69 2E D6     MX
    STA $00D9                       ; $82D799  8D D9 00     MX
    LDA $083C                       ; $82D79C  AD 3C 08     MX
    CMP #$0030                      ; $82D79F  C9 30 00     MX
    BCC L_82D7D7                    ; $82D7A2  90 33        MX
    LDA $00D9                       ; $82D7A4  AD D9 00     MX
    CLC                             ; $82D7A7  18           MX
    ADC #$0012                      ; $82D7A8  69 12 00     MX
    STA $00D9                       ; $82D7AB  8D D9 00     MX
    LDA $083C                       ; $82D7AE  AD 3C 08     MX
    CMP #$0040                      ; $82D7B1  C9 40 00     MX
    BCC L_82D7D7                    ; $82D7B4  90 21        MX
    LDA $086E                       ; $82D7B6  AD 6E 08     MX
    BEQ L_82D7DA                    ; $82D7B9  F0 1F        MX
    LDA $00D9                       ; $82D7BB  AD D9 00     MX
    CLC                             ; $82D7BE  18           MX
    ADC #$0012                      ; $82D7BF  69 12 00     MX
    STA $00D9                       ; $82D7C2  8D D9 00     MX
    LDA $083C                       ; $82D7C5  AD 3C 08     MX
    CMP #$0060                      ; $82D7C8  C9 60 00     MX
    BCC L_82D7D7                    ; $82D7CB  90 0A        MX
    LDA $00D9                       ; $82D7CD  AD D9 00     MX
    CLC                             ; $82D7D0  18           MX
    ADC #$0012                      ; $82D7D1  69 12 00     MX
    STA $00D9                       ; $82D7D4  8D D9 00     MX
L_82D7D7:
    JMP L_82D90C                    ; $82D7D7  4C 0C D9     MX
L_82D7DA:
    JMP L_82D906                    ; $82D7DA  4C 06 D9     MX
L_82D7DD:
    LDA $00D9                       ; $82D7DD  AD D9 00     MX
    CLC                             ; $82D7E0  18           MX
    ADC #$D8AC                      ; $82D7E1  69 AC D8     MX
    STA $00D9                       ; $82D7E4  8D D9 00     MX
    LDA $083C                       ; $82D7E7  AD 3C 08     MX
    CMP #$0030                      ; $82D7EA  C9 30 00     MX
    BCC L_82D822                    ; $82D7ED  90 33        MX
    LDA $00D9                       ; $82D7EF  AD D9 00     MX
    CLC                             ; $82D7F2  18           MX
    ADC #$0012                      ; $82D7F3  69 12 00     MX
    STA $00D9                       ; $82D7F6  8D D9 00     MX
    LDA $083C                       ; $82D7F9  AD 3C 08     MX
    CMP #$0040                      ; $82D7FC  C9 40 00     MX
    BCC L_82D822                    ; $82D7FF  90 21        MX
    LDA $086E                       ; $82D801  AD 6E 08     MX
    BEQ L_82D825                    ; $82D804  F0 1F        MX
    LDA $00D9                       ; $82D806  AD D9 00     MX
    CLC                             ; $82D809  18           MX
    ADC #$0012                      ; $82D80A  69 12 00     MX
    STA $00D9                       ; $82D80D  8D D9 00     MX
    LDA $083C                       ; $82D810  AD 3C 08     MX
    CMP #$0060                      ; $82D813  C9 60 00     MX
    BCC L_82D822                    ; $82D816  90 0A        MX
    LDA $00D9                       ; $82D818  AD D9 00     MX
    CLC                             ; $82D81B  18           MX
    ADC #$0012                      ; $82D81C  69 12 00     MX
    STA $00D9                       ; $82D81F  8D D9 00     MX
L_82D822:
    JMP L_82D90C                    ; $82D822  4C 0C D9     MX
L_82D825:
    JMP L_82D906                    ; $82D825  4C 06 D9     MX
L_82D828:
    LDA $00D9                       ; $82D828  AD D9 00     MX
    CLC                             ; $82D82B  18           MX
    ADC #$DB24                      ; $82D82C  69 24 DB     MX
    STA $00D9                       ; $82D82F  8D D9 00     MX
    LDA $083C                       ; $82D832  AD 3C 08     MX
    CMP #$0030                      ; $82D835  C9 30 00     MX
    BCC L_82D86D                    ; $82D838  90 33        MX
    LDA $00D9                       ; $82D83A  AD D9 00     MX
    CLC                             ; $82D83D  18           MX
    ADC #$0012                      ; $82D83E  69 12 00     MX
    STA $00D9                       ; $82D841  8D D9 00     MX
    LDA $083C                       ; $82D844  AD 3C 08     MX
    CMP #$0040                      ; $82D847  C9 40 00     MX
    BCC L_82D86D                    ; $82D84A  90 21        MX
    LDA $086E                       ; $82D84C  AD 6E 08     MX
    BEQ L_82D870                    ; $82D84F  F0 1F        MX
    LDA $00D9                       ; $82D851  AD D9 00     MX
    CLC                             ; $82D854  18           MX
    ADC #$0012                      ; $82D855  69 12 00     MX
    STA $00D9                       ; $82D858  8D D9 00     MX
    LDA $083C                       ; $82D85B  AD 3C 08     MX
    CMP #$0060                      ; $82D85E  C9 60 00     MX
    BCC L_82D86D                    ; $82D861  90 0A        MX
    LDA $00D9                       ; $82D863  AD D9 00     MX
    CLC                             ; $82D866  18           MX
    ADC #$0012                      ; $82D867  69 12 00     MX
    STA $00D9                       ; $82D86A  8D D9 00     MX
L_82D86D:
    JMP L_82D90C                    ; $82D86D  4C 0C D9     MX
L_82D870:
    JMP L_82D906                    ; $82D870  4C 06 D9     MX
L_82D873:
    LDA $00D9                       ; $82D873  AD D9 00     MX
    CLC                             ; $82D876  18           MX
    ADC #$DD48                      ; $82D877  69 48 DD     MX
    STA $00D9                       ; $82D87A  8D D9 00     MX
    LDA $083C                       ; $82D87D  AD 3C 08     MX
    CMP #$0030                      ; $82D880  C9 30 00     MX
    BCC L_82D8B8                    ; $82D883  90 33        MX
    LDA $00D9                       ; $82D885  AD D9 00     MX
    CLC                             ; $82D888  18           MX
    ADC #$0012                      ; $82D889  69 12 00     MX
    STA $00D9                       ; $82D88C  8D D9 00     MX
    LDA $083C                       ; $82D88F  AD 3C 08     MX
    CMP #$0040                      ; $82D892  C9 40 00     MX
    BCC L_82D8B8                    ; $82D895  90 21        MX
    LDA $086E                       ; $82D897  AD 6E 08     MX
    BEQ L_82D8BB                    ; $82D89A  F0 1F        MX
    LDA $00D9                       ; $82D89C  AD D9 00     MX
    CLC                             ; $82D89F  18           MX
    ADC #$0012                      ; $82D8A0  69 12 00     MX
    STA $00D9                       ; $82D8A3  8D D9 00     MX
    LDA $083C                       ; $82D8A6  AD 3C 08     MX
    CMP #$0060                      ; $82D8A9  C9 60 00     MX
    BCC L_82D8B8                    ; $82D8AC  90 0A        MX
    LDA $00D9                       ; $82D8AE  AD D9 00     MX
    CLC                             ; $82D8B1  18           MX
    ADC #$0012                      ; $82D8B2  69 12 00     MX
    STA $00D9                       ; $82D8B5  8D D9 00     MX
L_82D8B8:
    JMP L_82D90C                    ; $82D8B8  4C 0C D9     MX
L_82D8BB:
    JMP L_82D906                    ; $82D8BB  4C 06 D9     MX
L_82D8BE:
    LDA $00D9                       ; $82D8BE  AD D9 00     MX
    CLC                             ; $82D8C1  18           MX
    ADC #$DEEC                      ; $82D8C2  69 EC DE     MX
    STA $00D9                       ; $82D8C5  8D D9 00     MX
    LDA $083C                       ; $82D8C8  AD 3C 08     MX
    CMP #$0030                      ; $82D8CB  C9 30 00     MX
    BCC L_82D903                    ; $82D8CE  90 33        MX
    LDA $00D9                       ; $82D8D0  AD D9 00     MX
    CLC                             ; $82D8D3  18           MX
    ADC #$0012                      ; $82D8D4  69 12 00     MX
    STA $00D9                       ; $82D8D7  8D D9 00     MX
    LDA $083C                       ; $82D8DA  AD 3C 08     MX
    CMP #$0040                      ; $82D8DD  C9 40 00     MX
    BCC L_82D903                    ; $82D8E0  90 21        MX
    LDA $086E                       ; $82D8E2  AD 6E 08     MX
    BEQ L_82D906                    ; $82D8E5  F0 1F        MX
    LDA $00D9                       ; $82D8E7  AD D9 00     MX
    CLC                             ; $82D8EA  18           MX
    ADC #$0012                      ; $82D8EB  69 12 00     MX
    STA $00D9                       ; $82D8EE  8D D9 00     MX
    LDA $083C                       ; $82D8F1  AD 3C 08     MX
    CMP #$0060                      ; $82D8F4  C9 60 00     MX
    BCC L_82D903                    ; $82D8F7  90 0A        MX
    LDA $00D9                       ; $82D8F9  AD D9 00     MX
    CLC                             ; $82D8FC  18           MX
    ADC #$0012                      ; $82D8FD  69 12 00     MX
    STA $00D9                       ; $82D900  8D D9 00     MX
L_82D903:
    JMP L_82D90C                    ; $82D903  4C 0C D9     MX
L_82D906:
    STZ $07E4                       ; $82D906  9C E4 07     MX
    JMP L_82DA82                    ; $82D909  4C 82 DA     MX
L_82D90C:
    LDX $0B4A                       ; $82D90C  AE 4A 0B     MX
    CPX #$0002                      ; $82D90F  E0 02 00     MX
    BCC L_82D920                    ; $82D912  90 0C        MX
    DEX                             ; $82D914  CA           MX
    DEX                             ; $82D915  CA           MX
    LDA $A6DC03,X                   ; $82D916  BF 03 DC A6  MX
    AND #$00FF                      ; $82D91A  29 FF 00     MX
    JMP L_82D9C1                    ; $82D91D  4C C1 D9     MX
L_82D920:
    LDA ($D9)                       ; $82D920  B2 D9        MX
    STA $00D9                       ; $82D922  8D D9 00     MX
    LDA ($D9)                       ; $82D925  B2 D9        MX
    STA $00D0                       ; $82D927  8D D0 00     MX
    PHP                             ; $82D92A  08           MX
    REP #$30                        ; $82D92B  C2 30        MX
    LDA $4212                       ; $82D92D  AD 12 42     MX
    SEP #$20                        ; $82D930  E2 20        MX
    CLC                             ; $82D932  18           mX
    ADC $1D57                       ; $82D933  6D 57 1D     mX
    STA $1D57                       ; $82D936  8D 57 1D     mX
    REP #$20                        ; $82D939  C2 20        mX
    LDA $4212                       ; $82D93B  AD 12 42     MX
    TAX                             ; $82D93E  AA           MX
    SEP #$20                        ; $82D93F  E2 20        MX
    EOR $1D58                       ; $82D941  4D 58 1D     mX
    STA $1D58                       ; $82D944  8D 58 1D     mX
    TXA                             ; $82D947  8A           mX
    ADC $1D59                       ; $82D948  6D 59 1D     mX
    REP #$20                        ; $82D94B  C2 20        mX
    LDA $1D56                       ; $82D94D  AD 56 1D     MX
    INC                             ; $82D950  1A           MX
    ROR                             ; $82D951  6A           MX
    LSR $1D58                       ; $82D952  4E 58 1D     MX
    EOR #$2B41                      ; $82D955  49 41 2B     MX
    SBC #$000F                      ; $82D958  E9 0F 00     MX
    STA $1D56                       ; $82D95B  8D 56 1D     MX
    LDA $1D58                       ; $82D95E  AD 58 1D     MX
    EOR #$1D87                      ; $82D961  49 87 1D     MX
    STA $1D58                       ; $82D964  8D 58 1D     MX
    LDA $1D52                       ; $82D967  AD 52 1D     MX
    EOR $1D56                       ; $82D96A  4D 56 1D     MX
    STA $0002                       ; $82D96D  8D 02 00     MX
    INC                             ; $82D970  1A           MX
    STA $1D52                       ; $82D971  8D 52 1D     MX
    LDA $1D54                       ; $82D974  AD 54 1D     MX
    EOR $1D58                       ; $82D977  4D 58 1D     MX
    ADC #$0000                      ; $82D97A  69 00 00     MX
    STA $1D52                       ; $82D97D  8D 52 1D     MX
    STA $0004                       ; $82D980  8D 04 00     MX
    PLP                             ; $82D983  28           MX
    INC $00D0                       ; $82D984  EE D0 00     MX
    LDA $1D56                       ; $82D987  AD 56 1D     MX
    STA $00BA                       ; $82D98A  8D BA 00     MX
    SEP #$20                        ; $82D98D  E2 20        MX
    LDA $00D0                       ; $82D98F  AD D0 00     mX
    STA $4202                       ; $82D992  8D 02 42     mX
    LDA $00BA                       ; $82D995  AD BA 00     mX
    STA $4203                       ; $82D998  8D 03 42     mX
    NOP                             ; $82D99B  EA           mX
    NOP                             ; $82D99C  EA           mX
    NOP                             ; $82D99D  EA           mX
    REP #$20                        ; $82D99E  C2 20        mX
    LDA $4216                       ; $82D9A0  AD 16 42     MX
    STA $00BA                       ; $82D9A3  8D BA 00     MX
    LDA $00BB                       ; $82D9A6  AD BB 00     MX
    AND #$00FF                      ; $82D9A9  29 FF 00     MX
    REP #$10                        ; $82D9AC  C2 10        MX
    ASL                             ; $82D9AE  0A           MX
    CLC                             ; $82D9AF  18           MX
    ADC #$0002                      ; $82D9B0  69 02 00     MX
    CLC                             ; $82D9B3  18           MX
    ADC $00D9                       ; $82D9B4  6D D9 00     MX
    STA $00D9                       ; $82D9B7  8D D9 00     MX
    LDA ($D9)                       ; $82D9BA  B2 D9        MX
L_82D9BC:
    BPL L_82D9C1                    ; $82D9BC  10 03        MX
    JMP L_82D906                    ; $82D9BE  4C 06 D9     MX
L_82D9C1:
    STA $0AA2                       ; $82D9C1  8D A2 0A     MX
    STA $0884                       ; $82D9C4  8D 84 08     MX
    TAX                             ; $82D9C7  AA           MX
    LDA #$2400                      ; $82D9C8  A9 00 24     MX
    STA $00D1                       ; $82D9CB  8D D1 00     MX
    LDA $B818,X                     ; $82D9CE  BD 18 B8     MX
    STA $00D0                       ; $82D9D1  8D D0 00     MX
    LDA $07F0                       ; $82D9D4  AD F0 07     MX
    ASL                             ; $82D9D7  0A           MX
    TAY                             ; $82D9D8  A8           MX
    LDA ($D0),Y                     ; $82D9D9  B1 D0        MX
    STA $0886                       ; $82D9DB  8D 86 08     MX
    STA $00D0                       ; $82D9DE  8D D0 00     MX
    STZ $0888                       ; $82D9E1  9C 88 08     MX
    STZ $07F6                       ; $82D9E4  9C F6 07     MX
    LDA $0884                       ; $82D9E7  AD 84 08     MX
    CMP #$0076                      ; $82D9EA  C9 76 00     MX
    BEQ L_82D9F9                    ; $82D9ED  F0 0A        MX
    CMP #$0078                      ; $82D9EF  C9 78 00     MX
    BEQ L_82D9F9                    ; $82D9F2  F0 05        MX
    CMP #$007A                      ; $82D9F4  C9 7A 00     MX
    BNE L_82DA1D                    ; $82D9F7  D0 24        MX
L_82D9F9:
    LDA #$0001                      ; $82D9F9  A9 01 00     MX
    STA $0C11                       ; $82D9FC  8D 11 0C     MX
    LDA $0BBB                       ; $82D9FF  AD BB 0B     MX
    STA $0C01                       ; $82DA02  8D 01 0C     MX
    STA $0C05                       ; $82DA05  8D 05 0C     MX
    STA $0C09                       ; $82DA08  8D 09 0C     MX
    STA $0C0D                       ; $82DA0B  8D 0D 0C     MX
    LDA $0BBD                       ; $82DA0E  AD BD 0B     MX
    STA $0C03                       ; $82DA11  8D 03 0C     MX
    STA $0C07                       ; $82DA14  8D 07 0C     MX
    STA $0C0B                       ; $82DA17  8D 0B 0C     MX
    STA $0C0F                       ; $82DA1A  8D 0F 0C     MX
L_82DA1D:
    LDA #$0002                      ; $82DA1D  A9 02 00     MX
    STA $0C3B                       ; $82DA20  8D 3B 0C     MX
    LDA $07E0                       ; $82DA23  AD E0 07     MX
    STA $00A4                       ; $82DA26  8D A4 00     MX
    LDA #$003A                      ; $82DA29  A9 3A 00     MX
    STA $07DC                       ; $82DA2C  8D DC 07     MX
    LDA #$FFFF                      ; $82DA2F  A9 FF FF     MX
    STA $07E2                       ; $82DA32  8D E2 07     MX
    STZ $07E4                       ; $82DA35  9C E4 07     MX
    STZ $082A                       ; $82DA38  9C 2A 08     MX
    STZ $07E0                       ; $82DA3B  9C E0 07     MX
    LDA #$FFF8                      ; $82DA3E  A9 F8 FF     MX
    STA $07E6                       ; $82DA41  8D E6 07     MX
    LDA $00A4                       ; $82DA44  AD A4 00     MX
    STA $07E0                       ; $82DA47  8D E0 07     MX
    STZ $0816                       ; $82DA4A  9C 16 08     MX
    STZ $0814                       ; $82DA4D  9C 14 08     MX
    LDY $0888                       ; $82DA50  AC 88 08     MX
    LDA [$D0],Y                     ; $82DA53  B7 D0        MX
    STA $07E4                       ; $82DA55  8D E4 07     MX
    INY                             ; $82DA58  C8           MX
    INY                             ; $82DA59  C8           MX
    LDA [$D0],Y                     ; $82DA5A  B7 D0        MX
    STA $07E6                       ; $82DA5C  8D E6 07     MX
    STZ $07E2                       ; $82DA5F  9C E2 07     MX
    INY                             ; $82DA62  C8           MX
    INY                             ; $82DA63  C8           MX
    STY $0888                       ; $82DA64  8C 88 08     MX
    LDA $07E4                       ; $82DA67  AD E4 07     MX
    STA $07DE                       ; $82DA6A  8D DE 07     MX
    LDX $083E                       ; $82DA6D  AE 3E 08     MX
    LDA $A7E377,X                   ; $82DA70  BF 77 E3 A7  MX
    AND #$0007                      ; $82DA74  29 07 00     MX
    TAX                             ; $82DA77  AA           MX
    LDA $81DE4A,X                   ; $82DA78  BF 4A DE 81  MX
    AND #$0007                      ; $82DA7C  29 07 00     MX
    STA $07F2                       ; $82DA7F  8D F2 07     MX
L_82DA82:
    LDA $07E4                       ; $82DA82  AD E4 07     MX
    BNE L_82DA8B                    ; $82DA85  D0 04        MX
    PLB                             ; $82DA87  AB           MX
    JMP L_82DB0D                    ; $82DA88  4C 0D DB     MX
L_82DA8B:
    LDA $07F2                       ; $82DA8B  AD F2 07     MX
    STA $07F0                       ; $82DA8E  8D F0 07     MX
    LDA #$00C8                      ; $82DA91  A9 C8 00     MX
    STA $07DE                       ; $82DA94  8D DE 07     MX
    PLB                             ; $82DA97  AB           MX
    JMP L_82DB8F                    ; $82DA98  4C 8F DB     MX
    db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF ; $82DA9B
    db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$0C,$00,$0E,$00,$10,$00,$12,$00 ; $82DAAB
    db $15,$00,$16,$00,$17,$00,$18,$00,$19,$00,$1C,$00,$1E,$00,$25,$00 ; $82DABB
L_82DACB:
    LDA $083C                       ; $82DACB  AD 3C 08     MX
    CMP #$0025                      ; $82DACE  C9 25 00     MX
    BCS L_82DAD6                    ; $82DAD1  B0 03        MX
    JMP L_82D720                    ; $82DAD3  4C 20 D7     MX
L_82DAD6:
    LDA $00C0                       ; $82DAD6  AD C0 00     MX
    BNE L_82DB0D                    ; $82DAD9  D0 32        MX
    LDA $083C                       ; $82DADB  AD 3C 08     MX
    CMP #$0080                      ; $82DADE  C9 80 00     MX
    BCS L_82DB0D                    ; $82DAE1  B0 2A        MX
    CMP #$0023                      ; $82DAE3  C9 23 00     MX
    BCS L_82DAEB                    ; $82DAE6  B0 03        MX
    JMP L_82DB0D                    ; $82DAE8  4C 0D DB     MX
L_82DAEB:
    SEP #$20                        ; $82DAEB  E2 20        MX
    PHB                             ; $82DAED  8B           mX
    LDA #$24                        ; $82DAEE  A9 24        mX
    PHA                             ; $82DAF0  48           mX
    PLB                             ; $82DAF1  AB           mX
    REP #$20                        ; $82DAF2  C2 20        mX
    LDA #$0008                      ; $82DAF4  A9 08 00     MX
    STA $07E0                       ; $82DAF7  8D E0 07     MX
    LDX $083E                       ; $82DAFA  AE 3E 08     MX
    LDA $A7E377,X                   ; $82DAFD  BF 77 E3 A7  MX
    AND #$0007                      ; $82DB01  29 07 00     MX
    STA $07F0                       ; $82DB04  8D F0 07     MX
    LDA #$0082                      ; $82DB07  A9 82 00     MX
    JMP L_82D9BC                    ; $82DB0A  4C BC D9     MX
L_82DB0D:
    LDA $07F0                       ; $82DB0D  AD F0 07     MX
    STA $00A4                       ; $82DB10  8D A4 00     MX
    LDX $083E                       ; $82DB13  AE 3E 08     MX
    LDA $A7E377,X                   ; $82DB16  BF 77 E3 A7  MX
    AND #$0007                      ; $82DB1A  29 07 00     MX
    STA $07F0                       ; $82DB1D  8D F0 07     MX
    LDA $083C                       ; $82DB20  AD 3C 08     MX
    CMP #$0140                      ; $82DB23  C9 40 01     MX
    BCC L_82DB6E                    ; $82DB26  90 46        MX
    LDA $0CCB                       ; $82DB28  AD CB 0C     MX
    CMP #$0006                      ; $82DB2B  C9 06 00     MX
    BCS L_82DB45                    ; $82DB2E  B0 15        MX
    LDA #$0028                      ; $82DB30  A9 28 00     MX
    STA $077A                       ; $82DB33  8D 7A 07     MX
    STA $0862                       ; $82DB36  8D 62 08     MX
    STA $094A                       ; $82DB39  8D 4A 09     MX
    STA $0A32                       ; $82DB3C  8D 32 0A     MX
    LDA #$001E                      ; $82DB3F  A9 1E 00     MX
    JMP L_82DB53                    ; $82DB42  4C 53 DB     MX
L_82DB45:
    LDA $00C0                       ; $82DB45  AD C0 00     MX
    BNE L_82DB50                    ; $82DB48  D0 06        MX
    LDA #$000E                      ; $82DB4A  A9 0E 00     MX
    JMP L_82DB53                    ; $82DB4D  4C 53 DB     MX
L_82DB50:
    LDA #$001C                      ; $82DB50  A9 1C 00     MX
L_82DB53:
    STA $07DC                       ; $82DB53  8D DC 07     MX
    LDA #$FFFF                      ; $82DB56  A9 FF FF     MX
    STA $07E2                       ; $82DB59  8D E2 07     MX
    STZ $07E4                       ; $82DB5C  9C E4 07     MX
    STZ $082A                       ; $82DB5F  9C 2A 08     MX
    STZ $07E0                       ; $82DB62  9C E0 07     MX
    LDA #$FFF8                      ; $82DB65  A9 F8 FF     MX
    STA $07E6                       ; $82DB68  8D E6 07     MX
    JMP L_82DB89                    ; $82DB6B  4C 89 DB     MX
L_82DB6E:
    LDA #$0008                      ; $82DB6E  A9 08 00     MX
L_82DB71:
    STA $07DC                       ; $82DB71  8D DC 07     MX
    LDA #$FFFF                      ; $82DB74  A9 FF FF     MX
    STA $07E2                       ; $82DB77  8D E2 07     MX
    STZ $07E4                       ; $82DB7A  9C E4 07     MX
    STZ $082A                       ; $82DB7D  9C 2A 08     MX
    STZ $07E0                       ; $82DB80  9C E0 07     MX
    LDA #$FFF8                      ; $82DB83  A9 F8 FF     MX
    STA $07E6                       ; $82DB86  8D E6 07     MX
L_82DB89:
    LDA #$0001                      ; $82DB89  A9 01 00     MX
    STA $07E0                       ; $82DB8C  8D E0 07     MX
L_82DB8F:
    STZ $0812                       ; $82DB8F  9C 12 08     MX
    STZ $0810                       ; $82DB92  9C 10 08     MX
    STZ $081A                       ; $82DB95  9C 1A 08     MX
    STZ $0818                       ; $82DB98  9C 18 08     MX
    SEP #$10                        ; $82DB9B  E2 10        MX
    LDA $07DC                       ; $82DB9D  AD DC 07     Mx
    STA $0B52                       ; $82DBA0  8D 52 0B     Mx
    RTS                             ; $82DBA3  60           Mx
L_82DBA4:
    LDX #$2D                        ; $82DBA4  A2 2D        Mx
L_82DBA6:
    PHX                             ; $82DBA6  DA           Mx
    LDA #$FFFC                      ; $82DBA7  A9 FC FF     Mx
    STA $0E7B                       ; $82DBAA  8D 7B 0E     Mx
    STZ $0006                       ; $82DBAD  9C 06 00     Mx
    JSL L_9ABCAE                    ; $82DBB0  22 AE BC 9A  Mx
    INC $0006                       ; $82DBB4  EE 06 00     Mx
    JSL L_9ABCAE                    ; $82DBB7  22 AE BC 9A  Mx
    PLX                             ; $82DBBB  FA           Mx
    DEX                             ; $82DBBC  CA           Mx
    BNE L_82DBA6                    ; $82DBBD  D0 E7        Mx
    STZ $0E7B                       ; $82DBBF  9C 7B 0E     Mx
    STZ $0E7D                       ; $82DBC2  9C 7D 0E     Mx
    STZ $0006                       ; $82DBC5  9C 06 00     Mx
    RTL                             ; $82DBC8  6B           Mx
L_82DBC9:
    LDA $02D0                       ; $82DBC9  AD D0 02     Mx
    CMP #$424E                      ; $82DBCC  C9 4E 42     Mx
    BNE L_82DBF9                    ; $82DBCF  D0 28        Mx
    LDA $1D78                       ; $82DBD1  AD 78 1D     Mx
    CMP #$424E                      ; $82DBD4  C9 4E 42     Mx
    BNE L_82DBF9                    ; $82DBD7  D0 20        Mx
    LDA $02D2                       ; $82DBD9  AD D2 02     Mx
    CMP #$4A41                      ; $82DBDC  C9 41 4A     Mx
    BNE L_82DBF9                    ; $82DBDF  D0 18        Mx
    LDA $1D7A                       ; $82DBE1  AD 7A 1D     Mx
    CMP #$4A41                      ; $82DBE4  C9 41 4A     Mx
    BNE L_82DBF9                    ; $82DBE7  D0 10        Mx
    LDA $02D4                       ; $82DBE9  AD D4 02     Mx
    CMP #$4D41                      ; $82DBEC  C9 41 4D     Mx
    BNE L_82DBF9                    ; $82DBEF  D0 08        Mx
    LDA $1D7C                       ; $82DBF1  AD 7C 1D     Mx
    CMP #$4D41                      ; $82DBF4  C9 41 4D     Mx
    BEQ L_82DC5C                    ; $82DBF7  F0 63        Mx
L_82DBF9:
    STZ $1D39                       ; $82DBF9  9C 39 1D     Mx
    LDA #$0038                      ; $82DBFC  A9 38 00     Mx
    JSL L_8A801C                    ; $82DBFF  22 1C 80 8A  Mx
    LDA #$0032                      ; $82DC03  A9 32 00     Mx
    JSL L_8A801C                    ; $82DC06  22 1C 80 8A  Mx
    LDA #$002C                      ; $82DC0A  A9 2C 00     Mx
    JSL L_8A801C                    ; $82DC0D  22 1C 80 8A  Mx
    STZ $1D72                       ; $82DC11  9C 72 1D     Mx
    LDA #$0002                      ; $82DC14  A9 02 00     Mx
    STA $1CE7                       ; $82DC17  8D E7 1C     Mx
    LDA #$0002                      ; $82DC1A  A9 02 00     Mx
    STA $1CE5                       ; $82DC1D  8D E5 1C     Mx
    LDA #$0001                      ; $82DC20  A9 01 00     Mx
    STA $1CEB                       ; $82DC23  8D EB 1C     Mx
    STZ $1CE9                       ; $82DC26  9C E9 1C     Mx
    STZ $1CED                       ; $82DC29  9C ED 1C     Mx
    STZ $1CEF                       ; $82DC2C  9C EF 1C     Mx
    STZ $1CF1                       ; $82DC2F  9C F1 1C     Mx
    STZ $1CF3                       ; $82DC32  9C F3 1C     Mx
    LDX #$3E                        ; $82DC35  A2 3E        Mx
L_82DC37:
    STZ $02D0,X                     ; $82DC37  9E D0 02     Mx
    STZ $1D78,X                     ; $82DC3A  9E 78 1D     Mx
    DEX                             ; $82DC3D  CA           Mx
    DEX                             ; $82DC3E  CA           Mx
    BPL L_82DC37                    ; $82DC3F  10 F6        Mx
    LDA #$424E                      ; $82DC41  A9 4E 42     Mx
    STA $02D0                       ; $82DC44  8D D0 02     Mx
    STA $1D78                       ; $82DC47  8D 78 1D     Mx
    LDA #$4A41                      ; $82DC4A  A9 41 4A     Mx
    STA $02D2                       ; $82DC4D  8D D2 02     Mx
    STA $1D7A                       ; $82DC50  8D 7A 1D     Mx
    LDA #$4D41                      ; $82DC53  A9 41 4D     Mx
    STA $02D4                       ; $82DC56  8D D4 02     Mx
    STA $1D7C                       ; $82DC59  8D 7C 1D     Mx
L_82DC5C:
    LDA $1CED                       ; $82DC5C  AD ED 1C     Mx
    CMP #$0006                      ; $82DC5F  C9 06 00     Mx
    BCC L_82DC67                    ; $82DC62  90 03        Mx
    STZ $1CED                       ; $82DC64  9C ED 1C     Mx
L_82DC67:
    LDA $1CEF                       ; $82DC67  AD EF 1C     Mx
    CMP #$0006                      ; $82DC6A  C9 06 00     Mx
    BCC L_82DC72                    ; $82DC6D  90 03        Mx
    STZ $1CEF                       ; $82DC6F  9C EF 1C     Mx
L_82DC72:
    LDA $1CF1                       ; $82DC72  AD F1 1C     Mx
    CMP #$0006                      ; $82DC75  C9 06 00     Mx
    BCC L_82DC7D                    ; $82DC78  90 03        Mx
    STZ $1CF1                       ; $82DC7A  9C F1 1C     Mx
L_82DC7D:
    LDA $1CF3                       ; $82DC7D  AD F3 1C     Mx
    CMP #$0006                      ; $82DC80  C9 06 00     Mx
    BCC L_82DC88                    ; $82DC83  90 03        Mx
    STZ $1CF3                       ; $82DC85  9C F3 1C     Mx
L_82DC88:
    LDA $1CE7                       ; $82DC88  AD E7 1C     Mx
    CMP #$0006                      ; $82DC8B  C9 06 00     Mx
    BCC L_82DC93                    ; $82DC8E  90 03        Mx
    STZ $1CE7                       ; $82DC90  9C E7 1C     Mx
L_82DC93:
    LDA $1CE5                       ; $82DC93  AD E5 1C     Mx
    CMP #$0006                      ; $82DC96  C9 06 00     Mx
    BCC L_82DC9E                    ; $82DC99  90 03        Mx
    STZ $1CE5                       ; $82DC9B  9C E5 1C     Mx
L_82DC9E:
    RTL                             ; $82DC9E  6B           Mx
L_82DC9F:
    REP #$10                        ; $82DC9F  C2 10        Mx
L_82DCA1:
    SEP #$20                        ; $82DCA1  E2 20        MX
L_82DCA3:
    LDX #$0000                      ; $82DCA3  A2 00 00     mX
L_82DCA6:
    STZ $0600,X                     ; $82DCA6  9E 00 06     mX
L_82DCA9:
    INX                             ; $82DCA9  E8           mX
L_82DCAA:
    CPX #$1061                      ; $82DCAA  E0 61 10     mX
L_82DCAD:
    BNE L_82DCA6                    ; $82DCAD  D0 F7        mX
L_82DCAF:
    LDX #$0000                      ; $82DCAF  A2 00 00     mX
L_82DCB2:
    STZ $0006,X                     ; $82DCB2  9E 06 00     mX
L_82DCB5:
    INX                             ; $82DCB5  E8           mX
L_82DCB6:
    CPX #$00C8                      ; $82DCB6  E0 C8 00     mX
L_82DCB9:
    BNE L_82DCB2                    ; $82DCB9  D0 F7        mX
L_82DCBB:
    REP #$20                        ; $82DCBB  C2 20        mX
L_82DCBD:
    SEP #$10                        ; $82DCBD  E2 10        MX
L_82DCBF:
    RTL                             ; $82DCBF  6B           Mx
L_82DCC0:
    REP #$20                        ; $82DCC0  C2 20        mx
    LDA #$7FC8                      ; $82DCC2  A9 C8 7F     Mx
    STA $00D1                       ; $82DCC5  8D D1 00     Mx
    LDA #$C820                      ; $82DCC8  A9 20 C8     Mx
    STA $00D0                       ; $82DCCB  8D D0 00     Mx
    LDY #$20                        ; $82DCCE  A0 20        Mx
    JSR L_82DCE1                    ; $82DCD0  20 E1 DC     Mx
    REP #$20                        ; $82DCD3  C2 20        mx
    LDA #$C920                      ; $82DCD5  A9 20 C9     Mx
    STA $00D0                       ; $82DCD8  8D D0 00     Mx
    LDY #$00                        ; $82DCDB  A0 00        Mx
    JSR L_82DCE1                    ; $82DCDD  20 E1 DC     Mx
    RTL                             ; $82DCE0  6B           mx
L_82DCE1:
    LDA [$D0],Y                     ; $82DCE1  B7 D0        Mx
    AND #$001F                      ; $82DCE3  29 1F 00     Mx
    SEC                             ; $82DCE6  38           Mx
    SBC $00A4                       ; $82DCE7  ED A4 00     Mx
    BPL L_82DCEF                    ; $82DCEA  10 03        Mx
    LDA #$0000                      ; $82DCEC  A9 00 00     Mx
L_82DCEF:
    STA $00AA                       ; $82DCEF  8D AA 00     Mx
    LDA [$D0],Y                     ; $82DCF2  B7 D0        Mx
    AND #$03E0                      ; $82DCF4  29 E0 03     Mx
    SEC                             ; $82DCF7  38           Mx
    SBC $00A6                       ; $82DCF8  ED A6 00     Mx
    BPL L_82DD00                    ; $82DCFB  10 03        Mx
    LDA #$0000                      ; $82DCFD  A9 00 00     Mx
L_82DD00:
    STA $00AC                       ; $82DD00  8D AC 00     Mx
    LDA [$D0],Y                     ; $82DD03  B7 D0        Mx
    AND #$7C00                      ; $82DD05  29 00 7C     Mx
    SEC                             ; $82DD08  38           Mx
    SBC $00A8                       ; $82DD09  ED A8 00     Mx
    BPL L_82DD11                    ; $82DD0C  10 03        Mx
    LDA #$0000                      ; $82DD0E  A9 00 00     Mx
L_82DD11:
    ORA $00AA                       ; $82DD11  0D AA 00     Mx
    ORA $00AC                       ; $82DD14  0D AC 00     Mx
    STA [$D0],Y                     ; $82DD17  97 D0        Mx
    INY                             ; $82DD19  C8           Mx
    INY                             ; $82DD1A  C8           Mx
    BNE L_82DCE1                    ; $82DD1B  D0 C4        Mx
    SEP #$20                        ; $82DD1D  E2 20        Mx
    RTS                             ; $82DD1F  60           mx
L_82DD20:
    REP #$30                        ; $82DD20  C2 30        MX
    LDA #$6178                      ; $82DD22  A9 78 61     MX
    STA $2116                       ; $82DD25  8D 16 21     MX
    LDX #$0000                      ; $82DD28  A2 00 00     MX
L_82DD2B:
    LDY #$0008                      ; $82DD2B  A0 08 00     MX
L_82DD2E:
    LDA $04E545,X                   ; $82DD2E  BF 45 E5 04  MX
    STA $2118                       ; $82DD32  8D 18 21     MX
    INX                             ; $82DD35  E8           MX
    INX                             ; $82DD36  E8           MX
    DEY                             ; $82DD37  88           MX
    BNE L_82DD2E                    ; $82DD38  D0 F4        MX
    TXA                             ; $82DD3A  8A           MX
    CLC                             ; $82DD3B  18           MX
    ADC #$0010                      ; $82DD3C  69 10 00     MX
    TAX                             ; $82DD3F  AA           MX
    CPX #$0740                      ; $82DD40  E0 40 07     MX
    BCC L_82DD2B                    ; $82DD43  90 E6        MX
    LDA #$0000                      ; $82DD45  A9 00 00     MX
    STA $2116                       ; $82DD48  8D 16 21     MX
    LDA #$0060                      ; $82DD4B  A9 60 00     MX
    STA $2117                       ; $82DD4E  8D 17 21     MX
    LDA #$0001                      ; $82DD51  A9 01 00     MX
    STA $4300                       ; $82DD54  8D 00 43     MX
    LDA #$0018                      ; $82DD57  A9 18 00     MX
    STA $4301                       ; $82DD5A  8D 01 43     MX
    LDA #$0055                      ; $82DD5D  A9 55 00     MX
    STA $4302                       ; $82DD60  8D 02 43     MX
    LDA #$00E2                      ; $82DD63  A9 E2 00     MX
    STA $4303                       ; $82DD66  8D 03 43     MX
    LDA #$0004                      ; $82DD69  A9 04 00     MX
    STA $4304                       ; $82DD6C  8D 04 43     MX
    LDA #$00F0                      ; $82DD6F  A9 F0 00     MX
    STA $4305                       ; $82DD72  8D 05 43     MX
    LDA #$0002                      ; $82DD75  A9 02 00     MX
    STA $4306                       ; $82DD78  8D 06 43     MX
    LDA #$0001                      ; $82DD7B  A9 01 00     MX
    STA $420B                       ; $82DD7E  8D 0B 42     MX
    SEP #$30                        ; $82DD81  E2 30        MX
    RTL                             ; $82DD83  6B           mx
L_82DD84:
    SEP #$10                        ; $82DD84  E2 10        MX
    JSL L_80B1A2                    ; $82DD86  22 A2 B1 80  Mx
    LDA #$0014                      ; $82DD8A  A9 14 00     Mx
    STA $00A6                       ; $82DD8D  8D A6 00     Mx
    LDA #$0400                      ; $82DD90  A9 00 04     Mx
    STA $00A4                       ; $82DD93  8D A4 00     Mx
    LDA #$29F9                      ; $82DD96  A9 F9 29     Mx
    STA $00D1                       ; $82DD99  8D D1 00     Mx
    REP #$10                        ; $82DD9C  C2 10        Mx
    LDA $0AC6                       ; $82DD9E  AD C6 0A     MX
    BEQ L_82DDAD                    ; $82DDA1  F0 0A        MX
    LDA #$F982                      ; $82DDA3  A9 82 F9     MX
    LDX #$02CE                      ; $82DDA6  A2 CE 02     MX
    JSL L_80A4D5                    ; $82DDA9  22 D5 A4 80  MX
L_82DDAD:
    LDA $0AF0                       ; $82DDAD  AD F0 0A     MX
    BEQ L_82DDE2                    ; $82DDB0  F0 30        MX
    LDA #$0000                      ; $82DDB2  A9 00 00     MX
    STA $00A6                       ; $82DDB5  8D A6 00     MX
    LDA #$005A                      ; $82DDB8  A9 5A 00     MX
    STA $1C4F                       ; $82DDBB  8D 4F 1C     MX  password_work
    SEP #$10                        ; $82DDBE  E2 10        MX
    LDX #$CE                        ; $82DDC0  A2 CE        Mx
    STX $0336                       ; $82DDC2  8E 36 03     Mx
    INX                             ; $82DDC5  E8           Mx
    STX $033A                       ; $82DDC6  8E 3A 03     Mx
    LDX #$DE                        ; $82DDC9  A2 DE        Mx
    STX $033E                       ; $82DDCB  8E 3E 03     Mx
    INX                             ; $82DDCE  E8           Mx
    STX $0342                       ; $82DDCF  8E 42 03     Mx
    LDX #$4C                        ; $82DDD2  A2 4C        Mx
    STX $0335                       ; $82DDD4  8E 35 03     Mx
    STX $0339                       ; $82DDD7  8E 39 03     Mx
    STX $033D                       ; $82DDDA  8E 3D 03     Mx
    STX $0341                       ; $82DDDD  8E 41 03     Mx
    REP #$10                        ; $82DDE0  C2 10        Mx
L_82DDE2:
    LDA #$0000                      ; $82DDE2  A9 00 00     MX
    STA $00A6                       ; $82DDE5  8D A6 00     MX
    LDA #$0C00                      ; $82DDE8  A9 00 0C     MX
    STA $00A4                       ; $82DDEB  8D A4 00     MX
    LDA #$F924                      ; $82DDEE  A9 24 F9     MX
    STA $00EE                       ; $82DDF1  8D EE 00     MX
    LDA #$F932                      ; $82DDF4  A9 32 F9     MX
    STA $00F0                       ; $82DDF7  8D F0 00     MX
    LDA #$F96E                      ; $82DDFA  A9 6E F9     MX
    STA $00F2                       ; $82DDFD  8D F2 00     MX
    LDA #$F946                      ; $82DE00  A9 46 F9     MX
    STA $00F4                       ; $82DE03  8D F4 00     MX
    LDA #$F95A                      ; $82DE06  A9 5A F9     MX
    STA $00F6                       ; $82DE09  8D F6 00     MX
    LDA $07D6                       ; $82DE0C  AD D6 07     MX
    LDX #$0540                      ; $82DE0F  A2 40 05     MX
    JSR L_82DF1A                    ; $82DE12  20 1A DF     MX
    LDA #$F924                      ; $82DE15  A9 24 F9     MX
    STA $00EE                       ; $82DE18  8D EE 00     MX
    LDA #$F932                      ; $82DE1B  A9 32 F9     MX
    STA $00F0                       ; $82DE1E  8D F0 00     MX
    LDA #$F96E                      ; $82DE21  A9 6E F9     MX
    STA $00F2                       ; $82DE24  8D F2 00     MX
    LDA #$F946                      ; $82DE27  A9 46 F9     MX
    STA $00F4                       ; $82DE2A  8D F4 00     MX
    LDA #$F95A                      ; $82DE2D  A9 5A F9     MX
    STA $00F6                       ; $82DE30  8D F6 00     MX
    LDA $08BE                       ; $82DE33  AD BE 08     MX
    LDX #$0550                      ; $82DE36  A2 50 05     MX
    JSR L_82DF1A                    ; $82DE39  20 1A DF     MX
    LDA #$F924                      ; $82DE3C  A9 24 F9     MX
    STA $00EE                       ; $82DE3F  8D EE 00     MX
    LDA #$F932                      ; $82DE42  A9 32 F9     MX
    STA $00F0                       ; $82DE45  8D F0 00     MX
    LDA #$F96E                      ; $82DE48  A9 6E F9     MX
    STA $00F2                       ; $82DE4B  8D F2 00     MX
    LDA #$F946                      ; $82DE4E  A9 46 F9     MX
    STA $00F4                       ; $82DE51  8D F4 00     MX
    LDA #$F95A                      ; $82DE54  A9 5A F9     MX
    STA $00F6                       ; $82DE57  8D F6 00     MX
    LDA $09A6                       ; $82DE5A  AD A6 09     MX
    LDX #$0560                      ; $82DE5D  A2 60 05     MX
    JSR L_82DF1A                    ; $82DE60  20 1A DF     MX
    LDA #$F924                      ; $82DE63  A9 24 F9     MX
    STA $00EE                       ; $82DE66  8D EE 00     MX
    LDA #$F932                      ; $82DE69  A9 32 F9     MX
    STA $00F0                       ; $82DE6C  8D F0 00     MX
    LDA #$F96E                      ; $82DE6F  A9 6E F9     MX
    STA $00F2                       ; $82DE72  8D F2 00     MX
    LDA #$F946                      ; $82DE75  A9 46 F9     MX
    STA $00F4                       ; $82DE78  8D F4 00     MX
    LDA #$F95A                      ; $82DE7B  A9 5A F9     MX
    STA $00F6                       ; $82DE7E  8D F6 00     MX
    LDA $0A8E                       ; $82DE81  AD 8E 0A     MX
    LDX #$0570                      ; $82DE84  A2 70 05     MX
    JSR L_82DF1A                    ; $82DE87  20 1A DF     MX
    LDX $0109                       ; $82DE8A  AE 09 01     MX
    LDA #$6008                      ; $82DE8D  A9 08 60     MX
    STA $7E2002,X                   ; $82DE90  9F 02 20 7E  MX
    LDA #$0260                      ; $82DE94  A9 60 02     MX
    STA $7E2000,X                   ; $82DE97  9F 00 20 7E  MX
    LDA #$1801                      ; $82DE9B  A9 01 18     MX
    STA $7E2004,X                   ; $82DE9E  9F 04 20 7E  MX
    LDA #$8029                      ; $82DEA2  A9 29 80     MX
    STA $7E2008,X                   ; $82DEA5  9F 08 20 7E  MX
    LDA #$F684                      ; $82DEA9  A9 84 F6     MX
    STA $7E2006,X                   ; $82DEAC  9F 06 20 7E  MX
    TXA                             ; $82DEB0  8A           MX
    CLC                             ; $82DEB1  18           MX
    ADC #$000A                      ; $82DEB2  69 0A 00     MX
    TAX                             ; $82DEB5  AA           MX
    LDA #$5560                      ; $82DEB6  A9 60 55     MX
    STA $7E2002,X                   ; $82DEB9  9F 02 20 7E  MX
    LDA #$0040                      ; $82DEBD  A9 40 00     MX
    STA $7E2000,X                   ; $82DEC0  9F 00 20 7E  MX
    LDA #$1801                      ; $82DEC4  A9 01 18     MX
    STA $7E2004,X                   ; $82DEC7  9F 04 20 7E  MX
    LDA #$807F                      ; $82DECB  A9 7F 80     MX
    STA $7E2008,X                   ; $82DECE  9F 08 20 7E  MX
    LDA #$C2C0                      ; $82DED2  A9 C0 C2     MX
    STA $7E2006,X                   ; $82DED5  9F 06 20 7E  MX
    TXA                             ; $82DED9  8A           MX
    CLC                             ; $82DEDA  18           MX
    ADC #$000A                      ; $82DEDB  69 0A 00     MX
    TAX                             ; $82DEDE  AA           MX
    LDA #$56A0                      ; $82DEDF  A9 A0 56     MX
    STA $7E2002,X                   ; $82DEE2  9F 02 20 7E  MX
    LDA #$0140                      ; $82DEE6  A9 40 01     MX
    STA $7E2000,X                   ; $82DEE9  9F 00 20 7E  MX
    LDA #$1801                      ; $82DEED  A9 01 18     MX
    STA $7E2004,X                   ; $82DEF0  9F 04 20 7E  MX
    LDA #$807F                      ; $82DEF4  A9 7F 80     MX
    STA $7E2008,X                   ; $82DEF7  9F 08 20 7E  MX
    LDA #$C540                      ; $82DEFB  A9 40 C5     MX
    STA $7E2006,X                   ; $82DEFE  9F 06 20 7E  MX
    TXA                             ; $82DF02  8A           MX
    CLC                             ; $82DF03  18           MX
    ADC #$000A                      ; $82DF04  69 0A 00     MX
    TAX                             ; $82DF07  AA           MX
    STA $0109                       ; $82DF08  8D 09 01     MX
    TAX                             ; $82DF0B  AA           MX
    AND #$0000                      ; $82DF0C  29 00 00     MX
    STA $7E2000,X                   ; $82DF0F  9F 00 20 7E  MX
    LDA #$003C                      ; $82DF13  A9 3C 00     MX
    STA $0B50                       ; $82DF16  8D 50 0B     MX
    RTL                             ; $82DF19  6B           MX
L_82DF1A:
    BIT #$0002                      ; $82DF1A  89 02 00     MX
    BNE L_82DF22                    ; $82DF1D  D0 03        MX
    STZ $00EE                       ; $82DF1F  9C EE 00     MX
L_82DF22:
    BIT #$0001                      ; $82DF22  89 01 00     MX
    BNE L_82DF2A                    ; $82DF25  D0 03        MX
    STZ $00F0                       ; $82DF27  9C F0 00     MX
L_82DF2A:
    BIT #$0010                      ; $82DF2A  89 10 00     MX
    BNE L_82DF32                    ; $82DF2D  D0 03        MX
    STZ $00F2                       ; $82DF2F  9C F2 00     MX
L_82DF32:
    BIT #$0004                      ; $82DF32  89 04 00     MX
    BNE L_82DF3A                    ; $82DF35  D0 03        MX
    STZ $00F4                       ; $82DF37  9C F4 00     MX
L_82DF3A:
    BIT #$0008                      ; $82DF3A  89 08 00     MX
    BNE L_82DF42                    ; $82DF3D  D0 03        MX
    STZ $00F6                       ; $82DF3F  9C F6 00     MX
L_82DF42:
    LDY #$0000                      ; $82DF42  A0 00 00     MX
    STZ $00B2                       ; $82DF45  9C B2 00     MX
L_82DF48:
    LDA $00EE,Y                     ; $82DF48  B9 EE 00     MX
    BEQ L_82DF5E                    ; $82DF4B  F0 11        MX
    PHX                             ; $82DF4D  DA           MX
    PHY                             ; $82DF4E  5A           MX
    JSL L_80A4D5                    ; $82DF4F  22 D5 A4 80  MX
    INC $00B2                       ; $82DF53  EE B2 00     MX
    PLY                             ; $82DF56  7A           MX
    PLX                             ; $82DF57  FA           MX
    TXA                             ; $82DF58  8A           MX
    CLC                             ; $82DF59  18           MX
    ADC #$0040                      ; $82DF5A  69 40 00     MX
    TAX                             ; $82DF5D  AA           MX
L_82DF5E:
    INY                             ; $82DF5E  C8           MX
    INY                             ; $82DF5F  C8           MX
    CPY #$000A                      ; $82DF60  C0 0A 00     MX
    BEQ L_82DF6D                    ; $82DF63  F0 08        MX
    LDA $00B2                       ; $82DF65  AD B2 00     MX
    CMP #$0004                      ; $82DF68  C9 04 00     MX
    BNE L_82DF48                    ; $82DF6B  D0 DB        MX
L_82DF6D:
    RTS                             ; $82DF6D  60           MX
    db $01,$01,$01,$01,$00,$00,$01,$00,$00,$00,$01,$00,$01,$00,$00,$00 ; $82DF6E
    db $00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82DF7E
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00 ; $82DF8E
    db $01,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00 ; $82DF9E
    db $00,$00,$01,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82DFAE
    db $00,$00,$01,$00,$00,$00,$01,$00,$00,$00,$01,$00,$01,$00,$01,$00 ; $82DFBE
    db $00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$01,$00,$01,$00 ; $82DFCE
    db $01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00 ; $82DFDE
    db $01,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82DFEE
    db $01,$00,$01,$00,$01,$00,$00,$00,$01,$00,$01,$00,$01,$00,$00,$00 ; $82DFFE
    db $00,$00,$01,$00,$01,$00,$01,$00,$00,$00                         ; $82E00E
L_82E018:
    REP #$30                        ; $82E018  C2 30        MX
    STA $2116                       ; $82E01A  8D 16 21     MX
    LDY #$0000                      ; $82E01D  A0 00 00     MX
L_82E020:
    LDX #$0008                      ; $82E020  A2 08 00     MX
L_82E023:
    LDA [$D0],Y                     ; $82E023  B7 D0        MX
    STA $2118                       ; $82E025  8D 18 21     MX
    INY                             ; $82E028  C8           MX
    INY                             ; $82E029  C8           MX
    DEX                             ; $82E02A  CA           MX
    BNE L_82E023                    ; $82E02B  D0 F6        MX
    TYA                             ; $82E02D  98           MX
    CLC                             ; $82E02E  18           MX
    ADC #$0010                      ; $82E02F  69 10 00     MX
    TAY                             ; $82E032  A8           MX
    CPY #$02C0                      ; $82E033  C0 C0 02     MX
    BCC L_82E020                    ; $82E036  90 E8        MX
    SEP #$30                        ; $82E038  E2 30        MX
    RTL                             ; $82E03A  6B           mx
L_82E03B:
    REP #$30                        ; $82E03B  C2 30        MX
    STA $2116                       ; $82E03D  8D 16 21     MX
    LDY #$0000                      ; $82E040  A0 00 00     MX
L_82E043:
    LDX #$0008                      ; $82E043  A2 08 00     MX
L_82E046:
    LDA [$D0],Y                     ; $82E046  B7 D0        MX
    STA $2118                       ; $82E048  8D 18 21     MX
    INY                             ; $82E04B  C8           MX
    INY                             ; $82E04C  C8           MX
    DEX                             ; $82E04D  CA           MX
    BNE L_82E046                    ; $82E04E  D0 F6        MX
    TYA                             ; $82E050  98           MX
    CLC                             ; $82E051  18           MX
    ADC #$0010                      ; $82E052  69 10 00     MX
    TAY                             ; $82E055  A8           MX
    CPY #$01C0                      ; $82E056  C0 C0 01     MX
    BCC L_82E043                    ; $82E059  90 E8        MX
    SEP #$30                        ; $82E05B  E2 30        MX
    RTL                             ; $82E05D  6B           mx
L_82E05E:
    REP #$30                        ; $82E05E  C2 30        MX
    PHB                             ; $82E060  8B           MX
    LDX $00D0                       ; $82E061  AE D0 00     MX
    LDY #$0610                      ; $82E064  A0 10 06     MX
    LDA #$005F                      ; $82E067  A9 5F 00     MX
    MVN $17,$7F                     ; $82E06A  54 7F 17     MX
    PLB                             ; $82E06D  AB           MX
    STZ $0600                       ; $82E06E  9C 00 06     MX
    STZ $0602                       ; $82E071  9C 02 06     MX
    STZ $0604                       ; $82E074  9C 04 06     MX
    STZ $0606                       ; $82E077  9C 06 06     MX
    STZ $0608                       ; $82E07A  9C 08 06     MX
    STZ $060A                       ; $82E07D  9C 0A 06     MX
    STZ $060C                       ; $82E080  9C 0C 06     MX
    STZ $060E                       ; $82E083  9C 0E 06     MX
    RTL                             ; $82E086  6B           MX
L_82E087:
    LDA $0CD5                       ; $82E087  AD D5 0C     Mx
    CMP #$0001                      ; $82E08A  C9 01 00     Mx
    BNE L_82E092                    ; $82E08D  D0 03        Mx
    JMP L_82E125                    ; $82E08F  4C 25 E1     Mx
L_82E092:
    CMP #$0003                      ; $82E092  C9 03 00     Mx
    BCS L_82E09A                    ; $82E095  B0 03        Mx
    JMP L_82E0B8                    ; $82E097  4C B8 E0     Mx
L_82E09A:
    LDA $0CB5                       ; $82E09A  AD B5 0C     Mx
    CMP $0CBB                       ; $82E09D  CD BB 0C     Mx
    BEQ L_82E0A5                    ; $82E0A0  F0 03        Mx
    JMP L_82E0F8                    ; $82E0A2  4C F8 E0     Mx
L_82E0A5:
    LDA $0CB7                       ; $82E0A5  AD B7 0C     Mx
    CMP $0CBD                       ; $82E0A8  CD BD 0C     Mx
    BEQ L_82E0B0                    ; $82E0AB  F0 03        Mx
L_82E0AD:
    JMP L_82E0F8                    ; $82E0AD  4C F8 E0     Mx
L_82E0B0:
    LDA $0CB9                       ; $82E0B0  AD B9 0C     Mx
    CMP $0CBF                       ; $82E0B3  CD BF 0C     Mx
    BNE L_82E0AD                    ; $82E0B6  D0 F5        Mx
L_82E0B8:
    REP #$10                        ; $82E0B8  C2 10        Mx
    LDA $0CD5                       ; $82E0BA  AD D5 0C     MX
    ASL                             ; $82E0BD  0A           MX
    ASL                             ; $82E0BE  0A           MX
    ASL                             ; $82E0BF  0A           MX
    TAX                             ; $82E0C0  AA           MX
    LDA #$0095                      ; $82E0C1  A9 95 00     MX
    STA $00A6                       ; $82E0C4  8D A6 00     MX
    LDA #$0C00                      ; $82E0C7  A9 00 0C     MX
    STA $00A4                       ; $82E0CA  8D A4 00     MX
    LDA $82E1B3,X                   ; $82E0CD  BF B3 E1 82  MX
    STA $00D1                       ; $82E0D1  8D D1 00     MX
    LDA $82E1B2,X                   ; $82E0D4  BF B2 E1 82  MX
    PHX                             ; $82E0D8  DA           MX
    LDX #$024C                      ; $82E0D9  A2 4C 02     MX
    JSL L_80A4D5                    ; $82E0DC  22 D5 A4 80  MX
    PLX                             ; $82E0E0  FA           MX
    LDA $82E1B8,X                   ; $82E0E1  BF B8 E1 82  MX
    AND #$00FF                      ; $82E0E5  29 FF 00     MX
    ORA #$8000                      ; $82E0E8  09 00 80     MX
    STA $00AE                       ; $82E0EB  8D AE 00     MX
    LDA $82E1B6,X                   ; $82E0EE  BF B6 E1 82  MX
    STA $00A8                       ; $82E0F2  8D A8 00     MX
    JMP L_82E14F                    ; $82E0F5  4C 4F E1     MX
L_82E0F8:
    REP #$10                        ; $82E0F8  C2 10        Mx
    LDA #$0095                      ; $82E0FA  A9 95 00     MX
    STA $00A6                       ; $82E0FD  8D A6 00     MX
    LDA #$0C00                      ; $82E100  A9 00 0C     MX
    STA $00A4                       ; $82E103  8D A4 00     MX
    LDA #$04EC                      ; $82E106  A9 EC 04     MX
    STA $00D1                       ; $82E109  8D D1 00     MX
    LDA #$ECCD                      ; $82E10C  A9 CD EC     MX
    LDX #$024C                      ; $82E10F  A2 4C 02     MX
    JSL L_80A4D5                    ; $82E112  22 D5 A4 80  MX
    LDA #$ECED                      ; $82E116  A9 ED EC     MX
    STA $00A8                       ; $82E119  8D A8 00     MX
    LDA #$8004                      ; $82E11C  A9 04 80     MX
    STA $00AE                       ; $82E11F  8D AE 00     MX
    JMP L_82E14F                    ; $82E122  4C 4F E1     MX
L_82E125:
    REP #$10                        ; $82E125  C2 10        Mx
    LDA #$0095                      ; $82E127  A9 95 00     MX
    STA $00A6                       ; $82E12A  8D A6 00     MX
    LDA #$0C00                      ; $82E12D  A9 00 0C     MX
    STA $00A4                       ; $82E130  8D A4 00     MX
    LDA #$04ED                      ; $82E133  A9 ED 04     MX
    STA $00D1                       ; $82E136  8D D1 00     MX
    LDA #$ED3D                      ; $82E139  A9 3D ED     MX
    LDX #$024C                      ; $82E13C  A2 4C 02     MX
    JSL L_80A4D5                    ; $82E13F  22 D5 A4 80  MX
    LDA #$ED5D                      ; $82E143  A9 5D ED     MX
    STA $00A8                       ; $82E146  8D A8 00     MX
    LDA #$8004                      ; $82E149  A9 04 80     MX
    STA $00AE                       ; $82E14C  8D AE 00     MX
L_82E14F:
    LDX $0109                       ; $82E14F  AE 09 01     MX
    LDA #$64B0                      ; $82E152  A9 B0 64     MX
    STA $7E2002,X                   ; $82E155  9F 02 20 7E  MX
    LDA #$00E0                      ; $82E159  A9 E0 00     MX
    STA $7E2000,X                   ; $82E15C  9F 00 20 7E  MX
    LDA #$1801                      ; $82E160  A9 01 18     MX
    STA $7E2004,X                   ; $82E163  9F 04 20 7E  MX
    LDA $00AE                       ; $82E167  AD AE 00     MX
    STA $7E2008,X                   ; $82E16A  9F 08 20 7E  MX
    LDA $00A8                       ; $82E16E  AD A8 00     MX
    STA $7E2006,X                   ; $82E171  9F 06 20 7E  MX
    TXA                             ; $82E175  8A           MX
    CLC                             ; $82E176  18           MX
    ADC #$000A                      ; $82E177  69 0A 00     MX
    TAX                             ; $82E17A  AA           MX
    LDA #$5520                      ; $82E17B  A9 20 55     MX
    STA $7E2002,X                   ; $82E17E  9F 02 20 7E  MX
    LDA #$0040                      ; $82E182  A9 40 00     MX
    STA $7E2000,X                   ; $82E185  9F 00 20 7E  MX
    LDA #$1801                      ; $82E189  A9 01 18     MX
    STA $7E2004,X                   ; $82E18C  9F 04 20 7E  MX
    LDA #$807F                      ; $82E190  A9 7F 80     MX
    STA $7E2008,X                   ; $82E193  9F 08 20 7E  MX
    LDA #$C240                      ; $82E197  A9 40 C2     MX
    STA $7E2006,X                   ; $82E19A  9F 06 20 7E  MX
    TXA                             ; $82E19E  8A           MX
    CLC                             ; $82E19F  18           MX
    ADC #$000A                      ; $82E1A0  69 0A 00     MX
    TAX                             ; $82E1A3  AA           MX
    STA $0109                       ; $82E1A4  8D 09 01     MX
    TAX                             ; $82E1A7  AA           MX
    AND #$0000                      ; $82E1A8  29 00 00     MX
    STA $7E2000,X                   ; $82E1AB  9F 00 20 7E  MX
    SEP #$10                        ; $82E1AF  E2 10        MX
    RTL                             ; $82E1B1  6B           Mx
    db $02,$F9,$2C,$00,$22,$F9,$2C,$00,$02,$F9,$2C,$00,$22,$F9,$2C,$00 ; $82E1B2
    db $02,$FA,$2C,$00,$22,$FA,$2C,$00,$02,$FB,$2C,$00,$22,$FB,$2C,$00 ; $82E1C2
    db $02,$FC,$2C,$00,$22,$FC,$2C,$00,$02,$FC,$2C,$00,$22,$FC,$2C,$00 ; $82E1D2
    db $02,$FC,$2C,$00,$22,$FC,$2C,$00,$02,$FC,$2C,$00,$22,$FC,$2C,$00 ; $82E1E2
    db $02,$FC,$2C,$00,$22,$FC,$2C,$00,$02,$FC,$2C,$00,$22,$FC,$2C,$00 ; $82E1F2
    db $02,$FC,$2C,$00,$22,$FC,$2C,$00,$CE,$C1,$01,$1B,$0E,$19,$00,$60 ; $82E202
    db $00,$00,$00,$01,$17,$1E,$1D,$00,$50,$00,$02,$00,$01,$17,$2B,$1D ; $82E212
    db $00,$43,$00,$04,$00,$00,$11,$2A,$2B,$00,$4C,$00,$06,$00,$80,$11 ; $82E222
    db $2C,$2B,$00,$4A,$00,$16,$00,$01,$00,$00,$03,$00,$04,$0B,$03,$04 ; $82E232
    db $07,$08,$0C,$00,$08,$14,$18,$01,$01,$02,$02,$04,$07,$0B,$0C,$07 ; $82E242
    db $08,$0F,$10,$0F,$10,$1F,$21,$04,$C0,$14,$E2,$BD,$62,$54,$2B,$C2 ; $82E252
    db $B5,$53,$2C,$D2,$2C,$F6,$08,$BE,$80,$5D,$40,$1A,$02,$1A,$82,$A2 ; $82E262
    db $2A,$B6,$36,$7E,$7E,$FE,$FE,$01,$06,$04,$06,$06,$04,$06,$05,$04 ; $82E272
    db $07,$02,$07,$00,$03,$01,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $82E282
    db $01,$01,$01,$00,$00,$02,$00,$C8,$36,$E1,$1E,$F8,$07,$E6,$01,$FC ; $82E292
    db $9D,$56,$11,$56,$01,$E6,$F1,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$63 ; $82E2A2
    db $FF,$EF,$F0,$FF,$E0,$1F,$E0,$6B,$D8,$3F,$C0,$40,$80,$80,$00,$00 ; $82E2B2
    db $00,$00,$00,$00,$00,$00,$00,$7B,$C4,$3F,$C0,$3F,$C0,$00,$80,$00 ; $82E2C2
    db $00,$00,$00,$00,$00,$00,$00,$62,$10,$88,$01,$08,$00,$1A,$10,$00 ; $82E2D2
    db $0A,$18,$10,$14,$00,$10,$04,$FF,$00,$EF,$00,$CE,$00,$1E,$00,$0E ; $82E2E2
    db $10,$1C,$00,$1C,$00,$1C,$00,$00,$00,$0D,$0F,$1C,$1F,$1D,$1E,$1A ; $82E2F2
    db $1C,$14,$18,$14,$18,$08,$10,$00,$00,$0D,$0F,$1C,$1F,$1C,$1F,$18 ; $82E302
    db $1E,$10,$1C,$10,$1C,$00,$18,$2B,$27,$56,$6E,$C6,$86,$46,$96,$30 ; $82E312
    db $0F,$00,$00,$0E,$32,$7D,$02,$2C,$53,$79,$07,$F9,$07,$F6,$09,$7F ; $82E322
    db $00,$3F,$00,$01,$03,$1F,$1F,$74,$08,$68,$10,$68,$00,$50,$68,$70 ; $82E332
    db $8C,$03,$00,$24,$22,$80,$40,$FC,$FC,$F8,$F8,$E8,$D0,$78,$80,$FC ; $82E342
    db $02,$FF,$00,$DE,$E0,$C0,$C0,$02,$00,$00,$00,$01,$00,$00,$00,$02 ; $82E352
    db $03,$6B,$D8,$3F,$C0,$40,$80,$03,$00,$01,$00,$01,$00,$00,$00,$03 ; $82E362
    db $00,$7B,$C4,$3F,$C0,$3F,$C0,$42,$31,$22,$11,$32,$11,$13,$10,$82 ; $82E372
    db $00,$62,$10,$88,$01,$08,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$EF ; $82E382
    db $10,$FF,$00,$EF,$00,$CE,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82E392
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82E3A2
    db $00,$00,$00,$00,$00,$00,$00,$08,$00,$10,$18,$10,$38,$00,$38,$30 ; $82E3B2
    db $3C,$3C,$7C,$3E,$7E,$5F,$3F,$18,$00,$10,$18,$10,$38,$00,$38,$30 ; $82E3C2
    db $3C,$3C,$7C,$3E,$7E,$1F,$7F,$1C,$1F,$1D,$1E,$1A,$1C,$14,$18,$14 ; $82E3D2
    db $18,$08,$10,$10,$00,$00,$00,$1C,$1F,$1C,$1F,$18,$1E,$10,$1C,$10 ; $82E3E2
    db $1C,$00,$18,$00,$10,$00,$00,$CE,$C1,$01,$1C,$0E,$18,$00,$60,$00 ; $82E3F2
    db $00,$00,$01,$19,$1E,$1B,$00,$50,$00,$02,$00,$81,$16,$2A,$1E,$00 ; $82E402
    db $44,$00,$04,$00,$00,$03,$02,$03,$05,$07,$12,$15,$00,$08,$08,$11 ; $82E412
    db $21,$31,$0B,$30,$01,$01,$02,$04,$07,$08,$17,$08,$0F,$10,$1F,$20 ; $82E422
    db $3D,$02,$3F,$40,$08,$84,$84,$4E,$94,$C2,$0E,$F0,$DC,$20,$3A,$42 ; $82E432
    db $46,$FC,$36,$04,$78,$00,$BA,$82,$32,$0A,$56,$46,$56,$46,$6C,$AE ; $82E442
    db $B8,$7C,$FA,$7C,$1B,$0C,$02,$0D,$0B,$0E,$0A,$07,$0A,$04,$06,$00 ; $82E452
    db $01,$00,$00,$00,$01,$01,$01,$01,$00,$00,$00,$00,$01,$00,$03,$00 ; $82E462
    db $01,$00,$00,$00,$88,$08,$B8,$38,$50,$90,$D0,$10,$A0,$60,$50,$30 ; $82E472
    db $60,$10,$B8,$08,$F0,$F8,$C0,$F8,$E0,$F0,$60,$70,$E0,$10,$F0,$00 ; $82E482
    db $F0,$08,$F8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82E492
    db $00,$00,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82E4A2
    db $00,$00,$01,$01,$14,$08,$19,$10,$02,$30,$3C,$40,$68,$80,$20,$80 ; $82E4B2
    db $90,$C0,$E0,$E0,$1F,$00,$1F,$00,$3E,$00,$7C,$00,$F8,$00,$70,$80 ; $82E4C2
    db $B0,$C0,$E0,$E0,$32,$41,$80,$C2,$7A,$82,$CF,$0F,$3E,$3E,$1B,$68 ; $82E4D2
    db $DA,$06,$9B,$64,$7F,$00,$FF,$00,$FD,$03,$F0,$0F,$41,$3F,$07,$0F ; $82E4E2
    db $31,$33,$1F,$1F,$1A,$28,$42,$40,$6A,$00,$A9,$81,$60,$61,$62,$60 ; $82E4F2
    db $C0,$80,$80,$00,$F6,$78,$BE,$70,$EE,$E1,$6F,$E0,$8F,$E0,$86,$E0 ; $82E502
    db $00,$80,$C0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82E512
    db $00,$01,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82E522
    db $01,$00,$03,$00,$10,$08,$28,$84,$1C,$80,$E4,$10,$A0,$40,$C8,$80 ; $82E532
    db $10,$80,$E0,$00,$F8,$04,$FC,$00,$FC,$00,$FC,$00,$FC,$00,$F8,$00 ; $82E542
    db $F0,$00,$E0,$00,$00,$03,$02,$07,$05,$0B,$0D,$0B,$1F,$1D,$06,$1D ; $82E552
    db $01,$0E,$00,$01,$00,$03,$02,$07,$01,$0F,$09,$0F,$1D,$1F,$04,$1F ; $82E562
    db $00,$0F,$00,$01,$40,$E0,$00,$C0,$00,$C0,$00,$C0,$C0,$C0,$E0,$E0 ; $82E572
    db $E0,$E0,$60,$E0,$40,$E0,$00,$C0,$00,$C0,$00,$C0,$C0,$C0,$E0,$E0 ; $82E582
    db $E0,$E0,$60,$E0,$CE,$C1,$01,$1C,$0D,$18,$00,$61,$00,$00,$00,$01 ; $82E592
    db $19,$1D,$1B,$00,$51,$00,$02,$00,$01,$1C,$2C,$18,$00,$42,$00,$04 ; $82E5A2
    db $00,$00,$14,$2D,$28,$00,$49,$00,$06,$00,$80,$14,$33,$28,$00,$43 ; $82E5B2
    db $00,$16,$00,$00,$03,$03,$01,$0C,$0F,$10,$1F,$0C,$13,$2B,$30,$12 ; $82E5C2
    db $20,$51,$60,$03,$03,$00,$0C,$0E,$10,$1E,$20,$1E,$20,$3E,$00,$3D ; $82E5D2
    db $01,$7F,$03,$80,$C0,$08,$C4,$B6,$4A,$EC,$02,$86,$58,$32,$4C,$30 ; $82E5E2
    db $48,$B6,$44,$7C,$00,$B4,$84,$B4,$84,$A4,$94,$B4,$84,$C4,$C4,$FE ; $82E5F2
    db $FC,$FA,$FC,$15,$0A,$17,$0D,$06,$0D,$01,$0F,$05,$0B,$04,$00,$04 ; $82E602
    db $00,$06,$00,$03,$03,$00,$01,$00,$00,$00,$00,$00,$00,$07,$00,$07 ; $82E612
    db $00,$07,$00,$F8,$00,$C8,$00,$D0,$10,$38,$F8,$F0,$B0,$20,$60,$60 ; $82E622
    db $20,$40,$20,$F8,$F8,$F8,$F8,$E8,$F8,$40,$78,$40,$70,$E0,$10,$E0 ; $82E632
    db $10,$E0,$10,$61,$00,$41,$00,$82,$03,$00,$01,$01,$01,$00,$00,$00 ; $82E642
    db $00,$00,$00,$E1,$02,$C1,$02,$83,$00,$01,$00,$01,$00,$00,$00,$00 ; $82E652
    db $00,$00,$00,$40,$00,$40,$00,$00,$40,$20,$60,$40,$00,$A0,$20,$20 ; $82E662
    db $80,$00,$00,$C0,$00,$C0,$00,$C0,$00,$E0,$00,$C0,$20,$E0,$00,$E0 ; $82E672
    db $00,$60,$00,$02,$04,$00,$04,$05,$08,$1E,$18,$2C,$3C,$60,$7C,$F0 ; $82E682
    db $F8,$70,$F8,$07,$00,$07,$00,$03,$0C,$18,$1E,$2C,$3C,$60,$7C,$F0 ; $82E692
    db $F8,$70,$F8,$29,$30,$2A,$32,$58,$60,$C7,$87,$4E,$3F,$7E,$00,$61 ; $82E6A2
    db $81,$05,$04,$3F,$47,$3D,$47,$7F,$07,$F8,$0F,$7F,$80,$7F,$80,$FE ; $82E6B2
    db $01,$FB,$07,$C8,$1B,$BB,$29,$50,$50,$C2,$C0,$C0,$30,$20,$00,$60 ; $82E6C2
    db $00,$00,$C0,$F7,$F8,$D7,$F8,$A6,$F1,$C2,$30,$F0,$00,$E0,$20,$E0 ; $82E6D2
    db $E0,$00,$00,$01,$04,$04,$00,$00,$04,$0C,$08,$00,$08,$09,$00,$02 ; $82E6E2
    db $10,$6C,$40,$07,$00,$07,$00,$07,$00,$0F,$00,$0F,$00,$0F,$10,$1E ; $82E6F2
    db $20,$7C,$00,$50,$30,$B0,$10,$20,$10,$00,$10,$50,$00,$58,$08,$00 ; $82E702
    db $58,$28,$00,$F0,$00,$F0,$00,$F0,$08,$F0,$08,$F0,$08,$78,$00,$78 ; $82E712
    db $00,$38,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82E722
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82E732
    db $00,$00,$00,$00,$00,$10,$50,$30,$78,$20,$38,$39,$3F,$1E,$1F,$1F ; $82E742
    db $1E,$08,$1E,$60,$00,$70,$10,$30,$78,$20,$38,$39,$3F,$1E,$1F,$1E ; $82E752
    db $1F,$08,$1E,$F0,$F8,$70,$F8,$30,$78,$18,$38,$1C,$1C,$00,$0C,$00 ; $82E762
    db $00,$00,$00,$F0,$F8,$70,$F8,$30,$78,$18,$38,$1C,$1C,$00,$0C,$00 ; $82E772
    db $00,$00,$00,$CE,$C1,$01,$1C,$0E,$18,$00,$60,$00,$00,$00,$01,$18 ; $82E782
    db $1E,$1C,$00,$50,$00,$02,$00,$01,$1E,$2C,$16,$00,$42,$00,$04,$00 ; $82E792
    db $80,$11,$2B,$2B,$00,$4B,$00,$06,$00,$04,$03,$02,$01,$0C,$0F,$13 ; $82E7A2
    db $1C,$07,$08,$09,$12,$2A,$31,$21,$38,$02,$02,$03,$0F,$0D,$11,$1D ; $82E7B2
    db $21,$0D,$31,$1D,$21,$3F,$03,$3F,$03,$14,$08,$84,$18,$E6,$9A,$4C ; $82E7C2
    db $B0,$3C,$C2,$44,$A6,$08,$F8,$A3,$41,$F8,$0A,$78,$0A,$7A,$08,$78 ; $82E7D2
    db $0A,$AA,$88,$FA,$FC,$F6,$F9,$FF,$F0,$03,$06,$03,$06,$02,$07,$06 ; $82E7E2
    db $07,$02,$01,$02,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00 ; $82E7F2
    db $00,$00,$00,$01,$00,$01,$00,$01,$00,$B6,$10,$D4,$4C,$C4,$02,$73 ; $82E802
    db $80,$94,$32,$30,$10,$2C,$1C,$98,$08,$76,$0E,$3C,$42,$3E,$21,$3F ; $82E812
    db $30,$7E,$08,$F0,$08,$FC,$00,$F8,$04,$02,$00,$02,$00,$02,$00,$02 ; $82E822
    db $00,$02,$00,$01,$02,$01,$02,$01,$02,$E3,$00,$03,$00,$03,$00,$03 ; $82E832
    db $00,$03,$00,$03,$00,$03,$00,$03,$00,$00,$00,$80,$00,$80,$00,$00 ; $82E842
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$80,$00,$80 ; $82E852
    db $00,$80,$00,$80,$00,$80,$00,$80,$00,$1F,$1E,$1F,$1C,$1C,$1A,$1C ; $82E862
    db $18,$18,$1C,$18,$18,$18,$18,$10,$10,$1F,$1E,$1C,$1F,$18,$1E,$18 ; $82E872
    db $1C,$18,$1C,$18,$18,$18,$18,$10,$10,$11,$18,$1A,$12,$32,$22,$03 ; $82E882
    db $23,$0D,$20,$4A,$3E,$55,$6C,$16,$62,$1F,$23,$1D,$23,$3D,$03,$3C ; $82E892
    db $03,$3F,$03,$3D,$03,$3F,$03,$0E,$01,$D2,$11,$F0,$10,$60,$80,$60 ; $82E8A2
    db $00,$C0,$20,$40,$A0,$E0,$00,$E0,$00,$EF,$F0,$E6,$F0,$E0,$E0,$E0 ; $82E8B2
    db $E0,$E0,$E0,$E0,$E0,$C0,$C0,$E0,$E0,$01,$00,$01,$00,$03,$02,$02 ; $82E8C2
    db $02,$2C,$E8,$D8,$00,$80,$00,$00,$00,$01,$00,$01,$00,$03,$00,$03 ; $82E8D2
    db $04,$EF,$10,$FF,$00,$7F,$80,$00,$00,$50,$08,$0E,$06,$00,$04,$26 ; $82E8E2
    db $02,$14,$02,$4A,$00,$08,$00,$0A,$00,$F8,$04,$FE,$00,$FC,$02,$FE ; $82E8F2
    db $00,$DE,$00,$CE,$00,$8E,$00,$0E,$00,$01,$00,$00,$01,$00,$01,$00 ; $82E902
    db $01,$00,$01,$00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$00,$01,$00 ; $82E912
    db $01,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$80,$40,$40,$C0,$C0 ; $82E922
    db $E0,$00,$E0,$70,$F8,$7C,$FE,$7A,$7C,$80,$00,$80,$40,$40,$C0,$C0 ; $82E932
    db $E0,$00,$E0,$70,$F8,$7C,$FE,$78,$7E,$F0,$F8,$70,$F8,$30,$78,$18 ; $82E942
    db $38,$1C,$1C,$00,$0C,$00,$00,$00,$00,$F0,$F8,$70,$F8,$30,$78,$18 ; $82E952
    db $38,$1C,$1C,$00,$0C,$00,$00,$00,$00,$CE,$C1,$01,$1B,$0E,$19,$00 ; $82E962
    db $60,$00,$00,$00,$01,$19,$1E,$1B,$00,$50,$00,$02,$00,$81,$19,$2C ; $82E972
    db $1B,$00,$42,$00,$04,$00,$00,$01,$01,$02,$04,$01,$03,$03,$02,$0B ; $82E982
    db $00,$16,$04,$16,$1A,$0C,$01,$01,$01,$01,$00,$02,$03,$04,$0B,$0C ; $82E992
    db $17,$18,$17,$18,$1F,$10,$C0,$04,$00,$C6,$8B,$47,$2C,$C3,$5F,$A0 ; $82E9A2
    db $FE,$00,$40,$3C,$88,$B0,$3C,$04,$BC,$85,$B5,$84,$75,$44,$55,$44 ; $82E9B2
    db $44,$44,$FC,$7C,$78,$F8,$0A,$0C,$0E,$0C,$02,$0E,$0B,$0E,$07,$09 ; $82E9C2
    db $00,$00,$04,$00,$02,$00,$03,$02,$01,$00,$01,$01,$00,$00,$00,$00 ; $82E9D2
    db $07,$00,$07,$00,$03,$00,$E0,$18,$28,$10,$1C,$00,$40,$4C,$7C,$30 ; $82E9E2
    db $44,$20,$48,$28,$38,$18,$F8,$78,$B8,$78,$BC,$7C,$FC,$3C,$EC,$1C ; $82E9F2
    db $FC,$0C,$E4,$1C,$F8,$04,$1C,$70,$08,$70,$10,$60,$10,$60,$20,$40 ; $82EA02
    db $40,$00,$00,$00,$00,$00,$13,$7C,$07,$78,$00,$70,$00,$70,$00,$60 ; $82EA12
    db $00,$40,$00,$00,$00,$00,$58,$00,$08,$10,$00,$10,$20,$10,$30,$00 ; $82EA22
    db $00,$A0,$60,$80,$40,$80,$F8,$00,$F8,$00,$70,$00,$70,$00,$70,$00 ; $82EA32
    db $E0,$00,$E0,$00,$C0,$00,$1A,$0C,$15,$27,$07,$35,$31,$05,$18,$2C ; $82EA42
    db $32,$0C,$30,$04,$1B,$20,$1F,$10,$36,$39,$36,$39,$36,$39,$3F,$31 ; $82EA52
    db $3F,$31,$1F,$11,$0E,$08,$C0,$B0,$52,$26,$58,$18,$D0,$10,$90,$40 ; $82EA62
    db $C0,$20,$80,$40,$00,$C0,$78,$F8,$FE,$F9,$E7,$F8,$E7,$F0,$F0,$F0 ; $82EA72
    db $E0,$E0,$C0,$C0,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82EA82
    db $2C,$7B,$1C,$70,$08,$70,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82EA92
    db $2B,$7C,$13,$7C,$07,$78,$28,$10,$B8,$04,$08,$0C,$40,$04,$5C,$08 ; $82EAA2
    db $90,$08,$58,$00,$08,$10,$F8,$04,$FC,$00,$7C,$00,$74,$08,$7C,$00 ; $82EAB2
    db $FC,$00,$F8,$00,$F8,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01 ; $82EAC2
    db $01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01 ; $82EAD2
    db $01,$01,$00,$01,$00,$00,$80,$40,$C0,$C0,$80,$C0,$E0,$E0,$F0,$F0 ; $82EAE2
    db $F0,$F0,$78,$F8,$00,$00,$00,$C0,$C0,$C0,$80,$C0,$E0,$E0,$F0,$F0 ; $82EAF2
    db $F0,$F0,$78,$F8,$00,$00,$CE,$C1,$01,$1B,$0E,$19,$00,$60,$00,$00 ; $82EB02
    db $00,$01,$1B,$1E,$19,$00,$50,$00,$02,$00,$81,$18,$2B,$1C,$00,$43 ; $82EB12
    db $00,$04,$00,$00,$01,$02,$00,$02,$03,$00,$05,$04,$09,$0F,$06,$04 ; $82EB22
    db $1E,$00,$12,$00,$00,$00,$01,$03,$00,$01,$02,$01,$02,$07,$00,$1F ; $82EB32
    db $18,$1B,$1C,$E4,$42,$94,$62,$C0,$AE,$42,$B5,$DB,$24,$70,$0C,$60 ; $82EB42
    db $18,$20,$10,$BE,$86,$1C,$05,$9C,$05,$A5,$2C,$AD,$24,$BE,$3E,$BC ; $82EB52
    db $3C,$F8,$78,$13,$61,$0C,$64,$14,$71,$1B,$7A,$10,$72,$58,$38,$1A ; $82EB62
    db $38,$14,$32,$3F,$38,$3A,$3D,$2F,$3C,$25,$3E,$0F,$1E,$07,$1E,$07 ; $82EB72
    db $1E,$0F,$1E,$00,$F0,$40,$B0,$70,$00,$98,$E0,$F0,$78,$40,$00,$00 ; $82EB82
    db $30,$10,$10,$F0,$F0,$F0,$70,$70,$F0,$F8,$38,$C8,$38,$D0,$28,$F0 ; $82EB92
    db $08,$F0,$08,$00,$02,$02,$02,$00,$02,$00,$04,$04,$00,$00,$00,$04 ; $82EBA2
    db $08,$0C,$00,$03,$00,$03,$00,$03,$04,$07,$00,$07,$08,$06,$08,$0C ; $82EBB2
    db $10,$0C,$10,$00,$00,$80,$42,$06,$84,$8D,$08,$00,$08,$08,$10,$00 ; $82EBC2
    db $10,$30,$18,$C1,$02,$C3,$04,$C7,$00,$8F,$00,$0E,$00,$1C,$00,$08 ; $82EBD2
    db $10,$10,$38,$12,$20,$08,$3A,$24,$06,$24,$04,$10,$14,$11,$15,$78 ; $82EBE2
    db $1C,$1B,$6C,$3B,$3C,$33,$3C,$37,$38,$37,$38,$27,$38,$26,$39,$2F ; $82EBF2
    db $31,$26,$28,$00,$30,$78,$4C,$62,$41,$A1,$80,$E0,$80,$40,$30,$D0 ; $82EC02
    db $20,$00,$F0,$F8,$7C,$B4,$7A,$BF,$70,$77,$F0,$70,$F0,$F0,$F0,$F0 ; $82EC12
    db $F0,$30,$30,$10,$20,$12,$00,$12,$00,$10,$00,$00,$10,$00,$10,$14 ; $82EC22
    db $12,$00,$14,$3E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E ; $82EC32
    db $00,$1E,$20,$88,$18,$44,$0C,$20,$04,$16,$02,$03,$03,$05,$02,$02 ; $82EC42
    db $10,$34,$20,$F8,$04,$7C,$02,$3C,$02,$1E,$01,$0F,$00,$0F,$10,$1E ; $82EC52
    db $20,$3C,$00,$38,$10,$30,$18,$78,$38,$70,$78,$78,$78,$38,$3C,$1C ; $82EC62
    db $3C,$0E,$1E,$18,$30,$10,$38,$38,$78,$70,$78,$78,$78,$38,$3C,$1C ; $82EC72
    db $3C,$0E,$1E,$68,$30,$48,$70,$48,$70,$08,$78,$18,$3C,$0E,$1E,$06 ; $82EC82
    db $0E,$00,$00,$20,$78,$40,$78,$40,$78,$08,$78,$18,$3C,$0E,$1E,$06 ; $82EC92
    db $0E,$00,$00,$CE,$C1,$01,$1A,$0E,$1A,$00,$60,$00,$00,$00,$01,$1A ; $82ECA2
    db $1E,$1A,$00,$50,$00,$02,$00,$00,$27,$34,$15,$00,$42,$00,$04,$00 ; $82ECB2
    db $00,$24,$2E,$18,$00,$48,$00,$14,$00,$00,$14,$2C,$28,$00,$4A,$00 ; $82ECC2
    db $05,$00,$80,$14,$30,$28,$00,$46,$00,$15,$00,$00,$00,$00,$01,$02 ; $82ECD2
    db $00,$02,$04,$03,$05,$02,$0F,$01,$0A,$03,$0A,$00,$00,$00,$00,$00 ; $82ECE2
    db $01,$04,$05,$05,$04,$0F,$0C,$0B,$0C,$0B,$0C,$EC,$90,$72,$64,$A0 ; $82ECF2
    db $9A,$25,$DA,$FD,$02,$18,$24,$74,$08,$F0,$68,$2C,$20,$4E,$82,$92 ; $82ED02
    db $57,$D7,$12,$DB,$1A,$DC,$1C,$BC,$3C,$9C,$7C,$27,$30,$27,$30,$0B ; $82ED12
    db $38,$3D,$3E,$3C,$1A,$28,$1A,$07,$26,$23,$20,$0F,$0F,$0F,$0F,$07 ; $82ED22
    db $0F,$03,$0F,$07,$0F,$07,$0F,$39,$06,$3F,$00,$00,$28,$80,$90,$B4 ; $82ED32
    db $28,$68,$60,$CC,$C2,$8A,$80,$08,$04,$80,$00,$E0,$10,$70,$88,$D8 ; $82ED42
    db $E0,$98,$E4,$3E,$C0,$7E,$80,$FE,$00,$F8,$04,$80,$60,$E0,$F0,$00 ; $82ED52
    db $F0,$3F,$7F,$7D,$7E,$76,$78,$6C,$70,$00,$00,$80,$60,$E0,$F0,$00 ; $82ED62
    db $F0,$3F,$7F,$7C,$7F,$70,$7E,$60,$7C,$00,$00,$00,$04,$0D,$08,$1A ; $82ED72
    db $00,$20,$10,$30,$48,$C8,$F8,$E0,$F0,$70,$F0,$07,$00,$0F,$00,$0E ; $82ED82
    db $10,$0C,$30,$00,$78,$C8,$F8,$E0,$F0,$70,$F0,$08,$01,$02,$03,$07 ; $82ED92
    db $14,$12,$04,$1D,$08,$12,$19,$09,$10,$0D,$39,$09,$0E,$03,$0C,$17 ; $82EDA2
    db $18,$17,$18,$0F,$00,$0F,$00,$07,$00,$06,$0F,$5C,$40,$82,$91,$B8 ; $82EDB2
    db $88,$F0,$D0,$A0,$80,$E0,$E0,$30,$80,$F0,$38,$BC,$7A,$7F,$F8,$70 ; $82EDC2
    db $F8,$28,$F8,$70,$F0,$80,$60,$80,$40,$F0,$00,$02,$01,$24,$22,$48 ; $82EDD2
    db $64,$38,$40,$50,$08,$00,$90,$20,$00,$40,$00,$1F,$20,$3E,$00,$7C ; $82EDE2
    db $00,$78,$00,$78,$80,$F0,$00,$E0,$00,$C0,$00,$44,$04,$00,$04,$20 ; $82EDF2
    db $04,$00,$04,$16,$02,$0E,$02,$00,$08,$0A,$0A,$7C,$00,$3C,$02,$3C ; $82EE02
    db $02,$1C,$02,$1E,$00,$0E,$00,$0C,$02,$0E,$00,$00,$08,$34,$2C,$1C ; $82EE12
    db $24,$14,$24,$14,$04,$00,$14,$10,$0C,$1C,$1E,$18,$20,$3C,$00,$3C ; $82EE22
    db $00,$3C,$00,$1C,$00,$1C,$00,$10,$0C,$1C,$1E,$30,$48,$C8,$F8,$E0 ; $82EE32
    db $F0,$70,$F0,$70,$70,$30,$78,$18,$3C,$00,$18,$00,$78,$C8,$F8,$E0 ; $82EE42
    db $F0,$70,$F0,$70,$70,$30,$78,$18,$3C,$00,$18,$CE,$C1,$01,$1B,$0E ; $82EE52
    db $19,$00,$60,$00,$00,$00,$01,$19,$1E,$1B,$00,$50,$00,$02,$00,$01 ; $82EE62
    db $1F,$2D,$15,$00,$41,$00,$04,$00,$00,$0F,$2E,$2D,$00,$48,$00,$06 ; $82EE72
    db $00,$80,$11,$28,$2B,$00,$4E,$00,$16,$00,$00,$00,$00,$00,$01,$03 ; $82EE82
    db $00,$05,$03,$0A,$05,$06,$02,$14,$0E,$08,$00,$00,$00,$01,$01,$00 ; $82EE92
    db $05,$06,$0B,$0C,$07,$08,$17,$18,$0F,$10,$40,$A0,$46,$31,$A9,$96 ; $82EEA2
    db $70,$CF,$BC,$43,$2C,$12,$6C,$10,$F8,$80,$5E,$40,$2D,$A1,$8D,$41 ; $82EEB2
    db $CD,$01,$CD,$01,$D2,$12,$BE,$3E,$7C,$FC,$1B,$00,$32,$29,$23,$14 ; $82EEC2
    db $1F,$38,$3A,$38,$33,$19,$2E,$10,$1F,$2D,$07,$07,$0F,$0F,$0F,$0F ; $82EED2
    db $07,$0F,$07,$0F,$0E,$0F,$07,$07,$32,$0F,$FC,$04,$F8,$04,$E0,$1C ; $82EEE2
    db $E2,$1C,$5A,$44,$58,$44,$CC,$C0,$86,$82,$F8,$FC,$FC,$FC,$FC,$FC ; $82EEF2
    db $FC,$FC,$BC,$FC,$BC,$E2,$3C,$C2,$7E,$80,$00,$02,$02,$02,$01,$00 ; $82EF02
    db $03,$02,$00,$01,$00,$01,$00,$01,$01,$00,$03,$00,$03,$00,$01,$02 ; $82EF12
    db $03,$00,$01,$00,$01,$00,$01,$00,$01,$00,$C0,$00,$C0,$00,$40,$80 ; $82EF22
    db $C0,$80,$C0,$80,$40,$00,$C0,$80,$40,$80,$C0,$00,$C0,$00,$C0,$00 ; $82EF32
    db $C0,$00,$C0,$00,$40,$80,$C0,$00,$C0,$00,$70,$78,$60,$78,$40,$78 ; $82EF42
    db $60,$70,$70,$70,$70,$70,$30,$70,$00,$30,$77,$78,$64,$78,$40,$78 ; $82EF52
    db $60,$70,$70,$70,$70,$70,$30,$70,$00,$30,$31,$1F,$0D,$11,$23,$03 ; $82EF62
    db $22,$06,$3C,$02,$1F,$01,$31,$00,$29,$5A,$3E,$21,$1E,$21,$3C,$03 ; $82EF72
    db $3F,$01,$3E,$01,$3F,$00,$0F,$00,$16,$1E,$00,$30,$5C,$48,$B4,$82 ; $82EF82
    db $00,$20,$D0,$10,$80,$90,$A8,$68,$C8,$40,$F8,$F8,$B4,$FA,$7E,$F0 ; $82EF92
    db $FE,$F0,$E0,$F0,$B0,$70,$E8,$10,$38,$40,$10,$20,$32,$21,$26,$20 ; $82EFA2
    db $2C,$42,$48,$44,$00,$80,$10,$00,$C0,$00,$3F,$00,$3F,$00,$3E,$00 ; $82EFB2
    db $7E,$00,$7C,$00,$F8,$00,$F0,$00,$C0,$00,$C0,$00,$31,$03,$12,$00 ; $82EFC2
    db $1A,$00,$0A,$01,$01,$08,$09,$00,$03,$08,$FC,$02,$3F,$00,$1E,$01 ; $82EFD2
    db $1E,$01,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$01,$00,$00,$01,$00,$01 ; $82EFE2
    db $00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$00,$01 ; $82EFF2
    db $00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$40,$80,$80,$C0,$80,$C0 ; $82F002
    db $80,$E0,$8E,$FE,$F0,$FE,$C0,$FC,$00,$F0,$C0,$00,$80,$C0,$80,$C0 ; $82F012
    db $80,$E0,$8E,$FE,$F0,$FE,$C0,$FC,$00,$F0,$00,$00,$00,$00,$00,$00 ; $82F022
    db $01,$01,$04,$08,$D8,$E0,$C2,$E0,$80,$E0,$00,$00,$00,$00,$00,$00 ; $82F032
    db $01,$02,$0F,$00,$DF,$E0,$DE,$E0,$90,$E0,$CE,$C1,$01,$18,$0E,$1C ; $82F042
    db $00,$60,$00,$00,$00,$01,$18,$1E,$1C,$00,$50,$00,$02,$00,$81,$18 ; $82F052
    db $2D,$1C,$00,$41,$00,$04,$00,$00,$03,$06,$07,$0B,$0E,$05,$0A,$11 ; $82F062
    db $1A,$33,$21,$56,$62,$15,$24,$01,$05,$05,$09,$0D,$11,$0D,$11,$1D ; $82F072
    db $21,$3C,$01,$79,$03,$33,$47,$98,$86,$0C,$83,$98,$07,$61,$9E,$F1 ; $82F082
    db $0E,$02,$FC,$C6,$39,$FB,$05,$7A,$02,$7B,$02,$7B,$02,$BB,$82,$87 ; $82F092
    db $86,$FF,$FE,$FF,$FE,$FF,$FE,$3F,$20,$1B,$00,$0E,$11,$1F,$00,$07 ; $82F0A2
    db $08,$0E,$00,$02,$00,$04,$04,$3F,$07,$1B,$27,$1F,$03,$1F,$03,$07 ; $82F0B2
    db $07,$07,$07,$07,$07,$03,$07,$E0,$1E,$1E,$E2,$38,$C6,$F8,$06,$4C ; $82F0C2
    db $44,$54,$4C,$F4,$CC,$92,$8A,$F8,$F8,$F8,$F8,$FC,$FC,$FC,$FC,$BC ; $82F0D2
    db $F2,$BC,$E2,$3C,$C2,$7A,$84,$08,$30,$00,$30,$00,$00,$00,$00,$00 ; $82F0E2
    db $00,$00,$00,$00,$00,$00,$00,$00,$38,$00,$30,$00,$00,$00,$00,$00 ; $82F0F2
    db $00,$00,$00,$00,$00,$00,$00,$08,$04,$00,$0C,$1C,$08,$18,$08,$38 ; $82F102
    db $50,$38,$10,$30,$00,$50,$40,$3C,$00,$3C,$00,$3C,$00,$38,$00,$78 ; $82F112
    db $00,$38,$40,$30,$40,$70,$00,$07,$34,$65,$44,$22,$42,$67,$44,$66 ; $82F122
    db $56,$05,$34,$13,$20,$32,$29,$33,$47,$63,$87,$65,$87,$63,$87,$71 ; $82F132
    db $07,$33,$47,$37,$07,$3C,$04,$FA,$00,$F8,$04,$FD,$01,$FA,$07,$FE ; $82F142
    db $03,$F3,$0B,$C7,$39,$11,$DE,$FE,$FF,$FE,$FF,$FF,$FE,$FD,$FE,$FD ; $82F152
    db $FE,$FD,$FE,$F1,$F0,$2D,$3C,$04,$00,$1D,$18,$35,$38,$21,$38,$39 ; $82F162
    db $20,$30,$20,$38,$20,$08,$30,$07,$00,$1F,$18,$37,$38,$2F,$30,$2F ; $82F172
    db $30,$2F,$30,$23,$38,$00,$38,$52,$0A,$50,$0A,$8C,$06,$8C,$06,$14 ; $82F182
    db $8C,$84,$14,$00,$04,$08,$04,$FA,$04,$FA,$04,$BE,$00,$BE,$00,$BC ; $82F192
    db $00,$BC,$00,$3C,$00,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82F1A2
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82F1B2
    db $00,$00,$00,$00,$00,$00,$00,$40,$60,$20,$70,$B0,$60,$D0,$E0,$60 ; $82F1C2
    db $E0,$70,$F0,$78,$F8,$F8,$00,$60,$00,$20,$70,$20,$F0,$C0,$F0,$60 ; $82F1D2
    db $E0,$70,$F0,$78,$F8,$00,$F8,$CE,$C1,$01,$1A,$0C,$1A,$00,$62,$00 ; $82F1E2
    db $00,$00,$01,$1A,$1C,$1A,$00,$52,$00,$02,$00,$01,$1A,$2C,$1A,$00 ; $82F1F2
    db $42,$00,$04,$00,$80,$14,$10,$28,$00,$66,$00,$06,$00,$0B,$04,$0E ; $82F202
    db $08,$00,$1E,$12,$2D,$7A,$45,$9F,$C2,$CD,$81,$D4,$03,$09,$08,$05 ; $82F212
    db $14,$15,$24,$34,$44,$74,$84,$F4,$06,$F6,$07,$CF,$0F,$20,$40,$60 ; $82F222
    db $08,$08,$14,$34,$0C,$E2,$1E,$ED,$13,$82,$7D,$FC,$81,$F0,$00,$F0 ; $82F232
    db $00,$F0,$00,$E8,$0A,$EA,$09,$EB,$08,$1B,$18,$7B,$F8,$3F,$00,$2F ; $82F242
    db $61,$7F,$60,$5D,$42,$1D,$42,$37,$68,$54,$70,$65,$29,$00,$00,$1E ; $82F252
    db $3F,$1F,$3F,$3F,$3F,$3F,$3F,$1F,$3F,$0F,$1F,$1E,$1F,$F1,$0B,$79 ; $82F262
    db $8F,$13,$E8,$10,$E8,$98,$60,$F0,$00,$E8,$D0,$68,$18,$03,$00,$F7 ; $82F272
    db $F0,$F3,$F4,$F7,$F0,$F6,$F0,$F8,$F8,$38,$C0,$F8,$00,$20,$C0,$40 ; $82F282
    db $80,$01,$01,$01,$01,$00,$01,$02,$03,$00,$03,$00,$03,$0E,$E0,$00 ; $82F292
    db $C0,$01,$00,$01,$00,$01,$00,$03,$00,$03,$00,$03,$00,$80,$20,$00 ; $82F2A2
    db $20,$00,$20,$00,$20,$40,$00,$80,$00,$00,$80,$00,$00,$E0,$00,$E0 ; $82F2B2
    db $00,$E0,$00,$E0,$00,$C0,$00,$80,$00,$80,$00,$00,$00,$01,$01,$02 ; $82F2C2
    db $03,$03,$02,$0B,$0C,$06,$08,$04,$08,$04,$03,$03,$00,$01,$02,$03 ; $82F2D2
    db $04,$03,$04,$0F,$00,$0E,$00,$0E,$00,$07,$00,$07,$00,$97,$10,$1B ; $82F2E2
    db $18,$10,$D0,$CF,$00,$1F,$00,$57,$00,$09,$28,$17,$10,$8F,$1F,$87 ; $82F2F2
    db $1F,$CF,$1F,$DF,$3F,$FF,$0F,$7F,$0F,$37,$0F,$0F,$1F,$7D,$07,$F0 ; $82F302
    db $0A,$B3,$41,$F0,$01,$EB,$09,$EA,$08,$EA,$08,$E8,$12,$FB,$FC,$FE ; $82F312
    db $F9,$FB,$F8,$FB,$F8,$F3,$F8,$F2,$F9,$F2,$F9,$F2,$F1,$1B,$37,$03 ; $82F322
    db $00,$17,$00,$61,$76,$53,$66,$F0,$C5,$F5,$C1,$A5,$C3,$0C,$1F,$1F ; $82F332
    db $00,$1F,$00,$7F,$60,$5F,$60,$DD,$E2,$DD,$E2,$9F,$E0,$68,$18,$60 ; $82F342
    db $10,$20,$10,$08,$18,$20,$10,$40,$30,$30,$50,$50,$10,$F8,$00,$F0 ; $82F352
    db $08,$F0,$08,$F8,$00,$F0,$00,$F0,$00,$F0,$00,$F0,$00,$04,$03,$03 ; $82F362
    db $07,$04,$03,$03,$07,$03,$07,$03,$07,$05,$03,$00,$00,$00,$07,$03 ; $82F372
    db $07,$00,$07,$03,$07,$03,$07,$03,$07,$01,$07,$00,$00,$00,$00,$00 ; $82F382
    db $80,$80,$00,$00,$80,$00,$80,$80,$C0,$C0,$C0,$00,$00,$00,$00,$00 ; $82F392
    db $80,$00,$80,$00,$80,$00,$80,$80,$C0,$C0,$C0,$00,$00,$00,$00,$00 ; $82F3A2
    db $00,$00,$00,$01,$01,$04,$08,$D8,$E0,$C2,$E0,$80,$E0,$00,$00,$00 ; $82F3B2
    db $00,$00,$00,$01,$02,$0F,$00,$DF,$E0,$DE,$E0,$90,$E0,$CE,$C1,$01 ; $82F3C2
    db $1B,$0E,$19,$00,$60,$00,$00,$00,$01,$1B,$1E,$19,$00,$50,$00,$02 ; $82F3D2
    db $00,$01,$1B,$2D,$19,$00,$41,$00,$04,$00,$80,$17,$11,$25,$00,$65 ; $82F3E2
    db $00,$06,$00,$0C,$00,$08,$14,$24,$3C,$50,$6C,$B4,$C8,$9E,$00,$2A ; $82F3F2
    db $05,$22,$24,$0B,$08,$0B,$28,$2B,$48,$6B,$88,$EB,$08,$ED,$0C,$DE ; $82F402
    db $1E,$9F,$3F,$40,$80,$D0,$00,$60,$10,$10,$28,$50,$28,$7A,$86,$74 ; $82F412
    db $8A,$DC,$22,$E0,$00,$D0,$30,$D0,$10,$D0,$10,$D0,$14,$B6,$30,$76 ; $82F422
    db $70,$F6,$F1,$59,$46,$60,$60,$0E,$70,$37,$40,$00,$20,$14,$20,$13 ; $82F432
    db $25,$11,$27,$21,$21,$1F,$3F,$3F,$3F,$1F,$1F,$1F,$01,$3F,$01,$3E ; $82F442
    db $01,$3E,$01,$80,$70,$D0,$10,$E0,$00,$B0,$40,$C0,$10,$60,$30,$00 ; $82F452
    db $50,$60,$10,$00,$00,$E0,$F0,$F0,$F0,$F0,$F0,$E0,$E0,$C0,$E0,$E0 ; $82F462
    db $E0,$C0,$C0,$10,$10,$12,$10,$10,$12,$00,$12,$02,$10,$02,$10,$08 ; $82F472
    db $10,$08,$12,$1F,$00,$1F,$00,$1F,$00,$1E,$00,$1E,$00,$1E,$00,$1E ; $82F482
    db $00,$1C,$02,$80,$40,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82F492
    db $00,$00,$00,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82F4A2
    db $00,$00,$00,$05,$06,$0B,$0C,$09,$10,$62,$70,$02,$22,$21,$4B,$0B ; $82F4B2
    db $25,$0F,$02,$06,$08,$0E,$10,$1E,$20,$7D,$01,$39,$43,$7E,$01,$3E ; $82F4C2
    db $01,$0D,$03,$15,$B2,$B5,$52,$F7,$20,$2F,$20,$1F,$00,$09,$00,$31 ; $82F4D2
    db $10,$5D,$7C,$EF,$1F,$EF,$1F,$DF,$3F,$1F,$3F,$3F,$3F,$3F,$3F,$2F ; $82F4E2
    db $3F,$23,$3F,$A9,$43,$BA,$58,$E3,$00,$D1,$10,$72,$71,$B0,$35,$56 ; $82F4F2
    db $48,$70,$40,$F7,$F0,$E6,$F9,$F7,$F0,$E7,$F0,$8F,$F0,$CD,$F2,$BE ; $82F502
    db $C0,$80,$C0,$1D,$27,$28,$14,$10,$0C,$1E,$0A,$00,$0A,$00,$0A,$08 ; $82F512
    db $10,$10,$10,$3E,$01,$3D,$02,$1D,$02,$1F,$00,$0F,$00,$0F,$00,$1F ; $82F522
    db $00,$1F,$00,$E0,$00,$40,$20,$60,$20,$60,$20,$00,$60,$00,$40,$C0 ; $82F532
    db $40,$80,$40,$C0,$C0,$E0,$00,$E0,$00,$E0,$00,$E0,$00,$C0,$00,$C0 ; $82F542
    db $00,$C0,$00,$04,$1A,$0C,$1A,$04,$1A,$04,$1A,$1E,$1C,$1E,$3C,$1E ; $82F552
    db $3C,$3C,$00,$00,$1E,$08,$1E,$00,$1E,$00,$1E,$1C,$1E,$1C,$3E,$1C ; $82F562
    db $3E,$00,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82F572
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82F582
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$04,$08,$D8,$E0,$C2 ; $82F592
    db $E0,$80,$E0,$00,$00,$00,$00,$00,$00,$01,$02,$0F,$00,$DF,$E0,$DE ; $82F5A2
    db $E0,$90,$E0,$CE,$C1,$01,$1B,$0F,$19,$00,$5F,$00,$00,$00,$01,$1A ; $82F5B2
    db $1F,$1A,$00,$4F,$00,$02,$00,$01,$1A,$2F,$1A,$00,$3F,$00,$04,$00 ; $82F5C2
    db $80,$17,$13,$25,$00,$63,$00,$06,$00,$04,$0A,$02,$1C,$08,$14,$30 ; $82F5D2
    db $34,$B2,$CD,$5A,$81,$58,$83,$2E,$E1,$0B,$08,$1B,$18,$0B,$28,$2B ; $82F5E2
    db $48,$ED,$0C,$EC,$0C,$EF,$0F,$DF,$3F,$20,$E0,$C0,$30,$20,$10,$7C ; $82F5F2
    db $0C,$E4,$1C,$8C,$44,$1A,$96,$36,$B2,$C0,$00,$D0,$10,$D0,$18,$DC ; $82F602
    db $10,$BC,$30,$7C,$72,$EE,$F0,$CE,$F1,$17,$08,$0F,$10,$06,$19,$05 ; $82F612
    db $12,$19,$0E,$18,$06,$0A,$10,$09,$12,$19,$19,$1F,$1F,$0F,$0F,$0F ; $82F622
    db $0F,$07,$0F,$0F,$0F,$1F,$00,$1F,$00,$98,$60,$D8,$20,$78,$20,$50 ; $82F632
    db $08,$70,$08,$B0,$88,$B0,$88,$D0,$F0,$F8,$F8,$F8,$F8,$D8,$F8,$F0 ; $82F642
    db $F0,$F0,$F0,$70,$F0,$60,$E0,$30,$C0,$00,$00,$04,$0C,$01,$05,$09 ; $82F652
    db $0D,$00,$0D,$04,$0C,$06,$04,$01,$06,$03,$04,$0F,$00,$07,$08,$0F ; $82F662
    db $00,$0F,$00,$0F,$00,$07,$00,$07,$00,$00,$00,$00,$00,$00,$00,$00 ; $82F672
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82F682
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$0C,$05,$08,$15,$18,$02 ; $82F692
    db $1E,$2B,$33,$07,$03,$03,$01,$06,$00,$0E,$00,$0E,$10,$1E,$00,$1D ; $82F6A2
    db $23,$3C,$03,$1E,$01,$0F,$00,$07,$00,$B7,$30,$77,$30,$3F,$19,$6B ; $82F6B2
    db $01,$1C,$00,$2E,$06,$23,$12,$13,$2D,$CF,$3F,$EF,$1E,$F6,$0F,$7E ; $82F6C2
    db $07,$3F,$03,$39,$37,$0D,$0F,$20,$21,$8A,$0E,$0A,$89,$89,$28,$A2 ; $82F6D2
    db $13,$9B,$84,$6C,$60,$F0,$00,$C0,$B0,$F6,$F9,$B7,$78,$F7,$18,$F3 ; $82F6E2
    db $0C,$7F,$80,$9E,$E0,$F0,$F0,$00,$80,$03,$1B,$08,$1A,$03,$01,$09 ; $82F6F2
    db $09,$04,$09,$02,$0C,$05,$04,$01,$00,$1F,$00,$1E,$01,$07,$08,$0F ; $82F702
    db $00,$0F,$00,$0F,$00,$07,$00,$03,$04,$10,$30,$10,$30,$20,$30,$20 ; $82F712
    db $20,$40,$20,$00,$40,$00,$80,$00,$00,$F0,$00,$F0,$00,$F0,$00,$E0 ; $82F722
    db $00,$E0,$00,$C0,$00,$80,$00,$00,$00,$01,$03,$03,$03,$02,$03,$03 ; $82F732
    db $01,$03,$03,$01,$02,$03,$00,$03,$00,$03,$01,$03,$03,$02,$03,$01 ; $82F742
    db $03,$03,$03,$00,$03,$00,$03,$00,$03,$00,$00,$00,$00,$00,$00,$80 ; $82F752
    db $80,$C0,$C0,$80,$40,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$80 ; $82F762
    db $80,$C0,$C0,$00,$C0,$00,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$01 ; $82F772
    db $01,$04,$08,$D8,$E0,$C2,$E0,$80,$E0,$00,$00,$00,$00,$00,$00,$01 ; $82F782
    db $02,$0F,$00,$DF,$E0,$DE,$E0,$90,$E0,$CE,$C1,$01,$19,$0E,$1B,$00 ; $82F792
    db $60,$00,$00,$00,$01,$19,$1E,$1B,$00,$50,$00,$02,$00,$01,$19,$2E ; $82F7A2
    db $1B,$00,$40,$00,$04,$00,$80,$24,$11,$18,$00,$65,$00,$06,$00,$02 ; $82F7B2
    db $07,$04,$0A,$0E,$08,$1A,$11,$2A,$35,$10,$25,$66,$41,$44,$60,$05 ; $82F7C2
    db $04,$05,$04,$05,$14,$16,$26,$3A,$02,$3B,$43,$7B,$03,$7B,$03,$30 ; $82F7D2
    db $0C,$22,$0C,$16,$08,$A7,$19,$76,$09,$CA,$30,$66,$94,$6A,$D2,$F4 ; $82F7E2
    db $04,$F4,$04,$F4,$05,$F5,$04,$F5,$04,$0D,$0C,$F9,$FC,$BD,$FE,$17 ; $82F7F2
    db $00,$1F,$08,$07,$00,$07,$00,$0A,$01,$0C,$07,$08,$08,$0D,$08,$08 ; $82F802
    db $00,$07,$0F,$0F,$0F,$0F,$0F,$07,$07,$03,$07,$0F,$00,$0F,$00,$B6 ; $82F812
    db $48,$86,$78,$70,$8E,$E4,$1A,$9C,$02,$4C,$42,$6C,$60,$EC,$60,$4C ; $82F822
    db $4C,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$BC,$FC,$98,$78,$90,$70,$02 ; $82F832
    db $00,$02,$00,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$00,$03 ; $82F842
    db $00,$03,$00,$03,$00,$03,$00,$03,$00,$03,$00,$03,$00,$01,$00,$00 ; $82F852
    db $00,$00,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$E0 ; $82F862
    db $00,$C0,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$38 ; $82F872
    db $C8,$B4,$4C,$52,$82,$34,$A2,$54,$92,$D2,$10,$44,$26,$A0,$80,$A8 ; $82F882
    db $24,$AC,$20,$6E,$60,$CE,$E0,$EE,$F0,$EE,$F0,$E6,$18,$7C,$80,$B9 ; $82F892
    db $E8,$CE,$AE,$4F,$0F,$4E,$0E,$29,$88,$1E,$8E,$42,$0E,$0B,$07,$F7 ; $82F8A2
    db $0F,$E1,$0F,$60,$8F,$61,$8F,$F7,$0F,$F1,$0F,$7D,$03,$1C,$03,$FA ; $82F8B2
    db $62,$68,$64,$14,$10,$C0,$00,$3A,$22,$AC,$00,$7E,$00,$7C,$00,$9D ; $82F8C2
    db $FE,$9C,$E3,$EF,$F0,$FE,$F0,$DC,$FE,$FE,$FE,$FE,$FE,$F0,$F0,$0C ; $82F8D2
    db $09,$04,$0C,$05,$05,$00,$01,$01,$04,$02,$04,$00,$02,$03,$00,$0F ; $82F8E2
    db $00,$0E,$01,$07,$00,$03,$04,$07,$00,$07,$00,$03,$00,$03,$00,$A8 ; $82F8F2
    db $04,$AC,$84,$24,$0C,$90,$88,$B8,$88,$28,$98,$B0,$10,$00,$10,$FC ; $82F902
    db $00,$FC,$00,$7C,$80,$F8,$00,$F8,$00,$F8,$00,$F0,$00,$F0,$00,$00 ; $82F912
    db $01,$01,$00,$00,$01,$00,$01,$00,$03,$03,$03,$03,$03,$00,$00,$00 ; $82F922
    db $01,$00,$01,$00,$01,$00,$01,$00,$03,$03,$03,$03,$03,$00,$00,$C0 ; $82F932
    db $80,$80,$C0,$00,$C0,$80,$C0,$80,$C0,$80,$C0,$C0,$80,$00,$00,$80 ; $82F942
    db $C0,$80,$C0,$00,$C0,$80,$C0,$80,$C0,$80,$C0,$80,$C0,$00,$00,$00 ; $82F952
    db $00,$00,$00,$00,$00,$01,$01,$04,$08,$D8,$E0,$C2,$E0,$80,$E0,$00 ; $82F962
    db $00,$00,$00,$00,$00,$01,$02,$0F,$00,$DF,$E0,$DE,$E0,$90,$E0,$CE ; $82F972
    db $C1,$01,$1A,$0D,$1A,$00,$61,$00,$00,$00,$01,$1A,$1D,$1A,$00,$51 ; $82F982
    db $00,$02,$00,$01,$1A,$2C,$1A,$00,$42,$00,$04,$00,$80,$23,$0F,$19 ; $82F992
    db $00,$67,$00,$06,$00,$06,$08,$0C,$10,$14,$1A,$22,$39,$5A,$61,$39 ; $82F9A2
    db $40,$2D,$44,$2F,$4C,$0B,$08,$0B,$08,$15,$24,$36,$46,$76,$06,$77 ; $82F9B2
    db $87,$73,$87,$73,$8F,$68,$10,$20,$1C,$1E,$26,$D3,$25,$FB,$0C,$E1 ; $82F9C2
    db $04,$7E,$85,$F2,$09,$E8,$08,$E8,$0A,$EA,$09,$EB,$08,$E3,$08,$1B ; $82F9D2
    db $18,$FB,$FC,$FF,$FC,$7C,$03,$27,$40,$27,$40,$2B,$48,$5A,$38,$04 ; $82F9E2
    db $74,$57,$67,$4A,$28,$78,$08,$7F,$0F,$6F,$1F,$67,$1F,$37,$0F,$33 ; $82F9F2
    db $0F,$30,$0F,$3B,$07,$80,$70,$E0,$18,$E0,$18,$50,$A8,$18,$E8,$E8 ; $82FA02
    db $10,$68,$10,$A8,$90,$10,$10,$F8,$F8,$F8,$F8,$F0,$F0,$F0,$F0,$F0 ; $82FA12
    db $F0,$F0,$F0,$70,$F0,$0B,$02,$09,$02,$09,$00,$09,$00,$0A,$01,$08 ; $82FA22
    db $03,$08,$03,$00,$03,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$0E,$01,$0E ; $82FA32
    db $01,$0E,$01,$06,$01,$80,$10,$00,$00,$80,$00,$C0,$00,$00,$C0,$80 ; $82FA42
    db $C0,$C0,$E0,$C0,$E0,$F0,$00,$F0,$00,$60,$80,$00,$C0,$00,$C0,$80 ; $82FA52
    db $C0,$C0,$E0,$C0,$E0,$3C,$4C,$A6,$4A,$F7,$19,$C3,$09,$FD,$0B,$E5 ; $82FA62
    db $12,$09,$08,$73,$42,$D4,$12,$D6,$10,$C7,$10,$37,$30,$F7,$F8,$FF ; $82FA72
    db $F8,$F7,$F8,$BB,$F4,$CD,$8C,$6E,$8E,$AC,$4C,$AE,$CE,$35,$91,$5A ; $82FA82
    db $92,$F4,$94,$BE,$DE,$F3,$0F,$F1,$0F,$F3,$0F,$F1,$0F,$EE,$1F,$ED ; $82FA92
    db $1F,$EB,$1F,$E1,$1F,$84,$04,$B9,$21,$3D,$22,$60,$64,$50,$50,$28 ; $82FAA2
    db $28,$58,$00,$D8,$00,$FB,$FC,$DD,$FA,$DF,$E0,$9C,$E0,$A8,$F0,$D0 ; $82FAB2
    db $F8,$F8,$F8,$F8,$F8,$04,$0C,$04,$08,$10,$00,$18,$00,$0A,$00,$0A ; $82FAC2
    db $00,$08,$02,$0B,$02,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$0F,$00,$0F ; $82FAD2
    db $00,$0F,$00,$0F,$00,$00,$00,$10,$00,$28,$00,$28,$80,$30,$98,$20 ; $82FAE2
    db $98,$B0,$08,$80,$10,$F8,$00,$F8,$00,$E8,$10,$E8,$10,$F8,$00,$F8 ; $82FAF2
    db $00,$F8,$00,$F0,$00,$07,$0B,$0F,$0F,$05,$0F,$00,$0F,$07,$0F,$0E ; $82FB02
    db $0F,$0F,$0F,$00,$0F,$07,$0B,$0F,$0F,$05,$0F,$00,$0F,$07,$0F,$0E ; $82FB12
    db $0F,$0F,$0F,$00,$0F,$80,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00 ; $82FB22
    db $00,$00,$00,$00,$00,$80,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00 ; $82FB32
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$04,$08,$D8 ; $82FB42
    db $E0,$C2,$E0,$80,$E0,$00,$00,$00,$00,$00,$00,$01,$02,$0F,$00,$DF ; $82FB52
    db $E0,$DE,$E0,$90,$E0,$CE,$C1,$01,$1A,$0E,$1A,$00,$60,$00,$00,$00 ; $82FB62
    db $01,$1A,$1E,$1A,$00,$50,$00,$02,$00,$81,$1A,$2C,$1A,$00,$42,$00 ; $82FB72
    db $04,$00,$08,$16,$22,$0C,$1D,$32,$4B,$14,$0A,$55,$16,$41,$2D,$64 ; $82FB82
    db $2D,$6C,$0D,$0C,$25,$14,$36,$06,$5A,$22,$5B,$23,$5B,$23,$73,$07 ; $82FB92
    db $73,$0F,$64,$18,$20,$1C,$12,$2E,$B4,$6A,$C4,$3A,$1F,$E1,$1B,$E1 ; $82FBA2
    db $CB,$31,$E8,$08,$E8,$0A,$EA,$08,$EA,$09,$1A,$19,$FB,$F8,$FF,$F8 ; $82FBB2
    db $FB,$FC,$1B,$58,$0B,$48,$0F,$4C,$1E,$5C,$3D,$79,$29,$39,$0D,$1D ; $82FBC2
    db $3F,$6F,$57,$2F,$47,$3F,$43,$3F,$53,$2F,$76,$0F,$36,$0F,$12,$2F ; $82FBD2
    db $70,$0F,$90,$68,$50,$A8,$18,$E8,$D0,$28,$88,$70,$68,$58,$68,$18 ; $82FBE2
    db $68,$38,$F0,$F0,$F0,$F0,$F0,$F0,$E0,$E0,$E0,$E0,$B8,$C0,$F8,$00 ; $82FBF2
    db $F8,$00,$0C,$00,$0C,$00,$00,$08,$00,$08,$00,$08,$08,$10,$10,$18 ; $82FC02
    db $18,$18,$1C,$00,$1C,$00,$18,$00,$18,$00,$18,$00,$08,$10,$10,$18 ; $82FC12
    db $18,$18,$00,$08,$40,$10,$00,$10,$30,$80,$20,$80,$E0,$00,$40,$00 ; $82FC22
    db $40,$00,$38,$00,$70,$00,$70,$00,$F0,$00,$E0,$00,$E0,$00,$C0,$00 ; $82FC32
    db $C0,$00,$1C,$4C,$0E,$5E,$2D,$7C,$7B,$28,$5D,$0C,$0D,$4C,$0D,$4C ; $82FC42
    db $09,$56,$53,$2F,$51,$2F,$73,$0F,$77,$0F,$53,$2F,$53,$2F,$53,$2F ; $82FC52
    db $51,$21,$30,$37,$EA,$24,$10,$10,$D0,$10,$A8,$80,$E0,$08,$F8,$00 ; $82FC62
    db $38,$C0,$D7,$E8,$DE,$E0,$E8,$F0,$E8,$F8,$78,$F8,$F8,$F8,$F8,$F8 ; $82FC72
    db $10,$10,$55,$44,$02,$30,$14,$00,$04,$00,$04,$00,$04,$00,$0C,$00 ; $82FC82
    db $0C,$00,$5B,$24,$3E,$00,$1C,$00,$1C,$00,$1C,$00,$1C,$00,$1C,$00 ; $82FC92
    db $1C,$00,$78,$38,$08,$28,$38,$18,$28,$18,$18,$08,$38,$08,$00,$08 ; $82FCA2
    db $40,$10,$F8,$00,$E8,$10,$78,$00,$78,$00,$78,$00,$38,$00,$38,$00 ; $82FCB2
    db $70,$00,$14,$18,$0D,$18,$1D,$18,$3D,$18,$39,$1C,$20,$18,$00,$00 ; $82FCC2
    db $00,$00,$10,$1C,$08,$1D,$18,$1D,$18,$3D,$18,$3D,$00,$38,$00,$00 ; $82FCD2
    db $00,$00,$80,$40,$40,$C0,$00,$C0,$80,$C0,$C0,$C0,$C0,$C0,$C0,$E0 ; $82FCE2
    db $60,$E0,$40,$80,$40,$C0,$00,$C0,$80,$C0,$C0,$C0,$C0,$C0,$C0,$E0 ; $82FCF2
    db $60,$E0,$CE,$C1,$01,$19,$0E,$1B,$00,$60,$00,$00,$00,$01,$19,$1E ; $82FD02
    db $1B,$00,$50,$00,$02,$00,$81,$19,$2E,$1B,$00,$40,$00,$04,$00,$03 ; $82FD12
    db $06,$00,$0F,$08,$0F,$03,$0C,$1E,$11,$24,$31,$34,$20,$06,$12,$04 ; $82FD22
    db $04,$06,$06,$0A,$12,$0A,$32,$1B,$23,$3B,$43,$3B,$43,$19,$63,$90 ; $82FD32
    db $04,$12,$06,$04,$02,$18,$06,$A0,$1E,$72,$8C,$00,$FE,$44,$3A,$F0 ; $82FD42
    db $08,$F0,$08,$F0,$08,$F4,$04,$74,$04,$8C,$8C,$FE,$FC,$FE,$FC,$56 ; $82FD52
    db $31,$5F,$30,$17,$50,$1B,$50,$67,$00,$2A,$58,$26,$54,$2D,$4D,$7C ; $82FD62
    db $0C,$7F,$0F,$5F,$2F,$5F,$2F,$6F,$1F,$77,$0F,$7B,$07,$62,$1F,$50 ; $82FD72
    db $94,$F8,$04,$E8,$14,$FC,$00,$60,$1C,$88,$98,$A8,$98,$AC,$9C,$28 ; $82FD82
    db $38,$F8,$F8,$F8,$F8,$F8,$F8,$FC,$FC,$78,$E4,$78,$84,$7C,$80,$00 ; $82FD92
    db $18,$10,$1C,$10,$1C,$08,$1E,$1C,$1E,$0C,$0E,$0C,$0E,$00,$00,$00 ; $82FDA2
    db $18,$10,$1C,$10,$1C,$08,$1E,$1C,$1E,$0C,$0E,$0C,$0E,$00,$00,$20 ; $82FDB2
    db $00,$20,$00,$28,$48,$40,$68,$40,$60,$40,$60,$70,$40,$70,$40,$30 ; $82FDC2
    db $48,$30,$48,$78,$00,$78,$00,$70,$00,$70,$00,$70,$00,$70,$00,$56 ; $82FDD2
    db $66,$46,$76,$19,$28,$6E,$4E,$2E,$4E,$29,$48,$43,$10,$53,$1C,$79 ; $82FDE2
    db $07,$79,$07,$37,$4F,$71,$0F,$71,$0F,$77,$0F,$7F,$0F,$73,$03,$8E ; $82FDF2
    db $70,$AC,$52,$F6,$06,$FE,$0E,$EC,$04,$D6,$10,$F4,$00,$D0,$20,$FE ; $82FE02
    db $FC,$FE,$FC,$FA,$FC,$F2,$FC,$FC,$F2,$EE,$F0,$FE,$F0,$C8,$C8,$03 ; $82FE12
    db $63,$30,$00,$30,$00,$02,$00,$00,$00,$14,$00,$08,$10,$18,$00,$6C ; $82FE22
    db $13,$7F,$00,$7E,$00,$3E,$00,$1C,$00,$1C,$00,$18,$00,$18,$00,$B8 ; $82FE32
    db $1C,$00,$14,$10,$00,$48,$08,$60,$18,$30,$48,$08,$48,$00,$40,$FC ; $82FE42
    db $00,$74,$08,$70,$08,$78,$00,$78,$00,$78,$00,$78,$00,$70,$08,$00 ; $82FE52
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $82FE62
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30 ; $82FE72
    db $70,$50,$70,$30,$70,$70,$70,$78,$78,$78,$00,$78,$00,$00,$00,$30 ; $82FE82
    db $70,$50,$70,$30,$70,$70,$70,$78,$78,$00,$78,$00,$78,$00,$00,$00 ; $82FE92
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FEA2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FEB2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FEC2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FED2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FEE2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FEF2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF02
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF12
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF22
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF32
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF42
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF52
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF62
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF72
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF82
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FF92
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FFA2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FFB2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FFC2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FFD2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $82FFE2
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF         ; $82FFF2
