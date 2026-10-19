; bank $A7  (file offset $138000)
org $A78000

L_A78000:
    LDX $09A9                       ; $A78000  AE A9 09     Mx
    BEQ L_A7800B                    ; $A78003  F0 06        Mx
    LDA $0006,X                     ; $A78005  BD 06 00     Mx
    JMP L_A78CBD                    ; $A78008  4C BD 8C     Mx
L_A7800B:
    LDA $0A24                       ; $A7800B  AD 24 0A     Mx
    STA $0A90                       ; $A7800E  8D 90 0A     Mx
    LDA $09BA                       ; $A78011  AD BA 09     Mx
    BNE L_A78022                    ; $A78014  D0 0C        Mx
    LDA $0A9A                       ; $A78016  AD 9A 0A     Mx
    BNE L_A78022                    ; $A78019  D0 07        Mx
    LDA $0A5A                       ; $A7801B  AD 5A 0A     Mx
    BNE L_A78022                    ; $A7801E  D0 02        Mx
    BRA L_A7802B                    ; $A78020  80 09        Mx
L_A78022:
    STZ $0A64                       ; $A78022  9C 64 0A     Mx
    STZ $0A90                       ; $A78025  9C 90 0A     Mx
    JMP L_A78CBA                    ; $A78028  4C BA 8C     Mx
L_A7802B:
    LDX $00C0                       ; $A7802B  AE C0 00     Mx
    BEQ L_A78081                    ; $A7802E  F0 51        Mx
    LDA $09A8                       ; $A78030  AD A8 09     Mx
    CMP $0C19                       ; $A78033  CD 19 0C     Mx
    BNE L_A7807E                    ; $A78036  D0 46        Mx
    LDX $08C1                       ; $A78038  AE C1 08     Mx
    BEQ L_A7807E                    ; $A7803B  F0 41        Mx
    LDA $0944                       ; $A7803D  AD 44 09     Mx
    BEQ L_A78055                    ; $A78040  F0 13        Mx
    INC                             ; $A78042  1A           Mx
    BEQ L_A78055                    ; $A78043  F0 10        Mx
    LDA $0956                       ; $A78045  AD 56 09     Mx
    BNE L_A78055                    ; $A78048  D0 0B        Mx
    STZ $0A2E                       ; $A7804A  9C 2E 0A     Mx
    LDA $0A88                       ; $A7804D  AD 88 0A     Mx
    STA $00B7                       ; $A78050  8D B7 00     Mx
    BRA L_A78066                    ; $A78053  80 11        Mx
L_A78055:
    LDA $0940                       ; $A78055  AD 40 09     Mx
    BEQ L_A7807E                    ; $A78058  F0 24        Mx
    LDA #$0003                      ; $A7805A  A9 03 00     Mx
    STA $0A64                       ; $A7805D  8D 64 0A     Mx
    LDA $0A8A                       ; $A78060  AD 8A 0A     Mx
    STA $00B7                       ; $A78063  8D B7 00     Mx
L_A78066:
    LDA $0A90                       ; $A78066  AD 90 0A     Mx
    AND #$0F00                      ; $A78069  29 00 0F     Mx
    ORA $0A8C                       ; $A7806C  0D 8C 0A     Mx
    ORA $00B7                       ; $A7806F  0D B7 00     Mx
    STA $0A90                       ; $A78072  8D 90 0A     Mx
    STZ $0A60                       ; $A78075  9C 60 0A     Mx
    LDA #$0014                      ; $A78078  A9 14 00     Mx
    STA $0A40                       ; $A7807B  8D 40 0A     Mx
L_A7807E:
    JMP L_A78CBA                    ; $A7807E  4C BA 8C     Mx
L_A78081:
    LDA $0C19                       ; $A78081  AD 19 0C     Mx
    BNE L_A78089                    ; $A78084  D0 03        Mx
    JMP L_A78A7D                    ; $A78086  4C 7D 8A     Mx
L_A78089:
    LDA $0A36                       ; $A78089  AD 36 0A     Mx
    BEQ L_A780A1                    ; $A7808C  F0 13        Mx
    LDA $0C19                       ; $A7808E  AD 19 0C     Mx
    CMP $09A8                       ; $A78091  CD A8 09     Mx
    BEQ L_A780A4                    ; $A78094  F0 0E        Mx
    AND #$00FF                      ; $A78096  29 FF 00     Mx
    CMP #$0003                      ; $A78099  C9 03 00     Mx
    BNE L_A780A1                    ; $A7809C  D0 03        Mx
    JMP L_A7849C                    ; $A7809E  4C 9C 84     Mx
L_A780A1:
    JMP L_A78719                    ; $A780A1  4C 19 87     Mx
L_A780A4:
    LDX $08C1                       ; $A780A4  AE C1 08     Mx
    BEQ L_A780EE                    ; $A780A7  F0 45        Mx
    LDA $0944                       ; $A780A9  AD 44 09     Mx
    BEQ L_A780C2                    ; $A780AC  F0 14        Mx
    INC                             ; $A780AE  1A           Mx
    BEQ L_A780C2                    ; $A780AF  F0 11        Mx
    LDA $0956                       ; $A780B1  AD 56 09     Mx
    BNE L_A780C2                    ; $A780B4  D0 0C        Mx
    STZ $0A2E                       ; $A780B6  9C 2E 0A     Mx
    LDA $0A88                       ; $A780B9  AD 88 0A     Mx
    STA $00B7                       ; $A780BC  8D B7 00     Mx
    JMP L_A780D3                    ; $A780BF  4C D3 80     Mx
L_A780C2:
    LDA $0940                       ; $A780C2  AD 40 09     Mx
    BEQ L_A780EE                    ; $A780C5  F0 27        Mx
    LDA #$0003                      ; $A780C7  A9 03 00     Mx
    STA $0A64                       ; $A780CA  8D 64 0A     Mx
    LDA $0A8A                       ; $A780CD  AD 8A 0A     Mx
    STA $00B7                       ; $A780D0  8D B7 00     Mx
L_A780D3:
    LDA $0A90                       ; $A780D3  AD 90 0A     Mx
    AND #$0F00                      ; $A780D6  29 00 0F     Mx
    ORA $0A8C                       ; $A780D9  0D 8C 0A     Mx
    ORA $00B7                       ; $A780DC  0D B7 00     Mx
    STA $0A90                       ; $A780DF  8D 90 0A     Mx
    STZ $0A60                       ; $A780E2  9C 60 0A     Mx
    LDA #$0014                      ; $A780E5  A9 14 00     Mx
    STA $0A40                       ; $A780E8  8D 40 0A     Mx
    JMP L_A78CBA                    ; $A780EB  4C BA 8C     Mx
L_A780EE:
    LDA #$0001                      ; $A780EE  A9 01 00     Mx
    STA $0A62                       ; $A780F1  8D 62 0A     Mx
    LDA $09B0                       ; $A780F4  AD B0 09     Mx
    BIT #$0002                      ; $A780F7  89 02 00     Mx
    BNE L_A7810C                    ; $A780FA  D0 10        Mx
    LDA $09DA                       ; $A780FC  AD DA 09     Mx
    BNE L_A7810F                    ; $A780FF  D0 0E        Mx
    LDA $0A90                       ; $A78101  AD 90 0A     Mx
    BIT $0A8A                       ; $A78104  2C 8A 0A     Mx
    BEQ L_A78112                    ; $A78107  F0 09        Mx
    JMP L_A78409                    ; $A78109  4C 09 84     Mx
L_A7810C:
    JMP L_A78496                    ; $A7810C  4C 96 84     Mx
L_A7810F:
    JMP L_A78447                    ; $A7810F  4C 47 84     Mx
L_A78112:
    LDA $09B0                       ; $A78112  AD B0 09     Mx
    BIT #$0001                      ; $A78115  89 01 00     Mx
    BNE L_A7810F                    ; $A78118  D0 F5        Mx
    LDA $0A38                       ; $A7811A  AD 38 0A     Mx
    BEQ L_A78122                    ; $A7811D  F0 03        Mx
    JMP L_A7818C                    ; $A7811F  4C 8C 81     Mx
L_A78122:
    LDA $0758                       ; $A78122  AD 58 07     Mx
    CMP $0A0C                       ; $A78125  CD 0C 0A     Mx
    BCC L_A7814D                    ; $A78128  90 23        Mx
    LDA $0840                       ; $A7812A  AD 40 08     Mx
    CMP $0A0C                       ; $A7812D  CD 0C 0A     Mx
    BCC L_A7814D                    ; $A78130  90 1B        Mx
    LDA $0A0A                       ; $A78132  AD 0A 0A     Mx
    STA $00D0                       ; $A78135  8D D0 00     Mx
    LDA #$0374                      ; $A78138  A9 74 03     Mx
    STA $00D3                       ; $A7813B  8D D3 00     Mx
    JSR L_A78C34                    ; $A7813E  20 34 8C     Mx
    LDA $0A6E                       ; $A78141  AD 6E 0A     Mx
    BPL L_A78150                    ; $A78144  10 0A        Mx
    CMP #$FFF3                      ; $A78146  C9 F3 FF     Mx
    BCC L_A78159                    ; $A78149  90 0E        Mx
    BRA L_A78150                    ; $A7814B  80 03        Mx
L_A7814D:
    JMP L_A781BC                    ; $A7814D  4C BC 81     Mx
L_A78150:
    LDA $0A90                       ; $A78150  AD 90 0A     Mx
    ORA $0A8C                       ; $A78153  0D 8C 0A     Mx
    STA $0A90                       ; $A78156  8D 90 0A     Mx
L_A78159:
    LDA $0CCB                       ; $A78159  AD CB 0C     Mx
    CMP #$0002                      ; $A7815C  C9 02 00     Mx
    BCC L_A7816E                    ; $A7815F  90 0D        Mx
    LDA $0CCD                       ; $A78161  AD CD 0C     Mx
    BNE L_A78171                    ; $A78164  D0 0B        Mx
    LDA $0CCF                       ; $A78166  AD CF 0C     Mx
    CMP #$0003                      ; $A78169  C9 03 00     Mx
    BCS L_A78171                    ; $A7816C  B0 03        Mx
L_A7816E:
    JMP L_A783DF                    ; $A7816E  4C DF 83     Mx
L_A78171:
    LDA $0A0C                       ; $A78171  AD 0C 0A     Mx
    CMP #$0088                      ; $A78174  C9 88 00     Mx
    BCC L_A7817C                    ; $A78177  90 03        Mx
L_A78179:
    JMP L_A78CBA                    ; $A78179  4C BA 8C     Mx
L_A7817C:
    CMP #$0028                      ; $A7817C  C9 28 00     Mx
    BCC L_A7816E                    ; $A7817F  90 ED        Mx
    LDA $1D56                       ; $A78181  AD 56 1D     Mx
    AND #$000F                      ; $A78184  29 0F 00     Mx
    BNE L_A78179                    ; $A78187  D0 F0        Mx
    JMP L_A783DF                    ; $A78189  4C DF 83     Mx
L_A7818C:
    LDA $0A90                       ; $A7818C  AD 90 0A     Mx
    AND #$FEFF                      ; $A7818F  29 FF FE     Mx
    STA $0A90                       ; $A78192  8D 90 0A     Mx
    STZ $0A64                       ; $A78195  9C 64 0A     Mx
    LDA $0A0C                       ; $A78198  AD 0C 0A     Mx
    CMP #$00B8                      ; $A7819B  C9 B8 00     Mx
    BCS L_A781A3                    ; $A7819E  B0 03        Mx
    JMP L_A783DF                    ; $A781A0  4C DF 83     Mx
L_A781A3:
    STZ $0A2C                       ; $A781A3  9C 2C 0A     Mx
    STZ $0A2E                       ; $A781A6  9C 2E 0A     Mx
    JSR L_A78673                    ; $A781A9  20 73 86     Mx
    BNE L_A781B9                    ; $A781AC  D0 0B        Mx
    LDA $1D56                       ; $A781AE  AD 56 1D     Mx
    AND #$000F                      ; $A781B1  29 0F 00     Mx
    BNE L_A781B9                    ; $A781B4  D0 03        Mx
    JMP L_A783DF                    ; $A781B6  4C DF 83     Mx
L_A781B9:
    JMP L_A78CBA                    ; $A781B9  4C BA 8C     Mx
L_A781BC:
    LDA $0CCB                       ; $A781BC  AD CB 0C     Mx
    CMP #$0002                      ; $A781BF  C9 02 00     Mx
    BCS L_A781C7                    ; $A781C2  B0 03        Mx
    JMP L_A783DF                    ; $A781C4  4C DF 83     Mx
L_A781C7:
    LDA $0CCD                       ; $A781C7  AD CD 0C     Mx
    BNE L_A781D7                    ; $A781CA  D0 0B        Mx
    LDA $0CCF                       ; $A781CC  AD CF 0C     Mx
    CMP #$0003                      ; $A781CF  C9 03 00     Mx
    BCS L_A781D7                    ; $A781D2  B0 03        Mx
    JMP L_A783DF                    ; $A781D4  4C DF 83     Mx
L_A781D7:
    LDA $0A20                       ; $A781D7  AD 20 0A     Mx
    CMP #$0040                      ; $A781DA  C9 40 00     Mx
    BCS L_A7820F                    ; $A781DD  B0 30        Mx
    LDA $0A0C                       ; $A781DF  AD 0C 0A     Mx
    CMP $0A20                       ; $A781E2  CD 20 0A     Mx
    BCC L_A7820F                    ; $A781E5  90 28        Mx
    LDA $0A1A                       ; $A781E7  AD 1A 0A     Mx
    SEC                             ; $A781EA  38           Mx
    SBC $0A0E                       ; $A781EB  ED 0E 0A     Mx
    BPL L_A781F7                    ; $A781EE  10 07        Mx
    EOR #$FFFF                      ; $A781F0  49 FF FF     Mx
    CLC                             ; $A781F3  18           Mx
    ADC #$0001                      ; $A781F4  69 01 00     Mx
L_A781F7:
    CMP #$0041                      ; $A781F7  C9 41 00     Mx
    BCC L_A78209                    ; $A781FA  90 0D        Mx
    SEC                             ; $A781FC  38           Mx
    SBC #$0080                      ; $A781FD  E9 80 00     Mx
    BPL L_A78209                    ; $A78200  10 07        Mx
    EOR #$FFFF                      ; $A78202  49 FF FF     Mx
    CLC                             ; $A78205  18           Mx
    ADC #$0001                      ; $A78206  69 01 00     Mx
L_A78209:
    SEC                             ; $A78209  38           Mx
    SBC #$0020                      ; $A7820A  E9 20 00     Mx
    BMI L_A7824A                    ; $A7820D  30 3B        Mx
L_A7820F:
    LDA $0A22                       ; $A7820F  AD 22 0A     Mx
    CMP #$0040                      ; $A78212  C9 40 00     Mx
    BCS L_A78247                    ; $A78215  B0 30        Mx
    LDA $0A0C                       ; $A78217  AD 0C 0A     Mx
    CMP $0A22                       ; $A7821A  CD 22 0A     Mx
    BCC L_A78247                    ; $A7821D  90 28        Mx
    LDA $0A1C                       ; $A7821F  AD 1C 0A     Mx
    SEC                             ; $A78222  38           Mx
    SBC $0A0E                       ; $A78223  ED 0E 0A     Mx
    BPL L_A7822F                    ; $A78226  10 07        Mx
    EOR #$FFFF                      ; $A78228  49 FF FF     Mx
    CLC                             ; $A7822B  18           Mx
    ADC #$0001                      ; $A7822C  69 01 00     Mx
L_A7822F:
    CMP #$0041                      ; $A7822F  C9 41 00     Mx
    BCC L_A78241                    ; $A78232  90 0D        Mx
    SEC                             ; $A78234  38           Mx
    SBC #$0080                      ; $A78235  E9 80 00     Mx
    BPL L_A78241                    ; $A78238  10 07        Mx
    EOR #$FFFF                      ; $A7823A  49 FF FF     Mx
    CLC                             ; $A7823D  18           Mx
    ADC #$0001                      ; $A7823E  69 01 00     Mx
L_A78241:
    SEC                             ; $A78241  38           Mx
    SBC #$0020                      ; $A78242  E9 20 00     Mx
    BMI L_A7824A                    ; $A78245  30 03        Mx
L_A78247:
    JMP L_A782DD                    ; $A78247  4C DD 82     Mx
L_A7824A:
    LDA $0A1E                       ; $A7824A  AD 1E 0A     Mx
    CMP #$0038                      ; $A7824D  C9 38 00     Mx
    BCC L_A7825A                    ; $A78250  90 08        Mx
    JSR L_A78673                    ; $A78252  20 73 86     Mx
    BEQ L_A7825A                    ; $A78255  F0 03        Mx
    JMP L_A78CBA                    ; $A78257  4C BA 8C     Mx
L_A7825A:
    LDA $0A92                       ; $A7825A  AD 92 0A     Mx
    SEC                             ; $A7825D  38           Mx
    SBC #$0002                      ; $A7825E  E9 02 00     Mx
    STA $00D0                       ; $A78261  8D D0 00     Mx
    BEQ L_A78268                    ; $A78264  F0 02        Mx
    BPL L_A782A3                    ; $A78266  10 3B        Mx
L_A78268:
    LDA $1D56                       ; $A78268  AD 56 1D     Mx
    AND #$0001                      ; $A7826B  29 01 00     Mx
    STA $0A94                       ; $A7826E  8D 94 0A     Mx
    LDA #$002B                      ; $A78271  A9 2B 00     Mx
    STA $00D0                       ; $A78274  8D D0 00     Mx
    LDA $1D57                       ; $A78277  AD 57 1D     Mx
    STA $00BA                       ; $A7827A  8D BA 00     Mx
    INC $00D0                       ; $A7827D  EE D0 00     Mx
    SEP #$20                        ; $A78280  E2 20        Mx
    LDA $00D0                       ; $A78282  AD D0 00     mx
    STA $4202                       ; $A78285  8D 02 42     mx
    LDA $00BA                       ; $A78288  AD BA 00     mx
    STA $4203                       ; $A7828B  8D 03 42     mx
    NOP                             ; $A7828E  EA           mx
    NOP                             ; $A7828F  EA           mx
    NOP                             ; $A78290  EA           mx
    REP #$20                        ; $A78291  C2 20        mx
    LDA $4216                       ; $A78293  AD 16 42     Mx
    STA $00BA                       ; $A78296  8D BA 00     Mx
    LDA $00BB                       ; $A78299  AD BB 00     Mx
    AND #$00FF                      ; $A7829C  29 FF 00     Mx
    CLC                             ; $A7829F  18           Mx
    ADC #$000A                      ; $A782A0  69 0A 00     Mx
L_A782A3:
    STA $0A92                       ; $A782A3  8D 92 0A     Mx
    LDA $0A0A                       ; $A782A6  AD 0A 0A     Mx
    STA $00D0                       ; $A782A9  8D D0 00     Mx
    LDA #$0374                      ; $A782AC  A9 74 03     Mx
    STA $00D3                       ; $A782AF  8D D3 00     Mx
    JSR L_A78C34                    ; $A782B2  20 34 8C     Mx
    BNE L_A782BA                    ; $A782B5  D0 03        Mx
    JMP L_A783DF                    ; $A782B7  4C DF 83     Mx
L_A782BA:
    LDA $00D1                       ; $A782BA  AD D1 00     Mx
    LDX $0A94                       ; $A782BD  AE 94 0A     Mx
    BEQ L_A782C6                    ; $A782C0  F0 04        Mx
    CLC                             ; $A782C2  18           Mx
    ADC #$0010                      ; $A782C3  69 10 00     Mx
L_A782C6:
    SEP #$20                        ; $A782C6  E2 20        Mx
    TAX                             ; $A782C8  AA           mx
    LDA $A7E957,X                   ; $A782C9  BF 57 E9 A7  mx
    STA $0A91                       ; $A782CD  8D 91 0A     mx
    REP #$20                        ; $A782D0  C2 20        mx
    LDA $0A0C                       ; $A782D2  AD 0C 0A     Mx
    CMP #$0040                      ; $A782D5  C9 40 00     Mx
    BCS L_A78315                    ; $A782D8  B0 3B        Mx
    JMP L_A783DF                    ; $A782DA  4C DF 83     Mx
L_A782DD:
    LDA $0A20                       ; $A782DD  AD 20 0A     Mx
    CMP #$0034                      ; $A782E0  C9 34 00     Mx
    BCC L_A78312                    ; $A782E3  90 2D        Mx
    LDA $0A22                       ; $A782E5  AD 22 0A     Mx
    CMP #$0034                      ; $A782E8  C9 34 00     Mx
    BCC L_A78312                    ; $A782EB  90 25        Mx
    LDA $0A0A                       ; $A782ED  AD 0A 0A     Mx
    STA $00D0                       ; $A782F0  8D D0 00     Mx
    LDA #$0374                      ; $A782F3  A9 74 03     Mx
    STA $00D3                       ; $A782F6  8D D3 00     Mx
    JSR L_A78C34                    ; $A782F9  20 34 8C     Mx
    LDA $0A6E                       ; $A782FC  AD 6E 0A     Mx
    BPL L_A78306                    ; $A782FF  10 05        Mx
    CMP #$FFF3                      ; $A78301  C9 F3 FF     Mx
    BCC L_A78315                    ; $A78304  90 0F        Mx
L_A78306:
    LDA $0A90                       ; $A78306  AD 90 0A     Mx
    ORA $0A8C                       ; $A78309  0D 8C 0A     Mx
    STA $0A90                       ; $A7830C  8D 90 0A     Mx
    JMP L_A78315                    ; $A7830F  4C 15 83     Mx
L_A78312:
    JMP L_A7825A                    ; $A78312  4C 5A 82     Mx
L_A78315:
    LDA $0A0C                       ; $A78315  AD 0C 0A     Mx
    CMP #$0028                      ; $A78318  C9 28 00     Mx
    BCC L_A78325                    ; $A7831B  90 08        Mx
    LDX $08C1                       ; $A7831D  AE C1 08     Mx
    BEQ L_A78328                    ; $A78320  F0 06        Mx
    JMP L_A78CBA                    ; $A78322  4C BA 8C     Mx
L_A78325:
    JMP L_A783DF                    ; $A78325  4C DF 83     Mx
L_A78328:
    LDA $09DE                       ; $A78328  AD DE 09     Mx
    SEC                             ; $A7832B  38           Mx
    SBC #$0310                      ; $A7832C  E9 10 03     Mx
    LSR                             ; $A7832F  4A           Mx
    BPL L_A78335                    ; $A78330  10 03        Mx
    LDA #$0000                      ; $A78332  A9 00 00     Mx
L_A78335:
    CMP #$0070                      ; $A78335  C9 70 00     Mx
    BCC L_A7833D                    ; $A78338  90 03        Mx
    LDA #$0070                      ; $A7833A  A9 70 00     Mx
L_A7833D:
    ASL                             ; $A7833D  0A           Mx
    TAX                             ; $A7833E  AA           Mx
    LDA $09D6                       ; $A7833F  AD D6 09     Mx
    BPL L_A7834D                    ; $A78342  10 09        Mx
    CMP $A7E714,X                   ; $A78344  DF 14 E7 A7  Mx
    BCS L_A7834D                    ; $A78348  B0 03        Mx
    JMP L_A78394                    ; $A7834A  4C 94 83     Mx
L_A7834D:
    LDA $0A0C                       ; $A7834D  AD 0C 0A     Mx
    CMP #$00F5                      ; $A78350  C9 F5 00     Mx
    BCS L_A78394                    ; $A78353  B0 3F        Mx
    LDA #$0006                      ; $A78355  A9 06 00     Mx
    STA $00D3                       ; $A78358  8D D3 00     Mx
    LDA $0CCB                       ; $A7835B  AD CB 0C     Mx
    CMP #$0046                      ; $A7835E  C9 46 00     Mx
    BCS L_A78369                    ; $A78361  B0 06        Mx
    LDA #$0003                      ; $A78363  A9 03 00     Mx
    STA $00D3                       ; $A78366  8D D3 00     Mx
L_A78369:
    LDA $0A82                       ; $A78369  AD 82 0A     Mx
    BMI L_A78394                    ; $A7836C  30 26        Mx
    CMP $00D3                       ; $A7836E  CD D3 00     Mx
    BMI L_A78394                    ; $A78371  30 21        Mx
    LDA $0CCB                       ; $A78373  AD CB 0C     Mx
    CMP #$0028                      ; $A78376  C9 28 00     Mx
    BCC L_A783DF                    ; $A78379  90 64        Mx
    LDA #$0008                      ; $A7837B  A9 08 00     Mx
    STA $00D0                       ; $A7837E  8D D0 00     Mx
    LDA $0A20                       ; $A78381  AD 20 0A     Mx
    CMP #$0038                      ; $A78384  C9 38 00     Mx
    BCC L_A783AA                    ; $A78387  90 21        Mx
    LDA $0A22                       ; $A78389  AD 22 0A     Mx
    CMP #$0038                      ; $A7838C  C9 38 00     Mx
    BCC L_A783AA                    ; $A7838F  90 19        Mx
    JMP L_A783DF                    ; $A78391  4C DF 83     Mx
L_A78394:
    LDA #$0019                      ; $A78394  A9 19 00     Mx
    STA $00D0                       ; $A78397  8D D0 00     Mx
    LDA $0A6E                       ; $A7839A  AD 6E 0A     Mx
    BPL L_A783AA                    ; $A7839D  10 0B        Mx
    CMP #$FFF8                      ; $A7839F  C9 F8 FF     Mx
    BCS L_A783AA                    ; $A783A2  B0 06        Mx
    LDA #$000F                      ; $A783A4  A9 0F 00     Mx
    STA $00D0                       ; $A783A7  8D D0 00     Mx
L_A783AA:
    LDA $1D57                       ; $A783AA  AD 57 1D     Mx
    STA $00BA                       ; $A783AD  8D BA 00     Mx
    INC $00D0                       ; $A783B0  EE D0 00     Mx
    SEP #$20                        ; $A783B3  E2 20        Mx
    LDA $00D0                       ; $A783B5  AD D0 00     mx
    STA $4202                       ; $A783B8  8D 02 42     mx
    LDA $00BA                       ; $A783BB  AD BA 00     mx
    STA $4203                       ; $A783BE  8D 03 42     mx
    NOP                             ; $A783C1  EA           mx
    NOP                             ; $A783C2  EA           mx
    NOP                             ; $A783C3  EA           mx
    REP #$20                        ; $A783C4  C2 20        mx
    LDA $4216                       ; $A783C6  AD 16 42     Mx
    STA $00BA                       ; $A783C9  8D BA 00     Mx
    LDA $00BB                       ; $A783CC  AD BB 00     Mx
    AND #$00FF                      ; $A783CF  29 FF 00     Mx
    BEQ L_A783D7                    ; $A783D2  F0 03        Mx
L_A783D4:
    JMP L_A78CBA                    ; $A783D4  4C BA 8C     Mx
L_A783D7:
    LDA $0A0C                       ; $A783D7  AD 0C 0A     Mx
    CMP #$00C0                      ; $A783DA  C9 C0 00     Mx
    BCS L_A783D4                    ; $A783DD  B0 F5        Mx
L_A783DF:
    LDA $09A8                       ; $A783DF  AD A8 09     Mx
    CMP $0C19                       ; $A783E2  CD 19 0C     Mx
    BNE L_A783F4                    ; $A783E5  D0 0D        Mx
    LDX $08C1                       ; $A783E7  AE C1 08     Mx
    BEQ L_A783F4                    ; $A783EA  F0 08        Mx
    LDA $0A0C                       ; $A783EC  AD 0C 0A     Mx
    CMP #$0080                      ; $A783EF  C9 80 00     Mx
    BCS L_A78406                    ; $A783F2  B0 12        Mx
L_A783F4:
    LDA $0A90                       ; $A783F4  AD 90 0A     Mx
    ORA $0A8A                       ; $A783F7  0D 8A 0A     Mx
    ORA $0A8C                       ; $A783FA  0D 8C 0A     Mx
    STA $0A90                       ; $A783FD  8D 90 0A     Mx
    LDA #$0001                      ; $A78400  A9 01 00     Mx
    STA $0A64                       ; $A78403  8D 64 0A     Mx
L_A78406:
    JMP L_A78CBA                    ; $A78406  4C BA 8C     Mx
L_A78409:
    LDA $0A64                       ; $A78409  AD 64 0A     Mx
    STA $00D6                       ; $A7840C  8D D6 00     Mx
    BEQ L_A78406                    ; $A7840F  F0 F5        Mx
    BMI L_A78406                    ; $A78411  30 F3        Mx
    LDX $08C1                       ; $A78413  AE C1 08     Mx
    BNE L_A78406                    ; $A78416  D0 EE        Mx
    LDA $1D58                       ; $A78418  AD 58 1D     Mx
    AND #$000F                      ; $A7841B  29 0F 00     Mx
    CMP #$0009                      ; $A7841E  C9 09 00     Mx
    BNE L_A78406                    ; $A78421  D0 E3        Mx
    LDA $0CCB                       ; $A78423  AD CB 0C     Mx
    CMP #$0002                      ; $A78426  C9 02 00     Mx
    BCC L_A78406                    ; $A78429  90 DB        Mx
    LDA $0CCD                       ; $A7842B  AD CD 0C     Mx
    BNE L_A78438                    ; $A7842E  D0 08        Mx
    LDA $0CCF                       ; $A78430  AD CF 0C     Mx
    CMP #$0003                      ; $A78433  C9 03 00     Mx
    BCC L_A78406                    ; $A78436  90 CE        Mx
L_A78438:
    DEC $00D6                       ; $A78438  CE D6 00     Mx
    DEC $00D6                       ; $A7843B  CE D6 00     Mx
    LDA $00D6                       ; $A7843E  AD D6 00     Mx
    STA $0A64                       ; $A78441  8D 64 0A     Mx
    JMP L_A78496                    ; $A78444  4C 96 84     Mx
L_A78447:
    LDX $08C1                       ; $A78447  AE C1 08     Mx
    BEQ L_A78457                    ; $A7844A  F0 0B        Mx
    LDA $093C                       ; $A7844C  AD 3C 09     Mx
    AND $0A8A                       ; $A7844F  2D 8A 0A     Mx
    BNE L_A78406                    ; $A78452  D0 B2        Mx
L_A78454:
    JMP L_A78496                    ; $A78454  4C 96 84     Mx
L_A78457:
    LDA $09AC                       ; $A78457  AD AC 09     Mx
    CMP #$0022                      ; $A7845A  C9 22 00     Mx
    BEQ L_A78454                    ; $A7845D  F0 F5        Mx
    LDA $1D57                       ; $A7845F  AD 57 1D     Mx
    AND #$0007                      ; $A78462  29 07 00     Mx
    BEQ L_A78454                    ; $A78465  F0 ED        Mx
    LDA $1D56                       ; $A78467  AD 56 1D     Mx
    AND #$000F                      ; $A7846A  29 0F 00     Mx
    BNE L_A78499                    ; $A7846D  D0 2A        Mx
    LDA $0A82                       ; $A7846F  AD 82 0A     Mx
    CLC                             ; $A78472  18           Mx
    ADC #$0005                      ; $A78473  69 05 00     Mx
    BMI L_A78488                    ; $A78476  30 10        Mx
    LDA $09B0                       ; $A78478  AD B0 09     Mx
    AND #$0004                      ; $A7847B  29 04 00     Mx
    BNE L_A78499                    ; $A7847E  D0 19        Mx
    LDA $0CCB                       ; $A78480  AD CB 0C     Mx
    CMP #$0002                      ; $A78483  C9 02 00     Mx
    BCC L_A78499                    ; $A78486  90 11        Mx
L_A78488:
    LDA $09B0                       ; $A78488  AD B0 09     Mx
    BIT #$000C                      ; $A7848B  89 0C 00     Mx
    BNE L_A78499                    ; $A7848E  D0 09        Mx
    JSR L_A78673                    ; $A78490  20 73 86     Mx
    JMP L_A78CBA                    ; $A78493  4C BA 8C     Mx
L_A78496:
    STZ $0A90                       ; $A78496  9C 90 0A     Mx
L_A78499:
    JMP L_A78CBA                    ; $A78499  4C BA 8C     Mx
L_A7849C:
    STZ $0A60                       ; $A7849C  9C 60 0A     Mx
    LDA $0A62                       ; $A7849F  AD 62 0A     Mx
    CMP #$0001                      ; $A784A2  C9 01 00     Mx
    BCS L_A784E7                    ; $A784A5  B0 40        Mx
    LDA #$0001                      ; $A784A7  A9 01 00     Mx
    STA $0A62                       ; $A784AA  8D 62 0A     Mx
    JSR L_A78C9F                    ; $A784AD  20 9F 8C     Mx
    TAX                             ; $A784B0  AA           Mx
    LDA $A7E838,X                   ; $A784B1  BF 38 E8 A7  Mx
    AND #$00FF                      ; $A784B5  29 FF 00     Mx
    STA $00D0                       ; $A784B8  8D D0 00     Mx
    LDA $1D56                       ; $A784BB  AD 56 1D     Mx
    STA $00BA                       ; $A784BE  8D BA 00     Mx
    INC $00D0                       ; $A784C1  EE D0 00     Mx
    SEP #$20                        ; $A784C4  E2 20        Mx
    LDA $00D0                       ; $A784C6  AD D0 00     mx
    STA $4202                       ; $A784C9  8D 02 42     mx
    LDA $00BA                       ; $A784CC  AD BA 00     mx
    STA $4203                       ; $A784CF  8D 03 42     mx
    NOP                             ; $A784D2  EA           mx
    NOP                             ; $A784D3  EA           mx
    NOP                             ; $A784D4  EA           mx
    REP #$20                        ; $A784D5  C2 20        mx
    LDA $4216                       ; $A784D7  AD 16 42     Mx
    STA $00BA                       ; $A784DA  8D BA 00     Mx
    LDA $00BB                       ; $A784DD  AD BB 00     Mx
    AND #$00FF                      ; $A784E0  29 FF 00     Mx
    INC                             ; $A784E3  1A           Mx
    STA $0A64                       ; $A784E4  8D 64 0A     Mx
L_A784E7:
    LDA $09C0                       ; $A784E7  AD C0 09     Mx
    ASL                             ; $A784EA  0A           Mx
    ASL                             ; $A784EB  0A           Mx
    ASL                             ; $A784EC  0A           Mx
    ASL                             ; $A784ED  0A           Mx
    STA $00D9                       ; $A784EE  8D D9 00     Mx
    LDA $0A20                       ; $A784F1  AD 20 0A     Mx
    CMP #$0028                      ; $A784F4  C9 28 00     Mx
    BPL L_A78521                    ; $A784F7  10 28        Mx
    LDA $0A1A                       ; $A784F9  AD 1A 0A     Mx
    SEC                             ; $A784FC  38           Mx
    SBC $00D9                       ; $A784FD  ED D9 00     Mx
    BPL L_A78509                    ; $A78500  10 07        Mx
    EOR #$FFFF                      ; $A78502  49 FF FF     Mx
    CLC                             ; $A78505  18           Mx
    ADC #$0001                      ; $A78506  69 01 00     Mx
L_A78509:
    CMP #$0041                      ; $A78509  C9 41 00     Mx
    BCC L_A7851B                    ; $A7850C  90 0D        Mx
    SEC                             ; $A7850E  38           Mx
    SBC #$0080                      ; $A7850F  E9 80 00     Mx
    BPL L_A7851B                    ; $A78512  10 07        Mx
    EOR #$FFFF                      ; $A78514  49 FF FF     Mx
    CLC                             ; $A78517  18           Mx
    ADC #$0001                      ; $A78518  69 01 00     Mx
L_A7851B:
    SEC                             ; $A7851B  38           Mx
    SBC #$0010                      ; $A7851C  E9 10 00     Mx
    BMI L_A78557                    ; $A7851F  30 36        Mx
L_A78521:
    LDA $0A22                       ; $A78521  AD 22 0A     Mx
    CMP #$0028                      ; $A78524  C9 28 00     Mx
    BMI L_A7852C                    ; $A78527  30 03        Mx
    JMP L_A785BE                    ; $A78529  4C BE 85     Mx
L_A7852C:
    LDA $0A1C                       ; $A7852C  AD 1C 0A     Mx
    SEC                             ; $A7852F  38           Mx
    SBC $00D9                       ; $A78530  ED D9 00     Mx
    BPL L_A7853C                    ; $A78533  10 07        Mx
    EOR #$FFFF                      ; $A78535  49 FF FF     Mx
    CLC                             ; $A78538  18           Mx
    ADC #$0001                      ; $A78539  69 01 00     Mx
L_A7853C:
    CMP #$0041                      ; $A7853C  C9 41 00     Mx
    BCC L_A7854E                    ; $A7853F  90 0D        Mx
    SEC                             ; $A78541  38           Mx
    SBC #$0080                      ; $A78542  E9 80 00     Mx
    BPL L_A7854E                    ; $A78545  10 07        Mx
    EOR #$FFFF                      ; $A78547  49 FF FF     Mx
    CLC                             ; $A7854A  18           Mx
    ADC #$0001                      ; $A7854B  69 01 00     Mx
L_A7854E:
    SEC                             ; $A7854E  38           Mx
    SBC #$0010                      ; $A7854F  E9 10 00     Mx
    BMI L_A78557                    ; $A78552  30 03        Mx
    JMP L_A785BE                    ; $A78554  4C BE 85     Mx
L_A78557:
    LDA #$0037                      ; $A78557  A9 37 00     Mx
    STA $00D0                       ; $A7855A  8D D0 00     Mx
    LDA $1D58                       ; $A7855D  AD 58 1D     Mx
    STA $00BA                       ; $A78560  8D BA 00     Mx
    INC $00D0                       ; $A78563  EE D0 00     Mx
    SEP #$20                        ; $A78566  E2 20        Mx
    LDA $00D0                       ; $A78568  AD D0 00     mx
    STA $4202                       ; $A7856B  8D 02 42     mx
    LDA $00BA                       ; $A7856E  AD BA 00     mx
    STA $4203                       ; $A78571  8D 03 42     mx
    NOP                             ; $A78574  EA           mx
    NOP                             ; $A78575  EA           mx
    NOP                             ; $A78576  EA           mx
    REP #$20                        ; $A78577  C2 20        mx
    LDA $4216                       ; $A78579  AD 16 42     Mx
    STA $00BA                       ; $A7857C  8D BA 00     Mx
    LDA $00BB                       ; $A7857F  AD BB 00     Mx
    AND #$00FF                      ; $A78582  29 FF 00     Mx
    STA $00D0                       ; $A78585  8D D0 00     Mx
    LDA $0A82                       ; $A78588  AD 82 0A     Mx
    CLC                             ; $A7858B  18           Mx
    ADC $0A6E                       ; $A7858C  6D 6E 0A     Mx
    BMI L_A78599                    ; $A7858F  30 08        Mx
    CMP #$0010                      ; $A78591  C9 10 00     Mx
    BMI L_A78599                    ; $A78594  30 03        Mx
    LDA #$000F                      ; $A78596  A9 0F 00     Mx
L_A78599:
    CLC                             ; $A78599  18           Mx
    ADC #$000F                      ; $A7859A  69 0F 00     Mx
    BPL L_A785A2                    ; $A7859D  10 03        Mx
    LDA #$0000                      ; $A7859F  A9 00 00     Mx
L_A785A2:
    TAX                             ; $A785A2  AA           Mx
    LDA $A7E857,X                   ; $A785A3  BF 57 E8 A7  Mx
    AND #$00FF                      ; $A785A7  29 FF 00     Mx
    CMP $00D0                       ; $A785AA  CD D0 00     Mx
    BCC L_A785D7                    ; $A785AD  90 28        Mx
    LDA $0A90                       ; $A785AF  AD 90 0A     Mx
    ORA $0A8C                       ; $A785B2  0D 8C 0A     Mx
    ORA $0A88                       ; $A785B5  0D 88 0A     Mx
    STA $0A90                       ; $A785B8  8D 90 0A     Mx
    JMP L_A78670                    ; $A785BB  4C 70 86     Mx
L_A785BE:
    LDA $1D56                       ; $A785BE  AD 56 1D     Mx
    AND #$003F                      ; $A785C1  29 3F 00     Mx
    BEQ L_A785D7                    ; $A785C4  F0 11        Mx
    LDA $0A64                       ; $A785C6  AD 64 0A     Mx
    SEC                             ; $A785C9  38           Mx
    SBC #$0002                      ; $A785CA  E9 02 00     Mx
    STA $00D0                       ; $A785CD  8D D0 00     Mx
    BEQ L_A785D7                    ; $A785D0  F0 05        Mx
    BMI L_A785D7                    ; $A785D2  30 03        Mx
    JMP L_A7864B                    ; $A785D4  4C 4B 86     Mx
L_A785D7:
    LDA #$0010                      ; $A785D7  A9 10 00     Mx
    STA $00D0                       ; $A785DA  8D D0 00     Mx
    LDA $1D57                       ; $A785DD  AD 57 1D     Mx
    STA $00BA                       ; $A785E0  8D BA 00     Mx
    INC $00D0                       ; $A785E3  EE D0 00     Mx
    SEP #$20                        ; $A785E6  E2 20        Mx
    LDA $00D0                       ; $A785E8  AD D0 00     mx
    STA $4202                       ; $A785EB  8D 02 42     mx
    LDA $00BA                       ; $A785EE  AD BA 00     mx
    STA $4203                       ; $A785F1  8D 03 42     mx
    NOP                             ; $A785F4  EA           mx
    NOP                             ; $A785F5  EA           mx
    NOP                             ; $A785F6  EA           mx
    REP #$20                        ; $A785F7  C2 20        mx
    LDA $4216                       ; $A785F9  AD 16 42     Mx
    STA $00BA                       ; $A785FC  8D BA 00     Mx
    LDA $00BB                       ; $A785FF  AD BB 00     Mx
    AND #$00FF                      ; $A78602  29 FF 00     Mx
    ASL                             ; $A78605  0A           Mx
    ASL                             ; $A78606  0A           Mx
    TAX                             ; $A78607  AA           Mx
    LDA $A7E877,X                   ; $A78608  BF 77 E8 A7  Mx
    STA $0A66                       ; $A7860C  8D 66 0A     Mx
    LDA $A7E879,X                   ; $A7860F  BF 79 E8 A7  Mx
    STA $0A68                       ; $A78613  8D 68 0A     Mx
    LDA #$009F                      ; $A78616  A9 9F 00     Mx
    STA $00D0                       ; $A78619  8D D0 00     Mx
    LDA $1D58                       ; $A7861C  AD 58 1D     Mx
    STA $00BA                       ; $A7861F  8D BA 00     Mx
    INC $00D0                       ; $A78622  EE D0 00     Mx
    SEP #$20                        ; $A78625  E2 20        Mx
    LDA $00D0                       ; $A78627  AD D0 00     mx
    STA $4202                       ; $A7862A  8D 02 42     mx
    LDA $00BA                       ; $A7862D  AD BA 00     mx
    STA $4203                       ; $A78630  8D 03 42     mx
    NOP                             ; $A78633  EA           mx
    NOP                             ; $A78634  EA           mx
    NOP                             ; $A78635  EA           mx
    REP #$20                        ; $A78636  C2 20        mx
    LDA $4216                       ; $A78638  AD 16 42     Mx
    STA $00BA                       ; $A7863B  8D BA 00     Mx
    LDA $00BB                       ; $A7863E  AD BB 00     Mx
    AND #$00FF                      ; $A78641  29 FF 00     Mx
    CLC                             ; $A78644  18           Mx
    ADC #$001A                      ; $A78645  69 1A 00     Mx
    STA $00D0                       ; $A78648  8D D0 00     Mx
L_A7864B:
    LDA $00D0                       ; $A7864B  AD D0 00     Mx
    STA $0A64                       ; $A7864E  8D 64 0A     Mx
    LDA $0A66                       ; $A78651  AD 66 0A     Mx
    STA $00D0                       ; $A78654  8D D0 00     Mx
    LDA $0A68                       ; $A78657  AD 68 0A     Mx
    STA $00D3                       ; $A7865A  8D D3 00     Mx
    JSR L_A78C34                    ; $A7865D  20 34 8C     Mx
    BNE L_A78670                    ; $A78660  D0 0E        Mx
    LDA $0006                       ; $A78662  AD 06 00     Mx
    AND #$000F                      ; $A78665  29 0F 00     Mx
    CMP #$000C                      ; $A78668  C9 0C 00     Mx
    BNE L_A78670                    ; $A7866B  D0 03        Mx
    STZ $0A64                       ; $A7866D  9C 64 0A     Mx
L_A78670:
    JMP L_A78CBA                    ; $A78670  4C BA 8C     Mx
L_A78673:
    LDX $08C1                       ; $A78673  AE C1 08     Mx
    BEQ L_A7867B                    ; $A78676  F0 03        Mx
    JMP L_A78712                    ; $A78678  4C 12 87     Mx
L_A7867B:
    LDA $0A1E                       ; $A7867B  AD 1E 0A     Mx
    CLC                             ; $A7867E  18           Mx
    ADC #$000A                      ; $A7867F  69 0A 00     Mx
    STA $00D0                       ; $A78682  8D D0 00     Mx
    CMP $0A20                       ; $A78685  CD 20 0A     Mx
    BCC L_A786B2                    ; $A78688  90 28        Mx
    LDA $0A1A                       ; $A7868A  AD 1A 0A     Mx
    SEC                             ; $A7868D  38           Mx
    SBC $0A18                       ; $A7868E  ED 18 0A     Mx
    BPL L_A7869A                    ; $A78691  10 07        Mx
    EOR #$FFFF                      ; $A78693  49 FF FF     Mx
    CLC                             ; $A78696  18           Mx
    ADC #$0001                      ; $A78697  69 01 00     Mx
L_A7869A:
    CMP #$0041                      ; $A7869A  C9 41 00     Mx
    BCC L_A786AC                    ; $A7869D  90 0D        Mx
    SEC                             ; $A7869F  38           Mx
    SBC #$0080                      ; $A786A0  E9 80 00     Mx
    BPL L_A786AC                    ; $A786A3  10 07        Mx
    EOR #$FFFF                      ; $A786A5  49 FF FF     Mx
    CLC                             ; $A786A8  18           Mx
    ADC #$0001                      ; $A786A9  69 01 00     Mx
L_A786AC:
    SEC                             ; $A786AC  38           Mx
    SBC #$0010                      ; $A786AD  E9 10 00     Mx
    BMI L_A78703                    ; $A786B0  30 51        Mx
L_A786B2:
    LDA $00D0                       ; $A786B2  AD D0 00     Mx
    CMP $0A22                       ; $A786B5  CD 22 0A     Mx
    BCC L_A786E2                    ; $A786B8  90 28        Mx
    LDA $0A1C                       ; $A786BA  AD 1C 0A     Mx
    SEC                             ; $A786BD  38           Mx
    SBC $0A18                       ; $A786BE  ED 18 0A     Mx
    BPL L_A786CA                    ; $A786C1  10 07        Mx
    EOR #$FFFF                      ; $A786C3  49 FF FF     Mx
    CLC                             ; $A786C6  18           Mx
    ADC #$0001                      ; $A786C7  69 01 00     Mx
L_A786CA:
    CMP #$0041                      ; $A786CA  C9 41 00     Mx
    BCC L_A786DC                    ; $A786CD  90 0D        Mx
    SEC                             ; $A786CF  38           Mx
    SBC #$0080                      ; $A786D0  E9 80 00     Mx
    BPL L_A786DC                    ; $A786D3  10 07        Mx
    EOR #$FFFF                      ; $A786D5  49 FF FF     Mx
    CLC                             ; $A786D8  18           Mx
    ADC #$0001                      ; $A786D9  69 01 00     Mx
L_A786DC:
    SEC                             ; $A786DC  38           Mx
    SBC #$0010                      ; $A786DD  E9 10 00     Mx
    BMI L_A78703                    ; $A786E0  30 21        Mx
L_A786E2:
    LDA $08C4                       ; $A786E2  AD C4 08     Mx
    LSR                             ; $A786E5  4A           Mx
    TAX                             ; $A786E6  AA           Mx
    LDA $82DF6E,X                   ; $A786E7  BF 6E DF 82  Mx
    AND #$00FF                      ; $A786EB  29 FF 00     Mx
    BEQ L_A78712                    ; $A786EE  F0 22        Mx
L_A786F0:
    LDA #$0014                      ; $A786F0  A9 14 00     Mx
    STA $0A40                       ; $A786F3  8D 40 0A     Mx
    LDA $0A90                       ; $A786F6  AD 90 0A     Mx
    ORA $0A8C                       ; $A786F9  0D 8C 0A     Mx
    ORA $0A88                       ; $A786FC  0D 88 0A     Mx
    STA $0A90                       ; $A786FF  8D 90 0A     Mx
    RTS                             ; $A78702  60           Mx
L_A78703:
    LDA $0A38                       ; $A78703  AD 38 0A     Mx
    BEQ L_A78712                    ; $A78706  F0 0A        Mx
    LDA $1D56                       ; $A78708  AD 56 1D     Mx
    AND #$00C0                      ; $A7870B  29 C0 00     Mx
    BNE L_A78712                    ; $A7870E  D0 02        Mx
    BRA L_A786F0                    ; $A78710  80 DE        Mx
L_A78712:
    LDA #$0000                      ; $A78712  A9 00 00     Mx
    STA $00D0                       ; $A78715  8D D0 00     Mx
    RTS                             ; $A78718  60           Mx
L_A78719:
    JSR L_A78C9F                    ; $A78719  20 9F 8C     Mx
    STA $00E5                       ; $A7871C  8D E5 00     Mx
    STZ $0A60                       ; $A7871F  9C 60 0A     Mx
    LDA $0A62                       ; $A78722  AD 62 0A     Mx
    BMI L_A7876F                    ; $A78725  30 48        Mx
    LDA #$FFFF                      ; $A78727  A9 FF FF     Mx
    STA $0A62                       ; $A7872A  8D 62 0A     Mx
    LDX $00E5                       ; $A7872D  AE E5 00     Mx
    LDA $A7E8BB,X                   ; $A78730  BF BB E8 A7  Mx
    AND #$00FF                      ; $A78734  29 FF 00     Mx
    STA $00D0                       ; $A78737  8D D0 00     Mx
    LSR                             ; $A7873A  4A           Mx
    LSR                             ; $A7873B  4A           Mx
    STA $00D6                       ; $A7873C  8D D6 00     Mx
    LDA $1D56                       ; $A7873F  AD 56 1D     Mx
    STA $00BA                       ; $A78742  8D BA 00     Mx
    INC $00D0                       ; $A78745  EE D0 00     Mx
    SEP #$20                        ; $A78748  E2 20        Mx
    LDA $00D0                       ; $A7874A  AD D0 00     mx
    STA $4202                       ; $A7874D  8D 02 42     mx
    LDA $00BA                       ; $A78750  AD BA 00     mx
    STA $4203                       ; $A78753  8D 03 42     mx
    NOP                             ; $A78756  EA           mx
    NOP                             ; $A78757  EA           mx
    NOP                             ; $A78758  EA           mx
    REP #$20                        ; $A78759  C2 20        mx
    LDA $4216                       ; $A7875B  AD 16 42     Mx
    STA $00BA                       ; $A7875E  8D BA 00     Mx
    LDA $00BB                       ; $A78761  AD BB 00     Mx
    AND #$00FF                      ; $A78764  29 FF 00     Mx
    INC                             ; $A78767  1A           Mx
    CLC                             ; $A78768  18           Mx
    ADC $00D6                       ; $A78769  6D D6 00     Mx
    STA $0A64                       ; $A7876C  8D 64 0A     Mx
L_A7876F:
    LDA $0A64                       ; $A7876F  AD 64 0A     Mx
    SEC                             ; $A78772  38           Mx
    SBC #$0002                      ; $A78773  E9 02 00     Mx
    BEQ L_A78780                    ; $A78776  F0 08        Mx
    BMI L_A78780                    ; $A78778  30 06        Mx
    STA $00D0                       ; $A7877A  8D D0 00     Mx
    JMP L_A788D8                    ; $A7877D  4C D8 88     Mx
L_A78780:
    LDA #$07D8                      ; $A78780  A9 D8 07     Mx
    STA $00DC                       ; $A78783  8D DC 00     Mx
    CMP $00CC                       ; $A78786  CD CC 00     Mx
    BNE L_A7878E                    ; $A78789  D0 03        Mx
    JMP L_A787E9                    ; $A7878B  4C E9 87     Mx
L_A7878E:
    LDY #$64                        ; $A7878E  A0 64        Mx
    LDA ($CC),Y                     ; $A78790  B1 CC        Mx
    CMP #$00F0                      ; $A78792  C9 F0 00     Mx
    BCC L_A7879A                    ; $A78795  90 03        Mx
    JMP L_A787E9                    ; $A78797  4C E9 87     Mx
L_A7879A:
    LDY #$08                        ; $A7879A  A0 08        Mx
    LDA ($CC),Y                     ; $A7879C  B1 CC        Mx
    AND #$0004                      ; $A7879E  29 04 00     Mx
    BNE L_A787E3                    ; $A787A1  D0 40        Mx
    LDA $08C4                       ; $A787A3  AD C4 08     Mx
    CMP #$0030                      ; $A787A6  C9 30 00     Mx
    BNE L_A787AE                    ; $A787A9  D0 03        Mx
    JMP L_A787E3                    ; $A787AB  4C E3 87     Mx
L_A787AE:
    LDA $092A                       ; $A787AE  AD 2A 09     Mx
    SEC                             ; $A787B1  38           Mx
    SBC $0932                       ; $A787B2  ED 32 09     Mx
    BPL L_A787BE                    ; $A787B5  10 07        Mx
    EOR #$FFFF                      ; $A787B7  49 FF FF     Mx
    CLC                             ; $A787BA  18           Mx
    ADC #$0001                      ; $A787BB  69 01 00     Mx
L_A787BE:
    CMP #$0041                      ; $A787BE  C9 41 00     Mx
    BMI L_A787D0                    ; $A787C1  30 0D        Mx
    SEC                             ; $A787C3  38           Mx
    SBC #$0080                      ; $A787C4  E9 80 00     Mx
    BPL L_A787D0                    ; $A787C7  10 07        Mx
    EOR #$FFFF                      ; $A787C9  49 FF FF     Mx
    CLC                             ; $A787CC  18           Mx
    ADC #$0001                      ; $A787CD  69 01 00     Mx
L_A787D0:
    SEC                             ; $A787D0  38           Mx
    SBC #$001C                      ; $A787D1  E9 1C 00     Mx
    BMI L_A787E3                    ; $A787D4  30 0D        Mx
    BEQ L_A787E3                    ; $A787D6  F0 0B        Mx
    LDA $0938                       ; $A787D8  AD 38 09     Mx
    CMP #$0080                      ; $A787DB  C9 80 00     Mx
    BCS L_A787E3                    ; $A787DE  B0 03        Mx
    JMP L_A787E9                    ; $A787E0  4C E9 87     Mx
L_A787E3:
    LDA $00CC                       ; $A787E3  AD CC 00     Mx
    STA $00DC                       ; $A787E6  8D DC 00     Mx
L_A787E9:
    LDY #$2E                        ; $A787E9  A0 2E        Mx
    LDA ($DC),Y                     ; $A787EB  B1 DC        Mx
    STA $00D0                       ; $A787ED  8D D0 00     Mx
    LDY #$36                        ; $A787F0  A0 36        Mx
    LDA ($DC),Y                     ; $A787F2  B1 DC        Mx
    STA $00D3                       ; $A787F4  8D D3 00     Mx
    LDA $0CCB                       ; $A787F7  AD CB 0C     Mx
    CMP #$0008                      ; $A787FA  C9 08 00     Mx
    BCS L_A78802                    ; $A787FD  B0 03        Mx
L_A787FF:
    JMP L_A7887C                    ; $A787FF  4C 7C 88     Mx
L_A78802:
    LDA $0CCD                       ; $A78802  AD CD 0C     Mx
    BNE L_A7880F                    ; $A78805  D0 08        Mx
    LDA $0CCF                       ; $A78807  AD CF 0C     Mx
    CMP #$0006                      ; $A7880A  C9 06 00     Mx
    BCC L_A787FF                    ; $A7880D  90 F0        Mx
L_A7880F:
    LDY #$08                        ; $A7880F  A0 08        Mx
    LDA ($CC),Y                     ; $A78811  B1 CC        Mx
    AND #$0001                      ; $A78813  29 01 00     Mx
    BNE L_A787FF                    ; $A78816  D0 E7        Mx
    LDY #$39                        ; $A78818  A0 39        Mx
    LDA ($DC),Y                     ; $A7881A  B1 DC        Mx
    CMP #$8000                      ; $A7881C  C9 00 80     Mx
    ROR                             ; $A7881F  6A           Mx
    CMP #$8000                      ; $A78820  C9 00 80     Mx
    ROR                             ; $A78823  6A           Mx
    CMP #$8000                      ; $A78824  C9 00 80     Mx
    ROR                             ; $A78827  6A           Mx
    CMP #$8000                      ; $A78828  C9 00 80     Mx
    ROR                             ; $A7882B  6A           Mx
    CLC                             ; $A7882C  18           Mx
    ADC $00D0                       ; $A7882D  6D D0 00     Mx
    STA $00D0                       ; $A78830  8D D0 00     Mx
    LDY #$41                        ; $A78833  A0 41        Mx
    LDA ($DC),Y                     ; $A78835  B1 DC        Mx
    CMP #$8000                      ; $A78837  C9 00 80     Mx
    ROR                             ; $A7883A  6A           Mx
    CMP #$8000                      ; $A7883B  C9 00 80     Mx
    ROR                             ; $A7883E  6A           Mx
    CMP #$8000                      ; $A7883F  C9 00 80     Mx
    ROR                             ; $A78842  6A           Mx
    CLC                             ; $A78843  18           Mx
    ADC $00D3                       ; $A78844  6D D3 00     Mx
    STA $00D3                       ; $A78847  8D D3 00     Mx
    LDA $083A                       ; $A7884A  AD 3A 08     Mx
    CLC                             ; $A7884D  18           Mx
    ADC $00D0                       ; $A7884E  6D D0 00     Mx
    ASL $00D0                       ; $A78851  0E D0 00     Mx
    CLC                             ; $A78854  18           Mx
    ADC $00D0                       ; $A78855  6D D0 00     Mx
    CMP #$8000                      ; $A78858  C9 00 80     Mx
    ROR                             ; $A7885B  6A           Mx
    CMP #$8000                      ; $A7885C  C9 00 80     Mx
    ROR                             ; $A7885F  6A           Mx
    STA $00D0                       ; $A78860  8D D0 00     Mx
    LDA #$0374                      ; $A78863  A9 74 03     Mx
    CLC                             ; $A78866  18           Mx
    ADC $00D3                       ; $A78867  6D D3 00     Mx
    ASL $00D3                       ; $A7886A  0E D3 00     Mx
    CLC                             ; $A7886D  18           Mx
    ADC $00D3                       ; $A7886E  6D D3 00     Mx
    CMP #$8000                      ; $A78871  C9 00 80     Mx
    ROR                             ; $A78874  6A           Mx
    CMP #$8000                      ; $A78875  C9 00 80     Mx
    ROR                             ; $A78878  6A           Mx
    STA $00D3                       ; $A78879  8D D3 00     Mx
L_A7887C:
    LDA $00D0                       ; $A7887C  AD D0 00     Mx
    STA $0A66                       ; $A7887F  8D 66 0A     Mx
    LDA $00D3                       ; $A78882  AD D3 00     Mx
    STA $0A68                       ; $A78885  8D 68 0A     Mx
    LDA #$0019                      ; $A78888  A9 19 00     Mx
    STA $00D0                       ; $A7888B  8D D0 00     Mx
    LDY #$68                        ; $A7888E  A0 68        Mx
    LDA ($CC),Y                     ; $A78890  B1 CC        Mx
    CMP #$00F8                      ; $A78892  C9 F8 00     Mx
    BCS L_A788D8                    ; $A78895  B0 41        Mx
    LDX $00E5                       ; $A78897  AE E5 00     Mx
    LDA $A7E8DA,X                   ; $A7889A  BF DA E8 A7  Mx
    AND #$00FF                      ; $A7889E  29 FF 00     Mx
    STA $00D0                       ; $A788A1  8D D0 00     Mx
    LSR                             ; $A788A4  4A           Mx
    LSR                             ; $A788A5  4A           Mx
    STA $00D6                       ; $A788A6  8D D6 00     Mx
    LDA $1D58                       ; $A788A9  AD 58 1D     Mx
    STA $00BA                       ; $A788AC  8D BA 00     Mx
    INC $00D0                       ; $A788AF  EE D0 00     Mx
    SEP #$20                        ; $A788B2  E2 20        Mx
    LDA $00D0                       ; $A788B4  AD D0 00     mx
    STA $4202                       ; $A788B7  8D 02 42     mx
    LDA $00BA                       ; $A788BA  AD BA 00     mx
    STA $4203                       ; $A788BD  8D 03 42     mx
    NOP                             ; $A788C0  EA           mx
    NOP                             ; $A788C1  EA           mx
    NOP                             ; $A788C2  EA           mx
    REP #$20                        ; $A788C3  C2 20        mx
    LDA $4216                       ; $A788C5  AD 16 42     Mx
    STA $00BA                       ; $A788C8  8D BA 00     Mx
    LDA $00BB                       ; $A788CB  AD BB 00     Mx
    AND #$00FF                      ; $A788CE  29 FF 00     Mx
    CLC                             ; $A788D1  18           Mx
    ADC $00D6                       ; $A788D2  6D D6 00     Mx
    STA $00D0                       ; $A788D5  8D D0 00     Mx
L_A788D8:
    LDA $00D0                       ; $A788D8  AD D0 00     Mx
    STA $0A64                       ; $A788DB  8D 64 0A     Mx
    LDA $0A66                       ; $A788DE  AD 66 0A     Mx
    STA $00D0                       ; $A788E1  8D D0 00     Mx
    LDA $0A68                       ; $A788E4  AD 68 0A     Mx
    STA $00D3                       ; $A788E7  8D D3 00     Mx
    JSR L_A78C34                    ; $A788EA  20 34 8C     Mx
    STA $00D6                       ; $A788ED  8D D6 00     Mx
    LDA $083C                       ; $A788F0  AD 3C 08     Mx
    SEC                             ; $A788F3  38           Mx
    SBC #$0008                      ; $A788F4  E9 08 00     Mx
    STA $00D0                       ; $A788F7  8D D0 00     Mx
    CMP #$00F0                      ; $A788FA  C9 F0 00     Mx
    BCC L_A78906                    ; $A788FD  90 07        Mx
    SEC                             ; $A788FF  38           Mx
    SBC #$0040                      ; $A78900  E9 40 00     Mx
    STA $00D0                       ; $A78903  8D D0 00     Mx
L_A78906:
    LDA $0A10                       ; $A78906  AD 10 0A     Mx
    CMP $00D0                       ; $A78909  CD D0 00     Mx
    BCC L_A78917                    ; $A7890C  90 09        Mx
    LDA $00D6                       ; $A7890E  AD D6 00     Mx
    ORA $0A8C                       ; $A78911  0D 8C 0A     Mx
    STA $00D6                       ; $A78914  8D D6 00     Mx
L_A78917:
    LDA $0A14                       ; $A78917  AD 14 0A     Mx
    CMP #$001A                      ; $A7891A  C9 1A 00     Mx
    BCS L_A78937                    ; $A7891D  B0 18        Mx
    LDA $0CCB                       ; $A7891F  AD CB 0C     Mx
    CMP #$0008                      ; $A78922  C9 08 00     Mx
    BCC L_A78934                    ; $A78925  90 0D        Mx
    LDA $0CCD                       ; $A78927  AD CD 0C     Mx
    BNE L_A78937                    ; $A7892A  D0 0B        Mx
    LDA $0CCF                       ; $A7892C  AD CF 0C     Mx
    CMP #$0006                      ; $A7892F  C9 06 00     Mx
    BCS L_A78937                    ; $A78932  B0 03        Mx
L_A78934:
    JMP L_A789BB                    ; $A78934  4C BB 89     Mx
L_A78937:
    LDX $00E5                       ; $A78937  AE E5 00     Mx
    LDA $A7E8F9,X                   ; $A7893A  BF F9 E8 A7  Mx
    AND #$00FF                      ; $A7893E  29 FF 00     Mx
    CMP $0A14                       ; $A78941  CD 14 0A     Mx
    BCS L_A78949                    ; $A78944  B0 03        Mx
    JMP L_A789D8                    ; $A78946  4C D8 89     Mx
L_A78949:
    LDA #$0104                      ; $A78949  A9 04 01     Mx
    STA $00BA                       ; $A7894C  8D BA 00     Mx
    SEP #$20                        ; $A7894F  E2 20        Mx
    LDA $1D56                       ; $A78951  AD 56 1D     mx
    STA $4202                       ; $A78954  8D 02 42     mx
    LDA $00BA                       ; $A78957  AD BA 00     mx
    STA $4203                       ; $A7895A  8D 03 42     mx
    NOP                             ; $A7895D  EA           mx
    NOP                             ; $A7895E  EA           mx
    NOP                             ; $A7895F  EA           mx
    REP #$20                        ; $A78960  C2 20        mx
    LDA $4216                       ; $A78962  AD 16 42     Mx
    STA $00BA                       ; $A78965  8D BA 00     Mx
    STA $00A8                       ; $A78968  8D A8 00     Mx
    LDA #$0104                      ; $A7896B  A9 04 01     Mx
    STA $00BA                       ; $A7896E  8D BA 00     Mx
    SEP #$20                        ; $A78971  E2 20        Mx
    LDA $1D56                       ; $A78973  AD 56 1D     mx
    STA $4202                       ; $A78976  8D 02 42     mx
    LDA $00BB                       ; $A78979  AD BB 00     mx
    STA $4203                       ; $A7897C  8D 03 42     mx
    NOP                             ; $A7897F  EA           mx
    NOP                             ; $A78980  EA           mx
    NOP                             ; $A78981  EA           mx
    REP #$20                        ; $A78982  C2 20        mx
    LDA $4216                       ; $A78984  AD 16 42     Mx
    STA $00BB                       ; $A78987  8D BB 00     Mx
    STZ $00F4                       ; $A7898A  9C F4 00     Mx
    STZ $00F2                       ; $A7898D  9C F2 00     Mx
    STA $00F3                       ; $A78990  8D F3 00     Mx
    LDA $00F2                       ; $A78993  AD F2 00     Mx
    CLC                             ; $A78996  18           Mx
    ADC $00A8                       ; $A78997  6D A8 00     Mx
    STA $00F2                       ; $A7899A  8D F2 00     Mx
    LDA $00F4                       ; $A7899D  AD F4 00     Mx
    ADC #$0000                      ; $A789A0  69 00 00     Mx
    STA $00F4                       ; $A789A3  8D F4 00     Mx
    LDA $00F3                       ; $A789A6  AD F3 00     Mx
    STA $00D0                       ; $A789A9  8D D0 00     Mx
    LDX $00E5                       ; $A789AC  AE E5 00     Mx
    LDA $A7E919,X                   ; $A789AF  BF 19 E9 A7  Mx
    AND #$00FF                      ; $A789B3  29 FF 00     Mx
    CMP $00D0                       ; $A789B6  CD D0 00     Mx
    BCC L_A789D8                    ; $A789B9  90 1D        Mx
L_A789BB:
    LDA $00D6                       ; $A789BB  AD D6 00     Mx
    AND #$0F00                      ; $A789BE  29 00 0F     Mx
    ORA $0A88                       ; $A789C1  0D 88 0A     Mx
    STA $00D6                       ; $A789C4  8D D6 00     Mx
    LDA $1D56                       ; $A789C7  AD 56 1D     Mx
    AND #$0001                      ; $A789CA  29 01 00     Mx
    BNE L_A789D8                    ; $A789CD  D0 09        Mx
    LDA $00D6                       ; $A789CF  AD D6 00     Mx
    ORA $0A8C                       ; $A789D2  0D 8C 0A     Mx
    STA $00D6                       ; $A789D5  8D D6 00     Mx
L_A789D8:
    LDA $0A14                       ; $A789D8  AD 14 0A     Mx
    CMP #$002F                      ; $A789DB  C9 2F 00     Mx
    BCC L_A789E3                    ; $A789DE  90 03        Mx
    JMP L_A78A74                    ; $A789E0  4C 74 8A     Mx
L_A789E3:
    LDY #$04                        ; $A789E3  A0 04        Mx
    LDA ($CC),Y                     ; $A789E5  B1 CC        Mx
    CMP #$0030                      ; $A789E7  C9 30 00     Mx
    BEQ L_A789F2                    ; $A789EA  F0 06        Mx
    LDY #$32                        ; $A789EC  A0 32        Mx
    LDA ($CC),Y                     ; $A789EE  B1 CC        Mx
    BNE L_A78A2E                    ; $A789F0  D0 3C        Mx
L_A789F2:
    LDY #$08                        ; $A789F2  A0 08        Mx
    LDA ($CC),Y                     ; $A789F4  B1 CC        Mx
    AND #$0001                      ; $A789F6  29 01 00     Mx
    BEQ L_A78A74                    ; $A789F9  F0 79        Mx
    LDA #$0005                      ; $A789FB  A9 05 00     Mx
    STA $00D0                       ; $A789FE  8D D0 00     Mx
    LDA $1D57                       ; $A78A01  AD 57 1D     Mx
    STA $00BA                       ; $A78A04  8D BA 00     Mx
    INC $00D0                       ; $A78A07  EE D0 00     Mx
    SEP #$20                        ; $A78A0A  E2 20        Mx
    LDA $00D0                       ; $A78A0C  AD D0 00     mx
    STA $4202                       ; $A78A0F  8D 02 42     mx
    LDA $00BA                       ; $A78A12  AD BA 00     mx
    STA $4203                       ; $A78A15  8D 03 42     mx
    NOP                             ; $A78A18  EA           mx
    NOP                             ; $A78A19  EA           mx
    NOP                             ; $A78A1A  EA           mx
    REP #$20                        ; $A78A1B  C2 20        mx
    LDA $4216                       ; $A78A1D  AD 16 42     Mx
    STA $00BA                       ; $A78A20  8D BA 00     Mx
    LDA $00BB                       ; $A78A23  AD BB 00     Mx
    AND #$00FF                      ; $A78A26  29 FF 00     Mx
    BNE L_A78A74                    ; $A78A29  D0 49        Mx
    JMP L_A78A6B                    ; $A78A2B  4C 6B 8A     Mx
L_A78A2E:
    LDA #$003C                      ; $A78A2E  A9 3C 00     Mx
    STA $00D0                       ; $A78A31  8D D0 00     Mx
    LDA $1D56                       ; $A78A34  AD 56 1D     Mx
    STA $00BA                       ; $A78A37  8D BA 00     Mx
    INC $00D0                       ; $A78A3A  EE D0 00     Mx
    SEP #$20                        ; $A78A3D  E2 20        Mx
    LDA $00D0                       ; $A78A3F  AD D0 00     mx
    STA $4202                       ; $A78A42  8D 02 42     mx
    LDA $00BA                       ; $A78A45  AD BA 00     mx
    STA $4203                       ; $A78A48  8D 03 42     mx
    NOP                             ; $A78A4B  EA           mx
    NOP                             ; $A78A4C  EA           mx
    NOP                             ; $A78A4D  EA           mx
    REP #$20                        ; $A78A4E  C2 20        mx
    LDA $4216                       ; $A78A50  AD 16 42     Mx
    STA $00BA                       ; $A78A53  8D BA 00     Mx
    LDA $00BB                       ; $A78A56  AD BB 00     Mx
    AND #$00FF                      ; $A78A59  29 FF 00     Mx
    STA $00D0                       ; $A78A5C  8D D0 00     Mx
    LDX $00E5                       ; $A78A5F  AE E5 00     Mx
    LDA $A7E938,X                   ; $A78A62  BF 38 E9 A7  Mx
    CMP $00D0                       ; $A78A66  CD D0 00     Mx
    BCC L_A78A74                    ; $A78A69  90 09        Mx
L_A78A6B:
    LDA $00D6                       ; $A78A6B  AD D6 00     Mx
    ORA $0A8A                       ; $A78A6E  0D 8A 0A     Mx
    STA $00D6                       ; $A78A71  8D D6 00     Mx
L_A78A74:
    LDA $00D6                       ; $A78A74  AD D6 00     Mx
    STA $0A90                       ; $A78A77  8D 90 0A     Mx
    JMP L_A78CBA                    ; $A78A7A  4C BA 8C     Mx
L_A78A7D:
    LDA $0A5A                       ; $A78A7D  AD 5A 0A     Mx
    BEQ L_A78A85                    ; $A78A80  F0 03        Mx
L_A78A82:
    JMP L_A7849C                    ; $A78A82  4C 9C 84     Mx
L_A78A85:
    LDA $0972                       ; $A78A85  AD 72 09     Mx
    BNE L_A78A82                    ; $A78A88  D0 F8        Mx
    STZ $0A60                       ; $A78A8A  9C 60 0A     Mx
    LDA $0A62                       ; $A78A8D  AD 62 0A     Mx
    BEQ L_A78AE9                    ; $A78A90  F0 57        Mx
    STZ $0A62                       ; $A78A92  9C 62 0A     Mx
    LDA $0A6E                       ; $A78A95  AD 6E 0A     Mx
    CLC                             ; $A78A98  18           Mx
    ADC $0A82                       ; $A78A99  6D 82 0A     Mx
    BMI L_A78AA6                    ; $A78A9C  30 08        Mx
    CMP #$0010                      ; $A78A9E  C9 10 00     Mx
    BMI L_A78AA6                    ; $A78AA1  30 03        Mx
    LDA #$000F                      ; $A78AA3  A9 0F 00     Mx
L_A78AA6:
    CLC                             ; $A78AA6  18           Mx
    ADC #$000F                      ; $A78AA7  69 0F 00     Mx
    BPL L_A78AAF                    ; $A78AAA  10 03        Mx
    LDA #$0000                      ; $A78AAC  A9 00 00     Mx
L_A78AAF:
    TAX                             ; $A78AAF  AA           Mx
    LDA $A7E7FA,X                   ; $A78AB0  BF FA E7 A7  Mx
    AND #$00FF                      ; $A78AB4  29 FF 00     Mx
    STA $00D0                       ; $A78AB7  8D D0 00     Mx
    LDA $1D56                       ; $A78ABA  AD 56 1D     Mx
    STA $00BA                       ; $A78ABD  8D BA 00     Mx
    INC $00D0                       ; $A78AC0  EE D0 00     Mx
    SEP #$20                        ; $A78AC3  E2 20        Mx
    LDA $00D0                       ; $A78AC5  AD D0 00     mx
    STA $4202                       ; $A78AC8  8D 02 42     mx
    LDA $00BA                       ; $A78ACB  AD BA 00     mx
    STA $4203                       ; $A78ACE  8D 03 42     mx
    NOP                             ; $A78AD1  EA           mx
    NOP                             ; $A78AD2  EA           mx
    NOP                             ; $A78AD3  EA           mx
    REP #$20                        ; $A78AD4  C2 20        mx
    LDA $4216                       ; $A78AD6  AD 16 42     Mx
    STA $00BA                       ; $A78AD9  8D BA 00     Mx
    LDA $00BB                       ; $A78ADC  AD BB 00     Mx
    AND #$00FF                      ; $A78ADF  29 FF 00     Mx
    CLC                             ; $A78AE2  18           Mx
    ADC #$0002                      ; $A78AE3  69 02 00     Mx
    STA $0A64                       ; $A78AE6  8D 64 0A     Mx
L_A78AE9:
    LDA $0A64                       ; $A78AE9  AD 64 0A     Mx
    SEC                             ; $A78AEC  38           Mx
    SBC #$0002                      ; $A78AED  E9 02 00     Mx
    BEQ L_A78AFA                    ; $A78AF0  F0 08        Mx
    BMI L_A78AFA                    ; $A78AF2  30 06        Mx
    STA $00D0                       ; $A78AF4  8D D0 00     Mx
    JMP L_A78BE6                    ; $A78AF7  4C E6 8B     Mx
L_A78AFA:
    LDA $08C4                       ; $A78AFA  AD C4 08     Mx
    CMP #$0030                      ; $A78AFD  C9 30 00     Mx
    BNE L_A78B05                    ; $A78B00  D0 03        Mx
    JMP L_A78B1C                    ; $A78B02  4C 1C 8B     Mx
L_A78B05:
    LDA $0A14                       ; $A78B05  AD 14 0A     Mx
    CMP $092C                       ; $A78B08  CD 2C 09     Mx
    BCS L_A78B10                    ; $A78B0B  B0 03        Mx
    JMP L_A78B1C                    ; $A78B0D  4C 1C 8B     Mx
L_A78B10:
    STZ $00D0                       ; $A78B10  9C D0 00     Mx
    LDA #$0374                      ; $A78B13  A9 74 03     Mx
    STA $00D3                       ; $A78B16  8D D3 00     Mx
    JMP L_A78B86                    ; $A78B19  4C 86 8B     Mx
L_A78B1C:
    LDA $0BE5                       ; $A78B1C  AD E5 0B     Mx
    STA $00DF                       ; $A78B1F  8D DF 00     Mx
    LDA $0BE3                       ; $A78B22  AD E3 0B     Mx
    ASL                             ; $A78B25  0A           Mx
    ROL $00DF                       ; $A78B26  2E DF 00     Mx
    ASL                             ; $A78B29  0A           Mx
    ROL $00DF                       ; $A78B2A  2E DF 00     Mx
    ASL                             ; $A78B2D  0A           Mx
    ROL $00DF                       ; $A78B2E  2E DF 00     Mx
    CLC                             ; $A78B31  18           Mx
    ADC $0BD7                       ; $A78B32  6D D7 0B     Mx
    STA $00A4                       ; $A78B35  8D A4 00     Mx
    LDA $0BD9                       ; $A78B38  AD D9 0B     Mx
    ADC $00DF                       ; $A78B3B  6D DF 00     Mx
    STA $00D0                       ; $A78B3E  8D D0 00     Mx
    LDA $00A4                       ; $A78B41  AD A4 00     Mx
    CLC                             ; $A78B44  18           Mx
    ADC $0BE3                       ; $A78B45  6D E3 0B     Mx
    LDA $00D0                       ; $A78B48  AD D0 00     Mx
    ADC $0BE5                       ; $A78B4B  6D E5 0B     Mx
    STA $00D0                       ; $A78B4E  8D D0 00     Mx
    LDA $0BED                       ; $A78B51  AD ED 0B     Mx
    STA $00DC                       ; $A78B54  8D DC 00     Mx
    LDA $0BEB                       ; $A78B57  AD EB 0B     Mx
    ASL                             ; $A78B5A  0A           Mx
    ROL $00DC                       ; $A78B5B  2E DC 00     Mx
    ASL                             ; $A78B5E  0A           Mx
    ROL $00DC                       ; $A78B5F  2E DC 00     Mx
    ASL                             ; $A78B62  0A           Mx
    ROL $00DC                       ; $A78B63  2E DC 00     Mx
    CLC                             ; $A78B66  18           Mx
    ADC $0BDF                       ; $A78B67  6D DF 0B     Mx
    STA $00A4                       ; $A78B6A  8D A4 00     Mx
    LDA $0BE1                       ; $A78B6D  AD E1 0B     Mx
    ADC $00DC                       ; $A78B70  6D DC 00     Mx
    STA $00D3                       ; $A78B73  8D D3 00     Mx
    LDA $00A4                       ; $A78B76  AD A4 00     Mx
    CLC                             ; $A78B79  18           Mx
    ADC $0BEB                       ; $A78B7A  6D EB 0B     Mx
    LDA $00D3                       ; $A78B7D  AD D3 00     Mx
    ADC $0BED                       ; $A78B80  6D ED 0B     Mx
    STA $00D3                       ; $A78B83  8D D3 00     Mx
L_A78B86:
    LDA $00D0                       ; $A78B86  AD D0 00     Mx
    STA $0A66                       ; $A78B89  8D 66 0A     Mx
    LDA $00D3                       ; $A78B8C  AD D3 00     Mx
    STA $0A68                       ; $A78B8F  8D 68 0A     Mx
    LDA $0A82                       ; $A78B92  AD 82 0A     Mx
    CLC                             ; $A78B95  18           Mx
    ADC $0A6E                       ; $A78B96  6D 6E 0A     Mx
    BMI L_A78BA3                    ; $A78B99  30 08        Mx
    CMP #$0010                      ; $A78B9B  C9 10 00     Mx
    BMI L_A78BA3                    ; $A78B9E  30 03        Mx
    LDA #$000F                      ; $A78BA0  A9 0F 00     Mx
L_A78BA3:
    CLC                             ; $A78BA3  18           Mx
    ADC #$000F                      ; $A78BA4  69 0F 00     Mx
    BPL L_A78BAC                    ; $A78BA7  10 03        Mx
    LDA #$0000                      ; $A78BA9  A9 00 00     Mx
L_A78BAC:
    TAX                             ; $A78BAC  AA           Mx
    LDA $A7E819,X                   ; $A78BAD  BF 19 E8 A7  Mx
    AND #$00FF                      ; $A78BB1  29 FF 00     Mx
    STA $00D0                       ; $A78BB4  8D D0 00     Mx
    LDA $1D58                       ; $A78BB7  AD 58 1D     Mx
    STA $00BA                       ; $A78BBA  8D BA 00     Mx
    INC $00D0                       ; $A78BBD  EE D0 00     Mx
    SEP #$20                        ; $A78BC0  E2 20        Mx
    LDA $00D0                       ; $A78BC2  AD D0 00     mx
    STA $4202                       ; $A78BC5  8D 02 42     mx
    LDA $00BA                       ; $A78BC8  AD BA 00     mx
    STA $4203                       ; $A78BCB  8D 03 42     mx
    NOP                             ; $A78BCE  EA           mx
    NOP                             ; $A78BCF  EA           mx
    NOP                             ; $A78BD0  EA           mx
    REP #$20                        ; $A78BD1  C2 20        mx
    LDA $4216                       ; $A78BD3  AD 16 42     Mx
    STA $00BA                       ; $A78BD6  8D BA 00     Mx
    LDA $00BB                       ; $A78BD9  AD BB 00     Mx
    AND #$00FF                      ; $A78BDC  29 FF 00     Mx
    CLC                             ; $A78BDF  18           Mx
    ADC #$0005                      ; $A78BE0  69 05 00     Mx
    STA $00D0                       ; $A78BE3  8D D0 00     Mx
L_A78BE6:
    LDA $00D0                       ; $A78BE6  AD D0 00     Mx
    STA $0A64                       ; $A78BE9  8D 64 0A     Mx
    LDA $0A66                       ; $A78BEC  AD 66 0A     Mx
    STA $00D0                       ; $A78BEF  8D D0 00     Mx
    LDA $0A68                       ; $A78BF2  AD 68 0A     Mx
    STA $00D3                       ; $A78BF5  8D D3 00     Mx
    JSR L_A78C34                    ; $A78BF8  20 34 8C     Mx
    LDA $0A14                       ; $A78BFB  AD 14 0A     Mx
    CMP #$0018                      ; $A78BFE  C9 18 00     Mx
    BCS L_A78C31                    ; $A78C01  B0 2E        Mx
    LDA $0BDD                       ; $A78C03  AD DD 0B     Mx
    CMP #$0038                      ; $A78C06  C9 38 00     Mx
    BCC L_A78C31                    ; $A78C09  90 26        Mx
    CMP #$006A                      ; $A78C0B  C9 6A 00     Mx
    BCS L_A78C31                    ; $A78C0E  B0 21        Mx
    LDX $0C1F                       ; $A78C10  AE 1F 0C     Mx
    CPX $09A8                       ; $A78C13  EC A8 09     Mx
    BEQ L_A78C31                    ; $A78C16  F0 19        Mx
    CPX $08C0                       ; $A78C18  EC C0 08     Mx
    BEQ L_A78C31                    ; $A78C1B  F0 14        Mx
    LDA $1D57                       ; $A78C1D  AD 57 1D     Mx
    AND #$0003                      ; $A78C20  29 03 00     Mx
    CMP #$0002                      ; $A78C23  C9 02 00     Mx
    BNE L_A78C31                    ; $A78C26  D0 09        Mx
    LDA $0A90                       ; $A78C28  AD 90 0A     Mx
    ORA $0A8A                       ; $A78C2B  0D 8A 0A     Mx
    STA $0A90                       ; $A78C2E  8D 90 0A     Mx
L_A78C31:
    JMP L_A78CBA                    ; $A78C31  4C BA 8C     Mx
L_A78C34:
    LDA $09D6                       ; $A78C34  AD D6 09     Mx
    SEC                             ; $A78C37  38           Mx
    SBC $00D0                       ; $A78C38  ED D0 00     Mx
    STZ $00D0                       ; $A78C3B  9C D0 00     Mx
    STA $00B7                       ; $A78C3E  8D B7 00     Mx
    BPL L_A78C4A                    ; $A78C41  10 07        Mx
    EOR #$FFFF                      ; $A78C43  49 FF FF     Mx
    CLC                             ; $A78C46  18           Mx
    ADC #$0001                      ; $A78C47  69 01 00     Mx
L_A78C4A:
    SEC                             ; $A78C4A  38           Mx
    SBC #$000A                      ; $A78C4B  E9 0A 00     Mx
    BMI L_A78C63                    ; $A78C4E  30 13        Mx
    LDA $00B7                       ; $A78C50  AD B7 00     Mx
    BMI L_A78C5D                    ; $A78C53  30 08        Mx
    LDA #$0200                      ; $A78C55  A9 00 02     Mx
    STA $00D0                       ; $A78C58  8D D0 00     Mx
    BRA L_A78C63                    ; $A78C5B  80 06        Mx
L_A78C5D:
    LDA #$0100                      ; $A78C5D  A9 00 01     Mx
    STA $00D0                       ; $A78C60  8D D0 00     Mx
L_A78C63:
    LDA $09DE                       ; $A78C63  AD DE 09     Mx
    SEC                             ; $A78C66  38           Mx
    SBC $00D3                       ; $A78C67  ED D3 00     Mx
    STA $00B7                       ; $A78C6A  8D B7 00     Mx
    BPL L_A78C76                    ; $A78C6D  10 07        Mx
    EOR #$FFFF                      ; $A78C6F  49 FF FF     Mx
    CLC                             ; $A78C72  18           Mx
    ADC #$0001                      ; $A78C73  69 01 00     Mx
L_A78C76:
    SEC                             ; $A78C76  38           Mx
    SBC #$000A                      ; $A78C77  E9 0A 00     Mx
    BMI L_A78C95                    ; $A78C7A  30 19        Mx
    LDA $00B7                       ; $A78C7C  AD B7 00     Mx
    BMI L_A78C8C                    ; $A78C7F  30 0B        Mx
    LDA #$0800                      ; $A78C81  A9 00 08     Mx
    ORA $00D0                       ; $A78C84  0D D0 00     Mx
    STA $00D0                       ; $A78C87  8D D0 00     Mx
    BRA L_A78C95                    ; $A78C8A  80 09        Mx
L_A78C8C:
    LDA #$0400                      ; $A78C8C  A9 00 04     Mx
    ORA $00D0                       ; $A78C8F  0D D0 00     Mx
    STA $00D0                       ; $A78C92  8D D0 00     Mx
L_A78C95:
    LDA $00D0                       ; $A78C95  AD D0 00     Mx
    STA $0A90                       ; $A78C98  8D 90 0A     Mx
    LDA $00D0                       ; $A78C9B  AD D0 00     Mx
    RTS                             ; $A78C9E  60           Mx
L_A78C9F:
    LDA $0A82                       ; $A78C9F  AD 82 0A     Mx
    CLC                             ; $A78CA2  18           Mx
    ADC $0A6E                       ; $A78CA3  6D 6E 0A     Mx
    BMI L_A78CB0                    ; $A78CA6  30 08        Mx
    CMP #$0010                      ; $A78CA8  C9 10 00     Mx
    BMI L_A78CB0                    ; $A78CAB  30 03        Mx
    LDA #$000F                      ; $A78CAD  A9 0F 00     Mx
L_A78CB0:
    CLC                             ; $A78CB0  18           Mx
    ADC #$000F                      ; $A78CB1  69 0F 00     Mx
    BPL L_A78CB9                    ; $A78CB4  10 03        Mx
    LDA #$0000                      ; $A78CB6  A9 00 00     Mx
L_A78CB9:
    RTS                             ; $A78CB9  60           Mx
L_A78CBA:
    LDA $0A90                       ; $A78CBA  AD 90 0A     Mx
L_A78CBD:
    JSR L_A79BAD                    ; $A78CBD  20 AD 9B     Mx
    LDA $09E0                       ; $A78CC0  AD E0 09     Mx
    CLC                             ; $A78CC3  18           Mx
    ADC $09D4                       ; $A78CC4  6D D4 09     Mx
    STA $09CA                       ; $A78CC7  8D CA 09     Mx
    LDA $09E2                       ; $A78CCA  AD E2 09     Mx
    ADC $09D6                       ; $A78CCD  6D D6 09     Mx
    STA $09C8                       ; $A78CD0  8D C8 09     Mx
    SEC                             ; $A78CD3  38           Mx
    SBC #$0006                      ; $A78CD4  E9 06 00     Mx
    STA $09FE                       ; $A78CD7  8D FE 09     Mx
    CLC                             ; $A78CDA  18           Mx
    ADC #$000C                      ; $A78CDB  69 0C 00     Mx
    STA $0A00                       ; $A78CDE  8D 00 0A     Mx
    LDA $09E8                       ; $A78CE1  AD E8 09     Mx
    CLC                             ; $A78CE4  18           Mx
    ADC $09DC                       ; $A78CE5  6D DC 09     Mx
    STA $09D2                       ; $A78CE8  8D D2 09     Mx
    LDA $09EA                       ; $A78CEB  AD EA 09     Mx
    ADC $09DE                       ; $A78CEE  6D DE 09     Mx
    STA $09D0                       ; $A78CF1  8D D0 09     Mx
    LDA $09E4                       ; $A78CF4  AD E4 09     Mx
    CLC                             ; $A78CF7  18           Mx
    ADC $09D8                       ; $A78CF8  6D D8 09     Mx
    STA $09CE                       ; $A78CFB  8D CE 09     Mx
    LDA $09E6                       ; $A78CFE  AD E6 09     Mx
    ADC $09DA                       ; $A78D01  6D DA 09     Mx
    STA $09CC                       ; $A78D04  8D CC 09     Mx
    LDA $09AC                       ; $A78D07  AD AC 09     Mx
    STA $00AA                       ; $A78D0A  8D AA 00     Mx
    LDA $0BD9                       ; $A78D0D  AD D9 0B     Mx
    STA $00A8                       ; $A78D10  8D A8 00     Mx
    LDA $0BF9                       ; $A78D13  AD F9 0B     Mx
    BNE L_A78D5D                    ; $A78D16  D0 45        Mx
    LDA $0C19                       ; $A78D18  AD 19 0C     Mx
    BNE L_A78D60                    ; $A78D1B  D0 43        Mx
    LDA $09BA                       ; $A78D1D  AD BA 09     Mx
    BEQ L_A78D2A                    ; $A78D20  F0 08        Mx
    LDX $0C1B                       ; $A78D22  AE 1B 0C     Mx
    CPX $09A8                       ; $A78D25  EC A8 09     Mx
    BNE L_A78D5D                    ; $A78D28  D0 33        Mx
L_A78D2A:
    LDA $09AC                       ; $A78D2A  AD AC 09     Mx
    CMP #$0032                      ; $A78D2D  C9 32 00     Mx
    BNE L_A78D35                    ; $A78D30  D0 03        Mx
    JMP L_A793CF                    ; $A78D32  4C CF 93     Mx
L_A78D35:
    CMP #$0030                      ; $A78D35  C9 30 00     Mx
    BEQ L_A78D5D                    ; $A78D38  F0 23        Mx
    LDX $0A9A                       ; $A78D3A  AE 9A 0A     Mx
    BEQ L_A78D4B                    ; $A78D3D  F0 0C        Mx
    LDA $09A8                       ; $A78D3F  AD A8 09     Mx
    SEC                             ; $A78D42  38           Mx
    SBC $0C1B                       ; $A78D43  ED 1B 0C     Mx
    AND #$00FF                      ; $A78D46  29 FF 00     Mx
    BNE L_A78D5D                    ; $A78D49  D0 12        Mx
L_A78D4B:
    LDA $0A14                       ; $A78D4B  AD 14 0A     Mx
    CMP #$0020                      ; $A78D4E  C9 20 00     Mx
    BCS L_A78D5D                    ; $A78D51  B0 0A        Mx
    LDA $09B0                       ; $A78D53  AD B0 09     Mx
    BNE L_A78D5D                    ; $A78D56  D0 05        Mx
    LDA $0A32                       ; $A78D58  AD 32 0A     Mx
    BEQ L_A78D8A                    ; $A78D5B  F0 2D        Mx
L_A78D5D:
    JMP L_A79800                    ; $A78D5D  4C 00 98     Mx
L_A78D60:
    CMP $09A8                       ; $A78D60  CD A8 09     Mx
    BEQ L_A78D5D                    ; $A78D63  F0 F8        Mx
    LDA $0A36                       ; $A78D65  AD 36 0A     Mx
    AND #$007F                      ; $A78D68  29 7F 00     Mx
    BNE L_A78D5D                    ; $A78D6B  D0 F0        Mx
    LDY #$54                        ; $A78D6D  A0 54        Mx
    LDA $00A8                       ; $A78D6F  AD A8 00     Mx
    SEC                             ; $A78D72  38           Mx
    SBC ($CC),Y                     ; $A78D73  F1 CC        Mx
    STA $00A8                       ; $A78D75  8D A8 00     Mx
    LDA $09AC                       ; $A78D78  AD AC 09     Mx
    CMP #$002C                      ; $A78D7B  C9 2C 00     Mx
    BEQ L_A78D8A                    ; $A78D7E  F0 0A        Mx
    CMP #$0020                      ; $A78D80  C9 20 00     Mx
    BCC L_A78D5D                    ; $A78D83  90 D8        Mx
    CMP #$0025                      ; $A78D85  C9 25 00     Mx
    BCS L_A78D5D                    ; $A78D88  B0 D3        Mx
L_A78D8A:
    LDA $00A8                       ; $A78D8A  AD A8 00     Mx
    CLC                             ; $A78D8D  18           Mx
    ADC $0BEF                       ; $A78D8E  6D EF 0B     Mx
    STA $00EA                       ; $A78D91  8D EA 00     Mx
    CLC                             ; $A78D94  18           Mx
    ADC #$0012                      ; $A78D95  69 12 00     Mx
    STA $00EC                       ; $A78D98  8D EC 00     Mx
    LDA $09FE                       ; $A78D9B  AD FE 09     Mx
    SEC                             ; $A78D9E  38           Mx
    SBC #$0002                      ; $A78D9F  E9 02 00     Mx
    SEC                             ; $A78DA2  38           Mx
    SBC $00EC                       ; $A78DA3  ED EC 00     Mx
    BMI L_A78DAB                    ; $A78DA6  30 03        Mx
    JMP L_A79800                    ; $A78DA8  4C 00 98     Mx
L_A78DAB:
    LDA $0A00                       ; $A78DAB  AD 00 0A     Mx
    CLC                             ; $A78DAE  18           Mx
    ADC #$0006                      ; $A78DAF  69 06 00     Mx
    SEC                             ; $A78DB2  38           Mx
    SBC $00EA                       ; $A78DB3  ED EA 00     Mx
    BPL L_A78DBB                    ; $A78DB6  10 03        Mx
    JMP L_A79800                    ; $A78DB8  4C 00 98     Mx
L_A78DBB:
    LDA $09D0                       ; $A78DBB  AD D0 09     Mx
    SEC                             ; $A78DBE  38           Mx
    SBC $0BF3                       ; $A78DBF  ED F3 0B     Mx
    BMI L_A78DCB                    ; $A78DC2  30 07        Mx
    CMP #$0018                      ; $A78DC4  C9 18 00     Mx
    BCS L_A78D5D                    ; $A78DC7  B0 94        Mx
    BCC L_A78DD3                    ; $A78DC9  90 08        Mx
L_A78DCB:
    CMP #$FFF0                      ; $A78DCB  C9 F0 FF     Mx
    BCS L_A78DD3                    ; $A78DCE  B0 03        Mx
L_A78DD0:
    JMP L_A79800                    ; $A78DD0  4C 00 98     Mx
L_A78DD3:
    LDA $09CC                       ; $A78DD3  AD CC 09     Mx
    SEC                             ; $A78DD6  38           Mx
    SBC $0BDD                       ; $A78DD7  ED DD 0B     Mx
    BMI L_A78DE9                    ; $A78DDA  30 0D        Mx
    CMP #$000D                      ; $A78DDC  C9 0D 00     Mx
    BCS L_A78DD0                    ; $A78DDF  B0 EF        Mx
    LDA $09CC                       ; $A78DE1  AD CC 09     Mx
    BNE L_A78DD0                    ; $A78DE4  D0 EA        Mx
    JMP L_A78E0F                    ; $A78DE6  4C 0F 8E     Mx
L_A78DE9:
    STA $00B2                       ; $A78DE9  8D B2 00     Mx
    LDX $09DA                       ; $A78DEC  AE DA 09     Mx
    BEQ L_A78DFB                    ; $A78DEF  F0 0A        Mx
    CMP #$FFE2                      ; $A78DF1  C9 E2 FF     Mx
    BCS L_A78E0C                    ; $A78DF4  B0 16        Mx
    LDA #$FFAF                      ; $A78DF6  A9 AF FF     Mx
    BRA L_A78DFE                    ; $A78DF9  80 03        Mx
L_A78DFB:
    LDA #$FFC8                      ; $A78DFB  A9 C8 FF     Mx
L_A78DFE:
    LDX $0A72                       ; $A78DFE  AE 72 0A     Mx
    BEQ L_A78E07                    ; $A78E01  F0 04        Mx
    CLC                             ; $A78E03  18           Mx
    ADC #$000E                      ; $A78E04  69 0E 00     Mx
L_A78E07:
    CMP $00B2                       ; $A78E07  CD B2 00     Mx
    BCC L_A78E0F                    ; $A78E0A  90 03        Mx
L_A78E0C:
    JMP L_A79800                    ; $A78E0C  4C 00 98     Mx
L_A78E0F:
    LDA $09DA                       ; $A78E0F  AD DA 09     Mx
    BEQ L_A78E5D                    ; $A78E12  F0 49        Mx
    LDA #$0005                      ; $A78E14  A9 05 00     Mx
    STA $0A32                       ; $A78E17  8D 32 0A     Mx
    LDA #$012C                      ; $A78E1A  A9 2C 01     Mx
    STA $0C3F                       ; $A78E1D  8D 3F 0C     Mx
    LDA $0A14                       ; $A78E20  AD 14 0A     Mx
    CMP #$0010                      ; $A78E23  C9 10 00     Mx
    BCS L_A78E0C                    ; $A78E26  B0 E4        Mx
    LDA $0C19                       ; $A78E28  AD 19 0C     Mx
    BNE L_A78E5D                    ; $A78E2B  D0 30        Mx
    LDA $0C2B                       ; $A78E2D  AD 2B 0C     Mx
    BMI L_A78E5D                    ; $A78E30  30 2B        Mx
    LDA $09C0                       ; $A78E32  AD C0 09     Mx
    ASL                             ; $A78E35  0A           Mx
    ASL                             ; $A78E36  0A           Mx
    ASL                             ; $A78E37  0A           Mx
    ASL                             ; $A78E38  0A           Mx
    SEC                             ; $A78E39  38           Mx
    SBC $0A16                       ; $A78E3A  ED 16 0A     Mx
    BPL L_A78E46                    ; $A78E3D  10 07        Mx
    EOR #$FFFF                      ; $A78E3F  49 FF FF     Mx
    CLC                             ; $A78E42  18           Mx
    ADC #$0001                      ; $A78E43  69 01 00     Mx
L_A78E46:
    CMP #$0040                      ; $A78E46  C9 40 00     Mx
    BCC L_A78E58                    ; $A78E49  90 0D        Mx
    SEC                             ; $A78E4B  38           Mx
    SBC #$0080                      ; $A78E4C  E9 80 00     Mx
    BPL L_A78E58                    ; $A78E4F  10 07        Mx
    EOR #$FFFF                      ; $A78E51  49 FF FF     Mx
    CLC                             ; $A78E54  18           Mx
    ADC #$0001                      ; $A78E55  69 01 00     Mx
L_A78E58:
    CMP #$0020                      ; $A78E58  C9 20 00     Mx
    BCS L_A78E0C                    ; $A78E5B  B0 AF        Mx
L_A78E5D:
    LDA $0C25                       ; $A78E5D  AD 25 0C     Mx
    CMP #$09A8                      ; $A78E60  C9 A8 09     Mx
    BNE L_A78E68                    ; $A78E63  D0 03        Mx
    JMP L_A790F1                    ; $A78E65  4C F1 90     Mx
L_A78E68:
    LDA $07E0                       ; $A78E68  AD E0 07     Mx
    ORA $06F8                       ; $A78E6B  0D F8 06     Mx
    AND #$0004                      ; $A78E6E  29 04 00     Mx
    BNE L_A78E76                    ; $A78E71  D0 03        Mx
    JMP L_A790A4                    ; $A78E73  4C A4 90     Mx
L_A78E76:
    LDA $0C19                       ; $A78E76  AD 19 0C     Mx
    BNE L_A78E7E                    ; $A78E79  D0 03        Mx
    JMP L_A790E6                    ; $A78E7B  4C E6 90     Mx
L_A78E7E:
    LDA $1D56                       ; $A78E7E  AD 56 1D     Mx
    AND $0003                       ; $A78E81  2D 03 00     Mx
    BEQ L_A78E89                    ; $A78E84  F0 03        Mx
    JMP L_A79800                    ; $A78E86  4C 00 98     Mx
L_A78E89:
    LDY #$32                        ; $A78E89  A0 32        Mx
    LDA ($CC),Y                     ; $A78E8B  B1 CC        Mx
    CMP $09DA                       ; $A78E8D  CD DA 09     Mx
    BCC L_A78E95                    ; $A78E90  90 03        Mx
    JMP L_A790A4                    ; $A78E92  4C A4 90     Mx
L_A78E95:
    LDY #$06                        ; $A78E95  A0 06        Mx
    LDA ($CC),Y                     ; $A78E97  B1 CC        Mx
    BNE L_A78E9E                    ; $A78E99  D0 03        Mx
    JMP L_A790A4                    ; $A78E9B  4C A4 90     Mx
L_A78E9E:
    LDA $0006                       ; $A78E9E  AD 06 00     Mx
    AND #$000F                      ; $A78EA1  29 0F 00     Mx
    BNE L_A78EBE                    ; $A78EA4  D0 18        Mx
    LDA #$0014                      ; $A78EA6  A9 14 00     Mx
    STA $0C3D                       ; $A78EA9  8D 3D 0C     Mx
    LDA $1611                       ; $A78EAC  AD 11 16     Mx
    BNE L_A78EBE                    ; $A78EAF  D0 0D        Mx
    LDA #$0011                      ; $A78EB1  A9 11 00     Mx
    JSL L_BDFDF3                    ; $A78EB4  22 F3 FD BD  Mx
    LDA #$0064                      ; $A78EB8  A9 64 00     Mx
    STA $1611                       ; $A78EBB  8D 11 16     Mx
L_A78EBE:
    LDA #$0004                      ; $A78EBE  A9 04 00     Mx
    LDX $09A8                       ; $A78EC1  AE A8 09     Mx
    CPX $0A96                       ; $A78EC4  EC 96 0A     Mx
    BNE L_A78ECC                    ; $A78EC7  D0 03        Mx
    LDA #$000A                      ; $A78EC9  A9 0A 00     Mx
L_A78ECC:
    LDX $09A9                       ; $A78ECC  AE A9 09     Mx
    BNE L_A78ED4                    ; $A78ECF  D0 03        Mx
    LDA #$0004                      ; $A78ED1  A9 04 00     Mx
L_A78ED4:
    STA $00D0                       ; $A78ED4  8D D0 00     Mx
    LDA $0A82                       ; $A78ED7  AD 82 0A     Mx
    BMI L_A78EEB                    ; $A78EDA  30 0F        Mx
    CMP #$0064                      ; $A78EDC  C9 64 00     Mx
    BCC L_A78EE4                    ; $A78EDF  90 03        Mx
    LDA #$0064                      ; $A78EE1  A9 64 00     Mx
L_A78EE4:
    CLC                             ; $A78EE4  18           Mx
    ADC $00D0                       ; $A78EE5  6D D0 00     Mx
    STA $00D0                       ; $A78EE8  8D D0 00     Mx
L_A78EEB:
    LDA #$0064                      ; $A78EEB  A9 64 00     Mx
    STA $00D3                       ; $A78EEE  8D D3 00     Mx
    LDA $1D56                       ; $A78EF1  AD 56 1D     Mx
    STA $00BA                       ; $A78EF4  8D BA 00     Mx
    INC $00D3                       ; $A78EF7  EE D3 00     Mx
    SEP #$20                        ; $A78EFA  E2 20        Mx
    LDA $00D3                       ; $A78EFC  AD D3 00     mx
    STA $4202                       ; $A78EFF  8D 02 42     mx
    LDA $00BA                       ; $A78F02  AD BA 00     mx
    STA $4203                       ; $A78F05  8D 03 42     mx
    NOP                             ; $A78F08  EA           mx
    NOP                             ; $A78F09  EA           mx
    NOP                             ; $A78F0A  EA           mx
    REP #$20                        ; $A78F0B  C2 20        mx
    LDA $4216                       ; $A78F0D  AD 16 42     Mx
    STA $00BA                       ; $A78F10  8D BA 00     Mx
    LDA $00BB                       ; $A78F13  AD BB 00     Mx
    AND #$00FF                      ; $A78F16  29 FF 00     Mx
    INC                             ; $A78F19  1A           Mx
    CMP $00D0                       ; $A78F1A  CD D0 00     Mx
    BCC L_A78F22                    ; $A78F1D  90 03        Mx
    JMP L_A790A4                    ; $A78F1F  4C A4 90     Mx
L_A78F22:
    LDA #$0087                      ; $A78F22  A9 87 00     Mx
    STA $0A6A                       ; $A78F25  8D 6A 0A     Mx
    LDA $09AC                       ; $A78F28  AD AC 09     Mx
    CMP #$0024                      ; $A78F2B  C9 24 00     Mx
    BEQ L_A78F8A                    ; $A78F2E  F0 5A        Mx
    LDA $1D58                       ; $A78F30  AD 58 1D     Mx
    CMP #$3333                      ; $A78F33  C9 33 33     Mx
    BCC L_A78F8A                    ; $A78F36  90 52        Mx
    LDY #$3E                        ; $A78F38  A0 3E        Mx
    LDA ($CC),Y                     ; $A78F3A  B1 CC        Mx
    BMI L_A78F8A                    ; $A78F3C  30 4C        Mx
L_A78F3E:
    LDA $09AC                       ; $A78F3E  AD AC 09     Mx
    CMP #$0024                      ; $A78F41  C9 24 00     Mx
    BNE L_A78F49                    ; $A78F44  D0 03        Mx
    JMP L_A78F92                    ; $A78F46  4C 92 8F     Mx
L_A78F49:
    LDA $0B50                       ; $A78F49  AD 50 0B     Mx
    BNE L_A78F7E                    ; $A78F4C  D0 30        Mx
    LDA $0BF9                       ; $A78F4E  AD F9 0B     Mx
    BNE L_A78F7E                    ; $A78F51  D0 2B        Mx
    LDA $0C25                       ; $A78F53  AD 25 0C     Mx
    BNE L_A78F6D                    ; $A78F56  D0 15        Mx
    LDA $0BC1                       ; $A78F58  AD C1 0B     Mx
    CMP #$0001                      ; $A78F5B  C9 01 00     Mx
    BNE L_A78F65                    ; $A78F5E  D0 05        Mx
    LDA $0C2B                       ; $A78F60  AD 2B 0C     Mx
    BMI L_A78F7E                    ; $A78F63  30 19        Mx
L_A78F65:
    LDA $09AC                       ; $A78F65  AD AC 09     Mx
    CMP #$0032                      ; $A78F68  C9 32 00     Mx
    BEQ L_A78F7E                    ; $A78F6B  F0 11        Mx
L_A78F6D:
    LDA $1615                       ; $A78F6D  AD 15 16     Mx
    BNE L_A78F7E                    ; $A78F70  D0 0C        Mx
    LDA $09BA                       ; $A78F72  AD BA 09     Mx
    BNE L_A78F7E                    ; $A78F75  D0 07        Mx
    LDA #$000A                      ; $A78F77  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $A78F7A  22 D5 BB 9A  Mx
L_A78F7E:
    LDA #$0002                      ; $A78F7E  A9 02 00     Mx
    STA $0BC1                       ; $A78F81  8D C1 0B     Mx
    STZ $0C2B                       ; $A78F84  9C 2B 0C     Mx
    JMP L_A795BA                    ; $A78F87  4C BA 95     Mx
L_A78F8A:
    LDA $1D58                       ; $A78F8A  AD 58 1D     Mx
    CMP #$3333                      ; $A78F8D  C9 33 33     Mx
    BCC L_A78F3E                    ; $A78F90  90 AC        Mx
L_A78F92:
    LDA $09BA                       ; $A78F92  AD BA 09     Mx
    BNE L_A78FBB                    ; $A78F95  D0 24        Mx
    LDA $0B50                       ; $A78F97  AD 50 0B     Mx
    BNE L_A78FBB                    ; $A78F9A  D0 1F        Mx
    LDA $0CD3                       ; $A78F9C  AD D3 0C     Mx
    BNE L_A78FBB                    ; $A78F9F  D0 1A        Mx
    LDA $0C19                       ; $A78FA1  AD 19 0C     Mx
    BEQ L_A78FBB                    ; $A78FA4  F0 15        Mx
    LDA $0BF9                       ; $A78FA6  AD F9 0B     Mx
    BNE L_A78FBB                    ; $A78FA9  D0 10        Mx
    LDY #$06                        ; $A78FAB  A0 06        Mx
    LDA ($CC),Y                     ; $A78FAD  B1 CC        Mx
    CMP #$0006                      ; $A78FAF  C9 06 00     Mx
    BCC L_A78FBB                    ; $A78FB2  90 07        Mx
    LDA #$0010                      ; $A78FB4  A9 10 00     Mx
    JSL L_9ABBD5                    ; $A78FB7  22 D5 BB 9A  Mx
L_A78FBB:
    LDY #$88                        ; $A78FBB  A0 88        Mx
    LDA #$000F                      ; $A78FBD  A9 0F 00     Mx
    STA ($CC),Y                     ; $A78FC0  91 CC        Mx
    LDY #$8A                        ; $A78FC2  A0 8A        Mx
    STA ($CC),Y                     ; $A78FC4  91 CC        Mx
    LDA #$000F                      ; $A78FC6  A9 0F 00     Mx
    STA $0A30                       ; $A78FC9  8D 30 0A     Mx
    LDA #$000F                      ; $A78FCC  A9 0F 00     Mx
    STA $0A32                       ; $A78FCF  8D 32 0A     Mx
    REP #$10                        ; $A78FD2  C2 10        Mx
    LDY #$0066                      ; $A78FD4  A0 66 00     MX
    LDA ($CC),Y                     ; $A78FD7  B1 CC        MX
    AND #$007F                      ; $A78FD9  29 7F 00     MX
    PHA                             ; $A78FDC  48           MX
    LDA $0C19                       ; $A78FDD  AD 19 0C     MX
    BEQ L_A79049                    ; $A78FE0  F0 67        MX
    LDA $0BD9                       ; $A78FE2  AD D9 0B     MX
    CLC                             ; $A78FE5  18           MX
    ADC $0BEF                       ; $A78FE6  6D EF 0B     MX
    LDY #$0054                      ; $A78FE9  A0 54 00     MX
    SEC                             ; $A78FEC  38           MX
    SBC ($CC),Y                     ; $A78FED  F1 CC        MX
    BPL L_A78FFB                    ; $A78FEF  10 0A        MX
    CMP #$FEF4                      ; $A78FF1  C9 F4 FE     MX
    BCS L_A79003                    ; $A78FF4  B0 0D        MX
    LDA #$FEF4                      ; $A78FF6  A9 F4 FE     MX
    BRA L_A79003                    ; $A78FF9  80 08        MX
L_A78FFB:
    CMP #$010C                      ; $A78FFB  C9 0C 01     MX
    BCC L_A79003                    ; $A78FFE  90 03        MX
    LDA #$010C                      ; $A79000  A9 0C 01     MX
L_A79003:
    STA $0BD9                       ; $A79003  8D D9 0B     MX
    LDA $0BDD                       ; $A79006  AD DD 0B     MX
    CLC                             ; $A79009  18           MX
    ADC $0BF1                       ; $A7900A  6D F1 0B     MX
    STA $0BDD                       ; $A7900D  8D DD 0B     MX
    LDA $0BF3                       ; $A79010  AD F3 0B     MX
    CMP #$0310                      ; $A79013  C9 10 03     MX
    BCC L_A79022                    ; $A79016  90 0A        MX
    CMP #$03F0                      ; $A79018  C9 F0 03     MX
    BCC L_A79025                    ; $A7901B  90 08        MX
    LDA #$03F0                      ; $A7901D  A9 F0 03     MX
    BRA L_A79025                    ; $A79020  80 03        MX
L_A79022:
    LDA #$0310                      ; $A79022  A9 10 03     MX
L_A79025:
    STA $0BE1                       ; $A79025  8D E1 0B     MX
    STA $0BF3                       ; $A79028  8D F3 0B     MX
    STZ $0C19                       ; $A7902B  9C 19 0C     MX
    STZ $00CC                       ; $A7902E  9C CC 00     MX
    STZ $0C2B                       ; $A79031  9C 2B 0C     MX
    STZ $0BEF                       ; $A79034  9C EF 0B     MX
    STZ $0BF1                       ; $A79037  9C F1 0B     MX
    STZ $0C11                       ; $A7903A  9C 11 0C     MX
    LDA #$0002                      ; $A7903D  A9 02 00     MX
    STA $0BBF                       ; $A79040  8D BF 0B     MX
    LDA #$0002                      ; $A79043  A9 02 00     MX
    STA $0BC1                       ; $A79046  8D C1 0B     MX
L_A79049:
    PLA                             ; $A79049  68           MX
    ASL                             ; $A7904A  0A           MX
    TAX                             ; $A7904B  AA           MX
    LDY #$0000                      ; $A7904C  A0 00 00     MX
    STZ $0BED                       ; $A7904F  9C ED 0B     MX
    LDA $9AABEB,X                   ; $A79052  BF EB AB 9A  MX
    BPL L_A7905B                    ; $A79056  10 03        MX
    DEC $0BED                       ; $A79058  CE ED 0B     MX
L_A7905B:
    ASL                             ; $A7905B  0A           MX
    ROL $0BED                       ; $A7905C  2E ED 0B     MX
    ASL                             ; $A7905F  0A           MX
    ROL $0BED                       ; $A79060  2E ED 0B     MX
    ASL                             ; $A79063  0A           MX
    ROL $0BED                       ; $A79064  2E ED 0B     MX
    ASL                             ; $A79067  0A           MX
    ROL $0BED                       ; $A79068  2E ED 0B     MX
    STA $0BEB                       ; $A7906B  8D EB 0B     MX
    LDY #$0000                      ; $A7906E  A0 00 00     MX
    STZ $0BE5                       ; $A79071  9C E5 0B     MX
    LDA $9AABAB,X                   ; $A79074  BF AB AB 9A  MX
    BPL L_A7907D                    ; $A79078  10 03        MX
    DEC $0BE5                       ; $A7907A  CE E5 0B     MX
L_A7907D:
    ASL                             ; $A7907D  0A           MX
    ROL $0BE5                       ; $A7907E  2E E5 0B     MX
    ASL                             ; $A79081  0A           MX
    ROL $0BE5                       ; $A79082  2E E5 0B     MX
    ASL                             ; $A79085  0A           MX
    ROL $0BE5                       ; $A79086  2E E5 0B     MX
    ASL                             ; $A79089  0A           MX
    ROL $0BE5                       ; $A7908A  2E E5 0B     MX
    STA $0BE3                       ; $A7908D  8D E3 0B     MX
    LDA #$FFFC                      ; $A79090  A9 FC FF     MX
    STA $0BE9                       ; $A79093  8D E9 0B     MX
    LDA #$F700                      ; $A79096  A9 00 F7     MX
    STA $0BE7                       ; $A79099  8D E7 0B     MX
    SEP #$10                        ; $A7909C  E2 10        MX
    JMP L_A790C5                    ; $A7909E  4C C5 90     Mx
L_A790A1:
    JMP L_A795B2                    ; $A790A1  4C B2 95     Mx
L_A790A4:
    LDA $0C19                       ; $A790A4  AD 19 0C     Mx
    BEQ L_A790E6                    ; $A790A7  F0 3D        Mx
    LDY #$32                        ; $A790A9  A0 32        Mx
    LDA ($CC),Y                     ; $A790AB  B1 CC        Mx
    BEQ L_A790DA                    ; $A790AD  F0 2B        Mx
    LDY #$08                        ; $A790AF  A0 08        Mx
    LDA ($CC),Y                     ; $A790B1  B1 CC        Mx
    AND #$0004                      ; $A790B3  29 04 00     Mx
    BEQ L_A790DA                    ; $A790B6  F0 22        Mx
    LDA $09DA                       ; $A790B8  AD DA 09     Mx
    BEQ L_A790DA                    ; $A790BB  F0 1D        Mx
    LDA $1D56                       ; $A790BD  AD 56 1D     Mx
    AND #$0007                      ; $A790C0  29 07 00     Mx
    BNE L_A790D7                    ; $A790C3  D0 12        Mx
L_A790C5:
    LDA #$0002                      ; $A790C5  A9 02 00     Mx
    STA $0A3C                       ; $A790C8  8D 3C 0A     Mx
    STZ $09AE                       ; $A790CB  9C AE 09     Mx
    LDA #$0030                      ; $A790CE  A9 30 00     Mx
    STA $09AC                       ; $A790D1  8D AC 09     Mx
    STA $09AA                       ; $A790D4  8D AA 09     Mx
L_A790D7:
    JMP L_A78E0C                    ; $A790D7  4C 0C 8E     Mx
L_A790DA:
    LDA $09AC                       ; $A790DA  AD AC 09     Mx
    CMP #$002C                      ; $A790DD  C9 2C 00     Mx
    BEQ L_A790F1                    ; $A790E0  F0 0F        Mx
    BRA L_A790EE                    ; $A790E2  80 0A        Mx
L_A790E4:
    BRA L_A790F1                    ; $A790E4  80 0B        Mx
L_A790E6:
    LDA $1D56                       ; $A790E6  AD 56 1D     Mx
    AND #$0003                      ; $A790E9  29 03 00     Mx
    BEQ L_A790F1                    ; $A790EC  F0 03        Mx
L_A790EE:
    JMP L_A79800                    ; $A790EE  4C 00 98     Mx
L_A790F1:
    LDA $0C19                       ; $A790F1  AD 19 0C     Mx
    BEQ L_A790F9                    ; $A790F4  F0 03        Mx
L_A790F6:
    JMP L_A7916D                    ; $A790F6  4C 6D 91     Mx
L_A790F9:
    LDA $1607                       ; $A790F9  AD 07 16     Mx
    BNE L_A790F6                    ; $A790FC  D0 F8        Mx
    LDA $0A8E                       ; $A790FE  AD 8E 0A     Mx
    AND #$0002                      ; $A79101  29 02 00     Mx
    BNE L_A790F6                    ; $A79104  D0 F0        Mx
    LDA $0C2B                       ; $A79106  AD 2B 0C     Mx
    BMI L_A7916D                    ; $A79109  30 62        Mx
    LDA $0A10                       ; $A7910B  AD 10 0A     Mx
    CMP #$0046                      ; $A7910E  C9 46 00     Mx
    BCS L_A7916D                    ; $A79111  B0 5A        Mx
    LDA $0BC1                       ; $A79113  AD C1 0B     Mx
    CMP #$0001                      ; $A79116  C9 01 00     Mx
    BNE L_A7916D                    ; $A79119  D0 52        Mx
    LDA $0C1F                       ; $A7911B  AD 1F 0C     Mx
    AND #$00FF                      ; $A7911E  29 FF 00     Mx
    CMP #$0003                      ; $A79121  C9 03 00     Mx
    BCS L_A7916A                    ; $A79124  B0 44        Mx
    LDA $0BE8                       ; $A79126  AD E8 0B     Mx
    LSR                             ; $A79129  4A           Mx
    LSR                             ; $A7912A  4A           Mx
    LSR                             ; $A7912B  4A           Mx
    LSR                             ; $A7912C  4A           Mx
    LSR                             ; $A7912D  4A           Mx
    LSR                             ; $A7912E  4A           Mx
    BEQ L_A7916D                    ; $A7912F  F0 3C        Mx
    BMI L_A7916D                    ; $A79131  30 3A        Mx
    LDX $0A96                       ; $A79133  AE 96 0A     Mx
    CPX $09A8                       ; $A79136  EC A8 09     Mx
    BEQ L_A7916D                    ; $A79139  F0 32        Mx
    LDA $0A82                       ; $A7913B  AD 82 0A     Mx
    SEC                             ; $A7913E  38           Mx
    SBC #$0005                      ; $A7913F  E9 05 00     Mx
    BMI L_A7914E                    ; $A79142  30 0A        Mx
    LDA $0BE8                       ; $A79144  AD E8 0B     Mx
    CMP #$0380                      ; $A79147  C9 80 03     Mx
    BMI L_A7916D                    ; $A7914A  30 21        Mx
    BRA L_A79156                    ; $A7914C  80 08        Mx
L_A7914E:
    LDA $0BE8                       ; $A7914E  AD E8 0B     Mx
    CMP #$0280                      ; $A79151  C9 80 02     Mx
    BMI L_A7916D                    ; $A79154  30 17        Mx
L_A79156:
    LDA $0006                       ; $A79156  AD 06 00     Mx
    AND #$0004                      ; $A79159  29 04 00     Mx
    BNE L_A7916A                    ; $A7915C  D0 0C        Mx
    LDX $09A8                       ; $A7915E  AE A8 09     Mx
    STX $0A98                       ; $A79161  8E 98 0A     Mx
    JSL L_A7EBCB                    ; $A79164  22 CB EB A7  Mx
    BRA L_A7916D                    ; $A79168  80 03        Mx
L_A7916A:
    JMP L_A79800                    ; $A7916A  4C 00 98     Mx
L_A7916D:
    LDA $09AC                       ; $A7916D  AD AC 09     Mx
    CMP #$0024                      ; $A79170  C9 24 00     Mx
    BEQ L_A7917D                    ; $A79173  F0 08        Mx
    CMP #$0020                      ; $A79175  C9 20 00     Mx
    BEQ L_A791A9                    ; $A79178  F0 2F        Mx
    JMP L_A79234                    ; $A7917A  4C 34 92     Mx
L_A7917D:
    LDA #$FFFC                      ; $A7917D  A9 FC FF     Mx
    STA $0BE9                       ; $A79180  8D E9 0B     Mx
    LDA #$F700                      ; $A79183  A9 00 F7     Mx
    STA $0BE7                       ; $A79186  8D E7 0B     Mx
    LDA $09BA                       ; $A79189  AD BA 09     Mx
    BNE L_A791A6                    ; $A7918C  D0 18        Mx
    LDA $0B50                       ; $A7918E  AD 50 0B     Mx
    BNE L_A791A6                    ; $A79191  D0 13        Mx
    LDA $0BF9                       ; $A79193  AD F9 0B     Mx
    BNE L_A791A6                    ; $A79196  D0 0E        Mx
    LDA #$0010                      ; $A79198  A9 10 00     Mx
    JSL L_9ABBD5                    ; $A7919B  22 D5 BB 9A  Mx
    LDA #$0003                      ; $A7919F  A9 03 00     Mx
    JSL L_BDFDF3                    ; $A791A2  22 F3 FD BD  Mx
L_A791A6:
    JMP L_A791F7                    ; $A791A6  4C F7 91     Mx
L_A791A9:
    LDA $0C19                       ; $A791A9  AD 19 0C     Mx
    BEQ L_A791B1                    ; $A791AC  F0 03        Mx
    JMP L_A79800                    ; $A791AE  4C 00 98     Mx
L_A791B1:
    LDA #$FFFD                      ; $A791B1  A9 FD FF     Mx
    STA $0BE9                       ; $A791B4  8D E9 0B     Mx
    LDA #$6600                      ; $A791B7  A9 00 66     Mx
    STA $0BE7                       ; $A791BA  8D E7 0B     Mx
    LDA $0B50                       ; $A791BD  AD 50 0B     Mx
    BNE L_A791F7                    ; $A791C0  D0 35        Mx
    LDA $0BF9                       ; $A791C2  AD F9 0B     Mx
    BNE L_A791F7                    ; $A791C5  D0 30        Mx
    LDA $1615                       ; $A791C7  AD 15 16     Mx
    BNE L_A791F7                    ; $A791CA  D0 2B        Mx
    LDA $0C19                       ; $A791CC  AD 19 0C     Mx
    BNE L_A791F7                    ; $A791CF  D0 26        Mx
    LDA $09BA                       ; $A791D1  AD BA 09     Mx
    BNE L_A791F7                    ; $A791D4  D0 21        Mx
    LDA $0C25                       ; $A791D6  AD 25 0C     Mx
    BNE L_A791F0                    ; $A791D9  D0 15        Mx
    LDA $0BC1                       ; $A791DB  AD C1 0B     Mx
    CMP #$0001                      ; $A791DE  C9 01 00     Mx
    BNE L_A791E8                    ; $A791E1  D0 05        Mx
    LDA $0C2B                       ; $A791E3  AD 2B 0C     Mx
    BMI L_A791F7                    ; $A791E6  30 0F        Mx
L_A791E8:
    LDA $09AC                       ; $A791E8  AD AC 09     Mx
    CMP #$0032                      ; $A791EB  C9 32 00     Mx
    BEQ L_A791F7                    ; $A791EE  F0 07        Mx
L_A791F0:
    LDA #$000A                      ; $A791F0  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $A791F3  22 D5 BB 9A  Mx
L_A791F7:
    LDA $09C0                       ; $A791F7  AD C0 09     Mx
    ASL                             ; $A791FA  0A           Mx
    ASL                             ; $A791FB  0A           Mx
    TAX                             ; $A791FC  AA           Mx
    LDA $A7E489,X                   ; $A791FD  BF 89 E4 A7  Mx
    STA $0BE5                       ; $A79201  8D E5 0B     Mx
    STZ $0BE3                       ; $A79204  9C E3 0B     Mx
    LDA $A7E48B,X                   ; $A79207  BF 8B E4 A7  Mx
    STA $0BED                       ; $A7920B  8D ED 0B     Mx
    STZ $0BEB                       ; $A7920E  9C EB 0B     Mx
    LDA #$0002                      ; $A79211  A9 02 00     Mx
    STA $0BC1                       ; $A79214  8D C1 0B     Mx
    STZ $0C2B                       ; $A79217  9C 2B 0C     Mx
    LDA $0A98                       ; $A7921A  AD 98 0A     Mx
    BNE L_A7922B                    ; $A7921D  D0 0C        Mx
    LDA $09A8                       ; $A7921F  AD A8 09     Mx
    DEC                             ; $A79222  3A           Mx
    AND #$0003                      ; $A79223  29 03 00     Mx
    ASL                             ; $A79226  0A           Mx
    TAX                             ; $A79227  AA           Mx
    INC $1CB9,X                     ; $A79228  FE B9 1C     Mx
L_A7922B:
    LDA #$0019                      ; $A7922B  A9 19 00     Mx
    STA $0A32                       ; $A7922E  8D 32 0A     Mx
    JMP L_A7975C                    ; $A79231  4C 5C 97     Mx
L_A79234:
    CMP #$002C                      ; $A79234  C9 2C 00     Mx
    BEQ L_A7923C                    ; $A79237  F0 03        Mx
    JMP L_A7936D                    ; $A79239  4C 6D 93     Mx
L_A7923C:
    LDA #$00B9                      ; $A7923C  A9 B9 00     Mx
    STA $00D0                       ; $A7923F  8D D0 00     Mx
    LDA $1D57                       ; $A79242  AD 57 1D     Mx
    STA $00BA                       ; $A79245  8D BA 00     Mx
    INC $00D0                       ; $A79248  EE D0 00     Mx
    SEP #$20                        ; $A7924B  E2 20        Mx
    LDA $00D0                       ; $A7924D  AD D0 00     mx
    STA $4202                       ; $A79250  8D 02 42     mx
    LDA $00BA                       ; $A79253  AD BA 00     mx
    STA $4203                       ; $A79256  8D 03 42     mx
    NOP                             ; $A79259  EA           mx
    NOP                             ; $A7925A  EA           mx
    NOP                             ; $A7925B  EA           mx
    REP #$20                        ; $A7925C  C2 20        mx
    LDA $4216                       ; $A7925E  AD 16 42     Mx
    STA $00BA                       ; $A79261  8D BA 00     Mx
    LDA $00BB                       ; $A79264  AD BB 00     Mx
    AND #$00FF                      ; $A79267  29 FF 00     Mx
    CMP $0A78                       ; $A7926A  CD 78 0A     Mx
    BCC L_A79272                    ; $A7926D  90 03        Mx
    JMP L_A79800                    ; $A7926F  4C 00 98     Mx
L_A79272:
    LDA #$0014                      ; $A79272  A9 14 00     Mx
    STA $0A30                       ; $A79275  8D 30 0A     Mx
    LDA $0C19                       ; $A79278  AD 19 0C     Mx
    BNE L_A79280                    ; $A7927B  D0 03        Mx
    JMP L_A792AB                    ; $A7927D  4C AB 92     Mx
L_A79280:
    LDY #$04                        ; $A79280  A0 04        Mx
    LDA #$0000                      ; $A79282  A9 00 00     Mx
    STA ($CC),Y                     ; $A79285  91 CC        Mx
    LDY #$02                        ; $A79287  A0 02        Mx
    STA ($CC),Y                     ; $A79289  91 CC        Mx
    LDY #$8A                        ; $A7928B  A0 8A        Mx
    LDA #$0032                      ; $A7928D  A9 32 00     Mx
    STA ($CC),Y                     ; $A79290  91 CC        Mx
    LDA $09A8                       ; $A79292  AD A8 09     Mx
    DEC                             ; $A79295  3A           Mx
    AND #$0003                      ; $A79296  29 03 00     Mx
    ASL                             ; $A79299  0A           Mx
    TAX                             ; $A7929A  AA           Mx
    INC $1CB1,X                     ; $A7929B  FE B1 1C     Mx
    LDA $0C3F                       ; $A7929E  AD 3F 0C     Mx
    BNE L_A792AB                    ; $A792A1  D0 08        Mx
    LDA $1D57                       ; $A792A3  AD 57 1D     Mx
    CMP #$2E14                      ; $A792A6  C9 14 2E     Mx
    BCS L_A792C9                    ; $A792A9  B0 1E        Mx
L_A792AB:
    LDA #$000C                      ; $A792AB  A9 0C 00     Mx
    STA $09AC                       ; $A792AE  8D AC 09     Mx
    LDA #$FFFF                      ; $A792B1  A9 FF FF     Mx
    STA $09B2                       ; $A792B4  8D B2 09     Mx
    STZ $09B4                       ; $A792B7  9C B4 09     Mx
    STZ $09FA                       ; $A792BA  9C FA 09     Mx
    STZ $09B0                       ; $A792BD  9C B0 09     Mx
    LDA #$FFF8                      ; $A792C0  A9 F8 FF     Mx
    STA $09B6                       ; $A792C3  8D B6 09     Mx
    JMP L_A793DA                    ; $A792C6  4C DA 93     Mx
L_A792C9:
    LDA #$012C                      ; $A792C9  A9 2C 01     Mx
    STA $0C3F                       ; $A792CC  8D 3F 0C     Mx
    LDA #$0019                      ; $A792CF  A9 19 00     Mx
    STA $0A32                       ; $A792D2  8D 32 0A     Mx
    LDA #$001E                      ; $A792D5  A9 1E 00     Mx
    STA $0BF1                       ; $A792D8  8D F1 0B     Mx
    LDA $0C19                       ; $A792DB  AD 19 0C     Mx
    BEQ L_A79346                    ; $A792DE  F0 66        Mx
    LDA $0BD9                       ; $A792E0  AD D9 0B     Mx
    CLC                             ; $A792E3  18           Mx
    ADC $0BEF                       ; $A792E4  6D EF 0B     Mx
    LDY #$54                        ; $A792E7  A0 54        Mx
    SEC                             ; $A792E9  38           Mx
    SBC ($CC),Y                     ; $A792EA  F1 CC        Mx
    BPL L_A792F8                    ; $A792EC  10 0A        Mx
    CMP #$FEF4                      ; $A792EE  C9 F4 FE     Mx
    BCS L_A79300                    ; $A792F1  B0 0D        Mx
    LDA #$FEF4                      ; $A792F3  A9 F4 FE     Mx
    BRA L_A79300                    ; $A792F6  80 08        Mx
L_A792F8:
    CMP #$010C                      ; $A792F8  C9 0C 01     Mx
    BCC L_A79300                    ; $A792FB  90 03        Mx
    LDA #$010C                      ; $A792FD  A9 0C 01     Mx
L_A79300:
    STA $0BD9                       ; $A79300  8D D9 0B     Mx
    LDA $0BDD                       ; $A79303  AD DD 0B     Mx
    CLC                             ; $A79306  18           Mx
    ADC $0BF1                       ; $A79307  6D F1 0B     Mx
    STA $0BDD                       ; $A7930A  8D DD 0B     Mx
    LDA $0BF3                       ; $A7930D  AD F3 0B     Mx
    CMP #$0310                      ; $A79310  C9 10 03     Mx
    BCC L_A7931F                    ; $A79313  90 0A        Mx
    CMP #$03F0                      ; $A79315  C9 F0 03     Mx
    BCC L_A79322                    ; $A79318  90 08        Mx
    LDA #$03F0                      ; $A7931A  A9 F0 03     Mx
    BRA L_A79322                    ; $A7931D  80 03        Mx
L_A7931F:
    LDA #$0310                      ; $A7931F  A9 10 03     Mx
L_A79322:
    STA $0BE1                       ; $A79322  8D E1 0B     Mx
    STA $0BF3                       ; $A79325  8D F3 0B     Mx
    STZ $0C19                       ; $A79328  9C 19 0C     Mx
    STZ $00CC                       ; $A7932B  9C CC 00     Mx
    STZ $0C2B                       ; $A7932E  9C 2B 0C     Mx
    STZ $0BEF                       ; $A79331  9C EF 0B     Mx
    STZ $0BF1                       ; $A79334  9C F1 0B     Mx
    STZ $0C11                       ; $A79337  9C 11 0C     Mx
    LDA #$0002                      ; $A7933A  A9 02 00     Mx
    STA $0BBF                       ; $A7933D  8D BF 0B     Mx
    LDA #$0002                      ; $A79340  A9 02 00     Mx
    STA $0BC1                       ; $A79343  8D C1 0B     Mx
L_A79346:
    LDA $0006                       ; $A79346  AD 06 00     Mx
    AND #$0007                      ; $A79349  29 07 00     Mx
    ASL                             ; $A7934C  0A           Mx
    TAX                             ; $A7934D  AA           Mx
    LDA $A7E479,X                   ; $A7934E  BF 79 E4 A7  Mx
    STA $0BE5                       ; $A79352  8D E5 0B     Mx
    STZ $0BE3                       ; $A79355  9C E3 0B     Mx
    LDA $1D56                       ; $A79358  AD 56 1D     Mx
    AND #$0007                      ; $A7935B  29 07 00     Mx
    ASL                             ; $A7935E  0A           Mx
    TAX                             ; $A7935F  AA           Mx
    LDA $A7E479,X                   ; $A79360  BF 79 E4 A7  Mx
    STA $0BED                       ; $A79364  8D ED 0B     Mx
    STZ $0BEB                       ; $A79367  9C EB 0B     Mx
    JMP L_A7975C                    ; $A7936A  4C 5C 97     Mx
L_A7936D:
    LDA $09AC                       ; $A7936D  AD AC 09     Mx
    CMP #$0002                      ; $A79370  C9 02 00     Mx
    BEQ L_A7937F                    ; $A79373  F0 0A        Mx
    CMP #$0000                      ; $A79375  C9 00 00     Mx
    BEQ L_A7937F                    ; $A79378  F0 05        Mx
    CMP #$0014                      ; $A7937A  C9 14 00     Mx
    BNE L_A793DA                    ; $A7937D  D0 5B        Mx
L_A7937F:
    LDA $09DA                       ; $A7937F  AD DA 09     Mx
    BNE L_A793DA                    ; $A79382  D0 56        Mx
    LDA $0BDD                       ; $A79384  AD DD 0B     Mx
    BNE L_A793DA                    ; $A79387  D0 51        Mx
    LDA $0BE9                       ; $A79389  AD E9 0B     Mx
    ORA $0BE7                       ; $A7938C  0D E7 0B     Mx
    BNE L_A793DA                    ; $A7938F  D0 49        Mx
    LDA $09E6                       ; $A79391  AD E6 09     Mx
    ORA $09E4                       ; $A79394  0D E4 09     Mx
    BNE L_A793DA                    ; $A79397  D0 41        Mx
    LDA #$0032                      ; $A79399  A9 32 00     Mx
    STA $09AC                       ; $A7939C  8D AC 09     Mx
    LDA #$FFFF                      ; $A7939F  A9 FF FF     Mx
    STA $09B2                       ; $A793A2  8D B2 09     Mx
    STZ $09B4                       ; $A793A5  9C B4 09     Mx
    STZ $09FA                       ; $A793A8  9C FA 09     Mx
    STZ $09B0                       ; $A793AB  9C B0 09     Mx
    LDA #$FFF8                      ; $A793AE  A9 F8 FF     Mx
    STA $09B6                       ; $A793B1  8D B6 09     Mx
    STZ $0BE5                       ; $A793B4  9C E5 0B     Mx
    STZ $0BE3                       ; $A793B7  9C E3 0B     Mx
    STZ $0BEB                       ; $A793BA  9C EB 0B     Mx
    STZ $0BED                       ; $A793BD  9C ED 0B     Mx
    STZ $09E2                       ; $A793C0  9C E2 09     Mx
    STZ $09E0                       ; $A793C3  9C E0 09     Mx
    STZ $09EA                       ; $A793C6  9C EA 09     Mx
    STZ $09E8                       ; $A793C9  9C E8 09     Mx
L_A793CC:
    JMP L_A79800                    ; $A793CC  4C 00 98     Mx
L_A793CF:
    LDA $09B2                       ; $A793CF  AD B2 09     Mx
    CMP #$0002                      ; $A793D2  C9 02 00     Mx
    BNE L_A793CC                    ; $A793D5  D0 F5        Mx
    JMP L_A795B2                    ; $A793D7  4C B2 95     Mx
L_A793DA:
    LDA $0C25                       ; $A793DA  AD 25 0C     Mx
    BNE L_A793E2                    ; $A793DD  D0 03        Mx
    JMP L_A7958C                    ; $A793DF  4C 8C 95     Mx
L_A793E2:
    CMP #$09A8                      ; $A793E2  C9 A8 09     Mx
    BNE L_A793EA                    ; $A793E5  D0 03        Mx
    JMP L_A7958C                    ; $A793E7  4C 8C 95     Mx
L_A793EA:
    LDA #$00A0                      ; $A793EA  A9 A0 00     Mx
    STA $00D0                       ; $A793ED  8D D0 00     Mx
    PHP                             ; $A793F0  08           Mx
    REP #$30                        ; $A793F1  C2 30        Mx
    LDA $4212                       ; $A793F3  AD 12 42     MX
    SEP #$20                        ; $A793F6  E2 20        MX
    CLC                             ; $A793F8  18           mX
    ADC $1D57                       ; $A793F9  6D 57 1D     mX
    STA $1D57                       ; $A793FC  8D 57 1D     mX
    REP #$20                        ; $A793FF  C2 20        mX
    LDA $4212                       ; $A79401  AD 12 42     MX
    TAX                             ; $A79404  AA           MX
    SEP #$20                        ; $A79405  E2 20        MX
    EOR $1D58                       ; $A79407  4D 58 1D     mX
    STA $1D58                       ; $A7940A  8D 58 1D     mX
    TXA                             ; $A7940D  8A           mX
    ADC $1D59                       ; $A7940E  6D 59 1D     mX
    REP #$20                        ; $A79411  C2 20        mX
    LDA $1D56                       ; $A79413  AD 56 1D     MX
    INC                             ; $A79416  1A           MX
    ROR                             ; $A79417  6A           MX
    LSR $1D58                       ; $A79418  4E 58 1D     MX
    EOR #$2B41                      ; $A7941B  49 41 2B     MX
    SBC #$000F                      ; $A7941E  E9 0F 00     MX
    STA $1D56                       ; $A79421  8D 56 1D     MX
    LDA $1D58                       ; $A79424  AD 58 1D     MX
    EOR #$1D87                      ; $A79427  49 87 1D     MX
    STA $1D58                       ; $A7942A  8D 58 1D     MX
    LDA $1D52                       ; $A7942D  AD 52 1D     MX
    EOR $1D56                       ; $A79430  4D 56 1D     MX
    STA $0002                       ; $A79433  8D 02 00     MX
    INC                             ; $A79436  1A           MX
    STA $1D52                       ; $A79437  8D 52 1D     MX
    LDA $1D54                       ; $A7943A  AD 54 1D     MX
    EOR $1D58                       ; $A7943D  4D 58 1D     MX
    ADC #$0000                      ; $A79440  69 00 00     MX
    STA $1D52                       ; $A79443  8D 52 1D     MX
    STA $0004                       ; $A79446  8D 04 00     MX
    PLP                             ; $A79449  28           MX
    INC $00D0                       ; $A7944A  EE D0 00     Mx
    LDA $1D56                       ; $A7944D  AD 56 1D     Mx
    STA $00BA                       ; $A79450  8D BA 00     Mx
    SEP #$20                        ; $A79453  E2 20        Mx
    LDA $00D0                       ; $A79455  AD D0 00     mx
    STA $4202                       ; $A79458  8D 02 42     mx
    LDA $00BA                       ; $A7945B  AD BA 00     mx
    STA $4203                       ; $A7945E  8D 03 42     mx
    NOP                             ; $A79461  EA           mx
    NOP                             ; $A79462  EA           mx
    NOP                             ; $A79463  EA           mx
    REP #$20                        ; $A79464  C2 20        mx
    LDA $4216                       ; $A79466  AD 16 42     Mx
    STA $00BA                       ; $A79469  8D BA 00     Mx
    LDA $00BB                       ; $A7946C  AD BB 00     Mx
    AND #$00FF                      ; $A7946F  29 FF 00     Mx
    STA $00D0                       ; $A79472  8D D0 00     Mx
    LDA $0A8E                       ; $A79475  AD 8E 0A     Mx
    AND #$0001                      ; $A79478  29 01 00     Mx
    BEQ L_A79480                    ; $A7947B  F0 03        Mx
    STZ $00D0                       ; $A7947D  9C D0 00     Mx
L_A79480:
    STZ $00B7                       ; $A79480  9C B7 00     Mx
    LDA $0A82                       ; $A79483  AD 82 0A     Mx
    BMI L_A79498                    ; $A79486  30 10        Mx
    CMP #$0010                      ; $A79488  C9 10 00     Mx
    BCC L_A79490                    ; $A7948B  90 03        Mx
    LDA #$000F                      ; $A7948D  A9 0F 00     Mx
L_A79490:
    ASL                             ; $A79490  0A           Mx
    TAX                             ; $A79491  AA           Mx
    LDA $9592,X                     ; $A79492  BD 92 95     Mx
    STA $00B7                       ; $A79495  8D B7 00     Mx
L_A79498:
    LDA $0C27                       ; $A79498  AD 27 0C     Mx
    SEC                             ; $A7949B  38           Mx
    SBC #$0003                      ; $A7949C  E9 03 00     Mx
    BPL L_A794A8                    ; $A7949F  10 07        Mx
    EOR #$FFFF                      ; $A794A1  49 FF FF     Mx
    CLC                             ; $A794A4  18           Mx
    ADC #$0001                      ; $A794A5  69 01 00     Mx
L_A794A8:
    LSR                             ; $A794A8  4A           Mx
    CLC                             ; $A794A9  18           Mx
    ADC $00B7                       ; $A794AA  6D B7 00     Mx
    INC                             ; $A794AD  1A           Mx
    CMP $00D0                       ; $A794AE  CD D0 00     Mx
    BCS L_A794B6                    ; $A794B1  B0 03        Mx
    JMP L_A7958F                    ; $A794B3  4C 8F 95     Mx
L_A794B6:
    LDA $1D56                       ; $A794B6  AD 56 1D     Mx
    CMP #$CCCC                      ; $A794B9  C9 CC CC     Mx
    BCC L_A794C1                    ; $A794BC  90 03        Mx
    JMP L_A7958F                    ; $A794BE  4C 8F 95     Mx
L_A794C1:
    JSR L_A797D7                    ; $A794C1  20 D7 97     Mx
    LDA $09A8                       ; $A794C4  AD A8 09     Mx
    DEC                             ; $A794C7  3A           Mx
    AND #$0003                      ; $A794C8  29 03 00     Mx
    ASL                             ; $A794CB  0A           Mx
    TAX                             ; $A794CC  AA           Mx
    INC $1CB1,X                     ; $A794CD  FE B1 1C     Mx
    LDA $0C25                       ; $A794D0  AD 25 0C     Mx
    BNE L_A794F9                    ; $A794D3  D0 24        Mx
    LDA $0BC1                       ; $A794D5  AD C1 0B     Mx
    CMP #$0001                      ; $A794D8  C9 01 00     Mx
    BNE L_A794E2                    ; $A794DB  D0 05        Mx
    LDA $0C2B                       ; $A794DD  AD 2B 0C     Mx
    BMI L_A7950F                    ; $A794E0  30 2D        Mx
L_A794E2:
    LDA $09AC                       ; $A794E2  AD AC 09     Mx
    CMP #$0032                      ; $A794E5  C9 32 00     Mx
    BEQ L_A7950F                    ; $A794E8  F0 25        Mx
    LDA $0B50                       ; $A794EA  AD 50 0B     Mx
    BNE L_A7950F                    ; $A794ED  D0 20        Mx
    LDA $09BA                       ; $A794EF  AD BA 09     Mx
    BNE L_A7950F                    ; $A794F2  D0 1B        Mx
    LDA $0BF9                       ; $A794F4  AD F9 0B     Mx
    BNE L_A7950F                    ; $A794F7  D0 16        Mx
L_A794F9:
    LDA $1615                       ; $A794F9  AD 15 16     Mx
    BNE L_A7950F                    ; $A794FC  D0 11        Mx
    LDA $0C25                       ; $A794FE  AD 25 0C     Mx
    BNE L_A79508                    ; $A79501  D0 05        Mx
    LDA $0C2B                       ; $A79503  AD 2B 0C     Mx
    BMI L_A7950F                    ; $A79506  30 07        Mx
L_A79508:
    LDA #$000A                      ; $A79508  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $A7950B  22 D5 BB 9A  Mx
L_A7950F:
    LDA $0003                       ; $A7950F  AD 03 00     Mx
    CMP #$051E                      ; $A79512  C9 1E 05     Mx
    BCS L_A79581                    ; $A79515  B0 6A        Mx
    JMP L_A7958F                    ; $A79517  4C 8F 95     Mx
L_A7951A:
    REP #$10                        ; $A7951A  C2 10        Mx
    LDA $0A16                       ; $A7951C  AD 16 0A     MX
    AND #$007F                      ; $A7951F  29 7F 00     MX
    ASL                             ; $A79522  0A           MX
    TAX                             ; $A79523  AA           MX
    LDY #$0000                      ; $A79524  A0 00 00     MX
    STZ $0BE5                       ; $A79527  9C E5 0B     MX
    LDA $9AABEB,X                   ; $A7952A  BF EB AB 9A  MX
    BPL L_A79533                    ; $A7952E  10 03        MX
    DEC $0BE5                       ; $A79530  CE E5 0B     MX
L_A79533:
    ASL                             ; $A79533  0A           MX
    ROL $0BE5                       ; $A79534  2E E5 0B     MX
    ASL                             ; $A79537  0A           MX
    ROL $0BE5                       ; $A79538  2E E5 0B     MX
    ASL                             ; $A7953B  0A           MX
    ROL $0BE5                       ; $A7953C  2E E5 0B     MX
    ASL                             ; $A7953F  0A           MX
    ROL $0BE5                       ; $A79540  2E E5 0B     MX
    ASL                             ; $A79543  0A           MX
    ROL $0BE5                       ; $A79544  2E E5 0B     MX
    STA $0BE3                       ; $A79547  8D E3 0B     MX
    LDY #$0000                      ; $A7954A  A0 00 00     MX
    STZ $0BED                       ; $A7954D  9C ED 0B     MX
    LDA $9AABAB,X                   ; $A79550  BF AB AB 9A  MX
    BPL L_A79559                    ; $A79554  10 03        MX
    DEC $0BED                       ; $A79556  CE ED 0B     MX
L_A79559:
    ASL                             ; $A79559  0A           MX
    ROL $0BED                       ; $A7955A  2E ED 0B     MX
    ASL                             ; $A7955D  0A           MX
    ROL $0BED                       ; $A7955E  2E ED 0B     MX
    ASL                             ; $A79561  0A           MX
    ROL $0BED                       ; $A79562  2E ED 0B     MX
    ASL                             ; $A79565  0A           MX
    ROL $0BED                       ; $A79566  2E ED 0B     MX
    ASL                             ; $A79569  0A           MX
    ROL $0BED                       ; $A7956A  2E ED 0B     MX
    STA $0BEB                       ; $A7956D  8D EB 0B     MX
    LDA #$FFFC                      ; $A79570  A9 FC FF     MX
    STA $0BE9                       ; $A79573  8D E9 0B     MX
    LDA #$6300                      ; $A79576  A9 00 63     MX
    STA $0BE7                       ; $A79579  8D E7 0B     MX
    SEP #$10                        ; $A7957C  E2 10        MX
    JMP L_A7958F                    ; $A7957E  4C 8F 95     Mx
L_A79581:
    LDA $09AC                       ; $A79581  AD AC 09     Mx
    CMP #$0032                      ; $A79584  C9 32 00     Mx
    BNE L_A7958C                    ; $A79587  D0 03        Mx
    JSR L_A7D16B                    ; $A79589  20 6B D1     Mx
L_A7958C:
    JMP L_A795B2                    ; $A7958C  4C B2 95     Mx
L_A7958F:
    JMP L_A79800                    ; $A7958F  4C 00 98     Mx
    db $00,$00,$04,$00,$07,$00,$0A,$00,$0C,$00,$0F,$00,$13,$00,$16,$00 ; $A79592
    db $19,$00,$1E,$00,$24,$00,$28,$00,$2A,$00,$2D,$00,$2F,$00,$32,$00 ; $A795A2
L_A795B2:
    LDA $0C19                       ; $A795B2  AD 19 0C     Mx
    BEQ L_A795BA                    ; $A795B5  F0 03        Mx
    JMP L_A79800                    ; $A795B7  4C 00 98     Mx
L_A795BA:
    STZ $0C25                       ; $A795BA  9C 25 0C     Mx
    STZ $0C27                       ; $A795BD  9C 27 0C     Mx
    STZ $0BFF                       ; $A795C0  9C FF 0B     Mx
    REP #$10                        ; $A795C3  C2 10        Mx
    LDA $09A8                       ; $A795C5  AD A8 09     MX
    AND #$FF00                      ; $A795C8  29 00 FF     MX
    BEQ L_A795D0                    ; $A795CB  F0 03        MX
    JMP L_A796A2                    ; $A795CD  4C A2 96     MX
L_A795D0:
    LDA $1CE9                       ; $A795D0  AD E9 1C     MX
    BNE L_A795D8                    ; $A795D3  D0 03        MX
L_A795D5:
    JMP L_A796A2                    ; $A795D5  4C A2 96     MX
L_A795D8:
    LDA $08C0                       ; $A795D8  AD C0 08     MX
    AND #$FF00                      ; $A795DB  29 00 FF     MX
    BEQ L_A795D5                    ; $A795DE  F0 F5        MX
    STA $00A4                       ; $A795E0  8D A4 00     MX
    LDA $09A8                       ; $A795E3  AD A8 09     MX
    AND #$00FF                      ; $A795E6  29 FF 00     MX
    ORA $00A4                       ; $A795E9  0D A4 00     MX
    STA $09A8                       ; $A795EC  8D A8 09     MX
    LDA $08C0                       ; $A795EF  AD C0 08     MX
    AND #$00FF                      ; $A795F2  29 FF 00     MX
    STA $08C0                       ; $A795F5  8D C0 08     MX
    STZ $097A                       ; $A795F8  9C 7A 09     MX
    STZ $097C                       ; $A795FB  9C 7C 09     MX
    LDA $0946                       ; $A795FE  AD 46 09     MX
    STA $0A2E                       ; $A79601  8D 2E 0A     MX
    LDA $0942                       ; $A79604  AD 42 09     MX
    STA $0A2A                       ; $A79607  8D 2A 0A     MX
    LDA $0A8A                       ; $A7960A  AD 8A 0A     MX
    LDX $09A2                       ; $A7960D  AE A2 09     MX
    STA $09A2                       ; $A79610  8D A2 09     MX
    STX $0A8A                       ; $A79613  8E 8A 0A     MX
    LDA $0A88                       ; $A79616  AD 88 0A     MX
    LDX $09A0                       ; $A79619  AE A0 09     MX
    STA $09A0                       ; $A7961C  8D A0 09     MX
    STX $0A88                       ; $A7961F  8E 88 0A     MX
    LDA $0A8C                       ; $A79622  AD 8C 0A     MX
    LDX $09A4                       ; $A79625  AE A4 09     MX
    STA $09A4                       ; $A79628  8D A4 09     MX
    STX $0A8C                       ; $A7962B  8E 8C 0A     MX
    LDA $0A8E                       ; $A7962E  AD 8E 0A     MX
    LDX $09A6                       ; $A79631  AE A6 09     MX
    STA $09A6                       ; $A79634  8D A6 09     MX
    STX $0A8E                       ; $A79637  8E 8E 0A     MX
    LDA $1C5D                       ; $A7963A  AD 5D 1C     MX
    CMP #$0002                      ; $A7963D  C9 02 00     MX
    BEQ L_A796A2                    ; $A79640  F0 60        MX
    LDA $0B3A                       ; $A79642  AD 3A 0B     MX
    LDX $0B2A                       ; $A79645  AE 2A 0B     MX
    STA $0B2A                       ; $A79648  8D 2A 0B     MX
    STX $0B3A                       ; $A7964B  8E 3A 0B     MX
    LDA $0B3C                       ; $A7964E  AD 3C 0B     MX
    LDX $0B2C                       ; $A79651  AE 2C 0B     MX
    STA $0B2C                       ; $A79654  8D 2C 0B     MX
    STX $0B3C                       ; $A79657  8E 3C 0B     MX
    LDA $0B3E                       ; $A7965A  AD 3E 0B     MX
    LDX $0B2E                       ; $A7965D  AE 2E 0B     MX
    STA $0B2E                       ; $A79660  8D 2E 0B     MX
    STX $0B3E                       ; $A79663  8E 3E 0B     MX
    LDA $0B40                       ; $A79666  AD 40 0B     MX
    LDX $0B30                       ; $A79669  AE 30 0B     MX
    STA $0B30                       ; $A7966C  8D 30 0B     MX
    STX $0B40                       ; $A7966F  8E 40 0B     MX
    LDA $0B42                       ; $A79672  AD 42 0B     MX
    LDX $0B32                       ; $A79675  AE 32 0B     MX
    STA $0B32                       ; $A79678  8D 32 0B     MX
    STX $0B42                       ; $A7967B  8E 42 0B     MX
    LDA $0B44                       ; $A7967E  AD 44 0B     MX
    LDX $0B34                       ; $A79681  AE 34 0B     MX
    STA $0B34                       ; $A79684  8D 34 0B     MX
    STX $0B44                       ; $A79687  8E 44 0B     MX
    LDA $0B46                       ; $A7968A  AD 46 0B     MX
    LDX $0B36                       ; $A7968D  AE 36 0B     MX
    STA $0B36                       ; $A79690  8D 36 0B     MX
    STX $0B46                       ; $A79693  8E 46 0B     MX
    LDA $0B48                       ; $A79696  AD 48 0B     MX
    LDX $0B38                       ; $A79699  AE 38 0B     MX
    STA $0B38                       ; $A7969C  8D 38 0B     MX
    STX $0B48                       ; $A7969F  8E 48 0B     MX
L_A796A2:
    LDA $09A8                       ; $A796A2  AD A8 09     MX
    STA $0C19                       ; $A796A5  8D 19 0C     MX
    LDA #$09A8                      ; $A796A8  A9 A8 09     MX
    STA $00CC                       ; $A796AB  8D CC 00     MX
    LDA #$0032                      ; $A796AE  A9 32 00     MX
    STA $0A40                       ; $A796B1  8D 40 0A     MX
    LDX $09B8                       ; $A796B4  AE B8 09     MX
    LDA #$2500                      ; $A796B7  A9 00 25     MX
    STA $00D1                       ; $A796BA  8D D1 00     MX
    LDA $A58000,X                   ; $A796BD  BF 00 80 A5  MX
    CLC                             ; $A796C1  18           MX
    ADC $09B6                       ; $A796C2  6D B6 09     MX
    STA $00D0                       ; $A796C5  8D D0 00     MX
    LDA #$0020                      ; $A796C8  A9 20 00     MX
    STA $0BEF                       ; $A796CB  8D EF 0B     MX
    LDA $09C8                       ; $A796CE  AD C8 09     MX
    STA $0BD9                       ; $A796D1  8D D9 0B     MX
    LDA $09AC                       ; $A796D4  AD AC 09     MX
    CMP #$0022                      ; $A796D7  C9 22 00     MX
    BNE L_A796F1                    ; $A796DA  D0 15        MX
    LDA $0A72                       ; $A796DC  AD 72 0A     MX
    BEQ L_A796E9                    ; $A796DF  F0 08        MX
    LDA #$002D                      ; $A796E1  A9 2D 00     MX
    STA $0BF1                       ; $A796E4  8D F1 0B     MX
    BRA L_A796F7                    ; $A796E7  80 0E        MX
L_A796E9:
    LDA #$0041                      ; $A796E9  A9 41 00     MX
    STA $0BF1                       ; $A796EC  8D F1 0B     MX
    BRA L_A796F7                    ; $A796EF  80 06        MX
L_A796F1:
    LDA #$001E                      ; $A796F1  A9 1E 00     MX
    STA $0BF1                       ; $A796F4  8D F1 0B     MX
L_A796F7:
    LDA $09CC                       ; $A796F7  AD CC 09     MX
    STA $0BDD                       ; $A796FA  8D DD 0B     MX
    LDY #$0004                      ; $A796FD  A0 04 00     MX
    LDA [$D0],Y                     ; $A79700  B7 D0        MX
    STA $0BF5                       ; $A79702  8D F5 0B     MX
    CLC                             ; $A79705  18           MX
    ADC $09D0                       ; $A79706  6D D0 09     MX
    STA $0BF3                       ; $A79709  8D F3 0B     MX
    STA $0BE1                       ; $A7970C  8D E1 0B     MX
    STZ $0A38                       ; $A7970F  9C 38 0A     MX
    STZ $0A3A                       ; $A79712  9C 3A 0A     MX
    STZ $0C11                       ; $A79715  9C 11 0C     MX
    STZ $0A64                       ; $A79718  9C 64 0A     MX
    STZ $0A24                       ; $A7971B  9C 24 0A     MX
    LDA #$000A                      ; $A7971E  A9 0A 00     MX
    STA $0A40                       ; $A79721  8D 40 0A     MX
    SEP #$10                        ; $A79724  E2 10        MX
    LDA #$0004                      ; $A79726  A9 04 00     Mx
    STA $0BBF                       ; $A79729  8D BF 0B     Mx
    LDA $09DA                       ; $A7972C  AD DA 09     Mx
    BNE L_A7975C                    ; $A7972F  D0 2B        Mx
    STZ $0BC1                       ; $A79731  9C C1 0B     Mx
    LDA $09AC                       ; $A79734  AD AC 09     Mx
    CMP #$0032                      ; $A79737  C9 32 00     Mx
    BEQ L_A7975C                    ; $A7973A  F0 20        Mx
    CMP #$002E                      ; $A7973C  C9 2E 00     Mx
    BEQ L_A7975C                    ; $A7973F  F0 1B        Mx
    LDA #$000C                      ; $A79741  A9 0C 00     Mx
    STA $09AC                       ; $A79744  8D AC 09     Mx
    LDA #$FFFF                      ; $A79747  A9 FF FF     Mx
    STA $09B2                       ; $A7974A  8D B2 09     Mx
    STZ $09B4                       ; $A7974D  9C B4 09     Mx
    STZ $09FA                       ; $A79750  9C FA 09     Mx
    STZ $09B0                       ; $A79753  9C B0 09     Mx
    LDA #$FFF8                      ; $A79756  A9 F8 FF     Mx
    STA $09B6                       ; $A79759  8D B6 09     Mx
L_A7975C:
    LDA #$0087                      ; $A7975C  A9 87 00     Mx
    STA $0A6A                       ; $A7975F  8D 6A 0A     Mx
    LDA #$003C                      ; $A79762  A9 3C 00     Mx
    STA $09AE                       ; $A79765  8D AE 09     Mx
    LDA $09AC                       ; $A79768  AD AC 09     Mx
    CMP #$0022                      ; $A7976B  C9 22 00     Mx
    BNE L_A797C0                    ; $A7976E  D0 50        Mx
    LDA $0BC1                       ; $A79770  AD C1 0B     Mx
    CMP #$0001                      ; $A79773  C9 01 00     Mx
    BNE L_A797C0                    ; $A79776  D0 48        Mx
    LDA $0C2B                       ; $A79778  AD 2B 0C     Mx
    BPL L_A797C0                    ; $A7977B  10 43        Mx
    CMP #$FF4C                      ; $A7977D  C9 4C FF     Mx
    BCC L_A797C0                    ; $A79780  90 3E        Mx
    LDA $0A98                       ; $A79782  AD 98 0A     Mx
    BNE L_A79793                    ; $A79785  D0 0C        Mx
    LDA $09A8                       ; $A79787  AD A8 09     Mx
    DEC                             ; $A7978A  3A           Mx
    AND #$0003                      ; $A7978B  29 03 00     Mx
    ASL                             ; $A7978E  0A           Mx
    TAX                             ; $A7978F  AA           Mx
    INC $1CC1,X                     ; $A79790  FE C1 1C     Mx
L_A79793:
    LDA $0B50                       ; $A79793  AD 50 0B     Mx
    BNE L_A797C0                    ; $A79796  D0 28        Mx
    LDA $0BF9                       ; $A79798  AD F9 0B     Mx
    BNE L_A797C0                    ; $A7979B  D0 23        Mx
    LDA $09BA                       ; $A7979D  AD BA 09     Mx
    BNE L_A797C0                    ; $A797A0  D0 1E        Mx
    LDA $0C2B                       ; $A797A2  AD 2B 0C     Mx
    BPL L_A797C0                    ; $A797A5  10 19        Mx
    LDA $0B52                       ; $A797A7  AD 52 0B     Mx
    CMP #$003A                      ; $A797AA  C9 3A 00     Mx
    BEQ L_A797C0                    ; $A797AD  F0 11        Mx
    LDA $1615                       ; $A797AF  AD 15 16     Mx
    BNE L_A797C0                    ; $A797B2  D0 0C        Mx
    LDA $09BA                       ; $A797B4  AD BA 09     Mx
    BNE L_A797C0                    ; $A797B7  D0 07        Mx
    LDA #$0009                      ; $A797B9  A9 09 00     Mx
    JSL L_9ABBD5                    ; $A797BC  22 D5 BB 9A  Mx
L_A797C0:
    STZ $0C2B                       ; $A797C0  9C 2B 0C     Mx
    LDA $0A36                       ; $A797C3  AD 36 0A     Mx
    BNE L_A79800                    ; $A797C6  D0 38        Mx
    LDX $00AA                       ; $A797C8  AE AA 00     Mx
    LDA $A7E4B9,X                   ; $A797CB  BF B9 E4 A7  Mx
    BEQ L_A79800                    ; $A797CF  F0 2F        Mx
    JSR L_A797D7                    ; $A797D1  20 D7 97     Mx
    JMP L_A79800                    ; $A797D4  4C 00 98     Mx
L_A797D7:
    LDA $0C3D                       ; $A797D7  AD 3D 0C     Mx
    BNE L_A797FF                    ; $A797DA  D0 23        Mx
    LDA $0C1F                       ; $A797DC  AD 1F 0C     Mx
    AND #$00FF                      ; $A797DF  29 FF 00     Mx
    CMP #$0003                      ; $A797E2  C9 03 00     Mx
    BCS L_A797FF                    ; $A797E5  B0 18        Mx
    LDA #$0014                      ; $A797E7  A9 14 00     Mx
    STA $0C3D                       ; $A797EA  8D 3D 0C     Mx
    LDA $1611                       ; $A797ED  AD 11 16     Mx
    BNE L_A797FF                    ; $A797F0  D0 0D        Mx
    LDA #$0011                      ; $A797F2  A9 11 00     Mx
    JSL L_BDFDF3                    ; $A797F5  22 F3 FD BD  Mx
    LDA #$0064                      ; $A797F9  A9 64 00     Mx
    STA $1611                       ; $A797FC  8D 11 16     Mx
L_A797FF:
    RTS                             ; $A797FF  60           Mx
L_A79800:
    LDA $0A6C                       ; $A79800  AD 6C 0A     Mx
    BNE L_A7982A                    ; $A79803  D0 25        Mx
    LDA $09BA                       ; $A79805  AD BA 09     Mx
    BNE L_A7982A                    ; $A79808  D0 20        Mx
    LDA $0A5C                       ; $A7980A  AD 5C 0A     Mx
    BNE L_A7982A                    ; $A7980D  D0 1B        Mx
    LDA $09AC                       ; $A7980F  AD AC 09     Mx
    CMP #$0020                      ; $A79812  C9 20 00     Mx
    BCC L_A7981C                    ; $A79815  90 05        Mx
    CMP #$0025                      ; $A79817  C9 25 00     Mx
    BCC L_A7982A                    ; $A7981A  90 0E        Mx
L_A7981C:
    LDA $09E0                       ; $A7981C  AD E0 09     Mx
    ORA $09E8                       ; $A7981F  0D E8 09     Mx
    ORA $09EA                       ; $A79822  0D EA 09     Mx
    ORA $09E2                       ; $A79825  0D E2 09     Mx
    BNE L_A7982D                    ; $A79828  D0 03        Mx
L_A7982A:
    JMP L_A79A2C                    ; $A7982A  4C 2C 9A     Mx
L_A7982D:
    LDA $09DA                       ; $A7982D  AD DA 09     Mx
    BNE L_A7982A                    ; $A79830  D0 F8        Mx
    LDA $0A3C                       ; $A79832  AD 3C 0A     Mx
    BNE L_A7982A                    ; $A79835  D0 F3        Mx
    LDA $09B0                       ; $A79837  AD B0 09     Mx
    BNE L_A7982A                    ; $A7983A  D0 EE        Mx
    LDA $080A                       ; $A7983C  AD 0A 08     Mx
    BNE L_A79865                    ; $A7983F  D0 24        Mx
    LDA $086C                       ; $A79841  AD 6C 08     Mx
    BNE L_A79865                    ; $A79844  D0 1F        Mx
    LDA $0A20                       ; $A79846  AD 20 0A     Mx
    CMP #$0025                      ; $A79849  C9 25 00     Mx
    BCS L_A79865                    ; $A7984C  B0 17        Mx
    CMP #$000A                      ; $A7984E  C9 0A 00     Mx
    BCC L_A79865                    ; $A79851  90 12        Mx
    LDA $09FE                       ; $A79853  AD FE 09     Mx
    SEC                             ; $A79856  38           Mx
    SBC $0830                       ; $A79857  ED 30 08     Mx
    BPL L_A79865                    ; $A7985A  10 09        Mx
    LDA $0A00                       ; $A7985C  AD 00 0A     Mx
    SEC                             ; $A7985F  38           Mx
    SBC $082E                       ; $A79860  ED 2E 08     Mx
    BPL L_A79868                    ; $A79863  10 03        Mx
L_A79865:
    JMP L_A79934                    ; $A79865  4C 34 99     Mx
L_A79868:
    LDA $09D0                       ; $A79868  AD D0 09     Mx
    SEC                             ; $A7986B  38           Mx
    SBC $0800                       ; $A7986C  ED 00 08     Mx
    BCC L_A79879                    ; $A7986F  90 08        Mx
    CMP #$000C                      ; $A79871  C9 0C 00     Mx
    BCC L_A79881                    ; $A79874  90 0B        Mx
    JMP L_A79934                    ; $A79876  4C 34 99     Mx
L_A79879:
    CMP #$FFF4                      ; $A79879  C9 F4 FF     Mx
    BCS L_A79881                    ; $A7987C  B0 03        Mx
    JMP L_A79934                    ; $A7987E  4C 34 99     Mx
L_A79881:
    LDA $09D6                       ; $A79881  AD D6 09     Mx
    SEC                             ; $A79884  38           Mx
    SBC $0806                       ; $A79885  ED 06 08     Mx
    CMP #$000C                      ; $A79888  C9 0C 00     Mx
    BPL L_A798F3                    ; $A7988B  10 66        Mx
    CMP #$FFF4                      ; $A7988D  C9 F4 FF     Mx
    BMI L_A798F3                    ; $A79890  30 61        Mx
    STZ $09E8                       ; $A79892  9C E8 09     Mx
    STZ $09EA                       ; $A79895  9C EA 09     Mx
    LDA $09D6                       ; $A79898  AD D6 09     Mx
    SEC                             ; $A7989B  38           Mx
    SBC $0806                       ; $A7989C  ED 06 08     Mx
    BMI L_A798CA                    ; $A7989F  30 29        Mx
    LDA $09E0                       ; $A798A1  AD E0 09     Mx
    CLC                             ; $A798A4  18           Mx
    ADC #$C000                      ; $A798A5  69 00 C0     Mx
    STA $09E0                       ; $A798A8  8D E0 09     Mx
    LDA $09E2                       ; $A798AB  AD E2 09     Mx
    ADC #$0000                      ; $A798AE  69 00 00     Mx
    STA $09E2                       ; $A798B1  8D E2 09     Mx
    LDA $0810                       ; $A798B4  AD 10 08     Mx
    SEC                             ; $A798B7  38           Mx
    SBC #$2000                      ; $A798B8  E9 00 20     Mx
    STA $0810                       ; $A798BB  8D 10 08     Mx
    LDA $0812                       ; $A798BE  AD 12 08     Mx
    SBC #$0000                      ; $A798C1  E9 00 00     Mx
    STA $0812                       ; $A798C4  8D 12 08     Mx
    JMP L_A79934                    ; $A798C7  4C 34 99     Mx
L_A798CA:
    LDA $09E0                       ; $A798CA  AD E0 09     Mx
    SEC                             ; $A798CD  38           Mx
    SBC #$C000                      ; $A798CE  E9 00 C0     Mx
    STA $09E0                       ; $A798D1  8D E0 09     Mx
    LDA $09E2                       ; $A798D4  AD E2 09     Mx
    SBC #$0000                      ; $A798D7  E9 00 00     Mx
    STA $09E2                       ; $A798DA  8D E2 09     Mx
    LDA $0810                       ; $A798DD  AD 10 08     Mx
    CLC                             ; $A798E0  18           Mx
    ADC #$2000                      ; $A798E1  69 00 20     Mx
    STA $0810                       ; $A798E4  8D 10 08     Mx
    LDA $0812                       ; $A798E7  AD 12 08     Mx
    ADC #$0000                      ; $A798EA  69 00 00     Mx
    STA $0812                       ; $A798ED  8D 12 08     Mx
    JMP L_A79934                    ; $A798F0  4C 34 99     Mx
L_A798F3:
    STZ $09E0                       ; $A798F3  9C E0 09     Mx
    STZ $09E2                       ; $A798F6  9C E2 09     Mx
    LDA $09DE                       ; $A798F9  AD DE 09     Mx
    CMP $080E                       ; $A798FC  CD 0E 08     Mx
    BMI L_A7991C                    ; $A798FF  30 1B        Mx
    CMP #$03E4                      ; $A79901  C9 E4 03     Mx
    BCS L_A79921                    ; $A79904  B0 1B        Mx
L_A79906:
    LDA $09E8                       ; $A79906  AD E8 09     Mx
    CLC                             ; $A79909  18           Mx
    ADC #$A000                      ; $A7990A  69 00 A0     Mx
    STA $09E8                       ; $A7990D  8D E8 09     Mx
    LDA $09EA                       ; $A79910  AD EA 09     Mx
    ADC #$0000                      ; $A79913  69 00 00     Mx
    STA $09EA                       ; $A79916  8D EA 09     Mx
    JMP L_A79934                    ; $A79919  4C 34 99     Mx
L_A7991C:
    CMP #$031C                      ; $A7991C  C9 1C 03     Mx
    BCC L_A79906                    ; $A7991F  90 E5        Mx
L_A79921:
    LDA $09E8                       ; $A79921  AD E8 09     Mx
    SEC                             ; $A79924  38           Mx
    SBC #$A000                      ; $A79925  E9 00 A0     Mx
    STA $09E8                       ; $A79928  8D E8 09     Mx
    LDA $09EA                       ; $A7992B  AD EA 09     Mx
    SBC #$0000                      ; $A7992E  E9 00 00     Mx
    STA $09EA                       ; $A79931  8D EA 09     Mx
L_A79934:
    LDA $0722                       ; $A79934  AD 22 07     Mx
    BNE L_A7995D                    ; $A79937  D0 24        Mx
    LDA $0784                       ; $A79939  AD 84 07     Mx
    BNE L_A7995D                    ; $A7993C  D0 1F        Mx
    LDA $0A22                       ; $A7993E  AD 22 0A     Mx
    CMP #$0025                      ; $A79941  C9 25 00     Mx
    BCS L_A7995D                    ; $A79944  B0 17        Mx
    CMP #$000A                      ; $A79946  C9 0A 00     Mx
    BCC L_A7995D                    ; $A79949  90 12        Mx
    LDA $09FE                       ; $A7994B  AD FE 09     Mx
    SEC                             ; $A7994E  38           Mx
    SBC $0748                       ; $A7994F  ED 48 07     Mx
    BPL L_A7995D                    ; $A79952  10 09        Mx
    LDA $0A00                       ; $A79954  AD 00 0A     Mx
    SEC                             ; $A79957  38           Mx
    SBC $0746                       ; $A79958  ED 46 07     Mx
    BPL L_A79960                    ; $A7995B  10 03        Mx
L_A7995D:
    JMP L_A79A2C                    ; $A7995D  4C 2C 9A     Mx
L_A79960:
    LDA $09D0                       ; $A79960  AD D0 09     Mx
    SEC                             ; $A79963  38           Mx
    SBC $0718                       ; $A79964  ED 18 07     Mx
    BCC L_A79971                    ; $A79967  90 08        Mx
    CMP #$000C                      ; $A79969  C9 0C 00     Mx
    BCC L_A79979                    ; $A7996C  90 0B        Mx
    JMP L_A79A2C                    ; $A7996E  4C 2C 9A     Mx
L_A79971:
    CMP #$FFF4                      ; $A79971  C9 F4 FF     Mx
    BCS L_A79979                    ; $A79974  B0 03        Mx
    JMP L_A79A2C                    ; $A79976  4C 2C 9A     Mx
L_A79979:
    LDA $09D6                       ; $A79979  AD D6 09     Mx
    SEC                             ; $A7997C  38           Mx
    SBC $071E                       ; $A7997D  ED 1E 07     Mx
    CMP #$000C                      ; $A79980  C9 0C 00     Mx
    BPL L_A799EB                    ; $A79983  10 66        Mx
    CMP #$FFF4                      ; $A79985  C9 F4 FF     Mx
    BMI L_A799EB                    ; $A79988  30 61        Mx
    STZ $09E8                       ; $A7998A  9C E8 09     Mx
    STZ $09EA                       ; $A7998D  9C EA 09     Mx
    LDA $09D6                       ; $A79990  AD D6 09     Mx
    SEC                             ; $A79993  38           Mx
    SBC $071E                       ; $A79994  ED 1E 07     Mx
    BMI L_A799C2                    ; $A79997  30 29        Mx
    LDA $09E0                       ; $A79999  AD E0 09     Mx
    CLC                             ; $A7999C  18           Mx
    ADC #$C000                      ; $A7999D  69 00 C0     Mx
    STA $09E0                       ; $A799A0  8D E0 09     Mx
    LDA $09E2                       ; $A799A3  AD E2 09     Mx
    ADC #$0000                      ; $A799A6  69 00 00     Mx
    STA $09E2                       ; $A799A9  8D E2 09     Mx
    LDA $0728                       ; $A799AC  AD 28 07     Mx
    SEC                             ; $A799AF  38           Mx
    SBC #$2000                      ; $A799B0  E9 00 20     Mx
    STA $0728                       ; $A799B3  8D 28 07     Mx
    LDA $072A                       ; $A799B6  AD 2A 07     Mx
    SBC #$0000                      ; $A799B9  E9 00 00     Mx
    STA $072A                       ; $A799BC  8D 2A 07     Mx
    JMP L_A79A2C                    ; $A799BF  4C 2C 9A     Mx
L_A799C2:
    LDA $09E0                       ; $A799C2  AD E0 09     Mx
    SEC                             ; $A799C5  38           Mx
    SBC #$C000                      ; $A799C6  E9 00 C0     Mx
    STA $09E0                       ; $A799C9  8D E0 09     Mx
    LDA $09E2                       ; $A799CC  AD E2 09     Mx
    SBC #$0000                      ; $A799CF  E9 00 00     Mx
    STA $09E2                       ; $A799D2  8D E2 09     Mx
    LDA $0728                       ; $A799D5  AD 28 07     Mx
    CLC                             ; $A799D8  18           Mx
    ADC #$2000                      ; $A799D9  69 00 20     Mx
    STA $0728                       ; $A799DC  8D 28 07     Mx
    LDA $072A                       ; $A799DF  AD 2A 07     Mx
    ADC #$0000                      ; $A799E2  69 00 00     Mx
    STA $072A                       ; $A799E5  8D 2A 07     Mx
    JMP L_A79A2C                    ; $A799E8  4C 2C 9A     Mx
L_A799EB:
    STZ $09E0                       ; $A799EB  9C E0 09     Mx
    STZ $09E2                       ; $A799EE  9C E2 09     Mx
    LDA $09DE                       ; $A799F1  AD DE 09     Mx
    CMP $0726                       ; $A799F4  CD 26 07     Mx
    BMI L_A79A14                    ; $A799F7  30 1B        Mx
    CMP #$03E4                      ; $A799F9  C9 E4 03     Mx
    BCS L_A79A19                    ; $A799FC  B0 1B        Mx
L_A799FE:
    LDA $09E8                       ; $A799FE  AD E8 09     Mx
    CLC                             ; $A79A01  18           Mx
    ADC #$A000                      ; $A79A02  69 00 A0     Mx
    STA $09E8                       ; $A79A05  8D E8 09     Mx
    LDA $09EA                       ; $A79A08  AD EA 09     Mx
    ADC #$0000                      ; $A79A0B  69 00 00     Mx
    STA $09EA                       ; $A79A0E  8D EA 09     Mx
    JMP L_A79A2C                    ; $A79A11  4C 2C 9A     Mx
L_A79A14:
    CMP #$031C                      ; $A79A14  C9 1C 03     Mx
    BCC L_A799FE                    ; $A79A17  90 E5        Mx
L_A79A19:
    LDA $09E8                       ; $A79A19  AD E8 09     Mx
    SEC                             ; $A79A1C  38           Mx
    SBC #$A000                      ; $A79A1D  E9 00 A0     Mx
    STA $09E8                       ; $A79A20  8D E8 09     Mx
    LDA $09EA                       ; $A79A23  AD EA 09     Mx
    SBC #$0000                      ; $A79A26  E9 00 00     Mx
    STA $09EA                       ; $A79A29  8D EA 09     Mx
L_A79A2C:
    LDA $09DC                       ; $A79A2C  AD DC 09     Mx
    CLC                             ; $A79A2F  18           Mx
    ADC $09E8                       ; $A79A30  6D E8 09     Mx
    STA $09D2                       ; $A79A33  8D D2 09     Mx
    LDA $09DE                       ; $A79A36  AD DE 09     Mx
    ADC $09EA                       ; $A79A39  6D EA 09     Mx
    STA $09D0                       ; $A79A3C  8D D0 09     Mx
    CMP #$0310                      ; $A79A3F  C9 10 03     Mx
    BCC L_A79A55                    ; $A79A42  90 11        Mx
    CMP #$03F0                      ; $A79A44  C9 F0 03     Mx
    BCC L_A79A67                    ; $A79A47  90 1E        Mx
    LDA $0A26                       ; $A79A49  AD 26 0A     Mx
    AND #$FBFF                      ; $A79A4C  29 FF FB     Mx
    STA $0A26                       ; $A79A4F  8D 26 0A     Mx
    JMP L_A79A5E                    ; $A79A52  4C 5E 9A     Mx
L_A79A55:
    LDA $0A26                       ; $A79A55  AD 26 0A     Mx
    AND #$F7FF                      ; $A79A58  29 FF F7     Mx
    STA $0A26                       ; $A79A5B  8D 26 0A     Mx
L_A79A5E:
    STZ $09EA                       ; $A79A5E  9C EA 09     Mx
    STZ $09E8                       ; $A79A61  9C E8 09     Mx
    JMP L_A79A7F                    ; $A79A64  4C 7F 9A     Mx
L_A79A67:
    LDA $09EA                       ; $A79A67  AD EA 09     Mx
    BEQ L_A79A7F                    ; $A79A6A  F0 13        Mx
    BPL L_A79A76                    ; $A79A6C  10 08        Mx
    LDA $0A26                       ; $A79A6E  AD 26 0A     Mx
    ORA #$0400                      ; $A79A71  09 00 04     Mx
    BNE L_A79A7C                    ; $A79A74  D0 06        Mx
L_A79A76:
    LDA $0A26                       ; $A79A76  AD 26 0A     Mx
    ORA #$0800                      ; $A79A79  09 00 08     Mx
L_A79A7C:
    STA $0A26                       ; $A79A7C  8D 26 0A     Mx
L_A79A7F:
    LDA $09BA                       ; $A79A7F  AD BA 09     Mx
    BEQ L_A79A8F                    ; $A79A82  F0 0B        Mx
    LDA $09DA                       ; $A79A84  AD DA 09     Mx
    CMP #$0001                      ; $A79A87  C9 01 00     Mx
    BPL L_A79A8F                    ; $A79A8A  10 03        Mx
    JMP L_A79AE1                    ; $A79A8C  4C E1 9A     Mx
L_A79A8F:
    LDA $09C8                       ; $A79A8F  AD C8 09     Mx
    BPL L_A79AA1                    ; $A79A92  10 0D        Mx
    CMP #$FF00                      ; $A79A94  C9 00 FF     Mx
    BCS L_A79AC9                    ; $A79A97  B0 30        Mx
    LDA $09E2                       ; $A79A99  AD E2 09     Mx
    BPL L_A79AC9                    ; $A79A9C  10 2B        Mx
    JMP L_A79AB7                    ; $A79A9E  4C B7 9A     Mx
L_A79AA1:
    CMP #$010C                      ; $A79AA1  C9 0C 01     Mx
    BCC L_A79AC9                    ; $A79AA4  90 23        Mx
    LDA $09E2                       ; $A79AA6  AD E2 09     Mx
    BMI L_A79AC9                    ; $A79AA9  30 1E        Mx
    LDA $0A26                       ; $A79AAB  AD 26 0A     Mx
    AND #$FEFF                      ; $A79AAE  29 FF FE     Mx
    STA $0A26                       ; $A79AB1  8D 26 0A     Mx
    JMP L_A79AC0                    ; $A79AB4  4C C0 9A     Mx
L_A79AB7:
    LDA $0A26                       ; $A79AB7  AD 26 0A     Mx
    AND #$FDFF                      ; $A79ABA  29 FF FD     Mx
    STA $0A26                       ; $A79ABD  8D 26 0A     Mx
L_A79AC0:
    STZ $09E2                       ; $A79AC0  9C E2 09     Mx
    STZ $09E0                       ; $A79AC3  9C E0 09     Mx
    JMP L_A79AE1                    ; $A79AC6  4C E1 9A     Mx
L_A79AC9:
    LDA $09E2                       ; $A79AC9  AD E2 09     Mx
    BEQ L_A79AE1                    ; $A79ACC  F0 13        Mx
    BPL L_A79AD8                    ; $A79ACE  10 08        Mx
    LDA $0A26                       ; $A79AD0  AD 26 0A     Mx
    ORA #$0100                      ; $A79AD3  09 00 01     Mx
    BNE L_A79ADE                    ; $A79AD6  D0 06        Mx
L_A79AD8:
    LDA $0A26                       ; $A79AD8  AD 26 0A     Mx
    ORA #$0200                      ; $A79ADB  09 00 02     Mx
L_A79ADE:
    STA $0A26                       ; $A79ADE  8D 26 0A     Mx
L_A79AE1:
    LDA $09CC                       ; $A79AE1  AD CC 09     Mx
    BNE L_A79AF8                    ; $A79AE4  D0 12        Mx
    LDA $09B0                       ; $A79AE6  AD B0 09     Mx
    AND #$0004                      ; $A79AE9  29 04 00     Mx
    BNE L_A79B0F                    ; $A79AEC  D0 21        Mx
    LDA $0A4C                       ; $A79AEE  AD 4C 0A     Mx
    BEQ L_A79B0F                    ; $A79AF1  F0 1C        Mx
    STZ $0C11                       ; $A79AF3  9C 11 0C     Mx
    BRA L_A79B0F                    ; $A79AF6  80 17        Mx
L_A79AF8:
    BMI L_A79B03                    ; $A79AF8  30 09        Mx
    LDX $09AC                       ; $A79AFA  AE AC 09     Mx
    LDA $02DF90,X                   ; $A79AFD  BF 90 DF 02  Mx
    BNE L_A79B0F                    ; $A79B01  D0 0C        Mx
L_A79B03:
    STZ $09DA                       ; $A79B03  9C DA 09     Mx
    STZ $09D8                       ; $A79B06  9C D8 09     Mx
    STZ $09CC                       ; $A79B09  9C CC 09     Mx
    STZ $09CE                       ; $A79B0C  9C CE 09     Mx
L_A79B0F:
    LDA $09E0                       ; $A79B0F  AD E0 09     Mx
    CLC                             ; $A79B12  18           Mx
    ADC $09D4                       ; $A79B13  6D D4 09     Mx
    STA $09D4                       ; $A79B16  8D D4 09     Mx
    LDA $09E2                       ; $A79B19  AD E2 09     Mx
    ADC $09D6                       ; $A79B1C  6D D6 09     Mx
    STA $09D6                       ; $A79B1F  8D D6 09     Mx
    LDA $09E8                       ; $A79B22  AD E8 09     Mx
    CLC                             ; $A79B25  18           Mx
    ADC $09DC                       ; $A79B26  6D DC 09     Mx
    STA $09DC                       ; $A79B29  8D DC 09     Mx
    LDA $09EA                       ; $A79B2C  AD EA 09     Mx
    ADC $09DE                       ; $A79B2F  6D DE 09     Mx
    STA $09DE                       ; $A79B32  8D DE 09     Mx
    LDA $09E4                       ; $A79B35  AD E4 09     Mx
    CLC                             ; $A79B38  18           Mx
    ADC $09D8                       ; $A79B39  6D D8 09     Mx
    STA $09D8                       ; $A79B3C  8D D8 09     Mx
    LDA $09E6                       ; $A79B3F  AD E6 09     Mx
    ADC $09DA                       ; $A79B42  6D DA 09     Mx
    BPL L_A79B4A                    ; $A79B45  10 03        Mx
    LDA #$0000                      ; $A79B47  A9 00 00     Mx
L_A79B4A:
    STA $09DA                       ; $A79B4A  8D DA 09     Mx
    LDX $09AC                       ; $A79B4D  AE AC 09     Mx
    LDA $82DFD4,X                   ; $A79B50  BF D4 DF 82  Mx
    BEQ L_A79B62                    ; $A79B54  F0 0C        Mx
    STZ $09E2                       ; $A79B56  9C E2 09     Mx
    STZ $09E0                       ; $A79B59  9C E0 09     Mx
    STZ $09EA                       ; $A79B5C  9C EA 09     Mx
    STZ $09E8                       ; $A79B5F  9C E8 09     Mx
L_A79B62:
    REP #$10                        ; $A79B62  C2 10        Mx
    LDA $09AC                       ; $A79B64  AD AC 09     MX
    ASL                             ; $A79B67  0A           MX
    ASL                             ; $A79B68  0A           MX
    ASL                             ; $A79B69  0A           MX
    CLC                             ; $A79B6A  18           MX
    ADC $09C0                       ; $A79B6B  6D C0 09     MX
    ADC $09C0                       ; $A79B6E  6D C0 09     MX
    STA $09B8                       ; $A79B71  8D B8 09     MX
    TAX                             ; $A79B74  AA           MX
    DEC $09B4                       ; $A79B75  CE B4 09     MX
    BPL L_A79B9F                    ; $A79B78  10 25        MX
    LDA $998210,X                   ; $A79B7A  BF 10 82 99  MX
    STA $09B4                       ; $A79B7E  8D B4 09     MX
    INC $09B2                       ; $A79B81  EE B2 09     MX
    LDA $09B6                       ; $A79B84  AD B6 09     MX
    CLC                             ; $A79B87  18           MX
    ADC #$0008                      ; $A79B88  69 08 00     MX
    STA $09B6                       ; $A79B8B  8D B6 09     MX
    LDA $998420,X                   ; $A79B8E  BF 20 84 99  MX
    CMP $09B2                       ; $A79B92  CD B2 09     MX
    BEQ L_A79B99                    ; $A79B95  F0 02        MX
    BCS L_A79B9F                    ; $A79B97  B0 06        MX
L_A79B99:
    STZ $09B2                       ; $A79B99  9C B2 09     MX
    STZ $09B6                       ; $A79B9C  9C B6 09     MX
L_A79B9F:
    LDA $998000,X                   ; $A79B9F  BF 00 80 99  MX
    CLC                             ; $A79BA3  18           MX
    ADC $09B6                       ; $A79BA4  6D B6 09     MX
    STA $0A84                       ; $A79BA7  8D 84 0A     MX
    SEP #$10                        ; $A79BAA  E2 10        MX
    RTL                             ; $A79BAC  6B           Mx
L_A79BAD:
    LDX $09BA                       ; $A79BAD  AE BA 09     Mx
    BNE L_A79BE8                    ; $A79BB0  D0 36        Mx
    LDX $0A9A                       ; $A79BB2  AE 9A 0A     Mx
    BEQ L_A79BBA                    ; $A79BB5  F0 03        Mx
    JMP L_A79D8D                    ; $A79BB7  4C 8D 9D     Mx
L_A79BBA:
    LDX $0A5A                       ; $A79BBA  AE 5A 0A     Mx
    BEQ L_A79BE5                    ; $A79BBD  F0 26        Mx
    DEC $0A5A                       ; $A79BBF  CE 5A 0A     Mx
    BNE L_A79BD2                    ; $A79BC2  D0 0E        Mx
    PHA                             ; $A79BC4  48           Mx
    LDA #$FFFF                      ; $A79BC5  A9 FF FF     Mx
    STA $0A26                       ; $A79BC8  8D 26 0A     Mx
    STZ $0A5C                       ; $A79BCB  9C 5C 0A     Mx
    PLA                             ; $A79BCE  68           Mx
    JMP L_A79E45                    ; $A79BCF  4C 45 9E     Mx
L_A79BD2:
    LDX $0A5C                       ; $A79BD2  AE 5C 0A     Mx
    BEQ L_A79BDA                    ; $A79BD5  F0 03        Mx
    JMP L_A79E48                    ; $A79BD7  4C 48 9E     Mx
L_A79BDA:
    PHA                             ; $A79BDA  48           Mx
    LDA $0A26                       ; $A79BDB  AD 26 0A     Mx
    AND #$F0FF                      ; $A79BDE  29 FF F0     Mx
    STA $0A26                       ; $A79BE1  8D 26 0A     Mx
    PLA                             ; $A79BE4  68           Mx
L_A79BE5:
    JMP L_A79E45                    ; $A79BE5  4C 45 9E     Mx
L_A79BE8:
    LDA #$FFFF                      ; $A79BE8  A9 FF FF     Mx
    STA $0A26                       ; $A79BEB  8D 26 0A     Mx
    STZ $00A4                       ; $A79BEE  9C A4 00     Mx
    LDA $09DA                       ; $A79BF1  AD DA 09     Mx
    BEQ L_A79BFC                    ; $A79BF4  F0 06        Mx
    LDA #$0000                      ; $A79BF6  A9 00 00     Mx
    JMP L_A79E45                    ; $A79BF9  4C 45 9E     Mx
L_A79BFC:
    LDA $0A4C                       ; $A79BFC  AD 4C 0A     Mx
    BNE L_A79C62                    ; $A79BFF  D0 61        Mx
    LDX $0C1B                       ; $A79C01  AE 1B 0C     Mx
    CPX $09A8                       ; $A79C04  EC A8 09     Mx
    BNE L_A79C6C                    ; $A79C07  D0 63        Mx
    STZ $00D0                       ; $A79C09  9C D0 00     Mx
    LDA $09D6                       ; $A79C0C  AD D6 09     Mx
    SEC                             ; $A79C0F  38           Mx
    SBC $0BFB                       ; $A79C10  ED FB 0B     Mx
    AND #$FFFC                      ; $A79C13  29 FC FF     Mx
    BMI L_A79C2B                    ; $A79C16  30 13        Mx
    BNE L_A79C22                    ; $A79C18  D0 08        Mx
    STZ $09E2                       ; $A79C1A  9C E2 09     Mx
    STZ $09E0                       ; $A79C1D  9C E0 09     Mx
    BRA L_A79C31                    ; $A79C20  80 0F        Mx
L_A79C22:
    LDA #$0200                      ; $A79C22  A9 00 02     Mx
    STA $00A4                       ; $A79C25  8D A4 00     Mx
    JMP L_A79C31                    ; $A79C28  4C 31 9C     Mx
L_A79C2B:
    LDA #$0100                      ; $A79C2B  A9 00 01     Mx
    STA $00A4                       ; $A79C2E  8D A4 00     Mx
L_A79C31:
    LDA $09DE                       ; $A79C31  AD DE 09     Mx
    SEC                             ; $A79C34  38           Mx
    SBC $0BFD                       ; $A79C35  ED FD 0B     Mx
    AND #$FFFC                      ; $A79C38  29 FC FF     Mx
    BMI L_A79C53                    ; $A79C3B  30 16        Mx
    BNE L_A79C47                    ; $A79C3D  D0 08        Mx
    STZ $09EA                       ; $A79C3F  9C EA 09     Mx
    STZ $09E8                       ; $A79C42  9C E8 09     Mx
    BRA L_A79C5C                    ; $A79C45  80 15        Mx
L_A79C47:
    LDA #$0800                      ; $A79C47  A9 00 08     Mx
    ORA $00A4                       ; $A79C4A  0D A4 00     Mx
    STA $00A4                       ; $A79C4D  8D A4 00     Mx
    JMP L_A79C5C                    ; $A79C50  4C 5C 9C     Mx
L_A79C53:
    LDA #$0400                      ; $A79C53  A9 00 04     Mx
    ORA $00A4                       ; $A79C56  0D A4 00     Mx
    STA $00A4                       ; $A79C59  8D A4 00     Mx
L_A79C5C:
    LDA $00A4                       ; $A79C5C  AD A4 00     Mx
    JMP L_A79E45                    ; $A79C5F  4C 45 9E     Mx
L_A79C62:
    LDX $0C1B                       ; $A79C62  AE 1B 0C     Mx
    BEQ L_A79C6C                    ; $A79C65  F0 05        Mx
    CPX $09A8                       ; $A79C67  EC A8 09     Mx
    BNE L_A79C6F                    ; $A79C6A  D0 03        Mx
L_A79C6C:
    JMP L_A79D03                    ; $A79C6C  4C 03 9D     Mx
L_A79C6F:
    LDA $0C19                       ; $A79C6F  AD 19 0C     Mx
    BEQ L_A79CDA                    ; $A79C72  F0 66        Mx
    LDA $0BD9                       ; $A79C74  AD D9 0B     Mx
    CLC                             ; $A79C77  18           Mx
    ADC $0BEF                       ; $A79C78  6D EF 0B     Mx
    LDY #$54                        ; $A79C7B  A0 54        Mx
    SEC                             ; $A79C7D  38           Mx
    SBC ($CC),Y                     ; $A79C7E  F1 CC        Mx
    BPL L_A79C8C                    ; $A79C80  10 0A        Mx
    CMP #$FEF4                      ; $A79C82  C9 F4 FE     Mx
    BCS L_A79C94                    ; $A79C85  B0 0D        Mx
    LDA #$FEF4                      ; $A79C87  A9 F4 FE     Mx
    BRA L_A79C94                    ; $A79C8A  80 08        Mx
L_A79C8C:
    CMP #$010C                      ; $A79C8C  C9 0C 01     Mx
    BCC L_A79C94                    ; $A79C8F  90 03        Mx
    LDA #$010C                      ; $A79C91  A9 0C 01     Mx
L_A79C94:
    STA $0BD9                       ; $A79C94  8D D9 0B     Mx
    LDA $0BDD                       ; $A79C97  AD DD 0B     Mx
    CLC                             ; $A79C9A  18           Mx
    ADC $0BF1                       ; $A79C9B  6D F1 0B     Mx
    STA $0BDD                       ; $A79C9E  8D DD 0B     Mx
    LDA $0BF3                       ; $A79CA1  AD F3 0B     Mx
    CMP #$0310                      ; $A79CA4  C9 10 03     Mx
    BCC L_A79CB3                    ; $A79CA7  90 0A        Mx
    CMP #$03F0                      ; $A79CA9  C9 F0 03     Mx
    BCC L_A79CB6                    ; $A79CAC  90 08        Mx
    LDA #$03F0                      ; $A79CAE  A9 F0 03     Mx
    BRA L_A79CB6                    ; $A79CB1  80 03        Mx
L_A79CB3:
    LDA #$0310                      ; $A79CB3  A9 10 03     Mx
L_A79CB6:
    STA $0BE1                       ; $A79CB6  8D E1 0B     Mx
    STA $0BF3                       ; $A79CB9  8D F3 0B     Mx
    STZ $0C19                       ; $A79CBC  9C 19 0C     Mx
    STZ $00CC                       ; $A79CBF  9C CC 00     Mx
    STZ $0C2B                       ; $A79CC2  9C 2B 0C     Mx
    STZ $0BEF                       ; $A79CC5  9C EF 0B     Mx
    STZ $0BF1                       ; $A79CC8  9C F1 0B     Mx
    STZ $0C11                       ; $A79CCB  9C 11 0C     Mx
    LDA #$0002                      ; $A79CCE  A9 02 00     Mx
    STA $0BBF                       ; $A79CD1  8D BF 0B     Mx
    LDA #$0002                      ; $A79CD4  A9 02 00     Mx
    STA $0BC1                       ; $A79CD7  8D C1 0B     Mx
L_A79CDA:
    LDA $0C1B                       ; $A79CDA  AD 1B 0C     Mx
    AND #$00FF                      ; $A79CDD  29 FF 00     Mx
    DEC                             ; $A79CE0  3A           Mx
    ASL                             ; $A79CE1  0A           Mx
    TAX                             ; $A79CE2  AA           Mx
    LDA $9ABBCD,X                   ; $A79CE3  BF CD BB 9A  Mx
    STA $00CC                       ; $A79CE7  8D CC 00     Mx
    LDY #$2E                        ; $A79CEA  A0 2E        Mx
    LDA ($CC),Y                     ; $A79CEC  B1 CC        Mx
    STA $0BD9                       ; $A79CEE  8D D9 0B     Mx
    LDY #$36                        ; $A79CF1  A0 36        Mx
    LDA ($CC),Y                     ; $A79CF3  B1 CC        Mx
    STA $0BE1                       ; $A79CF5  8D E1 0B     Mx
    LDY #$32                        ; $A79CF8  A0 32        Mx
    LDA ($CC),Y                     ; $A79CFA  B1 CC        Mx
    CLC                             ; $A79CFC  18           Mx
    ADC #$0019                      ; $A79CFD  69 19 00     Mx
    STA $0BDD                       ; $A79D00  8D DD 0B     Mx
L_A79D03:
    STZ $00D0                       ; $A79D03  9C D0 00     Mx
    LDA $09D6                       ; $A79D06  AD D6 09     Mx
    SEC                             ; $A79D09  38           Mx
    SBC $09BC                       ; $A79D0A  ED BC 09     Mx
    AND #$FFFC                      ; $A79D0D  29 FC FF     Mx
    BMI L_A79D28                    ; $A79D10  30 16        Mx
    BNE L_A79D1C                    ; $A79D12  D0 08        Mx
    STZ $09E2                       ; $A79D14  9C E2 09     Mx
    STZ $09E0                       ; $A79D17  9C E0 09     Mx
    BRA L_A79D38                    ; $A79D1A  80 1C        Mx
L_A79D1C:
    STA $00D0                       ; $A79D1C  8D D0 00     Mx
    LDA #$0200                      ; $A79D1F  A9 00 02     Mx
    STA $00A4                       ; $A79D22  8D A4 00     Mx
    JMP L_A79D38                    ; $A79D25  4C 38 9D     Mx
L_A79D28:
    EOR #$FFFF                      ; $A79D28  49 FF FF     Mx
    CLC                             ; $A79D2B  18           Mx
    ADC #$0001                      ; $A79D2C  69 01 00     Mx
    STA $00D0                       ; $A79D2F  8D D0 00     Mx
    LDA #$0100                      ; $A79D32  A9 00 01     Mx
    STA $00A4                       ; $A79D35  8D A4 00     Mx
L_A79D38:
    LDA $09DE                       ; $A79D38  AD DE 09     Mx
    SEC                             ; $A79D3B  38           Mx
    SBC $09BE                       ; $A79D3C  ED BE 09     Mx
    AND #$FFFC                      ; $A79D3F  29 FC FF     Mx
    BMI L_A79D5A                    ; $A79D42  30 16        Mx
    BNE L_A79D4E                    ; $A79D44  D0 08        Mx
    STZ $09EA                       ; $A79D46  9C EA 09     Mx
    STZ $09E8                       ; $A79D49  9C E8 09     Mx
    BRA L_A79D63                    ; $A79D4C  80 15        Mx
L_A79D4E:
    LDA #$0800                      ; $A79D4E  A9 00 08     Mx
    ORA $00A4                       ; $A79D51  0D A4 00     Mx
    STA $00A4                       ; $A79D54  8D A4 00     Mx
    JMP L_A79D63                    ; $A79D57  4C 63 9D     Mx
L_A79D5A:
    LDA #$0400                      ; $A79D5A  A9 00 04     Mx
    ORA $00A4                       ; $A79D5D  0D A4 00     Mx
    STA $00A4                       ; $A79D60  8D A4 00     Mx
L_A79D63:
    LDA $00A4                       ; $A79D63  AD A4 00     Mx
    BEQ L_A79D6B                    ; $A79D66  F0 03        Mx
    JMP L_A79E45                    ; $A79D68  4C 45 9E     Mx
L_A79D6B:
    LDX $0A16                       ; $A79D6B  AE 16 0A     Mx
    LDA $A7E377,X                   ; $A79D6E  BF 77 E3 A7  Mx
    AND #$0007                      ; $A79D72  29 07 00     Mx
    STA $09C0                       ; $A79D75  8D C0 09     Mx
    STZ $09E2                       ; $A79D78  9C E2 09     Mx
    STZ $09E0                       ; $A79D7B  9C E0 09     Mx
    STZ $09EA                       ; $A79D7E  9C EA 09     Mx
    STZ $09E8                       ; $A79D81  9C E8 09     Mx
    STZ $09E6                       ; $A79D84  9C E6 09     Mx
    STZ $09E4                       ; $A79D87  9C E4 09     Mx
    STZ $09BA                       ; $A79D8A  9C BA 09     Mx
L_A79D8D:
    LDA #$0087                      ; $A79D8D  A9 87 00     Mx
    STA $0A6A                       ; $A79D90  8D 6A 0A     Mx
    LDA #$FFFF                      ; $A79D93  A9 FF FF     Mx
    STA $0A26                       ; $A79D96  8D 26 0A     Mx
    LDA $0702                       ; $A79D99  AD 02 07     Mx
    ORA $07EA                       ; $A79D9C  0D EA 07     Mx
    ORA $08D2                       ; $A79D9F  0D D2 08     Mx
    ORA $09BA                       ; $A79DA2  0D BA 09     Mx
    BEQ L_A79DAA                    ; $A79DA5  F0 03        Mx
    JMP L_A79E42                    ; $A79DA7  4C 42 9E     Mx
L_A79DAA:
    LDA $0C3B                       ; $A79DAA  AD 3B 0C     Mx
    BNE L_A79DB4                    ; $A79DAD  D0 05        Mx
    STZ $0CD3                       ; $A79DAF  9C D3 0C     Mx
    BRA L_A79DBA                    ; $A79DB2  80 06        Mx
L_A79DB4:
    LDA #$003C                      ; $A79DB4  A9 3C 00     Mx
    STA $0CD3                       ; $A79DB7  8D D3 0C     Mx
L_A79DBA:
    LDA $0B50                       ; $A79DBA  AD 50 0B     Mx
    BNE L_A79DDD                    ; $A79DBD  D0 1E        Mx
    LDA $0C19                       ; $A79DBF  AD 19 0C     Mx
    AND #$00FF                      ; $A79DC2  29 FF 00     Mx
    SEC                             ; $A79DC5  38           Mx
    SBC $0C1B                       ; $A79DC6  ED 1B 0C     Mx
    AND #$00FF                      ; $A79DC9  29 FF 00     Mx
    BNE L_A79DE0                    ; $A79DCC  D0 12        Mx
    LDA $0C19                       ; $A79DCE  AD 19 0C     Mx
    AND #$00FF                      ; $A79DD1  29 FF 00     Mx
    SEC                             ; $A79DD4  38           Mx
    SBC $09A8                       ; $A79DD5  ED A8 09     Mx
    AND #$00FF                      ; $A79DD8  29 FF 00     Mx
    BEQ L_A79DF7                    ; $A79DDB  F0 1A        Mx
L_A79DDD:
    JMP L_A79E42                    ; $A79DDD  4C 42 9E     Mx
L_A79DE0:
    LDY #$2E                        ; $A79DE0  A0 2E        Mx
    LDA ($CC),Y                     ; $A79DE2  B1 CC        Mx
    STA $0BD9                       ; $A79DE4  8D D9 0B     Mx
    LDY #$36                        ; $A79DE7  A0 36        Mx
    LDA ($CC),Y                     ; $A79DE9  B1 CC        Mx
    STA $0BE1                       ; $A79DEB  8D E1 0B     Mx
    STA $0BF3                       ; $A79DEE  8D F3 0B     Mx
    STZ $0BDD                       ; $A79DF1  9C DD 0B     Mx
    JMP L_A79E42                    ; $A79DF4  4C 42 9E     Mx
L_A79DF7:
    LDX $0A0E                       ; $A79DF7  AE 0E 0A     Mx
    LDA $A7E377,X                   ; $A79DFA  BF 77 E3 A7  Mx
    AND #$0007                      ; $A79DFE  29 07 00     Mx
    STA $09C0                       ; $A79E01  8D C0 09     Mx
    LDA $0A9A                       ; $A79E04  AD 9A 0A     Mx
    BEQ L_A79E11                    ; $A79E07  F0 08        Mx
    DEC $0A9A                       ; $A79E09  CE 9A 0A     Mx
    BEQ L_A79E11                    ; $A79E0C  F0 03        Mx
    JMP L_A79E42                    ; $A79E0E  4C 42 9E     Mx
L_A79E11:
    STZ $0C1B                       ; $A79E11  9C 1B 0C     Mx
    LDA $09D6                       ; $A79E14  AD D6 09     Mx
    SEC                             ; $A79E17  38           Mx
    SBC #$001E                      ; $A79E18  E9 1E 00     Mx
    STA $09BC                       ; $A79E1B  8D BC 09     Mx
    LDA #$001E                      ; $A79E1E  A9 1E 00     Mx
    STA $0972                       ; $A79E21  8D 72 09     Mx
    STA $088A                       ; $A79E24  8D 8A 08     Mx
    STA $07A2                       ; $A79E27  8D A2 07     Mx
    STZ $0974                       ; $A79E2A  9C 74 09     Mx
    STZ $088C                       ; $A79E2D  9C 8C 08     Mx
    STZ $07A4                       ; $A79E30  9C A4 07     Mx
    LDA #$0001                      ; $A79E33  A9 01 00     Mx
    STA $09BA                       ; $A79E36  8D BA 09     Mx
    STZ $0A30                       ; $A79E39  9C 30 0A     Mx
    LDA $0A88                       ; $A79E3C  AD 88 0A     Mx
    JMP L_A79E45                    ; $A79E3F  4C 45 9E     Mx
L_A79E42:
    LDA #$0000                      ; $A79E42  A9 00 00     Mx
L_A79E45:
    JMP L_A79E4B                    ; $A79E45  4C 4B 9E     Mx
L_A79E48:
    LDA $0A24                       ; $A79E48  AD 24 0A     Mx
L_A79E4B:
    AND $0A26                       ; $A79E4B  2D 26 0A     Mx
    STA $00A4                       ; $A79E4E  8D A4 00     Mx
    AND #$0F00                      ; $A79E51  29 00 0F     Mx
    BEQ L_A79E69                    ; $A79E54  F0 13        Mx
    STA $00A6                       ; $A79E56  8D A6 00     Mx
    LDA $0A24                       ; $A79E59  AD 24 0A     Mx
    AND #$0F00                      ; $A79E5C  29 00 0F     Mx
    CMP $00A6                       ; $A79E5F  CD A6 00     Mx
    BNE L_A79E69                    ; $A79E62  D0 05        Mx
    INC $0A5E                       ; $A79E64  EE 5E 0A     Mx
    BNE L_A79E99                    ; $A79E67  D0 30        Mx
L_A79E69:
    LDA $1D56                       ; $A79E69  AD 56 1D     Mx
    AND #$000F                      ; $A79E6C  29 0F 00     Mx
    BNE L_A79E96                    ; $A79E6F  D0 25        Mx
    LDA $09DA                       ; $A79E71  AD DA 09     Mx
    BNE L_A79E96                    ; $A79E74  D0 20        Mx
    LDA $09E2                       ; $A79E76  AD E2 09     Mx
    ORA $09EA                       ; $A79E79  0D EA 09     Mx
    BEQ L_A79E96                    ; $A79E7C  F0 18        Mx
    LDA $1D58                       ; $A79E7E  AD 58 1D     Mx
    AND #$0001                      ; $A79E81  29 01 00     Mx
    BEQ L_A79E8F                    ; $A79E84  F0 09        Mx
    LDA #$000D                      ; $A79E86  A9 0D 00     Mx
    JSL L_BDFDF3                    ; $A79E89  22 F3 FD BD  Mx
    BRA L_A79E96                    ; $A79E8D  80 07        Mx
L_A79E8F:
    LDA #$000E                      ; $A79E8F  A9 0E 00     Mx
    JSL L_BDFDF3                    ; $A79E92  22 F3 FD BD  Mx
L_A79E96:
    STZ $0A5E                       ; $A79E96  9C 5E 0A     Mx
L_A79E99:
    LDA $0CCB                       ; $A79E99  AD CB 0C     Mx
    ORA $0CC9                       ; $A79E9C  0D C9 0C     Mx
    BNE L_A79EA9                    ; $A79E9F  D0 08        Mx
    LDA $0A24                       ; $A79EA1  AD 24 0A     Mx
    AND #$F0FF                      ; $A79EA4  29 FF F0     Mx
    BRA L_A79EAC                    ; $A79EA7  80 03        Mx
L_A79EA9:
    LDA $00A4                       ; $A79EA9  AD A4 00     Mx
L_A79EAC:
    STA $0A24                       ; $A79EAC  8D 24 0A     Mx
    LDA $0A8E                       ; $A79EAF  AD 8E 0A     Mx
    AND #$0008                      ; $A79EB2  29 08 00     Mx
    BEQ L_A79ECB                    ; $A79EB5  F0 14        Mx
    LDA $0A4C                       ; $A79EB7  AD 4C 0A     Mx
    BEQ L_A79ECB                    ; $A79EBA  F0 0F        Mx
    LDA $09A8                       ; $A79EBC  AD A8 09     Mx
    STA $0A96                       ; $A79EBF  8D 96 0A     Mx
    STA $0C21                       ; $A79EC2  8D 21 0C     Mx
    LDA #$0003                      ; $A79EC5  A9 03 00     Mx
    STA $0C23                       ; $A79EC8  8D 23 0C     Mx
L_A79ECB:
    LDA $09AA                       ; $A79ECB  AD AA 09     Mx
    BEQ L_A79F16                    ; $A79ECE  F0 46        Mx
    LDA $09AC                       ; $A79ED0  AD AC 09     Mx
    STA $09AC                       ; $A79ED3  8D AC 09     Mx
    LDA #$FFFF                      ; $A79ED6  A9 FF FF     Mx
    STA $09B2                       ; $A79ED9  8D B2 09     Mx
    STZ $09B4                       ; $A79EDC  9C B4 09     Mx
    STZ $09FA                       ; $A79EDF  9C FA 09     Mx
    STZ $09B0                       ; $A79EE2  9C B0 09     Mx
    LDA #$FFF8                      ; $A79EE5  A9 F8 FF     Mx
    STA $09B6                       ; $A79EE8  8D B6 09     Mx
    LDA $09AC                       ; $A79EEB  AD AC 09     Mx
    CMP #$0030                      ; $A79EEE  C9 30 00     Mx
    BNE L_A79F13                    ; $A79EF1  D0 20        Mx
    LDA $09E2                       ; $A79EF3  AD E2 09     Mx
    BPL L_A79F05                    ; $A79EF6  10 0D        Mx
    LDX #$02                        ; $A79EF8  A2 02        Mx
    LDA $09EA                       ; $A79EFA  AD EA 09     Mx
    BMI L_A79F02                    ; $A79EFD  30 03        Mx
    DEX                             ; $A79EFF  CA           Mx
    BRA L_A79F10                    ; $A79F00  80 0E        Mx
L_A79F02:
    INX                             ; $A79F02  E8           Mx
    BRA L_A79F10                    ; $A79F03  80 0B        Mx
L_A79F05:
    LDX #$06                        ; $A79F05  A2 06        Mx
    LDA $09EA                       ; $A79F07  AD EA 09     Mx
    BMI L_A79F0F                    ; $A79F0A  30 03        Mx
    INX                             ; $A79F0C  E8           Mx
    BRA L_A79F10                    ; $A79F0D  80 01        Mx
L_A79F0F:
    DEX                             ; $A79F0F  CA           Mx
L_A79F10:
    STX $09C0                       ; $A79F10  8E C0 09     Mx
L_A79F13:
    STZ $09AA                       ; $A79F13  9C AA 09     Mx
L_A79F16:
    LDA $0A3C                       ; $A79F16  AD 3C 0A     Mx
    BEQ L_A79F26                    ; $A79F19  F0 0B        Mx
    LDA $09AC                       ; $A79F1B  AD AC 09     Mx
    CMP #$0030                      ; $A79F1E  C9 30 00     Mx
    BEQ L_A79F26                    ; $A79F21  F0 03        Mx
    STZ $0A3C                       ; $A79F23  9C 3C 0A     Mx
L_A79F26:
    LDA $0A24                       ; $A79F26  AD 24 0A     Mx
    AND $0A8C                       ; $A79F29  2D 8C 0A     Mx
    BEQ L_A79F3F                    ; $A79F2C  F0 11        Mx
    INC $0A3E                       ; $A79F2E  EE 3E 0A     Mx
    LDA $0A40                       ; $A79F31  AD 40 0A     Mx
    CMP #$0005                      ; $A79F34  C9 05 00     Mx
    BCC L_A79F48                    ; $A79F37  90 0F        Mx
    STZ $0A40                       ; $A79F39  9C 40 0A     Mx
    JMP L_A79FC7                    ; $A79F3C  4C C7 9F     Mx
L_A79F3F:
    STZ $0A3E                       ; $A79F3F  9C 3E 0A     Mx
    INC $0A40                       ; $A79F42  EE 40 0A     Mx
    JMP L_A79FC7                    ; $A79F45  4C C7 9F     Mx
L_A79F48:
    LDA $0A3E                       ; $A79F48  AD 3E 0A     Mx
    CMP #$0001                      ; $A79F4B  C9 01 00     Mx
    BNE L_A79FC7                    ; $A79F4E  D0 77        Mx
    LDA $0A40                       ; $A79F50  AD 40 0A     Mx
    BEQ L_A79FC7                    ; $A79F53  F0 72        Mx
    LDA $0A4C                       ; $A79F55  AD 4C 0A     Mx
    BEQ L_A79FC7                    ; $A79F58  F0 6D        Mx
    LDA $09DA                       ; $A79F5A  AD DA 09     Mx
    BNE L_A79FC7                    ; $A79F5D  D0 68        Mx
    LDA $09AC                       ; $A79F5F  AD AC 09     Mx
    CMP #$002E                      ; $A79F62  C9 2E 00     Mx
    BEQ L_A79FC7                    ; $A79F65  F0 60        Mx
    LDA $0CCB                       ; $A79F67  AD CB 0C     Mx
    CMP #$00A9                      ; $A79F6A  C9 A9 00     Mx
    BCS L_A79FC7                    ; $A79F6D  B0 58        Mx
    LDX $09A9                       ; $A79F6F  AE A9 09     Mx
    BNE L_A79F84                    ; $A79F72  D0 10        Mx
    LDA $0A20                       ; $A79F74  AD 20 0A     Mx
    CMP #$0046                      ; $A79F77  C9 46 00     Mx
    BCC L_A79F84                    ; $A79F7A  90 08        Mx
    LDA $0A22                       ; $A79F7C  AD 22 0A     Mx
    CMP #$0046                      ; $A79F7F  C9 46 00     Mx
    BCS L_A79FC7                    ; $A79F82  B0 43        Mx
L_A79F84:
    LDX $09A8                       ; $A79F84  AE A8 09     Mx
    CPX $0A96                       ; $A79F87  EC 96 0A     Mx
    BEQ L_A79F9B                    ; $A79F8A  F0 0F        Mx
    LDA $0A42                       ; $A79F8C  AD 42 0A     Mx
    CMP #$0004                      ; $A79F8F  C9 04 00     Mx
    BCC L_A79FC7                    ; $A79F92  90 33        Mx
    SEC                             ; $A79F94  38           Mx
    SBC #$0003                      ; $A79F95  E9 03 00     Mx
    STA $0A42                       ; $A79F98  8D 42 0A     Mx
L_A79F9B:
    STZ $0A38                       ; $A79F9B  9C 38 0A     Mx
    LDA $09AC                       ; $A79F9E  AD AC 09     Mx
    CMP #$000C                      ; $A79FA1  C9 0C 00     Mx
    BEQ L_A79FAC                    ; $A79FA4  F0 06        Mx
    LDA #$0001                      ; $A79FA6  A9 01 00     Mx
    STA $0A38                       ; $A79FA9  8D 38 0A     Mx
L_A79FAC:
    LDA #$002E                      ; $A79FAC  A9 2E 00     Mx
    STA $09AC                       ; $A79FAF  8D AC 09     Mx
    LDA #$FFFF                      ; $A79FB2  A9 FF FF     Mx
    STA $09B2                       ; $A79FB5  8D B2 09     Mx
    STZ $09B4                       ; $A79FB8  9C B4 09     Mx
    STZ $09FA                       ; $A79FBB  9C FA 09     Mx
    STZ $09B0                       ; $A79FBE  9C B0 09     Mx
    LDA #$FFF8                      ; $A79FC1  A9 F8 FF     Mx
    STA $09B6                       ; $A79FC4  8D B6 09     Mx
L_A79FC7:
    LDA $0A8E                       ; $A79FC7  AD 8E 0A     Mx
    AND #$0004                      ; $A79FCA  29 04 00     Mx
    BEQ L_A79FDA                    ; $A79FCD  F0 0B        Mx
    LDA #$0020                      ; $A79FCF  A9 20 00     Mx
    STA $0A42                       ; $A79FD2  8D 42 0A     Mx
    STZ $0A44                       ; $A79FD5  9C 44 0A     Mx
    BRA L_A7A037                    ; $A79FD8  80 5D        Mx
L_A79FDA:
    LDA $0A3E                       ; $A79FDA  AD 3E 0A     Mx
    BEQ L_A7A012                    ; $A79FDD  F0 33        Mx
    LDA $09BA                       ; $A79FDF  AD BA 09     Mx
    BNE L_A7A012                    ; $A79FE2  D0 2E        Mx
    LDX $09A8                       ; $A79FE4  AE A8 09     Mx
    CPX $0A96                       ; $A79FE7  EC 96 0A     Mx
    BEQ L_A7A012                    ; $A79FEA  F0 26        Mx
    LDA $0A44                       ; $A79FEC  AD 44 0A     Mx
    SEC                             ; $A79FEF  38           Mx
    SBC $0A48                       ; $A79FF0  ED 48 0A     Mx
    STA $0A44                       ; $A79FF3  8D 44 0A     Mx
    LDA $0A42                       ; $A79FF6  AD 42 0A     Mx
    BEQ L_A7A00C                    ; $A79FF9  F0 11        Mx
    SBC #$0000                      ; $A79FFB  E9 00 00     Mx
    STA $0A42                       ; $A79FFE  8D 42 0A     Mx
    BNE L_A7A009                    ; $A7A001  D0 06        Mx
    LDA #$000A                      ; $A7A003  A9 0A 00     Mx
    STA $0A4A                       ; $A7A006  8D 4A 0A     Mx
L_A7A009:
    JMP L_A7A037                    ; $A7A009  4C 37 A0     Mx
L_A7A00C:
    STZ $0A3E                       ; $A7A00C  9C 3E 0A     Mx
    JMP L_A7A037                    ; $A7A00F  4C 37 A0     Mx
L_A7A012:
    LDA $0A4A                       ; $A7A012  AD 4A 0A     Mx
    BEQ L_A7A01C                    ; $A7A015  F0 05        Mx
    DEC $0A4A                       ; $A7A017  CE 4A 0A     Mx
    BRA L_A7A037                    ; $A7A01A  80 1B        Mx
L_A7A01C:
    LDA $0A44                       ; $A7A01C  AD 44 0A     Mx
    CLC                             ; $A7A01F  18           Mx
    ADC $0A46                       ; $A7A020  6D 46 0A     Mx
    STA $0A44                       ; $A7A023  8D 44 0A     Mx
    LDA $0A42                       ; $A7A026  AD 42 0A     Mx
    ADC #$0000                      ; $A7A029  69 00 00     Mx
    CMP #$0020                      ; $A7A02C  C9 20 00     Mx
    BCC L_A7A034                    ; $A7A02F  90 03        Mx
    LDA #$0020                      ; $A7A031  A9 20 00     Mx
L_A7A034:
    STA $0A42                       ; $A7A034  8D 42 0A     Mx
L_A7A037:
    LDA $0A28                       ; $A7A037  AD 28 0A     Mx
    STA $0A2A                       ; $A7A03A  8D 2A 0A     Mx
    LDA $0A24                       ; $A7A03D  AD 24 0A     Mx
    AND $0A8A                       ; $A7A040  2D 8A 0A     Mx
    BEQ L_A7A048                    ; $A7A043  F0 03        Mx
    LDA #$0001                      ; $A7A045  A9 01 00     Mx
L_A7A048:
    STA $0A28                       ; $A7A048  8D 28 0A     Mx
    LDA $0A24                       ; $A7A04B  AD 24 0A     Mx
    AND $0A88                       ; $A7A04E  2D 88 0A     Mx
    BEQ L_A7A060                    ; $A7A051  F0 0D        Mx
    LDA $0A2E                       ; $A7A053  AD 2E 0A     Mx
    BEQ L_A7A05D                    ; $A7A056  F0 05        Mx
    LDA #$FFFF                      ; $A7A058  A9 FF FF     Mx
    BRA L_A7A060                    ; $A7A05B  80 03        Mx
L_A7A05D:
    LDA #$0001                      ; $A7A05D  A9 01 00     Mx
L_A7A060:
    STA $0A2E                       ; $A7A060  8D 2E 0A     Mx
    LDA $0A2E                       ; $A7A063  AD 2E 0A     Mx
    STA $0A2C                       ; $A7A066  8D 2C 0A     Mx
    LDA $0A32                       ; $A7A069  AD 32 0A     Mx
    BEQ L_A7A072                    ; $A7A06C  F0 04        Mx
    DEC                             ; $A7A06E  3A           Mx
    STA $0A32                       ; $A7A06F  8D 32 0A     Mx
L_A7A072:
    LDA $0A30                       ; $A7A072  AD 30 0A     Mx
    BEQ L_A7A081                    ; $A7A075  F0 0A        Mx
    STZ $0A28                       ; $A7A077  9C 28 0A     Mx
    STZ $0A2C                       ; $A7A07A  9C 2C 0A     Mx
    DEC                             ; $A7A07D  3A           Mx
    STA $0A30                       ; $A7A07E  8D 30 0A     Mx
L_A7A081:
    LDA $09AC                       ; $A7A081  AD AC 09     Mx
    CMP #$0038                      ; $A7A084  C9 38 00     Mx
    BEQ L_A7A0F5                    ; $A7A087  F0 6C        Mx
    LDA $0A4C                       ; $A7A089  AD 4C 0A     Mx
    BEQ L_A7A0F5                    ; $A7A08C  F0 67        Mx
    LDA $09DA                       ; $A7A08E  AD DA 09     Mx
    BEQ L_A7A0F5                    ; $A7A091  F0 62        Mx
    LDA $08F2                       ; $A7A093  AD F2 08     Mx
    BNE L_A7A0F5                    ; $A7A096  D0 5D        Mx
    LDA $0A2C                       ; $A7A098  AD 2C 0A     Mx
    BEQ L_A7A0F5                    ; $A7A09B  F0 58        Mx
    INC                             ; $A7A09D  1A           Mx
    BEQ L_A7A0F5                    ; $A7A09E  F0 55        Mx
    STZ $15EB                       ; $A7A0A0  9C EB 15     Mx
    STZ $15F5                       ; $A7A0A3  9C F5 15     Mx
    LDA $0A18                       ; $A7A0A6  AD 18 0A     Mx
    TAX                             ; $A7A0A9  AA           Mx
    CLC                             ; $A7A0AA  18           Mx
    ADC #$0040                      ; $A7A0AB  69 40 00     Mx
    AND #$007F                      ; $A7A0AE  29 7F 00     Mx
    TAY                             ; $A7A0B1  A8           Mx
    LDA $A7E377,X                   ; $A7A0B2  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7A0B6  29 07 00     Mx
    STA $09C0                       ; $A7A0B9  8D C0 09     Mx
    LDA #$0038                      ; $A7A0BC  A9 38 00     Mx
    STA $09AC                       ; $A7A0BF  8D AC 09     Mx
    LDA #$FFFF                      ; $A7A0C2  A9 FF FF     Mx
    STA $09B2                       ; $A7A0C5  8D B2 09     Mx
    STZ $09B4                       ; $A7A0C8  9C B4 09     Mx
    STZ $09FA                       ; $A7A0CB  9C FA 09     Mx
    STZ $09B0                       ; $A7A0CE  9C B0 09     Mx
    LDA #$FFF8                      ; $A7A0D1  A9 F8 FF     Mx
    STA $09B6                       ; $A7A0D4  8D B6 09     Mx
    LDA #$0002                      ; $A7A0D7  A9 02 00     Mx
    STA $09B0                       ; $A7A0DA  8D B0 09     Mx
    LDA #$0087                      ; $A7A0DD  A9 87 00     Mx
    STA $0982                       ; $A7A0E0  8D 82 09     Mx
    STZ $0C39                       ; $A7A0E3  9C 39 0C     Mx
    LDA $09A8                       ; $A7A0E6  AD A8 09     Mx
    AND #$00FF                      ; $A7A0E9  29 FF 00     Mx
    STA $0AA0                       ; $A7A0EC  8D A0 0A     Mx
    LDA #$00D2                      ; $A7A0EF  A9 D2 00     Mx
    STA $0A9E                       ; $A7A0F2  8D 9E 0A     Mx
L_A7A0F5:
    LDA $0A6A                       ; $A7A0F5  AD 6A 0A     Mx
    BEQ L_A7A0FD                    ; $A7A0F8  F0 03        Mx
    DEC $0A6A                       ; $A7A0FA  CE 6A 0A     Mx
L_A7A0FD:
    LDA $0C19                       ; $A7A0FD  AD 19 0C     Mx
    BNE L_A7A139                    ; $A7A100  D0 37        Mx
    LDA $1607                       ; $A7A102  AD 07 16     Mx
    BNE L_A7A139                    ; $A7A105  D0 32        Mx
    LDA $0BC1                       ; $A7A107  AD C1 0B     Mx
    CMP #$0001                      ; $A7A10A  C9 01 00     Mx
    BNE L_A7A139                    ; $A7A10D  D0 2A        Mx
    LDA $09AC                       ; $A7A10F  AD AC 09     Mx
    LSR                             ; $A7A112  4A           Mx
    TAX                             ; $A7A113  AA           Mx
    LDA $82DF6E,X                   ; $A7A114  BF 6E DF 82  Mx
    AND #$00FF                      ; $A7A118  29 FF 00     Mx
    BEQ L_A7A139                    ; $A7A11B  F0 1C        Mx
    LDA $0C2B                       ; $A7A11D  AD 2B 0C     Mx
    BPL L_A7A139                    ; $A7A120  10 17        Mx
    LDA $0A14                       ; $A7A122  AD 14 0A     Mx
    CMP #$0050                      ; $A7A125  C9 50 00     Mx
    BCS L_A7A139                    ; $A7A128  B0 0F        Mx
    LDA $0C25                       ; $A7A12A  AD 25 0C     Mx
    BNE L_A7A139                    ; $A7A12D  D0 0A        Mx
    LDA $0A30                       ; $A7A12F  AD 30 0A     Mx
    BNE L_A7A139                    ; $A7A132  D0 05        Mx
    LDA $09BA                       ; $A7A134  AD BA 09     Mx
    BEQ L_A7A13C                    ; $A7A137  F0 03        Mx
L_A7A139:
    JMP L_A7A677                    ; $A7A139  4C 77 A6     Mx
L_A7A13C:
    LDA $0A9C                       ; $A7A13C  AD 9C 0A     Mx
    BEQ L_A7A144                    ; $A7A13F  F0 03        Mx
L_A7A141:
    JMP L_A7A677                    ; $A7A141  4C 77 A6     Mx
L_A7A144:
    LDA $0A9A                       ; $A7A144  AD 9A 0A     Mx
    BNE L_A7A141                    ; $A7A147  D0 F8        Mx
    LDA $0B50                       ; $A7A149  AD 50 0B     Mx
    BNE L_A7A141                    ; $A7A14C  D0 F3        Mx
    LDA $0BD9                       ; $A7A14E  AD D9 0B     Mx
    BPL L_A7A16B                    ; $A7A151  10 18        Mx
    LDA $0CCB                       ; $A7A153  AD CB 0C     Mx
    CMP #$0002                      ; $A7A156  C9 02 00     Mx
    BCC L_A7A141                    ; $A7A159  90 E6        Mx
    LDA $0A14                       ; $A7A15B  AD 14 0A     Mx
    CMP $0844                       ; $A7A15E  CD 44 08     Mx
    BCS L_A7A16B                    ; $A7A161  B0 08        Mx
    CMP $075C                       ; $A7A163  CD 5C 07     Mx
    BCS L_A7A16B                    ; $A7A166  B0 03        Mx
    JMP L_A7A141                    ; $A7A168  4C 41 A1     Mx
L_A7A16B:
    LDA $09DE                       ; $A7A16B  AD DE 09     Mx
    SEC                             ; $A7A16E  38           Mx
    SBC #$0374                      ; $A7A16F  E9 74 03     Mx
    BPL L_A7A17B                    ; $A7A172  10 07        Mx
    EOR #$FFFF                      ; $A7A174  49 FF FF     Mx
    CLC                             ; $A7A177  18           Mx
    ADC #$0001                      ; $A7A178  69 01 00     Mx
L_A7A17B:
    STA $00D3                       ; $A7A17B  8D D3 00     Mx
    CMP #$0020                      ; $A7A17E  C9 20 00     Mx
    BCS L_A7A1A7                    ; $A7A181  B0 24        Mx
    LDA $09D6                       ; $A7A183  AD D6 09     Mx
    BPL L_A7A18F                    ; $A7A186  10 07        Mx
    EOR #$FFFF                      ; $A7A188  49 FF FF     Mx
    CLC                             ; $A7A18B  18           Mx
    ADC #$0001                      ; $A7A18C  69 01 00     Mx
L_A7A18F:
    STA $00D0                       ; $A7A18F  8D D0 00     Mx
    CMP #$010C                      ; $A7A192  C9 0C 01     Mx
    BCS L_A7A141                    ; $A7A195  B0 AA        Mx
    LDA $00D3                       ; $A7A197  AD D3 00     Mx
    CMP #$000A                      ; $A7A19A  C9 0A 00     Mx
    BCS L_A7A1A7                    ; $A7A19D  B0 08        Mx
    LDA $00D0                       ; $A7A19F  AD D0 00     Mx
    CMP #$00FC                      ; $A7A1A2  C9 FC 00     Mx
    BCS L_A7A141                    ; $A7A1A5  B0 9A        Mx
L_A7A1A7:
    LDA $0BE8                       ; $A7A1A7  AD E8 0B     Mx
    STA $00B2                       ; $A7A1AA  8D B2 00     Mx
    BPL L_A7A1B9                    ; $A7A1AD  10 0A        Mx
    EOR #$FFFF                      ; $A7A1AF  49 FF FF     Mx
    CLC                             ; $A7A1B2  18           Mx
    ADC #$0001                      ; $A7A1B3  69 01 00     Mx
    STA $00A6                       ; $A7A1B6  8D A6 00     Mx
L_A7A1B9:
    LDX #$19                        ; $A7A1B9  A2 19        Mx
    STX $4202                       ; $A7A1BB  8E 02 42     Mx
    LDX $00A6                       ; $A7A1BE  AE A6 00     Mx
    STX $4203                       ; $A7A1C1  8E 03 42     Mx
    NOP                             ; $A7A1C4  EA           Mx
    NOP                             ; $A7A1C5  EA           Mx
    NOP                             ; $A7A1C6  EA           Mx
    NOP                             ; $A7A1C7  EA           Mx
    LDA $4216                       ; $A7A1C8  AD 16 42     Mx
    STA $00A8                       ; $A7A1CB  8D A8 00     Mx
    LDX #$19                        ; $A7A1CE  A2 19        Mx
    STX $4202                       ; $A7A1D0  8E 02 42     Mx
    LDX $00A7                       ; $A7A1D3  AE A7 00     Mx
    STX $4203                       ; $A7A1D6  8E 03 42     Mx
    NOP                             ; $A7A1D9  EA           Mx
    NOP                             ; $A7A1DA  EA           Mx
    STZ $00F4                       ; $A7A1DB  9C F4 00     Mx
    STZ $00F2                       ; $A7A1DE  9C F2 00     Mx
    LDA $4216                       ; $A7A1E1  AD 16 42     Mx
    STA $00F3                       ; $A7A1E4  8D F3 00     Mx
    LDA $00F2                       ; $A7A1E7  AD F2 00     Mx
    CLC                             ; $A7A1EA  18           Mx
    ADC $00A8                       ; $A7A1EB  6D A8 00     Mx
    STA $00F2                       ; $A7A1EE  8D F2 00     Mx
    LDA $00F4                       ; $A7A1F1  AD F4 00     Mx
    ADC #$0000                      ; $A7A1F4  69 00 00     Mx
    STA $00F4                       ; $A7A1F7  8D F4 00     Mx
    LDA $00B2                       ; $A7A1FA  AD B2 00     Mx
    BPL L_A7A218                    ; $A7A1FD  10 19        Mx
    LDA $00F2                       ; $A7A1FF  AD F2 00     Mx
    EOR #$FFFF                      ; $A7A202  49 FF FF     Mx
    CLC                             ; $A7A205  18           Mx
    ADC #$0001                      ; $A7A206  69 01 00     Mx
    STA $00F2                       ; $A7A209  8D F2 00     Mx
    LDA $00F4                       ; $A7A20C  AD F4 00     Mx
    EOR #$FFFF                      ; $A7A20F  49 FF FF     Mx
    ADC #$0000                      ; $A7A212  69 00 00     Mx
    STA $00F4                       ; $A7A215  8D F4 00     Mx
L_A7A218:
    LDX $00F2                       ; $A7A218  AE F2 00     Mx
    LDA $00F3                       ; $A7A21B  AD F3 00     Mx
    STZ $00F2                       ; $A7A21E  9C F2 00     Mx
    STX $00F3                       ; $A7A221  8E F3 00     Mx
    STA $00F4                       ; $A7A224  8D F4 00     Mx
    LDA $0BDB                       ; $A7A227  AD DB 0B     Mx
    SEC                             ; $A7A22A  38           Mx
    SBC $00F2                       ; $A7A22B  ED F2 00     Mx
    STA $0B8C                       ; $A7A22E  8D 8C 0B     Mx
    LDA $0BDD                       ; $A7A231  AD DD 0B     Mx
    SBC $00F4                       ; $A7A234  ED F4 00     Mx
    STA $00DC                       ; $A7A237  8D DC 00     Mx
    LDA $0B8C                       ; $A7A23A  AD 8C 0B     Mx
    SEC                             ; $A7A23D  38           Mx
    SBC #$5C00                      ; $A7A23E  E9 00 5C     Mx
    STA $0B8C                       ; $A7A241  8D 8C 0B     Mx
    LDA $00DC                       ; $A7A244  AD DC 00     Mx
    SBC #$002B                      ; $A7A247  E9 2B 00     Mx
    STA $00DC                       ; $A7A24A  8D DC 00     Mx
    LDA $00DC                       ; $A7A24D  AD DC 00     Mx
    CMP #$0070                      ; $A7A250  C9 70 00     Mx
    BCS L_A7A281                    ; $A7A253  B0 2C        Mx
    SEC                             ; $A7A255  38           Mx
    SBC #$0050                      ; $A7A256  E9 50 00     Mx
    BMI L_A7A281                    ; $A7A259  30 26        Mx
    LDA $09DE                       ; $A7A25B  AD DE 09     Mx
    SEC                             ; $A7A25E  38           Mx
    SBC #$0374                      ; $A7A25F  E9 74 03     Mx
    BPL L_A7A26B                    ; $A7A262  10 07        Mx
    EOR #$FFFF                      ; $A7A264  49 FF FF     Mx
    CLC                             ; $A7A267  18           Mx
    ADC #$0001                      ; $A7A268  69 01 00     Mx
L_A7A26B:
    CMP #$000A                      ; $A7A26B  C9 0A 00     Mx
    BPL L_A7A284                    ; $A7A26E  10 14        Mx
    LDA $09D6                       ; $A7A270  AD D6 09     Mx
    BPL L_A7A27C                    ; $A7A273  10 07        Mx
    EOR #$FFFF                      ; $A7A275  49 FF FF     Mx
    CLC                             ; $A7A278  18           Mx
    ADC #$0001                      ; $A7A279  69 01 00     Mx
L_A7A27C:
    CMP #$00FA                      ; $A7A27C  C9 FA 00     Mx
    BCC L_A7A284                    ; $A7A27F  90 03        Mx
L_A7A281:
    JMP L_A7A677                    ; $A7A281  4C 77 A6     Mx
L_A7A284:
    LDA $0BE4                       ; $A7A284  AD E4 0B     Mx
    STA $00B2                       ; $A7A287  8D B2 00     Mx
    BPL L_A7A296                    ; $A7A28A  10 0A        Mx
    EOR #$FFFF                      ; $A7A28C  49 FF FF     Mx
    CLC                             ; $A7A28F  18           Mx
    ADC #$0001                      ; $A7A290  69 01 00     Mx
    STA $00A6                       ; $A7A293  8D A6 00     Mx
L_A7A296:
    LDX #$19                        ; $A7A296  A2 19        Mx
    STX $4202                       ; $A7A298  8E 02 42     Mx
    LDX $00A6                       ; $A7A29B  AE A6 00     Mx
    STX $4203                       ; $A7A29E  8E 03 42     Mx
    NOP                             ; $A7A2A1  EA           Mx
    NOP                             ; $A7A2A2  EA           Mx
    NOP                             ; $A7A2A3  EA           Mx
    NOP                             ; $A7A2A4  EA           Mx
    LDA $4216                       ; $A7A2A5  AD 16 42     Mx
    STA $00A8                       ; $A7A2A8  8D A8 00     Mx
    LDX #$19                        ; $A7A2AB  A2 19        Mx
    STX $4202                       ; $A7A2AD  8E 02 42     Mx
    LDX $00A7                       ; $A7A2B0  AE A7 00     Mx
    STX $4203                       ; $A7A2B3  8E 03 42     Mx
    NOP                             ; $A7A2B6  EA           Mx
    NOP                             ; $A7A2B7  EA           Mx
    STZ $00F4                       ; $A7A2B8  9C F4 00     Mx
    STZ $00F2                       ; $A7A2BB  9C F2 00     Mx
    LDA $4216                       ; $A7A2BE  AD 16 42     Mx
    STA $00F3                       ; $A7A2C1  8D F3 00     Mx
    LDA $00F2                       ; $A7A2C4  AD F2 00     Mx
    CLC                             ; $A7A2C7  18           Mx
    ADC $00A8                       ; $A7A2C8  6D A8 00     Mx
    STA $00F2                       ; $A7A2CB  8D F2 00     Mx
    LDA $00F4                       ; $A7A2CE  AD F4 00     Mx
    ADC #$0000                      ; $A7A2D1  69 00 00     Mx
    STA $00F4                       ; $A7A2D4  8D F4 00     Mx
    LDA $00B2                       ; $A7A2D7  AD B2 00     Mx
    BPL L_A7A2F5                    ; $A7A2DA  10 19        Mx
    LDA $00F2                       ; $A7A2DC  AD F2 00     Mx
    EOR #$FFFF                      ; $A7A2DF  49 FF FF     Mx
    CLC                             ; $A7A2E2  18           Mx
    ADC #$0001                      ; $A7A2E3  69 01 00     Mx
    STA $00F2                       ; $A7A2E6  8D F2 00     Mx
    LDA $00F4                       ; $A7A2E9  AD F4 00     Mx
    EOR #$FFFF                      ; $A7A2EC  49 FF FF     Mx
    ADC #$0000                      ; $A7A2EF  69 00 00     Mx
    STA $00F4                       ; $A7A2F2  8D F4 00     Mx
L_A7A2F5:
    LDA $0BD9                       ; $A7A2F5  AD D9 0B     Mx
    CLC                             ; $A7A2F8  18           Mx
    ADC $00F3                       ; $A7A2F9  6D F3 00     Mx
    STA $00E2                       ; $A7A2FC  8D E2 00     Mx
    LDA $0BEC                       ; $A7A2FF  AD EC 0B     Mx
    STA $00B2                       ; $A7A302  8D B2 00     Mx
    BPL L_A7A311                    ; $A7A305  10 0A        Mx
    EOR #$FFFF                      ; $A7A307  49 FF FF     Mx
    CLC                             ; $A7A30A  18           Mx
    ADC #$0001                      ; $A7A30B  69 01 00     Mx
    STA $00A6                       ; $A7A30E  8D A6 00     Mx
L_A7A311:
    LDX #$19                        ; $A7A311  A2 19        Mx
    STX $4202                       ; $A7A313  8E 02 42     Mx
    LDX $00A6                       ; $A7A316  AE A6 00     Mx
    STX $4203                       ; $A7A319  8E 03 42     Mx
    NOP                             ; $A7A31C  EA           Mx
    NOP                             ; $A7A31D  EA           Mx
    NOP                             ; $A7A31E  EA           Mx
    NOP                             ; $A7A31F  EA           Mx
    LDA $4216                       ; $A7A320  AD 16 42     Mx
    STA $00A8                       ; $A7A323  8D A8 00     Mx
    LDX #$19                        ; $A7A326  A2 19        Mx
    STX $4202                       ; $A7A328  8E 02 42     Mx
    LDX $00A7                       ; $A7A32B  AE A7 00     Mx
    STX $4203                       ; $A7A32E  8E 03 42     Mx
    NOP                             ; $A7A331  EA           Mx
    NOP                             ; $A7A332  EA           Mx
    STZ $00F4                       ; $A7A333  9C F4 00     Mx
    STZ $00F2                       ; $A7A336  9C F2 00     Mx
    LDA $4216                       ; $A7A339  AD 16 42     Mx
    STA $00F3                       ; $A7A33C  8D F3 00     Mx
    LDA $00F2                       ; $A7A33F  AD F2 00     Mx
    CLC                             ; $A7A342  18           Mx
    ADC $00A8                       ; $A7A343  6D A8 00     Mx
    STA $00F2                       ; $A7A346  8D F2 00     Mx
    LDA $00F4                       ; $A7A349  AD F4 00     Mx
    ADC #$0000                      ; $A7A34C  69 00 00     Mx
    STA $00F4                       ; $A7A34F  8D F4 00     Mx
    LDA $00B2                       ; $A7A352  AD B2 00     Mx
    BPL L_A7A370                    ; $A7A355  10 19        Mx
    LDA $00F2                       ; $A7A357  AD F2 00     Mx
    EOR #$FFFF                      ; $A7A35A  49 FF FF     Mx
    CLC                             ; $A7A35D  18           Mx
    ADC #$0001                      ; $A7A35E  69 01 00     Mx
    STA $00F2                       ; $A7A361  8D F2 00     Mx
    LDA $00F4                       ; $A7A364  AD F4 00     Mx
    EOR #$FFFF                      ; $A7A367  49 FF FF     Mx
    ADC #$0000                      ; $A7A36A  69 00 00     Mx
    STA $00F4                       ; $A7A36D  8D F4 00     Mx
L_A7A370:
    LDA $0BE1                       ; $A7A370  AD E1 0B     Mx
    CLC                             ; $A7A373  18           Mx
    ADC $00F3                       ; $A7A374  6D F3 00     Mx
    STA $00E5                       ; $A7A377  8D E5 00     Mx
    LDA $00E5                       ; $A7A37A  AD E5 00     Mx
    SEC                             ; $A7A37D  38           Mx
    SBC #$0374                      ; $A7A37E  E9 74 03     Mx
    BPL L_A7A38A                    ; $A7A381  10 07        Mx
    EOR #$FFFF                      ; $A7A383  49 FF FF     Mx
    CLC                             ; $A7A386  18           Mx
    ADC #$0001                      ; $A7A387  69 01 00     Mx
L_A7A38A:
    STA $00D3                       ; $A7A38A  8D D3 00     Mx
    CMP #$0020                      ; $A7A38D  C9 20 00     Mx
    BPL L_A7A3B9                    ; $A7A390  10 27        Mx
    LDA $00E2                       ; $A7A392  AD E2 00     Mx
    BPL L_A7A39E                    ; $A7A395  10 07        Mx
    EOR #$FFFF                      ; $A7A397  49 FF FF     Mx
    CLC                             ; $A7A39A  18           Mx
    ADC #$0001                      ; $A7A39B  69 01 00     Mx
L_A7A39E:
    CMP #$00F8                      ; $A7A39E  C9 F8 00     Mx
    BCS L_A7A3B9                    ; $A7A3A1  B0 16        Mx
    STA $00D0                       ; $A7A3A3  8D D0 00     Mx
    LDA $00D3                       ; $A7A3A6  AD D3 00     Mx
    CMP #$000C                      ; $A7A3A9  C9 0C 00     Mx
    BCC L_A7A3B1                    ; $A7A3AC  90 03        Mx
L_A7A3AE:
    JMP L_A7A677                    ; $A7A3AE  4C 77 A6     Mx
L_A7A3B1:
    LDA $00D0                       ; $A7A3B1  AD D0 00     Mx
    CMP #$00FA                      ; $A7A3B4  C9 FA 00     Mx
    BCS L_A7A3AE                    ; $A7A3B7  B0 F5        Mx
L_A7A3B9:
    LDA $09D6                       ; $A7A3B9  AD D6 09     Mx
    STA $00D0                       ; $A7A3BC  8D D0 00     Mx
    LDA $09DE                       ; $A7A3BF  AD DE 09     Mx
    STA $00D3                       ; $A7A3C2  8D D3 00     Mx
    JSL $00AEF9                     ; $A7A3C5  22 F9 AE 00  Mx
    LDA $00D3                       ; $A7A3C9  AD D3 00     Mx
    CMP #$0030                      ; $A7A3CC  C9 30 00     Mx
    BCS L_A7A3AE                    ; $A7A3CF  B0 DD        Mx
    LDX $00D0                       ; $A7A3D1  AE D0 00     Mx
    LDA $A7E377,X                   ; $A7A3D4  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7A3D8  29 07 00     Mx
    STA $09C0                       ; $A7A3DB  8D C0 09     Mx
    LDA #$0001                      ; $A7A3DE  A9 01 00     Mx
    STA $0A28                       ; $A7A3E1  8D 28 0A     Mx
    LDA $09A8                       ; $A7A3E4  AD A8 09     Mx
    AND #$00FF                      ; $A7A3E7  29 FF 00     Mx
    STA $0A9C                       ; $A7A3EA  8D 9C 0A     Mx
    JMP L_A7A677                    ; $A7A3ED  4C 77 A6     Mx
L_A7A3F0:
    LDA $00DC                       ; $A7A3F0  AD DC 00     Mx
    STA $00F6                       ; $A7A3F3  8D F6 00     Mx
    LDA #$0019                      ; $A7A3F6  A9 19 00     Mx
    STA $00DC                       ; $A7A3F9  8D DC 00     Mx
    LDA $09D6                       ; $A7A3FC  AD D6 09     Mx
    SEC                             ; $A7A3FF  38           Mx
    SBC $00E2                       ; $A7A400  ED E2 00     Mx
    BPL L_A7A40C                    ; $A7A403  10 07        Mx
    EOR #$FFFF                      ; $A7A405  49 FF FF     Mx
    CLC                             ; $A7A408  18           Mx
    ADC #$0001                      ; $A7A409  69 01 00     Mx
L_A7A40C:
    STA $00D9                       ; $A7A40C  8D D9 00     Mx
    LDA $09DE                       ; $A7A40F  AD DE 09     Mx
    SEC                             ; $A7A412  38           Mx
    SBC $00E5                       ; $A7A413  ED E5 00     Mx
    BPL L_A7A41F                    ; $A7A416  10 07        Mx
    EOR #$FFFF                      ; $A7A418  49 FF FF     Mx
    CLC                             ; $A7A41B  18           Mx
    ADC #$0001                      ; $A7A41C  69 01 00     Mx
L_A7A41F:
    STA $00DF                       ; $A7A41F  8D DF 00     Mx
    LDA $00D9                       ; $A7A422  AD D9 00     Mx
    STA $00E5                       ; $A7A425  8D E5 00     Mx
    BPL L_A7A434                    ; $A7A428  10 0A        Mx
    EOR #$FFFF                      ; $A7A42A  49 FF FF     Mx
    CLC                             ; $A7A42D  18           Mx
    ADC #$0001                      ; $A7A42E  69 01 00     Mx
    STA $00D9                       ; $A7A431  8D D9 00     Mx
L_A7A434:
    LDX $00DC                       ; $A7A434  AE DC 00     Mx
    STX $00EE                       ; $A7A437  8E EE 00     Mx
    LDA #$0000                      ; $A7A43A  A9 00 00     Mx
    STA $00EA                       ; $A7A43D  8D EA 00     Mx
    LDA $00D9                       ; $A7A440  AD D9 00     Mx
    STA $4204                       ; $A7A443  8D 04 42     Mx
    LDX $00EE                       ; $A7A446  AE EE 00     Mx
    STX $4206                       ; $A7A449  8E 06 42     Mx
    NOP                             ; $A7A44C  EA           Mx
    NOP                             ; $A7A44D  EA           Mx
    NOP                             ; $A7A44E  EA           Mx
    NOP                             ; $A7A44F  EA           Mx
    NOP                             ; $A7A450  EA           Mx
    NOP                             ; $A7A451  EA           Mx
    NOP                             ; $A7A452  EA           Mx
    STZ $00F0                       ; $A7A453  9C F0 00     Mx
    LDA $4214                       ; $A7A456  AD 14 42     Mx
    STA $00F2                       ; $A7A459  8D F2 00     Mx
    LDX $4216                       ; $A7A45C  AE 16 42     Mx
    STX $00EC                       ; $A7A45F  8E EC 00     Mx
    LDA $00EB                       ; $A7A462  AD EB 00     Mx
    STA $4204                       ; $A7A465  8D 04 42     Mx
    LDX $00EE                       ; $A7A468  AE EE 00     Mx
    STX $4206                       ; $A7A46B  8E 06 42     Mx
    NOP                             ; $A7A46E  EA           Mx
    NOP                             ; $A7A46F  EA           Mx
    NOP                             ; $A7A470  EA           Mx
    NOP                             ; $A7A471  EA           Mx
    NOP                             ; $A7A472  EA           Mx
    NOP                             ; $A7A473  EA           Mx
    NOP                             ; $A7A474  EA           Mx
    STZ $00F0                       ; $A7A475  9C F0 00     Mx
    LDA $4214                       ; $A7A478  AD 14 42     Mx
    ORA $00F1                       ; $A7A47B  0D F1 00     Mx
    STA $00F1                       ; $A7A47E  8D F1 00     Mx
    LDX $4216                       ; $A7A481  AE 16 42     Mx
    STX $00EB                       ; $A7A484  8E EB 00     Mx
    LDA $00EA                       ; $A7A487  AD EA 00     Mx
    STA $4204                       ; $A7A48A  8D 04 42     Mx
    LDX $00EE                       ; $A7A48D  AE EE 00     Mx
    STX $4206                       ; $A7A490  8E 06 42     Mx
    NOP                             ; $A7A493  EA           Mx
    NOP                             ; $A7A494  EA           Mx
    NOP                             ; $A7A495  EA           Mx
    NOP                             ; $A7A496  EA           Mx
    NOP                             ; $A7A497  EA           Mx
    NOP                             ; $A7A498  EA           Mx
    NOP                             ; $A7A499  EA           Mx
    NOP                             ; $A7A49A  EA           Mx
    LDA $4214                       ; $A7A49B  AD 14 42     Mx
    ORA $00F0                       ; $A7A49E  0D F0 00     Mx
    STA $00F0                       ; $A7A4A1  8D F0 00     Mx
    LDA $00F0                       ; $A7A4A4  AD F0 00     Mx
    STA $00C2                       ; $A7A4A7  8D C2 00     Mx
    LDA $00F2                       ; $A7A4AA  AD F2 00     Mx
    STA $00C4                       ; $A7A4AD  8D C4 00     Mx
    LDA $00E5                       ; $A7A4B0  AD E5 00     Mx
    BPL L_A7A4CE                    ; $A7A4B3  10 19        Mx
    LDA $00C2                       ; $A7A4B5  AD C2 00     Mx
    EOR #$FFFF                      ; $A7A4B8  49 FF FF     Mx
    CLC                             ; $A7A4BB  18           Mx
    ADC #$0001                      ; $A7A4BC  69 01 00     Mx
    STA $00C2                       ; $A7A4BF  8D C2 00     Mx
    LDA $00C4                       ; $A7A4C2  AD C4 00     Mx
    EOR #$FFFF                      ; $A7A4C5  49 FF FF     Mx
    ADC #$0000                      ; $A7A4C8  69 00 00     Mx
    STA $00C4                       ; $A7A4CB  8D C4 00     Mx
L_A7A4CE:
    LDA $00DF                       ; $A7A4CE  AD DF 00     Mx
    STA $00E5                       ; $A7A4D1  8D E5 00     Mx
    BPL L_A7A4E0                    ; $A7A4D4  10 0A        Mx
    EOR #$FFFF                      ; $A7A4D6  49 FF FF     Mx
    CLC                             ; $A7A4D9  18           Mx
    ADC #$0001                      ; $A7A4DA  69 01 00     Mx
    STA $00DF                       ; $A7A4DD  8D DF 00     Mx
L_A7A4E0:
    LDX $00DC                       ; $A7A4E0  AE DC 00     Mx
    STX $00EE                       ; $A7A4E3  8E EE 00     Mx
    LDA #$0000                      ; $A7A4E6  A9 00 00     Mx
    STA $00EA                       ; $A7A4E9  8D EA 00     Mx
    LDA $00DF                       ; $A7A4EC  AD DF 00     Mx
    STA $4204                       ; $A7A4EF  8D 04 42     Mx
    LDX $00EE                       ; $A7A4F2  AE EE 00     Mx
    STX $4206                       ; $A7A4F5  8E 06 42     Mx
    NOP                             ; $A7A4F8  EA           Mx
    NOP                             ; $A7A4F9  EA           Mx
    NOP                             ; $A7A4FA  EA           Mx
    NOP                             ; $A7A4FB  EA           Mx
    NOP                             ; $A7A4FC  EA           Mx
    NOP                             ; $A7A4FD  EA           Mx
    NOP                             ; $A7A4FE  EA           Mx
    STZ $00F0                       ; $A7A4FF  9C F0 00     Mx
    LDA $4214                       ; $A7A502  AD 14 42     Mx
    STA $00F2                       ; $A7A505  8D F2 00     Mx
    LDX $4216                       ; $A7A508  AE 16 42     Mx
    STX $00EC                       ; $A7A50B  8E EC 00     Mx
    LDA $00EB                       ; $A7A50E  AD EB 00     Mx
    STA $4204                       ; $A7A511  8D 04 42     Mx
    LDX $00EE                       ; $A7A514  AE EE 00     Mx
    STX $4206                       ; $A7A517  8E 06 42     Mx
    NOP                             ; $A7A51A  EA           Mx
    NOP                             ; $A7A51B  EA           Mx
    NOP                             ; $A7A51C  EA           Mx
    NOP                             ; $A7A51D  EA           Mx
    NOP                             ; $A7A51E  EA           Mx
    NOP                             ; $A7A51F  EA           Mx
    NOP                             ; $A7A520  EA           Mx
    STZ $00F0                       ; $A7A521  9C F0 00     Mx
    LDA $4214                       ; $A7A524  AD 14 42     Mx
    ORA $00F1                       ; $A7A527  0D F1 00     Mx
    STA $00F1                       ; $A7A52A  8D F1 00     Mx
    LDX $4216                       ; $A7A52D  AE 16 42     Mx
    STX $00EB                       ; $A7A530  8E EB 00     Mx
    LDA $00EA                       ; $A7A533  AD EA 00     Mx
    STA $4204                       ; $A7A536  8D 04 42     Mx
    LDX $00EE                       ; $A7A539  AE EE 00     Mx
    STX $4206                       ; $A7A53C  8E 06 42     Mx
    NOP                             ; $A7A53F  EA           Mx
    NOP                             ; $A7A540  EA           Mx
    NOP                             ; $A7A541  EA           Mx
    NOP                             ; $A7A542  EA           Mx
    NOP                             ; $A7A543  EA           Mx
    NOP                             ; $A7A544  EA           Mx
    NOP                             ; $A7A545  EA           Mx
    NOP                             ; $A7A546  EA           Mx
    LDA $4214                       ; $A7A547  AD 14 42     Mx
    ORA $00F0                       ; $A7A54A  0D F0 00     Mx
    STA $00F0                       ; $A7A54D  8D F0 00     Mx
    LDA $00F0                       ; $A7A550  AD F0 00     Mx
    STA $00C6                       ; $A7A553  8D C6 00     Mx
    LDA $00F2                       ; $A7A556  AD F2 00     Mx
    STA $00C8                       ; $A7A559  8D C8 00     Mx
    LDA $00E5                       ; $A7A55C  AD E5 00     Mx
    BPL L_A7A57A                    ; $A7A55F  10 19        Mx
    LDA $00C6                       ; $A7A561  AD C6 00     Mx
    EOR #$FFFF                      ; $A7A564  49 FF FF     Mx
    CLC                             ; $A7A567  18           Mx
    ADC #$0001                      ; $A7A568  69 01 00     Mx
    STA $00C6                       ; $A7A56B  8D C6 00     Mx
    LDA $00C8                       ; $A7A56E  AD C8 00     Mx
    EOR #$FFFF                      ; $A7A571  49 FF FF     Mx
    ADC #$0000                      ; $A7A574  69 00 00     Mx
    STA $00C8                       ; $A7A577  8D C8 00     Mx
L_A7A57A:
    LDA $00C2                       ; $A7A57A  AD C2 00     Mx
    STA $09E0                       ; $A7A57D  8D E0 09     Mx
    LDA $00C4                       ; $A7A580  AD C4 00     Mx
    STA $09E2                       ; $A7A583  8D E2 09     Mx
    LDA $00C6                       ; $A7A586  AD C6 00     Mx
    STA $09E8                       ; $A7A589  8D E8 09     Mx
    LDA $00C8                       ; $A7A58C  AD C8 00     Mx
    STA $09EA                       ; $A7A58F  8D EA 09     Mx
    LDA #$0080                      ; $A7A592  A9 80 00     Mx
    STA $00D3                       ; $A7A595  8D D3 00     Mx
    SEP #$20                        ; $A7A598  E2 20        Mx
    LDA $00DC                       ; $A7A59A  AD DC 00     mx
    STA $4202                       ; $A7A59D  8D 02 42     mx
    LDA $00D3                       ; $A7A5A0  AD D3 00     mx
    STA $4203                       ; $A7A5A3  8D 03 42     mx
    NOP                             ; $A7A5A6  EA           mx
    NOP                             ; $A7A5A7  EA           mx
    NOP                             ; $A7A5A8  EA           mx
    REP #$20                        ; $A7A5A9  C2 20        mx
    LDA $4216                       ; $A7A5AB  AD 16 42     Mx
    STA $00D3                       ; $A7A5AE  8D D3 00     Mx
    STA $00A8                       ; $A7A5B1  8D A8 00     Mx
    LDA #$0012                      ; $A7A5B4  A9 12 00     Mx
    STA $00D3                       ; $A7A5B7  8D D3 00     Mx
    SEP #$20                        ; $A7A5BA  E2 20        Mx
    LDA $00DC                       ; $A7A5BC  AD DC 00     mx
    STA $4202                       ; $A7A5BF  8D 02 42     mx
    LDA $00D3                       ; $A7A5C2  AD D3 00     mx
    STA $4203                       ; $A7A5C5  8D 03 42     mx
    NOP                             ; $A7A5C8  EA           mx
    NOP                             ; $A7A5C9  EA           mx
    NOP                             ; $A7A5CA  EA           mx
    REP #$20                        ; $A7A5CB  C2 20        mx
    LDA $4216                       ; $A7A5CD  AD 16 42     Mx
    STA $00D3                       ; $A7A5D0  8D D3 00     Mx
    STZ $0B82                       ; $A7A5D3  9C 82 0B     Mx
    STZ $0B80                       ; $A7A5D6  9C 80 0B     Mx
    STA $0B81                       ; $A7A5D9  8D 81 0B     Mx
    LDA $0B80                       ; $A7A5DC  AD 80 0B     Mx
    CLC                             ; $A7A5DF  18           Mx
    ADC $00A8                       ; $A7A5E0  6D A8 00     Mx
    STA $0B80                       ; $A7A5E3  8D 80 0B     Mx
    LDA $0B82                       ; $A7A5E6  AD 82 0B     Mx
    ADC #$0000                      ; $A7A5E9  69 00 00     Mx
    STA $0B82                       ; $A7A5EC  8D 82 0B     Mx
    LDA $00F6                       ; $A7A5EF  AD F6 00     Mx
    SEC                             ; $A7A5F2  38           Mx
    SBC #$0038                      ; $A7A5F3  E9 38 00     Mx
    STA $00F6                       ; $A7A5F6  8D F6 00     Mx
    LDA $09D8                       ; $A7A5F9  AD D8 09     Mx
    SEC                             ; $A7A5FC  38           Mx
    SBC #$0000                      ; $A7A5FD  E9 00 00     Mx
    STA $00C2                       ; $A7A600  8D C2 00     Mx
    LDA $09DA                       ; $A7A603  AD DA 09     Mx
    SBC $00F6                       ; $A7A606  ED F6 00     Mx
    STA $00C4                       ; $A7A609  8D C4 00     Mx
    STA $00E5                       ; $A7A60C  8D E5 00     Mx
    BPL L_A7A62A                    ; $A7A60F  10 19        Mx
    LDA $00C2                       ; $A7A611  AD C2 00     Mx
    EOR #$FFFF                      ; $A7A614  49 FF FF     Mx
    CLC                             ; $A7A617  18           Mx
    ADC #$0001                      ; $A7A618  69 01 00     Mx
    STA $00C2                       ; $A7A61B  8D C2 00     Mx
    LDA $00C4                       ; $A7A61E  AD C4 00     Mx
    EOR #$FFFF                      ; $A7A621  49 FF FF     Mx
    ADC #$0000                      ; $A7A624  69 00 00     Mx
    STA $00C4                       ; $A7A627  8D C4 00     Mx
L_A7A62A:
    LDA $00C3                       ; $A7A62A  AD C3 00     Mx
    STA $4204                       ; $A7A62D  8D 04 42     Mx
    LDX $00DC                       ; $A7A630  AE DC 00     Mx
    STX $4206                       ; $A7A633  8E 06 42     Mx
    NOP                             ; $A7A636  EA           Mx
    NOP                             ; $A7A637  EA           Mx
    NOP                             ; $A7A638  EA           Mx
    NOP                             ; $A7A639  EA           Mx
    STZ $00EA                       ; $A7A63A  9C EA 00     Mx
    STZ $00EC                       ; $A7A63D  9C EC 00     Mx
    LDA $00E5                       ; $A7A640  AD E5 00     Mx
    BPL L_A7A652                    ; $A7A643  10 0D        Mx
    LDA $4214                       ; $A7A645  AD 14 42     Mx
    EOR #$FFFF                      ; $A7A648  49 FF FF     Mx
    CLC                             ; $A7A64B  18           Mx
    ADC #$0001                      ; $A7A64C  69 01 00     Mx
    JMP L_A7A655                    ; $A7A64F  4C 55 A6     Mx
L_A7A652:
    LDA $4214                       ; $A7A652  AD 14 42     Mx
L_A7A655:
    STA $00EB                       ; $A7A655  8D EB 00     Mx
    LDA $0B80                       ; $A7A658  AD 80 0B     Mx
    CLC                             ; $A7A65B  18           Mx
    ADC $00EA                       ; $A7A65C  6D EA 00     Mx
    STA $0B80                       ; $A7A65F  8D 80 0B     Mx
    LDA $0B82                       ; $A7A662  AD 82 0B     Mx
    ADC $00EC                       ; $A7A665  6D EC 00     Mx
    STA $0B82                       ; $A7A668  8D 82 0B     Mx
    LDA $0B80                       ; $A7A66B  AD 80 0B     Mx
    STA $09E4                       ; $A7A66E  8D E4 09     Mx
    LDA $0B82                       ; $A7A671  AD 82 0B     Mx
    STA $09E6                       ; $A7A674  8D E6 09     Mx
L_A7A677:
    LDX $09AC                       ; $A7A677  AE AC 09     Mx
    JSR ($A67E,X)                   ; $A7A67A  FC 7E A6     Mx
    RTS                             ; $A7A67D  60           Mx
    db $C0,$A6,$73,$A7,$73,$A7,$F6,$AA,$10,$AC,$30,$B1,$13,$B2,$3B,$AF ; $A7A67E
    db $01,$AE,$30,$B1,$C0,$A6,$30,$B1,$F6,$AA,$30,$B1,$3B,$AF,$D4,$B0 ; $A7A68E
    db $CD,$B3,$CD,$B3,$D3,$B2,$73,$A7,$73,$A7,$C0,$A6,$42,$B5,$B6,$B5 ; $A7A69E
    db $D3,$B7,$EE,$B8,$01,$AE,$4B,$B9,$97,$C7,$9E,$BF,$8E,$C8,$30,$B1 ; $A7A6AE
    db $30,$B1                                                         ; $A7A6BE
L_A7A6C0:
    LDA $0A4C                       ; $A7A6C0  AD 4C 0A     Mx
    BEQ L_A7A6CB                    ; $A7A6C3  F0 06        Mx
    LDA #$000C                      ; $A7A6C5  A9 0C 00     Mx
    JMP L_A7A726                    ; $A7A6C8  4C 26 A7     Mx
L_A7A6CB:
    LDA $0A24                       ; $A7A6CB  AD 24 0A     Mx
    AND #$0F00                      ; $A7A6CE  29 00 0F     Mx
    BEQ L_A7A6D9                    ; $A7A6D1  F0 06        Mx
L_A7A6D3:
    LDA #$0002                      ; $A7A6D3  A9 02 00     Mx
    JMP L_A7A726                    ; $A7A6D6  4C 26 A7     Mx
L_A7A6D9:
    LDA $09E2                       ; $A7A6D9  AD E2 09     Mx
    ORA $09E0                       ; $A7A6DC  0D E0 09     Mx
    ORA $09EA                       ; $A7A6DF  0D EA 09     Mx
    ORA $09E8                       ; $A7A6E2  0D E8 09     Mx
    ORA $09E6                       ; $A7A6E5  0D E6 09     Mx
    ORA $09E4                       ; $A7A6E8  0D E4 09     Mx
    BNE L_A7A6D3                    ; $A7A6EB  D0 E6        Mx
    LDA $09AE                       ; $A7A6ED  AD AE 09     Mx
    BEQ L_A7A6F7                    ; $A7A6F0  F0 05        Mx
    DEC $09AE                       ; $A7A6F2  CE AE 09     Mx
    BNE L_A7A705                    ; $A7A6F5  D0 0E        Mx
L_A7A6F7:
    LDA $0A16                       ; $A7A6F7  AD 16 0A     Mx
    TAX                             ; $A7A6FA  AA           Mx
    LDA $A7E377,X                   ; $A7A6FB  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7A6FF  29 07 00     Mx
    STA $09C0                       ; $A7A702  8D C0 09     Mx
L_A7A705:
    LDA $0A28                       ; $A7A705  AD 28 0A     Mx
    BEQ L_A7A710                    ; $A7A708  F0 06        Mx
    JSR L_A7C9C0                    ; $A7A70A  20 C0 C9     Mx
    JMP L_A7A772                    ; $A7A70D  4C 72 A7     Mx
L_A7A710:
    LDA $0A2C                       ; $A7A710  AD 2C 0A     Mx
    BEQ L_A7A71B                    ; $A7A713  F0 06        Mx
    JSR L_A7D1EB                    ; $A7A715  20 EB D1     Mx
    JMP L_A7A772                    ; $A7A718  4C 72 A7     Mx
L_A7A71B:
    LDA $0A14                       ; $A7A71B  AD 14 0A     Mx
    CMP #$0046                      ; $A7A71E  C9 46 00     Mx
    BCC L_A7A741                    ; $A7A721  90 1E        Mx
    LDA #$0000                      ; $A7A723  A9 00 00     Mx
L_A7A726:
    STA $09AC                       ; $A7A726  8D AC 09     Mx
    LDA #$FFFF                      ; $A7A729  A9 FF FF     Mx
    STA $09B2                       ; $A7A72C  8D B2 09     Mx
    STZ $09B4                       ; $A7A72F  9C B4 09     Mx
    STZ $09FA                       ; $A7A732  9C FA 09     Mx
    STZ $09B0                       ; $A7A735  9C B0 09     Mx
    LDA #$FFF8                      ; $A7A738  A9 F8 FF     Mx
    STA $09B6                       ; $A7A73B  8D B6 09     Mx
    JMP L_A7A772                    ; $A7A73E  4C 72 A7     Mx
L_A7A741:
    LDA $0A36                       ; $A7A741  AD 36 0A     Mx
    BNE L_A7A763                    ; $A7A744  D0 1D        Mx
    LDA $0C19                       ; $A7A746  AD 19 0C     Mx
    BEQ L_A7A763                    ; $A7A749  F0 18        Mx
    LDA $09D6                       ; $A7A74B  AD D6 09     Mx
    SEC                             ; $A7A74E  38           Mx
    SBC $0BD9                       ; $A7A74F  ED D9 0B     Mx
    BCC L_A7A763                    ; $A7A752  90 0F        Mx
    LDA $09D6                       ; $A7A754  AD D6 09     Mx
    BMI L_A7A763                    ; $A7A757  30 0A        Mx
    SEC                             ; $A7A759  38           Mx
    SBC $A7E69E                     ; $A7A75A  EF 9E E6 A7  Mx
    BCC L_A7A763                    ; $A7A75E  90 03        Mx
    JMP L_A7A76C                    ; $A7A760  4C 6C A7     Mx
L_A7A763:
    LDA #$0014                      ; $A7A763  A9 14 00     Mx
    STA $09AC                       ; $A7A766  8D AC 09     Mx
    JMP L_A7A772                    ; $A7A769  4C 72 A7     Mx
L_A7A76C:
    LDA #$002A                      ; $A7A76C  A9 2A 00     Mx
    STA $09AC                       ; $A7A76F  8D AC 09     Mx
L_A7A772:
    RTS                             ; $A7A772  60           Mx
L_A7A773:
    STZ $09E4                       ; $A7A773  9C E4 09     Mx
    STZ $09E6                       ; $A7A776  9C E6 09     Mx
    LDX $09C0                       ; $A7A779  AE C0 09     Mx
    LDA $A7E35F,X                   ; $A7A77C  BF 5F E3 A7  Mx
    STA $00EA                       ; $A7A780  8D EA 00     Mx
    SEP #$20                        ; $A7A783  E2 20        Mx
    LDA $0A25                       ; $A7A785  AD 25 0A     mx
    AND #$0F                        ; $A7A788  29 0F        mx
    BNE L_A7A78F                    ; $A7A78A  D0 03        mx
    LDA $00EA                       ; $A7A78C  AD EA 00     mx
L_A7A78F:
    TAX                             ; $A7A78F  AA           mx
    LDA $A7E367,X                   ; $A7A790  BF 67 E3 A7  mx
    AND #$07                        ; $A7A794  29 07        mx
    STA $09C0                       ; $A7A796  8D C0 09     mx
    REP #$20                        ; $A7A799  C2 20        mx
    LDA $0A36                       ; $A7A79B  AD 36 0A     Mx
    BNE L_A7A7C2                    ; $A7A79E  D0 22        Mx
    LDA $0C19                       ; $A7A7A0  AD 19 0C     Mx
    BEQ L_A7A7C2                    ; $A7A7A3  F0 1D        Mx
    LDA $09D6                       ; $A7A7A5  AD D6 09     Mx
    SEC                             ; $A7A7A8  38           Mx
    SBC $0BD9                       ; $A7A7A9  ED D9 0B     Mx
    BCC L_A7A7C2                    ; $A7A7AC  90 14        Mx
    LDA $09D6                       ; $A7A7AE  AD D6 09     Mx
    BMI L_A7A7C2                    ; $A7A7B1  30 0F        Mx
    SEC                             ; $A7A7B3  38           Mx
    SBC $A7E69E                     ; $A7A7B4  EF 9E E6 A7  Mx
    BCC L_A7A7C2                    ; $A7A7B8  90 08        Mx
    LDA $0A14                       ; $A7A7BA  AD 14 0A     Mx
    CMP #$0046                      ; $A7A7BD  C9 46 00     Mx
    BCC L_A7A7DF                    ; $A7A7C0  90 1D        Mx
L_A7A7C2:
    LDA $0A4C                       ; $A7A7C2  AD 4C 0A     Mx
    BNE L_A7A7D0                    ; $A7A7C5  D0 09        Mx
    LDA #$0002                      ; $A7A7C7  A9 02 00     Mx
    STA $09AC                       ; $A7A7CA  8D AC 09     Mx
    JMP L_A7A850                    ; $A7A7CD  4C 50 A8     Mx
L_A7A7D0:
    LDA #$0004                      ; $A7A7D0  A9 04 00     Mx
    STA $09AC                       ; $A7A7D3  8D AC 09     Mx
    LDA #$0001                      ; $A7A7D6  A9 01 00     Mx
    STA $0A3A                       ; $A7A7D9  8D 3A 0A     Mx
    JMP L_A7A850                    ; $A7A7DC  4C 50 A8     Mx
L_A7A7DF:
    LDX $0A16                       ; $A7A7DF  AE 16 0A     Mx
    LDA $A7E377,X                   ; $A7A7E2  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7A7E6  29 07 00     Mx
    STA $00A6                       ; $A7A7E9  8D A6 00     Mx
    CMP $09C0                       ; $A7A7EC  CD C0 09     Mx
    BEQ L_A7A837                    ; $A7A7EF  F0 46        Mx
    CLC                             ; $A7A7F1  18           Mx
    ADC #$0004                      ; $A7A7F2  69 04 00     Mx
    AND #$0007                      ; $A7A7F5  29 07 00     Mx
    CMP $09C0                       ; $A7A7F8  CD C0 09     Mx
    BEQ L_A7A837                    ; $A7A7FB  F0 3A        Mx
    LDA $09AC                       ; $A7A7FD  AD AC 09     Mx
    CMP #$0026                      ; $A7A800  C9 26 00     Mx
    BEQ L_A7A84A                    ; $A7A803  F0 45        Mx
    CMP #$0002                      ; $A7A805  C9 02 00     Mx
    BEQ L_A7A819                    ; $A7A808  F0 0F        Mx
    LDA #$0026                      ; $A7A80A  A9 26 00     Mx
    STA $09AC                       ; $A7A80D  8D AC 09     Mx
    JMP L_A7A84A                    ; $A7A810  4C 4A A8     Mx
L_A7A813:
    LDA #$0028                      ; $A7A813  A9 28 00     Mx
    JMP L_A7A81C                    ; $A7A816  4C 1C A8     Mx
L_A7A819:
    LDA #$0026                      ; $A7A819  A9 26 00     Mx
L_A7A81C:
    STA $09AC                       ; $A7A81C  8D AC 09     Mx
    LDA #$FFFF                      ; $A7A81F  A9 FF FF     Mx
    STA $09B2                       ; $A7A822  8D B2 09     Mx
    STZ $09B4                       ; $A7A825  9C B4 09     Mx
    STZ $09FA                       ; $A7A828  9C FA 09     Mx
    STZ $09B0                       ; $A7A82B  9C B0 09     Mx
    LDA #$FFF8                      ; $A7A82E  A9 F8 FF     Mx
    STA $09B6                       ; $A7A831  8D B6 09     Mx
    JMP L_A7A84A                    ; $A7A834  4C 4A A8     Mx
L_A7A837:
    LDA $09AC                       ; $A7A837  AD AC 09     Mx
    CMP #$0028                      ; $A7A83A  C9 28 00     Mx
    BEQ L_A7A84A                    ; $A7A83D  F0 0B        Mx
    CMP #$0002                      ; $A7A83F  C9 02 00     Mx
    BEQ L_A7A813                    ; $A7A842  F0 CF        Mx
    LDA #$0028                      ; $A7A844  A9 28 00     Mx
    STA $09AC                       ; $A7A847  8D AC 09     Mx
L_A7A84A:
    LDA $00A6                       ; $A7A84A  AD A6 00     Mx
    STA $09C0                       ; $A7A84D  8D C0 09     Mx
L_A7A850:
    LDX #$00                        ; $A7A850  A2 00        Mx
    LDA $0A24                       ; $A7A852  AD 24 0A     Mx
    STA $00E8                       ; $A7A855  8D E8 00     Mx
    AND #$0F00                      ; $A7A858  29 00 0F     Mx
    BNE L_A7A89A                    ; $A7A85B  D0 3D        Mx
    LDA $09E2                       ; $A7A85D  AD E2 09     Mx
    ORA $09E0                       ; $A7A860  0D E0 09     Mx
    ORA $09EA                       ; $A7A863  0D EA 09     Mx
    ORA $09E8                       ; $A7A866  0D E8 09     Mx
    BNE L_A7A89A                    ; $A7A869  D0 2F        Mx
    LDA #$003C                      ; $A7A86B  A9 3C 00     Mx
    STA $09AE                       ; $A7A86E  8D AE 09     Mx
    LDA $0A4C                       ; $A7A871  AD 4C 0A     Mx
    BNE L_A7A87C                    ; $A7A874  D0 06        Mx
    LDA #$0000                      ; $A7A876  A9 00 00     Mx
    JMP L_A7A87F                    ; $A7A879  4C 7F A8     Mx
L_A7A87C:
    LDA #$0006                      ; $A7A87C  A9 06 00     Mx
L_A7A87F:
    STA $09AC                       ; $A7A87F  8D AC 09     Mx
    LDA #$FFFF                      ; $A7A882  A9 FF FF     Mx
    STA $09B2                       ; $A7A885  8D B2 09     Mx
    STZ $09B4                       ; $A7A888  9C B4 09     Mx
    STZ $09FA                       ; $A7A88B  9C FA 09     Mx
    STZ $09B0                       ; $A7A88E  9C B0 09     Mx
    LDA #$FFF8                      ; $A7A891  A9 F8 FF     Mx
    STA $09B6                       ; $A7A894  8D B6 09     Mx
    JMP L_A7AAF4                    ; $A7A897  4C F4 AA     Mx
L_A7A89A:
    LDA $09BA                       ; $A7A89A  AD BA 09     Mx
    BEQ L_A7A8A8                    ; $A7A89D  F0 09        Mx
    LDA #$0400                      ; $A7A89F  A9 00 04     Mx
    STA $00E5                       ; $A7A8A2  8D E5 00     Mx
    JMP L_A7A905                    ; $A7A8A5  4C 05 A9     Mx
L_A7A8A8:
    LDA $0A7A                       ; $A7A8A8  AD 7A 0A     Mx
    STA $00E5                       ; $A7A8AB  8D E5 00     Mx
    LDA $0CCB                       ; $A7A8AE  AD CB 0C     Mx
    CMP #$0032                      ; $A7A8B1  C9 32 00     Mx
    BCS L_A7A8C5                    ; $A7A8B4  B0 0F        Mx
    LDA $0A82                       ; $A7A8B6  AD 82 0A     Mx
    BMI L_A7A8C5                    ; $A7A8B9  30 0A        Mx
    LDA $00E5                       ; $A7A8BB  AD E5 00     Mx
    CLC                             ; $A7A8BE  18           Mx
    ADC #$0038                      ; $A7A8BF  69 38 00     Mx
    STA $00E5                       ; $A7A8C2  8D E5 00     Mx
L_A7A8C5:
    LDA $0A6C                       ; $A7A8C5  AD 6C 0A     Mx
    BEQ L_A7A8D9                    ; $A7A8C8  F0 0F        Mx
    LDA $0A36                       ; $A7A8CA  AD 36 0A     Mx
    BNE L_A7A8D9                    ; $A7A8CD  D0 0A        Mx
    LDA $00E5                       ; $A7A8CF  AD E5 00     Mx
    CLC                             ; $A7A8D2  18           Mx
    ADC #$0200                      ; $A7A8D3  69 00 02     Mx
    STA $00E5                       ; $A7A8D6  8D E5 00     Mx
L_A7A8D9:
    LDA $0A36                       ; $A7A8D9  AD 36 0A     Mx
    BMI L_A7A8F6                    ; $A7A8DC  30 18        Mx
    BEQ L_A7A8F6                    ; $A7A8DE  F0 16        Mx
    LDA $00E5                       ; $A7A8E0  AD E5 00     Mx
    SEC                             ; $A7A8E3  38           Mx
    SBC #$0028                      ; $A7A8E4  E9 28 00     Mx
    STA $00E5                       ; $A7A8E7  8D E5 00     Mx
    LDY $0A4C                       ; $A7A8EA  AC 4C 0A     Mx
    BEQ L_A7A8F6                    ; $A7A8ED  F0 07        Mx
    SEC                             ; $A7A8EF  38           Mx
    SBC #$0040                      ; $A7A8F0  E9 40 00     Mx
    STA $00E5                       ; $A7A8F3  8D E5 00     Mx
L_A7A8F6:
    LDA $0A3E                       ; $A7A8F6  AD 3E 0A     Mx
    BEQ L_A7A905                    ; $A7A8F9  F0 0A        Mx
    LDA $00E5                       ; $A7A8FB  AD E5 00     Mx
    CLC                             ; $A7A8FE  18           Mx
    ADC #$00FC                      ; $A7A8FF  69 FC 00     Mx
    STA $00E5                       ; $A7A902  8D E5 00     Mx
L_A7A905:
    LDA $00E5                       ; $A7A905  AD E5 00     Mx
    LSR                             ; $A7A908  4A           Mx
    LSR                             ; $A7A909  4A           Mx
    STA $00A4                       ; $A7A90A  8D A4 00     Mx
    LDA $00E5                       ; $A7A90D  AD E5 00     Mx
    SEC                             ; $A7A910  38           Mx
    SBC $00A4                       ; $A7A911  ED A4 00     Mx
    STA $00E2                       ; $A7A914  8D E2 00     Mx
    LDA $0A24                       ; $A7A917  AD 24 0A     Mx
    AND #$0100                      ; $A7A91A  29 00 01     Mx
    BNE L_A7A922                    ; $A7A91D  D0 03        Mx
    JMP L_A7A966                    ; $A7A91F  4C 66 A9     Mx
L_A7A922:
    LDX #$01                        ; $A7A922  A2 01        Mx
    LDA $09E0                       ; $A7A924  AD E0 09     Mx
    CLC                             ; $A7A927  18           Mx
    ADC #$8000                      ; $A7A928  69 00 80     Mx
    STA $09E0                       ; $A7A92B  8D E0 09     Mx
    LDA $09E2                       ; $A7A92E  AD E2 09     Mx
    ADC #$0000                      ; $A7A931  69 00 00     Mx
    STA $09E2                       ; $A7A934  8D E2 09     Mx
    BPL L_A7A93C                    ; $A7A937  10 03        Mx
    JMP L_A7A963                    ; $A7A939  4C 63 A9     Mx
L_A7A93C:
    LDY $09E8                       ; $A7A93C  AC E8 09     Mx
    BEQ L_A7A952                    ; $A7A93F  F0 11        Mx
    LDA $00E5                       ; $A7A941  AD E5 00     Mx
    LSR                             ; $A7A944  4A           Mx
    STA $00B2                       ; $A7A945  8D B2 00     Mx
    LDA $00E5                       ; $A7A948  AD E5 00     Mx
    SEC                             ; $A7A94B  38           Mx
    SBC $00B2                       ; $A7A94C  ED B2 00     Mx
    STA $00E5                       ; $A7A94F  8D E5 00     Mx
L_A7A952:
    LDA $09E1                       ; $A7A952  AD E1 09     Mx
    CMP $00E5                       ; $A7A955  CD E5 00     Mx
    BCC L_A7A9BD                    ; $A7A958  90 63        Mx
    LDA $00E5                       ; $A7A95A  AD E5 00     Mx
    STZ $09E0                       ; $A7A95D  9C E0 09     Mx
    STA $09E1                       ; $A7A960  8D E1 09     Mx
L_A7A963:
    JMP L_A7A9BD                    ; $A7A963  4C BD A9     Mx
L_A7A966:
    LDA $0A24                       ; $A7A966  AD 24 0A     Mx
    AND #$0200                      ; $A7A969  29 00 02     Mx
    BEQ L_A7A963                    ; $A7A96C  F0 F5        Mx
    LDX #$01                        ; $A7A96E  A2 01        Mx
    LDA $09E0                       ; $A7A970  AD E0 09     Mx
    SEC                             ; $A7A973  38           Mx
    SBC #$8000                      ; $A7A974  E9 00 80     Mx
    STA $09E0                       ; $A7A977  8D E0 09     Mx
    LDA $09E2                       ; $A7A97A  AD E2 09     Mx
    SBC #$0000                      ; $A7A97D  E9 00 00     Mx
    STA $09E2                       ; $A7A980  8D E2 09     Mx
    BMI L_A7A988                    ; $A7A983  30 03        Mx
    JMP L_A7A9BD                    ; $A7A985  4C BD A9     Mx
L_A7A988:
    LDY $09E8                       ; $A7A988  AC E8 09     Mx
    BEQ L_A7A99E                    ; $A7A98B  F0 11        Mx
    LDA $00E5                       ; $A7A98D  AD E5 00     Mx
    LSR                             ; $A7A990  4A           Mx
    STA $00B2                       ; $A7A991  8D B2 00     Mx
    LDA $00E5                       ; $A7A994  AD E5 00     Mx
    SEC                             ; $A7A997  38           Mx
    SBC $00B2                       ; $A7A998  ED B2 00     Mx
    STA $00E5                       ; $A7A99B  8D E5 00     Mx
L_A7A99E:
    LDA $09E1                       ; $A7A99E  AD E1 09     Mx
    CLC                             ; $A7A9A1  18           Mx
    ADC $00E5                       ; $A7A9A2  6D E5 00     Mx
    BCS L_A7A9BD                    ; $A7A9A5  B0 16        Mx
    LDA $00E5                       ; $A7A9A7  AD E5 00     Mx
    EOR #$FFFF                      ; $A7A9AA  49 FF FF     Mx
    CLC                             ; $A7A9AD  18           Mx
    ADC #$0001                      ; $A7A9AE  69 01 00     Mx
    STZ $09E0                       ; $A7A9B1  9C E0 09     Mx
    STZ $09E2                       ; $A7A9B4  9C E2 09     Mx
    DEC $09E2                       ; $A7A9B7  CE E2 09     Mx
    STA $09E1                       ; $A7A9BA  8D E1 09     Mx
L_A7A9BD:
    CPX #$00                        ; $A7A9BD  E0 00        Mx
    BNE L_A7A9FF                    ; $A7A9BF  D0 3E        Mx
    LDA $09E2                       ; $A7A9C1  AD E2 09     Mx
    BMI L_A7A9E4                    ; $A7A9C4  30 1E        Mx
    LDA $09E0                       ; $A7A9C6  AD E0 09     Mx
    SEC                             ; $A7A9C9  38           Mx
    SBC #$8000                      ; $A7A9CA  E9 00 80     Mx
    STA $09E0                       ; $A7A9CD  8D E0 09     Mx
    LDA $09E2                       ; $A7A9D0  AD E2 09     Mx
    SBC #$0000                      ; $A7A9D3  E9 00 00     Mx
    STA $09E2                       ; $A7A9D6  8D E2 09     Mx
    BCS L_A7A9FF                    ; $A7A9D9  B0 24        Mx
    STZ $09E2                       ; $A7A9DB  9C E2 09     Mx
    STZ $09E0                       ; $A7A9DE  9C E0 09     Mx
    JMP L_A7A9FF                    ; $A7A9E1  4C FF A9     Mx
L_A7A9E4:
    LDA $09E0                       ; $A7A9E4  AD E0 09     Mx
    CLC                             ; $A7A9E7  18           Mx
    ADC #$8000                      ; $A7A9E8  69 00 80     Mx
    STA $09E0                       ; $A7A9EB  8D E0 09     Mx
    LDA $09E2                       ; $A7A9EE  AD E2 09     Mx
    ADC #$0000                      ; $A7A9F1  69 00 00     Mx
    STA $09E2                       ; $A7A9F4  8D E2 09     Mx
    BCC L_A7A9FF                    ; $A7A9F7  90 06        Mx
    STZ $09E2                       ; $A7A9F9  9C E2 09     Mx
    STZ $09E0                       ; $A7A9FC  9C E0 09     Mx
L_A7A9FF:
    LDX #$00                        ; $A7A9FF  A2 00        Mx
    LDA $0A24                       ; $A7AA01  AD 24 0A     Mx
    AND #$0400                      ; $A7AA04  29 00 04     Mx
    BNE L_A7AA0C                    ; $A7AA07  D0 03        Mx
    JMP L_A7AA3A                    ; $A7AA09  4C 3A AA     Mx
L_A7AA0C:
    LDX #$01                        ; $A7AA0C  A2 01        Mx
    LDA $09E8                       ; $A7AA0E  AD E8 09     Mx
    CLC                             ; $A7AA11  18           Mx
    ADC #$4000                      ; $A7AA12  69 00 40     Mx
    STA $09E8                       ; $A7AA15  8D E8 09     Mx
    LDA $09EA                       ; $A7AA18  AD EA 09     Mx
    ADC #$0000                      ; $A7AA1B  69 00 00     Mx
    STA $09EA                       ; $A7AA1E  8D EA 09     Mx
    BPL L_A7AA26                    ; $A7AA21  10 03        Mx
    JMP L_A7AA7B                    ; $A7AA23  4C 7B AA     Mx
L_A7AA26:
    LDA $09E9                       ; $A7AA26  AD E9 09     Mx
    CMP $00E2                       ; $A7AA29  CD E2 00     Mx
    BCC L_A7AA7B                    ; $A7AA2C  90 4D        Mx
    LDA $00E2                       ; $A7AA2E  AD E2 00     Mx
    STZ $09E8                       ; $A7AA31  9C E8 09     Mx
    STA $09E9                       ; $A7AA34  8D E9 09     Mx
    JMP L_A7AA7B                    ; $A7AA37  4C 7B AA     Mx
L_A7AA3A:
    LDA $0A24                       ; $A7AA3A  AD 24 0A     Mx
    AND #$0800                      ; $A7AA3D  29 00 08     Mx
    BEQ L_A7AA7B                    ; $A7AA40  F0 39        Mx
    LDX #$01                        ; $A7AA42  A2 01        Mx
    LDA $09E8                       ; $A7AA44  AD E8 09     Mx
    SEC                             ; $A7AA47  38           Mx
    SBC #$4000                      ; $A7AA48  E9 00 40     Mx
    STA $09E8                       ; $A7AA4B  8D E8 09     Mx
    LDA $09EA                       ; $A7AA4E  AD EA 09     Mx
    SBC #$0000                      ; $A7AA51  E9 00 00     Mx
    STA $09EA                       ; $A7AA54  8D EA 09     Mx
    BMI L_A7AA5C                    ; $A7AA57  30 03        Mx
    JMP L_A7AA7B                    ; $A7AA59  4C 7B AA     Mx
L_A7AA5C:
    LDA $09E9                       ; $A7AA5C  AD E9 09     Mx
    CLC                             ; $A7AA5F  18           Mx
    ADC $00E2                       ; $A7AA60  6D E2 00     Mx
    BCS L_A7AA7B                    ; $A7AA63  B0 16        Mx
    LDA $00E2                       ; $A7AA65  AD E2 00     Mx
    EOR #$FFFF                      ; $A7AA68  49 FF FF     Mx
    CLC                             ; $A7AA6B  18           Mx
    ADC #$0001                      ; $A7AA6C  69 01 00     Mx
    STZ $09E8                       ; $A7AA6F  9C E8 09     Mx
    STZ $09EA                       ; $A7AA72  9C EA 09     Mx
    DEC $09EA                       ; $A7AA75  CE EA 09     Mx
    STA $09E9                       ; $A7AA78  8D E9 09     Mx
L_A7AA7B:
    CPX #$00                        ; $A7AA7B  E0 00        Mx
    BNE L_A7AABD                    ; $A7AA7D  D0 3E        Mx
    LDA $09EA                       ; $A7AA7F  AD EA 09     Mx
    BMI L_A7AAA2                    ; $A7AA82  30 1E        Mx
    LDA $09E8                       ; $A7AA84  AD E8 09     Mx
    SEC                             ; $A7AA87  38           Mx
    SBC #$8000                      ; $A7AA88  E9 00 80     Mx
    STA $09E8                       ; $A7AA8B  8D E8 09     Mx
    LDA $09EA                       ; $A7AA8E  AD EA 09     Mx
    SBC #$0000                      ; $A7AA91  E9 00 00     Mx
    STA $09EA                       ; $A7AA94  8D EA 09     Mx
    BCS L_A7AABD                    ; $A7AA97  B0 24        Mx
    STZ $09EA                       ; $A7AA99  9C EA 09     Mx
    STZ $09E8                       ; $A7AA9C  9C E8 09     Mx
    JMP L_A7AABD                    ; $A7AA9F  4C BD AA     Mx
L_A7AAA2:
    LDA $09E8                       ; $A7AAA2  AD E8 09     Mx
    CLC                             ; $A7AAA5  18           Mx
    ADC #$8000                      ; $A7AAA6  69 00 80     Mx
    STA $09E8                       ; $A7AAA9  8D E8 09     Mx
    LDA $09EA                       ; $A7AAAC  AD EA 09     Mx
    ADC #$0000                      ; $A7AAAF  69 00 00     Mx
    STA $09EA                       ; $A7AAB2  8D EA 09     Mx
    BCC L_A7AABD                    ; $A7AAB5  90 06        Mx
    STZ $09EA                       ; $A7AAB7  9C EA 09     Mx
    STZ $09E8                       ; $A7AABA  9C E8 09     Mx
L_A7AABD:
    LDA $0A4C                       ; $A7AABD  AD 4C 0A     Mx
    BEQ L_A7AAD3                    ; $A7AAC0  F0 11        Mx
    LDA $09B2                       ; $A7AAC2  AD B2 09     Mx
    CMP #$0006                      ; $A7AAC5  C9 06 00     Mx
    BNE L_A7AAD3                    ; $A7AAC8  D0 09        Mx
    LDA $09B4                       ; $A7AACA  AD B4 09     Mx
    BNE L_A7AAD3                    ; $A7AACD  D0 04        Mx
    JSL L_9A9608                    ; $A7AACF  22 08 96 9A  Mx
L_A7AAD3:
    LDA $0A28                       ; $A7AAD3  AD 28 0A     Mx
    BNE L_A7AADB                    ; $A7AAD6  D0 03        Mx
    JMP L_A7AAEC                    ; $A7AAD8  4C EC AA     Mx
L_A7AADB:
    LDA $0A4C                       ; $A7AADB  AD 4C 0A     Mx
    BNE L_A7AAE6                    ; $A7AADE  D0 06        Mx
    JSR L_A7C9C0                    ; $A7AAE0  20 C0 C9     Mx
    JMP L_A7AAF4                    ; $A7AAE3  4C F4 AA     Mx
L_A7AAE6:
    JSR L_A7D526                    ; $A7AAE6  20 26 D5     Mx
    JMP L_A7AAF4                    ; $A7AAE9  4C F4 AA     Mx
L_A7AAEC:
    LDA $0A2C                       ; $A7AAEC  AD 2C 0A     Mx
    BEQ L_A7AAF4                    ; $A7AAEF  F0 03        Mx
    JSR L_A7D1EB                    ; $A7AAF1  20 EB D1     Mx
L_A7AAF4:
    RTS                             ; $A7AAF4  60           Mx
L_A7AAF5:
    RTS                             ; $A7AAF5  60           Mx
L_A7AAF6:
    LDA $0C19                       ; $A7AAF6  AD 19 0C     Mx
    CMP $09A8                       ; $A7AAF9  CD A8 09     Mx
    BEQ L_A7AB04                    ; $A7AAFC  F0 06        Mx
    LDA #$0000                      ; $A7AAFE  A9 00 00     Mx
    JMP L_A7AB0F                    ; $A7AB01  4C 0F AB     Mx
L_A7AB04:
    LDA $0A24                       ; $A7AB04  AD 24 0A     Mx
    AND #$0F00                      ; $A7AB07  29 00 0F     Mx
    BEQ L_A7AB2A                    ; $A7AB0A  F0 1E        Mx
L_A7AB0C:
    LDA #$0004                      ; $A7AB0C  A9 04 00     Mx
L_A7AB0F:
    STA $09AC                       ; $A7AB0F  8D AC 09     Mx
    LDA #$FFFF                      ; $A7AB12  A9 FF FF     Mx
    STA $09B2                       ; $A7AB15  8D B2 09     Mx
    STZ $09B4                       ; $A7AB18  9C B4 09     Mx
    STZ $09FA                       ; $A7AB1B  9C FA 09     Mx
    STZ $09B0                       ; $A7AB1E  9C B0 09     Mx
    LDA #$FFF8                      ; $A7AB21  A9 F8 FF     Mx
    STA $09B6                       ; $A7AB24  8D B6 09     Mx
    JMP L_A7AC0F                    ; $A7AB27  4C 0F AC     Mx
L_A7AB2A:
    LDA $09B2                       ; $A7AB2A  AD B2 09     Mx
    CMP #$0002                      ; $A7AB2D  C9 02 00     Mx
    BNE L_A7AB3A                    ; $A7AB30  D0 08        Mx
    LDA $09AC                       ; $A7AB32  AD AC 09     Mx
    CMP #$0018                      ; $A7AB35  C9 18 00     Mx
    BEQ L_A7AB50                    ; $A7AB38  F0 16        Mx
L_A7AB3A:
    LDA $09C0                       ; $A7AB3A  AD C0 09     Mx
    ASL                             ; $A7AB3D  0A           Mx
    TAX                             ; $A7AB3E  AA           Mx
    LDA $09B2                       ; $A7AB3F  AD B2 09     Mx
    CMP $A6DBF3,X                   ; $A7AB42  DF F3 DB A6  Mx
    BNE L_A7AB59                    ; $A7AB46  D0 11        Mx
    LDA $09AC                       ; $A7AB48  AD AC 09     Mx
    CMP #$0018                      ; $A7AB4B  C9 18 00     Mx
    BEQ L_A7AB59                    ; $A7AB4E  F0 09        Mx
L_A7AB50:
    LDA $09B4                       ; $A7AB50  AD B4 09     Mx
    BNE L_A7AB59                    ; $A7AB53  D0 04        Mx
    JSL L_9A9608                    ; $A7AB55  22 08 96 9A  Mx
L_A7AB59:
    LDA $09E2                       ; $A7AB59  AD E2 09     Mx
    ORA $09E0                       ; $A7AB5C  0D E0 09     Mx
    ORA $09EA                       ; $A7AB5F  0D EA 09     Mx
    ORA $09E8                       ; $A7AB62  0D E8 09     Mx
    ORA $09E6                       ; $A7AB65  0D E6 09     Mx
    ORA $09E4                       ; $A7AB68  0D E4 09     Mx
    BNE L_A7AB0C                    ; $A7AB6B  D0 9F        Mx
    LDA $09AE                       ; $A7AB6D  AD AE 09     Mx
    BEQ L_A7AB85                    ; $A7AB70  F0 13        Mx
    DEC $09AE                       ; $A7AB72  CE AE 09     Mx
    BNE L_A7AB85                    ; $A7AB75  D0 0E        Mx
    LDA $0A0E                       ; $A7AB77  AD 0E 0A     Mx
    TAX                             ; $A7AB7A  AA           Mx
    LDA $A7E377,X                   ; $A7AB7B  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7AB7F  29 07 00     Mx
    STA $09C0                       ; $A7AB82  8D C0 09     Mx
L_A7AB85:
    LDA $0A28                       ; $A7AB85  AD 28 0A     Mx
    BNE L_A7AB8D                    ; $A7AB88  D0 03        Mx
    JMP L_A7AB93                    ; $A7AB8A  4C 93 AB     Mx
L_A7AB8D:
    JSR L_A7D526                    ; $A7AB8D  20 26 D5     Mx
    JMP L_A7AC0F                    ; $A7AB90  4C 0F AC     Mx
L_A7AB93:
    LDA $0A2C                       ; $A7AB93  AD 2C 0A     Mx
    BEQ L_A7AB9E                    ; $A7AB96  F0 06        Mx
    JSR L_A7D1EB                    ; $A7AB98  20 EB D1     Mx
    JMP L_A7AC0F                    ; $A7AB9B  4C 0F AC     Mx
L_A7AB9E:
    LDA $09AE                       ; $A7AB9E  AD AE 09     Mx
    BEQ L_A7ABA6                    ; $A7ABA1  F0 03        Mx
    JMP L_A7AC0F                    ; $A7ABA3  4C 0F AC     Mx
L_A7ABA6:
    LDA $0A20                       ; $A7ABA6  AD 20 0A     Mx
    CMP #$0046                      ; $A7ABA9  C9 46 00     Mx
    BCC L_A7ABB6                    ; $A7ABAC  90 08        Mx
    LDA $0A22                       ; $A7ABAE  AD 22 0A     Mx
    CMP #$0046                      ; $A7ABB1  C9 46 00     Mx
    BCS L_A7ABEC                    ; $A7ABB4  B0 36        Mx
L_A7ABB6:
    LDA $09AC                       ; $A7ABB6  AD AC 09     Mx
    CMP #$0018                      ; $A7ABB9  C9 18 00     Mx
    BNE L_A7ABC1                    ; $A7ABBC  D0 03        Mx
    JMP L_A7AC0F                    ; $A7ABBE  4C 0F AC     Mx
L_A7ABC1:
    LDA #$0018                      ; $A7ABC1  A9 18 00     Mx
    STA $09AC                       ; $A7ABC4  8D AC 09     Mx
    LDA #$FFFF                      ; $A7ABC7  A9 FF FF     Mx
    STA $09B2                       ; $A7ABCA  8D B2 09     Mx
    STZ $09B4                       ; $A7ABCD  9C B4 09     Mx
    STZ $09FA                       ; $A7ABD0  9C FA 09     Mx
    STZ $09B0                       ; $A7ABD3  9C B0 09     Mx
    LDA #$FFF8                      ; $A7ABD6  A9 F8 FF     Mx
    STA $09B6                       ; $A7ABD9  8D B6 09     Mx
    LDX $09C0                       ; $A7ABDC  AE C0 09     Mx
    LDA $A7E503,X                   ; $A7ABDF  BF 03 E5 A7  Mx
    AND #$0007                      ; $A7ABE3  29 07 00     Mx
    STA $09C0                       ; $A7ABE6  8D C0 09     Mx
    JMP L_A7AC0F                    ; $A7ABE9  4C 0F AC     Mx
L_A7ABEC:
    LDA $09AC                       ; $A7ABEC  AD AC 09     Mx
    CMP #$0006                      ; $A7ABEF  C9 06 00     Mx
    BEQ L_A7AC0F                    ; $A7ABF2  F0 1B        Mx
    LDA #$0006                      ; $A7ABF4  A9 06 00     Mx
    STA $09AC                       ; $A7ABF7  8D AC 09     Mx
    LDA #$FFFF                      ; $A7ABFA  A9 FF FF     Mx
    STA $09B2                       ; $A7ABFD  8D B2 09     Mx
    STZ $09B4                       ; $A7AC00  9C B4 09     Mx
    STZ $09FA                       ; $A7AC03  9C FA 09     Mx
    STZ $09B0                       ; $A7AC06  9C B0 09     Mx
    LDA #$FFF8                      ; $A7AC09  A9 F8 FF     Mx
    STA $09B6                       ; $A7AC0C  8D B6 09     Mx
L_A7AC0F:
    RTS                             ; $A7AC0F  60           Mx
L_A7AC10:
    LDA $09FA                       ; $A7AC10  AD FA 09     Mx
    CMP #$0001                      ; $A7AC13  C9 01 00     Mx
    BEQ L_A7AC3E                    ; $A7AC16  F0 26        Mx
    CMP #$0002                      ; $A7AC18  C9 02 00     Mx
    BEQ L_A7AC25                    ; $A7AC1B  F0 08        Mx
    CMP #$0003                      ; $A7AC1D  C9 03 00     Mx
    BNE L_A7AC28                    ; $A7AC20  D0 06        Mx
    JMP L_A7AD6D                    ; $A7AC22  4C 6D AD     Mx
L_A7AC25:
    JMP L_A7AC8D                    ; $A7AC25  4C 8D AC     Mx
L_A7AC28:
    LDA $0A3E                       ; $A7AC28  AD 3E 0A     Mx
    BEQ L_A7AC32                    ; $A7AC2B  F0 05        Mx
    LDA #$003E                      ; $A7AC2D  A9 3E 00     Mx
    BNE L_A7AC35                    ; $A7AC30  D0 03        Mx
L_A7AC32:
    LDA #$0036                      ; $A7AC32  A9 36 00     Mx
L_A7AC35:
    STA $09AE                       ; $A7AC35  8D AE 09     Mx
    LDA #$0001                      ; $A7AC38  A9 01 00     Mx
    STA $09FA                       ; $A7AC3B  8D FA 09     Mx
L_A7AC3E:
    LDA $09B2                       ; $A7AC3E  AD B2 09     Mx
    CMP #$0002                      ; $A7AC41  C9 02 00     Mx
    BCS L_A7AC54                    ; $A7AC44  B0 0E        Mx
    LDA $0A28                       ; $A7AC46  AD 28 0A     Mx
    BNE L_A7AC66                    ; $A7AC49  D0 1B        Mx
    LDA #$0001                      ; $A7AC4B  A9 01 00     Mx
    STA $0A38                       ; $A7AC4E  8D 38 0A     Mx
    JMP L_A7AC66                    ; $A7AC51  4C 66 AC     Mx
L_A7AC54:
    CMP #$0004                      ; $A7AC54  C9 04 00     Mx
    BCS L_A7AC69                    ; $A7AC57  B0 10        Mx
    CMP #$0003                      ; $A7AC59  C9 03 00     Mx
    BNE L_A7AC66                    ; $A7AC5C  D0 08        Mx
    LDA $0A38                       ; $A7AC5E  AD 38 0A     Mx
    BEQ L_A7AC69                    ; $A7AC61  F0 06        Mx
    JMP L_A7ADA8                    ; $A7AC63  4C A8 AD     Mx
L_A7AC66:
    JMP L_A7AE00                    ; $A7AC66  4C 00 AE     Mx
L_A7AC69:
    DEC $09AE                       ; $A7AC69  CE AE 09     Mx
    DEC $09AE                       ; $A7AC6C  CE AE 09     Mx
    BPL L_A7AC7D                    ; $A7AC6F  10 0C        Mx
    STZ $09AE                       ; $A7AC71  9C AE 09     Mx
    LDA #$0002                      ; $A7AC74  A9 02 00     Mx
    STA $09FA                       ; $A7AC77  8D FA 09     Mx
    JMP L_A7AC8D                    ; $A7AC7A  4C 8D AC     Mx
L_A7AC7D:
    LDX $09AE                       ; $A7AC7D  AE AE 09     Mx
    LDA $A7E3F7,X                   ; $A7AC80  BF F7 E3 A7  Mx
    STA $09E6                       ; $A7AC84  8D E6 09     Mx
    STZ $09E4                       ; $A7AC87  9C E4 09     Mx
    JMP L_A7ACEB                    ; $A7AC8A  4C EB AC     Mx
L_A7AC8D:
    LDA #$0003                      ; $A7AC8D  A9 03 00     Mx
    STA $09B4                       ; $A7AC90  8D B4 09     Mx
    LDA $09AE                       ; $A7AC93  AD AE 09     Mx
    CLC                             ; $A7AC96  18           Mx
    ADC #$0002                      ; $A7AC97  69 02 00     Mx
    CMP #$003E                      ; $A7AC9A  C9 3E 00     Mx
    BCC L_A7ACA2                    ; $A7AC9D  90 03        Mx
    LDA #$003C                      ; $A7AC9F  A9 3C 00     Mx
L_A7ACA2:
    STA $09AE                       ; $A7ACA2  8D AE 09     Mx
    TAX                             ; $A7ACA5  AA           Mx
    LDA $A7E3F7,X                   ; $A7ACA6  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $A7ACAA  49 FF FF     Mx
    CLC                             ; $A7ACAD  18           Mx
    ADC #$0001                      ; $A7ACAE  69 01 00     Mx
    STA $09E6                       ; $A7ACB1  8D E6 09     Mx
    STZ $09E4                       ; $A7ACB4  9C E4 09     Mx
    LDA $09D8                       ; $A7ACB7  AD D8 09     Mx
    CLC                             ; $A7ACBA  18           Mx
    ADC $09E4                       ; $A7ACBB  6D E4 09     Mx
    STA $00E8                       ; $A7ACBE  8D E8 00     Mx
    LDA $09DA                       ; $A7ACC1  AD DA 09     Mx
    ADC $09E6                       ; $A7ACC4  6D E6 09     Mx
    BPL L_A7ACE4                    ; $A7ACC7  10 1B        Mx
    STZ $09DA                       ; $A7ACC9  9C DA 09     Mx
    STZ $09D8                       ; $A7ACCC  9C D8 09     Mx
    STZ $09CC                       ; $A7ACCF  9C CC 09     Mx
    STZ $09CE                       ; $A7ACD2  9C CE 09     Mx
    STZ $09E6                       ; $A7ACD5  9C E6 09     Mx
    STZ $09E4                       ; $A7ACD8  9C E4 09     Mx
    LDA #$0003                      ; $A7ACDB  A9 03 00     Mx
    STA $09FA                       ; $A7ACDE  8D FA 09     Mx
    JMP L_A7AD6D                    ; $A7ACE1  4C 6D AD     Mx
L_A7ACE4:
    CPX #$2E                        ; $A7ACE4  E0 2E        Mx
    BCC L_A7ACEB                    ; $A7ACE6  90 03        Mx
    JMP L_A7ACF5                    ; $A7ACE8  4C F5 AC     Mx
L_A7ACEB:
    LDA $0A28                       ; $A7ACEB  AD 28 0A     Mx
    BNE L_A7AD67                    ; $A7ACEE  D0 77        Mx
    LDA $0C19                       ; $A7ACF0  AD 19 0C     Mx
    BEQ L_A7AD67                    ; $A7ACF3  F0 72        Mx
L_A7ACF5:
    STZ $09B4                       ; $A7ACF5  9C B4 09     Mx
    LDA $09A8                       ; $A7ACF8  AD A8 09     Mx
    CMP $0C19                       ; $A7ACFB  CD 19 0C     Mx
    BNE L_A7AD64                    ; $A7ACFE  D0 64        Mx
    LDX $09B8                       ; $A7AD00  AE B8 09     Mx
    LDA $0A72                       ; $A7AD03  AD 72 0A     Mx
    BEQ L_A7AD37                    ; $A7AD06  F0 2F        Mx
    LDA #$2800                      ; $A7AD08  A9 00 28     Mx
    STA $00D1                       ; $A7AD0B  8D D1 00     Mx
    LDA $A88000,X                   ; $A7AD0E  BF 00 80 A8  Mx
    CLC                             ; $A7AD12  18           Mx
    ADC $09B6                       ; $A7AD13  6D B6 09     Mx
    STA $00D0                       ; $A7AD16  8D D0 00     Mx
    LDY #$00                        ; $A7AD19  A0 00        Mx
    LDA [$D0],Y                     ; $A7AD1B  B7 D0        Mx
    STA $0BEF                       ; $A7AD1D  8D EF 0B     Mx
    LDY #$02                        ; $A7AD20  A0 02        Mx
    LDA [$D0],Y                     ; $A7AD22  B7 D0        Mx
    STA $0BF1                       ; $A7AD24  8D F1 0B     Mx
    LDY #$04                        ; $A7AD27  A0 04        Mx
    LDA [$D0],Y                     ; $A7AD29  B7 D0        Mx
    STA $0BF5                       ; $A7AD2B  8D F5 0B     Mx
    CLC                             ; $A7AD2E  18           Mx
    ADC $09D0                       ; $A7AD2F  6D D0 09     Mx
    STA $0BF3                       ; $A7AD32  8D F3 0B     Mx
    BRA L_A7AD64                    ; $A7AD35  80 2D        Mx
L_A7AD37:
    LDA #$2500                      ; $A7AD37  A9 00 25     Mx
    STA $00D1                       ; $A7AD3A  8D D1 00     Mx
    LDA $A58000,X                   ; $A7AD3D  BF 00 80 A5  Mx
    CLC                             ; $A7AD41  18           Mx
    ADC $09B6                       ; $A7AD42  6D B6 09     Mx
    STA $00D0                       ; $A7AD45  8D D0 00     Mx
    LDY #$00                        ; $A7AD48  A0 00        Mx
    LDA [$D0],Y                     ; $A7AD4A  B7 D0        Mx
    STA $0BEF                       ; $A7AD4C  8D EF 0B     Mx
    LDY #$02                        ; $A7AD4F  A0 02        Mx
    LDA [$D0],Y                     ; $A7AD51  B7 D0        Mx
    STA $0BF1                       ; $A7AD53  8D F1 0B     Mx
    LDY #$04                        ; $A7AD56  A0 04        Mx
    LDA [$D0],Y                     ; $A7AD58  B7 D0        Mx
    STA $0BF5                       ; $A7AD5A  8D F5 0B     Mx
    CLC                             ; $A7AD5D  18           Mx
    ADC $09D0                       ; $A7AD5E  6D D0 09     Mx
    STA $0BF3                       ; $A7AD61  8D F3 0B     Mx
L_A7AD64:
    JMP L_A7AD6D                    ; $A7AD64  4C 6D AD     Mx
L_A7AD67:
    LDA #$0003                      ; $A7AD67  A9 03 00     Mx
    STA $09B4                       ; $A7AD6A  8D B4 09     Mx
L_A7AD6D:
    LDA $09B2                       ; $A7AD6D  AD B2 09     Mx
    CMP #$0008                      ; $A7AD70  C9 08 00     Mx
    BNE L_A7AD7D                    ; $A7AD73  D0 08        Mx
    LDA $09B4                       ; $A7AD75  AD B4 09     Mx
    BNE L_A7ADA5                    ; $A7AD78  D0 2B        Mx
    JMP L_A7ADD1                    ; $A7AD7A  4C D1 AD     Mx
L_A7AD7D:
    CMP #$0004                      ; $A7AD7D  C9 04 00     Mx
    BNE L_A7ADA5                    ; $A7AD80  D0 23        Mx
    LDA $0C19                       ; $A7AD82  AD 19 0C     Mx
    BEQ L_A7ADA5                    ; $A7AD85  F0 1E        Mx
    LDA $0A4C                       ; $A7AD87  AD 4C 0A     Mx
    BEQ L_A7ADA5                    ; $A7AD8A  F0 19        Mx
    LDA #$0002                      ; $A7AD8C  A9 02 00     Mx
    STA $0BBF                       ; $A7AD8F  8D BF 0B     Mx
    STZ $0BC1                       ; $A7AD92  9C C1 0B     Mx
    LDX $09AE                       ; $A7AD95  AE AE 09     Mx
    LDA $A7E435,X                   ; $A7AD98  BF 35 E4 A7  Mx
    STA $0BC9                       ; $A7AD9C  8D C9 0B     Mx
    LDA #$0019                      ; $A7AD9F  A9 19 00     Mx
    STA $0A32                       ; $A7ADA2  8D 32 0A     Mx
L_A7ADA5:
    JMP L_A7AE00                    ; $A7ADA5  4C 00 AE     Mx
L_A7ADA8:
    LDA #$000C                      ; $A7ADA8  A9 0C 00     Mx
    STA $09AC                       ; $A7ADAB  8D AC 09     Mx
    LDA #$FFFF                      ; $A7ADAE  A9 FF FF     Mx
    STA $09B2                       ; $A7ADB1  8D B2 09     Mx
    STZ $09B4                       ; $A7ADB4  9C B4 09     Mx
    STZ $09FA                       ; $A7ADB7  9C FA 09     Mx
    STZ $09B0                       ; $A7ADBA  9C B0 09     Mx
    LDA #$FFF8                      ; $A7ADBD  A9 F8 FF     Mx
    STA $09B6                       ; $A7ADC0  8D B6 09     Mx
    LDA $0A3A                       ; $A7ADC3  AD 3A 0A     Mx
    BNE L_A7ADCB                    ; $A7ADC6  D0 03        Mx
    STZ $0A38                       ; $A7ADC8  9C 38 0A     Mx
L_A7ADCB:
    JSR L_A7D16B                    ; $A7ADCB  20 6B D1     Mx
    JMP L_A7AE00                    ; $A7ADCE  4C 00 AE     Mx
L_A7ADD1:
    LDA $09DA                       ; $A7ADD1  AD DA 09     Mx
    BEQ L_A7ADDF                    ; $A7ADD4  F0 09        Mx
    LDA #$0003                      ; $A7ADD6  A9 03 00     Mx
    STA $09B4                       ; $A7ADD9  8D B4 09     Mx
    JMP L_A7AE00                    ; $A7ADDC  4C 00 AE     Mx
L_A7ADDF:
    LDA #$0000                      ; $A7ADDF  A9 00 00     Mx
    STA $09AC                       ; $A7ADE2  8D AC 09     Mx
    LDA #$FFFF                      ; $A7ADE5  A9 FF FF     Mx
    STA $09B2                       ; $A7ADE8  8D B2 09     Mx
    STZ $09B4                       ; $A7ADEB  9C B4 09     Mx
    STZ $09FA                       ; $A7ADEE  9C FA 09     Mx
    STZ $09B0                       ; $A7ADF1  9C B0 09     Mx
    LDA #$FFF8                      ; $A7ADF4  A9 F8 FF     Mx
    STA $09B6                       ; $A7ADF7  8D B6 09     Mx
    LDA #$0014                      ; $A7ADFA  A9 14 00     Mx
    STA $0A30                       ; $A7ADFD  8D 30 0A     Mx
L_A7AE00:
    RTS                             ; $A7AE00  60           Mx
L_A7AE01:
    LDA $09FA                       ; $A7AE01  AD FA 09     Mx
    CMP #$0001                      ; $A7AE04  C9 01 00     Mx
    BEQ L_A7AE2C                    ; $A7AE07  F0 23        Mx
    CMP #$0002                      ; $A7AE09  C9 02 00     Mx
    BEQ L_A7AE6A                    ; $A7AE0C  F0 5C        Mx
    CMP #$0003                      ; $A7AE0E  C9 03 00     Mx
    BNE L_A7AE16                    ; $A7AE11  D0 03        Mx
    JMP L_A7AED5                    ; $A7AE13  4C D5 AE     Mx
L_A7AE16:
    LDA $0A3E                       ; $A7AE16  AD 3E 0A     Mx
    BEQ L_A7AE20                    ; $A7AE19  F0 05        Mx
    LDA #$0036                      ; $A7AE1B  A9 36 00     Mx
    BNE L_A7AE23                    ; $A7AE1E  D0 03        Mx
L_A7AE20:
    LDA #$0030                      ; $A7AE20  A9 30 00     Mx
L_A7AE23:
    STA $09AE                       ; $A7AE23  8D AE 09     Mx
    LDA #$0001                      ; $A7AE26  A9 01 00     Mx
    STA $09FA                       ; $A7AE29  8D FA 09     Mx
L_A7AE2C:
    DEC $09AE                       ; $A7AE2C  CE AE 09     Mx
    DEC $09AE                       ; $A7AE2F  CE AE 09     Mx
    BPL L_A7AE40                    ; $A7AE32  10 0C        Mx
    STZ $09AE                       ; $A7AE34  9C AE 09     Mx
    LDA #$0002                      ; $A7AE37  A9 02 00     Mx
    STA $09FA                       ; $A7AE3A  8D FA 09     Mx
    JMP L_A7AE6A                    ; $A7AE3D  4C 6A AE     Mx
L_A7AE40:
    LDX $09AE                       ; $A7AE40  AE AE 09     Mx
    LDA $A7E3F7,X                   ; $A7AE43  BF F7 E3 A7  Mx
    STA $09E6                       ; $A7AE47  8D E6 09     Mx
    STZ $09E4                       ; $A7AE4A  9C E4 09     Mx
    CPX #$14                        ; $A7AE4D  E0 14        Mx
    BMI L_A7AE5C                    ; $A7AE4F  30 0B        Mx
    LDA $09B2                       ; $A7AE51  AD B2 09     Mx
    CMP #$0003                      ; $A7AE54  C9 03 00     Mx
    BCS L_A7AECF                    ; $A7AE57  B0 76        Mx
    JMP L_A7AEE5                    ; $A7AE59  4C E5 AE     Mx
L_A7AE5C:
    LDA $0C19                       ; $A7AE5C  AD 19 0C     Mx
    BEQ L_A7AECF                    ; $A7AE5F  F0 6E        Mx
    LDA #$0000                      ; $A7AE61  A9 00 00     Mx
    STA $09B4                       ; $A7AE64  8D B4 09     Mx
    JMP L_A7AED5                    ; $A7AE67  4C D5 AE     Mx
L_A7AE6A:
    LDA #$0003                      ; $A7AE6A  A9 03 00     Mx
    STA $09B4                       ; $A7AE6D  8D B4 09     Mx
    LDA $09AE                       ; $A7AE70  AD AE 09     Mx
    CLC                             ; $A7AE73  18           Mx
    ADC #$0002                      ; $A7AE74  69 02 00     Mx
    CMP #$0036                      ; $A7AE77  C9 36 00     Mx
    BCC L_A7AE7F                    ; $A7AE7A  90 03        Mx
    LDA #$0034                      ; $A7AE7C  A9 34 00     Mx
L_A7AE7F:
    STA $09AE                       ; $A7AE7F  8D AE 09     Mx
    TAX                             ; $A7AE82  AA           Mx
    LDA $A7E3F7,X                   ; $A7AE83  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $A7AE87  49 FF FF     Mx
    CLC                             ; $A7AE8A  18           Mx
    ADC #$0001                      ; $A7AE8B  69 01 00     Mx
    STA $09E6                       ; $A7AE8E  8D E6 09     Mx
    STZ $09E4                       ; $A7AE91  9C E4 09     Mx
    LDA $09D8                       ; $A7AE94  AD D8 09     Mx
    CLC                             ; $A7AE97  18           Mx
    ADC $09E4                       ; $A7AE98  6D E4 09     Mx
    STA $00E8                       ; $A7AE9B  8D E8 00     Mx
    LDA $09DA                       ; $A7AE9E  AD DA 09     Mx
    ADC $09E6                       ; $A7AEA1  6D E6 09     Mx
    BPL L_A7AEC1                    ; $A7AEA4  10 1B        Mx
    STZ $09DA                       ; $A7AEA6  9C DA 09     Mx
    STZ $09D8                       ; $A7AEA9  9C D8 09     Mx
    STZ $09CC                       ; $A7AEAC  9C CC 09     Mx
    STZ $09CE                       ; $A7AEAF  9C CE 09     Mx
    STZ $09E6                       ; $A7AEB2  9C E6 09     Mx
    STZ $09E4                       ; $A7AEB5  9C E4 09     Mx
    LDA #$0003                      ; $A7AEB8  A9 03 00     Mx
    STA $09FA                       ; $A7AEBB  8D FA 09     Mx
    JMP L_A7AED5                    ; $A7AEBE  4C D5 AE     Mx
L_A7AEC1:
    LDA $0C19                       ; $A7AEC1  AD 19 0C     Mx
    BEQ L_A7AECF                    ; $A7AEC4  F0 09        Mx
    LDA #$0000                      ; $A7AEC6  A9 00 00     Mx
    STA $09B4                       ; $A7AEC9  8D B4 09     Mx
    JMP L_A7AED5                    ; $A7AECC  4C D5 AE     Mx
L_A7AECF:
    LDA #$0003                      ; $A7AECF  A9 03 00     Mx
    STA $09B4                       ; $A7AED2  8D B4 09     Mx
L_A7AED5:
    LDA $09B2                       ; $A7AED5  AD B2 09     Mx
    CMP #$0005                      ; $A7AED8  C9 05 00     Mx
    BNE L_A7AEE5                    ; $A7AEDB  D0 08        Mx
    LDA $09B4                       ; $A7AEDD  AD B4 09     Mx
    BNE L_A7AF3A                    ; $A7AEE0  D0 58        Mx
    JMP L_A7AF0B                    ; $A7AEE2  4C 0B AF     Mx
L_A7AEE5:
    CMP #$0003                      ; $A7AEE5  C9 03 00     Mx
    BNE L_A7AF3A                    ; $A7AEE8  D0 50        Mx
    LDA $0C19                       ; $A7AEEA  AD 19 0C     Mx
    BEQ L_A7AF3A                    ; $A7AEED  F0 4B        Mx
    LDA $0A4C                       ; $A7AEEF  AD 4C 0A     Mx
    BEQ L_A7AF08                    ; $A7AEF2  F0 14        Mx
    LDA $0A4C                       ; $A7AEF4  AD 4C 0A     Mx
    BEQ L_A7AF3A                    ; $A7AEF7  F0 41        Mx
    LDA #$0002                      ; $A7AEF9  A9 02 00     Mx
    STA $0BBF                       ; $A7AEFC  8D BF 0B     Mx
    STZ $0BC1                       ; $A7AEFF  9C C1 0B     Mx
    LDA #$0019                      ; $A7AF02  A9 19 00     Mx
    STA $0A32                       ; $A7AF05  8D 32 0A     Mx
L_A7AF08:
    JMP L_A7AF3A                    ; $A7AF08  4C 3A AF     Mx
L_A7AF0B:
    LDA $09DA                       ; $A7AF0B  AD DA 09     Mx
    BEQ L_A7AF19                    ; $A7AF0E  F0 09        Mx
    LDA #$0003                      ; $A7AF10  A9 03 00     Mx
    STA $09B4                       ; $A7AF13  8D B4 09     Mx
    JMP L_A7AF3A                    ; $A7AF16  4C 3A AF     Mx
L_A7AF19:
    LDA #$0000                      ; $A7AF19  A9 00 00     Mx
    STA $09AC                       ; $A7AF1C  8D AC 09     Mx
    LDA #$FFFF                      ; $A7AF1F  A9 FF FF     Mx
    STA $09B2                       ; $A7AF22  8D B2 09     Mx
    STZ $09B4                       ; $A7AF25  9C B4 09     Mx
    STZ $09FA                       ; $A7AF28  9C FA 09     Mx
    STZ $09B0                       ; $A7AF2B  9C B0 09     Mx
    LDA #$FFF8                      ; $A7AF2E  A9 F8 FF     Mx
    STA $09B6                       ; $A7AF31  8D B6 09     Mx
    LDA #$0014                      ; $A7AF34  A9 14 00     Mx
    STA $0A30                       ; $A7AF37  8D 30 0A     Mx
L_A7AF3A:
    RTS                             ; $A7AF3A  60           Mx
L_A7AF3B:
    LDA $09FA                       ; $A7AF3B  AD FA 09     Mx
    CMP #$0001                      ; $A7AF3E  C9 01 00     Mx
    BEQ L_A7AF76                    ; $A7AF41  F0 33        Mx
    CMP #$0002                      ; $A7AF43  C9 02 00     Mx
    BEQ L_A7AFC0                    ; $A7AF46  F0 78        Mx
    CMP #$0003                      ; $A7AF48  C9 03 00     Mx
    BNE L_A7AF50                    ; $A7AF4B  D0 03        Mx
    JMP L_A7B03D                    ; $A7AF4D  4C 3D B0     Mx
L_A7AF50:
    LDA $0A3E                       ; $A7AF50  AD 3E 0A     Mx
    BEQ L_A7AF5A                    ; $A7AF53  F0 05        Mx
    LDA #$003E                      ; $A7AF55  A9 3E 00     Mx
    BNE L_A7AF5D                    ; $A7AF58  D0 03        Mx
L_A7AF5A:
    LDA #$0036                      ; $A7AF5A  A9 36 00     Mx
L_A7AF5D:
    STA $09AE                       ; $A7AF5D  8D AE 09     Mx
    LDA $09B2                       ; $A7AF60  AD B2 09     Mx
    CMP #$0001                      ; $A7AF63  C9 01 00     Mx
    BEQ L_A7AF70                    ; $A7AF66  F0 08        Mx
    LDA $0A28                       ; $A7AF68  AD 28 0A     Mx
    BNE L_A7AF78                    ; $A7AF6B  D0 0B        Mx
    JMP L_A7B088                    ; $A7AF6D  4C 88 B0     Mx
L_A7AF70:
    LDA #$0001                      ; $A7AF70  A9 01 00     Mx
    STA $09FA                       ; $A7AF73  8D FA 09     Mx
L_A7AF76:
    BRA L_A7AF7B                    ; $A7AF76  80 03        Mx
L_A7AF78:
    JMP L_A7B0D3                    ; $A7AF78  4C D3 B0     Mx
L_A7AF7B:
    LDA $09AC                       ; $A7AF7B  AD AC 09     Mx
    CMP #$001C                      ; $A7AF7E  C9 1C 00     Mx
    BNE L_A7AF89                    ; $A7AF81  D0 06        Mx
    LDA #$FFFF                      ; $A7AF83  A9 FF FF     Mx
    STA $09E2                       ; $A7AF86  8D E2 09     Mx
L_A7AF89:
    DEC $09AE                       ; $A7AF89  CE AE 09     Mx
    DEC $09AE                       ; $A7AF8C  CE AE 09     Mx
    BPL L_A7AF9D                    ; $A7AF8F  10 0C        Mx
    STZ $09AE                       ; $A7AF91  9C AE 09     Mx
    LDA #$0002                      ; $A7AF94  A9 02 00     Mx
    STA $09FA                       ; $A7AF97  8D FA 09     Mx
    JMP L_A7AFC0                    ; $A7AF9A  4C C0 AF     Mx
L_A7AF9D:
    LDX $09AE                       ; $A7AF9D  AE AE 09     Mx
    LDA $A7E3F7,X                   ; $A7AFA0  BF F7 E3 A7  Mx
    STA $09E6                       ; $A7AFA4  8D E6 09     Mx
    STZ $09E4                       ; $A7AFA7  9C E4 09     Mx
    LDA $0A28                       ; $A7AFAA  AD 28 0A     Mx
    BNE L_A7AFBD                    ; $A7AFAD  D0 0E        Mx
    LDA $0C19                       ; $A7AFAF  AD 19 0C     Mx
    BEQ L_A7AFBD                    ; $A7AFB2  F0 09        Mx
    LDA #$0000                      ; $A7AFB4  A9 00 00     Mx
    STA $09B4                       ; $A7AFB7  8D B4 09     Mx
    JMP L_A7B03D                    ; $A7AFBA  4C 3D B0     Mx
L_A7AFBD:
    JMP L_A7B037                    ; $A7AFBD  4C 37 B0     Mx
L_A7AFC0:
    LDA #$0003                      ; $A7AFC0  A9 03 00     Mx
    STA $09B4                       ; $A7AFC3  8D B4 09     Mx
    LDA $09AE                       ; $A7AFC6  AD AE 09     Mx
    CLC                             ; $A7AFC9  18           Mx
    ADC #$0002                      ; $A7AFCA  69 02 00     Mx
    CMP #$0036                      ; $A7AFCD  C9 36 00     Mx
    BCC L_A7AFD5                    ; $A7AFD0  90 03        Mx
    LDA #$0034                      ; $A7AFD2  A9 34 00     Mx
L_A7AFD5:
    STA $09AE                       ; $A7AFD5  8D AE 09     Mx
    TAX                             ; $A7AFD8  AA           Mx
    LDA $A7E3F7,X                   ; $A7AFD9  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $A7AFDD  49 FF FF     Mx
    CLC                             ; $A7AFE0  18           Mx
    ADC #$0001                      ; $A7AFE1  69 01 00     Mx
    STA $09E6                       ; $A7AFE4  8D E6 09     Mx
    STZ $09E4                       ; $A7AFE7  9C E4 09     Mx
    LDA $09D8                       ; $A7AFEA  AD D8 09     Mx
    CLC                             ; $A7AFED  18           Mx
    ADC $09E4                       ; $A7AFEE  6D E4 09     Mx
    STA $00E8                       ; $A7AFF1  8D E8 00     Mx
    LDA $09DA                       ; $A7AFF4  AD DA 09     Mx
    ADC $09E6                       ; $A7AFF7  6D E6 09     Mx
    BPL L_A7B01D                    ; $A7AFFA  10 21        Mx
    STZ $09DA                       ; $A7AFFC  9C DA 09     Mx
    STZ $09D8                       ; $A7AFFF  9C D8 09     Mx
    STZ $09CC                       ; $A7B002  9C CC 09     Mx
    STZ $09CE                       ; $A7B005  9C CE 09     Mx
    STZ $09E6                       ; $A7B008  9C E6 09     Mx
    STZ $09E4                       ; $A7B00B  9C E4 09     Mx
    STZ $09E2                       ; $A7B00E  9C E2 09     Mx
    STZ $09E0                       ; $A7B011  9C E0 09     Mx
    LDA #$0003                      ; $A7B014  A9 03 00     Mx
    STA $09FA                       ; $A7B017  8D FA 09     Mx
    JMP L_A7B03D                    ; $A7B01A  4C 3D B0     Mx
L_A7B01D:
    CPX #$2E                        ; $A7B01D  E0 2E        Mx
    BCC L_A7B024                    ; $A7B01F  90 03        Mx
    JMP L_A7B02E                    ; $A7B021  4C 2E B0     Mx
L_A7B024:
    LDA $0A28                       ; $A7B024  AD 28 0A     Mx
    BNE L_A7B037                    ; $A7B027  D0 0E        Mx
    LDA $0C19                       ; $A7B029  AD 19 0C     Mx
    BEQ L_A7B037                    ; $A7B02C  F0 09        Mx
L_A7B02E:
    LDA #$0000                      ; $A7B02E  A9 00 00     Mx
    STA $09B4                       ; $A7B031  8D B4 09     Mx
    JMP L_A7B03D                    ; $A7B034  4C 3D B0     Mx
L_A7B037:
    LDA #$0003                      ; $A7B037  A9 03 00     Mx
    STA $09B4                       ; $A7B03A  8D B4 09     Mx
L_A7B03D:
    LDA $09B2                       ; $A7B03D  AD B2 09     Mx
    CMP #$0006                      ; $A7B040  C9 06 00     Mx
    BEQ L_A7B052                    ; $A7B043  F0 0D        Mx
    CMP #$0003                      ; $A7B045  C9 03 00     Mx
    BNE L_A7B05A                    ; $A7B048  D0 10        Mx
    LDA $09AC                       ; $A7B04A  AD AC 09     Mx
    CMP #$001C                      ; $A7B04D  C9 1C 00     Mx
    BNE L_A7B05A                    ; $A7B050  D0 08        Mx
L_A7B052:
    LDA $09B4                       ; $A7B052  AD B4 09     Mx
    BNE L_A7B0D3                    ; $A7B055  D0 7C        Mx
    JMP L_A7B0A4                    ; $A7B057  4C A4 B0     Mx
L_A7B05A:
    LDA $09B2                       ; $A7B05A  AD B2 09     Mx
    CMP #$0002                      ; $A7B05D  C9 02 00     Mx
    BNE L_A7B0D3                    ; $A7B060  D0 71        Mx
    LDA $0C19                       ; $A7B062  AD 19 0C     Mx
    BEQ L_A7B0D3                    ; $A7B065  F0 6C        Mx
    LDA $0A4C                       ; $A7B067  AD 4C 0A     Mx
    BEQ L_A7B085                    ; $A7B06A  F0 19        Mx
    LDA #$0002                      ; $A7B06C  A9 02 00     Mx
    STA $0BBF                       ; $A7B06F  8D BF 0B     Mx
    STZ $0BC1                       ; $A7B072  9C C1 0B     Mx
    LDX $09AE                       ; $A7B075  AE AE 09     Mx
    LDA $A7E435,X                   ; $A7B078  BF 35 E4 A7  Mx
    STA $0BC9                       ; $A7B07C  8D C9 0B     Mx
    LDA #$0019                      ; $A7B07F  A9 19 00     Mx
    STA $0A32                       ; $A7B082  8D 32 0A     Mx
L_A7B085:
    JMP L_A7B0D3                    ; $A7B085  4C D3 B0     Mx
L_A7B088:
    LDA $0A3A                       ; $A7B088  AD 3A 0A     Mx
    BEQ L_A7B093                    ; $A7B08B  F0 06        Mx
    LDA #$0001                      ; $A7B08D  A9 01 00     Mx
    STA $0A38                       ; $A7B090  8D 38 0A     Mx
L_A7B093:
    JSR L_A7D16B                    ; $A7B093  20 6B D1     Mx
    LDA $09AC                       ; $A7B096  AD AC 09     Mx
    CMP #$002E                      ; $A7B099  C9 2E 00     Mx
    BEQ L_A7B0CD                    ; $A7B09C  F0 2F        Mx
    LDA #$000C                      ; $A7B09E  A9 0C 00     Mx
    JMP L_A7B0B5                    ; $A7B0A1  4C B5 B0     Mx
L_A7B0A4:
    LDA $09DA                       ; $A7B0A4  AD DA 09     Mx
    BEQ L_A7B0B2                    ; $A7B0A7  F0 09        Mx
    LDA #$0003                      ; $A7B0A9  A9 03 00     Mx
    STA $09B4                       ; $A7B0AC  8D B4 09     Mx
    JMP L_A7B0D3                    ; $A7B0AF  4C D3 B0     Mx
L_A7B0B2:
    LDA #$0000                      ; $A7B0B2  A9 00 00     Mx
L_A7B0B5:
    STA $09AC                       ; $A7B0B5  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B0B8  A9 FF FF     Mx
    STA $09B2                       ; $A7B0BB  8D B2 09     Mx
    STZ $09B4                       ; $A7B0BE  9C B4 09     Mx
    STZ $09FA                       ; $A7B0C1  9C FA 09     Mx
    STZ $09B0                       ; $A7B0C4  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B0C7  A9 F8 FF     Mx
    STA $09B6                       ; $A7B0CA  8D B6 09     Mx
L_A7B0CD:
    LDA #$0014                      ; $A7B0CD  A9 14 00     Mx
    STA $0A30                       ; $A7B0D0  8D 30 0A     Mx
L_A7B0D3:
    RTS                             ; $A7B0D3  60           Mx
L_A7B0D4:
    LDA $09B2                       ; $A7B0D4  AD B2 09     Mx
    CMP #$0005                      ; $A7B0D7  C9 05 00     Mx
    BEQ L_A7B0E9                    ; $A7B0DA  F0 0D        Mx
    CMP #$0004                      ; $A7B0DC  C9 04 00     Mx
    BNE L_A7B12F                    ; $A7B0DF  D0 4E        Mx
    LDA $0C19                       ; $A7B0E1  AD 19 0C     Mx
    BNE L_A7B0F1                    ; $A7B0E4  D0 0B        Mx
    JMP L_A7B12F                    ; $A7B0E6  4C 2F B1     Mx
L_A7B0E9:
    LDA $09B4                       ; $A7B0E9  AD B4 09     Mx
    BNE L_A7B12F                    ; $A7B0EC  D0 41        Mx
    JMP L_A7B10E                    ; $A7B0EE  4C 0E B1     Mx
L_A7B0F1:
    LDA $0A4C                       ; $A7B0F1  AD 4C 0A     Mx
    BEQ L_A7B10B                    ; $A7B0F4  F0 15        Mx
    LDA #$0002                      ; $A7B0F6  A9 02 00     Mx
    STA $0BBF                       ; $A7B0F9  8D BF 0B     Mx
    STZ $0BC1                       ; $A7B0FC  9C C1 0B     Mx
    LDX $09AE                       ; $A7B0FF  AE AE 09     Mx
    STZ $0BC9                       ; $A7B102  9C C9 0B     Mx
    LDA #$0019                      ; $A7B105  A9 19 00     Mx
    STA $0A32                       ; $A7B108  8D 32 0A     Mx
L_A7B10B:
    JMP L_A7B12F                    ; $A7B10B  4C 2F B1     Mx
L_A7B10E:
    LDA #$0000                      ; $A7B10E  A9 00 00     Mx
    STA $09AC                       ; $A7B111  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B114  A9 FF FF     Mx
    STA $09B2                       ; $A7B117  8D B2 09     Mx
    STZ $09B4                       ; $A7B11A  9C B4 09     Mx
    STZ $09FA                       ; $A7B11D  9C FA 09     Mx
    STZ $09B0                       ; $A7B120  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B123  A9 F8 FF     Mx
    STA $09B6                       ; $A7B126  8D B6 09     Mx
    LDA #$0014                      ; $A7B129  A9 14 00     Mx
    STA $0A30                       ; $A7B12C  8D 30 0A     Mx
L_A7B12F:
    RTS                             ; $A7B12F  60           Mx
L_A7B130:
    LDA $09B2                       ; $A7B130  AD B2 09     Mx
    CMP #$0001                      ; $A7B133  C9 01 00     Mx
    BEQ L_A7B177                    ; $A7B136  F0 3F        Mx
    CMP #$0002                      ; $A7B138  C9 02 00     Mx
    BEQ L_A7B18C                    ; $A7B13B  F0 4F        Mx
    CMP #$0005                      ; $A7B13D  C9 05 00     Mx
    BEQ L_A7B16F                    ; $A7B140  F0 2D        Mx
    CMP #$0003                      ; $A7B142  C9 03 00     Mx
    BNE L_A7B15C                    ; $A7B145  D0 15        Mx
    LDA $09AC                       ; $A7B147  AD AC 09     Mx
    CMP #$001A                      ; $A7B14A  C9 1A 00     Mx
    BEQ L_A7B16F                    ; $A7B14D  F0 20        Mx
    CMP #$003E                      ; $A7B14F  C9 3E 00     Mx
    BEQ L_A7B16F                    ; $A7B152  F0 1B        Mx
    CMP #$0040                      ; $A7B154  C9 40 00     Mx
    BEQ L_A7B16F                    ; $A7B157  F0 16        Mx
    JMP L_A7B212                    ; $A7B159  4C 12 B2     Mx
L_A7B15C:
    CMP #$0002                      ; $A7B15C  C9 02 00     Mx
    BEQ L_A7B164                    ; $A7B15F  F0 03        Mx
L_A7B161:
    JMP L_A7B212                    ; $A7B161  4C 12 B2     Mx
L_A7B164:
    LDA $09AC                       ; $A7B164  AD AC 09     Mx
L_A7B167:
    CMP #$0012                      ; $A7B167  C9 12 00     Mx
    BEQ L_A7B16F                    ; $A7B16A  F0 03        Mx
    JMP L_A7B212                    ; $A7B16C  4C 12 B2     Mx
L_A7B16F:
    LDA $09B4                       ; $A7B16F  AD B4 09     Mx
    BNE L_A7B161                    ; $A7B172  D0 ED        Mx
    JMP L_A7B1F7                    ; $A7B174  4C F7 B1     Mx
L_A7B177:
    LDA $09AC                       ; $A7B177  AD AC 09     Mx
    CMP #$0012                      ; $A7B17A  C9 12 00     Mx
    BEQ L_A7B19E                    ; $A7B17D  F0 1F        Mx
    CMP #$003E                      ; $A7B17F  C9 3E 00     Mx
    BEQ L_A7B19E                    ; $A7B182  F0 1A        Mx
    CMP #$0040                      ; $A7B184  C9 40 00     Mx
    BEQ L_A7B19E                    ; $A7B187  F0 15        Mx
    JMP L_A7B212                    ; $A7B189  4C 12 B2     Mx
L_A7B18C:
    LDA $09AC                       ; $A7B18C  AD AC 09     Mx
    CMP #$000A                      ; $A7B18F  C9 0A 00     Mx
    BEQ L_A7B19E                    ; $A7B192  F0 0A        Mx
    CMP #$001A                      ; $A7B194  C9 1A 00     Mx
    BEQ L_A7B19E                    ; $A7B197  F0 05        Mx
    CMP #$0016                      ; $A7B199  C9 16 00     Mx
    BNE L_A7B167                    ; $A7B19C  D0 C9        Mx
L_A7B19E:
    LDA $09B4                       ; $A7B19E  AD B4 09     Mx
    BEQ L_A7B1A6                    ; $A7B1A1  F0 03        Mx
    JMP L_A7B212                    ; $A7B1A3  4C 12 B2     Mx
L_A7B1A6:
    LDA $0C19                       ; $A7B1A6  AD 19 0C     Mx
    CMP $09A8                       ; $A7B1A9  CD A8 09     Mx
    BNE L_A7B212                    ; $A7B1AC  D0 64        Mx
    LDA $0A3E                       ; $A7B1AE  AD 3E 0A     Mx
    STA $00A4                       ; $A7B1B1  8D A4 00     Mx
    LDA $09DA                       ; $A7B1B4  AD DA 09     Mx
    STA $00A6                       ; $A7B1B7  8D A6 00     Mx
    LDA $0974                       ; $A7B1BA  AD 74 09     Mx
    STA $0B88                       ; $A7B1BD  8D 88 0B     Mx
    LDA $08EE                       ; $A7B1C0  AD EE 08     Mx
    STA $00AA                       ; $A7B1C3  8D AA 00     Mx
    LDA $08F2                       ; $A7B1C6  AD F2 08     Mx
    STA $00AC                       ; $A7B1C9  8D AC 00     Mx
    LDA $08F6                       ; $A7B1CC  AD F6 08     Mx
    STA $00AE                       ; $A7B1CF  8D AE 00     Mx
    LDA $08F9                       ; $A7B1D2  AD F9 08     Mx
    STA $00A8                       ; $A7B1D5  8D A8 00     Mx
    LDA $0901                       ; $A7B1D8  AD 01 09     Mx
    STA $00B0                       ; $A7B1DB  8D B0 00     Mx
    JSL L_A7DCCB                    ; $A7B1DE  22 CB DC A7  Mx
    LDA $00DC                       ; $A7B1E2  AD DC 00     Mx
    STA $0972                       ; $A7B1E5  8D 72 09     Mx
    LDA #$0019                      ; $A7B1E8  A9 19 00     Mx
    STA $0A32                       ; $A7B1EB  8D 32 0A     Mx
    LDA #$0014                      ; $A7B1EE  A9 14 00     Mx
    STA $0A30                       ; $A7B1F1  8D 30 0A     Mx
    JMP L_A7B212                    ; $A7B1F4  4C 12 B2     Mx
L_A7B1F7:
    LDA #$0000                      ; $A7B1F7  A9 00 00     Mx
    STA $09AC                       ; $A7B1FA  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B1FD  A9 FF FF     Mx
    STA $09B2                       ; $A7B200  8D B2 09     Mx
    STZ $09B4                       ; $A7B203  9C B4 09     Mx
    STZ $09FA                       ; $A7B206  9C FA 09     Mx
    STZ $09B0                       ; $A7B209  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B20C  A9 F8 FF     Mx
    STA $09B6                       ; $A7B20F  8D B6 09     Mx
L_A7B212:
    RTS                             ; $A7B212  60           Mx
L_A7B213:
    LDA $0C19                       ; $A7B213  AD 19 0C     Mx
    CMP $09A8                       ; $A7B216  CD A8 09     Mx
    BEQ L_A7B221                    ; $A7B219  F0 06        Mx
    LDA #$0000                      ; $A7B21B  A9 00 00     Mx
    JMP L_A7B231                    ; $A7B21E  4C 31 B2     Mx
L_A7B221:
    LDA $0A24                       ; $A7B221  AD 24 0A     Mx
    AND #$0F00                      ; $A7B224  29 00 0F     Mx
    BEQ L_A7B28A                    ; $A7B227  F0 61        Mx
L_A7B229:
    LDA $0A38                       ; $A7B229  AD 38 0A     Mx
    BNE L_A7B24C                    ; $A7B22C  D0 1E        Mx
    LDA #$0004                      ; $A7B22E  A9 04 00     Mx
L_A7B231:
    STA $09AC                       ; $A7B231  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B234  A9 FF FF     Mx
    STA $09B2                       ; $A7B237  8D B2 09     Mx
    STZ $09B4                       ; $A7B23A  9C B4 09     Mx
    STZ $09FA                       ; $A7B23D  9C FA 09     Mx
    STZ $09B0                       ; $A7B240  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B243  A9 F8 FF     Mx
    STA $09B6                       ; $A7B246  8D B6 09     Mx
    JMP L_A7B2BC                    ; $A7B249  4C BC B2     Mx
L_A7B24C:
    LDA $09C0                       ; $A7B24C  AD C0 09     Mx
    STA $00A4                       ; $A7B24F  8D A4 00     Mx
    LDX $09C0                       ; $A7B252  AE C0 09     Mx
    LDA $A7E35F,X                   ; $A7B255  BF 5F E3 A7  Mx
    STA $00EA                       ; $A7B259  8D EA 00     Mx
    SEP #$20                        ; $A7B25C  E2 20        Mx
    LDA $0A25                       ; $A7B25E  AD 25 0A     mx
    AND #$0F                        ; $A7B261  29 0F        mx
    BNE L_A7B268                    ; $A7B263  D0 03        mx
    LDA $00EA                       ; $A7B265  AD EA 00     mx
L_A7B268:
    TAX                             ; $A7B268  AA           mx
    LDA $A7E367,X                   ; $A7B269  BF 67 E3 A7  mx
    AND #$07                        ; $A7B26D  29 07        mx
    STA $09C0                       ; $A7B26F  8D C0 09     mx
    REP #$20                        ; $A7B272  C2 20        mx
    LDA $09C0                       ; $A7B274  AD C0 09     Mx
    CMP $00A4                       ; $A7B277  CD A4 00     Mx
    BEQ L_A7B282                    ; $A7B27A  F0 06        Mx
    LDA #$003C                      ; $A7B27C  A9 3C 00     Mx
    STA $09AE                       ; $A7B27F  8D AE 09     Mx
L_A7B282:
    LDA $09AE                       ; $A7B282  AD AE 09     Mx
    BNE L_A7B29E                    ; $A7B285  D0 17        Mx
    JMP L_A7B2BC                    ; $A7B287  4C BC B2     Mx
L_A7B28A:
    LDA $09E2                       ; $A7B28A  AD E2 09     Mx
    ORA $09E0                       ; $A7B28D  0D E0 09     Mx
    ORA $09EA                       ; $A7B290  0D EA 09     Mx
    ORA $09E8                       ; $A7B293  0D E8 09     Mx
    ORA $09E6                       ; $A7B296  0D E6 09     Mx
    ORA $09E4                       ; $A7B299  0D E4 09     Mx
    BNE L_A7B229                    ; $A7B29C  D0 8B        Mx
L_A7B29E:
    DEC $09AE                       ; $A7B29E  CE AE 09     Mx
    BEQ L_A7B2AB                    ; $A7B2A1  F0 08        Mx
    LDA $09AE                       ; $A7B2A3  AD AE 09     Mx
    BNE L_A7B2BC                    ; $A7B2A6  D0 14        Mx
    JMP L_A7B2AB                    ; $A7B2A8  4C AB B2     Mx
L_A7B2AB:
    LDA $0A0E                       ; $A7B2AB  AD 0E 0A     Mx
    TAX                             ; $A7B2AE  AA           Mx
    LDA $A7E377,X                   ; $A7B2AF  BF 77 E3 A7  Mx
    AND #$00FF                      ; $A7B2B3  29 FF 00     Mx
    AND #$0007                      ; $A7B2B6  29 07 00     Mx
    STA $09C0                       ; $A7B2B9  8D C0 09     Mx
L_A7B2BC:
    LDA $0A28                       ; $A7B2BC  AD 28 0A     Mx
    BNE L_A7B2C4                    ; $A7B2BF  D0 03        Mx
    JMP L_A7B2CA                    ; $A7B2C1  4C CA B2     Mx
L_A7B2C4:
    JSR L_A7D526                    ; $A7B2C4  20 26 D5     Mx
    JMP L_A7B2D2                    ; $A7B2C7  4C D2 B2     Mx
L_A7B2CA:
    LDA $0A2C                       ; $A7B2CA  AD 2C 0A     Mx
    BEQ L_A7B2D2                    ; $A7B2CD  F0 03        Mx
    JSR L_A7D1EB                    ; $A7B2CF  20 EB D1     Mx
L_A7B2D2:
    RTS                             ; $A7B2D2  60           Mx
L_A7B2D3:
    LDA $09B2                       ; $A7B2D3  AD B2 09     Mx
    CMP #$0003                      ; $A7B2D6  C9 03 00     Mx
    BNE L_A7B2DE                    ; $A7B2D9  D0 03        Mx
    JMP L_A7B354                    ; $A7B2DB  4C 54 B3     Mx
L_A7B2DE:
    BCS L_A7B2E3                    ; $A7B2DE  B0 03        Mx
    JMP L_A7B3CC                    ; $A7B2E0  4C CC B3     Mx
L_A7B2E3:
    LDA $09CC                       ; $A7B2E3  AD CC 09     Mx
    BPL L_A7B345                    ; $A7B2E6  10 5D        Mx
L_A7B2E8:
    STZ $09DA                       ; $A7B2E8  9C DA 09     Mx
    STZ $09D8                       ; $A7B2EB  9C D8 09     Mx
    STZ $09CC                       ; $A7B2EE  9C CC 09     Mx
    STZ $09CE                       ; $A7B2F1  9C CE 09     Mx
    STZ $09E6                       ; $A7B2F4  9C E6 09     Mx
    STZ $09E4                       ; $A7B2F7  9C E4 09     Mx
    LDA $09B2                       ; $A7B2FA  AD B2 09     Mx
    CMP #$0008                      ; $A7B2FD  C9 08 00     Mx
    BEQ L_A7B305                    ; $A7B300  F0 03        Mx
    JMP L_A7B3CC                    ; $A7B302  4C CC B3     Mx
L_A7B305:
    LDA $0A4C                       ; $A7B305  AD 4C 0A     Mx
    BEQ L_A7B31B                    ; $A7B308  F0 11        Mx
    JSR L_A7D16B                    ; $A7B30A  20 6B D1     Mx
    LDA $09AC                       ; $A7B30D  AD AC 09     Mx
    CMP #$002E                      ; $A7B310  C9 2E 00     Mx
    BEQ L_A7B336                    ; $A7B313  F0 21        Mx
    LDA #$000C                      ; $A7B315  A9 0C 00     Mx
    JMP L_A7B31E                    ; $A7B318  4C 1E B3     Mx
L_A7B31B:
    LDA #$0000                      ; $A7B31B  A9 00 00     Mx
L_A7B31E:
    STA $09AC                       ; $A7B31E  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B321  A9 FF FF     Mx
    STA $09B2                       ; $A7B324  8D B2 09     Mx
    STZ $09B4                       ; $A7B327  9C B4 09     Mx
    STZ $09FA                       ; $A7B32A  9C FA 09     Mx
    STZ $09B0                       ; $A7B32D  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B330  A9 F8 FF     Mx
    STA $09B6                       ; $A7B333  8D B6 09     Mx
L_A7B336:
    STZ $09E2                       ; $A7B336  9C E2 09     Mx
    STZ $09E0                       ; $A7B339  9C E0 09     Mx
    STZ $09EA                       ; $A7B33C  9C EA 09     Mx
    STZ $09E8                       ; $A7B33F  9C E8 09     Mx
    JMP L_A7B3CC                    ; $A7B342  4C CC B3     Mx
L_A7B345:
    LDA $09CC                       ; $A7B345  AD CC 09     Mx
    BNE L_A7B354                    ; $A7B348  D0 0A        Mx
    LDA $09E6                       ; $A7B34A  AD E6 09     Mx
    BMI L_A7B2E8                    ; $A7B34D  30 99        Mx
    ORA $09E4                       ; $A7B34F  0D E4 09     Mx
    BEQ L_A7B2E8                    ; $A7B352  F0 94        Mx
L_A7B354:
    LDA $09EC                       ; $A7B354  AD EC 09     Mx
    BEQ L_A7B380                    ; $A7B357  F0 27        Mx
    LDA $09EC                       ; $A7B359  AD EC 09     Mx
    STA $09E6                       ; $A7B35C  8D E6 09     Mx
    LDA $09EE                       ; $A7B35F  AD EE 09     Mx
    STA $09E4                       ; $A7B362  8D E4 09     Mx
    LDA $09F0                       ; $A7B365  AD F0 09     Mx
    STA $09E2                       ; $A7B368  8D E2 09     Mx
    LDA $09F2                       ; $A7B36B  AD F2 09     Mx
    STA $09E0                       ; $A7B36E  8D E0 09     Mx
    LDA $09F4                       ; $A7B371  AD F4 09     Mx
    STA $09EA                       ; $A7B374  8D EA 09     Mx
    LDA $09F6                       ; $A7B377  AD F6 09     Mx
    STA $09E8                       ; $A7B37A  8D E8 09     Mx
    STZ $09EC                       ; $A7B37D  9C EC 09     Mx
L_A7B380:
    LDA $09E4                       ; $A7B380  AD E4 09     Mx
    SEC                             ; $A7B383  38           Mx
    SBC #$2500                      ; $A7B384  E9 00 25     Mx
    STA $09E4                       ; $A7B387  8D E4 09     Mx
    LDA $09E6                       ; $A7B38A  AD E6 09     Mx
    SBC #$0000                      ; $A7B38D  E9 00 00     Mx
    STA $09E6                       ; $A7B390  8D E6 09     Mx
    LDA $09B2                       ; $A7B393  AD B2 09     Mx
    CMP #$0007                      ; $A7B396  C9 07 00     Mx
    BEQ L_A7B3C6                    ; $A7B399  F0 2B        Mx
    CMP #$0003                      ; $A7B39B  C9 03 00     Mx
    BNE L_A7B3CC                    ; $A7B39E  D0 2C        Mx
    LDA $09E4                       ; $A7B3A0  AD E4 09     Mx
    SEC                             ; $A7B3A3  38           Mx
    SBC #$9A00                      ; $A7B3A4  E9 00 9A     Mx
    LDA $09E6                       ; $A7B3A7  AD E6 09     Mx
    SBC #$0002                      ; $A7B3AA  E9 02 00     Mx
    BPL L_A7B3C6                    ; $A7B3AD  10 17        Mx
    LDA $09B4                       ; $A7B3AF  AD B4 09     Mx
    BNE L_A7B3CC                    ; $A7B3B2  D0 18        Mx
    LDA $09B2                       ; $A7B3B4  AD B2 09     Mx
    CMP #$0003                      ; $A7B3B7  C9 03 00     Mx
    BNE L_A7B3CC                    ; $A7B3BA  D0 10        Mx
    LDA #$0008                      ; $A7B3BC  A9 08 00     Mx
    JSL L_BDFDF3                    ; $A7B3BF  22 F3 FD BD  Mx
    JMP L_A7B3CC                    ; $A7B3C3  4C CC B3     Mx
L_A7B3C6:
    LDA #$0001                      ; $A7B3C6  A9 01 00     Mx
    STA $09B4                       ; $A7B3C9  8D B4 09     Mx
L_A7B3CC:
    RTS                             ; $A7B3CC  60           Mx
L_A7B3CD:
    LDA $09CC                       ; $A7B3CD  AD CC 09     Mx
    BPL L_A7B450                    ; $A7B3D0  10 7E        Mx
L_A7B3D2:
    STZ $09DA                       ; $A7B3D2  9C DA 09     Mx
    STZ $09D8                       ; $A7B3D5  9C D8 09     Mx
    STZ $09CC                       ; $A7B3D8  9C CC 09     Mx
    STZ $09CE                       ; $A7B3DB  9C CE 09     Mx
    STZ $09E6                       ; $A7B3DE  9C E6 09     Mx
    STZ $09E4                       ; $A7B3E1  9C E4 09     Mx
    LDA $09B2                       ; $A7B3E4  AD B2 09     Mx
    CMP #$0004                      ; $A7B3E7  C9 04 00     Mx
    BEQ L_A7B3FF                    ; $A7B3EA  F0 13        Mx
    CMP #$0003                      ; $A7B3EC  C9 03 00     Mx
    BEQ L_A7B3F4                    ; $A7B3EF  F0 03        Mx
    JMP L_A7B541                    ; $A7B3F1  4C 41 B5     Mx
L_A7B3F4:
    LDA $09AC                       ; $A7B3F4  AD AC 09     Mx
    CMP #$0020                      ; $A7B3F7  C9 20 00     Mx
    BEQ L_A7B3FF                    ; $A7B3FA  F0 03        Mx
    JMP L_A7B541                    ; $A7B3FC  4C 41 B5     Mx
L_A7B3FF:
    LDA $09A8                       ; $A7B3FF  AD A8 09     Mx
    AND #$00FF                      ; $A7B402  29 FF 00     Mx
    CMP $0A9C                       ; $A7B405  CD 9C 0A     Mx
    BNE L_A7B40D                    ; $A7B408  D0 03        Mx
    STZ $0A9C                       ; $A7B40A  9C 9C 0A     Mx
L_A7B40D:
    LDA $0A4C                       ; $A7B40D  AD 4C 0A     Mx
    BEQ L_A7B426                    ; $A7B410  F0 14        Mx
    STZ $0A38                       ; $A7B412  9C 38 0A     Mx
    JSR L_A7D16B                    ; $A7B415  20 6B D1     Mx
    LDA $09AC                       ; $A7B418  AD AC 09     Mx
    CMP #$002E                      ; $A7B41B  C9 2E 00     Mx
    BEQ L_A7B441                    ; $A7B41E  F0 21        Mx
    LDA #$000C                      ; $A7B420  A9 0C 00     Mx
    JMP L_A7B429                    ; $A7B423  4C 29 B4     Mx
L_A7B426:
    LDA #$0000                      ; $A7B426  A9 00 00     Mx
L_A7B429:
    STA $09AC                       ; $A7B429  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B42C  A9 FF FF     Mx
    STA $09B2                       ; $A7B42F  8D B2 09     Mx
    STZ $09B4                       ; $A7B432  9C B4 09     Mx
    STZ $09FA                       ; $A7B435  9C FA 09     Mx
    STZ $09B0                       ; $A7B438  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B43B  A9 F8 FF     Mx
    STA $09B6                       ; $A7B43E  8D B6 09     Mx
L_A7B441:
    STZ $09E2                       ; $A7B441  9C E2 09     Mx
    STZ $09E0                       ; $A7B444  9C E0 09     Mx
    STZ $09EA                       ; $A7B447  9C EA 09     Mx
    STZ $09E8                       ; $A7B44A  9C E8 09     Mx
    JMP L_A7B541                    ; $A7B44D  4C 41 B5     Mx
L_A7B450:
    LDA $09CC                       ; $A7B450  AD CC 09     Mx
    BNE L_A7B462                    ; $A7B453  D0 0D        Mx
    LDA $09E6                       ; $A7B455  AD E6 09     Mx
    BMI L_A7B45F                    ; $A7B458  30 05        Mx
    ORA $09E4                       ; $A7B45A  0D E4 09     Mx
    BNE L_A7B462                    ; $A7B45D  D0 03        Mx
L_A7B45F:
    JMP L_A7B3D2                    ; $A7B45F  4C D2 B3     Mx
L_A7B462:
    LDA $09E4                       ; $A7B462  AD E4 09     Mx
    SEC                             ; $A7B465  38           Mx
    SBC #$2500                      ; $A7B466  E9 00 25     Mx
    STA $09E4                       ; $A7B469  8D E4 09     Mx
    LDA $09E6                       ; $A7B46C  AD E6 09     Mx
    SBC #$0000                      ; $A7B46F  E9 00 00     Mx
    STA $09E6                       ; $A7B472  8D E6 09     Mx
    LDA $0CCB                       ; $A7B475  AD CB 0C     Mx
    BEQ L_A7B47F                    ; $A7B478  F0 05        Mx
    LDA $0A4C                       ; $A7B47A  AD 4C 0A     Mx
    BNE L_A7B482                    ; $A7B47D  D0 03        Mx
L_A7B47F:
    JMP L_A7B501                    ; $A7B47F  4C 01 B5     Mx
L_A7B482:
    LDA $09AC                       ; $A7B482  AD AC 09     Mx
    CMP #$0022                      ; $A7B485  C9 22 00     Mx
    BNE L_A7B501                    ; $A7B488  D0 77        Mx
    LDA $0A0C                       ; $A7B48A  AD 0C 0A     Mx
    CMP #$0040                      ; $A7B48D  C9 40 00     Mx
    BCS L_A7B501                    ; $A7B490  B0 6F        Mx
    LDA $0A28                       ; $A7B492  AD 28 0A     Mx
    BEQ L_A7B501                    ; $A7B495  F0 6A        Mx
    EOR $0A2A                       ; $A7B497  4D 2A 0A     Mx
    BEQ L_A7B501                    ; $A7B49A  F0 65        Mx
    LDX $0A0E                       ; $A7B49C  AE 0E 0A     Mx
    LDA $A7E377,X                   ; $A7B49F  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7B4A3  29 07 00     Mx
    BEQ L_A7B501                    ; $A7B4A6  F0 59        Mx
    STA $09C0                       ; $A7B4A8  8D C0 09     Mx
    STA $09C2                       ; $A7B4AB  8D C2 09     Mx
    ASL                             ; $A7B4AE  0A           Mx
    TAX                             ; $A7B4AF  AA           Mx
    LDA #$24D3                      ; $A7B4B0  A9 D3 24     Mx
    STA $00D1                       ; $A7B4B3  8D D1 00     Mx
    STZ $09B4                       ; $A7B4B6  9C B4 09     Mx
    LDA $24D3F6,X                   ; $A7B4B9  BF F6 D3 24  Mx
    STA $0A56                       ; $A7B4BD  8D 56 0A     Mx
    STA $00D0                       ; $A7B4C0  8D D0 00     Mx
    LDA #$0008                      ; $A7B4C3  A9 08 00     Mx
    STA $0A58                       ; $A7B4C6  8D 58 0A     Mx
    STZ $09C6                       ; $A7B4C9  9C C6 09     Mx
    LDA #$0082                      ; $A7B4CC  A9 82 00     Mx
    STA $0A54                       ; $A7B4CF  8D 54 0A     Mx
    LDA #$0008                      ; $A7B4D2  A9 08 00     Mx
    STA $09B0                       ; $A7B4D5  8D B0 09     Mx
    LDY $0A58                       ; $A7B4D8  AC 58 0A     Mx
    LDA [$D0],Y                     ; $A7B4DB  B7 D0        Mx
    STA $09B4                       ; $A7B4DD  8D B4 09     Mx
    INY                             ; $A7B4E0  C8           Mx
    INY                             ; $A7B4E1  C8           Mx
    LDA [$D0],Y                     ; $A7B4E2  B7 D0        Mx
    STA $09B6                       ; $A7B4E4  8D B6 09     Mx
    STZ $09B2                       ; $A7B4E7  9C B2 09     Mx
    INY                             ; $A7B4EA  C8           Mx
    INY                             ; $A7B4EB  C8           Mx
    STY $0A58                       ; $A7B4EC  8C 58 0A     Mx
    STZ $09AE                       ; $A7B4EF  9C AE 09     Mx
    LDA #$003A                      ; $A7B4F2  A9 3A 00     Mx
    STA $09AC                       ; $A7B4F5  8D AC 09     Mx
    LDA #$0002                      ; $A7B4F8  A9 02 00     Mx
    STA $0C3B                       ; $A7B4FB  8D 3B 0C     Mx
    JMP L_A7B541                    ; $A7B4FE  4C 41 B5     Mx
L_A7B501:
    LDA $09AC                       ; $A7B501  AD AC 09     Mx
    CMP #$0022                      ; $A7B504  C9 22 00     Mx
    BNE L_A7B533                    ; $A7B507  D0 2A        Mx
    LDA $09B2                       ; $A7B509  AD B2 09     Mx
    BNE L_A7B520                    ; $A7B50C  D0 12        Mx
    LDA $09E4                       ; $A7B50E  AD E4 09     Mx
    SEC                             ; $A7B511  38           Mx
    SBC #$9A00                      ; $A7B512  E9 00 9A     Mx
    LDA $09E6                       ; $A7B515  AD E6 09     Mx
    SBC #$0002                      ; $A7B518  E9 02 00     Mx
    BPL L_A7B53B                    ; $A7B51B  10 1E        Mx
    JMP L_A7B541                    ; $A7B51D  4C 41 B5     Mx
L_A7B520:
    CMP #$0002                      ; $A7B520  C9 02 00     Mx
    BNE L_A7B52B                    ; $A7B523  D0 06        Mx
    LDA $0A4C                       ; $A7B525  AD 4C 0A     Mx
    JMP L_A7B53B                    ; $A7B528  4C 3B B5     Mx
L_A7B52B:
    CMP #$0003                      ; $A7B52B  C9 03 00     Mx
    BEQ L_A7B53B                    ; $A7B52E  F0 0B        Mx
    JMP L_A7B541                    ; $A7B530  4C 41 B5     Mx
L_A7B533:
    LDA $09B2                       ; $A7B533  AD B2 09     Mx
    CMP #$0002                      ; $A7B536  C9 02 00     Mx
    BNE L_A7B541                    ; $A7B539  D0 06        Mx
L_A7B53B:
    LDA #$0001                      ; $A7B53B  A9 01 00     Mx
    STA $09B4                       ; $A7B53E  8D B4 09     Mx
L_A7B541:
    RTS                             ; $A7B541  60           Mx
L_A7B542:
    STZ $09E2                       ; $A7B542  9C E2 09     Mx
    STZ $09E0                       ; $A7B545  9C E0 09     Mx
    STZ $09EA                       ; $A7B548  9C EA 09     Mx
    STZ $09E8                       ; $A7B54B  9C E8 09     Mx
    STZ $09E6                       ; $A7B54E  9C E6 09     Mx
    STZ $09E4                       ; $A7B551  9C E4 09     Mx
    LDA $0A4C                       ; $A7B554  AD 4C 0A     Mx
    BEQ L_A7B577                    ; $A7B557  F0 1E        Mx
    LDA #$000C                      ; $A7B559  A9 0C 00     Mx
    STA $09AC                       ; $A7B55C  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B55F  A9 FF FF     Mx
    STA $09B2                       ; $A7B562  8D B2 09     Mx
    STZ $09B4                       ; $A7B565  9C B4 09     Mx
    STZ $09FA                       ; $A7B568  9C FA 09     Mx
    STZ $09B0                       ; $A7B56B  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B56E  A9 F8 FF     Mx
    STA $09B6                       ; $A7B571  8D B6 09     Mx
    JMP L_A7B5B5                    ; $A7B574  4C B5 B5     Mx
L_A7B577:
    LDA $0A16                       ; $A7B577  AD 16 0A     Mx
    TAX                             ; $A7B57A  AA           Mx
    LDA $A7E377,X                   ; $A7B57B  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7B57F  29 07 00     Mx
    STA $09C0                       ; $A7B582  8D C0 09     Mx
    ASL                             ; $A7B585  0A           Mx
    TAX                             ; $A7B586  AA           Mx
    LDA $09B2                       ; $A7B587  AD B2 09     Mx
    CMP #$0003                      ; $A7B58A  C9 03 00     Mx
    BNE L_A7B594                    ; $A7B58D  D0 05        Mx
    LDX $0A2C                       ; $A7B58F  AE 2C 0A     Mx
    BEQ L_A7B59A                    ; $A7B592  F0 06        Mx
L_A7B594:
    CMP $A7E4A9,X                   ; $A7B594  DF A9 E4 A7  Mx
    BCC L_A7B5B5                    ; $A7B598  90 1B        Mx
L_A7B59A:
    LDA #$0000                      ; $A7B59A  A9 00 00     Mx
    STA $09AC                       ; $A7B59D  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B5A0  A9 FF FF     Mx
    STA $09B2                       ; $A7B5A3  8D B2 09     Mx
    STZ $09B4                       ; $A7B5A6  9C B4 09     Mx
    STZ $09FA                       ; $A7B5A9  9C FA 09     Mx
    STZ $09B0                       ; $A7B5AC  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B5AF  A9 F8 FF     Mx
    STA $09B6                       ; $A7B5B2  8D B6 09     Mx
L_A7B5B5:
    RTS                             ; $A7B5B5  60           Mx
L_A7B5B6:
    STZ $09E2                       ; $A7B5B6  9C E2 09     Mx
    STZ $09E0                       ; $A7B5B9  9C E0 09     Mx
    STZ $09EA                       ; $A7B5BC  9C EA 09     Mx
    STZ $09E8                       ; $A7B5BF  9C E8 09     Mx
    STZ $09E6                       ; $A7B5C2  9C E6 09     Mx
    STZ $09E4                       ; $A7B5C5  9C E4 09     Mx
    LDA $0A4C                       ; $A7B5C8  AD 4C 0A     Mx
    BNE L_A7B5D3                    ; $A7B5CB  D0 06        Mx
    LDA #$0000                      ; $A7B5CD  A9 00 00     Mx
    JMP L_A7B7BA                    ; $A7B5D0  4C BA B7     Mx
L_A7B5D3:
    LDX $09C0                       ; $A7B5D3  AE C0 09     Mx
    LDA $A7E503,X                   ; $A7B5D6  BF 03 E5 A7  Mx
    AND #$0007                      ; $A7B5DA  29 07 00     Mx
    STA $09C0                       ; $A7B5DD  8D C0 09     Mx
    LDA $09B2                       ; $A7B5E0  AD B2 09     Mx
    CMP #$0008                      ; $A7B5E3  C9 08 00     Mx
    BNE L_A7B5EB                    ; $A7B5E6  D0 03        Mx
    JMP L_A7B75F                    ; $A7B5E8  4C 5F B7     Mx
L_A7B5EB:
    CMP #$0004                      ; $A7B5EB  C9 04 00     Mx
    BEQ L_A7B5F3                    ; $A7B5EE  F0 03        Mx
    JMP L_A7B7D2                    ; $A7B5F0  4C D2 B7     Mx
L_A7B5F3:
    STZ $00B0                       ; $A7B5F3  9C B0 00     Mx
    LDA $086C                       ; $A7B5F6  AD 6C 08     Mx
    BNE L_A7B603                    ; $A7B5F9  D0 08        Mx
    LDA $0A20                       ; $A7B5FB  AD 20 0A     Mx
    CMP #$0020                      ; $A7B5FE  C9 20 00     Mx
    BCC L_A7B606                    ; $A7B601  90 03        Mx
L_A7B603:
    JMP L_A7B68A                    ; $A7B603  4C 8A B6     Mx
L_A7B606:
    LDA $1D56                       ; $A7B606  AD 56 1D     Mx
    AND #$0003                      ; $A7B609  29 03 00     Mx
    BNE L_A7B611                    ; $A7B60C  D0 03        Mx
    JMP L_A7B68A                    ; $A7B60E  4C 8A B6     Mx
L_A7B611:
    LDA $0A1A                       ; $A7B611  AD 1A 0A     Mx
    CLC                             ; $A7B614  18           Mx
    AND #$007F                      ; $A7B615  29 7F 00     Mx
    ASL                             ; $A7B618  0A           Mx
    TAX                             ; $A7B619  AA           Mx
    LDY #$00                        ; $A7B61A  A0 00        Mx
    STZ $0812                       ; $A7B61C  9C 12 08     Mx
    LDA $9AABEB,X                   ; $A7B61F  BF EB AB 9A  Mx
    BPL L_A7B628                    ; $A7B623  10 03        Mx
    DEC $0812                       ; $A7B625  CE 12 08     Mx
L_A7B628:
    ASL                             ; $A7B628  0A           Mx
    ROL $0812                       ; $A7B629  2E 12 08     Mx
    ASL                             ; $A7B62C  0A           Mx
    ROL $0812                       ; $A7B62D  2E 12 08     Mx
    ASL                             ; $A7B630  0A           Mx
    ROL $0812                       ; $A7B631  2E 12 08     Mx
    ASL                             ; $A7B634  0A           Mx
    ROL $0812                       ; $A7B635  2E 12 08     Mx
    ASL                             ; $A7B638  0A           Mx
    ROL $0812                       ; $A7B639  2E 12 08     Mx
    STA $0810                       ; $A7B63C  8D 10 08     Mx
    LDY #$00                        ; $A7B63F  A0 00        Mx
    STZ $081A                       ; $A7B641  9C 1A 08     Mx
    LDA $9AABAB,X                   ; $A7B644  BF AB AB 9A  Mx
    BPL L_A7B64D                    ; $A7B648  10 03        Mx
    DEC $081A                       ; $A7B64A  CE 1A 08     Mx
L_A7B64D:
    ASL                             ; $A7B64D  0A           Mx
    ROL $081A                       ; $A7B64E  2E 1A 08     Mx
    ASL                             ; $A7B651  0A           Mx
    ROL $081A                       ; $A7B652  2E 1A 08     Mx
    ASL                             ; $A7B655  0A           Mx
    ROL $081A                       ; $A7B656  2E 1A 08     Mx
    ASL                             ; $A7B659  0A           Mx
    ROL $081A                       ; $A7B65A  2E 1A 08     Mx
    ASL                             ; $A7B65D  0A           Mx
    ROL $081A                       ; $A7B65E  2E 1A 08     Mx
    STA $0818                       ; $A7B661  8D 18 08     Mx
    LDA $080A                       ; $A7B664  AD 0A 08     Mx
    BNE L_A7B675                    ; $A7B667  D0 0C        Mx
    LDA #$E400                      ; $A7B669  A9 00 E4     Mx
    STA $0814                       ; $A7B66C  8D 14 08     Mx
    LDA #$0002                      ; $A7B66F  A9 02 00     Mx
    STA $0816                       ; $A7B672  8D 16 08     Mx
L_A7B675:
    LDA #$0030                      ; $A7B675  A9 30 00     Mx
    STA $07DC                       ; $A7B678  8D DC 07     Mx
    STA $07DA                       ; $A7B67B  8D DA 07     Mx
    LDA #$0020                      ; $A7B67E  A9 20 00     Mx
    STA $086C                       ; $A7B681  8D 6C 08     Mx
    LDA #$0001                      ; $A7B684  A9 01 00     Mx
    STA $00B0                       ; $A7B687  8D B0 00     Mx
L_A7B68A:
    LDA $0784                       ; $A7B68A  AD 84 07     Mx
    BNE L_A7B697                    ; $A7B68D  D0 08        Mx
    LDA $0A22                       ; $A7B68F  AD 22 0A     Mx
    CMP #$0020                      ; $A7B692  C9 20 00     Mx
    BCC L_A7B69A                    ; $A7B695  90 03        Mx
L_A7B697:
    JMP L_A7B71D                    ; $A7B697  4C 1D B7     Mx
L_A7B69A:
    LDA $1D57                       ; $A7B69A  AD 57 1D     Mx
    AND #$0003                      ; $A7B69D  29 03 00     Mx
    BNE L_A7B6A5                    ; $A7B6A0  D0 03        Mx
    JMP L_A7B71D                    ; $A7B6A2  4C 1D B7     Mx
L_A7B6A5:
    LDA $0A1A                       ; $A7B6A5  AD 1A 0A     Mx
    AND #$007F                      ; $A7B6A8  29 7F 00     Mx
    ASL                             ; $A7B6AB  0A           Mx
    TAX                             ; $A7B6AC  AA           Mx
    LDY #$00                        ; $A7B6AD  A0 00        Mx
    STZ $072A                       ; $A7B6AF  9C 2A 07     Mx
    LDA $9AABEB,X                   ; $A7B6B2  BF EB AB 9A  Mx
    BPL L_A7B6BB                    ; $A7B6B6  10 03        Mx
    DEC $072A                       ; $A7B6B8  CE 2A 07     Mx
L_A7B6BB:
    ASL                             ; $A7B6BB  0A           Mx
    ROL $072A                       ; $A7B6BC  2E 2A 07     Mx
    ASL                             ; $A7B6BF  0A           Mx
    ROL $072A                       ; $A7B6C0  2E 2A 07     Mx
    ASL                             ; $A7B6C3  0A           Mx
    ROL $072A                       ; $A7B6C4  2E 2A 07     Mx
    ASL                             ; $A7B6C7  0A           Mx
    ROL $072A                       ; $A7B6C8  2E 2A 07     Mx
    ASL                             ; $A7B6CB  0A           Mx
    ROL $072A                       ; $A7B6CC  2E 2A 07     Mx
    STA $0728                       ; $A7B6CF  8D 28 07     Mx
    LDY #$00                        ; $A7B6D2  A0 00        Mx
    STZ $0732                       ; $A7B6D4  9C 32 07     Mx
    LDA $9AABAB,X                   ; $A7B6D7  BF AB AB 9A  Mx
    BPL L_A7B6E0                    ; $A7B6DB  10 03        Mx
    DEC $0732                       ; $A7B6DD  CE 32 07     Mx
L_A7B6E0:
    ASL                             ; $A7B6E0  0A           Mx
    ROL $0732                       ; $A7B6E1  2E 32 07     Mx
    ASL                             ; $A7B6E4  0A           Mx
    ROL $0732                       ; $A7B6E5  2E 32 07     Mx
    ASL                             ; $A7B6E8  0A           Mx
    ROL $0732                       ; $A7B6E9  2E 32 07     Mx
    ASL                             ; $A7B6EC  0A           Mx
    ROL $0732                       ; $A7B6ED  2E 32 07     Mx
    ASL                             ; $A7B6F0  0A           Mx
    ROL $0732                       ; $A7B6F1  2E 32 07     Mx
    STA $0730                       ; $A7B6F4  8D 30 07     Mx
    LDA $0722                       ; $A7B6F7  AD 22 07     Mx
    BNE L_A7B708                    ; $A7B6FA  D0 0C        Mx
    LDA #$E400                      ; $A7B6FC  A9 00 E4     Mx
    STA $072C                       ; $A7B6FF  8D 2C 07     Mx
    LDA #$0002                      ; $A7B702  A9 02 00     Mx
    STA $072E                       ; $A7B705  8D 2E 07     Mx
L_A7B708:
    LDA #$0030                      ; $A7B708  A9 30 00     Mx
    STA $06F4                       ; $A7B70B  8D F4 06     Mx
    STA $06F2                       ; $A7B70E  8D F2 06     Mx
    LDA #$0020                      ; $A7B711  A9 20 00     Mx
    STA $0784                       ; $A7B714  8D 84 07     Mx
    LDA #$0001                      ; $A7B717  A9 01 00     Mx
    STA $00B0                       ; $A7B71A  8D B0 00     Mx
L_A7B71D:
    LDA $00B0                       ; $A7B71D  AD B0 00     Mx
    BEQ L_A7B75C                    ; $A7B720  F0 3A        Mx
    LDA #$0023                      ; $A7B722  A9 23 00     Mx
    JSL L_BDFDF3                    ; $A7B725  22 F3 FD BD  Mx
    LDA $1D56                       ; $A7B729  AD 56 1D     Mx
    AND #$0003                      ; $A7B72C  29 03 00     Mx
    BEQ L_A7B74A                    ; $A7B72F  F0 19        Mx
    CMP #$0001                      ; $A7B731  C9 01 00     Mx
    BNE L_A7B75C                    ; $A7B734  D0 26        Mx
    LDA $1613                       ; $A7B736  AD 13 16     Mx
    BNE L_A7B748                    ; $A7B739  D0 0D        Mx
    LDA #$0010                      ; $A7B73B  A9 10 00     Mx
    JSL L_BDFDF3                    ; $A7B73E  22 F3 FD BD  Mx
    LDA #$0064                      ; $A7B742  A9 64 00     Mx
    STA $1613                       ; $A7B745  8D 13 16     Mx
L_A7B748:
    BRA L_A7B75C                    ; $A7B748  80 12        Mx
L_A7B74A:
    LDA $1611                       ; $A7B74A  AD 11 16     Mx
    BNE L_A7B75C                    ; $A7B74D  D0 0D        Mx
    LDA #$0011                      ; $A7B74F  A9 11 00     Mx
    JSL L_BDFDF3                    ; $A7B752  22 F3 FD BD  Mx
    LDA #$0064                      ; $A7B756  A9 64 00     Mx
    STA $1611                       ; $A7B759  8D 11 16     Mx
L_A7B75C:
    JMP L_A7B7D2                    ; $A7B75C  4C D2 B7     Mx
L_A7B75F:
    LDA #$000C                      ; $A7B75F  A9 0C 00     Mx
    STA $09AC                       ; $A7B762  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B765  A9 FF FF     Mx
    STA $09B2                       ; $A7B768  8D B2 09     Mx
    STZ $09B4                       ; $A7B76B  9C B4 09     Mx
    STZ $09FA                       ; $A7B76E  9C FA 09     Mx
    STZ $09B0                       ; $A7B771  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B774  A9 F8 FF     Mx
    STA $09B6                       ; $A7B777  8D B6 09     Mx
    LDA $0A20                       ; $A7B77A  AD 20 0A     Mx
    CMP #$003C                      ; $A7B77D  C9 3C 00     Mx
    BCS L_A7B78F                    ; $A7B780  B0 0D        Mx
    CMP #$001E                      ; $A7B782  C9 1E 00     Mx
    BCC L_A7B7A7                    ; $A7B785  90 20        Mx
    LDA $07DC                       ; $A7B787  AD DC 07     Mx
    CMP #$002C                      ; $A7B78A  C9 2C 00     Mx
    BEQ L_A7B7A7                    ; $A7B78D  F0 18        Mx
L_A7B78F:
    LDA $0A22                       ; $A7B78F  AD 22 0A     Mx
    CMP #$003C                      ; $A7B792  C9 3C 00     Mx
    BCS L_A7B7A4                    ; $A7B795  B0 0D        Mx
    CMP #$001E                      ; $A7B797  C9 1E 00     Mx
    BCC L_A7B7A7                    ; $A7B79A  90 0B        Mx
    LDA $06F4                       ; $A7B79C  AD F4 06     Mx
    CMP #$002C                      ; $A7B79F  C9 2C 00     Mx
    BEQ L_A7B7A7                    ; $A7B7A2  F0 03        Mx
L_A7B7A4:
    JMP L_A7B7D2                    ; $A7B7A4  4C D2 B7     Mx
L_A7B7A7:
    LDA $0CCB                       ; $A7B7A7  AD CB 0C     Mx
    CMP #$0003                      ; $A7B7AA  C9 03 00     Mx
    BCC L_A7B7D2                    ; $A7B7AD  90 23        Mx
    LDA $1D56                       ; $A7B7AF  AD 56 1D     Mx
    AND #$0001                      ; $A7B7B2  29 01 00     Mx
    BEQ L_A7B7D2                    ; $A7B7B5  F0 1B        Mx
    LDA #$002E                      ; $A7B7B7  A9 2E 00     Mx
L_A7B7BA:
    STA $09AC                       ; $A7B7BA  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B7BD  A9 FF FF     Mx
    STA $09B2                       ; $A7B7C0  8D B2 09     Mx
    STZ $09B4                       ; $A7B7C3  9C B4 09     Mx
    STZ $09FA                       ; $A7B7C6  9C FA 09     Mx
    STZ $09B0                       ; $A7B7C9  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B7CC  A9 F8 FF     Mx
    STA $09B6                       ; $A7B7CF  8D B6 09     Mx
L_A7B7D2:
    RTS                             ; $A7B7D2  60           Mx
L_A7B7D3:
    LDA #$000A                      ; $A7B7D3  A9 0A 00     Mx
    STA $0A30                       ; $A7B7D6  8D 30 0A     Mx
    LDA $09E6                       ; $A7B7D9  AD E6 09     Mx
    BPL L_A7B803                    ; $A7B7DC  10 25        Mx
    LDA $09CC                       ; $A7B7DE  AD CC 09     Mx
    BMI L_A7B7E8                    ; $A7B7E1  30 05        Mx
    ORA $09CE                       ; $A7B7E3  0D CE 09     Mx
    BNE L_A7B803                    ; $A7B7E6  D0 1B        Mx
L_A7B7E8:
    STZ $09DA                       ; $A7B7E8  9C DA 09     Mx
    STZ $09D8                       ; $A7B7EB  9C D8 09     Mx
    STZ $09E2                       ; $A7B7EE  9C E2 09     Mx
    STZ $09E0                       ; $A7B7F1  9C E0 09     Mx
    STZ $09EA                       ; $A7B7F4  9C EA 09     Mx
    STZ $09E8                       ; $A7B7F7  9C E8 09     Mx
    STZ $09E6                       ; $A7B7FA  9C E6 09     Mx
    STZ $09E4                       ; $A7B7FD  9C E4 09     Mx
    JMP L_A7B819                    ; $A7B800  4C 19 B8     Mx
L_A7B803:
    LDA $09E4                       ; $A7B803  AD E4 09     Mx
    SEC                             ; $A7B806  38           Mx
    SBC #$2500                      ; $A7B807  E9 00 25     Mx
    STA $09E4                       ; $A7B80A  8D E4 09     Mx
    LDA $09E6                       ; $A7B80D  AD E6 09     Mx
    SBC #$0000                      ; $A7B810  E9 00 00     Mx
    STA $09E6                       ; $A7B813  8D E6 09     Mx
    JMP L_A7B819                    ; $A7B816  4C 19 B8     Mx
L_A7B819:
    LDA $0A3C                       ; $A7B819  AD 3C 0A     Mx
    BEQ L_A7B83F                    ; $A7B81C  F0 21        Mx
    DEC $0A3C                       ; $A7B81E  CE 3C 0A     Mx
    BNE L_A7B89C                    ; $A7B821  D0 79        Mx
    LDA $0A24                       ; $A7B823  AD 24 0A     Mx
    AND $0A88                       ; $A7B826  2D 88 0A     Mx
    BEQ L_A7B83F                    ; $A7B829  F0 14        Mx
    LDA $0A3C                       ; $A7B82B  AD 3C 0A     Mx
    CMP #$0004                      ; $A7B82E  C9 04 00     Mx
    BCC L_A7B83F                    ; $A7B831  90 0C        Mx
    SEC                             ; $A7B833  38           Mx
    SBC #$0008                      ; $A7B834  E9 08 00     Mx
    BCS L_A7B83C                    ; $A7B837  B0 03        Mx
    LDA #$0004                      ; $A7B839  A9 04 00     Mx
L_A7B83C:
    STA $0A3C                       ; $A7B83C  8D 3C 0A     Mx
L_A7B83F:
    LDA $09DA                       ; $A7B83F  AD DA 09     Mx
    ORA $09D8                       ; $A7B842  0D D8 09     Mx
    BNE L_A7B89C                    ; $A7B845  D0 55        Mx
    STZ $09E2                       ; $A7B847  9C E2 09     Mx
    STZ $09E0                       ; $A7B84A  9C E0 09     Mx
    STZ $09EA                       ; $A7B84D  9C EA 09     Mx
    STZ $09E8                       ; $A7B850  9C E8 09     Mx
    LDA $09B2                       ; $A7B853  AD B2 09     Mx
    CMP #$0004                      ; $A7B856  C9 04 00     Mx
    BEQ L_A7B860                    ; $A7B859  F0 05        Mx
    CMP #$000E                      ; $A7B85B  C9 0E 00     Mx
    BNE L_A7B8D4                    ; $A7B85E  D0 74        Mx
L_A7B860:
    LDA $0A4C                       ; $A7B860  AD 4C 0A     Mx
    BEQ L_A7B875                    ; $A7B863  F0 10        Mx
    JSR L_A7D16B                    ; $A7B865  20 6B D1     Mx
    LDA $09AC                       ; $A7B868  AD AC 09     Mx
    CMP #$002E                      ; $A7B86B  C9 2E 00     Mx
    BEQ L_A7B878                    ; $A7B86E  F0 08        Mx
    LDA #$000C                      ; $A7B870  A9 0C 00     Mx
    BNE L_A7B878                    ; $A7B873  D0 03        Mx
L_A7B875:
    LDA #$0000                      ; $A7B875  A9 00 00     Mx
L_A7B878:
    STA $09AC                       ; $A7B878  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B87B  A9 FF FF     Mx
    STA $09B2                       ; $A7B87E  8D B2 09     Mx
    STZ $09B4                       ; $A7B881  9C B4 09     Mx
    STZ $09FA                       ; $A7B884  9C FA 09     Mx
    STZ $09B0                       ; $A7B887  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B88A  A9 F8 FF     Mx
    STA $09B6                       ; $A7B88D  8D B6 09     Mx
    LDA #$003C                      ; $A7B890  A9 3C 00     Mx
    STA $09AE                       ; $A7B893  8D AE 09     Mx
    STZ $0A3C                       ; $A7B896  9C 3C 0A     Mx
    JMP L_A7B8D4                    ; $A7B899  4C D4 B8     Mx
L_A7B89C:
    LDA $09B2                       ; $A7B89C  AD B2 09     Mx
    CMP #$0004                      ; $A7B89F  C9 04 00     Mx
    BNE L_A7B8C3                    ; $A7B8A2  D0 1F        Mx
    LDA $09AE                       ; $A7B8A4  AD AE 09     Mx
    CMP #$0003                      ; $A7B8A7  C9 03 00     Mx
    BEQ L_A7B8E4                    ; $A7B8AA  F0 38        Mx
    LDA $09B4                       ; $A7B8AC  AD B4 09     Mx
    BNE L_A7B8C3                    ; $A7B8AF  D0 12        Mx
    LDA $1613                       ; $A7B8B1  AD 13 16     Mx
    BNE L_A7B8C3                    ; $A7B8B4  D0 0D        Mx
    LDA #$000F                      ; $A7B8B6  A9 0F 00     Mx
    JSL L_BDFDF3                    ; $A7B8B9  22 F3 FD BD  Mx
    LDA #$0064                      ; $A7B8BD  A9 64 00     Mx
    STA $1613                       ; $A7B8C0  8D 13 16     Mx
L_A7B8C3:
    LDA $09B2                       ; $A7B8C3  AD B2 09     Mx
    CMP #$0007                      ; $A7B8C6  C9 07 00     Mx
    BEQ L_A7B8CE                    ; $A7B8C9  F0 03        Mx
    JMP L_A7B8D4                    ; $A7B8CB  4C D4 B8     Mx
L_A7B8CE:
    LDA #$0014                      ; $A7B8CE  A9 14 00     Mx
    STA $09B4                       ; $A7B8D1  8D B4 09     Mx
L_A7B8D4:
    LDA $09B2                       ; $A7B8D4  AD B2 09     Mx
    CMP #$0004                      ; $A7B8D7  C9 04 00     Mx
    BNE L_A7B8ED                    ; $A7B8DA  D0 11        Mx
    LDA $09AE                       ; $A7B8DC  AD AE 09     Mx
    CMP #$0003                      ; $A7B8DF  C9 03 00     Mx
    BNE L_A7B8ED                    ; $A7B8E2  D0 09        Mx
L_A7B8E4:
    STZ $0A3C                       ; $A7B8E4  9C 3C 0A     Mx
    LDA #$0001                      ; $A7B8E7  A9 01 00     Mx
    STA $09B4                       ; $A7B8EA  8D B4 09     Mx
L_A7B8ED:
    RTS                             ; $A7B8ED  60           Mx
L_A7B8EE:
    LDA $0C19                       ; $A7B8EE  AD 19 0C     Mx
    BNE L_A7B901                    ; $A7B8F1  D0 0E        Mx
    LDA $0A16                       ; $A7B8F3  AD 16 0A     Mx
    TAX                             ; $A7B8F6  AA           Mx
    LDA $A7E377,X                   ; $A7B8F7  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7B8FB  29 07 00     Mx
    STA $09C0                       ; $A7B8FE  8D C0 09     Mx
L_A7B901:
    LDA $0C19                       ; $A7B901  AD 19 0C     Mx
    CMP $09A8                       ; $A7B904  CD A8 09     Mx
    BNE L_A7B917                    ; $A7B907  D0 0E        Mx
    LDA $0BDD                       ; $A7B909  AD DD 0B     Mx
    BEQ L_A7B917                    ; $A7B90C  F0 09        Mx
    STZ $0BDD                       ; $A7B90E  9C DD 0B     Mx
    LDA #$001E                      ; $A7B911  A9 1E 00     Mx
    STA $0BF1                       ; $A7B914  8D F1 0B     Mx
L_A7B917:
    LDA $09B2                       ; $A7B917  AD B2 09     Mx
    CMP #$0004                      ; $A7B91A  C9 04 00     Mx
    BNE L_A7B94A                    ; $A7B91D  D0 2B        Mx
    LDA $0C19                       ; $A7B91F  AD 19 0C     Mx
    CMP $09A8                       ; $A7B922  CD A8 09     Mx
    BEQ L_A7B92C                    ; $A7B925  F0 05        Mx
    LDA #$0000                      ; $A7B927  A9 00 00     Mx
    BRA L_A7B92F                    ; $A7B92A  80 03        Mx
L_A7B92C:
    LDA #$000C                      ; $A7B92C  A9 0C 00     Mx
L_A7B92F:
    STA $09AC                       ; $A7B92F  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B932  A9 FF FF     Mx
    STA $09B2                       ; $A7B935  8D B2 09     Mx
    STZ $09B4                       ; $A7B938  9C B4 09     Mx
    STZ $09FA                       ; $A7B93B  9C FA 09     Mx
    STZ $09B0                       ; $A7B93E  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B941  A9 F8 FF     Mx
    STA $09B6                       ; $A7B944  8D B6 09     Mx
    JSR L_A7D16B                    ; $A7B947  20 6B D1     Mx
L_A7B94A:
    RTS                             ; $A7B94A  60           Mx
L_A7B94B:
    LDA $09B2                       ; $A7B94B  AD B2 09     Mx
    CMP #$0005                      ; $A7B94E  C9 05 00     Mx
    BNE L_A7B989                    ; $A7B951  D0 36        Mx
    LDA $09A8                       ; $A7B953  AD A8 09     Mx
    CMP $0C19                       ; $A7B956  CD 19 0C     Mx
    BNE L_A7B96B                    ; $A7B959  D0 10        Mx
    JSR L_A7D16B                    ; $A7B95B  20 6B D1     Mx
    LDA $09AC                       ; $A7B95E  AD AC 09     Mx
    CMP #$002E                      ; $A7B961  C9 2E 00     Mx
    BEQ L_A7B96E                    ; $A7B964  F0 08        Mx
    LDA #$000C                      ; $A7B966  A9 0C 00     Mx
    BNE L_A7B96E                    ; $A7B969  D0 03        Mx
L_A7B96B:
    LDA #$0000                      ; $A7B96B  A9 00 00     Mx
L_A7B96E:
    STA $09AC                       ; $A7B96E  8D AC 09     Mx
    LDA #$FFFF                      ; $A7B971  A9 FF FF     Mx
    STA $09B2                       ; $A7B974  8D B2 09     Mx
    STZ $09B4                       ; $A7B977  9C B4 09     Mx
    STZ $09FA                       ; $A7B97A  9C FA 09     Mx
    STZ $09B0                       ; $A7B97D  9C B0 09     Mx
    LDA #$FFF8                      ; $A7B980  A9 F8 FF     Mx
    STA $09B6                       ; $A7B983  8D B6 09     Mx
    JMP L_A7BF9D                    ; $A7B986  4C 9D BF     Mx
L_A7B989:
    CMP #$0003                      ; $A7B989  C9 03 00     Mx
    BEQ L_A7B991                    ; $A7B98C  F0 03        Mx
    JMP L_A7BF9D                    ; $A7B98E  4C 9D BF     Mx
L_A7B991:
    LDA $09C0                       ; $A7B991  AD C0 09     Mx
    ASL                             ; $A7B994  0A           Mx
    ASL                             ; $A7B995  0A           Mx
    ASL                             ; $A7B996  0A           Mx
    ASL                             ; $A7B997  0A           Mx
    CLC                             ; $A7B998  18           Mx
    ADC #$0008                      ; $A7B999  69 08 00     Mx
    STA $00D9                       ; $A7B99C  8D D9 00     Mx
    LDA $09B4                       ; $A7B99F  AD B4 09     Mx
    CMP #$0002                      ; $A7B9A2  C9 02 00     Mx
    BNE L_A7B9AA                    ; $A7B9A5  D0 03        Mx
    JMP L_A7BA73                    ; $A7B9A7  4C 73 BA     Mx
L_A7B9AA:
    CMP #$0001                      ; $A7B9AA  C9 01 00     Mx
    BEQ L_A7BA15                    ; $A7B9AD  F0 66        Mx
    CMP #$0000                      ; $A7B9AF  C9 00 00     Mx
    BEQ L_A7B9B7                    ; $A7B9B2  F0 03        Mx
    JMP L_A7BF9D                    ; $A7B9B4  4C 9D BF     Mx
L_A7B9B7:
    LDA $0954                       ; $A7B9B7  AD 54 09     Mx
    BNE L_A7BA12                    ; $A7B9BA  D0 56        Mx
    LDA $0A1E                       ; $A7B9BC  AD 1E 0A     Mx
    CMP #$000A                      ; $A7B9BF  C9 0A 00     Mx
    BCC L_A7BA12                    ; $A7B9C2  90 4E        Mx
    CMP #$0028                      ; $A7B9C4  C9 28 00     Mx
    BCS L_A7BA12                    ; $A7B9C7  B0 49        Mx
    LDA $0A18                       ; $A7B9C9  AD 18 0A     Mx
    SEC                             ; $A7B9CC  38           Mx
    SBC $00D9                       ; $A7B9CD  ED D9 00     Mx
    BPL L_A7B9D9                    ; $A7B9D0  10 07        Mx
    EOR #$FFFF                      ; $A7B9D2  49 FF FF     Mx
    CLC                             ; $A7B9D5  18           Mx
    ADC #$0001                      ; $A7B9D6  69 01 00     Mx
L_A7B9D9:
    CMP #$0040                      ; $A7B9D9  C9 40 00     Mx
    BCC L_A7B9EB                    ; $A7B9DC  90 0D        Mx
    SEC                             ; $A7B9DE  38           Mx
    SBC #$0080                      ; $A7B9DF  E9 80 00     Mx
    BPL L_A7B9EB                    ; $A7B9E2  10 07        Mx
    EOR #$FFFF                      ; $A7B9E4  49 FF FF     Mx
    CLC                             ; $A7B9E7  18           Mx
    ADC #$0001                      ; $A7B9E8  69 01 00     Mx
L_A7B9EB:
    SEC                             ; $A7B9EB  38           Mx
    SBC #$0018                      ; $A7B9EC  E9 18 00     Mx
    BPL L_A7BA12                    ; $A7B9EF  10 21        Mx
    LDA $08C4                       ; $A7B9F1  AD C4 08     Mx
    STA $00A4                       ; $A7B9F4  8D A4 00     Mx
    LDA $08F2                       ; $A7B9F7  AD F2 08     Mx
    STA $00A8                       ; $A7B9FA  8D A8 00     Mx
    LDA #$0003                      ; $A7B9FD  A9 03 00     Mx
    STA $00A6                       ; $A7BA00  8D A6 00     Mx
    LDA $099A                       ; $A7BA03  AD 9A 09     Mx
    STA $00AA                       ; $A7BA06  8D AA 00     Mx
    LDA $08C8                       ; $A7BA09  AD C8 08     Mx
    STA $00AC                       ; $A7BA0C  8D AC 00     Mx
    JMP L_A7BAD1                    ; $A7BA0F  4C D1 BA     Mx
L_A7BA12:
    JMP L_A7BF9D                    ; $A7BA12  4C 9D BF     Mx
L_A7BA15:
    LDA $086C                       ; $A7BA15  AD 6C 08     Mx
    BNE L_A7BA70                    ; $A7BA18  D0 56        Mx
    LDA $0A20                       ; $A7BA1A  AD 20 0A     Mx
    CMP #$000A                      ; $A7BA1D  C9 0A 00     Mx
    BCC L_A7BA12                    ; $A7BA20  90 F0        Mx
    CMP #$0028                      ; $A7BA22  C9 28 00     Mx
    BCS L_A7BA70                    ; $A7BA25  B0 49        Mx
    LDA $0A1A                       ; $A7BA27  AD 1A 0A     Mx
    SEC                             ; $A7BA2A  38           Mx
    SBC $00D9                       ; $A7BA2B  ED D9 00     Mx
    BPL L_A7BA37                    ; $A7BA2E  10 07        Mx
    EOR #$FFFF                      ; $A7BA30  49 FF FF     Mx
    CLC                             ; $A7BA33  18           Mx
    ADC #$0001                      ; $A7BA34  69 01 00     Mx
L_A7BA37:
    CMP #$0040                      ; $A7BA37  C9 40 00     Mx
    BCC L_A7BA49                    ; $A7BA3A  90 0D        Mx
    SEC                             ; $A7BA3C  38           Mx
    SBC #$0080                      ; $A7BA3D  E9 80 00     Mx
    BPL L_A7BA49                    ; $A7BA40  10 07        Mx
    EOR #$FFFF                      ; $A7BA42  49 FF FF     Mx
    CLC                             ; $A7BA45  18           Mx
    ADC #$0001                      ; $A7BA46  69 01 00     Mx
L_A7BA49:
    SEC                             ; $A7BA49  38           Mx
    SBC #$0018                      ; $A7BA4A  E9 18 00     Mx
    BPL L_A7BA70                    ; $A7BA4D  10 21        Mx
    LDA $07DC                       ; $A7BA4F  AD DC 07     Mx
    STA $00A4                       ; $A7BA52  8D A4 00     Mx
    LDA $080A                       ; $A7BA55  AD 0A 08     Mx
    STA $00A8                       ; $A7BA58  8D A8 00     Mx
    LDA #$0001                      ; $A7BA5B  A9 01 00     Mx
    STA $00A6                       ; $A7BA5E  8D A6 00     Mx
    LDA $08B2                       ; $A7BA61  AD B2 08     Mx
    STA $00AA                       ; $A7BA64  8D AA 00     Mx
    LDA $07E0                       ; $A7BA67  AD E0 07     Mx
    STA $00AC                       ; $A7BA6A  8D AC 00     Mx
    JMP L_A7BAD1                    ; $A7BA6D  4C D1 BA     Mx
L_A7BA70:
    JMP L_A7BF9D                    ; $A7BA70  4C 9D BF     Mx
L_A7BA73:
    LDA $0784                       ; $A7BA73  AD 84 07     Mx
    BNE L_A7BACE                    ; $A7BA76  D0 56        Mx
    LDA $0A22                       ; $A7BA78  AD 22 0A     Mx
    CMP #$000A                      ; $A7BA7B  C9 0A 00     Mx
    BCC L_A7BA12                    ; $A7BA7E  90 92        Mx
    CMP #$0028                      ; $A7BA80  C9 28 00     Mx
    BCS L_A7BACE                    ; $A7BA83  B0 49        Mx
    LDA $0A1C                       ; $A7BA85  AD 1C 0A     Mx
    SEC                             ; $A7BA88  38           Mx
    SBC $00D9                       ; $A7BA89  ED D9 00     Mx
    BPL L_A7BA95                    ; $A7BA8C  10 07        Mx
    EOR #$FFFF                      ; $A7BA8E  49 FF FF     Mx
    CLC                             ; $A7BA91  18           Mx
    ADC #$0001                      ; $A7BA92  69 01 00     Mx
L_A7BA95:
    CMP #$0040                      ; $A7BA95  C9 40 00     Mx
    BCC L_A7BAA7                    ; $A7BA98  90 0D        Mx
    SEC                             ; $A7BA9A  38           Mx
    SBC #$0080                      ; $A7BA9B  E9 80 00     Mx
    BPL L_A7BAA7                    ; $A7BA9E  10 07        Mx
    EOR #$FFFF                      ; $A7BAA0  49 FF FF     Mx
    CLC                             ; $A7BAA3  18           Mx
    ADC #$0001                      ; $A7BAA4  69 01 00     Mx
L_A7BAA7:
    SEC                             ; $A7BAA7  38           Mx
    SBC #$0018                      ; $A7BAA8  E9 18 00     Mx
    BPL L_A7BACE                    ; $A7BAAB  10 21        Mx
    LDA $06F4                       ; $A7BAAD  AD F4 06     Mx
    STA $00A4                       ; $A7BAB0  8D A4 00     Mx
    LDA $0722                       ; $A7BAB3  AD 22 07     Mx
    STA $00A8                       ; $A7BAB6  8D A8 00     Mx
    LDA #$0002                      ; $A7BAB9  A9 02 00     Mx
    STA $00A6                       ; $A7BABC  8D A6 00     Mx
    LDA $07CA                       ; $A7BABF  AD CA 07     Mx
    STA $00AA                       ; $A7BAC2  8D AA 00     Mx
    LDA $06F8                       ; $A7BAC5  AD F8 06     Mx
    STA $00AC                       ; $A7BAC8  8D AC 00     Mx
    JMP L_A7BAD1                    ; $A7BACB  4C D1 BA     Mx
L_A7BACE:
    JMP L_A7BF9D                    ; $A7BACE  4C 9D BF     Mx
L_A7BAD1:
    LDA $00A4                       ; $A7BAD1  AD A4 00     Mx
    CMP #$002E                      ; $A7BAD4  C9 2E 00     Mx
    BEQ L_A7BAE3                    ; $A7BAD7  F0 0A        Mx
    CMP #$0020                      ; $A7BAD9  C9 20 00     Mx
    BEQ L_A7BAE3                    ; $A7BADC  F0 05        Mx
    CMP #$0022                      ; $A7BADE  C9 22 00     Mx
    BNE L_A7BAEE                    ; $A7BAE1  D0 0B        Mx
L_A7BAE3:
    LDA $1D56                       ; $A7BAE3  AD 56 1D     Mx
    CMP #$6666                      ; $A7BAE6  C9 66 66     Mx
    BCC L_A7BAEE                    ; $A7BAE9  90 03        Mx
L_A7BAEB:
    JMP L_A7BF9D                    ; $A7BAEB  4C 9D BF     Mx
L_A7BAEE:
    LDA $00A8                       ; $A7BAEE  AD A8 00     Mx
    CMP #$0048                      ; $A7BAF1  C9 48 00     Mx
    BPL L_A7BAEB                    ; $A7BAF4  10 F5        Mx
    LDA $00D9                       ; $A7BAF6  AD D9 00     Mx
    AND #$007F                      ; $A7BAF9  29 7F 00     Mx
    ASL                             ; $A7BAFC  0A           Mx
    TAX                             ; $A7BAFD  AA           Mx
    LDA $00AC                       ; $A7BAFE  AD AC 00     Mx
    BIT #$0001                      ; $A7BB01  89 01 00     Mx
    BNE L_A7BB10                    ; $A7BB04  D0 0A        Mx
    BIT #$0004                      ; $A7BB06  89 04 00     Mx
    BNE L_A7BB38                    ; $A7BB09  D0 2D        Mx
    LDA $00AA                       ; $A7BB0B  AD AA 00     Mx
    BMI L_A7BB1E                    ; $A7BB0E  30 0E        Mx
L_A7BB10:
    LDA $1D56                       ; $A7BB10  AD 56 1D     Mx
    AND #$0003                      ; $A7BB13  29 03 00     Mx
    CMP #$0003                      ; $A7BB16  C9 03 00     Mx
    BEQ L_A7BB38                    ; $A7BB19  F0 1D        Mx
    JMP L_A7BB2E                    ; $A7BB1B  4C 2E BB     Mx
L_A7BB1E:
    LDA $1D56                       ; $A7BB1E  AD 56 1D     Mx
    AND #$0003                      ; $A7BB21  29 03 00     Mx
    CMP #$0002                      ; $A7BB24  C9 02 00     Mx
    BCS L_A7BB38                    ; $A7BB27  B0 0F        Mx
    CMP #$0001                      ; $A7BB29  C9 01 00     Mx
    BEQ L_A7BB33                    ; $A7BB2C  F0 05        Mx
L_A7BB2E:
    LDA #$0003                      ; $A7BB2E  A9 03 00     Mx
    BNE L_A7BB3B                    ; $A7BB31  D0 08        Mx
L_A7BB33:
    LDA #$0005                      ; $A7BB33  A9 05 00     Mx
    BNE L_A7BB3B                    ; $A7BB36  D0 03        Mx
L_A7BB38:
    LDA #$0005                      ; $A7BB38  A9 05 00     Mx
L_A7BB3B:
    STA $00AE                       ; $A7BB3B  8D AE 00     Mx
    PHX                             ; $A7BB3E  DA           Mx
    LDA $160D                       ; $A7BB3F  AD 0D 16     Mx
    BNE L_A7BB84                    ; $A7BB42  D0 40        Mx
    LDA #$0028                      ; $A7BB44  A9 28 00     Mx
    STA $160D                       ; $A7BB47  8D 0D 16     Mx
    LDA #$0023                      ; $A7BB4A  A9 23 00     Mx
    JSL L_BDFDF3                    ; $A7BB4D  22 F3 FD BD  Mx
    LDA $1D56                       ; $A7BB51  AD 56 1D     Mx
    AND #$0003                      ; $A7BB54  29 03 00     Mx
    BEQ L_A7BB72                    ; $A7BB57  F0 19        Mx
    CMP #$0001                      ; $A7BB59  C9 01 00     Mx
    BNE L_A7BB84                    ; $A7BB5C  D0 26        Mx
    LDA $1613                       ; $A7BB5E  AD 13 16     Mx
    BNE L_A7BB70                    ; $A7BB61  D0 0D        Mx
    LDA #$0010                      ; $A7BB63  A9 10 00     Mx
    JSL L_BDFDF3                    ; $A7BB66  22 F3 FD BD  Mx
    LDA #$0064                      ; $A7BB6A  A9 64 00     Mx
    STA $1613                       ; $A7BB6D  8D 13 16     Mx
L_A7BB70:
    BRA L_A7BB84                    ; $A7BB70  80 12        Mx
L_A7BB72:
    LDA $1611                       ; $A7BB72  AD 11 16     Mx
    BNE L_A7BB84                    ; $A7BB75  D0 0D        Mx
    LDA #$0011                      ; $A7BB77  A9 11 00     Mx
    JSL L_BDFDF3                    ; $A7BB7A  22 F3 FD BD  Mx
    LDA #$0064                      ; $A7BB7E  A9 64 00     Mx
    STA $1611                       ; $A7BB81  8D 11 16     Mx
L_A7BB84:
    PLX                             ; $A7BB84  FA           Mx
    LDA $00A6                       ; $A7BB85  AD A6 00     Mx
    CMP #$0002                      ; $A7BB88  C9 02 00     Mx
    BNE L_A7BB90                    ; $A7BB8B  D0 03        Mx
    JMP L_A7BC0C                    ; $A7BB8D  4C 0C BC     Mx
L_A7BB90:
    CMP #$0001                      ; $A7BB90  C9 01 00     Mx
    BNE L_A7BB98                    ; $A7BB93  D0 03        Mx
    JMP L_A7BC80                    ; $A7BB95  4C 80 BC     Mx
L_A7BB98:
    LDA #$08C0                      ; $A7BB98  A9 C0 08     Mx
    STA $00D0                       ; $A7BB9B  8D D0 00     Mx
    STZ $08FA                       ; $A7BB9E  9C FA 08     Mx
    LDA $9AABEB,X                   ; $A7BBA1  BF EB AB 9A  Mx
    BPL L_A7BBAA                    ; $A7BBA5  10 03        Mx
    DEC $08FA                       ; $A7BBA7  CE FA 08     Mx
L_A7BBAA:
    LDY $00AE                       ; $A7BBAA  AC AE 00     Mx
    STY $08C6                       ; $A7BBAD  8C C6 08     Mx
L_A7BBB0:
    ASL                             ; $A7BBB0  0A           Mx
    ROL $08FA                       ; $A7BBB1  2E FA 08     Mx
    DEY                             ; $A7BBB4  88           Mx
    BNE L_A7BBB0                    ; $A7BBB5  D0 F9        Mx
    STA $08F8                       ; $A7BBB7  8D F8 08     Mx
    STZ $0902                       ; $A7BBBA  9C 02 09     Mx
    LDA $9AABAB,X                   ; $A7BBBD  BF AB AB 9A  Mx
    BPL L_A7BBC6                    ; $A7BBC1  10 03        Mx
    DEC $0902                       ; $A7BBC3  CE 02 09     Mx
L_A7BBC6:
    LDY $00AE                       ; $A7BBC6  AC AE 00     Mx
L_A7BBC9:
    ASL                             ; $A7BBC9  0A           Mx
    ROL $0902                       ; $A7BBCA  2E 02 09     Mx
    DEY                             ; $A7BBCD  88           Mx
    BNE L_A7BBC9                    ; $A7BBCE  D0 F9        Mx
    STA $0900                       ; $A7BBD0  8D 00 09     Mx
    LDA $08F2                       ; $A7BBD3  AD F2 08     Mx
    BNE L_A7BBE4                    ; $A7BBD6  D0 0C        Mx
    LDA #$E400                      ; $A7BBD8  A9 00 E4     Mx
    STA $08FC                       ; $A7BBDB  8D FC 08     Mx
    LDA #$0002                      ; $A7BBDE  A9 02 00     Mx
    STA $08FE                       ; $A7BBE1  8D FE 08     Mx
L_A7BBE4:
    LDA #$002D                      ; $A7BBE4  A9 2D 00     Mx
    STA $0954                       ; $A7BBE7  8D 54 09     Mx
    LDA #$0030                      ; $A7BBEA  A9 30 00     Mx
    STA $08C4                       ; $A7BBED  8D C4 08     Mx
    STA $08C2                       ; $A7BBF0  8D C2 08     Mx
    STZ $0972                       ; $A7BBF3  9C 72 09     Mx
    LDA $0C25                       ; $A7BBF6  AD 25 0C     Mx
    CMP #$08C0                      ; $A7BBF9  C9 C0 08     Mx
    BNE L_A7BC01                    ; $A7BBFC  D0 03        Mx
    STZ $0C25                       ; $A7BBFE  9C 25 0C     Mx
L_A7BC01:
    LDA $0964                       ; $A7BC01  AD 64 09     Mx
    BNE L_A7BC09                    ; $A7BC04  D0 03        Mx
    JMP L_A7BF9D                    ; $A7BC06  4C 9D BF     Mx
L_A7BC09:
    JMP L_A7BCF1                    ; $A7BC09  4C F1 BC     Mx
L_A7BC0C:
    LDA #$06F0                      ; $A7BC0C  A9 F0 06     Mx
    STA $00D0                       ; $A7BC0F  8D D0 00     Mx
    STZ $072A                       ; $A7BC12  9C 2A 07     Mx
    LDA $9AABEB,X                   ; $A7BC15  BF EB AB 9A  Mx
    BPL L_A7BC1E                    ; $A7BC19  10 03        Mx
    DEC $072A                       ; $A7BC1B  CE 2A 07     Mx
L_A7BC1E:
    LDY $00AE                       ; $A7BC1E  AC AE 00     Mx
    STY $06F6                       ; $A7BC21  8C F6 06     Mx
L_A7BC24:
    ASL                             ; $A7BC24  0A           Mx
    ROL $072A                       ; $A7BC25  2E 2A 07     Mx
    DEY                             ; $A7BC28  88           Mx
    BNE L_A7BC24                    ; $A7BC29  D0 F9        Mx
    STA $0728                       ; $A7BC2B  8D 28 07     Mx
    STZ $0732                       ; $A7BC2E  9C 32 07     Mx
    LDA $9AABAB,X                   ; $A7BC31  BF AB AB 9A  Mx
    BPL L_A7BC3A                    ; $A7BC35  10 03        Mx
    DEC $0732                       ; $A7BC37  CE 32 07     Mx
L_A7BC3A:
    LDY $00AE                       ; $A7BC3A  AC AE 00     Mx
L_A7BC3D:
    ASL                             ; $A7BC3D  0A           Mx
    ROL $0732                       ; $A7BC3E  2E 32 07     Mx
    DEY                             ; $A7BC41  88           Mx
    BNE L_A7BC3D                    ; $A7BC42  D0 F9        Mx
    STA $0730                       ; $A7BC44  8D 30 07     Mx
    LDA $0722                       ; $A7BC47  AD 22 07     Mx
    BNE L_A7BC58                    ; $A7BC4A  D0 0C        Mx
    LDA #$E400                      ; $A7BC4C  A9 00 E4     Mx
    STA $072C                       ; $A7BC4F  8D 2C 07     Mx
    LDA #$0002                      ; $A7BC52  A9 02 00     Mx
    STA $072E                       ; $A7BC55  8D 2E 07     Mx
L_A7BC58:
    LDA #$002D                      ; $A7BC58  A9 2D 00     Mx
    STA $0784                       ; $A7BC5B  8D 84 07     Mx
    LDA #$0030                      ; $A7BC5E  A9 30 00     Mx
    STA $06F4                       ; $A7BC61  8D F4 06     Mx
    STA $06F2                       ; $A7BC64  8D F2 06     Mx
    STZ $07A2                       ; $A7BC67  9C A2 07     Mx
    LDA $0C25                       ; $A7BC6A  AD 25 0C     Mx
    CMP #$06F0                      ; $A7BC6D  C9 F0 06     Mx
    BNE L_A7BC75                    ; $A7BC70  D0 03        Mx
    STZ $0C25                       ; $A7BC72  9C 25 0C     Mx
L_A7BC75:
    LDA $0794                       ; $A7BC75  AD 94 07     Mx
    BNE L_A7BC7D                    ; $A7BC78  D0 03        Mx
    JMP L_A7BF9D                    ; $A7BC7A  4C 9D BF     Mx
L_A7BC7D:
    JMP L_A7BCF1                    ; $A7BC7D  4C F1 BC     Mx
L_A7BC80:
    LDA #$07D8                      ; $A7BC80  A9 D8 07     Mx
    STA $00D0                       ; $A7BC83  8D D0 00     Mx
    STZ $0812                       ; $A7BC86  9C 12 08     Mx
    LDA $9AABEB,X                   ; $A7BC89  BF EB AB 9A  Mx
    BPL L_A7BC92                    ; $A7BC8D  10 03        Mx
    DEC $0812                       ; $A7BC8F  CE 12 08     Mx
L_A7BC92:
    LDY $00AE                       ; $A7BC92  AC AE 00     Mx
    STY $07DE                       ; $A7BC95  8C DE 07     Mx
L_A7BC98:
    ASL                             ; $A7BC98  0A           Mx
    ROL $0812                       ; $A7BC99  2E 12 08     Mx
    DEY                             ; $A7BC9C  88           Mx
    BNE L_A7BC98                    ; $A7BC9D  D0 F9        Mx
    STA $0810                       ; $A7BC9F  8D 10 08     Mx
    STZ $081A                       ; $A7BCA2  9C 1A 08     Mx
    LDA $9AABAB,X                   ; $A7BCA5  BF AB AB 9A  Mx
    BPL L_A7BCAE                    ; $A7BCA9  10 03        Mx
    DEC $081A                       ; $A7BCAB  CE 1A 08     Mx
L_A7BCAE:
    LDY $00AE                       ; $A7BCAE  AC AE 00     Mx
L_A7BCB1:
    ASL                             ; $A7BCB1  0A           Mx
    ROL $081A                       ; $A7BCB2  2E 1A 08     Mx
    DEY                             ; $A7BCB5  88           Mx
    BNE L_A7BCB1                    ; $A7BCB6  D0 F9        Mx
    STA $0818                       ; $A7BCB8  8D 18 08     Mx
    LDA $080A                       ; $A7BCBB  AD 0A 08     Mx
    BNE L_A7BCCC                    ; $A7BCBE  D0 0C        Mx
    LDA #$E400                      ; $A7BCC0  A9 00 E4     Mx
    STA $0814                       ; $A7BCC3  8D 14 08     Mx
    LDA #$0002                      ; $A7BCC6  A9 02 00     Mx
    STA $0816                       ; $A7BCC9  8D 16 08     Mx
L_A7BCCC:
    LDA #$002D                      ; $A7BCCC  A9 2D 00     Mx
    STA $086C                       ; $A7BCCF  8D 6C 08     Mx
    LDA #$0030                      ; $A7BCD2  A9 30 00     Mx
    STA $07DC                       ; $A7BCD5  8D DC 07     Mx
    STA $07DA                       ; $A7BCD8  8D DA 07     Mx
    STZ $088A                       ; $A7BCDB  9C 8A 08     Mx
    LDA $0C25                       ; $A7BCDE  AD 25 0C     Mx
    CMP #$07D8                      ; $A7BCE1  C9 D8 07     Mx
    BNE L_A7BCE9                    ; $A7BCE4  D0 03        Mx
    STZ $0C25                       ; $A7BCE6  9C 25 0C     Mx
L_A7BCE9:
    LDA $087C                       ; $A7BCE9  AD 7C 08     Mx
    BNE L_A7BCF1                    ; $A7BCEC  D0 03        Mx
    JMP L_A7BF9D                    ; $A7BCEE  4C 9D BF     Mx
L_A7BCF1:
    LDA #$0032                      ; $A7BCF1  A9 32 00     Mx
    STA $00DF                       ; $A7BCF4  8D DF 00     Mx
    LDA $00A4                       ; $A7BCF7  AD A4 00     Mx
    CMP #$002E                      ; $A7BCFA  C9 2E 00     Mx
    BEQ L_A7BD20                    ; $A7BCFD  F0 21        Mx
    LDA $00AA                       ; $A7BCFF  AD AA 00     Mx
    BMI L_A7BD1A                    ; $A7BD02  30 16        Mx
    CMP #$0010                      ; $A7BD04  C9 10 00     Mx
    BCC L_A7BD0C                    ; $A7BD07  90 03        Mx
    LDA #$000F                      ; $A7BD09  A9 0F 00     Mx
L_A7BD0C:
    TAX                             ; $A7BD0C  AA           Mx
    LDA $A7E61B,X                   ; $A7BD0D  BF 1B E6 A7  Mx
    AND #$00FF                      ; $A7BD11  29 FF 00     Mx
    STA $00DF                       ; $A7BD14  8D DF 00     Mx
    JMP L_A7BD20                    ; $A7BD17  4C 20 BD     Mx
L_A7BD1A:
    LDA #$0014                      ; $A7BD1A  A9 14 00     Mx
    STA $00DF                       ; $A7BD1D  8D DF 00     Mx
L_A7BD20:
    LDA #$0064                      ; $A7BD20  A9 64 00     Mx
    STA $00D3                       ; $A7BD23  8D D3 00     Mx
    LDA $1D56                       ; $A7BD26  AD 56 1D     Mx
    STA $00BA                       ; $A7BD29  8D BA 00     Mx
    INC $00D3                       ; $A7BD2C  EE D3 00     Mx
    SEP #$20                        ; $A7BD2F  E2 20        Mx
    LDA $00D3                       ; $A7BD31  AD D3 00     mx
    STA $4202                       ; $A7BD34  8D 02 42     mx
    LDA $00BA                       ; $A7BD37  AD BA 00     mx
    STA $4203                       ; $A7BD3A  8D 03 42     mx
    NOP                             ; $A7BD3D  EA           mx
    NOP                             ; $A7BD3E  EA           mx
    NOP                             ; $A7BD3F  EA           mx
    REP #$20                        ; $A7BD40  C2 20        mx
    LDA $4216                       ; $A7BD42  AD 16 42     Mx
    STA $00BA                       ; $A7BD45  8D BA 00     Mx
    LDA $00BB                       ; $A7BD48  AD BB 00     Mx
    AND #$00FF                      ; $A7BD4B  29 FF 00     Mx
    CMP $00DF                       ; $A7BD4E  CD DF 00     Mx
    BCS L_A7BD56                    ; $A7BD51  B0 03        Mx
L_A7BD53:
    JMP L_A7BF9D                    ; $A7BD53  4C 9D BF     Mx
L_A7BD56:
    LDA $0C3F                       ; $A7BD56  AD 3F 0C     Mx
    BNE L_A7BD53                    ; $A7BD59  D0 F8        Mx
    LDA #$00B4                      ; $A7BD5B  A9 B4 00     Mx
    STA $0C3F                       ; $A7BD5E  8D 3F 0C     Mx
    LDA $09A8                       ; $A7BD61  AD A8 09     Mx
    DEC                             ; $A7BD64  3A           Mx
    AND #$0003                      ; $A7BD65  29 03 00     Mx
    ASL                             ; $A7BD68  0A           Mx
    TAX                             ; $A7BD69  AA           Mx
    INC $1CB1,X                     ; $A7BD6A  FE B1 1C     Mx
    LDA #$0087                      ; $A7BD6D  A9 87 00     Mx
    STA $0A6A                       ; $A7BD70  8D 6A 0A     Mx
    LDY #$8A                        ; $A7BD73  A0 8A        Mx
    LDA #$0034                      ; $A7BD75  A9 34 00     Mx
    STA ($D0),Y                     ; $A7BD78  91 D0        Mx
    LDA #$001E                      ; $A7BD7A  A9 1E 00     Mx
    STA $0BF1                       ; $A7BD7D  8D F1 0B     Mx
    LDA $0C19                       ; $A7BD80  AD 19 0C     Mx
    BEQ L_A7BDEB                    ; $A7BD83  F0 66        Mx
    LDA $0BD9                       ; $A7BD85  AD D9 0B     Mx
    CLC                             ; $A7BD88  18           Mx
    ADC $0BEF                       ; $A7BD89  6D EF 0B     Mx
    LDY #$54                        ; $A7BD8C  A0 54        Mx
    SEC                             ; $A7BD8E  38           Mx
    SBC ($CC),Y                     ; $A7BD8F  F1 CC        Mx
    BPL L_A7BD9D                    ; $A7BD91  10 0A        Mx
    CMP #$FEF4                      ; $A7BD93  C9 F4 FE     Mx
    BCS L_A7BDA5                    ; $A7BD96  B0 0D        Mx
    LDA #$FEF4                      ; $A7BD98  A9 F4 FE     Mx
    BRA L_A7BDA5                    ; $A7BD9B  80 08        Mx
L_A7BD9D:
    CMP #$010C                      ; $A7BD9D  C9 0C 01     Mx
    BCC L_A7BDA5                    ; $A7BDA0  90 03        Mx
    LDA #$010C                      ; $A7BDA2  A9 0C 01     Mx
L_A7BDA5:
    STA $0BD9                       ; $A7BDA5  8D D9 0B     Mx
    LDA $0BDD                       ; $A7BDA8  AD DD 0B     Mx
    CLC                             ; $A7BDAB  18           Mx
    ADC $0BF1                       ; $A7BDAC  6D F1 0B     Mx
    STA $0BDD                       ; $A7BDAF  8D DD 0B     Mx
    LDA $0BF3                       ; $A7BDB2  AD F3 0B     Mx
    CMP #$0310                      ; $A7BDB5  C9 10 03     Mx
    BCC L_A7BDC4                    ; $A7BDB8  90 0A        Mx
    CMP #$03F0                      ; $A7BDBA  C9 F0 03     Mx
    BCC L_A7BDC7                    ; $A7BDBD  90 08        Mx
    LDA #$03F0                      ; $A7BDBF  A9 F0 03     Mx
    BRA L_A7BDC7                    ; $A7BDC2  80 03        Mx
L_A7BDC4:
    LDA #$0310                      ; $A7BDC4  A9 10 03     Mx
L_A7BDC7:
    STA $0BE1                       ; $A7BDC7  8D E1 0B     Mx
    STA $0BF3                       ; $A7BDCA  8D F3 0B     Mx
    STZ $0C19                       ; $A7BDCD  9C 19 0C     Mx
    STZ $00CC                       ; $A7BDD0  9C CC 00     Mx
    STZ $0C2B                       ; $A7BDD3  9C 2B 0C     Mx
    STZ $0BEF                       ; $A7BDD6  9C EF 0B     Mx
    STZ $0BF1                       ; $A7BDD9  9C F1 0B     Mx
    STZ $0C11                       ; $A7BDDC  9C 11 0C     Mx
    LDA #$0002                      ; $A7BDDF  A9 02 00     Mx
    STA $0BBF                       ; $A7BDE2  8D BF 0B     Mx
    LDA #$0002                      ; $A7BDE5  A9 02 00     Mx
    STA $0BC1                       ; $A7BDE8  8D C1 0B     Mx
L_A7BDEB:
    LDA $0BDD                       ; $A7BDEB  AD DD 0B     Mx
    CMP #$005A                      ; $A7BDEE  C9 5A 00     Mx
    BCC L_A7BDF9                    ; $A7BDF1  90 06        Mx
    LDA #$001E                      ; $A7BDF3  A9 1E 00     Mx
    STA $0BDD                       ; $A7BDF6  8D DD 0B     Mx
L_A7BDF9:
    STZ $0BE5                       ; $A7BDF9  9C E5 0B     Mx
    STZ $0BE3                       ; $A7BDFC  9C E3 0B     Mx
    PHP                             ; $A7BDFF  08           Mx
    REP #$30                        ; $A7BE00  C2 30        Mx
    LDA $4212                       ; $A7BE02  AD 12 42     MX
    SEP #$20                        ; $A7BE05  E2 20        MX
    CLC                             ; $A7BE07  18           mX
    ADC $1D57                       ; $A7BE08  6D 57 1D     mX
    STA $1D57                       ; $A7BE0B  8D 57 1D     mX
    REP #$20                        ; $A7BE0E  C2 20        mX
    LDA $4212                       ; $A7BE10  AD 12 42     MX
    TAX                             ; $A7BE13  AA           MX
    SEP #$20                        ; $A7BE14  E2 20        MX
    EOR $1D58                       ; $A7BE16  4D 58 1D     mX
    STA $1D58                       ; $A7BE19  8D 58 1D     mX
    TXA                             ; $A7BE1C  8A           mX
    ADC $1D59                       ; $A7BE1D  6D 59 1D     mX
    REP #$20                        ; $A7BE20  C2 20        mX
    LDA $1D56                       ; $A7BE22  AD 56 1D     MX
    INC                             ; $A7BE25  1A           MX
    ROR                             ; $A7BE26  6A           MX
    LSR $1D58                       ; $A7BE27  4E 58 1D     MX
    EOR #$2B41                      ; $A7BE2A  49 41 2B     MX
    SBC #$000F                      ; $A7BE2D  E9 0F 00     MX
    STA $1D56                       ; $A7BE30  8D 56 1D     MX
    LDA $1D58                       ; $A7BE33  AD 58 1D     MX
    EOR #$1D87                      ; $A7BE36  49 87 1D     MX
    STA $1D58                       ; $A7BE39  8D 58 1D     MX
    LDA $1D52                       ; $A7BE3C  AD 52 1D     MX
    EOR $1D56                       ; $A7BE3F  4D 56 1D     MX
    STA $0002                       ; $A7BE42  8D 02 00     MX
    INC                             ; $A7BE45  1A           MX
    STA $1D52                       ; $A7BE46  8D 52 1D     MX
    LDA $1D54                       ; $A7BE49  AD 54 1D     MX
    EOR $1D58                       ; $A7BE4C  4D 58 1D     MX
    ADC #$0000                      ; $A7BE4F  69 00 00     MX
    STA $1D52                       ; $A7BE52  8D 52 1D     MX
    STA $0004                       ; $A7BE55  8D 04 00     MX
    PLP                             ; $A7BE58  28           MX
    LDA #$01FF                      ; $A7BE59  A9 FF 01     Mx
    STA $00BA                       ; $A7BE5C  8D BA 00     Mx
    SEP #$20                        ; $A7BE5F  E2 20        Mx
    LDA $1D56                       ; $A7BE61  AD 56 1D     mx
    STA $4202                       ; $A7BE64  8D 02 42     mx
    LDA $00BA                       ; $A7BE67  AD BA 00     mx
    STA $4203                       ; $A7BE6A  8D 03 42     mx
    NOP                             ; $A7BE6D  EA           mx
    NOP                             ; $A7BE6E  EA           mx
    NOP                             ; $A7BE6F  EA           mx
    REP #$20                        ; $A7BE70  C2 20        mx
    LDA $4216                       ; $A7BE72  AD 16 42     Mx
    STA $00BA                       ; $A7BE75  8D BA 00     Mx
    STA $00A8                       ; $A7BE78  8D A8 00     Mx
    LDA #$01FF                      ; $A7BE7B  A9 FF 01     Mx
    STA $00BA                       ; $A7BE7E  8D BA 00     Mx
    SEP #$20                        ; $A7BE81  E2 20        Mx
    LDA $1D56                       ; $A7BE83  AD 56 1D     mx
    STA $4202                       ; $A7BE86  8D 02 42     mx
    LDA $00BB                       ; $A7BE89  AD BB 00     mx
    STA $4203                       ; $A7BE8C  8D 03 42     mx
    NOP                             ; $A7BE8F  EA           mx
    NOP                             ; $A7BE90  EA           mx
    NOP                             ; $A7BE91  EA           mx
    REP #$20                        ; $A7BE92  C2 20        mx
    LDA $4216                       ; $A7BE94  AD 16 42     Mx
    STA $00BB                       ; $A7BE97  8D BB 00     Mx
    STZ $00F4                       ; $A7BE9A  9C F4 00     Mx
    STZ $00F2                       ; $A7BE9D  9C F2 00     Mx
    STA $00F3                       ; $A7BEA0  8D F3 00     Mx
    LDA $00F2                       ; $A7BEA3  AD F2 00     Mx
    CLC                             ; $A7BEA6  18           Mx
    ADC $00A8                       ; $A7BEA7  6D A8 00     Mx
    STA $00F2                       ; $A7BEAA  8D F2 00     Mx
    LDA $00F4                       ; $A7BEAD  AD F4 00     Mx
    ADC #$0000                      ; $A7BEB0  69 00 00     Mx
    STA $00F4                       ; $A7BEB3  8D F4 00     Mx
    LDA $00F3                       ; $A7BEB6  AD F3 00     Mx
    AND #$01FF                      ; $A7BEB9  29 FF 01     Mx
    SEC                             ; $A7BEBC  38           Mx
    SBC #$0100                      ; $A7BEBD  E9 00 01     Mx
    BPL L_A7BEC5                    ; $A7BEC0  10 03        Mx
    DEC $0BE5                       ; $A7BEC2  CE E5 0B     Mx
L_A7BEC5:
    STA $0BE4                       ; $A7BEC5  8D E4 0B     Mx
    STZ $0BED                       ; $A7BEC8  9C ED 0B     Mx
    STZ $0BEB                       ; $A7BECB  9C EB 0B     Mx
    PHP                             ; $A7BECE  08           Mx
    REP #$30                        ; $A7BECF  C2 30        Mx
    LDA $4212                       ; $A7BED1  AD 12 42     MX
    SEP #$20                        ; $A7BED4  E2 20        MX
    CLC                             ; $A7BED6  18           mX
    ADC $1D57                       ; $A7BED7  6D 57 1D     mX
    STA $1D57                       ; $A7BEDA  8D 57 1D     mX
    REP #$20                        ; $A7BEDD  C2 20        mX
    LDA $4212                       ; $A7BEDF  AD 12 42     MX
    TAX                             ; $A7BEE2  AA           MX
    SEP #$20                        ; $A7BEE3  E2 20        MX
    EOR $1D58                       ; $A7BEE5  4D 58 1D     mX
    STA $1D58                       ; $A7BEE8  8D 58 1D     mX
    TXA                             ; $A7BEEB  8A           mX
    ADC $1D59                       ; $A7BEEC  6D 59 1D     mX
    REP #$20                        ; $A7BEEF  C2 20        mX
    LDA $1D56                       ; $A7BEF1  AD 56 1D     MX
    INC                             ; $A7BEF4  1A           MX
    ROR                             ; $A7BEF5  6A           MX
    LSR $1D58                       ; $A7BEF6  4E 58 1D     MX
    EOR #$2B41                      ; $A7BEF9  49 41 2B     MX
    SBC #$000F                      ; $A7BEFC  E9 0F 00     MX
    STA $1D56                       ; $A7BEFF  8D 56 1D     MX
    LDA $1D58                       ; $A7BF02  AD 58 1D     MX
    EOR #$1D87                      ; $A7BF05  49 87 1D     MX
    STA $1D58                       ; $A7BF08  8D 58 1D     MX
    LDA $1D52                       ; $A7BF0B  AD 52 1D     MX
    EOR $1D56                       ; $A7BF0E  4D 56 1D     MX
    STA $0002                       ; $A7BF11  8D 02 00     MX
    INC                             ; $A7BF14  1A           MX
    STA $1D52                       ; $A7BF15  8D 52 1D     MX
    LDA $1D54                       ; $A7BF18  AD 54 1D     MX
    EOR $1D58                       ; $A7BF1B  4D 58 1D     MX
    ADC #$0000                      ; $A7BF1E  69 00 00     MX
    STA $1D52                       ; $A7BF21  8D 52 1D     MX
    STA $0004                       ; $A7BF24  8D 04 00     MX
    PLP                             ; $A7BF27  28           MX
    LDA #$01FF                      ; $A7BF28  A9 FF 01     Mx
    STA $00BA                       ; $A7BF2B  8D BA 00     Mx
    SEP #$20                        ; $A7BF2E  E2 20        Mx
    LDA $1D56                       ; $A7BF30  AD 56 1D     mx
    STA $4202                       ; $A7BF33  8D 02 42     mx
    LDA $00BA                       ; $A7BF36  AD BA 00     mx
    STA $4203                       ; $A7BF39  8D 03 42     mx
    NOP                             ; $A7BF3C  EA           mx
    NOP                             ; $A7BF3D  EA           mx
    NOP                             ; $A7BF3E  EA           mx
    REP #$20                        ; $A7BF3F  C2 20        mx
    LDA $4216                       ; $A7BF41  AD 16 42     Mx
    STA $00BA                       ; $A7BF44  8D BA 00     Mx
    STA $00A8                       ; $A7BF47  8D A8 00     Mx
    LDA #$01FF                      ; $A7BF4A  A9 FF 01     Mx
    STA $00BA                       ; $A7BF4D  8D BA 00     Mx
    SEP #$20                        ; $A7BF50  E2 20        Mx
    LDA $1D56                       ; $A7BF52  AD 56 1D     mx
    STA $4202                       ; $A7BF55  8D 02 42     mx
    LDA $00BB                       ; $A7BF58  AD BB 00     mx
    STA $4203                       ; $A7BF5B  8D 03 42     mx
    NOP                             ; $A7BF5E  EA           mx
    NOP                             ; $A7BF5F  EA           mx
    NOP                             ; $A7BF60  EA           mx
    REP #$20                        ; $A7BF61  C2 20        mx
    LDA $4216                       ; $A7BF63  AD 16 42     Mx
    STA $00BB                       ; $A7BF66  8D BB 00     Mx
    STZ $00F4                       ; $A7BF69  9C F4 00     Mx
    STZ $00F2                       ; $A7BF6C  9C F2 00     Mx
    STA $00F3                       ; $A7BF6F  8D F3 00     Mx
    LDA $00F2                       ; $A7BF72  AD F2 00     Mx
    CLC                             ; $A7BF75  18           Mx
    ADC $00A8                       ; $A7BF76  6D A8 00     Mx
    STA $00F2                       ; $A7BF79  8D F2 00     Mx
    LDA $00F4                       ; $A7BF7C  AD F4 00     Mx
    ADC #$0000                      ; $A7BF7F  69 00 00     Mx
    STA $00F4                       ; $A7BF82  8D F4 00     Mx
    LDA $00F3                       ; $A7BF85  AD F3 00     Mx
    AND #$01FF                      ; $A7BF88  29 FF 01     Mx
    SEC                             ; $A7BF8B  38           Mx
    SBC #$0100                      ; $A7BF8C  E9 00 01     Mx
    BPL L_A7BF94                    ; $A7BF8F  10 03        Mx
    DEC $0BED                       ; $A7BF91  CE ED 0B     Mx
L_A7BF94:
    STA $0BEC                       ; $A7BF94  8D EC 0B     Mx
    STZ $0BE9                       ; $A7BF97  9C E9 0B     Mx
    STZ $0BE7                       ; $A7BF9A  9C E7 0B     Mx
L_A7BF9D:
    RTS                             ; $A7BF9D  60           Mx
L_A7BF9E:
    LDA $09C2                       ; $A7BF9E  AD C2 09     Mx
    BEQ L_A7BFA8                    ; $A7BFA1  F0 05        Mx
    CMP #$0004                      ; $A7BFA3  C9 04 00     Mx
    BNE L_A7BFAB                    ; $A7BFA6  D0 03        Mx
L_A7BFA8:
    LDA #$0002                      ; $A7BFA8  A9 02 00     Mx
L_A7BFAB:
    STA $09C0                       ; $A7BFAB  8D C0 09     Mx
    LDA #$0001                      ; $A7BFAE  A9 01 00     Mx
    STA $15EB                       ; $A7BFB1  8D EB 15     Mx
    LDA #$2400                      ; $A7BFB4  A9 00 24     Mx
    STA $00D1                       ; $A7BFB7  8D D1 00     Mx
    LDA $0A56                       ; $A7BFBA  AD 56 0A     Mx
    STA $00D0                       ; $A7BFBD  8D D0 00     Mx
    LDA $09B4                       ; $A7BFC0  AD B4 09     Mx
    BEQ L_A7BFC8                    ; $A7BFC3  F0 03        Mx
    JMP L_A7C6B5                    ; $A7BFC5  4C B5 C6     Mx
L_A7BFC8:
    LDY $0A58                       ; $A7BFC8  AC 58 0A     Mx
    LDA [$D0],Y                     ; $A7BFCB  B7 D0        Mx
    STA $09B4                       ; $A7BFCD  8D B4 09     Mx
    INY                             ; $A7BFD0  C8           Mx
    INY                             ; $A7BFD1  C8           Mx
    LDA [$D0],Y                     ; $A7BFD2  B7 D0        Mx
    STA $09B6                       ; $A7BFD4  8D B6 09     Mx
    STZ $09B2                       ; $A7BFD7  9C B2 09     Mx
    INY                             ; $A7BFDA  C8           Mx
    INY                             ; $A7BFDB  C8           Mx
    STY $0A58                       ; $A7BFDC  8C 58 0A     Mx
    LDA $09B4                       ; $A7BFDF  AD B4 09     Mx
    BMI L_A7BFE7                    ; $A7BFE2  30 03        Mx
    JMP L_A7C6B5                    ; $A7BFE4  4C B5 C6     Mx
L_A7BFE7:
    LDA $09B6                       ; $A7BFE7  AD B6 09     Mx
    CMP #$0001                      ; $A7BFEA  C9 01 00     Mx
    BEQ L_A7C032                    ; $A7BFED  F0 43        Mx
    CMP #$0002                      ; $A7BFEF  C9 02 00     Mx
    BNE L_A7BFF7                    ; $A7BFF2  D0 03        Mx
    JMP L_A7C51A                    ; $A7BFF4  4C 1A C5     Mx
L_A7BFF7:
    CMP #$0003                      ; $A7BFF7  C9 03 00     Mx
    BNE L_A7BFFF                    ; $A7BFFA  D0 03        Mx
    JMP L_A7C4F9                    ; $A7BFFC  4C F9 C4     Mx
L_A7BFFF:
    CMP #$0004                      ; $A7BFFF  C9 04 00     Mx
    BNE L_A7C007                    ; $A7C002  D0 03        Mx
    JMP L_A7C4E9                    ; $A7C004  4C E9 C4     Mx
L_A7C007:
    CMP #$0005                      ; $A7C007  C9 05 00     Mx
    BNE L_A7C00F                    ; $A7C00A  D0 03        Mx
    JMP L_A7C471                    ; $A7C00C  4C 71 C4     Mx
L_A7C00F:
    CMP #$0006                      ; $A7C00F  C9 06 00     Mx
    BNE L_A7C017                    ; $A7C012  D0 03        Mx
    JMP L_A7C490                    ; $A7C014  4C 90 C4     Mx
L_A7C017:
    CMP #$0007                      ; $A7C017  C9 07 00     Mx
    BNE L_A7C01F                    ; $A7C01A  D0 03        Mx
    JMP L_A7C45C                    ; $A7C01C  4C 5C C4     Mx
L_A7C01F:
    CMP #$0008                      ; $A7C01F  C9 08 00     Mx
    BNE L_A7C027                    ; $A7C022  D0 03        Mx
    JMP L_A7C481                    ; $A7C024  4C 81 C4     Mx
L_A7C027:
    CMP #$0009                      ; $A7C027  C9 09 00     Mx
    BNE L_A7C02F                    ; $A7C02A  D0 03        Mx
    JMP L_A7C4B0                    ; $A7C02C  4C B0 C4     Mx
L_A7C02F:
    JMP L_A7BFC8                    ; $A7C02F  4C C8 BF     Mx
L_A7C032:
    LDY $0A58                       ; $A7C032  AC 58 0A     Mx
    INY                             ; $A7C035  C8           Mx
    INY                             ; $A7C036  C8           Mx
    LDA [$D0],Y                     ; $A7C037  B7 D0        Mx
    STA $09AE                       ; $A7C039  8D AE 09     Mx
    CMP #$003E                      ; $A7C03C  C9 3E 00     Mx
    BCC L_A7C047                    ; $A7C03F  90 06        Mx
    LDA #$0001                      ; $A7C041  A9 01 00     Mx
    STA $15ED                       ; $A7C044  8D ED 15     Mx
L_A7C047:
    INY                             ; $A7C047  C8           Mx
    INY                             ; $A7C048  C8           Mx
    STY $0A58                       ; $A7C049  8C 58 0A     Mx
    REP #$10                        ; $A7C04C  C2 10        Mx
    LDA $0A54                       ; $A7C04E  AD 54 0A     MX
    ASL                             ; $A7C051  0A           MX
    ASL                             ; $A7C052  0A           MX
    TAX                             ; $A7C053  AA           MX
    LDA $A4B3C8,X                   ; $A7C054  BF C8 B3 A4  MX
    STA $00A4                       ; $A7C058  8D A4 00     MX
    LDA $A4B3CA,X                   ; $A7C05B  BF CA B3 A4  MX
    STA $00D6                       ; $A7C05F  8D D6 00     MX
    LDA $A4B3CC,X                   ; $A7C062  BF CC B3 A4  MX
    STA $00D3                       ; $A7C066  8D D3 00     MX
    LDA $A4B3CE,X                   ; $A7C069  BF CE B3 A4  MX
    STA $00B0                       ; $A7C06D  8D B0 00     MX
    SEP #$10                        ; $A7C070  E2 10        MX
    LDA $0A0A                       ; $A7C072  AD 0A 0A     Mx
    CLC                             ; $A7C075  18           Mx
    ADC $00A4                       ; $A7C076  6D A4 00     Mx
    STA $0BC3                       ; $A7C079  8D C3 0B     Mx
    STA $00D9                       ; $A7C07C  8D D9 00     Mx
    LDA #$0374                      ; $A7C07F  A9 74 03     Mx
    CLC                             ; $A7C082  18           Mx
    ADC $00D6                       ; $A7C083  6D D6 00     Mx
    STA $0BC7                       ; $A7C086  8D C7 0B     Mx
    LDA #$0068                      ; $A7C089  A9 68 00     Mx
    CLC                             ; $A7C08C  18           Mx
    ADC $00D3                       ; $A7C08D  6D D3 00     Mx
    LDX $0A72                       ; $A7C090  AE 72 0A     Mx
    BEQ L_A7C099                    ; $A7C093  F0 04        Mx
    CLC                             ; $A7C095  18           Mx
    ADC #$000A                      ; $A7C096  69 0A 00     Mx
L_A7C099:
    STA $0BC5                       ; $A7C099  8D C5 0B     Mx
    LDA $00D9                       ; $A7C09C  AD D9 00     Mx
    SEC                             ; $A7C09F  38           Mx
    SBC $09D6                       ; $A7C0A0  ED D6 09     Mx
    STA $00D9                       ; $A7C0A3  8D D9 00     Mx
    LDA $0BC7                       ; $A7C0A6  AD C7 0B     Mx
    SEC                             ; $A7C0A9  38           Mx
    SBC $09DE                       ; $A7C0AA  ED DE 09     Mx
    STA $00DF                       ; $A7C0AD  8D DF 00     Mx
    STZ $00D3                       ; $A7C0B0  9C D3 00     Mx
    LDA $00D3                       ; $A7C0B3  AD D3 00     Mx
    STA $00D6                       ; $A7C0B6  8D D6 00     Mx
    LDA $00D9                       ; $A7C0B9  AD D9 00     Mx
    STA $00DC                       ; $A7C0BC  8D DC 00     Mx
    LDA $00DF                       ; $A7C0BF  AD DF 00     Mx
    STA $00B7                       ; $A7C0C2  8D B7 00     Mx
    LDA $00DC                       ; $A7C0C5  AD DC 00     Mx
    BPL L_A7C0D4                    ; $A7C0C8  10 0A        Mx
    EOR #$FFFF                      ; $A7C0CA  49 FF FF     Mx
    CLC                             ; $A7C0CD  18           Mx
    ADC #$0001                      ; $A7C0CE  69 01 00     Mx
    STA $00DC                       ; $A7C0D1  8D DC 00     Mx
L_A7C0D4:
    LDA $00B7                       ; $A7C0D4  AD B7 00     Mx
    BPL L_A7C0E3                    ; $A7C0D7  10 0A        Mx
    EOR #$FFFF                      ; $A7C0D9  49 FF FF     Mx
    CLC                             ; $A7C0DC  18           Mx
    ADC #$0001                      ; $A7C0DD  69 01 00     Mx
    STA $00B7                       ; $A7C0E0  8D B7 00     Mx
L_A7C0E3:
    LDA $00DC                       ; $A7C0E3  AD DC 00     Mx
    CMP $00B7                       ; $A7C0E6  CD B7 00     Mx
    BCS L_A7C0FD                    ; $A7C0E9  B0 12        Mx
    LDA $00B7                       ; $A7C0EB  AD B7 00     Mx
    STA $00BA                       ; $A7C0EE  8D BA 00     Mx
    LDA $00DC                       ; $A7C0F1  AD DC 00     Mx
    STA $00B7                       ; $A7C0F4  8D B7 00     Mx
    LDA $00BA                       ; $A7C0F7  AD BA 00     Mx
    STA $00DC                       ; $A7C0FA  8D DC 00     Mx
L_A7C0FD:
    LSR $00B7                       ; $A7C0FD  4E B7 00     Mx
    LDA $00B7                       ; $A7C100  AD B7 00     Mx
    CLC                             ; $A7C103  18           Mx
    ADC $00DC                       ; $A7C104  6D DC 00     Mx
    STA $00DC                       ; $A7C107  8D DC 00     Mx
    LSR $00B7                       ; $A7C10A  4E B7 00     Mx
    LSR $00B7                       ; $A7C10D  4E B7 00     Mx
    LDA $00DC                       ; $A7C110  AD DC 00     Mx
    SEC                             ; $A7C113  38           Mx
    SBC $00B7                       ; $A7C114  ED B7 00     Mx
    STA $00DC                       ; $A7C117  8D DC 00     Mx
    CMP #$0083                      ; $A7C11A  C9 83 00     Mx
    BCC L_A7C145                    ; $A7C11D  90 26        Mx
    STA $00B7                       ; $A7C11F  8D B7 00     Mx
    LDA #$0082                      ; $A7C122  A9 82 00     Mx
    STA $00DC                       ; $A7C125  8D DC 00     Mx
    LDA $00B7                       ; $A7C128  AD B7 00     Mx
    SEC                             ; $A7C12B  38           Mx
    SBC $00DC                       ; $A7C12C  ED DC 00     Mx
    STA $00B7                       ; $A7C12F  8D B7 00     Mx
    LSR $00B7                       ; $A7C132  4E B7 00     Mx
    LSR $00B7                       ; $A7C135  4E B7 00     Mx
    LSR $00B7                       ; $A7C138  4E B7 00     Mx
    LDA $00DC                       ; $A7C13B  AD DC 00     Mx
    CLC                             ; $A7C13E  18           Mx
    ADC $00B7                       ; $A7C13F  6D B7 00     Mx
    STA $00DC                       ; $A7C142  8D DC 00     Mx
L_A7C145:
    LSR                             ; $A7C145  4A           Mx
    SEP #$20                        ; $A7C146  E2 20        Mx
    STA $4202                       ; $A7C148  8D 02 42     mx
    LDA #$6E                        ; $A7C14B  A9 6E        mx
    STA $4203                       ; $A7C14D  8D 03 42     mx
    NOP                             ; $A7C150  EA           mx
    NOP                             ; $A7C151  EA           mx
    NOP                             ; $A7C152  EA           mx
    REP #$20                        ; $A7C153  C2 20        mx
    LDA $4216                       ; $A7C155  AD 16 42     Mx
    STA $00F2                       ; $A7C158  8D F2 00     Mx
    STZ $00F4                       ; $A7C15B  9C F4 00     Mx
    ASL $00F2                       ; $A7C15E  0E F2 00     Mx
    ROL $00F4                       ; $A7C161  2E F4 00     Mx
    LDA $00F3                       ; $A7C164  AD F3 00     Mx
    AND #$FFFF                      ; $A7C167  29 FF FF     Mx
    STA $00DC                       ; $A7C16A  8D DC 00     Mx
    JMP L_A7C186                    ; $A7C16D  4C 86 C1     Mx
L_A7C170:
    STA $00D3                       ; $A7C170  8D D3 00     Mx
    LSR $00D3                       ; $A7C173  4E D3 00     Mx
    LSR $00D3                       ; $A7C176  4E D3 00     Mx
    LDA $00DC                       ; $A7C179  AD DC 00     Mx
    SEC                             ; $A7C17C  38           Mx
    SBC $00D3                       ; $A7C17D  ED D3 00     Mx
    CMP #$0023                      ; $A7C180  C9 23 00     Mx
    JMP L_A7C191                    ; $A7C183  4C 91 C1     Mx
L_A7C186:
    CMP #$0032                      ; $A7C186  C9 32 00     Mx
    BCS L_A7C191                    ; $A7C189  B0 06        Mx
    LDA #$0032                      ; $A7C18B  A9 32 00     Mx
    STA $00DC                       ; $A7C18E  8D DC 00     Mx
L_A7C191:
    LDA $09AE                       ; $A7C191  AD AE 09     Mx
    STA $00DC                       ; $A7C194  8D DC 00     Mx
    LDA $00D9                       ; $A7C197  AD D9 00     Mx
    STA $00E5                       ; $A7C19A  8D E5 00     Mx
    LDA $00D9                       ; $A7C19D  AD D9 00     Mx
    BPL L_A7C1AC                    ; $A7C1A0  10 0A        Mx
    EOR #$FFFF                      ; $A7C1A2  49 FF FF     Mx
    CLC                             ; $A7C1A5  18           Mx
    ADC #$0001                      ; $A7C1A6  69 01 00     Mx
    STA $00D9                       ; $A7C1A9  8D D9 00     Mx
L_A7C1AC:
    LDX $00DC                       ; $A7C1AC  AE DC 00     Mx
    STX $00EE                       ; $A7C1AF  8E EE 00     Mx
    LDA #$0000                      ; $A7C1B2  A9 00 00     Mx
    STA $00EA                       ; $A7C1B5  8D EA 00     Mx
    LDA $00D9                       ; $A7C1B8  AD D9 00     Mx
    STA $4204                       ; $A7C1BB  8D 04 42     Mx
    LDX $00EE                       ; $A7C1BE  AE EE 00     Mx
    STX $4206                       ; $A7C1C1  8E 06 42     Mx
    NOP                             ; $A7C1C4  EA           Mx
    NOP                             ; $A7C1C5  EA           Mx
    NOP                             ; $A7C1C6  EA           Mx
    NOP                             ; $A7C1C7  EA           Mx
    NOP                             ; $A7C1C8  EA           Mx
    NOP                             ; $A7C1C9  EA           Mx
    NOP                             ; $A7C1CA  EA           Mx
    STZ $00F0                       ; $A7C1CB  9C F0 00     Mx
    LDA $4214                       ; $A7C1CE  AD 14 42     Mx
    STA $00F2                       ; $A7C1D1  8D F2 00     Mx
    LDX $4216                       ; $A7C1D4  AE 16 42     Mx
    STX $00EC                       ; $A7C1D7  8E EC 00     Mx
    LDA $00EB                       ; $A7C1DA  AD EB 00     Mx
    STA $4204                       ; $A7C1DD  8D 04 42     Mx
    LDX $00EE                       ; $A7C1E0  AE EE 00     Mx
    STX $4206                       ; $A7C1E3  8E 06 42     Mx
    NOP                             ; $A7C1E6  EA           Mx
    NOP                             ; $A7C1E7  EA           Mx
    NOP                             ; $A7C1E8  EA           Mx
    NOP                             ; $A7C1E9  EA           Mx
    NOP                             ; $A7C1EA  EA           Mx
    NOP                             ; $A7C1EB  EA           Mx
    NOP                             ; $A7C1EC  EA           Mx
    STZ $00F0                       ; $A7C1ED  9C F0 00     Mx
    LDA $4214                       ; $A7C1F0  AD 14 42     Mx
    ORA $00F1                       ; $A7C1F3  0D F1 00     Mx
    STA $00F1                       ; $A7C1F6  8D F1 00     Mx
    LDX $4216                       ; $A7C1F9  AE 16 42     Mx
    STX $00EB                       ; $A7C1FC  8E EB 00     Mx
    LDA $00EA                       ; $A7C1FF  AD EA 00     Mx
    STA $4204                       ; $A7C202  8D 04 42     Mx
    LDX $00EE                       ; $A7C205  AE EE 00     Mx
    STX $4206                       ; $A7C208  8E 06 42     Mx
    NOP                             ; $A7C20B  EA           Mx
    NOP                             ; $A7C20C  EA           Mx
    NOP                             ; $A7C20D  EA           Mx
    NOP                             ; $A7C20E  EA           Mx
    NOP                             ; $A7C20F  EA           Mx
    NOP                             ; $A7C210  EA           Mx
    NOP                             ; $A7C211  EA           Mx
    NOP                             ; $A7C212  EA           Mx
    LDA $4214                       ; $A7C213  AD 14 42     Mx
    ORA $00F0                       ; $A7C216  0D F0 00     Mx
    STA $00F0                       ; $A7C219  8D F0 00     Mx
    LDA $00F0                       ; $A7C21C  AD F0 00     Mx
    STA $09E0                       ; $A7C21F  8D E0 09     Mx
    LDA $00F2                       ; $A7C222  AD F2 00     Mx
    STA $09E2                       ; $A7C225  8D E2 09     Mx
    LDA $00E5                       ; $A7C228  AD E5 00     Mx
    BPL L_A7C246                    ; $A7C22B  10 19        Mx
    LDA $09E0                       ; $A7C22D  AD E0 09     Mx
    EOR #$FFFF                      ; $A7C230  49 FF FF     Mx
    CLC                             ; $A7C233  18           Mx
    ADC #$0001                      ; $A7C234  69 01 00     Mx
    STA $09E0                       ; $A7C237  8D E0 09     Mx
    LDA $09E2                       ; $A7C23A  AD E2 09     Mx
    EOR #$FFFF                      ; $A7C23D  49 FF FF     Mx
    ADC #$0000                      ; $A7C240  69 00 00     Mx
    STA $09E2                       ; $A7C243  8D E2 09     Mx
L_A7C246:
    LDA $00DF                       ; $A7C246  AD DF 00     Mx
    STA $00E5                       ; $A7C249  8D E5 00     Mx
    LDA $00DF                       ; $A7C24C  AD DF 00     Mx
    BPL L_A7C25B                    ; $A7C24F  10 0A        Mx
    EOR #$FFFF                      ; $A7C251  49 FF FF     Mx
    CLC                             ; $A7C254  18           Mx
    ADC #$0001                      ; $A7C255  69 01 00     Mx
    STA $00DF                       ; $A7C258  8D DF 00     Mx
L_A7C25B:
    LDX $00DC                       ; $A7C25B  AE DC 00     Mx
    STX $00EE                       ; $A7C25E  8E EE 00     Mx
    LDA #$0000                      ; $A7C261  A9 00 00     Mx
    STA $00EA                       ; $A7C264  8D EA 00     Mx
    LDA $00DF                       ; $A7C267  AD DF 00     Mx
    STA $4204                       ; $A7C26A  8D 04 42     Mx
    LDX $00EE                       ; $A7C26D  AE EE 00     Mx
    STX $4206                       ; $A7C270  8E 06 42     Mx
    NOP                             ; $A7C273  EA           Mx
    NOP                             ; $A7C274  EA           Mx
    NOP                             ; $A7C275  EA           Mx
    NOP                             ; $A7C276  EA           Mx
    NOP                             ; $A7C277  EA           Mx
    NOP                             ; $A7C278  EA           Mx
    NOP                             ; $A7C279  EA           Mx
    STZ $00F0                       ; $A7C27A  9C F0 00     Mx
    LDA $4214                       ; $A7C27D  AD 14 42     Mx
    STA $00F2                       ; $A7C280  8D F2 00     Mx
    LDX $4216                       ; $A7C283  AE 16 42     Mx
    STX $00EC                       ; $A7C286  8E EC 00     Mx
    LDA $00EB                       ; $A7C289  AD EB 00     Mx
    STA $4204                       ; $A7C28C  8D 04 42     Mx
    LDX $00EE                       ; $A7C28F  AE EE 00     Mx
    STX $4206                       ; $A7C292  8E 06 42     Mx
    NOP                             ; $A7C295  EA           Mx
    NOP                             ; $A7C296  EA           Mx
    NOP                             ; $A7C297  EA           Mx
    NOP                             ; $A7C298  EA           Mx
    NOP                             ; $A7C299  EA           Mx
    NOP                             ; $A7C29A  EA           Mx
    NOP                             ; $A7C29B  EA           Mx
    STZ $00F0                       ; $A7C29C  9C F0 00     Mx
    LDA $4214                       ; $A7C29F  AD 14 42     Mx
    ORA $00F1                       ; $A7C2A2  0D F1 00     Mx
    STA $00F1                       ; $A7C2A5  8D F1 00     Mx
    LDX $4216                       ; $A7C2A8  AE 16 42     Mx
    STX $00EB                       ; $A7C2AB  8E EB 00     Mx
    LDA $00EA                       ; $A7C2AE  AD EA 00     Mx
    STA $4204                       ; $A7C2B1  8D 04 42     Mx
    LDX $00EE                       ; $A7C2B4  AE EE 00     Mx
    STX $4206                       ; $A7C2B7  8E 06 42     Mx
    NOP                             ; $A7C2BA  EA           Mx
    NOP                             ; $A7C2BB  EA           Mx
    NOP                             ; $A7C2BC  EA           Mx
    NOP                             ; $A7C2BD  EA           Mx
    NOP                             ; $A7C2BE  EA           Mx
    NOP                             ; $A7C2BF  EA           Mx
    NOP                             ; $A7C2C0  EA           Mx
    NOP                             ; $A7C2C1  EA           Mx
    LDA $4214                       ; $A7C2C2  AD 14 42     Mx
    ORA $00F0                       ; $A7C2C5  0D F0 00     Mx
    STA $00F0                       ; $A7C2C8  8D F0 00     Mx
    LDA $00F0                       ; $A7C2CB  AD F0 00     Mx
    STA $09E8                       ; $A7C2CE  8D E8 09     Mx
    LDA $00F2                       ; $A7C2D1  AD F2 00     Mx
    STA $09EA                       ; $A7C2D4  8D EA 09     Mx
    LDA $00E5                       ; $A7C2D7  AD E5 00     Mx
    BPL L_A7C2F5                    ; $A7C2DA  10 19        Mx
    LDA $09E8                       ; $A7C2DC  AD E8 09     Mx
    EOR #$FFFF                      ; $A7C2DF  49 FF FF     Mx
    CLC                             ; $A7C2E2  18           Mx
    ADC #$0001                      ; $A7C2E3  69 01 00     Mx
    STA $09E8                       ; $A7C2E6  8D E8 09     Mx
    LDA $09EA                       ; $A7C2E9  AD EA 09     Mx
    EOR #$FFFF                      ; $A7C2EC  49 FF FF     Mx
    ADC #$0000                      ; $A7C2EF  69 00 00     Mx
    STA $09EA                       ; $A7C2F2  8D EA 09     Mx
L_A7C2F5:
    LDA $00DC                       ; $A7C2F5  AD DC 00     Mx
    SEP #$20                        ; $A7C2F8  E2 20        Mx
    STA $4202                       ; $A7C2FA  8D 02 42     mx
    LDA #$80                        ; $A7C2FD  A9 80        mx
    STA $4203                       ; $A7C2FF  8D 03 42     mx
    NOP                             ; $A7C302  EA           mx
    NOP                             ; $A7C303  EA           mx
    NOP                             ; $A7C304  EA           mx
    REP #$20                        ; $A7C305  C2 20        mx
    LDA $4216                       ; $A7C307  AD 16 42     Mx
    STA $00A8                       ; $A7C30A  8D A8 00     Mx
    LDA $00DC                       ; $A7C30D  AD DC 00     Mx
    SEP #$20                        ; $A7C310  E2 20        Mx
    STA $4202                       ; $A7C312  8D 02 42     mx
    LDA #$12                        ; $A7C315  A9 12        mx
    STA $4203                       ; $A7C317  8D 03 42     mx
    NOP                             ; $A7C31A  EA           mx
    REP #$20                        ; $A7C31B  C2 20        mx
    STZ $00F4                       ; $A7C31D  9C F4 00     Mx
    STZ $00F2                       ; $A7C320  9C F2 00     Mx
    LDA $4216                       ; $A7C323  AD 16 42     Mx
    STA $00F3                       ; $A7C326  8D F3 00     Mx
    LDA $00F2                       ; $A7C329  AD F2 00     Mx
    CLC                             ; $A7C32C  18           Mx
    ADC $00A8                       ; $A7C32D  6D A8 00     Mx
    STA $00F2                       ; $A7C330  8D F2 00     Mx
    LDA $00F4                       ; $A7C333  AD F4 00     Mx
    ADC #$0000                      ; $A7C336  69 00 00     Mx
    STA $00F4                       ; $A7C339  8D F4 00     Mx
    LDA $00F2                       ; $A7C33C  AD F2 00     Mx
    EOR #$FFFF                      ; $A7C33F  49 FF FF     Mx
    CLC                             ; $A7C342  18           Mx
    ADC #$0001                      ; $A7C343  69 01 00     Mx
    STA $00A4                       ; $A7C346  8D A4 00     Mx
    LDA $00F4                       ; $A7C349  AD F4 00     Mx
    EOR #$FFFF                      ; $A7C34C  49 FF FF     Mx
    ADC #$0000                      ; $A7C34F  69 00 00     Mx
    STA $00A6                       ; $A7C352  8D A6 00     Mx
    LDA $09D8                       ; $A7C355  AD D8 09     Mx
    SEC                             ; $A7C358  38           Mx
    SBC #$0000                      ; $A7C359  E9 00 00     Mx
    STA $00A8                       ; $A7C35C  8D A8 00     Mx
    LDA $09DA                       ; $A7C35F  AD DA 09     Mx
    SBC $0BC5                       ; $A7C362  ED C5 0B     Mx
    STA $00AA                       ; $A7C365  8D AA 00     Mx
    LDA $00A8                       ; $A7C368  AD A8 00     Mx
    EOR #$FFFF                      ; $A7C36B  49 FF FF     Mx
    CLC                             ; $A7C36E  18           Mx
    ADC #$0001                      ; $A7C36F  69 01 00     Mx
    STA $00A8                       ; $A7C372  8D A8 00     Mx
    LDA $00AA                       ; $A7C375  AD AA 00     Mx
    EOR #$FFFF                      ; $A7C378  49 FF FF     Mx
    ADC #$0000                      ; $A7C37B  69 00 00     Mx
    STA $00AA                       ; $A7C37E  8D AA 00     Mx
    STA $00E5                       ; $A7C381  8D E5 00     Mx
    BPL L_A7C39F                    ; $A7C384  10 19        Mx
    LDA $00A8                       ; $A7C386  AD A8 00     Mx
    EOR #$FFFF                      ; $A7C389  49 FF FF     Mx
    CLC                             ; $A7C38C  18           Mx
    ADC #$0001                      ; $A7C38D  69 01 00     Mx
    STA $00A8                       ; $A7C390  8D A8 00     Mx
    LDA $00AA                       ; $A7C393  AD AA 00     Mx
    EOR #$FFFF                      ; $A7C396  49 FF FF     Mx
    ADC #$0000                      ; $A7C399  69 00 00     Mx
    STA $00AA                       ; $A7C39C  8D AA 00     Mx
L_A7C39F:
    LDX $00DC                       ; $A7C39F  AE DC 00     Mx
    STX $00EE                       ; $A7C3A2  8E EE 00     Mx
    LDA $00A8                       ; $A7C3A5  AD A8 00     Mx
    STA $00EA                       ; $A7C3A8  8D EA 00     Mx
    LDA $00AA                       ; $A7C3AB  AD AA 00     Mx
    STA $4204                       ; $A7C3AE  8D 04 42     Mx
    LDX $00EE                       ; $A7C3B1  AE EE 00     Mx
    STX $4206                       ; $A7C3B4  8E 06 42     Mx
    NOP                             ; $A7C3B7  EA           Mx
    NOP                             ; $A7C3B8  EA           Mx
    NOP                             ; $A7C3B9  EA           Mx
    NOP                             ; $A7C3BA  EA           Mx
    NOP                             ; $A7C3BB  EA           Mx
    NOP                             ; $A7C3BC  EA           Mx
    NOP                             ; $A7C3BD  EA           Mx
    STZ $00F0                       ; $A7C3BE  9C F0 00     Mx
    LDA $4214                       ; $A7C3C1  AD 14 42     Mx
    STA $00F2                       ; $A7C3C4  8D F2 00     Mx
    LDX $4216                       ; $A7C3C7  AE 16 42     Mx
    STX $00EC                       ; $A7C3CA  8E EC 00     Mx
    LDA $00EB                       ; $A7C3CD  AD EB 00     Mx
    STA $4204                       ; $A7C3D0  8D 04 42     Mx
    LDX $00EE                       ; $A7C3D3  AE EE 00     Mx
    STX $4206                       ; $A7C3D6  8E 06 42     Mx
    NOP                             ; $A7C3D9  EA           Mx
    NOP                             ; $A7C3DA  EA           Mx
    NOP                             ; $A7C3DB  EA           Mx
    NOP                             ; $A7C3DC  EA           Mx
    NOP                             ; $A7C3DD  EA           Mx
    NOP                             ; $A7C3DE  EA           Mx
    NOP                             ; $A7C3DF  EA           Mx
    STZ $00F0                       ; $A7C3E0  9C F0 00     Mx
    LDA $4214                       ; $A7C3E3  AD 14 42     Mx
    ORA $00F1                       ; $A7C3E6  0D F1 00     Mx
    STA $00F1                       ; $A7C3E9  8D F1 00     Mx
    LDX $4216                       ; $A7C3EC  AE 16 42     Mx
    STX $00EB                       ; $A7C3EF  8E EB 00     Mx
    LDA $00EA                       ; $A7C3F2  AD EA 00     Mx
    STA $4204                       ; $A7C3F5  8D 04 42     Mx
    LDX $00EE                       ; $A7C3F8  AE EE 00     Mx
    STX $4206                       ; $A7C3FB  8E 06 42     Mx
    NOP                             ; $A7C3FE  EA           Mx
    NOP                             ; $A7C3FF  EA           Mx
    NOP                             ; $A7C400  EA           Mx
    NOP                             ; $A7C401  EA           Mx
    NOP                             ; $A7C402  EA           Mx
    NOP                             ; $A7C403  EA           Mx
    NOP                             ; $A7C404  EA           Mx
    NOP                             ; $A7C405  EA           Mx
    LDA $4214                       ; $A7C406  AD 14 42     Mx
    ORA $00F0                       ; $A7C409  0D F0 00     Mx
    STA $00F0                       ; $A7C40C  8D F0 00     Mx
    LDA $00E5                       ; $A7C40F  AD E5 00     Mx
    BPL L_A7C42D                    ; $A7C412  10 19        Mx
    LDA $00F0                       ; $A7C414  AD F0 00     Mx
    EOR #$FFFF                      ; $A7C417  49 FF FF     Mx
    CLC                             ; $A7C41A  18           Mx
    ADC #$0001                      ; $A7C41B  69 01 00     Mx
    STA $00F0                       ; $A7C41E  8D F0 00     Mx
    LDA $00F2                       ; $A7C421  AD F2 00     Mx
    EOR #$FFFF                      ; $A7C424  49 FF FF     Mx
    ADC #$0000                      ; $A7C427  69 00 00     Mx
    STA $00F2                       ; $A7C42A  8D F2 00     Mx
L_A7C42D:
    LDA $00A4                       ; $A7C42D  AD A4 00     Mx
    SEC                             ; $A7C430  38           Mx
    SBC $00F0                       ; $A7C431  ED F0 00     Mx
    STA $09E4                       ; $A7C434  8D E4 09     Mx
    LDA $00A6                       ; $A7C437  AD A6 00     Mx
    SBC $00F2                       ; $A7C43A  ED F2 00     Mx
    STA $09E6                       ; $A7C43D  8D E6 09     Mx
    LDA $09E4                       ; $A7C440  AD E4 09     Mx
    EOR #$FFFF                      ; $A7C443  49 FF FF     Mx
    CLC                             ; $A7C446  18           Mx
    ADC #$0001                      ; $A7C447  69 01 00     Mx
    STA $09E4                       ; $A7C44A  8D E4 09     Mx
    LDA $09E6                       ; $A7C44D  AD E6 09     Mx
    EOR #$FFFF                      ; $A7C450  49 FF FF     Mx
    ADC #$0000                      ; $A7C453  69 00 00     Mx
    STA $09E6                       ; $A7C456  8D E6 09     Mx
    JMP L_A7BFC8                    ; $A7C459  4C C8 BF     Mx
L_A7C45C:
    LDA #$001E                      ; $A7C45C  A9 1E 00     Mx
    STA $09AE                       ; $A7C45F  8D AE 09     Mx
    LDA #$7800                      ; $A7C462  A9 00 78     Mx
    STA $09E4                       ; $A7C465  8D E4 09     Mx
    LDA #$0003                      ; $A7C468  A9 03 00     Mx
    STA $09E6                       ; $A7C46B  8D E6 09     Mx
    JMP L_A7BFC8                    ; $A7C46E  4C C8 BF     Mx
L_A7C471:
    LDY $0A58                       ; $A7C471  AC 58 0A     Mx
    LDA [$D0],Y                     ; $A7C474  B7 D0        Mx
    STA $09C0                       ; $A7C476  8D C0 09     Mx
    INY                             ; $A7C479  C8           Mx
    INY                             ; $A7C47A  C8           Mx
    STY $0A58                       ; $A7C47B  8C 58 0A     Mx
    JMP L_A7BFC8                    ; $A7C47E  4C C8 BF     Mx
L_A7C481:
    LDA #$0008                      ; $A7C481  A9 08 00     Mx
    STA $09B0                       ; $A7C484  8D B0 09     Mx
    LDA #$0384                      ; $A7C487  A9 84 03     Mx
    STA $00F6                       ; $A7C48A  8D F6 00     Mx
    JMP L_A7BFC8                    ; $A7C48D  4C C8 BF     Mx
L_A7C490:
    LDA $0C19                       ; $A7C490  AD 19 0C     Mx
    CMP $09A8                       ; $A7C493  CD A8 09     Mx
    BNE L_A7C4A1                    ; $A7C496  D0 09        Mx
    LDA #$0002                      ; $A7C498  A9 02 00     Mx
    STA $0BBF                       ; $A7C49B  8D BF 0B     Mx
    STZ $0BC1                       ; $A7C49E  9C C1 0B     Mx
L_A7C4A1:
    LDA #$0019                      ; $A7C4A1  A9 19 00     Mx
    STA $0A32                       ; $A7C4A4  8D 32 0A     Mx
    LDA #$0008                      ; $A7C4A7  A9 08 00     Mx
    STA $09B0                       ; $A7C4AA  8D B0 09     Mx
    JMP L_A7BFC8                    ; $A7C4AD  4C C8 BF     Mx
L_A7C4B0:
    LDY $0A58                       ; $A7C4B0  AC 58 0A     Mx
    LDA [$D0],Y                     ; $A7C4B3  B7 D0        Mx
    PHY                             ; $A7C4B5  5A           Mx
    CMP #$0011                      ; $A7C4B6  C9 11 00     Mx
    BNE L_A7C4C3                    ; $A7C4B9  D0 08        Mx
    LDX $1611                       ; $A7C4BB  AE 11 16     Mx
    BEQ L_A7C4D6                    ; $A7C4BE  F0 16        Mx
    JMP L_A7C4E0                    ; $A7C4C0  4C E0 C4     Mx
L_A7C4C3:
    CMP #$0000                      ; $A7C4C3  C9 00 00     Mx
    BNE L_A7C4D0                    ; $A7C4C6  D0 08        Mx
    LDX #$01                        ; $A7C4C8  A2 01        Mx
    STX $15F5                       ; $A7C4CA  8E F5 15     Mx
    STZ $15F7                       ; $A7C4CD  9C F7 15     Mx
L_A7C4D0:
    JSL L_BDFDF3                    ; $A7C4D0  22 F3 FD BD  Mx
    BRA L_A7C4E0                    ; $A7C4D4  80 0A        Mx
L_A7C4D6:
    JSL L_BDFDF3                    ; $A7C4D6  22 F3 FD BD  Mx
    LDA #$0064                      ; $A7C4DA  A9 64 00     Mx
    STA $1611                       ; $A7C4DD  8D 11 16     Mx
L_A7C4E0:
    PLY                             ; $A7C4E0  7A           Mx
    INY                             ; $A7C4E1  C8           Mx
    INY                             ; $A7C4E2  C8           Mx
    STY $0A58                       ; $A7C4E3  8C 58 0A     Mx
    JMP L_A7BFC8                    ; $A7C4E6  4C C8 BF     Mx
L_A7C4E9:
    LDY $0A58                       ; $A7C4E9  AC 58 0A     Mx
    LDA [$D0],Y                     ; $A7C4EC  B7 D0        Mx
    STA $1137                       ; $A7C4EE  8D 37 11     Mx
    INY                             ; $A7C4F1  C8           Mx
    INY                             ; $A7C4F2  C8           Mx
    STY $0A58                       ; $A7C4F3  8C 58 0A     Mx
    JMP L_A7BFC8                    ; $A7C4F6  4C C8 BF     Mx
L_A7C4F9:
    LDX $09C0                       ; $A7C4F9  AE C0 09     Mx
    LDA $A7E35F,X                   ; $A7C4FC  BF 5F E3 A7  Mx
    AND #$0003                      ; $A7C500  29 03 00     Mx
    CMP #$0002                      ; $A7C503  C9 02 00     Mx
    BEQ L_A7C511                    ; $A7C506  F0 09        Mx
    LDA #$0006                      ; $A7C508  A9 06 00     Mx
    STA $09C0                       ; $A7C50B  8D C0 09     Mx
    JMP L_A7BFC8                    ; $A7C50E  4C C8 BF     Mx
L_A7C511:
    LDA #$0002                      ; $A7C511  A9 02 00     Mx
    STA $09C0                       ; $A7C514  8D C0 09     Mx
    JMP L_A7BFC8                    ; $A7C517  4C C8 BF     Mx
L_A7C51A:
    LDA $0B4A                       ; $A7C51A  AD 4A 0B     Mx
    BNE L_A7C524                    ; $A7C51D  D0 05        Mx
    STZ $15F5                       ; $A7C51F  9C F5 15     Mx
    BRA L_A7C532                    ; $A7C522  80 0E        Mx
L_A7C524:
    CMP #$0002                      ; $A7C524  C9 02 00     Mx
    BCC L_A7C532                    ; $A7C527  90 09        Mx
    STZ $0CCB                       ; $A7C529  9C CB 0C     Mx
    STZ $0CC9                       ; $A7C52C  9C C9 0C     Mx
    STZ $0CC7                       ; $A7C52F  9C C7 0C     Mx
L_A7C532:
    STZ $0CD1                       ; $A7C532  9C D1 0C     Mx
    STZ $0C11                       ; $A7C535  9C 11 0C     Mx
    LDY $0A58                       ; $A7C538  AC 58 0A     Mx
    LDA [$D0],Y                     ; $A7C53B  B7 D0        Mx
    INY                             ; $A7C53D  C8           Mx
    INY                             ; $A7C53E  C8           Mx
    STY $0A58                       ; $A7C53F  8C 58 0A     Mx
    STA $09C6                       ; $A7C542  8D C6 09     Mx
    STZ $09E2                       ; $A7C545  9C E2 09     Mx
    STZ $09E0                       ; $A7C548  9C E0 09     Mx
    STZ $09EA                       ; $A7C54B  9C EA 09     Mx
    STZ $09E8                       ; $A7C54E  9C E8 09     Mx
    CMP #$0000                      ; $A7C551  C9 00 00     Mx
    BEQ L_A7C55C                    ; $A7C554  F0 06        Mx
    STZ $09E6                       ; $A7C556  9C E6 09     Mx
    STZ $09E4                       ; $A7C559  9C E4 09     Mx
L_A7C55C:
    LDA $0C19                       ; $A7C55C  AD 19 0C     Mx
    CMP $09A8                       ; $A7C55F  CD A8 09     Mx
    BNE L_A7C591                    ; $A7C562  D0 2D        Mx
    STZ $0C19                       ; $A7C564  9C 19 0C     Mx
    STZ $00CC                       ; $A7C567  9C CC 00     Mx
    STZ $0C2B                       ; $A7C56A  9C 2B 0C     Mx
    STZ $0BEF                       ; $A7C56D  9C EF 0B     Mx
    STZ $0BF1                       ; $A7C570  9C F1 0B     Mx
    LDA #$0002                      ; $A7C573  A9 02 00     Mx
    STA $0BBF                       ; $A7C576  8D BF 0B     Mx
    LDA #$0001                      ; $A7C579  A9 01 00     Mx
    STA $0BC1                       ; $A7C57C  8D C1 0B     Mx
    LDA $0A0A                       ; $A7C57F  AD 0A 0A     Mx
    STA $0BD9                       ; $A7C582  8D D9 0B     Mx
    LDA #$0374                      ; $A7C585  A9 74 03     Mx
    STA $0BE1                       ; $A7C588  8D E1 0B     Mx
    LDA #$0068                      ; $A7C58B  A9 68 00     Mx
    STA $0BDD                       ; $A7C58E  8D DD 0B     Mx
L_A7C591:
    LDA #$0019                      ; $A7C591  A9 19 00     Mx
    STA $0A32                       ; $A7C594  8D 32 0A     Mx
    STZ $0C2B                       ; $A7C597  9C 2B 0C     Mx
    STZ $00E5                       ; $A7C59A  9C E5 00     Mx
    LDA $0B4A                       ; $A7C59D  AD 4A 0B     Mx
    CMP #$0002                      ; $A7C5A0  C9 02 00     Mx
    BCS L_A7C5BA                    ; $A7C5A3  B0 15        Mx
    LDA $1D57                       ; $A7C5A5  AD 57 1D     Mx
    CMP #$07AE                      ; $A7C5A8  C9 AE 07     Mx
    BCS L_A7C5BA                    ; $A7C5AB  B0 0D        Mx
    LDA $1D56                       ; $A7C5AD  AD 56 1D     Mx
    AND #$0007                      ; $A7C5B0  29 07 00     Mx
    SEC                             ; $A7C5B3  38           Mx
    SBC #$0003                      ; $A7C5B4  E9 03 00     Mx
    STA $00E5                       ; $A7C5B7  8D E5 00     Mx
L_A7C5BA:
    LDA $0BD9                       ; $A7C5BA  AD D9 0B     Mx
    CLC                             ; $A7C5BD  18           Mx
    ADC $00E5                       ; $A7C5BE  6D E5 00     Mx
    STA $0BD9                       ; $A7C5C1  8D D9 0B     Mx
    LDA $0A82                       ; $A7C5C4  AD 82 0A     Mx
    BPL L_A7C5EE                    ; $A7C5C7  10 25        Mx
    BPL L_A7C5D2                    ; $A7C5C9  10 07        Mx
    EOR #$FFFF                      ; $A7C5CB  49 FF FF     Mx
    CLC                             ; $A7C5CE  18           Mx
    ADC #$0001                      ; $A7C5CF  69 01 00     Mx
L_A7C5D2:
    CMP #$0010                      ; $A7C5D2  C9 10 00     Mx
    BCC L_A7C5DA                    ; $A7C5D5  90 03        Mx
    LDA #$0010                      ; $A7C5D7  A9 10 00     Mx
L_A7C5DA:
    LSR                             ; $A7C5DA  4A           Mx
    INC                             ; $A7C5DB  1A           Mx
    STA $00A4                       ; $A7C5DC  8D A4 00     Mx
    LDA $1D58                       ; $A7C5DF  AD 58 1D     Mx
    AND #$000F                      ; $A7C5E2  29 0F 00     Mx
    INC                             ; $A7C5E5  1A           Mx
    CMP $00A4                       ; $A7C5E6  CD A4 00     Mx
    BCS L_A7C5F6                    ; $A7C5E9  B0 0B        Mx
    JMP L_A7C5F9                    ; $A7C5EB  4C F9 C5     Mx
L_A7C5EE:
    LDA $1D58                       ; $A7C5EE  AD 58 1D     Mx
    AND #$001F                      ; $A7C5F1  29 1F 00     Mx
    BEQ L_A7C5F9                    ; $A7C5F4  F0 03        Mx
L_A7C5F6:
    JMP L_A7C676                    ; $A7C5F6  4C 76 C6     Mx
L_A7C5F9:
    LDA $0B4A                       ; $A7C5F9  AD 4A 0B     Mx
    CMP #$0002                      ; $A7C5FC  C9 02 00     Mx
    BCS L_A7C5F6                    ; $A7C5FF  B0 F5        Mx
    LDA $0A82                       ; $A7C601  AD 82 0A     Mx
    BMI L_A7C60C                    ; $A7C604  30 06        Mx
    SEC                             ; $A7C606  38           Mx
    SBC #$0002                      ; $A7C607  E9 02 00     Mx
    BPL L_A7C5F6                    ; $A7C60A  10 EA        Mx
L_A7C60C:
    LDX $09A8                       ; $A7C60C  AE A8 09     Mx
    CPX $0A96                       ; $A7C60F  EC 96 0A     Mx
    BEQ L_A7C676                    ; $A7C612  F0 62        Mx
    LDA #$001C                      ; $A7C614  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $A7C617  22 F3 FD BD  Mx
    LDA #$001C                      ; $A7C61B  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $A7C61E  22 F3 FD BD  Mx
    LDA #$001C                      ; $A7C622  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $A7C625  22 F3 FD BD  Mx
    LDA $1D56                       ; $A7C629  AD 56 1D     Mx
    STA $0B84                       ; $A7C62C  8D 84 0B     Mx
    LDA $1D58                       ; $A7C62F  AD 58 1D     Mx
    AND #$0003                      ; $A7C632  29 03 00     Mx
    SEC                             ; $A7C635  38           Mx
    SBC #$0002                      ; $A7C636  E9 02 00     Mx
    STA $00D6                       ; $A7C639  8D D6 00     Mx
    LDA $1D57                       ; $A7C63C  AD 57 1D     Mx
    CLC                             ; $A7C63F  18           Mx
    ADC #$4000                      ; $A7C640  69 00 40     Mx
    STA $0B9F                       ; $A7C643  8D 9F 0B     Mx
    LDA $1D57                       ; $A7C646  AD 57 1D     Mx
    AND #$0001                      ; $A7C649  29 01 00     Mx
    ADC #$0000                      ; $A7C64C  69 00 00     Mx
    STA $00E8                       ; $A7C64F  8D E8 00     Mx
    LDA #$006C                      ; $A7C652  A9 6C 00     Mx
    STA $0BDD                       ; $A7C655  8D DD 0B     Mx
    LDA #$F100                      ; $A7C658  A9 00 F1     Mx
    STA $0B88                       ; $A7C65B  8D 88 0B     Mx
    LDA #$FFFA                      ; $A7C65E  A9 FA FF     Mx
    STA $00D9                       ; $A7C661  8D D9 00     Mx
    LDA #$000F                      ; $A7C664  A9 0F 00     Mx
    STA $077A                       ; $A7C667  8D 7A 07     Mx
    STA $0862                       ; $A7C66A  8D 62 08     Mx
    STA $094A                       ; $A7C66D  8D 4A 09     Mx
    STA $0A32                       ; $A7C670  8D 32 0A     Mx
    JMP L_A7C68E                    ; $A7C673  4C 8E C6     Mx
L_A7C676:
    STZ $00E8                       ; $A7C676  9C E8 00     Mx
    STZ $0B9F                       ; $A7C679  9C 9F 0B     Mx
    STZ $00D6                       ; $A7C67C  9C D6 00     Mx
    STZ $0B84                       ; $A7C67F  9C 84 0B     Mx
    LDA #$9400                      ; $A7C682  A9 00 94     Mx
    STA $0B88                       ; $A7C685  8D 88 0B     Mx
    LDA #$0000                      ; $A7C688  A9 00 00     Mx
    STA $00D9                       ; $A7C68B  8D D9 00     Mx
L_A7C68E:
    LDA $0B9F                       ; $A7C68E  AD 9F 0B     Mx
    STA $0BE3                       ; $A7C691  8D E3 0B     Mx
    LDA $00E8                       ; $A7C694  AD E8 00     Mx
    STA $0BE5                       ; $A7C697  8D E5 0B     Mx
    LDA $0B84                       ; $A7C69A  AD 84 0B     Mx
    STA $0BEB                       ; $A7C69D  8D EB 0B     Mx
    LDA $00D6                       ; $A7C6A0  AD D6 00     Mx
    STA $0BED                       ; $A7C6A3  8D ED 0B     Mx
    LDA $0B88                       ; $A7C6A6  AD 88 0B     Mx
    STA $0BE7                       ; $A7C6A9  8D E7 0B     Mx
    LDA $00D9                       ; $A7C6AC  AD D9 00     Mx
    STA $0BE9                       ; $A7C6AF  8D E9 0B     Mx
    JMP L_A7BFC8                    ; $A7C6B2  4C C8 BF     Mx
L_A7C6B5:
    LDA $09E6                       ; $A7C6B5  AD E6 09     Mx
    BPL L_A7C6D3                    ; $A7C6B8  10 19        Mx
    LDA $09CC                       ; $A7C6BA  AD CC 09     Mx
    BMI L_A7C6C4                    ; $A7C6BD  30 05        Mx
    ORA $09CE                       ; $A7C6BF  0D CE 09     Mx
    BNE L_A7C6D3                    ; $A7C6C2  D0 0F        Mx
L_A7C6C4:
    STZ $09DA                       ; $A7C6C4  9C DA 09     Mx
    STZ $09D8                       ; $A7C6C7  9C D8 09     Mx
    STZ $09E6                       ; $A7C6CA  9C E6 09     Mx
    STZ $09E4                       ; $A7C6CD  9C E4 09     Mx
    JMP L_A7C6F5                    ; $A7C6D0  4C F5 C6     Mx
L_A7C6D3:
    ORA $09E4                       ; $A7C6D3  0D E4 09     Mx
    BNE L_A7C6E2                    ; $A7C6D6  D0 0A        Mx
    LDA $09C6                       ; $A7C6D8  AD C6 09     Mx
    BEQ L_A7C6E2                    ; $A7C6DB  F0 05        Mx
    DEC $09C6                       ; $A7C6DD  CE C6 09     Mx
    BNE L_A7C6F5                    ; $A7C6E0  D0 13        Mx
L_A7C6E2:
    LDA $09E4                       ; $A7C6E2  AD E4 09     Mx
    SEC                             ; $A7C6E5  38           Mx
    SBC #$2500                      ; $A7C6E6  E9 00 25     Mx
    STA $09E4                       ; $A7C6E9  8D E4 09     Mx
    LDA $09E6                       ; $A7C6EC  AD E6 09     Mx
    SBC #$0000                      ; $A7C6EF  E9 00 00     Mx
    STA $09E6                       ; $A7C6F2  8D E6 09     Mx
L_A7C6F5:
    LDA $09AE                       ; $A7C6F5  AD AE 09     Mx
    BEQ L_A7C752                    ; $A7C6F8  F0 58        Mx
    DEC $09AE                       ; $A7C6FA  CE AE 09     Mx
    BEQ L_A7C752                    ; $A7C6FD  F0 53        Mx
    LDA $09AE                       ; $A7C6FF  AD AE 09     Mx
    CMP #$000A                      ; $A7C702  C9 0A 00     Mx
    BCS L_A7C716                    ; $A7C705  B0 0F        Mx
    STZ $15ED                       ; $A7C707  9C ED 15     Mx
    STZ $15F5                       ; $A7C70A  9C F5 15     Mx
    LDA #$FFFF                      ; $A7C70D  A9 FF FF     Mx
    STA $15F3                       ; $A7C710  8D F3 15     Mx
L_A7C713:
    JMP L_A7C796                    ; $A7C713  4C 96 C7     Mx
L_A7C716:
    LDA $15ED                       ; $A7C716  AD ED 15     Mx
    BEQ L_A7C713                    ; $A7C719  F0 F8        Mx
    LDA $15F3                       ; $A7C71B  AD F3 15     Mx
    CLC                             ; $A7C71E  18           Mx
    ADC #$0001                      ; $A7C71F  69 01 00     Mx
    CMP #$0006                      ; $A7C722  C9 06 00     Mx
    BCC L_A7C72A                    ; $A7C725  90 03        Mx
    LDA #$0000                      ; $A7C727  A9 00 00     Mx
L_A7C72A:
    STA $15F3                       ; $A7C72A  8D F3 15     Mx
    BNE L_A7C713                    ; $A7C72D  D0 E4        Mx
    LDA $1D56                       ; $A7C72F  AD 56 1D     Mx
    AND #$001F                      ; $A7C732  29 1F 00     Mx
    STA $00A4                       ; $A7C735  8D A4 00     Mx
    LDA #$0106                      ; $A7C738  A9 06 01     Mx
    SEC                             ; $A7C73B  38           Mx
    SBC $012B                       ; $A7C73C  ED 2B 01     Mx
    SEC                             ; $A7C73F  38           Mx
    SBC $00A4                       ; $A7C740  ED A4 00     Mx
    STA $15F1                       ; $A7C743  8D F1 15     Mx
    LDA $1D58                       ; $A7C746  AD 58 1D     Mx
    AND #$00FF                      ; $A7C749  29 FF 00     Mx
    STA $15EF                       ; $A7C74C  8D EF 15     Mx
    JMP L_A7C796                    ; $A7C74F  4C 96 C7     Mx
L_A7C752:
    LDA $09DA                       ; $A7C752  AD DA 09     Mx
    ORA $09D8                       ; $A7C755  0D D8 09     Mx
    BEQ L_A7C75D                    ; $A7C758  F0 03        Mx
    JMP L_A7C796                    ; $A7C75A  4C 96 C7     Mx
L_A7C75D:
    STZ $09E2                       ; $A7C75D  9C E2 09     Mx
    STZ $09E0                       ; $A7C760  9C E0 09     Mx
    STZ $09EA                       ; $A7C763  9C EA 09     Mx
    STZ $09E8                       ; $A7C766  9C E8 09     Mx
    STZ $09E6                       ; $A7C769  9C E6 09     Mx
    STZ $09E4                       ; $A7C76C  9C E4 09     Mx
    LDA #$0014                      ; $A7C76F  A9 14 00     Mx
    STA $0A30                       ; $A7C772  8D 30 0A     Mx
    LDA #$003C                      ; $A7C775  A9 3C 00     Mx
    STA $09AE                       ; $A7C778  8D AE 09     Mx
    LDA #$0000                      ; $A7C77B  A9 00 00     Mx
    STA $09AC                       ; $A7C77E  8D AC 09     Mx
    LDA #$FFFF                      ; $A7C781  A9 FF FF     Mx
    STA $09B2                       ; $A7C784  8D B2 09     Mx
    STZ $09B4                       ; $A7C787  9C B4 09     Mx
    STZ $09FA                       ; $A7C78A  9C FA 09     Mx
    STZ $09B0                       ; $A7C78D  9C B0 09     Mx
    LDA #$FFF8                      ; $A7C790  A9 F8 FF     Mx
    STA $09B6                       ; $A7C793  8D B6 09     Mx
L_A7C796:
    RTS                             ; $A7C796  60           Mx
L_A7C797:
    LDA $09B2                       ; $A7C797  AD B2 09     Mx
    CMP #$0001                      ; $A7C79A  C9 01 00     Mx
    BEQ L_A7C7C6                    ; $A7C79D  F0 27        Mx
    STZ $09E2                       ; $A7C79F  9C E2 09     Mx
    STZ $09E0                       ; $A7C7A2  9C E0 09     Mx
    STZ $09EA                       ; $A7C7A5  9C EA 09     Mx
    STZ $09E8                       ; $A7C7A8  9C E8 09     Mx
    LDA #$0002                      ; $A7C7AB  A9 02 00     Mx
    STA $09B0                       ; $A7C7AE  8D B0 09     Mx
    STZ $0C29                       ; $A7C7B1  9C 29 0C     Mx
    STZ $0C27                       ; $A7C7B4  9C 27 0C     Mx
    LDA #$08C0                      ; $A7C7B7  A9 C0 08     Mx
    STA $0C25                       ; $A7C7BA  8D 25 0C     Mx
    LDA $0C19                       ; $A7C7BD  AD 19 0C     Mx
    STA $0C1F                       ; $A7C7C0  8D 1F 0C     Mx
    JMP L_A7C81D                    ; $A7C7C3  4C 1D C8     Mx
L_A7C7C6:
    LDA #$0001                      ; $A7C7C6  A9 01 00     Mx
    STA $09B4                       ; $A7C7C9  8D B4 09     Mx
    LDA $09A8                       ; $A7C7CC  AD A8 09     Mx
    CMP $0C19                       ; $A7C7CF  CD 19 0C     Mx
    BNE L_A7C81D                    ; $A7C7D2  D0 49        Mx
    LDA $0A3E                       ; $A7C7D4  AD 3E 0A     Mx
    STA $00A4                       ; $A7C7D7  8D A4 00     Mx
    LDA $09DA                       ; $A7C7DA  AD DA 09     Mx
    STA $00A6                       ; $A7C7DD  8D A6 00     Mx
    STZ $0B88                       ; $A7C7E0  9C 88 0B     Mx
    LDA $08EE                       ; $A7C7E3  AD EE 08     Mx
    STA $00AA                       ; $A7C7E6  8D AA 00     Mx
    LDA $08F2                       ; $A7C7E9  AD F2 08     Mx
    STA $00AC                       ; $A7C7EC  8D AC 00     Mx
    LDA $08F6                       ; $A7C7EF  AD F6 08     Mx
    STA $00AE                       ; $A7C7F2  8D AE 00     Mx
    LDA $08F9                       ; $A7C7F5  AD F9 08     Mx
    STA $00A8                       ; $A7C7F8  8D A8 00     Mx
    LDA $0901                       ; $A7C7FB  AD 01 09     Mx
    STA $00B0                       ; $A7C7FE  8D B0 00     Mx
    STZ $0974                       ; $A7C801  9C 74 09     Mx
    STZ $0C39                       ; $A7C804  9C 39 0C     Mx
    JSL L_A7DCCB                    ; $A7C807  22 CB DC A7  Mx
    LDA $00DC                       ; $A7C80B  AD DC 00     Mx
    STA $0972                       ; $A7C80E  8D 72 09     Mx
    LDA #$0019                      ; $A7C811  A9 19 00     Mx
    STA $0A32                       ; $A7C814  8D 32 0A     Mx
    LDA #$0014                      ; $A7C817  A9 14 00     Mx
    STA $0A30                       ; $A7C81A  8D 30 0A     Mx
L_A7C81D:
    LDA $09CC                       ; $A7C81D  AD CC 09     Mx
    BPL L_A7C868                    ; $A7C820  10 46        Mx
L_A7C822:
    STZ $09DA                       ; $A7C822  9C DA 09     Mx
    STZ $09D8                       ; $A7C825  9C D8 09     Mx
    STZ $09CC                       ; $A7C828  9C CC 09     Mx
    STZ $09CE                       ; $A7C82B  9C CE 09     Mx
    STZ $09E6                       ; $A7C82E  9C E6 09     Mx
    STZ $09E4                       ; $A7C831  9C E4 09     Mx
    LDA $0A4C                       ; $A7C834  AD 4C 0A     Mx
    BEQ L_A7C84A                    ; $A7C837  F0 11        Mx
    JSR L_A7D16B                    ; $A7C839  20 6B D1     Mx
    LDA $09AC                       ; $A7C83C  AD AC 09     Mx
    CMP #$002E                      ; $A7C83F  C9 2E 00     Mx
    BEQ L_A7C865                    ; $A7C842  F0 21        Mx
    LDA #$000C                      ; $A7C844  A9 0C 00     Mx
    JMP L_A7C84D                    ; $A7C847  4C 4D C8     Mx
L_A7C84A:
    LDA #$0000                      ; $A7C84A  A9 00 00     Mx
L_A7C84D:
    STA $09AC                       ; $A7C84D  8D AC 09     Mx
    LDA #$FFFF                      ; $A7C850  A9 FF FF     Mx
    STA $09B2                       ; $A7C853  8D B2 09     Mx
    STZ $09B4                       ; $A7C856  9C B4 09     Mx
    STZ $09FA                       ; $A7C859  9C FA 09     Mx
    STZ $09B0                       ; $A7C85C  9C B0 09     Mx
    LDA #$FFF8                      ; $A7C85F  A9 F8 FF     Mx
    STA $09B6                       ; $A7C862  8D B6 09     Mx
L_A7C865:
    JMP L_A7C88D                    ; $A7C865  4C 8D C8     Mx
L_A7C868:
    LDA $09CC                       ; $A7C868  AD CC 09     Mx
    BNE L_A7C87A                    ; $A7C86B  D0 0D        Mx
    LDA $09E6                       ; $A7C86D  AD E6 09     Mx
    BMI L_A7C877                    ; $A7C870  30 05        Mx
    ORA $09E4                       ; $A7C872  0D E4 09     Mx
    BNE L_A7C87A                    ; $A7C875  D0 03        Mx
L_A7C877:
    JMP L_A7C822                    ; $A7C877  4C 22 C8     Mx
L_A7C87A:
    LDA $09E4                       ; $A7C87A  AD E4 09     Mx
    SEC                             ; $A7C87D  38           Mx
    SBC #$2500                      ; $A7C87E  E9 00 25     Mx
    STA $09E4                       ; $A7C881  8D E4 09     Mx
    LDA $09E6                       ; $A7C884  AD E6 09     Mx
    SBC #$0000                      ; $A7C887  E9 00 00     Mx
    STA $09E6                       ; $A7C88A  8D E6 09     Mx
L_A7C88D:
    RTS                             ; $A7C88D  60           Mx
L_A7C88E:
    LDA #$001E                      ; $A7C88E  A9 1E 00     Mx
    STA $0A32                       ; $A7C891  8D 32 0A     Mx
    LDA #$0005                      ; $A7C894  A9 05 00     Mx
    STA $0972                       ; $A7C897  8D 72 09     Mx
    STZ $0A64                       ; $A7C89A  9C 64 0A     Mx
    STZ $0A90                       ; $A7C89D  9C 90 0A     Mx
    LDA $0B6E                       ; $A7C8A0  AD 6E 0B     Mx
    CMP #$0058                      ; $A7C8A3  C9 58 00     Mx
    BCS L_A7C8D6                    ; $A7C8A6  B0 2E        Mx
    LDA $09B2                       ; $A7C8A8  AD B2 09     Mx
    CMP #$0007                      ; $A7C8AB  C9 07 00     Mx
    BCC L_A7C8B5                    ; $A7C8AE  90 05        Mx
    LDA $09B4                       ; $A7C8B0  AD B4 09     Mx
    BEQ L_A7C8B8                    ; $A7C8B3  F0 03        Mx
L_A7C8B5:
    JMP L_A7C9BF                    ; $A7C8B5  4C BF C9     Mx
L_A7C8B8:
    LDA #$003C                      ; $A7C8B8  A9 3C 00     Mx
    STA $09AC                       ; $A7C8BB  8D AC 09     Mx
    LDA #$FFFF                      ; $A7C8BE  A9 FF FF     Mx
    STA $09B2                       ; $A7C8C1  8D B2 09     Mx
    STZ $09B4                       ; $A7C8C4  9C B4 09     Mx
    STZ $09FA                       ; $A7C8C7  9C FA 09     Mx
    STZ $09B0                       ; $A7C8CA  9C B0 09     Mx
    LDA #$FFF8                      ; $A7C8CD  A9 F8 FF     Mx
    STA $09B6                       ; $A7C8D0  8D B6 09     Mx
    JMP L_A7C9BF                    ; $A7C8D3  4C BF C9     Mx
L_A7C8D6:
    LDA $09E4                       ; $A7C8D6  AD E4 09     Mx
    BNE L_A7C8F9                    ; $A7C8D9  D0 1E        Mx
    LDA $09B2                       ; $A7C8DB  AD B2 09     Mx
    CMP #$0008                      ; $A7C8DE  C9 08 00     Mx
    BCC L_A7C8B5                    ; $A7C8E1  90 D2        Mx
    BNE L_A7C8F9                    ; $A7C8E3  D0 14        Mx
    LDA $09B4                       ; $A7C8E5  AD B4 09     Mx
    BNE L_A7C8B5                    ; $A7C8E8  D0 CB        Mx
    LDA #$5600                      ; $A7C8EA  A9 00 56     Mx
    STA $09E4                       ; $A7C8ED  8D E4 09     Mx
    LDA #$0004                      ; $A7C8F0  A9 04 00     Mx
    STA $09E6                       ; $A7C8F3  8D E6 09     Mx
    JMP L_A7C9BF                    ; $A7C8F6  4C BF C9     Mx
L_A7C8F9:
    LDX $09A9                       ; $A7C8F9  AE A9 09     Mx
    BNE L_A7C906                    ; $A7C8FC  D0 08        Mx
    LDA #$0003                      ; $A7C8FE  A9 03 00     Mx
    STA $0A34                       ; $A7C901  8D 34 0A     Mx
    BRA L_A7C911                    ; $A7C904  80 0B        Mx
L_A7C906:
    LDA $0A28                       ; $A7C906  AD 28 0A     Mx
    EOR $0A2A                       ; $A7C909  4D 2A 0A     Mx
    BEQ L_A7C911                    ; $A7C90C  F0 03        Mx
    INC $0A34                       ; $A7C90E  EE 34 0A     Mx
L_A7C911:
    LDA $09E4                       ; $A7C911  AD E4 09     Mx
    SEC                             ; $A7C914  38           Mx
    SBC #$2500                      ; $A7C915  E9 00 25     Mx
    STA $09E4                       ; $A7C918  8D E4 09     Mx
    LDA $09E6                       ; $A7C91B  AD E6 09     Mx
    SBC #$0000                      ; $A7C91E  E9 00 00     Mx
    STA $09E6                       ; $A7C921  8D E6 09     Mx
    BMI L_A7C929                    ; $A7C924  30 03        Mx
    JMP L_A7C9B9                    ; $A7C926  4C B9 C9     Mx
L_A7C929:
    LDA $09DA                       ; $A7C929  AD DA 09     Mx
    ORA $09D8                       ; $A7C92C  0D D8 09     Mx
    BNE L_A7C958                    ; $A7C92F  D0 27        Mx
    LDA #$FFFF                      ; $A7C931  A9 FF FF     Mx
    STA $076E                       ; $A7C934  8D 6E 07     Mx
    STA $0A26                       ; $A7C937  8D 26 0A     Mx
    LDA #$0000                      ; $A7C93A  A9 00 00     Mx
    STA $09AC                       ; $A7C93D  8D AC 09     Mx
    LDA #$FFFF                      ; $A7C940  A9 FF FF     Mx
    STA $09B2                       ; $A7C943  8D B2 09     Mx
    STZ $09B4                       ; $A7C946  9C B4 09     Mx
    STZ $09FA                       ; $A7C949  9C FA 09     Mx
    STZ $09B0                       ; $A7C94C  9C B0 09     Mx
    LDA #$FFF8                      ; $A7C94F  A9 F8 FF     Mx
    STA $09B6                       ; $A7C952  8D B6 09     Mx
    JMP L_A7C9BF                    ; $A7C955  4C BF C9     Mx
L_A7C958:
    LDA $09B2                       ; $A7C958  AD B2 09     Mx
    CMP #$000B                      ; $A7C95B  C9 0B 00     Mx
    BEQ L_A7C9B9                    ; $A7C95E  F0 59        Mx
    CMP #$000A                      ; $A7C960  C9 0A 00     Mx
    BNE L_A7C9BF                    ; $A7C963  D0 5A        Mx
    LDA $0BE5                       ; $A7C965  AD E5 0B     Mx
    BNE L_A7C9BF                    ; $A7C968  D0 55        Mx
    LDA $06F4                       ; $A7C96A  AD F4 06     Mx
    CMP #$003C                      ; $A7C96D  C9 3C 00     Mx
    BEQ L_A7C97A                    ; $A7C970  F0 08        Mx
    LDA $0A34                       ; $A7C972  AD 34 0A     Mx
    CMP $0864                       ; $A7C975  CD 64 08     Mx
    BRA L_A7C980                    ; $A7C978  80 06        Mx
L_A7C97A:
    LDA $0A34                       ; $A7C97A  AD 34 0A     Mx
    CMP $077C                       ; $A7C97D  CD 7C 07     Mx
L_A7C980:
    BEQ L_A7C986                    ; $A7C980  F0 04        Mx
    BCC L_A7C9BF                    ; $A7C982  90 3B        Mx
    BRA L_A7C988                    ; $A7C984  80 02        Mx
L_A7C986:
    BRA L_A7C988                    ; $A7C986  80 00        Mx
L_A7C988:
    LDA $0BD9                       ; $A7C988  AD D9 0B     Mx
    CLC                             ; $A7C98B  18           Mx
    ADC #$0014                      ; $A7C98C  69 14 00     Mx
    STA $0BD9                       ; $A7C98F  8D D9 0B     Mx
    LDA #$8000                      ; $A7C992  A9 00 80     Mx
    STA $0BE3                       ; $A7C995  8D E3 0B     Mx
    LDA #$0001                      ; $A7C998  A9 01 00     Mx
    STA $0BE5                       ; $A7C99B  8D E5 0B     Mx
    LDA #$0000                      ; $A7C99E  A9 00 00     Mx
    STA $0BEB                       ; $A7C9A1  8D EB 0B     Mx
    LDA #$0001                      ; $A7C9A4  A9 01 00     Mx
    STA $0BED                       ; $A7C9A7  8D ED 0B     Mx
    LDA #$09A8                      ; $A7C9AA  A9 A8 09     Mx
    STA $0C25                       ; $A7C9AD  8D 25 0C     Mx
    LDA #$0003                      ; $A7C9B0  A9 03 00     Mx
    JSL L_BDFDF3                    ; $A7C9B3  22 F3 FD BD  Mx
    BRA L_A7C9BF                    ; $A7C9B7  80 06        Mx
L_A7C9B9:
    LDA #$0002                      ; $A7C9B9  A9 02 00     Mx
    STA $09B4                       ; $A7C9BC  8D B4 09     Mx
L_A7C9BF:
    RTS                             ; $A7C9BF  60           Mx
L_A7C9C0:
    LDA $0A36                       ; $A7C9C0  AD 36 0A     Mx
    BEQ L_A7C9CD                    ; $A7C9C3  F0 08        Mx
    LDA $0C19                       ; $A7C9C5  AD 19 0C     Mx
    BEQ L_A7C9CD                    ; $A7C9C8  F0 03        Mx
L_A7C9CA:
    JMP L_A7D123                    ; $A7C9CA  4C 23 D1     Mx
L_A7C9CD:
    LDA $0BF9                       ; $A7C9CD  AD F9 0B     Mx
    BNE L_A7C9CA                    ; $A7C9D0  D0 F8        Mx
    LDA $0A5A                       ; $A7C9D2  AD 5A 0A     Mx
    BNE L_A7C9CA                    ; $A7C9D5  D0 F3        Mx
    LDA $0C19                       ; $A7C9D7  AD 19 0C     Mx
    BNE L_A7C9DF                    ; $A7C9DA  D0 03        Mx
L_A7C9DC:
    JMP L_A7CA17                    ; $A7C9DC  4C 17 CA     Mx
L_A7C9DF:
    LDY #$08                        ; $A7C9DF  A0 08        Mx
    LDA ($CC),Y                     ; $A7C9E1  B1 CC        Mx
    AND #$0001                      ; $A7C9E3  29 01 00     Mx
    BNE L_A7C9DC                    ; $A7C9E6  D0 F4        Mx
    LDA $0A16                       ; $A7C9E8  AD 16 0A     Mx
    TAX                             ; $A7C9EB  AA           Mx
    LDA $A7E377,X                   ; $A7C9EC  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7C9F0  29 07 00     Mx
    STA $09C0                       ; $A7C9F3  8D C0 09     Mx
    LDY #$08                        ; $A7C9F6  A0 08        Mx
    LDA ($CC),Y                     ; $A7C9F8  B1 CC        Mx
    AND #$0004                      ; $A7C9FA  29 04 00     Mx
    BNE L_A7CA02                    ; $A7C9FD  D0 03        Mx
    JMP L_A7CAD4                    ; $A7C9FF  4C D4 CA     Mx
L_A7CA02:
    LDA $1D56                       ; $A7CA02  AD 56 1D     Mx
    EOR $1D57                       ; $A7CA05  4D 57 1D     Mx
    EOR $0006                       ; $A7CA08  4D 06 00     Mx
    AND #$0007                      ; $A7CA0B  29 07 00     Mx
    ASL                             ; $A7CA0E  0A           Mx
    TAX                             ; $A7CA0F  AA           Mx
    LDA $A7E5FB,X                   ; $A7CA10  BF FB E5 A7  Mx
    JMP L_A7CAD7                    ; $A7CA14  4C D7 CA     Mx
L_A7CA17:
    LDA $0BDD                       ; $A7CA17  AD DD 0B     Mx
    CMP #$0014                      ; $A7CA1A  C9 14 00     Mx
    BCS L_A7CA22                    ; $A7CA1D  B0 03        Mx
    JMP L_A7CAC7                    ; $A7CA1F  4C C7 CA     Mx
L_A7CA22:
    LDA $0BD9                       ; $A7CA22  AD D9 0B     Mx
    STA $00E2                       ; $A7CA25  8D E2 00     Mx
    LDA $0BE1                       ; $A7CA28  AD E1 0B     Mx
    STA $00E5                       ; $A7CA2B  8D E5 00     Mx
    LDA $0C19                       ; $A7CA2E  AD 19 0C     Mx
    BEQ L_A7CA36                    ; $A7CA31  F0 03        Mx
    JMP L_A7CA7E                    ; $A7CA33  4C 7E CA     Mx
L_A7CA36:
    LDX #$00                        ; $A7CA36  A2 00        Mx
    LDA $0BE4                       ; $A7CA38  AD E4 0B     Mx
    BPL L_A7CA3F                    ; $A7CA3B  10 02        Mx
    LDX #$FF                        ; $A7CA3D  A2 FF        Mx
L_A7CA3F:
    ASL                             ; $A7CA3F  0A           Mx
    ASL                             ; $A7CA40  0A           Mx
    STA $0BAF                       ; $A7CA41  8D AF 0B     Mx
    ASL                             ; $A7CA44  0A           Mx
    ASL                             ; $A7CA45  0A           Mx
    CLC                             ; $A7CA46  18           Mx
    ADC $0BAF                       ; $A7CA47  6D AF 0B     Mx
    STA $00D0                       ; $A7CA4A  8D D0 00     Mx
    STX $00D2                       ; $A7CA4D  8E D2 00     Mx
    LDA $00D1                       ; $A7CA50  AD D1 00     Mx
    CLC                             ; $A7CA53  18           Mx
    ADC $00E2                       ; $A7CA54  6D E2 00     Mx
    STA $00E2                       ; $A7CA57  8D E2 00     Mx
    LDX #$00                        ; $A7CA5A  A2 00        Mx
    LDA $0BEC                       ; $A7CA5C  AD EC 0B     Mx
    BPL L_A7CA63                    ; $A7CA5F  10 02        Mx
    LDX #$FF                        ; $A7CA61  A2 FF        Mx
L_A7CA63:
    ASL                             ; $A7CA63  0A           Mx
    ASL                             ; $A7CA64  0A           Mx
    STA $0BAF                       ; $A7CA65  8D AF 0B     Mx
    ASL                             ; $A7CA68  0A           Mx
    ASL                             ; $A7CA69  0A           Mx
    CLC                             ; $A7CA6A  18           Mx
    ADC $0BAF                       ; $A7CA6B  6D AF 0B     Mx
    STA $00D0                       ; $A7CA6E  8D D0 00     Mx
    STX $00D2                       ; $A7CA71  8E D2 00     Mx
    LDA $00D1                       ; $A7CA74  AD D1 00     Mx
    CLC                             ; $A7CA77  18           Mx
    ADC $00E5                       ; $A7CA78  6D E5 00     Mx
    STA $00E5                       ; $A7CA7B  8D E5 00     Mx
L_A7CA7E:
    LDA $09D6                       ; $A7CA7E  AD D6 09     Mx
    STA $00D0                       ; $A7CA81  8D D0 00     Mx
    LDA $09DE                       ; $A7CA84  AD DE 09     Mx
    STA $00D3                       ; $A7CA87  8D D3 00     Mx
    JSL $00AEF9                     ; $A7CA8A  22 F9 AE 00  Mx
    TAX                             ; $A7CA8E  AA           Mx
    LDA $A7E377,X                   ; $A7CA8F  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7CA93  29 07 00     Mx
    STA $09C0                       ; $A7CA96  8D C0 09     Mx
    LDA $00D3                       ; $A7CA99  AD D3 00     Mx
    CMP #$0060                      ; $A7CA9C  C9 60 00     Mx
    BCC L_A7CAA4                    ; $A7CA9F  90 03        Mx
    JMP L_A7CAD4                    ; $A7CAA1  4C D4 CA     Mx
L_A7CAA4:
    LDA $0C19                       ; $A7CAA4  AD 19 0C     Mx
    BNE L_A7CAB6                    ; $A7CAA7  D0 0D        Mx
    LDA $0BC1                       ; $A7CAA9  AD C1 0B     Mx
    CMP #$0001                      ; $A7CAAC  C9 01 00     Mx
    BNE L_A7CAB6                    ; $A7CAAF  D0 05        Mx
    LDA $0C2B                       ; $A7CAB1  AD 2B 0C     Mx
    BMI L_A7CABB                    ; $A7CAB4  30 05        Mx
L_A7CAB6:
    LDA $00C0                       ; $A7CAB6  AD C0 00     Mx
    BNE L_A7CAC1                    ; $A7CAB9  D0 06        Mx
L_A7CABB:
    LDA #$0022                      ; $A7CABB  A9 22 00     Mx
    JMP L_A7CAD7                    ; $A7CABE  4C D7 CA     Mx
L_A7CAC1:
    LDA #$0024                      ; $A7CAC1  A9 24 00     Mx
    JMP L_A7CAD7                    ; $A7CAC4  4C D7 CA     Mx
L_A7CAC7:
    LDX $0A16                       ; $A7CAC7  AE 16 0A     Mx
    LDA $A7E377,X                   ; $A7CACA  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7CACE  29 07 00     Mx
    STA $09C0                       ; $A7CAD1  8D C0 09     Mx
L_A7CAD4:
    LDA #$0020                      ; $A7CAD4  A9 20 00     Mx
L_A7CAD7:
    CMP #$0022                      ; $A7CAD7  C9 22 00     Mx
    BNE L_A7CAEB                    ; $A7CADA  D0 0F        Mx
    LDX $09C0                       ; $A7CADC  AE C0 09     Mx
    CPX #$04                        ; $A7CADF  E0 04        Mx
    BNE L_A7CB03                    ; $A7CAE1  D0 20        Mx
    LDX #$05                        ; $A7CAE3  A2 05        Mx
    STX $09C0                       ; $A7CAE5  8E C0 09     Mx
    JMP L_A7CB03                    ; $A7CAE8  4C 03 CB     Mx
L_A7CAEB:
    CMP #$0024                      ; $A7CAEB  C9 24 00     Mx
    BNE L_A7CB06                    ; $A7CAEE  D0 16        Mx
    LDX $09C0                       ; $A7CAF0  AE C0 09     Mx
    LDA $A7E613,X                   ; $A7CAF3  BF 13 E6 A7  Mx
    AND #$0007                      ; $A7CAF7  29 07 00     Mx
    STA $09C0                       ; $A7CAFA  8D C0 09     Mx
    LDA #$0024                      ; $A7CAFD  A9 24 00     Mx
    JMP L_A7CB06                    ; $A7CB00  4C 06 CB     Mx
L_A7CB03:
    LDA #$0022                      ; $A7CB03  A9 22 00     Mx
L_A7CB06:
    STA $09AC                       ; $A7CB06  8D AC 09     Mx
    LDA #$FFFF                      ; $A7CB09  A9 FF FF     Mx
    STA $09B2                       ; $A7CB0C  8D B2 09     Mx
    STZ $09B4                       ; $A7CB0F  9C B4 09     Mx
    STZ $09FA                       ; $A7CB12  9C FA 09     Mx
    STZ $09B0                       ; $A7CB15  9C B0 09     Mx
    LDA #$FFF8                      ; $A7CB18  A9 F8 FF     Mx
    STA $09B6                       ; $A7CB1B  8D B6 09     Mx
    LDA $0C19                       ; $A7CB1E  AD 19 0C     Mx
    BNE L_A7CB26                    ; $A7CB21  D0 03        Mx
    JMP L_A7CC95                    ; $A7CB23  4C 95 CC     Mx
L_A7CB26:
    LDA #$00FC                      ; $A7CB26  A9 FC 00     Mx
    STA $00D0                       ; $A7CB29  8D D0 00     Mx
    LDA $09DE                       ; $A7CB2C  AD DE 09     Mx
    CMP #$0374                      ; $A7CB2F  C9 74 03     Mx
    BCS L_A7CB3C                    ; $A7CB32  B0 08        Mx
    LDA #$036B                      ; $A7CB34  A9 6B 03     Mx
    STA $00D3                       ; $A7CB37  8D D3 00     Mx
    BRA L_A7CB42                    ; $A7CB3A  80 06        Mx
L_A7CB3C:
    LDA #$037D                      ; $A7CB3C  A9 7D 03     Mx
    STA $00D3                       ; $A7CB3F  8D D3 00     Mx
L_A7CB42:
    LDY #$08                        ; $A7CB42  A0 08        Mx
    LDA ($CC),Y                     ; $A7CB44  B1 CC        Mx
    AND #$0004                      ; $A7CB46  29 04 00     Mx
    BEQ L_A7CB69                    ; $A7CB49  F0 1E        Mx
    LDA $00D0                       ; $A7CB4B  AD D0 00     Mx
    STA $00E2                       ; $A7CB4E  8D E2 00     Mx
    STZ $0B94                       ; $A7CB51  9C 94 0B     Mx
    LDA #$0054                      ; $A7CB54  A9 54 00     Mx
    STA $00F6                       ; $A7CB57  8D F6 00     Mx
    STZ $0BAD                       ; $A7CB5A  9C AD 0B     Mx
    LDA $00D3                       ; $A7CB5D  AD D3 00     Mx
    STA $00E5                       ; $A7CB60  8D E5 00     Mx
    STZ $0B98                       ; $A7CB63  9C 98 0B     Mx
    JMP L_A7CE13                    ; $A7CB66  4C 13 CE     Mx
L_A7CB69:
    LDA $09AC                       ; $A7CB69  AD AC 09     Mx
    CMP #$0020                      ; $A7CB6C  C9 20 00     Mx
    BEQ L_A7CB74                    ; $A7CB6F  F0 03        Mx
    JMP L_A7CC0E                    ; $A7CB71  4C 0E CC     Mx
L_A7CB74:
    LDA $0A14                       ; $A7CB74  AD 14 0A     Mx
    CMP #$00CC                      ; $A7CB77  C9 CC 00     Mx
    BCC L_A7CBAB                    ; $A7CB7A  90 2F        Mx
    STZ $09E2                       ; $A7CB7C  9C E2 09     Mx
    STZ $09EA                       ; $A7CB7F  9C EA 09     Mx
    STZ $09E0                       ; $A7CB82  9C E0 09     Mx
    STZ $09E8                       ; $A7CB85  9C E8 09     Mx
    LDA $0A3E                       ; $A7CB88  AD 3E 0A     Mx
    BEQ L_A7CB9C                    ; $A7CB8B  F0 0F        Mx
    LDA #$9000                      ; $A7CB8D  A9 00 90     Mx
    STA $09E4                       ; $A7CB90  8D E4 09     Mx
    LDA #$0004                      ; $A7CB93  A9 04 00     Mx
    STA $09E6                       ; $A7CB96  8D E6 09     Mx
    JMP L_A7D123                    ; $A7CB99  4C 23 D1     Mx
L_A7CB9C:
    LDA #$3000                      ; $A7CB9C  A9 00 30     Mx
    STA $09E4                       ; $A7CB9F  8D E4 09     Mx
    LDA #$0004                      ; $A7CBA2  A9 04 00     Mx
    STA $09E6                       ; $A7CBA5  8D E6 09     Mx
    JMP L_A7D123                    ; $A7CBA8  4C 23 D1     Mx
L_A7CBAB:
    LDA $09E2                       ; $A7CBAB  AD E2 09     Mx
    CMP #$8000                      ; $A7CBAE  C9 00 80     Mx
    ROR                             ; $A7CBB1  6A           Mx
    ROR $09E0                       ; $A7CBB2  6E E0 09     Mx
    CMP #$8000                      ; $A7CBB5  C9 00 80     Mx
    ROR                             ; $A7CBB8  6A           Mx
    ROR $09E0                       ; $A7CBB9  6E E0 09     Mx
    LDX $0A3E                       ; $A7CBBC  AE 3E 0A     Mx
    BNE L_A7CBC8                    ; $A7CBBF  D0 07        Mx
    CMP #$8000                      ; $A7CBC1  C9 00 80     Mx
    ROR                             ; $A7CBC4  6A           Mx
    ROR $09E0                       ; $A7CBC5  6E E0 09     Mx
L_A7CBC8:
    STA $09E2                       ; $A7CBC8  8D E2 09     Mx
    LDA $09EA                       ; $A7CBCB  AD EA 09     Mx
    CMP #$8000                      ; $A7CBCE  C9 00 80     Mx
    ROR                             ; $A7CBD1  6A           Mx
    ROR $09E8                       ; $A7CBD2  6E E8 09     Mx
    CMP #$8000                      ; $A7CBD5  C9 00 80     Mx
    ROR                             ; $A7CBD8  6A           Mx
    ROR $09E8                       ; $A7CBD9  6E E8 09     Mx
    LDX $0A3E                       ; $A7CBDC  AE 3E 0A     Mx
    BNE L_A7CBE8                    ; $A7CBDF  D0 07        Mx
    CMP #$8000                      ; $A7CBE1  C9 00 80     Mx
    ROR                             ; $A7CBE4  6A           Mx
    ROR $09E8                       ; $A7CBE5  6E E8 09     Mx
L_A7CBE8:
    STA $09EA                       ; $A7CBE8  8D EA 09     Mx
    LDA $0A3E                       ; $A7CBEB  AD 3E 0A     Mx
    BEQ L_A7CBFF                    ; $A7CBEE  F0 0F        Mx
    LDA #$9000                      ; $A7CBF0  A9 00 90     Mx
    STA $09E4                       ; $A7CBF3  8D E4 09     Mx
    LDA #$0004                      ; $A7CBF6  A9 04 00     Mx
    STA $09E6                       ; $A7CBF9  8D E6 09     Mx
    JMP L_A7D123                    ; $A7CBFC  4C 23 D1     Mx
L_A7CBFF:
    LDA #$3000                      ; $A7CBFF  A9 00 30     Mx
    STA $09E4                       ; $A7CC02  8D E4 09     Mx
    LDA #$0004                      ; $A7CC05  A9 04 00     Mx
    STA $09E6                       ; $A7CC08  8D E6 09     Mx
    JMP L_A7D123                    ; $A7CC0B  4C 23 D1     Mx
L_A7CC0E:
    LDY #$2E                        ; $A7CC0E  A0 2E        Mx
    LDA ($CC),Y                     ; $A7CC10  B1 CC        Mx
    STA $00E2                       ; $A7CC12  8D E2 00     Mx
    LDY #$36                        ; $A7CC15  A0 36        Mx
    LDA ($CC),Y                     ; $A7CC17  B1 CC        Mx
    STA $00E5                       ; $A7CC19  8D E5 00     Mx
    LDA #$0068                      ; $A7CC1C  A9 68 00     Mx
    STA $00F6                       ; $A7CC1F  8D F6 00     Mx
    STA $0BAD                       ; $A7CC22  8D AD 0B     Mx
    LDA $00D3                       ; $A7CC25  AD D3 00     Mx
    SEC                             ; $A7CC28  38           Mx
    SBC $00E5                       ; $A7CC29  ED E5 00     Mx
    STA $00D3                       ; $A7CC2C  8D D3 00     Mx
    BPL L_A7CC38                    ; $A7CC2F  10 07        Mx
    EOR #$FFFF                      ; $A7CC31  49 FF FF     Mx
    CLC                             ; $A7CC34  18           Mx
    ADC #$0001                      ; $A7CC35  69 01 00     Mx
L_A7CC38:
    STA $00D9                       ; $A7CC38  8D D9 00     Mx
    LDA $00D0                       ; $A7CC3B  AD D0 00     Mx
    SEC                             ; $A7CC3E  38           Mx
    SBC $00E2                       ; $A7CC3F  ED E2 00     Mx
    STA $00D0                       ; $A7CC42  8D D0 00     Mx
    BPL L_A7CC4E                    ; $A7CC45  10 07        Mx
    EOR #$FFFF                      ; $A7CC47  49 FF FF     Mx
    CLC                             ; $A7CC4A  18           Mx
    ADC #$0001                      ; $A7CC4B  69 01 00     Mx
L_A7CC4E:
    STA $00D6                       ; $A7CC4E  8D D6 00     Mx
    CMP $00D9                       ; $A7CC51  CD D9 00     Mx
    BCS L_A7CC76                    ; $A7CC54  B0 20        Mx
    LDA $00D9                       ; $A7CC56  AD D9 00     Mx
    STA $00D6                       ; $A7CC59  8D D6 00     Mx
    JMP L_A7CC76                    ; $A7CC5C  4C 76 CC     Mx
L_A7CC5F:
    LDA $00D0                       ; $A7CC5F  AD D0 00     Mx
    CMP #$8000                      ; $A7CC62  C9 00 80     Mx
    ROR                             ; $A7CC65  6A           Mx
    STA $00D0                       ; $A7CC66  8D D0 00     Mx
    LDA $00D3                       ; $A7CC69  AD D3 00     Mx
    CMP #$8000                      ; $A7CC6C  C9 00 80     Mx
    ROR                             ; $A7CC6F  6A           Mx
    STA $00D3                       ; $A7CC70  8D D3 00     Mx
    LSR $00D6                       ; $A7CC73  4E D6 00     Mx
L_A7CC76:
    LDA $00D6                       ; $A7CC76  AD D6 00     Mx
    CMP #$0017                      ; $A7CC79  C9 17 00     Mx
    BCS L_A7CC5F                    ; $A7CC7C  B0 E1        Mx
    LDA $00E2                       ; $A7CC7E  AD E2 00     Mx
    CLC                             ; $A7CC81  18           Mx
    ADC $00D0                       ; $A7CC82  6D D0 00     Mx
    STA $00E2                       ; $A7CC85  8D E2 00     Mx
    LDA $00E5                       ; $A7CC88  AD E5 00     Mx
    CLC                             ; $A7CC8B  18           Mx
    ADC $00D3                       ; $A7CC8C  6D D3 00     Mx
    STA $00E5                       ; $A7CC8F  8D E5 00     Mx
    JMP L_A7CDC2                    ; $A7CC92  4C C2 CD     Mx
L_A7CC95:
    LDA $0BD9                       ; $A7CC95  AD D9 0B     Mx
    STA $00E2                       ; $A7CC98  8D E2 00     Mx
    LDA $0BD7                       ; $A7CC9B  AD D7 0B     Mx
    STA $0B94                       ; $A7CC9E  8D 94 0B     Mx
    LDA $0BE1                       ; $A7CCA1  AD E1 0B     Mx
    STA $00E5                       ; $A7CCA4  8D E5 00     Mx
    LDA $0BDF                       ; $A7CCA7  AD DF 0B     Mx
    STA $0B98                       ; $A7CCAA  8D 98 0B     Mx
    LDA $0BDD                       ; $A7CCAD  AD DD 0B     Mx
    STA $00F6                       ; $A7CCB0  8D F6 00     Mx
    LDA $0BDB                       ; $A7CCB3  AD DB 0B     Mx
    STA $0BAD                       ; $A7CCB6  8D AD 0B     Mx
    LDA $0BE5                       ; $A7CCB9  AD E5 0B     Mx
    STA $00D0                       ; $A7CCBC  8D D0 00     Mx
    LDA $0BE3                       ; $A7CCBF  AD E3 0B     Mx
    STA $0B7C                       ; $A7CCC2  8D 7C 0B     Mx
    LDA $0BED                       ; $A7CCC5  AD ED 0B     Mx
    STA $00D3                       ; $A7CCC8  8D D3 00     Mx
    LDA $0BEB                       ; $A7CCCB  AD EB 0B     Mx
    STA $0B80                       ; $A7CCCE  8D 80 0B     Mx
    LDA $0BE9                       ; $A7CCD1  AD E9 0B     Mx
    STA $00D6                       ; $A7CCD4  8D D6 00     Mx
    LDA $0BE7                       ; $A7CCD7  AD E7 0B     Mx
    STA $0B84                       ; $A7CCDA  8D 84 0B     Mx
    LDA $0B7C                       ; $A7CCDD  AD 7C 0B     Mx
    ASL                             ; $A7CCE0  0A           Mx
    STA $00A4                       ; $A7CCE1  8D A4 00     Mx
    ROL $00D0                       ; $A7CCE4  2E D0 00     Mx
    LDA $00D0                       ; $A7CCE7  AD D0 00     Mx
    STA $00A6                       ; $A7CCEA  8D A6 00     Mx
    LDA $00A4                       ; $A7CCED  AD A4 00     Mx
    ASL                             ; $A7CCF0  0A           Mx
    ROL $00D0                       ; $A7CCF1  2E D0 00     Mx
    ASL                             ; $A7CCF4  0A           Mx
    ROL $00D0                       ; $A7CCF5  2E D0 00     Mx
    ASL                             ; $A7CCF8  0A           Mx
    ROL $00D0                       ; $A7CCF9  2E D0 00     Mx
    ASL                             ; $A7CCFC  0A           Mx
    ROL $00D0                       ; $A7CCFD  2E D0 00     Mx
    SEC                             ; $A7CD00  38           Mx
    SBC $00A4                       ; $A7CD01  ED A4 00     Mx
    STA $0B7C                       ; $A7CD04  8D 7C 0B     Mx
    LDA $00D0                       ; $A7CD07  AD D0 00     Mx
    SBC $00A6                       ; $A7CD0A  ED A6 00     Mx
    STA $00D0                       ; $A7CD0D  8D D0 00     Mx
    LDA $0B94                       ; $A7CD10  AD 94 0B     Mx
    CLC                             ; $A7CD13  18           Mx
    ADC $0B7C                       ; $A7CD14  6D 7C 0B     Mx
    STA $0B94                       ; $A7CD17  8D 94 0B     Mx
    LDA $00E2                       ; $A7CD1A  AD E2 00     Mx
    ADC $00D0                       ; $A7CD1D  6D D0 00     Mx
    STA $00E2                       ; $A7CD20  8D E2 00     Mx
    LDA $0B80                       ; $A7CD23  AD 80 0B     Mx
    ASL                             ; $A7CD26  0A           Mx
    STA $00A4                       ; $A7CD27  8D A4 00     Mx
    ROL $00D3                       ; $A7CD2A  2E D3 00     Mx
    LDA $00D3                       ; $A7CD2D  AD D3 00     Mx
    STA $00A6                       ; $A7CD30  8D A6 00     Mx
    LDA $00A4                       ; $A7CD33  AD A4 00     Mx
    ASL                             ; $A7CD36  0A           Mx
    ROL $00D3                       ; $A7CD37  2E D3 00     Mx
    ASL                             ; $A7CD3A  0A           Mx
    ROL $00D3                       ; $A7CD3B  2E D3 00     Mx
    ASL                             ; $A7CD3E  0A           Mx
    ROL $00D3                       ; $A7CD3F  2E D3 00     Mx
    ASL                             ; $A7CD42  0A           Mx
    ROL $00D3                       ; $A7CD43  2E D3 00     Mx
    SEC                             ; $A7CD46  38           Mx
    SBC $00A4                       ; $A7CD47  ED A4 00     Mx
    STA $0B80                       ; $A7CD4A  8D 80 0B     Mx
    LDA $00D3                       ; $A7CD4D  AD D3 00     Mx
    SBC $00A6                       ; $A7CD50  ED A6 00     Mx
    STA $00D3                       ; $A7CD53  8D D3 00     Mx
    LDA $0B98                       ; $A7CD56  AD 98 0B     Mx
    CLC                             ; $A7CD59  18           Mx
    ADC $0B80                       ; $A7CD5A  6D 80 0B     Mx
    STA $0B98                       ; $A7CD5D  8D 98 0B     Mx
    LDA $00E5                       ; $A7CD60  AD E5 00     Mx
    ADC $00D3                       ; $A7CD63  6D D3 00     Mx
    STA $00E5                       ; $A7CD66  8D E5 00     Mx
    LDA $0B84                       ; $A7CD69  AD 84 0B     Mx
    ASL                             ; $A7CD6C  0A           Mx
    STA $00A4                       ; $A7CD6D  8D A4 00     Mx
    ROL $00D6                       ; $A7CD70  2E D6 00     Mx
    LDA $00D6                       ; $A7CD73  AD D6 00     Mx
    STA $00A6                       ; $A7CD76  8D A6 00     Mx
    LDA $00A4                       ; $A7CD79  AD A4 00     Mx
    ASL                             ; $A7CD7C  0A           Mx
    ROL $00D6                       ; $A7CD7D  2E D6 00     Mx
    ASL                             ; $A7CD80  0A           Mx
    ROL $00D6                       ; $A7CD81  2E D6 00     Mx
    ASL                             ; $A7CD84  0A           Mx
    ROL $00D6                       ; $A7CD85  2E D6 00     Mx
    ASL                             ; $A7CD88  0A           Mx
    ROL $00D6                       ; $A7CD89  2E D6 00     Mx
    SEC                             ; $A7CD8C  38           Mx
    SBC $00A4                       ; $A7CD8D  ED A4 00     Mx
    STA $0B84                       ; $A7CD90  8D 84 0B     Mx
    LDA $00D6                       ; $A7CD93  AD D6 00     Mx
    SBC $00A6                       ; $A7CD96  ED A6 00     Mx
    STA $00D6                       ; $A7CD99  8D D6 00     Mx
    LDA $0BAD                       ; $A7CD9C  AD AD 0B     Mx
    SEC                             ; $A7CD9F  38           Mx
    SBC $0B84                       ; $A7CDA0  ED 84 0B     Mx
    STA $0BAD                       ; $A7CDA3  8D AD 0B     Mx
    LDA $00F6                       ; $A7CDA6  AD F6 00     Mx
    SBC $00D6                       ; $A7CDA9  ED D6 00     Mx
    STA $00F6                       ; $A7CDAC  8D F6 00     Mx
    LDA $0BAD                       ; $A7CDAF  AD AD 0B     Mx
    SEC                             ; $A7CDB2  38           Mx
    SBC #$DF00                      ; $A7CDB3  E9 00 DF     Mx
    STA $0BAD                       ; $A7CDB6  8D AD 0B     Mx
    LDA $00F6                       ; $A7CDB9  AD F6 00     Mx
    SBC #$003E                      ; $A7CDBC  E9 3E 00     Mx
    STA $00F6                       ; $A7CDBF  8D F6 00     Mx
L_A7CDC2:
    LDA $00D0                       ; $A7CDC2  AD D0 00     Mx
    BMI L_A7CDD1                    ; $A7CDC5  30 0A        Mx
    CMP #$00EE                      ; $A7CDC7  C9 EE 00     Mx
    BCC L_A7CE13                    ; $A7CDCA  90 47        Mx
    LDA #$00F6                      ; $A7CDCC  A9 F6 00     Mx
    BRA L_A7CDD9                    ; $A7CDCF  80 08        Mx
L_A7CDD1:
    CMP #$FF1A                      ; $A7CDD1  C9 1A FF     Mx
    BCS L_A7CE13                    ; $A7CDD4  B0 3D        Mx
    LDA #$FF12                      ; $A7CDD6  A9 12 FF     Mx
L_A7CDD9:
    STA $00BA                       ; $A7CDD9  8D BA 00     Mx
    LDA $00D3                       ; $A7CDDC  AD D3 00     Mx
    SEC                             ; $A7CDDF  38           Mx
    SBC #$0374                      ; $A7CDE0  E9 74 03     Mx
    BPL L_A7CDEC                    ; $A7CDE3  10 07        Mx
    EOR #$FFFF                      ; $A7CDE5  49 FF FF     Mx
    CLC                             ; $A7CDE8  18           Mx
    ADC #$0001                      ; $A7CDE9  69 01 00     Mx
L_A7CDEC:
    CMP #$000F                      ; $A7CDEC  C9 0F 00     Mx
    BCS L_A7CE13                    ; $A7CDEF  B0 22        Mx
    LDA $00D3                       ; $A7CDF1  AD D3 00     Mx
    CMP #$0374                      ; $A7CDF4  C9 74 03     Mx
    BCC L_A7CE07                    ; $A7CDF7  90 0E        Mx
    LDA #$0383                      ; $A7CDF9  A9 83 03     Mx
    STA $00D3                       ; $A7CDFC  8D D3 00     Mx
    LDA $00BA                       ; $A7CDFF  AD BA 00     Mx
    STA $00D0                       ; $A7CE02  8D D0 00     Mx
    BRA L_A7CE13                    ; $A7CE05  80 0C        Mx
L_A7CE07:
    LDA #$0365                      ; $A7CE07  A9 65 03     Mx
    STA $00D3                       ; $A7CE0A  8D D3 00     Mx
    LDA $00BA                       ; $A7CE0D  AD BA 00     Mx
    STA $00D0                       ; $A7CE10  8D D0 00     Mx
L_A7CE13:
    LDA #$001E                      ; $A7CE13  A9 1E 00     Mx
    STA $00DC                       ; $A7CE16  8D DC 00     Mx
    STZ $00C2                       ; $A7CE19  9C C2 00     Mx
    STZ $00C4                       ; $A7CE1C  9C C4 00     Mx
    STZ $00C6                       ; $A7CE1F  9C C6 00     Mx
    STZ $00C8                       ; $A7CE22  9C C8 00     Mx
    LDA $0C25                       ; $A7CE25  AD 25 0C     Mx
    CMP #$09A8                      ; $A7CE28  C9 A8 09     Mx
    BNE L_A7CE30                    ; $A7CE2B  D0 03        Mx
    JMP L_A7CFF1                    ; $A7CE2D  4C F1 CF     Mx
L_A7CE30:
    LDA $00E2                       ; $A7CE30  AD E2 00     Mx
    STA $00D9                       ; $A7CE33  8D D9 00     Mx
    LDA $00E5                       ; $A7CE36  AD E5 00     Mx
    STA $00DF                       ; $A7CE39  8D DF 00     Mx
    LDA $00D9                       ; $A7CE3C  AD D9 00     Mx
    SEC                             ; $A7CE3F  38           Mx
    SBC $09D6                       ; $A7CE40  ED D6 09     Mx
    STA $00D9                       ; $A7CE43  8D D9 00     Mx
    LDA $00DF                       ; $A7CE46  AD DF 00     Mx
    SEC                             ; $A7CE49  38           Mx
    SBC $09DE                       ; $A7CE4A  ED DE 09     Mx
    STA $00DF                       ; $A7CE4D  8D DF 00     Mx
    LDA #$001E                      ; $A7CE50  A9 1E 00     Mx
    LDX $09AC                       ; $A7CE53  AE AC 09     Mx
    CPX #$22                        ; $A7CE56  E0 22        Mx
    BNE L_A7CE5E                    ; $A7CE58  D0 04        Mx
    CLC                             ; $A7CE5A  18           Mx
    ADC #$0014                      ; $A7CE5B  69 14 00     Mx
L_A7CE5E:
    LDX $00DA                       ; $A7CE5E  AE DA 00     Mx
    BMI L_A7CE6B                    ; $A7CE61  30 08        Mx
    CMP $00D9                       ; $A7CE63  CD D9 00     Mx
    BCS L_A7CE6B                    ; $A7CE66  B0 03        Mx
    STA $00D9                       ; $A7CE68  8D D9 00     Mx
L_A7CE6B:
    LDX $00E0                       ; $A7CE6B  AE E0 00     Mx
    BMI L_A7CE78                    ; $A7CE6E  30 08        Mx
    CMP $00DF                       ; $A7CE70  CD DF 00     Mx
    BCS L_A7CE78                    ; $A7CE73  B0 03        Mx
    STA $00DF                       ; $A7CE75  8D DF 00     Mx
L_A7CE78:
    EOR #$FFFF                      ; $A7CE78  49 FF FF     Mx
    CLC                             ; $A7CE7B  18           Mx
    ADC #$0001                      ; $A7CE7C  69 01 00     Mx
    LDX $00DA                       ; $A7CE7F  AE DA 00     Mx
    BPL L_A7CE8C                    ; $A7CE82  10 08        Mx
    CMP $00D9                       ; $A7CE84  CD D9 00     Mx
    BCC L_A7CE8C                    ; $A7CE87  90 03        Mx
    STA $00D9                       ; $A7CE89  8D D9 00     Mx
L_A7CE8C:
    LDX $00E0                       ; $A7CE8C  AE E0 00     Mx
    BPL L_A7CE99                    ; $A7CE8F  10 08        Mx
    CMP $00DF                       ; $A7CE91  CD DF 00     Mx
    BCC L_A7CE99                    ; $A7CE94  90 03        Mx
    STA $00DF                       ; $A7CE96  8D DF 00     Mx
L_A7CE99:
    LDA $00D9                       ; $A7CE99  AD D9 00     Mx
    STA $00E5                       ; $A7CE9C  8D E5 00     Mx
    BPL L_A7CEAB                    ; $A7CE9F  10 0A        Mx
    EOR #$FFFF                      ; $A7CEA1  49 FF FF     Mx
    CLC                             ; $A7CEA4  18           Mx
    ADC #$0001                      ; $A7CEA5  69 01 00     Mx
    STA $00D9                       ; $A7CEA8  8D D9 00     Mx
L_A7CEAB:
    LDX $00DC                       ; $A7CEAB  AE DC 00     Mx
    STX $00EE                       ; $A7CEAE  8E EE 00     Mx
    LDA #$0000                      ; $A7CEB1  A9 00 00     Mx
    STA $00EA                       ; $A7CEB4  8D EA 00     Mx
    LDA $00D9                       ; $A7CEB7  AD D9 00     Mx
    STA $4204                       ; $A7CEBA  8D 04 42     Mx
    LDX $00EE                       ; $A7CEBD  AE EE 00     Mx
    STX $4206                       ; $A7CEC0  8E 06 42     Mx
    NOP                             ; $A7CEC3  EA           Mx
    NOP                             ; $A7CEC4  EA           Mx
    NOP                             ; $A7CEC5  EA           Mx
    NOP                             ; $A7CEC6  EA           Mx
    NOP                             ; $A7CEC7  EA           Mx
    NOP                             ; $A7CEC8  EA           Mx
    NOP                             ; $A7CEC9  EA           Mx
    STZ $00F0                       ; $A7CECA  9C F0 00     Mx
    LDA $4214                       ; $A7CECD  AD 14 42     Mx
    STA $00F2                       ; $A7CED0  8D F2 00     Mx
    LDX $4216                       ; $A7CED3  AE 16 42     Mx
    STX $00EC                       ; $A7CED6  8E EC 00     Mx
    LDA $00EB                       ; $A7CED9  AD EB 00     Mx
    STA $4204                       ; $A7CEDC  8D 04 42     Mx
    LDX $00EE                       ; $A7CEDF  AE EE 00     Mx
    STX $4206                       ; $A7CEE2  8E 06 42     Mx
    NOP                             ; $A7CEE5  EA           Mx
    NOP                             ; $A7CEE6  EA           Mx
    NOP                             ; $A7CEE7  EA           Mx
    NOP                             ; $A7CEE8  EA           Mx
    NOP                             ; $A7CEE9  EA           Mx
    NOP                             ; $A7CEEA  EA           Mx
    NOP                             ; $A7CEEB  EA           Mx
    STZ $00F0                       ; $A7CEEC  9C F0 00     Mx
    LDA $4214                       ; $A7CEEF  AD 14 42     Mx
    ORA $00F1                       ; $A7CEF2  0D F1 00     Mx
    STA $00F1                       ; $A7CEF5  8D F1 00     Mx
    LDX $4216                       ; $A7CEF8  AE 16 42     Mx
    STX $00EB                       ; $A7CEFB  8E EB 00     Mx
    LDA $00EA                       ; $A7CEFE  AD EA 00     Mx
    STA $4204                       ; $A7CF01  8D 04 42     Mx
    LDX $00EE                       ; $A7CF04  AE EE 00     Mx
    STX $4206                       ; $A7CF07  8E 06 42     Mx
    NOP                             ; $A7CF0A  EA           Mx
    NOP                             ; $A7CF0B  EA           Mx
    NOP                             ; $A7CF0C  EA           Mx
    NOP                             ; $A7CF0D  EA           Mx
    NOP                             ; $A7CF0E  EA           Mx
    NOP                             ; $A7CF0F  EA           Mx
    NOP                             ; $A7CF10  EA           Mx
    NOP                             ; $A7CF11  EA           Mx
    LDA $4214                       ; $A7CF12  AD 14 42     Mx
    ORA $00F0                       ; $A7CF15  0D F0 00     Mx
    STA $00F0                       ; $A7CF18  8D F0 00     Mx
    LDA $00F0                       ; $A7CF1B  AD F0 00     Mx
    STA $00C2                       ; $A7CF1E  8D C2 00     Mx
    LDA $00F2                       ; $A7CF21  AD F2 00     Mx
    STA $00C4                       ; $A7CF24  8D C4 00     Mx
    LDA $00E5                       ; $A7CF27  AD E5 00     Mx
    BPL L_A7CF45                    ; $A7CF2A  10 19        Mx
    LDA $00C2                       ; $A7CF2C  AD C2 00     Mx
    EOR #$FFFF                      ; $A7CF2F  49 FF FF     Mx
    CLC                             ; $A7CF32  18           Mx
    ADC #$0001                      ; $A7CF33  69 01 00     Mx
    STA $00C2                       ; $A7CF36  8D C2 00     Mx
    LDA $00C4                       ; $A7CF39  AD C4 00     Mx
    EOR #$FFFF                      ; $A7CF3C  49 FF FF     Mx
    ADC #$0000                      ; $A7CF3F  69 00 00     Mx
    STA $00C4                       ; $A7CF42  8D C4 00     Mx
L_A7CF45:
    LDA $00DF                       ; $A7CF45  AD DF 00     Mx
    STA $00E5                       ; $A7CF48  8D E5 00     Mx
    BPL L_A7CF57                    ; $A7CF4B  10 0A        Mx
    EOR #$FFFF                      ; $A7CF4D  49 FF FF     Mx
    CLC                             ; $A7CF50  18           Mx
    ADC #$0001                      ; $A7CF51  69 01 00     Mx
    STA $00DF                       ; $A7CF54  8D DF 00     Mx
L_A7CF57:
    LDX $00DC                       ; $A7CF57  AE DC 00     Mx
    STX $00EE                       ; $A7CF5A  8E EE 00     Mx
    LDA #$0000                      ; $A7CF5D  A9 00 00     Mx
    STA $00EA                       ; $A7CF60  8D EA 00     Mx
    LDA $00DF                       ; $A7CF63  AD DF 00     Mx
    STA $4204                       ; $A7CF66  8D 04 42     Mx
    LDX $00EE                       ; $A7CF69  AE EE 00     Mx
    STX $4206                       ; $A7CF6C  8E 06 42     Mx
    NOP                             ; $A7CF6F  EA           Mx
    NOP                             ; $A7CF70  EA           Mx
    NOP                             ; $A7CF71  EA           Mx
    NOP                             ; $A7CF72  EA           Mx
    NOP                             ; $A7CF73  EA           Mx
    NOP                             ; $A7CF74  EA           Mx
    NOP                             ; $A7CF75  EA           Mx
    STZ $00F0                       ; $A7CF76  9C F0 00     Mx
    LDA $4214                       ; $A7CF79  AD 14 42     Mx
    STA $00F2                       ; $A7CF7C  8D F2 00     Mx
    LDX $4216                       ; $A7CF7F  AE 16 42     Mx
    STX $00EC                       ; $A7CF82  8E EC 00     Mx
    LDA $00EB                       ; $A7CF85  AD EB 00     Mx
    STA $4204                       ; $A7CF88  8D 04 42     Mx
    LDX $00EE                       ; $A7CF8B  AE EE 00     Mx
    STX $4206                       ; $A7CF8E  8E 06 42     Mx
    NOP                             ; $A7CF91  EA           Mx
    NOP                             ; $A7CF92  EA           Mx
    NOP                             ; $A7CF93  EA           Mx
    NOP                             ; $A7CF94  EA           Mx
    NOP                             ; $A7CF95  EA           Mx
    NOP                             ; $A7CF96  EA           Mx
    NOP                             ; $A7CF97  EA           Mx
    STZ $00F0                       ; $A7CF98  9C F0 00     Mx
    LDA $4214                       ; $A7CF9B  AD 14 42     Mx
    ORA $00F1                       ; $A7CF9E  0D F1 00     Mx
    STA $00F1                       ; $A7CFA1  8D F1 00     Mx
    LDX $4216                       ; $A7CFA4  AE 16 42     Mx
    STX $00EB                       ; $A7CFA7  8E EB 00     Mx
    LDA $00EA                       ; $A7CFAA  AD EA 00     Mx
    STA $4204                       ; $A7CFAD  8D 04 42     Mx
    LDX $00EE                       ; $A7CFB0  AE EE 00     Mx
    STX $4206                       ; $A7CFB3  8E 06 42     Mx
    NOP                             ; $A7CFB6  EA           Mx
    NOP                             ; $A7CFB7  EA           Mx
    NOP                             ; $A7CFB8  EA           Mx
    NOP                             ; $A7CFB9  EA           Mx
    NOP                             ; $A7CFBA  EA           Mx
    NOP                             ; $A7CFBB  EA           Mx
    NOP                             ; $A7CFBC  EA           Mx
    NOP                             ; $A7CFBD  EA           Mx
    LDA $4214                       ; $A7CFBE  AD 14 42     Mx
    ORA $00F0                       ; $A7CFC1  0D F0 00     Mx
    STA $00F0                       ; $A7CFC4  8D F0 00     Mx
    LDA $00F0                       ; $A7CFC7  AD F0 00     Mx
    STA $00C6                       ; $A7CFCA  8D C6 00     Mx
    LDA $00F2                       ; $A7CFCD  AD F2 00     Mx
    STA $00C8                       ; $A7CFD0  8D C8 00     Mx
    LDA $00E5                       ; $A7CFD3  AD E5 00     Mx
    BPL L_A7CFF1                    ; $A7CFD6  10 19        Mx
    LDA $00C6                       ; $A7CFD8  AD C6 00     Mx
    EOR #$FFFF                      ; $A7CFDB  49 FF FF     Mx
    CLC                             ; $A7CFDE  18           Mx
    ADC #$0001                      ; $A7CFDF  69 01 00     Mx
    STA $00C6                       ; $A7CFE2  8D C6 00     Mx
    LDA $00C8                       ; $A7CFE5  AD C8 00     Mx
    EOR #$FFFF                      ; $A7CFE8  49 FF FF     Mx
    ADC #$0000                      ; $A7CFEB  69 00 00     Mx
    STA $00C8                       ; $A7CFEE  8D C8 00     Mx
L_A7CFF1:
    LDA $00C2                       ; $A7CFF1  AD C2 00     Mx
    STA $09E0                       ; $A7CFF4  8D E0 09     Mx
    LDA $00C4                       ; $A7CFF7  AD C4 00     Mx
    STA $09E2                       ; $A7CFFA  8D E2 09     Mx
    LDA $00C6                       ; $A7CFFD  AD C6 00     Mx
    STA $09E8                       ; $A7D000  8D E8 09     Mx
    LDA $00C8                       ; $A7D003  AD C8 00     Mx
    STA $09EA                       ; $A7D006  8D EA 09     Mx
    LDA #$0080                      ; $A7D009  A9 80 00     Mx
    STA $00D3                       ; $A7D00C  8D D3 00     Mx
    SEP #$20                        ; $A7D00F  E2 20        Mx
    LDA $00DC                       ; $A7D011  AD DC 00     mx
    STA $4202                       ; $A7D014  8D 02 42     mx
    LDA $00D3                       ; $A7D017  AD D3 00     mx
    STA $4203                       ; $A7D01A  8D 03 42     mx
    NOP                             ; $A7D01D  EA           mx
    NOP                             ; $A7D01E  EA           mx
    NOP                             ; $A7D01F  EA           mx
    REP #$20                        ; $A7D020  C2 20        mx
    LDA $4216                       ; $A7D022  AD 16 42     Mx
    STA $00D3                       ; $A7D025  8D D3 00     Mx
    STA $00A8                       ; $A7D028  8D A8 00     Mx
    LDA #$0012                      ; $A7D02B  A9 12 00     Mx
    STA $00D3                       ; $A7D02E  8D D3 00     Mx
    SEP #$20                        ; $A7D031  E2 20        Mx
    LDA $00DC                       ; $A7D033  AD DC 00     mx
    STA $4202                       ; $A7D036  8D 02 42     mx
    LDA $00D3                       ; $A7D039  AD D3 00     mx
    STA $4203                       ; $A7D03C  8D 03 42     mx
    NOP                             ; $A7D03F  EA           mx
    NOP                             ; $A7D040  EA           mx
    NOP                             ; $A7D041  EA           mx
    REP #$20                        ; $A7D042  C2 20        mx
    LDA $4216                       ; $A7D044  AD 16 42     Mx
    STA $00D3                       ; $A7D047  8D D3 00     Mx
    STZ $0B82                       ; $A7D04A  9C 82 0B     Mx
    STZ $0B80                       ; $A7D04D  9C 80 0B     Mx
    STA $0B81                       ; $A7D050  8D 81 0B     Mx
    LDA $0B80                       ; $A7D053  AD 80 0B     Mx
    CLC                             ; $A7D056  18           Mx
    ADC $00A8                       ; $A7D057  6D A8 00     Mx
    STA $0B80                       ; $A7D05A  8D 80 0B     Mx
    LDA $0B82                       ; $A7D05D  AD 82 0B     Mx
    ADC #$0000                      ; $A7D060  69 00 00     Mx
    STA $0B82                       ; $A7D063  8D 82 0B     Mx
    LDA $00F6                       ; $A7D066  AD F6 00     Mx
    SBC #$002E                      ; $A7D069  E9 2E 00     Mx
    STA $00F6                       ; $A7D06C  8D F6 00     Mx
    LDA $09D8                       ; $A7D06F  AD D8 09     Mx
    SEC                             ; $A7D072  38           Mx
    SBC $0BAD                       ; $A7D073  ED AD 0B     Mx
    STA $00C2                       ; $A7D076  8D C2 00     Mx
    LDA $09DA                       ; $A7D079  AD DA 09     Mx
    SBC $00F6                       ; $A7D07C  ED F6 00     Mx
    STA $00C4                       ; $A7D07F  8D C4 00     Mx
    STA $00E5                       ; $A7D082  8D E5 00     Mx
    BPL L_A7D0A0                    ; $A7D085  10 19        Mx
    LDA $00C2                       ; $A7D087  AD C2 00     Mx
    EOR #$FFFF                      ; $A7D08A  49 FF FF     Mx
    CLC                             ; $A7D08D  18           Mx
    ADC #$0001                      ; $A7D08E  69 01 00     Mx
    STA $00C2                       ; $A7D091  8D C2 00     Mx
    LDA $00C4                       ; $A7D094  AD C4 00     Mx
    EOR #$FFFF                      ; $A7D097  49 FF FF     Mx
    ADC #$0000                      ; $A7D09A  69 00 00     Mx
    STA $00C4                       ; $A7D09D  8D C4 00     Mx
L_A7D0A0:
    LDA $00C3                       ; $A7D0A0  AD C3 00     Mx
    STA $4204                       ; $A7D0A3  8D 04 42     Mx
    LDX $00DC                       ; $A7D0A6  AE DC 00     Mx
    STX $4206                       ; $A7D0A9  8E 06 42     Mx
    NOP                             ; $A7D0AC  EA           Mx
    NOP                             ; $A7D0AD  EA           Mx
    NOP                             ; $A7D0AE  EA           Mx
    NOP                             ; $A7D0AF  EA           Mx
    STZ $00EA                       ; $A7D0B0  9C EA 00     Mx
    STZ $00EC                       ; $A7D0B3  9C EC 00     Mx
    LDA $00E5                       ; $A7D0B6  AD E5 00     Mx
    BPL L_A7D0C8                    ; $A7D0B9  10 0D        Mx
    LDA $4214                       ; $A7D0BB  AD 14 42     Mx
    EOR #$FFFF                      ; $A7D0BE  49 FF FF     Mx
    CLC                             ; $A7D0C1  18           Mx
    ADC #$0001                      ; $A7D0C2  69 01 00     Mx
    JMP L_A7D0CB                    ; $A7D0C5  4C CB D0     Mx
L_A7D0C8:
    LDA $4214                       ; $A7D0C8  AD 14 42     Mx
L_A7D0CB:
    STA $00EB                       ; $A7D0CB  8D EB 00     Mx
    LDA $0B80                       ; $A7D0CE  AD 80 0B     Mx
    CLC                             ; $A7D0D1  18           Mx
    ADC $00EA                       ; $A7D0D2  6D EA 00     Mx
    STA $0B80                       ; $A7D0D5  8D 80 0B     Mx
    LDA $0B82                       ; $A7D0D8  AD 82 0B     Mx
    ADC $00EC                       ; $A7D0DB  6D EC 00     Mx
    STA $0B82                       ; $A7D0DE  8D 82 0B     Mx
    LDA $0B80                       ; $A7D0E1  AD 80 0B     Mx
    SEC                             ; $A7D0E4  38           Mx
    SBC #$C000                      ; $A7D0E5  E9 00 C0     Mx
    LDA $0B82                       ; $A7D0E8  AD 82 0B     Mx
    SBC #$0003                      ; $A7D0EB  E9 03 00     Mx
    BPL L_A7D0FC                    ; $A7D0EE  10 0C        Mx
    LDA #$0003                      ; $A7D0F0  A9 03 00     Mx
    STA $0B82                       ; $A7D0F3  8D 82 0B     Mx
    LDA #$C000                      ; $A7D0F6  A9 00 C0     Mx
    STA $0B80                       ; $A7D0F9  8D 80 0B     Mx
L_A7D0FC:
    LDA $0B80                       ; $A7D0FC  AD 80 0B     Mx
    SEC                             ; $A7D0FF  38           Mx
    SBC #$A200                      ; $A7D100  E9 00 A2     Mx
    LDA $0B82                       ; $A7D103  AD 82 0B     Mx
    SBC #$0004                      ; $A7D106  E9 04 00     Mx
    BMI L_A7D117                    ; $A7D109  30 0C        Mx
    LDA #$0004                      ; $A7D10B  A9 04 00     Mx
    STA $0B82                       ; $A7D10E  8D 82 0B     Mx
    LDA #$A200                      ; $A7D111  A9 00 A2     Mx
    STA $0B80                       ; $A7D114  8D 80 0B     Mx
L_A7D117:
    LDA $0B80                       ; $A7D117  AD 80 0B     Mx
    STA $09E4                       ; $A7D11A  8D E4 09     Mx
    LDA $0B82                       ; $A7D11D  AD 82 0B     Mx
    STA $09E6                       ; $A7D120  8D E6 09     Mx
L_A7D123:
    LDA $09AC                       ; $A7D123  AD AC 09     Mx
    CMP #$0024                      ; $A7D126  C9 24 00     Mx
    BNE L_A7D161                    ; $A7D129  D0 36        Mx
    LDA $09E6                       ; $A7D12B  AD E6 09     Mx
    STA $09EC                       ; $A7D12E  8D EC 09     Mx
    LDA $09E4                       ; $A7D131  AD E4 09     Mx
    STA $09EE                       ; $A7D134  8D EE 09     Mx
    LDA $09E2                       ; $A7D137  AD E2 09     Mx
    STA $09F0                       ; $A7D13A  8D F0 09     Mx
    LDA $09E0                       ; $A7D13D  AD E0 09     Mx
    STA $09F2                       ; $A7D140  8D F2 09     Mx
    LDA $09EA                       ; $A7D143  AD EA 09     Mx
    STA $09F4                       ; $A7D146  8D F4 09     Mx
    LDA $09E8                       ; $A7D149  AD E8 09     Mx
    STA $09F6                       ; $A7D14C  8D F6 09     Mx
    STZ $09E6                       ; $A7D14F  9C E6 09     Mx
    STZ $09E4                       ; $A7D152  9C E4 09     Mx
    STZ $09E2                       ; $A7D155  9C E2 09     Mx
    STZ $09E0                       ; $A7D158  9C E0 09     Mx
    STZ $09EA                       ; $A7D15B  9C EA 09     Mx
    STZ $09E8                       ; $A7D15E  9C E8 09     Mx
L_A7D161:
    STZ $0A38                       ; $A7D161  9C 38 0A     Mx
    LDA #$FFFF                      ; $A7D164  A9 FF FF     Mx
    STA $0A26                       ; $A7D167  8D 26 0A     Mx
    RTS                             ; $A7D16A  60           Mx
L_A7D16B:
    LDX $09A9                       ; $A7D16B  AE A9 09     Mx
    BEQ L_A7D178                    ; $A7D16E  F0 08        Mx
    LDA $09AC                       ; $A7D170  AD AC 09     Mx
    CMP #$0004                      ; $A7D173  C9 04 00     Mx
    BEQ L_A7D1EA                    ; $A7D176  F0 72        Mx
L_A7D178:
    LDA $09DA                       ; $A7D178  AD DA 09     Mx
    BNE L_A7D1EA                    ; $A7D17B  D0 6D        Mx
    LDA $09BA                       ; $A7D17D  AD BA 09     Mx
    BNE L_A7D1EA                    ; $A7D180  D0 68        Mx
    LDA $07DC                       ; $A7D182  AD DC 07     Mx
    CMP #$0030                      ; $A7D185  C9 30 00     Mx
    BEQ L_A7D19F                    ; $A7D188  F0 15        Mx
    LDA $0A20                       ; $A7D18A  AD 20 0A     Mx
    CMP #$0030                      ; $A7D18D  C9 30 00     Mx
    BCS L_A7D19F                    ; $A7D190  B0 0D        Mx
    CMP #$0018                      ; $A7D192  C9 18 00     Mx
    BCC L_A7D1BF                    ; $A7D195  90 28        Mx
    LDA $07DC                       ; $A7D197  AD DC 07     Mx
    CMP #$002C                      ; $A7D19A  C9 2C 00     Mx
    BEQ L_A7D1BF                    ; $A7D19D  F0 20        Mx
L_A7D19F:
    LDA $06F4                       ; $A7D19F  AD F4 06     Mx
    CMP #$0030                      ; $A7D1A2  C9 30 00     Mx
    BEQ L_A7D1BC                    ; $A7D1A5  F0 15        Mx
    LDA $0A22                       ; $A7D1A7  AD 22 0A     Mx
    CMP #$0030                      ; $A7D1AA  C9 30 00     Mx
    BCS L_A7D1BC                    ; $A7D1AD  B0 0D        Mx
    CMP #$0018                      ; $A7D1AF  C9 18 00     Mx
    BCC L_A7D1BF                    ; $A7D1B2  90 0B        Mx
    LDA $06F4                       ; $A7D1B4  AD F4 06     Mx
    CMP #$002C                      ; $A7D1B7  C9 2C 00     Mx
    BEQ L_A7D1BF                    ; $A7D1BA  F0 03        Mx
L_A7D1BC:
    JMP L_A7D1EA                    ; $A7D1BC  4C EA D1     Mx
L_A7D1BF:
    LDA $0CCB                       ; $A7D1BF  AD CB 0C     Mx
    CMP #$0003                      ; $A7D1C2  C9 03 00     Mx
    BCC L_A7D1EA                    ; $A7D1C5  90 23        Mx
    LDA $0CCB                       ; $A7D1C7  AD CB 0C     Mx
    CMP #$00A9                      ; $A7D1CA  C9 A9 00     Mx
    BCS L_A7D1EA                    ; $A7D1CD  B0 1B        Mx
    LDA #$002E                      ; $A7D1CF  A9 2E 00     Mx
    STA $09AC                       ; $A7D1D2  8D AC 09     Mx
    LDA #$FFFF                      ; $A7D1D5  A9 FF FF     Mx
    STA $09B2                       ; $A7D1D8  8D B2 09     Mx
    STZ $09B4                       ; $A7D1DB  9C B4 09     Mx
    STZ $09FA                       ; $A7D1DE  9C FA 09     Mx
    STZ $09B0                       ; $A7D1E1  9C B0 09     Mx
    LDA #$FFF8                      ; $A7D1E4  A9 F8 FF     Mx
    STA $09B6                       ; $A7D1E7  8D B6 09     Mx
L_A7D1EA:
    RTS                             ; $A7D1EA  60           Mx
L_A7D1EB:
    LDA $1683                       ; $A7D1EB  AD 83 16     Mx
    CMP #$001B                      ; $A7D1EE  C9 1B 00     Mx
    BNE L_A7D1F6                    ; $A7D1F1  D0 03        Mx
    JMP L_A7D269                    ; $A7D1F3  4C 69 D2     Mx
L_A7D1F6:
    LDX $09A8                       ; $A7D1F6  AE A8 09     Mx
    CPX $0C19                       ; $A7D1F9  EC 19 0C     Mx
    BEQ L_A7D26A                    ; $A7D1FC  F0 6C        Mx
    LDA $0A3E                       ; $A7D1FE  AD 3E 0A     Mx
    BEQ L_A7D22B                    ; $A7D201  F0 28        Mx
    LDA $0A42                       ; $A7D203  AD 42 0A     Mx
    CMP #$000A                      ; $A7D206  C9 0A 00     Mx
    BCC L_A7D269                    ; $A7D209  90 5E        Mx
    LDX $0A2C                       ; $A7D20B  AE 2C 0A     Mx
    INX                             ; $A7D20E  E8           Mx
    BEQ L_A7D269                    ; $A7D20F  F0 58        Mx
    LDX $09A8                       ; $A7D211  AE A8 09     Mx
    CPX $0A96                       ; $A7D214  EC 96 0A     Mx
    BEQ L_A7D226                    ; $A7D217  F0 0D        Mx
    SEC                             ; $A7D219  38           Mx
    SBC #$0009                      ; $A7D21A  E9 09 00     Mx
    STA $0A42                       ; $A7D21D  8D 42 0A     Mx
    LDA #$000A                      ; $A7D220  A9 0A 00     Mx
    STA $0A4A                       ; $A7D223  8D 4A 0A     Mx
L_A7D226:
    LDA #$0036                      ; $A7D226  A9 36 00     Mx
    BNE L_A7D23F                    ; $A7D229  D0 14        Mx
L_A7D22B:
    LDA $0A36                       ; $A7D22B  AD 36 0A     Mx
    BNE L_A7D269                    ; $A7D22E  D0 39        Mx
    LDA $0B6C                       ; $A7D230  AD 6C 0B     Mx
    BNE L_A7D269                    ; $A7D233  D0 34        Mx
    LDA #$0008                      ; $A7D235  A9 08 00     Mx
    JSL L_BDFDF3                    ; $A7D238  22 F3 FD BD  Mx
    LDA #$002C                      ; $A7D23C  A9 2C 00     Mx
L_A7D23F:
    STZ $09E2                       ; $A7D23F  9C E2 09     Mx
    STZ $09E0                       ; $A7D242  9C E0 09     Mx
    STZ $09EA                       ; $A7D245  9C EA 09     Mx
    STZ $09E8                       ; $A7D248  9C E8 09     Mx
    STZ $09E6                       ; $A7D24B  9C E6 09     Mx
    STZ $09E4                       ; $A7D24E  9C E4 09     Mx
    STA $09AC                       ; $A7D251  8D AC 09     Mx
    LDA #$FFFF                      ; $A7D254  A9 FF FF     Mx
    STA $09B2                       ; $A7D257  8D B2 09     Mx
    STZ $09B4                       ; $A7D25A  9C B4 09     Mx
    STZ $09FA                       ; $A7D25D  9C FA 09     Mx
    STZ $09B0                       ; $A7D260  9C B0 09     Mx
    LDA #$FFF8                      ; $A7D263  A9 F8 FF     Mx
    STA $09B6                       ; $A7D266  8D B6 09     Mx
L_A7D269:
    RTS                             ; $A7D269  60           Mx
L_A7D26A:
    LDX $0A2C                       ; $A7D26A  AE 2C 0A     Mx
    INX                             ; $A7D26D  E8           Mx
    BEQ L_A7D269                    ; $A7D26E  F0 F9        Mx
    STZ $09E2                       ; $A7D270  9C E2 09     Mx
    STZ $09E0                       ; $A7D273  9C E0 09     Mx
    STZ $09EA                       ; $A7D276  9C EA 09     Mx
    STZ $09E8                       ; $A7D279  9C E8 09     Mx
    STZ $09E6                       ; $A7D27C  9C E6 09     Mx
    STZ $09E4                       ; $A7D27F  9C E4 09     Mx
    STZ $09FA                       ; $A7D282  9C FA 09     Mx
    STZ $0C1B                       ; $A7D285  9C 1B 0C     Mx
    STZ $0C29                       ; $A7D288  9C 29 0C     Mx
    STZ $0C27                       ; $A7D28B  9C 27 0C     Mx
    LDA #$08C0                      ; $A7D28E  A9 C0 08     Mx
    STA $0C25                       ; $A7D291  8D 25 0C     Mx
    LDA $0C19                       ; $A7D294  AD 19 0C     Mx
    STA $0C1F                       ; $A7D297  8D 1F 0C     Mx
    STZ $0A38                       ; $A7D29A  9C 38 0A     Mx
    LDA $00C0                       ; $A7D29D  AD C0 00     Mx
    STA $0C39                       ; $A7D2A0  8D 39 0C     Mx
    LDA $09C0                       ; $A7D2A3  AD C0 09     Mx
    STA $00A4                       ; $A7D2A6  8D A4 00     Mx
    LDA $0A18                       ; $A7D2A9  AD 18 0A     Mx
    TAX                             ; $A7D2AC  AA           Mx
    LDA $A7E377,X                   ; $A7D2AD  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7D2B1  29 07 00     Mx
    STA $09C0                       ; $A7D2B4  8D C0 09     Mx
    TXA                             ; $A7D2B7  8A           Mx
    CLC                             ; $A7D2B8  18           Mx
    ADC #$0040                      ; $A7D2B9  69 40 00     Mx
    AND #$007F                      ; $A7D2BC  29 7F 00     Mx
    TAX                             ; $A7D2BF  AA           Mx
    LDA $A7E377,X                   ; $A7D2C0  BF 77 E3 A7  Mx
    AND #$0007                      ; $A7D2C4  29 07 00     Mx
    STA $08D8                       ; $A7D2C7  8D D8 08     Mx
    LDA $09BA                       ; $A7D2CA  AD BA 09     Mx
    BNE L_A7D2DF                    ; $A7D2CD  D0 10        Mx
    LDA $1D56                       ; $A7D2CF  AD 56 1D     Mx
    AND #$0003                      ; $A7D2D2  29 03 00     Mx
    BNE L_A7D2DF                    ; $A7D2D5  D0 08        Mx
    LDA $0A1E                       ; $A7D2D7  AD 1E 0A     Mx
    CMP #$0038                      ; $A7D2DA  C9 38 00     Mx
    BCS L_A7D2E2                    ; $A7D2DD  B0 03        Mx
L_A7D2DF:
    JMP L_A7D383                    ; $A7D2DF  4C 83 D3     Mx
L_A7D2E2:
    CMP #$0100                      ; $A7D2E2  C9 00 01     Mx
    BPL L_A7D2DF                    ; $A7D2E5  10 F8        Mx
    LDA $00A4                       ; $A7D2E7  AD A4 00     Mx
    CMP #$0003                      ; $A7D2EA  C9 03 00     Mx
    BCC L_A7D301                    ; $A7D2ED  90 12        Mx
    CMP #$0006                      ; $A7D2EF  C9 06 00     Mx
    BCC L_A7D332                    ; $A7D2F2  90 3E        Mx
    LDA $09C0                       ; $A7D2F4  AD C0 09     Mx
    BEQ L_A7D31A                    ; $A7D2F7  F0 21        Mx
    CMP #$0001                      ; $A7D2F9  C9 01 00     Mx
    BEQ L_A7D31A                    ; $A7D2FC  F0 1C        Mx
    JMP L_A7D332                    ; $A7D2FE  4C 32 D3     Mx
L_A7D301:
    LDA $09C0                       ; $A7D301  AD C0 09     Mx
    CMP #$0002                      ; $A7D304  C9 02 00     Mx
    BEQ L_A7D326                    ; $A7D307  F0 1D        Mx
    CMP #$0007                      ; $A7D309  C9 07 00     Mx
    BNE L_A7D332                    ; $A7D30C  D0 24        Mx
    LDA #$0002                      ; $A7D30E  A9 02 00     Mx
    STA $09C0                       ; $A7D311  8D C0 09     Mx
    LDA #$003E                      ; $A7D314  A9 3E 00     Mx
    JMP L_A7D4AE                    ; $A7D317  4C AE D4     Mx
L_A7D31A:
    LDA #$0006                      ; $A7D31A  A9 06 00     Mx
    STA $09C0                       ; $A7D31D  8D C0 09     Mx
    LDA #$003E                      ; $A7D320  A9 3E 00     Mx
    JMP L_A7D4AE                    ; $A7D323  4C AE D4     Mx
L_A7D326:
    LDA #$0001                      ; $A7D326  A9 01 00     Mx
    STA $09C0                       ; $A7D329  8D C0 09     Mx
    LDA #$003E                      ; $A7D32C  A9 3E 00     Mx
    JMP L_A7D4AE                    ; $A7D32F  4C AE D4     Mx
L_A7D332:
    LDA $00A4                       ; $A7D332  AD A4 00     Mx
    CMP #$0002                      ; $A7D335  C9 02 00     Mx
    BCC L_A7D383                    ; $A7D338  90 49        Mx
    CMP #$0005                      ; $A7D33A  C9 05 00     Mx
    BCC L_A7D34F                    ; $A7D33D  90 10        Mx
    CMP #$0007                      ; $A7D33F  C9 07 00     Mx
    BEQ L_A7D383                    ; $A7D342  F0 3F        Mx
    LDA $09C0                       ; $A7D344  AD C0 09     Mx
    CMP #$0006                      ; $A7D347  C9 06 00     Mx
    BEQ L_A7D368                    ; $A7D34A  F0 1C        Mx
    JMP L_A7D383                    ; $A7D34C  4C 83 D3     Mx
L_A7D34F:
    LDA $09C0                       ; $A7D34F  AD C0 09     Mx
    CMP #$0005                      ; $A7D352  C9 05 00     Mx
    BEQ L_A7D377                    ; $A7D355  F0 20        Mx
    CMP #$0002                      ; $A7D357  C9 02 00     Mx
    BNE L_A7D383                    ; $A7D35A  D0 27        Mx
    LDA #$0003                      ; $A7D35C  A9 03 00     Mx
    STA $09C0                       ; $A7D35F  8D C0 09     Mx
    LDA #$0040                      ; $A7D362  A9 40 00     Mx
    JMP L_A7D4AE                    ; $A7D365  4C AE D4     Mx
L_A7D368:
    LDA #$0005                      ; $A7D368  A9 05 00     Mx
    STA $09C0                       ; $A7D36B  8D C0 09     Mx
    LDA #$0040                      ; $A7D36E  A9 40 00     Mx
    JMP L_A7D4AE                    ; $A7D371  4C AE D4     Mx
L_A7D374:
    JMP L_A7D4AE                    ; $A7D374  4C AE D4     Mx
L_A7D377:
    LDA #$0002                      ; $A7D377  A9 02 00     Mx
    STA $09C0                       ; $A7D37A  8D C0 09     Mx
    LDA #$0040                      ; $A7D37D  A9 40 00     Mx
    JMP L_A7D4AE                    ; $A7D380  4C AE D4     Mx
L_A7D383:
    PHP                             ; $A7D383  08           Mx
    REP #$30                        ; $A7D384  C2 30        Mx
    LDA $4212                       ; $A7D386  AD 12 42     MX
    SEP #$20                        ; $A7D389  E2 20        MX
    CLC                             ; $A7D38B  18           mX
    ADC $1D57                       ; $A7D38C  6D 57 1D     mX
    STA $1D57                       ; $A7D38F  8D 57 1D     mX
    REP #$20                        ; $A7D392  C2 20        mX
    LDA $4212                       ; $A7D394  AD 12 42     MX
    TAX                             ; $A7D397  AA           MX
    SEP #$20                        ; $A7D398  E2 20        MX
    EOR $1D58                       ; $A7D39A  4D 58 1D     mX
    STA $1D58                       ; $A7D39D  8D 58 1D     mX
    TXA                             ; $A7D3A0  8A           mX
    ADC $1D59                       ; $A7D3A1  6D 59 1D     mX
    REP #$20                        ; $A7D3A4  C2 20        mX
    LDA $1D56                       ; $A7D3A6  AD 56 1D     MX
    INC                             ; $A7D3A9  1A           MX
    ROR                             ; $A7D3AA  6A           MX
    LSR $1D58                       ; $A7D3AB  4E 58 1D     MX
    EOR #$2B41                      ; $A7D3AE  49 41 2B     MX
    SBC #$000F                      ; $A7D3B1  E9 0F 00     MX
    STA $1D56                       ; $A7D3B4  8D 56 1D     MX
    LDA $1D58                       ; $A7D3B7  AD 58 1D     MX
    EOR #$1D87                      ; $A7D3BA  49 87 1D     MX
    STA $1D58                       ; $A7D3BD  8D 58 1D     MX
    LDA $1D52                       ; $A7D3C0  AD 52 1D     MX
    EOR $1D56                       ; $A7D3C3  4D 56 1D     MX
    STA $0002                       ; $A7D3C6  8D 02 00     MX
    INC                             ; $A7D3C9  1A           MX
    STA $1D52                       ; $A7D3CA  8D 52 1D     MX
    LDA $1D54                       ; $A7D3CD  AD 54 1D     MX
    EOR $1D58                       ; $A7D3D0  4D 58 1D     MX
    ADC #$0000                      ; $A7D3D3  69 00 00     MX
    STA $1D52                       ; $A7D3D6  8D 52 1D     MX
    STA $0004                       ; $A7D3D9  8D 04 00     MX
    PLP                             ; $A7D3DC  28           MX
    LDA $0002                       ; $A7D3DD  AD 02 00     Mx
    CMP #$5999                      ; $A7D3E0  C9 99 59     Mx
    BCC L_A7D3E8                    ; $A7D3E3  90 03        Mx
L_A7D3E5:
    JMP L_A7D47B                    ; $A7D3E5  4C 7B D4     Mx
L_A7D3E8:
    LDA $09FA                       ; $A7D3E8  AD FA 09     Mx
    BNE L_A7D3E5                    ; $A7D3EB  D0 F8        Mx
    LDA $0A1E                       ; $A7D3ED  AD 1E 0A     Mx
    CMP #$005A                      ; $A7D3F0  C9 5A 00     Mx
    BCC L_A7D3E5                    ; $A7D3F3  90 F0        Mx
    CMP #$0168                      ; $A7D3F5  C9 68 01     Mx
    BCC L_A7D3FD                    ; $A7D3F8  90 03        Mx
    JMP L_A7D3E5                    ; $A7D3FA  4C E5 D3     Mx
L_A7D3FD:
    LDA $00A4                       ; $A7D3FD  AD A4 00     Mx
    CMP #$0002                      ; $A7D400  C9 02 00     Mx
    BCC L_A7D420                    ; $A7D403  90 1B        Mx
    CMP #$0005                      ; $A7D405  C9 05 00     Mx
    BCS L_A7D420                    ; $A7D408  B0 16        Mx
    LDA $09C0                       ; $A7D40A  AD C0 09     Mx
    CMP #$0001                      ; $A7D40D  C9 01 00     Mx
    BEQ L_A7D417                    ; $A7D410  F0 05        Mx
    CMP #$0002                      ; $A7D412  C9 02 00     Mx
    BNE L_A7D47B                    ; $A7D415  D0 64        Mx
L_A7D417:
    LDA #$0003                      ; $A7D417  A9 03 00     Mx
    STA $09C0                       ; $A7D41A  8D C0 09     Mx
    JMP L_A7D4A5                    ; $A7D41D  4C A5 D4     Mx
L_A7D420:
    CMP #$0005                      ; $A7D420  C9 05 00     Mx
    BEQ L_A7D465                    ; $A7D423  F0 40        Mx
    CMP #$0006                      ; $A7D425  C9 06 00     Mx
    BEQ L_A7D465                    ; $A7D428  F0 3B        Mx
    CMP #$0000                      ; $A7D42A  C9 00 00     Mx
    BEQ L_A7D44F                    ; $A7D42D  F0 20        Mx
    CMP #$0001                      ; $A7D42F  C9 01 00     Mx
    BEQ L_A7D44F                    ; $A7D432  F0 1B        Mx
    CMP #$0007                      ; $A7D434  C9 07 00     Mx
    BNE L_A7D47B                    ; $A7D437  D0 42        Mx
    LDA $09C0                       ; $A7D439  AD C0 09     Mx
    CMP #$0005                      ; $A7D43C  C9 05 00     Mx
    BEQ L_A7D446                    ; $A7D43F  F0 05        Mx
    CMP #$0006                      ; $A7D441  C9 06 00     Mx
    BNE L_A7D47B                    ; $A7D444  D0 35        Mx
L_A7D446:
    LDA #$0007                      ; $A7D446  A9 07 00     Mx
    STA $09C0                       ; $A7D449  8D C0 09     Mx
    JMP L_A7D4A5                    ; $A7D44C  4C A5 D4     Mx
L_A7D44F:
    LDA $09C0                       ; $A7D44F  AD C0 09     Mx
    CMP #$0002                      ; $A7D452  C9 02 00     Mx
    BEQ L_A7D45C                    ; $A7D455  F0 05        Mx
    CMP #$0003                      ; $A7D457  C9 03 00     Mx
    BNE L_A7D47B                    ; $A7D45A  D0 1F        Mx
L_A7D45C:
    LDA #$0001                      ; $A7D45C  A9 01 00     Mx
    STA $09C0                       ; $A7D45F  8D C0 09     Mx
    JMP L_A7D4A5                    ; $A7D462  4C A5 D4     Mx
L_A7D465:
    LDA $09C0                       ; $A7D465  AD C0 09     Mx
    CMP #$0006                      ; $A7D468  C9 06 00     Mx
    BEQ L_A7D472                    ; $A7D46B  F0 05        Mx
    CMP #$0007                      ; $A7D46D  C9 07 00     Mx
    BNE L_A7D47B                    ; $A7D470  D0 09        Mx
L_A7D472:
    LDA #$0005                      ; $A7D472  A9 05 00     Mx
    STA $09C0                       ; $A7D475  8D C0 09     Mx
    JMP L_A7D4A5                    ; $A7D478  4C A5 D4     Mx
L_A7D47B:
    LDA $0A1E                       ; $A7D47B  AD 1E 0A     Mx
    CMP #$0082                      ; $A7D47E  C9 82 00     Mx
    BCC L_A7D4AB                    ; $A7D481  90 28        Mx
    CMP #$0168                      ; $A7D483  C9 68 01     Mx
    BCC L_A7D48B                    ; $A7D486  90 03        Mx
    STZ $0C39                       ; $A7D488  9C 39 0C     Mx
L_A7D48B:
    LDA $0006                       ; $A7D48B  AD 06 00     Mx
    AND #$0007                      ; $A7D48E  29 07 00     Mx
    CMP #$0004                      ; $A7D491  C9 04 00     Mx
    BEQ L_A7D49C                    ; $A7D494  F0 06        Mx
    LDA #$000A                      ; $A7D496  A9 0A 00     Mx
    JMP L_A7D4AE                    ; $A7D499  4C AE D4     Mx
L_A7D49C:
    LDA #$001A                      ; $A7D49C  A9 1A 00     Mx
    STZ $0C39                       ; $A7D49F  9C 39 0C     Mx
    JMP L_A7D4AE                    ; $A7D4A2  4C AE D4     Mx
L_A7D4A5:
    LDA #$0016                      ; $A7D4A5  A9 16 00     Mx
    JMP L_A7D4AE                    ; $A7D4A8  4C AE D4     Mx
L_A7D4AB:
    LDA #$0012                      ; $A7D4AB  A9 12 00     Mx
L_A7D4AE:
    STA $09AC                       ; $A7D4AE  8D AC 09     Mx
    LDA #$FFFF                      ; $A7D4B1  A9 FF FF     Mx
    STA $09B2                       ; $A7D4B4  8D B2 09     Mx
    STZ $09B4                       ; $A7D4B7  9C B4 09     Mx
    STZ $09FA                       ; $A7D4BA  9C FA 09     Mx
    STZ $09B0                       ; $A7D4BD  9C B0 09     Mx
    LDA #$FFF8                      ; $A7D4C0  A9 F8 FF     Mx
    STA $09B6                       ; $A7D4C3  8D B6 09     Mx
    LDA #$0002                      ; $A7D4C6  A9 02 00     Mx
    STA $09B0                       ; $A7D4C9  8D B0 09     Mx
    STZ $0A5C                       ; $A7D4CC  9C 5C 0A     Mx
    LDA $09DA                       ; $A7D4CF  AD DA 09     Mx
    BNE L_A7D504                    ; $A7D4D2  D0 30        Mx
    LDA $0976                       ; $A7D4D4  AD 76 09     Mx
    BEQ L_A7D504                    ; $A7D4D7  F0 2B        Mx
    CMP #$0009                      ; $A7D4D9  C9 09 00     Mx
    BCC L_A7D504                    ; $A7D4DC  90 26        Mx
    LDA $0938                       ; $A7D4DE  AD 38 09     Mx
    CMP #$0023                      ; $A7D4E1  C9 23 00     Mx
    BCC L_A7D504                    ; $A7D4E4  90 1E        Mx
    LDA $093A                       ; $A7D4E6  AD 3A 09     Mx
    CMP #$0023                      ; $A7D4E9  C9 23 00     Mx
    BCC L_A7D504                    ; $A7D4EC  90 16        Mx
    LDA $0A1E                       ; $A7D4EE  AD 1E 0A     Mx
    CMP #$0028                      ; $A7D4F1  C9 28 00     Mx
    BCC L_A7D504                    ; $A7D4F4  90 0E        Mx
    LDA #$0001                      ; $A7D4F6  A9 01 00     Mx
    STA $0974                       ; $A7D4F9  8D 74 09     Mx
    LDA #$0032                      ; $A7D4FC  A9 32 00     Mx
    STA $0972                       ; $A7D4FF  8D 72 09     Mx
    BNE L_A7D510                    ; $A7D502  D0 0C        Mx
L_A7D504:
    STZ $08FA                       ; $A7D504  9C FA 08     Mx
    STZ $08F8                       ; $A7D507  9C F8 08     Mx
    STZ $0902                       ; $A7D50A  9C 02 09     Mx
    STZ $0900                       ; $A7D50D  9C 00 09     Mx
L_A7D510:
    LDA #$0087                      ; $A7D510  A9 87 00     Mx
    STA $0982                       ; $A7D513  8D 82 09     Mx
    LDA $09A8                       ; $A7D516  AD A8 09     Mx
    AND #$00FF                      ; $A7D519  29 FF 00     Mx
    STA $0AA0                       ; $A7D51C  8D A0 0A     Mx
    LDA #$00D2                      ; $A7D51F  A9 D2 00     Mx
    STA $0A9E                       ; $A7D522  8D 9E 0A     Mx
    RTS                             ; $A7D525  60           Mx
L_A7D526:
    REP #$10                        ; $A7D526  C2 10        Mx
    STZ $0BFF                       ; $A7D528  9C FF 0B     MX
    STZ $09E6                       ; $A7D52B  9C E6 09     MX
    STZ $09E4                       ; $A7D52E  9C E4 09     MX
    STZ $09FA                       ; $A7D531  9C FA 09     MX
    STZ $0C29                       ; $A7D534  9C 29 0C     MX
    STZ $0BC9                       ; $A7D537  9C C9 0B     MX
    STZ $1131                       ; $A7D53A  9C 31 11     MX
    STZ $1133                       ; $A7D53D  9C 33 11     MX
    STZ $1135                       ; $A7D540  9C 35 11     MX
    STZ $0A38                       ; $A7D543  9C 38 0A     MX
    LDX $09C0                       ; $A7D546  AE C0 09     MX
    BEQ L_A7D553                    ; $A7D549  F0 08        MX
    CPX #$0004                      ; $A7D54B  E0 04 00     MX
    BEQ L_A7D553                    ; $A7D54E  F0 03        MX
L_A7D550:
    JMP L_A7D594                    ; $A7D550  4C 94 D5     MX
L_A7D553:
    LDA $0A0C                       ; $A7D553  AD 0C 0A     MX
    CMP #$0028                      ; $A7D556  C9 28 00     MX
    BCC L_A7D550                    ; $A7D559  90 F5        MX
    CMP #$0096                      ; $A7D55B  C9 96 00     MX
    BCS L_A7D550                    ; $A7D55E  B0 F0        MX
    LDA $09DE                       ; $A7D560  AD DE 09     MX
    CMP #$0356                      ; $A7D563  C9 56 03     MX
    BCC L_A7D550                    ; $A7D566  90 E8        MX
    CMP #$0392                      ; $A7D568  C9 92 03     MX
    BCS L_A7D550                    ; $A7D56B  B0 E3        MX
    CPX #$0000                      ; $A7D56D  E0 00 00     MX
    BEQ L_A7D577                    ; $A7D570  F0 05        MX
    LDX #$0005                      ; $A7D572  A2 05 00     MX
    BNE L_A7D57A                    ; $A7D575  D0 03        MX
L_A7D577:
    LDX #$0007                      ; $A7D577  A2 07 00     MX
L_A7D57A:
    STX $09C0                       ; $A7D57A  8E C0 09     MX
    LDA #$0002                      ; $A7D57D  A9 02 00     MX
    STA $0C3B                       ; $A7D580  8D 3B 0C     MX
    LDA $0A3E                       ; $A7D583  AD 3E 0A     MX
    BEQ L_A7D58E                    ; $A7D586  F0 06        MX
    LDA #$0010                      ; $A7D588  A9 10 00     MX
    JMP L_A7DB64                    ; $A7D58B  4C 64 DB     MX
L_A7D58E:
    LDA #$0034                      ; $A7D58E  A9 34 00     MX
    JMP L_A7DB64                    ; $A7D591  4C 64 DB     MX
L_A7D594:
    LDA $0A0E                       ; $A7D594  AD 0E 0A     MX
    STA $00D9                       ; $A7D597  8D D9 00     MX
    CLC                             ; $A7D59A  18           MX
    ADC #$0008                      ; $A7D59B  69 08 00     MX
    AND #$007F                      ; $A7D59E  29 7F 00     MX
    LSR                             ; $A7D5A1  4A           MX
    LSR                             ; $A7D5A2  4A           MX
    LSR                             ; $A7D5A3  4A           MX
    LSR                             ; $A7D5A4  4A           MX
    CMP #$0000                      ; $A7D5A5  C9 00 00     MX
    BEQ L_A7D5BE                    ; $A7D5A8  F0 14        MX
    SEC                             ; $A7D5AA  38           MX
    SBC #$0004                      ; $A7D5AB  E9 04 00     MX
    BPL L_A7D5BE                    ; $A7D5AE  10 0E        MX
    LDA $0A0C                       ; $A7D5B0  AD 0C 0A     MX
    CMP #$0046                      ; $A7D5B3  C9 46 00     MX
    BCS L_A7D5BB                    ; $A7D5B6  B0 03        MX
    JMP L_A7D70E                    ; $A7D5B8  4C 0E D7     MX
L_A7D5BB:
    JMP L_A7DB00                    ; $A7D5BB  4C 00 DB     MX
L_A7D5BE:
    LDA $0A0C                       ; $A7D5BE  AD 0C 0A     MX
    CMP #$0030                      ; $A7D5C1  C9 30 00     MX
    BCS L_A7D5C9                    ; $A7D5C4  B0 03        MX
    JMP L_A7D654                    ; $A7D5C6  4C 54 D6     MX
L_A7D5C9:
    LDA $09C0                       ; $A7D5C9  AD C0 09     MX
    ASL                             ; $A7D5CC  0A           MX
    ASL                             ; $A7D5CD  0A           MX
    ASL                             ; $A7D5CE  0A           MX
    ASL                             ; $A7D5CF  0A           MX
    SEC                             ; $A7D5D0  38           MX
    SBC $0A0E                       ; $A7D5D1  ED 0E 0A     MX
    BPL L_A7D5DD                    ; $A7D5D4  10 07        MX
    EOR #$FFFF                      ; $A7D5D6  49 FF FF     MX
    CLC                             ; $A7D5D9  18           MX
    ADC #$0001                      ; $A7D5DA  69 01 00     MX
L_A7D5DD:
    CMP #$0040                      ; $A7D5DD  C9 40 00     MX
    BCC L_A7D5EF                    ; $A7D5E0  90 0D        MX
    SEC                             ; $A7D5E2  38           MX
    SBC #$0080                      ; $A7D5E3  E9 80 00     MX
    BPL L_A7D5EF                    ; $A7D5E6  10 07        MX
    EOR #$FFFF                      ; $A7D5E8  49 FF FF     MX
    CLC                             ; $A7D5EB  18           MX
    ADC #$0001                      ; $A7D5EC  69 01 00     MX
L_A7D5EF:
    SEC                             ; $A7D5EF  38           MX
    SBC #$0018                      ; $A7D5F0  E9 18 00     MX
    BPL L_A7D610                    ; $A7D5F3  10 1B        MX
    LDA $0A8E                       ; $A7D5F5  AD 8E 0A     MX
    AND #$0010                      ; $A7D5F8  29 10 00     MX
    BEQ L_A7D608                    ; $A7D5FB  F0 0B        MX
    LDA $0A0C                       ; $A7D5FD  AD 0C 0A     MX
    CMP #$0110                      ; $A7D600  C9 10 01     MX
    BCS L_A7D610                    ; $A7D603  B0 0B        MX
    JMP L_A7D70E                    ; $A7D605  4C 0E D7     MX
L_A7D608:
    LDA $0A0C                       ; $A7D608  AD 0C 0A     MX
    CMP #$0088                      ; $A7D60B  C9 88 00     MX
    BCC L_A7D613                    ; $A7D60E  90 03        MX
L_A7D610:
    JMP L_A7DB00                    ; $A7D610  4C 00 DB     MX
L_A7D613:
    LDA $09DE                       ; $A7D613  AD DE 09     MX
    CMP #$0330                      ; $A7D616  C9 30 03     MX
    BCC L_A7D610                    ; $A7D619  90 F5        MX
    CMP #$03D0                      ; $A7D61B  C9 D0 03     MX
    BCS L_A7D610                    ; $A7D61E  B0 F0        MX
    LDA $09E2                       ; $A7D620  AD E2 09     MX
    BPL L_A7D638                    ; $A7D623  10 13        MX
    LDA $09E0                       ; $A7D625  AD E0 09     MX
    EOR #$FFFF                      ; $A7D628  49 FF FF     MX
    CLC                             ; $A7D62B  18           MX
    ADC #$0001                      ; $A7D62C  69 01 00     MX
    LDA $09E2                       ; $A7D62F  AD E2 09     MX
    EOR #$FFFF                      ; $A7D632  49 FF FF     MX
    ADC #$0000                      ; $A7D635  69 00 00     MX
L_A7D638:
    BNE L_A7D654                    ; $A7D638  D0 1A        MX
    LDA $09EA                       ; $A7D63A  AD EA 09     MX
    BPL L_A7D652                    ; $A7D63D  10 13        MX
    LDA $09E8                       ; $A7D63F  AD E8 09     MX
    EOR #$FFFF                      ; $A7D642  49 FF FF     MX
    CLC                             ; $A7D645  18           MX
    ADC #$0001                      ; $A7D646  69 01 00     MX
    LDA $09EA                       ; $A7D649  AD EA 09     MX
    EOR #$FFFF                      ; $A7D64C  49 FF FF     MX
    ADC #$0000                      ; $A7D64F  69 00 00     MX
L_A7D652:
    BEQ L_A7D610                    ; $A7D652  F0 BC        MX
L_A7D654:
    LDX $07D8                       ; $A7D654  AE D8 07     MX
    CPX $0A96                       ; $A7D657  EC 96 0A     MX
    BNE L_A7D665                    ; $A7D65A  D0 09        MX
    LDA #$000B                      ; $A7D65C  A9 0B 00     MX
    STA $00D0                       ; $A7D65F  8D D0 00     MX
    JMP L_A7D66B                    ; $A7D662  4C 6B D6     MX
L_A7D665:
    LDA $08A6                       ; $A7D665  AD A6 08     MX
    STA $00D0                       ; $A7D668  8D D0 00     MX
L_A7D66B:
    ASL                             ; $A7D66B  0A           MX
    TAX                             ; $A7D66C  AA           MX
    LDA $DA8E,X                     ; $A7D66D  BD 8E DA     MX
    STA $00D6                       ; $A7D670  8D D6 00     MX
    LDA $DAA6,X                     ; $A7D673  BD A6 DA     MX
    STA $00D0                       ; $A7D676  8D D0 00     MX
    LDA $0A20                       ; $A7D679  AD 20 0A     MX
    CMP $0A0C                       ; $A7D67C  CD 0C 0A     MX
    BCS L_A7D6B1                    ; $A7D67F  B0 30        MX
    CMP $00D6                       ; $A7D681  CD D6 00     MX
    BCS L_A7D6B1                    ; $A7D684  B0 2B        MX
    LDA $0A1A                       ; $A7D686  AD 1A 0A     MX
    SEC                             ; $A7D689  38           MX
    SBC $00D9                       ; $A7D68A  ED D9 00     MX
    BPL L_A7D696                    ; $A7D68D  10 07        MX
    EOR #$FFFF                      ; $A7D68F  49 FF FF     MX
    CLC                             ; $A7D692  18           MX
    ADC #$0001                      ; $A7D693  69 01 00     MX
L_A7D696:
    CMP #$0040                      ; $A7D696  C9 40 00     MX
    BCC L_A7D6A8                    ; $A7D699  90 0D        MX
    SEC                             ; $A7D69B  38           MX
    SBC #$0080                      ; $A7D69C  E9 80 00     MX
    BPL L_A7D6A8                    ; $A7D69F  10 07        MX
    EOR #$FFFF                      ; $A7D6A1  49 FF FF     MX
    CLC                             ; $A7D6A4  18           MX
    ADC #$0001                      ; $A7D6A5  69 01 00     MX
L_A7D6A8:
    SEC                             ; $A7D6A8  38           MX
    SBC $00D0                       ; $A7D6A9  ED D0 00     MX
    BPL L_A7D6B1                    ; $A7D6AC  10 03        MX
    JMP L_A7DABE                    ; $A7D6AE  4C BE DA     MX
L_A7D6B1:
    LDX $06F0                       ; $A7D6B1  AE F0 06     MX
    CPX $0A96                       ; $A7D6B4  EC 96 0A     MX
    BNE L_A7D6C2                    ; $A7D6B7  D0 09        MX
    LDA #$000B                      ; $A7D6B9  A9 0B 00     MX
    STA $00D0                       ; $A7D6BC  8D D0 00     MX
    JMP L_A7D6C8                    ; $A7D6BF  4C C8 D6     MX
L_A7D6C2:
    LDA $07BE                       ; $A7D6C2  AD BE 07     MX
    STA $00D0                       ; $A7D6C5  8D D0 00     MX
L_A7D6C8:
    ASL                             ; $A7D6C8  0A           MX
    TAX                             ; $A7D6C9  AA           MX
    LDA $DA8E,X                     ; $A7D6CA  BD 8E DA     MX
    STA $00D6                       ; $A7D6CD  8D D6 00     MX
    LDA $DAA6,X                     ; $A7D6D0  BD A6 DA     MX
    STA $00D0                       ; $A7D6D3  8D D0 00     MX
    LDA $0A22                       ; $A7D6D6  AD 22 0A     MX
    CMP $0A0C                       ; $A7D6D9  CD 0C 0A     MX
    BCS L_A7D70E                    ; $A7D6DC  B0 30        MX
    CMP $00D6                       ; $A7D6DE  CD D6 00     MX
    BCS L_A7D70E                    ; $A7D6E1  B0 2B        MX
    LDA $0A1C                       ; $A7D6E3  AD 1C 0A     MX
    SEC                             ; $A7D6E6  38           MX
    SBC $00D9                       ; $A7D6E7  ED D9 00     MX
    BPL L_A7D6F3                    ; $A7D6EA  10 07        MX
    EOR #$FFFF                      ; $A7D6EC  49 FF FF     MX
    CLC                             ; $A7D6EF  18           MX
    ADC #$0001                      ; $A7D6F0  69 01 00     MX
L_A7D6F3:
    CMP #$0040                      ; $A7D6F3  C9 40 00     MX
    BCC L_A7D705                    ; $A7D6F6  90 0D        MX
    SEC                             ; $A7D6F8  38           MX
    SBC #$0080                      ; $A7D6F9  E9 80 00     MX
    BPL L_A7D705                    ; $A7D6FC  10 07        MX
    EOR #$FFFF                      ; $A7D6FE  49 FF FF     MX
    CLC                             ; $A7D701  18           MX
    ADC #$0001                      ; $A7D702  69 01 00     MX
L_A7D705:
    SEC                             ; $A7D705  38           MX
    SBC $00D0                       ; $A7D706  ED D0 00     MX
    BPL L_A7D70E                    ; $A7D709  10 03        MX
    JMP L_A7DABE                    ; $A7D70B  4C BE DA     MX
L_A7D70E:
    LDX $0A0E                       ; $A7D70E  AE 0E 0A     MX
    LDA $A7E377,X                   ; $A7D711  BF 77 E3 A7  MX
    AND #$0007                      ; $A7D715  29 07 00     MX
    STA $00A4                       ; $A7D718  8D A4 00     MX
    CMP #$0000                      ; $A7D71B  C9 00 00     MX
    BEQ L_A7D725                    ; $A7D71E  F0 05        MX
    CMP #$0004                      ; $A7D720  C9 04 00     MX
    BCC L_A7D72A                    ; $A7D723  90 05        MX
L_A7D725:
    LDA $00A4                       ; $A7D725  AD A4 00     MX
    BRA L_A7D73E                    ; $A7D728  80 14        MX
L_A7D72A:
    LDA $0A0C                       ; $A7D72A  AD 0C 0A     MX
    CMP #$0030                      ; $A7D72D  C9 30 00     MX
    BCC L_A7D737                    ; $A7D730  90 05        MX
    LDA $00A4                       ; $A7D732  AD A4 00     MX
    BRA L_A7D73E                    ; $A7D735  80 07        MX
L_A7D737:
    LDX $0A0E                       ; $A7D737  AE 0E 0A     MX
    LDA $A7DB97,X                   ; $A7D73A  BF 97 DB A7  MX
L_A7D73E:
    AND #$0007                      ; $A7D73E  29 07 00     MX
    STA $09C0                       ; $A7D741  8D C0 09     MX
    ASL                             ; $A7D744  0A           MX
    STA $00D9                       ; $A7D745  8D D9 00     MX
    SEP #$20                        ; $A7D748  E2 20        MX
    PHB                             ; $A7D74A  8B           mX
    LDA #$24                        ; $A7D74B  A9 24        mX
    PHA                             ; $A7D74D  48           mX
    PLB                             ; $A7D74E  AB           mX
    REP #$20                        ; $A7D74F  C2 20        mX
    LDA #$0004                      ; $A7D751  A9 04 00     MX
    STA $09B0                       ; $A7D754  8D B0 09     MX
    LDX $09A8                       ; $A7D757  AE A8 09     MX
    CPX $0A96                       ; $A7D75A  EC 96 0A     MX
    BEQ L_A7D785                    ; $A7D75D  F0 26        MX
    LDA $0A8E                       ; $A7D75F  AD 8E 0A     MX
    AND #$0010                      ; $A7D762  29 10 00     MX
    BNE L_A7D785                    ; $A7D765  D0 1E        MX
    LDA $0A70                       ; $A7D767  AD 70 0A     MX
    ASL                             ; $A7D76A  0A           MX
    TAX                             ; $A7D76B  AA           MX
    JMP ($D76F,X)                   ; $A7D76C  7C 6F D7     MX
    db $B1,$D8,$B1,$D8,$B1,$D8,$66,$D8,$66,$D8,$1B,$D8,$D0,$D7,$D0,$D7 ; $A7D76F
    db $85,$D7,$85,$D7,$85,$D7                                         ; $A7D77F
L_A7D785:
    LDA $00D9                       ; $A7D785  AD D9 00     MX
    CLC                             ; $A7D788  18           MX
    ADC #$D62E                      ; $A7D789  69 2E D6     MX
    STA $00D9                       ; $A7D78C  8D D9 00     MX
    LDA $0A0C                       ; $A7D78F  AD 0C 0A     MX
    CMP #$0030                      ; $A7D792  C9 30 00     MX
    BCC L_A7D7CA                    ; $A7D795  90 33        MX
    LDA $00D9                       ; $A7D797  AD D9 00     MX
    CLC                             ; $A7D79A  18           MX
    ADC #$0012                      ; $A7D79B  69 12 00     MX
    STA $00D9                       ; $A7D79E  8D D9 00     MX
    LDA $0A0C                       ; $A7D7A1  AD 0C 0A     MX
    CMP #$0040                      ; $A7D7A4  C9 40 00     MX
    BCC L_A7D7CA                    ; $A7D7A7  90 21        MX
    LDA $0A3E                       ; $A7D7A9  AD 3E 0A     MX
    BEQ L_A7D7CD                    ; $A7D7AC  F0 1F        MX
    LDA $00D9                       ; $A7D7AE  AD D9 00     MX
    CLC                             ; $A7D7B1  18           MX
    ADC #$0012                      ; $A7D7B2  69 12 00     MX
    STA $00D9                       ; $A7D7B5  8D D9 00     MX
    LDA $0A0C                       ; $A7D7B8  AD 0C 0A     MX
    CMP #$0060                      ; $A7D7BB  C9 60 00     MX
    BCC L_A7D7CA                    ; $A7D7BE  90 0A        MX
    LDA $00D9                       ; $A7D7C0  AD D9 00     MX
    CLC                             ; $A7D7C3  18           MX
    ADC #$0012                      ; $A7D7C4  69 12 00     MX
    STA $00D9                       ; $A7D7C7  8D D9 00     MX
L_A7D7CA:
    JMP L_A7D8FF                    ; $A7D7CA  4C FF D8     MX
L_A7D7CD:
    JMP L_A7D8F9                    ; $A7D7CD  4C F9 D8     MX
L_A7D7D0:
    LDA $00D9                       ; $A7D7D0  AD D9 00     MX
    CLC                             ; $A7D7D3  18           MX
    ADC #$D8AC                      ; $A7D7D4  69 AC D8     MX
    STA $00D9                       ; $A7D7D7  8D D9 00     MX
    LDA $0A0C                       ; $A7D7DA  AD 0C 0A     MX
    CMP #$0030                      ; $A7D7DD  C9 30 00     MX
    BCC L_A7D815                    ; $A7D7E0  90 33        MX
    LDA $00D9                       ; $A7D7E2  AD D9 00     MX
    CLC                             ; $A7D7E5  18           MX
    ADC #$0012                      ; $A7D7E6  69 12 00     MX
    STA $00D9                       ; $A7D7E9  8D D9 00     MX
    LDA $0A0C                       ; $A7D7EC  AD 0C 0A     MX
    CMP #$0040                      ; $A7D7EF  C9 40 00     MX
    BCC L_A7D815                    ; $A7D7F2  90 21        MX
    LDA $0A3E                       ; $A7D7F4  AD 3E 0A     MX
    BEQ L_A7D818                    ; $A7D7F7  F0 1F        MX
    LDA $00D9                       ; $A7D7F9  AD D9 00     MX
    CLC                             ; $A7D7FC  18           MX
    ADC #$0012                      ; $A7D7FD  69 12 00     MX
    STA $00D9                       ; $A7D800  8D D9 00     MX
    LDA $0A0C                       ; $A7D803  AD 0C 0A     MX
    CMP #$0060                      ; $A7D806  C9 60 00     MX
    BCC L_A7D815                    ; $A7D809  90 0A        MX
    LDA $00D9                       ; $A7D80B  AD D9 00     MX
    CLC                             ; $A7D80E  18           MX
    ADC #$0012                      ; $A7D80F  69 12 00     MX
    STA $00D9                       ; $A7D812  8D D9 00     MX
L_A7D815:
    JMP L_A7D8FF                    ; $A7D815  4C FF D8     MX
L_A7D818:
    JMP L_A7D8F9                    ; $A7D818  4C F9 D8     MX
L_A7D81B:
    LDA $00D9                       ; $A7D81B  AD D9 00     MX
    CLC                             ; $A7D81E  18           MX
    ADC #$DB24                      ; $A7D81F  69 24 DB     MX
    STA $00D9                       ; $A7D822  8D D9 00     MX
    LDA $0A0C                       ; $A7D825  AD 0C 0A     MX
    CMP #$0030                      ; $A7D828  C9 30 00     MX
    BCC L_A7D860                    ; $A7D82B  90 33        MX
    LDA $00D9                       ; $A7D82D  AD D9 00     MX
    CLC                             ; $A7D830  18           MX
    ADC #$0012                      ; $A7D831  69 12 00     MX
    STA $00D9                       ; $A7D834  8D D9 00     MX
    LDA $0A0C                       ; $A7D837  AD 0C 0A     MX
    CMP #$0040                      ; $A7D83A  C9 40 00     MX
    BCC L_A7D860                    ; $A7D83D  90 21        MX
    LDA $0A3E                       ; $A7D83F  AD 3E 0A     MX
    BEQ L_A7D863                    ; $A7D842  F0 1F        MX
    LDA $00D9                       ; $A7D844  AD D9 00     MX
    CLC                             ; $A7D847  18           MX
    ADC #$0012                      ; $A7D848  69 12 00     MX
    STA $00D9                       ; $A7D84B  8D D9 00     MX
    LDA $0A0C                       ; $A7D84E  AD 0C 0A     MX
    CMP #$0060                      ; $A7D851  C9 60 00     MX
    BCC L_A7D860                    ; $A7D854  90 0A        MX
    LDA $00D9                       ; $A7D856  AD D9 00     MX
    CLC                             ; $A7D859  18           MX
    ADC #$0012                      ; $A7D85A  69 12 00     MX
    STA $00D9                       ; $A7D85D  8D D9 00     MX
L_A7D860:
    JMP L_A7D8FF                    ; $A7D860  4C FF D8     MX
L_A7D863:
    JMP L_A7D8F9                    ; $A7D863  4C F9 D8     MX
L_A7D866:
    LDA $00D9                       ; $A7D866  AD D9 00     MX
    CLC                             ; $A7D869  18           MX
    ADC #$DD48                      ; $A7D86A  69 48 DD     MX
    STA $00D9                       ; $A7D86D  8D D9 00     MX
    LDA $0A0C                       ; $A7D870  AD 0C 0A     MX
    CMP #$0030                      ; $A7D873  C9 30 00     MX
    BCC L_A7D8AB                    ; $A7D876  90 33        MX
    LDA $00D9                       ; $A7D878  AD D9 00     MX
    CLC                             ; $A7D87B  18           MX
    ADC #$0012                      ; $A7D87C  69 12 00     MX
    STA $00D9                       ; $A7D87F  8D D9 00     MX
    LDA $0A0C                       ; $A7D882  AD 0C 0A     MX
    CMP #$0040                      ; $A7D885  C9 40 00     MX
    BCC L_A7D8AB                    ; $A7D888  90 21        MX
    LDA $0A3E                       ; $A7D88A  AD 3E 0A     MX
    BEQ L_A7D8AE                    ; $A7D88D  F0 1F        MX
    LDA $00D9                       ; $A7D88F  AD D9 00     MX
    CLC                             ; $A7D892  18           MX
    ADC #$0012                      ; $A7D893  69 12 00     MX
    STA $00D9                       ; $A7D896  8D D9 00     MX
    LDA $0A0C                       ; $A7D899  AD 0C 0A     MX
    CMP #$0060                      ; $A7D89C  C9 60 00     MX
    BCC L_A7D8AB                    ; $A7D89F  90 0A        MX
    LDA $00D9                       ; $A7D8A1  AD D9 00     MX
    CLC                             ; $A7D8A4  18           MX
    ADC #$0012                      ; $A7D8A5  69 12 00     MX
    STA $00D9                       ; $A7D8A8  8D D9 00     MX
L_A7D8AB:
    JMP L_A7D8FF                    ; $A7D8AB  4C FF D8     MX
L_A7D8AE:
    JMP L_A7D8F9                    ; $A7D8AE  4C F9 D8     MX
L_A7D8B1:
    LDA $00D9                       ; $A7D8B1  AD D9 00     MX
    CLC                             ; $A7D8B4  18           MX
    ADC #$DEEC                      ; $A7D8B5  69 EC DE     MX
    STA $00D9                       ; $A7D8B8  8D D9 00     MX
    LDA $0A0C                       ; $A7D8BB  AD 0C 0A     MX
    CMP #$0030                      ; $A7D8BE  C9 30 00     MX
    BCC L_A7D8F6                    ; $A7D8C1  90 33        MX
    LDA $00D9                       ; $A7D8C3  AD D9 00     MX
    CLC                             ; $A7D8C6  18           MX
    ADC #$0012                      ; $A7D8C7  69 12 00     MX
    STA $00D9                       ; $A7D8CA  8D D9 00     MX
    LDA $0A0C                       ; $A7D8CD  AD 0C 0A     MX
    CMP #$0040                      ; $A7D8D0  C9 40 00     MX
    BCC L_A7D8F6                    ; $A7D8D3  90 21        MX
    LDA $0A3E                       ; $A7D8D5  AD 3E 0A     MX
    BEQ L_A7D8F9                    ; $A7D8D8  F0 1F        MX
    LDA $00D9                       ; $A7D8DA  AD D9 00     MX
    CLC                             ; $A7D8DD  18           MX
    ADC #$0012                      ; $A7D8DE  69 12 00     MX
    STA $00D9                       ; $A7D8E1  8D D9 00     MX
    LDA $0A0C                       ; $A7D8E4  AD 0C 0A     MX
    CMP #$0060                      ; $A7D8E7  C9 60 00     MX
    BCC L_A7D8F6                    ; $A7D8EA  90 0A        MX
    LDA $00D9                       ; $A7D8EC  AD D9 00     MX
    CLC                             ; $A7D8EF  18           MX
    ADC #$0012                      ; $A7D8F0  69 12 00     MX
    STA $00D9                       ; $A7D8F3  8D D9 00     MX
L_A7D8F6:
    JMP L_A7D8FF                    ; $A7D8F6  4C FF D8     MX
L_A7D8F9:
    STZ $09B4                       ; $A7D8F9  9C B4 09     MX
    JMP L_A7DA75                    ; $A7D8FC  4C 75 DA     MX
L_A7D8FF:
    LDX $0B4A                       ; $A7D8FF  AE 4A 0B     MX
    CPX #$0002                      ; $A7D902  E0 02 00     MX
    BCC L_A7D913                    ; $A7D905  90 0C        MX
    DEX                             ; $A7D907  CA           MX
    DEX                             ; $A7D908  CA           MX
    LDA $A6DC03,X                   ; $A7D909  BF 03 DC A6  MX
    AND #$00FF                      ; $A7D90D  29 FF 00     MX
    JMP L_A7D9B4                    ; $A7D910  4C B4 D9     MX
L_A7D913:
    LDA ($D9)                       ; $A7D913  B2 D9        MX
    STA $00D9                       ; $A7D915  8D D9 00     MX
    LDA ($D9)                       ; $A7D918  B2 D9        MX
    STA $00D0                       ; $A7D91A  8D D0 00     MX
    PHP                             ; $A7D91D  08           MX
    REP #$30                        ; $A7D91E  C2 30        MX
    LDA $4212                       ; $A7D920  AD 12 42     MX
    SEP #$20                        ; $A7D923  E2 20        MX
    CLC                             ; $A7D925  18           mX
    ADC $1D57                       ; $A7D926  6D 57 1D     mX
    STA $1D57                       ; $A7D929  8D 57 1D     mX
    REP #$20                        ; $A7D92C  C2 20        mX
    LDA $4212                       ; $A7D92E  AD 12 42     MX
    TAX                             ; $A7D931  AA           MX
    SEP #$20                        ; $A7D932  E2 20        MX
    EOR $1D58                       ; $A7D934  4D 58 1D     mX
    STA $1D58                       ; $A7D937  8D 58 1D     mX
    TXA                             ; $A7D93A  8A           mX
    ADC $1D59                       ; $A7D93B  6D 59 1D     mX
    REP #$20                        ; $A7D93E  C2 20        mX
    LDA $1D56                       ; $A7D940  AD 56 1D     MX
    INC                             ; $A7D943  1A           MX
    ROR                             ; $A7D944  6A           MX
    LSR $1D58                       ; $A7D945  4E 58 1D     MX
    EOR #$2B41                      ; $A7D948  49 41 2B     MX
    SBC #$000F                      ; $A7D94B  E9 0F 00     MX
    STA $1D56                       ; $A7D94E  8D 56 1D     MX
    LDA $1D58                       ; $A7D951  AD 58 1D     MX
    EOR #$1D87                      ; $A7D954  49 87 1D     MX
    STA $1D58                       ; $A7D957  8D 58 1D     MX
    LDA $1D52                       ; $A7D95A  AD 52 1D     MX
    EOR $1D56                       ; $A7D95D  4D 56 1D     MX
    STA $0002                       ; $A7D960  8D 02 00     MX
    INC                             ; $A7D963  1A           MX
    STA $1D52                       ; $A7D964  8D 52 1D     MX
    LDA $1D54                       ; $A7D967  AD 54 1D     MX
    EOR $1D58                       ; $A7D96A  4D 58 1D     MX
    ADC #$0000                      ; $A7D96D  69 00 00     MX
    STA $1D52                       ; $A7D970  8D 52 1D     MX
    STA $0004                       ; $A7D973  8D 04 00     MX
    PLP                             ; $A7D976  28           MX
    INC $00D0                       ; $A7D977  EE D0 00     MX
    LDA $1D56                       ; $A7D97A  AD 56 1D     MX
    STA $00BA                       ; $A7D97D  8D BA 00     MX
    SEP #$20                        ; $A7D980  E2 20        MX
    LDA $00D0                       ; $A7D982  AD D0 00     mX
    STA $4202                       ; $A7D985  8D 02 42     mX
    LDA $00BA                       ; $A7D988  AD BA 00     mX
    STA $4203                       ; $A7D98B  8D 03 42     mX
    NOP                             ; $A7D98E  EA           mX
    NOP                             ; $A7D98F  EA           mX
    NOP                             ; $A7D990  EA           mX
    REP #$20                        ; $A7D991  C2 20        mX
    LDA $4216                       ; $A7D993  AD 16 42     MX
    STA $00BA                       ; $A7D996  8D BA 00     MX
    LDA $00BB                       ; $A7D999  AD BB 00     MX
    AND #$00FF                      ; $A7D99C  29 FF 00     MX
    REP #$10                        ; $A7D99F  C2 10        MX
    ASL                             ; $A7D9A1  0A           MX
    CLC                             ; $A7D9A2  18           MX
    ADC #$0002                      ; $A7D9A3  69 02 00     MX
    CLC                             ; $A7D9A6  18           MX
    ADC $00D9                       ; $A7D9A7  6D D9 00     MX
    STA $00D9                       ; $A7D9AA  8D D9 00     MX
    LDA ($D9)                       ; $A7D9AD  B2 D9        MX
L_A7D9AF:
    BPL L_A7D9B4                    ; $A7D9AF  10 03        MX
    JMP L_A7D8F9                    ; $A7D9B1  4C F9 D8     MX
L_A7D9B4:
    STA $0AA2                       ; $A7D9B4  8D A2 0A     MX
    STA $0A54                       ; $A7D9B7  8D 54 0A     MX
    TAX                             ; $A7D9BA  AA           MX
    LDA #$2400                      ; $A7D9BB  A9 00 24     MX
    STA $00D1                       ; $A7D9BE  8D D1 00     MX
    LDA $B818,X                     ; $A7D9C1  BD 18 B8     MX
    STA $00D0                       ; $A7D9C4  8D D0 00     MX
    LDA $09C0                       ; $A7D9C7  AD C0 09     MX
    ASL                             ; $A7D9CA  0A           MX
    TAY                             ; $A7D9CB  A8           MX
    LDA ($D0),Y                     ; $A7D9CC  B1 D0        MX
    STA $0A56                       ; $A7D9CE  8D 56 0A     MX
    STA $00D0                       ; $A7D9D1  8D D0 00     MX
    STZ $0A58                       ; $A7D9D4  9C 58 0A     MX
    STZ $09C6                       ; $A7D9D7  9C C6 09     MX
    LDA $0A54                       ; $A7D9DA  AD 54 0A     MX
    CMP #$0076                      ; $A7D9DD  C9 76 00     MX
    BEQ L_A7D9EC                    ; $A7D9E0  F0 0A        MX
    CMP #$0078                      ; $A7D9E2  C9 78 00     MX
    BEQ L_A7D9EC                    ; $A7D9E5  F0 05        MX
    CMP #$007A                      ; $A7D9E7  C9 7A 00     MX
    BNE L_A7DA10                    ; $A7D9EA  D0 24        MX
L_A7D9EC:
    LDA #$0001                      ; $A7D9EC  A9 01 00     MX
    STA $0C11                       ; $A7D9EF  8D 11 0C     MX
    LDA $0BBB                       ; $A7D9F2  AD BB 0B     MX
    STA $0C01                       ; $A7D9F5  8D 01 0C     MX
    STA $0C05                       ; $A7D9F8  8D 05 0C     MX
    STA $0C09                       ; $A7D9FB  8D 09 0C     MX
    STA $0C0D                       ; $A7D9FE  8D 0D 0C     MX
    LDA $0BBD                       ; $A7DA01  AD BD 0B     MX
    STA $0C03                       ; $A7DA04  8D 03 0C     MX
    STA $0C07                       ; $A7DA07  8D 07 0C     MX
    STA $0C0B                       ; $A7DA0A  8D 0B 0C     MX
    STA $0C0F                       ; $A7DA0D  8D 0F 0C     MX
L_A7DA10:
    LDA #$0002                      ; $A7DA10  A9 02 00     MX
    STA $0C3B                       ; $A7DA13  8D 3B 0C     MX
    LDA $09B0                       ; $A7DA16  AD B0 09     MX
    STA $00A4                       ; $A7DA19  8D A4 00     MX
    LDA #$003A                      ; $A7DA1C  A9 3A 00     MX
    STA $09AC                       ; $A7DA1F  8D AC 09     MX
    LDA #$FFFF                      ; $A7DA22  A9 FF FF     MX
    STA $09B2                       ; $A7DA25  8D B2 09     MX
    STZ $09B4                       ; $A7DA28  9C B4 09     MX
    STZ $09FA                       ; $A7DA2B  9C FA 09     MX
    STZ $09B0                       ; $A7DA2E  9C B0 09     MX
    LDA #$FFF8                      ; $A7DA31  A9 F8 FF     MX
    STA $09B6                       ; $A7DA34  8D B6 09     MX
    LDA $00A4                       ; $A7DA37  AD A4 00     MX
    STA $09B0                       ; $A7DA3A  8D B0 09     MX
    STZ $09E6                       ; $A7DA3D  9C E6 09     MX
    STZ $09E4                       ; $A7DA40  9C E4 09     MX
    LDY $0A58                       ; $A7DA43  AC 58 0A     MX
    LDA [$D0],Y                     ; $A7DA46  B7 D0        MX
    STA $09B4                       ; $A7DA48  8D B4 09     MX
    INY                             ; $A7DA4B  C8           MX
    INY                             ; $A7DA4C  C8           MX
    LDA [$D0],Y                     ; $A7DA4D  B7 D0        MX
    STA $09B6                       ; $A7DA4F  8D B6 09     MX
    STZ $09B2                       ; $A7DA52  9C B2 09     MX
    INY                             ; $A7DA55  C8           MX
    INY                             ; $A7DA56  C8           MX
    STY $0A58                       ; $A7DA57  8C 58 0A     MX
    LDA $09B4                       ; $A7DA5A  AD B4 09     MX
    STA $09AE                       ; $A7DA5D  8D AE 09     MX
    LDX $0A0E                       ; $A7DA60  AE 0E 0A     MX
    LDA $A7E377,X                   ; $A7DA63  BF 77 E3 A7  MX
    AND #$0007                      ; $A7DA67  29 07 00     MX
    TAX                             ; $A7DA6A  AA           MX
    LDA $A7DB97,X                   ; $A7DA6B  BF 97 DB A7  MX
    AND #$0007                      ; $A7DA6F  29 07 00     MX
    STA $09C2                       ; $A7DA72  8D C2 09     MX
L_A7DA75:
    LDA $09B4                       ; $A7DA75  AD B4 09     MX
    BNE L_A7DA7E                    ; $A7DA78  D0 04        MX
    PLB                             ; $A7DA7A  AB           MX
    JMP L_A7DB00                    ; $A7DA7B  4C 00 DB     MX
L_A7DA7E:
    LDA $09C2                       ; $A7DA7E  AD C2 09     MX
    STA $09C0                       ; $A7DA81  8D C0 09     MX
    LDA #$00C8                      ; $A7DA84  A9 C8 00     MX
    STA $09AE                       ; $A7DA87  8D AE 09     MX
    PLB                             ; $A7DA8A  AB           MX
    JMP L_A7DB82                    ; $A7DA8B  4C 82 DB     MX
    db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF ; $A7DA8E
    db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$0C,$00,$0E,$00,$10,$00,$12,$00 ; $A7DA9E
    db $15,$00,$16,$00,$17,$00,$18,$00,$19,$00,$1C,$00,$1E,$00,$25,$00 ; $A7DAAE
L_A7DABE:
    LDA $0A0C                       ; $A7DABE  AD 0C 0A     MX
    CMP #$0025                      ; $A7DAC1  C9 25 00     MX
    BCS L_A7DAC9                    ; $A7DAC4  B0 03        MX
    JMP L_A7D70E                    ; $A7DAC6  4C 0E D7     MX
L_A7DAC9:
    LDA $00C0                       ; $A7DAC9  AD C0 00     MX
    BNE L_A7DB00                    ; $A7DACC  D0 32        MX
    LDA $0A0C                       ; $A7DACE  AD 0C 0A     MX
    CMP #$0080                      ; $A7DAD1  C9 80 00     MX
    BCS L_A7DB00                    ; $A7DAD4  B0 2A        MX
    CMP #$0023                      ; $A7DAD6  C9 23 00     MX
    BCS L_A7DADE                    ; $A7DAD9  B0 03        MX
    JMP L_A7DB00                    ; $A7DADB  4C 00 DB     MX
L_A7DADE:
    SEP #$20                        ; $A7DADE  E2 20        MX
    PHB                             ; $A7DAE0  8B           mX
    LDA #$24                        ; $A7DAE1  A9 24        mX
    PHA                             ; $A7DAE3  48           mX
    PLB                             ; $A7DAE4  AB           mX
    REP #$20                        ; $A7DAE5  C2 20        mX
    LDA #$0008                      ; $A7DAE7  A9 08 00     MX
    STA $09B0                       ; $A7DAEA  8D B0 09     MX
    LDX $0A0E                       ; $A7DAED  AE 0E 0A     MX
    LDA $A7E377,X                   ; $A7DAF0  BF 77 E3 A7  MX
    AND #$0007                      ; $A7DAF4  29 07 00     MX
    STA $09C0                       ; $A7DAF7  8D C0 09     MX
    LDA #$0082                      ; $A7DAFA  A9 82 00     MX
    JMP L_A7D9AF                    ; $A7DAFD  4C AF D9     MX
L_A7DB00:
    LDA $09C0                       ; $A7DB00  AD C0 09     MX
    STA $00A4                       ; $A7DB03  8D A4 00     MX
    LDX $0A0E                       ; $A7DB06  AE 0E 0A     MX
    LDA $A7E377,X                   ; $A7DB09  BF 77 E3 A7  MX
    AND #$0007                      ; $A7DB0D  29 07 00     MX
    STA $09C0                       ; $A7DB10  8D C0 09     MX
    LDA $0A0C                       ; $A7DB13  AD 0C 0A     MX
    CMP #$0140                      ; $A7DB16  C9 40 01     MX
    BCC L_A7DB61                    ; $A7DB19  90 46        MX
    LDA $0CCB                       ; $A7DB1B  AD CB 0C     MX
    CMP #$0006                      ; $A7DB1E  C9 06 00     MX
    BCS L_A7DB38                    ; $A7DB21  B0 15        MX
    LDA #$0028                      ; $A7DB23  A9 28 00     MX
    STA $077A                       ; $A7DB26  8D 7A 07     MX
    STA $0862                       ; $A7DB29  8D 62 08     MX
    STA $094A                       ; $A7DB2C  8D 4A 09     MX
    STA $0A32                       ; $A7DB2F  8D 32 0A     MX
    LDA #$001E                      ; $A7DB32  A9 1E 00     MX
    JMP L_A7DB46                    ; $A7DB35  4C 46 DB     MX
L_A7DB38:
    LDA $00C0                       ; $A7DB38  AD C0 00     MX
    BNE L_A7DB43                    ; $A7DB3B  D0 06        MX
    LDA #$000E                      ; $A7DB3D  A9 0E 00     MX
    JMP L_A7DB46                    ; $A7DB40  4C 46 DB     MX
L_A7DB43:
    LDA #$001C                      ; $A7DB43  A9 1C 00     MX
L_A7DB46:
    STA $09AC                       ; $A7DB46  8D AC 09     MX
    LDA #$FFFF                      ; $A7DB49  A9 FF FF     MX
    STA $09B2                       ; $A7DB4C  8D B2 09     MX
    STZ $09B4                       ; $A7DB4F  9C B4 09     MX
    STZ $09FA                       ; $A7DB52  9C FA 09     MX
    STZ $09B0                       ; $A7DB55  9C B0 09     MX
    LDA #$FFF8                      ; $A7DB58  A9 F8 FF     MX
    STA $09B6                       ; $A7DB5B  8D B6 09     MX
    JMP L_A7DB7C                    ; $A7DB5E  4C 7C DB     MX
L_A7DB61:
    LDA #$0008                      ; $A7DB61  A9 08 00     MX
L_A7DB64:
    STA $09AC                       ; $A7DB64  8D AC 09     MX
    LDA #$FFFF                      ; $A7DB67  A9 FF FF     MX
    STA $09B2                       ; $A7DB6A  8D B2 09     MX
    STZ $09B4                       ; $A7DB6D  9C B4 09     MX
    STZ $09FA                       ; $A7DB70  9C FA 09     MX
    STZ $09B0                       ; $A7DB73  9C B0 09     MX
    LDA #$FFF8                      ; $A7DB76  A9 F8 FF     MX
    STA $09B6                       ; $A7DB79  8D B6 09     MX
L_A7DB7C:
    LDA #$0001                      ; $A7DB7C  A9 01 00     MX
    STA $09B0                       ; $A7DB7F  8D B0 09     MX
L_A7DB82:
    STZ $09E2                       ; $A7DB82  9C E2 09     MX
    STZ $09E0                       ; $A7DB85  9C E0 09     MX
    STZ $09EA                       ; $A7DB88  9C EA 09     MX
    STZ $09E8                       ; $A7DB8B  9C E8 09     MX
    SEP #$10                        ; $A7DB8E  E2 10        MX
    LDA $09AC                       ; $A7DB90  AD AC 09     Mx
    STA $0B52                       ; $A7DB93  8D 52 0B     Mx
    RTS                             ; $A7DB96  60           Mx
    db $07,$07,$06,$05,$05,$05,$06,$07                                 ; $A7DB97
L_A7DB9F:
    PHB                             ; $A7DB9F  8B           Mx
    PHK                             ; $A7DBA0  4B           Mx
    PLB                             ; $A7DBA1  AB           Mx
    STZ $0794                       ; $A7DBA2  9C 94 07     Mx
    STZ $087C                       ; $A7DBA5  9C 7C 08     Mx
    STZ $0964                       ; $A7DBA8  9C 64 09     Mx
    STZ $0A4C                       ; $A7DBAB  9C 4C 0A     Mx
    LDX #$01                        ; $A7DBAE  A2 01        Mx
    LDA $0C19                       ; $A7DBB0  AD 19 0C     Mx
    AND #$00FF                      ; $A7DBB3  29 FF 00     Mx
    BNE L_A7DBC2                    ; $A7DBB6  D0 0A        Mx
    LDX #$80                        ; $A7DBB8  A2 80        Mx
    LDA $0C1F                       ; $A7DBBA  AD 1F 0C     Mx
    AND #$00FF                      ; $A7DBBD  29 FF 00     Mx
    BEQ L_A7DC1E                    ; $A7DBC0  F0 5C        Mx
L_A7DBC2:
    CMP #$0003                      ; $A7DBC2  C9 03 00     Mx
    BCS L_A7DBF4                    ; $A7DBC5  B0 2D        Mx
    JMP L_A7DBCA                    ; $A7DBC7  4C CA DB     Mx
L_A7DBCA:
    CMP #$0001                      ; $A7DBCA  C9 01 00     Mx
    BEQ L_A7DBDB                    ; $A7DBCD  F0 0C        Mx
    CPX #$01                        ; $A7DBCF  E0 01        Mx
    BNE L_A7DBE5                    ; $A7DBD1  D0 12        Mx
    LDA #$0001                      ; $A7DBD3  A9 01 00     Mx
    STA $087C                       ; $A7DBD6  8D 7C 08     Mx
    BNE L_A7DBE5                    ; $A7DBD9  D0 0A        Mx
L_A7DBDB:
    CPX #$01                        ; $A7DBDB  E0 01        Mx
    BNE L_A7DBE5                    ; $A7DBDD  D0 06        Mx
    LDA #$0001                      ; $A7DBDF  A9 01 00     Mx
    STA $0794                       ; $A7DBE2  8D 94 07     Mx
L_A7DBE5:
    STX $077E                       ; $A7DBE5  8E 7E 07     Mx
    STX $0866                       ; $A7DBE8  8E 66 08     Mx
    STZ $094E                       ; $A7DBEB  9C 4E 09     Mx
    STZ $0A36                       ; $A7DBEE  9C 36 0A     Mx
    JMP L_A7DC2A                    ; $A7DBF1  4C 2A DC     Mx
L_A7DBF4:
    CMP #$0003                      ; $A7DBF4  C9 03 00     Mx
    BEQ L_A7DC05                    ; $A7DBF7  F0 0C        Mx
    CPX #$01                        ; $A7DBF9  E0 01        Mx
    BNE L_A7DC0F                    ; $A7DBFB  D0 12        Mx
    LDA #$0001                      ; $A7DBFD  A9 01 00     Mx
    STA $0A4C                       ; $A7DC00  8D 4C 0A     Mx
    BNE L_A7DC0F                    ; $A7DC03  D0 0A        Mx
L_A7DC05:
    CPX #$01                        ; $A7DC05  E0 01        Mx
    BNE L_A7DC0F                    ; $A7DC07  D0 06        Mx
    LDA #$0001                      ; $A7DC09  A9 01 00     Mx
    STA $0964                       ; $A7DC0C  8D 64 09     Mx
L_A7DC0F:
    STX $094E                       ; $A7DC0F  8E 4E 09     Mx
    STX $0A36                       ; $A7DC12  8E 36 0A     Mx
    STZ $077E                       ; $A7DC15  9C 7E 07     Mx
    STZ $0866                       ; $A7DC18  9C 66 08     Mx
    JMP L_A7DC2A                    ; $A7DC1B  4C 2A DC     Mx
L_A7DC1E:
    STZ $077E                       ; $A7DC1E  9C 7E 07     Mx
    STZ $0866                       ; $A7DC21  9C 66 08     Mx
    STZ $094E                       ; $A7DC24  9C 4E 09     Mx
    STZ $0A36                       ; $A7DC27  9C 36 0A     Mx
L_A7DC2A:
    LDA $0AA0                       ; $A7DC2A  AD A0 0A     Mx
    BEQ L_A7DC3C                    ; $A7DC2D  F0 0D        Mx
    LDA $0A9E                       ; $A7DC2F  AD 9E 0A     Mx
    BEQ L_A7DC39                    ; $A7DC32  F0 05        Mx
    DEC $0A9E                       ; $A7DC34  CE 9E 0A     Mx
    BNE L_A7DC3C                    ; $A7DC37  D0 03        Mx
L_A7DC39:
    STZ $0AA0                       ; $A7DC39  9C A0 0A     Mx
L_A7DC3C:
    STZ $15EB                       ; $A7DC3C  9C EB 15     Mx
    LDA $06F8                       ; $A7DC3F  AD F8 06     Mx
    ORA $07E0                       ; $A7DC42  0D E0 07     Mx
    ORA $08C8                       ; $A7DC45  0D C8 08     Mx
    ORA $09B0                       ; $A7DC48  0D B0 09     Mx
    BIT #$0004                      ; $A7DC4B  89 04 00     Mx
    BNE L_A7DC53                    ; $A7DC4E  D0 03        Mx
    STZ $15F5                       ; $A7DC50  9C F5 15     Mx
L_A7DC53:
    JSL L_8181C8                    ; $A7DC53  22 C8 81 81  Mx
    JSL L_828000                    ; $A7DC57  22 00 80 82  Mx
    JSL L_A68000                    ; $A7DC5B  22 00 80 A6  Mx
    JSL L_A78000                    ; $A7DC5F  22 00 80 A7  Mx
    PLB                             ; $A7DC63  AB           Mx
    RTL                             ; $A7DC64  6B           Mx
L_A7DC65:
    LDA $1CEB                       ; $A7DC65  AD EB 1C     Mx
    BNE L_A7DC76                    ; $A7DC68  D0 0C        Mx
    STZ $07CA                       ; $A7DC6A  9C CA 07     Mx
    STZ $08B2                       ; $A7DC6D  9C B2 08     Mx
    STZ $099A                       ; $A7DC70  9C 9A 09     Mx
    STZ $0A82                       ; $A7DC73  9C 82 0A     Mx
L_A7DC76:
    LDA $1CE7                       ; $A7DC76  AD E7 1C     Mx
    ASL                             ; $A7DC79  0A           Mx
    PHX                             ; $A7DC7A  DA           Mx
    TAX                             ; $A7DC7B  AA           Mx
    LDA $27DCC1,X                   ; $A7DC7C  BF C1 DC 27  Mx
    STA $00A4                       ; $A7DC80  8D A4 00     Mx
    LDX $06F1                       ; $A7DC83  AE F1 06     Mx
    BNE L_A7DC92                    ; $A7DC86  D0 0A        Mx
    LDA $07CA                       ; $A7DC88  AD CA 07     Mx
    CLC                             ; $A7DC8B  18           Mx
    ADC $00A4                       ; $A7DC8C  6D A4 00     Mx
    STA $07CA                       ; $A7DC8F  8D CA 07     Mx
L_A7DC92:
    LDX $07D9                       ; $A7DC92  AE D9 07     Mx
    BNE L_A7DCA1                    ; $A7DC95  D0 0A        Mx
    LDA $08B2                       ; $A7DC97  AD B2 08     Mx
    CLC                             ; $A7DC9A  18           Mx
    ADC $00A4                       ; $A7DC9B  6D A4 00     Mx
    STA $08B2                       ; $A7DC9E  8D B2 08     Mx
L_A7DCA1:
    LDX $08C1                       ; $A7DCA1  AE C1 08     Mx
    BNE L_A7DCB0                    ; $A7DCA4  D0 0A        Mx
    LDA $099A                       ; $A7DCA6  AD 9A 09     Mx
    CLC                             ; $A7DCA9  18           Mx
    ADC $00A4                       ; $A7DCAA  6D A4 00     Mx
    STA $099A                       ; $A7DCAD  8D 9A 09     Mx
L_A7DCB0:
    LDX $09A9                       ; $A7DCB0  AE A9 09     Mx
    BNE L_A7DCBF                    ; $A7DCB3  D0 0A        Mx
    LDA $0A82                       ; $A7DCB5  AD 82 0A     Mx
    CLC                             ; $A7DCB8  18           Mx
    ADC $00A4                       ; $A7DCB9  6D A4 00     Mx
    STA $0A82                       ; $A7DCBC  8D 82 0A     Mx
L_A7DCBF:
    PLX                             ; $A7DCBF  FA           Mx
    RTL                             ; $A7DCC0  6B           Mx
    db $EC,$FF,$F6,$FF,$00,$00,$0A,$00,$14,$00                         ; $A7DCC1
L_A7DCCB:
    LDA $00A6                       ; $A7DCCB  AD A6 00     Mx
    ORA $00AC                       ; $A7DCCE  0D AC 00     Mx
    BEQ L_A7DCD6                    ; $A7DCD1  F0 03        Mx
    STZ $0C39                       ; $A7DCD3  9C 39 0C     Mx
L_A7DCD6:
    LDA $0C19                       ; $A7DCD6  AD 19 0C     Mx
    BEQ L_A7DD41                    ; $A7DCD9  F0 66        Mx
    LDA $0BD9                       ; $A7DCDB  AD D9 0B     Mx
    CLC                             ; $A7DCDE  18           Mx
    ADC $0BEF                       ; $A7DCDF  6D EF 0B     Mx
    LDY #$54                        ; $A7DCE2  A0 54        Mx
    SEC                             ; $A7DCE4  38           Mx
    SBC ($CC),Y                     ; $A7DCE5  F1 CC        Mx
    BPL L_A7DCF3                    ; $A7DCE7  10 0A        Mx
    CMP #$FEF4                      ; $A7DCE9  C9 F4 FE     Mx
    BCS L_A7DCFB                    ; $A7DCEC  B0 0D        Mx
    LDA #$FEF4                      ; $A7DCEE  A9 F4 FE     Mx
    BRA L_A7DCFB                    ; $A7DCF1  80 08        Mx
L_A7DCF3:
    CMP #$010C                      ; $A7DCF3  C9 0C 01     Mx
    BCC L_A7DCFB                    ; $A7DCF6  90 03        Mx
    LDA #$010C                      ; $A7DCF8  A9 0C 01     Mx
L_A7DCFB:
    STA $0BD9                       ; $A7DCFB  8D D9 0B     Mx
    LDA $0BDD                       ; $A7DCFE  AD DD 0B     Mx
    CLC                             ; $A7DD01  18           Mx
    ADC $0BF1                       ; $A7DD02  6D F1 0B     Mx
    STA $0BDD                       ; $A7DD05  8D DD 0B     Mx
    LDA $0BF3                       ; $A7DD08  AD F3 0B     Mx
    CMP #$0310                      ; $A7DD0B  C9 10 03     Mx
    BCC L_A7DD1A                    ; $A7DD0E  90 0A        Mx
    CMP #$03F0                      ; $A7DD10  C9 F0 03     Mx
    BCC L_A7DD1D                    ; $A7DD13  90 08        Mx
    LDA #$03F0                      ; $A7DD15  A9 F0 03     Mx
    BRA L_A7DD1D                    ; $A7DD18  80 03        Mx
L_A7DD1A:
    LDA #$0310                      ; $A7DD1A  A9 10 03     Mx
L_A7DD1D:
    STA $0BE1                       ; $A7DD1D  8D E1 0B     Mx
    STA $0BF3                       ; $A7DD20  8D F3 0B     Mx
    STZ $0C19                       ; $A7DD23  9C 19 0C     Mx
    STZ $00CC                       ; $A7DD26  9C CC 00     Mx
    STZ $0C2B                       ; $A7DD29  9C 2B 0C     Mx
    STZ $0BEF                       ; $A7DD2C  9C EF 0B     Mx
    STZ $0BF1                       ; $A7DD2F  9C F1 0B     Mx
    STZ $0C11                       ; $A7DD32  9C 11 0C     Mx
    LDA #$0002                      ; $A7DD35  A9 02 00     Mx
    STA $0BBF                       ; $A7DD38  8D BF 0B     Mx
    LDA #$0002                      ; $A7DD3B  A9 02 00     Mx
    STA $0BC1                       ; $A7DD3E  8D C1 0B     Mx
L_A7DD41:
    LDA $00AA                       ; $A7DD41  AD AA 00     Mx
    SEC                             ; $A7DD44  38           Mx
    SBC $0BD9                       ; $A7DD45  ED D9 0B     Mx
    STA $00D9                       ; $A7DD48  8D D9 00     Mx
    LDA $00AE                       ; $A7DD4B  AD AE 00     Mx
    SEC                             ; $A7DD4E  38           Mx
    SBC $0BE1                       ; $A7DD4F  ED E1 0B     Mx
    STA $00DF                       ; $A7DD52  8D DF 00     Mx
    LDA $00D9                       ; $A7DD55  AD D9 00     Mx
    STA $00DC                       ; $A7DD58  8D DC 00     Mx
    LDA $00DF                       ; $A7DD5B  AD DF 00     Mx
    STA $00B7                       ; $A7DD5E  8D B7 00     Mx
    LDA $00DC                       ; $A7DD61  AD DC 00     Mx
    BPL L_A7DD70                    ; $A7DD64  10 0A        Mx
    EOR #$FFFF                      ; $A7DD66  49 FF FF     Mx
    CLC                             ; $A7DD69  18           Mx
    ADC #$0001                      ; $A7DD6A  69 01 00     Mx
    STA $00DC                       ; $A7DD6D  8D DC 00     Mx
L_A7DD70:
    LDA $00B7                       ; $A7DD70  AD B7 00     Mx
    BPL L_A7DD7F                    ; $A7DD73  10 0A        Mx
    EOR #$FFFF                      ; $A7DD75  49 FF FF     Mx
    CLC                             ; $A7DD78  18           Mx
    ADC #$0001                      ; $A7DD79  69 01 00     Mx
    STA $00B7                       ; $A7DD7C  8D B7 00     Mx
L_A7DD7F:
    LDA $00DC                       ; $A7DD7F  AD DC 00     Mx
    CMP $00B7                       ; $A7DD82  CD B7 00     Mx
    BCS L_A7DD99                    ; $A7DD85  B0 12        Mx
    LDA $00B7                       ; $A7DD87  AD B7 00     Mx
    STA $00BA                       ; $A7DD8A  8D BA 00     Mx
    LDA $00DC                       ; $A7DD8D  AD DC 00     Mx
    STA $00B7                       ; $A7DD90  8D B7 00     Mx
    LDA $00BA                       ; $A7DD93  AD BA 00     Mx
    STA $00DC                       ; $A7DD96  8D DC 00     Mx
L_A7DD99:
    LSR $00B7                       ; $A7DD99  4E B7 00     Mx
    LDA $00B7                       ; $A7DD9C  AD B7 00     Mx
    CLC                             ; $A7DD9F  18           Mx
    ADC $00DC                       ; $A7DDA0  6D DC 00     Mx
    LSR $00B7                       ; $A7DDA3  4E B7 00     Mx
    LSR $00B7                       ; $A7DDA6  4E B7 00     Mx
    SEC                             ; $A7DDA9  38           Mx
    SBC $00B7                       ; $A7DDAA  ED B7 00     Mx
    STA $00DC                       ; $A7DDAD  8D DC 00     Mx
    REP #$10                        ; $A7DDB0  C2 10        Mx
    LDY #$0019                      ; $A7DDB2  A0 19 00     MX
    LDX #$0073                      ; $A7DDB5  A2 73 00     MX
    CMP #$00E7                      ; $A7DDB8  C9 E7 00     MX
    BCS L_A7DDCB                    ; $A7DDBB  B0 0E        MX
    LDY #$0019                      ; $A7DDBD  A0 19 00     MX
    LDX #$0091                      ; $A7DDC0  A2 91 00     MX
    CMP #$0046                      ; $A7DDC3  C9 46 00     MX
    BCS L_A7DDCB                    ; $A7DDC6  B0 03        MX
    STZ $0C39                       ; $A7DDC8  9C 39 0C     MX
L_A7DDCB:
    STY $0BB3                       ; $A7DDCB  8C B3 0B     MX
    STX $00D3                       ; $A7DDCE  8E D3 00     MX
    SEP #$10                        ; $A7DDD1  E2 10        MX
    LDA $00D3                       ; $A7DDD3  AD D3 00     Mx
    CLC                             ; $A7DDD6  18           Mx
    ADC #$000A                      ; $A7DDD7  69 0A 00     Mx
    STA $00D3                       ; $A7DDDA  8D D3 00     Mx
    LDA $00A4                       ; $A7DDDD  AD A4 00     Mx
    BEQ L_A7DDEC                    ; $A7DDE0  F0 0A        Mx
    LDA $00D3                       ; $A7DDE2  AD D3 00     Mx
    SEC                             ; $A7DDE5  38           Mx
    SBC #$0020                      ; $A7DDE6  E9 20 00     Mx
    STA $00D3                       ; $A7DDE9  8D D3 00     Mx
L_A7DDEC:
    LSR $00DC                       ; $A7DDEC  4E DC 00     Mx
    LSR $00DC                       ; $A7DDEF  4E DC 00     Mx
    LDX $00D3                       ; $A7DDF2  AE D3 00     Mx
    STX $4202                       ; $A7DDF5  8E 02 42     Mx
    LDX $00DC                       ; $A7DDF8  AE DC 00     Mx
    STX $4203                       ; $A7DDFB  8E 03 42     Mx
    NOP                             ; $A7DDFE  EA           Mx
    NOP                             ; $A7DDFF  EA           Mx
    NOP                             ; $A7DE00  EA           Mx
    NOP                             ; $A7DE01  EA           Mx
    LDA $4216                       ; $A7DE02  AD 16 42     Mx
    STA $00F2                       ; $A7DE05  8D F2 00     Mx
    STZ $00F4                       ; $A7DE08  9C F4 00     Mx
    LDA $00F3                       ; $A7DE0B  AD F3 00     Mx
    STA $00F2                       ; $A7DE0E  8D F2 00     Mx
    LDA $00F2                       ; $A7DE11  AD F2 00     Mx
    CMP #$0100                      ; $A7DE14  C9 00 01     Mx
    BCC L_A7DE1C                    ; $A7DE17  90 03        Mx
    LDA #$00FF                      ; $A7DE19  A9 FF 00     Mx
L_A7DE1C:
    STA $00DC                       ; $A7DE1C  8D DC 00     Mx
    SEC                             ; $A7DE1F  38           Mx
    SBC #$0010                      ; $A7DE20  E9 10 00     Mx
    STA $00D3                       ; $A7DE23  8D D3 00     Mx
    BPL L_A7DE2E                    ; $A7DE26  10 06        Mx
    LDA #$0010                      ; $A7DE28  A9 10 00     Mx
    STA $00DC                       ; $A7DE2B  8D DC 00     Mx
L_A7DE2E:
    LDA $0B88                       ; $A7DE2E  AD 88 0B     Mx
    BNE L_A7DE36                    ; $A7DE31  D0 03        Mx
    JMP L_A7DF56                    ; $A7DE33  4C 56 DF     Mx
L_A7DE36:
    LDA $00A8                       ; $A7DE36  AD A8 00     Mx
    STA $00B2                       ; $A7DE39  8D B2 00     Mx
    BPL L_A7DE45                    ; $A7DE3C  10 07        Mx
    EOR #$FFFF                      ; $A7DE3E  49 FF FF     Mx
    CLC                             ; $A7DE41  18           Mx
    ADC #$0001                      ; $A7DE42  69 01 00     Mx
L_A7DE45:
    STA $00D9                       ; $A7DE45  8D D9 00     Mx
    LDX $00DC                       ; $A7DE48  AE DC 00     Mx
    STX $4202                       ; $A7DE4B  8E 02 42     Mx
    LDX $00D9                       ; $A7DE4E  AE D9 00     Mx
    STX $4203                       ; $A7DE51  8E 03 42     Mx
    NOP                             ; $A7DE54  EA           Mx
    NOP                             ; $A7DE55  EA           Mx
    NOP                             ; $A7DE56  EA           Mx
    NOP                             ; $A7DE57  EA           Mx
    LDA $4216                       ; $A7DE58  AD 16 42     Mx
    STA $00A8                       ; $A7DE5B  8D A8 00     Mx
    LDX $00DC                       ; $A7DE5E  AE DC 00     Mx
    STX $4202                       ; $A7DE61  8E 02 42     Mx
    LDX $00DA                       ; $A7DE64  AE DA 00     Mx
    STX $4203                       ; $A7DE67  8E 03 42     Mx
    NOP                             ; $A7DE6A  EA           Mx
    NOP                             ; $A7DE6B  EA           Mx
    STZ $00F4                       ; $A7DE6C  9C F4 00     Mx
    STZ $00F2                       ; $A7DE6F  9C F2 00     Mx
    LDA $4216                       ; $A7DE72  AD 16 42     Mx
    STA $00F3                       ; $A7DE75  8D F3 00     Mx
    LDA $00F2                       ; $A7DE78  AD F2 00     Mx
    CLC                             ; $A7DE7B  18           Mx
    ADC $00A8                       ; $A7DE7C  6D A8 00     Mx
    STA $00F2                       ; $A7DE7F  8D F2 00     Mx
    LDA $00F4                       ; $A7DE82  AD F4 00     Mx
    ADC #$0000                      ; $A7DE85  69 00 00     Mx
    STA $00F4                       ; $A7DE88  8D F4 00     Mx
    LDA $00F2                       ; $A7DE8B  AD F2 00     Mx
    LDX $00F4                       ; $A7DE8E  AE F4 00     Mx
    STZ $00F2                       ; $A7DE91  9C F2 00     Mx
    STA $00F3                       ; $A7DE94  8D F3 00     Mx
    STX $00F5                       ; $A7DE97  8E F5 00     Mx
    LDA $00B2                       ; $A7DE9A  AD B2 00     Mx
    BPL L_A7DEB8                    ; $A7DE9D  10 19        Mx
    LDA $00F2                       ; $A7DE9F  AD F2 00     Mx
    EOR #$FFFF                      ; $A7DEA2  49 FF FF     Mx
    CLC                             ; $A7DEA5  18           Mx
    ADC #$0001                      ; $A7DEA6  69 01 00     Mx
    STA $00F2                       ; $A7DEA9  8D F2 00     Mx
    LDA $00F4                       ; $A7DEAC  AD F4 00     Mx
    EOR #$FFFF                      ; $A7DEAF  49 FF FF     Mx
    ADC #$0000                      ; $A7DEB2  69 00 00     Mx
    STA $00F4                       ; $A7DEB5  8D F4 00     Mx
L_A7DEB8:
    LDA $00F4                       ; $A7DEB8  AD F4 00     Mx
    CLC                             ; $A7DEBB  18           Mx
    ADC $00AA                       ; $A7DEBC  6D AA 00     Mx
    SEC                             ; $A7DEBF  38           Mx
    SBC $0BD9                       ; $A7DEC0  ED D9 0B     Mx
    STA $00D9                       ; $A7DEC3  8D D9 00     Mx
    LDA $00B0                       ; $A7DEC6  AD B0 00     Mx
    STA $00B2                       ; $A7DEC9  8D B2 00     Mx
    BPL L_A7DED5                    ; $A7DECC  10 07        Mx
    EOR #$FFFF                      ; $A7DECE  49 FF FF     Mx
    CLC                             ; $A7DED1  18           Mx
    ADC #$0001                      ; $A7DED2  69 01 00     Mx
L_A7DED5:
    STA $00DF                       ; $A7DED5  8D DF 00     Mx
    LDX $00DC                       ; $A7DED8  AE DC 00     Mx
    STX $4202                       ; $A7DEDB  8E 02 42     Mx
    LDX $00DF                       ; $A7DEDE  AE DF 00     Mx
    STX $4203                       ; $A7DEE1  8E 03 42     Mx
    NOP                             ; $A7DEE4  EA           Mx
    NOP                             ; $A7DEE5  EA           Mx
    NOP                             ; $A7DEE6  EA           Mx
    NOP                             ; $A7DEE7  EA           Mx
    LDA $4216                       ; $A7DEE8  AD 16 42     Mx
    STA $00A8                       ; $A7DEEB  8D A8 00     Mx
    LDX $00DC                       ; $A7DEEE  AE DC 00     Mx
    STX $4202                       ; $A7DEF1  8E 02 42     Mx
    LDX $00E0                       ; $A7DEF4  AE E0 00     Mx
    STX $4203                       ; $A7DEF7  8E 03 42     Mx
    NOP                             ; $A7DEFA  EA           Mx
    NOP                             ; $A7DEFB  EA           Mx
    STZ $00F4                       ; $A7DEFC  9C F4 00     Mx
    STZ $00F2                       ; $A7DEFF  9C F2 00     Mx
    LDA $4216                       ; $A7DF02  AD 16 42     Mx
    STA $00F3                       ; $A7DF05  8D F3 00     Mx
    LDA $00F2                       ; $A7DF08  AD F2 00     Mx
    CLC                             ; $A7DF0B  18           Mx
    ADC $00A8                       ; $A7DF0C  6D A8 00     Mx
    STA $00F2                       ; $A7DF0F  8D F2 00     Mx
    LDA $00F4                       ; $A7DF12  AD F4 00     Mx
    ADC #$0000                      ; $A7DF15  69 00 00     Mx
    STA $00F4                       ; $A7DF18  8D F4 00     Mx
    LDA $00F2                       ; $A7DF1B  AD F2 00     Mx
    LDX $00F4                       ; $A7DF1E  AE F4 00     Mx
    STZ $00F2                       ; $A7DF21  9C F2 00     Mx
    STA $00F3                       ; $A7DF24  8D F3 00     Mx
    STX $00F5                       ; $A7DF27  8E F5 00     Mx
    LDA $00B2                       ; $A7DF2A  AD B2 00     Mx
    BPL L_A7DF48                    ; $A7DF2D  10 19        Mx
    LDA $00F2                       ; $A7DF2F  AD F2 00     Mx
    EOR #$FFFF                      ; $A7DF32  49 FF FF     Mx
    CLC                             ; $A7DF35  18           Mx
    ADC #$0001                      ; $A7DF36  69 01 00     Mx
    STA $00F2                       ; $A7DF39  8D F2 00     Mx
    LDA $00F4                       ; $A7DF3C  AD F4 00     Mx
    EOR #$FFFF                      ; $A7DF3F  49 FF FF     Mx
    ADC #$0000                      ; $A7DF42  69 00 00     Mx
    STA $00F4                       ; $A7DF45  8D F4 00     Mx
L_A7DF48:
    LDA $00F4                       ; $A7DF48  AD F4 00     Mx
    CLC                             ; $A7DF4B  18           Mx
    ADC $00AE                       ; $A7DF4C  6D AE 00     Mx
    SEC                             ; $A7DF4F  38           Mx
    SBC $0BE1                       ; $A7DF50  ED E1 0B     Mx
    STA $00DF                       ; $A7DF53  8D DF 00     Mx
L_A7DF56:
    LDA $00D9                       ; $A7DF56  AD D9 00     Mx
    STA $00B0                       ; $A7DF59  8D B0 00     Mx
    BPL L_A7DF68                    ; $A7DF5C  10 0A        Mx
    EOR #$FFFF                      ; $A7DF5E  49 FF FF     Mx
    CLC                             ; $A7DF61  18           Mx
    ADC #$0001                      ; $A7DF62  69 01 00     Mx
    STA $00D9                       ; $A7DF65  8D D9 00     Mx
L_A7DF68:
    LDX $00DC                       ; $A7DF68  AE DC 00     Mx
    STX $00EE                       ; $A7DF6B  8E EE 00     Mx
    LDA #$0000                      ; $A7DF6E  A9 00 00     Mx
    STA $00EA                       ; $A7DF71  8D EA 00     Mx
    LDA $00D9                       ; $A7DF74  AD D9 00     Mx
    STA $4204                       ; $A7DF77  8D 04 42     Mx
    LDX $00EE                       ; $A7DF7A  AE EE 00     Mx
    STX $4206                       ; $A7DF7D  8E 06 42     Mx
    NOP                             ; $A7DF80  EA           Mx
    NOP                             ; $A7DF81  EA           Mx
    NOP                             ; $A7DF82  EA           Mx
    NOP                             ; $A7DF83  EA           Mx
    NOP                             ; $A7DF84  EA           Mx
    NOP                             ; $A7DF85  EA           Mx
    NOP                             ; $A7DF86  EA           Mx
    STZ $00F0                       ; $A7DF87  9C F0 00     Mx
    LDA $4214                       ; $A7DF8A  AD 14 42     Mx
    STA $00F2                       ; $A7DF8D  8D F2 00     Mx
    LDX $4216                       ; $A7DF90  AE 16 42     Mx
    STX $00EC                       ; $A7DF93  8E EC 00     Mx
    LDA $00EB                       ; $A7DF96  AD EB 00     Mx
    STA $4204                       ; $A7DF99  8D 04 42     Mx
    LDX $00EE                       ; $A7DF9C  AE EE 00     Mx
    STX $4206                       ; $A7DF9F  8E 06 42     Mx
    NOP                             ; $A7DFA2  EA           Mx
    NOP                             ; $A7DFA3  EA           Mx
    NOP                             ; $A7DFA4  EA           Mx
    NOP                             ; $A7DFA5  EA           Mx
    NOP                             ; $A7DFA6  EA           Mx
    NOP                             ; $A7DFA7  EA           Mx
    NOP                             ; $A7DFA8  EA           Mx
    STZ $00F0                       ; $A7DFA9  9C F0 00     Mx
    LDA $4214                       ; $A7DFAC  AD 14 42     Mx
    ORA $00F1                       ; $A7DFAF  0D F1 00     Mx
    STA $00F1                       ; $A7DFB2  8D F1 00     Mx
    LDX $4216                       ; $A7DFB5  AE 16 42     Mx
    STX $00EB                       ; $A7DFB8  8E EB 00     Mx
    LDA $00EA                       ; $A7DFBB  AD EA 00     Mx
    STA $4204                       ; $A7DFBE  8D 04 42     Mx
    LDX $00EE                       ; $A7DFC1  AE EE 00     Mx
    STX $4206                       ; $A7DFC4  8E 06 42     Mx
    NOP                             ; $A7DFC7  EA           Mx
    NOP                             ; $A7DFC8  EA           Mx
    NOP                             ; $A7DFC9  EA           Mx
    NOP                             ; $A7DFCA  EA           Mx
    NOP                             ; $A7DFCB  EA           Mx
    NOP                             ; $A7DFCC  EA           Mx
    NOP                             ; $A7DFCD  EA           Mx
    NOP                             ; $A7DFCE  EA           Mx
    LDA $4214                       ; $A7DFCF  AD 14 42     Mx
    ORA $00F0                       ; $A7DFD2  0D F0 00     Mx
    STA $00F0                       ; $A7DFD5  8D F0 00     Mx
    LDA $00B0                       ; $A7DFD8  AD B0 00     Mx
    BPL L_A7DFF9                    ; $A7DFDB  10 1C        Mx
    LDA $00F0                       ; $A7DFDD  AD F0 00     Mx
    EOR #$FFFF                      ; $A7DFE0  49 FF FF     Mx
    CLC                             ; $A7DFE3  18           Mx
    ADC #$0001                      ; $A7DFE4  69 01 00     Mx
    STA $00C2                       ; $A7DFE7  8D C2 00     Mx
    LDA $00F2                       ; $A7DFEA  AD F2 00     Mx
    EOR #$FFFF                      ; $A7DFED  49 FF FF     Mx
    ADC #$0000                      ; $A7DFF0  69 00 00     Mx
    STA $00C4                       ; $A7DFF3  8D C4 00     Mx
    JMP L_A7E005                    ; $A7DFF6  4C 05 E0     Mx
L_A7DFF9:
    LDA $00F0                       ; $A7DFF9  AD F0 00     Mx
    STA $00C2                       ; $A7DFFC  8D C2 00     Mx
    LDA $00F2                       ; $A7DFFF  AD F2 00     Mx
    STA $00C4                       ; $A7E002  8D C4 00     Mx
L_A7E005:
    LDA $00DF                       ; $A7E005  AD DF 00     Mx
    STA $00B0                       ; $A7E008  8D B0 00     Mx
    BPL L_A7E017                    ; $A7E00B  10 0A        Mx
    EOR #$FFFF                      ; $A7E00D  49 FF FF     Mx
    CLC                             ; $A7E010  18           Mx
    ADC #$0001                      ; $A7E011  69 01 00     Mx
    STA $00DF                       ; $A7E014  8D DF 00     Mx
L_A7E017:
    LDX $00DC                       ; $A7E017  AE DC 00     Mx
    STX $00EE                       ; $A7E01A  8E EE 00     Mx
    LDA #$0000                      ; $A7E01D  A9 00 00     Mx
    STA $00EA                       ; $A7E020  8D EA 00     Mx
    LDA $00DF                       ; $A7E023  AD DF 00     Mx
    STA $4204                       ; $A7E026  8D 04 42     Mx
    LDX $00EE                       ; $A7E029  AE EE 00     Mx
    STX $4206                       ; $A7E02C  8E 06 42     Mx
    NOP                             ; $A7E02F  EA           Mx
    NOP                             ; $A7E030  EA           Mx
    NOP                             ; $A7E031  EA           Mx
    NOP                             ; $A7E032  EA           Mx
    NOP                             ; $A7E033  EA           Mx
    NOP                             ; $A7E034  EA           Mx
    NOP                             ; $A7E035  EA           Mx
    STZ $00F0                       ; $A7E036  9C F0 00     Mx
    LDA $4214                       ; $A7E039  AD 14 42     Mx
    STA $00F2                       ; $A7E03C  8D F2 00     Mx
    LDX $4216                       ; $A7E03F  AE 16 42     Mx
    STX $00EC                       ; $A7E042  8E EC 00     Mx
    LDA $00EB                       ; $A7E045  AD EB 00     Mx
    STA $4204                       ; $A7E048  8D 04 42     Mx
    LDX $00EE                       ; $A7E04B  AE EE 00     Mx
    STX $4206                       ; $A7E04E  8E 06 42     Mx
    NOP                             ; $A7E051  EA           Mx
    NOP                             ; $A7E052  EA           Mx
    NOP                             ; $A7E053  EA           Mx
    NOP                             ; $A7E054  EA           Mx
    NOP                             ; $A7E055  EA           Mx
    NOP                             ; $A7E056  EA           Mx
    NOP                             ; $A7E057  EA           Mx
    STZ $00F0                       ; $A7E058  9C F0 00     Mx
    LDA $4214                       ; $A7E05B  AD 14 42     Mx
    ORA $00F1                       ; $A7E05E  0D F1 00     Mx
    STA $00F1                       ; $A7E061  8D F1 00     Mx
    LDX $4216                       ; $A7E064  AE 16 42     Mx
    STX $00EB                       ; $A7E067  8E EB 00     Mx
    LDA $00EA                       ; $A7E06A  AD EA 00     Mx
    STA $4204                       ; $A7E06D  8D 04 42     Mx
    LDX $00EE                       ; $A7E070  AE EE 00     Mx
    STX $4206                       ; $A7E073  8E 06 42     Mx
    NOP                             ; $A7E076  EA           Mx
    NOP                             ; $A7E077  EA           Mx
    NOP                             ; $A7E078  EA           Mx
    NOP                             ; $A7E079  EA           Mx
    NOP                             ; $A7E07A  EA           Mx
    NOP                             ; $A7E07B  EA           Mx
    NOP                             ; $A7E07C  EA           Mx
    NOP                             ; $A7E07D  EA           Mx
    LDA $4214                       ; $A7E07E  AD 14 42     Mx
    ORA $00F0                       ; $A7E081  0D F0 00     Mx
    STA $00F0                       ; $A7E084  8D F0 00     Mx
    LDA $00B0                       ; $A7E087  AD B0 00     Mx
    BPL L_A7E0A8                    ; $A7E08A  10 1C        Mx
    LDA $00F0                       ; $A7E08C  AD F0 00     Mx
    EOR #$FFFF                      ; $A7E08F  49 FF FF     Mx
    CLC                             ; $A7E092  18           Mx
    ADC #$0001                      ; $A7E093  69 01 00     Mx
    STA $00C6                       ; $A7E096  8D C6 00     Mx
    LDA $00F2                       ; $A7E099  AD F2 00     Mx
    EOR #$FFFF                      ; $A7E09C  49 FF FF     Mx
    ADC #$0000                      ; $A7E09F  69 00 00     Mx
    STA $00C8                       ; $A7E0A2  8D C8 00     Mx
    JMP L_A7E0B4                    ; $A7E0A5  4C B4 E0     Mx
L_A7E0A8:
    LDA $00F0                       ; $A7E0A8  AD F0 00     Mx
    STA $00C6                       ; $A7E0AB  8D C6 00     Mx
    LDA $00F2                       ; $A7E0AE  AD F2 00     Mx
    STA $00C8                       ; $A7E0B1  8D C8 00     Mx
L_A7E0B4:
    LDA $00C2                       ; $A7E0B4  AD C2 00     Mx
    STA $0BE3                       ; $A7E0B7  8D E3 0B     Mx
    LDA $00C4                       ; $A7E0BA  AD C4 00     Mx
    STA $0BE5                       ; $A7E0BD  8D E5 0B     Mx
    LDA $00C6                       ; $A7E0C0  AD C6 00     Mx
    STA $0BEB                       ; $A7E0C3  8D EB 0B     Mx
    LDA $00C8                       ; $A7E0C6  AD C8 00     Mx
    STA $0BED                       ; $A7E0C9  8D ED 0B     Mx
    LDA $0C39                       ; $A7E0CC  AD 39 0C     Mx
    BNE L_A7E0EF                    ; $A7E0CF  D0 1E        Mx
    LDA $00AC                       ; $A7E0D1  AD AC 00     Mx
    CLC                             ; $A7E0D4  18           Mx
    ADC #$001E                      ; $A7E0D5  69 1E 00     Mx
    STA $00D3                       ; $A7E0D8  8D D3 00     Mx
    LDA $0BDD                       ; $A7E0DB  AD DD 0B     Mx
    SEC                             ; $A7E0DE  38           Mx
    SBC $00D3                       ; $A7E0DF  ED D3 00     Mx
    EOR #$FFFF                      ; $A7E0E2  49 FF FF     Mx
    CLC                             ; $A7E0E5  18           Mx
    ADC #$0001                      ; $A7E0E6  69 01 00     Mx
    STA $00D9                       ; $A7E0E9  8D D9 00     Mx
    JMP L_A7E111                    ; $A7E0EC  4C 11 E1     Mx
L_A7E0EF:
    LDA $0BDD                       ; $A7E0EF  AD DD 0B     Mx
    EOR #$FFFF                      ; $A7E0F2  49 FF FF     Mx
    CLC                             ; $A7E0F5  18           Mx
    ADC #$0001                      ; $A7E0F6  69 01 00     Mx
    SEC                             ; $A7E0F9  38           Mx
    SBC $0BB3                       ; $A7E0FA  ED B3 0B     Mx
    STA $00D3                       ; $A7E0FD  8D D3 00     Mx
    LDA $0BDD                       ; $A7E100  AD DD 0B     Mx
    SEC                             ; $A7E103  38           Mx
    SBC $00D3                       ; $A7E104  ED D3 00     Mx
    EOR #$FFFF                      ; $A7E107  49 FF FF     Mx
    CLC                             ; $A7E10A  18           Mx
    ADC #$0001                      ; $A7E10B  69 01 00     Mx
    STA $00D9                       ; $A7E10E  8D D9 00     Mx
L_A7E111:
    LDA $00D3                       ; $A7E111  AD D3 00     Mx
    CMP #$8000                      ; $A7E114  C9 00 80     Mx
    ROR                             ; $A7E117  6A           Mx
    LDA $00D3                       ; $A7E118  AD D3 00     Mx
    CMP #$8000                      ; $A7E11B  C9 00 80     Mx
    ROR                             ; $A7E11E  6A           Mx
    CLC                             ; $A7E11F  18           Mx
    ADC $00D9                       ; $A7E120  6D D9 00     Mx
    STZ $00A8                       ; $A7E123  9C A8 00     Mx
    LDA $00D9                       ; $A7E126  AD D9 00     Mx
    STA $00AA                       ; $A7E129  8D AA 00     Mx
    LDX $00DC                       ; $A7E12C  AE DC 00     Mx
    STX $4202                       ; $A7E12F  8E 02 42     Mx
    LDX #$80                        ; $A7E132  A2 80        Mx
    STX $4203                       ; $A7E134  8E 03 42     Mx
    NOP                             ; $A7E137  EA           Mx
    NOP                             ; $A7E138  EA           Mx
    NOP                             ; $A7E139  EA           Mx
    NOP                             ; $A7E13A  EA           Mx
    LDA $4216                       ; $A7E13B  AD 16 42     Mx
    STA $00A8                       ; $A7E13E  8D A8 00     Mx
    LDX $00DC                       ; $A7E141  AE DC 00     Mx
    STX $4202                       ; $A7E144  8E 02 42     Mx
    LDX #$12                        ; $A7E147  A2 12        Mx
    STX $4203                       ; $A7E149  8E 03 42     Mx
    NOP                             ; $A7E14C  EA           Mx
    NOP                             ; $A7E14D  EA           Mx
    STZ $00F4                       ; $A7E14E  9C F4 00     Mx
    STZ $00F2                       ; $A7E151  9C F2 00     Mx
    LDA $4216                       ; $A7E154  AD 16 42     Mx
    STA $00F3                       ; $A7E157  8D F3 00     Mx
    LDA $00F2                       ; $A7E15A  AD F2 00     Mx
    CLC                             ; $A7E15D  18           Mx
    ADC $00A8                       ; $A7E15E  6D A8 00     Mx
    STA $00F2                       ; $A7E161  8D F2 00     Mx
    LDA $00F4                       ; $A7E164  AD F4 00     Mx
    ADC #$0000                      ; $A7E167  69 00 00     Mx
    STA $00F4                       ; $A7E16A  8D F4 00     Mx
    LDA $00F2                       ; $A7E16D  AD F2 00     Mx
    EOR #$FFFF                      ; $A7E170  49 FF FF     Mx
    CLC                             ; $A7E173  18           Mx
    ADC #$0001                      ; $A7E174  69 01 00     Mx
    STA $00A4                       ; $A7E177  8D A4 00     Mx
    LDA $00F4                       ; $A7E17A  AD F4 00     Mx
    EOR #$FFFF                      ; $A7E17D  49 FF FF     Mx
    ADC #$0000                      ; $A7E180  69 00 00     Mx
    STA $00A6                       ; $A7E183  8D A6 00     Mx
    LDA $00AA                       ; $A7E186  AD AA 00     Mx
    STA $00B0                       ; $A7E189  8D B0 00     Mx
    BPL L_A7E1A7                    ; $A7E18C  10 19        Mx
    LDA $00A8                       ; $A7E18E  AD A8 00     Mx
    EOR #$FFFF                      ; $A7E191  49 FF FF     Mx
    CLC                             ; $A7E194  18           Mx
    ADC #$0001                      ; $A7E195  69 01 00     Mx
    STA $00A8                       ; $A7E198  8D A8 00     Mx
    LDA $00AA                       ; $A7E19B  AD AA 00     Mx
    EOR #$FFFF                      ; $A7E19E  49 FF FF     Mx
    ADC #$0000                      ; $A7E1A1  69 00 00     Mx
    STA $00AA                       ; $A7E1A4  8D AA 00     Mx
L_A7E1A7:
    LDX $00DC                       ; $A7E1A7  AE DC 00     Mx
    STX $00EE                       ; $A7E1AA  8E EE 00     Mx
    LDA $00A8                       ; $A7E1AD  AD A8 00     Mx
    STA $00EA                       ; $A7E1B0  8D EA 00     Mx
    LDA $00AA                       ; $A7E1B3  AD AA 00     Mx
    STA $4204                       ; $A7E1B6  8D 04 42     Mx
    LDX $00EE                       ; $A7E1B9  AE EE 00     Mx
    STX $4206                       ; $A7E1BC  8E 06 42     Mx
    NOP                             ; $A7E1BF  EA           Mx
    NOP                             ; $A7E1C0  EA           Mx
    NOP                             ; $A7E1C1  EA           Mx
    NOP                             ; $A7E1C2  EA           Mx
    NOP                             ; $A7E1C3  EA           Mx
    NOP                             ; $A7E1C4  EA           Mx
    NOP                             ; $A7E1C5  EA           Mx
    STZ $00F0                       ; $A7E1C6  9C F0 00     Mx
    LDA $4214                       ; $A7E1C9  AD 14 42     Mx
    STA $00F2                       ; $A7E1CC  8D F2 00     Mx
    LDX $4216                       ; $A7E1CF  AE 16 42     Mx
    STX $00EC                       ; $A7E1D2  8E EC 00     Mx
    LDA $00EB                       ; $A7E1D5  AD EB 00     Mx
    STA $4204                       ; $A7E1D8  8D 04 42     Mx
    LDX $00EE                       ; $A7E1DB  AE EE 00     Mx
    STX $4206                       ; $A7E1DE  8E 06 42     Mx
    NOP                             ; $A7E1E1  EA           Mx
    NOP                             ; $A7E1E2  EA           Mx
    NOP                             ; $A7E1E3  EA           Mx
    NOP                             ; $A7E1E4  EA           Mx
    NOP                             ; $A7E1E5  EA           Mx
    NOP                             ; $A7E1E6  EA           Mx
    NOP                             ; $A7E1E7  EA           Mx
    STZ $00F0                       ; $A7E1E8  9C F0 00     Mx
    LDA $4214                       ; $A7E1EB  AD 14 42     Mx
    ORA $00F1                       ; $A7E1EE  0D F1 00     Mx
    STA $00F1                       ; $A7E1F1  8D F1 00     Mx
    LDX $4216                       ; $A7E1F4  AE 16 42     Mx
    STX $00EB                       ; $A7E1F7  8E EB 00     Mx
    LDA $00EA                       ; $A7E1FA  AD EA 00     Mx
    STA $4204                       ; $A7E1FD  8D 04 42     Mx
    LDX $00EE                       ; $A7E200  AE EE 00     Mx
    STX $4206                       ; $A7E203  8E 06 42     Mx
    NOP                             ; $A7E206  EA           Mx
    NOP                             ; $A7E207  EA           Mx
    NOP                             ; $A7E208  EA           Mx
    NOP                             ; $A7E209  EA           Mx
    NOP                             ; $A7E20A  EA           Mx
    NOP                             ; $A7E20B  EA           Mx
    NOP                             ; $A7E20C  EA           Mx
    NOP                             ; $A7E20D  EA           Mx
    LDA $4214                       ; $A7E20E  AD 14 42     Mx
    ORA $00F0                       ; $A7E211  0D F0 00     Mx
    STA $00F0                       ; $A7E214  8D F0 00     Mx
    LDA $00B0                       ; $A7E217  AD B0 00     Mx
    BPL L_A7E238                    ; $A7E21A  10 1C        Mx
    LDA $00F0                       ; $A7E21C  AD F0 00     Mx
    EOR #$FFFF                      ; $A7E21F  49 FF FF     Mx
    CLC                             ; $A7E222  18           Mx
    ADC #$0001                      ; $A7E223  69 01 00     Mx
    STA $00F0                       ; $A7E226  8D F0 00     Mx
    LDA $00F2                       ; $A7E229  AD F2 00     Mx
    EOR #$FFFF                      ; $A7E22C  49 FF FF     Mx
    ADC #$0000                      ; $A7E22F  69 00 00     Mx
    STA $00F2                       ; $A7E232  8D F2 00     Mx
    STA $00EA                       ; $A7E235  8D EA 00     Mx
L_A7E238:
    LDA $00A4                       ; $A7E238  AD A4 00     Mx
    SEC                             ; $A7E23B  38           Mx
    SBC $00F0                       ; $A7E23C  ED F0 00     Mx
    STA $0BE7                       ; $A7E23F  8D E7 0B     Mx
    LDA $00A6                       ; $A7E242  AD A6 00     Mx
    SBC $00F2                       ; $A7E245  ED F2 00     Mx
    STA $0BE9                       ; $A7E248  8D E9 0B     Mx
    LDA #$0009                      ; $A7E24B  A9 09 00     Mx
    JSL L_BDFDF3                    ; $A7E24E  22 F3 FD BD  Mx
    RTL                             ; $A7E252  6B           Mx
L_A7E253:
    LDA $0BD9                       ; $A7E253  AD D9 0B     MX
    BPL L_A7E260                    ; $A7E256  10 08        MX
    LDA #$0001                      ; $A7E258  A9 01 00     MX
    STA $00A4                       ; $A7E25B  8D A4 00     MX
    BRA L_A7E266                    ; $A7E25E  80 06        MX
L_A7E260:
    LDA #$FFFF                      ; $A7E260  A9 FF FF     MX
    STA $00A4                       ; $A7E263  8D A4 00     MX
L_A7E266:
    LDA #$06F0                      ; $A7E266  A9 F0 06     MX
    CMP $0BB5                       ; $A7E269  CD B5 0B     MX
    BNE L_A7E273                    ; $A7E26C  D0 05        MX
    LDA $1341                       ; $A7E26E  AD 41 13     MX
    BEQ L_A7E2A4                    ; $A7E271  F0 31        MX
L_A7E273:
    LDA $0722                       ; $A7E273  AD 22 07     MX
    BEQ L_A7E2A4                    ; $A7E276  F0 2C        MX
    LDA $075C                       ; $A7E278  AD 5C 07     MX
    CMP #$0032                      ; $A7E27B  C9 32 00     MX
    BCS L_A7E2A4                    ; $A7E27E  B0 24        MX
    LDA #$0030                      ; $A7E280  A9 30 00     MX
    STA $06F4                       ; $A7E283  8D F4 06     MX
    STA $06F2                       ; $A7E286  8D F2 06     MX
    LDA #$0064                      ; $A7E289  A9 64 00     MX
    STA $0784                       ; $A7E28C  8D 84 07     MX
    STZ $06F6                       ; $A7E28F  9C F6 06     MX
    LDA $00A4                       ; $A7E292  AD A4 00     MX
    STA $072A                       ; $A7E295  8D 2A 07     MX
    STZ $0728                       ; $A7E298  9C 28 07     MX
    LDA #$0001                      ; $A7E29B  A9 01 00     MX
    STA $0732                       ; $A7E29E  8D 32 07     MX
    STZ $0730                       ; $A7E2A1  9C 30 07     MX
L_A7E2A4:
    LDA #$07D8                      ; $A7E2A4  A9 D8 07     MX
    CMP $0BB5                       ; $A7E2A7  CD B5 0B     MX
    BNE L_A7E2B1                    ; $A7E2AA  D0 05        MX
    LDA $1341                       ; $A7E2AC  AD 41 13     MX
    BEQ L_A7E2E2                    ; $A7E2AF  F0 31        MX
L_A7E2B1:
    LDA $080A                       ; $A7E2B1  AD 0A 08     MX
    BEQ L_A7E2E2                    ; $A7E2B4  F0 2C        MX
    LDA $0844                       ; $A7E2B6  AD 44 08     MX
    CMP #$0032                      ; $A7E2B9  C9 32 00     MX
    BCS L_A7E2E2                    ; $A7E2BC  B0 24        MX
    LDA #$0030                      ; $A7E2BE  A9 30 00     MX
    STA $07DC                       ; $A7E2C1  8D DC 07     MX
    STA $07DA                       ; $A7E2C4  8D DA 07     MX
    LDA #$0055                      ; $A7E2C7  A9 55 00     MX
    STA $086C                       ; $A7E2CA  8D 6C 08     MX
    STZ $07DE                       ; $A7E2CD  9C DE 07     MX
    LDA $00A4                       ; $A7E2D0  AD A4 00     MX
    STA $0812                       ; $A7E2D3  8D 12 08     MX
    STZ $0810                       ; $A7E2D6  9C 10 08     MX
    LDA #$FFFF                      ; $A7E2D9  A9 FF FF     MX
    STA $081A                       ; $A7E2DC  8D 1A 08     MX
    STZ $0818                       ; $A7E2DF  9C 18 08     MX
L_A7E2E2:
    LDA #$08C0                      ; $A7E2E2  A9 C0 08     MX
    CMP $0BB5                       ; $A7E2E5  CD B5 0B     MX
    BNE L_A7E2EF                    ; $A7E2E8  D0 05        MX
    LDA $1341                       ; $A7E2EA  AD 41 13     MX
    BEQ L_A7E320                    ; $A7E2ED  F0 31        MX
L_A7E2EF:
    LDA $08F2                       ; $A7E2EF  AD F2 08     MX
    BEQ L_A7E320                    ; $A7E2F2  F0 2C        MX
    LDA $092C                       ; $A7E2F4  AD 2C 09     MX
    CMP #$0032                      ; $A7E2F7  C9 32 00     MX
    BCS L_A7E320                    ; $A7E2FA  B0 24        MX
    LDA #$0030                      ; $A7E2FC  A9 30 00     MX
    STA $08C4                       ; $A7E2FF  8D C4 08     MX
    STA $08C2                       ; $A7E302  8D C2 08     MX
    LDA #$005A                      ; $A7E305  A9 5A 00     MX
    STA $0954                       ; $A7E308  8D 54 09     MX
    STZ $08C6                       ; $A7E30B  9C C6 08     MX
    LDA $00A4                       ; $A7E30E  AD A4 00     MX
    STA $08FA                       ; $A7E311  8D FA 08     MX
    STZ $08F8                       ; $A7E314  9C F8 08     MX
    LDA #$0001                      ; $A7E317  A9 01 00     MX
    STA $0902                       ; $A7E31A  8D 02 09     MX
    STZ $0900                       ; $A7E31D  9C 00 09     MX
L_A7E320:
    LDA #$09A8                      ; $A7E320  A9 A8 09     MX
    CMP $0BB5                       ; $A7E323  CD B5 0B     MX
    BNE L_A7E32D                    ; $A7E326  D0 05        MX
    LDA $1341                       ; $A7E328  AD 41 13     MX
    BEQ L_A7E35E                    ; $A7E32B  F0 31        MX
L_A7E32D:
    LDA $09DA                       ; $A7E32D  AD DA 09     MX
    BEQ L_A7E35E                    ; $A7E330  F0 2C        MX
    LDA $0A14                       ; $A7E332  AD 14 0A     MX
    CMP #$0032                      ; $A7E335  C9 32 00     MX
    BCS L_A7E35E                    ; $A7E338  B0 24        MX
    LDA #$0030                      ; $A7E33A  A9 30 00     MX
    STA $09AC                       ; $A7E33D  8D AC 09     MX
    STA $09AA                       ; $A7E340  8D AA 09     MX
    LDA #$0046                      ; $A7E343  A9 46 00     MX
    STA $0A3C                       ; $A7E346  8D 3C 0A     MX
    STZ $09AE                       ; $A7E349  9C AE 09     MX
    LDA $00A4                       ; $A7E34C  AD A4 00     MX
    STA $09E2                       ; $A7E34F  8D E2 09     MX
    STZ $09E0                       ; $A7E352  9C E0 09     MX
    LDA #$FFFF                      ; $A7E355  A9 FF FF     MX
    STA $09EA                       ; $A7E358  8D EA 09     MX
    STZ $09E8                       ; $A7E35B  9C E8 09     MX
L_A7E35E:
    RTL                             ; $A7E35E  6B           MX
    db $08,$09,$01,$05,$04,$06,$02,$0A,$00,$02,$06,$00,$04,$03,$05,$00 ; $A7E35F
    db $00,$01,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A7E36F
    db $00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $A7E37F
    db $01,$01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$03 ; $A7E38F
    db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$04,$04,$04 ; $A7E39F
    db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $A7E3AF
    db $04,$04,$04,$04,$04,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05 ; $A7E3BF
    db $05,$05,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$07,$07 ; $A7E3CF
    db $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$00,$00,$00,$00,$00 ; $A7E3DF
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A7E3EF
    db $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00 ; $A7E3FF
    db $01,$00,$01,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00 ; $A7E40F
    db $02,$00,$03,$00,$03,$00,$03,$00,$03,$00,$03,$00,$03,$00,$03,$00 ; $A7E41F
    db $04,$00,$04,$00,$04,$00,$00,$00,$00,$00,$00,$00,$01,$00,$01,$00 ; $A7E42F
    db $01,$00,$02,$00,$02,$00,$02,$00,$03,$00,$03,$00,$03,$00,$04,$00 ; $A7E43F
    db $04,$00,$04,$00,$05,$00,$05,$00,$05,$00,$06,$00,$06,$00,$06,$00 ; $A7E44F
    db $07,$00,$07,$00,$07,$00,$08,$00,$08,$00,$08,$00,$09,$00,$09,$00 ; $A7E45F
    db $09,$00,$0A,$00,$0A,$00,$0A,$00,$0B,$00,$01,$00,$FF,$FF,$01,$00 ; $A7E46F
    db $00,$00,$FF,$FF,$01,$00,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$01,$00 ; $A7E47F
    db $FF,$FF,$01,$00,$00,$00,$01,$00,$01,$00,$00,$00,$01,$00,$FF,$FF ; $A7E48F
    db $01,$00,$FF,$FF,$00,$00,$FF,$FF,$FF,$FF,$0E,$00,$0C,$00,$0C,$00 ; $A7E49F
    db $0A,$00,$0A,$00,$0A,$00,$0C,$00,$0C,$00,$00,$00,$00,$00,$00,$00 ; $A7E4AF
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A7E4BF
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$01,$00 ; $A7E4CF
    db $00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $A7E4DF
    db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$02,$03 ; $A7E4EF
    db $03,$05,$06,$07,$07,$01,$02,$03,$05,$05,$06,$07,$F0,$00,$E0,$01 ; $A7E4FF
    db $D0,$02,$C0,$03,$B0,$04,$A0,$05,$90,$06,$80,$07,$70,$08,$60,$09 ; $A7E50F
    db $50,$0A,$40,$0B,$30,$0C,$20,$0D,$10,$0E,$00,$0F,$F0,$0F,$E0,$10 ; $A7E51F
    db $D0,$11,$C0,$12,$B0,$13,$A0,$14,$90,$15,$80,$16,$70,$17,$60,$18 ; $A7E52F
    db $50,$19,$40,$1A,$30,$1B,$20,$1C,$10,$1D,$00,$1E,$F0,$1E,$E0,$1F ; $A7E53F
    db $D0,$20,$C0,$21,$B0,$22,$A0,$23,$90,$24,$80,$25,$70,$26,$60,$27 ; $A7E54F
    db $50,$28,$40,$29,$30,$2A,$20,$2B,$10,$2C,$00,$2D,$F0,$2D,$E0,$2E ; $A7E55F
    db $D0,$2F,$C0,$30,$B0,$31,$A0,$32,$90,$33,$80,$34,$70,$35,$60,$36 ; $A7E56F
    db $50,$37,$40,$38,$30,$39,$20,$3A,$10,$3B,$00,$3C,$F0,$3C,$E0,$3D ; $A7E57F
    db $D0,$3E,$C0,$3F,$B0,$40,$A0,$41,$90,$42,$80,$43,$70,$44,$60,$45 ; $A7E58F
    db $50,$46,$40,$47,$30,$48,$20,$49,$10,$4A,$00,$4B,$F0,$4B,$E0,$4C ; $A7E59F
    db $D0,$4D,$C0,$4E,$B0,$4F,$A0,$50,$90,$51,$80,$52,$70,$53,$60,$54 ; $A7E5AF
    db $50,$55,$40,$56,$30,$57,$20,$58,$10,$59,$00,$5A,$F0,$5A,$E0,$5B ; $A7E5BF
    db $D0,$5C,$C0,$5D,$B0,$5E,$A0,$5F,$90,$60,$80,$61,$70,$62,$60,$63 ; $A7E5CF
    db $50,$64,$40,$65,$30,$66,$20,$67,$10,$68,$00,$69,$F0,$69,$E0,$6A ; $A7E5DF
    db $D0,$6B,$C0,$6C,$B0,$6D,$A0,$6E,$90,$6F,$80,$70,$20,$00,$20,$00 ; $A7E5EF
    db $20,$00,$20,$00,$22,$00,$24,$00,$22,$00,$24,$00,$01,$01,$03,$03 ; $A7E5FF
    db $03,$05,$07,$07,$07,$01,$03,$03,$05,$05,$07,$07,$19,$1B,$1E,$20 ; $A7E60F
    db $23,$25,$28,$2A,$2D,$2F,$32,$32,$32,$32,$32,$32,$32,$32,$32,$E8 ; $A7E61F
    db $03,$E8,$03,$E8,$03,$E8,$03,$E8,$03,$E8,$03,$E8,$03,$E8,$03,$AF ; $A7E62F
    db $00,$A3,$00,$9A,$00,$94,$00,$8E,$00,$89,$00,$84,$00,$80,$00,$7C ; $A7E63F
    db $00,$79,$00,$76,$00,$73,$00,$70,$00,$6D,$00,$6B,$00,$68,$00,$66 ; $A7E64F
    db $00,$64,$00,$62,$00,$60,$00,$5E,$00,$5C,$00,$5B,$00,$5A,$00,$58 ; $A7E65F
    db $00,$57,$00,$56,$00,$54,$00,$53,$00,$52,$00,$51,$00,$50,$00,$4F ; $A7E66F
    db $00,$4E,$00,$4D,$00,$4C,$00,$4C,$00,$4B,$00,$4B,$00,$4A,$00,$4A ; $A7E67F
    db $00,$49,$00,$49,$00,$49,$00,$48,$00,$48,$00,$48,$00,$48,$00,$48 ; $A7E68F
    db $00,$48,$00,$48,$00,$48,$00,$48,$00,$49,$00,$49,$00,$49,$00,$4A ; $A7E69F
    db $00,$4A,$00,$4B,$00,$4B,$00,$4C,$00,$4C,$00,$4D,$00,$4E,$00,$4F ; $A7E6AF
    db $00,$50,$00,$51,$00,$52,$00,$53,$00,$54,$00,$56,$00,$57,$00,$58 ; $A7E6BF
    db $00,$5A,$00,$5B,$00,$5C,$00,$5E,$00,$60,$00,$62,$00,$64,$00,$66 ; $A7E6CF
    db $00,$68,$00,$6B,$00,$6D,$00,$70,$00,$73,$00,$76,$00,$79,$00,$7C ; $A7E6DF
    db $00,$80,$00,$84,$00,$89,$00,$8E,$00,$94,$00,$9A,$00,$A3,$00,$AF ; $A7E6EF
    db $00,$E8,$03,$E8,$03,$E8,$03,$E8,$03,$E8,$03,$E8,$03,$E8,$03,$E8 ; $A7E6FF
    db $03,$E8,$03,$E8,$03,$18,$FC,$18,$FC,$18,$FC,$18,$FC,$18,$FC,$18 ; $A7E70F
    db $FC,$18,$FC,$18,$FC,$5B,$FF,$67,$FF,$70,$FF,$76,$FF,$7C,$FF,$81 ; $A7E71F
    db $FF,$86,$FF,$8A,$FF,$8E,$FF,$91,$FF,$94,$FF,$97,$FF,$9A,$FF,$9D ; $A7E72F
    db $FF,$9F,$FF,$A2,$FF,$A4,$FF,$A6,$FF,$A8,$FF,$AA,$FF,$AC,$FF,$AE ; $A7E73F
    db $FF,$AF,$FF,$B0,$FF,$B2,$FF,$B3,$FF,$B4,$FF,$B6,$FF,$B7,$FF,$B8 ; $A7E74F
    db $FF,$B9,$FF,$BA,$FF,$BB,$FF,$BC,$FF,$BD,$FF,$BE,$FF,$BE,$FF,$BF ; $A7E75F
    db $FF,$BF,$FF,$C0,$FF,$C0,$FF,$C1,$FF,$C1,$FF,$C1,$FF,$C2,$FF,$C2 ; $A7E76F
    db $FF,$C2,$FF,$C2,$FF,$C2,$FF,$C2,$FF,$C2,$FF,$C2,$FF,$C2,$FF,$C1 ; $A7E77F
    db $FF,$C1,$FF,$C1,$FF,$C0,$FF,$C0,$FF,$BF,$FF,$BF,$FF,$BE,$FF,$BE ; $A7E78F
    db $FF,$BD,$FF,$BC,$FF,$BB,$FF,$BA,$FF,$B9,$FF,$B8,$FF,$B7,$FF,$B6 ; $A7E79F
    db $FF,$B4,$FF,$B3,$FF,$B2,$FF,$B0,$FF,$AF,$FF,$AE,$FF,$AC,$FF,$AA ; $A7E7AF
    db $FF,$A8,$FF,$A6,$FF,$A4,$FF,$A2,$FF,$9F,$FF,$9D,$FF,$9A,$FF,$97 ; $A7E7BF
    db $FF,$94,$FF,$91,$FF,$8E,$FF,$8A,$FF,$86,$FF,$81,$FF,$7C,$FF,$76 ; $A7E7CF
    db $FF,$70,$FF,$67,$FF,$5B,$FF,$18,$FC,$18,$FC,$18,$FC,$18,$FC,$18 ; $A7E7DF
    db $FC,$18,$FC,$18,$FC,$18,$FC,$18,$FC,$18,$FC,$5A,$5A,$5A,$5A,$50 ; $A7E7EF
    db $50,$46,$3C,$37,$32,$21,$19,$16,$12,$10,$0E,$0A,$08,$06,$04,$04 ; $A7E7FF
    db $04,$03,$03,$03,$02,$02,$02,$02,$02,$01,$32,$32,$2D,$2D,$2D,$28 ; $A7E80F
    db $28,$1E,$1E,$14,$14,$10,$0E,$0D,$0C,$0C,$0C,$0B,$0A,$0A,$09,$08 ; $A7E81F
    db $05,$04,$03,$02,$01,$01,$01,$01,$01,$32,$32,$32,$32,$32,$28,$28 ; $A7E82F
    db $28,$23,$1E,$19,$16,$14,$12,$10,$0E,$0A,$08,$06,$04,$04,$04,$03 ; $A7E83F
    db $03,$03,$02,$02,$02,$02,$02,$01,$02,$02,$02,$02,$02,$04,$04,$04 ; $A7E84F
    db $04,$06,$06,$06,$08,$08,$0A,$0A,$0A,$0C,$10,$14,$1A,$1E,$22,$24 ; $A7E85F
    db $28,$28,$2B,$2E,$2E,$30,$32,$32,$00,$FF,$14,$03,$50,$FF,$14,$03 ; $A7E86F
    db $C4,$FF,$30,$03,$C4,$FF,$74,$03,$C4,$FF,$D0,$03,$50,$FF,$EC,$03 ; $A7E87F
    db $00,$FF,$EC,$03,$00,$FF,$30,$03,$50,$FF,$4C,$03,$78,$FF,$5E,$03 ; $A7E88F
    db $80,$FF,$74,$03,$78,$FF,$A2,$03,$50,$FF,$B4,$03,$00,$FF,$D0,$03 ; $A7E89F
    db $14,$FF,$6A,$03,$1A,$FF,$74,$03,$14,$FF,$7E,$03,$32,$32,$32,$32 ; $A7E8AF
    db $32,$32,$32,$2D,$2D,$28,$21,$19,$16,$12,$10,$0E,$0A,$08,$06,$04 ; $A7E8BF
    db $04,$04,$03,$03,$03,$02,$02,$02,$02,$02,$01,$3C,$3C,$3A,$37,$34 ; $A7E8CF
    db $30,$2C,$28,$24,$20,$1C,$18,$16,$12,$10,$0E,$0A,$08,$06,$04,$04 ; $A7E8DF
    db $04,$03,$03,$03,$02,$02,$02,$02,$02,$01,$4B,$44,$44,$44,$44,$3E ; $A7E8EF
    db $3E,$37,$37,$37,$37,$30,$30,$29,$29,$29,$22,$22,$22,$22,$22,$22 ; $A7E8FF
    db $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$02,$02,$02,$03,$03,$04 ; $A7E90F
    db $04,$04,$04,$04,$05,$05,$05,$06,$06,$07,$07,$07,$09,$0B,$0D,$0F ; $A7E91F
    db $11,$12,$14,$1E,$28,$3C,$50,$96,$FA,$01,$01,$02,$03,$03,$03,$03 ; $A7E92F
    db $04,$04,$05,$06,$07,$08,$0A,$0C,$0E,$10,$12,$14,$19,$1E,$23,$28 ; $A7E93F
    db $2D,$32,$32,$32,$32,$32,$32,$32,$00,$08,$04,$00,$01,$09,$05,$00 ; $A7E94F
    db $02,$0A,$06,$00,$00,$00,$00,$00,$00,$04,$08,$00,$02,$06,$0A,$00 ; $A7E95F
    db $01,$05,$09,$00,$00,$00,$00,$00                                 ; $A7E96F
L_A7E977:
    LDA #$0038                      ; $A7E977  A9 38 00     MX
    STA $002A                       ; $A7E97A  8D 2A 00     MX
    LDA #$0064                      ; $A7E97D  A9 64 00     MX
    STA $00EE                       ; $A7E980  8D EE 00     MX
    LDA #$0020                      ; $A7E983  A9 20 00     MX
    STA $00F0                       ; $A7E986  8D F0 00     MX
    LDA #$01A0                      ; $A7E989  A9 A0 01     MX
    STA $00F2                       ; $A7E98C  8D F2 00     MX
    JSL L_ABE007                    ; $A7E98F  22 07 E0 AB  MX
    LDA #$003C                      ; $A7E993  A9 3C 00     MX
    STA $002A                       ; $A7E996  8D 2A 00     MX
    LDA #$0064                      ; $A7E999  A9 64 00     MX
    STA $00EE                       ; $A7E99C  8D EE 00     MX
    LDA #$0020                      ; $A7E99F  A9 20 00     MX
    STA $00F0                       ; $A7E9A2  8D F0 00     MX
    LDA #$01A2                      ; $A7E9A5  A9 A2 01     MX
    STA $00F2                       ; $A7E9A8  8D F2 00     MX
    JSL L_ABE007                    ; $A7E9AB  22 07 E0 AB  MX
    LDA #$003A                      ; $A7E9AF  A9 3A 00     MX
    STA $002A                       ; $A7E9B2  8D 2A 00     MX
    LDA #$0064                      ; $A7E9B5  A9 64 00     MX
    STA $00EE                       ; $A7E9B8  8D EE 00     MX
    LDA #$0020                      ; $A7E9BB  A9 20 00     MX
    STA $00F0                       ; $A7E9BE  8D F0 00     MX
    LDA #$01A4                      ; $A7E9C1  A9 A4 01     MX
    STA $00F2                       ; $A7E9C4  8D F2 00     MX
    JSL L_ABE007                    ; $A7E9C7  22 07 E0 AB  MX
    LDA #$003C                      ; $A7E9CB  A9 3C 00     MX
    STA $002A                       ; $A7E9CE  8D 2A 00     MX
    LDA #$0064                      ; $A7E9D1  A9 64 00     MX
    STA $00EE                       ; $A7E9D4  8D EE 00     MX
    LDA #$0020                      ; $A7E9D7  A9 20 00     MX
    STA $00F0                       ; $A7E9DA  8D F0 00     MX
    LDA #$01A6                      ; $A7E9DD  A9 A6 01     MX
    STA $00F2                       ; $A7E9E0  8D F2 00     MX
    JSL L_ABE007                    ; $A7E9E3  22 07 E0 AB  MX
    LDA #$003C                      ; $A7E9E7  A9 3C 00     MX
    STA $002A                       ; $A7E9EA  8D 2A 00     MX
    LDA #$015E                      ; $A7E9ED  A9 5E 01     MX
    STA $00F2                       ; $A7E9F0  8D F2 00     MX
    LDA #$0020                      ; $A7E9F3  A9 20 00     MX
    STA $00EE                       ; $A7E9F6  8D EE 00     MX
    LDA #$0030                      ; $A7E9F9  A9 30 00     MX
    STA $00F0                       ; $A7E9FC  8D F0 00     MX
    JSL L_ABE007                    ; $A7E9FF  22 07 E0 AB  MX
    LDA #$0186                      ; $A7EA03  A9 86 01     MX
    STA $00F2                       ; $A7EA06  8D F2 00     MX
    LDA #$0020                      ; $A7EA09  A9 20 00     MX
    STA $00EE                       ; $A7EA0C  8D EE 00     MX
    LDA #$0030                      ; $A7EA0F  A9 30 00     MX
    STA $00F0                       ; $A7EA12  8D F0 00     MX
    JSL L_ABE007                    ; $A7EA15  22 07 E0 AB  MX
    LDA #$01A8                      ; $A7EA19  A9 A8 01     MX
    STA $00F2                       ; $A7EA1C  8D F2 00     MX
    LDA #$0020                      ; $A7EA1F  A9 20 00     MX
    STA $00EE                       ; $A7EA22  8D EE 00     MX
    LDA #$0030                      ; $A7EA25  A9 30 00     MX
    STA $00F0                       ; $A7EA28  8D F0 00     MX
    JSL L_ABE007                    ; $A7EA2B  22 07 E0 AB  MX
    LDA #$01AA                      ; $A7EA2F  A9 AA 01     MX
    STA $00F2                       ; $A7EA32  8D F2 00     MX
    LDA #$0020                      ; $A7EA35  A9 20 00     MX
    STA $00EE                       ; $A7EA38  8D EE 00     MX
    LDA #$0030                      ; $A7EA3B  A9 30 00     MX
    STA $00F0                       ; $A7EA3E  8D F0 00     MX
    JSL L_ABE007                    ; $A7EA41  22 07 E0 AB  MX
    RTL                             ; $A7EA45  6B           MX
L_A7EA46:
    LDA #$0038                      ; $A7EA46  A9 38 00     MX
    STA $002A                       ; $A7EA49  8D 2A 00     MX
    LDA #$0068                      ; $A7EA4C  A9 68 00     MX
    STA $00EE                       ; $A7EA4F  8D EE 00     MX
    LDA #$006C                      ; $A7EA52  A9 6C 00     MX
    STA $00F0                       ; $A7EA55  8D F0 00     MX
    LDA #$0198                      ; $A7EA58  A9 98 01     MX
    STA $00F2                       ; $A7EA5B  8D F2 00     MX
    JSL L_ABE000                    ; $A7EA5E  22 00 E0 AB  MX
    INC $00F2                       ; $A7EA62  EE F2 00     MX
    LDA #$0070                      ; $A7EA65  A9 70 00     MX
    STA $00EE                       ; $A7EA68  8D EE 00     MX
    JSL L_ABE000                    ; $A7EA6B  22 00 E0 AB  MX
    INC $00F2                       ; $A7EA6F  EE F2 00     MX
    LDA #$0078                      ; $A7EA72  A9 78 00     MX
    STA $00EE                       ; $A7EA75  8D EE 00     MX
    JSL L_ABE000                    ; $A7EA78  22 00 E0 AB  MX
    INC $00F2                       ; $A7EA7C  EE F2 00     MX
    LDA #$0080                      ; $A7EA7F  A9 80 00     MX
    STA $00EE                       ; $A7EA82  8D EE 00     MX
    JSL L_ABE000                    ; $A7EA85  22 00 E0 AB  MX
    INC $00F2                       ; $A7EA89  EE F2 00     MX
    LDA #$0088                      ; $A7EA8C  A9 88 00     MX
    STA $00EE                       ; $A7EA8F  8D EE 00     MX
    JSL L_ABE000                    ; $A7EA92  22 00 E0 AB  MX
    SEP #$10                        ; $A7EA96  E2 10        MX
    LDX #$E0                        ; $A7EA98  A2 E0        Mx
    STX $0335                       ; $A7EA9A  8E 35 03     Mx
    STX $0339                       ; $A7EA9D  8E 39 03     Mx
    STX $033D                       ; $A7EAA0  8E 3D 03     Mx
    STX $0341                       ; $A7EAA3  8E 41 03     Mx
    STX $0345                       ; $A7EAA6  8E 45 03     Mx
    REP #$10                        ; $A7EAA9  C2 10        Mx
    RTL                             ; $A7EAAB  6B           MX
L_A7EAAC:
    LDA #$0038                      ; $A7EAAC  A9 38 00     MX
    STA $002A                       ; $A7EAAF  8D 2A 00     MX
    LDA #$00AE                      ; $A7EAB2  A9 AE 00     MX
    STA $00EE                       ; $A7EAB5  8D EE 00     MX
    LDA #$00C6                      ; $A7EAB8  A9 C6 00     MX
    STA $00F0                       ; $A7EABB  8D F0 00     MX
    LDA #$0158                      ; $A7EABE  A9 58 01     MX
    STA $00F2                       ; $A7EAC1  8D F2 00     MX
    JSL L_ABE007                    ; $A7EAC4  22 07 E0 AB  MX
    LDA #$00BE                      ; $A7EAC8  A9 BE 00     MX
    STA $00EE                       ; $A7EACB  8D EE 00     MX
    INC $00F2                       ; $A7EACE  EE F2 00     MX
    INC $00F2                       ; $A7EAD1  EE F2 00     MX
    JSL L_ABE007                    ; $A7EAD4  22 07 E0 AB  MX
    LDA #$00CE                      ; $A7EAD8  A9 CE 00     MX
    STA $00EE                       ; $A7EADB  8D EE 00     MX
    INC $00F2                       ; $A7EADE  EE F2 00     MX
    INC $00F2                       ; $A7EAE1  EE F2 00     MX
    JSL L_ABE007                    ; $A7EAE4  22 07 E0 AB  MX
    LDA #$00B0                      ; $A7EAE8  A9 B0 00     MX
    STA $00EE                       ; $A7EAEB  8D EE 00     MX
    LDA #$00C8                      ; $A7EAEE  A9 C8 00     MX
    STA $00F0                       ; $A7EAF1  8D F0 00     MX
    LDA $0CC1                       ; $A7EAF4  AD C1 0C     MX
    CLC                             ; $A7EAF7  18           MX
    ADC #$0101                      ; $A7EAF8  69 01 01     MX
    STA $00F2                       ; $A7EAFB  8D F2 00     MX
    JSL $2BE000                     ; $A7EAFE  22 00 E0 2B  MX
    LDA #$00B8                      ; $A7EB02  A9 B8 00     MX
    STA $00EE                       ; $A7EB05  8D EE 00     MX
    LDA #$0100                      ; $A7EB08  A9 00 01     MX
    STA $00F2                       ; $A7EB0B  8D F2 00     MX
    JSL $2BE000                     ; $A7EB0E  22 00 E0 2B  MX
    LDA #$00C0                      ; $A7EB12  A9 C0 00     MX
    STA $00EE                       ; $A7EB15  8D EE 00     MX
    LDA $0CC3                       ; $A7EB18  AD C3 0C     MX
    CLC                             ; $A7EB1B  18           MX
    ADC #$0101                      ; $A7EB1C  69 01 01     MX
    STA $00F2                       ; $A7EB1F  8D F2 00     MX
    JSL $2BE000                     ; $A7EB22  22 00 E0 2B  MX
    LDA #$00C8                      ; $A7EB26  A9 C8 00     MX
    STA $00EE                       ; $A7EB29  8D EE 00     MX
    LDA $0CC5                       ; $A7EB2C  AD C5 0C     MX
    CLC                             ; $A7EB2F  18           MX
    ADC #$0101                      ; $A7EB30  69 01 01     MX
    STA $00F2                       ; $A7EB33  8D F2 00     MX
    JSL $2BE000                     ; $A7EB36  22 00 E0 2B  MX
    LDA #$003A                      ; $A7EB3A  A9 3A 00     MX
    STA $002A                       ; $A7EB3D  8D 2A 00     MX
    LDA #$0016                      ; $A7EB40  A9 16 00     MX
    STA $00EE                       ; $A7EB43  8D EE 00     MX
    LDA #$00B6                      ; $A7EB46  A9 B6 00     MX
    STA $00F0                       ; $A7EB49  8D F0 00     MX
    LDA #$011E                      ; $A7EB4C  A9 1E 01     MX
    STA $00F2                       ; $A7EB4F  8D F2 00     MX
    JSL L_ABE007                    ; $A7EB52  22 07 E0 AB  MX
    LDA #$0026                      ; $A7EB56  A9 26 00     MX
    STA $00EE                       ; $A7EB59  8D EE 00     MX
    LDA #$00B6                      ; $A7EB5C  A9 B6 00     MX
    STA $00F0                       ; $A7EB5F  8D F0 00     MX
    LDA #$013E                      ; $A7EB62  A9 3E 01     MX
    STA $00F2                       ; $A7EB65  8D F2 00     MX
    JSL L_ABE007                    ; $A7EB68  22 07 E0 AB  MX
    LDA #$0038                      ; $A7EB6C  A9 38 00     MX
    STA $002A                       ; $A7EB6F  8D 2A 00     MX
    LDA #$0016                      ; $A7EB72  A9 16 00     MX
    STA $00EE                       ; $A7EB75  8D EE 00     MX
    LDA #$00C6                      ; $A7EB78  A9 C6 00     MX
    STA $00F0                       ; $A7EB7B  8D F0 00     MX
    LDA #$0158                      ; $A7EB7E  A9 58 01     MX
    STA $00F2                       ; $A7EB81  8D F2 00     MX
    JSL L_ABE007                    ; $A7EB84  22 07 E0 AB  MX
    LDA #$0026                      ; $A7EB88  A9 26 00     MX
    STA $00EE                       ; $A7EB8B  8D EE 00     MX
    LDA $00F2                       ; $A7EB8E  AD F2 00     MX
    CLC                             ; $A7EB91  18           MX
    ADC #$0004                      ; $A7EB92  69 04 00     MX
    STA $00F2                       ; $A7EB95  8D F2 00     MX
    JSL L_ABE007                    ; $A7EB98  22 07 E0 AB  MX
    LDA #$0018                      ; $A7EB9C  A9 18 00     MX
    STA $00EE                       ; $A7EB9F  8D EE 00     MX
    LDA #$00C8                      ; $A7EBA2  A9 C8 00     MX
    STA $00F0                       ; $A7EBA5  8D F0 00     MX
    LDA $0CCD                       ; $A7EBA8  AD CD 0C     MX
    CLC                             ; $A7EBAB  18           MX
    ADC #$0101                      ; $A7EBAC  69 01 01     MX
    STA $00F2                       ; $A7EBAF  8D F2 00     MX
    JSL $2BE000                     ; $A7EBB2  22 00 E0 2B  MX
    LDA #$0020                      ; $A7EBB6  A9 20 00     MX
    STA $00EE                       ; $A7EBB9  8D EE 00     MX
    LDA $0CCF                       ; $A7EBBC  AD CF 0C     MX
    CLC                             ; $A7EBBF  18           MX
    ADC #$0101                      ; $A7EBC0  69 01 01     MX
    STA $00F2                       ; $A7EBC3  8D F2 00     MX
    JSL $2BE000                     ; $A7EBC6  22 00 E0 2B  MX
    RTL                             ; $A7EBCA  6B           MX
L_A7EBCB:
    LDA #$0007                      ; $A7EBCB  A9 07 00     Mx
    JSL L_BDFDF3                    ; $A7EBCE  22 F3 FD BD  Mx
    LDA #$0003                      ; $A7EBD2  A9 03 00     Mx
    STA $1609                       ; $A7EBD5  8D 09 16     Mx
    LDA #$000A                      ; $A7EBD8  A9 0A 00     Mx
    STA $160B                       ; $A7EBDB  8D 0B 16     Mx
    LDA #$00B4                      ; $A7EBDE  A9 B4 00     Mx
    STA $0B50                       ; $A7EBE1  8D 50 0B     Mx
    JSR L_A7EC82                    ; $A7EBE4  20 82 EC     Mx
    LDA #$0000                      ; $A7EBE7  A9 00 00     Mx
    STA $00A6                       ; $A7EBEA  8D A6 00     Mx
    LDA #$0400                      ; $A7EBED  A9 00 04     Mx
    STA $00A4                       ; $A7EBF0  8D A4 00     Mx
    LDA #$28C8                      ; $A7EBF3  A9 C8 28     Mx
    STA $00D1                       ; $A7EBF6  8D D1 00     Mx
    LDA #$CB70                      ; $A7EBF9  A9 70 CB     Mx
    REP #$10                        ; $A7EBFC  C2 10        Mx
    LDX #$0316                      ; $A7EBFE  A2 16 03     MX
    JSL L_80A4D5                    ; $A7EC01  22 D5 A4 80  MX
    LDX $0109                       ; $A7EC05  AE 09 01     MX
    LDA #$6008                      ; $A7EC08  A9 08 60     MX
    STA $7E2002,X                   ; $A7EC0B  9F 02 20 7E  MX
    LDA #$0140                      ; $A7EC0F  A9 40 01     MX
    STA $7E2000,X                   ; $A7EC12  9F 00 20 7E  MX
    LDA #$1801                      ; $A7EC16  A9 01 18     MX
    STA $7E2004,X                   ; $A7EC19  9F 04 20 7E  MX
    LDA #$8028                      ; $A7EC1D  A9 28 80     MX
    STA $7E2008,X                   ; $A7EC20  9F 08 20 7E  MX
    LDA #$CB9C                      ; $A7EC24  A9 9C CB     MX
    STA $7E2006,X                   ; $A7EC27  9F 06 20 7E  MX
    TXA                             ; $A7EC2B  8A           MX
    CLC                             ; $A7EC2C  18           MX
    ADC #$000A                      ; $A7EC2D  69 0A 00     MX
    TAX                             ; $A7EC30  AA           MX
    LDA #$5560                      ; $A7EC31  A9 60 55     MX
    STA $7E2002,X                   ; $A7EC34  9F 02 20 7E  MX
    LDA #$0200                      ; $A7EC38  A9 00 02     MX
    STA $7E2000,X                   ; $A7EC3B  9F 00 20 7E  MX
    LDA #$1801                      ; $A7EC3F  A9 01 18     MX
    STA $7E2004,X                   ; $A7EC42  9F 04 20 7E  MX
    LDA #$807F                      ; $A7EC46  A9 7F 80     MX
    STA $7E2008,X                   ; $A7EC49  9F 08 20 7E  MX
    LDA #$C2C0                      ; $A7EC4D  A9 C0 C2     MX
    STA $7E2006,X                   ; $A7EC50  9F 06 20 7E  MX
    TXA                             ; $A7EC54  8A           MX
    CLC                             ; $A7EC55  18           MX
    ADC #$000A                      ; $A7EC56  69 0A 00     MX
    TAX                             ; $A7EC59  AA           MX
    STA $0109                       ; $A7EC5A  8D 09 01     MX
    TAX                             ; $A7EC5D  AA           MX
    AND #$0000                      ; $A7EC5E  29 00 00     MX
    STA $7E2000,X                   ; $A7EC61  9F 00 20 7E  MX
    SEP #$10                        ; $A7EC65  E2 10        MX
    LDA $0BD9                       ; $A7EC67  AD D9 0B     Mx
    BPL L_A7EC78                    ; $A7EC6A  10 0C        Mx
    LDA $0C3B                       ; $A7EC6C  AD 3B 0C     Mx
    LDX #$04                        ; $A7EC6F  A2 04        Mx
    JSL $00A720                     ; $A7EC71  22 20 A7 00  Mx
    JMP L_A7EC81                    ; $A7EC75  4C 81 EC     Mx
L_A7EC78:
    LDA $0C3B                       ; $A7EC78  AD 3B 0C     Mx
    LDX #$04                        ; $A7EC7B  A2 04        Mx
    JSL $00A53A                     ; $A7EC7D  22 3A A5 00  Mx
L_A7EC81:
    RTL                             ; $A7EC81  6B           Mx
L_A7EC82:
    LDA #$0000                      ; $A7EC82  A9 00 00     Mx
    TAX                             ; $A7EC85  AA           Mx
L_A7EC86:
    STA $7FC2C0,X                   ; $A7EC86  9F C0 C2 7F  Mx
    INX                             ; $A7EC8A  E8           Mx
    INX                             ; $A7EC8B  E8           Mx
    BNE L_A7EC86                    ; $A7EC8C  D0 F8        Mx
    RTS                             ; $A7EC8E  60           Mx
L_A7EC8F:
    REP #$20                        ; $A7EC8F  C2 20        Mx
    SEP #$10                        ; $A7EC91  E2 10        Mx
    LDA $00BE                       ; $A7EC93  AD BE 00     Mx
    CMP #$0003                      ; $A7EC96  C9 03 00     Mx
    BEQ L_A7EC9E                    ; $A7EC99  F0 03        Mx
    SEP #$10                        ; $A7EC9B  E2 10        Mx
    RTL                             ; $A7EC9D  6B           Mx
L_A7EC9E:
    LDX $09A9                       ; $A7EC9E  AE A9 09     Mx
    BNE L_A7ED10                    ; $A7ECA1  D0 6D        Mx
    LDA $0006                       ; $A7ECA3  AD 06 00     Mx
    AND #$0040                      ; $A7ECA6  29 40 00     Mx
    BNE L_A7ECD4                    ; $A7ECA9  D0 29        Mx
    LDA #$0000                      ; $A7ECAB  A9 00 00     Mx
    STA $7FC074                     ; $A7ECAE  8F 74 C0 7F  Mx
    STA $7FC07E                     ; $A7ECB2  8F 7E C0 7F  Mx
    LDA $0B3A                       ; $A7ECB6  AD 3A 0B     Mx
    STA $7FC076                     ; $A7ECB9  8F 76 C0 7F  Mx
    LDA $0B3C                       ; $A7ECBD  AD 3C 0B     Mx
    STA $7FC078                     ; $A7ECC0  8F 78 C0 7F  Mx
    LDA $0B3E                       ; $A7ECC4  AD 3E 0B     Mx
    STA $7FC07A                     ; $A7ECC7  8F 7A C0 7F  Mx
    LDA $0B40                       ; $A7ECCB  AD 40 0B     Mx
    STA $7FC07C                     ; $A7ECCE  8F 7C C0 7F  Mx
    BRA L_A7ECFB                    ; $A7ECD2  80 27        Mx
L_A7ECD4:
    LDA #$0000                      ; $A7ECD4  A9 00 00     Mx
    STA $7FC074                     ; $A7ECD7  8F 74 C0 7F  Mx
    STA $7FC07E                     ; $A7ECDB  8F 7E C0 7F  Mx
    LDA $0B42                       ; $A7ECDF  AD 42 0B     Mx
    STA $7FC076                     ; $A7ECE2  8F 76 C0 7F  Mx
    LDA $0B44                       ; $A7ECE6  AD 44 0B     Mx
    STA $7FC078                     ; $A7ECE9  8F 78 C0 7F  Mx
    LDA $0B46                       ; $A7ECED  AD 46 0B     Mx
    STA $7FC07A                     ; $A7ECF0  8F 7A C0 7F  Mx
    LDA $0B48                       ; $A7ECF4  AD 48 0B     Mx
    STA $7FC07C                     ; $A7ECF7  8F 7C C0 7F  Mx
L_A7ECFB:
    LDA #$0000                      ; $A7ECFB  A9 00 00     Mx
    STA $7FC0B6                     ; $A7ECFE  8F B6 C0 7F  Mx
    STA $7FC0B8                     ; $A7ED02  8F B8 C0 7F  Mx
    STA $7FC0BA                     ; $A7ED06  8F BA C0 7F  Mx
    STA $7FC0BC                     ; $A7ED0A  8F BC C0 7F  Mx
    BRA L_A7ED65                    ; $A7ED0E  80 55        Mx
L_A7ED10:
    REP #$10                        ; $A7ED10  C2 10        Mx
    LDA $0A42                       ; $A7ED12  AD 42 0A     MX
    ASL                             ; $A7ED15  0A           MX
    ASL                             ; $A7ED16  0A           MX
    ASL                             ; $A7ED17  0A           MX
    TAX                             ; $A7ED18  AA           MX
    LDA #$204E                      ; $A7ED19  A9 4E 20     MX
    STA $7FC074                     ; $A7ED1C  8F 74 C0 7F  MX
    LDA #$2058                      ; $A7ED20  A9 58 20     MX
    STA $7FC07E                     ; $A7ED23  8F 7E C0 7F  MX
    LDA $00A3B1,X                   ; $A7ED27  BF B1 A3 00  MX
    STA $7FC076                     ; $A7ED2B  8F 76 C0 7F  MX
    LDA $00A3B3,X                   ; $A7ED2F  BF B3 A3 00  MX
    STA $7FC078                     ; $A7ED33  8F 78 C0 7F  MX
    LDA $00A3B5,X                   ; $A7ED37  BF B5 A3 00  MX
    STA $7FC07A                     ; $A7ED3B  8F 7A C0 7F  MX
    LDA $00A3B7,X                   ; $A7ED3F  BF B7 A3 00  MX
    STA $7FC07C                     ; $A7ED43  8F 7C C0 7F  MX
    LDA #$2C59                      ; $A7ED47  A9 59 2C     MX
    STA $7FC0B6                     ; $A7ED4A  8F B6 C0 7F  MX
    LDA #$2C5A                      ; $A7ED4E  A9 5A 2C     MX
    STA $7FC0B8                     ; $A7ED51  8F B8 C0 7F  MX
    LDA #$2C5B                      ; $A7ED55  A9 5B 2C     MX
    STA $7FC0BA                     ; $A7ED58  8F BA C0 7F  MX
    LDA #$2C5C                      ; $A7ED5C  A9 5C 2C     MX
    STA $7FC0BC                     ; $A7ED5F  8F BC C0 7F  MX
    SEP #$10                        ; $A7ED63  E2 10        MX
L_A7ED65:
    LDX $08C1                       ; $A7ED65  AE C1 08     Mx
    BNE L_A7EDD7                    ; $A7ED68  D0 6D        Mx
    LDA $0006                       ; $A7ED6A  AD 06 00     Mx
    AND #$0040                      ; $A7ED6D  29 40 00     Mx
    BNE L_A7ED9B                    ; $A7ED70  D0 29        Mx
    LDA #$0000                      ; $A7ED72  A9 00 00     Mx
    STA $7FC066                     ; $A7ED75  8F 66 C0 7F  Mx
    STA $7FC070                     ; $A7ED79  8F 70 C0 7F  Mx
    LDA $0B2A                       ; $A7ED7D  AD 2A 0B     Mx
    STA $7FC068                     ; $A7ED80  8F 68 C0 7F  Mx
    LDA $0B2C                       ; $A7ED84  AD 2C 0B     Mx
    STA $7FC06A                     ; $A7ED87  8F 6A C0 7F  Mx
    LDA $0B2E                       ; $A7ED8B  AD 2E 0B     Mx
    STA $7FC06C                     ; $A7ED8E  8F 6C C0 7F  Mx
    LDA $0B30                       ; $A7ED92  AD 30 0B     Mx
    STA $7FC06E                     ; $A7ED95  8F 6E C0 7F  Mx
    BRA L_A7EDC2                    ; $A7ED99  80 27        Mx
L_A7ED9B:
    LDA #$0000                      ; $A7ED9B  A9 00 00     Mx
    STA $7FC066                     ; $A7ED9E  8F 66 C0 7F  Mx
    STA $7FC070                     ; $A7EDA2  8F 70 C0 7F  Mx
    LDA $0B32                       ; $A7EDA6  AD 32 0B     Mx
    STA $7FC068                     ; $A7EDA9  8F 68 C0 7F  Mx
    LDA $0B34                       ; $A7EDAD  AD 34 0B     Mx
    STA $7FC06A                     ; $A7EDB0  8F 6A C0 7F  Mx
    LDA $0B36                       ; $A7EDB4  AD 36 0B     Mx
    STA $7FC06C                     ; $A7EDB7  8F 6C C0 7F  Mx
    LDA $0B38                       ; $A7EDBB  AD 38 0B     Mx
    STA $7FC06E                     ; $A7EDBE  8F 6E C0 7F  Mx
L_A7EDC2:
    LDA #$0000                      ; $A7EDC2  A9 00 00     Mx
    STA $7FC0A8                     ; $A7EDC5  8F A8 C0 7F  Mx
    STA $7FC0AA                     ; $A7EDC9  8F AA C0 7F  Mx
    STA $7FC0AC                     ; $A7EDCD  8F AC C0 7F  Mx
    STA $7FC0AE                     ; $A7EDD1  8F AE C0 7F  Mx
    BRA L_A7EE2C                    ; $A7EDD5  80 55        Mx
L_A7EDD7:
    REP #$10                        ; $A7EDD7  C2 10        Mx
    LDA $095A                       ; $A7EDD9  AD 5A 09     MX
    ASL                             ; $A7EDDC  0A           MX
    ASL                             ; $A7EDDD  0A           MX
    ASL                             ; $A7EDDE  0A           MX
    TAX                             ; $A7EDDF  AA           MX
    LDA #$204E                      ; $A7EDE0  A9 4E 20     MX
    STA $7FC066                     ; $A7EDE3  8F 66 C0 7F  MX
    LDA #$2058                      ; $A7EDE7  A9 58 20     MX
    STA $7FC070                     ; $A7EDEA  8F 70 C0 7F  MX
    LDA $00A2A9,X                   ; $A7EDEE  BF A9 A2 00  MX
    STA $7FC068                     ; $A7EDF2  8F 68 C0 7F  MX
    LDA $00A2AB,X                   ; $A7EDF6  BF AB A2 00  MX
    STA $7FC06A                     ; $A7EDFA  8F 6A C0 7F  MX
    LDA $00A2AD,X                   ; $A7EDFE  BF AD A2 00  MX
    STA $7FC06C                     ; $A7EE02  8F 6C C0 7F  MX
    LDA $00A2AF,X                   ; $A7EE06  BF AF A2 00  MX
    STA $7FC06E                     ; $A7EE0A  8F 6E C0 7F  MX
    LDA #$2C59                      ; $A7EE0E  A9 59 2C     MX
    STA $7FC0A8                     ; $A7EE11  8F A8 C0 7F  MX
    LDA #$2C5A                      ; $A7EE15  A9 5A 2C     MX
    STA $7FC0AA                     ; $A7EE18  8F AA C0 7F  MX
    LDA #$2C5B                      ; $A7EE1C  A9 5B 2C     MX
    STA $7FC0AC                     ; $A7EE1F  8F AC C0 7F  MX
    LDA #$2C5C                      ; $A7EE23  A9 5C 2C     MX
    STA $7FC0AE                     ; $A7EE26  8F AE C0 7F  MX
    SEP #$10                        ; $A7EE2A  E2 10        MX
L_A7EE2C:
    LDX $07D9                       ; $A7EE2C  AE D9 07     Mx
    BNE L_A7EE9E                    ; $A7EE2F  D0 6D        Mx
    LDA $0006                       ; $A7EE31  AD 06 00     Mx
    AND #$0040                      ; $A7EE34  29 40 00     Mx
    BNE L_A7EE62                    ; $A7EE37  D0 29        Mx
    LDA #$0000                      ; $A7EE39  A9 00 00     Mx
    STA $7FC04E                     ; $A7EE3C  8F 4E C0 7F  Mx
    STA $7FC058                     ; $A7EE40  8F 58 C0 7F  Mx
    LDA $0B1A                       ; $A7EE44  AD 1A 0B     Mx
    STA $7FC050                     ; $A7EE47  8F 50 C0 7F  Mx
    LDA $0B1C                       ; $A7EE4B  AD 1C 0B     Mx
    STA $7FC052                     ; $A7EE4E  8F 52 C0 7F  Mx
    LDA $0B1E                       ; $A7EE52  AD 1E 0B     Mx
    STA $7FC054                     ; $A7EE55  8F 54 C0 7F  Mx
    LDA $0B20                       ; $A7EE59  AD 20 0B     Mx
    STA $7FC056                     ; $A7EE5C  8F 56 C0 7F  Mx
    BRA L_A7EE89                    ; $A7EE60  80 27        Mx
L_A7EE62:
    LDA #$0000                      ; $A7EE62  A9 00 00     Mx
    STA $7FC04E                     ; $A7EE65  8F 4E C0 7F  Mx
    STA $7FC058                     ; $A7EE69  8F 58 C0 7F  Mx
    LDA $0B22                       ; $A7EE6D  AD 22 0B     Mx
    STA $7FC050                     ; $A7EE70  8F 50 C0 7F  Mx
    LDA $0B24                       ; $A7EE74  AD 24 0B     Mx
    STA $7FC052                     ; $A7EE77  8F 52 C0 7F  Mx
    LDA $0B26                       ; $A7EE7B  AD 26 0B     Mx
    STA $7FC054                     ; $A7EE7E  8F 54 C0 7F  Mx
    LDA $0B28                       ; $A7EE82  AD 28 0B     Mx
    STA $7FC056                     ; $A7EE85  8F 56 C0 7F  Mx
L_A7EE89:
    LDA #$0000                      ; $A7EE89  A9 00 00     Mx
    STA $7FC090                     ; $A7EE8C  8F 90 C0 7F  Mx
    STA $7FC092                     ; $A7EE90  8F 92 C0 7F  Mx
    STA $7FC094                     ; $A7EE94  8F 94 C0 7F  Mx
    STA $7FC096                     ; $A7EE98  8F 96 C0 7F  Mx
    BRA L_A7EEF3                    ; $A7EE9C  80 55        Mx
L_A7EE9E:
    REP #$10                        ; $A7EE9E  C2 10        Mx
    LDA $0872                       ; $A7EEA0  AD 72 08     MX
    ASL                             ; $A7EEA3  0A           MX
    ASL                             ; $A7EEA4  0A           MX
    ASL                             ; $A7EEA5  0A           MX
    TAX                             ; $A7EEA6  AA           MX
    LDA #$204E                      ; $A7EEA7  A9 4E 20     MX
    STA $7FC04E                     ; $A7EEAA  8F 4E C0 7F  MX
    LDA #$2058                      ; $A7EEAE  A9 58 20     MX
    STA $7FC058                     ; $A7EEB1  8F 58 C0 7F  MX
    LDA $00A1A1,X                   ; $A7EEB5  BF A1 A1 00  MX
    STA $7FC050                     ; $A7EEB9  8F 50 C0 7F  MX
    LDA $00A1A3,X                   ; $A7EEBD  BF A3 A1 00  MX
    STA $7FC052                     ; $A7EEC1  8F 52 C0 7F  MX
    LDA $00A1A5,X                   ; $A7EEC5  BF A5 A1 00  MX
    STA $7FC054                     ; $A7EEC9  8F 54 C0 7F  MX
    LDA $00A1A7,X                   ; $A7EECD  BF A7 A1 00  MX
    STA $7FC056                     ; $A7EED1  8F 56 C0 7F  MX
    LDA #$2C59                      ; $A7EED5  A9 59 2C     MX
    STA $7FC090                     ; $A7EED8  8F 90 C0 7F  MX
    LDA #$2C5A                      ; $A7EEDC  A9 5A 2C     MX
    STA $7FC092                     ; $A7EEDF  8F 92 C0 7F  MX
    LDA #$2C5B                      ; $A7EEE3  A9 5B 2C     MX
    STA $7FC094                     ; $A7EEE6  8F 94 C0 7F  MX
    LDA #$2C5C                      ; $A7EEEA  A9 5C 2C     MX
    STA $7FC096                     ; $A7EEED  8F 96 C0 7F  MX
    SEP #$10                        ; $A7EEF1  E2 10        MX
L_A7EEF3:
    LDX $06F1                       ; $A7EEF3  AE F1 06     Mx
    BNE L_A7EF65                    ; $A7EEF6  D0 6D        Mx
    LDA $0006                       ; $A7EEF8  AD 06 00     Mx
    AND #$0040                      ; $A7EEFB  29 40 00     Mx
    BNE L_A7EF29                    ; $A7EEFE  D0 29        Mx
    LDA #$0000                      ; $A7EF00  A9 00 00     Mx
    STA $7FC040                     ; $A7EF03  8F 40 C0 7F  Mx
    STA $7FC04A                     ; $A7EF07  8F 4A C0 7F  Mx
    LDA $0B0A                       ; $A7EF0B  AD 0A 0B     Mx
    STA $7FC042                     ; $A7EF0E  8F 42 C0 7F  Mx
    LDA $0B0C                       ; $A7EF12  AD 0C 0B     Mx
    STA $7FC044                     ; $A7EF15  8F 44 C0 7F  Mx
    LDA $0B0E                       ; $A7EF19  AD 0E 0B     Mx
    STA $7FC046                     ; $A7EF1C  8F 46 C0 7F  Mx
    LDA $0B10                       ; $A7EF20  AD 10 0B     Mx
    STA $7FC048                     ; $A7EF23  8F 48 C0 7F  Mx
    BRA L_A7EF50                    ; $A7EF27  80 27        Mx
L_A7EF29:
    LDA #$0000                      ; $A7EF29  A9 00 00     Mx
    STA $7FC040                     ; $A7EF2C  8F 40 C0 7F  Mx
    STA $7FC04A                     ; $A7EF30  8F 4A C0 7F  Mx
    LDA $0B12                       ; $A7EF34  AD 12 0B     Mx
    STA $7FC042                     ; $A7EF37  8F 42 C0 7F  Mx
    LDA $0B14                       ; $A7EF3B  AD 14 0B     Mx
    STA $7FC044                     ; $A7EF3E  8F 44 C0 7F  Mx
    LDA $0B16                       ; $A7EF42  AD 16 0B     Mx
    STA $7FC046                     ; $A7EF45  8F 46 C0 7F  Mx
    LDA $0B18                       ; $A7EF49  AD 18 0B     Mx
    STA $7FC048                     ; $A7EF4C  8F 48 C0 7F  Mx
L_A7EF50:
    LDA #$0000                      ; $A7EF50  A9 00 00     Mx
    STA $7FC082                     ; $A7EF53  8F 82 C0 7F  Mx
    STA $7FC084                     ; $A7EF57  8F 84 C0 7F  Mx
    STA $7FC086                     ; $A7EF5B  8F 86 C0 7F  Mx
    STA $7FC088                     ; $A7EF5F  8F 88 C0 7F  Mx
    BRA L_A7EFBA                    ; $A7EF63  80 55        Mx
L_A7EF65:
    REP #$10                        ; $A7EF65  C2 10        Mx
    LDA $078A                       ; $A7EF67  AD 8A 07     MX
    ASL                             ; $A7EF6A  0A           MX
    ASL                             ; $A7EF6B  0A           MX
    ASL                             ; $A7EF6C  0A           MX
    TAX                             ; $A7EF6D  AA           MX
    LDA #$204E                      ; $A7EF6E  A9 4E 20     MX
    STA $7FC040                     ; $A7EF71  8F 40 C0 7F  MX
    LDA #$2058                      ; $A7EF75  A9 58 20     MX
    STA $7FC04A                     ; $A7EF78  8F 4A C0 7F  MX
    LDA $00A099,X                   ; $A7EF7C  BF 99 A0 00  MX
    STA $7FC042                     ; $A7EF80  8F 42 C0 7F  MX
    LDA $00A09B,X                   ; $A7EF84  BF 9B A0 00  MX
    STA $7FC044                     ; $A7EF88  8F 44 C0 7F  MX
    LDA $00A09D,X                   ; $A7EF8C  BF 9D A0 00  MX
    STA $7FC046                     ; $A7EF90  8F 46 C0 7F  MX
    LDA $00A09F,X                   ; $A7EF94  BF 9F A0 00  MX
    STA $7FC048                     ; $A7EF98  8F 48 C0 7F  MX
    LDA #$2C59                      ; $A7EF9C  A9 59 2C     MX
    STA $7FC082                     ; $A7EF9F  8F 82 C0 7F  MX
    LDA #$2C5A                      ; $A7EFA3  A9 5A 2C     MX
    STA $7FC084                     ; $A7EFA6  8F 84 C0 7F  MX
    LDA #$2C5B                      ; $A7EFAA  A9 5B 2C     MX
    STA $7FC086                     ; $A7EFAD  8F 86 C0 7F  MX
    LDA #$2C5C                      ; $A7EFB1  A9 5C 2C     MX
    STA $7FC088                     ; $A7EFB4  8F 88 C0 7F  MX
    SEP #$10                        ; $A7EFB8  E2 10        MX
L_A7EFBA:
    REP #$10                        ; $A7EFBA  C2 10        Mx
    LDX $0109                       ; $A7EFBC  AE 09 01     MX
    LDA #$5400                      ; $A7EFBF  A9 00 54     MX
    STA $7E2002,X                   ; $A7EFC2  9F 02 20 7E  MX
    LDA #$00C0                      ; $A7EFC6  A9 C0 00     MX
    STA $7E2000,X                   ; $A7EFC9  9F 00 20 7E  MX
    LDA #$1801                      ; $A7EFCD  A9 01 18     MX
    STA $7E2004,X                   ; $A7EFD0  9F 04 20 7E  MX
    LDA #$807F                      ; $A7EFD4  A9 7F 80     MX
    STA $7E2008,X                   ; $A7EFD7  9F 08 20 7E  MX
    LDA #$C000                      ; $A7EFDB  A9 00 C0     MX
    STA $7E2006,X                   ; $A7EFDE  9F 06 20 7E  MX
    TXA                             ; $A7EFE2  8A           MX
    CLC                             ; $A7EFE3  18           MX
    ADC #$000A                      ; $A7EFE4  69 0A 00     MX
    STA $0109                       ; $A7EFE7  8D 09 01     MX
    TAX                             ; $A7EFEA  AA           MX
    AND #$0000                      ; $A7EFEB  29 00 00     MX
    STA $7E2000,X                   ; $A7EFEE  9F 00 20 7E  MX
    SEP #$10                        ; $A7EFF2  E2 10        MX
    RTL                             ; $A7EFF4  6B           Mx
L_A7EFF5:
    LDA $0CB5                       ; $A7EFF5  AD B5 0C     Mx
    CMP $0CBB                       ; $A7EFF8  CD BB 0C     Mx
    BNE L_A7F010                    ; $A7EFFB  D0 13        Mx
    LDA $0CB7                       ; $A7EFFD  AD B7 0C     Mx
    CMP $0CBD                       ; $A7F000  CD BD 0C     Mx
    BNE L_A7F010                    ; $A7F003  D0 0B        Mx
    LDA $0CB9                       ; $A7F005  AD B9 0C     Mx
    CMP $0CBF                       ; $A7F008  CD BF 0C     Mx
    BNE L_A7F010                    ; $A7F00B  D0 03        Mx
    JMP L_A7F113                    ; $A7F00D  4C 13 F1     Mx
L_A7F010:
    BCC L_A7F06A                    ; $A7F010  90 58        Mx
    JSL L_80B1A2                    ; $A7F012  22 A2 B1 80  Mx
    LDA #$0069                      ; $A7F016  A9 69 00     Mx
    STA $00A6                       ; $A7F019  8D A6 00     Mx
    LDA #$0400                      ; $A7F01C  A9 00 04     Mx
    STA $00A4                       ; $A7F01F  8D A4 00     Mx
    LDA $1683                       ; $A7F022  AD 83 16     Mx
    AND #$001F                      ; $A7F025  29 1F 00     Mx
    STA $00BA                       ; $A7F028  8D BA 00     Mx
    ASL                             ; $A7F02B  0A           Mx
    ASL                             ; $A7F02C  0A           Mx
    TAX                             ; $A7F02D  AA           Mx
    LDA #$17A9                      ; $A7F02E  A9 A9 17     Mx
    STA $00D1                       ; $A7F031  8D D1 00     Mx
    LDA $97A91E,X                   ; $A7F034  BF 1E A9 97  Mx
    PHA                             ; $A7F038  48           Mx
    TXA                             ; $A7F039  8A           Mx
    LSR                             ; $A7F03A  4A           Mx
    TAX                             ; $A7F03B  AA           Mx
    LDA $A7F1C5,X                   ; $A7F03C  BF C5 F1 A7  Mx
    ASL                             ; $A7F040  0A           Mx
    STA $00B2                       ; $A7F041  8D B2 00     Mx
    CLC                             ; $A7F044  18           Mx
    ADC #$000A                      ; $A7F045  69 0A 00     Mx
    SEC                             ; $A7F048  38           Mx
    SBC #$0040                      ; $A7F049  E9 40 00     Mx
    BPL L_A7F055                    ; $A7F04C  10 07        Mx
    EOR #$FFFF                      ; $A7F04E  49 FF FF     Mx
    CLC                             ; $A7F051  18           Mx
    ADC #$0001                      ; $A7F052  69 01 00     Mx
L_A7F055:
    LSR                             ; $A7F055  4A           Mx
    AND #$00FE                      ; $A7F056  29 FE 00     Mx
    CLC                             ; $A7F059  18           Mx
    ADC #$0300                      ; $A7F05A  69 00 03     Mx
    STA $00B0                       ; $A7F05D  8D B0 00     Mx
    REP #$10                        ; $A7F060  C2 10        Mx
    TAX                             ; $A7F062  AA           MX
    PLA                             ; $A7F063  68           MX
    JSL L_80A4D5                    ; $A7F064  22 D5 A4 80  MX
    BRA L_A7F0C0                    ; $A7F068  80 56        MX
L_A7F06A:
    JSL L_80B1A2                    ; $A7F06A  22 A2 B1 80  Mx
    LDA #$007F                      ; $A7F06E  A9 7F 00     Mx
    STA $00A6                       ; $A7F071  8D A6 00     Mx
    LDA #$0400                      ; $A7F074  A9 00 04     Mx
    STA $00A4                       ; $A7F077  8D A4 00     Mx
    LDA $1685                       ; $A7F07A  AD 85 16     Mx
    AND #$001F                      ; $A7F07D  29 1F 00     Mx
    STA $00BA                       ; $A7F080  8D BA 00     Mx
    ASL                             ; $A7F083  0A           Mx
    ASL                             ; $A7F084  0A           Mx
    TAX                             ; $A7F085  AA           Mx
    LDA #$17A9                      ; $A7F086  A9 A9 17     Mx
    STA $00D1                       ; $A7F089  8D D1 00     Mx
    LDA $97A91E,X                   ; $A7F08C  BF 1E A9 97  Mx
    PHA                             ; $A7F090  48           Mx
    TXA                             ; $A7F091  8A           Mx
    LSR                             ; $A7F092  4A           Mx
    TAX                             ; $A7F093  AA           Mx
    LDA $A7F1C5,X                   ; $A7F094  BF C5 F1 A7  Mx
    ASL                             ; $A7F098  0A           Mx
    STA $00B2                       ; $A7F099  8D B2 00     Mx
    CLC                             ; $A7F09C  18           Mx
    ADC #$000A                      ; $A7F09D  69 0A 00     Mx
    SEC                             ; $A7F0A0  38           Mx
    SBC #$0040                      ; $A7F0A1  E9 40 00     Mx
    BPL L_A7F0AD                    ; $A7F0A4  10 07        Mx
    EOR #$FFFF                      ; $A7F0A6  49 FF FF     Mx
    CLC                             ; $A7F0A9  18           Mx
    ADC #$0001                      ; $A7F0AA  69 01 00     Mx
L_A7F0AD:
    LSR                             ; $A7F0AD  4A           Mx
    AND #$00FE                      ; $A7F0AE  29 FE 00     Mx
    CLC                             ; $A7F0B1  18           Mx
    ADC #$0300                      ; $A7F0B2  69 00 03     Mx
    STA $00B0                       ; $A7F0B5  8D B0 00     Mx
    REP #$10                        ; $A7F0B8  C2 10        Mx
    TAX                             ; $A7F0BA  AA           MX
    PLA                             ; $A7F0BB  68           MX
    JSL L_80A4D5                    ; $A7F0BC  22 D5 A4 80  MX
L_A7F0C0:
    LDA #$0010                      ; $A7F0C0  A9 10 00     MX
    STA $00A6                       ; $A7F0C3  8D A6 00     MX
    LDA #$0400                      ; $A7F0C6  A9 00 04     MX
    STA $00A4                       ; $A7F0C9  8D A4 00     MX
    LDA #$28C8                      ; $A7F0CC  A9 C8 28     MX
    STA $00D1                       ; $A7F0CF  8D D1 00     MX
    LDA #$D43C                      ; $A7F0D2  A9 3C D4     MX
    STA $00A8                       ; $A7F0D5  8D A8 00     MX
    REP #$10                        ; $A7F0D8  C2 10        MX
    LDA $00B2                       ; $A7F0DA  AD B2 00     MX
    CLC                             ; $A7F0DD  18           MX
    ADC $00B0                       ; $A7F0DE  6D B0 00     MX
    TAX                             ; $A7F0E1  AA           MX
    LDA $00BA                       ; $A7F0E2  AD BA 00     MX
    CMP #$0001                      ; $A7F0E5  C9 01 00     MX
    BEQ L_A7F0EF                    ; $A7F0E8  F0 05        MX
    CMP #$0002                      ; $A7F0EA  C9 02 00     MX
    BNE L_A7F0F4                    ; $A7F0ED  D0 05        MX
L_A7F0EF:
    LDA #$D424                      ; $A7F0EF  A9 24 D4     MX
    BRA L_A7F0F7                    ; $A7F0F2  80 03        MX
L_A7F0F4:
    LDA #$D40C                      ; $A7F0F4  A9 0C D4     MX
L_A7F0F7:
    JSL L_80A4D5                    ; $A7F0F7  22 D5 A4 80  MX
    LDA #$00B0                      ; $A7F0FB  A9 B0 00     MX
    STA $00AA                       ; $A7F0FE  8D AA 00     MX
    LDA #$6088                      ; $A7F101  A9 88 60     MX
    JSR L_A7F167                    ; $A7F104  20 67 F1     MX
    SEP #$10                        ; $A7F107  E2 10        MX
    LDA #$0001                      ; $A7F109  A9 01 00     Mx
    STA $0B50                       ; $A7F10C  8D 50 0B     Mx
    AND #$0000                      ; $A7F10F  29 00 00     Mx
    RTL                             ; $A7F112  6B           Mx
L_A7F113:
    JSL L_80B1A2                    ; $A7F113  22 A2 B1 80  Mx
    LDA #$0000                      ; $A7F117  A9 00 00     Mx
    STA $00A6                       ; $A7F11A  8D A6 00     Mx
    LDA #$0400                      ; $A7F11D  A9 00 04     Mx
    STA $00A4                       ; $A7F120  8D A4 00     Mx
    LDA #$28C8                      ; $A7F123  A9 C8 28     Mx
    STA $00D1                       ; $A7F126  8D D1 00     Mx
    LDA $0CD5                       ; $A7F129  AD D5 0C     Mx
    SEC                             ; $A7F12C  38           Mx
    SBC #$0003                      ; $A7F12D  E9 03 00     Mx
    ASL                             ; $A7F130  0A           Mx
    STA $00AA                       ; $A7F131  8D AA 00     Mx
    ASL                             ; $A7F134  0A           Mx
    CLC                             ; $A7F135  18           Mx
    ADC $00AA                       ; $A7F136  6D AA 00     Mx
    TAX                             ; $A7F139  AA           Mx
    LDA $A7F1FF,X                   ; $A7F13A  BF FF F1 A7  Mx
    STA $00A8                       ; $A7F13E  8D A8 00     Mx
    LDA $A7F201,X                   ; $A7F141  BF 01 F2 A7  Mx
    PHA                             ; $A7F145  48           Mx
    LDA $A7F203,X                   ; $A7F146  BF 03 F2 A7  Mx
    REP #$10                        ; $A7F14A  C2 10        Mx
    TAX                             ; $A7F14C  AA           MX
    PLA                             ; $A7F14D  68           MX
    JSL L_80A4D5                    ; $A7F14E  22 D5 A4 80  MX
    LDA #$0200                      ; $A7F152  A9 00 02     MX
    STA $00AA                       ; $A7F155  8D AA 00     MX
    LDA #$6008                      ; $A7F158  A9 08 60     MX
    JSR L_A7F167                    ; $A7F15B  20 67 F1     MX
    SEP #$10                        ; $A7F15E  E2 10        MX
    LDA #$0001                      ; $A7F160  A9 01 00     Mx
    STA $0B50                       ; $A7F163  8D 50 0B     Mx
    RTL                             ; $A7F166  6B           Mx
L_A7F167:
    LDX $0109                       ; $A7F167  AE 09 01     MX
    STA $7E2002,X                   ; $A7F16A  9F 02 20 7E  MX
    LDA $00AA                       ; $A7F16E  AD AA 00     MX
    STA $7E2000,X                   ; $A7F171  9F 00 20 7E  MX
    LDA #$1801                      ; $A7F175  A9 01 18     MX
    STA $7E2004,X                   ; $A7F178  9F 04 20 7E  MX
    LDA #$8028                      ; $A7F17C  A9 28 80     MX
    STA $7E2008,X                   ; $A7F17F  9F 08 20 7E  MX
    LDA $00A8                       ; $A7F183  AD A8 00     MX
    STA $7E2006,X                   ; $A7F186  9F 06 20 7E  MX
    TXA                             ; $A7F18A  8A           MX
    CLC                             ; $A7F18B  18           MX
    ADC #$000A                      ; $A7F18C  69 0A 00     MX
    TAX                             ; $A7F18F  AA           MX
    LDA #$5560                      ; $A7F190  A9 60 55     MX
    STA $7E2002,X                   ; $A7F193  9F 02 20 7E  MX
    LDA #$0100                      ; $A7F197  A9 00 01     MX
    STA $7E2000,X                   ; $A7F19A  9F 00 20 7E  MX
    LDA #$1801                      ; $A7F19E  A9 01 18     MX
    STA $7E2004,X                   ; $A7F1A1  9F 04 20 7E  MX
    LDA #$807F                      ; $A7F1A5  A9 7F 80     MX
    STA $7E2008,X                   ; $A7F1A8  9F 08 20 7E  MX
    LDA #$C2C0                      ; $A7F1AC  A9 C0 C2     MX
    STA $7E2006,X                   ; $A7F1AF  9F 06 20 7E  MX
    TXA                             ; $A7F1B3  8A           MX
    CLC                             ; $A7F1B4  18           MX
    ADC #$000A                      ; $A7F1B5  69 0A 00     MX
    TAX                             ; $A7F1B8  AA           MX
    STA $0109                       ; $A7F1B9  8D 09 01     MX
    TAX                             ; $A7F1BC  AA           MX
    AND #$0000                      ; $A7F1BD  29 00 00     MX
    STA $7E2000,X                   ; $A7F1C0  9F 00 20 7E  MX
    RTS                             ; $A7F1C4  60           MX
    db $0C,$00,$0B,$00,$0A,$00,$07,$00,$08,$00,$07,$00,$0A,$00,$06,$00 ; $A7F1C5
    db $06,$00,$07,$00,$09,$00,$0A,$00,$05,$00,$07,$00,$09,$00,$07,$00 ; $A7F1D5
    db $09,$00,$07,$00,$06,$00,$09,$00,$06,$00,$05,$00,$0A,$00,$08,$00 ; $A7F1E5
    db $07,$00,$0B,$00,$0A,$00,$0C,$00,$0B,$00,$00,$CD,$DC,$CC,$18,$03 ; $A7F1F5
    db $3C,$CE,$00,$CE,$12,$03,$28,$D0,$EC,$CF,$12,$03,$0C,$D2,$C8,$D1 ; $A7F205
    db $10,$03,$00,$CD,$DC,$CC,$18,$03,$00,$CD,$DC,$CC,$18,$03         ; $A7F215
L_A7F223:
    SEP #$20                        ; $A7F223  E2 20        Mx
    REP #$10                        ; $A7F225  C2 10        mx
    LDX #$0002                      ; $A7F227  A2 02 00     mX
L_A7F22A:
    STZ $06F0,X                     ; $A7F22A  9E F0 06     mX
    STZ $07D8,X                     ; $A7F22D  9E D8 07     mX
    STZ $08C0,X                     ; $A7F230  9E C0 08     mX
    STZ $09A8,X                     ; $A7F233  9E A8 09     mX
    INX                             ; $A7F236  E8           mX
    CPX #$00C6                      ; $A7F237  E0 C6 00     mX
    BNE L_A7F22A                    ; $A7F23A  D0 EE        mX
    SEP #$10                        ; $A7F23C  E2 10        mX
    REP #$20                        ; $A7F23E  C2 20        mx
    LDA #$FFC7                      ; $A7F240  A9 C7 FF     Mx
    STA $071E                       ; $A7F243  8D 1E 07     Mx
    LDA #$034A                      ; $A7F246  A9 4A 03     Mx
    STA $0726                       ; $A7F249  8D 26 07     Mx
    LDA #$FFF0                      ; $A7F24C  A9 F0 FF     Mx
    STA $0806                       ; $A7F24F  8D 06 08     Mx
    LDA #$0373                      ; $A7F252  A9 73 03     Mx
    STA $080E                       ; $A7F255  8D 0E 08     Mx
    LDA #$0014                      ; $A7F258  A9 14 00     Mx
    STA $08EE                       ; $A7F25B  8D EE 08     Mx
    LDA #$0375                      ; $A7F25E  A9 75 03     Mx
    STA $08F6                       ; $A7F261  8D F6 08     Mx
    LDA #$0044                      ; $A7F264  A9 44 00     Mx
    STA $09D6                       ; $A7F267  8D D6 09     Mx
    LDA #$038E                      ; $A7F26A  A9 8E 03     Mx
    STA $09DE                       ; $A7F26D  8D DE 09     Mx
    LDA #$0000                      ; $A7F270  A9 00 00     Mx
    STA $06F4                       ; $A7F273  8D F4 06     Mx
    LDA #$003C                      ; $A7F276  A9 3C 00     Mx
    STA $07DC                       ; $A7F279  8D DC 07     Mx
    LDA #$003C                      ; $A7F27C  A9 3C 00     Mx
    STA $08C4                       ; $A7F27F  8D C4 08     Mx
    LDA #$0000                      ; $A7F282  A9 00 00     Mx
    STA $09AC                       ; $A7F285  8D AC 09     Mx
    LDA #$0102                      ; $A7F288  A9 02 01     Mx
    STA $0752                       ; $A7F28B  8D 52 07     Mx
    LDA #$0102                      ; $A7F28E  A9 02 01     Mx
    STA $083A                       ; $A7F291  8D 3A 08     Mx
    LDA #$FF06                      ; $A7F294  A9 06 FF     Mx
    STA $0922                       ; $A7F297  8D 22 09     Mx
    LDA #$FF06                      ; $A7F29A  A9 06 FF     Mx
    STA $0A0A                       ; $A7F29D  8D 0A 0A     Mx
    LDA #$0040                      ; $A7F2A0  A9 40 00     Mx
    STA $0C64                       ; $A7F2A3  8D 64 0C     Mx
    STA $0C69                       ; $A7F2A6  8D 69 0C     Mx
    STA $0C6E                       ; $A7F2A9  8D 6E 0C     Mx
    STA $0C73                       ; $A7F2AC  8D 73 0C     Mx
    STA $0C78                       ; $A7F2AF  8D 78 0C     Mx
    STA $0C7D                       ; $A7F2B2  8D 7D 0C     Mx
    STA $0C82                       ; $A7F2B5  8D 82 0C     Mx
    STA $0C87                       ; $A7F2B8  8D 87 0C     Mx
    STZ $0AFA                       ; $A7F2BB  9C FA 0A     Mx
    STZ $0AFC                       ; $A7F2BE  9C FC 0A     Mx
    STZ $0AFE                       ; $A7F2C1  9C FE 0A     Mx
    STZ $0B00                       ; $A7F2C4  9C 00 0B     Mx
    STZ $0AF2                       ; $A7F2C7  9C F2 0A     Mx
    STZ $0AF4                       ; $A7F2CA  9C F4 0A     Mx
    STZ $0AF6                       ; $A7F2CD  9C F6 0A     Mx
    STZ $0AF8                       ; $A7F2D0  9C F8 0A     Mx
    LDA #$036C                      ; $A7F2D3  A9 6C 03     Mx
    STA $0C4D                       ; $A7F2D6  8D 4D 0C     Mx
    LDA #$037C                      ; $A7F2D9  A9 7C 03     Mx
    STA $0C53                       ; $A7F2DC  8D 53 0C     Mx
    LDA #$0364                      ; $A7F2DF  A9 64 03     Mx
    STA $0C45                       ; $A7F2E2  8D 45 0C     Mx
    STZ $0C57                       ; $A7F2E5  9C 57 0C     Mx
    STZ $0C55                       ; $A7F2E8  9C 55 0C     Mx
    LDA #$0002                      ; $A7F2EB  A9 02 00     Mx
    STA $0708                       ; $A7F2EE  8D 08 07     Mx
    LDA #$0002                      ; $A7F2F1  A9 02 00     Mx
    STA $07F0                       ; $A7F2F4  8D F0 07     Mx
    LDA #$0006                      ; $A7F2F7  A9 06 00     Mx
    STA $08D8                       ; $A7F2FA  8D D8 08     Mx
    LDA #$0006                      ; $A7F2FD  A9 06 00     Mx
    STA $09C0                       ; $A7F300  8D C0 09     Mx
    LDA #$0002                      ; $A7F303  A9 02 00     Mx
    STA $070C                       ; $A7F306  8D 0C 07     Mx
    LDA #$0002                      ; $A7F309  A9 02 00     Mx
    STA $07F4                       ; $A7F30C  8D F4 07     Mx
    LDA #$0006                      ; $A7F30F  A9 06 00     Mx
    STA $08DC                       ; $A7F312  8D DC 08     Mx
    LDA #$0006                      ; $A7F315  A9 06 00     Mx
    STA $09C4                       ; $A7F318  8D C4 09     Mx
    LDA #$C1F2                      ; $A7F31B  A9 F2 C1     Mx
    STA $0034                       ; $A7F31E  8D 34 00     Mx
    LDA #$0007                      ; $A7F321  A9 07 00     Mx
    STA $0036                       ; $A7F324  8D 36 00     Mx
    LDA #$C1F2                      ; $A7F327  A9 F2 C1     Mx
    STA $0038                       ; $A7F32A  8D 38 00     Mx
    LDA #$0007                      ; $A7F32D  A9 07 00     Mx
    STA $003A                       ; $A7F330  8D 3A 00     Mx
    LDA #$C1F2                      ; $A7F333  A9 F2 C1     Mx
    STA $003C                       ; $A7F336  8D 3C 00     Mx
    LDA #$0007                      ; $A7F339  A9 07 00     Mx
    STA $003E                       ; $A7F33C  8D 3E 00     Mx
    LDA #$C1F2                      ; $A7F33F  A9 F2 C1     Mx
    STA $0040                       ; $A7F342  8D 40 00     Mx
    LDA #$0007                      ; $A7F345  A9 07 00     Mx
    STA $0042                       ; $A7F348  8D 42 00     Mx
    LDA #$0020                      ; $A7F34B  A9 20 00     Mx
    STA $078A                       ; $A7F34E  8D 8A 07     Mx
    STA $0872                       ; $A7F351  8D 72 08     Mx
    STA $095A                       ; $A7F354  8D 5A 09     Mx
    STA $0A42                       ; $A7F357  8D 42 0A     Mx
    LDA #$1545                      ; $A7F35A  A9 45 15     Mx
    STA $0790                       ; $A7F35D  8D 90 07     Mx
    STA $0878                       ; $A7F360  8D 78 08     Mx
    STA $0960                       ; $A7F363  8D 60 09     Mx
    STA $0A48                       ; $A7F366  8D 48 0A     Mx
    LDA #$2B00                      ; $A7F369  A9 00 2B     Mx
    STA $078E                       ; $A7F36C  8D 8E 07     Mx
    STA $0876                       ; $A7F36F  8D 76 08     Mx
    STA $095E                       ; $A7F372  8D 5E 09     Mx
    STA $0A46                       ; $A7F375  8D 46 0A     Mx
    LDA #$FFFF                      ; $A7F378  A9 FF FF     Mx
    STA $076E                       ; $A7F37B  8D 6E 07     Mx
    STA $0856                       ; $A7F37E  8D 56 08     Mx
    STA $093E                       ; $A7F381  8D 3E 09     Mx
    STA $0A26                       ; $A7F384  8D 26 0A     Mx
    LDA $0CD5                       ; $A7F387  AD D5 0C     Mx
    BNE L_A7F390                    ; $A7F38A  D0 04        Mx
    JSL $00E1A1                     ; $A7F38C  22 A1 E1 00  Mx
L_A7F390:
    SEP #$20                        ; $A7F390  E2 20        Mx
    LDA #$20                        ; $A7F392  A9 20        mx
    STA $00D0                       ; $A7F394  8D D0 00     mx
    LDA #$C8                        ; $A7F397  A9 C8        mx
    STA $00D1                       ; $A7F399  8D D1 00     mx
    LDA #$7F                        ; $A7F39C  A9 7F        mx
    STA $00D2                       ; $A7F39E  8D D2 00     mx
    LDX #$80                        ; $A7F3A1  A2 80        mx
    LDA #$00                        ; $A7F3A3  A9 00        mx
    JSL L_808B53                    ; $A7F3A5  22 53 8B 80  mx
    LDA #$20                        ; $A7F3A9  A9 20        mx
    STA $00D0                       ; $A7F3AB  8D D0 00     mx
    LDA #$C9                        ; $A7F3AE  A9 C9        mx
    STA $00D1                       ; $A7F3B0  8D D1 00     mx
    LDA #$7F                        ; $A7F3B3  A9 7F        mx
    STA $00D2                       ; $A7F3B5  8D D2 00     mx
    LDX #$80                        ; $A7F3B8  A2 80        mx
    LDA #$80                        ; $A7F3BA  A9 80        mx
    JSL L_808B53                    ; $A7F3BC  22 53 8B 80  mx
    REP #$20                        ; $A7F3C0  C2 20        mx
    JSL $27FC40                     ; $A7F3C2  22 40 FC 27  Mx
    STZ $0A9A                       ; $A7F3C6  9C 9A 0A     Mx
    STZ $0A9C                       ; $A7F3C9  9C 9C 0A     Mx
    STZ $0A92                       ; $A7F3CC  9C 92 0A     Mx
    STZ $0A94                       ; $A7F3CF  9C 94 0A     Mx
    LDA $0CD7                       ; $A7F3D2  AD D7 0C     Mx
    BNE L_A7F3ED                    ; $A7F3D5  D0 16        Mx
    LDA $0B4A                       ; $A7F3D7  AD 4A 0B     Mx
    CMP #$0002                      ; $A7F3DA  C9 02 00     Mx
    BCC L_A7F3E2                    ; $A7F3DD  90 03        Mx
L_A7F3DF:
    JMP L_A7F48C                    ; $A7F3DF  4C 8C F4     Mx
L_A7F3E2:
    LDA $1683                       ; $A7F3E2  AD 83 16     Mx
    CMP #$001B                      ; $A7F3E5  C9 1B 00     Mx
    BEQ L_A7F3DF                    ; $A7F3E8  F0 F5        Mx
    JMP L_A7F541                    ; $A7F3EA  4C 41 F5     Mx
L_A7F3ED:
    STZ $0C3B                       ; $A7F3ED  9C 3B 0C     Mx
    AND #$0001                      ; $A7F3F0  29 01 00     Mx
    BNE L_A7F3F8                    ; $A7F3F3  D0 03        Mx
    JMP L_A7F48C                    ; $A7F3F5  4C 8C F4     Mx
L_A7F3F8:
    LDA #$023D                      ; $A7F3F8  A9 3D 02     Mx
    STA $0E81                       ; $A7F3FB  8D 81 0E     Mx
    LDA #$0380                      ; $A7F3FE  A9 80 03     Mx
    STA $0E83                       ; $A7F401  8D 83 0E     Mx
    LDX $09A9                       ; $A7F404  AE A9 09     Mx
    BNE L_A7F43B                    ; $A7F407  D0 32        Mx
    LDA #$011B                      ; $A7F409  A9 1B 01     Mx
    STA $09D6                       ; $A7F40C  8D D6 09     Mx
    STA $0BD9                       ; $A7F40F  8D D9 0B     Mx
    LDA #$0374                      ; $A7F412  A9 74 03     Mx
    STA $09DE                       ; $A7F415  8D DE 09     Mx
    STA $09BE                       ; $A7F418  8D BE 09     Mx
    STA $0BE1                       ; $A7F41B  8D E1 0B     Mx
    STA $0BF3                       ; $A7F41E  8D F3 0B     Mx
    LDA #$09A8                      ; $A7F421  A9 A8 09     Mx
    STA $00CC                       ; $A7F424  8D CC 00     Mx
    LDA $09A8                       ; $A7F427  AD A8 09     Mx
    STA $0C1B                       ; $A7F42A  8D 1B 0C     Mx
    LDA #$00C6                      ; $A7F42D  A9 C6 00     Mx
    STA $08EE                       ; $A7F430  8D EE 08     Mx
    LDA #$037E                      ; $A7F433  A9 7E 03     Mx
    STA $08F6                       ; $A7F436  8D F6 08     Mx
    BRA L_A7F46B                    ; $A7F439  80 30        Mx
L_A7F43B:
    LDA #$011B                      ; $A7F43B  A9 1B 01     Mx
    STA $08EE                       ; $A7F43E  8D EE 08     Mx
    STA $0BD9                       ; $A7F441  8D D9 0B     Mx
    LDA #$0374                      ; $A7F444  A9 74 03     Mx
    STA $08F6                       ; $A7F447  8D F6 08     Mx
    STA $08D6                       ; $A7F44A  8D D6 08     Mx
    STA $0BE1                       ; $A7F44D  8D E1 0B     Mx
    STA $0BF3                       ; $A7F450  8D F3 0B     Mx
    LDA #$08C0                      ; $A7F453  A9 C0 08     Mx
    STA $00CC                       ; $A7F456  8D CC 00     Mx
    LDA $08C0                       ; $A7F459  AD C0 08     Mx
    STA $0C1B                       ; $A7F45C  8D 1B 0C     Mx
    LDA #$00C6                      ; $A7F45F  A9 C6 00     Mx
    STA $09D6                       ; $A7F462  8D D6 09     Mx
    LDA #$037E                      ; $A7F465  A9 7E 03     Mx
    STA $09DE                       ; $A7F468  8D DE 09     Mx
L_A7F46B:
    LDA #$008A                      ; $A7F46B  A9 8A 00     Mx
    STA $071E                       ; $A7F46E  8D 1E 07     Mx
    LDA #$008A                      ; $A7F471  A9 8A 00     Mx
    STA $0806                       ; $A7F474  8D 06 08     Mx
    LDA #$0356                      ; $A7F477  A9 56 03     Mx
    STA $0726                       ; $A7F47A  8D 26 07     Mx
    LDA #$039C                      ; $A7F47D  A9 9C 03     Mx
    STA $080E                       ; $A7F480  8D 0E 08     Mx
    LDA #$0082                      ; $A7F483  A9 82 00     Mx
    STA $0A9A                       ; $A7F486  8D 9A 0A     Mx
    JMP L_A7F520                    ; $A7F489  4C 20 F5     Mx
L_A7F48C:
    STZ $0C3B                       ; $A7F48C  9C 3B 0C     Mx
    LDA #$0082                      ; $A7F48F  A9 82 00     Mx
    STA $0E81                       ; $A7F492  8D 81 0E     Mx
    LDA #$0104                      ; $A7F495  A9 04 01     Mx
    STA $0E83                       ; $A7F498  8D 83 0E     Mx
    LDX $07D9                       ; $A7F49B  AE D9 07     Mx
    BNE L_A7F4D2                    ; $A7F49E  D0 32        Mx
    LDA #$FEEF                      ; $A7F4A0  A9 EF FE     Mx
    STA $0806                       ; $A7F4A3  8D 06 08     Mx
    STA $0BD9                       ; $A7F4A6  8D D9 0B     Mx
    LDA #$0374                      ; $A7F4A9  A9 74 03     Mx
    STA $080E                       ; $A7F4AC  8D 0E 08     Mx
    STA $07EE                       ; $A7F4AF  8D EE 07     Mx
    STA $0BE1                       ; $A7F4B2  8D E1 0B     Mx
    STA $0BF3                       ; $A7F4B5  8D F3 0B     Mx
    LDA #$07D8                      ; $A7F4B8  A9 D8 07     Mx
    STA $00CC                       ; $A7F4BB  8D CC 00     Mx
    LDA $07D8                       ; $A7F4BE  AD D8 07     Mx
    STA $0C1B                       ; $A7F4C1  8D 1B 0C     Mx
    LDA #$FF44                      ; $A7F4C4  A9 44 FF     Mx
    STA $071E                       ; $A7F4C7  8D 1E 07     Mx
    LDA #$0388                      ; $A7F4CA  A9 88 03     Mx
    STA $0726                       ; $A7F4CD  8D 26 07     Mx
    BRA L_A7F502                    ; $A7F4D0  80 30        Mx
L_A7F4D2:
    LDA #$FEEF                      ; $A7F4D2  A9 EF FE     Mx
    STA $071E                       ; $A7F4D5  8D 1E 07     Mx
    STA $0BD9                       ; $A7F4D8  8D D9 0B     Mx
    LDA #$0374                      ; $A7F4DB  A9 74 03     Mx
    STA $0726                       ; $A7F4DE  8D 26 07     Mx
    STA $0706                       ; $A7F4E1  8D 06 07     Mx
    STA $0BE1                       ; $A7F4E4  8D E1 0B     Mx
    STA $0BF3                       ; $A7F4E7  8D F3 0B     Mx
    LDA #$06F0                      ; $A7F4EA  A9 F0 06     Mx
    STA $00CC                       ; $A7F4ED  8D CC 00     Mx
    LDA $06F0                       ; $A7F4F0  AD F0 06     Mx
    STA $0C1B                       ; $A7F4F3  8D 1B 0C     Mx
    LDA #$FF44                      ; $A7F4F6  A9 44 FF     Mx
    STA $0806                       ; $A7F4F9  8D 06 08     Mx
    LDA #$0388                      ; $A7F4FC  A9 88 03     Mx
    STA $080E                       ; $A7F4FF  8D 0E 08     Mx
L_A7F502:
    LDA #$FF80                      ; $A7F502  A9 80 FF     Mx
    STA $08EE                       ; $A7F505  8D EE 08     Mx
    LDA #$FF80                      ; $A7F508  A9 80 FF     Mx
    STA $09D6                       ; $A7F50B  8D D6 09     Mx
    LDA #$0356                      ; $A7F50E  A9 56 03     Mx
    STA $08F6                       ; $A7F511  8D F6 08     Mx
    LDA #$039C                      ; $A7F514  A9 9C 03     Mx
    STA $09DE                       ; $A7F517  8D DE 09     Mx
    LDA #$0096                      ; $A7F51A  A9 96 00     Mx
    STA $0A9A                       ; $A7F51D  8D 9A 0A     Mx
L_A7F520:
    LDA #$0000                      ; $A7F520  A9 00 00     Mx
    STA $06F4                       ; $A7F523  8D F4 06     Mx
    STA $07DC                       ; $A7F526  8D DC 07     Mx
    STA $08C4                       ; $A7F529  8D C4 08     Mx
    STA $09AC                       ; $A7F52C  8D AC 09     Mx
    LDA #$0000                      ; $A7F52F  A9 00 00     Mx
    STA $0BBF                       ; $A7F532  8D BF 0B     Mx
    STZ $0B6C                       ; $A7F535  9C 6C 0B     Mx
    LDA #$036A                      ; $A7F538  A9 6A 03     Mx
    STA $0C45                       ; $A7F53B  8D 45 0C     Mx
    JMP L_A7F5E4                    ; $A7F53E  4C E4 F5     Mx
L_A7F541:
    LDA #$0140                      ; $A7F541  A9 40 01     Mx
    STA $0E81                       ; $A7F544  8D 81 0E     Mx
    LDA #$01D0                      ; $A7F547  A9 D0 01     Mx
    STA $0E83                       ; $A7F54A  8D 83 0E     Mx
    LDA #$0001                      ; $A7F54D  A9 01 00     Mx
    STA $0B6C                       ; $A7F550  8D 6C 0B     Mx
    LDA #$0004                      ; $A7F553  A9 04 00     Mx
    STA $0B74                       ; $A7F556  8D 74 0B     Mx
    LDA #$036A                      ; $A7F559  A9 6A 03     Mx
    STA $0B76                       ; $A7F55C  8D 76 0B     Mx
    STA $0C45                       ; $A7F55F  8D 45 0C     Mx
    LDA #$A5B1                      ; $A7F562  A9 B1 A5     Mx
    STA $0B68                       ; $A7F565  8D 68 0B     Mx
    LDA #$002C                      ; $A7F568  A9 2C 00     Mx
    STA $0B6A                       ; $A7F56B  8D 6A 0B     Mx
    STZ $0B6E                       ; $A7F56E  9C 6E 0B     Mx
    LDA #$0010                      ; $A7F571  A9 10 00     Mx
    STA $07E0                       ; $A7F574  8D E0 07     Mx
    LDA #$0010                      ; $A7F577  A9 10 00     Mx
    STA $08C8                       ; $A7F57A  8D C8 08     Mx
    LDA $1C5D                       ; $A7F57D  AD 5D 1C     Mx
    BEQ L_A7F58C                    ; $A7F580  F0 0A        Mx
    CMP #$0001                      ; $A7F582  C9 01 00     Mx
    BNE L_A7F5B4                    ; $A7F585  D0 2D        Mx
    LDX $07D9                       ; $A7F587  AE D9 07     Mx
    BNE L_A7F5B4                    ; $A7F58A  D0 28        Mx
L_A7F58C:
    REP #$10                        ; $A7F58C  C2 10        Mx
    LDA $06F4                       ; $A7F58E  AD F4 06     MX
    LDX $07DC                       ; $A7F591  AE DC 07     MX
    STX $06F4                       ; $A7F594  8E F4 06     MX
    STA $07DC                       ; $A7F597  8D DC 07     MX
    LDA $071E                       ; $A7F59A  AD 1E 07     MX
    LDX $0806                       ; $A7F59D  AE 06 08     MX
    STX $071E                       ; $A7F5A0  8E 1E 07     MX
    STA $0806                       ; $A7F5A3  8D 06 08     MX
    LDA $0726                       ; $A7F5A6  AD 26 07     MX
    LDX $080E                       ; $A7F5A9  AE 0E 08     MX
    STX $0726                       ; $A7F5AC  8E 26 07     MX
    STA $080E                       ; $A7F5AF  8D 0E 08     MX
    SEP #$10                        ; $A7F5B2  E2 10        MX
L_A7F5B4:
    LDA #$000A                      ; $A7F5B4  A9 0A 00     Mx
    STA $07A2                       ; $A7F5B7  8D A2 07     Mx
    STA $088A                       ; $A7F5BA  8D 8A 08     Mx
    STA $0972                       ; $A7F5BD  8D 72 09     Mx
    STA $0A5A                       ; $A7F5C0  8D 5A 0A     Mx
    LDA #$0006                      ; $A7F5C3  A9 06 00     Mx
    STA $0BBF                       ; $A7F5C6  8D BF 0B     Mx
    LDA #$0004                      ; $A7F5C9  A9 04 00     Mx
    STA $0BD9                       ; $A7F5CC  8D D9 0B     Mx
    LDA #$0374                      ; $A7F5CF  A9 74 03     Mx
    STA $0BE1                       ; $A7F5D2  8D E1 0B     Mx
    LDA #$0374                      ; $A7F5D5  A9 74 03     Mx
    STA $0BF3                       ; $A7F5D8  8D F3 0B     Mx
    LDA #$06F0                      ; $A7F5DB  A9 F0 06     Mx
    STA $00CC                       ; $A7F5DE  8D CC 00     Mx
    STZ $0C1B                       ; $A7F5E1  9C 1B 0C     Mx
L_A7F5E4:
    LDA $1683                       ; $A7F5E4  AD 83 16     Mx
    CMP #$001B                      ; $A7F5E7  C9 1B 00     Mx
    BEQ L_A7F608                    ; $A7F5EA  F0 1C        Mx
    LDA $0B4A                       ; $A7F5EC  AD 4A 0B     Mx
    CMP #$0002                      ; $A7F5EF  C9 02 00     Mx
    BCS L_A7F5F6                    ; $A7F5F2  B0 02        Mx
    BRA L_A7F640                    ; $A7F5F4  80 4A        Mx
L_A7F5F6:
    LDA #$C000                      ; $A7F5F6  A9 00 C0     Mx
    STA $0806                       ; $A7F5F9  8D 06 08     Mx
    STA $08EE                       ; $A7F5FC  8D EE 08     Mx
    STA $09D6                       ; $A7F5FF  8D D6 09     Mx
    LDA #$FF6A                      ; $A7F602  A9 6A FF     Mx
    STA $071E                       ; $A7F605  8D 1E 07     Mx
L_A7F608:
    LDA #$0140                      ; $A7F608  A9 40 01     Mx
    STA $0E81                       ; $A7F60B  8D 81 0E     Mx
    LDA #$01D0                      ; $A7F60E  A9 D0 01     Mx
    STA $0E83                       ; $A7F611  8D 83 0E     Mx
    LDA #$0001                      ; $A7F614  A9 01 00     Mx
    STA $0702                       ; $A7F617  8D 02 07     Mx
    LDA #$0374                      ; $A7F61A  A9 74 03     Mx
    STA $0706                       ; $A7F61D  8D 06 07     Mx
    STA $0726                       ; $A7F620  8D 26 07     Mx
    LDA #$00A8                      ; $A7F623  A9 A8 00     Mx
    STA $0704                       ; $A7F626  8D 04 07     Mx
    STZ $0A9A                       ; $A7F629  9C 9A 0A     Mx
    LDA $1683                       ; $A7F62C  AD 83 16     Mx
    CMP #$001B                      ; $A7F62F  C9 1B 00     Mx
    BNE L_A7F640                    ; $A7F632  D0 0C        Mx
    LDA #$FEA2                      ; $A7F634  A9 A2 FE     Mx
    STA $071E                       ; $A7F637  8D 1E 07     Mx
    LDA #$01E0                      ; $A7F63A  A9 E0 01     Mx
    STA $0B4C                       ; $A7F63D  8D 4C 0B     Mx
L_A7F640:
    RTL                             ; $A7F640  6B           Mx
L_A7F641:
    STZ $0CA9                       ; $A7F641  9C A9 0C     Mx
    STZ $0CB5                       ; $A7F644  9C B5 0C     Mx
    STZ $0CB7                       ; $A7F647  9C B7 0C     Mx
    STZ $0CB9                       ; $A7F64A  9C B9 0C     Mx
    STZ $0CAF                       ; $A7F64D  9C AF 0C     Mx
    STZ $0CBB                       ; $A7F650  9C BB 0C     Mx
    STZ $0CBD                       ; $A7F653  9C BD 0C     Mx
    STZ $0CBF                       ; $A7F656  9C BF 0C     Mx
    LDA #$FFFF                      ; $A7F659  A9 FF FF     Mx
    STA $0CD5                       ; $A7F65C  8D D5 0C     Mx
    STA $0CD7                       ; $A7F65F  8D D7 0C     Mx
    STZ $07CA                       ; $A7F662  9C CA 07     Mx
    STZ $08B2                       ; $A7F665  9C B2 08     Mx
    STZ $099A                       ; $A7F668  9C 9A 09     Mx
    STZ $0A82                       ; $A7F66B  9C 82 0A     Mx
    STZ $133D                       ; $A7F66E  9C 3D 13     Mx
    SEP #$20                        ; $A7F671  E2 20        Mx
    REP #$10                        ; $A7F673  C2 10        mx
    LDX #$0000                      ; $A7F675  A2 00 00     mX
L_A7F678:
    STZ $06F0,X                     ; $A7F678  9E F0 06     mX
    STZ $07D8,X                     ; $A7F67B  9E D8 07     mX
    STZ $08C0,X                     ; $A7F67E  9E C0 08     mX
    STZ $09A8,X                     ; $A7F681  9E A8 09     mX
    INX                             ; $A7F684  E8           mX
    CPX #$00E0                      ; $A7F685  E0 E0 00     mX
    BNE L_A7F678                    ; $A7F688  D0 EE        mX
    REP #$20                        ; $A7F68A  C2 20        mX
    SEP #$10                        ; $A7F68C  E2 10        MX
    LDA $0B4A                       ; $A7F68E  AD 4A 0B     Mx
    BNE L_A7F696                    ; $A7F691  D0 03        Mx
    JMP L_A7F7E0                    ; $A7F693  4C E0 F7     Mx
L_A7F696:
    LDA #$FFFF                      ; $A7F696  A9 FF FF     Mx
    STA $169E                       ; $A7F699  8D 9E 16     Mx
    STA $16A0                       ; $A7F69C  8D A0 16     Mx
    STA $16A2                       ; $A7F69F  8D A2 16     Mx
    STA $16A4                       ; $A7F6A2  8D A4 16     Mx
    STA $16CC                       ; $A7F6A5  8D CC 16     Mx  initial1
    STA $16CE                       ; $A7F6A8  8D CE 16     Mx
    STA $16D0                       ; $A7F6AB  8D D0 16     Mx
    STA $16D2                       ; $A7F6AE  8D D2 16     Mx
    LDA #$001A                      ; $A7F6B1  A9 1A 00     Mx
    STA $00D0                       ; $A7F6B4  8D D0 00     Mx
    PHP                             ; $A7F6B7  08           Mx
    REP #$30                        ; $A7F6B8  C2 30        Mx
    LDA $4212                       ; $A7F6BA  AD 12 42     MX
    SEP #$20                        ; $A7F6BD  E2 20        MX
    CLC                             ; $A7F6BF  18           mX
    ADC $1D57                       ; $A7F6C0  6D 57 1D     mX
    STA $1D57                       ; $A7F6C3  8D 57 1D     mX
    REP #$20                        ; $A7F6C6  C2 20        mX
    LDA $4212                       ; $A7F6C8  AD 12 42     MX
    TAX                             ; $A7F6CB  AA           MX
    SEP #$20                        ; $A7F6CC  E2 20        MX
    EOR $1D58                       ; $A7F6CE  4D 58 1D     mX
    STA $1D58                       ; $A7F6D1  8D 58 1D     mX
    TXA                             ; $A7F6D4  8A           mX
    ADC $1D59                       ; $A7F6D5  6D 59 1D     mX
    REP #$20                        ; $A7F6D8  C2 20        mX
    LDA $1D56                       ; $A7F6DA  AD 56 1D     MX
    INC                             ; $A7F6DD  1A           MX
    ROR                             ; $A7F6DE  6A           MX
    LSR $1D58                       ; $A7F6DF  4E 58 1D     MX
    EOR #$2B41                      ; $A7F6E2  49 41 2B     MX
    SBC #$000F                      ; $A7F6E5  E9 0F 00     MX
    STA $1D56                       ; $A7F6E8  8D 56 1D     MX
    LDA $1D58                       ; $A7F6EB  AD 58 1D     MX
    EOR #$1D87                      ; $A7F6EE  49 87 1D     MX
    STA $1D58                       ; $A7F6F1  8D 58 1D     MX
    LDA $1D52                       ; $A7F6F4  AD 52 1D     MX
    EOR $1D56                       ; $A7F6F7  4D 56 1D     MX
    STA $0002                       ; $A7F6FA  8D 02 00     MX
    INC                             ; $A7F6FD  1A           MX
    STA $1D52                       ; $A7F6FE  8D 52 1D     MX
    LDA $1D54                       ; $A7F701  AD 54 1D     MX
    EOR $1D58                       ; $A7F704  4D 58 1D     MX
    ADC #$0000                      ; $A7F707  69 00 00     MX
    STA $1D52                       ; $A7F70A  8D 52 1D     MX
    STA $0004                       ; $A7F70D  8D 04 00     MX
    PLP                             ; $A7F710  28           MX
    INC $00D0                       ; $A7F711  EE D0 00     Mx
    LDA $1D56                       ; $A7F714  AD 56 1D     Mx
    STA $00BA                       ; $A7F717  8D BA 00     Mx
    SEP #$20                        ; $A7F71A  E2 20        Mx
    LDA $00D0                       ; $A7F71C  AD D0 00     mx
    STA $4202                       ; $A7F71F  8D 02 42     mx
    LDA $00BA                       ; $A7F722  AD BA 00     mx
    STA $4203                       ; $A7F725  8D 03 42     mx
    NOP                             ; $A7F728  EA           mx
    NOP                             ; $A7F729  EA           mx
    NOP                             ; $A7F72A  EA           mx
    REP #$20                        ; $A7F72B  C2 20        mx
    LDA $4216                       ; $A7F72D  AD 16 42     Mx
    STA $00BA                       ; $A7F730  8D BA 00     Mx
    LDA $00BB                       ; $A7F733  AD BB 00     Mx
    AND #$00FF                      ; $A7F736  29 FF 00     Mx
    AND #$001F                      ; $A7F739  29 1F 00     Mx
    CMP #$001B                      ; $A7F73C  C9 1B 00     Mx
    BNE L_A7F744                    ; $A7F73F  D0 03        Mx
    LDA #$001A                      ; $A7F741  A9 1A 00     Mx
L_A7F744:
    STA $1683                       ; $A7F744  8D 83 16     Mx
    LDA $1D52                       ; $A7F747  AD 52 1D     Mx
L_A7F74A:
    LDA #$001A                      ; $A7F74A  A9 1A 00     Mx
    STA $00D0                       ; $A7F74D  8D D0 00     Mx
    PHP                             ; $A7F750  08           Mx
    REP #$30                        ; $A7F751  C2 30        Mx
    LDA $4212                       ; $A7F753  AD 12 42     MX
    SEP #$20                        ; $A7F756  E2 20        MX
    CLC                             ; $A7F758  18           mX
    ADC $1D57                       ; $A7F759  6D 57 1D     mX
    STA $1D57                       ; $A7F75C  8D 57 1D     mX
    REP #$20                        ; $A7F75F  C2 20        mX
    LDA $4212                       ; $A7F761  AD 12 42     MX
    TAX                             ; $A7F764  AA           MX
    SEP #$20                        ; $A7F765  E2 20        MX
    EOR $1D58                       ; $A7F767  4D 58 1D     mX
    STA $1D58                       ; $A7F76A  8D 58 1D     mX
    TXA                             ; $A7F76D  8A           mX
    ADC $1D59                       ; $A7F76E  6D 59 1D     mX
    REP #$20                        ; $A7F771  C2 20        mX
    LDA $1D56                       ; $A7F773  AD 56 1D     MX
    INC                             ; $A7F776  1A           MX
    ROR                             ; $A7F777  6A           MX
    LSR $1D58                       ; $A7F778  4E 58 1D     MX
    EOR #$2B41                      ; $A7F77B  49 41 2B     MX
    SBC #$000F                      ; $A7F77E  E9 0F 00     MX
    STA $1D56                       ; $A7F781  8D 56 1D     MX
    LDA $1D58                       ; $A7F784  AD 58 1D     MX
    EOR #$1D87                      ; $A7F787  49 87 1D     MX
    STA $1D58                       ; $A7F78A  8D 58 1D     MX
    LDA $1D52                       ; $A7F78D  AD 52 1D     MX
    EOR $1D56                       ; $A7F790  4D 56 1D     MX
    STA $0002                       ; $A7F793  8D 02 00     MX
    INC                             ; $A7F796  1A           MX
    STA $1D52                       ; $A7F797  8D 52 1D     MX
    LDA $1D54                       ; $A7F79A  AD 54 1D     MX
    EOR $1D58                       ; $A7F79D  4D 58 1D     MX
    ADC #$0000                      ; $A7F7A0  69 00 00     MX
    STA $1D52                       ; $A7F7A3  8D 52 1D     MX
    STA $0004                       ; $A7F7A6  8D 04 00     MX
    PLP                             ; $A7F7A9  28           MX
    INC $00D0                       ; $A7F7AA  EE D0 00     Mx
    LDA $1D56                       ; $A7F7AD  AD 56 1D     Mx
    STA $00BA                       ; $A7F7B0  8D BA 00     Mx
    SEP #$20                        ; $A7F7B3  E2 20        Mx
    LDA $00D0                       ; $A7F7B5  AD D0 00     mx
    STA $4202                       ; $A7F7B8  8D 02 42     mx
    LDA $00BA                       ; $A7F7BB  AD BA 00     mx
    STA $4203                       ; $A7F7BE  8D 03 42     mx
    NOP                             ; $A7F7C1  EA           mx
    NOP                             ; $A7F7C2  EA           mx
    NOP                             ; $A7F7C3  EA           mx
    REP #$20                        ; $A7F7C4  C2 20        mx
    LDA $4216                       ; $A7F7C6  AD 16 42     Mx
    STA $00BA                       ; $A7F7C9  8D BA 00     Mx
    LDA $00BB                       ; $A7F7CC  AD BB 00     Mx
    AND #$00FF                      ; $A7F7CF  29 FF 00     Mx
    AND #$001F                      ; $A7F7D2  29 1F 00     Mx
    CMP $1683                       ; $A7F7D5  CD 83 16     Mx
    BNE L_A7F7DD                    ; $A7F7D8  D0 03        Mx
    JMP L_A7F74A                    ; $A7F7DA  4C 4A F7     Mx
L_A7F7DD:
    STA $1685                       ; $A7F7DD  8D 85 16     Mx
L_A7F7E0:
    STZ $07D6                       ; $A7F7E0  9C D6 07     Mx
    STZ $08BE                       ; $A7F7E3  9C BE 08     Mx
    STZ $09A6                       ; $A7F7E6  9C A6 09     Mx
    STZ $0A8E                       ; $A7F7E9  9C 8E 0A     Mx
    LDX $169E                       ; $A7F7EC  AE 9E 16     Mx
    BMI L_A7F831                    ; $A7F7EF  30 40        Mx
    LDA #$0000                      ; $A7F7F1  A9 00 00     Mx
    LDX $0AC8                       ; $A7F7F4  AE C8 0A     Mx
    BEQ L_A7F7FC                    ; $A7F7F7  F0 03        Mx
    LDA #$0001                      ; $A7F7F9  A9 01 00     Mx
L_A7F7FC:
    LDX $0AD0                       ; $A7F7FC  AE D0 0A     Mx
    BEQ L_A7F804                    ; $A7F7FF  F0 03        Mx
    ORA #$0002                      ; $A7F801  09 02 00     Mx
L_A7F804:
    LDX $0AD8                       ; $A7F804  AE D8 0A     Mx
    BEQ L_A7F80C                    ; $A7F807  F0 03        Mx
    ORA #$0004                      ; $A7F809  09 04 00     Mx
L_A7F80C:
    LDX $0AE0                       ; $A7F80C  AE E0 0A     Mx
    BEQ L_A7F814                    ; $A7F80F  F0 03        Mx
    ORA #$0008                      ; $A7F811  09 08 00     Mx
L_A7F814:
    LDX $0AE8                       ; $A7F814  AE E8 0A     Mx
    BEQ L_A7F81C                    ; $A7F817  F0 03        Mx
    ORA #$0010                      ; $A7F819  09 10 00     Mx
L_A7F81C:
    STA $07D6                       ; $A7F81C  8D D6 07     Mx
    LDX #$02                        ; $A7F81F  A2 02        Mx
    STX $06F1                       ; $A7F821  8E F1 06     Mx
    LDX #$01                        ; $A7F824  A2 01        Mx
    STX $06F0                       ; $A7F826  8E F0 06     Mx
    LDA #$021C                      ; $A7F829  A9 1C 02     Mx
    STA $07B2                       ; $A7F82C  8D B2 07     Mx
    BRA L_A7F837                    ; $A7F82F  80 06        Mx
L_A7F831:
    LDA #$0001                      ; $A7F831  A9 01 00     Mx
    STA $06F0                       ; $A7F834  8D F0 06     Mx
L_A7F837:
    LDX $16A0                       ; $A7F837  AE A0 16     Mx
    BMI L_A7F87C                    ; $A7F83A  30 40        Mx
    LDA #$0000                      ; $A7F83C  A9 00 00     Mx
    LDX $0ACA                       ; $A7F83F  AE CA 0A     Mx
    BEQ L_A7F847                    ; $A7F842  F0 03        Mx
    LDA #$0001                      ; $A7F844  A9 01 00     Mx
L_A7F847:
    LDX $0AD2                       ; $A7F847  AE D2 0A     Mx
    BEQ L_A7F84F                    ; $A7F84A  F0 03        Mx
    ORA #$0002                      ; $A7F84C  09 02 00     Mx
L_A7F84F:
    LDX $0ADA                       ; $A7F84F  AE DA 0A     Mx
    BEQ L_A7F857                    ; $A7F852  F0 03        Mx
    ORA #$0004                      ; $A7F854  09 04 00     Mx
L_A7F857:
    LDX $0AE2                       ; $A7F857  AE E2 0A     Mx
    BEQ L_A7F85F                    ; $A7F85A  F0 03        Mx
    ORA #$0008                      ; $A7F85C  09 08 00     Mx
L_A7F85F:
    LDX $0AEA                       ; $A7F85F  AE EA 0A     Mx
    BEQ L_A7F867                    ; $A7F862  F0 03        Mx
    ORA #$0010                      ; $A7F864  09 10 00     Mx
L_A7F867:
    STA $08BE                       ; $A7F867  8D BE 08     Mx
    LDX #$04                        ; $A7F86A  A2 04        Mx
    STX $07D9                       ; $A7F86C  8E D9 07     Mx
    LDX #$02                        ; $A7F86F  A2 02        Mx
    STX $07D8                       ; $A7F871  8E D8 07     Mx
    LDA #$021C                      ; $A7F874  A9 1C 02     Mx
    STA $089A                       ; $A7F877  8D 9A 08     Mx
    BRA L_A7F882                    ; $A7F87A  80 06        Mx
L_A7F87C:
    LDA #$0002                      ; $A7F87C  A9 02 00     Mx
    STA $07D8                       ; $A7F87F  8D D8 07     Mx
L_A7F882:
    LDX $16A2                       ; $A7F882  AE A2 16     Mx
    BMI L_A7F8C7                    ; $A7F885  30 40        Mx
    LDA #$0000                      ; $A7F887  A9 00 00     Mx
    LDX $0ACC                       ; $A7F88A  AE CC 0A     Mx
    BEQ L_A7F892                    ; $A7F88D  F0 03        Mx
    LDA #$0001                      ; $A7F88F  A9 01 00     Mx
L_A7F892:
    LDX $0AD4                       ; $A7F892  AE D4 0A     Mx
    BEQ L_A7F89A                    ; $A7F895  F0 03        Mx
    ORA #$0002                      ; $A7F897  09 02 00     Mx
L_A7F89A:
    LDX $0ADC                       ; $A7F89A  AE DC 0A     Mx
    BEQ L_A7F8A2                    ; $A7F89D  F0 03        Mx
    ORA #$0004                      ; $A7F89F  09 04 00     Mx
L_A7F8A2:
    LDX $0AE4                       ; $A7F8A2  AE E4 0A     Mx
    BEQ L_A7F8AA                    ; $A7F8A5  F0 03        Mx
    ORA #$0008                      ; $A7F8A7  09 08 00     Mx
L_A7F8AA:
    LDX $0AEC                       ; $A7F8AA  AE EC 0A     Mx
    BEQ L_A7F8B2                    ; $A7F8AD  F0 03        Mx
    ORA #$0010                      ; $A7F8AF  09 10 00     Mx
L_A7F8B2:
    STA $09A6                       ; $A7F8B2  8D A6 09     Mx
    LDX #$06                        ; $A7F8B5  A2 06        Mx
    STX $08C1                       ; $A7F8B7  8E C1 08     Mx
    LDX #$03                        ; $A7F8BA  A2 03        Mx
    STX $08C0                       ; $A7F8BC  8E C0 08     Mx
    LDA #$021C                      ; $A7F8BF  A9 1C 02     Mx
    STA $0982                       ; $A7F8C2  8D 82 09     Mx
    BRA L_A7F8CD                    ; $A7F8C5  80 06        Mx
L_A7F8C7:
    LDA #$0003                      ; $A7F8C7  A9 03 00     Mx
    STA $08C0                       ; $A7F8CA  8D C0 08     Mx
L_A7F8CD:
    LDX $16A4                       ; $A7F8CD  AE A4 16     Mx
    BMI L_A7F912                    ; $A7F8D0  30 40        Mx
    LDA #$0000                      ; $A7F8D2  A9 00 00     Mx
    LDX $0ACE                       ; $A7F8D5  AE CE 0A     Mx
    BEQ L_A7F8DD                    ; $A7F8D8  F0 03        Mx
    LDA #$0001                      ; $A7F8DA  A9 01 00     Mx
L_A7F8DD:
    LDX $0AD6                       ; $A7F8DD  AE D6 0A     Mx
    BEQ L_A7F8E5                    ; $A7F8E0  F0 03        Mx
    ORA #$0002                      ; $A7F8E2  09 02 00     Mx
L_A7F8E5:
    LDX $0ADE                       ; $A7F8E5  AE DE 0A     Mx
    BEQ L_A7F8ED                    ; $A7F8E8  F0 03        Mx
    ORA #$0004                      ; $A7F8EA  09 04 00     Mx
L_A7F8ED:
    LDX $0AE6                       ; $A7F8ED  AE E6 0A     Mx
    BEQ L_A7F8F5                    ; $A7F8F0  F0 03        Mx
    ORA #$0008                      ; $A7F8F2  09 08 00     Mx
L_A7F8F5:
    LDX $0AEE                       ; $A7F8F5  AE EE 0A     Mx
    BEQ L_A7F8FD                    ; $A7F8F8  F0 03        Mx
    ORA #$0010                      ; $A7F8FA  09 10 00     Mx
L_A7F8FD:
    STA $0A8E                       ; $A7F8FD  8D 8E 0A     Mx
    LDX #$08                        ; $A7F900  A2 08        Mx
    STX $09A9                       ; $A7F902  8E A9 09     Mx
    LDX #$04                        ; $A7F905  A2 04        Mx
    STX $09A8                       ; $A7F907  8E A8 09     Mx
    LDA #$021C                      ; $A7F90A  A9 1C 02     Mx
    STA $0A6A                       ; $A7F90D  8D 6A 0A     Mx
    BRA L_A7F918                    ; $A7F910  80 06        Mx
L_A7F912:
    LDA #$0004                      ; $A7F912  A9 04 00     Mx
    STA $09A8                       ; $A7F915  8D A8 09     Mx
L_A7F918:
    LDA $1C5D                       ; $A7F918  AD 5D 1C     Mx
    BNE L_A7F955                    ; $A7F91B  D0 38        Mx
    LDA $16A2                       ; $A7F91D  AD A2 16     Mx
    BMI L_A7F955                    ; $A7F920  30 33        Mx
    LDX #$04                        ; $A7F922  A2 04        Mx
    STX $08C1                       ; $A7F924  8E C1 08     Mx
    LDA #$0000                      ; $A7F927  A9 00 00     Mx
    LDX $0ACA                       ; $A7F92A  AE CA 0A     Mx
    BEQ L_A7F932                    ; $A7F92D  F0 03        Mx
    LDA #$0001                      ; $A7F92F  A9 01 00     Mx
L_A7F932:
    LDX $0AD2                       ; $A7F932  AE D2 0A     Mx
    BEQ L_A7F93A                    ; $A7F935  F0 03        Mx
    ORA #$0002                      ; $A7F937  09 02 00     Mx
L_A7F93A:
    LDX $0ADA                       ; $A7F93A  AE DA 0A     Mx
    BEQ L_A7F942                    ; $A7F93D  F0 03        Mx
    ORA #$0004                      ; $A7F93F  09 04 00     Mx
L_A7F942:
    LDX $0AE2                       ; $A7F942  AE E2 0A     Mx
    BEQ L_A7F94A                    ; $A7F945  F0 03        Mx
    ORA #$0008                      ; $A7F947  09 08 00     Mx
L_A7F94A:
    LDX $0AEA                       ; $A7F94A  AE EA 0A     Mx
    BEQ L_A7F952                    ; $A7F94D  F0 03        Mx
    ORA #$0010                      ; $A7F94F  09 10 00     Mx
L_A7F952:
    STA $09A6                       ; $A7F952  8D A6 09     Mx
L_A7F955:
    STZ $0A96                       ; $A7F955  9C 96 0A     Mx
    STZ $0C21                       ; $A7F958  9C 21 0C     Mx
    STZ $0C23                       ; $A7F95B  9C 23 0C     Mx
    LDA $1CED                       ; $A7F95E  AD ED 1C     Mx
    LDY #$00                        ; $A7F961  A0 00        Mx
    JSR L_A7FB14                    ; $A7F963  20 14 FB     Mx
    LDA $1CEF                       ; $A7F966  AD EF 1C     Mx
    LDY #$02                        ; $A7F969  A0 02        Mx
    JSR L_A7FB14                    ; $A7F96B  20 14 FB     Mx
    LDA $1CF1                       ; $A7F96E  AD F1 1C     Mx
    LDY #$04                        ; $A7F971  A0 04        Mx
    JSR L_A7FB14                    ; $A7F973  20 14 FB     Mx
    LDA $1CF3                       ; $A7F976  AD F3 1C     Mx
    LDY #$06                        ; $A7F979  A0 06        Mx
    JSR L_A7FB14                    ; $A7F97B  20 14 FB     Mx
    LDX $06F1                       ; $A7F97E  AE F1 06     Mx
    LDA $1D5A                       ; $A7F981  AD 5A 1D     Mx
    STA $07D2                       ; $A7F984  8D D2 07     Mx
    LDA $1D62                       ; $A7F987  AD 62 1D     Mx
    STA $07D0                       ; $A7F98A  8D D0 07     Mx
    LDA $1D6A                       ; $A7F98D  AD 6A 1D     Mx
    STA $07D4                       ; $A7F990  8D D4 07     Mx
    LDA $1D5C                       ; $A7F993  AD 5C 1D     Mx
    STA $08BA                       ; $A7F996  8D BA 08     Mx
    LDA $1D64                       ; $A7F999  AD 64 1D     Mx
    STA $08B8                       ; $A7F99C  8D B8 08     Mx
    LDA $1D6C                       ; $A7F99F  AD 6C 1D     Mx
    STA $08BC                       ; $A7F9A2  8D BC 08     Mx
    LDA $1C5D                       ; $A7F9A5  AD 5D 1C     Mx
    BNE L_A7F9BE                    ; $A7F9A8  D0 14        Mx
    LDA $1D5C                       ; $A7F9AA  AD 5C 1D     Mx
    STA $09A2                       ; $A7F9AD  8D A2 09     Mx
    LDA $1D64                       ; $A7F9B0  AD 64 1D     Mx
    STA $09A0                       ; $A7F9B3  8D A0 09     Mx
    LDA $1D6C                       ; $A7F9B6  AD 6C 1D     Mx
    STA $09A4                       ; $A7F9B9  8D A4 09     Mx
    BRA L_A7F9D0                    ; $A7F9BC  80 12        Mx
L_A7F9BE:
    LDA $1D5E                       ; $A7F9BE  AD 5E 1D     Mx
    STA $09A2                       ; $A7F9C1  8D A2 09     Mx
    LDA $1D66                       ; $A7F9C4  AD 66 1D     Mx
    STA $09A0                       ; $A7F9C7  8D A0 09     Mx
    LDA $1D6E                       ; $A7F9CA  AD 6E 1D     Mx
    STA $09A4                       ; $A7F9CD  8D A4 09     Mx
L_A7F9D0:
    LDA $1D60                       ; $A7F9D0  AD 60 1D     Mx
    STA $0A8A                       ; $A7F9D3  8D 8A 0A     Mx
    LDA $1D68                       ; $A7F9D6  AD 68 1D     Mx
    STA $0A88                       ; $A7F9D9  8D 88 0A     Mx
    LDA $1D70                       ; $A7F9DC  AD 70 1D     Mx
    STA $0A8C                       ; $A7F9DF  8D 8C 0A     Mx
    LDA #$0000                      ; $A7F9E2  A9 00 00     Mx
    TAX                             ; $A7F9E5  AA           Mx
L_A7F9E6:
    STA $0B0A,X                     ; $A7F9E6  9D 0A 0B     Mx
    INX                             ; $A7F9E9  E8           Mx
    INX                             ; $A7F9EA  E8           Mx
    CPX #$40                        ; $A7F9EB  E0 40        Mx
    BNE L_A7F9E6                    ; $A7F9ED  D0 F7        Mx
    LDA $0B4A                       ; $A7F9EF  AD 4A 0B     Mx
    BEQ L_A7F9FC                    ; $A7F9F2  F0 08        Mx
    CMP #$0002                      ; $A7F9F4  C9 02 00     Mx
    BCS L_A7FA77                    ; $A7F9F7  B0 7E        Mx
    JMP L_A7FA22                    ; $A7F9F9  4C 22 FA     Mx
L_A7F9FC:
    LDA $1C5D                       ; $A7F9FC  AD 5D 1C     Mx
    CMP #$0002                      ; $A7F9FF  C9 02 00     Mx
    BEQ L_A7FA22                    ; $A7FA02  F0 1E        Mx
    CMP #$0001                      ; $A7FA04  C9 01 00     Mx
    BEQ L_A7FA13                    ; $A7FA07  F0 0A        Mx
    LDX $06F1                       ; $A7FA09  AE F1 06     Mx
    BEQ L_A7FA1D                    ; $A7FA0C  F0 0F        Mx
    JSR L_A7FA38                    ; $A7FA0E  20 38 FA     Mx
    BRA L_A7FA77                    ; $A7FA11  80 64        Mx
L_A7FA13:
    LDX $06F1                       ; $A7FA13  AE F1 06     Mx
    BEQ L_A7FA1D                    ; $A7FA16  F0 05        Mx
    JSR L_A7FA34                    ; $A7FA18  20 34 FA     Mx
    BRA L_A7FA77                    ; $A7FA1B  80 5A        Mx
L_A7FA1D:
    JSR L_A7FA30                    ; $A7FA1D  20 30 FA     Mx
    BRA L_A7FA77                    ; $A7FA20  80 55        Mx
L_A7FA22:
    JSR L_A7FA30                    ; $A7FA22  20 30 FA     Mx
    JSR L_A7FA34                    ; $A7FA25  20 34 FA     Mx
    JSR L_A7FA38                    ; $A7FA28  20 38 FA     Mx
    JSR L_A7FA3C                    ; $A7FA2B  20 3C FA     Mx
    BRA L_A7FA77                    ; $A7FA2E  80 47        Mx
L_A7FA30:
    LDX #$00                        ; $A7FA30  A2 00        Mx
    BRA L_A7FA3E                    ; $A7FA32  80 0A        Mx
L_A7FA34:
    LDX #$10                        ; $A7FA34  A2 10        Mx
    BRA L_A7FA3E                    ; $A7FA36  80 06        Mx
L_A7FA38:
    LDX #$20                        ; $A7FA38  A2 20        Mx
    BRA L_A7FA3E                    ; $A7FA3A  80 02        Mx
L_A7FA3C:
    LDX #$30                        ; $A7FA3C  A2 30        Mx
L_A7FA3E:
    LDA $27FA82                     ; $A7FA3E  AF 82 FA 27  Mx
    STA $0B0A,X                     ; $A7FA42  9D 0A 0B     Mx
    LDA $27FA84                     ; $A7FA45  AF 84 FA 27  Mx
    STA $0B0C,X                     ; $A7FA49  9D 0C 0B     Mx
    LDA $27FA86                     ; $A7FA4C  AF 86 FA 27  Mx
    STA $0B0E,X                     ; $A7FA50  9D 0E 0B     Mx
    LDA $27FA88                     ; $A7FA53  AF 88 FA 27  Mx
    STA $0B10,X                     ; $A7FA57  9D 10 0B     Mx
    LDA $27FA8A                     ; $A7FA5A  AF 8A FA 27  Mx
    STA $0B12,X                     ; $A7FA5E  9D 12 0B     Mx
    LDA $27FA8C                     ; $A7FA61  AF 8C FA 27  Mx
    STA $0B14,X                     ; $A7FA65  9D 14 0B     Mx
    LDA $27FA8E                     ; $A7FA68  AF 8E FA 27  Mx
    STA $0B16,X                     ; $A7FA6C  9D 16 0B     Mx
    LDA $27FA90                     ; $A7FA6F  AF 90 FA 27  Mx
    STA $0B18,X                     ; $A7FA73  9D 18 0B     Mx
    RTS                             ; $A7FA76  60           Mx
L_A7FA77:
    LDX #$00                        ; $A7FA77  A2 00        Mx
L_A7FA79:
    STZ $1C89,X                     ; $A7FA79  9E 89 1C     Mx
    INX                             ; $A7FA7C  E8           Mx
    CPX #$40                        ; $A7FA7D  E0 40        Mx
    BNE L_A7FA79                    ; $A7FA7F  D0 F8        Mx
    RTL                             ; $A7FA81  6B           Mx
    db $27,$28,$28,$28,$29,$28,$2A,$28,$2B,$28,$2C,$28,$2D,$28,$2E,$28 ; $A7FA82
L_A7FA92:
    INC $0CD7                       ; $A7FA92  EE D7 0C     Mx
    LDA $0CD5                       ; $A7FA95  AD D5 0C     Mx
    CMP #$0008                      ; $A7FA98  C9 08 00     Mx
    BEQ L_A7FAA1                    ; $A7FA9B  F0 04        Mx
    INC                             ; $A7FA9D  1A           Mx
    STA $0CD5                       ; $A7FA9E  8D D5 0C     Mx
L_A7FAA1:
    STZ $1341                       ; $A7FAA1  9C 41 13     Mx
    STZ $15E5                       ; $A7FAA4  9C E5 15     Mx
    STZ $1131                       ; $A7FAA7  9C 31 11     Mx
    STZ $1133                       ; $A7FAAA  9C 33 11     Mx
    STZ $1135                       ; $A7FAAD  9C 35 11     Mx
    LDA #$0003                      ; $A7FAB0  A9 03 00     Mx
L_A7FAB3:
    STA $0CC1                       ; $A7FAB3  8D C1 0C     Mx
    STZ $0CC3                       ; $A7FAB6  9C C3 0C     Mx
    STZ $0CC5                       ; $A7FAB9  9C C5 0C     Mx
    LDA #$003B                      ; $A7FABC  A9 3B 00     Mx
    STA $0CC7                       ; $A7FABF  8D C7 0C     Mx
    LDA #$00B4                      ; $A7FAC2  A9 B4 00     Mx
    STA $0CCB                       ; $A7FAC5  8D CB 0C     Mx
    STZ $1137                       ; $A7FAC8  9C 37 11     Mx
    STZ $0C3B                       ; $A7FACB  9C 3B 0C     Mx
    LDA #$2A30                      ; $A7FACE  A9 30 2A     Mx
    STA $112D                       ; $A7FAD1  8D 2D 11     Mx
    STZ $0CD3                       ; $A7FAD4  9C D3 0C     Mx
    STZ $0CE9                       ; $A7FAD7  9C E9 0C     Mx
    STZ $0008                       ; $A7FADA  9C 08 00     Mx
    STZ $000A                       ; $A7FADD  9C 0A 00     Mx
    STZ $000C                       ; $A7FAE0  9C 0C 00     Mx
    STZ $000E                       ; $A7FAE3  9C 0E 00     Mx
    STZ $0CFB                       ; $A7FAE6  9C FB 0C     Mx
    LDA #$0078                      ; $A7FAE9  A9 78 00     Mx
    STA $0AA2                       ; $A7FAEC  8D A2 0A     Mx
    STZ $15EB                       ; $A7FAEF  9C EB 15     Mx
    STZ $15F5                       ; $A7FAF2  9C F5 15     Mx
    STZ $15FD                       ; $A7FAF5  9C FD 15     Mx
    STZ $15F9                       ; $A7FAF8  9C F9 15     Mx
    STZ $15FB                       ; $A7FAFB  9C FB 15     Mx
    LDA #$FFFF                      ; $A7FAFE  A9 FF FF     Mx
    STA $15F3                       ; $A7FB01  8D F3 15     Mx
    STZ $0B50                       ; $A7FB04  9C 50 0B     Mx
    STZ $1341                       ; $A7FB07  9C 41 13     Mx
    STZ $0AA0                       ; $A7FB0A  9C A0 0A     Mx
    STZ $0A9E                       ; $A7FB0D  9C 9E 0A     Mx
    STZ $0A98                       ; $A7FB10  9C 98 0A     Mx
    RTL                             ; $A7FB13  6B           Mx
L_A7FB14:
    AND #$0007                      ; $A7FB14  29 07 00     Mx
    ASL                             ; $A7FB17  0A           Mx
    ASL                             ; $A7FB18  0A           Mx
    ASL                             ; $A7FB19  0A           Mx
    TAX                             ; $A7FB1A  AA           Mx
    LDA $27FB31,X                   ; $A7FB1B  BF 31 FB 27  Mx
    STA $1D5A,Y                     ; $A7FB1F  99 5A 1D     Mx
    LDA $27FB33,X                   ; $A7FB22  BF 33 FB 27  Mx
    STA $1D62,Y                     ; $A7FB26  99 62 1D     Mx
    LDA $27FB35,X                   ; $A7FB29  BF 35 FB 27  Mx
    STA $1D6A,Y                     ; $A7FB2D  99 6A 1D     Mx
    RTS                             ; $A7FB30  60           Mx
L_A7FB31:
    BRA L_A7FAB3                    ; $A7FB31  80 80        Mx
L_A7FB33:
    RTI                             ; $A7FB33  40           Mx
    db $40,$30,$00,$00,$00,$C0,$00,$00,$C0,$30,$00,$00,$00,$60,$00,$90 ; $A7FB34
    db $00,$00,$C0,$00,$00,$20,$00,$10,$00,$C0,$C0,$00,$00,$00,$40,$00 ; $A7FB44
    db $80,$F0,$00,$00,$00,$40,$00,$30,$00,$80,$C0,$00,$00,$40,$00,$30 ; $A7FB54
    db $00,$80,$C0,$00,$00,$40,$00,$30,$00,$80,$C0,$00,$00,$B4,$9B,$17 ; $A7FB64
    db $DA,$9B,$17,$DA,$9D,$17,$E5,$9D,$17,$65,$9E,$17,$70,$9E,$17,$F0 ; $A7FB74
    db $9E,$17,$FB,$9E,$17,$42,$A3,$17,$CB,$A3,$17,$7B,$9F,$17,$8F,$9F ; $A7FB84
    db $17,$8F,$A0,$17,$A3,$A0,$17,$A3,$A1,$17,$B7,$A1,$17,$B7,$A2,$17 ; $A7FB94
    db $C2,$A2,$17,$CB,$A6,$17,$D6,$A6,$17,$F6,$A6,$17,$1C,$A7,$17,$DB ; $A7FBA4
    db $BE,$28,$EF,$BE,$28,$60,$C3,$28,$6B,$C3,$28,$EB,$C3,$28,$F6,$C3 ; $A7FBB4
    db $28,$76,$C4,$28,$81,$C4,$28,$01,$C5,$28,$0C,$C5,$28,$8C,$C5,$28 ; $A7FBC4
    db $97,$C5,$28,$17,$C6,$28,$22,$C6,$28,$A2,$C6,$28,$AD,$C6,$28,$2D ; $A7FBD4
    db $C7,$28,$41,$C7,$28,$41,$C8,$28,$4C,$C8,$28,$55,$F0,$04,$84,$F0 ; $A7FBE4
    db $04,$EF,$BF,$28,$FA,$BF,$28,$1A,$C0,$28,$25,$C0,$28,$45,$C0,$28 ; $A7FBF4
    db $50,$C0,$28,$70,$C0,$28,$7B,$C0,$28,$9B,$C0,$28,$A6,$C0,$28,$C6 ; $A7FC04
    db $C0,$28,$D1,$C0,$28,$F1,$C0,$28,$FC,$C0,$28,$1C,$C1,$28,$27,$C1 ; $A7FC14
    db $28,$47,$C1,$28,$52,$C1,$28,$D2,$C1,$28,$DD,$C1,$28,$5D,$C2,$28 ; $A7FC24
    db $68,$C2,$28,$24,$F1,$04,$4A,$F1,$04,$FF,$FF,$FF                 ; $A7FC34
L_A7FC40:
    LDA $071E                       ; $A7FC40  AD 1E 07     Mx
    STA $00D0                       ; $A7FC43  8D D0 00     Mx
    LDA $0726                       ; $A7FC46  AD 26 07     Mx
    STA $00D3                       ; $A7FC49  8D D3 00     Mx
    LDA $0752                       ; $A7FC4C  AD 52 07     Mx
    STA $00E2                       ; $A7FC4F  8D E2 00     Mx
    LDA #$0374                      ; $A7FC52  A9 74 03     Mx
    STA $00E5                       ; $A7FC55  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FC58  22 F9 AE 00  Mx
    STA $0756                       ; $A7FC5C  8D 56 07     Mx
    LDA $00D3                       ; $A7FC5F  AD D3 00     Mx
    STA $0754                       ; $A7FC62  8D 54 07     Mx
    LDA $071E                       ; $A7FC65  AD 1E 07     Mx
    STA $00D0                       ; $A7FC68  8D D0 00     Mx
    LDA $0726                       ; $A7FC6B  AD 26 07     Mx
    STA $00D3                       ; $A7FC6E  8D D3 00     Mx
    LDA $0922                       ; $A7FC71  AD 22 09     Mx
    STA $00E2                       ; $A7FC74  8D E2 00     Mx
    LDA #$0374                      ; $A7FC77  A9 74 03     Mx
    STA $00E5                       ; $A7FC7A  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FC7D  22 F9 AE 00  Mx
    STA $075A                       ; $A7FC81  8D 5A 07     Mx
    LDA $00D3                       ; $A7FC84  AD D3 00     Mx
    STA $0758                       ; $A7FC87  8D 58 07     Mx
    LDA $06F0                       ; $A7FC8A  AD F0 06     Mx
    CMP $0C19                       ; $A7FC8D  CD 19 0C     Mx
    BEQ L_A7FCB7                    ; $A7FC90  F0 25        Mx
    LDA $071E                       ; $A7FC92  AD 1E 07     Mx
    STA $00D0                       ; $A7FC95  8D D0 00     Mx
    LDA $0726                       ; $A7FC98  AD 26 07     Mx
    STA $00D3                       ; $A7FC9B  8D D3 00     Mx
    LDA $0BD9                       ; $A7FC9E  AD D9 0B     Mx
    STA $00E2                       ; $A7FCA1  8D E2 00     Mx
    LDA $0BE1                       ; $A7FCA4  AD E1 0B     Mx
    STA $00E5                       ; $A7FCA7  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FCAA  22 F9 AE 00  Mx
    STA $075E                       ; $A7FCAE  8D 5E 07     Mx
    LDA $00D3                       ; $A7FCB1  AD D3 00     Mx
    STA $075C                       ; $A7FCB4  8D 5C 07     Mx
L_A7FCB7:
    LDA $071E                       ; $A7FCB7  AD 1E 07     Mx
    STA $00D0                       ; $A7FCBA  8D D0 00     Mx
    LDA $0726                       ; $A7FCBD  AD 26 07     Mx
    STA $00D3                       ; $A7FCC0  8D D3 00     Mx
    LDA $0806                       ; $A7FCC3  AD 06 08     Mx
    STA $00E2                       ; $A7FCC6  8D E2 00     Mx
    LDA $080E                       ; $A7FCC9  AD 0E 08     Mx
    STA $00E5                       ; $A7FCCC  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FCCF  22 F9 AE 00  Mx
    STA $0760                       ; $A7FCD3  8D 60 07     Mx
    LDA $00D3                       ; $A7FCD6  AD D3 00     Mx
    STA $0766                       ; $A7FCD9  8D 66 07     Mx
    LDA $071E                       ; $A7FCDC  AD 1E 07     Mx
    STA $00D0                       ; $A7FCDF  8D D0 00     Mx
    LDA $0726                       ; $A7FCE2  AD 26 07     Mx
    STA $00D3                       ; $A7FCE5  8D D3 00     Mx
    LDA $08EE                       ; $A7FCE8  AD EE 08     Mx
    STA $00E2                       ; $A7FCEB  8D E2 00     Mx
    LDA $08F6                       ; $A7FCEE  AD F6 08     Mx
    STA $00E5                       ; $A7FCF1  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FCF4  22 F9 AE 00  Mx
    STA $0762                       ; $A7FCF8  8D 62 07     Mx
    LDA $00D3                       ; $A7FCFB  AD D3 00     Mx
    STA $0768                       ; $A7FCFE  8D 68 07     Mx
    LDA $071E                       ; $A7FD01  AD 1E 07     Mx
    STA $00D0                       ; $A7FD04  8D D0 00     Mx
    LDA $0726                       ; $A7FD07  AD 26 07     Mx
    STA $00D3                       ; $A7FD0A  8D D3 00     Mx
    LDA $09D6                       ; $A7FD0D  AD D6 09     Mx
    STA $00E2                       ; $A7FD10  8D E2 00     Mx
    LDA $09DE                       ; $A7FD13  AD DE 09     Mx
    STA $00E5                       ; $A7FD16  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FD19  22 F9 AE 00  Mx
    STA $0764                       ; $A7FD1D  8D 64 07     Mx
    LDA $00D3                       ; $A7FD20  AD D3 00     Mx
    STA $076A                       ; $A7FD23  8D 6A 07     Mx
    LDA $0806                       ; $A7FD26  AD 06 08     Mx
    STA $00D0                       ; $A7FD29  8D D0 00     Mx
    LDA $080E                       ; $A7FD2C  AD 0E 08     Mx
    STA $00D3                       ; $A7FD2F  8D D3 00     Mx
    LDA $083A                       ; $A7FD32  AD 3A 08     Mx
    STA $00E2                       ; $A7FD35  8D E2 00     Mx
    LDA #$0374                      ; $A7FD38  A9 74 03     Mx
    STA $00E5                       ; $A7FD3B  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FD3E  22 F9 AE 00  Mx
    STA $083E                       ; $A7FD42  8D 3E 08     Mx
    LDA $00D3                       ; $A7FD45  AD D3 00     Mx
    STA $083C                       ; $A7FD48  8D 3C 08     Mx
    LDA $0806                       ; $A7FD4B  AD 06 08     Mx
    STA $00D0                       ; $A7FD4E  8D D0 00     Mx
    LDA $080E                       ; $A7FD51  AD 0E 08     Mx
    STA $00D3                       ; $A7FD54  8D D3 00     Mx
    LDA $0A0A                       ; $A7FD57  AD 0A 0A     Mx
    STA $00E2                       ; $A7FD5A  8D E2 00     Mx
    LDA #$0374                      ; $A7FD5D  A9 74 03     Mx
    STA $00E5                       ; $A7FD60  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FD63  22 F9 AE 00  Mx
    STA $0842                       ; $A7FD67  8D 42 08     Mx
    LDA $00D3                       ; $A7FD6A  AD D3 00     Mx
    STA $0840                       ; $A7FD6D  8D 40 08     Mx
    LDA $07D8                       ; $A7FD70  AD D8 07     Mx
    CMP $0C19                       ; $A7FD73  CD 19 0C     Mx
    BEQ L_A7FD9D                    ; $A7FD76  F0 25        Mx
    LDA $0806                       ; $A7FD78  AD 06 08     Mx
    STA $00D0                       ; $A7FD7B  8D D0 00     Mx
    LDA $080E                       ; $A7FD7E  AD 0E 08     Mx
    STA $00D3                       ; $A7FD81  8D D3 00     Mx
    LDA $0BD9                       ; $A7FD84  AD D9 0B     Mx
    STA $00E2                       ; $A7FD87  8D E2 00     Mx
    LDA $0BE1                       ; $A7FD8A  AD E1 0B     Mx
    STA $00E5                       ; $A7FD8D  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FD90  22 F9 AE 00  Mx
    STA $0846                       ; $A7FD94  8D 46 08     Mx
    LDA $00D3                       ; $A7FD97  AD D3 00     Mx
    STA $0844                       ; $A7FD9A  8D 44 08     Mx
L_A7FD9D:
    LDA $0806                       ; $A7FD9D  AD 06 08     Mx
    STA $00D0                       ; $A7FDA0  8D D0 00     Mx
    LDA $080E                       ; $A7FDA3  AD 0E 08     Mx
    STA $00D3                       ; $A7FDA6  8D D3 00     Mx
    LDA $071E                       ; $A7FDA9  AD 1E 07     Mx
    STA $00E2                       ; $A7FDAC  8D E2 00     Mx
    LDA $0726                       ; $A7FDAF  AD 26 07     Mx
    STA $00E5                       ; $A7FDB2  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FDB5  22 F9 AE 00  Mx
    STA $0848                       ; $A7FDB9  8D 48 08     Mx
    LDA $00D3                       ; $A7FDBC  AD D3 00     Mx
    STA $084E                       ; $A7FDBF  8D 4E 08     Mx
    LDA $0806                       ; $A7FDC2  AD 06 08     Mx
    STA $00D0                       ; $A7FDC5  8D D0 00     Mx
    LDA $080E                       ; $A7FDC8  AD 0E 08     Mx
    STA $00D3                       ; $A7FDCB  8D D3 00     Mx
    LDA $09D6                       ; $A7FDCE  AD D6 09     Mx
    STA $00E2                       ; $A7FDD1  8D E2 00     Mx
    LDA $09DE                       ; $A7FDD4  AD DE 09     Mx
    STA $00E5                       ; $A7FDD7  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FDDA  22 F9 AE 00  Mx
    STA $084A                       ; $A7FDDE  8D 4A 08     Mx
    LDA $00D3                       ; $A7FDE1  AD D3 00     Mx
    STA $0850                       ; $A7FDE4  8D 50 08     Mx
    LDA $0806                       ; $A7FDE7  AD 06 08     Mx
    STA $00D0                       ; $A7FDEA  8D D0 00     Mx
    LDA $080E                       ; $A7FDED  AD 0E 08     Mx
    STA $00D3                       ; $A7FDF0  8D D3 00     Mx
    LDA $08EE                       ; $A7FDF3  AD EE 08     Mx
    STA $00E2                       ; $A7FDF6  8D E2 00     Mx
    LDA $08F6                       ; $A7FDF9  AD F6 08     Mx
    STA $00E5                       ; $A7FDFC  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FDFF  22 F9 AE 00  Mx
    STA $084C                       ; $A7FE03  8D 4C 08     Mx
    LDA $00D3                       ; $A7FE06  AD D3 00     Mx
    STA $0852                       ; $A7FE09  8D 52 08     Mx
    LDA $08EE                       ; $A7FE0C  AD EE 08     Mx
    STA $00D0                       ; $A7FE0F  8D D0 00     Mx
    LDA $08F6                       ; $A7FE12  AD F6 08     Mx
    STA $00D3                       ; $A7FE15  8D D3 00     Mx
    LDA $0922                       ; $A7FE18  AD 22 09     Mx
    STA $00E2                       ; $A7FE1B  8D E2 00     Mx
    LDA #$0374                      ; $A7FE1E  A9 74 03     Mx
    STA $00E5                       ; $A7FE21  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FE24  22 F9 AE 00  Mx
    STA $0926                       ; $A7FE28  8D 26 09     Mx
    LDA $00D3                       ; $A7FE2B  AD D3 00     Mx
    STA $0924                       ; $A7FE2E  8D 24 09     Mx
    LDA $08EE                       ; $A7FE31  AD EE 08     Mx
    STA $00D0                       ; $A7FE34  8D D0 00     Mx
    LDA $08F6                       ; $A7FE37  AD F6 08     Mx
    STA $00D3                       ; $A7FE3A  8D D3 00     Mx
    LDA $0752                       ; $A7FE3D  AD 52 07     Mx
    STA $00E2                       ; $A7FE40  8D E2 00     Mx
    LDA #$0374                      ; $A7FE43  A9 74 03     Mx
    STA $00E5                       ; $A7FE46  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FE49  22 F9 AE 00  Mx
    STA $092A                       ; $A7FE4D  8D 2A 09     Mx
    LDA $00D3                       ; $A7FE50  AD D3 00     Mx
    STA $0928                       ; $A7FE53  8D 28 09     Mx
    LDA $08C0                       ; $A7FE56  AD C0 08     Mx
    CMP $0C19                       ; $A7FE59  CD 19 0C     Mx
    BEQ L_A7FE83                    ; $A7FE5C  F0 25        Mx
    LDA $08EE                       ; $A7FE5E  AD EE 08     Mx
    STA $00D0                       ; $A7FE61  8D D0 00     Mx
    LDA $08F6                       ; $A7FE64  AD F6 08     Mx
    STA $00D3                       ; $A7FE67  8D D3 00     Mx
    LDA $0BD9                       ; $A7FE6A  AD D9 0B     Mx
    STA $00E2                       ; $A7FE6D  8D E2 00     Mx
    LDA $0BE1                       ; $A7FE70  AD E1 0B     Mx
    STA $00E5                       ; $A7FE73  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FE76  22 F9 AE 00  Mx
    STA $092E                       ; $A7FE7A  8D 2E 09     Mx
    LDA $00D3                       ; $A7FE7D  AD D3 00     Mx
    STA $092C                       ; $A7FE80  8D 2C 09     Mx
L_A7FE83:
    LDA $08EE                       ; $A7FE83  AD EE 08     Mx
    STA $00D0                       ; $A7FE86  8D D0 00     Mx
    LDA $08F6                       ; $A7FE89  AD F6 08     Mx
    STA $00D3                       ; $A7FE8C  8D D3 00     Mx
    LDA $09D6                       ; $A7FE8F  AD D6 09     Mx
    STA $00E2                       ; $A7FE92  8D E2 00     Mx
    LDA $09DE                       ; $A7FE95  AD DE 09     Mx
    STA $00E5                       ; $A7FE98  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FE9B  22 F9 AE 00  Mx
    STA $0930                       ; $A7FE9F  8D 30 09     Mx
    LDA $00D3                       ; $A7FEA2  AD D3 00     Mx
    STA $0936                       ; $A7FEA5  8D 36 09     Mx
    LDA $08EE                       ; $A7FEA8  AD EE 08     Mx
    STA $00D0                       ; $A7FEAB  8D D0 00     Mx
    LDA $08F6                       ; $A7FEAE  AD F6 08     Mx
    STA $00D3                       ; $A7FEB1  8D D3 00     Mx
    LDA $071E                       ; $A7FEB4  AD 1E 07     Mx
    STA $00E2                       ; $A7FEB7  8D E2 00     Mx
    LDA $0726                       ; $A7FEBA  AD 26 07     Mx
    STA $00E5                       ; $A7FEBD  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FEC0  22 F9 AE 00  Mx
    STA $0932                       ; $A7FEC4  8D 32 09     Mx
    LDA $00D3                       ; $A7FEC7  AD D3 00     Mx
    STA $0938                       ; $A7FECA  8D 38 09     Mx
    LDA $08EE                       ; $A7FECD  AD EE 08     Mx
    STA $00D0                       ; $A7FED0  8D D0 00     Mx
    LDA $08F6                       ; $A7FED3  AD F6 08     Mx
    STA $00D3                       ; $A7FED6  8D D3 00     Mx
    LDA $0806                       ; $A7FED9  AD 06 08     Mx
    STA $00E2                       ; $A7FEDC  8D E2 00     Mx
    LDA $080E                       ; $A7FEDF  AD 0E 08     Mx
    STA $00E5                       ; $A7FEE2  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FEE5  22 F9 AE 00  Mx
    STA $0934                       ; $A7FEE9  8D 34 09     Mx
    LDA $00D3                       ; $A7FEEC  AD D3 00     Mx
    STA $093A                       ; $A7FEEF  8D 3A 09     Mx
    LDA $09D6                       ; $A7FEF2  AD D6 09     Mx
    STA $00D0                       ; $A7FEF5  8D D0 00     Mx
    LDA $09DE                       ; $A7FEF8  AD DE 09     Mx
    STA $00D3                       ; $A7FEFB  8D D3 00     Mx
    LDA $0A0A                       ; $A7FEFE  AD 0A 0A     Mx
    STA $00E2                       ; $A7FF01  8D E2 00     Mx
    LDA #$0374                      ; $A7FF04  A9 74 03     Mx
    STA $00E5                       ; $A7FF07  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FF0A  22 F9 AE 00  Mx
    STA $0A0E                       ; $A7FF0E  8D 0E 0A     Mx
    LDA $00D3                       ; $A7FF11  AD D3 00     Mx
    STA $0A0C                       ; $A7FF14  8D 0C 0A     Mx
    LDA $09D6                       ; $A7FF17  AD D6 09     Mx
    STA $00D0                       ; $A7FF1A  8D D0 00     Mx
    LDA $09DE                       ; $A7FF1D  AD DE 09     Mx
    STA $00D3                       ; $A7FF20  8D D3 00     Mx
    LDA $083A                       ; $A7FF23  AD 3A 08     Mx
    STA $00E2                       ; $A7FF26  8D E2 00     Mx
    LDA #$0374                      ; $A7FF29  A9 74 03     Mx
    STA $00E5                       ; $A7FF2C  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FF2F  22 F9 AE 00  Mx
    STA $0A12                       ; $A7FF33  8D 12 0A     Mx
    LDA $00D3                       ; $A7FF36  AD D3 00     Mx
    STA $0A10                       ; $A7FF39  8D 10 0A     Mx
    LDA $09A8                       ; $A7FF3C  AD A8 09     Mx
    CMP $0C19                       ; $A7FF3F  CD 19 0C     Mx
    BEQ L_A7FF69                    ; $A7FF42  F0 25        Mx
    LDA $09D6                       ; $A7FF44  AD D6 09     Mx
    STA $00D0                       ; $A7FF47  8D D0 00     Mx
    LDA $09DE                       ; $A7FF4A  AD DE 09     Mx
    STA $00D3                       ; $A7FF4D  8D D3 00     Mx
    LDA $0BD9                       ; $A7FF50  AD D9 0B     Mx
    STA $00E2                       ; $A7FF53  8D E2 00     Mx
    LDA $0BE1                       ; $A7FF56  AD E1 0B     Mx
    STA $00E5                       ; $A7FF59  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FF5C  22 F9 AE 00  Mx
    STA $0A16                       ; $A7FF60  8D 16 0A     Mx
    LDA $00D3                       ; $A7FF63  AD D3 00     Mx
    STA $0A14                       ; $A7FF66  8D 14 0A     Mx
L_A7FF69:
    LDA $09D6                       ; $A7FF69  AD D6 09     Mx
    STA $00D0                       ; $A7FF6C  8D D0 00     Mx
    LDA $09DE                       ; $A7FF6F  AD DE 09     Mx
    STA $00D3                       ; $A7FF72  8D D3 00     Mx
    LDA $08EE                       ; $A7FF75  AD EE 08     Mx
    STA $00E2                       ; $A7FF78  8D E2 00     Mx
    LDA $08F6                       ; $A7FF7B  AD F6 08     Mx
    STA $00E5                       ; $A7FF7E  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FF81  22 F9 AE 00  Mx
    STA $0A18                       ; $A7FF85  8D 18 0A     Mx
    LDA $00D3                       ; $A7FF88  AD D3 00     Mx
    STA $0A1E                       ; $A7FF8B  8D 1E 0A     Mx
    LDA $09D6                       ; $A7FF8E  AD D6 09     Mx
    STA $00D0                       ; $A7FF91  8D D0 00     Mx
    LDA $09DE                       ; $A7FF94  AD DE 09     Mx
    STA $00D3                       ; $A7FF97  8D D3 00     Mx
    LDA $0806                       ; $A7FF9A  AD 06 08     Mx
    STA $00E2                       ; $A7FF9D  8D E2 00     Mx
    LDA $080E                       ; $A7FFA0  AD 0E 08     Mx
    STA $00E5                       ; $A7FFA3  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FFA6  22 F9 AE 00  Mx
    STA $0A1A                       ; $A7FFAA  8D 1A 0A     Mx
    LDA $00D3                       ; $A7FFAD  AD D3 00     Mx
    STA $0A20                       ; $A7FFB0  8D 20 0A     Mx
    LDA $09D6                       ; $A7FFB3  AD D6 09     Mx
    STA $00D0                       ; $A7FFB6  8D D0 00     Mx
    LDA $09DE                       ; $A7FFB9  AD DE 09     Mx
    STA $00D3                       ; $A7FFBC  8D D3 00     Mx
    LDA $071E                       ; $A7FFBF  AD 1E 07     Mx
    STA $00E2                       ; $A7FFC2  8D E2 00     Mx
    LDA $0726                       ; $A7FFC5  AD 26 07     Mx
    STA $00E5                       ; $A7FFC8  8D E5 00     Mx
    JSL $00AEF9                     ; $A7FFCB  22 F9 AE 00  Mx
    STA $0A1C                       ; $A7FFCF  8D 1C 0A     Mx
    LDA $00D3                       ; $A7FFD2  AD D3 00     Mx
    STA $0A22                       ; $A7FFD5  8D 22 0A     Mx
    RTL                             ; $A7FFD8  6B           Mx
    db $00,$8D,$22,$0A,$6B,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $A7FFD9
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $A7FFE9
    db $00,$00,$FF,$FF,$00,$00,$FF                                     ; $A7FFF9
