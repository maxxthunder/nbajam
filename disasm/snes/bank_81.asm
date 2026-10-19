; bank $81  (file offset $008000)
org $818000

L_818000:
    LDA $0CC1                       ; $818000  AD C1 0C     Mx
    BEQ L_818006                    ; $818003  F0 01        Mx
    RTL                             ; $818005  6B           Mx
L_818006:
    LDA #$0004                      ; $818006  A9 04 00     Mx
    STA $00A4                       ; $818009  8D A4 00     Mx
    LDA #$06F0                      ; $81800C  A9 F0 06     Mx
    STA $00DC                       ; $81800F  8D DC 00     Mx
    LDA #$07D8                      ; $818012  A9 D8 07     Mx
    STA $00D9                       ; $818015  8D D9 00     Mx
    JSR L_81805B                    ; $818018  20 5B 80     Mx
    LDA #$0003                      ; $81801B  A9 03 00     Mx
    STA $00A4                       ; $81801E  8D A4 00     Mx
    LDA #$07D8                      ; $818021  A9 D8 07     Mx
    STA $00DC                       ; $818024  8D DC 00     Mx
    LDA #$06F0                      ; $818027  A9 F0 06     Mx
    STA $00D9                       ; $81802A  8D D9 00     Mx
    JSR L_81805B                    ; $81802D  20 5B 80     Mx
    LDA #$0002                      ; $818030  A9 02 00     Mx
    STA $00A4                       ; $818033  8D A4 00     Mx
    LDA #$08C0                      ; $818036  A9 C0 08     Mx
    STA $00DC                       ; $818039  8D DC 00     Mx
    LDA #$09A8                      ; $81803C  A9 A8 09     Mx
    STA $00D9                       ; $81803F  8D D9 00     Mx
    JSR L_81805B                    ; $818042  20 5B 80     Mx
    LDA #$0001                      ; $818045  A9 01 00     Mx
    STA $00A4                       ; $818048  8D A4 00     Mx
    LDA #$09A8                      ; $81804B  A9 A8 09     Mx
    STA $00DC                       ; $81804E  8D DC 00     Mx
    LDA #$08C0                      ; $818051  A9 C0 08     Mx
    STA $00D9                       ; $818054  8D D9 00     Mx
    JSR L_81805B                    ; $818057  20 5B 80     Mx
    RTL                             ; $81805A  6B           Mx
L_81805B:
    LDY #$C6                        ; $81805B  A0 C6        Mx
    LDA ($DC),Y                     ; $81805D  B1 DC        Mx
    STA $00D6                       ; $81805F  8D D6 00     Mx
    LDY #$DA                        ; $818062  A0 DA        Mx
    LDA ($DC),Y                     ; $818064  B1 DC        Mx
    BMI L_818070                    ; $818066  30 08        Mx
    CMP #$000F                      ; $818068  C9 0F 00     Mx
    BMI L_818070                    ; $81806B  30 03        Mx
    LDA #$000F                      ; $81806D  A9 0F 00     Mx
L_818070:
    CLC                             ; $818070  18           Mx
    ADC #$000F                      ; $818071  69 0F 00     Mx
    BPL L_818079                    ; $818074  10 03        Mx
    AND #$0000                      ; $818076  29 00 00     Mx
L_818079:
    ASL                             ; $818079  0A           Mx
    TAX                             ; $81807A  AA           Mx
    LDA $818114,X                   ; $81807B  BF 14 81 81  Mx
    CLC                             ; $81807F  18           Mx
    ADC $00D6                       ; $818080  6D D6 00     Mx
    STA $00D6                       ; $818083  8D D6 00     Mx
    LDA $0CD5                       ; $818086  AD D5 0C     Mx
    CMP #$0003                      ; $818089  C9 03 00     Mx
    BCC L_818091                    ; $81808C  90 03        Mx
    LDA #$0002                      ; $81808E  A9 02 00     Mx
L_818091:
    ASL                             ; $818091  0A           Mx
    TAX                             ; $818092  AA           Mx
    LDA $818152,X                   ; $818093  BF 52 81 81  Mx
    CLC                             ; $818097  18           Mx
    ADC $1CE7                       ; $818098  6D E7 1C     Mx
    SEC                             ; $81809B  38           Mx
    SBC #$0002                      ; $81809C  E9 02 00     Mx
    CLC                             ; $81809F  18           Mx
    ADC $0AC4                       ; $8180A0  6D C4 0A     Mx
    STA $00B7                       ; $8180A3  8D B7 00     Mx
    LDA $00D6                       ; $8180A6  AD D6 00     Mx
    CMP $00B7                       ; $8180A9  CD B7 00     Mx
    BPL L_8180B4                    ; $8180AC  10 06        Mx
    LDA $00B7                       ; $8180AE  AD B7 00     Mx
    STA $00D6                       ; $8180B1  8D D6 00     Mx
L_8180B4:
    LDY #$00                        ; $8180B4  A0 00        Mx
    LDA ($D9),Y                     ; $8180B6  B1 D9        Mx
    AND #$FF00                      ; $8180B8  29 00 FF     Mx
    BNE L_81810C                    ; $8180BB  D0 4F        Mx
    LDA $1683                       ; $8180BD  AD 83 16     Mx
    STA $00B7                       ; $8180C0  8D B7 00     Mx
    LDA $00A4                       ; $8180C3  AD A4 00     Mx
    CMP #$0003                      ; $8180C6  C9 03 00     Mx
    BCS L_8180D1                    ; $8180C9  B0 06        Mx
    LDA $1685                       ; $8180CB  AD 85 16     Mx
    STA $00B7                       ; $8180CE  8D B7 00     Mx
L_8180D1:
    LDA $00B7                       ; $8180D1  AD B7 00     Mx
    AND #$001F                      ; $8180D4  29 1F 00     Mx
    ASL                             ; $8180D7  0A           Mx
    ASL                             ; $8180D8  0A           Mx
    STA $00B7                       ; $8180D9  8D B7 00     Mx
    LDA $0CD5                       ; $8180DC  AD D5 0C     Mx
    CMP #$0004                      ; $8180DF  C9 04 00     Mx
    BCC L_8180E7                    ; $8180E2  90 03        Mx
    LDA #$0003                      ; $8180E4  A9 03 00     Mx
L_8180E7:
    CLC                             ; $8180E7  18           Mx
    ADC $00B7                       ; $8180E8  6D B7 00     Mx
    TAX                             ; $8180EB  AA           Mx
    LDA $818158,X                   ; $8180EC  BF 58 81 81  Mx
    AND #$00FF                      ; $8180F0  29 FF 00     Mx
    CMP #$0080                      ; $8180F3  C9 80 00     Mx
    BCC L_8180FB                    ; $8180F6  90 03        Mx
    ORA #$FF00                      ; $8180F8  09 00 FF     Mx
L_8180FB:
    STA $00B7                       ; $8180FB  8D B7 00     Mx
    LDA $00D6                       ; $8180FE  AD D6 00     Mx
    CMP $00B7                       ; $818101  CD B7 00     Mx
    BPL L_81810C                    ; $818104  10 06        Mx
    LDA $00B7                       ; $818106  AD B7 00     Mx
    STA $00D6                       ; $818109  8D D6 00     Mx
L_81810C:
    LDY #$C6                        ; $81810C  A0 C6        Mx
    LDA $00D6                       ; $81810E  AD D6 00     Mx
    STA ($DC),Y                     ; $818111  91 DC        Mx
    RTS                             ; $818113  60           Mx
    db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF ; $818114
    db $FC,$FF,$FD,$FF,$FE,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00 ; $818124
    db $01,$00,$01,$00,$02,$00,$02,$00,$03,$00,$03,$00,$04,$00,$04,$00 ; $818134
    db $05,$00,$05,$00,$05,$00,$06,$00,$06,$00,$06,$00,$07,$00,$F8,$FF ; $818144
    db $FA,$FF,$FC,$FF,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00 ; $818154
    db $04,$06,$07,$08,$02,$04,$05,$06,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00 ; $818164
    db $F8,$FA,$FC,$00,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00 ; $818174
    db $F8,$FA,$FC,$00,$00,$02,$03,$04,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00 ; $818184
    db $06,$09,$0C,$0E,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00 ; $818194
    db $F8,$FA,$FC,$00,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00 ; $8181A4
    db $01,$03,$04,$05,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00,$F8,$FA,$FC,$00 ; $8181B4
    db $F8,$FA,$FC,$00                                                 ; $8181C4
L_8181C8:
    LDX $06F1                       ; $8181C8  AE F1 06     Mx
    BEQ L_8181D3                    ; $8181CB  F0 06        Mx
    LDA $0006,X                     ; $8181CD  BD 06 00     Mx
    JMP L_818EE6                    ; $8181D0  4C E6 8E     Mx
L_8181D3:
    PHP                             ; $8181D3  08           Mx
    REP #$30                        ; $8181D4  C2 30        Mx
    LDA $4212                       ; $8181D6  AD 12 42     MX
    SEP #$20                        ; $8181D9  E2 20        MX
    CLC                             ; $8181DB  18           mX
    ADC $1D57                       ; $8181DC  6D 57 1D     mX
    STA $1D57                       ; $8181DF  8D 57 1D     mX
    REP #$20                        ; $8181E2  C2 20        mX
    LDA $4212                       ; $8181E4  AD 12 42     MX
    TAX                             ; $8181E7  AA           MX
    SEP #$20                        ; $8181E8  E2 20        MX
    EOR $1D58                       ; $8181EA  4D 58 1D     mX
    STA $1D58                       ; $8181ED  8D 58 1D     mX
    TXA                             ; $8181F0  8A           mX
    ADC $1D59                       ; $8181F1  6D 59 1D     mX
    REP #$20                        ; $8181F4  C2 20        mX
    LDA $1D56                       ; $8181F6  AD 56 1D     MX
    INC                             ; $8181F9  1A           MX
    ROR                             ; $8181FA  6A           MX
    LSR $1D58                       ; $8181FB  4E 58 1D     MX
    EOR #$2B41                      ; $8181FE  49 41 2B     MX
    SBC #$000F                      ; $818201  E9 0F 00     MX
    STA $1D56                       ; $818204  8D 56 1D     MX
    LDA $1D58                       ; $818207  AD 58 1D     MX
    EOR #$1D87                      ; $81820A  49 87 1D     MX
    STA $1D58                       ; $81820D  8D 58 1D     MX
    LDA $1D52                       ; $818210  AD 52 1D     MX
    EOR $1D56                       ; $818213  4D 56 1D     MX
    STA $0002                       ; $818216  8D 02 00     MX
    INC                             ; $818219  1A           MX
    STA $1D52                       ; $81821A  8D 52 1D     MX
    LDA $1D54                       ; $81821D  AD 54 1D     MX
    EOR $1D58                       ; $818220  4D 58 1D     MX
    ADC #$0000                      ; $818223  69 00 00     MX
    STA $1D52                       ; $818226  8D 52 1D     MX
    STA $0004                       ; $818229  8D 04 00     MX
    PLP                             ; $81822C  28           MX
    LDA $076C                       ; $81822D  AD 6C 07     Mx
    STA $0A90                       ; $818230  8D 90 0A     Mx
    LDA $0702                       ; $818233  AD 02 07     Mx
    BNE L_818244                    ; $818236  D0 0C        Mx
    LDA $0A9A                       ; $818238  AD 9A 0A     Mx
    BNE L_818244                    ; $81823B  D0 07        Mx
    LDA $07A2                       ; $81823D  AD A2 07     Mx
    BNE L_818244                    ; $818240  D0 02        Mx
    BRA L_81824D                    ; $818242  80 09        Mx
L_818244:
    STZ $07AC                       ; $818244  9C AC 07     Mx
    STZ $0A90                       ; $818247  9C 90 0A     Mx
    JMP L_818EE3                    ; $81824A  4C E3 8E     Mx
L_81824D:
    LDX $00C0                       ; $81824D  AE C0 00     Mx
    BNE L_8182A3                    ; $818250  D0 51        Mx
    LDA $06F0                       ; $818252  AD F0 06     Mx
    CMP $0C19                       ; $818255  CD 19 0C     Mx
    BNE L_8182A0                    ; $818258  D0 46        Mx
    LDX $07D9                       ; $81825A  AE D9 07     Mx
    BEQ L_8182A0                    ; $81825D  F0 41        Mx
    LDA $085C                       ; $81825F  AD 5C 08     Mx
    BEQ L_818277                    ; $818262  F0 13        Mx
    INC                             ; $818264  1A           Mx
    BEQ L_818277                    ; $818265  F0 10        Mx
    LDA $086E                       ; $818267  AD 6E 08     Mx
    BNE L_818277                    ; $81826A  D0 0B        Mx
    STZ $0776                       ; $81826C  9C 76 07     Mx
    LDA $07D0                       ; $81826F  AD D0 07     Mx
    STA $00B7                       ; $818272  8D B7 00     Mx
    BRA L_818288                    ; $818275  80 11        Mx
L_818277:
    LDA $0858                       ; $818277  AD 58 08     Mx
    BEQ L_8182A0                    ; $81827A  F0 24        Mx
    LDA #$0003                      ; $81827C  A9 03 00     Mx
    STA $07AC                       ; $81827F  8D AC 07     Mx
    LDA $07D2                       ; $818282  AD D2 07     Mx
    STA $00B7                       ; $818285  8D B7 00     Mx
L_818288:
    LDA $0A90                       ; $818288  AD 90 0A     Mx
    AND #$0F00                      ; $81828B  29 00 0F     Mx
    ORA $07D4                       ; $81828E  0D D4 07     Mx
    ORA $00B7                       ; $818291  0D B7 00     Mx
    STA $0A90                       ; $818294  8D 90 0A     Mx
    STZ $07A8                       ; $818297  9C A8 07     Mx
    LDA #$0014                      ; $81829A  A9 14 00     Mx
    STA $0788                       ; $81829D  8D 88 07     Mx
L_8182A0:
    JMP L_818EE3                    ; $8182A0  4C E3 8E     Mx
L_8182A3:
    LDA $0C19                       ; $8182A3  AD 19 0C     Mx
    BNE L_8182AB                    ; $8182A6  D0 03        Mx
    JMP L_818CA6                    ; $8182A8  4C A6 8C     Mx
L_8182AB:
    LDA $077E                       ; $8182AB  AD 7E 07     Mx
    BEQ L_8182C3                    ; $8182AE  F0 13        Mx
    LDA $0C19                       ; $8182B0  AD 19 0C     Mx
    CMP $06F0                       ; $8182B3  CD F0 06     Mx
    BEQ L_8182C6                    ; $8182B6  F0 0E        Mx
    AND #$00FF                      ; $8182B8  29 FF 00     Mx
    CMP #$0002                      ; $8182BB  C9 02 00     Mx
    BNE L_8182C3                    ; $8182BE  D0 03        Mx
    JMP L_8186BE                    ; $8182C0  4C BE 86     Mx
L_8182C3:
    JMP L_818942                    ; $8182C3  4C 42 89     Mx
L_8182C6:
    LDX $07D9                       ; $8182C6  AE D9 07     Mx
    BEQ L_818310                    ; $8182C9  F0 45        Mx
    LDA $085C                       ; $8182CB  AD 5C 08     Mx
    BEQ L_8182E4                    ; $8182CE  F0 14        Mx
    INC                             ; $8182D0  1A           Mx
    BEQ L_8182E4                    ; $8182D1  F0 11        Mx
    LDA $086E                       ; $8182D3  AD 6E 08     Mx
    BNE L_8182E4                    ; $8182D6  D0 0C        Mx
    STZ $0776                       ; $8182D8  9C 76 07     Mx
    LDA $07D0                       ; $8182DB  AD D0 07     Mx
    STA $00B7                       ; $8182DE  8D B7 00     Mx
    JMP L_8182F5                    ; $8182E1  4C F5 82     Mx
L_8182E4:
    LDA $0858                       ; $8182E4  AD 58 08     Mx
    BEQ L_818310                    ; $8182E7  F0 27        Mx
    LDA #$0003                      ; $8182E9  A9 03 00     Mx
    STA $07AC                       ; $8182EC  8D AC 07     Mx
    LDA $07D2                       ; $8182EF  AD D2 07     Mx
    STA $00B7                       ; $8182F2  8D B7 00     Mx
L_8182F5:
    LDA $0A90                       ; $8182F5  AD 90 0A     Mx
    AND #$0F00                      ; $8182F8  29 00 0F     Mx
    ORA $07D4                       ; $8182FB  0D D4 07     Mx
    ORA $00B7                       ; $8182FE  0D B7 00     Mx
    STA $0A90                       ; $818301  8D 90 0A     Mx
    STZ $07A8                       ; $818304  9C A8 07     Mx
    LDA #$0014                      ; $818307  A9 14 00     Mx
    STA $0788                       ; $81830A  8D 88 07     Mx
    JMP L_818EE3                    ; $81830D  4C E3 8E     Mx
L_818310:
    LDA #$0001                      ; $818310  A9 01 00     Mx
    STA $07AA                       ; $818313  8D AA 07     Mx
    LDA $06F8                       ; $818316  AD F8 06     Mx
    BIT #$0002                      ; $818319  89 02 00     Mx
    BNE L_81832E                    ; $81831C  D0 10        Mx
    LDA $0722                       ; $81831E  AD 22 07     Mx
    BNE L_818331                    ; $818321  D0 0E        Mx
    LDA $0A90                       ; $818323  AD 90 0A     Mx
    BIT $07D2                       ; $818326  2C D2 07     Mx
    BEQ L_818334                    ; $818329  F0 09        Mx
    JMP L_81862B                    ; $81832B  4C 2B 86     Mx
L_81832E:
    JMP L_8186B8                    ; $81832E  4C B8 86     Mx
L_818331:
    JMP L_818669                    ; $818331  4C 69 86     Mx
L_818334:
    LDA $06F8                       ; $818334  AD F8 06     Mx
    BIT #$0001                      ; $818337  89 01 00     Mx
    BNE L_818331                    ; $81833A  D0 F5        Mx
    LDA $0780                       ; $81833C  AD 80 07     Mx
    BEQ L_818344                    ; $81833F  F0 03        Mx
    JMP L_8183AE                    ; $818341  4C AE 83     Mx
L_818344:
    LDA $0A10                       ; $818344  AD 10 0A     Mx
    CMP $0754                       ; $818347  CD 54 07     Mx
    BCC L_81836F                    ; $81834A  90 23        Mx
    LDA $0928                       ; $81834C  AD 28 09     Mx
    CMP $0754                       ; $81834F  CD 54 07     Mx
    BCC L_81836F                    ; $818352  90 1B        Mx
    LDA $0752                       ; $818354  AD 52 07     Mx
    STA $00D0                       ; $818357  8D D0 00     Mx
    LDA #$0374                      ; $81835A  A9 74 03     Mx
    STA $00D3                       ; $81835D  8D D3 00     Mx
    JSR L_818E5D                    ; $818360  20 5D 8E     Mx
    LDA $07B6                       ; $818363  AD B6 07     Mx
    BPL L_818372                    ; $818366  10 0A        Mx
    CMP #$FFF3                      ; $818368  C9 F3 FF     Mx
    BCC L_81837B                    ; $81836B  90 0E        Mx
    BRA L_818372                    ; $81836D  80 03        Mx
L_81836F:
    JMP L_8183DE                    ; $81836F  4C DE 83     Mx
L_818372:
    LDA $0A90                       ; $818372  AD 90 0A     Mx
    ORA $07D4                       ; $818375  0D D4 07     Mx
    STA $0A90                       ; $818378  8D 90 0A     Mx
L_81837B:
    LDA $0CCB                       ; $81837B  AD CB 0C     Mx
    CMP #$0002                      ; $81837E  C9 02 00     Mx
    BCC L_818390                    ; $818381  90 0D        Mx
    LDA $0CCD                       ; $818383  AD CD 0C     Mx
    BNE L_818393                    ; $818386  D0 0B        Mx
    LDA $0CCF                       ; $818388  AD CF 0C     Mx
    CMP #$0003                      ; $81838B  C9 03 00     Mx
    BCS L_818393                    ; $81838E  B0 03        Mx
L_818390:
    JMP L_818601                    ; $818390  4C 01 86     Mx
L_818393:
    LDA $0754                       ; $818393  AD 54 07     Mx
    CMP #$0088                      ; $818396  C9 88 00     Mx
    BCC L_81839E                    ; $818399  90 03        Mx
L_81839B:
    JMP L_818EE3                    ; $81839B  4C E3 8E     Mx
L_81839E:
    CMP #$0028                      ; $81839E  C9 28 00     Mx
    BCC L_818390                    ; $8183A1  90 ED        Mx
    LDA $1D56                       ; $8183A3  AD 56 1D     Mx
    AND #$000F                      ; $8183A6  29 0F 00     Mx
    BNE L_81839B                    ; $8183A9  D0 F0        Mx
    JMP L_818601                    ; $8183AB  4C 01 86     Mx
L_8183AE:
    LDA $0A90                       ; $8183AE  AD 90 0A     Mx
    AND #$FEFF                      ; $8183B1  29 FF FE     Mx
    STA $0A90                       ; $8183B4  8D 90 0A     Mx
    STZ $07AC                       ; $8183B7  9C AC 07     Mx
    LDA $0754                       ; $8183BA  AD 54 07     Mx
    CMP #$00B8                      ; $8183BD  C9 B8 00     Mx
    BCS L_8183C5                    ; $8183C0  B0 03        Mx
    JMP L_818601                    ; $8183C2  4C 01 86     Mx
L_8183C5:
    STZ $0774                       ; $8183C5  9C 74 07     Mx
    STZ $0776                       ; $8183C8  9C 76 07     Mx
    JSR L_81889C                    ; $8183CB  20 9C 88     Mx
    BNE L_8183DB                    ; $8183CE  D0 0B        Mx
    LDA $1D56                       ; $8183D0  AD 56 1D     Mx
    AND #$000F                      ; $8183D3  29 0F 00     Mx
    BNE L_8183DB                    ; $8183D6  D0 03        Mx
    JMP L_818601                    ; $8183D8  4C 01 86     Mx
L_8183DB:
    JMP L_818EE3                    ; $8183DB  4C E3 8E     Mx
L_8183DE:
    LDA $0CCB                       ; $8183DE  AD CB 0C     Mx
    CMP #$0002                      ; $8183E1  C9 02 00     Mx
    BCS L_8183E9                    ; $8183E4  B0 03        Mx
    JMP L_818601                    ; $8183E6  4C 01 86     Mx
L_8183E9:
    LDA $0CCD                       ; $8183E9  AD CD 0C     Mx
    BNE L_8183F9                    ; $8183EC  D0 0B        Mx
    LDA $0CCF                       ; $8183EE  AD CF 0C     Mx
    CMP #$0003                      ; $8183F1  C9 03 00     Mx
    BCS L_8183F9                    ; $8183F4  B0 03        Mx
    JMP L_818601                    ; $8183F6  4C 01 86     Mx
L_8183F9:
    LDA $0768                       ; $8183F9  AD 68 07     Mx
    CMP #$0040                      ; $8183FC  C9 40 00     Mx
    BCS L_818431                    ; $8183FF  B0 30        Mx
    LDA $0754                       ; $818401  AD 54 07     Mx
    CMP $0768                       ; $818404  CD 68 07     Mx
    BCC L_818431                    ; $818407  90 28        Mx
    LDA $0762                       ; $818409  AD 62 07     Mx
    SEC                             ; $81840C  38           Mx
    SBC $0756                       ; $81840D  ED 56 07     Mx
    BPL L_818419                    ; $818410  10 07        Mx
    EOR #$FFFF                      ; $818412  49 FF FF     Mx
    CLC                             ; $818415  18           Mx
    ADC #$0001                      ; $818416  69 01 00     Mx
L_818419:
    CMP #$0041                      ; $818419  C9 41 00     Mx
    BCC L_81842B                    ; $81841C  90 0D        Mx
    SEC                             ; $81841E  38           Mx
    SBC #$0080                      ; $81841F  E9 80 00     Mx
    BPL L_81842B                    ; $818422  10 07        Mx
    EOR #$FFFF                      ; $818424  49 FF FF     Mx
    CLC                             ; $818427  18           Mx
    ADC #$0001                      ; $818428  69 01 00     Mx
L_81842B:
    SEC                             ; $81842B  38           Mx
    SBC #$0020                      ; $81842C  E9 20 00     Mx
    BMI L_81846C                    ; $81842F  30 3B        Mx
L_818431:
    LDA $076A                       ; $818431  AD 6A 07     Mx
    CMP #$0040                      ; $818434  C9 40 00     Mx
    BCS L_818469                    ; $818437  B0 30        Mx
    LDA $0754                       ; $818439  AD 54 07     Mx
    CMP $076A                       ; $81843C  CD 6A 07     Mx
    BCC L_818469                    ; $81843F  90 28        Mx
    LDA $0764                       ; $818441  AD 64 07     Mx
    SEC                             ; $818444  38           Mx
    SBC $0756                       ; $818445  ED 56 07     Mx
    BPL L_818451                    ; $818448  10 07        Mx
    EOR #$FFFF                      ; $81844A  49 FF FF     Mx
    CLC                             ; $81844D  18           Mx
    ADC #$0001                      ; $81844E  69 01 00     Mx
L_818451:
    CMP #$0041                      ; $818451  C9 41 00     Mx
    BCC L_818463                    ; $818454  90 0D        Mx
    SEC                             ; $818456  38           Mx
    SBC #$0080                      ; $818457  E9 80 00     Mx
    BPL L_818463                    ; $81845A  10 07        Mx
    EOR #$FFFF                      ; $81845C  49 FF FF     Mx
    CLC                             ; $81845F  18           Mx
    ADC #$0001                      ; $818460  69 01 00     Mx
L_818463:
    SEC                             ; $818463  38           Mx
    SBC #$0020                      ; $818464  E9 20 00     Mx
    BMI L_81846C                    ; $818467  30 03        Mx
L_818469:
    JMP L_8184FF                    ; $818469  4C FF 84     Mx
L_81846C:
    LDA $0766                       ; $81846C  AD 66 07     Mx
    CMP #$0038                      ; $81846F  C9 38 00     Mx
    BCC L_81847C                    ; $818472  90 08        Mx
    JSR L_81889C                    ; $818474  20 9C 88     Mx
    BEQ L_81847C                    ; $818477  F0 03        Mx
    JMP L_818EE3                    ; $818479  4C E3 8E     Mx
L_81847C:
    LDA $0A92                       ; $81847C  AD 92 0A     Mx
    SEC                             ; $81847F  38           Mx
    SBC #$0002                      ; $818480  E9 02 00     Mx
    STA $00D0                       ; $818483  8D D0 00     Mx
    BEQ L_81848A                    ; $818486  F0 02        Mx
    BPL L_8184C5                    ; $818488  10 3B        Mx
L_81848A:
    LDA $1D56                       ; $81848A  AD 56 1D     Mx
    AND #$0001                      ; $81848D  29 01 00     Mx
    STA $0A94                       ; $818490  8D 94 0A     Mx
    LDA #$002B                      ; $818493  A9 2B 00     Mx
    STA $00D0                       ; $818496  8D D0 00     Mx
    LDA $1D57                       ; $818499  AD 57 1D     Mx
    STA $00BA                       ; $81849C  8D BA 00     Mx
    INC $00D0                       ; $81849F  EE D0 00     Mx
    SEP #$20                        ; $8184A2  E2 20        Mx
    LDA $00D0                       ; $8184A4  AD D0 00     mx
    STA $4202                       ; $8184A7  8D 02 42     mx
    LDA $00BA                       ; $8184AA  AD BA 00     mx
    STA $4203                       ; $8184AD  8D 03 42     mx
    NOP                             ; $8184B0  EA           mx
    NOP                             ; $8184B1  EA           mx
    NOP                             ; $8184B2  EA           mx
    REP #$20                        ; $8184B3  C2 20        mx
    LDA $4216                       ; $8184B5  AD 16 42     Mx
    STA $00BA                       ; $8184B8  8D BA 00     Mx
    LDA $00BB                       ; $8184BB  AD BB 00     Mx
    AND #$00FF                      ; $8184BE  29 FF 00     Mx
    CLC                             ; $8184C1  18           Mx
    ADC #$000A                      ; $8184C2  69 0A 00     Mx
L_8184C5:
    STA $0A92                       ; $8184C5  8D 92 0A     Mx
    LDA $0752                       ; $8184C8  AD 52 07     Mx
    STA $00D0                       ; $8184CB  8D D0 00     Mx
    LDA #$0374                      ; $8184CE  A9 74 03     Mx
    STA $00D3                       ; $8184D1  8D D3 00     Mx
    JSR L_818E5D                    ; $8184D4  20 5D 8E     Mx
    BNE L_8184DC                    ; $8184D7  D0 03        Mx
    JMP L_818601                    ; $8184D9  4C 01 86     Mx
L_8184DC:
    LDA $00D1                       ; $8184DC  AD D1 00     Mx
    LDX $0A94                       ; $8184DF  AE 94 0A     Mx
    BEQ L_8184E8                    ; $8184E2  F0 04        Mx
    CLC                             ; $8184E4  18           Mx
    ADC #$0010                      ; $8184E5  69 10 00     Mx
L_8184E8:
    SEP #$20                        ; $8184E8  E2 20        Mx
    TAX                             ; $8184EA  AA           mx
    LDA $A7E957,X                   ; $8184EB  BF 57 E9 A7  mx
    STA $0A91                       ; $8184EF  8D 91 0A     mx
    REP #$20                        ; $8184F2  C2 20        mx
    LDA $0754                       ; $8184F4  AD 54 07     Mx
    CMP #$0040                      ; $8184F7  C9 40 00     Mx
    BCS L_818537                    ; $8184FA  B0 3B        Mx
    JMP L_818601                    ; $8184FC  4C 01 86     Mx
L_8184FF:
    LDA $0768                       ; $8184FF  AD 68 07     Mx
    CMP #$0034                      ; $818502  C9 34 00     Mx
    BCC L_818534                    ; $818505  90 2D        Mx
    LDA $076A                       ; $818507  AD 6A 07     Mx
    CMP #$0034                      ; $81850A  C9 34 00     Mx
    BCC L_818534                    ; $81850D  90 25        Mx
    LDA $0752                       ; $81850F  AD 52 07     Mx
    STA $00D0                       ; $818512  8D D0 00     Mx
    LDA #$0374                      ; $818515  A9 74 03     Mx
    STA $00D3                       ; $818518  8D D3 00     Mx
    JSR L_818E5D                    ; $81851B  20 5D 8E     Mx
    LDA $07B6                       ; $81851E  AD B6 07     Mx
    BPL L_818528                    ; $818521  10 05        Mx
    CMP #$FFF3                      ; $818523  C9 F3 FF     Mx
    BCC L_818537                    ; $818526  90 0F        Mx
L_818528:
    LDA $0A90                       ; $818528  AD 90 0A     Mx
    ORA $07D4                       ; $81852B  0D D4 07     Mx
    STA $0A90                       ; $81852E  8D 90 0A     Mx
    JMP L_818537                    ; $818531  4C 37 85     Mx
L_818534:
    JMP L_81847C                    ; $818534  4C 7C 84     Mx
L_818537:
    LDA $0754                       ; $818537  AD 54 07     Mx
    CMP #$0028                      ; $81853A  C9 28 00     Mx
    BCC L_818547                    ; $81853D  90 08        Mx
    LDX $07D9                       ; $81853F  AE D9 07     Mx
    BEQ L_81854A                    ; $818542  F0 06        Mx
    JMP L_818EE3                    ; $818544  4C E3 8E     Mx
L_818547:
    JMP L_818601                    ; $818547  4C 01 86     Mx
L_81854A:
    LDA $0726                       ; $81854A  AD 26 07     Mx
    SEC                             ; $81854D  38           Mx
    SBC #$0310                      ; $81854E  E9 10 03     Mx
    LSR                             ; $818551  4A           Mx
    BPL L_818557                    ; $818552  10 03        Mx
    LDA #$0000                      ; $818554  A9 00 00     Mx
L_818557:
    CMP #$0070                      ; $818557  C9 70 00     Mx
    BCC L_81855F                    ; $81855A  90 03        Mx
    LDA #$0070                      ; $81855C  A9 70 00     Mx
L_81855F:
    ASL                             ; $81855F  0A           Mx
    TAX                             ; $818560  AA           Mx
    LDA $071E                       ; $818561  AD 1E 07     Mx
    BMI L_81856F                    ; $818564  30 09        Mx
    CMP $A7E62E,X                   ; $818566  DF 2E E6 A7  Mx
    BCC L_81856F                    ; $81856A  90 03        Mx
    JMP L_8185B6                    ; $81856C  4C B6 85     Mx
L_81856F:
    LDA $0754                       ; $81856F  AD 54 07     Mx
    CMP #$00F5                      ; $818572  C9 F5 00     Mx
    BCS L_8185B6                    ; $818575  B0 3F        Mx
    LDA #$0006                      ; $818577  A9 06 00     Mx
    STA $00D3                       ; $81857A  8D D3 00     Mx
    LDA $0CCB                       ; $81857D  AD CB 0C     Mx
    CMP #$0046                      ; $818580  C9 46 00     Mx
    BCS L_81858B                    ; $818583  B0 06        Mx
    LDA #$0003                      ; $818585  A9 03 00     Mx
    STA $00D3                       ; $818588  8D D3 00     Mx
L_81858B:
    LDA $07CA                       ; $81858B  AD CA 07     Mx
    BMI L_8185B6                    ; $81858E  30 26        Mx
    CMP $00D3                       ; $818590  CD D3 00     Mx
    BMI L_8185B6                    ; $818593  30 21        Mx
    LDA $0CCB                       ; $818595  AD CB 0C     Mx
    CMP #$0028                      ; $818598  C9 28 00     Mx
    BCC L_818601                    ; $81859B  90 64        Mx
    LDA #$0008                      ; $81859D  A9 08 00     Mx
    STA $00D0                       ; $8185A0  8D D0 00     Mx
    LDA $0768                       ; $8185A3  AD 68 07     Mx
    CMP #$0038                      ; $8185A6  C9 38 00     Mx
    BCC L_8185CC                    ; $8185A9  90 21        Mx
    LDA $076A                       ; $8185AB  AD 6A 07     Mx
    CMP #$0038                      ; $8185AE  C9 38 00     Mx
    BCC L_8185CC                    ; $8185B1  90 19        Mx
    JMP L_818601                    ; $8185B3  4C 01 86     Mx
L_8185B6:
    LDA #$0019                      ; $8185B6  A9 19 00     Mx
    STA $00D0                       ; $8185B9  8D D0 00     Mx
    LDA $07B6                       ; $8185BC  AD B6 07     Mx
    BPL L_8185CC                    ; $8185BF  10 0B        Mx
    CMP #$FFF8                      ; $8185C1  C9 F8 FF     Mx
    BCS L_8185CC                    ; $8185C4  B0 06        Mx
    LDA #$000F                      ; $8185C6  A9 0F 00     Mx
    STA $00D0                       ; $8185C9  8D D0 00     Mx
L_8185CC:
    LDA $1D57                       ; $8185CC  AD 57 1D     Mx
    STA $00BA                       ; $8185CF  8D BA 00     Mx
    INC $00D0                       ; $8185D2  EE D0 00     Mx
    SEP #$20                        ; $8185D5  E2 20        Mx
    LDA $00D0                       ; $8185D7  AD D0 00     mx
    STA $4202                       ; $8185DA  8D 02 42     mx
    LDA $00BA                       ; $8185DD  AD BA 00     mx
    STA $4203                       ; $8185E0  8D 03 42     mx
    NOP                             ; $8185E3  EA           mx
    NOP                             ; $8185E4  EA           mx
    NOP                             ; $8185E5  EA           mx
    REP #$20                        ; $8185E6  C2 20        mx
    LDA $4216                       ; $8185E8  AD 16 42     Mx
    STA $00BA                       ; $8185EB  8D BA 00     Mx
    LDA $00BB                       ; $8185EE  AD BB 00     Mx
    AND #$00FF                      ; $8185F1  29 FF 00     Mx
    BEQ L_8185F9                    ; $8185F4  F0 03        Mx
L_8185F6:
    JMP L_818EE3                    ; $8185F6  4C E3 8E     Mx
L_8185F9:
    LDA $0754                       ; $8185F9  AD 54 07     Mx
    CMP #$00C0                      ; $8185FC  C9 C0 00     Mx
    BCS L_8185F6                    ; $8185FF  B0 F5        Mx
L_818601:
    LDA $06F0                       ; $818601  AD F0 06     Mx
    CMP $0C19                       ; $818604  CD 19 0C     Mx
    BNE L_818616                    ; $818607  D0 0D        Mx
    LDX $07D9                       ; $818609  AE D9 07     Mx
    BEQ L_818616                    ; $81860C  F0 08        Mx
    LDA $0754                       ; $81860E  AD 54 07     Mx
    CMP #$0080                      ; $818611  C9 80 00     Mx
    BCS L_818628                    ; $818614  B0 12        Mx
L_818616:
    LDA $0A90                       ; $818616  AD 90 0A     Mx
    ORA $07D2                       ; $818619  0D D2 07     Mx
    ORA $07D4                       ; $81861C  0D D4 07     Mx
    STA $0A90                       ; $81861F  8D 90 0A     Mx
    LDA #$0001                      ; $818622  A9 01 00     Mx
    STA $07AC                       ; $818625  8D AC 07     Mx
L_818628:
    JMP L_818EE3                    ; $818628  4C E3 8E     Mx
L_81862B:
    LDA $07AC                       ; $81862B  AD AC 07     Mx
    STA $00D6                       ; $81862E  8D D6 00     Mx
    BEQ L_818628                    ; $818631  F0 F5        Mx
    BMI L_818628                    ; $818633  30 F3        Mx
    LDX $07D9                       ; $818635  AE D9 07     Mx
    BNE L_818628                    ; $818638  D0 EE        Mx
    LDA $1D58                       ; $81863A  AD 58 1D     Mx
    AND #$000F                      ; $81863D  29 0F 00     Mx
    CMP #$0009                      ; $818640  C9 09 00     Mx
    BNE L_818628                    ; $818643  D0 E3        Mx
    LDA $0CCB                       ; $818645  AD CB 0C     Mx
    CMP #$0002                      ; $818648  C9 02 00     Mx
    BCC L_818628                    ; $81864B  90 DB        Mx
    LDA $0CCD                       ; $81864D  AD CD 0C     Mx
    BNE L_81865A                    ; $818650  D0 08        Mx
    LDA $0CCF                       ; $818652  AD CF 0C     Mx
    CMP #$0003                      ; $818655  C9 03 00     Mx
    BCC L_818628                    ; $818658  90 CE        Mx
L_81865A:
    DEC $00D6                       ; $81865A  CE D6 00     Mx
    DEC $00D6                       ; $81865D  CE D6 00     Mx
    LDA $00D6                       ; $818660  AD D6 00     Mx
    STA $07AC                       ; $818663  8D AC 07     Mx
    JMP L_8186B8                    ; $818666  4C B8 86     Mx
L_818669:
    LDX $07D9                       ; $818669  AE D9 07     Mx
    BEQ L_818679                    ; $81866C  F0 0B        Mx
    LDA $0854                       ; $81866E  AD 54 08     Mx
    AND $07D2                       ; $818671  2D D2 07     Mx
    BNE L_818628                    ; $818674  D0 B2        Mx
L_818676:
    JMP L_8186B8                    ; $818676  4C B8 86     Mx
L_818679:
    LDA $06F4                       ; $818679  AD F4 06     Mx
    CMP #$0022                      ; $81867C  C9 22 00     Mx
    BEQ L_818676                    ; $81867F  F0 F5        Mx
    LDA $1D57                       ; $818681  AD 57 1D     Mx
    AND #$0007                      ; $818684  29 07 00     Mx
    BEQ L_818676                    ; $818687  F0 ED        Mx
    LDA $1D56                       ; $818689  AD 56 1D     Mx
    AND #$000F                      ; $81868C  29 0F 00     Mx
    BNE L_8186BB                    ; $81868F  D0 2A        Mx
    LDA $07CA                       ; $818691  AD CA 07     Mx
    CLC                             ; $818694  18           Mx
    ADC #$0005                      ; $818695  69 05 00     Mx
    BMI L_8186AA                    ; $818698  30 10        Mx
    LDA $06F8                       ; $81869A  AD F8 06     Mx
    AND #$0004                      ; $81869D  29 04 00     Mx
    BNE L_8186BB                    ; $8186A0  D0 19        Mx
    LDA $0CCB                       ; $8186A2  AD CB 0C     Mx
    CMP #$0002                      ; $8186A5  C9 02 00     Mx
    BCC L_8186BB                    ; $8186A8  90 11        Mx
L_8186AA:
    LDA $06F8                       ; $8186AA  AD F8 06     Mx
    BIT #$000C                      ; $8186AD  89 0C 00     Mx
    BNE L_8186BB                    ; $8186B0  D0 09        Mx
    JSR L_81889C                    ; $8186B2  20 9C 88     Mx
    JMP L_818EE3                    ; $8186B5  4C E3 8E     Mx
L_8186B8:
    STZ $0A90                       ; $8186B8  9C 90 0A     Mx
L_8186BB:
    JMP L_818EE3                    ; $8186BB  4C E3 8E     Mx
L_8186BE:
    STZ $07A8                       ; $8186BE  9C A8 07     Mx
    LDA $07AA                       ; $8186C1  AD AA 07     Mx
    CMP #$0001                      ; $8186C4  C9 01 00     Mx
    BCS L_818709                    ; $8186C7  B0 40        Mx
    LDA #$0001                      ; $8186C9  A9 01 00     Mx
    STA $07AA                       ; $8186CC  8D AA 07     Mx
    JSR L_818EC8                    ; $8186CF  20 C8 8E     Mx
    TAX                             ; $8186D2  AA           Mx
    LDA $A7E838,X                   ; $8186D3  BF 38 E8 A7  Mx
    AND #$00FF                      ; $8186D7  29 FF 00     Mx
    STA $00D0                       ; $8186DA  8D D0 00     Mx
    LDA $1D56                       ; $8186DD  AD 56 1D     Mx
    STA $00BA                       ; $8186E0  8D BA 00     Mx
    INC $00D0                       ; $8186E3  EE D0 00     Mx
    SEP #$20                        ; $8186E6  E2 20        Mx
    LDA $00D0                       ; $8186E8  AD D0 00     mx
    STA $4202                       ; $8186EB  8D 02 42     mx
    LDA $00BA                       ; $8186EE  AD BA 00     mx
    STA $4203                       ; $8186F1  8D 03 42     mx
    NOP                             ; $8186F4  EA           mx
    NOP                             ; $8186F5  EA           mx
    NOP                             ; $8186F6  EA           mx
    REP #$20                        ; $8186F7  C2 20        mx
    LDA $4216                       ; $8186F9  AD 16 42     Mx
    STA $00BA                       ; $8186FC  8D BA 00     Mx
    LDA $00BB                       ; $8186FF  AD BB 00     Mx
    AND #$00FF                      ; $818702  29 FF 00     Mx
    INC                             ; $818705  1A           Mx
    STA $07AC                       ; $818706  8D AC 07     Mx
L_818709:
    LDA $0708                       ; $818709  AD 08 07     Mx
    ASL                             ; $81870C  0A           Mx
    ASL                             ; $81870D  0A           Mx
    ASL                             ; $81870E  0A           Mx
    ASL                             ; $81870F  0A           Mx
    STA $00D9                       ; $818710  8D D9 00     Mx
    LDA $0768                       ; $818713  AD 68 07     Mx
    CMP #$0028                      ; $818716  C9 28 00     Mx
    BPL L_818743                    ; $818719  10 28        Mx
    LDA $0762                       ; $81871B  AD 62 07     Mx
    SEC                             ; $81871E  38           Mx
    SBC $00D9                       ; $81871F  ED D9 00     Mx
    BPL L_81872B                    ; $818722  10 07        Mx
    EOR #$FFFF                      ; $818724  49 FF FF     Mx
    CLC                             ; $818727  18           Mx
    ADC #$0001                      ; $818728  69 01 00     Mx
L_81872B:
    CMP #$0041                      ; $81872B  C9 41 00     Mx
    BCC L_81873D                    ; $81872E  90 0D        Mx
    SEC                             ; $818730  38           Mx
    SBC #$0080                      ; $818731  E9 80 00     Mx
    BPL L_81873D                    ; $818734  10 07        Mx
    EOR #$FFFF                      ; $818736  49 FF FF     Mx
    CLC                             ; $818739  18           Mx
    ADC #$0001                      ; $81873A  69 01 00     Mx
L_81873D:
    SEC                             ; $81873D  38           Mx
    SBC #$0010                      ; $81873E  E9 10 00     Mx
    BMI L_818779                    ; $818741  30 36        Mx
L_818743:
    LDA $076A                       ; $818743  AD 6A 07     Mx
    CMP #$0028                      ; $818746  C9 28 00     Mx
    BMI L_81874E                    ; $818749  30 03        Mx
    JMP L_8187E0                    ; $81874B  4C E0 87     Mx
L_81874E:
    LDA $0764                       ; $81874E  AD 64 07     Mx
    SEC                             ; $818751  38           Mx
    SBC $00D9                       ; $818752  ED D9 00     Mx
    BPL L_81875E                    ; $818755  10 07        Mx
    EOR #$FFFF                      ; $818757  49 FF FF     Mx
    CLC                             ; $81875A  18           Mx
    ADC #$0001                      ; $81875B  69 01 00     Mx
L_81875E:
    CMP #$0041                      ; $81875E  C9 41 00     Mx
    BCC L_818770                    ; $818761  90 0D        Mx
    SEC                             ; $818763  38           Mx
    SBC #$0080                      ; $818764  E9 80 00     Mx
    BPL L_818770                    ; $818767  10 07        Mx
    EOR #$FFFF                      ; $818769  49 FF FF     Mx
    CLC                             ; $81876C  18           Mx
    ADC #$0001                      ; $81876D  69 01 00     Mx
L_818770:
    SEC                             ; $818770  38           Mx
    SBC #$0010                      ; $818771  E9 10 00     Mx
    BMI L_818779                    ; $818774  30 03        Mx
    JMP L_8187E0                    ; $818776  4C E0 87     Mx
L_818779:
    LDA #$0037                      ; $818779  A9 37 00     Mx
    STA $00D0                       ; $81877C  8D D0 00     Mx
    LDA $1D58                       ; $81877F  AD 58 1D     Mx
    STA $00BA                       ; $818782  8D BA 00     Mx
    INC $00D0                       ; $818785  EE D0 00     Mx
    SEP #$20                        ; $818788  E2 20        Mx
    LDA $00D0                       ; $81878A  AD D0 00     mx
    STA $4202                       ; $81878D  8D 02 42     mx
    LDA $00BA                       ; $818790  AD BA 00     mx
    STA $4203                       ; $818793  8D 03 42     mx
    NOP                             ; $818796  EA           mx
    NOP                             ; $818797  EA           mx
    NOP                             ; $818798  EA           mx
    REP #$20                        ; $818799  C2 20        mx
    LDA $4216                       ; $81879B  AD 16 42     Mx
    STA $00BA                       ; $81879E  8D BA 00     Mx
    LDA $00BB                       ; $8187A1  AD BB 00     Mx
    AND #$00FF                      ; $8187A4  29 FF 00     Mx
    STA $00D0                       ; $8187A7  8D D0 00     Mx
    LDA $07CA                       ; $8187AA  AD CA 07     Mx
    CLC                             ; $8187AD  18           Mx
    ADC $07B6                       ; $8187AE  6D B6 07     Mx
    BMI L_8187BB                    ; $8187B1  30 08        Mx
    CMP #$0010                      ; $8187B3  C9 10 00     Mx
    BMI L_8187BB                    ; $8187B6  30 03        Mx
    LDA #$000F                      ; $8187B8  A9 0F 00     Mx
L_8187BB:
    CLC                             ; $8187BB  18           Mx
    ADC #$000F                      ; $8187BC  69 0F 00     Mx
    BPL L_8187C4                    ; $8187BF  10 03        Mx
    LDA #$0000                      ; $8187C1  A9 00 00     Mx
L_8187C4:
    TAX                             ; $8187C4  AA           Mx
    LDA $A7E857,X                   ; $8187C5  BF 57 E8 A7  Mx
    AND #$00FF                      ; $8187C9  29 FF 00     Mx
    CMP $00D0                       ; $8187CC  CD D0 00     Mx
    BCC L_8187F9                    ; $8187CF  90 28        Mx
    LDA $0A90                       ; $8187D1  AD 90 0A     Mx
    ORA $07D4                       ; $8187D4  0D D4 07     Mx
    ORA $07D0                       ; $8187D7  0D D0 07     Mx
    STA $0A90                       ; $8187DA  8D 90 0A     Mx
    JMP L_818899                    ; $8187DD  4C 99 88     Mx
L_8187E0:
    LDA $1D56                       ; $8187E0  AD 56 1D     Mx
    AND #$003F                      ; $8187E3  29 3F 00     Mx
    BEQ L_8187F9                    ; $8187E6  F0 11        Mx
    LDA $07AC                       ; $8187E8  AD AC 07     Mx
    SEC                             ; $8187EB  38           Mx
    SBC #$0002                      ; $8187EC  E9 02 00     Mx
    STA $00D0                       ; $8187EF  8D D0 00     Mx
    BEQ L_8187F9                    ; $8187F2  F0 05        Mx
    BMI L_8187F9                    ; $8187F4  30 03        Mx
    JMP L_818874                    ; $8187F6  4C 74 88     Mx
L_8187F9:
    LDA #$0010                      ; $8187F9  A9 10 00     Mx
    STA $00D0                       ; $8187FC  8D D0 00     Mx
    LDA $1D57                       ; $8187FF  AD 57 1D     Mx
    STA $00BA                       ; $818802  8D BA 00     Mx
    INC $00D0                       ; $818805  EE D0 00     Mx
    SEP #$20                        ; $818808  E2 20        Mx
    LDA $00D0                       ; $81880A  AD D0 00     mx
    STA $4202                       ; $81880D  8D 02 42     mx
    LDA $00BA                       ; $818810  AD BA 00     mx
    STA $4203                       ; $818813  8D 03 42     mx
    NOP                             ; $818816  EA           mx
    NOP                             ; $818817  EA           mx
    NOP                             ; $818818  EA           mx
    REP #$20                        ; $818819  C2 20        mx
    LDA $4216                       ; $81881B  AD 16 42     Mx
    STA $00BA                       ; $81881E  8D BA 00     Mx
    LDA $00BB                       ; $818821  AD BB 00     Mx
    AND #$00FF                      ; $818824  29 FF 00     Mx
    ASL                             ; $818827  0A           Mx
    ASL                             ; $818828  0A           Mx
    TAX                             ; $818829  AA           Mx
    LDA $A7E877,X                   ; $81882A  BF 77 E8 A7  Mx
    EOR #$FFFF                      ; $81882E  49 FF FF     Mx
    CLC                             ; $818831  18           Mx
    ADC #$0001                      ; $818832  69 01 00     Mx
    STA $07AE                       ; $818835  8D AE 07     Mx
    LDA $A7E879,X                   ; $818838  BF 79 E8 A7  Mx
    STA $07B0                       ; $81883C  8D B0 07     Mx
    LDA #$009F                      ; $81883F  A9 9F 00     Mx
    STA $00D0                       ; $818842  8D D0 00     Mx
    LDA $1D58                       ; $818845  AD 58 1D     Mx
    STA $00BA                       ; $818848  8D BA 00     Mx
    INC $00D0                       ; $81884B  EE D0 00     Mx
    SEP #$20                        ; $81884E  E2 20        Mx
    LDA $00D0                       ; $818850  AD D0 00     mx
    STA $4202                       ; $818853  8D 02 42     mx
    LDA $00BA                       ; $818856  AD BA 00     mx
    STA $4203                       ; $818859  8D 03 42     mx
    NOP                             ; $81885C  EA           mx
    NOP                             ; $81885D  EA           mx
    NOP                             ; $81885E  EA           mx
    REP #$20                        ; $81885F  C2 20        mx
    LDA $4216                       ; $818861  AD 16 42     Mx
    STA $00BA                       ; $818864  8D BA 00     Mx
    LDA $00BB                       ; $818867  AD BB 00     Mx
    AND #$00FF                      ; $81886A  29 FF 00     Mx
    CLC                             ; $81886D  18           Mx
    ADC #$001A                      ; $81886E  69 1A 00     Mx
    STA $00D0                       ; $818871  8D D0 00     Mx
L_818874:
    LDA $00D0                       ; $818874  AD D0 00     Mx
    STA $07AC                       ; $818877  8D AC 07     Mx
    LDA $07AE                       ; $81887A  AD AE 07     Mx
    STA $00D0                       ; $81887D  8D D0 00     Mx
    LDA $07B0                       ; $818880  AD B0 07     Mx
    STA $00D3                       ; $818883  8D D3 00     Mx
    JSR L_818E5D                    ; $818886  20 5D 8E     Mx
    BNE L_818899                    ; $818889  D0 0E        Mx
    LDA $0006                       ; $81888B  AD 06 00     Mx
    AND #$000F                      ; $81888E  29 0F 00     Mx
    CMP #$000C                      ; $818891  C9 0C 00     Mx
    BNE L_818899                    ; $818894  D0 03        Mx
    STZ $07AC                       ; $818896  9C AC 07     Mx
L_818899:
    JMP L_818EE3                    ; $818899  4C E3 8E     Mx
L_81889C:
    LDX $07D9                       ; $81889C  AE D9 07     Mx
    BEQ L_8188A4                    ; $81889F  F0 03        Mx
    JMP L_81893B                    ; $8188A1  4C 3B 89     Mx
L_8188A4:
    LDA $0766                       ; $8188A4  AD 66 07     Mx
    CLC                             ; $8188A7  18           Mx
    ADC #$000A                      ; $8188A8  69 0A 00     Mx
    STA $00D0                       ; $8188AB  8D D0 00     Mx
    CMP $0768                       ; $8188AE  CD 68 07     Mx
    BCC L_8188DB                    ; $8188B1  90 28        Mx
    LDA $0762                       ; $8188B3  AD 62 07     Mx
    SEC                             ; $8188B6  38           Mx
    SBC $0760                       ; $8188B7  ED 60 07     Mx
    BPL L_8188C3                    ; $8188BA  10 07        Mx
    EOR #$FFFF                      ; $8188BC  49 FF FF     Mx
    CLC                             ; $8188BF  18           Mx
    ADC #$0001                      ; $8188C0  69 01 00     Mx
L_8188C3:
    CMP #$0041                      ; $8188C3  C9 41 00     Mx
    BCC L_8188D5                    ; $8188C6  90 0D        Mx
    SEC                             ; $8188C8  38           Mx
    SBC #$0080                      ; $8188C9  E9 80 00     Mx
    BPL L_8188D5                    ; $8188CC  10 07        Mx
    EOR #$FFFF                      ; $8188CE  49 FF FF     Mx
    CLC                             ; $8188D1  18           Mx
    ADC #$0001                      ; $8188D2  69 01 00     Mx
L_8188D5:
    SEC                             ; $8188D5  38           Mx
    SBC #$0010                      ; $8188D6  E9 10 00     Mx
    BMI L_81892C                    ; $8188D9  30 51        Mx
L_8188DB:
    LDA $00D0                       ; $8188DB  AD D0 00     Mx
    CMP $076A                       ; $8188DE  CD 6A 07     Mx
    BCC L_81890B                    ; $8188E1  90 28        Mx
    LDA $0764                       ; $8188E3  AD 64 07     Mx
    SEC                             ; $8188E6  38           Mx
    SBC $0760                       ; $8188E7  ED 60 07     Mx
    BPL L_8188F3                    ; $8188EA  10 07        Mx
    EOR #$FFFF                      ; $8188EC  49 FF FF     Mx
    CLC                             ; $8188EF  18           Mx
    ADC #$0001                      ; $8188F0  69 01 00     Mx
L_8188F3:
    CMP #$0041                      ; $8188F3  C9 41 00     Mx
    BCC L_818905                    ; $8188F6  90 0D        Mx
    SEC                             ; $8188F8  38           Mx
    SBC #$0080                      ; $8188F9  E9 80 00     Mx
    BPL L_818905                    ; $8188FC  10 07        Mx
    EOR #$FFFF                      ; $8188FE  49 FF FF     Mx
    CLC                             ; $818901  18           Mx
    ADC #$0001                      ; $818902  69 01 00     Mx
L_818905:
    SEC                             ; $818905  38           Mx
    SBC #$0010                      ; $818906  E9 10 00     Mx
    BMI L_81892C                    ; $818909  30 21        Mx
L_81890B:
    LDA $07DC                       ; $81890B  AD DC 07     Mx
    LSR                             ; $81890E  4A           Mx
    TAX                             ; $81890F  AA           Mx
    LDA $82DF6E,X                   ; $818910  BF 6E DF 82  Mx
    AND #$00FF                      ; $818914  29 FF 00     Mx
    BEQ L_81893B                    ; $818917  F0 22        Mx
L_818919:
    LDA #$0014                      ; $818919  A9 14 00     Mx
    STA $0788                       ; $81891C  8D 88 07     Mx
    LDA $0A90                       ; $81891F  AD 90 0A     Mx
    ORA $07D4                       ; $818922  0D D4 07     Mx
    ORA $07D0                       ; $818925  0D D0 07     Mx
    STA $0A90                       ; $818928  8D 90 0A     Mx
    RTS                             ; $81892B  60           Mx
L_81892C:
    LDA $0780                       ; $81892C  AD 80 07     Mx
    BEQ L_81893B                    ; $81892F  F0 0A        Mx
    LDA $1D56                       ; $818931  AD 56 1D     Mx
    AND #$00C0                      ; $818934  29 C0 00     Mx
    BNE L_81893B                    ; $818937  D0 02        Mx
    BRA L_818919                    ; $818939  80 DE        Mx
L_81893B:
    LDA #$0000                      ; $81893B  A9 00 00     Mx
    STA $00D0                       ; $81893E  8D D0 00     Mx
    RTS                             ; $818941  60           Mx
L_818942:
    JSR L_818EC8                    ; $818942  20 C8 8E     Mx
    STA $00E5                       ; $818945  8D E5 00     Mx
    STZ $07A8                       ; $818948  9C A8 07     Mx
    LDA $07AA                       ; $81894B  AD AA 07     Mx
    BMI L_818998                    ; $81894E  30 48        Mx
    LDA #$FFFF                      ; $818950  A9 FF FF     Mx
    STA $07AA                       ; $818953  8D AA 07     Mx
    LDX $00E5                       ; $818956  AE E5 00     Mx
    LDA $A7E8BB,X                   ; $818959  BF BB E8 A7  Mx
    AND #$00FF                      ; $81895D  29 FF 00     Mx
    STA $00D0                       ; $818960  8D D0 00     Mx
    LSR                             ; $818963  4A           Mx
    LSR                             ; $818964  4A           Mx
    STA $00D6                       ; $818965  8D D6 00     Mx
    LDA $1D56                       ; $818968  AD 56 1D     Mx
    STA $00BA                       ; $81896B  8D BA 00     Mx
    INC $00D0                       ; $81896E  EE D0 00     Mx
    SEP #$20                        ; $818971  E2 20        Mx
    LDA $00D0                       ; $818973  AD D0 00     mx
    STA $4202                       ; $818976  8D 02 42     mx
    LDA $00BA                       ; $818979  AD BA 00     mx
    STA $4203                       ; $81897C  8D 03 42     mx
    NOP                             ; $81897F  EA           mx
    NOP                             ; $818980  EA           mx
    NOP                             ; $818981  EA           mx
    REP #$20                        ; $818982  C2 20        mx
    LDA $4216                       ; $818984  AD 16 42     Mx
    STA $00BA                       ; $818987  8D BA 00     Mx
    LDA $00BB                       ; $81898A  AD BB 00     Mx
    AND #$00FF                      ; $81898D  29 FF 00     Mx
    INC                             ; $818990  1A           Mx
    CLC                             ; $818991  18           Mx
    ADC $00D6                       ; $818992  6D D6 00     Mx
    STA $07AC                       ; $818995  8D AC 07     Mx
L_818998:
    LDA $07AC                       ; $818998  AD AC 07     Mx
    SEC                             ; $81899B  38           Mx
    SBC #$0002                      ; $81899C  E9 02 00     Mx
    BEQ L_8189A9                    ; $81899F  F0 08        Mx
    BMI L_8189A9                    ; $8189A1  30 06        Mx
    STA $00D0                       ; $8189A3  8D D0 00     Mx
    JMP L_818B01                    ; $8189A6  4C 01 8B     Mx
L_8189A9:
    LDA #$08C0                      ; $8189A9  A9 C0 08     Mx
    STA $00DC                       ; $8189AC  8D DC 00     Mx
    CMP $00CC                       ; $8189AF  CD CC 00     Mx
    BNE L_8189B7                    ; $8189B2  D0 03        Mx
    JMP L_818A12                    ; $8189B4  4C 12 8A     Mx
L_8189B7:
    LDY #$64                        ; $8189B7  A0 64        Mx
    LDA ($CC),Y                     ; $8189B9  B1 CC        Mx
    CMP #$00F0                      ; $8189BB  C9 F0 00     Mx
    BCC L_8189C3                    ; $8189BE  90 03        Mx
    JMP L_818A12                    ; $8189C0  4C 12 8A     Mx
L_8189C3:
    LDY #$08                        ; $8189C3  A0 08        Mx
    LDA ($CC),Y                     ; $8189C5  B1 CC        Mx
    AND #$0004                      ; $8189C7  29 04 00     Mx
    BNE L_818A0C                    ; $8189CA  D0 40        Mx
    LDA $07DC                       ; $8189CC  AD DC 07     Mx
    CMP #$0030                      ; $8189CF  C9 30 00     Mx
    BNE L_8189D7                    ; $8189D2  D0 03        Mx
    JMP L_818A0C                    ; $8189D4  4C 0C 8A     Mx
L_8189D7:
    LDA $0842                       ; $8189D7  AD 42 08     Mx
    SEC                             ; $8189DA  38           Mx
    SBC $084A                       ; $8189DB  ED 4A 08     Mx
    BPL L_8189E7                    ; $8189DE  10 07        Mx
    EOR #$FFFF                      ; $8189E0  49 FF FF     Mx
    CLC                             ; $8189E3  18           Mx
    ADC #$0001                      ; $8189E4  69 01 00     Mx
L_8189E7:
    CMP #$0041                      ; $8189E7  C9 41 00     Mx
    BMI L_8189F9                    ; $8189EA  30 0D        Mx
    SEC                             ; $8189EC  38           Mx
    SBC #$0080                      ; $8189ED  E9 80 00     Mx
    BPL L_8189F9                    ; $8189F0  10 07        Mx
    EOR #$FFFF                      ; $8189F2  49 FF FF     Mx
    CLC                             ; $8189F5  18           Mx
    ADC #$0001                      ; $8189F6  69 01 00     Mx
L_8189F9:
    SEC                             ; $8189F9  38           Mx
    SBC #$001C                      ; $8189FA  E9 1C 00     Mx
    BMI L_818A0C                    ; $8189FD  30 0D        Mx
    BEQ L_818A0C                    ; $8189FF  F0 0B        Mx
    LDA $0850                       ; $818A01  AD 50 08     Mx
    CMP #$0080                      ; $818A04  C9 80 00     Mx
    BCS L_818A0C                    ; $818A07  B0 03        Mx
    JMP L_818A12                    ; $818A09  4C 12 8A     Mx
L_818A0C:
    LDA $00CC                       ; $818A0C  AD CC 00     Mx
    STA $00DC                       ; $818A0F  8D DC 00     Mx
L_818A12:
    LDY #$2E                        ; $818A12  A0 2E        Mx
    LDA ($DC),Y                     ; $818A14  B1 DC        Mx
    STA $00D0                       ; $818A16  8D D0 00     Mx
    LDY #$36                        ; $818A19  A0 36        Mx
    LDA ($DC),Y                     ; $818A1B  B1 DC        Mx
    STA $00D3                       ; $818A1D  8D D3 00     Mx
    LDA $0CCB                       ; $818A20  AD CB 0C     Mx
    CMP #$0008                      ; $818A23  C9 08 00     Mx
    BCS L_818A2B                    ; $818A26  B0 03        Mx
L_818A28:
    JMP L_818AA5                    ; $818A28  4C A5 8A     Mx
L_818A2B:
    LDA $0CCD                       ; $818A2B  AD CD 0C     Mx
    BNE L_818A38                    ; $818A2E  D0 08        Mx
    LDA $0CCF                       ; $818A30  AD CF 0C     Mx
    CMP #$0006                      ; $818A33  C9 06 00     Mx
    BCC L_818A28                    ; $818A36  90 F0        Mx
L_818A38:
    LDY #$08                        ; $818A38  A0 08        Mx
    LDA ($CC),Y                     ; $818A3A  B1 CC        Mx
    AND #$0001                      ; $818A3C  29 01 00     Mx
    BNE L_818A28                    ; $818A3F  D0 E7        Mx
    LDY #$39                        ; $818A41  A0 39        Mx
    LDA ($DC),Y                     ; $818A43  B1 DC        Mx
    CMP #$8000                      ; $818A45  C9 00 80     Mx
    ROR                             ; $818A48  6A           Mx
    CMP #$8000                      ; $818A49  C9 00 80     Mx
    ROR                             ; $818A4C  6A           Mx
    CMP #$8000                      ; $818A4D  C9 00 80     Mx
    ROR                             ; $818A50  6A           Mx
    CMP #$8000                      ; $818A51  C9 00 80     Mx
    ROR                             ; $818A54  6A           Mx
    CLC                             ; $818A55  18           Mx
    ADC $00D0                       ; $818A56  6D D0 00     Mx
    STA $00D0                       ; $818A59  8D D0 00     Mx
    LDY #$41                        ; $818A5C  A0 41        Mx
    LDA ($DC),Y                     ; $818A5E  B1 DC        Mx
    CMP #$8000                      ; $818A60  C9 00 80     Mx
    ROR                             ; $818A63  6A           Mx
    CMP #$8000                      ; $818A64  C9 00 80     Mx
    ROR                             ; $818A67  6A           Mx
    CMP #$8000                      ; $818A68  C9 00 80     Mx
    ROR                             ; $818A6B  6A           Mx
    CLC                             ; $818A6C  18           Mx
    ADC $00D3                       ; $818A6D  6D D3 00     Mx
    STA $00D3                       ; $818A70  8D D3 00     Mx
    LDA $0922                       ; $818A73  AD 22 09     Mx
    CLC                             ; $818A76  18           Mx
    ADC $00D0                       ; $818A77  6D D0 00     Mx
    ASL $00D0                       ; $818A7A  0E D0 00     Mx
    CLC                             ; $818A7D  18           Mx
    ADC $00D0                       ; $818A7E  6D D0 00     Mx
    CMP #$8000                      ; $818A81  C9 00 80     Mx
    ROR                             ; $818A84  6A           Mx
    CMP #$8000                      ; $818A85  C9 00 80     Mx
    ROR                             ; $818A88  6A           Mx
    STA $00D0                       ; $818A89  8D D0 00     Mx
    LDA #$0374                      ; $818A8C  A9 74 03     Mx
    CLC                             ; $818A8F  18           Mx
    ADC $00D3                       ; $818A90  6D D3 00     Mx
    ASL $00D3                       ; $818A93  0E D3 00     Mx
    CLC                             ; $818A96  18           Mx
    ADC $00D3                       ; $818A97  6D D3 00     Mx
    CMP #$8000                      ; $818A9A  C9 00 80     Mx
    ROR                             ; $818A9D  6A           Mx
    CMP #$8000                      ; $818A9E  C9 00 80     Mx
    ROR                             ; $818AA1  6A           Mx
    STA $00D3                       ; $818AA2  8D D3 00     Mx
L_818AA5:
    LDA $00D0                       ; $818AA5  AD D0 00     Mx
    STA $07AE                       ; $818AA8  8D AE 07     Mx
    LDA $00D3                       ; $818AAB  AD D3 00     Mx
    STA $07B0                       ; $818AAE  8D B0 07     Mx
    LDA #$0019                      ; $818AB1  A9 19 00     Mx
    STA $00D0                       ; $818AB4  8D D0 00     Mx
    LDY #$68                        ; $818AB7  A0 68        Mx
    LDA ($CC),Y                     ; $818AB9  B1 CC        Mx
    CMP #$00F8                      ; $818ABB  C9 F8 00     Mx
    BCS L_818B01                    ; $818ABE  B0 41        Mx
    LDX $00E5                       ; $818AC0  AE E5 00     Mx
    LDA $A7E8DA,X                   ; $818AC3  BF DA E8 A7  Mx
    AND #$00FF                      ; $818AC7  29 FF 00     Mx
    STA $00D0                       ; $818ACA  8D D0 00     Mx
    LSR                             ; $818ACD  4A           Mx
    LSR                             ; $818ACE  4A           Mx
    STA $00D6                       ; $818ACF  8D D6 00     Mx
    LDA $1D58                       ; $818AD2  AD 58 1D     Mx
    STA $00BA                       ; $818AD5  8D BA 00     Mx
    INC $00D0                       ; $818AD8  EE D0 00     Mx
    SEP #$20                        ; $818ADB  E2 20        Mx
    LDA $00D0                       ; $818ADD  AD D0 00     mx
    STA $4202                       ; $818AE0  8D 02 42     mx
    LDA $00BA                       ; $818AE3  AD BA 00     mx
    STA $4203                       ; $818AE6  8D 03 42     mx
    NOP                             ; $818AE9  EA           mx
    NOP                             ; $818AEA  EA           mx
    NOP                             ; $818AEB  EA           mx
    REP #$20                        ; $818AEC  C2 20        mx
    LDA $4216                       ; $818AEE  AD 16 42     Mx
    STA $00BA                       ; $818AF1  8D BA 00     Mx
    LDA $00BB                       ; $818AF4  AD BB 00     Mx
    AND #$00FF                      ; $818AF7  29 FF 00     Mx
    CLC                             ; $818AFA  18           Mx
    ADC $00D6                       ; $818AFB  6D D6 00     Mx
    STA $00D0                       ; $818AFE  8D D0 00     Mx
L_818B01:
    LDA $00D0                       ; $818B01  AD D0 00     Mx
    STA $07AC                       ; $818B04  8D AC 07     Mx
    LDA $07AE                       ; $818B07  AD AE 07     Mx
    STA $00D0                       ; $818B0A  8D D0 00     Mx
    LDA $07B0                       ; $818B0D  AD B0 07     Mx
    STA $00D3                       ; $818B10  8D D3 00     Mx
    JSR L_818E5D                    ; $818B13  20 5D 8E     Mx
    STA $00D6                       ; $818B16  8D D6 00     Mx
    LDA $0924                       ; $818B19  AD 24 09     Mx
    SEC                             ; $818B1C  38           Mx
    SBC #$0008                      ; $818B1D  E9 08 00     Mx
    STA $00D0                       ; $818B20  8D D0 00     Mx
    CMP #$00F0                      ; $818B23  C9 F0 00     Mx
    BCC L_818B2F                    ; $818B26  90 07        Mx
    SEC                             ; $818B28  38           Mx
    SBC #$0040                      ; $818B29  E9 40 00     Mx
    STA $00D0                       ; $818B2C  8D D0 00     Mx
L_818B2F:
    LDA $0758                       ; $818B2F  AD 58 07     Mx
    CMP $00D0                       ; $818B32  CD D0 00     Mx
    BCC L_818B40                    ; $818B35  90 09        Mx
    LDA $00D6                       ; $818B37  AD D6 00     Mx
    ORA $07D4                       ; $818B3A  0D D4 07     Mx
    STA $00D6                       ; $818B3D  8D D6 00     Mx
L_818B40:
    LDA $075C                       ; $818B40  AD 5C 07     Mx
    CMP #$001A                      ; $818B43  C9 1A 00     Mx
    BCS L_818B60                    ; $818B46  B0 18        Mx
    LDA $0CCB                       ; $818B48  AD CB 0C     Mx
    CMP #$0008                      ; $818B4B  C9 08 00     Mx
    BCC L_818B5D                    ; $818B4E  90 0D        Mx
    LDA $0CCD                       ; $818B50  AD CD 0C     Mx
    BNE L_818B60                    ; $818B53  D0 0B        Mx
    LDA $0CCF                       ; $818B55  AD CF 0C     Mx
    CMP #$0006                      ; $818B58  C9 06 00     Mx
    BCS L_818B60                    ; $818B5B  B0 03        Mx
L_818B5D:
    JMP L_818BE4                    ; $818B5D  4C E4 8B     Mx
L_818B60:
    LDX $00E5                       ; $818B60  AE E5 00     Mx
    LDA $A7E8F9,X                   ; $818B63  BF F9 E8 A7  Mx
    AND #$00FF                      ; $818B67  29 FF 00     Mx
    CMP $075C                       ; $818B6A  CD 5C 07     Mx
    BCS L_818B72                    ; $818B6D  B0 03        Mx
    JMP L_818C01                    ; $818B6F  4C 01 8C     Mx
L_818B72:
    LDA #$0104                      ; $818B72  A9 04 01     Mx
    STA $00BA                       ; $818B75  8D BA 00     Mx
    SEP #$20                        ; $818B78  E2 20        Mx
    LDA $1D56                       ; $818B7A  AD 56 1D     mx
    STA $4202                       ; $818B7D  8D 02 42     mx
    LDA $00BA                       ; $818B80  AD BA 00     mx
    STA $4203                       ; $818B83  8D 03 42     mx
    NOP                             ; $818B86  EA           mx
    NOP                             ; $818B87  EA           mx
    NOP                             ; $818B88  EA           mx
    REP #$20                        ; $818B89  C2 20        mx
    LDA $4216                       ; $818B8B  AD 16 42     Mx
    STA $00BA                       ; $818B8E  8D BA 00     Mx
    STA $00A8                       ; $818B91  8D A8 00     Mx
    LDA #$0104                      ; $818B94  A9 04 01     Mx
    STA $00BA                       ; $818B97  8D BA 00     Mx
    SEP #$20                        ; $818B9A  E2 20        Mx
    LDA $1D56                       ; $818B9C  AD 56 1D     mx
    STA $4202                       ; $818B9F  8D 02 42     mx
    LDA $00BB                       ; $818BA2  AD BB 00     mx
    STA $4203                       ; $818BA5  8D 03 42     mx
    NOP                             ; $818BA8  EA           mx
    NOP                             ; $818BA9  EA           mx
    NOP                             ; $818BAA  EA           mx
    REP #$20                        ; $818BAB  C2 20        mx
    LDA $4216                       ; $818BAD  AD 16 42     Mx
    STA $00BB                       ; $818BB0  8D BB 00     Mx
    STZ $00F4                       ; $818BB3  9C F4 00     Mx
    STZ $00F2                       ; $818BB6  9C F2 00     Mx
    STA $00F3                       ; $818BB9  8D F3 00     Mx
    LDA $00F2                       ; $818BBC  AD F2 00     Mx
    CLC                             ; $818BBF  18           Mx
    ADC $00A8                       ; $818BC0  6D A8 00     Mx
    STA $00F2                       ; $818BC3  8D F2 00     Mx
    LDA $00F4                       ; $818BC6  AD F4 00     Mx
    ADC #$0000                      ; $818BC9  69 00 00     Mx
    STA $00F4                       ; $818BCC  8D F4 00     Mx
    LDA $00F3                       ; $818BCF  AD F3 00     Mx
    STA $00D0                       ; $818BD2  8D D0 00     Mx
    LDX $00E5                       ; $818BD5  AE E5 00     Mx
    LDA $A7E919,X                   ; $818BD8  BF 19 E9 A7  Mx
    AND #$00FF                      ; $818BDC  29 FF 00     Mx
    CMP $00D0                       ; $818BDF  CD D0 00     Mx
    BCC L_818C01                    ; $818BE2  90 1D        Mx
L_818BE4:
    LDA $00D6                       ; $818BE4  AD D6 00     Mx
    AND #$0F00                      ; $818BE7  29 00 0F     Mx
    ORA $07D0                       ; $818BEA  0D D0 07     Mx
    STA $00D6                       ; $818BED  8D D6 00     Mx
    LDA $1D56                       ; $818BF0  AD 56 1D     Mx
    AND #$0001                      ; $818BF3  29 01 00     Mx
    BNE L_818C01                    ; $818BF6  D0 09        Mx
    LDA $00D6                       ; $818BF8  AD D6 00     Mx
    ORA $07D4                       ; $818BFB  0D D4 07     Mx
    STA $00D6                       ; $818BFE  8D D6 00     Mx
L_818C01:
    LDA $075C                       ; $818C01  AD 5C 07     Mx
    CMP #$002F                      ; $818C04  C9 2F 00     Mx
    BCC L_818C0C                    ; $818C07  90 03        Mx
    JMP L_818C9D                    ; $818C09  4C 9D 8C     Mx
L_818C0C:
    LDY #$04                        ; $818C0C  A0 04        Mx
    LDA ($CC),Y                     ; $818C0E  B1 CC        Mx
    CMP #$0030                      ; $818C10  C9 30 00     Mx
    BEQ L_818C1B                    ; $818C13  F0 06        Mx
    LDY #$32                        ; $818C15  A0 32        Mx
    LDA ($CC),Y                     ; $818C17  B1 CC        Mx
    BNE L_818C57                    ; $818C19  D0 3C        Mx
L_818C1B:
    LDY #$08                        ; $818C1B  A0 08        Mx
    LDA ($CC),Y                     ; $818C1D  B1 CC        Mx
    AND #$0001                      ; $818C1F  29 01 00     Mx
    BEQ L_818C9D                    ; $818C22  F0 79        Mx
    LDA #$0005                      ; $818C24  A9 05 00     Mx
    STA $00D0                       ; $818C27  8D D0 00     Mx
    LDA $1D57                       ; $818C2A  AD 57 1D     Mx
    STA $00BA                       ; $818C2D  8D BA 00     Mx
    INC $00D0                       ; $818C30  EE D0 00     Mx
    SEP #$20                        ; $818C33  E2 20        Mx
    LDA $00D0                       ; $818C35  AD D0 00     mx
    STA $4202                       ; $818C38  8D 02 42     mx
    LDA $00BA                       ; $818C3B  AD BA 00     mx
    STA $4203                       ; $818C3E  8D 03 42     mx
    NOP                             ; $818C41  EA           mx
    NOP                             ; $818C42  EA           mx
    NOP                             ; $818C43  EA           mx
    REP #$20                        ; $818C44  C2 20        mx
    LDA $4216                       ; $818C46  AD 16 42     Mx
    STA $00BA                       ; $818C49  8D BA 00     Mx
    LDA $00BB                       ; $818C4C  AD BB 00     Mx
    AND #$00FF                      ; $818C4F  29 FF 00     Mx
    BNE L_818C9D                    ; $818C52  D0 49        Mx
    JMP L_818C94                    ; $818C54  4C 94 8C     Mx
L_818C57:
    LDA #$003C                      ; $818C57  A9 3C 00     Mx
    STA $00D0                       ; $818C5A  8D D0 00     Mx
    LDA $1D56                       ; $818C5D  AD 56 1D     Mx
    STA $00BA                       ; $818C60  8D BA 00     Mx
    INC $00D0                       ; $818C63  EE D0 00     Mx
    SEP #$20                        ; $818C66  E2 20        Mx
    LDA $00D0                       ; $818C68  AD D0 00     mx
    STA $4202                       ; $818C6B  8D 02 42     mx
    LDA $00BA                       ; $818C6E  AD BA 00     mx
    STA $4203                       ; $818C71  8D 03 42     mx
    NOP                             ; $818C74  EA           mx
    NOP                             ; $818C75  EA           mx
    NOP                             ; $818C76  EA           mx
    REP #$20                        ; $818C77  C2 20        mx
    LDA $4216                       ; $818C79  AD 16 42     Mx
    STA $00BA                       ; $818C7C  8D BA 00     Mx
    LDA $00BB                       ; $818C7F  AD BB 00     Mx
    AND #$00FF                      ; $818C82  29 FF 00     Mx
    STA $00D0                       ; $818C85  8D D0 00     Mx
    LDX $00E5                       ; $818C88  AE E5 00     Mx
    LDA $A7E938,X                   ; $818C8B  BF 38 E9 A7  Mx
    CMP $00D0                       ; $818C8F  CD D0 00     Mx
    BCC L_818C9D                    ; $818C92  90 09        Mx
L_818C94:
    LDA $00D6                       ; $818C94  AD D6 00     Mx
    ORA $07D2                       ; $818C97  0D D2 07     Mx
    STA $00D6                       ; $818C9A  8D D6 00     Mx
L_818C9D:
    LDA $00D6                       ; $818C9D  AD D6 00     Mx
    STA $0A90                       ; $818CA0  8D 90 0A     Mx
    JMP L_818EE3                    ; $818CA3  4C E3 8E     Mx
L_818CA6:
    LDA $07A2                       ; $818CA6  AD A2 07     Mx
    BEQ L_818CAE                    ; $818CA9  F0 03        Mx
L_818CAB:
    JMP L_8186BE                    ; $818CAB  4C BE 86     Mx
L_818CAE:
    LDA $088A                       ; $818CAE  AD 8A 08     Mx
    BNE L_818CAB                    ; $818CB1  D0 F8        Mx
    STZ $07A8                       ; $818CB3  9C A8 07     Mx
    LDA $07AA                       ; $818CB6  AD AA 07     Mx
    BEQ L_818D12                    ; $818CB9  F0 57        Mx
    STZ $07AA                       ; $818CBB  9C AA 07     Mx
    LDA $07B6                       ; $818CBE  AD B6 07     Mx
    CLC                             ; $818CC1  18           Mx
    ADC $07CA                       ; $818CC2  6D CA 07     Mx
    BMI L_818CCF                    ; $818CC5  30 08        Mx
    CMP #$0010                      ; $818CC7  C9 10 00     Mx
    BMI L_818CCF                    ; $818CCA  30 03        Mx
    LDA #$000F                      ; $818CCC  A9 0F 00     Mx
L_818CCF:
    CLC                             ; $818CCF  18           Mx
    ADC #$000F                      ; $818CD0  69 0F 00     Mx
    BPL L_818CD8                    ; $818CD3  10 03        Mx
    LDA #$0000                      ; $818CD5  A9 00 00     Mx
L_818CD8:
    TAX                             ; $818CD8  AA           Mx
    LDA $A7E7FA,X                   ; $818CD9  BF FA E7 A7  Mx
    AND #$00FF                      ; $818CDD  29 FF 00     Mx
    STA $00D0                       ; $818CE0  8D D0 00     Mx
    LDA $1D56                       ; $818CE3  AD 56 1D     Mx
    STA $00BA                       ; $818CE6  8D BA 00     Mx
    INC $00D0                       ; $818CE9  EE D0 00     Mx
    SEP #$20                        ; $818CEC  E2 20        Mx
    LDA $00D0                       ; $818CEE  AD D0 00     mx
    STA $4202                       ; $818CF1  8D 02 42     mx
    LDA $00BA                       ; $818CF4  AD BA 00     mx
    STA $4203                       ; $818CF7  8D 03 42     mx
    NOP                             ; $818CFA  EA           mx
    NOP                             ; $818CFB  EA           mx
    NOP                             ; $818CFC  EA           mx
    REP #$20                        ; $818CFD  C2 20        mx
    LDA $4216                       ; $818CFF  AD 16 42     Mx
    STA $00BA                       ; $818D02  8D BA 00     Mx
    LDA $00BB                       ; $818D05  AD BB 00     Mx
    AND #$00FF                      ; $818D08  29 FF 00     Mx
    CLC                             ; $818D0B  18           Mx
    ADC #$0002                      ; $818D0C  69 02 00     Mx
    STA $07AC                       ; $818D0F  8D AC 07     Mx
L_818D12:
    LDA $07AC                       ; $818D12  AD AC 07     Mx
    SEC                             ; $818D15  38           Mx
    SBC #$0002                      ; $818D16  E9 02 00     Mx
    BEQ L_818D23                    ; $818D19  F0 08        Mx
    BMI L_818D23                    ; $818D1B  30 06        Mx
    STA $00D0                       ; $818D1D  8D D0 00     Mx
    JMP L_818E0F                    ; $818D20  4C 0F 8E     Mx
L_818D23:
    LDA $07DC                       ; $818D23  AD DC 07     Mx
    CMP #$0030                      ; $818D26  C9 30 00     Mx
    BNE L_818D2E                    ; $818D29  D0 03        Mx
    JMP L_818D45                    ; $818D2B  4C 45 8D     Mx
L_818D2E:
    LDA $075C                       ; $818D2E  AD 5C 07     Mx
    CMP $0844                       ; $818D31  CD 44 08     Mx
    BCS L_818D39                    ; $818D34  B0 03        Mx
    JMP L_818D45                    ; $818D36  4C 45 8D     Mx
L_818D39:
    STZ $00D0                       ; $818D39  9C D0 00     Mx
    LDA #$0374                      ; $818D3C  A9 74 03     Mx
    STA $00D3                       ; $818D3F  8D D3 00     Mx
    JMP L_818DAF                    ; $818D42  4C AF 8D     Mx
L_818D45:
    LDA $0BE5                       ; $818D45  AD E5 0B     Mx
    STA $00DF                       ; $818D48  8D DF 00     Mx
    LDA $0BE3                       ; $818D4B  AD E3 0B     Mx
    ASL                             ; $818D4E  0A           Mx
    ROL $00DF                       ; $818D4F  2E DF 00     Mx
    ASL                             ; $818D52  0A           Mx
    ROL $00DF                       ; $818D53  2E DF 00     Mx
    ASL                             ; $818D56  0A           Mx
    ROL $00DF                       ; $818D57  2E DF 00     Mx
    CLC                             ; $818D5A  18           Mx
    ADC $0BD7                       ; $818D5B  6D D7 0B     Mx
    STA $00A4                       ; $818D5E  8D A4 00     Mx
    LDA $0BD9                       ; $818D61  AD D9 0B     Mx
    ADC $00DF                       ; $818D64  6D DF 00     Mx
    STA $00D0                       ; $818D67  8D D0 00     Mx
    LDA $00A4                       ; $818D6A  AD A4 00     Mx
    CLC                             ; $818D6D  18           Mx
    ADC $0BE3                       ; $818D6E  6D E3 0B     Mx
    LDA $00D0                       ; $818D71  AD D0 00     Mx
    ADC $0BE5                       ; $818D74  6D E5 0B     Mx
    STA $00D0                       ; $818D77  8D D0 00     Mx
    LDA $0BED                       ; $818D7A  AD ED 0B     Mx
    STA $00DC                       ; $818D7D  8D DC 00     Mx
    LDA $0BEB                       ; $818D80  AD EB 0B     Mx
    ASL                             ; $818D83  0A           Mx
    ROL $00DC                       ; $818D84  2E DC 00     Mx
    ASL                             ; $818D87  0A           Mx
    ROL $00DC                       ; $818D88  2E DC 00     Mx
    ASL                             ; $818D8B  0A           Mx
    ROL $00DC                       ; $818D8C  2E DC 00     Mx
    CLC                             ; $818D8F  18           Mx
    ADC $0BDF                       ; $818D90  6D DF 0B     Mx
    STA $00A4                       ; $818D93  8D A4 00     Mx
    LDA $0BE1                       ; $818D96  AD E1 0B     Mx
    ADC $00DC                       ; $818D99  6D DC 00     Mx
    STA $00D3                       ; $818D9C  8D D3 00     Mx
    LDA $00A4                       ; $818D9F  AD A4 00     Mx
    CLC                             ; $818DA2  18           Mx
    ADC $0BEB                       ; $818DA3  6D EB 0B     Mx
    LDA $00D3                       ; $818DA6  AD D3 00     Mx
    ADC $0BED                       ; $818DA9  6D ED 0B     Mx
    STA $00D3                       ; $818DAC  8D D3 00     Mx
L_818DAF:
    LDA $00D0                       ; $818DAF  AD D0 00     Mx
    STA $07AE                       ; $818DB2  8D AE 07     Mx
    LDA $00D3                       ; $818DB5  AD D3 00     Mx
    STA $07B0                       ; $818DB8  8D B0 07     Mx
    LDA $07CA                       ; $818DBB  AD CA 07     Mx
    CLC                             ; $818DBE  18           Mx
    ADC $07B6                       ; $818DBF  6D B6 07     Mx
    BMI L_818DCC                    ; $818DC2  30 08        Mx
    CMP #$0010                      ; $818DC4  C9 10 00     Mx
    BMI L_818DCC                    ; $818DC7  30 03        Mx
    LDA #$000F                      ; $818DC9  A9 0F 00     Mx
L_818DCC:
    CLC                             ; $818DCC  18           Mx
    ADC #$000F                      ; $818DCD  69 0F 00     Mx
    BPL L_818DD5                    ; $818DD0  10 03        Mx
    LDA #$0000                      ; $818DD2  A9 00 00     Mx
L_818DD5:
    TAX                             ; $818DD5  AA           Mx
    LDA $A7E819,X                   ; $818DD6  BF 19 E8 A7  Mx
    AND #$00FF                      ; $818DDA  29 FF 00     Mx
    STA $00D0                       ; $818DDD  8D D0 00     Mx
    LDA $1D58                       ; $818DE0  AD 58 1D     Mx
    STA $00BA                       ; $818DE3  8D BA 00     Mx
    INC $00D0                       ; $818DE6  EE D0 00     Mx
    SEP #$20                        ; $818DE9  E2 20        Mx
    LDA $00D0                       ; $818DEB  AD D0 00     mx
    STA $4202                       ; $818DEE  8D 02 42     mx
    LDA $00BA                       ; $818DF1  AD BA 00     mx
    STA $4203                       ; $818DF4  8D 03 42     mx
    NOP                             ; $818DF7  EA           mx
    NOP                             ; $818DF8  EA           mx
    NOP                             ; $818DF9  EA           mx
    REP #$20                        ; $818DFA  C2 20        mx
    LDA $4216                       ; $818DFC  AD 16 42     Mx
    STA $00BA                       ; $818DFF  8D BA 00     Mx
    LDA $00BB                       ; $818E02  AD BB 00     Mx
    AND #$00FF                      ; $818E05  29 FF 00     Mx
    CLC                             ; $818E08  18           Mx
    ADC #$0005                      ; $818E09  69 05 00     Mx
    STA $00D0                       ; $818E0C  8D D0 00     Mx
L_818E0F:
    LDA $00D0                       ; $818E0F  AD D0 00     Mx
    STA $07AC                       ; $818E12  8D AC 07     Mx
    LDA $07AE                       ; $818E15  AD AE 07     Mx
    STA $00D0                       ; $818E18  8D D0 00     Mx
    LDA $07B0                       ; $818E1B  AD B0 07     Mx
    STA $00D3                       ; $818E1E  8D D3 00     Mx
    JSR L_818E5D                    ; $818E21  20 5D 8E     Mx
    LDA $075C                       ; $818E24  AD 5C 07     Mx
    CMP #$0018                      ; $818E27  C9 18 00     Mx
    BCS L_818E5A                    ; $818E2A  B0 2E        Mx
    LDA $0BDD                       ; $818E2C  AD DD 0B     Mx
    CMP #$0038                      ; $818E2F  C9 38 00     Mx
    BCC L_818E5A                    ; $818E32  90 26        Mx
    CMP #$006A                      ; $818E34  C9 6A 00     Mx
    BCS L_818E5A                    ; $818E37  B0 21        Mx
    LDX $0C1F                       ; $818E39  AE 1F 0C     Mx
    CPX $06F0                       ; $818E3C  EC F0 06     Mx
    BEQ L_818E5A                    ; $818E3F  F0 19        Mx
    CPX $07D8                       ; $818E41  EC D8 07     Mx
    BEQ L_818E5A                    ; $818E44  F0 14        Mx
    LDA $1D57                       ; $818E46  AD 57 1D     Mx
    AND #$0003                      ; $818E49  29 03 00     Mx
    CMP #$0002                      ; $818E4C  C9 02 00     Mx
    BNE L_818E5A                    ; $818E4F  D0 09        Mx
    LDA $0A90                       ; $818E51  AD 90 0A     Mx
    ORA $07D2                       ; $818E54  0D D2 07     Mx
    STA $0A90                       ; $818E57  8D 90 0A     Mx
L_818E5A:
    JMP L_818EE3                    ; $818E5A  4C E3 8E     Mx
L_818E5D:
    LDA $071E                       ; $818E5D  AD 1E 07     Mx
    SEC                             ; $818E60  38           Mx
    SBC $00D0                       ; $818E61  ED D0 00     Mx
    STZ $00D0                       ; $818E64  9C D0 00     Mx
    STA $00B7                       ; $818E67  8D B7 00     Mx
    BPL L_818E73                    ; $818E6A  10 07        Mx
    EOR #$FFFF                      ; $818E6C  49 FF FF     Mx
    CLC                             ; $818E6F  18           Mx
    ADC #$0001                      ; $818E70  69 01 00     Mx
L_818E73:
    SEC                             ; $818E73  38           Mx
    SBC #$000A                      ; $818E74  E9 0A 00     Mx
    BMI L_818E8C                    ; $818E77  30 13        Mx
    LDA $00B7                       ; $818E79  AD B7 00     Mx
    BMI L_818E86                    ; $818E7C  30 08        Mx
    LDA #$0200                      ; $818E7E  A9 00 02     Mx
    STA $00D0                       ; $818E81  8D D0 00     Mx
    BRA L_818E8C                    ; $818E84  80 06        Mx
L_818E86:
    LDA #$0100                      ; $818E86  A9 00 01     Mx
    STA $00D0                       ; $818E89  8D D0 00     Mx
L_818E8C:
    LDA $0726                       ; $818E8C  AD 26 07     Mx
    SEC                             ; $818E8F  38           Mx
    SBC $00D3                       ; $818E90  ED D3 00     Mx
    STA $00B7                       ; $818E93  8D B7 00     Mx
    BPL L_818E9F                    ; $818E96  10 07        Mx
    EOR #$FFFF                      ; $818E98  49 FF FF     Mx
    CLC                             ; $818E9B  18           Mx
    ADC #$0001                      ; $818E9C  69 01 00     Mx
L_818E9F:
    SEC                             ; $818E9F  38           Mx
    SBC #$000A                      ; $818EA0  E9 0A 00     Mx
    BMI L_818EBE                    ; $818EA3  30 19        Mx
    LDA $00B7                       ; $818EA5  AD B7 00     Mx
    BMI L_818EB5                    ; $818EA8  30 0B        Mx
    LDA #$0800                      ; $818EAA  A9 00 08     Mx
    ORA $00D0                       ; $818EAD  0D D0 00     Mx
    STA $00D0                       ; $818EB0  8D D0 00     Mx
    BRA L_818EBE                    ; $818EB3  80 09        Mx
L_818EB5:
    LDA #$0400                      ; $818EB5  A9 00 04     Mx
    ORA $00D0                       ; $818EB8  0D D0 00     Mx
    STA $00D0                       ; $818EBB  8D D0 00     Mx
L_818EBE:
    LDA $00D0                       ; $818EBE  AD D0 00     Mx
    STA $0A90                       ; $818EC1  8D 90 0A     Mx
    LDA $00D0                       ; $818EC4  AD D0 00     Mx
    RTS                             ; $818EC7  60           Mx
L_818EC8:
    LDA $07CA                       ; $818EC8  AD CA 07     Mx
    CLC                             ; $818ECB  18           Mx
    ADC $07B6                       ; $818ECC  6D B6 07     Mx
    BMI L_818ED9                    ; $818ECF  30 08        Mx
    CMP #$0010                      ; $818ED1  C9 10 00     Mx
    BMI L_818ED9                    ; $818ED4  30 03        Mx
    LDA #$000F                      ; $818ED6  A9 0F 00     Mx
L_818ED9:
    CLC                             ; $818ED9  18           Mx
    ADC #$000F                      ; $818EDA  69 0F 00     Mx
    BPL L_818EE2                    ; $818EDD  10 03        Mx
    LDA #$0000                      ; $818EDF  A9 00 00     Mx
L_818EE2:
    RTS                             ; $818EE2  60           Mx
L_818EE3:
    LDA $0A90                       ; $818EE3  AD 90 0A     Mx
L_818EE6:
    JSR L_819DD6                    ; $818EE6  20 D6 9D     Mx
    LDA $0728                       ; $818EE9  AD 28 07     Mx
    CLC                             ; $818EEC  18           Mx
    ADC $071C                       ; $818EED  6D 1C 07     Mx
    STA $0712                       ; $818EF0  8D 12 07     Mx
    LDA $072A                       ; $818EF3  AD 2A 07     Mx
    ADC $071E                       ; $818EF6  6D 1E 07     Mx
    STA $0710                       ; $818EF9  8D 10 07     Mx
    SEC                             ; $818EFC  38           Mx
    SBC #$0006                      ; $818EFD  E9 06 00     Mx
    STA $0746                       ; $818F00  8D 46 07     Mx
    CLC                             ; $818F03  18           Mx
    ADC #$000C                      ; $818F04  69 0C 00     Mx
    STA $0748                       ; $818F07  8D 48 07     Mx
    LDA $0730                       ; $818F0A  AD 30 07     Mx
    CLC                             ; $818F0D  18           Mx
    ADC $0724                       ; $818F0E  6D 24 07     Mx
    STA $071A                       ; $818F11  8D 1A 07     Mx
    LDA $0732                       ; $818F14  AD 32 07     Mx
    ADC $0726                       ; $818F17  6D 26 07     Mx
    STA $0718                       ; $818F1A  8D 18 07     Mx
    LDA $072C                       ; $818F1D  AD 2C 07     Mx
    CLC                             ; $818F20  18           Mx
    ADC $0720                       ; $818F21  6D 20 07     Mx
    STA $0716                       ; $818F24  8D 16 07     Mx
    LDA $072E                       ; $818F27  AD 2E 07     Mx
    ADC $0722                       ; $818F2A  6D 22 07     Mx
    STA $0714                       ; $818F2D  8D 14 07     Mx
    LDA $06F4                       ; $818F30  AD F4 06     Mx
    STA $00AA                       ; $818F33  8D AA 00     Mx
    LDA $0BD9                       ; $818F36  AD D9 0B     Mx
    STA $00A8                       ; $818F39  8D A8 00     Mx
    LDA $0BF9                       ; $818F3C  AD F9 0B     Mx
    BNE L_818F86                    ; $818F3F  D0 45        Mx
    LDA $0C19                       ; $818F41  AD 19 0C     Mx
    BNE L_818F89                    ; $818F44  D0 43        Mx
    LDA $0702                       ; $818F46  AD 02 07     Mx
    BEQ L_818F53                    ; $818F49  F0 08        Mx
    LDX $0C1B                       ; $818F4B  AE 1B 0C     Mx
    CPX $06F0                       ; $818F4E  EC F0 06     Mx
    BNE L_818F86                    ; $818F51  D0 33        Mx
L_818F53:
    LDA $06F4                       ; $818F53  AD F4 06     Mx
    CMP #$0032                      ; $818F56  C9 32 00     Mx
    BNE L_818F5E                    ; $818F59  D0 03        Mx
    JMP L_8195F8                    ; $818F5B  4C F8 95     Mx
L_818F5E:
    CMP #$0030                      ; $818F5E  C9 30 00     Mx
    BEQ L_818F86                    ; $818F61  F0 23        Mx
    LDX $0A9A                       ; $818F63  AE 9A 0A     Mx
    BEQ L_818F74                    ; $818F66  F0 0C        Mx
    LDA $06F0                       ; $818F68  AD F0 06     Mx
    SEC                             ; $818F6B  38           Mx
    SBC $0C1B                       ; $818F6C  ED 1B 0C     Mx
    AND #$00FF                      ; $818F6F  29 FF 00     Mx
    BNE L_818F86                    ; $818F72  D0 12        Mx
L_818F74:
    LDA $075C                       ; $818F74  AD 5C 07     Mx
    CMP #$0020                      ; $818F77  C9 20 00     Mx
    BCS L_818F86                    ; $818F7A  B0 0A        Mx
    LDA $06F8                       ; $818F7C  AD F8 06     Mx
    BNE L_818F86                    ; $818F7F  D0 05        Mx
    LDA $077A                       ; $818F81  AD 7A 07     Mx
    BEQ L_818FB3                    ; $818F84  F0 2D        Mx
L_818F86:
    JMP L_819A29                    ; $818F86  4C 29 9A     Mx
L_818F89:
    CMP $06F0                       ; $818F89  CD F0 06     Mx
    BEQ L_818F86                    ; $818F8C  F0 F8        Mx
    LDA $077E                       ; $818F8E  AD 7E 07     Mx
    AND #$007F                      ; $818F91  29 7F 00     Mx
    BNE L_818F86                    ; $818F94  D0 F0        Mx
    LDY #$54                        ; $818F96  A0 54        Mx
    LDA $00A8                       ; $818F98  AD A8 00     Mx
    SEC                             ; $818F9B  38           Mx
    SBC ($CC),Y                     ; $818F9C  F1 CC        Mx
    STA $00A8                       ; $818F9E  8D A8 00     Mx
    LDA $06F4                       ; $818FA1  AD F4 06     Mx
    CMP #$002C                      ; $818FA4  C9 2C 00     Mx
    BEQ L_818FB3                    ; $818FA7  F0 0A        Mx
    CMP #$0020                      ; $818FA9  C9 20 00     Mx
    BCC L_818F86                    ; $818FAC  90 D8        Mx
    CMP #$0025                      ; $818FAE  C9 25 00     Mx
    BCS L_818F86                    ; $818FB1  B0 D3        Mx
L_818FB3:
    LDA $00A8                       ; $818FB3  AD A8 00     Mx
    CLC                             ; $818FB6  18           Mx
    ADC $0BEF                       ; $818FB7  6D EF 0B     Mx
    STA $00EA                       ; $818FBA  8D EA 00     Mx
    CLC                             ; $818FBD  18           Mx
    ADC #$0012                      ; $818FBE  69 12 00     Mx
    STA $00EC                       ; $818FC1  8D EC 00     Mx
    LDA $0746                       ; $818FC4  AD 46 07     Mx
    SEC                             ; $818FC7  38           Mx
    SBC #$0002                      ; $818FC8  E9 02 00     Mx
    SEC                             ; $818FCB  38           Mx
    SBC $00EC                       ; $818FCC  ED EC 00     Mx
    BMI L_818FD4                    ; $818FCF  30 03        Mx
    JMP L_819A29                    ; $818FD1  4C 29 9A     Mx
L_818FD4:
    LDA $0748                       ; $818FD4  AD 48 07     Mx
    CLC                             ; $818FD7  18           Mx
    ADC #$0006                      ; $818FD8  69 06 00     Mx
    SEC                             ; $818FDB  38           Mx
    SBC $00EA                       ; $818FDC  ED EA 00     Mx
    BPL L_818FE4                    ; $818FDF  10 03        Mx
    JMP L_819A29                    ; $818FE1  4C 29 9A     Mx
L_818FE4:
    LDA $0718                       ; $818FE4  AD 18 07     Mx
    SEC                             ; $818FE7  38           Mx
    SBC $0BF3                       ; $818FE8  ED F3 0B     Mx
    BMI L_818FF4                    ; $818FEB  30 07        Mx
    CMP #$0018                      ; $818FED  C9 18 00     Mx
    BCS L_818F86                    ; $818FF0  B0 94        Mx
    BCC L_818FFC                    ; $818FF2  90 08        Mx
L_818FF4:
    CMP #$FFF0                      ; $818FF4  C9 F0 FF     Mx
    BCS L_818FFC                    ; $818FF7  B0 03        Mx
L_818FF9:
    JMP L_819A29                    ; $818FF9  4C 29 9A     Mx
L_818FFC:
    LDA $0714                       ; $818FFC  AD 14 07     Mx
    SEC                             ; $818FFF  38           Mx
    SBC $0BDD                       ; $819000  ED DD 0B     Mx
    BMI L_819012                    ; $819003  30 0D        Mx
    CMP #$000D                      ; $819005  C9 0D 00     Mx
    BCS L_818FF9                    ; $819008  B0 EF        Mx
    LDA $0714                       ; $81900A  AD 14 07     Mx
    BNE L_818FF9                    ; $81900D  D0 EA        Mx
    JMP L_819038                    ; $81900F  4C 38 90     Mx
L_819012:
    STA $00B2                       ; $819012  8D B2 00     Mx
    LDX $0722                       ; $819015  AE 22 07     Mx
    BEQ L_819024                    ; $819018  F0 0A        Mx
    CMP #$FFE2                      ; $81901A  C9 E2 FF     Mx
    BCS L_819035                    ; $81901D  B0 16        Mx
    LDA #$FFAF                      ; $81901F  A9 AF FF     Mx
    BRA L_819027                    ; $819022  80 03        Mx
L_819024:
    LDA #$FFC8                      ; $819024  A9 C8 FF     Mx
L_819027:
    LDX $07BA                       ; $819027  AE BA 07     Mx
    BEQ L_819030                    ; $81902A  F0 04        Mx
    CLC                             ; $81902C  18           Mx
    ADC #$000E                      ; $81902D  69 0E 00     Mx
L_819030:
    CMP $00B2                       ; $819030  CD B2 00     Mx
    BCC L_819038                    ; $819033  90 03        Mx
L_819035:
    JMP L_819A29                    ; $819035  4C 29 9A     Mx
L_819038:
    LDA $0722                       ; $819038  AD 22 07     Mx
    BEQ L_819086                    ; $81903B  F0 49        Mx
    LDA #$0005                      ; $81903D  A9 05 00     Mx
    STA $077A                       ; $819040  8D 7A 07     Mx
    LDA #$012C                      ; $819043  A9 2C 01     Mx
    STA $0C3F                       ; $819046  8D 3F 0C     Mx
    LDA $075C                       ; $819049  AD 5C 07     Mx
    CMP #$0010                      ; $81904C  C9 10 00     Mx
    BCS L_819035                    ; $81904F  B0 E4        Mx
    LDA $0C19                       ; $819051  AD 19 0C     Mx
    BNE L_819086                    ; $819054  D0 30        Mx
    LDA $0C2B                       ; $819056  AD 2B 0C     Mx
    BMI L_819086                    ; $819059  30 2B        Mx
    LDA $0708                       ; $81905B  AD 08 07     Mx
    ASL                             ; $81905E  0A           Mx
    ASL                             ; $81905F  0A           Mx
    ASL                             ; $819060  0A           Mx
    ASL                             ; $819061  0A           Mx
    SEC                             ; $819062  38           Mx
    SBC $075E                       ; $819063  ED 5E 07     Mx
    BPL L_81906F                    ; $819066  10 07        Mx
    EOR #$FFFF                      ; $819068  49 FF FF     Mx
    CLC                             ; $81906B  18           Mx
    ADC #$0001                      ; $81906C  69 01 00     Mx
L_81906F:
    CMP #$0040                      ; $81906F  C9 40 00     Mx
    BCC L_819081                    ; $819072  90 0D        Mx
    SEC                             ; $819074  38           Mx
    SBC #$0080                      ; $819075  E9 80 00     Mx
    BPL L_819081                    ; $819078  10 07        Mx
    EOR #$FFFF                      ; $81907A  49 FF FF     Mx
    CLC                             ; $81907D  18           Mx
    ADC #$0001                      ; $81907E  69 01 00     Mx
L_819081:
    CMP #$0020                      ; $819081  C9 20 00     Mx
    BCS L_819035                    ; $819084  B0 AF        Mx
L_819086:
    LDA $0C25                       ; $819086  AD 25 0C     Mx
    CMP #$06F0                      ; $819089  C9 F0 06     Mx
    BNE L_819091                    ; $81908C  D0 03        Mx
    JMP L_81931A                    ; $81908E  4C 1A 93     Mx
L_819091:
    LDA $08C8                       ; $819091  AD C8 08     Mx
    ORA $09B0                       ; $819094  0D B0 09     Mx
    AND #$0004                      ; $819097  29 04 00     Mx
    BNE L_81909F                    ; $81909A  D0 03        Mx
    JMP L_8192CD                    ; $81909C  4C CD 92     Mx
L_81909F:
    LDA $0C19                       ; $81909F  AD 19 0C     Mx
    BNE L_8190A7                    ; $8190A2  D0 03        Mx
    JMP L_81930F                    ; $8190A4  4C 0F 93     Mx
L_8190A7:
    LDA $1D56                       ; $8190A7  AD 56 1D     Mx
    AND $0003                       ; $8190AA  2D 03 00     Mx
    BEQ L_8190B2                    ; $8190AD  F0 03        Mx
    JMP L_819A29                    ; $8190AF  4C 29 9A     Mx
L_8190B2:
    LDY #$32                        ; $8190B2  A0 32        Mx
    LDA ($CC),Y                     ; $8190B4  B1 CC        Mx
    CMP $0722                       ; $8190B6  CD 22 07     Mx
    BCC L_8190BE                    ; $8190B9  90 03        Mx
    JMP L_8192CD                    ; $8190BB  4C CD 92     Mx
L_8190BE:
    LDY #$06                        ; $8190BE  A0 06        Mx
    LDA ($CC),Y                     ; $8190C0  B1 CC        Mx
    BNE L_8190C7                    ; $8190C2  D0 03        Mx
    JMP L_8192CD                    ; $8190C4  4C CD 92     Mx
L_8190C7:
    LDA $0006                       ; $8190C7  AD 06 00     Mx
    AND #$000F                      ; $8190CA  29 0F 00     Mx
    BNE L_8190E7                    ; $8190CD  D0 18        Mx
    LDA #$0014                      ; $8190CF  A9 14 00     Mx
    STA $0C3D                       ; $8190D2  8D 3D 0C     Mx
    LDA $1611                       ; $8190D5  AD 11 16     Mx
    BNE L_8190E7                    ; $8190D8  D0 0D        Mx
    LDA #$0011                      ; $8190DA  A9 11 00     Mx
    JSL L_BDFDF3                    ; $8190DD  22 F3 FD BD  Mx
    LDA #$0064                      ; $8190E1  A9 64 00     Mx
    STA $1611                       ; $8190E4  8D 11 16     Mx
L_8190E7:
    LDA #$0004                      ; $8190E7  A9 04 00     Mx
    LDX $06F0                       ; $8190EA  AE F0 06     Mx
    CPX $0A96                       ; $8190ED  EC 96 0A     Mx
    BNE L_8190F5                    ; $8190F0  D0 03        Mx
    LDA #$000A                      ; $8190F2  A9 0A 00     Mx
L_8190F5:
    LDX $06F1                       ; $8190F5  AE F1 06     Mx
    BNE L_8190FD                    ; $8190F8  D0 03        Mx
    LDA #$0004                      ; $8190FA  A9 04 00     Mx
L_8190FD:
    STA $00D0                       ; $8190FD  8D D0 00     Mx
    LDA $07CA                       ; $819100  AD CA 07     Mx
    BMI L_819114                    ; $819103  30 0F        Mx
    CMP #$0064                      ; $819105  C9 64 00     Mx
    BCC L_81910D                    ; $819108  90 03        Mx
    LDA #$0064                      ; $81910A  A9 64 00     Mx
L_81910D:
    CLC                             ; $81910D  18           Mx
    ADC $00D0                       ; $81910E  6D D0 00     Mx
    STA $00D0                       ; $819111  8D D0 00     Mx
L_819114:
    LDA #$0064                      ; $819114  A9 64 00     Mx
    STA $00D3                       ; $819117  8D D3 00     Mx
    LDA $1D56                       ; $81911A  AD 56 1D     Mx
    STA $00BA                       ; $81911D  8D BA 00     Mx
    INC $00D3                       ; $819120  EE D3 00     Mx
    SEP #$20                        ; $819123  E2 20        Mx
    LDA $00D3                       ; $819125  AD D3 00     mx
    STA $4202                       ; $819128  8D 02 42     mx
    LDA $00BA                       ; $81912B  AD BA 00     mx
    STA $4203                       ; $81912E  8D 03 42     mx
    NOP                             ; $819131  EA           mx
    NOP                             ; $819132  EA           mx
    NOP                             ; $819133  EA           mx
    REP #$20                        ; $819134  C2 20        mx
    LDA $4216                       ; $819136  AD 16 42     Mx
    STA $00BA                       ; $819139  8D BA 00     Mx
    LDA $00BB                       ; $81913C  AD BB 00     Mx
    AND #$00FF                      ; $81913F  29 FF 00     Mx
    INC                             ; $819142  1A           Mx
    CMP $00D0                       ; $819143  CD D0 00     Mx
    BCC L_81914B                    ; $819146  90 03        Mx
    JMP L_8192CD                    ; $819148  4C CD 92     Mx
L_81914B:
    LDA #$0087                      ; $81914B  A9 87 00     Mx
    STA $07B2                       ; $81914E  8D B2 07     Mx
    LDA $06F4                       ; $819151  AD F4 06     Mx
    CMP #$0024                      ; $819154  C9 24 00     Mx
    BEQ L_8191B3                    ; $819157  F0 5A        Mx
    LDA $1D58                       ; $819159  AD 58 1D     Mx
    CMP #$3333                      ; $81915C  C9 33 33     Mx
    BCC L_8191B3                    ; $81915F  90 52        Mx
    LDY #$3E                        ; $819161  A0 3E        Mx
    LDA ($CC),Y                     ; $819163  B1 CC        Mx
    BMI L_8191B3                    ; $819165  30 4C        Mx
L_819167:
    LDA $06F4                       ; $819167  AD F4 06     Mx
    CMP #$0024                      ; $81916A  C9 24 00     Mx
    BNE L_819172                    ; $81916D  D0 03        Mx
    JMP L_8191BB                    ; $81916F  4C BB 91     Mx
L_819172:
    LDA $0B50                       ; $819172  AD 50 0B     Mx
    BNE L_8191A7                    ; $819175  D0 30        Mx
    LDA $0BF9                       ; $819177  AD F9 0B     Mx
    BNE L_8191A7                    ; $81917A  D0 2B        Mx
    LDA $0C25                       ; $81917C  AD 25 0C     Mx
    BNE L_819196                    ; $81917F  D0 15        Mx
    LDA $0BC1                       ; $819181  AD C1 0B     Mx
    CMP #$0001                      ; $819184  C9 01 00     Mx
    BNE L_81918E                    ; $819187  D0 05        Mx
    LDA $0C2B                       ; $819189  AD 2B 0C     Mx
    BMI L_8191A7                    ; $81918C  30 19        Mx
L_81918E:
    LDA $06F4                       ; $81918E  AD F4 06     Mx
    CMP #$0032                      ; $819191  C9 32 00     Mx
    BEQ L_8191A7                    ; $819194  F0 11        Mx
L_819196:
    LDA $1615                       ; $819196  AD 15 16     Mx
    BNE L_8191A7                    ; $819199  D0 0C        Mx
    LDA $0702                       ; $81919B  AD 02 07     Mx
    BNE L_8191A7                    ; $81919E  D0 07        Mx
    LDA #$000A                      ; $8191A0  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $8191A3  22 D5 BB 9A  Mx
L_8191A7:
    LDA #$0002                      ; $8191A7  A9 02 00     Mx
    STA $0BC1                       ; $8191AA  8D C1 0B     Mx
    STZ $0C2B                       ; $8191AD  9C 2B 0C     Mx
    JMP L_8197E3                    ; $8191B0  4C E3 97     Mx
L_8191B3:
    LDA $1D58                       ; $8191B3  AD 58 1D     Mx
    CMP #$3333                      ; $8191B6  C9 33 33     Mx
    BCC L_819167                    ; $8191B9  90 AC        Mx
L_8191BB:
    LDA $0702                       ; $8191BB  AD 02 07     Mx
    BNE L_8191E4                    ; $8191BE  D0 24        Mx
    LDA $0B50                       ; $8191C0  AD 50 0B     Mx
    BNE L_8191E4                    ; $8191C3  D0 1F        Mx
    LDA $0CD3                       ; $8191C5  AD D3 0C     Mx
    BNE L_8191E4                    ; $8191C8  D0 1A        Mx
    LDA $0C19                       ; $8191CA  AD 19 0C     Mx
    BEQ L_8191E4                    ; $8191CD  F0 15        Mx
    LDA $0BF9                       ; $8191CF  AD F9 0B     Mx
    BNE L_8191E4                    ; $8191D2  D0 10        Mx
    LDY #$06                        ; $8191D4  A0 06        Mx
    LDA ($CC),Y                     ; $8191D6  B1 CC        Mx
    CMP #$0006                      ; $8191D8  C9 06 00     Mx
    BCC L_8191E4                    ; $8191DB  90 07        Mx
    LDA #$0010                      ; $8191DD  A9 10 00     Mx
    JSL L_9ABBD5                    ; $8191E0  22 D5 BB 9A  Mx
L_8191E4:
    LDY #$88                        ; $8191E4  A0 88        Mx
    LDA #$000F                      ; $8191E6  A9 0F 00     Mx
    STA ($CC),Y                     ; $8191E9  91 CC        Mx
    LDY #$8A                        ; $8191EB  A0 8A        Mx
    STA ($CC),Y                     ; $8191ED  91 CC        Mx
    LDA #$000F                      ; $8191EF  A9 0F 00     Mx
    STA $0778                       ; $8191F2  8D 78 07     Mx
    LDA #$000F                      ; $8191F5  A9 0F 00     Mx
    STA $077A                       ; $8191F8  8D 7A 07     Mx
    REP #$10                        ; $8191FB  C2 10        Mx
    LDY #$0066                      ; $8191FD  A0 66 00     MX
    LDA ($CC),Y                     ; $819200  B1 CC        MX
    AND #$007F                      ; $819202  29 7F 00     MX
    PHA                             ; $819205  48           MX
    LDA $0C19                       ; $819206  AD 19 0C     MX
    BEQ L_819272                    ; $819209  F0 67        MX
    LDA $0BD9                       ; $81920B  AD D9 0B     MX
    CLC                             ; $81920E  18           MX
    ADC $0BEF                       ; $81920F  6D EF 0B     MX
    LDY #$0054                      ; $819212  A0 54 00     MX
    SEC                             ; $819215  38           MX
    SBC ($CC),Y                     ; $819216  F1 CC        MX
    BPL L_819224                    ; $819218  10 0A        MX
    CMP #$FEF4                      ; $81921A  C9 F4 FE     MX
    BCS L_81922C                    ; $81921D  B0 0D        MX
    LDA #$FEF4                      ; $81921F  A9 F4 FE     MX
    BRA L_81922C                    ; $819222  80 08        MX
L_819224:
    CMP #$010C                      ; $819224  C9 0C 01     MX
    BCC L_81922C                    ; $819227  90 03        MX
    LDA #$010C                      ; $819229  A9 0C 01     MX
L_81922C:
    STA $0BD9                       ; $81922C  8D D9 0B     MX
    LDA $0BDD                       ; $81922F  AD DD 0B     MX
    CLC                             ; $819232  18           MX
    ADC $0BF1                       ; $819233  6D F1 0B     MX
    STA $0BDD                       ; $819236  8D DD 0B     MX
    LDA $0BF3                       ; $819239  AD F3 0B     MX
    CMP #$0310                      ; $81923C  C9 10 03     MX
    BCC L_81924B                    ; $81923F  90 0A        MX
    CMP #$03F0                      ; $819241  C9 F0 03     MX
    BCC L_81924E                    ; $819244  90 08        MX
    LDA #$03F0                      ; $819246  A9 F0 03     MX
    BRA L_81924E                    ; $819249  80 03        MX
L_81924B:
    LDA #$0310                      ; $81924B  A9 10 03     MX
L_81924E:
    STA $0BE1                       ; $81924E  8D E1 0B     MX
    STA $0BF3                       ; $819251  8D F3 0B     MX
    STZ $0C19                       ; $819254  9C 19 0C     MX
    STZ $00CC                       ; $819257  9C CC 00     MX
    STZ $0C2B                       ; $81925A  9C 2B 0C     MX
    STZ $0BEF                       ; $81925D  9C EF 0B     MX
    STZ $0BF1                       ; $819260  9C F1 0B     MX
    STZ $0C11                       ; $819263  9C 11 0C     MX
    LDA #$0002                      ; $819266  A9 02 00     MX
    STA $0BBF                       ; $819269  8D BF 0B     MX
    LDA #$0002                      ; $81926C  A9 02 00     MX
    STA $0BC1                       ; $81926F  8D C1 0B     MX
L_819272:
    PLA                             ; $819272  68           MX
    ASL                             ; $819273  0A           MX
    TAX                             ; $819274  AA           MX
    LDY #$0000                      ; $819275  A0 00 00     MX
    STZ $0BED                       ; $819278  9C ED 0B     MX
    LDA $9AABEB,X                   ; $81927B  BF EB AB 9A  MX
    BPL L_819284                    ; $81927F  10 03        MX
    DEC $0BED                       ; $819281  CE ED 0B     MX
L_819284:
    ASL                             ; $819284  0A           MX
    ROL $0BED                       ; $819285  2E ED 0B     MX
    ASL                             ; $819288  0A           MX
    ROL $0BED                       ; $819289  2E ED 0B     MX
    ASL                             ; $81928C  0A           MX
    ROL $0BED                       ; $81928D  2E ED 0B     MX
    ASL                             ; $819290  0A           MX
    ROL $0BED                       ; $819291  2E ED 0B     MX
    STA $0BEB                       ; $819294  8D EB 0B     MX
    LDY #$0000                      ; $819297  A0 00 00     MX
    STZ $0BE5                       ; $81929A  9C E5 0B     MX
    LDA $9AABAB,X                   ; $81929D  BF AB AB 9A  MX
    BPL L_8192A6                    ; $8192A1  10 03        MX
    DEC $0BE5                       ; $8192A3  CE E5 0B     MX
L_8192A6:
    ASL                             ; $8192A6  0A           MX
    ROL $0BE5                       ; $8192A7  2E E5 0B     MX
    ASL                             ; $8192AA  0A           MX
    ROL $0BE5                       ; $8192AB  2E E5 0B     MX
    ASL                             ; $8192AE  0A           MX
    ROL $0BE5                       ; $8192AF  2E E5 0B     MX
    ASL                             ; $8192B2  0A           MX
    ROL $0BE5                       ; $8192B3  2E E5 0B     MX
    STA $0BE3                       ; $8192B6  8D E3 0B     MX
    LDA #$FFFC                      ; $8192B9  A9 FC FF     MX
    STA $0BE9                       ; $8192BC  8D E9 0B     MX
    LDA #$F700                      ; $8192BF  A9 00 F7     MX
    STA $0BE7                       ; $8192C2  8D E7 0B     MX
    SEP #$10                        ; $8192C5  E2 10        MX
    JMP L_8192EE                    ; $8192C7  4C EE 92     Mx
L_8192CA:
    JMP L_8197DB                    ; $8192CA  4C DB 97     Mx
L_8192CD:
    LDA $0C19                       ; $8192CD  AD 19 0C     Mx
    BEQ L_81930F                    ; $8192D0  F0 3D        Mx
    LDY #$32                        ; $8192D2  A0 32        Mx
    LDA ($CC),Y                     ; $8192D4  B1 CC        Mx
    BEQ L_819303                    ; $8192D6  F0 2B        Mx
    LDY #$08                        ; $8192D8  A0 08        Mx
    LDA ($CC),Y                     ; $8192DA  B1 CC        Mx
    AND #$0004                      ; $8192DC  29 04 00     Mx
    BEQ L_819303                    ; $8192DF  F0 22        Mx
    LDA $0722                       ; $8192E1  AD 22 07     Mx
    BEQ L_819303                    ; $8192E4  F0 1D        Mx
    LDA $1D56                       ; $8192E6  AD 56 1D     Mx
    AND #$0007                      ; $8192E9  29 07 00     Mx
    BNE L_819300                    ; $8192EC  D0 12        Mx
L_8192EE:
    LDA #$0002                      ; $8192EE  A9 02 00     Mx
    STA $0784                       ; $8192F1  8D 84 07     Mx
    STZ $06F6                       ; $8192F4  9C F6 06     Mx
    LDA #$0030                      ; $8192F7  A9 30 00     Mx
    STA $06F4                       ; $8192FA  8D F4 06     Mx
    STA $06F2                       ; $8192FD  8D F2 06     Mx
L_819300:
    JMP L_819035                    ; $819300  4C 35 90     Mx
L_819303:
    LDA $06F4                       ; $819303  AD F4 06     Mx
    CMP #$002C                      ; $819306  C9 2C 00     Mx
    BEQ L_81931A                    ; $819309  F0 0F        Mx
    BRA L_819317                    ; $81930B  80 0A        Mx
L_81930D:
    BRA L_81931A                    ; $81930D  80 0B        Mx
L_81930F:
    LDA $1D56                       ; $81930F  AD 56 1D     Mx
    AND #$0003                      ; $819312  29 03 00     Mx
    BEQ L_81931A                    ; $819315  F0 03        Mx
L_819317:
    JMP L_819A29                    ; $819317  4C 29 9A     Mx
L_81931A:
    LDA $0C19                       ; $81931A  AD 19 0C     Mx
    BEQ L_819322                    ; $81931D  F0 03        Mx
L_81931F:
    JMP L_819396                    ; $81931F  4C 96 93     Mx
L_819322:
    LDA $1607                       ; $819322  AD 07 16     Mx
    BNE L_81931F                    ; $819325  D0 F8        Mx
    LDA $07D6                       ; $819327  AD D6 07     Mx
    AND #$0002                      ; $81932A  29 02 00     Mx
    BNE L_81931F                    ; $81932D  D0 F0        Mx
    LDA $0C2B                       ; $81932F  AD 2B 0C     Mx
    BMI L_819396                    ; $819332  30 62        Mx
    LDA $0758                       ; $819334  AD 58 07     Mx
    CMP #$0046                      ; $819337  C9 46 00     Mx
    BCS L_819396                    ; $81933A  B0 5A        Mx
    LDA $0BC1                       ; $81933C  AD C1 0B     Mx
    CMP #$0001                      ; $81933F  C9 01 00     Mx
    BNE L_819396                    ; $819342  D0 52        Mx
    LDA $0C1F                       ; $819344  AD 1F 0C     Mx
    AND #$00FF                      ; $819347  29 FF 00     Mx
    CMP #$0003                      ; $81934A  C9 03 00     Mx
    BCC L_819393                    ; $81934D  90 44        Mx
    LDA $0BE8                       ; $81934F  AD E8 0B     Mx
    LSR                             ; $819352  4A           Mx
    LSR                             ; $819353  4A           Mx
    LSR                             ; $819354  4A           Mx
    LSR                             ; $819355  4A           Mx
    LSR                             ; $819356  4A           Mx
    LSR                             ; $819357  4A           Mx
    BEQ L_819396                    ; $819358  F0 3C        Mx
    BMI L_819396                    ; $81935A  30 3A        Mx
    LDX $0A96                       ; $81935C  AE 96 0A     Mx
    CPX $06F0                       ; $81935F  EC F0 06     Mx
    BEQ L_819396                    ; $819362  F0 32        Mx
    LDA $07CA                       ; $819364  AD CA 07     Mx
    SEC                             ; $819367  38           Mx
    SBC #$0005                      ; $819368  E9 05 00     Mx
    BMI L_819377                    ; $81936B  30 0A        Mx
    LDA $0BE8                       ; $81936D  AD E8 0B     Mx
    CMP #$0380                      ; $819370  C9 80 03     Mx
    BMI L_819396                    ; $819373  30 21        Mx
    BRA L_81937F                    ; $819375  80 08        Mx
L_819377:
    LDA $0BE8                       ; $819377  AD E8 0B     Mx
    CMP #$0280                      ; $81937A  C9 80 02     Mx
    BMI L_819396                    ; $81937D  30 17        Mx
L_81937F:
    LDA $0006                       ; $81937F  AD 06 00     Mx
    AND #$0004                      ; $819382  29 04 00     Mx
    BNE L_819393                    ; $819385  D0 0C        Mx
    LDX $06F0                       ; $819387  AE F0 06     Mx
    STX $0A98                       ; $81938A  8E 98 0A     Mx
    JSL L_A7EBCB                    ; $81938D  22 CB EB A7  Mx
    BRA L_819396                    ; $819391  80 03        Mx
L_819393:
    JMP L_819A29                    ; $819393  4C 29 9A     Mx
L_819396:
    LDA $06F4                       ; $819396  AD F4 06     Mx
    CMP #$0024                      ; $819399  C9 24 00     Mx
    BEQ L_8193A6                    ; $81939C  F0 08        Mx
    CMP #$0020                      ; $81939E  C9 20 00     Mx
    BEQ L_8193D2                    ; $8193A1  F0 2F        Mx
    JMP L_81945D                    ; $8193A3  4C 5D 94     Mx
L_8193A6:
    LDA #$FFFC                      ; $8193A6  A9 FC FF     Mx
    STA $0BE9                       ; $8193A9  8D E9 0B     Mx
    LDA #$F700                      ; $8193AC  A9 00 F7     Mx
    STA $0BE7                       ; $8193AF  8D E7 0B     Mx
    LDA $0702                       ; $8193B2  AD 02 07     Mx
    BNE L_8193CF                    ; $8193B5  D0 18        Mx
    LDA $0B50                       ; $8193B7  AD 50 0B     Mx
    BNE L_8193CF                    ; $8193BA  D0 13        Mx
    LDA $0BF9                       ; $8193BC  AD F9 0B     Mx
    BNE L_8193CF                    ; $8193BF  D0 0E        Mx
    LDA #$0010                      ; $8193C1  A9 10 00     Mx
    JSL L_9ABBD5                    ; $8193C4  22 D5 BB 9A  Mx
    LDA #$0003                      ; $8193C8  A9 03 00     Mx
    JSL L_BDFDF3                    ; $8193CB  22 F3 FD BD  Mx
L_8193CF:
    JMP L_819420                    ; $8193CF  4C 20 94     Mx
L_8193D2:
    LDA $0C19                       ; $8193D2  AD 19 0C     Mx
    BEQ L_8193DA                    ; $8193D5  F0 03        Mx
    JMP L_819A29                    ; $8193D7  4C 29 9A     Mx
L_8193DA:
    LDA #$FFFD                      ; $8193DA  A9 FD FF     Mx
    STA $0BE9                       ; $8193DD  8D E9 0B     Mx
    LDA #$6600                      ; $8193E0  A9 00 66     Mx
    STA $0BE7                       ; $8193E3  8D E7 0B     Mx
    LDA $0B50                       ; $8193E6  AD 50 0B     Mx
    BNE L_819420                    ; $8193E9  D0 35        Mx
    LDA $0BF9                       ; $8193EB  AD F9 0B     Mx
    BNE L_819420                    ; $8193EE  D0 30        Mx
    LDA $1615                       ; $8193F0  AD 15 16     Mx
    BNE L_819420                    ; $8193F3  D0 2B        Mx
    LDA $0C19                       ; $8193F5  AD 19 0C     Mx
    BNE L_819420                    ; $8193F8  D0 26        Mx
    LDA $0702                       ; $8193FA  AD 02 07     Mx
    BNE L_819420                    ; $8193FD  D0 21        Mx
    LDA $0C25                       ; $8193FF  AD 25 0C     Mx
    BNE L_819419                    ; $819402  D0 15        Mx
    LDA $0BC1                       ; $819404  AD C1 0B     Mx
    CMP #$0001                      ; $819407  C9 01 00     Mx
    BNE L_819411                    ; $81940A  D0 05        Mx
    LDA $0C2B                       ; $81940C  AD 2B 0C     Mx
    BMI L_819420                    ; $81940F  30 0F        Mx
L_819411:
    LDA $06F4                       ; $819411  AD F4 06     Mx
    CMP #$0032                      ; $819414  C9 32 00     Mx
    BEQ L_819420                    ; $819417  F0 07        Mx
L_819419:
    LDA #$000A                      ; $819419  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $81941C  22 D5 BB 9A  Mx
L_819420:
    LDA $0708                       ; $819420  AD 08 07     Mx
    ASL                             ; $819423  0A           Mx
    ASL                             ; $819424  0A           Mx
    TAX                             ; $819425  AA           Mx
    LDA $A7E489,X                   ; $819426  BF 89 E4 A7  Mx
    STA $0BE5                       ; $81942A  8D E5 0B     Mx
    STZ $0BE3                       ; $81942D  9C E3 0B     Mx
    LDA $A7E48B,X                   ; $819430  BF 8B E4 A7  Mx
    STA $0BED                       ; $819434  8D ED 0B     Mx
    STZ $0BEB                       ; $819437  9C EB 0B     Mx
    LDA #$0002                      ; $81943A  A9 02 00     Mx
    STA $0BC1                       ; $81943D  8D C1 0B     Mx
    STZ $0C2B                       ; $819440  9C 2B 0C     Mx
    LDA $0A98                       ; $819443  AD 98 0A     Mx
    BNE L_819454                    ; $819446  D0 0C        Mx
    LDA $06F0                       ; $819448  AD F0 06     Mx
    DEC                             ; $81944B  3A           Mx
    AND #$0003                      ; $81944C  29 03 00     Mx
    ASL                             ; $81944F  0A           Mx
    TAX                             ; $819450  AA           Mx
    INC $1CB9,X                     ; $819451  FE B9 1C     Mx
L_819454:
    LDA #$0019                      ; $819454  A9 19 00     Mx
    STA $077A                       ; $819457  8D 7A 07     Mx
    JMP L_819985                    ; $81945A  4C 85 99     Mx
L_81945D:
    CMP #$002C                      ; $81945D  C9 2C 00     Mx
    BEQ L_819465                    ; $819460  F0 03        Mx
    JMP L_819596                    ; $819462  4C 96 95     Mx
L_819465:
    LDA #$00B9                      ; $819465  A9 B9 00     Mx
    STA $00D0                       ; $819468  8D D0 00     Mx
    LDA $1D57                       ; $81946B  AD 57 1D     Mx
    STA $00BA                       ; $81946E  8D BA 00     Mx
    INC $00D0                       ; $819471  EE D0 00     Mx
    SEP #$20                        ; $819474  E2 20        Mx
    LDA $00D0                       ; $819476  AD D0 00     mx
    STA $4202                       ; $819479  8D 02 42     mx
    LDA $00BA                       ; $81947C  AD BA 00     mx
    STA $4203                       ; $81947F  8D 03 42     mx
    NOP                             ; $819482  EA           mx
    NOP                             ; $819483  EA           mx
    NOP                             ; $819484  EA           mx
    REP #$20                        ; $819485  C2 20        mx
    LDA $4216                       ; $819487  AD 16 42     Mx
    STA $00BA                       ; $81948A  8D BA 00     Mx
    LDA $00BB                       ; $81948D  AD BB 00     Mx
    AND #$00FF                      ; $819490  29 FF 00     Mx
    CMP $07C0                       ; $819493  CD C0 07     Mx
    BCC L_81949B                    ; $819496  90 03        Mx
    JMP L_819A29                    ; $819498  4C 29 9A     Mx
L_81949B:
    LDA #$0014                      ; $81949B  A9 14 00     Mx
    STA $0778                       ; $81949E  8D 78 07     Mx
    LDA $0C19                       ; $8194A1  AD 19 0C     Mx
    BNE L_8194A9                    ; $8194A4  D0 03        Mx
    JMP L_8194D4                    ; $8194A6  4C D4 94     Mx
L_8194A9:
    LDY #$04                        ; $8194A9  A0 04        Mx
    LDA #$0000                      ; $8194AB  A9 00 00     Mx
    STA ($CC),Y                     ; $8194AE  91 CC        Mx
    LDY #$02                        ; $8194B0  A0 02        Mx
    STA ($CC),Y                     ; $8194B2  91 CC        Mx
    LDY #$8A                        ; $8194B4  A0 8A        Mx
    LDA #$0032                      ; $8194B6  A9 32 00     Mx
    STA ($CC),Y                     ; $8194B9  91 CC        Mx
    LDA $06F0                       ; $8194BB  AD F0 06     Mx
    DEC                             ; $8194BE  3A           Mx
    AND #$0003                      ; $8194BF  29 03 00     Mx
    ASL                             ; $8194C2  0A           Mx
    TAX                             ; $8194C3  AA           Mx
    INC $1CB1,X                     ; $8194C4  FE B1 1C     Mx
    LDA $0C3F                       ; $8194C7  AD 3F 0C     Mx
    BNE L_8194D4                    ; $8194CA  D0 08        Mx
    LDA $1D57                       ; $8194CC  AD 57 1D     Mx
    CMP #$2E14                      ; $8194CF  C9 14 2E     Mx
    BCS L_8194F2                    ; $8194D2  B0 1E        Mx
L_8194D4:
    LDA #$000C                      ; $8194D4  A9 0C 00     Mx
    STA $06F4                       ; $8194D7  8D F4 06     Mx
    LDA #$FFFF                      ; $8194DA  A9 FF FF     Mx
    STA $06FA                       ; $8194DD  8D FA 06     Mx
    STZ $06FC                       ; $8194E0  9C FC 06     Mx
    STZ $0742                       ; $8194E3  9C 42 07     Mx
    STZ $06F8                       ; $8194E6  9C F8 06     Mx
    LDA #$FFF8                      ; $8194E9  A9 F8 FF     Mx
    STA $06FE                       ; $8194EC  8D FE 06     Mx
    JMP L_819603                    ; $8194EF  4C 03 96     Mx
L_8194F2:
    LDA #$012C                      ; $8194F2  A9 2C 01     Mx
    STA $0C3F                       ; $8194F5  8D 3F 0C     Mx
    LDA #$0019                      ; $8194F8  A9 19 00     Mx
    STA $077A                       ; $8194FB  8D 7A 07     Mx
    LDA #$001E                      ; $8194FE  A9 1E 00     Mx
    STA $0BF1                       ; $819501  8D F1 0B     Mx
    LDA $0C19                       ; $819504  AD 19 0C     Mx
    BEQ L_81956F                    ; $819507  F0 66        Mx
    LDA $0BD9                       ; $819509  AD D9 0B     Mx
    CLC                             ; $81950C  18           Mx
    ADC $0BEF                       ; $81950D  6D EF 0B     Mx
    LDY #$54                        ; $819510  A0 54        Mx
    SEC                             ; $819512  38           Mx
    SBC ($CC),Y                     ; $819513  F1 CC        Mx
    BPL L_819521                    ; $819515  10 0A        Mx
    CMP #$FEF4                      ; $819517  C9 F4 FE     Mx
    BCS L_819529                    ; $81951A  B0 0D        Mx
    LDA #$FEF4                      ; $81951C  A9 F4 FE     Mx
    BRA L_819529                    ; $81951F  80 08        Mx
L_819521:
    CMP #$010C                      ; $819521  C9 0C 01     Mx
    BCC L_819529                    ; $819524  90 03        Mx
    LDA #$010C                      ; $819526  A9 0C 01     Mx
L_819529:
    STA $0BD9                       ; $819529  8D D9 0B     Mx
    LDA $0BDD                       ; $81952C  AD DD 0B     Mx
    CLC                             ; $81952F  18           Mx
    ADC $0BF1                       ; $819530  6D F1 0B     Mx
    STA $0BDD                       ; $819533  8D DD 0B     Mx
    LDA $0BF3                       ; $819536  AD F3 0B     Mx
    CMP #$0310                      ; $819539  C9 10 03     Mx
    BCC L_819548                    ; $81953C  90 0A        Mx
    CMP #$03F0                      ; $81953E  C9 F0 03     Mx
    BCC L_81954B                    ; $819541  90 08        Mx
    LDA #$03F0                      ; $819543  A9 F0 03     Mx
    BRA L_81954B                    ; $819546  80 03        Mx
L_819548:
    LDA #$0310                      ; $819548  A9 10 03     Mx
L_81954B:
    STA $0BE1                       ; $81954B  8D E1 0B     Mx
    STA $0BF3                       ; $81954E  8D F3 0B     Mx
    STZ $0C19                       ; $819551  9C 19 0C     Mx
    STZ $00CC                       ; $819554  9C CC 00     Mx
    STZ $0C2B                       ; $819557  9C 2B 0C     Mx
    STZ $0BEF                       ; $81955A  9C EF 0B     Mx
    STZ $0BF1                       ; $81955D  9C F1 0B     Mx
    STZ $0C11                       ; $819560  9C 11 0C     Mx
    LDA #$0002                      ; $819563  A9 02 00     Mx
    STA $0BBF                       ; $819566  8D BF 0B     Mx
    LDA #$0002                      ; $819569  A9 02 00     Mx
    STA $0BC1                       ; $81956C  8D C1 0B     Mx
L_81956F:
    LDA $0006                       ; $81956F  AD 06 00     Mx
    AND #$0007                      ; $819572  29 07 00     Mx
    ASL                             ; $819575  0A           Mx
    TAX                             ; $819576  AA           Mx
    LDA $A7E479,X                   ; $819577  BF 79 E4 A7  Mx
    STA $0BE5                       ; $81957B  8D E5 0B     Mx
    STZ $0BE3                       ; $81957E  9C E3 0B     Mx
    LDA $1D56                       ; $819581  AD 56 1D     Mx
    AND #$0007                      ; $819584  29 07 00     Mx
    ASL                             ; $819587  0A           Mx
    TAX                             ; $819588  AA           Mx
    LDA $A7E479,X                   ; $819589  BF 79 E4 A7  Mx
    STA $0BED                       ; $81958D  8D ED 0B     Mx
    STZ $0BEB                       ; $819590  9C EB 0B     Mx
    JMP L_819985                    ; $819593  4C 85 99     Mx
L_819596:
    LDA $06F4                       ; $819596  AD F4 06     Mx
    CMP #$0002                      ; $819599  C9 02 00     Mx
    BEQ L_8195A8                    ; $81959C  F0 0A        Mx
    CMP #$0000                      ; $81959E  C9 00 00     Mx
    BEQ L_8195A8                    ; $8195A1  F0 05        Mx
    CMP #$0014                      ; $8195A3  C9 14 00     Mx
    BNE L_819603                    ; $8195A6  D0 5B        Mx
L_8195A8:
    LDA $0722                       ; $8195A8  AD 22 07     Mx
    BNE L_819603                    ; $8195AB  D0 56        Mx
    LDA $0BDD                       ; $8195AD  AD DD 0B     Mx
    BNE L_819603                    ; $8195B0  D0 51        Mx
    LDA $0BE9                       ; $8195B2  AD E9 0B     Mx
    ORA $0BE7                       ; $8195B5  0D E7 0B     Mx
    BNE L_819603                    ; $8195B8  D0 49        Mx
    LDA $072E                       ; $8195BA  AD 2E 07     Mx
    ORA $072C                       ; $8195BD  0D 2C 07     Mx
    BNE L_819603                    ; $8195C0  D0 41        Mx
    LDA #$0032                      ; $8195C2  A9 32 00     Mx
    STA $06F4                       ; $8195C5  8D F4 06     Mx
    LDA #$FFFF                      ; $8195C8  A9 FF FF     Mx
    STA $06FA                       ; $8195CB  8D FA 06     Mx
    STZ $06FC                       ; $8195CE  9C FC 06     Mx
    STZ $0742                       ; $8195D1  9C 42 07     Mx
    STZ $06F8                       ; $8195D4  9C F8 06     Mx
    LDA #$FFF8                      ; $8195D7  A9 F8 FF     Mx
    STA $06FE                       ; $8195DA  8D FE 06     Mx
    STZ $0BE5                       ; $8195DD  9C E5 0B     Mx
    STZ $0BE3                       ; $8195E0  9C E3 0B     Mx
    STZ $0BEB                       ; $8195E3  9C EB 0B     Mx
    STZ $0BED                       ; $8195E6  9C ED 0B     Mx
    STZ $072A                       ; $8195E9  9C 2A 07     Mx
    STZ $0728                       ; $8195EC  9C 28 07     Mx
    STZ $0732                       ; $8195EF  9C 32 07     Mx
    STZ $0730                       ; $8195F2  9C 30 07     Mx
L_8195F5:
    JMP L_819A29                    ; $8195F5  4C 29 9A     Mx
L_8195F8:
    LDA $06FA                       ; $8195F8  AD FA 06     Mx
    CMP #$0002                      ; $8195FB  C9 02 00     Mx
    BNE L_8195F5                    ; $8195FE  D0 F5        Mx
    JMP L_8197DB                    ; $819600  4C DB 97     Mx
L_819603:
    LDA $0C25                       ; $819603  AD 25 0C     Mx
    BNE L_81960B                    ; $819606  D0 03        Mx
    JMP L_8197B5                    ; $819608  4C B5 97     Mx
L_81960B:
    CMP #$06F0                      ; $81960B  C9 F0 06     Mx
    BNE L_819613                    ; $81960E  D0 03        Mx
    JMP L_8197B5                    ; $819610  4C B5 97     Mx
L_819613:
    LDA #$00A0                      ; $819613  A9 A0 00     Mx
    STA $00D0                       ; $819616  8D D0 00     Mx
    PHP                             ; $819619  08           Mx
    REP #$30                        ; $81961A  C2 30        Mx
    LDA $4212                       ; $81961C  AD 12 42     MX
    SEP #$20                        ; $81961F  E2 20        MX
    CLC                             ; $819621  18           mX
    ADC $1D57                       ; $819622  6D 57 1D     mX
    STA $1D57                       ; $819625  8D 57 1D     mX
    REP #$20                        ; $819628  C2 20        mX
    LDA $4212                       ; $81962A  AD 12 42     MX
    TAX                             ; $81962D  AA           MX
    SEP #$20                        ; $81962E  E2 20        MX
    EOR $1D58                       ; $819630  4D 58 1D     mX
    STA $1D58                       ; $819633  8D 58 1D     mX
    TXA                             ; $819636  8A           mX
    ADC $1D59                       ; $819637  6D 59 1D     mX
    REP #$20                        ; $81963A  C2 20        mX
    LDA $1D56                       ; $81963C  AD 56 1D     MX
    INC                             ; $81963F  1A           MX
    ROR                             ; $819640  6A           MX
    LSR $1D58                       ; $819641  4E 58 1D     MX
    EOR #$2B41                      ; $819644  49 41 2B     MX
    SBC #$000F                      ; $819647  E9 0F 00     MX
    STA $1D56                       ; $81964A  8D 56 1D     MX
    LDA $1D58                       ; $81964D  AD 58 1D     MX
    EOR #$1D87                      ; $819650  49 87 1D     MX
    STA $1D58                       ; $819653  8D 58 1D     MX
    LDA $1D52                       ; $819656  AD 52 1D     MX
    EOR $1D56                       ; $819659  4D 56 1D     MX
    STA $0002                       ; $81965C  8D 02 00     MX
    INC                             ; $81965F  1A           MX
    STA $1D52                       ; $819660  8D 52 1D     MX
    LDA $1D54                       ; $819663  AD 54 1D     MX
    EOR $1D58                       ; $819666  4D 58 1D     MX
    ADC #$0000                      ; $819669  69 00 00     MX
    STA $1D52                       ; $81966C  8D 52 1D     MX
    STA $0004                       ; $81966F  8D 04 00     MX
    PLP                             ; $819672  28           MX
    INC $00D0                       ; $819673  EE D0 00     Mx
    LDA $1D56                       ; $819676  AD 56 1D     Mx
    STA $00BA                       ; $819679  8D BA 00     Mx
    SEP #$20                        ; $81967C  E2 20        Mx
    LDA $00D0                       ; $81967E  AD D0 00     mx
    STA $4202                       ; $819681  8D 02 42     mx
    LDA $00BA                       ; $819684  AD BA 00     mx
    STA $4203                       ; $819687  8D 03 42     mx
    NOP                             ; $81968A  EA           mx
    NOP                             ; $81968B  EA           mx
    NOP                             ; $81968C  EA           mx
    REP #$20                        ; $81968D  C2 20        mx
    LDA $4216                       ; $81968F  AD 16 42     Mx
    STA $00BA                       ; $819692  8D BA 00     Mx
    LDA $00BB                       ; $819695  AD BB 00     Mx
    AND #$00FF                      ; $819698  29 FF 00     Mx
    STA $00D0                       ; $81969B  8D D0 00     Mx
    LDA $07D6                       ; $81969E  AD D6 07     Mx
    AND #$0001                      ; $8196A1  29 01 00     Mx
    BEQ L_8196A9                    ; $8196A4  F0 03        Mx
    STZ $00D0                       ; $8196A6  9C D0 00     Mx
L_8196A9:
    STZ $00B7                       ; $8196A9  9C B7 00     Mx
    LDA $07CA                       ; $8196AC  AD CA 07     Mx
    BMI L_8196C1                    ; $8196AF  30 10        Mx
    CMP #$0010                      ; $8196B1  C9 10 00     Mx
    BCC L_8196B9                    ; $8196B4  90 03        Mx
    LDA #$000F                      ; $8196B6  A9 0F 00     Mx
L_8196B9:
    ASL                             ; $8196B9  0A           Mx
    TAX                             ; $8196BA  AA           Mx
    LDA $97BB,X                     ; $8196BB  BD BB 97     Mx
    STA $00B7                       ; $8196BE  8D B7 00     Mx
L_8196C1:
    LDA $0C27                       ; $8196C1  AD 27 0C     Mx
    SEC                             ; $8196C4  38           Mx
    SBC #$0003                      ; $8196C5  E9 03 00     Mx
    BPL L_8196D1                    ; $8196C8  10 07        Mx
    EOR #$FFFF                      ; $8196CA  49 FF FF     Mx
    CLC                             ; $8196CD  18           Mx
    ADC #$0001                      ; $8196CE  69 01 00     Mx
L_8196D1:
    LSR                             ; $8196D1  4A           Mx
    CLC                             ; $8196D2  18           Mx
    ADC $00B7                       ; $8196D3  6D B7 00     Mx
    INC                             ; $8196D6  1A           Mx
    CMP $00D0                       ; $8196D7  CD D0 00     Mx
    BCS L_8196DF                    ; $8196DA  B0 03        Mx
    JMP L_8197B8                    ; $8196DC  4C B8 97     Mx
L_8196DF:
    LDA $1D56                       ; $8196DF  AD 56 1D     Mx
    CMP #$CCCC                      ; $8196E2  C9 CC CC     Mx
    BCC L_8196EA                    ; $8196E5  90 03        Mx
    JMP L_8197B8                    ; $8196E7  4C B8 97     Mx
L_8196EA:
    JSR L_819A00                    ; $8196EA  20 00 9A     Mx
    LDA $06F0                       ; $8196ED  AD F0 06     Mx
    DEC                             ; $8196F0  3A           Mx
    AND #$0003                      ; $8196F1  29 03 00     Mx
    ASL                             ; $8196F4  0A           Mx
    TAX                             ; $8196F5  AA           Mx
    INC $1CB1,X                     ; $8196F6  FE B1 1C     Mx
    LDA $0C25                       ; $8196F9  AD 25 0C     Mx
    BNE L_819722                    ; $8196FC  D0 24        Mx
    LDA $0BC1                       ; $8196FE  AD C1 0B     Mx
    CMP #$0001                      ; $819701  C9 01 00     Mx
    BNE L_81970B                    ; $819704  D0 05        Mx
    LDA $0C2B                       ; $819706  AD 2B 0C     Mx
    BMI L_819738                    ; $819709  30 2D        Mx
L_81970B:
    LDA $06F4                       ; $81970B  AD F4 06     Mx
    CMP #$0032                      ; $81970E  C9 32 00     Mx
    BEQ L_819738                    ; $819711  F0 25        Mx
    LDA $0B50                       ; $819713  AD 50 0B     Mx
    BNE L_819738                    ; $819716  D0 20        Mx
    LDA $0702                       ; $819718  AD 02 07     Mx
    BNE L_819738                    ; $81971B  D0 1B        Mx
    LDA $0BF9                       ; $81971D  AD F9 0B     Mx
    BNE L_819738                    ; $819720  D0 16        Mx
L_819722:
    LDA $1615                       ; $819722  AD 15 16     Mx
    BNE L_819738                    ; $819725  D0 11        Mx
    LDA $0C25                       ; $819727  AD 25 0C     Mx
    BNE L_819731                    ; $81972A  D0 05        Mx
    LDA $0C2B                       ; $81972C  AD 2B 0C     Mx
    BMI L_819738                    ; $81972F  30 07        Mx
L_819731:
    LDA #$000A                      ; $819731  A9 0A 00     Mx
    JSL L_9ABBD5                    ; $819734  22 D5 BB 9A  Mx
L_819738:
    LDA $0003                       ; $819738  AD 03 00     Mx
    CMP #$051E                      ; $81973B  C9 1E 05     Mx
    BCS L_8197AA                    ; $81973E  B0 6A        Mx
    JMP L_8197B8                    ; $819740  4C B8 97     Mx
L_819743:
    REP #$10                        ; $819743  C2 10        Mx
    LDA $075E                       ; $819745  AD 5E 07     MX
    AND #$007F                      ; $819748  29 7F 00     MX
    ASL                             ; $81974B  0A           MX
    TAX                             ; $81974C  AA           MX
    LDY #$0000                      ; $81974D  A0 00 00     MX
    STZ $0BE5                       ; $819750  9C E5 0B     MX
    LDA $9AABEB,X                   ; $819753  BF EB AB 9A  MX
    BPL L_81975C                    ; $819757  10 03        MX
    DEC $0BE5                       ; $819759  CE E5 0B     MX
L_81975C:
    ASL                             ; $81975C  0A           MX
    ROL $0BE5                       ; $81975D  2E E5 0B     MX
    ASL                             ; $819760  0A           MX
    ROL $0BE5                       ; $819761  2E E5 0B     MX
    ASL                             ; $819764  0A           MX
    ROL $0BE5                       ; $819765  2E E5 0B     MX
    ASL                             ; $819768  0A           MX
    ROL $0BE5                       ; $819769  2E E5 0B     MX
    ASL                             ; $81976C  0A           MX
    ROL $0BE5                       ; $81976D  2E E5 0B     MX
    STA $0BE3                       ; $819770  8D E3 0B     MX
    LDY #$0000                      ; $819773  A0 00 00     MX
    STZ $0BED                       ; $819776  9C ED 0B     MX
    LDA $9AABAB,X                   ; $819779  BF AB AB 9A  MX
    BPL L_819782                    ; $81977D  10 03        MX
    DEC $0BED                       ; $81977F  CE ED 0B     MX
L_819782:
    ASL                             ; $819782  0A           MX
    ROL $0BED                       ; $819783  2E ED 0B     MX
    ASL                             ; $819786  0A           MX
    ROL $0BED                       ; $819787  2E ED 0B     MX
    ASL                             ; $81978A  0A           MX
    ROL $0BED                       ; $81978B  2E ED 0B     MX
    ASL                             ; $81978E  0A           MX
    ROL $0BED                       ; $81978F  2E ED 0B     MX
    ASL                             ; $819792  0A           MX
    ROL $0BED                       ; $819793  2E ED 0B     MX
    STA $0BEB                       ; $819796  8D EB 0B     MX
    LDA #$FFFC                      ; $819799  A9 FC FF     MX
    STA $0BE9                       ; $81979C  8D E9 0B     MX
    LDA #$6300                      ; $81979F  A9 00 63     MX
    STA $0BE7                       ; $8197A2  8D E7 0B     MX
    SEP #$10                        ; $8197A5  E2 10        MX
    JMP L_8197B8                    ; $8197A7  4C B8 97     Mx
L_8197AA:
    LDA $06F4                       ; $8197AA  AD F4 06     Mx
    CMP #$0032                      ; $8197AD  C9 32 00     Mx
    BNE L_8197B5                    ; $8197B0  D0 03        Mx
    JSR L_81D428                    ; $8197B2  20 28 D4     Mx
L_8197B5:
    JMP L_8197DB                    ; $8197B5  4C DB 97     Mx
L_8197B8:
    JMP L_819A29                    ; $8197B8  4C 29 9A     Mx
    db $00,$00,$04,$00,$07,$00,$0A,$00,$0C,$00,$0F,$00,$13,$00,$16,$00 ; $8197BB
    db $19,$00,$1E,$00,$24,$00,$28,$00,$2A,$00,$2D,$00,$2F,$00,$32,$00 ; $8197CB
L_8197DB:
    LDA $0C19                       ; $8197DB  AD 19 0C     Mx
    BEQ L_8197E3                    ; $8197DE  F0 03        Mx
    JMP L_819A29                    ; $8197E0  4C 29 9A     Mx
L_8197E3:
    STZ $0C25                       ; $8197E3  9C 25 0C     Mx
    STZ $0C27                       ; $8197E6  9C 27 0C     Mx
    STZ $0BFF                       ; $8197E9  9C FF 0B     Mx
    REP #$10                        ; $8197EC  C2 10        Mx
    LDA $06F0                       ; $8197EE  AD F0 06     MX
    AND #$FF00                      ; $8197F1  29 00 FF     MX
    BEQ L_8197F9                    ; $8197F4  F0 03        MX
    JMP L_8198CB                    ; $8197F6  4C CB 98     MX
L_8197F9:
    LDA $1CE9                       ; $8197F9  AD E9 1C     MX
    BNE L_819801                    ; $8197FC  D0 03        MX
L_8197FE:
    JMP L_8198CB                    ; $8197FE  4C CB 98     MX
L_819801:
    LDA $07D8                       ; $819801  AD D8 07     MX
    AND #$FF00                      ; $819804  29 00 FF     MX
    BEQ L_8197FE                    ; $819807  F0 F5        MX
    STA $00A4                       ; $819809  8D A4 00     MX
    LDA $06F0                       ; $81980C  AD F0 06     MX
    AND #$00FF                      ; $81980F  29 FF 00     MX
    ORA $00A4                       ; $819812  0D A4 00     MX
    STA $06F0                       ; $819815  8D F0 06     MX
    LDA $07D8                       ; $819818  AD D8 07     MX
    AND #$00FF                      ; $81981B  29 FF 00     MX
    STA $07D8                       ; $81981E  8D D8 07     MX
    STZ $0892                       ; $819821  9C 92 08     MX
    STZ $0894                       ; $819824  9C 94 08     MX
    LDA $085E                       ; $819827  AD 5E 08     MX
    STA $0776                       ; $81982A  8D 76 07     MX
    LDA $085A                       ; $81982D  AD 5A 08     MX
    STA $0772                       ; $819830  8D 72 07     MX
    LDA $07D2                       ; $819833  AD D2 07     MX
    LDX $08BA                       ; $819836  AE BA 08     MX
    STA $08BA                       ; $819839  8D BA 08     MX
    STX $07D2                       ; $81983C  8E D2 07     MX
    LDA $07D0                       ; $81983F  AD D0 07     MX
    LDX $08B8                       ; $819842  AE B8 08     MX
    STA $08B8                       ; $819845  8D B8 08     MX
    STX $07D0                       ; $819848  8E D0 07     MX
    LDA $07D4                       ; $81984B  AD D4 07     MX
    LDX $08BC                       ; $81984E  AE BC 08     MX
    STA $08BC                       ; $819851  8D BC 08     MX
    STX $07D4                       ; $819854  8E D4 07     MX
    LDA $07D6                       ; $819857  AD D6 07     MX
    LDX $08BE                       ; $81985A  AE BE 08     MX
    STA $08BE                       ; $81985D  8D BE 08     MX
    STX $07D6                       ; $819860  8E D6 07     MX
    LDA $1C5D                       ; $819863  AD 5D 1C     MX
    CMP #$0002                      ; $819866  C9 02 00     MX
    BEQ L_8198CB                    ; $819869  F0 60        MX
    LDA $0B0A                       ; $81986B  AD 0A 0B     MX
    LDX $0B1A                       ; $81986E  AE 1A 0B     MX
    STA $0B1A                       ; $819871  8D 1A 0B     MX
    STX $0B0A                       ; $819874  8E 0A 0B     MX
    LDA $0B0C                       ; $819877  AD 0C 0B     MX
    LDX $0B1C                       ; $81987A  AE 1C 0B     MX
    STA $0B1C                       ; $81987D  8D 1C 0B     MX
    STX $0B0C                       ; $819880  8E 0C 0B     MX
    LDA $0B0E                       ; $819883  AD 0E 0B     MX
    LDX $0B1E                       ; $819886  AE 1E 0B     MX
    STA $0B1E                       ; $819889  8D 1E 0B     MX
    STX $0B0E                       ; $81988C  8E 0E 0B     MX
    LDA $0B10                       ; $81988F  AD 10 0B     MX
    LDX $0B20                       ; $819892  AE 20 0B     MX
    STA $0B20                       ; $819895  8D 20 0B     MX
    STX $0B10                       ; $819898  8E 10 0B     MX
    LDA $0B12                       ; $81989B  AD 12 0B     MX
    LDX $0B22                       ; $81989E  AE 22 0B     MX
    STA $0B22                       ; $8198A1  8D 22 0B     MX
    STX $0B12                       ; $8198A4  8E 12 0B     MX
    LDA $0B14                       ; $8198A7  AD 14 0B     MX
    LDX $0B24                       ; $8198AA  AE 24 0B     MX
    STA $0B24                       ; $8198AD  8D 24 0B     MX
    STX $0B14                       ; $8198B0  8E 14 0B     MX
    LDA $0B16                       ; $8198B3  AD 16 0B     MX
    LDX $0B26                       ; $8198B6  AE 26 0B     MX
    STA $0B26                       ; $8198B9  8D 26 0B     MX
    STX $0B16                       ; $8198BC  8E 16 0B     MX
    LDA $0B18                       ; $8198BF  AD 18 0B     MX
    LDX $0B28                       ; $8198C2  AE 28 0B     MX
    STA $0B28                       ; $8198C5  8D 28 0B     MX
    STX $0B18                       ; $8198C8  8E 18 0B     MX
L_8198CB:
    LDA $06F0                       ; $8198CB  AD F0 06     MX
    STA $0C19                       ; $8198CE  8D 19 0C     MX
    LDA #$06F0                      ; $8198D1  A9 F0 06     MX
    STA $00CC                       ; $8198D4  8D CC 00     MX
    LDA #$0032                      ; $8198D7  A9 32 00     MX
    STA $0788                       ; $8198DA  8D 88 07     MX
    LDX $0700                       ; $8198DD  AE 00 07     MX
    LDA #$2500                      ; $8198E0  A9 00 25     MX
    STA $00D1                       ; $8198E3  8D D1 00     MX
    LDA $A58000,X                   ; $8198E6  BF 00 80 A5  MX
    CLC                             ; $8198EA  18           MX
    ADC $06FE                       ; $8198EB  6D FE 06     MX
    STA $00D0                       ; $8198EE  8D D0 00     MX
    LDA #$0020                      ; $8198F1  A9 20 00     MX
    STA $0BEF                       ; $8198F4  8D EF 0B     MX
    LDA $0710                       ; $8198F7  AD 10 07     MX
    STA $0BD9                       ; $8198FA  8D D9 0B     MX
    LDA $06F4                       ; $8198FD  AD F4 06     MX
    CMP #$0022                      ; $819900  C9 22 00     MX
    BNE L_81991A                    ; $819903  D0 15        MX
    LDA $07BA                       ; $819905  AD BA 07     MX
    BEQ L_819912                    ; $819908  F0 08        MX
    LDA #$002D                      ; $81990A  A9 2D 00     MX
    STA $0BF1                       ; $81990D  8D F1 0B     MX
    BRA L_819920                    ; $819910  80 0E        MX
L_819912:
    LDA #$0041                      ; $819912  A9 41 00     MX
    STA $0BF1                       ; $819915  8D F1 0B     MX
    BRA L_819920                    ; $819918  80 06        MX
L_81991A:
    LDA #$001E                      ; $81991A  A9 1E 00     MX
    STA $0BF1                       ; $81991D  8D F1 0B     MX
L_819920:
    LDA $0714                       ; $819920  AD 14 07     MX
    STA $0BDD                       ; $819923  8D DD 0B     MX
    LDY #$0004                      ; $819926  A0 04 00     MX
    LDA [$D0],Y                     ; $819929  B7 D0        MX
    STA $0BF5                       ; $81992B  8D F5 0B     MX
    CLC                             ; $81992E  18           MX
    ADC $0718                       ; $81992F  6D 18 07     MX
    STA $0BF3                       ; $819932  8D F3 0B     MX
    STA $0BE1                       ; $819935  8D E1 0B     MX
    STZ $0780                       ; $819938  9C 80 07     MX
    STZ $0782                       ; $81993B  9C 82 07     MX
    STZ $0C11                       ; $81993E  9C 11 0C     MX
    STZ $07AC                       ; $819941  9C AC 07     MX
    STZ $076C                       ; $819944  9C 6C 07     MX
    LDA #$000A                      ; $819947  A9 0A 00     MX
    STA $0788                       ; $81994A  8D 88 07     MX
    SEP #$10                        ; $81994D  E2 10        MX
    LDA #$0004                      ; $81994F  A9 04 00     Mx
    STA $0BBF                       ; $819952  8D BF 0B     Mx
    LDA $0722                       ; $819955  AD 22 07     Mx
    BNE L_819985                    ; $819958  D0 2B        Mx
    STZ $0BC1                       ; $81995A  9C C1 0B     Mx
    LDA $06F4                       ; $81995D  AD F4 06     Mx
    CMP #$0032                      ; $819960  C9 32 00     Mx
    BEQ L_819985                    ; $819963  F0 20        Mx
    CMP #$002E                      ; $819965  C9 2E 00     Mx
    BEQ L_819985                    ; $819968  F0 1B        Mx
    LDA #$000C                      ; $81996A  A9 0C 00     Mx
    STA $06F4                       ; $81996D  8D F4 06     Mx
    LDA #$FFFF                      ; $819970  A9 FF FF     Mx
    STA $06FA                       ; $819973  8D FA 06     Mx
    STZ $06FC                       ; $819976  9C FC 06     Mx
    STZ $0742                       ; $819979  9C 42 07     Mx
    STZ $06F8                       ; $81997C  9C F8 06     Mx
    LDA #$FFF8                      ; $81997F  A9 F8 FF     Mx
    STA $06FE                       ; $819982  8D FE 06     Mx
L_819985:
    LDA #$0087                      ; $819985  A9 87 00     Mx
    STA $07B2                       ; $819988  8D B2 07     Mx
    LDA #$003C                      ; $81998B  A9 3C 00     Mx
    STA $06F6                       ; $81998E  8D F6 06     Mx
    LDA $06F4                       ; $819991  AD F4 06     Mx
    CMP #$0022                      ; $819994  C9 22 00     Mx
    BNE L_8199E9                    ; $819997  D0 50        Mx
    LDA $0BC1                       ; $819999  AD C1 0B     Mx
    CMP #$0001                      ; $81999C  C9 01 00     Mx
    BNE L_8199E9                    ; $81999F  D0 48        Mx
    LDA $0C2B                       ; $8199A1  AD 2B 0C     Mx
    BPL L_8199E9                    ; $8199A4  10 43        Mx
    CMP #$FF4C                      ; $8199A6  C9 4C FF     Mx
    BCC L_8199E9                    ; $8199A9  90 3E        Mx
    LDA $0A98                       ; $8199AB  AD 98 0A     Mx
    BNE L_8199BC                    ; $8199AE  D0 0C        Mx
    LDA $06F0                       ; $8199B0  AD F0 06     Mx
    DEC                             ; $8199B3  3A           Mx
    AND #$0003                      ; $8199B4  29 03 00     Mx
    ASL                             ; $8199B7  0A           Mx
    TAX                             ; $8199B8  AA           Mx
    INC $1CC1,X                     ; $8199B9  FE C1 1C     Mx
L_8199BC:
    LDA $0B50                       ; $8199BC  AD 50 0B     Mx
    BNE L_8199E9                    ; $8199BF  D0 28        Mx
    LDA $0BF9                       ; $8199C1  AD F9 0B     Mx
    BNE L_8199E9                    ; $8199C4  D0 23        Mx
    LDA $0702                       ; $8199C6  AD 02 07     Mx
    BNE L_8199E9                    ; $8199C9  D0 1E        Mx
    LDA $0C2B                       ; $8199CB  AD 2B 0C     Mx
    BPL L_8199E9                    ; $8199CE  10 19        Mx
    LDA $0B52                       ; $8199D0  AD 52 0B     Mx
    CMP #$003A                      ; $8199D3  C9 3A 00     Mx
    BEQ L_8199E9                    ; $8199D6  F0 11        Mx
    LDA $1615                       ; $8199D8  AD 15 16     Mx
    BNE L_8199E9                    ; $8199DB  D0 0C        Mx
    LDA $0702                       ; $8199DD  AD 02 07     Mx
    BNE L_8199E9                    ; $8199E0  D0 07        Mx
    LDA #$0009                      ; $8199E2  A9 09 00     Mx
    JSL L_9ABBD5                    ; $8199E5  22 D5 BB 9A  Mx
L_8199E9:
    STZ $0C2B                       ; $8199E9  9C 2B 0C     Mx
    LDA $077E                       ; $8199EC  AD 7E 07     Mx
    BNE L_819A29                    ; $8199EF  D0 38        Mx
    LDX $00AA                       ; $8199F1  AE AA 00     Mx
    LDA $A7E4B9,X                   ; $8199F4  BF B9 E4 A7  Mx
    BEQ L_819A29                    ; $8199F8  F0 2F        Mx
    JSR L_819A00                    ; $8199FA  20 00 9A     Mx
    JMP L_819A29                    ; $8199FD  4C 29 9A     Mx
L_819A00:
    LDA $0C3D                       ; $819A00  AD 3D 0C     Mx
    BNE L_819A28                    ; $819A03  D0 23        Mx
    LDA $0C1F                       ; $819A05  AD 1F 0C     Mx
    AND #$00FF                      ; $819A08  29 FF 00     Mx
    CMP #$0003                      ; $819A0B  C9 03 00     Mx
    BCC L_819A28                    ; $819A0E  90 18        Mx
    LDA #$0014                      ; $819A10  A9 14 00     Mx
    STA $0C3D                       ; $819A13  8D 3D 0C     Mx
    LDA $1611                       ; $819A16  AD 11 16     Mx
    BNE L_819A28                    ; $819A19  D0 0D        Mx
    LDA #$0011                      ; $819A1B  A9 11 00     Mx
    JSL L_BDFDF3                    ; $819A1E  22 F3 FD BD  Mx
    LDA #$0064                      ; $819A22  A9 64 00     Mx
    STA $1611                       ; $819A25  8D 11 16     Mx
L_819A28:
    RTS                             ; $819A28  60           Mx
L_819A29:
    LDA $07B4                       ; $819A29  AD B4 07     Mx
    BNE L_819A53                    ; $819A2C  D0 25        Mx
    LDA $0702                       ; $819A2E  AD 02 07     Mx
    BNE L_819A53                    ; $819A31  D0 20        Mx
    LDA $07A4                       ; $819A33  AD A4 07     Mx
    BNE L_819A53                    ; $819A36  D0 1B        Mx
    LDA $06F4                       ; $819A38  AD F4 06     Mx
    CMP #$0020                      ; $819A3B  C9 20 00     Mx
    BCC L_819A45                    ; $819A3E  90 05        Mx
    CMP #$0025                      ; $819A40  C9 25 00     Mx
    BCC L_819A53                    ; $819A43  90 0E        Mx
L_819A45:
    LDA $0728                       ; $819A45  AD 28 07     Mx
    ORA $0730                       ; $819A48  0D 30 07     Mx
    ORA $0732                       ; $819A4B  0D 32 07     Mx
    ORA $072A                       ; $819A4E  0D 2A 07     Mx
    BNE L_819A56                    ; $819A51  D0 03        Mx
L_819A53:
    JMP L_819C55                    ; $819A53  4C 55 9C     Mx
L_819A56:
    LDA $0722                       ; $819A56  AD 22 07     Mx
    BNE L_819A53                    ; $819A59  D0 F8        Mx
    LDA $0784                       ; $819A5B  AD 84 07     Mx
    BNE L_819A53                    ; $819A5E  D0 F3        Mx
    LDA $06F8                       ; $819A60  AD F8 06     Mx
    BNE L_819A53                    ; $819A63  D0 EE        Mx
    LDA $08F2                       ; $819A65  AD F2 08     Mx
    BNE L_819A8E                    ; $819A68  D0 24        Mx
    LDA $0954                       ; $819A6A  AD 54 09     Mx
    BNE L_819A8E                    ; $819A6D  D0 1F        Mx
    LDA $0768                       ; $819A6F  AD 68 07     Mx
    CMP #$0025                      ; $819A72  C9 25 00     Mx
    BCS L_819A8E                    ; $819A75  B0 17        Mx
    CMP #$000A                      ; $819A77  C9 0A 00     Mx
    BCC L_819A8E                    ; $819A7A  90 12        Mx
    LDA $0746                       ; $819A7C  AD 46 07     Mx
    SEC                             ; $819A7F  38           Mx
    SBC $0918                       ; $819A80  ED 18 09     Mx
    BPL L_819A8E                    ; $819A83  10 09        Mx
    LDA $0748                       ; $819A85  AD 48 07     Mx
    SEC                             ; $819A88  38           Mx
    SBC $0916                       ; $819A89  ED 16 09     Mx
    BPL L_819A91                    ; $819A8C  10 03        Mx
L_819A8E:
    JMP L_819B5D                    ; $819A8E  4C 5D 9B     Mx
L_819A91:
    LDA $0718                       ; $819A91  AD 18 07     Mx
    SEC                             ; $819A94  38           Mx
    SBC $08E8                       ; $819A95  ED E8 08     Mx
    BCC L_819AA2                    ; $819A98  90 08        Mx
    CMP #$000C                      ; $819A9A  C9 0C 00     Mx
    BCC L_819AAA                    ; $819A9D  90 0B        Mx
    JMP L_819B5D                    ; $819A9F  4C 5D 9B     Mx
L_819AA2:
    CMP #$FFF4                      ; $819AA2  C9 F4 FF     Mx
    BCS L_819AAA                    ; $819AA5  B0 03        Mx
    JMP L_819B5D                    ; $819AA7  4C 5D 9B     Mx
L_819AAA:
    LDA $071E                       ; $819AAA  AD 1E 07     Mx
    SEC                             ; $819AAD  38           Mx
    SBC $08EE                       ; $819AAE  ED EE 08     Mx
    CMP #$000C                      ; $819AB1  C9 0C 00     Mx
    BPL L_819B1C                    ; $819AB4  10 66        Mx
    CMP #$FFF4                      ; $819AB6  C9 F4 FF     Mx
    BMI L_819B1C                    ; $819AB9  30 61        Mx
    STZ $0730                       ; $819ABB  9C 30 07     Mx
    STZ $0732                       ; $819ABE  9C 32 07     Mx
    LDA $071E                       ; $819AC1  AD 1E 07     Mx
    SEC                             ; $819AC4  38           Mx
    SBC $08EE                       ; $819AC5  ED EE 08     Mx
    BMI L_819AF3                    ; $819AC8  30 29        Mx
    LDA $0728                       ; $819ACA  AD 28 07     Mx
    CLC                             ; $819ACD  18           Mx
    ADC #$C000                      ; $819ACE  69 00 C0     Mx
    STA $0728                       ; $819AD1  8D 28 07     Mx
    LDA $072A                       ; $819AD4  AD 2A 07     Mx
    ADC #$0000                      ; $819AD7  69 00 00     Mx
    STA $072A                       ; $819ADA  8D 2A 07     Mx
    LDA $08F8                       ; $819ADD  AD F8 08     Mx
    SEC                             ; $819AE0  38           Mx
    SBC #$2000                      ; $819AE1  E9 00 20     Mx
    STA $08F8                       ; $819AE4  8D F8 08     Mx
    LDA $08FA                       ; $819AE7  AD FA 08     Mx
    SBC #$0000                      ; $819AEA  E9 00 00     Mx
    STA $08FA                       ; $819AED  8D FA 08     Mx
    JMP L_819B5D                    ; $819AF0  4C 5D 9B     Mx
L_819AF3:
    LDA $0728                       ; $819AF3  AD 28 07     Mx
    SEC                             ; $819AF6  38           Mx
    SBC #$C000                      ; $819AF7  E9 00 C0     Mx
    STA $0728                       ; $819AFA  8D 28 07     Mx
    LDA $072A                       ; $819AFD  AD 2A 07     Mx
    SBC #$0000                      ; $819B00  E9 00 00     Mx
    STA $072A                       ; $819B03  8D 2A 07     Mx
    LDA $08F8                       ; $819B06  AD F8 08     Mx
    CLC                             ; $819B09  18           Mx
    ADC #$2000                      ; $819B0A  69 00 20     Mx
    STA $08F8                       ; $819B0D  8D F8 08     Mx
    LDA $08FA                       ; $819B10  AD FA 08     Mx
    ADC #$0000                      ; $819B13  69 00 00     Mx
    STA $08FA                       ; $819B16  8D FA 08     Mx
    JMP L_819B5D                    ; $819B19  4C 5D 9B     Mx
L_819B1C:
    STZ $0728                       ; $819B1C  9C 28 07     Mx
    STZ $072A                       ; $819B1F  9C 2A 07     Mx
    LDA $0726                       ; $819B22  AD 26 07     Mx
    CMP $08F6                       ; $819B25  CD F6 08     Mx
    BMI L_819B45                    ; $819B28  30 1B        Mx
    CMP #$03E4                      ; $819B2A  C9 E4 03     Mx
    BCS L_819B4A                    ; $819B2D  B0 1B        Mx
L_819B2F:
    LDA $0730                       ; $819B2F  AD 30 07     Mx
    CLC                             ; $819B32  18           Mx
    ADC #$8000                      ; $819B33  69 00 80     Mx
    STA $0730                       ; $819B36  8D 30 07     Mx
    LDA $0732                       ; $819B39  AD 32 07     Mx
    ADC #$0000                      ; $819B3C  69 00 00     Mx
    STA $0732                       ; $819B3F  8D 32 07     Mx
    JMP L_819B5D                    ; $819B42  4C 5D 9B     Mx
L_819B45:
    CMP #$031C                      ; $819B45  C9 1C 03     Mx
    BCC L_819B2F                    ; $819B48  90 E5        Mx
L_819B4A:
    LDA $0730                       ; $819B4A  AD 30 07     Mx
    SEC                             ; $819B4D  38           Mx
    SBC #$8000                      ; $819B4E  E9 00 80     Mx
    STA $0730                       ; $819B51  8D 30 07     Mx
    LDA $0732                       ; $819B54  AD 32 07     Mx
    SBC #$0000                      ; $819B57  E9 00 00     Mx
    STA $0732                       ; $819B5A  8D 32 07     Mx
L_819B5D:
    LDA $09DA                       ; $819B5D  AD DA 09     Mx
    BNE L_819B86                    ; $819B60  D0 24        Mx
    LDA $0A3C                       ; $819B62  AD 3C 0A     Mx
    BNE L_819B86                    ; $819B65  D0 1F        Mx
    LDA $076A                       ; $819B67  AD 6A 07     Mx
    CMP #$0025                      ; $819B6A  C9 25 00     Mx
    BCS L_819B86                    ; $819B6D  B0 17        Mx
    CMP #$000A                      ; $819B6F  C9 0A 00     Mx
    BCC L_819B86                    ; $819B72  90 12        Mx
    LDA $0746                       ; $819B74  AD 46 07     Mx
    SEC                             ; $819B77  38           Mx
    SBC $0A00                       ; $819B78  ED 00 0A     Mx
    BPL L_819B86                    ; $819B7B  10 09        Mx
    LDA $0748                       ; $819B7D  AD 48 07     Mx
    SEC                             ; $819B80  38           Mx
    SBC $09FE                       ; $819B81  ED FE 09     Mx
    BPL L_819B89                    ; $819B84  10 03        Mx
L_819B86:
    JMP L_819C55                    ; $819B86  4C 55 9C     Mx
L_819B89:
    LDA $0718                       ; $819B89  AD 18 07     Mx
    SEC                             ; $819B8C  38           Mx
    SBC $09D0                       ; $819B8D  ED D0 09     Mx
    BCC L_819B9A                    ; $819B90  90 08        Mx
    CMP #$000C                      ; $819B92  C9 0C 00     Mx
    BCC L_819BA2                    ; $819B95  90 0B        Mx
    JMP L_819C55                    ; $819B97  4C 55 9C     Mx
L_819B9A:
    CMP #$FFF4                      ; $819B9A  C9 F4 FF     Mx
    BCS L_819BA2                    ; $819B9D  B0 03        Mx
    JMP L_819C55                    ; $819B9F  4C 55 9C     Mx
L_819BA2:
    LDA $071E                       ; $819BA2  AD 1E 07     Mx
    SEC                             ; $819BA5  38           Mx
    SBC $09D6                       ; $819BA6  ED D6 09     Mx
    CMP #$000C                      ; $819BA9  C9 0C 00     Mx
    BPL L_819C14                    ; $819BAC  10 66        Mx
    CMP #$FFF4                      ; $819BAE  C9 F4 FF     Mx
    BMI L_819C14                    ; $819BB1  30 61        Mx
    STZ $0730                       ; $819BB3  9C 30 07     Mx
    STZ $0732                       ; $819BB6  9C 32 07     Mx
    LDA $071E                       ; $819BB9  AD 1E 07     Mx
    SEC                             ; $819BBC  38           Mx
    SBC $09D6                       ; $819BBD  ED D6 09     Mx
    BMI L_819BEB                    ; $819BC0  30 29        Mx
    LDA $0728                       ; $819BC2  AD 28 07     Mx
    CLC                             ; $819BC5  18           Mx
    ADC #$C000                      ; $819BC6  69 00 C0     Mx
    STA $0728                       ; $819BC9  8D 28 07     Mx
    LDA $072A                       ; $819BCC  AD 2A 07     Mx
    ADC #$0000                      ; $819BCF  69 00 00     Mx
    STA $072A                       ; $819BD2  8D 2A 07     Mx
    LDA $09E0                       ; $819BD5  AD E0 09     Mx
    SEC                             ; $819BD8  38           Mx
    SBC #$2000                      ; $819BD9  E9 00 20     Mx
    STA $09E0                       ; $819BDC  8D E0 09     Mx
    LDA $09E2                       ; $819BDF  AD E2 09     Mx
    SBC #$0000                      ; $819BE2  E9 00 00     Mx
    STA $09E2                       ; $819BE5  8D E2 09     Mx
    JMP L_819C55                    ; $819BE8  4C 55 9C     Mx
L_819BEB:
    LDA $0728                       ; $819BEB  AD 28 07     Mx
    SEC                             ; $819BEE  38           Mx
    SBC #$C000                      ; $819BEF  E9 00 C0     Mx
    STA $0728                       ; $819BF2  8D 28 07     Mx
    LDA $072A                       ; $819BF5  AD 2A 07     Mx
    SBC #$0000                      ; $819BF8  E9 00 00     Mx
    STA $072A                       ; $819BFB  8D 2A 07     Mx
    LDA $09E0                       ; $819BFE  AD E0 09     Mx
    CLC                             ; $819C01  18           Mx
    ADC #$2000                      ; $819C02  69 00 20     Mx
    STA $09E0                       ; $819C05  8D E0 09     Mx
    LDA $09E2                       ; $819C08  AD E2 09     Mx
    ADC #$0000                      ; $819C0B  69 00 00     Mx
    STA $09E2                       ; $819C0E  8D E2 09     Mx
    JMP L_819C55                    ; $819C11  4C 55 9C     Mx
L_819C14:
    STZ $0728                       ; $819C14  9C 28 07     Mx
    STZ $072A                       ; $819C17  9C 2A 07     Mx
    LDA $0726                       ; $819C1A  AD 26 07     Mx
    CMP $09DE                       ; $819C1D  CD DE 09     Mx
    BMI L_819C3D                    ; $819C20  30 1B        Mx
    CMP #$03E4                      ; $819C22  C9 E4 03     Mx
    BCS L_819C42                    ; $819C25  B0 1B        Mx
L_819C27:
    LDA $0730                       ; $819C27  AD 30 07     Mx
    CLC                             ; $819C2A  18           Mx
    ADC #$8000                      ; $819C2B  69 00 80     Mx
    STA $0730                       ; $819C2E  8D 30 07     Mx
    LDA $0732                       ; $819C31  AD 32 07     Mx
    ADC #$0000                      ; $819C34  69 00 00     Mx
    STA $0732                       ; $819C37  8D 32 07     Mx
    JMP L_819C55                    ; $819C3A  4C 55 9C     Mx
L_819C3D:
    CMP #$031C                      ; $819C3D  C9 1C 03     Mx
    BCC L_819C27                    ; $819C40  90 E5        Mx
L_819C42:
    LDA $0730                       ; $819C42  AD 30 07     Mx
    SEC                             ; $819C45  38           Mx
    SBC #$8000                      ; $819C46  E9 00 80     Mx
    STA $0730                       ; $819C49  8D 30 07     Mx
    LDA $0732                       ; $819C4C  AD 32 07     Mx
    SBC #$0000                      ; $819C4F  E9 00 00     Mx
    STA $0732                       ; $819C52  8D 32 07     Mx
L_819C55:
    LDA $0724                       ; $819C55  AD 24 07     Mx
    CLC                             ; $819C58  18           Mx
    ADC $0730                       ; $819C59  6D 30 07     Mx
    STA $071A                       ; $819C5C  8D 1A 07     Mx
    LDA $0726                       ; $819C5F  AD 26 07     Mx
    ADC $0732                       ; $819C62  6D 32 07     Mx
    STA $0718                       ; $819C65  8D 18 07     Mx
    CMP #$0310                      ; $819C68  C9 10 03     Mx
    BCC L_819C7E                    ; $819C6B  90 11        Mx
    CMP #$03F0                      ; $819C6D  C9 F0 03     Mx
    BCC L_819C90                    ; $819C70  90 1E        Mx
    LDA $076E                       ; $819C72  AD 6E 07     Mx
    AND #$FBFF                      ; $819C75  29 FF FB     Mx
    STA $076E                       ; $819C78  8D 6E 07     Mx
    JMP L_819C87                    ; $819C7B  4C 87 9C     Mx
L_819C7E:
    LDA $076E                       ; $819C7E  AD 6E 07     Mx
    AND #$F7FF                      ; $819C81  29 FF F7     Mx
    STA $076E                       ; $819C84  8D 6E 07     Mx
L_819C87:
    STZ $0732                       ; $819C87  9C 32 07     Mx
    STZ $0730                       ; $819C8A  9C 30 07     Mx
    JMP L_819CA8                    ; $819C8D  4C A8 9C     Mx
L_819C90:
    LDA $0732                       ; $819C90  AD 32 07     Mx
    BEQ L_819CA8                    ; $819C93  F0 13        Mx
    BPL L_819C9F                    ; $819C95  10 08        Mx
    LDA $076E                       ; $819C97  AD 6E 07     Mx
    ORA #$0400                      ; $819C9A  09 00 04     Mx
    BNE L_819CA5                    ; $819C9D  D0 06        Mx
L_819C9F:
    LDA $076E                       ; $819C9F  AD 6E 07     Mx
    ORA #$0800                      ; $819CA2  09 00 08     Mx
L_819CA5:
    STA $076E                       ; $819CA5  8D 6E 07     Mx
L_819CA8:
    LDA $0702                       ; $819CA8  AD 02 07     Mx
    BEQ L_819CB8                    ; $819CAB  F0 0B        Mx
    LDA $0722                       ; $819CAD  AD 22 07     Mx
    CMP #$0001                      ; $819CB0  C9 01 00     Mx
    BPL L_819CB8                    ; $819CB3  10 03        Mx
    JMP L_819D0A                    ; $819CB5  4C 0A 9D     Mx
L_819CB8:
    LDA $0710                       ; $819CB8  AD 10 07     Mx
    BPL L_819CCA                    ; $819CBB  10 0D        Mx
    CMP #$FF00                      ; $819CBD  C9 00 FF     Mx
    BCS L_819CF2                    ; $819CC0  B0 30        Mx
    LDA $072A                       ; $819CC2  AD 2A 07     Mx
    BPL L_819CF2                    ; $819CC5  10 2B        Mx
    JMP L_819CE0                    ; $819CC7  4C E0 9C     Mx
L_819CCA:
    CMP #$010C                      ; $819CCA  C9 0C 01     Mx
    BCC L_819CF2                    ; $819CCD  90 23        Mx
    LDA $072A                       ; $819CCF  AD 2A 07     Mx
    BMI L_819CF2                    ; $819CD2  30 1E        Mx
    LDA $076E                       ; $819CD4  AD 6E 07     Mx
    AND #$FEFF                      ; $819CD7  29 FF FE     Mx
    STA $076E                       ; $819CDA  8D 6E 07     Mx
    JMP L_819CE9                    ; $819CDD  4C E9 9C     Mx
L_819CE0:
    LDA $076E                       ; $819CE0  AD 6E 07     Mx
    AND #$FDFF                      ; $819CE3  29 FF FD     Mx
    STA $076E                       ; $819CE6  8D 6E 07     Mx
L_819CE9:
    STZ $072A                       ; $819CE9  9C 2A 07     Mx
    STZ $0728                       ; $819CEC  9C 28 07     Mx
    JMP L_819D0A                    ; $819CEF  4C 0A 9D     Mx
L_819CF2:
    LDA $072A                       ; $819CF2  AD 2A 07     Mx
    BEQ L_819D0A                    ; $819CF5  F0 13        Mx
    BPL L_819D01                    ; $819CF7  10 08        Mx
    LDA $076E                       ; $819CF9  AD 6E 07     Mx
    ORA #$0100                      ; $819CFC  09 00 01     Mx
    BNE L_819D07                    ; $819CFF  D0 06        Mx
L_819D01:
    LDA $076E                       ; $819D01  AD 6E 07     Mx
    ORA #$0200                      ; $819D04  09 00 02     Mx
L_819D07:
    STA $076E                       ; $819D07  8D 6E 07     Mx
L_819D0A:
    LDA $0714                       ; $819D0A  AD 14 07     Mx
    BNE L_819D21                    ; $819D0D  D0 12        Mx
    LDA $06F8                       ; $819D0F  AD F8 06     Mx
    AND #$0004                      ; $819D12  29 04 00     Mx
    BNE L_819D38                    ; $819D15  D0 21        Mx
    LDA $0794                       ; $819D17  AD 94 07     Mx
    BEQ L_819D38                    ; $819D1A  F0 1C        Mx
    STZ $0C11                       ; $819D1C  9C 11 0C     Mx
    BRA L_819D38                    ; $819D1F  80 17        Mx
L_819D21:
    BMI L_819D2C                    ; $819D21  30 09        Mx
    LDX $06F4                       ; $819D23  AE F4 06     Mx
    LDA $02DF90,X                   ; $819D26  BF 90 DF 02  Mx
    BNE L_819D38                    ; $819D2A  D0 0C        Mx
L_819D2C:
    STZ $0722                       ; $819D2C  9C 22 07     Mx
    STZ $0720                       ; $819D2F  9C 20 07     Mx
    STZ $0714                       ; $819D32  9C 14 07     Mx
    STZ $0716                       ; $819D35  9C 16 07     Mx
L_819D38:
    LDA $0728                       ; $819D38  AD 28 07     Mx
    CLC                             ; $819D3B  18           Mx
    ADC $071C                       ; $819D3C  6D 1C 07     Mx
    STA $071C                       ; $819D3F  8D 1C 07     Mx
    LDA $072A                       ; $819D42  AD 2A 07     Mx
    ADC $071E                       ; $819D45  6D 1E 07     Mx
    STA $071E                       ; $819D48  8D 1E 07     Mx
    LDA $0730                       ; $819D4B  AD 30 07     Mx
    CLC                             ; $819D4E  18           Mx
    ADC $0724                       ; $819D4F  6D 24 07     Mx
    STA $0724                       ; $819D52  8D 24 07     Mx
    LDA $0732                       ; $819D55  AD 32 07     Mx
    ADC $0726                       ; $819D58  6D 26 07     Mx
    STA $0726                       ; $819D5B  8D 26 07     Mx
    LDA $072C                       ; $819D5E  AD 2C 07     Mx
    CLC                             ; $819D61  18           Mx
    ADC $0720                       ; $819D62  6D 20 07     Mx
    STA $0720                       ; $819D65  8D 20 07     Mx
    LDA $072E                       ; $819D68  AD 2E 07     Mx
    ADC $0722                       ; $819D6B  6D 22 07     Mx
    BPL L_819D73                    ; $819D6E  10 03        Mx
    LDA #$0000                      ; $819D70  A9 00 00     Mx
L_819D73:
    STA $0722                       ; $819D73  8D 22 07     Mx
    LDX $06F4                       ; $819D76  AE F4 06     Mx
    LDA $82DFD4,X                   ; $819D79  BF D4 DF 82  Mx
    BEQ L_819D8B                    ; $819D7D  F0 0C        Mx
    STZ $072A                       ; $819D7F  9C 2A 07     Mx
    STZ $0728                       ; $819D82  9C 28 07     Mx
    STZ $0732                       ; $819D85  9C 32 07     Mx
    STZ $0730                       ; $819D88  9C 30 07     Mx
L_819D8B:
    REP #$10                        ; $819D8B  C2 10        Mx
    LDA $06F4                       ; $819D8D  AD F4 06     MX
    ASL                             ; $819D90  0A           MX
    ASL                             ; $819D91  0A           MX
    ASL                             ; $819D92  0A           MX
    CLC                             ; $819D93  18           MX
    ADC $0708                       ; $819D94  6D 08 07     MX
    ADC $0708                       ; $819D97  6D 08 07     MX
    STA $0700                       ; $819D9A  8D 00 07     MX
    TAX                             ; $819D9D  AA           MX
    DEC $06FC                       ; $819D9E  CE FC 06     MX
    BPL L_819DC8                    ; $819DA1  10 25        MX
    LDA $998210,X                   ; $819DA3  BF 10 82 99  MX
    STA $06FC                       ; $819DA7  8D FC 06     MX
    INC $06FA                       ; $819DAA  EE FA 06     MX
    LDA $06FE                       ; $819DAD  AD FE 06     MX
    CLC                             ; $819DB0  18           MX
    ADC #$0008                      ; $819DB1  69 08 00     MX
    STA $06FE                       ; $819DB4  8D FE 06     MX
    LDA $998420,X                   ; $819DB7  BF 20 84 99  MX
    CMP $06FA                       ; $819DBB  CD FA 06     MX
    BEQ L_819DC2                    ; $819DBE  F0 02        MX
    BCS L_819DC8                    ; $819DC0  B0 06        MX
L_819DC2:
    STZ $06FA                       ; $819DC2  9C FA 06     MX
    STZ $06FE                       ; $819DC5  9C FE 06     MX
L_819DC8:
    LDA $998000,X                   ; $819DC8  BF 00 80 99  MX
    CLC                             ; $819DCC  18           MX
    ADC $06FE                       ; $819DCD  6D FE 06     MX
    STA $07CC                       ; $819DD0  8D CC 07     MX
    SEP #$10                        ; $819DD3  E2 10        MX
    RTL                             ; $819DD5  6B           Mx
L_819DD6:
    LDX $0702                       ; $819DD6  AE 02 07     Mx
    BNE L_819E11                    ; $819DD9  D0 36        Mx
    LDX $0A9A                       ; $819DDB  AE 9A 0A     Mx
    BEQ L_819DE3                    ; $819DDE  F0 03        Mx
    JMP L_819FB6                    ; $819DE0  4C B6 9F     Mx
L_819DE3:
    LDX $07A2                       ; $819DE3  AE A2 07     Mx
    BEQ L_819E0E                    ; $819DE6  F0 26        Mx
    DEC $07A2                       ; $819DE8  CE A2 07     Mx
    BNE L_819DFB                    ; $819DEB  D0 0E        Mx
    PHA                             ; $819DED  48           Mx
    LDA #$FFFF                      ; $819DEE  A9 FF FF     Mx
    STA $076E                       ; $819DF1  8D 6E 07     Mx
    STZ $07A4                       ; $819DF4  9C A4 07     Mx
    PLA                             ; $819DF7  68           Mx
    JMP L_81A0C8                    ; $819DF8  4C C8 A0     Mx
L_819DFB:
    LDX $07A4                       ; $819DFB  AE A4 07     Mx
    BEQ L_819E03                    ; $819DFE  F0 03        Mx
    JMP L_81A0CB                    ; $819E00  4C CB A0     Mx
L_819E03:
    PHA                             ; $819E03  48           Mx
    LDA $076E                       ; $819E04  AD 6E 07     Mx
    AND #$F0FF                      ; $819E07  29 FF F0     Mx
    STA $076E                       ; $819E0A  8D 6E 07     Mx
    PLA                             ; $819E0D  68           Mx
L_819E0E:
    JMP L_81A0C8                    ; $819E0E  4C C8 A0     Mx
L_819E11:
    LDA #$FFFF                      ; $819E11  A9 FF FF     Mx
    STA $076E                       ; $819E14  8D 6E 07     Mx
    STZ $00A4                       ; $819E17  9C A4 00     Mx
    LDA $0722                       ; $819E1A  AD 22 07     Mx
    BEQ L_819E25                    ; $819E1D  F0 06        Mx
    LDA #$0000                      ; $819E1F  A9 00 00     Mx
    JMP L_81A0C8                    ; $819E22  4C C8 A0     Mx
L_819E25:
    LDA $0794                       ; $819E25  AD 94 07     Mx
    BNE L_819E8B                    ; $819E28  D0 61        Mx
    LDX $0C1B                       ; $819E2A  AE 1B 0C     Mx
    CPX $06F0                       ; $819E2D  EC F0 06     Mx
    BNE L_819E95                    ; $819E30  D0 63        Mx
    STZ $00D0                       ; $819E32  9C D0 00     Mx
    LDA $071E                       ; $819E35  AD 1E 07     Mx
    SEC                             ; $819E38  38           Mx
    SBC $0BFB                       ; $819E39  ED FB 0B     Mx
    AND #$FFFC                      ; $819E3C  29 FC FF     Mx
    BMI L_819E54                    ; $819E3F  30 13        Mx
    BNE L_819E4B                    ; $819E41  D0 08        Mx
    STZ $072A                       ; $819E43  9C 2A 07     Mx
    STZ $0728                       ; $819E46  9C 28 07     Mx
    BRA L_819E5A                    ; $819E49  80 0F        Mx
L_819E4B:
    LDA #$0200                      ; $819E4B  A9 00 02     Mx
    STA $00A4                       ; $819E4E  8D A4 00     Mx
    JMP L_819E5A                    ; $819E51  4C 5A 9E     Mx
L_819E54:
    LDA #$0100                      ; $819E54  A9 00 01     Mx
    STA $00A4                       ; $819E57  8D A4 00     Mx
L_819E5A:
    LDA $0726                       ; $819E5A  AD 26 07     Mx
    SEC                             ; $819E5D  38           Mx
    SBC $0BFD                       ; $819E5E  ED FD 0B     Mx
    AND #$FFFC                      ; $819E61  29 FC FF     Mx
    BMI L_819E7C                    ; $819E64  30 16        Mx
    BNE L_819E70                    ; $819E66  D0 08        Mx
    STZ $0732                       ; $819E68  9C 32 07     Mx
    STZ $0730                       ; $819E6B  9C 30 07     Mx
    BRA L_819E85                    ; $819E6E  80 15        Mx
L_819E70:
    LDA #$0800                      ; $819E70  A9 00 08     Mx
    ORA $00A4                       ; $819E73  0D A4 00     Mx
    STA $00A4                       ; $819E76  8D A4 00     Mx
    JMP L_819E85                    ; $819E79  4C 85 9E     Mx
L_819E7C:
    LDA #$0400                      ; $819E7C  A9 00 04     Mx
    ORA $00A4                       ; $819E7F  0D A4 00     Mx
    STA $00A4                       ; $819E82  8D A4 00     Mx
L_819E85:
    LDA $00A4                       ; $819E85  AD A4 00     Mx
    JMP L_81A0C8                    ; $819E88  4C C8 A0     Mx
L_819E8B:
    LDX $0C1B                       ; $819E8B  AE 1B 0C     Mx
    BEQ L_819E95                    ; $819E8E  F0 05        Mx
    CPX $06F0                       ; $819E90  EC F0 06     Mx
    BNE L_819E98                    ; $819E93  D0 03        Mx
L_819E95:
    JMP L_819F2C                    ; $819E95  4C 2C 9F     Mx
L_819E98:
    LDA $0C19                       ; $819E98  AD 19 0C     Mx
    BEQ L_819F03                    ; $819E9B  F0 66        Mx
    LDA $0BD9                       ; $819E9D  AD D9 0B     Mx
    CLC                             ; $819EA0  18           Mx
    ADC $0BEF                       ; $819EA1  6D EF 0B     Mx
    LDY #$54                        ; $819EA4  A0 54        Mx
    SEC                             ; $819EA6  38           Mx
    SBC ($CC),Y                     ; $819EA7  F1 CC        Mx
    BPL L_819EB5                    ; $819EA9  10 0A        Mx
    CMP #$FEF4                      ; $819EAB  C9 F4 FE     Mx
    BCS L_819EBD                    ; $819EAE  B0 0D        Mx
    LDA #$FEF4                      ; $819EB0  A9 F4 FE     Mx
    BRA L_819EBD                    ; $819EB3  80 08        Mx
L_819EB5:
    CMP #$010C                      ; $819EB5  C9 0C 01     Mx
    BCC L_819EBD                    ; $819EB8  90 03        Mx
    LDA #$010C                      ; $819EBA  A9 0C 01     Mx
L_819EBD:
    STA $0BD9                       ; $819EBD  8D D9 0B     Mx
    LDA $0BDD                       ; $819EC0  AD DD 0B     Mx
    CLC                             ; $819EC3  18           Mx
    ADC $0BF1                       ; $819EC4  6D F1 0B     Mx
    STA $0BDD                       ; $819EC7  8D DD 0B     Mx
    LDA $0BF3                       ; $819ECA  AD F3 0B     Mx
    CMP #$0310                      ; $819ECD  C9 10 03     Mx
    BCC L_819EDC                    ; $819ED0  90 0A        Mx
    CMP #$03F0                      ; $819ED2  C9 F0 03     Mx
    BCC L_819EDF                    ; $819ED5  90 08        Mx
    LDA #$03F0                      ; $819ED7  A9 F0 03     Mx
    BRA L_819EDF                    ; $819EDA  80 03        Mx
L_819EDC:
    LDA #$0310                      ; $819EDC  A9 10 03     Mx
L_819EDF:
    STA $0BE1                       ; $819EDF  8D E1 0B     Mx
    STA $0BF3                       ; $819EE2  8D F3 0B     Mx
    STZ $0C19                       ; $819EE5  9C 19 0C     Mx
    STZ $00CC                       ; $819EE8  9C CC 00     Mx
    STZ $0C2B                       ; $819EEB  9C 2B 0C     Mx
    STZ $0BEF                       ; $819EEE  9C EF 0B     Mx
    STZ $0BF1                       ; $819EF1  9C F1 0B     Mx
    STZ $0C11                       ; $819EF4  9C 11 0C     Mx
    LDA #$0002                      ; $819EF7  A9 02 00     Mx
    STA $0BBF                       ; $819EFA  8D BF 0B     Mx
    LDA #$0002                      ; $819EFD  A9 02 00     Mx
    STA $0BC1                       ; $819F00  8D C1 0B     Mx
L_819F03:
    LDA $0C1B                       ; $819F03  AD 1B 0C     Mx
    AND #$00FF                      ; $819F06  29 FF 00     Mx
    DEC                             ; $819F09  3A           Mx
    ASL                             ; $819F0A  0A           Mx
    TAX                             ; $819F0B  AA           Mx
    LDA $9ABBCD,X                   ; $819F0C  BF CD BB 9A  Mx
    STA $00CC                       ; $819F10  8D CC 00     Mx
    LDY #$2E                        ; $819F13  A0 2E        Mx
    LDA ($CC),Y                     ; $819F15  B1 CC        Mx
    STA $0BD9                       ; $819F17  8D D9 0B     Mx
    LDY #$36                        ; $819F1A  A0 36        Mx
    LDA ($CC),Y                     ; $819F1C  B1 CC        Mx
    STA $0BE1                       ; $819F1E  8D E1 0B     Mx
    LDY #$32                        ; $819F21  A0 32        Mx
    LDA ($CC),Y                     ; $819F23  B1 CC        Mx
    CLC                             ; $819F25  18           Mx
    ADC #$0019                      ; $819F26  69 19 00     Mx
    STA $0BDD                       ; $819F29  8D DD 0B     Mx
L_819F2C:
    STZ $00D0                       ; $819F2C  9C D0 00     Mx
    LDA $071E                       ; $819F2F  AD 1E 07     Mx
    SEC                             ; $819F32  38           Mx
    SBC $0704                       ; $819F33  ED 04 07     Mx
    AND #$FFFC                      ; $819F36  29 FC FF     Mx
    BMI L_819F51                    ; $819F39  30 16        Mx
    BNE L_819F45                    ; $819F3B  D0 08        Mx
    STZ $072A                       ; $819F3D  9C 2A 07     Mx
    STZ $0728                       ; $819F40  9C 28 07     Mx
    BRA L_819F61                    ; $819F43  80 1C        Mx
L_819F45:
    STA $00D0                       ; $819F45  8D D0 00     Mx
    LDA #$0200                      ; $819F48  A9 00 02     Mx
    STA $00A4                       ; $819F4B  8D A4 00     Mx
    JMP L_819F61                    ; $819F4E  4C 61 9F     Mx
L_819F51:
    EOR #$FFFF                      ; $819F51  49 FF FF     Mx
    CLC                             ; $819F54  18           Mx
    ADC #$0001                      ; $819F55  69 01 00     Mx
    STA $00D0                       ; $819F58  8D D0 00     Mx
    LDA #$0100                      ; $819F5B  A9 00 01     Mx
    STA $00A4                       ; $819F5E  8D A4 00     Mx
L_819F61:
    LDA $0726                       ; $819F61  AD 26 07     Mx
    SEC                             ; $819F64  38           Mx
    SBC $0706                       ; $819F65  ED 06 07     Mx
    AND #$FFFC                      ; $819F68  29 FC FF     Mx
    BMI L_819F83                    ; $819F6B  30 16        Mx
    BNE L_819F77                    ; $819F6D  D0 08        Mx
    STZ $0732                       ; $819F6F  9C 32 07     Mx
    STZ $0730                       ; $819F72  9C 30 07     Mx
    BRA L_819F8C                    ; $819F75  80 15        Mx
L_819F77:
    LDA #$0800                      ; $819F77  A9 00 08     Mx
    ORA $00A4                       ; $819F7A  0D A4 00     Mx
    STA $00A4                       ; $819F7D  8D A4 00     Mx
    JMP L_819F8C                    ; $819F80  4C 8C 9F     Mx
L_819F83:
    LDA #$0400                      ; $819F83  A9 00 04     Mx
    ORA $00A4                       ; $819F86  0D A4 00     Mx
    STA $00A4                       ; $819F89  8D A4 00     Mx
L_819F8C:
    LDA $00A4                       ; $819F8C  AD A4 00     Mx
    BEQ L_819F94                    ; $819F8F  F0 03        Mx
    JMP L_81A0C8                    ; $819F91  4C C8 A0     Mx
L_819F94:
    LDX $075E                       ; $819F94  AE 5E 07     Mx
    LDA $A7E377,X                   ; $819F97  BF 77 E3 A7  Mx
    AND #$0007                      ; $819F9B  29 07 00     Mx
    STA $0708                       ; $819F9E  8D 08 07     Mx
    STZ $072A                       ; $819FA1  9C 2A 07     Mx
    STZ $0728                       ; $819FA4  9C 28 07     Mx
    STZ $0732                       ; $819FA7  9C 32 07     Mx
    STZ $0730                       ; $819FAA  9C 30 07     Mx
    STZ $072E                       ; $819FAD  9C 2E 07     Mx
    STZ $072C                       ; $819FB0  9C 2C 07     Mx
    STZ $0702                       ; $819FB3  9C 02 07     Mx
L_819FB6:
    LDA #$0087                      ; $819FB6  A9 87 00     Mx
    STA $07B2                       ; $819FB9  8D B2 07     Mx
    LDA #$FFFF                      ; $819FBC  A9 FF FF     Mx
    STA $076E                       ; $819FBF  8D 6E 07     Mx
    LDA $0702                       ; $819FC2  AD 02 07     Mx
    ORA $07EA                       ; $819FC5  0D EA 07     Mx
    ORA $08D2                       ; $819FC8  0D D2 08     Mx
    ORA $09BA                       ; $819FCB  0D BA 09     Mx
    BEQ L_819FD3                    ; $819FCE  F0 03        Mx
    JMP L_81A0C5                    ; $819FD0  4C C5 A0     Mx
L_819FD3:
    LDA $0C3B                       ; $819FD3  AD 3B 0C     Mx
    BNE L_819FDD                    ; $819FD6  D0 05        Mx
    STZ $0CD3                       ; $819FD8  9C D3 0C     Mx
    BRA L_819FE3                    ; $819FDB  80 06        Mx
L_819FDD:
    LDA #$003C                      ; $819FDD  A9 3C 00     Mx
    STA $0CD3                       ; $819FE0  8D D3 0C     Mx
L_819FE3:
    LDA $0B50                       ; $819FE3  AD 50 0B     Mx
    BNE L_81A006                    ; $819FE6  D0 1E        Mx
    LDA $0C19                       ; $819FE8  AD 19 0C     Mx
    AND #$00FF                      ; $819FEB  29 FF 00     Mx
    SEC                             ; $819FEE  38           Mx
    SBC $0C1B                       ; $819FEF  ED 1B 0C     Mx
    AND #$00FF                      ; $819FF2  29 FF 00     Mx
    BNE L_81A009                    ; $819FF5  D0 12        Mx
    LDA $0C19                       ; $819FF7  AD 19 0C     Mx
    AND #$00FF                      ; $819FFA  29 FF 00     Mx
    SEC                             ; $819FFD  38           Mx
    SBC $06F0                       ; $819FFE  ED F0 06     Mx
    AND #$00FF                      ; $81A001  29 FF 00     Mx
    BEQ L_81A020                    ; $81A004  F0 1A        Mx
L_81A006:
    JMP L_81A0C5                    ; $81A006  4C C5 A0     Mx
L_81A009:
    LDY #$2E                        ; $81A009  A0 2E        Mx
    LDA ($CC),Y                     ; $81A00B  B1 CC        Mx
    STA $0BD9                       ; $81A00D  8D D9 0B     Mx
    LDY #$36                        ; $81A010  A0 36        Mx
    LDA ($CC),Y                     ; $81A012  B1 CC        Mx
    STA $0BE1                       ; $81A014  8D E1 0B     Mx
    STA $0BF3                       ; $81A017  8D F3 0B     Mx
    STZ $0BDD                       ; $81A01A  9C DD 0B     Mx
    JMP L_81A0C5                    ; $81A01D  4C C5 A0     Mx
L_81A020:
    LDX $0756                       ; $81A020  AE 56 07     Mx
    LDA $A7E377,X                   ; $81A023  BF 77 E3 A7  Mx
    AND #$0007                      ; $81A027  29 07 00     Mx
    STA $0708                       ; $81A02A  8D 08 07     Mx
    LDA $0A9A                       ; $81A02D  AD 9A 0A     Mx
    BEQ L_81A03A                    ; $81A030  F0 08        Mx
    DEC $0A9A                       ; $81A032  CE 9A 0A     Mx
    BEQ L_81A03A                    ; $81A035  F0 03        Mx
    JMP L_81A0C5                    ; $81A037  4C C5 A0     Mx
L_81A03A:
    LDA $1683                       ; $81A03A  AD 83 16     Mx
    CMP #$001B                      ; $81A03D  C9 1B 00     Mx
    BNE L_81A077                    ; $81A040  D0 35        Mx
    LDA $1D56                       ; $81A042  AD 56 1D     Mx
    AND #$00FF                      ; $81A045  29 FF 00     Mx
    SEC                             ; $81A048  38           Mx
    SBC #$0080                      ; $81A049  E9 80 00     Mx
    STA $00A4                       ; $81A04C  8D A4 00     Mx
    LDA #$0000                      ; $81A04F  A9 00 00     Mx
    SEC                             ; $81A052  38           Mx
    SBC $00A4                       ; $81A053  ED A4 00     Mx
    STA $0704                       ; $81A056  8D 04 07     Mx
    LDA $1D58                       ; $81A059  AD 58 1D     Mx
    AND #$00FF                      ; $81A05C  29 FF 00     Mx
    CLC                             ; $81A05F  18           Mx
    ADC #$031A                      ; $81A060  69 1A 03     Mx
    CMP #$03E6                      ; $81A063  C9 E6 03     Mx
    BCC L_81A06B                    ; $81A066  90 03        Mx
    LDA #$03E6                      ; $81A068  A9 E6 03     Mx
L_81A06B:
    STA $0706                       ; $81A06B  8D 06 07     Mx
    LDA #$0001                      ; $81A06E  A9 01 00     Mx
    STA $0702                       ; $81A071  8D 02 07     Mx
    JMP L_81A0C8                    ; $81A074  4C C8 A0     Mx
L_81A077:
    STZ $0C1B                       ; $81A077  9C 1B 0C     Mx
    LDA $0B4A                       ; $81A07A  AD 4A 0B     Mx
    CMP #$0002                      ; $81A07D  C9 02 00     Mx
    BCC L_81A097                    ; $81A080  90 15        Mx
    LDA #$0002                      ; $81A082  A9 02 00     Mx
    STA $072A                       ; $81A085  8D 2A 07     Mx
    STZ $0702                       ; $81A088  9C 02 07     Mx
    STZ $0778                       ; $81A08B  9C 78 07     Mx
    LDA $07D2                       ; $81A08E  AD D2 07     Mx
    ORA $07D4                       ; $81A091  0D D4 07     Mx
    JMP L_81A0C8                    ; $81A094  4C C8 A0     Mx
L_81A097:
    LDA $071E                       ; $81A097  AD 1E 07     Mx
    CLC                             ; $81A09A  18           Mx
    ADC #$001E                      ; $81A09B  69 1E 00     Mx
    STA $0704                       ; $81A09E  8D 04 07     Mx
    LDA #$001E                      ; $81A0A1  A9 1E 00     Mx
    STA $088A                       ; $81A0A4  8D 8A 08     Mx
    STA $0972                       ; $81A0A7  8D 72 09     Mx
    STA $0A5A                       ; $81A0AA  8D 5A 0A     Mx
    STZ $088C                       ; $81A0AD  9C 8C 08     Mx
    STZ $0974                       ; $81A0B0  9C 74 09     Mx
    STZ $0A5C                       ; $81A0B3  9C 5C 0A     Mx
    LDA #$0001                      ; $81A0B6  A9 01 00     Mx
    STA $0702                       ; $81A0B9  8D 02 07     Mx
    STZ $0778                       ; $81A0BC  9C 78 07     Mx
    LDA $07D0                       ; $81A0BF  AD D0 07     Mx
    JMP L_81A0C8                    ; $81A0C2  4C C8 A0     Mx
L_81A0C5:
    LDA #$0000                      ; $81A0C5  A9 00 00     Mx
L_81A0C8:
    JMP L_81A0CE                    ; $81A0C8  4C CE A0     Mx
L_81A0CB:
    LDA $076C                       ; $81A0CB  AD 6C 07     Mx
L_81A0CE:
    AND $076E                       ; $81A0CE  2D 6E 07     Mx
    STA $00A4                       ; $81A0D1  8D A4 00     Mx
    AND #$0F00                      ; $81A0D4  29 00 0F     Mx
    BEQ L_81A0EC                    ; $81A0D7  F0 13        Mx
    STA $00A6                       ; $81A0D9  8D A6 00     Mx
    LDA $076C                       ; $81A0DC  AD 6C 07     Mx
    AND #$0F00                      ; $81A0DF  29 00 0F     Mx
    CMP $00A6                       ; $81A0E2  CD A6 00     Mx
    BNE L_81A0EC                    ; $81A0E5  D0 05        Mx
    INC $07A6                       ; $81A0E7  EE A6 07     Mx
    BNE L_81A11C                    ; $81A0EA  D0 30        Mx
L_81A0EC:
    LDA $1D56                       ; $81A0EC  AD 56 1D     Mx
    AND #$000F                      ; $81A0EF  29 0F 00     Mx
    BNE L_81A119                    ; $81A0F2  D0 25        Mx
    LDA $0722                       ; $81A0F4  AD 22 07     Mx
    BNE L_81A119                    ; $81A0F7  D0 20        Mx
    LDA $072A                       ; $81A0F9  AD 2A 07     Mx
    ORA $0732                       ; $81A0FC  0D 32 07     Mx
    BEQ L_81A119                    ; $81A0FF  F0 18        Mx
    LDA $1D58                       ; $81A101  AD 58 1D     Mx
    AND #$0001                      ; $81A104  29 01 00     Mx
    BEQ L_81A112                    ; $81A107  F0 09        Mx
    LDA #$000D                      ; $81A109  A9 0D 00     Mx
    JSL L_BDFDF3                    ; $81A10C  22 F3 FD BD  Mx
    BRA L_81A119                    ; $81A110  80 07        Mx
L_81A112:
    LDA #$000E                      ; $81A112  A9 0E 00     Mx
    JSL L_BDFDF3                    ; $81A115  22 F3 FD BD  Mx
L_81A119:
    STZ $07A6                       ; $81A119  9C A6 07     Mx
L_81A11C:
    LDA $0CCB                       ; $81A11C  AD CB 0C     Mx
    ORA $0CC9                       ; $81A11F  0D C9 0C     Mx
    BNE L_81A12C                    ; $81A122  D0 08        Mx
    LDA $076C                       ; $81A124  AD 6C 07     Mx
    AND #$F0FF                      ; $81A127  29 FF F0     Mx
    BRA L_81A12F                    ; $81A12A  80 03        Mx
L_81A12C:
    LDA $00A4                       ; $81A12C  AD A4 00     Mx
L_81A12F:
    STA $076C                       ; $81A12F  8D 6C 07     Mx
    LDA $07D6                       ; $81A132  AD D6 07     Mx
    AND #$0008                      ; $81A135  29 08 00     Mx
    BEQ L_81A14E                    ; $81A138  F0 14        Mx
    LDA $0794                       ; $81A13A  AD 94 07     Mx
    BEQ L_81A14E                    ; $81A13D  F0 0F        Mx
    LDA $06F0                       ; $81A13F  AD F0 06     Mx
    STA $0A96                       ; $81A142  8D 96 0A     Mx
    STA $0C21                       ; $81A145  8D 21 0C     Mx
    LDA #$0003                      ; $81A148  A9 03 00     Mx
    STA $0C23                       ; $81A14B  8D 23 0C     Mx
L_81A14E:
    LDA $06F2                       ; $81A14E  AD F2 06     Mx
    BEQ L_81A199                    ; $81A151  F0 46        Mx
    LDA $06F4                       ; $81A153  AD F4 06     Mx
    STA $06F4                       ; $81A156  8D F4 06     Mx
    LDA #$FFFF                      ; $81A159  A9 FF FF     Mx
    STA $06FA                       ; $81A15C  8D FA 06     Mx
    STZ $06FC                       ; $81A15F  9C FC 06     Mx
    STZ $0742                       ; $81A162  9C 42 07     Mx
    STZ $06F8                       ; $81A165  9C F8 06     Mx
    LDA #$FFF8                      ; $81A168  A9 F8 FF     Mx
    STA $06FE                       ; $81A16B  8D FE 06     Mx
    LDA $06F4                       ; $81A16E  AD F4 06     Mx
    CMP #$0030                      ; $81A171  C9 30 00     Mx
    BNE L_81A196                    ; $81A174  D0 20        Mx
    LDA $072A                       ; $81A176  AD 2A 07     Mx
    BPL L_81A188                    ; $81A179  10 0D        Mx
    LDX #$02                        ; $81A17B  A2 02        Mx
    LDA $0732                       ; $81A17D  AD 32 07     Mx
    BMI L_81A185                    ; $81A180  30 03        Mx
    DEX                             ; $81A182  CA           Mx
    BRA L_81A193                    ; $81A183  80 0E        Mx
L_81A185:
    INX                             ; $81A185  E8           Mx
    BRA L_81A193                    ; $81A186  80 0B        Mx
L_81A188:
    LDX #$06                        ; $81A188  A2 06        Mx
    LDA $0732                       ; $81A18A  AD 32 07     Mx
    BMI L_81A192                    ; $81A18D  30 03        Mx
    INX                             ; $81A18F  E8           Mx
    BRA L_81A193                    ; $81A190  80 01        Mx
L_81A192:
    DEX                             ; $81A192  CA           Mx
L_81A193:
    STX $0708                       ; $81A193  8E 08 07     Mx
L_81A196:
    STZ $06F2                       ; $81A196  9C F2 06     Mx
L_81A199:
    LDA $0784                       ; $81A199  AD 84 07     Mx
    BEQ L_81A1A9                    ; $81A19C  F0 0B        Mx
    LDA $06F4                       ; $81A19E  AD F4 06     Mx
    CMP #$0030                      ; $81A1A1  C9 30 00     Mx
    BEQ L_81A1A9                    ; $81A1A4  F0 03        Mx
    STZ $0784                       ; $81A1A6  9C 84 07     Mx
L_81A1A9:
    LDA $076C                       ; $81A1A9  AD 6C 07     Mx
    AND $07D4                       ; $81A1AC  2D D4 07     Mx
    BEQ L_81A1C2                    ; $81A1AF  F0 11        Mx
    INC $0786                       ; $81A1B1  EE 86 07     Mx
    LDA $0788                       ; $81A1B4  AD 88 07     Mx
    CMP #$0005                      ; $81A1B7  C9 05 00     Mx
    BCC L_81A1CB                    ; $81A1BA  90 0F        Mx
    STZ $0788                       ; $81A1BC  9C 88 07     Mx
    JMP L_81A24A                    ; $81A1BF  4C 4A A2     Mx
L_81A1C2:
    STZ $0786                       ; $81A1C2  9C 86 07     Mx
    INC $0788                       ; $81A1C5  EE 88 07     Mx
    JMP L_81A24A                    ; $81A1C8  4C 4A A2     Mx
L_81A1CB:
    LDA $0786                       ; $81A1CB  AD 86 07     Mx
    CMP #$0001                      ; $81A1CE  C9 01 00     Mx
    BNE L_81A24A                    ; $81A1D1  D0 77        Mx
    LDA $0788                       ; $81A1D3  AD 88 07     Mx
    BEQ L_81A24A                    ; $81A1D6  F0 72        Mx
    LDA $0794                       ; $81A1D8  AD 94 07     Mx
    BEQ L_81A24A                    ; $81A1DB  F0 6D        Mx
    LDA $0722                       ; $81A1DD  AD 22 07     Mx
    BNE L_81A24A                    ; $81A1E0  D0 68        Mx
    LDA $06F4                       ; $81A1E2  AD F4 06     Mx
    CMP #$002E                      ; $81A1E5  C9 2E 00     Mx
    BEQ L_81A24A                    ; $81A1E8  F0 60        Mx
    LDA $0CCB                       ; $81A1EA  AD CB 0C     Mx
    CMP #$00A9                      ; $81A1ED  C9 A9 00     Mx
    BCS L_81A24A                    ; $81A1F0  B0 58        Mx
    LDX $06F1                       ; $81A1F2  AE F1 06     Mx
    BNE L_81A207                    ; $81A1F5  D0 10        Mx
    LDA $0768                       ; $81A1F7  AD 68 07     Mx
    CMP #$0046                      ; $81A1FA  C9 46 00     Mx
    BCC L_81A207                    ; $81A1FD  90 08        Mx
    LDA $076A                       ; $81A1FF  AD 6A 07     Mx
    CMP #$0046                      ; $81A202  C9 46 00     Mx
    BCS L_81A24A                    ; $81A205  B0 43        Mx
L_81A207:
    LDX $06F0                       ; $81A207  AE F0 06     Mx
    CPX $0A96                       ; $81A20A  EC 96 0A     Mx
    BEQ L_81A21E                    ; $81A20D  F0 0F        Mx
    LDA $078A                       ; $81A20F  AD 8A 07     Mx
    CMP #$0004                      ; $81A212  C9 04 00     Mx
    BCC L_81A24A                    ; $81A215  90 33        Mx
    SEC                             ; $81A217  38           Mx
    SBC #$0003                      ; $81A218  E9 03 00     Mx
    STA $078A                       ; $81A21B  8D 8A 07     Mx
L_81A21E:
    STZ $0780                       ; $81A21E  9C 80 07     Mx
    LDA $06F4                       ; $81A221  AD F4 06     Mx
    CMP #$000C                      ; $81A224  C9 0C 00     Mx
    BEQ L_81A22F                    ; $81A227  F0 06        Mx
    LDA #$0001                      ; $81A229  A9 01 00     Mx
    STA $0780                       ; $81A22C  8D 80 07     Mx
L_81A22F:
    LDA #$002E                      ; $81A22F  A9 2E 00     Mx
    STA $06F4                       ; $81A232  8D F4 06     Mx
    LDA #$FFFF                      ; $81A235  A9 FF FF     Mx
    STA $06FA                       ; $81A238  8D FA 06     Mx
    STZ $06FC                       ; $81A23B  9C FC 06     Mx
    STZ $0742                       ; $81A23E  9C 42 07     Mx
    STZ $06F8                       ; $81A241  9C F8 06     Mx
    LDA #$FFF8                      ; $81A244  A9 F8 FF     Mx
    STA $06FE                       ; $81A247  8D FE 06     Mx
L_81A24A:
    LDA $07D6                       ; $81A24A  AD D6 07     Mx
    AND #$0004                      ; $81A24D  29 04 00     Mx
    BEQ L_81A25D                    ; $81A250  F0 0B        Mx
    LDA #$0020                      ; $81A252  A9 20 00     Mx
    STA $078A                       ; $81A255  8D 8A 07     Mx
    STZ $078C                       ; $81A258  9C 8C 07     Mx
    BRA L_81A2BA                    ; $81A25B  80 5D        Mx
L_81A25D:
    LDA $0786                       ; $81A25D  AD 86 07     Mx
    BEQ L_81A295                    ; $81A260  F0 33        Mx
    LDA $0702                       ; $81A262  AD 02 07     Mx
    BNE L_81A295                    ; $81A265  D0 2E        Mx
    LDX $06F0                       ; $81A267  AE F0 06     Mx
    CPX $0A96                       ; $81A26A  EC 96 0A     Mx
    BEQ L_81A295                    ; $81A26D  F0 26        Mx
    LDA $078C                       ; $81A26F  AD 8C 07     Mx
    SEC                             ; $81A272  38           Mx
    SBC $0790                       ; $81A273  ED 90 07     Mx
    STA $078C                       ; $81A276  8D 8C 07     Mx
    LDA $078A                       ; $81A279  AD 8A 07     Mx
    BEQ L_81A28F                    ; $81A27C  F0 11        Mx
    SBC #$0000                      ; $81A27E  E9 00 00     Mx
    STA $078A                       ; $81A281  8D 8A 07     Mx
    BNE L_81A28C                    ; $81A284  D0 06        Mx
    LDA #$000A                      ; $81A286  A9 0A 00     Mx
    STA $0792                       ; $81A289  8D 92 07     Mx
L_81A28C:
    JMP L_81A2BA                    ; $81A28C  4C BA A2     Mx
L_81A28F:
    STZ $0786                       ; $81A28F  9C 86 07     Mx
    JMP L_81A2BA                    ; $81A292  4C BA A2     Mx
L_81A295:
    LDA $0792                       ; $81A295  AD 92 07     Mx
    BEQ L_81A29F                    ; $81A298  F0 05        Mx
    DEC $0792                       ; $81A29A  CE 92 07     Mx
    BRA L_81A2BA                    ; $81A29D  80 1B        Mx
L_81A29F:
    LDA $078C                       ; $81A29F  AD 8C 07     Mx
    CLC                             ; $81A2A2  18           Mx
    ADC $078E                       ; $81A2A3  6D 8E 07     Mx
    STA $078C                       ; $81A2A6  8D 8C 07     Mx
    LDA $078A                       ; $81A2A9  AD 8A 07     Mx
    ADC #$0000                      ; $81A2AC  69 00 00     Mx
    CMP #$0020                      ; $81A2AF  C9 20 00     Mx
    BCC L_81A2B7                    ; $81A2B2  90 03        Mx
    LDA #$0020                      ; $81A2B4  A9 20 00     Mx
L_81A2B7:
    STA $078A                       ; $81A2B7  8D 8A 07     Mx
L_81A2BA:
    LDA $0770                       ; $81A2BA  AD 70 07     Mx
    STA $0772                       ; $81A2BD  8D 72 07     Mx
    LDA $076C                       ; $81A2C0  AD 6C 07     Mx
    AND $07D2                       ; $81A2C3  2D D2 07     Mx
    BEQ L_81A2CB                    ; $81A2C6  F0 03        Mx
    LDA #$0001                      ; $81A2C8  A9 01 00     Mx
L_81A2CB:
    STA $0770                       ; $81A2CB  8D 70 07     Mx
    LDA $076C                       ; $81A2CE  AD 6C 07     Mx
    AND $07D0                       ; $81A2D1  2D D0 07     Mx
    BEQ L_81A2E3                    ; $81A2D4  F0 0D        Mx
    LDA $0776                       ; $81A2D6  AD 76 07     Mx
    BEQ L_81A2E0                    ; $81A2D9  F0 05        Mx
    LDA #$FFFF                      ; $81A2DB  A9 FF FF     Mx
    BRA L_81A2E3                    ; $81A2DE  80 03        Mx
L_81A2E0:
    LDA #$0001                      ; $81A2E0  A9 01 00     Mx
L_81A2E3:
    STA $0776                       ; $81A2E3  8D 76 07     Mx
    LDA $0776                       ; $81A2E6  AD 76 07     Mx
    STA $0774                       ; $81A2E9  8D 74 07     Mx
    LDA $077A                       ; $81A2EC  AD 7A 07     Mx
    BEQ L_81A2F5                    ; $81A2EF  F0 04        Mx
    DEC                             ; $81A2F1  3A           Mx
    STA $077A                       ; $81A2F2  8D 7A 07     Mx
L_81A2F5:
    LDA $0778                       ; $81A2F5  AD 78 07     Mx
    BEQ L_81A304                    ; $81A2F8  F0 0A        Mx
    STZ $0770                       ; $81A2FA  9C 70 07     Mx
    STZ $0774                       ; $81A2FD  9C 74 07     Mx
    DEC                             ; $81A300  3A           Mx
    STA $0778                       ; $81A301  8D 78 07     Mx
L_81A304:
    LDA $06F4                       ; $81A304  AD F4 06     Mx
    CMP #$0038                      ; $81A307  C9 38 00     Mx
    BEQ L_81A378                    ; $81A30A  F0 6C        Mx
    LDA $0794                       ; $81A30C  AD 94 07     Mx
    BEQ L_81A378                    ; $81A30F  F0 67        Mx
    LDA $0722                       ; $81A311  AD 22 07     Mx
    BEQ L_81A378                    ; $81A314  F0 62        Mx
    LDA $080A                       ; $81A316  AD 0A 08     Mx
    BNE L_81A378                    ; $81A319  D0 5D        Mx
    LDA $0774                       ; $81A31B  AD 74 07     Mx
    BEQ L_81A378                    ; $81A31E  F0 58        Mx
    INC                             ; $81A320  1A           Mx
    BEQ L_81A378                    ; $81A321  F0 55        Mx
    STZ $15EB                       ; $81A323  9C EB 15     Mx
    STZ $15F5                       ; $81A326  9C F5 15     Mx
    LDA $0760                       ; $81A329  AD 60 07     Mx
    TAX                             ; $81A32C  AA           Mx
    CLC                             ; $81A32D  18           Mx
    ADC #$0040                      ; $81A32E  69 40 00     Mx
    AND #$007F                      ; $81A331  29 7F 00     Mx
    TAY                             ; $81A334  A8           Mx
    LDA $A7E377,X                   ; $81A335  BF 77 E3 A7  Mx
    AND #$0007                      ; $81A339  29 07 00     Mx
    STA $0708                       ; $81A33C  8D 08 07     Mx
    LDA #$0038                      ; $81A33F  A9 38 00     Mx
    STA $06F4                       ; $81A342  8D F4 06     Mx
    LDA #$FFFF                      ; $81A345  A9 FF FF     Mx
    STA $06FA                       ; $81A348  8D FA 06     Mx
    STZ $06FC                       ; $81A34B  9C FC 06     Mx
    STZ $0742                       ; $81A34E  9C 42 07     Mx
    STZ $06F8                       ; $81A351  9C F8 06     Mx
    LDA #$FFF8                      ; $81A354  A9 F8 FF     Mx
    STA $06FE                       ; $81A357  8D FE 06     Mx
    LDA #$0002                      ; $81A35A  A9 02 00     Mx
    STA $06F8                       ; $81A35D  8D F8 06     Mx
    LDA #$0087                      ; $81A360  A9 87 00     Mx
    STA $089A                       ; $81A363  8D 9A 08     Mx
    STZ $0C39                       ; $81A366  9C 39 0C     Mx
    LDA $06F0                       ; $81A369  AD F0 06     Mx
    AND #$00FF                      ; $81A36C  29 FF 00     Mx
    STA $0AA0                       ; $81A36F  8D A0 0A     Mx
    LDA #$00D2                      ; $81A372  A9 D2 00     Mx
    STA $0A9E                       ; $81A375  8D 9E 0A     Mx
L_81A378:
    LDA $07B2                       ; $81A378  AD B2 07     Mx
    BEQ L_81A380                    ; $81A37B  F0 03        Mx
    DEC $07B2                       ; $81A37D  CE B2 07     Mx
L_81A380:
    LDA $0C19                       ; $81A380  AD 19 0C     Mx
    BNE L_81A3BC                    ; $81A383  D0 37        Mx
    LDA $1607                       ; $81A385  AD 07 16     Mx
    BNE L_81A3BC                    ; $81A388  D0 32        Mx
    LDA $0BC1                       ; $81A38A  AD C1 0B     Mx
    CMP #$0001                      ; $81A38D  C9 01 00     Mx
    BNE L_81A3BC                    ; $81A390  D0 2A        Mx
    LDA $06F4                       ; $81A392  AD F4 06     Mx
    LSR                             ; $81A395  4A           Mx
    TAX                             ; $81A396  AA           Mx
    LDA $82DF6E,X                   ; $81A397  BF 6E DF 82  Mx
    AND #$00FF                      ; $81A39B  29 FF 00     Mx
    BEQ L_81A3BC                    ; $81A39E  F0 1C        Mx
    LDA $0C2B                       ; $81A3A0  AD 2B 0C     Mx
    BPL L_81A3BC                    ; $81A3A3  10 17        Mx
    LDA $075C                       ; $81A3A5  AD 5C 07     Mx
    CMP #$0050                      ; $81A3A8  C9 50 00     Mx
    BCS L_81A3BC                    ; $81A3AB  B0 0F        Mx
    LDA $0C25                       ; $81A3AD  AD 25 0C     Mx
    BNE L_81A3BC                    ; $81A3B0  D0 0A        Mx
    LDA $0778                       ; $81A3B2  AD 78 07     Mx
    BNE L_81A3BC                    ; $81A3B5  D0 05        Mx
    LDA $0702                       ; $81A3B7  AD 02 07     Mx
    BEQ L_81A3BF                    ; $81A3BA  F0 03        Mx
L_81A3BC:
    JMP L_81A8FA                    ; $81A3BC  4C FA A8     Mx
L_81A3BF:
    LDA $0A9C                       ; $81A3BF  AD 9C 0A     Mx
    BEQ L_81A3C7                    ; $81A3C2  F0 03        Mx
L_81A3C4:
    JMP L_81A8FA                    ; $81A3C4  4C FA A8     Mx
L_81A3C7:
    LDA $0A9A                       ; $81A3C7  AD 9A 0A     Mx
    BNE L_81A3C4                    ; $81A3CA  D0 F8        Mx
    LDA $0B50                       ; $81A3CC  AD 50 0B     Mx
    BNE L_81A3C4                    ; $81A3CF  D0 F3        Mx
    LDA $0BD9                       ; $81A3D1  AD D9 0B     Mx
    BMI L_81A3EE                    ; $81A3D4  30 18        Mx
    LDA $0CCB                       ; $81A3D6  AD CB 0C     Mx
    CMP #$0002                      ; $81A3D9  C9 02 00     Mx
    BCC L_81A3C4                    ; $81A3DC  90 E6        Mx
    LDA $075C                       ; $81A3DE  AD 5C 07     Mx
    CMP $092C                       ; $81A3E1  CD 2C 09     Mx
    BCS L_81A3EE                    ; $81A3E4  B0 08        Mx
    CMP $0A14                       ; $81A3E6  CD 14 0A     Mx
    BCS L_81A3EE                    ; $81A3E9  B0 03        Mx
    JMP L_81A3C4                    ; $81A3EB  4C C4 A3     Mx
L_81A3EE:
    LDA $0726                       ; $81A3EE  AD 26 07     Mx
    SEC                             ; $81A3F1  38           Mx
    SBC #$0374                      ; $81A3F2  E9 74 03     Mx
    BPL L_81A3FE                    ; $81A3F5  10 07        Mx
    EOR #$FFFF                      ; $81A3F7  49 FF FF     Mx
    CLC                             ; $81A3FA  18           Mx
    ADC #$0001                      ; $81A3FB  69 01 00     Mx
L_81A3FE:
    STA $00D3                       ; $81A3FE  8D D3 00     Mx
    CMP #$0020                      ; $81A401  C9 20 00     Mx
    BCS L_81A42A                    ; $81A404  B0 24        Mx
    LDA $071E                       ; $81A406  AD 1E 07     Mx
    BPL L_81A412                    ; $81A409  10 07        Mx
    EOR #$FFFF                      ; $81A40B  49 FF FF     Mx
    CLC                             ; $81A40E  18           Mx
    ADC #$0001                      ; $81A40F  69 01 00     Mx
L_81A412:
    STA $00D0                       ; $81A412  8D D0 00     Mx
    CMP #$010C                      ; $81A415  C9 0C 01     Mx
    BCS L_81A3C4                    ; $81A418  B0 AA        Mx
    LDA $00D3                       ; $81A41A  AD D3 00     Mx
    CMP #$000A                      ; $81A41D  C9 0A 00     Mx
    BCS L_81A42A                    ; $81A420  B0 08        Mx
    LDA $00D0                       ; $81A422  AD D0 00     Mx
    CMP #$00FC                      ; $81A425  C9 FC 00     Mx
    BCS L_81A3C4                    ; $81A428  B0 9A        Mx
L_81A42A:
    LDA $0BE8                       ; $81A42A  AD E8 0B     Mx
    STA $00B2                       ; $81A42D  8D B2 00     Mx
    BPL L_81A43C                    ; $81A430  10 0A        Mx
    EOR #$FFFF                      ; $81A432  49 FF FF     Mx
    CLC                             ; $81A435  18           Mx
    ADC #$0001                      ; $81A436  69 01 00     Mx
    STA $00A6                       ; $81A439  8D A6 00     Mx
L_81A43C:
    LDX #$19                        ; $81A43C  A2 19        Mx
    STX $4202                       ; $81A43E  8E 02 42     Mx
    LDX $00A6                       ; $81A441  AE A6 00     Mx
    STX $4203                       ; $81A444  8E 03 42     Mx
    NOP                             ; $81A447  EA           Mx
    NOP                             ; $81A448  EA           Mx
    NOP                             ; $81A449  EA           Mx
    NOP                             ; $81A44A  EA           Mx
    LDA $4216                       ; $81A44B  AD 16 42     Mx
    STA $00A8                       ; $81A44E  8D A8 00     Mx
    LDX #$19                        ; $81A451  A2 19        Mx
    STX $4202                       ; $81A453  8E 02 42     Mx
    LDX $00A7                       ; $81A456  AE A7 00     Mx
    STX $4203                       ; $81A459  8E 03 42     Mx
    NOP                             ; $81A45C  EA           Mx
    NOP                             ; $81A45D  EA           Mx
    STZ $00F4                       ; $81A45E  9C F4 00     Mx
    STZ $00F2                       ; $81A461  9C F2 00     Mx
    LDA $4216                       ; $81A464  AD 16 42     Mx
    STA $00F3                       ; $81A467  8D F3 00     Mx
    LDA $00F2                       ; $81A46A  AD F2 00     Mx
    CLC                             ; $81A46D  18           Mx
    ADC $00A8                       ; $81A46E  6D A8 00     Mx
    STA $00F2                       ; $81A471  8D F2 00     Mx
    LDA $00F4                       ; $81A474  AD F4 00     Mx
    ADC #$0000                      ; $81A477  69 00 00     Mx
    STA $00F4                       ; $81A47A  8D F4 00     Mx
    LDA $00B2                       ; $81A47D  AD B2 00     Mx
    BPL L_81A49B                    ; $81A480  10 19        Mx
    LDA $00F2                       ; $81A482  AD F2 00     Mx
    EOR #$FFFF                      ; $81A485  49 FF FF     Mx
    CLC                             ; $81A488  18           Mx
    ADC #$0001                      ; $81A489  69 01 00     Mx
    STA $00F2                       ; $81A48C  8D F2 00     Mx
    LDA $00F4                       ; $81A48F  AD F4 00     Mx
    EOR #$FFFF                      ; $81A492  49 FF FF     Mx
    ADC #$0000                      ; $81A495  69 00 00     Mx
    STA $00F4                       ; $81A498  8D F4 00     Mx
L_81A49B:
    LDX $00F2                       ; $81A49B  AE F2 00     Mx
    LDA $00F3                       ; $81A49E  AD F3 00     Mx
    STZ $00F2                       ; $81A4A1  9C F2 00     Mx
    STX $00F3                       ; $81A4A4  8E F3 00     Mx
    STA $00F4                       ; $81A4A7  8D F4 00     Mx
    LDA $0BDB                       ; $81A4AA  AD DB 0B     Mx
    SEC                             ; $81A4AD  38           Mx
    SBC $00F2                       ; $81A4AE  ED F2 00     Mx
    STA $0B8C                       ; $81A4B1  8D 8C 0B     Mx
    LDA $0BDD                       ; $81A4B4  AD DD 0B     Mx
    SBC $00F4                       ; $81A4B7  ED F4 00     Mx
    STA $00DC                       ; $81A4BA  8D DC 00     Mx
    LDA $0B8C                       ; $81A4BD  AD 8C 0B     Mx
    SEC                             ; $81A4C0  38           Mx
    SBC #$5C00                      ; $81A4C1  E9 00 5C     Mx
    STA $0B8C                       ; $81A4C4  8D 8C 0B     Mx
    LDA $00DC                       ; $81A4C7  AD DC 00     Mx
    SBC #$002B                      ; $81A4CA  E9 2B 00     Mx
    STA $00DC                       ; $81A4CD  8D DC 00     Mx
    LDA $00DC                       ; $81A4D0  AD DC 00     Mx
    CMP #$0070                      ; $81A4D3  C9 70 00     Mx
    BCS L_81A504                    ; $81A4D6  B0 2C        Mx
    SEC                             ; $81A4D8  38           Mx
    SBC #$0050                      ; $81A4D9  E9 50 00     Mx
    BMI L_81A504                    ; $81A4DC  30 26        Mx
    LDA $0726                       ; $81A4DE  AD 26 07     Mx
    SEC                             ; $81A4E1  38           Mx
    SBC #$0374                      ; $81A4E2  E9 74 03     Mx
    BPL L_81A4EE                    ; $81A4E5  10 07        Mx
    EOR #$FFFF                      ; $81A4E7  49 FF FF     Mx
    CLC                             ; $81A4EA  18           Mx
    ADC #$0001                      ; $81A4EB  69 01 00     Mx
L_81A4EE:
    CMP #$000A                      ; $81A4EE  C9 0A 00     Mx
    BPL L_81A507                    ; $81A4F1  10 14        Mx
    LDA $071E                       ; $81A4F3  AD 1E 07     Mx
    BPL L_81A4FF                    ; $81A4F6  10 07        Mx
    EOR #$FFFF                      ; $81A4F8  49 FF FF     Mx
    CLC                             ; $81A4FB  18           Mx
    ADC #$0001                      ; $81A4FC  69 01 00     Mx
L_81A4FF:
    CMP #$00FA                      ; $81A4FF  C9 FA 00     Mx
    BCC L_81A507                    ; $81A502  90 03        Mx
L_81A504:
    JMP L_81A8FA                    ; $81A504  4C FA A8     Mx
L_81A507:
    LDA $0BE4                       ; $81A507  AD E4 0B     Mx
    STA $00B2                       ; $81A50A  8D B2 00     Mx
    BPL L_81A519                    ; $81A50D  10 0A        Mx
    EOR #$FFFF                      ; $81A50F  49 FF FF     Mx
    CLC                             ; $81A512  18           Mx
    ADC #$0001                      ; $81A513  69 01 00     Mx
    STA $00A6                       ; $81A516  8D A6 00     Mx
L_81A519:
    LDX #$19                        ; $81A519  A2 19        Mx
    STX $4202                       ; $81A51B  8E 02 42     Mx
    LDX $00A6                       ; $81A51E  AE A6 00     Mx
    STX $4203                       ; $81A521  8E 03 42     Mx
    NOP                             ; $81A524  EA           Mx
    NOP                             ; $81A525  EA           Mx
    NOP                             ; $81A526  EA           Mx
    NOP                             ; $81A527  EA           Mx
    LDA $4216                       ; $81A528  AD 16 42     Mx
    STA $00A8                       ; $81A52B  8D A8 00     Mx
    LDX #$19                        ; $81A52E  A2 19        Mx
    STX $4202                       ; $81A530  8E 02 42     Mx
    LDX $00A7                       ; $81A533  AE A7 00     Mx
    STX $4203                       ; $81A536  8E 03 42     Mx
    NOP                             ; $81A539  EA           Mx
    NOP                             ; $81A53A  EA           Mx
    STZ $00F4                       ; $81A53B  9C F4 00     Mx
    STZ $00F2                       ; $81A53E  9C F2 00     Mx
    LDA $4216                       ; $81A541  AD 16 42     Mx
    STA $00F3                       ; $81A544  8D F3 00     Mx
    LDA $00F2                       ; $81A547  AD F2 00     Mx
    CLC                             ; $81A54A  18           Mx
    ADC $00A8                       ; $81A54B  6D A8 00     Mx
    STA $00F2                       ; $81A54E  8D F2 00     Mx
    LDA $00F4                       ; $81A551  AD F4 00     Mx
    ADC #$0000                      ; $81A554  69 00 00     Mx
    STA $00F4                       ; $81A557  8D F4 00     Mx
    LDA $00B2                       ; $81A55A  AD B2 00     Mx
    BPL L_81A578                    ; $81A55D  10 19        Mx
    LDA $00F2                       ; $81A55F  AD F2 00     Mx
    EOR #$FFFF                      ; $81A562  49 FF FF     Mx
    CLC                             ; $81A565  18           Mx
    ADC #$0001                      ; $81A566  69 01 00     Mx
    STA $00F2                       ; $81A569  8D F2 00     Mx
    LDA $00F4                       ; $81A56C  AD F4 00     Mx
    EOR #$FFFF                      ; $81A56F  49 FF FF     Mx
    ADC #$0000                      ; $81A572  69 00 00     Mx
    STA $00F4                       ; $81A575  8D F4 00     Mx
L_81A578:
    LDA $0BD9                       ; $81A578  AD D9 0B     Mx
    CLC                             ; $81A57B  18           Mx
    ADC $00F3                       ; $81A57C  6D F3 00     Mx
    STA $00E2                       ; $81A57F  8D E2 00     Mx
    LDA $0BEC                       ; $81A582  AD EC 0B     Mx
    STA $00B2                       ; $81A585  8D B2 00     Mx
    BPL L_81A594                    ; $81A588  10 0A        Mx
    EOR #$FFFF                      ; $81A58A  49 FF FF     Mx
    CLC                             ; $81A58D  18           Mx
    ADC #$0001                      ; $81A58E  69 01 00     Mx
    STA $00A6                       ; $81A591  8D A6 00     Mx
L_81A594:
    LDX #$19                        ; $81A594  A2 19        Mx
    STX $4202                       ; $81A596  8E 02 42     Mx
    LDX $00A6                       ; $81A599  AE A6 00     Mx
    STX $4203                       ; $81A59C  8E 03 42     Mx
    NOP                             ; $81A59F  EA           Mx
    NOP                             ; $81A5A0  EA           Mx
    NOP                             ; $81A5A1  EA           Mx
    NOP                             ; $81A5A2  EA           Mx
    LDA $4216                       ; $81A5A3  AD 16 42     Mx
    STA $00A8                       ; $81A5A6  8D A8 00     Mx
    LDX #$19                        ; $81A5A9  A2 19        Mx
    STX $4202                       ; $81A5AB  8E 02 42     Mx
    LDX $00A7                       ; $81A5AE  AE A7 00     Mx
    STX $4203                       ; $81A5B1  8E 03 42     Mx
    NOP                             ; $81A5B4  EA           Mx
    NOP                             ; $81A5B5  EA           Mx
    STZ $00F4                       ; $81A5B6  9C F4 00     Mx
    STZ $00F2                       ; $81A5B9  9C F2 00     Mx
    LDA $4216                       ; $81A5BC  AD 16 42     Mx
    STA $00F3                       ; $81A5BF  8D F3 00     Mx
    LDA $00F2                       ; $81A5C2  AD F2 00     Mx
    CLC                             ; $81A5C5  18           Mx
    ADC $00A8                       ; $81A5C6  6D A8 00     Mx
    STA $00F2                       ; $81A5C9  8D F2 00     Mx
    LDA $00F4                       ; $81A5CC  AD F4 00     Mx
    ADC #$0000                      ; $81A5CF  69 00 00     Mx
    STA $00F4                       ; $81A5D2  8D F4 00     Mx
    LDA $00B2                       ; $81A5D5  AD B2 00     Mx
    BPL L_81A5F3                    ; $81A5D8  10 19        Mx
    LDA $00F2                       ; $81A5DA  AD F2 00     Mx
    EOR #$FFFF                      ; $81A5DD  49 FF FF     Mx
    CLC                             ; $81A5E0  18           Mx
    ADC #$0001                      ; $81A5E1  69 01 00     Mx
    STA $00F2                       ; $81A5E4  8D F2 00     Mx
    LDA $00F4                       ; $81A5E7  AD F4 00     Mx
    EOR #$FFFF                      ; $81A5EA  49 FF FF     Mx
    ADC #$0000                      ; $81A5ED  69 00 00     Mx
    STA $00F4                       ; $81A5F0  8D F4 00     Mx
L_81A5F3:
    LDA $0BE1                       ; $81A5F3  AD E1 0B     Mx
    CLC                             ; $81A5F6  18           Mx
    ADC $00F3                       ; $81A5F7  6D F3 00     Mx
    STA $00E5                       ; $81A5FA  8D E5 00     Mx
    LDA $00E5                       ; $81A5FD  AD E5 00     Mx
    SEC                             ; $81A600  38           Mx
    SBC #$0374                      ; $81A601  E9 74 03     Mx
    BPL L_81A60D                    ; $81A604  10 07        Mx
    EOR #$FFFF                      ; $81A606  49 FF FF     Mx
    CLC                             ; $81A609  18           Mx
    ADC #$0001                      ; $81A60A  69 01 00     Mx
L_81A60D:
    STA $00D3                       ; $81A60D  8D D3 00     Mx
    CMP #$0020                      ; $81A610  C9 20 00     Mx
    BPL L_81A63C                    ; $81A613  10 27        Mx
    LDA $00E2                       ; $81A615  AD E2 00     Mx
    BPL L_81A621                    ; $81A618  10 07        Mx
    EOR #$FFFF                      ; $81A61A  49 FF FF     Mx
    CLC                             ; $81A61D  18           Mx
    ADC #$0001                      ; $81A61E  69 01 00     Mx
L_81A621:
    CMP #$00F8                      ; $81A621  C9 F8 00     Mx
    BCS L_81A63C                    ; $81A624  B0 16        Mx
    STA $00D0                       ; $81A626  8D D0 00     Mx
    LDA $00D3                       ; $81A629  AD D3 00     Mx
    CMP #$000C                      ; $81A62C  C9 0C 00     Mx
    BCC L_81A634                    ; $81A62F  90 03        Mx
L_81A631:
    JMP L_81A8FA                    ; $81A631  4C FA A8     Mx
L_81A634:
    LDA $00D0                       ; $81A634  AD D0 00     Mx
    CMP #$00FA                      ; $81A637  C9 FA 00     Mx
    BCS L_81A631                    ; $81A63A  B0 F5        Mx
L_81A63C:
    LDA $071E                       ; $81A63C  AD 1E 07     Mx
    STA $00D0                       ; $81A63F  8D D0 00     Mx
    LDA $0726                       ; $81A642  AD 26 07     Mx
    STA $00D3                       ; $81A645  8D D3 00     Mx
    JSL $00AEF9                     ; $81A648  22 F9 AE 00  Mx
    LDA $00D3                       ; $81A64C  AD D3 00     Mx
    CMP #$0030                      ; $81A64F  C9 30 00     Mx
    BCS L_81A631                    ; $81A652  B0 DD        Mx
    LDX $00D0                       ; $81A654  AE D0 00     Mx
    LDA $A7E377,X                   ; $81A657  BF 77 E3 A7  Mx
    AND #$0007                      ; $81A65B  29 07 00     Mx
    STA $0708                       ; $81A65E  8D 08 07     Mx
    LDA #$0001                      ; $81A661  A9 01 00     Mx
    STA $0770                       ; $81A664  8D 70 07     Mx
    LDA $06F0                       ; $81A667  AD F0 06     Mx
    AND #$00FF                      ; $81A66A  29 FF 00     Mx
    STA $0A9C                       ; $81A66D  8D 9C 0A     Mx
    JMP L_81A8FA                    ; $81A670  4C FA A8     Mx
L_81A673:
    LDA $00DC                       ; $81A673  AD DC 00     Mx
    STA $00F6                       ; $81A676  8D F6 00     Mx
    LDA #$0019                      ; $81A679  A9 19 00     Mx
    STA $00DC                       ; $81A67C  8D DC 00     Mx
    LDA $071E                       ; $81A67F  AD 1E 07     Mx
    SEC                             ; $81A682  38           Mx
    SBC $00E2                       ; $81A683  ED E2 00     Mx
    BPL L_81A68F                    ; $81A686  10 07        Mx
    EOR #$FFFF                      ; $81A688  49 FF FF     Mx
    CLC                             ; $81A68B  18           Mx
    ADC #$0001                      ; $81A68C  69 01 00     Mx
L_81A68F:
    STA $00D9                       ; $81A68F  8D D9 00     Mx
    LDA $0726                       ; $81A692  AD 26 07     Mx
    SEC                             ; $81A695  38           Mx
    SBC $00E5                       ; $81A696  ED E5 00     Mx
    BPL L_81A6A2                    ; $81A699  10 07        Mx
    EOR #$FFFF                      ; $81A69B  49 FF FF     Mx
    CLC                             ; $81A69E  18           Mx
    ADC #$0001                      ; $81A69F  69 01 00     Mx
L_81A6A2:
    STA $00DF                       ; $81A6A2  8D DF 00     Mx
    LDA $00D9                       ; $81A6A5  AD D9 00     Mx
    STA $00E5                       ; $81A6A8  8D E5 00     Mx
    BPL L_81A6B7                    ; $81A6AB  10 0A        Mx
    EOR #$FFFF                      ; $81A6AD  49 FF FF     Mx
    CLC                             ; $81A6B0  18           Mx
    ADC #$0001                      ; $81A6B1  69 01 00     Mx
    STA $00D9                       ; $81A6B4  8D D9 00     Mx
L_81A6B7:
    LDX $00DC                       ; $81A6B7  AE DC 00     Mx
    STX $00EE                       ; $81A6BA  8E EE 00     Mx
    LDA #$0000                      ; $81A6BD  A9 00 00     Mx
    STA $00EA                       ; $81A6C0  8D EA 00     Mx
    LDA $00D9                       ; $81A6C3  AD D9 00     Mx
    STA $4204                       ; $81A6C6  8D 04 42     Mx
    LDX $00EE                       ; $81A6C9  AE EE 00     Mx
    STX $4206                       ; $81A6CC  8E 06 42     Mx
    NOP                             ; $81A6CF  EA           Mx
    NOP                             ; $81A6D0  EA           Mx
    NOP                             ; $81A6D1  EA           Mx
    NOP                             ; $81A6D2  EA           Mx
    NOP                             ; $81A6D3  EA           Mx
    NOP                             ; $81A6D4  EA           Mx
    NOP                             ; $81A6D5  EA           Mx
    STZ $00F0                       ; $81A6D6  9C F0 00     Mx
    LDA $4214                       ; $81A6D9  AD 14 42     Mx
    STA $00F2                       ; $81A6DC  8D F2 00     Mx
    LDX $4216                       ; $81A6DF  AE 16 42     Mx
    STX $00EC                       ; $81A6E2  8E EC 00     Mx
    LDA $00EB                       ; $81A6E5  AD EB 00     Mx
    STA $4204                       ; $81A6E8  8D 04 42     Mx
    LDX $00EE                       ; $81A6EB  AE EE 00     Mx
    STX $4206                       ; $81A6EE  8E 06 42     Mx
    NOP                             ; $81A6F1  EA           Mx
    NOP                             ; $81A6F2  EA           Mx
    NOP                             ; $81A6F3  EA           Mx
    NOP                             ; $81A6F4  EA           Mx
    NOP                             ; $81A6F5  EA           Mx
    NOP                             ; $81A6F6  EA           Mx
    NOP                             ; $81A6F7  EA           Mx
    STZ $00F0                       ; $81A6F8  9C F0 00     Mx
    LDA $4214                       ; $81A6FB  AD 14 42     Mx
    ORA $00F1                       ; $81A6FE  0D F1 00     Mx
    STA $00F1                       ; $81A701  8D F1 00     Mx
    LDX $4216                       ; $81A704  AE 16 42     Mx
    STX $00EB                       ; $81A707  8E EB 00     Mx
    LDA $00EA                       ; $81A70A  AD EA 00     Mx
    STA $4204                       ; $81A70D  8D 04 42     Mx
    LDX $00EE                       ; $81A710  AE EE 00     Mx
    STX $4206                       ; $81A713  8E 06 42     Mx
    NOP                             ; $81A716  EA           Mx
    NOP                             ; $81A717  EA           Mx
    NOP                             ; $81A718  EA           Mx
    NOP                             ; $81A719  EA           Mx
    NOP                             ; $81A71A  EA           Mx
    NOP                             ; $81A71B  EA           Mx
    NOP                             ; $81A71C  EA           Mx
    NOP                             ; $81A71D  EA           Mx
    LDA $4214                       ; $81A71E  AD 14 42     Mx
    ORA $00F0                       ; $81A721  0D F0 00     Mx
    STA $00F0                       ; $81A724  8D F0 00     Mx
    LDA $00F0                       ; $81A727  AD F0 00     Mx
    STA $00C2                       ; $81A72A  8D C2 00     Mx
    LDA $00F2                       ; $81A72D  AD F2 00     Mx
    STA $00C4                       ; $81A730  8D C4 00     Mx
    LDA $00E5                       ; $81A733  AD E5 00     Mx
    BPL L_81A751                    ; $81A736  10 19        Mx
    LDA $00C2                       ; $81A738  AD C2 00     Mx
    EOR #$FFFF                      ; $81A73B  49 FF FF     Mx
    CLC                             ; $81A73E  18           Mx
    ADC #$0001                      ; $81A73F  69 01 00     Mx
    STA $00C2                       ; $81A742  8D C2 00     Mx
    LDA $00C4                       ; $81A745  AD C4 00     Mx
    EOR #$FFFF                      ; $81A748  49 FF FF     Mx
    ADC #$0000                      ; $81A74B  69 00 00     Mx
    STA $00C4                       ; $81A74E  8D C4 00     Mx
L_81A751:
    LDA $00DF                       ; $81A751  AD DF 00     Mx
    STA $00E5                       ; $81A754  8D E5 00     Mx
    BPL L_81A763                    ; $81A757  10 0A        Mx
    EOR #$FFFF                      ; $81A759  49 FF FF     Mx
    CLC                             ; $81A75C  18           Mx
    ADC #$0001                      ; $81A75D  69 01 00     Mx
    STA $00DF                       ; $81A760  8D DF 00     Mx
L_81A763:
    LDX $00DC                       ; $81A763  AE DC 00     Mx
    STX $00EE                       ; $81A766  8E EE 00     Mx
    LDA #$0000                      ; $81A769  A9 00 00     Mx
    STA $00EA                       ; $81A76C  8D EA 00     Mx
    LDA $00DF                       ; $81A76F  AD DF 00     Mx
    STA $4204                       ; $81A772  8D 04 42     Mx
    LDX $00EE                       ; $81A775  AE EE 00     Mx
    STX $4206                       ; $81A778  8E 06 42     Mx
    NOP                             ; $81A77B  EA           Mx
    NOP                             ; $81A77C  EA           Mx
    NOP                             ; $81A77D  EA           Mx
    NOP                             ; $81A77E  EA           Mx
    NOP                             ; $81A77F  EA           Mx
    NOP                             ; $81A780  EA           Mx
    NOP                             ; $81A781  EA           Mx
    STZ $00F0                       ; $81A782  9C F0 00     Mx
    LDA $4214                       ; $81A785  AD 14 42     Mx
    STA $00F2                       ; $81A788  8D F2 00     Mx
    LDX $4216                       ; $81A78B  AE 16 42     Mx
    STX $00EC                       ; $81A78E  8E EC 00     Mx
    LDA $00EB                       ; $81A791  AD EB 00     Mx
    STA $4204                       ; $81A794  8D 04 42     Mx
    LDX $00EE                       ; $81A797  AE EE 00     Mx
    STX $4206                       ; $81A79A  8E 06 42     Mx
    NOP                             ; $81A79D  EA           Mx
    NOP                             ; $81A79E  EA           Mx
    NOP                             ; $81A79F  EA           Mx
    NOP                             ; $81A7A0  EA           Mx
    NOP                             ; $81A7A1  EA           Mx
    NOP                             ; $81A7A2  EA           Mx
    NOP                             ; $81A7A3  EA           Mx
    STZ $00F0                       ; $81A7A4  9C F0 00     Mx
    LDA $4214                       ; $81A7A7  AD 14 42     Mx
    ORA $00F1                       ; $81A7AA  0D F1 00     Mx
    STA $00F1                       ; $81A7AD  8D F1 00     Mx
    LDX $4216                       ; $81A7B0  AE 16 42     Mx
    STX $00EB                       ; $81A7B3  8E EB 00     Mx
    LDA $00EA                       ; $81A7B6  AD EA 00     Mx
    STA $4204                       ; $81A7B9  8D 04 42     Mx
    LDX $00EE                       ; $81A7BC  AE EE 00     Mx
    STX $4206                       ; $81A7BF  8E 06 42     Mx
    NOP                             ; $81A7C2  EA           Mx
    NOP                             ; $81A7C3  EA           Mx
    NOP                             ; $81A7C4  EA           Mx
    NOP                             ; $81A7C5  EA           Mx
    NOP                             ; $81A7C6  EA           Mx
    NOP                             ; $81A7C7  EA           Mx
    NOP                             ; $81A7C8  EA           Mx
    NOP                             ; $81A7C9  EA           Mx
    LDA $4214                       ; $81A7CA  AD 14 42     Mx
    ORA $00F0                       ; $81A7CD  0D F0 00     Mx
    STA $00F0                       ; $81A7D0  8D F0 00     Mx
    LDA $00F0                       ; $81A7D3  AD F0 00     Mx
    STA $00C6                       ; $81A7D6  8D C6 00     Mx
    LDA $00F2                       ; $81A7D9  AD F2 00     Mx
    STA $00C8                       ; $81A7DC  8D C8 00     Mx
    LDA $00E5                       ; $81A7DF  AD E5 00     Mx
    BPL L_81A7FD                    ; $81A7E2  10 19        Mx
    LDA $00C6                       ; $81A7E4  AD C6 00     Mx
    EOR #$FFFF                      ; $81A7E7  49 FF FF     Mx
    CLC                             ; $81A7EA  18           Mx
    ADC #$0001                      ; $81A7EB  69 01 00     Mx
    STA $00C6                       ; $81A7EE  8D C6 00     Mx
    LDA $00C8                       ; $81A7F1  AD C8 00     Mx
    EOR #$FFFF                      ; $81A7F4  49 FF FF     Mx
    ADC #$0000                      ; $81A7F7  69 00 00     Mx
    STA $00C8                       ; $81A7FA  8D C8 00     Mx
L_81A7FD:
    LDA $00C2                       ; $81A7FD  AD C2 00     Mx
    STA $0728                       ; $81A800  8D 28 07     Mx
    LDA $00C4                       ; $81A803  AD C4 00     Mx
    STA $072A                       ; $81A806  8D 2A 07     Mx
    LDA $00C6                       ; $81A809  AD C6 00     Mx
    STA $0730                       ; $81A80C  8D 30 07     Mx
    LDA $00C8                       ; $81A80F  AD C8 00     Mx
    STA $0732                       ; $81A812  8D 32 07     Mx
    LDA #$0080                      ; $81A815  A9 80 00     Mx
    STA $00D3                       ; $81A818  8D D3 00     Mx
    SEP #$20                        ; $81A81B  E2 20        Mx
    LDA $00DC                       ; $81A81D  AD DC 00     mx
    STA $4202                       ; $81A820  8D 02 42     mx
    LDA $00D3                       ; $81A823  AD D3 00     mx
    STA $4203                       ; $81A826  8D 03 42     mx
    NOP                             ; $81A829  EA           mx
    NOP                             ; $81A82A  EA           mx
    NOP                             ; $81A82B  EA           mx
    REP #$20                        ; $81A82C  C2 20        mx
    LDA $4216                       ; $81A82E  AD 16 42     Mx
    STA $00D3                       ; $81A831  8D D3 00     Mx
    STA $00A8                       ; $81A834  8D A8 00     Mx
    LDA #$0012                      ; $81A837  A9 12 00     Mx
    STA $00D3                       ; $81A83A  8D D3 00     Mx
    SEP #$20                        ; $81A83D  E2 20        Mx
    LDA $00DC                       ; $81A83F  AD DC 00     mx
    STA $4202                       ; $81A842  8D 02 42     mx
    LDA $00D3                       ; $81A845  AD D3 00     mx
    STA $4203                       ; $81A848  8D 03 42     mx
    NOP                             ; $81A84B  EA           mx
    NOP                             ; $81A84C  EA           mx
    NOP                             ; $81A84D  EA           mx
    REP #$20                        ; $81A84E  C2 20        mx
    LDA $4216                       ; $81A850  AD 16 42     Mx
    STA $00D3                       ; $81A853  8D D3 00     Mx
    STZ $0B82                       ; $81A856  9C 82 0B     Mx
    STZ $0B80                       ; $81A859  9C 80 0B     Mx
    STA $0B81                       ; $81A85C  8D 81 0B     Mx
    LDA $0B80                       ; $81A85F  AD 80 0B     Mx
    CLC                             ; $81A862  18           Mx
    ADC $00A8                       ; $81A863  6D A8 00     Mx
    STA $0B80                       ; $81A866  8D 80 0B     Mx
    LDA $0B82                       ; $81A869  AD 82 0B     Mx
    ADC #$0000                      ; $81A86C  69 00 00     Mx
    STA $0B82                       ; $81A86F  8D 82 0B     Mx
    LDA $00F6                       ; $81A872  AD F6 00     Mx
    SEC                             ; $81A875  38           Mx
    SBC #$0038                      ; $81A876  E9 38 00     Mx
    STA $00F6                       ; $81A879  8D F6 00     Mx
    LDA $0720                       ; $81A87C  AD 20 07     Mx
    SEC                             ; $81A87F  38           Mx
    SBC #$0000                      ; $81A880  E9 00 00     Mx
    STA $00C2                       ; $81A883  8D C2 00     Mx
    LDA $0722                       ; $81A886  AD 22 07     Mx
    SBC $00F6                       ; $81A889  ED F6 00     Mx
    STA $00C4                       ; $81A88C  8D C4 00     Mx
    STA $00E5                       ; $81A88F  8D E5 00     Mx
    BPL L_81A8AD                    ; $81A892  10 19        Mx
    LDA $00C2                       ; $81A894  AD C2 00     Mx
    EOR #$FFFF                      ; $81A897  49 FF FF     Mx
    CLC                             ; $81A89A  18           Mx
    ADC #$0001                      ; $81A89B  69 01 00     Mx
    STA $00C2                       ; $81A89E  8D C2 00     Mx
    LDA $00C4                       ; $81A8A1  AD C4 00     Mx
    EOR #$FFFF                      ; $81A8A4  49 FF FF     Mx
    ADC #$0000                      ; $81A8A7  69 00 00     Mx
    STA $00C4                       ; $81A8AA  8D C4 00     Mx
L_81A8AD:
    LDA $00C3                       ; $81A8AD  AD C3 00     Mx
    STA $4204                       ; $81A8B0  8D 04 42     Mx
    LDX $00DC                       ; $81A8B3  AE DC 00     Mx
    STX $4206                       ; $81A8B6  8E 06 42     Mx
    NOP                             ; $81A8B9  EA           Mx
    NOP                             ; $81A8BA  EA           Mx
    NOP                             ; $81A8BB  EA           Mx
    NOP                             ; $81A8BC  EA           Mx
    STZ $00EA                       ; $81A8BD  9C EA 00     Mx
    STZ $00EC                       ; $81A8C0  9C EC 00     Mx
    LDA $00E5                       ; $81A8C3  AD E5 00     Mx
    BPL L_81A8D5                    ; $81A8C6  10 0D        Mx
    LDA $4214                       ; $81A8C8  AD 14 42     Mx
    EOR #$FFFF                      ; $81A8CB  49 FF FF     Mx
    CLC                             ; $81A8CE  18           Mx
    ADC #$0001                      ; $81A8CF  69 01 00     Mx
    JMP L_81A8D8                    ; $81A8D2  4C D8 A8     Mx
L_81A8D5:
    LDA $4214                       ; $81A8D5  AD 14 42     Mx
L_81A8D8:
    STA $00EB                       ; $81A8D8  8D EB 00     Mx
    LDA $0B80                       ; $81A8DB  AD 80 0B     Mx
    CLC                             ; $81A8DE  18           Mx
    ADC $00EA                       ; $81A8DF  6D EA 00     Mx
    STA $0B80                       ; $81A8E2  8D 80 0B     Mx
    LDA $0B82                       ; $81A8E5  AD 82 0B     Mx
    ADC $00EC                       ; $81A8E8  6D EC 00     Mx
    STA $0B82                       ; $81A8EB  8D 82 0B     Mx
    LDA $0B80                       ; $81A8EE  AD 80 0B     Mx
    STA $072C                       ; $81A8F1  8D 2C 07     Mx
    LDA $0B82                       ; $81A8F4  AD 82 0B     Mx
    STA $072E                       ; $81A8F7  8D 2E 07     Mx
L_81A8FA:
    LDX $06F4                       ; $81A8FA  AE F4 06     Mx
    JSR ($A901,X)                   ; $81A8FD  FC 01 A9     Mx
    RTS                             ; $81A900  60           Mx
    db $43,$A9,$F6,$A9,$F6,$A9,$8A,$AD,$A4,$AE,$C4,$B3,$A7,$B4,$CF,$B1 ; $81A901
    db $95,$B0,$C4,$B3,$43,$A9,$C4,$B3,$8A,$AD,$C4,$B3,$CF,$B1,$68,$B3 ; $81A911
    db $61,$B6,$61,$B6,$67,$B5,$F6,$A9,$F6,$A9,$43,$A9,$D6,$B7,$4A,$B8 ; $81A921
    db $67,$BA,$82,$BB,$95,$B0,$DF,$BB,$44,$CA,$32,$C2,$3B,$CB,$C4,$B3 ; $81A931
    db $C4,$B3                                                         ; $81A941
L_81A943:
    LDA $0794                       ; $81A943  AD 94 07     Mx
    BEQ L_81A94E                    ; $81A946  F0 06        Mx
    LDA #$000C                      ; $81A948  A9 0C 00     Mx
    JMP L_81A9A9                    ; $81A94B  4C A9 A9     Mx
L_81A94E:
    LDA $076C                       ; $81A94E  AD 6C 07     Mx
    AND #$0F00                      ; $81A951  29 00 0F     Mx
    BEQ L_81A95C                    ; $81A954  F0 06        Mx
L_81A956:
    LDA #$0002                      ; $81A956  A9 02 00     Mx
    JMP L_81A9A9                    ; $81A959  4C A9 A9     Mx
L_81A95C:
    LDA $072A                       ; $81A95C  AD 2A 07     Mx
    ORA $0728                       ; $81A95F  0D 28 07     Mx
    ORA $0732                       ; $81A962  0D 32 07     Mx
    ORA $0730                       ; $81A965  0D 30 07     Mx
    ORA $072E                       ; $81A968  0D 2E 07     Mx
    ORA $072C                       ; $81A96B  0D 2C 07     Mx
    BNE L_81A956                    ; $81A96E  D0 E6        Mx
    LDA $06F6                       ; $81A970  AD F6 06     Mx
    BEQ L_81A97A                    ; $81A973  F0 05        Mx
    DEC $06F6                       ; $81A975  CE F6 06     Mx
    BNE L_81A988                    ; $81A978  D0 0E        Mx
L_81A97A:
    LDA $075E                       ; $81A97A  AD 5E 07     Mx
    TAX                             ; $81A97D  AA           Mx
    LDA $A7E377,X                   ; $81A97E  BF 77 E3 A7  Mx
    AND #$0007                      ; $81A982  29 07 00     Mx
    STA $0708                       ; $81A985  8D 08 07     Mx
L_81A988:
    LDA $0770                       ; $81A988  AD 70 07     Mx
    BEQ L_81A993                    ; $81A98B  F0 06        Mx
    JSR L_81CC7D                    ; $81A98D  20 7D CC     Mx
    JMP L_81A9F5                    ; $81A990  4C F5 A9     Mx
L_81A993:
    LDA $0774                       ; $81A993  AD 74 07     Mx
    BEQ L_81A99E                    ; $81A996  F0 06        Mx
    JSR L_81D4A8                    ; $81A998  20 A8 D4     Mx
    JMP L_81A9F5                    ; $81A99B  4C F5 A9     Mx
L_81A99E:
    LDA $075C                       ; $81A99E  AD 5C 07     Mx
    CMP #$0046                      ; $81A9A1  C9 46 00     Mx
    BCC L_81A9C4                    ; $81A9A4  90 1E        Mx
    LDA #$0000                      ; $81A9A6  A9 00 00     Mx
L_81A9A9:
    STA $06F4                       ; $81A9A9  8D F4 06     Mx
    LDA #$FFFF                      ; $81A9AC  A9 FF FF     Mx
    STA $06FA                       ; $81A9AF  8D FA 06     Mx
    STZ $06FC                       ; $81A9B2  9C FC 06     Mx
    STZ $0742                       ; $81A9B5  9C 42 07     Mx
    STZ $06F8                       ; $81A9B8  9C F8 06     Mx
    LDA #$FFF8                      ; $81A9BB  A9 F8 FF     Mx
    STA $06FE                       ; $81A9BE  8D FE 06     Mx
    JMP L_81A9F5                    ; $81A9C1  4C F5 A9     Mx
L_81A9C4:
    LDA $077E                       ; $81A9C4  AD 7E 07     Mx
    BNE L_81A9E6                    ; $81A9C7  D0 1D        Mx
    LDA $0C19                       ; $81A9C9  AD 19 0C     Mx
    BEQ L_81A9E6                    ; $81A9CC  F0 18        Mx
    LDA $071E                       ; $81A9CE  AD 1E 07     Mx
    SEC                             ; $81A9D1  38           Mx
    SBC $0BD9                       ; $81A9D2  ED D9 0B     Mx
    BCS L_81A9E6                    ; $81A9D5  B0 0F        Mx
    LDA $071E                       ; $81A9D7  AD 1E 07     Mx
    BPL L_81A9E6                    ; $81A9DA  10 0A        Mx
    SEC                             ; $81A9DC  38           Mx
    SBC $A7E784                     ; $81A9DD  EF 84 E7 A7  Mx
    BCS L_81A9E6                    ; $81A9E1  B0 03        Mx
    JMP L_81A9EF                    ; $81A9E3  4C EF A9     Mx
L_81A9E6:
    LDA #$0014                      ; $81A9E6  A9 14 00     Mx
    STA $06F4                       ; $81A9E9  8D F4 06     Mx
    JMP L_81A9F5                    ; $81A9EC  4C F5 A9     Mx
L_81A9EF:
    LDA #$002A                      ; $81A9EF  A9 2A 00     Mx
    STA $06F4                       ; $81A9F2  8D F4 06     Mx
L_81A9F5:
    RTS                             ; $81A9F5  60           Mx
L_81A9F6:
    STZ $072C                       ; $81A9F6  9C 2C 07     Mx
    STZ $072E                       ; $81A9F9  9C 2E 07     Mx
    LDX $0708                       ; $81A9FC  AE 08 07     Mx
    LDA $A7E35F,X                   ; $81A9FF  BF 5F E3 A7  Mx
    STA $00EA                       ; $81AA03  8D EA 00     Mx
    SEP #$20                        ; $81AA06  E2 20        Mx
    LDA $076D                       ; $81AA08  AD 6D 07     mx
    AND #$0F                        ; $81AA0B  29 0F        mx
    BNE L_81AA12                    ; $81AA0D  D0 03        mx
    LDA $00EA                       ; $81AA0F  AD EA 00     mx
L_81AA12:
    TAX                             ; $81AA12  AA           mx
    LDA $A7E367,X                   ; $81AA13  BF 67 E3 A7  mx
    AND #$07                        ; $81AA17  29 07        mx
    STA $0708                       ; $81AA19  8D 08 07     mx
    REP #$20                        ; $81AA1C  C2 20        mx
    LDA $077E                       ; $81AA1E  AD 7E 07     Mx
    BNE L_81AA45                    ; $81AA21  D0 22        Mx
    LDA $0C19                       ; $81AA23  AD 19 0C     Mx
    BEQ L_81AA45                    ; $81AA26  F0 1D        Mx
    LDA $071E                       ; $81AA28  AD 1E 07     Mx
    SEC                             ; $81AA2B  38           Mx
    SBC $0BD9                       ; $81AA2C  ED D9 0B     Mx
    BCS L_81AA45                    ; $81AA2F  B0 14        Mx
    LDA $071E                       ; $81AA31  AD 1E 07     Mx
    BPL L_81AA45                    ; $81AA34  10 0F        Mx
    SEC                             ; $81AA36  38           Mx
    SBC $A7E784                     ; $81AA37  EF 84 E7 A7  Mx
    BCS L_81AA45                    ; $81AA3B  B0 08        Mx
    LDA $075C                       ; $81AA3D  AD 5C 07     Mx
    CMP #$0046                      ; $81AA40  C9 46 00     Mx
    BCC L_81AA62                    ; $81AA43  90 1D        Mx
L_81AA45:
    LDA $0794                       ; $81AA45  AD 94 07     Mx
    BNE L_81AA53                    ; $81AA48  D0 09        Mx
    LDA #$0002                      ; $81AA4A  A9 02 00     Mx
    STA $06F4                       ; $81AA4D  8D F4 06     Mx
    JMP L_81AAD3                    ; $81AA50  4C D3 AA     Mx
L_81AA53:
    LDA #$0004                      ; $81AA53  A9 04 00     Mx
    STA $06F4                       ; $81AA56  8D F4 06     Mx
    LDA #$0001                      ; $81AA59  A9 01 00     Mx
    STA $0782                       ; $81AA5C  8D 82 07     Mx
    JMP L_81AAD3                    ; $81AA5F  4C D3 AA     Mx
L_81AA62:
    LDX $075E                       ; $81AA62  AE 5E 07     Mx
    LDA $A7E377,X                   ; $81AA65  BF 77 E3 A7  Mx
    AND #$0007                      ; $81AA69  29 07 00     Mx
    STA $00A6                       ; $81AA6C  8D A6 00     Mx
    CMP $0708                       ; $81AA6F  CD 08 07     Mx
    BEQ L_81AABA                    ; $81AA72  F0 46        Mx
    CLC                             ; $81AA74  18           Mx
    ADC #$0004                      ; $81AA75  69 04 00     Mx
    AND #$0007                      ; $81AA78  29 07 00     Mx
    CMP $0708                       ; $81AA7B  CD 08 07     Mx
    BEQ L_81AABA                    ; $81AA7E  F0 3A        Mx
    LDA $06F4                       ; $81AA80  AD F4 06     Mx
    CMP #$0026                      ; $81AA83  C9 26 00     Mx
    BEQ L_81AACD                    ; $81AA86  F0 45        Mx
    CMP #$0002                      ; $81AA88  C9 02 00     Mx
    BEQ L_81AA9C                    ; $81AA8B  F0 0F        Mx
    LDA #$0026                      ; $81AA8D  A9 26 00     Mx
    STA $06F4                       ; $81AA90  8D F4 06     Mx
    JMP L_81AACD                    ; $81AA93  4C CD AA     Mx
L_81AA96:
    LDA #$0028                      ; $81AA96  A9 28 00     Mx
    JMP L_81AA9F                    ; $81AA99  4C 9F AA     Mx
L_81AA9C:
    LDA #$0026                      ; $81AA9C  A9 26 00     Mx
L_81AA9F:
    STA $06F4                       ; $81AA9F  8D F4 06     Mx
    LDA #$FFFF                      ; $81AAA2  A9 FF FF     Mx
    STA $06FA                       ; $81AAA5  8D FA 06     Mx
    STZ $06FC                       ; $81AAA8  9C FC 06     Mx
    STZ $0742                       ; $81AAAB  9C 42 07     Mx
    STZ $06F8                       ; $81AAAE  9C F8 06     Mx
    LDA #$FFF8                      ; $81AAB1  A9 F8 FF     Mx
    STA $06FE                       ; $81AAB4  8D FE 06     Mx
    JMP L_81AACD                    ; $81AAB7  4C CD AA     Mx
L_81AABA:
    LDA $06F4                       ; $81AABA  AD F4 06     Mx
    CMP #$0028                      ; $81AABD  C9 28 00     Mx
    BEQ L_81AACD                    ; $81AAC0  F0 0B        Mx
    CMP #$0002                      ; $81AAC2  C9 02 00     Mx
    BEQ L_81AA96                    ; $81AAC5  F0 CF        Mx
    LDA #$0028                      ; $81AAC7  A9 28 00     Mx
    STA $06F4                       ; $81AACA  8D F4 06     Mx
L_81AACD:
    LDA $00A6                       ; $81AACD  AD A6 00     Mx
    STA $0708                       ; $81AAD0  8D 08 07     Mx
L_81AAD3:
    LDX #$00                        ; $81AAD3  A2 00        Mx
    LDA $076C                       ; $81AAD5  AD 6C 07     Mx
    STA $00E8                       ; $81AAD8  8D E8 00     Mx
    AND #$0F00                      ; $81AADB  29 00 0F     Mx
    BNE L_81AB1D                    ; $81AADE  D0 3D        Mx
    LDA $072A                       ; $81AAE0  AD 2A 07     Mx
    ORA $0728                       ; $81AAE3  0D 28 07     Mx
    ORA $0732                       ; $81AAE6  0D 32 07     Mx
    ORA $0730                       ; $81AAE9  0D 30 07     Mx
    BNE L_81AB1D                    ; $81AAEC  D0 2F        Mx
    LDA #$003C                      ; $81AAEE  A9 3C 00     Mx
    STA $06F6                       ; $81AAF1  8D F6 06     Mx
    LDA $0794                       ; $81AAF4  AD 94 07     Mx
    BNE L_81AAFF                    ; $81AAF7  D0 06        Mx
    LDA #$0000                      ; $81AAF9  A9 00 00     Mx
    JMP L_81AB02                    ; $81AAFC  4C 02 AB     Mx
L_81AAFF:
    LDA #$0006                      ; $81AAFF  A9 06 00     Mx
L_81AB02:
    STA $06F4                       ; $81AB02  8D F4 06     Mx
    LDA #$FFFF                      ; $81AB05  A9 FF FF     Mx
    STA $06FA                       ; $81AB08  8D FA 06     Mx
    STZ $06FC                       ; $81AB0B  9C FC 06     Mx
    STZ $0742                       ; $81AB0E  9C 42 07     Mx
    STZ $06F8                       ; $81AB11  9C F8 06     Mx
    LDA #$FFF8                      ; $81AB14  A9 F8 FF     Mx
    STA $06FE                       ; $81AB17  8D FE 06     Mx
    JMP L_81AD88                    ; $81AB1A  4C 88 AD     Mx
L_81AB1D:
    LDA $0702                       ; $81AB1D  AD 02 07     Mx
    BEQ L_81AB3C                    ; $81AB20  F0 1A        Mx
    LDA $1683                       ; $81AB22  AD 83 16     Mx
    CMP #$001B                      ; $81AB25  C9 1B 00     Mx
    BNE L_81AB33                    ; $81AB28  D0 09        Mx
    LDA $07C2                       ; $81AB2A  AD C2 07     Mx
    STA $00E5                       ; $81AB2D  8D E5 00     Mx
    JMP L_81AB99                    ; $81AB30  4C 99 AB     Mx
L_81AB33:
    LDA #$0400                      ; $81AB33  A9 00 04     Mx
    STA $00E5                       ; $81AB36  8D E5 00     Mx
    JMP L_81AB99                    ; $81AB39  4C 99 AB     Mx
L_81AB3C:
    LDA $07C2                       ; $81AB3C  AD C2 07     Mx
    STA $00E5                       ; $81AB3F  8D E5 00     Mx
    LDA $0CCB                       ; $81AB42  AD CB 0C     Mx
    CMP #$0032                      ; $81AB45  C9 32 00     Mx
    BCS L_81AB59                    ; $81AB48  B0 0F        Mx
    LDA $07CA                       ; $81AB4A  AD CA 07     Mx
    BMI L_81AB59                    ; $81AB4D  30 0A        Mx
    LDA $00E5                       ; $81AB4F  AD E5 00     Mx
    CLC                             ; $81AB52  18           Mx
    ADC #$0038                      ; $81AB53  69 38 00     Mx
    STA $00E5                       ; $81AB56  8D E5 00     Mx
L_81AB59:
    LDA $07B4                       ; $81AB59  AD B4 07     Mx
    BEQ L_81AB6D                    ; $81AB5C  F0 0F        Mx
    LDA $077E                       ; $81AB5E  AD 7E 07     Mx
    BNE L_81AB6D                    ; $81AB61  D0 0A        Mx
    LDA $00E5                       ; $81AB63  AD E5 00     Mx
    CLC                             ; $81AB66  18           Mx
    ADC #$0200                      ; $81AB67  69 00 02     Mx
    STA $00E5                       ; $81AB6A  8D E5 00     Mx
L_81AB6D:
    LDA $077E                       ; $81AB6D  AD 7E 07     Mx
    BMI L_81AB8A                    ; $81AB70  30 18        Mx
    BEQ L_81AB8A                    ; $81AB72  F0 16        Mx
    LDA $00E5                       ; $81AB74  AD E5 00     Mx
    SEC                             ; $81AB77  38           Mx
    SBC #$0028                      ; $81AB78  E9 28 00     Mx
    STA $00E5                       ; $81AB7B  8D E5 00     Mx
    LDY $0794                       ; $81AB7E  AC 94 07     Mx
    BEQ L_81AB8A                    ; $81AB81  F0 07        Mx
    SEC                             ; $81AB83  38           Mx
    SBC #$0040                      ; $81AB84  E9 40 00     Mx
    STA $00E5                       ; $81AB87  8D E5 00     Mx
L_81AB8A:
    LDA $0786                       ; $81AB8A  AD 86 07     Mx
    BEQ L_81AB99                    ; $81AB8D  F0 0A        Mx
    LDA $00E5                       ; $81AB8F  AD E5 00     Mx
    CLC                             ; $81AB92  18           Mx
    ADC #$00FC                      ; $81AB93  69 FC 00     Mx
    STA $00E5                       ; $81AB96  8D E5 00     Mx
L_81AB99:
    LDA $00E5                       ; $81AB99  AD E5 00     Mx
    LSR                             ; $81AB9C  4A           Mx
    LSR                             ; $81AB9D  4A           Mx
    STA $00A4                       ; $81AB9E  8D A4 00     Mx
    LDA $00E5                       ; $81ABA1  AD E5 00     Mx
    SEC                             ; $81ABA4  38           Mx
    SBC $00A4                       ; $81ABA5  ED A4 00     Mx
    STA $00E2                       ; $81ABA8  8D E2 00     Mx
    LDA $076C                       ; $81ABAB  AD 6C 07     Mx
    AND #$0100                      ; $81ABAE  29 00 01     Mx
    BNE L_81ABB6                    ; $81ABB1  D0 03        Mx
    JMP L_81ABFA                    ; $81ABB3  4C FA AB     Mx
L_81ABB6:
    LDX #$01                        ; $81ABB6  A2 01        Mx
    LDA $0728                       ; $81ABB8  AD 28 07     Mx
    CLC                             ; $81ABBB  18           Mx
    ADC #$8000                      ; $81ABBC  69 00 80     Mx
    STA $0728                       ; $81ABBF  8D 28 07     Mx
    LDA $072A                       ; $81ABC2  AD 2A 07     Mx
    ADC #$0000                      ; $81ABC5  69 00 00     Mx
    STA $072A                       ; $81ABC8  8D 2A 07     Mx
    BPL L_81ABD0                    ; $81ABCB  10 03        Mx
    JMP L_81ABF7                    ; $81ABCD  4C F7 AB     Mx
L_81ABD0:
    LDY $0730                       ; $81ABD0  AC 30 07     Mx
    BEQ L_81ABE6                    ; $81ABD3  F0 11        Mx
    LDA $00E5                       ; $81ABD5  AD E5 00     Mx
    LSR                             ; $81ABD8  4A           Mx
    STA $00B2                       ; $81ABD9  8D B2 00     Mx
    LDA $00E5                       ; $81ABDC  AD E5 00     Mx
    SEC                             ; $81ABDF  38           Mx
    SBC $00B2                       ; $81ABE0  ED B2 00     Mx
    STA $00E5                       ; $81ABE3  8D E5 00     Mx
L_81ABE6:
    LDA $0729                       ; $81ABE6  AD 29 07     Mx
    CMP $00E5                       ; $81ABE9  CD E5 00     Mx
    BCC L_81AC51                    ; $81ABEC  90 63        Mx
    LDA $00E5                       ; $81ABEE  AD E5 00     Mx
    STZ $0728                       ; $81ABF1  9C 28 07     Mx
    STA $0729                       ; $81ABF4  8D 29 07     Mx
L_81ABF7:
    JMP L_81AC51                    ; $81ABF7  4C 51 AC     Mx
L_81ABFA:
    LDA $076C                       ; $81ABFA  AD 6C 07     Mx
    AND #$0200                      ; $81ABFD  29 00 02     Mx
    BEQ L_81ABF7                    ; $81AC00  F0 F5        Mx
    LDX #$01                        ; $81AC02  A2 01        Mx
    LDA $0728                       ; $81AC04  AD 28 07     Mx
    SEC                             ; $81AC07  38           Mx
    SBC #$8000                      ; $81AC08  E9 00 80     Mx
    STA $0728                       ; $81AC0B  8D 28 07     Mx
    LDA $072A                       ; $81AC0E  AD 2A 07     Mx
    SBC #$0000                      ; $81AC11  E9 00 00     Mx
    STA $072A                       ; $81AC14  8D 2A 07     Mx
    BMI L_81AC1C                    ; $81AC17  30 03        Mx
    JMP L_81AC51                    ; $81AC19  4C 51 AC     Mx
L_81AC1C:
    LDY $0730                       ; $81AC1C  AC 30 07     Mx
    BEQ L_81AC32                    ; $81AC1F  F0 11        Mx
    LDA $00E5                       ; $81AC21  AD E5 00     Mx
    LSR                             ; $81AC24  4A           Mx
    STA $00B2                       ; $81AC25  8D B2 00     Mx
    LDA $00E5                       ; $81AC28  AD E5 00     Mx
    SEC                             ; $81AC2B  38           Mx
    SBC $00B2                       ; $81AC2C  ED B2 00     Mx
    STA $00E5                       ; $81AC2F  8D E5 00     Mx
L_81AC32:
    LDA $0729                       ; $81AC32  AD 29 07     Mx
    CLC                             ; $81AC35  18           Mx
    ADC $00E5                       ; $81AC36  6D E5 00     Mx
    BCS L_81AC51                    ; $81AC39  B0 16        Mx
    LDA $00E5                       ; $81AC3B  AD E5 00     Mx
    EOR #$FFFF                      ; $81AC3E  49 FF FF     Mx
    CLC                             ; $81AC41  18           Mx
    ADC #$0001                      ; $81AC42  69 01 00     Mx
    STZ $0728                       ; $81AC45  9C 28 07     Mx
    STZ $072A                       ; $81AC48  9C 2A 07     Mx
    DEC $072A                       ; $81AC4B  CE 2A 07     Mx
    STA $0729                       ; $81AC4E  8D 29 07     Mx
L_81AC51:
    CPX #$00                        ; $81AC51  E0 00        Mx
    BNE L_81AC93                    ; $81AC53  D0 3E        Mx
    LDA $072A                       ; $81AC55  AD 2A 07     Mx
    BMI L_81AC78                    ; $81AC58  30 1E        Mx
    LDA $0728                       ; $81AC5A  AD 28 07     Mx
    SEC                             ; $81AC5D  38           Mx
    SBC #$8000                      ; $81AC5E  E9 00 80     Mx
    STA $0728                       ; $81AC61  8D 28 07     Mx
    LDA $072A                       ; $81AC64  AD 2A 07     Mx
    SBC #$0000                      ; $81AC67  E9 00 00     Mx
    STA $072A                       ; $81AC6A  8D 2A 07     Mx
    BCS L_81AC93                    ; $81AC6D  B0 24        Mx
    STZ $072A                       ; $81AC6F  9C 2A 07     Mx
    STZ $0728                       ; $81AC72  9C 28 07     Mx
    JMP L_81AC93                    ; $81AC75  4C 93 AC     Mx
L_81AC78:
    LDA $0728                       ; $81AC78  AD 28 07     Mx
    CLC                             ; $81AC7B  18           Mx
    ADC #$8000                      ; $81AC7C  69 00 80     Mx
    STA $0728                       ; $81AC7F  8D 28 07     Mx
    LDA $072A                       ; $81AC82  AD 2A 07     Mx
    ADC #$0000                      ; $81AC85  69 00 00     Mx
    STA $072A                       ; $81AC88  8D 2A 07     Mx
    BCC L_81AC93                    ; $81AC8B  90 06        Mx
    STZ $072A                       ; $81AC8D  9C 2A 07     Mx
    STZ $0728                       ; $81AC90  9C 28 07     Mx
L_81AC93:
    LDX #$00                        ; $81AC93  A2 00        Mx
    LDA $076C                       ; $81AC95  AD 6C 07     Mx
    AND #$0400                      ; $81AC98  29 00 04     Mx
    BNE L_81ACA0                    ; $81AC9B  D0 03        Mx
    JMP L_81ACCE                    ; $81AC9D  4C CE AC     Mx
L_81ACA0:
    LDX #$01                        ; $81ACA0  A2 01        Mx
    LDA $0730                       ; $81ACA2  AD 30 07     Mx
    CLC                             ; $81ACA5  18           Mx
    ADC #$4000                      ; $81ACA6  69 00 40     Mx
    STA $0730                       ; $81ACA9  8D 30 07     Mx
    LDA $0732                       ; $81ACAC  AD 32 07     Mx
    ADC #$0000                      ; $81ACAF  69 00 00     Mx
    STA $0732                       ; $81ACB2  8D 32 07     Mx
    BPL L_81ACBA                    ; $81ACB5  10 03        Mx
    JMP L_81AD0F                    ; $81ACB7  4C 0F AD     Mx
L_81ACBA:
    LDA $0731                       ; $81ACBA  AD 31 07     Mx
    CMP $00E2                       ; $81ACBD  CD E2 00     Mx
    BCC L_81AD0F                    ; $81ACC0  90 4D        Mx
    LDA $00E2                       ; $81ACC2  AD E2 00     Mx
    STZ $0730                       ; $81ACC5  9C 30 07     Mx
    STA $0731                       ; $81ACC8  8D 31 07     Mx
    JMP L_81AD0F                    ; $81ACCB  4C 0F AD     Mx
L_81ACCE:
    LDA $076C                       ; $81ACCE  AD 6C 07     Mx
    AND #$0800                      ; $81ACD1  29 00 08     Mx
    BEQ L_81AD0F                    ; $81ACD4  F0 39        Mx
    LDX #$01                        ; $81ACD6  A2 01        Mx
    LDA $0730                       ; $81ACD8  AD 30 07     Mx
    SEC                             ; $81ACDB  38           Mx
    SBC #$4000                      ; $81ACDC  E9 00 40     Mx
    STA $0730                       ; $81ACDF  8D 30 07     Mx
    LDA $0732                       ; $81ACE2  AD 32 07     Mx
    SBC #$0000                      ; $81ACE5  E9 00 00     Mx
    STA $0732                       ; $81ACE8  8D 32 07     Mx
    BMI L_81ACF0                    ; $81ACEB  30 03        Mx
    JMP L_81AD0F                    ; $81ACED  4C 0F AD     Mx
L_81ACF0:
    LDA $0731                       ; $81ACF0  AD 31 07     Mx
    CLC                             ; $81ACF3  18           Mx
    ADC $00E2                       ; $81ACF4  6D E2 00     Mx
    BCS L_81AD0F                    ; $81ACF7  B0 16        Mx
    LDA $00E2                       ; $81ACF9  AD E2 00     Mx
    EOR #$FFFF                      ; $81ACFC  49 FF FF     Mx
    CLC                             ; $81ACFF  18           Mx
    ADC #$0001                      ; $81AD00  69 01 00     Mx
    STZ $0730                       ; $81AD03  9C 30 07     Mx
    STZ $0732                       ; $81AD06  9C 32 07     Mx
    DEC $0732                       ; $81AD09  CE 32 07     Mx
    STA $0731                       ; $81AD0C  8D 31 07     Mx
L_81AD0F:
    CPX #$00                        ; $81AD0F  E0 00        Mx
    BNE L_81AD51                    ; $81AD11  D0 3E        Mx
    LDA $0732                       ; $81AD13  AD 32 07     Mx
    BMI L_81AD36                    ; $81AD16  30 1E        Mx
    LDA $0730                       ; $81AD18  AD 30 07     Mx
    SEC                             ; $81AD1B  38           Mx
    SBC #$8000                      ; $81AD1C  E9 00 80     Mx
    STA $0730                       ; $81AD1F  8D 30 07     Mx
    LDA $0732                       ; $81AD22  AD 32 07     Mx
    SBC #$0000                      ; $81AD25  E9 00 00     Mx
    STA $0732                       ; $81AD28  8D 32 07     Mx
    BCS L_81AD51                    ; $81AD2B  B0 24        Mx
    STZ $0732                       ; $81AD2D  9C 32 07     Mx
    STZ $0730                       ; $81AD30  9C 30 07     Mx
    JMP L_81AD51                    ; $81AD33  4C 51 AD     Mx
L_81AD36:
    LDA $0730                       ; $81AD36  AD 30 07     Mx
    CLC                             ; $81AD39  18           Mx
    ADC #$8000                      ; $81AD3A  69 00 80     Mx
    STA $0730                       ; $81AD3D  8D 30 07     Mx
    LDA $0732                       ; $81AD40  AD 32 07     Mx
    ADC #$0000                      ; $81AD43  69 00 00     Mx
    STA $0732                       ; $81AD46  8D 32 07     Mx
    BCC L_81AD51                    ; $81AD49  90 06        Mx
    STZ $0732                       ; $81AD4B  9C 32 07     Mx
    STZ $0730                       ; $81AD4E  9C 30 07     Mx
L_81AD51:
    LDA $0794                       ; $81AD51  AD 94 07     Mx
    BEQ L_81AD67                    ; $81AD54  F0 11        Mx
    LDA $06FA                       ; $81AD56  AD FA 06     Mx
    CMP #$0006                      ; $81AD59  C9 06 00     Mx
    BNE L_81AD67                    ; $81AD5C  D0 09        Mx
    LDA $06FC                       ; $81AD5E  AD FC 06     Mx
    BNE L_81AD67                    ; $81AD61  D0 04        Mx
    JSL L_9A9608                    ; $81AD63  22 08 96 9A  Mx
L_81AD67:
    LDA $0770                       ; $81AD67  AD 70 07     Mx
    BNE L_81AD6F                    ; $81AD6A  D0 03        Mx
    JMP L_81AD80                    ; $81AD6C  4C 80 AD     Mx
L_81AD6F:
    LDA $0794                       ; $81AD6F  AD 94 07     Mx
    BNE L_81AD7A                    ; $81AD72  D0 06        Mx
    JSR L_81CC7D                    ; $81AD74  20 7D CC     Mx
    JMP L_81AD88                    ; $81AD77  4C 88 AD     Mx
L_81AD7A:
    JSR L_81D7E3                    ; $81AD7A  20 E3 D7     Mx
    JMP L_81AD88                    ; $81AD7D  4C 88 AD     Mx
L_81AD80:
    LDA $0774                       ; $81AD80  AD 74 07     Mx
    BEQ L_81AD88                    ; $81AD83  F0 03        Mx
    JSR L_81D4A8                    ; $81AD85  20 A8 D4     Mx
L_81AD88:
    RTS                             ; $81AD88  60           Mx
L_81AD89:
    RTS                             ; $81AD89  60           Mx
L_81AD8A:
    LDA $0C19                       ; $81AD8A  AD 19 0C     Mx
    CMP $06F0                       ; $81AD8D  CD F0 06     Mx
    BEQ L_81AD98                    ; $81AD90  F0 06        Mx
    LDA #$0000                      ; $81AD92  A9 00 00     Mx
    JMP L_81ADA3                    ; $81AD95  4C A3 AD     Mx
L_81AD98:
    LDA $076C                       ; $81AD98  AD 6C 07     Mx
    AND #$0F00                      ; $81AD9B  29 00 0F     Mx
    BEQ L_81ADBE                    ; $81AD9E  F0 1E        Mx
L_81ADA0:
    LDA #$0004                      ; $81ADA0  A9 04 00     Mx
L_81ADA3:
    STA $06F4                       ; $81ADA3  8D F4 06     Mx
    LDA #$FFFF                      ; $81ADA6  A9 FF FF     Mx
    STA $06FA                       ; $81ADA9  8D FA 06     Mx
    STZ $06FC                       ; $81ADAC  9C FC 06     Mx
    STZ $0742                       ; $81ADAF  9C 42 07     Mx
    STZ $06F8                       ; $81ADB2  9C F8 06     Mx
    LDA #$FFF8                      ; $81ADB5  A9 F8 FF     Mx
    STA $06FE                       ; $81ADB8  8D FE 06     Mx
    JMP L_81AEA3                    ; $81ADBB  4C A3 AE     Mx
L_81ADBE:
    LDA $06FA                       ; $81ADBE  AD FA 06     Mx
    CMP #$0002                      ; $81ADC1  C9 02 00     Mx
    BNE L_81ADCE                    ; $81ADC4  D0 08        Mx
    LDA $06F4                       ; $81ADC6  AD F4 06     Mx
    CMP #$0018                      ; $81ADC9  C9 18 00     Mx
    BEQ L_81ADE4                    ; $81ADCC  F0 16        Mx
L_81ADCE:
    LDA $0708                       ; $81ADCE  AD 08 07     Mx
    ASL                             ; $81ADD1  0A           Mx
    TAX                             ; $81ADD2  AA           Mx
    LDA $06FA                       ; $81ADD3  AD FA 06     Mx
    CMP $A6DBF3,X                   ; $81ADD6  DF F3 DB A6  Mx
    BNE L_81ADED                    ; $81ADDA  D0 11        Mx
    LDA $06F4                       ; $81ADDC  AD F4 06     Mx
    CMP #$0018                      ; $81ADDF  C9 18 00     Mx
    BEQ L_81ADED                    ; $81ADE2  F0 09        Mx
L_81ADE4:
    LDA $06FC                       ; $81ADE4  AD FC 06     Mx
    BNE L_81ADED                    ; $81ADE7  D0 04        Mx
    JSL L_9A9608                    ; $81ADE9  22 08 96 9A  Mx
L_81ADED:
    LDA $072A                       ; $81ADED  AD 2A 07     Mx
    ORA $0728                       ; $81ADF0  0D 28 07     Mx
    ORA $0732                       ; $81ADF3  0D 32 07     Mx
    ORA $0730                       ; $81ADF6  0D 30 07     Mx
    ORA $072E                       ; $81ADF9  0D 2E 07     Mx
    ORA $072C                       ; $81ADFC  0D 2C 07     Mx
    BNE L_81ADA0                    ; $81ADFF  D0 9F        Mx
    LDA $06F6                       ; $81AE01  AD F6 06     Mx
    BEQ L_81AE19                    ; $81AE04  F0 13        Mx
    DEC $06F6                       ; $81AE06  CE F6 06     Mx
    BNE L_81AE19                    ; $81AE09  D0 0E        Mx
    LDA $0756                       ; $81AE0B  AD 56 07     Mx
    TAX                             ; $81AE0E  AA           Mx
    LDA $A7E377,X                   ; $81AE0F  BF 77 E3 A7  Mx
    AND #$0007                      ; $81AE13  29 07 00     Mx
    STA $0708                       ; $81AE16  8D 08 07     Mx
L_81AE19:
    LDA $0770                       ; $81AE19  AD 70 07     Mx
    BNE L_81AE21                    ; $81AE1C  D0 03        Mx
    JMP L_81AE27                    ; $81AE1E  4C 27 AE     Mx
L_81AE21:
    JSR L_81D7E3                    ; $81AE21  20 E3 D7     Mx
    JMP L_81AEA3                    ; $81AE24  4C A3 AE     Mx
L_81AE27:
    LDA $0774                       ; $81AE27  AD 74 07     Mx
    BEQ L_81AE32                    ; $81AE2A  F0 06        Mx
    JSR L_81D4A8                    ; $81AE2C  20 A8 D4     Mx
    JMP L_81AEA3                    ; $81AE2F  4C A3 AE     Mx
L_81AE32:
    LDA $06F6                       ; $81AE32  AD F6 06     Mx
    BEQ L_81AE3A                    ; $81AE35  F0 03        Mx
    JMP L_81AEA3                    ; $81AE37  4C A3 AE     Mx
L_81AE3A:
    LDA $0768                       ; $81AE3A  AD 68 07     Mx
    CMP #$0046                      ; $81AE3D  C9 46 00     Mx
    BCC L_81AE4A                    ; $81AE40  90 08        Mx
    LDA $076A                       ; $81AE42  AD 6A 07     Mx
    CMP #$0046                      ; $81AE45  C9 46 00     Mx
    BCS L_81AE80                    ; $81AE48  B0 36        Mx
L_81AE4A:
    LDA $06F4                       ; $81AE4A  AD F4 06     Mx
    CMP #$0018                      ; $81AE4D  C9 18 00     Mx
    BNE L_81AE55                    ; $81AE50  D0 03        Mx
    JMP L_81AEA3                    ; $81AE52  4C A3 AE     Mx
L_81AE55:
    LDA #$0018                      ; $81AE55  A9 18 00     Mx
    STA $06F4                       ; $81AE58  8D F4 06     Mx
    LDA #$FFFF                      ; $81AE5B  A9 FF FF     Mx
    STA $06FA                       ; $81AE5E  8D FA 06     Mx
    STZ $06FC                       ; $81AE61  9C FC 06     Mx
    STZ $0742                       ; $81AE64  9C 42 07     Mx
    STZ $06F8                       ; $81AE67  9C F8 06     Mx
    LDA #$FFF8                      ; $81AE6A  A9 F8 FF     Mx
    STA $06FE                       ; $81AE6D  8D FE 06     Mx
    LDX $0708                       ; $81AE70  AE 08 07     Mx
    LDA $A7E4FB,X                   ; $81AE73  BF FB E4 A7  Mx
    AND #$0007                      ; $81AE77  29 07 00     Mx
    STA $0708                       ; $81AE7A  8D 08 07     Mx
    JMP L_81AEA3                    ; $81AE7D  4C A3 AE     Mx
L_81AE80:
    LDA $06F4                       ; $81AE80  AD F4 06     Mx
    CMP #$0006                      ; $81AE83  C9 06 00     Mx
    BEQ L_81AEA3                    ; $81AE86  F0 1B        Mx
    LDA #$0006                      ; $81AE88  A9 06 00     Mx
    STA $06F4                       ; $81AE8B  8D F4 06     Mx
    LDA #$FFFF                      ; $81AE8E  A9 FF FF     Mx
    STA $06FA                       ; $81AE91  8D FA 06     Mx
    STZ $06FC                       ; $81AE94  9C FC 06     Mx
    STZ $0742                       ; $81AE97  9C 42 07     Mx
    STZ $06F8                       ; $81AE9A  9C F8 06     Mx
    LDA #$FFF8                      ; $81AE9D  A9 F8 FF     Mx
    STA $06FE                       ; $81AEA0  8D FE 06     Mx
L_81AEA3:
    RTS                             ; $81AEA3  60           Mx
L_81AEA4:
    LDA $0742                       ; $81AEA4  AD 42 07     Mx
    CMP #$0001                      ; $81AEA7  C9 01 00     Mx
    BEQ L_81AED2                    ; $81AEAA  F0 26        Mx
    CMP #$0002                      ; $81AEAC  C9 02 00     Mx
    BEQ L_81AEB9                    ; $81AEAF  F0 08        Mx
    CMP #$0003                      ; $81AEB1  C9 03 00     Mx
    BNE L_81AEBC                    ; $81AEB4  D0 06        Mx
    JMP L_81B001                    ; $81AEB6  4C 01 B0     Mx
L_81AEB9:
    JMP L_81AF21                    ; $81AEB9  4C 21 AF     Mx
L_81AEBC:
    LDA $0786                       ; $81AEBC  AD 86 07     Mx
    BEQ L_81AEC6                    ; $81AEBF  F0 05        Mx
    LDA #$003E                      ; $81AEC1  A9 3E 00     Mx
    BNE L_81AEC9                    ; $81AEC4  D0 03        Mx
L_81AEC6:
    LDA #$0036                      ; $81AEC6  A9 36 00     Mx
L_81AEC9:
    STA $06F6                       ; $81AEC9  8D F6 06     Mx
    LDA #$0001                      ; $81AECC  A9 01 00     Mx
    STA $0742                       ; $81AECF  8D 42 07     Mx
L_81AED2:
    LDA $06FA                       ; $81AED2  AD FA 06     Mx
    CMP #$0002                      ; $81AED5  C9 02 00     Mx
    BCS L_81AEE8                    ; $81AED8  B0 0E        Mx
    LDA $0770                       ; $81AEDA  AD 70 07     Mx
    BNE L_81AEFA                    ; $81AEDD  D0 1B        Mx
    LDA #$0001                      ; $81AEDF  A9 01 00     Mx
    STA $0780                       ; $81AEE2  8D 80 07     Mx
    JMP L_81AEFA                    ; $81AEE5  4C FA AE     Mx
L_81AEE8:
    CMP #$0004                      ; $81AEE8  C9 04 00     Mx
    BCS L_81AEFD                    ; $81AEEB  B0 10        Mx
    CMP #$0003                      ; $81AEED  C9 03 00     Mx
    BNE L_81AEFA                    ; $81AEF0  D0 08        Mx
    LDA $0780                       ; $81AEF2  AD 80 07     Mx
    BEQ L_81AEFD                    ; $81AEF5  F0 06        Mx
    JMP L_81B03C                    ; $81AEF7  4C 3C B0     Mx
L_81AEFA:
    JMP L_81B094                    ; $81AEFA  4C 94 B0     Mx
L_81AEFD:
    DEC $06F6                       ; $81AEFD  CE F6 06     Mx
    DEC $06F6                       ; $81AF00  CE F6 06     Mx
    BPL L_81AF11                    ; $81AF03  10 0C        Mx
    STZ $06F6                       ; $81AF05  9C F6 06     Mx
    LDA #$0002                      ; $81AF08  A9 02 00     Mx
    STA $0742                       ; $81AF0B  8D 42 07     Mx
    JMP L_81AF21                    ; $81AF0E  4C 21 AF     Mx
L_81AF11:
    LDX $06F6                       ; $81AF11  AE F6 06     Mx
    LDA $A7E3F7,X                   ; $81AF14  BF F7 E3 A7  Mx
    STA $072E                       ; $81AF18  8D 2E 07     Mx
    STZ $072C                       ; $81AF1B  9C 2C 07     Mx
    JMP L_81AF7F                    ; $81AF1E  4C 7F AF     Mx
L_81AF21:
    LDA #$0003                      ; $81AF21  A9 03 00     Mx
    STA $06FC                       ; $81AF24  8D FC 06     Mx
    LDA $06F6                       ; $81AF27  AD F6 06     Mx
    CLC                             ; $81AF2A  18           Mx
    ADC #$0002                      ; $81AF2B  69 02 00     Mx
    CMP #$003E                      ; $81AF2E  C9 3E 00     Mx
    BCC L_81AF36                    ; $81AF31  90 03        Mx
    LDA #$003C                      ; $81AF33  A9 3C 00     Mx
L_81AF36:
    STA $06F6                       ; $81AF36  8D F6 06     Mx
    TAX                             ; $81AF39  AA           Mx
    LDA $A7E3F7,X                   ; $81AF3A  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $81AF3E  49 FF FF     Mx
    CLC                             ; $81AF41  18           Mx
    ADC #$0001                      ; $81AF42  69 01 00     Mx
    STA $072E                       ; $81AF45  8D 2E 07     Mx
    STZ $072C                       ; $81AF48  9C 2C 07     Mx
    LDA $0720                       ; $81AF4B  AD 20 07     Mx
    CLC                             ; $81AF4E  18           Mx
    ADC $072C                       ; $81AF4F  6D 2C 07     Mx
    STA $00E8                       ; $81AF52  8D E8 00     Mx
    LDA $0722                       ; $81AF55  AD 22 07     Mx
    ADC $072E                       ; $81AF58  6D 2E 07     Mx
    BPL L_81AF78                    ; $81AF5B  10 1B        Mx
    STZ $0722                       ; $81AF5D  9C 22 07     Mx
    STZ $0720                       ; $81AF60  9C 20 07     Mx
    STZ $0714                       ; $81AF63  9C 14 07     Mx
    STZ $0716                       ; $81AF66  9C 16 07     Mx
    STZ $072E                       ; $81AF69  9C 2E 07     Mx
    STZ $072C                       ; $81AF6C  9C 2C 07     Mx
    LDA #$0003                      ; $81AF6F  A9 03 00     Mx
    STA $0742                       ; $81AF72  8D 42 07     Mx
    JMP L_81B001                    ; $81AF75  4C 01 B0     Mx
L_81AF78:
    CPX #$2E                        ; $81AF78  E0 2E        Mx
    BCC L_81AF7F                    ; $81AF7A  90 03        Mx
    JMP L_81AF89                    ; $81AF7C  4C 89 AF     Mx
L_81AF7F:
    LDA $0770                       ; $81AF7F  AD 70 07     Mx
    BNE L_81AFFB                    ; $81AF82  D0 77        Mx
    LDA $0C19                       ; $81AF84  AD 19 0C     Mx
    BEQ L_81AFFB                    ; $81AF87  F0 72        Mx
L_81AF89:
    STZ $06FC                       ; $81AF89  9C FC 06     Mx
    LDA $06F0                       ; $81AF8C  AD F0 06     Mx
    CMP $0C19                       ; $81AF8F  CD 19 0C     Mx
    BNE L_81AFF8                    ; $81AF92  D0 64        Mx
    LDX $0700                       ; $81AF94  AE 00 07     Mx
    LDA $07BA                       ; $81AF97  AD BA 07     Mx
    BEQ L_81AFCB                    ; $81AF9A  F0 2F        Mx
    LDA #$2800                      ; $81AF9C  A9 00 28     Mx
    STA $00D1                       ; $81AF9F  8D D1 00     Mx
    LDA $A88000,X                   ; $81AFA2  BF 00 80 A8  Mx
    CLC                             ; $81AFA6  18           Mx
    ADC $06FE                       ; $81AFA7  6D FE 06     Mx
    STA $00D0                       ; $81AFAA  8D D0 00     Mx
    LDY #$00                        ; $81AFAD  A0 00        Mx
    LDA [$D0],Y                     ; $81AFAF  B7 D0        Mx
    STA $0BEF                       ; $81AFB1  8D EF 0B     Mx
    LDY #$02                        ; $81AFB4  A0 02        Mx
    LDA [$D0],Y                     ; $81AFB6  B7 D0        Mx
    STA $0BF1                       ; $81AFB8  8D F1 0B     Mx
    LDY #$04                        ; $81AFBB  A0 04        Mx
    LDA [$D0],Y                     ; $81AFBD  B7 D0        Mx
    STA $0BF5                       ; $81AFBF  8D F5 0B     Mx
    CLC                             ; $81AFC2  18           Mx
    ADC $0718                       ; $81AFC3  6D 18 07     Mx
    STA $0BF3                       ; $81AFC6  8D F3 0B     Mx
    BRA L_81AFF8                    ; $81AFC9  80 2D        Mx
L_81AFCB:
    LDA #$2500                      ; $81AFCB  A9 00 25     Mx
    STA $00D1                       ; $81AFCE  8D D1 00     Mx
    LDA $A58000,X                   ; $81AFD1  BF 00 80 A5  Mx
    CLC                             ; $81AFD5  18           Mx
    ADC $06FE                       ; $81AFD6  6D FE 06     Mx
    STA $00D0                       ; $81AFD9  8D D0 00     Mx
    LDY #$00                        ; $81AFDC  A0 00        Mx
    LDA [$D0],Y                     ; $81AFDE  B7 D0        Mx
    STA $0BEF                       ; $81AFE0  8D EF 0B     Mx
    LDY #$02                        ; $81AFE3  A0 02        Mx
    LDA [$D0],Y                     ; $81AFE5  B7 D0        Mx
    STA $0BF1                       ; $81AFE7  8D F1 0B     Mx
    LDY #$04                        ; $81AFEA  A0 04        Mx
    LDA [$D0],Y                     ; $81AFEC  B7 D0        Mx
    STA $0BF5                       ; $81AFEE  8D F5 0B     Mx
    CLC                             ; $81AFF1  18           Mx
    ADC $0718                       ; $81AFF2  6D 18 07     Mx
    STA $0BF3                       ; $81AFF5  8D F3 0B     Mx
L_81AFF8:
    JMP L_81B001                    ; $81AFF8  4C 01 B0     Mx
L_81AFFB:
    LDA #$0003                      ; $81AFFB  A9 03 00     Mx
    STA $06FC                       ; $81AFFE  8D FC 06     Mx
L_81B001:
    LDA $06FA                       ; $81B001  AD FA 06     Mx
    CMP #$0008                      ; $81B004  C9 08 00     Mx
    BNE L_81B011                    ; $81B007  D0 08        Mx
    LDA $06FC                       ; $81B009  AD FC 06     Mx
    BNE L_81B039                    ; $81B00C  D0 2B        Mx
    JMP L_81B065                    ; $81B00E  4C 65 B0     Mx
L_81B011:
    CMP #$0004                      ; $81B011  C9 04 00     Mx
    BNE L_81B039                    ; $81B014  D0 23        Mx
    LDA $0C19                       ; $81B016  AD 19 0C     Mx
    BEQ L_81B039                    ; $81B019  F0 1E        Mx
    LDA $0794                       ; $81B01B  AD 94 07     Mx
    BEQ L_81B039                    ; $81B01E  F0 19        Mx
    LDA #$0002                      ; $81B020  A9 02 00     Mx
    STA $0BBF                       ; $81B023  8D BF 0B     Mx
    STZ $0BC1                       ; $81B026  9C C1 0B     Mx
    LDX $06F6                       ; $81B029  AE F6 06     Mx
    LDA $A7E435,X                   ; $81B02C  BF 35 E4 A7  Mx
    STA $0BC9                       ; $81B030  8D C9 0B     Mx
    LDA #$0019                      ; $81B033  A9 19 00     Mx
    STA $077A                       ; $81B036  8D 7A 07     Mx
L_81B039:
    JMP L_81B094                    ; $81B039  4C 94 B0     Mx
L_81B03C:
    LDA #$000C                      ; $81B03C  A9 0C 00     Mx
    STA $06F4                       ; $81B03F  8D F4 06     Mx
    LDA #$FFFF                      ; $81B042  A9 FF FF     Mx
    STA $06FA                       ; $81B045  8D FA 06     Mx
    STZ $06FC                       ; $81B048  9C FC 06     Mx
    STZ $0742                       ; $81B04B  9C 42 07     Mx
    STZ $06F8                       ; $81B04E  9C F8 06     Mx
    LDA #$FFF8                      ; $81B051  A9 F8 FF     Mx
    STA $06FE                       ; $81B054  8D FE 06     Mx
    LDA $0782                       ; $81B057  AD 82 07     Mx
    BNE L_81B05F                    ; $81B05A  D0 03        Mx
    STZ $0780                       ; $81B05C  9C 80 07     Mx
L_81B05F:
    JSR L_81D428                    ; $81B05F  20 28 D4     Mx
    JMP L_81B094                    ; $81B062  4C 94 B0     Mx
L_81B065:
    LDA $0722                       ; $81B065  AD 22 07     Mx
    BEQ L_81B073                    ; $81B068  F0 09        Mx
    LDA #$0003                      ; $81B06A  A9 03 00     Mx
    STA $06FC                       ; $81B06D  8D FC 06     Mx
    JMP L_81B094                    ; $81B070  4C 94 B0     Mx
L_81B073:
    LDA #$0000                      ; $81B073  A9 00 00     Mx
    STA $06F4                       ; $81B076  8D F4 06     Mx
    LDA #$FFFF                      ; $81B079  A9 FF FF     Mx
    STA $06FA                       ; $81B07C  8D FA 06     Mx
    STZ $06FC                       ; $81B07F  9C FC 06     Mx
    STZ $0742                       ; $81B082  9C 42 07     Mx
    STZ $06F8                       ; $81B085  9C F8 06     Mx
    LDA #$FFF8                      ; $81B088  A9 F8 FF     Mx
    STA $06FE                       ; $81B08B  8D FE 06     Mx
    LDA #$0014                      ; $81B08E  A9 14 00     Mx
    STA $0778                       ; $81B091  8D 78 07     Mx
L_81B094:
    RTS                             ; $81B094  60           Mx
L_81B095:
    LDA $0742                       ; $81B095  AD 42 07     Mx
    CMP #$0001                      ; $81B098  C9 01 00     Mx
    BEQ L_81B0C0                    ; $81B09B  F0 23        Mx
    CMP #$0002                      ; $81B09D  C9 02 00     Mx
    BEQ L_81B0FE                    ; $81B0A0  F0 5C        Mx
    CMP #$0003                      ; $81B0A2  C9 03 00     Mx
    BNE L_81B0AA                    ; $81B0A5  D0 03        Mx
    JMP L_81B169                    ; $81B0A7  4C 69 B1     Mx
L_81B0AA:
    LDA $0786                       ; $81B0AA  AD 86 07     Mx
    BEQ L_81B0B4                    ; $81B0AD  F0 05        Mx
    LDA #$0036                      ; $81B0AF  A9 36 00     Mx
    BNE L_81B0B7                    ; $81B0B2  D0 03        Mx
L_81B0B4:
    LDA #$0030                      ; $81B0B4  A9 30 00     Mx
L_81B0B7:
    STA $06F6                       ; $81B0B7  8D F6 06     Mx
    LDA #$0001                      ; $81B0BA  A9 01 00     Mx
    STA $0742                       ; $81B0BD  8D 42 07     Mx
L_81B0C0:
    DEC $06F6                       ; $81B0C0  CE F6 06     Mx
    DEC $06F6                       ; $81B0C3  CE F6 06     Mx
    BPL L_81B0D4                    ; $81B0C6  10 0C        Mx
    STZ $06F6                       ; $81B0C8  9C F6 06     Mx
    LDA #$0002                      ; $81B0CB  A9 02 00     Mx
    STA $0742                       ; $81B0CE  8D 42 07     Mx
    JMP L_81B0FE                    ; $81B0D1  4C FE B0     Mx
L_81B0D4:
    LDX $06F6                       ; $81B0D4  AE F6 06     Mx
    LDA $A7E3F7,X                   ; $81B0D7  BF F7 E3 A7  Mx
    STA $072E                       ; $81B0DB  8D 2E 07     Mx
    STZ $072C                       ; $81B0DE  9C 2C 07     Mx
    CPX #$14                        ; $81B0E1  E0 14        Mx
    BMI L_81B0F0                    ; $81B0E3  30 0B        Mx
    LDA $06FA                       ; $81B0E5  AD FA 06     Mx
    CMP #$0003                      ; $81B0E8  C9 03 00     Mx
    BCS L_81B163                    ; $81B0EB  B0 76        Mx
    JMP L_81B179                    ; $81B0ED  4C 79 B1     Mx
L_81B0F0:
    LDA $0C19                       ; $81B0F0  AD 19 0C     Mx
    BEQ L_81B163                    ; $81B0F3  F0 6E        Mx
    LDA #$0000                      ; $81B0F5  A9 00 00     Mx
    STA $06FC                       ; $81B0F8  8D FC 06     Mx
    JMP L_81B169                    ; $81B0FB  4C 69 B1     Mx
L_81B0FE:
    LDA #$0003                      ; $81B0FE  A9 03 00     Mx
    STA $06FC                       ; $81B101  8D FC 06     Mx
    LDA $06F6                       ; $81B104  AD F6 06     Mx
    CLC                             ; $81B107  18           Mx
    ADC #$0002                      ; $81B108  69 02 00     Mx
    CMP #$0036                      ; $81B10B  C9 36 00     Mx
    BCC L_81B113                    ; $81B10E  90 03        Mx
    LDA #$0034                      ; $81B110  A9 34 00     Mx
L_81B113:
    STA $06F6                       ; $81B113  8D F6 06     Mx
    TAX                             ; $81B116  AA           Mx
    LDA $A7E3F7,X                   ; $81B117  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $81B11B  49 FF FF     Mx
    CLC                             ; $81B11E  18           Mx
    ADC #$0001                      ; $81B11F  69 01 00     Mx
    STA $072E                       ; $81B122  8D 2E 07     Mx
    STZ $072C                       ; $81B125  9C 2C 07     Mx
    LDA $0720                       ; $81B128  AD 20 07     Mx
    CLC                             ; $81B12B  18           Mx
    ADC $072C                       ; $81B12C  6D 2C 07     Mx
    STA $00E8                       ; $81B12F  8D E8 00     Mx
    LDA $0722                       ; $81B132  AD 22 07     Mx
    ADC $072E                       ; $81B135  6D 2E 07     Mx
    BPL L_81B155                    ; $81B138  10 1B        Mx
    STZ $0722                       ; $81B13A  9C 22 07     Mx
    STZ $0720                       ; $81B13D  9C 20 07     Mx
    STZ $0714                       ; $81B140  9C 14 07     Mx
    STZ $0716                       ; $81B143  9C 16 07     Mx
    STZ $072E                       ; $81B146  9C 2E 07     Mx
    STZ $072C                       ; $81B149  9C 2C 07     Mx
    LDA #$0003                      ; $81B14C  A9 03 00     Mx
    STA $0742                       ; $81B14F  8D 42 07     Mx
    JMP L_81B169                    ; $81B152  4C 69 B1     Mx
L_81B155:
    LDA $0C19                       ; $81B155  AD 19 0C     Mx
    BEQ L_81B163                    ; $81B158  F0 09        Mx
    LDA #$0000                      ; $81B15A  A9 00 00     Mx
    STA $06FC                       ; $81B15D  8D FC 06     Mx
    JMP L_81B169                    ; $81B160  4C 69 B1     Mx
L_81B163:
    LDA #$0003                      ; $81B163  A9 03 00     Mx
    STA $06FC                       ; $81B166  8D FC 06     Mx
L_81B169:
    LDA $06FA                       ; $81B169  AD FA 06     Mx
    CMP #$0005                      ; $81B16C  C9 05 00     Mx
    BNE L_81B179                    ; $81B16F  D0 08        Mx
    LDA $06FC                       ; $81B171  AD FC 06     Mx
    BNE L_81B1CE                    ; $81B174  D0 58        Mx
    JMP L_81B19F                    ; $81B176  4C 9F B1     Mx
L_81B179:
    CMP #$0003                      ; $81B179  C9 03 00     Mx
    BNE L_81B1CE                    ; $81B17C  D0 50        Mx
    LDA $0C19                       ; $81B17E  AD 19 0C     Mx
    BEQ L_81B1CE                    ; $81B181  F0 4B        Mx
    LDA $0794                       ; $81B183  AD 94 07     Mx
    BEQ L_81B19C                    ; $81B186  F0 14        Mx
    LDA $0794                       ; $81B188  AD 94 07     Mx
    BEQ L_81B1CE                    ; $81B18B  F0 41        Mx
    LDA #$0002                      ; $81B18D  A9 02 00     Mx
    STA $0BBF                       ; $81B190  8D BF 0B     Mx
    STZ $0BC1                       ; $81B193  9C C1 0B     Mx
    LDA #$0019                      ; $81B196  A9 19 00     Mx
    STA $077A                       ; $81B199  8D 7A 07     Mx
L_81B19C:
    JMP L_81B1CE                    ; $81B19C  4C CE B1     Mx
L_81B19F:
    LDA $0722                       ; $81B19F  AD 22 07     Mx
    BEQ L_81B1AD                    ; $81B1A2  F0 09        Mx
    LDA #$0003                      ; $81B1A4  A9 03 00     Mx
    STA $06FC                       ; $81B1A7  8D FC 06     Mx
    JMP L_81B1CE                    ; $81B1AA  4C CE B1     Mx
L_81B1AD:
    LDA #$0000                      ; $81B1AD  A9 00 00     Mx
    STA $06F4                       ; $81B1B0  8D F4 06     Mx
    LDA #$FFFF                      ; $81B1B3  A9 FF FF     Mx
    STA $06FA                       ; $81B1B6  8D FA 06     Mx
    STZ $06FC                       ; $81B1B9  9C FC 06     Mx
    STZ $0742                       ; $81B1BC  9C 42 07     Mx
    STZ $06F8                       ; $81B1BF  9C F8 06     Mx
    LDA #$FFF8                      ; $81B1C2  A9 F8 FF     Mx
    STA $06FE                       ; $81B1C5  8D FE 06     Mx
    LDA #$0014                      ; $81B1C8  A9 14 00     Mx
    STA $0778                       ; $81B1CB  8D 78 07     Mx
L_81B1CE:
    RTS                             ; $81B1CE  60           Mx
L_81B1CF:
    LDA $0742                       ; $81B1CF  AD 42 07     Mx
    CMP #$0001                      ; $81B1D2  C9 01 00     Mx
    BEQ L_81B20A                    ; $81B1D5  F0 33        Mx
    CMP #$0002                      ; $81B1D7  C9 02 00     Mx
    BEQ L_81B254                    ; $81B1DA  F0 78        Mx
    CMP #$0003                      ; $81B1DC  C9 03 00     Mx
    BNE L_81B1E4                    ; $81B1DF  D0 03        Mx
    JMP L_81B2D1                    ; $81B1E1  4C D1 B2     Mx
L_81B1E4:
    LDA $0786                       ; $81B1E4  AD 86 07     Mx
    BEQ L_81B1EE                    ; $81B1E7  F0 05        Mx
    LDA #$003E                      ; $81B1E9  A9 3E 00     Mx
    BNE L_81B1F1                    ; $81B1EC  D0 03        Mx
L_81B1EE:
    LDA #$0036                      ; $81B1EE  A9 36 00     Mx
L_81B1F1:
    STA $06F6                       ; $81B1F1  8D F6 06     Mx
    LDA $06FA                       ; $81B1F4  AD FA 06     Mx
    CMP #$0001                      ; $81B1F7  C9 01 00     Mx
    BEQ L_81B204                    ; $81B1FA  F0 08        Mx
    LDA $0770                       ; $81B1FC  AD 70 07     Mx
    BNE L_81B20C                    ; $81B1FF  D0 0B        Mx
    JMP L_81B31C                    ; $81B201  4C 1C B3     Mx
L_81B204:
    LDA #$0001                      ; $81B204  A9 01 00     Mx
    STA $0742                       ; $81B207  8D 42 07     Mx
L_81B20A:
    BRA L_81B20F                    ; $81B20A  80 03        Mx
L_81B20C:
    JMP L_81B367                    ; $81B20C  4C 67 B3     Mx
L_81B20F:
    LDA $06F4                       ; $81B20F  AD F4 06     Mx
    CMP #$001C                      ; $81B212  C9 1C 00     Mx
    BNE L_81B21D                    ; $81B215  D0 06        Mx
    LDA #$0001                      ; $81B217  A9 01 00     Mx
    STA $072A                       ; $81B21A  8D 2A 07     Mx
L_81B21D:
    DEC $06F6                       ; $81B21D  CE F6 06     Mx
    DEC $06F6                       ; $81B220  CE F6 06     Mx
    BPL L_81B231                    ; $81B223  10 0C        Mx
    STZ $06F6                       ; $81B225  9C F6 06     Mx
    LDA #$0002                      ; $81B228  A9 02 00     Mx
    STA $0742                       ; $81B22B  8D 42 07     Mx
    JMP L_81B254                    ; $81B22E  4C 54 B2     Mx
L_81B231:
    LDX $06F6                       ; $81B231  AE F6 06     Mx
    LDA $A7E3F7,X                   ; $81B234  BF F7 E3 A7  Mx
    STA $072E                       ; $81B238  8D 2E 07     Mx
    STZ $072C                       ; $81B23B  9C 2C 07     Mx
    LDA $0770                       ; $81B23E  AD 70 07     Mx
    BNE L_81B251                    ; $81B241  D0 0E        Mx
    LDA $0C19                       ; $81B243  AD 19 0C     Mx
    BEQ L_81B251                    ; $81B246  F0 09        Mx
    LDA #$0000                      ; $81B248  A9 00 00     Mx
    STA $06FC                       ; $81B24B  8D FC 06     Mx
    JMP L_81B2D1                    ; $81B24E  4C D1 B2     Mx
L_81B251:
    JMP L_81B2CB                    ; $81B251  4C CB B2     Mx
L_81B254:
    LDA #$0003                      ; $81B254  A9 03 00     Mx
    STA $06FC                       ; $81B257  8D FC 06     Mx
    LDA $06F6                       ; $81B25A  AD F6 06     Mx
    CLC                             ; $81B25D  18           Mx
    ADC #$0002                      ; $81B25E  69 02 00     Mx
    CMP #$0036                      ; $81B261  C9 36 00     Mx
    BCC L_81B269                    ; $81B264  90 03        Mx
    LDA #$0034                      ; $81B266  A9 34 00     Mx
L_81B269:
    STA $06F6                       ; $81B269  8D F6 06     Mx
    TAX                             ; $81B26C  AA           Mx
    LDA $A7E3F7,X                   ; $81B26D  BF F7 E3 A7  Mx
    EOR #$FFFF                      ; $81B271  49 FF FF     Mx
    CLC                             ; $81B274  18           Mx
    ADC #$0001                      ; $81B275  69 01 00     Mx
    STA $072E                       ; $81B278  8D 2E 07     Mx
    STZ $072C                       ; $81B27B  9C 2C 07     Mx
    LDA $0720                       ; $81B27E  AD 20 07     Mx
    CLC                             ; $81B281  18           Mx
    ADC $072C                       ; $81B282  6D 2C 07     Mx
    STA $00E8                       ; $81B285  8D E8 00     Mx
    LDA $0722                       ; $81B288  AD 22 07     Mx
    ADC $072E                       ; $81B28B  6D 2E 07     Mx
    BPL L_81B2B1                    ; $81B28E  10 21        Mx
    STZ $0722                       ; $81B290  9C 22 07     Mx
    STZ $0720                       ; $81B293  9C 20 07     Mx
    STZ $0714                       ; $81B296  9C 14 07     Mx
    STZ $0716                       ; $81B299  9C 16 07     Mx
    STZ $072E                       ; $81B29C  9C 2E 07     Mx
    STZ $072C                       ; $81B29F  9C 2C 07     Mx
    STZ $072A                       ; $81B2A2  9C 2A 07     Mx
    STZ $0728                       ; $81B2A5  9C 28 07     Mx
    LDA #$0003                      ; $81B2A8  A9 03 00     Mx
    STA $0742                       ; $81B2AB  8D 42 07     Mx
    JMP L_81B2D1                    ; $81B2AE  4C D1 B2     Mx
L_81B2B1:
    CPX #$2E                        ; $81B2B1  E0 2E        Mx
    BCC L_81B2B8                    ; $81B2B3  90 03        Mx
    JMP L_81B2C2                    ; $81B2B5  4C C2 B2     Mx
L_81B2B8:
    LDA $0770                       ; $81B2B8  AD 70 07     Mx
    BNE L_81B2CB                    ; $81B2BB  D0 0E        Mx
    LDA $0C19                       ; $81B2BD  AD 19 0C     Mx
    BEQ L_81B2CB                    ; $81B2C0  F0 09        Mx
L_81B2C2:
    LDA #$0000                      ; $81B2C2  A9 00 00     Mx
    STA $06FC                       ; $81B2C5  8D FC 06     Mx
    JMP L_81B2D1                    ; $81B2C8  4C D1 B2     Mx
L_81B2CB:
    LDA #$0003                      ; $81B2CB  A9 03 00     Mx
    STA $06FC                       ; $81B2CE  8D FC 06     Mx
L_81B2D1:
    LDA $06FA                       ; $81B2D1  AD FA 06     Mx
    CMP #$0006                      ; $81B2D4  C9 06 00     Mx
    BEQ L_81B2E6                    ; $81B2D7  F0 0D        Mx
    CMP #$0003                      ; $81B2D9  C9 03 00     Mx
    BNE L_81B2EE                    ; $81B2DC  D0 10        Mx
    LDA $06F4                       ; $81B2DE  AD F4 06     Mx
    CMP #$001C                      ; $81B2E1  C9 1C 00     Mx
    BNE L_81B2EE                    ; $81B2E4  D0 08        Mx
L_81B2E6:
    LDA $06FC                       ; $81B2E6  AD FC 06     Mx
    BNE L_81B367                    ; $81B2E9  D0 7C        Mx
    JMP L_81B338                    ; $81B2EB  4C 38 B3     Mx
L_81B2EE:
    LDA $06FA                       ; $81B2EE  AD FA 06     Mx
    CMP #$0002                      ; $81B2F1  C9 02 00     Mx
    BNE L_81B367                    ; $81B2F4  D0 71        Mx
    LDA $0C19                       ; $81B2F6  AD 19 0C     Mx
    BEQ L_81B367                    ; $81B2F9  F0 6C        Mx
    LDA $0794                       ; $81B2FB  AD 94 07     Mx
    BEQ L_81B319                    ; $81B2FE  F0 19        Mx
    LDA #$0002                      ; $81B300  A9 02 00     Mx
    STA $0BBF                       ; $81B303  8D BF 0B     Mx
    STZ $0BC1                       ; $81B306  9C C1 0B     Mx
    LDX $06F6                       ; $81B309  AE F6 06     Mx
    LDA $A7E435,X                   ; $81B30C  BF 35 E4 A7  Mx
    STA $0BC9                       ; $81B310  8D C9 0B     Mx
    LDA #$0019                      ; $81B313  A9 19 00     Mx
    STA $077A                       ; $81B316  8D 7A 07     Mx
L_81B319:
    JMP L_81B367                    ; $81B319  4C 67 B3     Mx
L_81B31C:
    LDA $0782                       ; $81B31C  AD 82 07     Mx
    BEQ L_81B327                    ; $81B31F  F0 06        Mx
    LDA #$0001                      ; $81B321  A9 01 00     Mx
    STA $0780                       ; $81B324  8D 80 07     Mx
L_81B327:
    JSR L_81D428                    ; $81B327  20 28 D4     Mx
    LDA $06F4                       ; $81B32A  AD F4 06     Mx
    CMP #$002E                      ; $81B32D  C9 2E 00     Mx
    BEQ L_81B361                    ; $81B330  F0 2F        Mx
    LDA #$000C                      ; $81B332  A9 0C 00     Mx
    JMP L_81B349                    ; $81B335  4C 49 B3     Mx
L_81B338:
    LDA $0722                       ; $81B338  AD 22 07     Mx
    BEQ L_81B346                    ; $81B33B  F0 09        Mx
    LDA #$0003                      ; $81B33D  A9 03 00     Mx
    STA $06FC                       ; $81B340  8D FC 06     Mx
    JMP L_81B367                    ; $81B343  4C 67 B3     Mx
L_81B346:
    LDA #$0000                      ; $81B346  A9 00 00     Mx
L_81B349:
    STA $06F4                       ; $81B349  8D F4 06     Mx
    LDA #$FFFF                      ; $81B34C  A9 FF FF     Mx
    STA $06FA                       ; $81B34F  8D FA 06     Mx
    STZ $06FC                       ; $81B352  9C FC 06     Mx
    STZ $0742                       ; $81B355  9C 42 07     Mx
    STZ $06F8                       ; $81B358  9C F8 06     Mx
    LDA #$FFF8                      ; $81B35B  A9 F8 FF     Mx
    STA $06FE                       ; $81B35E  8D FE 06     Mx
L_81B361:
    LDA #$0014                      ; $81B361  A9 14 00     Mx
    STA $0778                       ; $81B364  8D 78 07     Mx
L_81B367:
    RTS                             ; $81B367  60           Mx
L_81B368:
    LDA $06FA                       ; $81B368  AD FA 06     Mx
    CMP #$0005                      ; $81B36B  C9 05 00     Mx
    BEQ L_81B37D                    ; $81B36E  F0 0D        Mx
    CMP #$0004                      ; $81B370  C9 04 00     Mx
    BNE L_81B3C3                    ; $81B373  D0 4E        Mx
    LDA $0C19                       ; $81B375  AD 19 0C     Mx
    BNE L_81B385                    ; $81B378  D0 0B        Mx
    JMP L_81B3C3                    ; $81B37A  4C C3 B3     Mx
L_81B37D:
    LDA $06FC                       ; $81B37D  AD FC 06     Mx
    BNE L_81B3C3                    ; $81B380  D0 41        Mx
    JMP L_81B3A2                    ; $81B382  4C A2 B3     Mx
L_81B385:
    LDA $0794                       ; $81B385  AD 94 07     Mx
    BEQ L_81B39F                    ; $81B388  F0 15        Mx
    LDA #$0002                      ; $81B38A  A9 02 00     Mx
    STA $0BBF                       ; $81B38D  8D BF 0B     Mx
    STZ $0BC1                       ; $81B390  9C C1 0B     Mx
    LDX $06F6                       ; $81B393  AE F6 06     Mx
    STZ $0BC9                       ; $81B396  9C C9 0B     Mx
    LDA #$0019                      ; $81B399  A9 19 00     Mx
    STA $077A                       ; $81B39C  8D 7A 07     Mx
L_81B39F:
    JMP L_81B3C3                    ; $81B39F  4C C3 B3     Mx
L_81B3A2:
    LDA #$0000                      ; $81B3A2  A9 00 00     Mx
    STA $06F4                       ; $81B3A5  8D F4 06     Mx
    LDA #$FFFF                      ; $81B3A8  A9 FF FF     Mx
    STA $06FA                       ; $81B3AB  8D FA 06     Mx
    STZ $06FC                       ; $81B3AE  9C FC 06     Mx
    STZ $0742                       ; $81B3B1  9C 42 07     Mx
    STZ $06F8                       ; $81B3B4  9C F8 06     Mx
    LDA #$FFF8                      ; $81B3B7  A9 F8 FF     Mx
    STA $06FE                       ; $81B3BA  8D FE 06     Mx
    LDA #$0014                      ; $81B3BD  A9 14 00     Mx
    STA $0778                       ; $81B3C0  8D 78 07     Mx
L_81B3C3:
    RTS                             ; $81B3C3  60           Mx
L_81B3C4:
    LDA $06FA                       ; $81B3C4  AD FA 06     Mx
    CMP #$0001                      ; $81B3C7  C9 01 00     Mx
    BEQ L_81B40B                    ; $81B3CA  F0 3F        Mx
    CMP #$0002                      ; $81B3CC  C9 02 00     Mx
    BEQ L_81B420                    ; $81B3CF  F0 4F        Mx
    CMP #$0005                      ; $81B3D1  C9 05 00     Mx
    BEQ L_81B403                    ; $81B3D4  F0 2D        Mx
    CMP #$0003                      ; $81B3D6  C9 03 00     Mx
    BNE L_81B3F0                    ; $81B3D9  D0 15        Mx
    LDA $06F4                       ; $81B3DB  AD F4 06     Mx
    CMP #$001A                      ; $81B3DE  C9 1A 00     Mx
    BEQ L_81B403                    ; $81B3E1  F0 20        Mx
    CMP #$003E                      ; $81B3E3  C9 3E 00     Mx
    BEQ L_81B403                    ; $81B3E6  F0 1B        Mx
    CMP #$0040                      ; $81B3E8  C9 40 00     Mx
    BEQ L_81B403                    ; $81B3EB  F0 16        Mx
    JMP L_81B4A6                    ; $81B3ED  4C A6 B4     Mx
L_81B3F0:
    CMP #$0002                      ; $81B3F0  C9 02 00     Mx
    BEQ L_81B3F8                    ; $81B3F3  F0 03        Mx
L_81B3F5:
    JMP L_81B4A6                    ; $81B3F5  4C A6 B4     Mx
L_81B3F8:
    LDA $06F4                       ; $81B3F8  AD F4 06     Mx
L_81B3FB:
    CMP #$0012                      ; $81B3FB  C9 12 00     Mx
    BEQ L_81B403                    ; $81B3FE  F0 03        Mx
    JMP L_81B4A6                    ; $81B400  4C A6 B4     Mx
L_81B403:
    LDA $06FC                       ; $81B403  AD FC 06     Mx
    BNE L_81B3F5                    ; $81B406  D0 ED        Mx
    JMP L_81B48B                    ; $81B408  4C 8B B4     Mx
L_81B40B:
    LDA $06F4                       ; $81B40B  AD F4 06     Mx
    CMP #$0012                      ; $81B40E  C9 12 00     Mx
    BEQ L_81B432                    ; $81B411  F0 1F        Mx
    CMP #$003E                      ; $81B413  C9 3E 00     Mx
    BEQ L_81B432                    ; $81B416  F0 1A        Mx
    CMP #$0040                      ; $81B418  C9 40 00     Mx
    BEQ L_81B432                    ; $81B41B  F0 15        Mx
    JMP L_81B4A6                    ; $81B41D  4C A6 B4     Mx
L_81B420:
    LDA $06F4                       ; $81B420  AD F4 06     Mx
    CMP #$000A                      ; $81B423  C9 0A 00     Mx
    BEQ L_81B432                    ; $81B426  F0 0A        Mx
    CMP #$001A                      ; $81B428  C9 1A 00     Mx
    BEQ L_81B432                    ; $81B42B  F0 05        Mx
    CMP #$0016                      ; $81B42D  C9 16 00     Mx
    BNE L_81B3FB                    ; $81B430  D0 C9        Mx
L_81B432:
    LDA $06FC                       ; $81B432  AD FC 06     Mx
    BEQ L_81B43A                    ; $81B435  F0 03        Mx
    JMP L_81B4A6                    ; $81B437  4C A6 B4     Mx
L_81B43A:
    LDA $0C19                       ; $81B43A  AD 19 0C     Mx
    CMP $06F0                       ; $81B43D  CD F0 06     Mx
    BNE L_81B4A6                    ; $81B440  D0 64        Mx
    LDA $0786                       ; $81B442  AD 86 07     Mx
    STA $00A4                       ; $81B445  8D A4 00     Mx
    LDA $0722                       ; $81B448  AD 22 07     Mx
    STA $00A6                       ; $81B44B  8D A6 00     Mx
    LDA $088C                       ; $81B44E  AD 8C 08     Mx
    STA $0B88                       ; $81B451  8D 88 0B     Mx
    LDA $0806                       ; $81B454  AD 06 08     Mx
    STA $00AA                       ; $81B457  8D AA 00     Mx
    LDA $080A                       ; $81B45A  AD 0A 08     Mx
    STA $00AC                       ; $81B45D  8D AC 00     Mx
    LDA $080E                       ; $81B460  AD 0E 08     Mx
    STA $00AE                       ; $81B463  8D AE 00     Mx
    LDA $0811                       ; $81B466  AD 11 08     Mx
    STA $00A8                       ; $81B469  8D A8 00     Mx
    LDA $0819                       ; $81B46C  AD 19 08     Mx
    STA $00B0                       ; $81B46F  8D B0 00     Mx
    JSL L_A7DCCB                    ; $81B472  22 CB DC A7  Mx
    LDA $00DC                       ; $81B476  AD DC 00     Mx
    STA $088A                       ; $81B479  8D 8A 08     Mx
    LDA #$0019                      ; $81B47C  A9 19 00     Mx
    STA $077A                       ; $81B47F  8D 7A 07     Mx
    LDA #$0014                      ; $81B482  A9 14 00     Mx
    STA $0778                       ; $81B485  8D 78 07     Mx
    JMP L_81B4A6                    ; $81B488  4C A6 B4     Mx
L_81B48B:
    LDA #$0000                      ; $81B48B  A9 00 00     Mx
    STA $06F4                       ; $81B48E  8D F4 06     Mx
    LDA #$FFFF                      ; $81B491  A9 FF FF     Mx
    STA $06FA                       ; $81B494  8D FA 06     Mx
    STZ $06FC                       ; $81B497  9C FC 06     Mx
    STZ $0742                       ; $81B49A  9C 42 07     Mx
    STZ $06F8                       ; $81B49D  9C F8 06     Mx
    LDA #$FFF8                      ; $81B4A0  A9 F8 FF     Mx
    STA $06FE                       ; $81B4A3  8D FE 06     Mx
L_81B4A6:
    RTS                             ; $81B4A6  60           Mx
L_81B4A7:
    LDA $0C19                       ; $81B4A7  AD 19 0C     Mx
    CMP $06F0                       ; $81B4AA  CD F0 06     Mx
    BEQ L_81B4B5                    ; $81B4AD  F0 06        Mx
    LDA #$0000                      ; $81B4AF  A9 00 00     Mx
    JMP L_81B4C5                    ; $81B4B2  4C C5 B4     Mx
L_81B4B5:
    LDA $076C                       ; $81B4B5  AD 6C 07     Mx
    AND #$0F00                      ; $81B4B8  29 00 0F     Mx
    BEQ L_81B51E                    ; $81B4BB  F0 61        Mx
L_81B4BD:
    LDA $0780                       ; $81B4BD  AD 80 07     Mx
    BNE L_81B4E0                    ; $81B4C0  D0 1E        Mx
    LDA #$0004                      ; $81B4C2  A9 04 00     Mx
L_81B4C5:
    STA $06F4                       ; $81B4C5  8D F4 06     Mx
    LDA #$FFFF                      ; $81B4C8  A9 FF FF     Mx
    STA $06FA                       ; $81B4CB  8D FA 06     Mx
    STZ $06FC                       ; $81B4CE  9C FC 06     Mx
    STZ $0742                       ; $81B4D1  9C 42 07     Mx
    STZ $06F8                       ; $81B4D4  9C F8 06     Mx
    LDA #$FFF8                      ; $81B4D7  A9 F8 FF     Mx
    STA $06FE                       ; $81B4DA  8D FE 06     Mx
    JMP L_81B550                    ; $81B4DD  4C 50 B5     Mx
L_81B4E0:
    LDA $0708                       ; $81B4E0  AD 08 07     Mx
    STA $00A4                       ; $81B4E3  8D A4 00     Mx
    LDX $0708                       ; $81B4E6  AE 08 07     Mx
    LDA $A7E35F,X                   ; $81B4E9  BF 5F E3 A7  Mx
    STA $00EA                       ; $81B4ED  8D EA 00     Mx
    SEP #$20                        ; $81B4F0  E2 20        Mx
    LDA $076D                       ; $81B4F2  AD 6D 07     mx
    AND #$0F                        ; $81B4F5  29 0F        mx
    BNE L_81B4FC                    ; $81B4F7  D0 03        mx
    LDA $00EA                       ; $81B4F9  AD EA 00     mx
L_81B4FC:
    TAX                             ; $81B4FC  AA           mx
    LDA $A7E367,X                   ; $81B4FD  BF 67 E3 A7  mx
    AND #$07                        ; $81B501  29 07        mx
    STA $0708                       ; $81B503  8D 08 07     mx
    REP #$20                        ; $81B506  C2 20        mx
    LDA $0708                       ; $81B508  AD 08 07     Mx
    CMP $00A4                       ; $81B50B  CD A4 00     Mx
    BEQ L_81B516                    ; $81B50E  F0 06        Mx
    LDA #$003C                      ; $81B510  A9 3C 00     Mx
    STA $06F6                       ; $81B513  8D F6 06     Mx
L_81B516:
    LDA $06F6                       ; $81B516  AD F6 06     Mx
    BNE L_81B532                    ; $81B519  D0 17        Mx
    JMP L_81B550                    ; $81B51B  4C 50 B5     Mx
L_81B51E:
    LDA $072A                       ; $81B51E  AD 2A 07     Mx
    ORA $0728                       ; $81B521  0D 28 07     Mx
    ORA $0732                       ; $81B524  0D 32 07     Mx
    ORA $0730                       ; $81B527  0D 30 07     Mx
    ORA $072E                       ; $81B52A  0D 2E 07     Mx
    ORA $072C                       ; $81B52D  0D 2C 07     Mx
    BNE L_81B4BD                    ; $81B530  D0 8B        Mx
L_81B532:
    DEC $06F6                       ; $81B532  CE F6 06     Mx
    BEQ L_81B53F                    ; $81B535  F0 08        Mx
    LDA $06F6                       ; $81B537  AD F6 06     Mx
    BNE L_81B550                    ; $81B53A  D0 14        Mx
    JMP L_81B53F                    ; $81B53C  4C 3F B5     Mx
L_81B53F:
    LDA $0756                       ; $81B53F  AD 56 07     Mx
    TAX                             ; $81B542  AA           Mx
    LDA $A7E377,X                   ; $81B543  BF 77 E3 A7  Mx
    AND #$00FF                      ; $81B547  29 FF 00     Mx
    AND #$0007                      ; $81B54A  29 07 00     Mx
    STA $0708                       ; $81B54D  8D 08 07     Mx
L_81B550:
    LDA $0770                       ; $81B550  AD 70 07     Mx
    BNE L_81B558                    ; $81B553  D0 03        Mx
    JMP L_81B55E                    ; $81B555  4C 5E B5     Mx
L_81B558:
    JSR L_81D7E3                    ; $81B558  20 E3 D7     Mx
    JMP L_81B566                    ; $81B55B  4C 66 B5     Mx
L_81B55E:
    LDA $0774                       ; $81B55E  AD 74 07     Mx
    BEQ L_81B566                    ; $81B561  F0 03        Mx
    JSR L_81D4A8                    ; $81B563  20 A8 D4     Mx
L_81B566:
    RTS                             ; $81B566  60           Mx
L_81B567:
    LDA $06FA                       ; $81B567  AD FA 06     Mx
    CMP #$0003                      ; $81B56A  C9 03 00     Mx
    BNE L_81B572                    ; $81B56D  D0 03        Mx
    JMP L_81B5E8                    ; $81B56F  4C E8 B5     Mx
L_81B572:
    BCS L_81B577                    ; $81B572  B0 03        Mx
    JMP L_81B660                    ; $81B574  4C 60 B6     Mx
L_81B577:
    LDA $0714                       ; $81B577  AD 14 07     Mx
    BPL L_81B5D9                    ; $81B57A  10 5D        Mx
L_81B57C:
    STZ $0722                       ; $81B57C  9C 22 07     Mx
    STZ $0720                       ; $81B57F  9C 20 07     Mx
    STZ $0714                       ; $81B582  9C 14 07     Mx
    STZ $0716                       ; $81B585  9C 16 07     Mx
    STZ $072E                       ; $81B588  9C 2E 07     Mx
    STZ $072C                       ; $81B58B  9C 2C 07     Mx
    LDA $06FA                       ; $81B58E  AD FA 06     Mx
    CMP #$0008                      ; $81B591  C9 08 00     Mx
    BEQ L_81B599                    ; $81B594  F0 03        Mx
    JMP L_81B660                    ; $81B596  4C 60 B6     Mx
L_81B599:
    LDA $0794                       ; $81B599  AD 94 07     Mx
    BEQ L_81B5AF                    ; $81B59C  F0 11        Mx
    JSR L_81D428                    ; $81B59E  20 28 D4     Mx
    LDA $06F4                       ; $81B5A1  AD F4 06     Mx
    CMP #$002E                      ; $81B5A4  C9 2E 00     Mx
    BEQ L_81B5CA                    ; $81B5A7  F0 21        Mx
    LDA #$000C                      ; $81B5A9  A9 0C 00     Mx
    JMP L_81B5B2                    ; $81B5AC  4C B2 B5     Mx
L_81B5AF:
    LDA #$0000                      ; $81B5AF  A9 00 00     Mx
L_81B5B2:
    STA $06F4                       ; $81B5B2  8D F4 06     Mx
    LDA #$FFFF                      ; $81B5B5  A9 FF FF     Mx
    STA $06FA                       ; $81B5B8  8D FA 06     Mx
    STZ $06FC                       ; $81B5BB  9C FC 06     Mx
    STZ $0742                       ; $81B5BE  9C 42 07     Mx
    STZ $06F8                       ; $81B5C1  9C F8 06     Mx
    LDA #$FFF8                      ; $81B5C4  A9 F8 FF     Mx
    STA $06FE                       ; $81B5C7  8D FE 06     Mx
L_81B5CA:
    STZ $072A                       ; $81B5CA  9C 2A 07     Mx
    STZ $0728                       ; $81B5CD  9C 28 07     Mx
    STZ $0732                       ; $81B5D0  9C 32 07     Mx
    STZ $0730                       ; $81B5D3  9C 30 07     Mx
    JMP L_81B660                    ; $81B5D6  4C 60 B6     Mx
L_81B5D9:
    LDA $0714                       ; $81B5D9  AD 14 07     Mx
    BNE L_81B5E8                    ; $81B5DC  D0 0A        Mx
    LDA $072E                       ; $81B5DE  AD 2E 07     Mx
    BMI L_81B57C                    ; $81B5E1  30 99        Mx
    ORA $072C                       ; $81B5E3  0D 2C 07     Mx
    BEQ L_81B57C                    ; $81B5E6  F0 94        Mx
L_81B5E8:
    LDA $0734                       ; $81B5E8  AD 34 07     Mx
    BEQ L_81B614                    ; $81B5EB  F0 27        Mx
    LDA $0734                       ; $81B5ED  AD 34 07     Mx
    STA $072E                       ; $81B5F0  8D 2E 07     Mx
    LDA $0736                       ; $81B5F3  AD 36 07     Mx
    STA $072C                       ; $81B5F6  8D 2C 07     Mx
    LDA $0738                       ; $81B5F9  AD 38 07     Mx
    STA $072A                       ; $81B5FC  8D 2A 07     Mx
    LDA $073A                       ; $81B5FF  AD 3A 07     Mx
    STA $0728                       ; $81B602  8D 28 07     Mx
    LDA $073C                       ; $81B605  AD 3C 07     Mx
    STA $0732                       ; $81B608  8D 32 07     Mx
    LDA $073E                       ; $81B60B  AD 3E 07     Mx
    STA $0730                       ; $81B60E  8D 30 07     Mx
    STZ $0734                       ; $81B611  9C 34 07     Mx
L_81B614:
    LDA $072C                       ; $81B614  AD 2C 07     Mx
    SEC                             ; $81B617  38           Mx
    SBC #$2500                      ; $81B618  E9 00 25     Mx
    STA $072C                       ; $81B61B  8D 2C 07     Mx
    LDA $072E                       ; $81B61E  AD 2E 07     Mx
    SBC #$0000                      ; $81B621  E9 00 00     Mx
    STA $072E                       ; $81B624  8D 2E 07     Mx
    LDA $06FA                       ; $81B627  AD FA 06     Mx
    CMP #$0007                      ; $81B62A  C9 07 00     Mx
    BEQ L_81B65A                    ; $81B62D  F0 2B        Mx
    CMP #$0003                      ; $81B62F  C9 03 00     Mx
    BNE L_81B660                    ; $81B632  D0 2C        Mx
    LDA $072C                       ; $81B634  AD 2C 07     Mx
    SEC                             ; $81B637  38           Mx
    SBC #$9A00                      ; $81B638  E9 00 9A     Mx
    LDA $072E                       ; $81B63B  AD 2E 07     Mx
    SBC #$0002                      ; $81B63E  E9 02 00     Mx
    BPL L_81B65A                    ; $81B641  10 17        Mx
    LDA $06FC                       ; $81B643  AD FC 06     Mx
    BNE L_81B660                    ; $81B646  D0 18        Mx
    LDA $06FA                       ; $81B648  AD FA 06     Mx
    CMP #$0003                      ; $81B64B  C9 03 00     Mx
    BNE L_81B660                    ; $81B64E  D0 10        Mx
    LDA #$0008                      ; $81B650  A9 08 00     Mx
    JSL L_BDFDF3                    ; $81B653  22 F3 FD BD  Mx
    JMP L_81B660                    ; $81B657  4C 60 B6     Mx
L_81B65A:
    LDA #$0001                      ; $81B65A  A9 01 00     Mx
    STA $06FC                       ; $81B65D  8D FC 06     Mx
L_81B660:
    RTS                             ; $81B660  60           Mx
L_81B661:
    LDA $0714                       ; $81B661  AD 14 07     Mx
    BPL L_81B6E4                    ; $81B664  10 7E        Mx
L_81B666:
    STZ $0722                       ; $81B666  9C 22 07     Mx
    STZ $0720                       ; $81B669  9C 20 07     Mx
    STZ $0714                       ; $81B66C  9C 14 07     Mx
    STZ $0716                       ; $81B66F  9C 16 07     Mx
    STZ $072E                       ; $81B672  9C 2E 07     Mx
    STZ $072C                       ; $81B675  9C 2C 07     Mx
    LDA $06FA                       ; $81B678  AD FA 06     Mx
    CMP #$0004                      ; $81B67B  C9 04 00     Mx
    BEQ L_81B693                    ; $81B67E  F0 13        Mx
    CMP #$0003                      ; $81B680  C9 03 00     Mx
    BEQ L_81B688                    ; $81B683  F0 03        Mx
    JMP L_81B7D5                    ; $81B685  4C D5 B7     Mx
L_81B688:
    LDA $06F4                       ; $81B688  AD F4 06     Mx
    CMP #$0020                      ; $81B68B  C9 20 00     Mx
    BEQ L_81B693                    ; $81B68E  F0 03        Mx
    JMP L_81B7D5                    ; $81B690  4C D5 B7     Mx
L_81B693:
    LDA $06F0                       ; $81B693  AD F0 06     Mx
    AND #$00FF                      ; $81B696  29 FF 00     Mx
    CMP $0A9C                       ; $81B699  CD 9C 0A     Mx
    BNE L_81B6A1                    ; $81B69C  D0 03        Mx
    STZ $0A9C                       ; $81B69E  9C 9C 0A     Mx
L_81B6A1:
    LDA $0794                       ; $81B6A1  AD 94 07     Mx
    BEQ L_81B6BA                    ; $81B6A4  F0 14        Mx
    STZ $0780                       ; $81B6A6  9C 80 07     Mx
    JSR L_81D428                    ; $81B6A9  20 28 D4     Mx
    LDA $06F4                       ; $81B6AC  AD F4 06     Mx
    CMP #$002E                      ; $81B6AF  C9 2E 00     Mx
    BEQ L_81B6D5                    ; $81B6B2  F0 21        Mx
    LDA #$000C                      ; $81B6B4  A9 0C 00     Mx
    JMP L_81B6BD                    ; $81B6B7  4C BD B6     Mx
L_81B6BA:
    LDA #$0000                      ; $81B6BA  A9 00 00     Mx
L_81B6BD:
    STA $06F4                       ; $81B6BD  8D F4 06     Mx
    LDA #$FFFF                      ; $81B6C0  A9 FF FF     Mx
    STA $06FA                       ; $81B6C3  8D FA 06     Mx
    STZ $06FC                       ; $81B6C6  9C FC 06     Mx
    STZ $0742                       ; $81B6C9  9C 42 07     Mx
    STZ $06F8                       ; $81B6CC  9C F8 06     Mx
    LDA #$FFF8                      ; $81B6CF  A9 F8 FF     Mx
    STA $06FE                       ; $81B6D2  8D FE 06     Mx
L_81B6D5:
    STZ $072A                       ; $81B6D5  9C 2A 07     Mx
    STZ $0728                       ; $81B6D8  9C 28 07     Mx
    STZ $0732                       ; $81B6DB  9C 32 07     Mx
    STZ $0730                       ; $81B6DE  9C 30 07     Mx
    JMP L_81B7D5                    ; $81B6E1  4C D5 B7     Mx
L_81B6E4:
    LDA $0714                       ; $81B6E4  AD 14 07     Mx
    BNE L_81B6F6                    ; $81B6E7  D0 0D        Mx
    LDA $072E                       ; $81B6E9  AD 2E 07     Mx
    BMI L_81B6F3                    ; $81B6EC  30 05        Mx
    ORA $072C                       ; $81B6EE  0D 2C 07     Mx
    BNE L_81B6F6                    ; $81B6F1  D0 03        Mx
L_81B6F3:
    JMP L_81B666                    ; $81B6F3  4C 66 B6     Mx
L_81B6F6:
    LDA $072C                       ; $81B6F6  AD 2C 07     Mx
    SEC                             ; $81B6F9  38           Mx
    SBC #$2500                      ; $81B6FA  E9 00 25     Mx
    STA $072C                       ; $81B6FD  8D 2C 07     Mx
    LDA $072E                       ; $81B700  AD 2E 07     Mx
    SBC #$0000                      ; $81B703  E9 00 00     Mx
    STA $072E                       ; $81B706  8D 2E 07     Mx
    LDA $0CCB                       ; $81B709  AD CB 0C     Mx
    BEQ L_81B713                    ; $81B70C  F0 05        Mx
    LDA $0794                       ; $81B70E  AD 94 07     Mx
    BNE L_81B716                    ; $81B711  D0 03        Mx
L_81B713:
    JMP L_81B795                    ; $81B713  4C 95 B7     Mx
L_81B716:
    LDA $06F4                       ; $81B716  AD F4 06     Mx
    CMP #$0022                      ; $81B719  C9 22 00     Mx
    BNE L_81B795                    ; $81B71C  D0 77        Mx
    LDA $0754                       ; $81B71E  AD 54 07     Mx
    CMP #$0040                      ; $81B721  C9 40 00     Mx
    BCS L_81B795                    ; $81B724  B0 6F        Mx
    LDA $0770                       ; $81B726  AD 70 07     Mx
    BEQ L_81B795                    ; $81B729  F0 6A        Mx
    EOR $0772                       ; $81B72B  4D 72 07     Mx
    BEQ L_81B795                    ; $81B72E  F0 65        Mx
    LDX $0756                       ; $81B730  AE 56 07     Mx
    LDA $A7E377,X                   ; $81B733  BF 77 E3 A7  Mx
    AND #$0007                      ; $81B737  29 07 00     Mx
    BEQ L_81B795                    ; $81B73A  F0 59        Mx
    STA $0708                       ; $81B73C  8D 08 07     Mx
    STA $070A                       ; $81B73F  8D 0A 07     Mx
    ASL                             ; $81B742  0A           Mx
    TAX                             ; $81B743  AA           Mx
    LDA #$24D3                      ; $81B744  A9 D3 24     Mx
    STA $00D1                       ; $81B747  8D D1 00     Mx
    STZ $06FC                       ; $81B74A  9C FC 06     Mx
    LDA $24D3F6,X                   ; $81B74D  BF F6 D3 24  Mx
    STA $079E                       ; $81B751  8D 9E 07     Mx
    STA $00D0                       ; $81B754  8D D0 00     Mx
    LDA #$0008                      ; $81B757  A9 08 00     Mx
    STA $07A0                       ; $81B75A  8D A0 07     Mx
    STZ $070E                       ; $81B75D  9C 0E 07     Mx
    LDA #$0082                      ; $81B760  A9 82 00     Mx
    STA $079C                       ; $81B763  8D 9C 07     Mx
    LDA #$0008                      ; $81B766  A9 08 00     Mx
    STA $06F8                       ; $81B769  8D F8 06     Mx
    LDY $07A0                       ; $81B76C  AC A0 07     Mx
    LDA [$D0],Y                     ; $81B76F  B7 D0        Mx
    STA $06FC                       ; $81B771  8D FC 06     Mx
    INY                             ; $81B774  C8           Mx
    INY                             ; $81B775  C8           Mx
    LDA [$D0],Y                     ; $81B776  B7 D0        Mx
    STA $06FE                       ; $81B778  8D FE 06     Mx
    STZ $06FA                       ; $81B77B  9C FA 06     Mx
    INY                             ; $81B77E  C8           Mx
    INY                             ; $81B77F  C8           Mx
    STY $07A0                       ; $81B780  8C A0 07     Mx
    STZ $06F6                       ; $81B783  9C F6 06     Mx
    LDA #$003A                      ; $81B786  A9 3A 00     Mx
    STA $06F4                       ; $81B789  8D F4 06     Mx
    LDA #$0002                      ; $81B78C  A9 02 00     Mx
    STA $0C3B                       ; $81B78F  8D 3B 0C     Mx
    JMP L_81B7D5                    ; $81B792  4C D5 B7     Mx
L_81B795:
    LDA $06F4                       ; $81B795  AD F4 06     Mx
    CMP #$0022                      ; $81B798  C9 22 00     Mx
    BNE L_81B7C7                    ; $81B79B  D0 2A        Mx
    LDA $06FA                       ; $81B79D  AD FA 06     Mx
    BNE L_81B7B4                    ; $81B7A0  D0 12        Mx
    LDA $072C                       ; $81B7A2  AD 2C 07     Mx
    SEC                             ; $81B7A5  38           Mx
    SBC #$9A00                      ; $81B7A6  E9 00 9A     Mx
    LDA $072E                       ; $81B7A9  AD 2E 07     Mx
    SBC #$0002                      ; $81B7AC  E9 02 00     Mx
    BPL L_81B7CF                    ; $81B7AF  10 1E        Mx
    JMP L_81B7D5                    ; $81B7B1  4C D5 B7     Mx
L_81B7B4:
    CMP #$0002                      ; $81B7B4  C9 02 00     Mx
    BNE L_81B7BF                    ; $81B7B7  D0 06        Mx
    LDA $0794                       ; $81B7B9  AD 94 07     Mx
    JMP L_81B7CF                    ; $81B7BC  4C CF B7     Mx
L_81B7BF:
    CMP #$0003                      ; $81B7BF  C9 03 00     Mx
    BEQ L_81B7CF                    ; $81B7C2  F0 0B        Mx
    JMP L_81B7D5                    ; $81B7C4  4C D5 B7     Mx
L_81B7C7:
    LDA $06FA                       ; $81B7C7  AD FA 06     Mx
    CMP #$0002                      ; $81B7CA  C9 02 00     Mx
    BNE L_81B7D5                    ; $81B7CD  D0 06        Mx
L_81B7CF:
    LDA #$0001                      ; $81B7CF  A9 01 00     Mx
    STA $06FC                       ; $81B7D2  8D FC 06     Mx
L_81B7D5:
    RTS                             ; $81B7D5  60           Mx
L_81B7D6:
    STZ $072A                       ; $81B7D6  9C 2A 07     Mx
    STZ $0728                       ; $81B7D9  9C 28 07     Mx
    STZ $0732                       ; $81B7DC  9C 32 07     Mx
    STZ $0730                       ; $81B7DF  9C 30 07     Mx
    STZ $072E                       ; $81B7E2  9C 2E 07     Mx
    STZ $072C                       ; $81B7E5  9C 2C 07     Mx
    LDA $0794                       ; $81B7E8  AD 94 07     Mx
    BEQ L_81B80B                    ; $81B7EB  F0 1E        Mx
    LDA #$000C                      ; $81B7ED  A9 0C 00     Mx
    STA $06F4                       ; $81B7F0  8D F4 06     Mx
    LDA #$FFFF                      ; $81B7F3  A9 FF FF     Mx
    STA $06FA                       ; $81B7F6  8D FA 06     Mx
    STZ $06FC                       ; $81B7F9  9C FC 06     Mx
    STZ $0742                       ; $81B7FC  9C 42 07     Mx
    STZ $06F8                       ; $81B7FF  9C F8 06     Mx
    LDA #$FFF8                      ; $81B802  A9 F8 FF     Mx
    STA $06FE                       ; $81B805  8D FE 06     Mx
    JMP L_81B849                    ; $81B808  4C 49 B8     Mx
L_81B80B:
    LDA $075E                       ; $81B80B  AD 5E 07     Mx
    TAX                             ; $81B80E  AA           Mx
    LDA $A7E377,X                   ; $81B80F  BF 77 E3 A7  Mx
    AND #$0007                      ; $81B813  29 07 00     Mx
    STA $0708                       ; $81B816  8D 08 07     Mx
    ASL                             ; $81B819  0A           Mx
    TAX                             ; $81B81A  AA           Mx
    LDA $06FA                       ; $81B81B  AD FA 06     Mx
    CMP #$0003                      ; $81B81E  C9 03 00     Mx
    BNE L_81B828                    ; $81B821  D0 05        Mx
    LDX $0774                       ; $81B823  AE 74 07     Mx
    BEQ L_81B82E                    ; $81B826  F0 06        Mx
L_81B828:
    CMP $A7E4A9,X                   ; $81B828  DF A9 E4 A7  Mx
    BCC L_81B849                    ; $81B82C  90 1B        Mx
L_81B82E:
    LDA #$0000                      ; $81B82E  A9 00 00     Mx
    STA $06F4                       ; $81B831  8D F4 06     Mx
    LDA #$FFFF                      ; $81B834  A9 FF FF     Mx
    STA $06FA                       ; $81B837  8D FA 06     Mx
    STZ $06FC                       ; $81B83A  9C FC 06     Mx
    STZ $0742                       ; $81B83D  9C 42 07     Mx
    STZ $06F8                       ; $81B840  9C F8 06     Mx
    LDA #$FFF8                      ; $81B843  A9 F8 FF     Mx
    STA $06FE                       ; $81B846  8D FE 06     Mx
L_81B849:
    RTS                             ; $81B849  60           Mx
L_81B84A:
    STZ $072A                       ; $81B84A  9C 2A 07     Mx
    STZ $0728                       ; $81B84D  9C 28 07     Mx
    STZ $0732                       ; $81B850  9C 32 07     Mx
    STZ $0730                       ; $81B853  9C 30 07     Mx
    STZ $072E                       ; $81B856  9C 2E 07     Mx
    STZ $072C                       ; $81B859  9C 2C 07     Mx
    LDA $0794                       ; $81B85C  AD 94 07     Mx
    BNE L_81B867                    ; $81B85F  D0 06        Mx
    LDA #$0000                      ; $81B861  A9 00 00     Mx
    JMP L_81BA4E                    ; $81B864  4C 4E BA     Mx
L_81B867:
    LDX $0708                       ; $81B867  AE 08 07     Mx
    LDA $A7E4FB,X                   ; $81B86A  BF FB E4 A7  Mx
    AND #$0007                      ; $81B86E  29 07 00     Mx
    STA $0708                       ; $81B871  8D 08 07     Mx
    LDA $06FA                       ; $81B874  AD FA 06     Mx
    CMP #$0008                      ; $81B877  C9 08 00     Mx
    BNE L_81B87F                    ; $81B87A  D0 03        Mx
    JMP L_81B9F3                    ; $81B87C  4C F3 B9     Mx
L_81B87F:
    CMP #$0004                      ; $81B87F  C9 04 00     Mx
    BEQ L_81B887                    ; $81B882  F0 03        Mx
    JMP L_81BA66                    ; $81B884  4C 66 BA     Mx
L_81B887:
    STZ $00B0                       ; $81B887  9C B0 00     Mx
    LDA $0954                       ; $81B88A  AD 54 09     Mx
    BNE L_81B897                    ; $81B88D  D0 08        Mx
    LDA $0768                       ; $81B88F  AD 68 07     Mx
    CMP #$0020                      ; $81B892  C9 20 00     Mx
    BCC L_81B89A                    ; $81B895  90 03        Mx
L_81B897:
    JMP L_81B91E                    ; $81B897  4C 1E B9     Mx
L_81B89A:
    LDA $1D56                       ; $81B89A  AD 56 1D     Mx
    AND #$0003                      ; $81B89D  29 03 00     Mx
    BNE L_81B8A5                    ; $81B8A0  D0 03        Mx
    JMP L_81B91E                    ; $81B8A2  4C 1E B9     Mx
L_81B8A5:
    LDA $0762                       ; $81B8A5  AD 62 07     Mx
    CLC                             ; $81B8A8  18           Mx
    AND #$007F                      ; $81B8A9  29 7F 00     Mx
    ASL                             ; $81B8AC  0A           Mx
    TAX                             ; $81B8AD  AA           Mx
    LDY #$00                        ; $81B8AE  A0 00        Mx
    STZ $08FA                       ; $81B8B0  9C FA 08     Mx
    LDA $9AABEB,X                   ; $81B8B3  BF EB AB 9A  Mx
    BPL L_81B8BC                    ; $81B8B7  10 03        Mx
    DEC $08FA                       ; $81B8B9  CE FA 08     Mx
L_81B8BC:
    ASL                             ; $81B8BC  0A           Mx
    ROL $08FA                       ; $81B8BD  2E FA 08     Mx
    ASL                             ; $81B8C0  0A           Mx
    ROL $08FA                       ; $81B8C1  2E FA 08     Mx
    ASL                             ; $81B8C4  0A           Mx
    ROL $08FA                       ; $81B8C5  2E FA 08     Mx
    ASL                             ; $81B8C8  0A           Mx
    ROL $08FA                       ; $81B8C9  2E FA 08     Mx
    ASL                             ; $81B8CC  0A           Mx
    ROL $08FA                       ; $81B8CD  2E FA 08     Mx
    STA $08F8                       ; $81B8D0  8D F8 08     Mx
    LDY #$00                        ; $81B8D3  A0 00        Mx
    STZ $0902                       ; $81B8D5  9C 02 09     Mx
    LDA $9AABAB,X                   ; $81B8D8  BF AB AB 9A  Mx
    BPL L_81B8E1                    ; $81B8DC  10 03        Mx
    DEC $0902                       ; $81B8DE  CE 02 09     Mx
L_81B8E1:
    ASL                             ; $81B8E1  0A           Mx
    ROL $0902                       ; $81B8E2  2E 02 09     Mx
    ASL                             ; $81B8E5  0A           Mx
    ROL $0902                       ; $81B8E6  2E 02 09     Mx
    ASL                             ; $81B8E9  0A           Mx
    ROL $0902                       ; $81B8EA  2E 02 09     Mx
    ASL                             ; $81B8ED  0A           Mx
    ROL $0902                       ; $81B8EE  2E 02 09     Mx
    ASL                             ; $81B8F1  0A           Mx
    ROL $0902                       ; $81B8F2  2E 02 09     Mx
    STA $0900                       ; $81B8F5  8D 00 09     Mx
    LDA $08F2                       ; $81B8F8  AD F2 08     Mx
    BNE L_81B909                    ; $81B8FB  D0 0C        Mx
    LDA #$E400                      ; $81B8FD  A9 00 E4     Mx
    STA $08FC                       ; $81B900  8D FC 08     Mx
    LDA #$0002                      ; $81B903  A9 02 00     Mx
    STA $08FE                       ; $81B906  8D FE 08     Mx
L_81B909:
    LDA #$0030                      ; $81B909  A9 30 00     Mx
    STA $08C4                       ; $81B90C  8D C4 08     Mx
    STA $08C2                       ; $81B90F  8D C2 08     Mx
    LDA #$0020                      ; $81B912  A9 20 00     Mx
    STA $0954                       ; $81B915  8D 54 09     Mx
    LDA #$0001                      ; $81B918  A9 01 00     Mx
    STA $00B0                       ; $81B91B  8D B0 00     Mx
L_81B91E:
    LDA $0A3C                       ; $81B91E  AD 3C 0A     Mx
    BNE L_81B92B                    ; $81B921  D0 08        Mx
    LDA $076A                       ; $81B923  AD 6A 07     Mx
    CMP #$0020                      ; $81B926  C9 20 00     Mx
    BCC L_81B92E                    ; $81B929  90 03        Mx
L_81B92B:
    JMP L_81B9B1                    ; $81B92B  4C B1 B9     Mx
L_81B92E:
    LDA $1D57                       ; $81B92E  AD 57 1D     Mx
    AND #$0003                      ; $81B931  29 03 00     Mx
    BNE L_81B939                    ; $81B934  D0 03        Mx
    JMP L_81B9B1                    ; $81B936  4C B1 B9     Mx
L_81B939:
    LDA $0762                       ; $81B939  AD 62 07     Mx
    AND #$007F                      ; $81B93C  29 7F 00     Mx
    ASL                             ; $81B93F  0A           Mx
    TAX                             ; $81B940  AA           Mx
    LDY #$00                        ; $81B941  A0 00        Mx
    STZ $09E2                       ; $81B943  9C E2 09     Mx
    LDA $9AABEB,X                   ; $81B946  BF EB AB 9A  Mx
    BPL L_81B94F                    ; $81B94A  10 03        Mx
    DEC $09E2                       ; $81B94C  CE E2 09     Mx
L_81B94F:
    ASL                             ; $81B94F  0A           Mx
    ROL $09E2                       ; $81B950  2E E2 09     Mx
    ASL                             ; $81B953  0A           Mx
    ROL $09E2                       ; $81B954  2E E2 09     Mx
    ASL                             ; $81B957  0A           Mx
    ROL $09E2                       ; $81B958  2E E2 09     Mx
    ASL                             ; $81B95B  0A           Mx
    ROL $09E2                       ; $81B95C  2E E2 09     Mx
    ASL                             ; $81B95F  0A           Mx
    ROL $09E2                       ; $81B960  2E E2 09     Mx
    STA $09E0                       ; $81B963  8D E0 09     Mx
    LDY #$00                        ; $81B966  A0 00        Mx
    STZ $09EA                       ; $81B968  9C EA 09     Mx
    LDA $9AABAB,X                   ; $81B96B  BF AB AB 9A  Mx
    BPL L_81B974                    ; $81B96F  10 03        Mx
    DEC $09EA                       ; $81B971  CE EA 09     Mx
L_81B974:
    ASL                             ; $81B974  0A           Mx
    ROL $09EA                       ; $81B975  2E EA 09     Mx
    ASL                             ; $81B978  0A           Mx
    ROL $09EA                       ; $81B979  2E EA 09     Mx
    ASL                             ; $81B97C  0A           Mx
    ROL $09EA                       ; $81B97D  2E EA 09     Mx
    ASL                             ; $81B980  0A           Mx
    ROL $09EA                       ; $81B981  2E EA 09     Mx
    ASL                             ; $81B984  0A           Mx
    ROL $09EA                       ; $81B985  2E EA 09     Mx
    STA $09E8                       ; $81B988  8D E8 09     Mx
    LDA $09DA                       ; $81B98B  AD DA 09     Mx
    BNE L_81B99C                    ; $81B98E  D0 0C        Mx
    LDA #$E400                      ; $81B990  A9 00 E4     Mx
    STA $09E4                       ; $81B993  8D E4 09     Mx
    LDA #$0002                      ; $81B996  A9 02 00     Mx
    STA $09E6                       ; $81B999  8D E6 09     Mx
L_81B99C:
    LDA #$0030                      ; $81B99C  A9 30 00     Mx
    STA $09AC                       ; $81B99F  8D AC 09     Mx
    STA $09AA                       ; $81B9A2  8D AA 09     Mx
    LDA #$0020                      ; $81B9A5  A9 20 00     Mx
    STA $0A3C                       ; $81B9A8  8D 3C 0A     Mx
    LDA #$0001                      ; $81B9AB  A9 01 00     Mx
    STA $00B0                       ; $81B9AE  8D B0 00     Mx
L_81B9B1:
    LDA $00B0                       ; $81B9B1  AD B0 00     Mx
    BEQ L_81B9F0                    ; $81B9B4  F0 3A        Mx
    LDA #$0023                      ; $81B9B6  A9 23 00     Mx
    JSL L_BDFDF3                    ; $81B9B9  22 F3 FD BD  Mx
    LDA $1D56                       ; $81B9BD  AD 56 1D     Mx
    AND #$0003                      ; $81B9C0  29 03 00     Mx
    BEQ L_81B9DE                    ; $81B9C3  F0 19        Mx
    CMP #$0001                      ; $81B9C5  C9 01 00     Mx
    BNE L_81B9F0                    ; $81B9C8  D0 26        Mx
    LDA $1613                       ; $81B9CA  AD 13 16     Mx
    BNE L_81B9DC                    ; $81B9CD  D0 0D        Mx
    LDA #$0010                      ; $81B9CF  A9 10 00     Mx
    JSL L_BDFDF3                    ; $81B9D2  22 F3 FD BD  Mx
    LDA #$0064                      ; $81B9D6  A9 64 00     Mx
    STA $1613                       ; $81B9D9  8D 13 16     Mx
L_81B9DC:
    BRA L_81B9F0                    ; $81B9DC  80 12        Mx
L_81B9DE:
    LDA $1611                       ; $81B9DE  AD 11 16     Mx
    BNE L_81B9F0                    ; $81B9E1  D0 0D        Mx
    LDA #$0011                      ; $81B9E3  A9 11 00     Mx
    JSL L_BDFDF3                    ; $81B9E6  22 F3 FD BD  Mx
    LDA #$0064                      ; $81B9EA  A9 64 00     Mx
    STA $1611                       ; $81B9ED  8D 11 16     Mx
L_81B9F0:
    JMP L_81BA66                    ; $81B9F0  4C 66 BA     Mx
L_81B9F3:
    LDA #$000C                      ; $81B9F3  A9 0C 00     Mx
    STA $06F4                       ; $81B9F6  8D F4 06     Mx
    LDA #$FFFF                      ; $81B9F9  A9 FF FF     Mx
    STA $06FA                       ; $81B9FC  8D FA 06     Mx
    STZ $06FC                       ; $81B9FF  9C FC 06     Mx
    STZ $0742                       ; $81BA02  9C 42 07     Mx
    STZ $06F8                       ; $81BA05  9C F8 06     Mx
    LDA #$FFF8                      ; $81BA08  A9 F8 FF     Mx
    STA $06FE                       ; $81BA0B  8D FE 06     Mx
    LDA $0768                       ; $81BA0E  AD 68 07     Mx
    CMP #$003C                      ; $81BA11  C9 3C 00     Mx
    BCS L_81BA23                    ; $81BA14  B0 0D        Mx
    CMP #$001E                      ; $81BA16  C9 1E 00     Mx
    BCC L_81BA3B                    ; $81BA19  90 20        Mx
    LDA $08C4                       ; $81BA1B  AD C4 08     Mx
    CMP #$002C                      ; $81BA1E  C9 2C 00     Mx
    BEQ L_81BA3B                    ; $81BA21  F0 18        Mx
L_81BA23:
    LDA $076A                       ; $81BA23  AD 6A 07     Mx
    CMP #$003C                      ; $81BA26  C9 3C 00     Mx
    BCS L_81BA38                    ; $81BA29  B0 0D        Mx
    CMP #$001E                      ; $81BA2B  C9 1E 00     Mx
    BCC L_81BA3B                    ; $81BA2E  90 0B        Mx
    LDA $09AC                       ; $81BA30  AD AC 09     Mx
    CMP #$002C                      ; $81BA33  C9 2C 00     Mx
    BEQ L_81BA3B                    ; $81BA36  F0 03        Mx
L_81BA38:
    JMP L_81BA66                    ; $81BA38  4C 66 BA     Mx
L_81BA3B:
    LDA $0CCB                       ; $81BA3B  AD CB 0C     Mx
    CMP #$0003                      ; $81BA3E  C9 03 00     Mx
    BCC L_81BA66                    ; $81BA41  90 23        Mx
    LDA $1D56                       ; $81BA43  AD 56 1D     Mx
    AND #$0001                      ; $81BA46  29 01 00     Mx
    BEQ L_81BA66                    ; $81BA49  F0 1B        Mx
    LDA #$002E                      ; $81BA4B  A9 2E 00     Mx
L_81BA4E:
    STA $06F4                       ; $81BA4E  8D F4 06     Mx
    LDA #$FFFF                      ; $81BA51  A9 FF FF     Mx
    STA $06FA                       ; $81BA54  8D FA 06     Mx
    STZ $06FC                       ; $81BA57  9C FC 06     Mx
    STZ $0742                       ; $81BA5A  9C 42 07     Mx
    STZ $06F8                       ; $81BA5D  9C F8 06     Mx
    LDA #$FFF8                      ; $81BA60  A9 F8 FF     Mx
    STA $06FE                       ; $81BA63  8D FE 06     Mx
L_81BA66:
    RTS                             ; $81BA66  60           Mx
L_81BA67:
    LDA #$000A                      ; $81BA67  A9 0A 00     Mx
    STA $0778                       ; $81BA6A  8D 78 07     Mx
    LDA $072E                       ; $81BA6D  AD 2E 07     Mx
    BPL L_81BA97                    ; $81BA70  10 25        Mx
    LDA $0714                       ; $81BA72  AD 14 07     Mx
    BMI L_81BA7C                    ; $81BA75  30 05        Mx
    ORA $0716                       ; $81BA77  0D 16 07     Mx
    BNE L_81BA97                    ; $81BA7A  D0 1B        Mx
L_81BA7C:
    STZ $0722                       ; $81BA7C  9C 22 07     Mx
    STZ $0720                       ; $81BA7F  9C 20 07     Mx
    STZ $072A                       ; $81BA82  9C 2A 07     Mx
    STZ $0728                       ; $81BA85  9C 28 07     Mx
    STZ $0732                       ; $81BA88  9C 32 07     Mx
    STZ $0730                       ; $81BA8B  9C 30 07     Mx
    STZ $072E                       ; $81BA8E  9C 2E 07     Mx
    STZ $072C                       ; $81BA91  9C 2C 07     Mx
    JMP L_81BAAD                    ; $81BA94  4C AD BA     Mx
L_81BA97:
    LDA $072C                       ; $81BA97  AD 2C 07     Mx
    SEC                             ; $81BA9A  38           Mx
    SBC #$2500                      ; $81BA9B  E9 00 25     Mx
    STA $072C                       ; $81BA9E  8D 2C 07     Mx
    LDA $072E                       ; $81BAA1  AD 2E 07     Mx
    SBC #$0000                      ; $81BAA4  E9 00 00     Mx
    STA $072E                       ; $81BAA7  8D 2E 07     Mx
    JMP L_81BAAD                    ; $81BAAA  4C AD BA     Mx
L_81BAAD:
    LDA $0784                       ; $81BAAD  AD 84 07     Mx
    BEQ L_81BAD3                    ; $81BAB0  F0 21        Mx
    DEC $0784                       ; $81BAB2  CE 84 07     Mx
    BNE L_81BB30                    ; $81BAB5  D0 79        Mx
    LDA $076C                       ; $81BAB7  AD 6C 07     Mx
    AND $07D0                       ; $81BABA  2D D0 07     Mx
    BEQ L_81BAD3                    ; $81BABD  F0 14        Mx
    LDA $0784                       ; $81BABF  AD 84 07     Mx
    CMP #$0004                      ; $81BAC2  C9 04 00     Mx
    BCC L_81BAD3                    ; $81BAC5  90 0C        Mx
    SEC                             ; $81BAC7  38           Mx
    SBC #$0008                      ; $81BAC8  E9 08 00     Mx
    BCS L_81BAD0                    ; $81BACB  B0 03        Mx
    LDA #$0004                      ; $81BACD  A9 04 00     Mx
L_81BAD0:
    STA $0784                       ; $81BAD0  8D 84 07     Mx
L_81BAD3:
    LDA $0722                       ; $81BAD3  AD 22 07     Mx
    ORA $0720                       ; $81BAD6  0D 20 07     Mx
    BNE L_81BB30                    ; $81BAD9  D0 55        Mx
    STZ $072A                       ; $81BADB  9C 2A 07     Mx
    STZ $0728                       ; $81BADE  9C 28 07     Mx
    STZ $0732                       ; $81BAE1  9C 32 07     Mx
    STZ $0730                       ; $81BAE4  9C 30 07     Mx
    LDA $06FA                       ; $81BAE7  AD FA 06     Mx
    CMP #$0004                      ; $81BAEA  C9 04 00     Mx
    BEQ L_81BAF4                    ; $81BAED  F0 05        Mx
    CMP #$000E                      ; $81BAEF  C9 0E 00     Mx
    BNE L_81BB68                    ; $81BAF2  D0 74        Mx
L_81BAF4:
    LDA $0794                       ; $81BAF4  AD 94 07     Mx
    BEQ L_81BB09                    ; $81BAF7  F0 10        Mx
    JSR L_81D428                    ; $81BAF9  20 28 D4     Mx
    LDA $06F4                       ; $81BAFC  AD F4 06     Mx
    CMP #$002E                      ; $81BAFF  C9 2E 00     Mx
    BEQ L_81BB0C                    ; $81BB02  F0 08        Mx
    LDA #$000C                      ; $81BB04  A9 0C 00     Mx
    BNE L_81BB0C                    ; $81BB07  D0 03        Mx
L_81BB09:
    LDA #$0000                      ; $81BB09  A9 00 00     Mx
L_81BB0C:
    STA $06F4                       ; $81BB0C  8D F4 06     Mx
    LDA #$FFFF                      ; $81BB0F  A9 FF FF     Mx
    STA $06FA                       ; $81BB12  8D FA 06     Mx
    STZ $06FC                       ; $81BB15  9C FC 06     Mx
    STZ $0742                       ; $81BB18  9C 42 07     Mx
    STZ $06F8                       ; $81BB1B  9C F8 06     Mx
    LDA #$FFF8                      ; $81BB1E  A9 F8 FF     Mx
    STA $06FE                       ; $81BB21  8D FE 06     Mx
    LDA #$003C                      ; $81BB24  A9 3C 00     Mx
    STA $06F6                       ; $81BB27  8D F6 06     Mx
    STZ $0784                       ; $81BB2A  9C 84 07     Mx
    JMP L_81BB68                    ; $81BB2D  4C 68 BB     Mx
L_81BB30:
    LDA $06FA                       ; $81BB30  AD FA 06     Mx
    CMP #$0004                      ; $81BB33  C9 04 00     Mx
    BNE L_81BB57                    ; $81BB36  D0 1F        Mx
    LDA $06F6                       ; $81BB38  AD F6 06     Mx
    CMP #$0003                      ; $81BB3B  C9 03 00     Mx
    BEQ L_81BB78                    ; $81BB3E  F0 38        Mx
    LDA $06FC                       ; $81BB40  AD FC 06     Mx
    BNE L_81BB57                    ; $81BB43  D0 12        Mx
    LDA $1613                       ; $81BB45  AD 13 16     Mx
    BNE L_81BB57                    ; $81BB48  D0 0D        Mx
    LDA #$000F                      ; $81BB4A  A9 0F 00     Mx
    JSL L_BDFDF3                    ; $81BB4D  22 F3 FD BD  Mx
    LDA #$0064                      ; $81BB51  A9 64 00     Mx
    STA $1613                       ; $81BB54  8D 13 16     Mx
L_81BB57:
    LDA $06FA                       ; $81BB57  AD FA 06     Mx
    CMP #$0007                      ; $81BB5A  C9 07 00     Mx
    BEQ L_81BB62                    ; $81BB5D  F0 03        Mx
    JMP L_81BB68                    ; $81BB5F  4C 68 BB     Mx
L_81BB62:
    LDA #$0014                      ; $81BB62  A9 14 00     Mx
    STA $06FC                       ; $81BB65  8D FC 06     Mx
L_81BB68:
    LDA $06FA                       ; $81BB68  AD FA 06     Mx
    CMP #$0004                      ; $81BB6B  C9 04 00     Mx
    BNE L_81BB81                    ; $81BB6E  D0 11        Mx
    LDA $06F6                       ; $81BB70  AD F6 06     Mx
    CMP #$0003                      ; $81BB73  C9 03 00     Mx
    BNE L_81BB81                    ; $81BB76  D0 09        Mx
L_81BB78:
    STZ $0784                       ; $81BB78  9C 84 07     Mx
    LDA #$0001                      ; $81BB7B  A9 01 00     Mx
    STA $06FC                       ; $81BB7E  8D FC 06     Mx
L_81BB81:
    RTS                             ; $81BB81  60           Mx
L_81BB82:
    LDA $0C19                       ; $81BB82  AD 19 0C     Mx
    BNE L_81BB95                    ; $81BB85  D0 0E        Mx
    LDA $075E                       ; $81BB87  AD 5E 07     Mx
    TAX                             ; $81BB8A  AA           Mx
    LDA $A7E377,X                   ; $81BB8B  BF 77 E3 A7  Mx
    AND #$0007                      ; $81BB8F  29 07 00     Mx
    STA $0708                       ; $81BB92  8D 08 07     Mx
L_81BB95:
    LDA $0C19                       ; $81BB95  AD 19 0C     Mx
    CMP $06F0                       ; $81BB98  CD F0 06     Mx
    BNE L_81BBAB                    ; $81BB9B  D0 0E        Mx
    LDA $0BDD                       ; $81BB9D  AD DD 0B     Mx
    BEQ L_81BBAB                    ; $81BBA0  F0 09        Mx
    STZ $0BDD                       ; $81BBA2  9C DD 0B     Mx
    LDA #$001E                      ; $81BBA5  A9 1E 00     Mx
    STA $0BF1                       ; $81BBA8  8D F1 0B     Mx
L_81BBAB:
    LDA $06FA                       ; $81BBAB  AD FA 06     Mx
    CMP #$0004                      ; $81BBAE  C9 04 00     Mx
    BNE L_81BBDE                    ; $81BBB1  D0 2B        Mx
    LDA $0C19                       ; $81BBB3  AD 19 0C     Mx
    CMP $06F0                       ; $81BBB6  CD F0 06     Mx
    BEQ L_81BBC0                    ; $81BBB9  F0 05        Mx
    LDA #$0000                      ; $81BBBB  A9 00 00     Mx
    BRA L_81BBC3                    ; $81BBBE  80 03        Mx
L_81BBC0:
    LDA #$000C                      ; $81BBC0  A9 0C 00     Mx
L_81BBC3:
    STA $06F4                       ; $81BBC3  8D F4 06     Mx
    LDA #$FFFF                      ; $81BBC6  A9 FF FF     Mx
    STA $06FA                       ; $81BBC9  8D FA 06     Mx
    STZ $06FC                       ; $81BBCC  9C FC 06     Mx
    STZ $0742                       ; $81BBCF  9C 42 07     Mx
    STZ $06F8                       ; $81BBD2  9C F8 06     Mx
    LDA #$FFF8                      ; $81BBD5  A9 F8 FF     Mx
    STA $06FE                       ; $81BBD8  8D FE 06     Mx
    JSR L_81D428                    ; $81BBDB  20 28 D4     Mx
L_81BBDE:
    RTS                             ; $81BBDE  60           Mx
L_81BBDF:
    LDA $06FA                       ; $81BBDF  AD FA 06     Mx
    CMP #$0005                      ; $81BBE2  C9 05 00     Mx
    BNE L_81BC1D                    ; $81BBE5  D0 36        Mx
    LDA $06F0                       ; $81BBE7  AD F0 06     Mx
    CMP $0C19                       ; $81BBEA  CD 19 0C     Mx
    BNE L_81BBFF                    ; $81BBED  D0 10        Mx
    JSR L_81D428                    ; $81BBEF  20 28 D4     Mx
    LDA $06F4                       ; $81BBF2  AD F4 06     Mx
    CMP #$002E                      ; $81BBF5  C9 2E 00     Mx
    BEQ L_81BC02                    ; $81BBF8  F0 08        Mx
    LDA #$000C                      ; $81BBFA  A9 0C 00     Mx
    BNE L_81BC02                    ; $81BBFD  D0 03        Mx
L_81BBFF:
    LDA #$0000                      ; $81BBFF  A9 00 00     Mx
L_81BC02:
    STA $06F4                       ; $81BC02  8D F4 06     Mx
    LDA #$FFFF                      ; $81BC05  A9 FF FF     Mx
    STA $06FA                       ; $81BC08  8D FA 06     Mx
    STZ $06FC                       ; $81BC0B  9C FC 06     Mx
    STZ $0742                       ; $81BC0E  9C 42 07     Mx
    STZ $06F8                       ; $81BC11  9C F8 06     Mx
    LDA #$FFF8                      ; $81BC14  A9 F8 FF     Mx
    STA $06FE                       ; $81BC17  8D FE 06     Mx
    JMP L_81C231                    ; $81BC1A  4C 31 C2     Mx
L_81BC1D:
    CMP #$0003                      ; $81BC1D  C9 03 00     Mx
    BEQ L_81BC25                    ; $81BC20  F0 03        Mx
    JMP L_81C231                    ; $81BC22  4C 31 C2     Mx
L_81BC25:
    LDA $0708                       ; $81BC25  AD 08 07     Mx
    ASL                             ; $81BC28  0A           Mx
    ASL                             ; $81BC29  0A           Mx
    ASL                             ; $81BC2A  0A           Mx
    ASL                             ; $81BC2B  0A           Mx
    CLC                             ; $81BC2C  18           Mx
    ADC #$0008                      ; $81BC2D  69 08 00     Mx
    STA $00D9                       ; $81BC30  8D D9 00     Mx
    LDA $06FC                       ; $81BC33  AD FC 06     Mx
    CMP #$0002                      ; $81BC36  C9 02 00     Mx
    BNE L_81BC3E                    ; $81BC39  D0 03        Mx
    JMP L_81BD07                    ; $81BC3B  4C 07 BD     Mx
L_81BC3E:
    CMP #$0001                      ; $81BC3E  C9 01 00     Mx
    BEQ L_81BCA9                    ; $81BC41  F0 66        Mx
    CMP #$0000                      ; $81BC43  C9 00 00     Mx
    BEQ L_81BC4B                    ; $81BC46  F0 03        Mx
    JMP L_81C231                    ; $81BC48  4C 31 C2     Mx
L_81BC4B:
    LDA $086C                       ; $81BC4B  AD 6C 08     Mx
    BNE L_81BCA6                    ; $81BC4E  D0 56        Mx
    LDA $0766                       ; $81BC50  AD 66 07     Mx
    CMP #$000A                      ; $81BC53  C9 0A 00     Mx
    BCC L_81BCA6                    ; $81BC56  90 4E        Mx
    CMP #$0028                      ; $81BC58  C9 28 00     Mx
    BCS L_81BCA6                    ; $81BC5B  B0 49        Mx
    LDA $0760                       ; $81BC5D  AD 60 07     Mx
    SEC                             ; $81BC60  38           Mx
    SBC $00D9                       ; $81BC61  ED D9 00     Mx
    BPL L_81BC6D                    ; $81BC64  10 07        Mx
    EOR #$FFFF                      ; $81BC66  49 FF FF     Mx
    CLC                             ; $81BC69  18           Mx
    ADC #$0001                      ; $81BC6A  69 01 00     Mx
L_81BC6D:
    CMP #$0040                      ; $81BC6D  C9 40 00     Mx
    BCC L_81BC7F                    ; $81BC70  90 0D        Mx
    SEC                             ; $81BC72  38           Mx
    SBC #$0080                      ; $81BC73  E9 80 00     Mx
    BPL L_81BC7F                    ; $81BC76  10 07        Mx
    EOR #$FFFF                      ; $81BC78  49 FF FF     Mx
    CLC                             ; $81BC7B  18           Mx
    ADC #$0001                      ; $81BC7C  69 01 00     Mx
L_81BC7F:
    SEC                             ; $81BC7F  38           Mx
    SBC #$0018                      ; $81BC80  E9 18 00     Mx
    BPL L_81BCA6                    ; $81BC83  10 21        Mx
    LDA $07DC                       ; $81BC85  AD DC 07     Mx
    STA $00A4                       ; $81BC88  8D A4 00     Mx
    LDA $080A                       ; $81BC8B  AD 0A 08     Mx
    STA $00A8                       ; $81BC8E  8D A8 00     Mx
    LDA #$0003                      ; $81BC91  A9 03 00     Mx
    STA $00A6                       ; $81BC94  8D A6 00     Mx
    LDA $08B2                       ; $81BC97  AD B2 08     Mx
    STA $00AA                       ; $81BC9A  8D AA 00     Mx
    LDA $07E0                       ; $81BC9D  AD E0 07     Mx
    STA $00AC                       ; $81BCA0  8D AC 00     Mx
    JMP L_81BD65                    ; $81BCA3  4C 65 BD     Mx
L_81BCA6:
    JMP L_81C231                    ; $81BCA6  4C 31 C2     Mx
L_81BCA9:
    LDA $0954                       ; $81BCA9  AD 54 09     Mx
    BNE L_81BD04                    ; $81BCAC  D0 56        Mx
    LDA $0768                       ; $81BCAE  AD 68 07     Mx
    CMP #$000A                      ; $81BCB1  C9 0A 00     Mx
    BCC L_81BCA6                    ; $81BCB4  90 F0        Mx
    CMP #$0028                      ; $81BCB6  C9 28 00     Mx
    BCS L_81BD04                    ; $81BCB9  B0 49        Mx
    LDA $0762                       ; $81BCBB  AD 62 07     Mx
    SEC                             ; $81BCBE  38           Mx
    SBC $00D9                       ; $81BCBF  ED D9 00     Mx
    BPL L_81BCCB                    ; $81BCC2  10 07        Mx
    EOR #$FFFF                      ; $81BCC4  49 FF FF     Mx
    CLC                             ; $81BCC7  18           Mx
    ADC #$0001                      ; $81BCC8  69 01 00     Mx
L_81BCCB:
    CMP #$0040                      ; $81BCCB  C9 40 00     Mx
    BCC L_81BCDD                    ; $81BCCE  90 0D        Mx
    SEC                             ; $81BCD0  38           Mx
    SBC #$0080                      ; $81BCD1  E9 80 00     Mx
    BPL L_81BCDD                    ; $81BCD4  10 07        Mx
    EOR #$FFFF                      ; $81BCD6  49 FF FF     Mx
    CLC                             ; $81BCD9  18           Mx
    ADC #$0001                      ; $81BCDA  69 01 00     Mx
L_81BCDD:
    SEC                             ; $81BCDD  38           Mx
    SBC #$0018                      ; $81BCDE  E9 18 00     Mx
    BPL L_81BD04                    ; $81BCE1  10 21        Mx
    LDA $08C4                       ; $81BCE3  AD C4 08     Mx
    STA $00A4                       ; $81BCE6  8D A4 00     Mx
    LDA $08F2                       ; $81BCE9  AD F2 08     Mx
    STA $00A8                       ; $81BCEC  8D A8 00     Mx
    LDA #$0001                      ; $81BCEF  A9 01 00     Mx
    STA $00A6                       ; $81BCF2  8D A6 00     Mx
    LDA $099A                       ; $81BCF5  AD 9A 09     Mx
    STA $00AA                       ; $81BCF8  8D AA 00     Mx
    LDA $08C8                       ; $81BCFB  AD C8 08     Mx
    STA $00AC                       ; $81BCFE  8D AC 00     Mx
    JMP L_81BD65                    ; $81BD01  4C 65 BD     Mx
L_81BD04:
    JMP L_81C231                    ; $81BD04  4C 31 C2     Mx
L_81BD07:
    LDA $0A3C                       ; $81BD07  AD 3C 0A     Mx
    BNE L_81BD62                    ; $81BD0A  D0 56        Mx
    LDA $076A                       ; $81BD0C  AD 6A 07     Mx
    CMP #$000A                      ; $81BD0F  C9 0A 00     Mx
    BCC L_81BCA6                    ; $81BD12  90 92        Mx
    CMP #$0028                      ; $81BD14  C9 28 00     Mx
    BCS L_81BD62                    ; $81BD17  B0 49        Mx
    LDA $0764                       ; $81BD19  AD 64 07     Mx
    SEC                             ; $81BD1C  38           Mx
    SBC $00D9                       ; $81BD1D  ED D9 00     Mx
    BPL L_81BD29                    ; $81BD20  10 07        Mx
    EOR #$FFFF                      ; $81BD22  49 FF FF     Mx
    CLC                             ; $81BD25  18           Mx
    ADC #$0001                      ; $81BD26  69 01 00     Mx
L_81BD29:
    CMP #$0040                      ; $81BD29  C9 40 00     Mx
    BCC L_81BD3B                    ; $81BD2C  90 0D        Mx
    SEC                             ; $81BD2E  38           Mx
    SBC #$0080                      ; $81BD2F  E9 80 00     Mx
    BPL L_81BD3B                    ; $81BD32  10 07        Mx
    EOR #$FFFF                      ; $81BD34  49 FF FF     Mx
    CLC                             ; $81BD37  18           Mx
    ADC #$0001                      ; $81BD38  69 01 00     Mx
L_81BD3B:
    SEC                             ; $81BD3B  38           Mx
    SBC #$0018                      ; $81BD3C  E9 18 00     Mx
    BPL L_81BD62                    ; $81BD3F  10 21        Mx
    LDA $09AC                       ; $81BD41  AD AC 09     Mx
    STA $00A4                       ; $81BD44  8D A4 00     Mx
    LDA $09DA                       ; $81BD47  AD DA 09     Mx
    STA $00A8                       ; $81BD4A  8D A8 00     Mx
    LDA #$0002                      ; $81BD4D  A9 02 00     Mx
    STA $00A6                       ; $81BD50  8D A6 00     Mx
    LDA $0A82                       ; $81BD53  AD 82 0A     Mx
    STA $00AA                       ; $81BD56  8D AA 00     Mx
    LDA $09B0                       ; $81BD59  AD B0 09     Mx
    STA $00AC                       ; $81BD5C  8D AC 00     Mx
    JMP L_81BD65                    ; $81BD5F  4C 65 BD     Mx
L_81BD62:
    JMP L_81C231                    ; $81BD62  4C 31 C2     Mx
L_81BD65:
    LDA $00A4                       ; $81BD65  AD A4 00     Mx
    CMP #$002E                      ; $81BD68  C9 2E 00     Mx
    BEQ L_81BD77                    ; $81BD6B  F0 0A        Mx
    CMP #$0020                      ; $81BD6D  C9 20 00     Mx
    BEQ L_81BD77                    ; $81BD70  F0 05        Mx
    CMP #$0022                      ; $81BD72  C9 22 00     Mx
    BNE L_81BD82                    ; $81BD75  D0 0B        Mx
L_81BD77:
    LDA $1D56                       ; $81BD77  AD 56 1D     Mx
    CMP #$6666                      ; $81BD7A  C9 66 66     Mx
    BCC L_81BD82                    ; $81BD7D  90 03        Mx
L_81BD7F:
    JMP L_81C231                    ; $81BD7F  4C 31 C2     Mx
L_81BD82:
    LDA $00A8                       ; $81BD82  AD A8 00     Mx
    CMP #$0048                      ; $81BD85  C9 48 00     Mx
    BPL L_81BD7F                    ; $81BD88  10 F5        Mx
    LDA $00D9                       ; $81BD8A  AD D9 00     Mx
    AND #$007F                      ; $81BD8D  29 7F 00     Mx
    ASL                             ; $81BD90  0A           Mx
    TAX                             ; $81BD91  AA           Mx
    LDA $00AC                       ; $81BD92  AD AC 00     Mx
    BIT #$0001                      ; $81BD95  89 01 00     Mx
    BNE L_81BDA4                    ; $81BD98  D0 0A        Mx
    BIT #$0004                      ; $81BD9A  89 04 00     Mx
    BNE L_81BDCC                    ; $81BD9D  D0 2D        Mx
    LDA $00AA                       ; $81BD9F  AD AA 00     Mx
    BMI L_81BDB2                    ; $81BDA2  30 0E        Mx
L_81BDA4:
    LDA $1D56                       ; $81BDA4  AD 56 1D     Mx
    AND #$0003                      ; $81BDA7  29 03 00     Mx
    CMP #$0003                      ; $81BDAA  C9 03 00     Mx
    BEQ L_81BDCC                    ; $81BDAD  F0 1D        Mx
    JMP L_81BDC2                    ; $81BDAF  4C C2 BD     Mx
L_81BDB2:
    LDA $1D56                       ; $81BDB2  AD 56 1D     Mx
    AND #$0003                      ; $81BDB5  29 03 00     Mx
    CMP #$0002                      ; $81BDB8  C9 02 00     Mx
    BCS L_81BDCC                    ; $81BDBB  B0 0F        Mx
    CMP #$0001                      ; $81BDBD  C9 01 00     Mx
    BEQ L_81BDC7                    ; $81BDC0  F0 05        Mx
L_81BDC2:
    LDA #$0003                      ; $81BDC2  A9 03 00     Mx
    BNE L_81BDCF                    ; $81BDC5  D0 08        Mx
L_81BDC7:
    LDA #$0005                      ; $81BDC7  A9 05 00     Mx
    BNE L_81BDCF                    ; $81BDCA  D0 03        Mx
L_81BDCC:
    LDA #$0005                      ; $81BDCC  A9 05 00     Mx
L_81BDCF:
    STA $00AE                       ; $81BDCF  8D AE 00     Mx
    PHX                             ; $81BDD2  DA           Mx
    LDA $160D                       ; $81BDD3  AD 0D 16     Mx
    BNE L_81BE18                    ; $81BDD6  D0 40        Mx
    LDA #$0028                      ; $81BDD8  A9 28 00     Mx
    STA $160D                       ; $81BDDB  8D 0D 16     Mx
    LDA #$0023                      ; $81BDDE  A9 23 00     Mx
    JSL L_BDFDF3                    ; $81BDE1  22 F3 FD BD  Mx
    LDA $1D56                       ; $81BDE5  AD 56 1D     Mx
    AND #$0003                      ; $81BDE8  29 03 00     Mx
    BEQ L_81BE06                    ; $81BDEB  F0 19        Mx
    CMP #$0001                      ; $81BDED  C9 01 00     Mx
    BNE L_81BE18                    ; $81BDF0  D0 26        Mx
    LDA $1613                       ; $81BDF2  AD 13 16     Mx
    BNE L_81BE04                    ; $81BDF5  D0 0D        Mx
    LDA #$0010                      ; $81BDF7  A9 10 00     Mx
    JSL L_BDFDF3                    ; $81BDFA  22 F3 FD BD  Mx
    LDA #$0064                      ; $81BDFE  A9 64 00     Mx
    STA $1613                       ; $81BE01  8D 13 16     Mx
L_81BE04:
    BRA L_81BE18                    ; $81BE04  80 12        Mx
L_81BE06:
    LDA $1611                       ; $81BE06  AD 11 16     Mx
    BNE L_81BE18                    ; $81BE09  D0 0D        Mx
    LDA #$0011                      ; $81BE0B  A9 11 00     Mx
    JSL L_BDFDF3                    ; $81BE0E  22 F3 FD BD  Mx
    LDA #$0064                      ; $81BE12  A9 64 00     Mx
    STA $1611                       ; $81BE15  8D 11 16     Mx
L_81BE18:
    PLX                             ; $81BE18  FA           Mx
    LDA $00A6                       ; $81BE19  AD A6 00     Mx
    CMP #$0002                      ; $81BE1C  C9 02 00     Mx
    BNE L_81BE24                    ; $81BE1F  D0 03        Mx
    JMP L_81BEA0                    ; $81BE21  4C A0 BE     Mx
L_81BE24:
    CMP #$0001                      ; $81BE24  C9 01 00     Mx
    BNE L_81BE2C                    ; $81BE27  D0 03        Mx
    JMP L_81BF14                    ; $81BE29  4C 14 BF     Mx
L_81BE2C:
    LDA #$07D8                      ; $81BE2C  A9 D8 07     Mx
    STA $00D0                       ; $81BE2F  8D D0 00     Mx
    STZ $0812                       ; $81BE32  9C 12 08     Mx
    LDA $9AABEB,X                   ; $81BE35  BF EB AB 9A  Mx
    BPL L_81BE3E                    ; $81BE39  10 03        Mx
    DEC $0812                       ; $81BE3B  CE 12 08     Mx
L_81BE3E:
    LDY $00AE                       ; $81BE3E  AC AE 00     Mx
    STY $07DE                       ; $81BE41  8C DE 07     Mx
L_81BE44:
    ASL                             ; $81BE44  0A           Mx
    ROL $0812                       ; $81BE45  2E 12 08     Mx
    DEY                             ; $81BE48  88           Mx
    BNE L_81BE44                    ; $81BE49  D0 F9        Mx
    STA $0810                       ; $81BE4B  8D 10 08     Mx
    STZ $081A                       ; $81BE4E  9C 1A 08     Mx
    LDA $9AABAB,X                   ; $81BE51  BF AB AB 9A  Mx
    BPL L_81BE5A                    ; $81BE55  10 03        Mx
    DEC $081A                       ; $81BE57  CE 1A 08     Mx
L_81BE5A:
    LDY $00AE                       ; $81BE5A  AC AE 00     Mx
L_81BE5D:
    ASL                             ; $81BE5D  0A           Mx
    ROL $081A                       ; $81BE5E  2E 1A 08     Mx
    DEY                             ; $81BE61  88           Mx
    BNE L_81BE5D                    ; $81BE62  D0 F9        Mx
    STA $0818                       ; $81BE64  8D 18 08     Mx
    LDA $080A                       ; $81BE67  AD 0A 08     Mx
    BNE L_81BE78                    ; $81BE6A  D0 0C        Mx
    LDA #$E400                      ; $81BE6C  A9 00 E4     Mx
    STA $0814                       ; $81BE6F  8D 14 08     Mx
    LDA #$0002                      ; $81BE72  A9 02 00     Mx
    STA $0816                       ; $81BE75  8D 16 08     Mx
L_81BE78:
    LDA #$002D                      ; $81BE78  A9 2D 00     Mx
    STA $086C                       ; $81BE7B  8D 6C 08     Mx
    LDA #$0030                      ; $81BE7E  A9 30 00     Mx
    STA $07DC                       ; $81BE81  8D DC 07     Mx
    STA $07DA                       ; $81BE84  8D DA 07     Mx
    STZ $088A                       ; $81BE87  9C 8A 08     Mx
    LDA $0C25                       ; $81BE8A  AD 25 0C     Mx
    CMP #$07D8                      ; $81BE8D  C9 D8 07     Mx
    BNE L_81BE95                    ; $81BE90  D0 03        Mx
    STZ $0C25                       ; $81BE92  9C 25 0C     Mx
L_81BE95:
    LDA $087C                       ; $81BE95  AD 7C 08     Mx
    BNE L_81BE9D                    ; $81BE98  D0 03        Mx
    JMP L_81C231                    ; $81BE9A  4C 31 C2     Mx
L_81BE9D:
    JMP L_81BF85                    ; $81BE9D  4C 85 BF     Mx
L_81BEA0:
    LDA #$09A8                      ; $81BEA0  A9 A8 09     Mx
    STA $00D0                       ; $81BEA3  8D D0 00     Mx
    STZ $09E2                       ; $81BEA6  9C E2 09     Mx
    LDA $9AABEB,X                   ; $81BEA9  BF EB AB 9A  Mx
    BPL L_81BEB2                    ; $81BEAD  10 03        Mx
    DEC $09E2                       ; $81BEAF  CE E2 09     Mx
L_81BEB2:
    LDY $00AE                       ; $81BEB2  AC AE 00     Mx
    STY $09AE                       ; $81BEB5  8C AE 09     Mx
L_81BEB8:
    ASL                             ; $81BEB8  0A           Mx
    ROL $09E2                       ; $81BEB9  2E E2 09     Mx
    DEY                             ; $81BEBC  88           Mx
    BNE L_81BEB8                    ; $81BEBD  D0 F9        Mx
    STA $09E0                       ; $81BEBF  8D E0 09     Mx
    STZ $09EA                       ; $81BEC2  9C EA 09     Mx
    LDA $9AABAB,X                   ; $81BEC5  BF AB AB 9A  Mx
    BPL L_81BECE                    ; $81BEC9  10 03        Mx
    DEC $09EA                       ; $81BECB  CE EA 09     Mx
L_81BECE:
    LDY $00AE                       ; $81BECE  AC AE 00     Mx
L_81BED1:
    ASL                             ; $81BED1  0A           Mx
    ROL $09EA                       ; $81BED2  2E EA 09     Mx
    DEY                             ; $81BED5  88           Mx
    BNE L_81BED1                    ; $81BED6  D0 F9        Mx
    STA $09E8                       ; $81BED8  8D E8 09     Mx
    LDA $09DA                       ; $81BEDB  AD DA 09     Mx
    BNE L_81BEEC                    ; $81BEDE  D0 0C        Mx
    LDA #$E400                      ; $81BEE0  A9 00 E4     Mx
    STA $09E4                       ; $81BEE3  8D E4 09     Mx
    LDA #$0002                      ; $81BEE6  A9 02 00     Mx
    STA $09E6                       ; $81BEE9  8D E6 09     Mx
L_81BEEC:
    LDA #$002D                      ; $81BEEC  A9 2D 00     Mx
    STA $0A3C                       ; $81BEEF  8D 3C 0A     Mx
    LDA #$0030                      ; $81BEF2  A9 30 00     Mx
    STA $09AC                       ; $81BEF5  8D AC 09     Mx
    STA $09AA                       ; $81BEF8  8D AA 09     Mx
    STZ $0A5A                       ; $81BEFB  9C 5A 0A     Mx
    LDA $0C25                       ; $81BEFE  AD 25 0C     Mx
    CMP #$09A8                      ; $81BF01  C9 A8 09     Mx
    BNE L_81BF09                    ; $81BF04  D0 03        Mx
    STZ $0C25                       ; $81BF06  9C 25 0C     Mx
L_81BF09:
    LDA $0A4C                       ; $81BF09  AD 4C 0A     Mx
    BNE L_81BF11                    ; $81BF0C  D0 03        Mx
    JMP L_81C231                    ; $81BF0E  4C 31 C2     Mx
L_81BF11:
    JMP L_81BF85                    ; $81BF11  4C 85 BF     Mx
L_81BF14:
    LDA #$08C0                      ; $81BF14  A9 C0 08     Mx
    STA $00D0                       ; $81BF17  8D D0 00     Mx
    STZ $08FA                       ; $81BF1A  9C FA 08     Mx
    LDA $9AABEB,X                   ; $81BF1D  BF EB AB 9A  Mx
    BPL L_81BF26                    ; $81BF21  10 03        Mx
    DEC $08FA                       ; $81BF23  CE FA 08     Mx
L_81BF26:
    LDY $00AE                       ; $81BF26  AC AE 00     Mx
    STY $08C6                       ; $81BF29  8C C6 08     Mx
L_81BF2C:
    ASL                             ; $81BF2C  0A           Mx
    ROL $08FA                       ; $81BF2D  2E FA 08     Mx
    DEY                             ; $81BF30  88           Mx
    BNE L_81BF2C                    ; $81BF31  D0 F9        Mx
    STA $08F8                       ; $81BF33  8D F8 08     Mx
    STZ $0902                       ; $81BF36  9C 02 09     Mx
    LDA $9AABAB,X                   ; $81BF39  BF AB AB 9A  Mx
    BPL L_81BF42                    ; $81BF3D  10 03        Mx
    DEC $0902                       ; $81BF3F  CE 02 09     Mx
L_81BF42:
    LDY $00AE                       ; $81BF42  AC AE 00     Mx
L_81BF45:
    ASL                             ; $81BF45  0A           Mx
    ROL $0902                       ; $81BF46  2E 02 09     Mx
    DEY                             ; $81BF49  88           Mx
    BNE L_81BF45                    ; $81BF4A  D0 F9        Mx
    STA $0900                       ; $81BF4C  8D 00 09     Mx
    LDA $08F2                       ; $81BF4F  AD F2 08     Mx
    BNE L_81BF60                    ; $81BF52  D0 0C        Mx
    LDA #$E400                      ; $81BF54  A9 00 E4     Mx
    STA $08FC                       ; $81BF57  8D FC 08     Mx
    LDA #$0002                      ; $81BF5A  A9 02 00     Mx
    STA $08FE                       ; $81BF5D  8D FE 08     Mx
L_81BF60:
    LDA #$002D                      ; $81BF60  A9 2D 00     Mx
    STA $0954                       ; $81BF63  8D 54 09     Mx
    LDA #$0030                      ; $81BF66  A9 30 00     Mx
    STA $08C4                       ; $81BF69  8D C4 08     Mx
    STA $08C2                       ; $81BF6C  8D C2 08     Mx
    STZ $0972                       ; $81BF6F  9C 72 09     Mx
    LDA $0C25                       ; $81BF72  AD 25 0C     Mx
    CMP #$08C0                      ; $81BF75  C9 C0 08     Mx
    BNE L_81BF7D                    ; $81BF78  D0 03        Mx
    STZ $0C25                       ; $81BF7A  9C 25 0C     Mx
L_81BF7D:
    LDA $0964                       ; $81BF7D  AD 64 09     Mx
    BNE L_81BF85                    ; $81BF80  D0 03        Mx
    JMP L_81C231                    ; $81BF82  4C 31 C2     Mx
L_81BF85:
    LDA #$0032                      ; $81BF85  A9 32 00     Mx
    STA $00DF                       ; $81BF88  8D DF 00     Mx
    LDA $00A4                       ; $81BF8B  AD A4 00     Mx
    CMP #$002E                      ; $81BF8E  C9 2E 00     Mx
    BEQ L_81BFB4                    ; $81BF91  F0 21        Mx
    LDA $00AA                       ; $81BF93  AD AA 00     Mx
    BMI L_81BFAE                    ; $81BF96  30 16        Mx
    CMP #$0010                      ; $81BF98  C9 10 00     Mx
    BCC L_81BFA0                    ; $81BF9B  90 03        Mx
    LDA #$000F                      ; $81BF9D  A9 0F 00     Mx
L_81BFA0:
    TAX                             ; $81BFA0  AA           Mx
    LDA $A7E61B,X                   ; $81BFA1  BF 1B E6 A7  Mx
    AND #$00FF                      ; $81BFA5  29 FF 00     Mx
    STA $00DF                       ; $81BFA8  8D DF 00     Mx
    JMP L_81BFB4                    ; $81BFAB  4C B4 BF     Mx
L_81BFAE:
    LDA #$0014                      ; $81BFAE  A9 14 00     Mx
    STA $00DF                       ; $81BFB1  8D DF 00     Mx
L_81BFB4:
    LDA #$0064                      ; $81BFB4  A9 64 00     Mx
    STA $00D3                       ; $81BFB7  8D D3 00     Mx
    LDA $1D56                       ; $81BFBA  AD 56 1D     Mx
    STA $00BA                       ; $81BFBD  8D BA 00     Mx
    INC $00D3                       ; $81BFC0  EE D3 00     Mx
    SEP #$20                        ; $81BFC3  E2 20        Mx
    LDA $00D3                       ; $81BFC5  AD D3 00     mx
    STA $4202                       ; $81BFC8  8D 02 42     mx
    LDA $00BA                       ; $81BFCB  AD BA 00     mx
    STA $4203                       ; $81BFCE  8D 03 42     mx
    NOP                             ; $81BFD1  EA           mx
    NOP                             ; $81BFD2  EA           mx
    NOP                             ; $81BFD3  EA           mx
    REP #$20                        ; $81BFD4  C2 20        mx
    LDA $4216                       ; $81BFD6  AD 16 42     Mx
    STA $00BA                       ; $81BFD9  8D BA 00     Mx
    LDA $00BB                       ; $81BFDC  AD BB 00     Mx
    AND #$00FF                      ; $81BFDF  29 FF 00     Mx
    CMP $00DF                       ; $81BFE2  CD DF 00     Mx
    BCS L_81BFEA                    ; $81BFE5  B0 03        Mx
L_81BFE7:
    JMP L_81C231                    ; $81BFE7  4C 31 C2     Mx
L_81BFEA:
    LDA $0C3F                       ; $81BFEA  AD 3F 0C     Mx
    BNE L_81BFE7                    ; $81BFED  D0 F8        Mx
    LDA #$00B4                      ; $81BFEF  A9 B4 00     Mx
    STA $0C3F                       ; $81BFF2  8D 3F 0C     Mx
    LDA $06F0                       ; $81BFF5  AD F0 06     Mx
    DEC                             ; $81BFF8  3A           Mx
    AND #$0003                      ; $81BFF9  29 03 00     Mx
    ASL                             ; $81BFFC  0A           Mx
    TAX                             ; $81BFFD  AA           Mx
    INC $1CB1,X                     ; $81BFFE  FE B1 1C     Mx
    LDA #$0087                      ; $81C001  A9 87 00     Mx
    STA $07B2                       ; $81C004  8D B2 07     Mx
    LDY #$8A                        ; $81C007  A0 8A        Mx
    LDA #$0034                      ; $81C009  A9 34 00     Mx
    STA ($D0),Y                     ; $81C00C  91 D0        Mx
    LDA #$001E                      ; $81C00E  A9 1E 00     Mx
    STA $0BF1                       ; $81C011  8D F1 0B     Mx
    LDA $0C19                       ; $81C014  AD 19 0C     Mx
    BEQ L_81C07F                    ; $81C017  F0 66        Mx
    LDA $0BD9                       ; $81C019  AD D9 0B     Mx
    CLC                             ; $81C01C  18           Mx
    ADC $0BEF                       ; $81C01D  6D EF 0B     Mx
    LDY #$54                        ; $81C020  A0 54        Mx
    SEC                             ; $81C022  38           Mx
    SBC ($CC),Y                     ; $81C023  F1 CC        Mx
    BPL L_81C031                    ; $81C025  10 0A        Mx
    CMP #$FEF4                      ; $81C027  C9 F4 FE     Mx
    BCS L_81C039                    ; $81C02A  B0 0D        Mx
    LDA #$FEF4                      ; $81C02C  A9 F4 FE     Mx
    BRA L_81C039                    ; $81C02F  80 08        Mx
L_81C031:
    CMP #$010C                      ; $81C031  C9 0C 01     Mx
    BCC L_81C039                    ; $81C034  90 03        Mx
    LDA #$010C                      ; $81C036  A9 0C 01     Mx
L_81C039:
    STA $0BD9                       ; $81C039  8D D9 0B     Mx
    LDA $0BDD                       ; $81C03C  AD DD 0B     Mx
    CLC                             ; $81C03F  18           Mx
    ADC $0BF1                       ; $81C040  6D F1 0B     Mx
    STA $0BDD                       ; $81C043  8D DD 0B     Mx
    LDA $0BF3                       ; $81C046  AD F3 0B     Mx
    CMP #$0310                      ; $81C049  C9 10 03     Mx
    BCC L_81C058                    ; $81C04C  90 0A        Mx
    CMP #$03F0                      ; $81C04E  C9 F0 03     Mx
    BCC L_81C05B                    ; $81C051  90 08        Mx
    LDA #$03F0                      ; $81C053  A9 F0 03     Mx
    BRA L_81C05B                    ; $81C056  80 03        Mx
L_81C058:
    LDA #$0310                      ; $81C058  A9 10 03     Mx
L_81C05B:
    STA $0BE1                       ; $81C05B  8D E1 0B     Mx
    STA $0BF3                       ; $81C05E  8D F3 0B     Mx
    STZ $0C19                       ; $81C061  9C 19 0C     Mx
    STZ $00CC                       ; $81C064  9C CC 00     Mx
    STZ $0C2B                       ; $81C067  9C 2B 0C     Mx
    STZ $0BEF                       ; $81C06A  9C EF 0B     Mx
    STZ $0BF1                       ; $81C06D  9C F1 0B     Mx
    STZ $0C11                       ; $81C070  9C 11 0C     Mx
    LDA #$0002                      ; $81C073  A9 02 00     Mx
    STA $0BBF                       ; $81C076  8D BF 0B     Mx
    LDA #$0002                      ; $81C079  A9 02 00     Mx
    STA $0BC1                       ; $81C07C  8D C1 0B     Mx
L_81C07F:
    LDA $0BDD                       ; $81C07F  AD DD 0B     Mx
    CMP #$005A                      ; $81C082  C9 5A 00     Mx
    BCC L_81C08D                    ; $81C085  90 06        Mx
    LDA #$001E                      ; $81C087  A9 1E 00     Mx
    STA $0BDD                       ; $81C08A  8D DD 0B     Mx
L_81C08D:
    STZ $0BE5                       ; $81C08D  9C E5 0B     Mx
    STZ $0BE3                       ; $81C090  9C E3 0B     Mx
    PHP                             ; $81C093  08           Mx
    REP #$30                        ; $81C094  C2 30        Mx
    LDA $4212                       ; $81C096  AD 12 42     MX
    SEP #$20                        ; $81C099  E2 20        MX
    CLC                             ; $81C09B  18           mX
    ADC $1D57                       ; $81C09C  6D 57 1D     mX
    STA $1D57                       ; $81C09F  8D 57 1D     mX
    REP #$20                        ; $81C0A2  C2 20        mX
    LDA $4212                       ; $81C0A4  AD 12 42     MX
    TAX                             ; $81C0A7  AA           MX
    SEP #$20                        ; $81C0A8  E2 20        MX
    EOR $1D58                       ; $81C0AA  4D 58 1D     mX
    STA $1D58                       ; $81C0AD  8D 58 1D     mX
    TXA                             ; $81C0B0  8A           mX
    ADC $1D59                       ; $81C0B1  6D 59 1D     mX
    REP #$20                        ; $81C0B4  C2 20        mX
    LDA $1D56                       ; $81C0B6  AD 56 1D     MX
    INC                             ; $81C0B9  1A           MX
    ROR                             ; $81C0BA  6A           MX
    LSR $1D58                       ; $81C0BB  4E 58 1D     MX
    EOR #$2B41                      ; $81C0BE  49 41 2B     MX
    SBC #$000F                      ; $81C0C1  E9 0F 00     MX
    STA $1D56                       ; $81C0C4  8D 56 1D     MX
    LDA $1D58                       ; $81C0C7  AD 58 1D     MX
    EOR #$1D87                      ; $81C0CA  49 87 1D     MX
    STA $1D58                       ; $81C0CD  8D 58 1D     MX
    LDA $1D52                       ; $81C0D0  AD 52 1D     MX
    EOR $1D56                       ; $81C0D3  4D 56 1D     MX
    STA $0002                       ; $81C0D6  8D 02 00     MX
    INC                             ; $81C0D9  1A           MX
    STA $1D52                       ; $81C0DA  8D 52 1D     MX
    LDA $1D54                       ; $81C0DD  AD 54 1D     MX
    EOR $1D58                       ; $81C0E0  4D 58 1D     MX
    ADC #$0000                      ; $81C0E3  69 00 00     MX
    STA $1D52                       ; $81C0E6  8D 52 1D     MX
    STA $0004                       ; $81C0E9  8D 04 00     MX
    PLP                             ; $81C0EC  28           MX
    LDA #$01FF                      ; $81C0ED  A9 FF 01     Mx
    STA $00BA                       ; $81C0F0  8D BA 00     Mx
    SEP #$20                        ; $81C0F3  E2 20        Mx
    LDA $1D56                       ; $81C0F5  AD 56 1D     mx
    STA $4202                       ; $81C0F8  8D 02 42     mx
    LDA $00BA                       ; $81C0FB  AD BA 00     mx
    STA $4203                       ; $81C0FE  8D 03 42     mx
    NOP                             ; $81C101  EA           mx
    NOP                             ; $81C102  EA           mx
    NOP                             ; $81C103  EA           mx
    REP #$20                        ; $81C104  C2 20        mx
    LDA $4216                       ; $81C106  AD 16 42     Mx
    STA $00BA                       ; $81C109  8D BA 00     Mx
    STA $00A8                       ; $81C10C  8D A8 00     Mx
    LDA #$01FF                      ; $81C10F  A9 FF 01     Mx
    STA $00BA                       ; $81C112  8D BA 00     Mx
    SEP #$20                        ; $81C115  E2 20        Mx
    LDA $1D56                       ; $81C117  AD 56 1D     mx
    STA $4202                       ; $81C11A  8D 02 42     mx
    LDA $00BB                       ; $81C11D  AD BB 00     mx
    STA $4203                       ; $81C120  8D 03 42     mx
    NOP                             ; $81C123  EA           mx
    NOP                             ; $81C124  EA           mx
    NOP                             ; $81C125  EA           mx
    REP #$20                        ; $81C126  C2 20        mx
    LDA $4216                       ; $81C128  AD 16 42     Mx
    STA $00BB                       ; $81C12B  8D BB 00     Mx
    STZ $00F4                       ; $81C12E  9C F4 00     Mx
    STZ $00F2                       ; $81C131  9C F2 00     Mx
    STA $00F3                       ; $81C134  8D F3 00     Mx
    LDA $00F2                       ; $81C137  AD F2 00     Mx
    CLC                             ; $81C13A  18           Mx
    ADC $00A8                       ; $81C13B  6D A8 00     Mx
    STA $00F2                       ; $81C13E  8D F2 00     Mx
    LDA $00F4                       ; $81C141  AD F4 00     Mx
    ADC #$0000                      ; $81C144  69 00 00     Mx
    STA $00F4                       ; $81C147  8D F4 00     Mx
    LDA $00F3                       ; $81C14A  AD F3 00     Mx
    AND #$01FF                      ; $81C14D  29 FF 01     Mx
    SEC                             ; $81C150  38           Mx
    SBC #$0100                      ; $81C151  E9 00 01     Mx
    BPL L_81C159                    ; $81C154  10 03        Mx
    DEC $0BE5                       ; $81C156  CE E5 0B     Mx
L_81C159:
    STA $0BE4                       ; $81C159  8D E4 0B     Mx
    STZ $0BED                       ; $81C15C  9C ED 0B     Mx
    STZ $0BEB                       ; $81C15F  9C EB 0B     Mx
    PHP                             ; $81C162  08           Mx
    REP #$30                        ; $81C163  C2 30        Mx
    LDA $4212                       ; $81C165  AD 12 42     MX
    SEP #$20                        ; $81C168  E2 20        MX
    CLC                             ; $81C16A  18           mX
    ADC $1D57                       ; $81C16B  6D 57 1D     mX
    STA $1D57                       ; $81C16E  8D 57 1D     mX
    REP #$20                        ; $81C171  C2 20        mX
    LDA $4212                       ; $81C173  AD 12 42     MX
    TAX                             ; $81C176  AA           MX
    SEP #$20                        ; $81C177  E2 20        MX
    EOR $1D58                       ; $81C179  4D 58 1D     mX
    STA $1D58                       ; $81C17C  8D 58 1D     mX
    TXA                             ; $81C17F  8A           mX
    ADC $1D59                       ; $81C180  6D 59 1D     mX
    REP #$20                        ; $81C183  C2 20        mX
    LDA $1D56                       ; $81C185  AD 56 1D     MX
    INC                             ; $81C188  1A           MX
    ROR                             ; $81C189  6A           MX
    LSR $1D58                       ; $81C18A  4E 58 1D     MX
    EOR #$2B41                      ; $81C18D  49 41 2B     MX
    SBC #$000F                      ; $81C190  E9 0F 00     MX
    STA $1D56                       ; $81C193  8D 56 1D     MX
    LDA $1D58                       ; $81C196  AD 58 1D     MX
    EOR #$1D87                      ; $81C199  49 87 1D     MX
    STA $1D58                       ; $81C19C  8D 58 1D     MX
    LDA $1D52                       ; $81C19F  AD 52 1D     MX
    EOR $1D56                       ; $81C1A2  4D 56 1D     MX
    STA $0002                       ; $81C1A5  8D 02 00     MX
    INC                             ; $81C1A8  1A           MX
    STA $1D52                       ; $81C1A9  8D 52 1D     MX
    LDA $1D54                       ; $81C1AC  AD 54 1D     MX
    EOR $1D58                       ; $81C1AF  4D 58 1D     MX
    ADC #$0000                      ; $81C1B2  69 00 00     MX
    STA $1D52                       ; $81C1B5  8D 52 1D     MX
    STA $0004                       ; $81C1B8  8D 04 00     MX
    PLP                             ; $81C1BB  28           MX
    LDA #$01FF                      ; $81C1BC  A9 FF 01     Mx
    STA $00BA                       ; $81C1BF  8D BA 00     Mx
    SEP #$20                        ; $81C1C2  E2 20        Mx
    LDA $1D56                       ; $81C1C4  AD 56 1D     mx
    STA $4202                       ; $81C1C7  8D 02 42     mx
    LDA $00BA                       ; $81C1CA  AD BA 00     mx
    STA $4203                       ; $81C1CD  8D 03 42     mx
    NOP                             ; $81C1D0  EA           mx
    NOP                             ; $81C1D1  EA           mx
    NOP                             ; $81C1D2  EA           mx
    REP #$20                        ; $81C1D3  C2 20        mx
    LDA $4216                       ; $81C1D5  AD 16 42     Mx
    STA $00BA                       ; $81C1D8  8D BA 00     Mx
    STA $00A8                       ; $81C1DB  8D A8 00     Mx
    LDA #$01FF                      ; $81C1DE  A9 FF 01     Mx
    STA $00BA                       ; $81C1E1  8D BA 00     Mx
    SEP #$20                        ; $81C1E4  E2 20        Mx
    LDA $1D56                       ; $81C1E6  AD 56 1D     mx
    STA $4202                       ; $81C1E9  8D 02 42     mx
    LDA $00BB                       ; $81C1EC  AD BB 00     mx
    STA $4203                       ; $81C1EF  8D 03 42     mx
    NOP                             ; $81C1F2  EA           mx
    NOP                             ; $81C1F3  EA           mx
    NOP                             ; $81C1F4  EA           mx
    REP #$20                        ; $81C1F5  C2 20        mx
    LDA $4216                       ; $81C1F7  AD 16 42     Mx
    STA $00BB                       ; $81C1FA  8D BB 00     Mx
    STZ $00F4                       ; $81C1FD  9C F4 00     Mx
    STZ $00F2                       ; $81C200  9C F2 00     Mx
    STA $00F3                       ; $81C203  8D F3 00     Mx
    LDA $00F2                       ; $81C206  AD F2 00     Mx
    CLC                             ; $81C209  18           Mx
    ADC $00A8                       ; $81C20A  6D A8 00     Mx
    STA $00F2                       ; $81C20D  8D F2 00     Mx
    LDA $00F4                       ; $81C210  AD F4 00     Mx
    ADC #$0000                      ; $81C213  69 00 00     Mx
    STA $00F4                       ; $81C216  8D F4 00     Mx
    LDA $00F3                       ; $81C219  AD F3 00     Mx
    AND #$01FF                      ; $81C21C  29 FF 01     Mx
    SEC                             ; $81C21F  38           Mx
    SBC #$0100                      ; $81C220  E9 00 01     Mx
    BPL L_81C228                    ; $81C223  10 03        Mx
    DEC $0BED                       ; $81C225  CE ED 0B     Mx
L_81C228:
    STA $0BEC                       ; $81C228  8D EC 0B     Mx
    STZ $0BE9                       ; $81C22B  9C E9 0B     Mx
    STZ $0BE7                       ; $81C22E  9C E7 0B     Mx
L_81C231:
    RTS                             ; $81C231  60           Mx
L_81C232:
    LDA $070A                       ; $81C232  AD 0A 07     Mx
    BEQ L_81C23C                    ; $81C235  F0 05        Mx
    CMP #$0004                      ; $81C237  C9 04 00     Mx
    BNE L_81C23F                    ; $81C23A  D0 03        Mx
L_81C23C:
    LDA #$0002                      ; $81C23C  A9 02 00     Mx
L_81C23F:
    STA $0708                       ; $81C23F  8D 08 07     Mx
    LDA #$0001                      ; $81C242  A9 01 00     Mx
    STA $15EB                       ; $81C245  8D EB 15     Mx
    LDA #$2400                      ; $81C248  A9 00 24     Mx
    STA $00D1                       ; $81C24B  8D D1 00     Mx
    LDA $079E                       ; $81C24E  AD 9E 07     Mx
    STA $00D0                       ; $81C251  8D D0 00     Mx
    LDA $06FC                       ; $81C254  AD FC 06     Mx
    BEQ L_81C25C                    ; $81C257  F0 03        Mx
    JMP L_81C962                    ; $81C259  4C 62 C9     Mx
L_81C25C:
    LDY $07A0                       ; $81C25C  AC A0 07     Mx
    LDA [$D0],Y                     ; $81C25F  B7 D0        Mx
    STA $06FC                       ; $81C261  8D FC 06     Mx
    INY                             ; $81C264  C8           Mx
    INY                             ; $81C265  C8           Mx
    LDA [$D0],Y                     ; $81C266  B7 D0        Mx
    STA $06FE                       ; $81C268  8D FE 06     Mx
    STZ $06FA                       ; $81C26B  9C FA 06     Mx
    INY                             ; $81C26E  C8           Mx
    INY                             ; $81C26F  C8           Mx
    STY $07A0                       ; $81C270  8C A0 07     Mx
    LDA $06FC                       ; $81C273  AD FC 06     Mx
    BMI L_81C27B                    ; $81C276  30 03        Mx
    JMP L_81C962                    ; $81C278  4C 62 C9     Mx
L_81C27B:
    LDA $06FE                       ; $81C27B  AD FE 06     Mx
    CMP #$0001                      ; $81C27E  C9 01 00     Mx
    BEQ L_81C2C6                    ; $81C281  F0 43        Mx
    CMP #$0002                      ; $81C283  C9 02 00     Mx
    BNE L_81C28B                    ; $81C286  D0 03        Mx
    JMP L_81C7AE                    ; $81C288  4C AE C7     Mx
L_81C28B:
    CMP #$0003                      ; $81C28B  C9 03 00     Mx
    BNE L_81C293                    ; $81C28E  D0 03        Mx
    JMP L_81C78D                    ; $81C290  4C 8D C7     Mx
L_81C293:
    CMP #$0004                      ; $81C293  C9 04 00     Mx
    BNE L_81C29B                    ; $81C296  D0 03        Mx
    JMP L_81C77D                    ; $81C298  4C 7D C7     Mx
L_81C29B:
    CMP #$0005                      ; $81C29B  C9 05 00     Mx
    BNE L_81C2A3                    ; $81C29E  D0 03        Mx
    JMP L_81C705                    ; $81C2A0  4C 05 C7     Mx
L_81C2A3:
    CMP #$0006                      ; $81C2A3  C9 06 00     Mx
    BNE L_81C2AB                    ; $81C2A6  D0 03        Mx
    JMP L_81C724                    ; $81C2A8  4C 24 C7     Mx
L_81C2AB:
    CMP #$0007                      ; $81C2AB  C9 07 00     Mx
    BNE L_81C2B3                    ; $81C2AE  D0 03        Mx
    JMP L_81C6F0                    ; $81C2B0  4C F0 C6     Mx
L_81C2B3:
    CMP #$0008                      ; $81C2B3  C9 08 00     Mx
    BNE L_81C2BB                    ; $81C2B6  D0 03        Mx
    JMP L_81C715                    ; $81C2B8  4C 15 C7     Mx
L_81C2BB:
    CMP #$0009                      ; $81C2BB  C9 09 00     Mx
    BNE L_81C2C3                    ; $81C2BE  D0 03        Mx
    JMP L_81C744                    ; $81C2C0  4C 44 C7     Mx
L_81C2C3:
    JMP L_81C25C                    ; $81C2C3  4C 5C C2     Mx
L_81C2C6:
    LDY $07A0                       ; $81C2C6  AC A0 07     Mx
    INY                             ; $81C2C9  C8           Mx
    INY                             ; $81C2CA  C8           Mx
    LDA [$D0],Y                     ; $81C2CB  B7 D0        Mx
    STA $06F6                       ; $81C2CD  8D F6 06     Mx
    CMP #$003E                      ; $81C2D0  C9 3E 00     Mx
    BCC L_81C2DB                    ; $81C2D3  90 06        Mx
    LDA #$0001                      ; $81C2D5  A9 01 00     Mx
    STA $15ED                       ; $81C2D8  8D ED 15     Mx
L_81C2DB:
    INY                             ; $81C2DB  C8           Mx
    INY                             ; $81C2DC  C8           Mx
    STY $07A0                       ; $81C2DD  8C A0 07     Mx
    REP #$10                        ; $81C2E0  C2 10        Mx
    LDA $079C                       ; $81C2E2  AD 9C 07     MX
    ASL                             ; $81C2E5  0A           MX
    ASL                             ; $81C2E6  0A           MX
    TAX                             ; $81C2E7  AA           MX
    LDA $A4B5F0,X                   ; $81C2E8  BF F0 B5 A4  MX
    STA $00A4                       ; $81C2EC  8D A4 00     MX
    LDA $A4B5F2,X                   ; $81C2EF  BF F2 B5 A4  MX
    STA $00D6                       ; $81C2F3  8D D6 00     MX
    LDA $A4B5F4,X                   ; $81C2F6  BF F4 B5 A4  MX
    STA $00D3                       ; $81C2FA  8D D3 00     MX
    LDA $A4B5F6,X                   ; $81C2FD  BF F6 B5 A4  MX
    STA $00B0                       ; $81C301  8D B0 00     MX
    SEP #$10                        ; $81C304  E2 10        MX
    LDA $0752                       ; $81C306  AD 52 07     Mx
    CLC                             ; $81C309  18           Mx
    ADC $00A4                       ; $81C30A  6D A4 00     Mx
    STA $0BC3                       ; $81C30D  8D C3 0B     Mx
    STA $00D9                       ; $81C310  8D D9 00     Mx
    LDA #$0374                      ; $81C313  A9 74 03     Mx
    CLC                             ; $81C316  18           Mx
    ADC $00D6                       ; $81C317  6D D6 00     Mx
    STA $0BC7                       ; $81C31A  8D C7 0B     Mx
    LDA #$0068                      ; $81C31D  A9 68 00     Mx
    CLC                             ; $81C320  18           Mx
    ADC $00D3                       ; $81C321  6D D3 00     Mx
    LDX $07BA                       ; $81C324  AE BA 07     Mx
    BEQ L_81C32D                    ; $81C327  F0 04        Mx
    CLC                             ; $81C329  18           Mx
    ADC #$000A                      ; $81C32A  69 0A 00     Mx
L_81C32D:
    STA $0BC5                       ; $81C32D  8D C5 0B     Mx
    LDA $00D9                       ; $81C330  AD D9 00     Mx
    SEC                             ; $81C333  38           Mx
    SBC $071E                       ; $81C334  ED 1E 07     Mx
    STA $00D9                       ; $81C337  8D D9 00     Mx
    LDA $0BC7                       ; $81C33A  AD C7 0B     Mx
    SEC                             ; $81C33D  38           Mx
    SBC $0726                       ; $81C33E  ED 26 07     Mx
    STA $00DF                       ; $81C341  8D DF 00     Mx
    STZ $00D3                       ; $81C344  9C D3 00     Mx
    LDA $00D3                       ; $81C347  AD D3 00     Mx
    STA $00D6                       ; $81C34A  8D D6 00     Mx
    LDA $00D9                       ; $81C34D  AD D9 00     Mx
    STA $00DC                       ; $81C350  8D DC 00     Mx
    LDA $00DF                       ; $81C353  AD DF 00     Mx
    STA $00B7                       ; $81C356  8D B7 00     Mx
    LDA $00DC                       ; $81C359  AD DC 00     Mx
    BPL L_81C368                    ; $81C35C  10 0A        Mx
    EOR #$FFFF                      ; $81C35E  49 FF FF     Mx
    CLC                             ; $81C361  18           Mx
    ADC #$0001                      ; $81C362  69 01 00     Mx
    STA $00DC                       ; $81C365  8D DC 00     Mx
L_81C368:
    LDA $00B7                       ; $81C368  AD B7 00     Mx
    BPL L_81C377                    ; $81C36B  10 0A        Mx
    EOR #$FFFF                      ; $81C36D  49 FF FF     Mx
    CLC                             ; $81C370  18           Mx
    ADC #$0001                      ; $81C371  69 01 00     Mx
    STA $00B7                       ; $81C374  8D B7 00     Mx
L_81C377:
    LDA $00DC                       ; $81C377  AD DC 00     Mx
    CMP $00B7                       ; $81C37A  CD B7 00     Mx
    BCS L_81C391                    ; $81C37D  B0 12        Mx
    LDA $00B7                       ; $81C37F  AD B7 00     Mx
    STA $00BA                       ; $81C382  8D BA 00     Mx
    LDA $00DC                       ; $81C385  AD DC 00     Mx
    STA $00B7                       ; $81C388  8D B7 00     Mx
    LDA $00BA                       ; $81C38B  AD BA 00     Mx
    STA $00DC                       ; $81C38E  8D DC 00     Mx
L_81C391:
    LSR $00B7                       ; $81C391  4E B7 00     Mx
    LDA $00B7                       ; $81C394  AD B7 00     Mx
    CLC                             ; $81C397  18           Mx
    ADC $00DC                       ; $81C398  6D DC 00     Mx
    STA $00DC                       ; $81C39B  8D DC 00     Mx
    LSR $00B7                       ; $81C39E  4E B7 00     Mx
    LSR $00B7                       ; $81C3A1  4E B7 00     Mx
    LDA $00DC                       ; $81C3A4  AD DC 00     Mx
    SEC                             ; $81C3A7  38           Mx
    SBC $00B7                       ; $81C3A8  ED B7 00     Mx
    STA $00DC                       ; $81C3AB  8D DC 00     Mx
    CMP #$0083                      ; $81C3AE  C9 83 00     Mx
    BCC L_81C3D9                    ; $81C3B1  90 26        Mx
    STA $00B7                       ; $81C3B3  8D B7 00     Mx
    LDA #$0082                      ; $81C3B6  A9 82 00     Mx
    STA $00DC                       ; $81C3B9  8D DC 00     Mx
    LDA $00B7                       ; $81C3BC  AD B7 00     Mx
    SEC                             ; $81C3BF  38           Mx
    SBC $00DC                       ; $81C3C0  ED DC 00     Mx
    STA $00B7                       ; $81C3C3  8D B7 00     Mx
    LSR $00B7                       ; $81C3C6  4E B7 00     Mx
    LSR $00B7                       ; $81C3C9  4E B7 00     Mx
    LSR $00B7                       ; $81C3CC  4E B7 00     Mx
    LDA $00DC                       ; $81C3CF  AD DC 00     Mx
    CLC                             ; $81C3D2  18           Mx
    ADC $00B7                       ; $81C3D3  6D B7 00     Mx
    STA $00DC                       ; $81C3D6  8D DC 00     Mx
L_81C3D9:
    LSR                             ; $81C3D9  4A           Mx
    SEP #$20                        ; $81C3DA  E2 20        Mx
    STA $4202                       ; $81C3DC  8D 02 42     mx
    LDA #$6E                        ; $81C3DF  A9 6E        mx
    STA $4203                       ; $81C3E1  8D 03 42     mx
    NOP                             ; $81C3E4  EA           mx
    NOP                             ; $81C3E5  EA           mx
    NOP                             ; $81C3E6  EA           mx
    REP #$20                        ; $81C3E7  C2 20        mx
    LDA $4216                       ; $81C3E9  AD 16 42     Mx
    STA $00F2                       ; $81C3EC  8D F2 00     Mx
    STZ $00F4                       ; $81C3EF  9C F4 00     Mx
    ASL $00F2                       ; $81C3F2  0E F2 00     Mx
    ROL $00F4                       ; $81C3F5  2E F4 00     Mx
    LDA $00F3                       ; $81C3F8  AD F3 00     Mx
    AND #$FFFF                      ; $81C3FB  29 FF FF     Mx
    STA $00DC                       ; $81C3FE  8D DC 00     Mx
    JMP L_81C41A                    ; $81C401  4C 1A C4     Mx
L_81C404:
    STA $00D3                       ; $81C404  8D D3 00     Mx
    LSR $00D3                       ; $81C407  4E D3 00     Mx
    LSR $00D3                       ; $81C40A  4E D3 00     Mx
    LDA $00DC                       ; $81C40D  AD DC 00     Mx
    SEC                             ; $81C410  38           Mx
    SBC $00D3                       ; $81C411  ED D3 00     Mx
    CMP #$0023                      ; $81C414  C9 23 00     Mx
    JMP L_81C425                    ; $81C417  4C 25 C4     Mx
L_81C41A:
    CMP #$0032                      ; $81C41A  C9 32 00     Mx
    BCS L_81C425                    ; $81C41D  B0 06        Mx
    LDA #$0032                      ; $81C41F  A9 32 00     Mx
    STA $00DC                       ; $81C422  8D DC 00     Mx
L_81C425:
    LDA $06F6                       ; $81C425  AD F6 06     Mx
    STA $00DC                       ; $81C428  8D DC 00     Mx
    LDA $00D9                       ; $81C42B  AD D9 00     Mx
    STA $00E5                       ; $81C42E  8D E5 00     Mx
    LDA $00D9                       ; $81C431  AD D9 00     Mx
    BPL L_81C440                    ; $81C434  10 0A        Mx
    EOR #$FFFF                      ; $81C436  49 FF FF     Mx
    CLC                             ; $81C439  18           Mx
    ADC #$0001                      ; $81C43A  69 01 00     Mx
    STA $00D9                       ; $81C43D  8D D9 00     Mx
L_81C440:
    LDX $00DC                       ; $81C440  AE DC 00     Mx
    STX $00EE                       ; $81C443  8E EE 00     Mx
    LDA #$0000                      ; $81C446  A9 00 00     Mx
    STA $00EA                       ; $81C449  8D EA 00     Mx
    LDA $00D9                       ; $81C44C  AD D9 00     Mx
    STA $4204                       ; $81C44F  8D 04 42     Mx
    LDX $00EE                       ; $81C452  AE EE 00     Mx
    STX $4206                       ; $81C455  8E 06 42     Mx
    NOP                             ; $81C458  EA           Mx
    NOP                             ; $81C459  EA           Mx
    NOP                             ; $81C45A  EA           Mx
    NOP                             ; $81C45B  EA           Mx
    NOP                             ; $81C45C  EA           Mx
    NOP                             ; $81C45D  EA           Mx
    NOP                             ; $81C45E  EA           Mx
    STZ $00F0                       ; $81C45F  9C F0 00     Mx
    LDA $4214                       ; $81C462  AD 14 42     Mx
    STA $00F2                       ; $81C465  8D F2 00     Mx
    LDX $4216                       ; $81C468  AE 16 42     Mx
    STX $00EC                       ; $81C46B  8E EC 00     Mx
    LDA $00EB                       ; $81C46E  AD EB 00     Mx
    STA $4204                       ; $81C471  8D 04 42     Mx
    LDX $00EE                       ; $81C474  AE EE 00     Mx
    STX $4206                       ; $81C477  8E 06 42     Mx
    NOP                             ; $81C47A  EA           Mx
    NOP                             ; $81C47B  EA           Mx
    NOP                             ; $81C47C  EA           Mx
    NOP                             ; $81C47D  EA           Mx
    NOP                             ; $81C47E  EA           Mx
    NOP                             ; $81C47F  EA           Mx
    NOP                             ; $81C480  EA           Mx
    STZ $00F0                       ; $81C481  9C F0 00     Mx
    LDA $4214                       ; $81C484  AD 14 42     Mx
    ORA $00F1                       ; $81C487  0D F1 00     Mx
    STA $00F1                       ; $81C48A  8D F1 00     Mx
    LDX $4216                       ; $81C48D  AE 16 42     Mx
    STX $00EB                       ; $81C490  8E EB 00     Mx
    LDA $00EA                       ; $81C493  AD EA 00     Mx
    STA $4204                       ; $81C496  8D 04 42     Mx
    LDX $00EE                       ; $81C499  AE EE 00     Mx
    STX $4206                       ; $81C49C  8E 06 42     Mx
    NOP                             ; $81C49F  EA           Mx
    NOP                             ; $81C4A0  EA           Mx
    NOP                             ; $81C4A1  EA           Mx
    NOP                             ; $81C4A2  EA           Mx
    NOP                             ; $81C4A3  EA           Mx
    NOP                             ; $81C4A4  EA           Mx
    NOP                             ; $81C4A5  EA           Mx
    NOP                             ; $81C4A6  EA           Mx
    LDA $4214                       ; $81C4A7  AD 14 42     Mx
    ORA $00F0                       ; $81C4AA  0D F0 00     Mx
    STA $00F0                       ; $81C4AD  8D F0 00     Mx
    LDA $00F0                       ; $81C4B0  AD F0 00     Mx
    STA $0728                       ; $81C4B3  8D 28 07     Mx
    LDA $00F2                       ; $81C4B6  AD F2 00     Mx
    STA $072A                       ; $81C4B9  8D 2A 07     Mx
    LDA $00E5                       ; $81C4BC  AD E5 00     Mx
    BPL L_81C4DA                    ; $81C4BF  10 19        Mx
    LDA $0728                       ; $81C4C1  AD 28 07     Mx
    EOR #$FFFF                      ; $81C4C4  49 FF FF     Mx
    CLC                             ; $81C4C7  18           Mx
    ADC #$0001                      ; $81C4C8  69 01 00     Mx
    STA $0728                       ; $81C4CB  8D 28 07     Mx
    LDA $072A                       ; $81C4CE  AD 2A 07     Mx
    EOR #$FFFF                      ; $81C4D1  49 FF FF     Mx
    ADC #$0000                      ; $81C4D4  69 00 00     Mx
    STA $072A                       ; $81C4D7  8D 2A 07     Mx
L_81C4DA:
    LDA $00DF                       ; $81C4DA  AD DF 00     Mx
    STA $00E5                       ; $81C4DD  8D E5 00     Mx
    LDA $00DF                       ; $81C4E0  AD DF 00     Mx
    BPL L_81C4EF                    ; $81C4E3  10 0A        Mx
    EOR #$FFFF                      ; $81C4E5  49 FF FF     Mx
    CLC                             ; $81C4E8  18           Mx
    ADC #$0001                      ; $81C4E9  69 01 00     Mx
    STA $00DF                       ; $81C4EC  8D DF 00     Mx
L_81C4EF:
    LDX $00DC                       ; $81C4EF  AE DC 00     Mx
    STX $00EE                       ; $81C4F2  8E EE 00     Mx
    LDA #$0000                      ; $81C4F5  A9 00 00     Mx
    STA $00EA                       ; $81C4F8  8D EA 00     Mx
    LDA $00DF                       ; $81C4FB  AD DF 00     Mx
    STA $4204                       ; $81C4FE  8D 04 42     Mx
    LDX $00EE                       ; $81C501  AE EE 00     Mx
    STX $4206                       ; $81C504  8E 06 42     Mx
    NOP                             ; $81C507  EA           Mx
    NOP                             ; $81C508  EA           Mx
    NOP                             ; $81C509  EA           Mx
    NOP                             ; $81C50A  EA           Mx
    NOP                             ; $81C50B  EA           Mx
    NOP                             ; $81C50C  EA           Mx
    NOP                             ; $81C50D  EA           Mx
    STZ $00F0                       ; $81C50E  9C F0 00     Mx
    LDA $4214                       ; $81C511  AD 14 42     Mx
    STA $00F2                       ; $81C514  8D F2 00     Mx
    LDX $4216                       ; $81C517  AE 16 42     Mx
    STX $00EC                       ; $81C51A  8E EC 00     Mx
    LDA $00EB                       ; $81C51D  AD EB 00     Mx
    STA $4204                       ; $81C520  8D 04 42     Mx
    LDX $00EE                       ; $81C523  AE EE 00     Mx
    STX $4206                       ; $81C526  8E 06 42     Mx
    NOP                             ; $81C529  EA           Mx
    NOP                             ; $81C52A  EA           Mx
    NOP                             ; $81C52B  EA           Mx
    NOP                             ; $81C52C  EA           Mx
    NOP                             ; $81C52D  EA           Mx
    NOP                             ; $81C52E  EA           Mx
    NOP                             ; $81C52F  EA           Mx
    STZ $00F0                       ; $81C530  9C F0 00     Mx
    LDA $4214                       ; $81C533  AD 14 42     Mx
    ORA $00F1                       ; $81C536  0D F1 00     Mx
    STA $00F1                       ; $81C539  8D F1 00     Mx
    LDX $4216                       ; $81C53C  AE 16 42     Mx
    STX $00EB                       ; $81C53F  8E EB 00     Mx
    LDA $00EA                       ; $81C542  AD EA 00     Mx
    STA $4204                       ; $81C545  8D 04 42     Mx
    LDX $00EE                       ; $81C548  AE EE 00     Mx
    STX $4206                       ; $81C54B  8E 06 42     Mx
    NOP                             ; $81C54E  EA           Mx
    NOP                             ; $81C54F  EA           Mx
    NOP                             ; $81C550  EA           Mx
    NOP                             ; $81C551  EA           Mx
    NOP                             ; $81C552  EA           Mx
    NOP                             ; $81C553  EA           Mx
    NOP                             ; $81C554  EA           Mx
    NOP                             ; $81C555  EA           Mx
    LDA $4214                       ; $81C556  AD 14 42     Mx
    ORA $00F0                       ; $81C559  0D F0 00     Mx
    STA $00F0                       ; $81C55C  8D F0 00     Mx
    LDA $00F0                       ; $81C55F  AD F0 00     Mx
    STA $0730                       ; $81C562  8D 30 07     Mx
    LDA $00F2                       ; $81C565  AD F2 00     Mx
    STA $0732                       ; $81C568  8D 32 07     Mx
    LDA $00E5                       ; $81C56B  AD E5 00     Mx
    BPL L_81C589                    ; $81C56E  10 19        Mx
    LDA $0730                       ; $81C570  AD 30 07     Mx
    EOR #$FFFF                      ; $81C573  49 FF FF     Mx
    CLC                             ; $81C576  18           Mx
    ADC #$0001                      ; $81C577  69 01 00     Mx
    STA $0730                       ; $81C57A  8D 30 07     Mx
    LDA $0732                       ; $81C57D  AD 32 07     Mx
    EOR #$FFFF                      ; $81C580  49 FF FF     Mx
    ADC #$0000                      ; $81C583  69 00 00     Mx
    STA $0732                       ; $81C586  8D 32 07     Mx
L_81C589:
    LDA $00DC                       ; $81C589  AD DC 00     Mx
    SEP #$20                        ; $81C58C  E2 20        Mx
    STA $4202                       ; $81C58E  8D 02 42     mx
    LDA #$80                        ; $81C591  A9 80        mx
    STA $4203                       ; $81C593  8D 03 42     mx
    NOP                             ; $81C596  EA           mx
    NOP                             ; $81C597  EA           mx
    NOP                             ; $81C598  EA           mx
    REP #$20                        ; $81C599  C2 20        mx
    LDA $4216                       ; $81C59B  AD 16 42     Mx
    STA $00A8                       ; $81C59E  8D A8 00     Mx
    LDA $00DC                       ; $81C5A1  AD DC 00     Mx
    SEP #$20                        ; $81C5A4  E2 20        Mx
    STA $4202                       ; $81C5A6  8D 02 42     mx
    LDA #$12                        ; $81C5A9  A9 12        mx
    STA $4203                       ; $81C5AB  8D 03 42     mx
    NOP                             ; $81C5AE  EA           mx
    REP #$20                        ; $81C5AF  C2 20        mx
    STZ $00F4                       ; $81C5B1  9C F4 00     Mx
    STZ $00F2                       ; $81C5B4  9C F2 00     Mx
    LDA $4216                       ; $81C5B7  AD 16 42     Mx
    STA $00F3                       ; $81C5BA  8D F3 00     Mx
    LDA $00F2                       ; $81C5BD  AD F2 00     Mx
    CLC                             ; $81C5C0  18           Mx
    ADC $00A8                       ; $81C5C1  6D A8 00     Mx
    STA $00F2                       ; $81C5C4  8D F2 00     Mx
    LDA $00F4                       ; $81C5C7  AD F4 00     Mx
    ADC #$0000                      ; $81C5CA  69 00 00     Mx
    STA $00F4                       ; $81C5CD  8D F4 00     Mx
    LDA $00F2                       ; $81C5D0  AD F2 00     Mx
    EOR #$FFFF                      ; $81C5D3  49 FF FF     Mx
    CLC                             ; $81C5D6  18           Mx
    ADC #$0001                      ; $81C5D7  69 01 00     Mx
    STA $00A4                       ; $81C5DA  8D A4 00     Mx
    LDA $00F4                       ; $81C5DD  AD F4 00     Mx
    EOR #$FFFF                      ; $81C5E0  49 FF FF     Mx
    ADC #$0000                      ; $81C5E3  69 00 00     Mx
    STA $00A6                       ; $81C5E6  8D A6 00     Mx
    LDA $0720                       ; $81C5E9  AD 20 07     Mx
    SEC                             ; $81C5EC  38           Mx
    SBC #$0000                      ; $81C5ED  E9 00 00     Mx
    STA $00A8                       ; $81C5F0  8D A8 00     Mx
    LDA $0722                       ; $81C5F3  AD 22 07     Mx
    SBC $0BC5                       ; $81C5F6  ED C5 0B     Mx
    STA $00AA                       ; $81C5F9  8D AA 00     Mx
    LDA $00A8                       ; $81C5FC  AD A8 00     Mx
    EOR #$FFFF                      ; $81C5FF  49 FF FF     Mx
    CLC                             ; $81C602  18           Mx
    ADC #$0001                      ; $81C603  69 01 00     Mx
    STA $00A8                       ; $81C606  8D A8 00     Mx
    LDA $00AA                       ; $81C609  AD AA 00     Mx
    EOR #$FFFF                      ; $81C60C  49 FF FF     Mx
    ADC #$0000                      ; $81C60F  69 00 00     Mx
    STA $00AA                       ; $81C612  8D AA 00     Mx
    STA $00E5                       ; $81C615  8D E5 00     Mx
    BPL L_81C633                    ; $81C618  10 19        Mx
    LDA $00A8                       ; $81C61A  AD A8 00     Mx
    EOR #$FFFF                      ; $81C61D  49 FF FF     Mx
    CLC                             ; $81C620  18           Mx
    ADC #$0001                      ; $81C621  69 01 00     Mx
    STA $00A8                       ; $81C624  8D A8 00     Mx
    LDA $00AA                       ; $81C627  AD AA 00     Mx
    EOR #$FFFF                      ; $81C62A  49 FF FF     Mx
    ADC #$0000                      ; $81C62D  69 00 00     Mx
    STA $00AA                       ; $81C630  8D AA 00     Mx
L_81C633:
    LDX $00DC                       ; $81C633  AE DC 00     Mx
    STX $00EE                       ; $81C636  8E EE 00     Mx
    LDA $00A8                       ; $81C639  AD A8 00     Mx
    STA $00EA                       ; $81C63C  8D EA 00     Mx
    LDA $00AA                       ; $81C63F  AD AA 00     Mx
    STA $4204                       ; $81C642  8D 04 42     Mx
    LDX $00EE                       ; $81C645  AE EE 00     Mx
    STX $4206                       ; $81C648  8E 06 42     Mx
    NOP                             ; $81C64B  EA           Mx
    NOP                             ; $81C64C  EA           Mx
    NOP                             ; $81C64D  EA           Mx
    NOP                             ; $81C64E  EA           Mx
    NOP                             ; $81C64F  EA           Mx
    NOP                             ; $81C650  EA           Mx
    NOP                             ; $81C651  EA           Mx
    STZ $00F0                       ; $81C652  9C F0 00     Mx
    LDA $4214                       ; $81C655  AD 14 42     Mx
    STA $00F2                       ; $81C658  8D F2 00     Mx
    LDX $4216                       ; $81C65B  AE 16 42     Mx
    STX $00EC                       ; $81C65E  8E EC 00     Mx
    LDA $00EB                       ; $81C661  AD EB 00     Mx
    STA $4204                       ; $81C664  8D 04 42     Mx
    LDX $00EE                       ; $81C667  AE EE 00     Mx
    STX $4206                       ; $81C66A  8E 06 42     Mx
    NOP                             ; $81C66D  EA           Mx
    NOP                             ; $81C66E  EA           Mx
    NOP                             ; $81C66F  EA           Mx
    NOP                             ; $81C670  EA           Mx
    NOP                             ; $81C671  EA           Mx
    NOP                             ; $81C672  EA           Mx
    NOP                             ; $81C673  EA           Mx
    STZ $00F0                       ; $81C674  9C F0 00     Mx
    LDA $4214                       ; $81C677  AD 14 42     Mx
    ORA $00F1                       ; $81C67A  0D F1 00     Mx
    STA $00F1                       ; $81C67D  8D F1 00     Mx
    LDX $4216                       ; $81C680  AE 16 42     Mx
    STX $00EB                       ; $81C683  8E EB 00     Mx
    LDA $00EA                       ; $81C686  AD EA 00     Mx
    STA $4204                       ; $81C689  8D 04 42     Mx
    LDX $00EE                       ; $81C68C  AE EE 00     Mx
    STX $4206                       ; $81C68F  8E 06 42     Mx
    NOP                             ; $81C692  EA           Mx
    NOP                             ; $81C693  EA           Mx
    NOP                             ; $81C694  EA           Mx
    NOP                             ; $81C695  EA           Mx
    NOP                             ; $81C696  EA           Mx
    NOP                             ; $81C697  EA           Mx
    NOP                             ; $81C698  EA           Mx
    NOP                             ; $81C699  EA           Mx
    LDA $4214                       ; $81C69A  AD 14 42     Mx
    ORA $00F0                       ; $81C69D  0D F0 00     Mx
    STA $00F0                       ; $81C6A0  8D F0 00     Mx
    LDA $00E5                       ; $81C6A3  AD E5 00     Mx
    BPL L_81C6C1                    ; $81C6A6  10 19        Mx
    LDA $00F0                       ; $81C6A8  AD F0 00     Mx
    EOR #$FFFF                      ; $81C6AB  49 FF FF     Mx
    CLC                             ; $81C6AE  18           Mx
    ADC #$0001                      ; $81C6AF  69 01 00     Mx
    STA $00F0                       ; $81C6B2  8D F0 00     Mx
    LDA $00F2                       ; $81C6B5  AD F2 00     Mx
    EOR #$FFFF                      ; $81C6B8  49 FF FF     Mx
    ADC #$0000                      ; $81C6BB  69 00 00     Mx
    STA $00F2                       ; $81C6BE  8D F2 00     Mx
L_81C6C1:
    LDA $00A4                       ; $81C6C1  AD A4 00     Mx
    SEC                             ; $81C6C4  38           Mx
    SBC $00F0                       ; $81C6C5  ED F0 00     Mx
    STA $072C                       ; $81C6C8  8D 2C 07     Mx
    LDA $00A6                       ; $81C6CB  AD A6 00     Mx
    SBC $00F2                       ; $81C6CE  ED F2 00     Mx
    STA $072E                       ; $81C6D1  8D 2E 07     Mx
    LDA $072C                       ; $81C6D4  AD 2C 07     Mx
    EOR #$FFFF                      ; $81C6D7  49 FF FF     Mx
    CLC                             ; $81C6DA  18           Mx
    ADC #$0001                      ; $81C6DB  69 01 00     Mx
    STA $072C                       ; $81C6DE  8D 2C 07     Mx
    LDA $072E                       ; $81C6E1  AD 2E 07     Mx
    EOR #$FFFF                      ; $81C6E4  49 FF FF     Mx
    ADC #$0000                      ; $81C6E7  69 00 00     Mx
    STA $072E                       ; $81C6EA  8D 2E 07     Mx
    JMP L_81C25C                    ; $81C6ED  4C 5C C2     Mx
L_81C6F0:
    LDA #$001E                      ; $81C6F0  A9 1E 00     Mx
    STA $06F6                       ; $81C6F3  8D F6 06     Mx
    LDA #$7800                      ; $81C6F6  A9 00 78     Mx
    STA $072C                       ; $81C6F9  8D 2C 07     Mx
    LDA #$0003                      ; $81C6FC  A9 03 00     Mx
    STA $072E                       ; $81C6FF  8D 2E 07     Mx
    JMP L_81C25C                    ; $81C702  4C 5C C2     Mx
L_81C705:
    LDY $07A0                       ; $81C705  AC A0 07     Mx
    LDA [$D0],Y                     ; $81C708  B7 D0        Mx
    STA $0708                       ; $81C70A  8D 08 07     Mx
    INY                             ; $81C70D  C8           Mx
    INY                             ; $81C70E  C8           Mx
    STY $07A0                       ; $81C70F  8C A0 07     Mx
    JMP L_81C25C                    ; $81C712  4C 5C C2     Mx
L_81C715:
    LDA #$0008                      ; $81C715  A9 08 00     Mx
    STA $06F8                       ; $81C718  8D F8 06     Mx
    LDA #$0384                      ; $81C71B  A9 84 03     Mx
    STA $00F6                       ; $81C71E  8D F6 00     Mx
    JMP L_81C25C                    ; $81C721  4C 5C C2     Mx
L_81C724:
    LDA $0C19                       ; $81C724  AD 19 0C     Mx
    CMP $06F0                       ; $81C727  CD F0 06     Mx
    BNE L_81C735                    ; $81C72A  D0 09        Mx
    LDA #$0002                      ; $81C72C  A9 02 00     Mx
    STA $0BBF                       ; $81C72F  8D BF 0B     Mx
    STZ $0BC1                       ; $81C732  9C C1 0B     Mx
L_81C735:
    LDA #$0019                      ; $81C735  A9 19 00     Mx
    STA $077A                       ; $81C738  8D 7A 07     Mx
    LDA #$0008                      ; $81C73B  A9 08 00     Mx
    STA $06F8                       ; $81C73E  8D F8 06     Mx
    JMP L_81C25C                    ; $81C741  4C 5C C2     Mx
L_81C744:
    LDY $07A0                       ; $81C744  AC A0 07     Mx
    LDA [$D0],Y                     ; $81C747  B7 D0        Mx
    PHY                             ; $81C749  5A           Mx
    CMP #$0011                      ; $81C74A  C9 11 00     Mx
    BNE L_81C757                    ; $81C74D  D0 08        Mx
    LDX $1611                       ; $81C74F  AE 11 16     Mx
    BEQ L_81C76A                    ; $81C752  F0 16        Mx
    JMP L_81C774                    ; $81C754  4C 74 C7     Mx
L_81C757:
    CMP #$0000                      ; $81C757  C9 00 00     Mx
    BNE L_81C764                    ; $81C75A  D0 08        Mx
    LDX #$01                        ; $81C75C  A2 01        Mx
    STX $15F5                       ; $81C75E  8E F5 15     Mx
    STZ $15F7                       ; $81C761  9C F7 15     Mx
L_81C764:
    JSL L_BDFDF3                    ; $81C764  22 F3 FD BD  Mx
    BRA L_81C774                    ; $81C768  80 0A        Mx
L_81C76A:
    JSL L_BDFDF3                    ; $81C76A  22 F3 FD BD  Mx
    LDA #$0064                      ; $81C76E  A9 64 00     Mx
    STA $1611                       ; $81C771  8D 11 16     Mx
L_81C774:
    PLY                             ; $81C774  7A           Mx
    INY                             ; $81C775  C8           Mx
    INY                             ; $81C776  C8           Mx
    STY $07A0                       ; $81C777  8C A0 07     Mx
    JMP L_81C25C                    ; $81C77A  4C 5C C2     Mx
L_81C77D:
    LDY $07A0                       ; $81C77D  AC A0 07     Mx
    LDA [$D0],Y                     ; $81C780  B7 D0        Mx
    STA $1137                       ; $81C782  8D 37 11     Mx
    INY                             ; $81C785  C8           Mx
    INY                             ; $81C786  C8           Mx
    STY $07A0                       ; $81C787  8C A0 07     Mx
    JMP L_81C25C                    ; $81C78A  4C 5C C2     Mx
L_81C78D:
    LDX $0708                       ; $81C78D  AE 08 07     Mx
    LDA $A7E35F,X                   ; $81C790  BF 5F E3 A7  Mx
    AND #$0003                      ; $81C794  29 03 00     Mx
    CMP #$0002                      ; $81C797  C9 02 00     Mx
    BEQ L_81C7A5                    ; $81C79A  F0 09        Mx
    LDA #$0006                      ; $81C79C  A9 06 00     Mx
    STA $0708                       ; $81C79F  8D 08 07     Mx
    JMP L_81C25C                    ; $81C7A2  4C 5C C2     Mx
L_81C7A5:
    LDA #$0002                      ; $81C7A5  A9 02 00     Mx
    STA $0708                       ; $81C7A8  8D 08 07     Mx
    JMP L_81C25C                    ; $81C7AB  4C 5C C2     Mx
L_81C7AE:
    LDA $0B4A                       ; $81C7AE  AD 4A 0B     Mx
    BNE L_81C7B8                    ; $81C7B1  D0 05        Mx
    STZ $15F5                       ; $81C7B3  9C F5 15     Mx
    BRA L_81C7C6                    ; $81C7B6  80 0E        Mx
L_81C7B8:
    CMP #$0002                      ; $81C7B8  C9 02 00     Mx
    BCC L_81C7C6                    ; $81C7BB  90 09        Mx
    STZ $0CCB                       ; $81C7BD  9C CB 0C     Mx
    STZ $0CC9                       ; $81C7C0  9C C9 0C     Mx
    STZ $0CC7                       ; $81C7C3  9C C7 0C     Mx
L_81C7C6:
    STZ $0CD1                       ; $81C7C6  9C D1 0C     Mx
    STZ $0C11                       ; $81C7C9  9C 11 0C     Mx
    LDY $07A0                       ; $81C7CC  AC A0 07     Mx
    LDA [$D0],Y                     ; $81C7CF  B7 D0        Mx
    INY                             ; $81C7D1  C8           Mx
    INY                             ; $81C7D2  C8           Mx
    STY $07A0                       ; $81C7D3  8C A0 07     Mx
    STA $070E                       ; $81C7D6  8D 0E 07     Mx
    STZ $072A                       ; $81C7D9  9C 2A 07     Mx
    STZ $0728                       ; $81C7DC  9C 28 07     Mx
    STZ $0732                       ; $81C7DF  9C 32 07     Mx
    STZ $0730                       ; $81C7E2  9C 30 07     Mx
    CMP #$0000                      ; $81C7E5  C9 00 00     Mx
    BEQ L_81C7F0                    ; $81C7E8  F0 06        Mx
    STZ $072E                       ; $81C7EA  9C 2E 07     Mx
    STZ $072C                       ; $81C7ED  9C 2C 07     Mx
L_81C7F0:
    LDA $0C19                       ; $81C7F0  AD 19 0C     Mx
    CMP $06F0                       ; $81C7F3  CD F0 06     Mx
    BNE L_81C825                    ; $81C7F6  D0 2D        Mx
    STZ $0C19                       ; $81C7F8  9C 19 0C     Mx
    STZ $00CC                       ; $81C7FB  9C CC 00     Mx
    STZ $0C2B                       ; $81C7FE  9C 2B 0C     Mx
    STZ $0BEF                       ; $81C801  9C EF 0B     Mx
    STZ $0BF1                       ; $81C804  9C F1 0B     Mx
    LDA #$0002                      ; $81C807  A9 02 00     Mx
    STA $0BBF                       ; $81C80A  8D BF 0B     Mx
    LDA #$0001                      ; $81C80D  A9 01 00     Mx
    STA $0BC1                       ; $81C810  8D C1 0B     Mx
    LDA $0752                       ; $81C813  AD 52 07     Mx
    STA $0BD9                       ; $81C816  8D D9 0B     Mx
    LDA #$0374                      ; $81C819  A9 74 03     Mx
    STA $0BE1                       ; $81C81C  8D E1 0B     Mx
    LDA #$0068                      ; $81C81F  A9 68 00     Mx
    STA $0BDD                       ; $81C822  8D DD 0B     Mx
L_81C825:
    LDA #$0019                      ; $81C825  A9 19 00     Mx
    STA $077A                       ; $81C828  8D 7A 07     Mx
    STZ $0C2B                       ; $81C82B  9C 2B 0C     Mx
    STZ $00E5                       ; $81C82E  9C E5 00     Mx
    LDA $0B4A                       ; $81C831  AD 4A 0B     Mx
    CMP #$0002                      ; $81C834  C9 02 00     Mx
    BCS L_81C84E                    ; $81C837  B0 15        Mx
    LDA $1D57                       ; $81C839  AD 57 1D     Mx
    CMP #$07AE                      ; $81C83C  C9 AE 07     Mx
    BCS L_81C84E                    ; $81C83F  B0 0D        Mx
    LDA $1D56                       ; $81C841  AD 56 1D     Mx
    AND #$0007                      ; $81C844  29 07 00     Mx
    SEC                             ; $81C847  38           Mx
    SBC #$0004                      ; $81C848  E9 04 00     Mx
    STA $00E5                       ; $81C84B  8D E5 00     Mx
L_81C84E:
    LDA $0BD9                       ; $81C84E  AD D9 0B     Mx
    CLC                             ; $81C851  18           Mx
    ADC $00E5                       ; $81C852  6D E5 00     Mx
    STA $0BD9                       ; $81C855  8D D9 0B     Mx
    LDA $07CA                       ; $81C858  AD CA 07     Mx
    BPL L_81C882                    ; $81C85B  10 25        Mx
    BPL L_81C866                    ; $81C85D  10 07        Mx
    EOR #$FFFF                      ; $81C85F  49 FF FF     Mx
    CLC                             ; $81C862  18           Mx
    ADC #$0001                      ; $81C863  69 01 00     Mx
L_81C866:
    CMP #$0010                      ; $81C866  C9 10 00     Mx
    BCC L_81C86E                    ; $81C869  90 03        Mx
    LDA #$0010                      ; $81C86B  A9 10 00     Mx
L_81C86E:
    LSR                             ; $81C86E  4A           Mx
    INC                             ; $81C86F  1A           Mx
    STA $00A4                       ; $81C870  8D A4 00     Mx
    LDA $1D58                       ; $81C873  AD 58 1D     Mx
    AND #$000F                      ; $81C876  29 0F 00     Mx
    INC                             ; $81C879  1A           Mx
    CMP $00A4                       ; $81C87A  CD A4 00     Mx
    BCS L_81C88A                    ; $81C87D  B0 0B        Mx
    JMP L_81C88D                    ; $81C87F  4C 8D C8     Mx
L_81C882:
    LDA $1D58                       ; $81C882  AD 58 1D     Mx
    AND #$001F                      ; $81C885  29 1F 00     Mx
    BEQ L_81C88D                    ; $81C888  F0 03        Mx
L_81C88A:
    JMP L_81C923                    ; $81C88A  4C 23 C9     Mx
L_81C88D:
    LDA $0B4A                       ; $81C88D  AD 4A 0B     Mx
    CMP #$0002                      ; $81C890  C9 02 00     Mx
    BCS L_81C88A                    ; $81C893  B0 F5        Mx
    LDA $07CA                       ; $81C895  AD CA 07     Mx
    BMI L_81C8A0                    ; $81C898  30 06        Mx
    SEC                             ; $81C89A  38           Mx
    SBC #$0002                      ; $81C89B  E9 02 00     Mx
    BPL L_81C88A                    ; $81C89E  10 EA        Mx
L_81C8A0:
    LDX $06F0                       ; $81C8A0  AE F0 06     Mx
    CPX $0A96                       ; $81C8A3  EC 96 0A     Mx
    BEQ L_81C923                    ; $81C8A6  F0 7B        Mx
    LDA #$001C                      ; $81C8A8  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $81C8AB  22 F3 FD BD  Mx
    LDA #$001C                      ; $81C8AF  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $81C8B2  22 F3 FD BD  Mx
    LDA #$001C                      ; $81C8B6  A9 1C 00     Mx
    JSL L_BDFDF3                    ; $81C8B9  22 F3 FD BD  Mx
    LDA $1D56                       ; $81C8BD  AD 56 1D     Mx
    STA $0B84                       ; $81C8C0  8D 84 0B     Mx
    LDA $1D58                       ; $81C8C3  AD 58 1D     Mx
    AND #$0003                      ; $81C8C6  29 03 00     Mx
    SEC                             ; $81C8C9  38           Mx
    SBC #$0002                      ; $81C8CA  E9 02 00     Mx
    STA $00D6                       ; $81C8CD  8D D6 00     Mx
    LDA $1D57                       ; $81C8D0  AD 57 1D     Mx
    CLC                             ; $81C8D3  18           Mx
    ADC #$4000                      ; $81C8D4  69 00 40     Mx
    STA $0B9F                       ; $81C8D7  8D 9F 0B     Mx
    LDA $1D57                       ; $81C8DA  AD 57 1D     Mx
    AND #$0001                      ; $81C8DD  29 01 00     Mx
    ADC #$0000                      ; $81C8E0  69 00 00     Mx
    STA $00E8                       ; $81C8E3  8D E8 00     Mx
    LDA $0B9F                       ; $81C8E6  AD 9F 0B     Mx
    EOR #$FFFF                      ; $81C8E9  49 FF FF     Mx
    CLC                             ; $81C8EC  18           Mx
    ADC #$0001                      ; $81C8ED  69 01 00     Mx
    STA $0B9F                       ; $81C8F0  8D 9F 0B     Mx
    LDA $00E8                       ; $81C8F3  AD E8 00     Mx
    EOR #$FFFF                      ; $81C8F6  49 FF FF     Mx
    ADC #$0000                      ; $81C8F9  69 00 00     Mx
    STA $00E8                       ; $81C8FC  8D E8 00     Mx
    LDA #$006C                      ; $81C8FF  A9 6C 00     Mx
    STA $0BDD                       ; $81C902  8D DD 0B     Mx
    LDA #$F100                      ; $81C905  A9 00 F1     Mx
    STA $0B88                       ; $81C908  8D 88 0B     Mx
    LDA #$FFFA                      ; $81C90B  A9 FA FF     Mx
    STA $00D9                       ; $81C90E  8D D9 00     Mx
    LDA #$000F                      ; $81C911  A9 0F 00     Mx
    STA $077A                       ; $81C914  8D 7A 07     Mx
    STA $0862                       ; $81C917  8D 62 08     Mx
    STA $094A                       ; $81C91A  8D 4A 09     Mx
    STA $0A32                       ; $81C91D  8D 32 0A     Mx
    JMP L_81C93B                    ; $81C920  4C 3B C9     Mx
L_81C923:
    STZ $00E8                       ; $81C923  9C E8 00     Mx
    STZ $0B9F                       ; $81C926  9C 9F 0B     Mx
    STZ $00D6                       ; $81C929  9C D6 00     Mx
    STZ $0B84                       ; $81C92C  9C 84 0B     Mx
    LDA #$9400                      ; $81C92F  A9 00 94     Mx
    STA $0B88                       ; $81C932  8D 88 0B     Mx
    LDA #$0000                      ; $81C935  A9 00 00     Mx
    STA $00D9                       ; $81C938  8D D9 00     Mx
L_81C93B:
    LDA $0B9F                       ; $81C93B  AD 9F 0B     Mx
    STA $0BE3                       ; $81C93E  8D E3 0B     Mx
    LDA $00E8                       ; $81C941  AD E8 00     Mx
    STA $0BE5                       ; $81C944  8D E5 0B     Mx
    LDA $0B84                       ; $81C947  AD 84 0B     Mx
    STA $0BEB                       ; $81C94A  8D EB 0B     Mx
    LDA $00D6                       ; $81C94D  AD D6 00     Mx
    STA $0BED                       ; $81C950  8D ED 0B     Mx
    LDA $0B88                       ; $81C953  AD 88 0B     Mx
    STA $0BE7                       ; $81C956  8D E7 0B     Mx
    LDA $00D9                       ; $81C959  AD D9 00     Mx
    STA $0BE9                       ; $81C95C  8D E9 0B     Mx
    JMP L_81C25C                    ; $81C95F  4C 5C C2     Mx
L_81C962:
    LDA $072E                       ; $81C962  AD 2E 07     Mx
    BPL L_81C980                    ; $81C965  10 19        Mx
    LDA $0714                       ; $81C967  AD 14 07     Mx
    BMI L_81C971                    ; $81C96A  30 05        Mx
    ORA $0716                       ; $81C96C  0D 16 07     Mx
    BNE L_81C980                    ; $81C96F  D0 0F        Mx
L_81C971:
    STZ $0722                       ; $81C971  9C 22 07     Mx
    STZ $0720                       ; $81C974  9C 20 07     Mx
    STZ $072E                       ; $81C977  9C 2E 07     Mx
    STZ $072C                       ; $81C97A  9C 2C 07     Mx
    JMP L_81C9A2                    ; $81C97D  4C A2 C9     Mx
L_81C980:
    ORA $072C                       ; $81C980  0D 2C 07     Mx
    BNE L_81C98F                    ; $81C983  D0 0A        Mx
    LDA $070E                       ; $81C985  AD 0E 07     Mx
    BEQ L_81C98F                    ; $81C988  F0 05        Mx
    DEC $070E                       ; $81C98A  CE 0E 07     Mx
    BNE L_81C9A2                    ; $81C98D  D0 13        Mx
L_81C98F:
    LDA $072C                       ; $81C98F  AD 2C 07     Mx
    SEC                             ; $81C992  38           Mx
    SBC #$2500                      ; $81C993  E9 00 25     Mx
    STA $072C                       ; $81C996  8D 2C 07     Mx
    LDA $072E                       ; $81C999  AD 2E 07     Mx
    SBC #$0000                      ; $81C99C  E9 00 00     Mx
    STA $072E                       ; $81C99F  8D 2E 07     Mx
L_81C9A2:
    LDA $06F6                       ; $81C9A2  AD F6 06     Mx
    BEQ L_81C9FF                    ; $81C9A5  F0 58        Mx
    DEC $06F6                       ; $81C9A7  CE F6 06     Mx
    BEQ L_81C9FF                    ; $81C9AA  F0 53        Mx
    LDA $06F6                       ; $81C9AC  AD F6 06     Mx
    CMP #$000A                      ; $81C9AF  C9 0A 00     Mx
    BCS L_81C9C3                    ; $81C9B2  B0 0F        Mx
    STZ $15ED                       ; $81C9B4  9C ED 15     Mx
    STZ $15F5                       ; $81C9B7  9C F5 15     Mx
    LDA #$FFFF                      ; $81C9BA  A9 FF FF     Mx
    STA $15F3                       ; $81C9BD  8D F3 15     Mx
L_81C9C0:
    JMP L_81CA43                    ; $81C9C0  4C 43 CA     Mx
L_81C9C3:
    LDA $15ED                       ; $81C9C3  AD ED 15     Mx
    BEQ L_81C9C0                    ; $81C9C6  F0 F8        Mx
    LDA $15F3                       ; $81C9C8  AD F3 15     Mx
    CLC                             ; $81C9CB  18           Mx
    ADC #$0001                      ; $81C9CC  69 01 00     Mx
    CMP #$0006                      ; $81C9CF  C9 06 00     Mx
    BCC L_81C9D7                    ; $81C9D2  90 03        Mx
    LDA #$0000                      ; $81C9D4  A9 00 00     Mx
L_81C9D7:
    STA $15F3                       ; $81C9D7  8D F3 15     Mx
    BNE L_81C9C0                    ; $81C9DA  D0 E4        Mx
    LDA $1D56                       ; $81C9DC  AD 56 1D     Mx
    AND #$001F                      ; $81C9DF  29 1F 00     Mx
    STA $00A4                       ; $81C9E2  8D A4 00     Mx
    LDA #$0106                      ; $81C9E5  A9 06 01     Mx
    SEC                             ; $81C9E8  38           Mx
    SBC $012B                       ; $81C9E9  ED 2B 01     Mx
    SEC                             ; $81C9EC  38           Mx
    SBC $00A4                       ; $81C9ED  ED A4 00     Mx
    STA $15F1                       ; $81C9F0  8D F1 15     Mx
    LDA $1D58                       ; $81C9F3  AD 58 1D     Mx
    AND #$00FF                      ; $81C9F6  29 FF 00     Mx
    STA $15EF                       ; $81C9F9  8D EF 15     Mx
    JMP L_81CA43                    ; $81C9FC  4C 43 CA     Mx
L_81C9FF:
    LDA $0722                       ; $81C9FF  AD 22 07     Mx
    ORA $0720                       ; $81CA02  0D 20 07     Mx
    BEQ L_81CA0A                    ; $81CA05  F0 03        Mx
    JMP L_81CA43                    ; $81CA07  4C 43 CA     Mx
L_81CA0A:
    STZ $072A                       ; $81CA0A  9C 2A 07     Mx
    STZ $0728                       ; $81CA0D  9C 28 07     Mx
    STZ $0732                       ; $81CA10  9C 32 07     Mx
    STZ $0730                       ; $81CA13  9C 30 07     Mx
    STZ $072E                       ; $81CA16  9C 2E 07     Mx
    STZ $072C                       ; $81CA19  9C 2C 07     Mx
    LDA #$0014                      ; $81CA1C  A9 14 00     Mx
    STA $0778                       ; $81CA1F  8D 78 07     Mx
    LDA #$003C                      ; $81CA22  A9 3C 00     Mx
    STA $06F6                       ; $81CA25  8D F6 06     Mx
    LDA #$0000                      ; $81CA28  A9 00 00     Mx
    STA $06F4                       ; $81CA2B  8D F4 06     Mx
    LDA #$FFFF                      ; $81CA2E  A9 FF FF     Mx
    STA $06FA                       ; $81CA31  8D FA 06     Mx
    STZ $06FC                       ; $81CA34  9C FC 06     Mx
    STZ $0742                       ; $81CA37  9C 42 07     Mx
    STZ $06F8                       ; $81CA3A  9C F8 06     Mx
    LDA #$FFF8                      ; $81CA3D  A9 F8 FF     Mx
    STA $06FE                       ; $81CA40  8D FE 06     Mx
L_81CA43:
    RTS                             ; $81CA43  60           Mx
L_81CA44:
    LDA $06FA                       ; $81CA44  AD FA 06     Mx
    CMP #$0001                      ; $81CA47  C9 01 00     Mx
    BEQ L_81CA73                    ; $81CA4A  F0 27        Mx
    STZ $072A                       ; $81CA4C  9C 2A 07     Mx
    STZ $0728                       ; $81CA4F  9C 28 07     Mx
    STZ $0732                       ; $81CA52  9C 32 07     Mx
    STZ $0730                       ; $81CA55  9C 30 07     Mx
    LDA #$0002                      ; $81CA58  A9 02 00     Mx
    STA $06F8                       ; $81CA5B  8D F8 06     Mx
    STZ $0C29                       ; $81CA5E  9C 29 0C     Mx
    STZ $0C27                       ; $81CA61  9C 27 0C     Mx
    LDA #$07D8                      ; $81CA64  A9 D8 07     Mx
    STA $0C25                       ; $81CA67  8D 25 0C     Mx
    LDA $0C19                       ; $81CA6A  AD 19 0C     Mx
    STA $0C1F                       ; $81CA6D  8D 1F 0C     Mx
    JMP L_81CACA                    ; $81CA70  4C CA CA     Mx
L_81CA73:
    LDA #$0001                      ; $81CA73  A9 01 00     Mx
    STA $06FC                       ; $81CA76  8D FC 06     Mx
    LDA $06F0                       ; $81CA79  AD F0 06     Mx
    CMP $0C19                       ; $81CA7C  CD 19 0C     Mx
    BNE L_81CACA                    ; $81CA7F  D0 49        Mx
    LDA $0786                       ; $81CA81  AD 86 07     Mx
    STA $00A4                       ; $81CA84  8D A4 00     Mx
    LDA $0722                       ; $81CA87  AD 22 07     Mx
    STA $00A6                       ; $81CA8A  8D A6 00     Mx
    STZ $0B88                       ; $81CA8D  9C 88 0B     Mx
    LDA $0806                       ; $81CA90  AD 06 08     Mx
    STA $00AA                       ; $81CA93  8D AA 00     Mx
    LDA $080A                       ; $81CA96  AD 0A 08     Mx
    STA $00AC                       ; $81CA99  8D AC 00     Mx
    LDA $080E                       ; $81CA9C  AD 0E 08     Mx
    STA $00AE                       ; $81CA9F  8D AE 00     Mx
    LDA $0811                       ; $81CAA2  AD 11 08     Mx
    STA $00A8                       ; $81CAA5  8D A8 00     Mx
    LDA $0819                       ; $81CAA8  AD 19 08     Mx
    STA $00B0                       ; $81CAAB  8D B0 00     Mx
    STZ $088C                       ; $81CAAE  9C 8C 08     Mx
    STZ $0C39                       ; $81CAB1  9C 39 0C     Mx
    JSL L_A7DCCB                    ; $81CAB4  22 CB DC A7  Mx
    LDA $00DC                       ; $81CAB8  AD DC 00     Mx
    STA $088A                       ; $81CABB  8D 8A 08     Mx
    LDA #$0019                      ; $81CABE  A9 19 00     Mx
    STA $077A                       ; $81CAC1  8D 7A 07     Mx
    LDA #$0014                      ; $81CAC4  A9 14 00     Mx
    STA $0778                       ; $81CAC7  8D 78 07     Mx
L_81CACA:
    LDA $0714                       ; $81CACA  AD 14 07     Mx
    BPL L_81CB15                    ; $81CACD  10 46        Mx
L_81CACF:
    STZ $0722                       ; $81CACF  9C 22 07     Mx
    STZ $0720                       ; $81CAD2  9C 20 07     Mx
    STZ $0714                       ; $81CAD5  9C 14 07     Mx
    STZ $0716                       ; $81CAD8  9C 16 07     Mx
    STZ $072E                       ; $81CADB  9C 2E 07     Mx
    STZ $072C                       ; $81CADE  9C 2C 07     Mx
    LDA $0794                       ; $81CAE1  AD 94 07     Mx
    BEQ L_81CAF7                    ; $81CAE4  F0 11        Mx
    JSR L_81D428                    ; $81CAE6  20 28 D4     Mx
    LDA $06F4                       ; $81CAE9  AD F4 06     Mx
    CMP #$002E                      ; $81CAEC  C9 2E 00     Mx
    BEQ L_81CB12                    ; $81CAEF  F0 21        Mx
    LDA #$000C                      ; $81CAF1  A9 0C 00     Mx
    JMP L_81CAFA                    ; $81CAF4  4C FA CA     Mx
L_81CAF7:
    LDA #$0000                      ; $81CAF7  A9 00 00     Mx
L_81CAFA:
    STA $06F4                       ; $81CAFA  8D F4 06     Mx
    LDA #$FFFF                      ; $81CAFD  A9 FF FF     Mx
    STA $06FA                       ; $81CB00  8D FA 06     Mx
    STZ $06FC                       ; $81CB03  9C FC 06     Mx
    STZ $0742                       ; $81CB06  9C 42 07     Mx
    STZ $06F8                       ; $81CB09  9C F8 06     Mx
    LDA #$FFF8                      ; $81CB0C  A9 F8 FF     Mx
    STA $06FE                       ; $81CB0F  8D FE 06     Mx
L_81CB12:
    JMP L_81CB3A                    ; $81CB12  4C 3A CB     Mx
L_81CB15:
    LDA $0714                       ; $81CB15  AD 14 07     Mx
    BNE L_81CB27                    ; $81CB18  D0 0D        Mx
    LDA $072E                       ; $81CB1A  AD 2E 07     Mx
    BMI L_81CB24                    ; $81CB1D  30 05        Mx
    ORA $072C                       ; $81CB1F  0D 2C 07     Mx
    BNE L_81CB27                    ; $81CB22  D0 03        Mx
L_81CB24:
    JMP L_81CACF                    ; $81CB24  4C CF CA     Mx
L_81CB27:
    LDA $072C                       ; $81CB27  AD 2C 07     Mx
    SEC                             ; $81CB2A  38           Mx
    SBC #$2500                      ; $81CB2B  E9 00 25     Mx
    STA $072C                       ; $81CB2E  8D 2C 07     Mx
    LDA $072E                       ; $81CB31  AD 2E 07     Mx
    SBC #$0000                      ; $81CB34  E9 00 00     Mx
    STA $072E                       ; $81CB37  8D 2E 07     Mx
L_81CB3A:
    RTS                             ; $81CB3A  60           Mx
L_81CB3B:
    LDA #$001E                      ; $81CB3B  A9 1E 00     Mx
    STA $077A                       ; $81CB3E  8D 7A 07     Mx
    LDA #$0005                      ; $81CB41  A9 05 00     Mx
    STA $088A                       ; $81CB44  8D 8A 08     Mx
    STZ $07AC                       ; $81CB47  9C AC 07     Mx
    STZ $0A90                       ; $81CB4A  9C 90 0A     Mx
    LDA $0B6E                       ; $81CB4D  AD 6E 0B     Mx
    CMP #$0058                      ; $81CB50  C9 58 00     Mx
    BCS L_81CB83                    ; $81CB53  B0 2E        Mx
    LDA $06FA                       ; $81CB55  AD FA 06     Mx
    CMP #$0007                      ; $81CB58  C9 07 00     Mx
    BCC L_81CB62                    ; $81CB5B  90 05        Mx
    LDA $06FC                       ; $81CB5D  AD FC 06     Mx
    BEQ L_81CB65                    ; $81CB60  F0 03        Mx
L_81CB62:
    JMP L_81CC7C                    ; $81CB62  4C 7C CC     Mx
L_81CB65:
    LDA #$003C                      ; $81CB65  A9 3C 00     Mx
    STA $06F4                       ; $81CB68  8D F4 06     Mx
    LDA #$FFFF                      ; $81CB6B  A9 FF FF     Mx
    STA $06FA                       ; $81CB6E  8D FA 06     Mx
    STZ $06FC                       ; $81CB71  9C FC 06     Mx
    STZ $0742                       ; $81CB74  9C 42 07     Mx
    STZ $06F8                       ; $81CB77  9C F8 06     Mx
    LDA #$FFF8                      ; $81CB7A  A9 F8 FF     Mx
    STA $06FE                       ; $81CB7D  8D FE 06     Mx
    JMP L_81CC7C                    ; $81CB80  4C 7C CC     Mx
L_81CB83:
    LDA $072C                       ; $81CB83  AD 2C 07     Mx
    BNE L_81CBA6                    ; $81CB86  D0 1E        Mx
    LDA $06FA                       ; $81CB88  AD FA 06     Mx
    CMP #$0008                      ; $81CB8B  C9 08 00     Mx
    BCC L_81CB62                    ; $81CB8E  90 D2        Mx
    BNE L_81CBA6                    ; $81CB90  D0 14        Mx
    LDA $06FC                       ; $81CB92  AD FC 06     Mx
    BNE L_81CB62                    ; $81CB95  D0 CB        Mx
    LDA #$5600                      ; $81CB97  A9 00 56     Mx
    STA $072C                       ; $81CB9A  8D 2C 07     Mx
    LDA #$0004                      ; $81CB9D  A9 04 00     Mx
    STA $072E                       ; $81CBA0  8D 2E 07     Mx
    JMP L_81CC7C                    ; $81CBA3  4C 7C CC     Mx
L_81CBA6:
    LDX $06F1                       ; $81CBA6  AE F1 06     Mx
    BNE L_81CBB3                    ; $81CBA9  D0 08        Mx
    LDA #$0003                      ; $81CBAB  A9 03 00     Mx
    STA $077C                       ; $81CBAE  8D 7C 07     Mx
    BRA L_81CBBE                    ; $81CBB1  80 0B        Mx
L_81CBB3:
    LDA $0770                       ; $81CBB3  AD 70 07     Mx
    EOR $0772                       ; $81CBB6  4D 72 07     Mx
    BEQ L_81CBBE                    ; $81CBB9  F0 03        Mx
    INC $077C                       ; $81CBBB  EE 7C 07     Mx
L_81CBBE:
    LDA $072C                       ; $81CBBE  AD 2C 07     Mx
    SEC                             ; $81CBC1  38           Mx
    SBC #$2500                      ; $81CBC2  E9 00 25     Mx
    STA $072C                       ; $81CBC5  8D 2C 07     Mx
    LDA $072E                       ; $81CBC8  AD 2E 07     Mx
    SBC #$0000                      ; $81CBCB  E9 00 00     Mx
    STA $072E                       ; $81CBCE  8D 2E 07     Mx
    BMI L_81CBD6                    ; $81CBD1  30 03        Mx
    JMP L_81CC76                    ; $81CBD3  4C 76 CC     Mx
L_81CBD6:
    LDA $0722                       ; $81CBD6  AD 22 07     Mx
    ORA $0720                       ; $81CBD9  0D 20 07     Mx
    BNE L_81CC05                    ; $81CBDC  D0 27        Mx
    LDA #$FFFF                      ; $81CBDE  A9 FF FF     Mx
    STA $076E                       ; $81CBE1  8D 6E 07     Mx
    STA $0A26                       ; $81CBE4  8D 26 0A     Mx
    LDA #$0000                      ; $81CBE7  A9 00 00     Mx
    STA $06F4                       ; $81CBEA  8D F4 06     Mx
    LDA #$FFFF                      ; $81CBED  A9 FF FF     Mx
    STA $06FA                       ; $81CBF0  8D FA 06     Mx
    STZ $06FC                       ; $81CBF3  9C FC 06     Mx
    STZ $0742                       ; $81CBF6  9C 42 07     Mx
    STZ $06F8                       ; $81CBF9  9C F8 06     Mx
    LDA #$FFF8                      ; $81CBFC  A9 F8 FF     Mx
    STA $06FE                       ; $81CBFF  8D FE 06     Mx
    JMP L_81CC7C                    ; $81CC02  4C 7C CC     Mx
L_81CC05:
    LDA $06FA                       ; $81CC05  AD FA 06     Mx
    CMP #$000B                      ; $81CC08  C9 0B 00     Mx
    BEQ L_81CC76                    ; $81CC0B  F0 69        Mx
    CMP #$000A                      ; $81CC0D  C9 0A 00     Mx
    BNE L_81CC7C                    ; $81CC10  D0 6A        Mx
    LDA $0BE5                       ; $81CC12  AD E5 0B     Mx
    BNE L_81CC7C                    ; $81CC15  D0 65        Mx
    LDA $09AC                       ; $81CC17  AD AC 09     Mx
    CMP #$003C                      ; $81CC1A  C9 3C 00     Mx
    BEQ L_81CC27                    ; $81CC1D  F0 08        Mx
    LDA $077C                       ; $81CC1F  AD 7C 07     Mx
    CMP $094C                       ; $81CC22  CD 4C 09     Mx
    BRA L_81CC2D                    ; $81CC25  80 06        Mx
L_81CC27:
    LDA $077C                       ; $81CC27  AD 7C 07     Mx
    CMP $0A34                       ; $81CC2A  CD 34 0A     Mx
L_81CC2D:
    BEQ L_81CC33                    ; $81CC2D  F0 04        Mx
    BCC L_81CC7C                    ; $81CC2F  90 4B        Mx
    BRA L_81CC35                    ; $81CC31  80 02        Mx
L_81CC33:
    BRA L_81CC7C                    ; $81CC33  80 47        Mx
L_81CC35:
    LDA $0BD9                       ; $81CC35  AD D9 0B     Mx
    SEC                             ; $81CC38  38           Mx
    SBC #$0014                      ; $81CC39  E9 14 00     Mx
    STA $0BD9                       ; $81CC3C  8D D9 0B     Mx
    LDA #$8000                      ; $81CC3F  A9 00 80     Mx
    STA $0BE3                       ; $81CC42  8D E3 0B     Mx
    LDA #$FFFE                      ; $81CC45  A9 FE FF     Mx
    STA $0BE5                       ; $81CC48  8D E5 0B     Mx
    LDA #$7000                      ; $81CC4B  A9 00 70     Mx
    STA $0BEB                       ; $81CC4E  8D EB 0B     Mx
    LDA #$FFFF                      ; $81CC51  A9 FF FF     Mx
    STA $0BED                       ; $81CC54  8D ED 0B     Mx
    LDA $06F4                       ; $81CC57  AD F4 06     Mx
    CMP #$003C                      ; $81CC5A  C9 3C 00     Mx
    BEQ L_81CC67                    ; $81CC5D  F0 08        Mx
    LDA #$06F0                      ; $81CC5F  A9 F0 06     Mx
    STA $0C25                       ; $81CC62  8D 25 0C     Mx
    BRA L_81CC6D                    ; $81CC65  80 06        Mx
L_81CC67:
    LDA #$07D8                      ; $81CC67  A9 D8 07     Mx
    STA $0C25                       ; $81CC6A  8D 25 0C     Mx
L_81CC6D:
    LDA #$0003                      ; $81CC6D  A9 03 00     Mx
    JSL L_BDFDF3                    ; $81CC70  22 F3 FD BD  Mx
    BRA L_81CC7C                    ; $81CC74  80 06        Mx
L_81CC76:
    LDA #$0002                      ; $81CC76  A9 02 00     Mx
    STA $06FC                       ; $81CC79  8D FC 06     Mx
L_81CC7C:
    RTS                             ; $81CC7C  60           Mx
L_81CC7D:
    LDA $077E                       ; $81CC7D  AD 7E 07     Mx
    BEQ L_81CC8A                    ; $81CC80  F0 08        Mx
    LDA $0C19                       ; $81CC82  AD 19 0C     Mx
    BEQ L_81CC8A                    ; $81CC85  F0 03        Mx
L_81CC87:
    JMP L_81D3E0                    ; $81CC87  4C E0 D3     Mx
L_81CC8A:
    LDA $0BF9                       ; $81CC8A  AD F9 0B     Mx
    BNE L_81CC87                    ; $81CC8D  D0 F8        Mx
    LDA $07A2                       ; $81CC8F  AD A2 07     Mx
    BNE L_81CC87                    ; $81CC92  D0 F3        Mx
    LDA $0C19                       ; $81CC94  AD 19 0C     Mx
    BNE L_81CC9C                    ; $81CC97  D0 03        Mx
L_81CC99:
    JMP L_81CCD4                    ; $81CC99  4C D4 CC     Mx
L_81CC9C:
    LDY #$08                        ; $81CC9C  A0 08        Mx
    LDA ($CC),Y                     ; $81CC9E  B1 CC        Mx
    AND #$0001                      ; $81CCA0  29 01 00     Mx
    BNE L_81CC99                    ; $81CCA3  D0 F4        Mx
    LDA $075E                       ; $81CCA5  AD 5E 07     Mx
    TAX                             ; $81CCA8  AA           Mx
    LDA $A7E377,X                   ; $81CCA9  BF 77 E3 A7  Mx
    AND #$0007                      ; $81CCAD  29 07 00     Mx
    STA $0708                       ; $81CCB0  8D 08 07     Mx
    LDY #$08                        ; $81CCB3  A0 08        Mx
    LDA ($CC),Y                     ; $81CCB5  B1 CC        Mx
    AND #$0004                      ; $81CCB7  29 04 00     Mx
    BNE L_81CCBF                    ; $81CCBA  D0 03        Mx
    JMP L_81CD91                    ; $81CCBC  4C 91 CD     Mx
L_81CCBF:
    LDA $1D56                       ; $81CCBF  AD 56 1D     Mx
    EOR $1D57                       ; $81CCC2  4D 57 1D     Mx
    EOR $0006                       ; $81CCC5  4D 06 00     Mx
    AND #$0007                      ; $81CCC8  29 07 00     Mx
    ASL                             ; $81CCCB  0A           Mx
    TAX                             ; $81CCCC  AA           Mx
    LDA $A7E5FB,X                   ; $81CCCD  BF FB E5 A7  Mx
    JMP L_81CD94                    ; $81CCD1  4C 94 CD     Mx
L_81CCD4:
    LDA $0BDD                       ; $81CCD4  AD DD 0B     Mx
    CMP #$0014                      ; $81CCD7  C9 14 00     Mx
    BCS L_81CCDF                    ; $81CCDA  B0 03        Mx
    JMP L_81CD84                    ; $81CCDC  4C 84 CD     Mx
L_81CCDF:
    LDA $0BD9                       ; $81CCDF  AD D9 0B     Mx
    STA $00E2                       ; $81CCE2  8D E2 00     Mx
    LDA $0BE1                       ; $81CCE5  AD E1 0B     Mx
    STA $00E5                       ; $81CCE8  8D E5 00     Mx
    LDA $0C19                       ; $81CCEB  AD 19 0C     Mx
    BEQ L_81CCF3                    ; $81CCEE  F0 03        Mx
    JMP L_81CD3B                    ; $81CCF0  4C 3B CD     Mx
L_81CCF3:
    LDX #$00                        ; $81CCF3  A2 00        Mx
    LDA $0BE4                       ; $81CCF5  AD E4 0B     Mx
    BPL L_81CCFC                    ; $81CCF8  10 02        Mx
    LDX #$FF                        ; $81CCFA  A2 FF        Mx
L_81CCFC:
    ASL                             ; $81CCFC  0A           Mx
    ASL                             ; $81CCFD  0A           Mx
    STA $0BAF                       ; $81CCFE  8D AF 0B     Mx
    ASL                             ; $81CD01  0A           Mx
    ASL                             ; $81CD02  0A           Mx
    CLC                             ; $81CD03  18           Mx
    ADC $0BAF                       ; $81CD04  6D AF 0B     Mx
    STA $00D0                       ; $81CD07  8D D0 00     Mx
    STX $00D2                       ; $81CD0A  8E D2 00     Mx
    LDA $00D1                       ; $81CD0D  AD D1 00     Mx
    CLC                             ; $81CD10  18           Mx
    ADC $00E2                       ; $81CD11  6D E2 00     Mx
    STA $00E2                       ; $81CD14  8D E2 00     Mx
    LDX #$00                        ; $81CD17  A2 00        Mx
    LDA $0BEC                       ; $81CD19  AD EC 0B     Mx
    BPL L_81CD20                    ; $81CD1C  10 02        Mx
    LDX #$FF                        ; $81CD1E  A2 FF        Mx
L_81CD20:
    ASL                             ; $81CD20  0A           Mx
    ASL                             ; $81CD21  0A           Mx
    STA $0BAF                       ; $81CD22  8D AF 0B     Mx
    ASL                             ; $81CD25  0A           Mx
    ASL                             ; $81CD26  0A           Mx
    CLC                             ; $81CD27  18           Mx
    ADC $0BAF                       ; $81CD28  6D AF 0B     Mx
    STA $00D0                       ; $81CD2B  8D D0 00     Mx
    STX $00D2                       ; $81CD2E  8E D2 00     Mx
    LDA $00D1                       ; $81CD31  AD D1 00     Mx
    CLC                             ; $81CD34  18           Mx
    ADC $00E5                       ; $81CD35  6D E5 00     Mx
    STA $00E5                       ; $81CD38  8D E5 00     Mx
L_81CD3B:
    LDA $071E                       ; $81CD3B  AD 1E 07     Mx
    STA $00D0                       ; $81CD3E  8D D0 00     Mx
    LDA $0726                       ; $81CD41  AD 26 07     Mx
    STA $00D3                       ; $81CD44  8D D3 00     Mx
    JSL $00AEF9                     ; $81CD47  22 F9 AE 00  Mx
    TAX                             ; $81CD4B  AA           Mx
    LDA $A7E377,X                   ; $81CD4C  BF 77 E3 A7  Mx
    AND #$0007                      ; $81CD50  29 07 00     Mx
    STA $0708                       ; $81CD53  8D 08 07     Mx
    LDA $00D3                       ; $81CD56  AD D3 00     Mx
    CMP #$0060                      ; $81CD59  C9 60 00     Mx
    BCC L_81CD61                    ; $81CD5C  90 03        Mx
    JMP L_81CD91                    ; $81CD5E  4C 91 CD     Mx
L_81CD61:
    LDA $0C19                       ; $81CD61  AD 19 0C     Mx
    BNE L_81CD73                    ; $81CD64  D0 0D        Mx
    LDA $0BC1                       ; $81CD66  AD C1 0B     Mx
    CMP #$0001                      ; $81CD69  C9 01 00     Mx
    BNE L_81CD73                    ; $81CD6C  D0 05        Mx
    LDA $0C2B                       ; $81CD6E  AD 2B 0C     Mx
    BMI L_81CD78                    ; $81CD71  30 05        Mx
L_81CD73:
    LDA $00C0                       ; $81CD73  AD C0 00     Mx
    BNE L_81CD7E                    ; $81CD76  D0 06        Mx
L_81CD78:
    LDA #$0022                      ; $81CD78  A9 22 00     Mx
    JMP L_81CD94                    ; $81CD7B  4C 94 CD     Mx
L_81CD7E:
    LDA #$0024                      ; $81CD7E  A9 24 00     Mx
    JMP L_81CD94                    ; $81CD81  4C 94 CD     Mx
L_81CD84:
    LDX $075E                       ; $81CD84  AE 5E 07     Mx
    LDA $A7E377,X                   ; $81CD87  BF 77 E3 A7  Mx
    AND #$0007                      ; $81CD8B  29 07 00     Mx
    STA $0708                       ; $81CD8E  8D 08 07     Mx
L_81CD91:
    LDA #$0020                      ; $81CD91  A9 20 00     Mx
L_81CD94:
    CMP #$0022                      ; $81CD94  C9 22 00     Mx
    BNE L_81CDA8                    ; $81CD97  D0 0F        Mx
    LDX $0708                       ; $81CD99  AE 08 07     Mx
    CPX #$04                        ; $81CD9C  E0 04        Mx
    BNE L_81CDC0                    ; $81CD9E  D0 20        Mx
    LDX #$03                        ; $81CDA0  A2 03        Mx
    STX $0708                       ; $81CDA2  8E 08 07     Mx
    JMP L_81CDC0                    ; $81CDA5  4C C0 CD     Mx
L_81CDA8:
    CMP #$0024                      ; $81CDA8  C9 24 00     Mx
    BNE L_81CDC3                    ; $81CDAB  D0 16        Mx
    LDX $0708                       ; $81CDAD  AE 08 07     Mx
    LDA $A7E60B,X                   ; $81CDB0  BF 0B E6 A7  Mx
    AND #$0007                      ; $81CDB4  29 07 00     Mx
    STA $0708                       ; $81CDB7  8D 08 07     Mx
    LDA #$0024                      ; $81CDBA  A9 24 00     Mx
    JMP L_81CDC3                    ; $81CDBD  4C C3 CD     Mx
L_81CDC0:
    LDA #$0022                      ; $81CDC0  A9 22 00     Mx
L_81CDC3:
    STA $06F4                       ; $81CDC3  8D F4 06     Mx
    LDA #$FFFF                      ; $81CDC6  A9 FF FF     Mx
    STA $06FA                       ; $81CDC9  8D FA 06     Mx
    STZ $06FC                       ; $81CDCC  9C FC 06     Mx
    STZ $0742                       ; $81CDCF  9C 42 07     Mx
    STZ $06F8                       ; $81CDD2  9C F8 06     Mx
    LDA #$FFF8                      ; $81CDD5  A9 F8 FF     Mx
    STA $06FE                       ; $81CDD8  8D FE 06     Mx
    LDA $0C19                       ; $81CDDB  AD 19 0C     Mx
    BNE L_81CDE3                    ; $81CDDE  D0 03        Mx
    JMP L_81CF52                    ; $81CDE0  4C 52 CF     Mx
L_81CDE3:
    LDA #$FF0C                      ; $81CDE3  A9 0C FF     Mx
    STA $00D0                       ; $81CDE6  8D D0 00     Mx
    LDA $0726                       ; $81CDE9  AD 26 07     Mx
    CMP #$0374                      ; $81CDEC  C9 74 03     Mx
    BCS L_81CDF9                    ; $81CDEF  B0 08        Mx
    LDA #$036B                      ; $81CDF1  A9 6B 03     Mx
    STA $00D3                       ; $81CDF4  8D D3 00     Mx
    BRA L_81CDFF                    ; $81CDF7  80 06        Mx
L_81CDF9:
    LDA #$037D                      ; $81CDF9  A9 7D 03     Mx
    STA $00D3                       ; $81CDFC  8D D3 00     Mx
L_81CDFF:
    LDY #$08                        ; $81CDFF  A0 08        Mx
    LDA ($CC),Y                     ; $81CE01  B1 CC        Mx
    AND #$0004                      ; $81CE03  29 04 00     Mx
    BEQ L_81CE26                    ; $81CE06  F0 1E        Mx
    LDA $00D0                       ; $81CE08  AD D0 00     Mx
    STA $00E2                       ; $81CE0B  8D E2 00     Mx
    STZ $0B94                       ; $81CE0E  9C 94 0B     Mx
    LDA #$0054                      ; $81CE11  A9 54 00     Mx
    STA $00F6                       ; $81CE14  8D F6 00     Mx
    STZ $0BAD                       ; $81CE17  9C AD 0B     Mx
    LDA $00D3                       ; $81CE1A  AD D3 00     Mx
    STA $00E5                       ; $81CE1D  8D E5 00     Mx
    STZ $0B98                       ; $81CE20  9C 98 0B     Mx
    JMP L_81D0D0                    ; $81CE23  4C D0 D0     Mx
L_81CE26:
    LDA $06F4                       ; $81CE26  AD F4 06     Mx
    CMP #$0020                      ; $81CE29  C9 20 00     Mx
    BEQ L_81CE31                    ; $81CE2C  F0 03        Mx
    JMP L_81CECB                    ; $81CE2E  4C CB CE     Mx
L_81CE31:
    LDA $075C                       ; $81CE31  AD 5C 07     Mx
    CMP #$00CC                      ; $81CE34  C9 CC 00     Mx
    BCC L_81CE68                    ; $81CE37  90 2F        Mx
    STZ $072A                       ; $81CE39  9C 2A 07     Mx
    STZ $0732                       ; $81CE3C  9C 32 07     Mx
    STZ $0728                       ; $81CE3F  9C 28 07     Mx
    STZ $0730                       ; $81CE42  9C 30 07     Mx
    LDA $0786                       ; $81CE45  AD 86 07     Mx
    BEQ L_81CE59                    ; $81CE48  F0 0F        Mx
    LDA #$9000                      ; $81CE4A  A9 00 90     Mx
    STA $072C                       ; $81CE4D  8D 2C 07     Mx
    LDA #$0004                      ; $81CE50  A9 04 00     Mx
    STA $072E                       ; $81CE53  8D 2E 07     Mx
    JMP L_81D3E0                    ; $81CE56  4C E0 D3     Mx
L_81CE59:
    LDA #$3000                      ; $81CE59  A9 00 30     Mx
    STA $072C                       ; $81CE5C  8D 2C 07     Mx
    LDA #$0004                      ; $81CE5F  A9 04 00     Mx
    STA $072E                       ; $81CE62  8D 2E 07     Mx
    JMP L_81D3E0                    ; $81CE65  4C E0 D3     Mx
L_81CE68:
    LDA $072A                       ; $81CE68  AD 2A 07     Mx
    CMP #$8000                      ; $81CE6B  C9 00 80     Mx
    ROR                             ; $81CE6E  6A           Mx
    ROR $0728                       ; $81CE6F  6E 28 07     Mx
    CMP #$8000                      ; $81CE72  C9 00 80     Mx
    ROR                             ; $81CE75  6A           Mx
    ROR $0728                       ; $81CE76  6E 28 07     Mx
    LDX $0786                       ; $81CE79  AE 86 07     Mx
    BNE L_81CE85                    ; $81CE7C  D0 07        Mx
    CMP #$8000                      ; $81CE7E  C9 00 80     Mx
    ROR                             ; $81CE81  6A           Mx
    ROR $0728                       ; $81CE82  6E 28 07     Mx
L_81CE85:
    STA $072A                       ; $81CE85  8D 2A 07     Mx
    LDA $0732                       ; $81CE88  AD 32 07     Mx
    CMP #$8000                      ; $81CE8B  C9 00 80     Mx
    ROR                             ; $81CE8E  6A           Mx
    ROR $0730                       ; $81CE8F  6E 30 07     Mx
    CMP #$8000                      ; $81CE92  C9 00 80     Mx
    ROR                             ; $81CE95  6A           Mx
    ROR $0730                       ; $81CE96  6E 30 07     Mx
    LDX $0786                       ; $81CE99  AE 86 07     Mx
    BNE L_81CEA5                    ; $81CE9C  D0 07        Mx
    CMP #$8000                      ; $81CE9E  C9 00 80     Mx
    ROR                             ; $81CEA1  6A           Mx
    ROR $0730                       ; $81CEA2  6E 30 07     Mx
L_81CEA5:
    STA $0732                       ; $81CEA5  8D 32 07     Mx
    LDA $0786                       ; $81CEA8  AD 86 07     Mx
    BEQ L_81CEBC                    ; $81CEAB  F0 0F        Mx
    LDA #$9000                      ; $81CEAD  A9 00 90     Mx
    STA $072C                       ; $81CEB0  8D 2C 07     Mx
    LDA #$0004                      ; $81CEB3  A9 04 00     Mx
    STA $072E                       ; $81CEB6  8D 2E 07     Mx
    JMP L_81D3E0                    ; $81CEB9  4C E0 D3     Mx
L_81CEBC:
    LDA #$3000                      ; $81CEBC  A9 00 30     Mx
    STA $072C                       ; $81CEBF  8D 2C 07     Mx
    LDA #$0004                      ; $81CEC2  A9 04 00     Mx
    STA $072E                       ; $81CEC5  8D 2E 07     Mx
    JMP L_81D3E0                    ; $81CEC8  4C E0 D3     Mx
L_81CECB:
    LDY #$2E                        ; $81CECB  A0 2E        Mx
    LDA ($CC),Y                     ; $81CECD  B1 CC        Mx
    STA $00E2                       ; $81CECF  8D E2 00     Mx
    LDY #$36                        ; $81CED2  A0 36        Mx
    LDA ($CC),Y                     ; $81CED4  B1 CC        Mx
    STA $00E5                       ; $81CED6  8D E5 00     Mx
    LDA #$0068                      ; $81CED9  A9 68 00     Mx
    STA $00F6                       ; $81CEDC  8D F6 00     Mx
    STA $0BAD                       ; $81CEDF  8D AD 0B     Mx
    LDA $00D3                       ; $81CEE2  AD D3 00     Mx
    SEC                             ; $81CEE5  38           Mx
    SBC $00E5                       ; $81CEE6  ED E5 00     Mx
    STA $00D3                       ; $81CEE9  8D D3 00     Mx
    BPL L_81CEF5                    ; $81CEEC  10 07        Mx
    EOR #$FFFF                      ; $81CEEE  49 FF FF     Mx
    CLC                             ; $81CEF1  18           Mx
    ADC #$0001                      ; $81CEF2  69 01 00     Mx
L_81CEF5:
    STA $00D9                       ; $81CEF5  8D D9 00     Mx
    LDA $00D0                       ; $81CEF8  AD D0 00     Mx
    SEC                             ; $81CEFB  38           Mx
    SBC $00E2                       ; $81CEFC  ED E2 00     Mx
    STA $00D0                       ; $81CEFF  8D D0 00     Mx
    BPL L_81CF0B                    ; $81CF02  10 07        Mx
    EOR #$FFFF                      ; $81CF04  49 FF FF     Mx
    CLC                             ; $81CF07  18           Mx
    ADC #$0001                      ; $81CF08  69 01 00     Mx
L_81CF0B:
    STA $00D6                       ; $81CF0B  8D D6 00     Mx
    CMP $00D9                       ; $81CF0E  CD D9 00     Mx
    BCS L_81CF33                    ; $81CF11  B0 20        Mx
    LDA $00D9                       ; $81CF13  AD D9 00     Mx
    STA $00D6                       ; $81CF16  8D D6 00     Mx
    JMP L_81CF33                    ; $81CF19  4C 33 CF     Mx
L_81CF1C:
    LDA $00D0                       ; $81CF1C  AD D0 00     Mx
    CMP #$8000                      ; $81CF1F  C9 00 80     Mx
    ROR                             ; $81CF22  6A           Mx
    STA $00D0                       ; $81CF23  8D D0 00     Mx
    LDA $00D3                       ; $81CF26  AD D3 00     Mx
    CMP #$8000                      ; $81CF29  C9 00 80     Mx
    ROR                             ; $81CF2C  6A           Mx
    STA $00D3                       ; $81CF2D  8D D3 00     Mx
    LSR $00D6                       ; $81CF30  4E D6 00     Mx
L_81CF33:
    LDA $00D6                       ; $81CF33  AD D6 00     Mx
    CMP #$0017                      ; $81CF36  C9 17 00     Mx
    BCS L_81CF1C                    ; $81CF39  B0 E1        Mx
    LDA $00E2                       ; $81CF3B  AD E2 00     Mx
    CLC                             ; $81CF3E  18           Mx
    ADC $00D0                       ; $81CF3F  6D D0 00     Mx
    STA $00E2                       ; $81CF42  8D E2 00     Mx
    LDA $00E5                       ; $81CF45  AD E5 00     Mx
    CLC                             ; $81CF48  18           Mx
    ADC $00D3                       ; $81CF49  6D D3 00     Mx
    STA $00E5                       ; $81CF4C  8D E5 00     Mx
    JMP L_81D07F                    ; $81CF4F  4C 7F D0     Mx
L_81CF52:
    LDA $0BD9                       ; $81CF52  AD D9 0B     Mx
    STA $00E2                       ; $81CF55  8D E2 00     Mx
    LDA $0BD7                       ; $81CF58  AD D7 0B     Mx
    STA $0B94                       ; $81CF5B  8D 94 0B     Mx
    LDA $0BE1                       ; $81CF5E  AD E1 0B     Mx
    STA $00E5                       ; $81CF61  8D E5 00     Mx
    LDA $0BDF                       ; $81CF64  AD DF 0B     Mx
    STA $0B98                       ; $81CF67  8D 98 0B     Mx
    LDA $0BDD                       ; $81CF6A  AD DD 0B     Mx
    STA $00F6                       ; $81CF6D  8D F6 00     Mx
    LDA $0BDB                       ; $81CF70  AD DB 0B     Mx
    STA $0BAD                       ; $81CF73  8D AD 0B     Mx
    LDA $0BE5                       ; $81CF76  AD E5 0B     Mx
    STA $00D0                       ; $81CF79  8D D0 00     Mx
    LDA $0BE3                       ; $81CF7C  AD E3 0B     Mx
    STA $0B7C                       ; $81CF7F  8D 7C 0B     Mx
    LDA $0BED                       ; $81CF82  AD ED 0B     Mx
    STA $00D3                       ; $81CF85  8D D3 00     Mx
    LDA $0BEB                       ; $81CF88  AD EB 0B     Mx
    STA $0B80                       ; $81CF8B  8D 80 0B     Mx
    LDA $0BE9                       ; $81CF8E  AD E9 0B     Mx
    STA $00D6                       ; $81CF91  8D D6 00     Mx
    LDA $0BE7                       ; $81CF94  AD E7 0B     Mx
    STA $0B84                       ; $81CF97  8D 84 0B     Mx
    LDA $0B7C                       ; $81CF9A  AD 7C 0B     Mx
    ASL                             ; $81CF9D  0A           Mx
    STA $00A4                       ; $81CF9E  8D A4 00     Mx
    ROL $00D0                       ; $81CFA1  2E D0 00     Mx
    LDA $00D0                       ; $81CFA4  AD D0 00     Mx
    STA $00A6                       ; $81CFA7  8D A6 00     Mx
    LDA $00A4                       ; $81CFAA  AD A4 00     Mx
    ASL                             ; $81CFAD  0A           Mx
    ROL $00D0                       ; $81CFAE  2E D0 00     Mx
    ASL                             ; $81CFB1  0A           Mx
    ROL $00D0                       ; $81CFB2  2E D0 00     Mx
    ASL                             ; $81CFB5  0A           Mx
    ROL $00D0                       ; $81CFB6  2E D0 00     Mx
    ASL                             ; $81CFB9  0A           Mx
    ROL $00D0                       ; $81CFBA  2E D0 00     Mx
    SEC                             ; $81CFBD  38           Mx
    SBC $00A4                       ; $81CFBE  ED A4 00     Mx
    STA $0B7C                       ; $81CFC1  8D 7C 0B     Mx
    LDA $00D0                       ; $81CFC4  AD D0 00     Mx
    SBC $00A6                       ; $81CFC7  ED A6 00     Mx
    STA $00D0                       ; $81CFCA  8D D0 00     Mx
    LDA $0B94                       ; $81CFCD  AD 94 0B     Mx
    CLC                             ; $81CFD0  18           Mx
    ADC $0B7C                       ; $81CFD1  6D 7C 0B     Mx
    STA $0B94                       ; $81CFD4  8D 94 0B     Mx
    LDA $00E2                       ; $81CFD7  AD E2 00     Mx
    ADC $00D0                       ; $81CFDA  6D D0 00     Mx
    STA $00E2                       ; $81CFDD  8D E2 00     Mx
    LDA $0B80                       ; $81CFE0  AD 80 0B     Mx
    ASL                             ; $81CFE3  0A           Mx
    STA $00A4                       ; $81CFE4  8D A4 00     Mx
    ROL $00D3                       ; $81CFE7  2E D3 00     Mx
    LDA $00D3                       ; $81CFEA  AD D3 00     Mx
    STA $00A6                       ; $81CFED  8D A6 00     Mx
    LDA $00A4                       ; $81CFF0  AD A4 00     Mx
    ASL                             ; $81CFF3  0A           Mx
    ROL $00D3                       ; $81CFF4  2E D3 00     Mx
    ASL                             ; $81CFF7  0A           Mx
    ROL $00D3                       ; $81CFF8  2E D3 00     Mx
    ASL                             ; $81CFFB  0A           Mx
    ROL $00D3                       ; $81CFFC  2E D3 00     Mx
    ASL                             ; $81CFFF  0A           Mx
    ROL $00D3                       ; $81D000  2E D3 00     Mx
    SEC                             ; $81D003  38           Mx
    SBC $00A4                       ; $81D004  ED A4 00     Mx
    STA $0B80                       ; $81D007  8D 80 0B     Mx
    LDA $00D3                       ; $81D00A  AD D3 00     Mx
    SBC $00A6                       ; $81D00D  ED A6 00     Mx
    STA $00D3                       ; $81D010  8D D3 00     Mx
    LDA $0B98                       ; $81D013  AD 98 0B     Mx
    CLC                             ; $81D016  18           Mx
    ADC $0B80                       ; $81D017  6D 80 0B     Mx
    STA $0B98                       ; $81D01A  8D 98 0B     Mx
    LDA $00E5                       ; $81D01D  AD E5 00     Mx
    ADC $00D3                       ; $81D020  6D D3 00     Mx
    STA $00E5                       ; $81D023  8D E5 00     Mx
    LDA $0B84                       ; $81D026  AD 84 0B     Mx
    ASL                             ; $81D029  0A           Mx
    STA $00A4                       ; $81D02A  8D A4 00     Mx
    ROL $00D6                       ; $81D02D  2E D6 00     Mx
    LDA $00D6                       ; $81D030  AD D6 00     Mx
    STA $00A6                       ; $81D033  8D A6 00     Mx
    LDA $00A4                       ; $81D036  AD A4 00     Mx
    ASL                             ; $81D039  0A           Mx
    ROL $00D6                       ; $81D03A  2E D6 00     Mx
    ASL                             ; $81D03D  0A           Mx
    ROL $00D6                       ; $81D03E  2E D6 00     Mx
    ASL                             ; $81D041  0A           Mx
    ROL $00D6                       ; $81D042  2E D6 00     Mx
    ASL                             ; $81D045  0A           Mx
    ROL $00D6                       ; $81D046  2E D6 00     Mx
    SEC                             ; $81D049  38           Mx
    SBC $00A4                       ; $81D04A  ED A4 00     Mx
    STA $0B84                       ; $81D04D  8D 84 0B     Mx
    LDA $00D6                       ; $81D050  AD D6 00     Mx
    SBC $00A6                       ; $81D053  ED A6 00     Mx
    STA $00D6                       ; $81D056  8D D6 00     Mx
    LDA $0BAD                       ; $81D059  AD AD 0B     Mx
    SEC                             ; $81D05C  38           Mx
    SBC $0B84                       ; $81D05D  ED 84 0B     Mx
    STA $0BAD                       ; $81D060  8D AD 0B     Mx
    LDA $00F6                       ; $81D063  AD F6 00     Mx
    SBC $00D6                       ; $81D066  ED D6 00     Mx
    STA $00F6                       ; $81D069  8D F6 00     Mx
    LDA $0BAD                       ; $81D06C  AD AD 0B     Mx
    SEC                             ; $81D06F  38           Mx
    SBC #$DF00                      ; $81D070  E9 00 DF     Mx
    STA $0BAD                       ; $81D073  8D AD 0B     Mx
    LDA $00F6                       ; $81D076  AD F6 00     Mx
    SBC #$003E                      ; $81D079  E9 3E 00     Mx
    STA $00F6                       ; $81D07C  8D F6 00     Mx
L_81D07F:
    LDA $00D0                       ; $81D07F  AD D0 00     Mx
    BMI L_81D08E                    ; $81D082  30 0A        Mx
    CMP #$00EE                      ; $81D084  C9 EE 00     Mx
    BCC L_81D0D0                    ; $81D087  90 47        Mx
    LDA #$00F6                      ; $81D089  A9 F6 00     Mx
    BRA L_81D096                    ; $81D08C  80 08        Mx
L_81D08E:
    CMP #$FF1A                      ; $81D08E  C9 1A FF     Mx
    BCS L_81D0D0                    ; $81D091  B0 3D        Mx
    LDA #$FF12                      ; $81D093  A9 12 FF     Mx
L_81D096:
    STA $00BA                       ; $81D096  8D BA 00     Mx
    LDA $00D3                       ; $81D099  AD D3 00     Mx
    SEC                             ; $81D09C  38           Mx
    SBC #$0374                      ; $81D09D  E9 74 03     Mx
    BPL L_81D0A9                    ; $81D0A0  10 07        Mx
    EOR #$FFFF                      ; $81D0A2  49 FF FF     Mx
    CLC                             ; $81D0A5  18           Mx
    ADC #$0001                      ; $81D0A6  69 01 00     Mx
L_81D0A9:
    CMP #$000F                      ; $81D0A9  C9 0F 00     Mx
    BCS L_81D0D0                    ; $81D0AC  B0 22        Mx
    LDA $00D3                       ; $81D0AE  AD D3 00     Mx
    CMP #$0374                      ; $81D0B1  C9 74 03     Mx
    BCC L_81D0C4                    ; $81D0B4  90 0E        Mx
    LDA #$0383                      ; $81D0B6  A9 83 03     Mx
    STA $00D3                       ; $81D0B9  8D D3 00     Mx
    LDA $00BA                       ; $81D0BC  AD BA 00     Mx
    STA $00D0                       ; $81D0BF  8D D0 00     Mx
    BRA L_81D0D0                    ; $81D0C2  80 0C        Mx
L_81D0C4:
    LDA #$0365                      ; $81D0C4  A9 65 03     Mx
    STA $00D3                       ; $81D0C7  8D D3 00     Mx
    LDA $00BA                       ; $81D0CA  AD BA 00     Mx
    STA $00D0                       ; $81D0CD  8D D0 00     Mx
L_81D0D0:
    LDA #$001E                      ; $81D0D0  A9 1E 00     Mx
    STA $00DC                       ; $81D0D3  8D DC 00     Mx
    STZ $00C2                       ; $81D0D6  9C C2 00     Mx
    STZ $00C4                       ; $81D0D9  9C C4 00     Mx
    STZ $00C6                       ; $81D0DC  9C C6 00     Mx
    STZ $00C8                       ; $81D0DF  9C C8 00     Mx
    LDA $0C25                       ; $81D0E2  AD 25 0C     Mx
    CMP #$06F0                      ; $81D0E5  C9 F0 06     Mx
    BNE L_81D0ED                    ; $81D0E8  D0 03        Mx
    JMP L_81D2AE                    ; $81D0EA  4C AE D2     Mx
L_81D0ED:
    LDA $00E2                       ; $81D0ED  AD E2 00     Mx
    STA $00D9                       ; $81D0F0  8D D9 00     Mx
    LDA $00E5                       ; $81D0F3  AD E5 00     Mx
    STA $00DF                       ; $81D0F6  8D DF 00     Mx
    LDA $00D9                       ; $81D0F9  AD D9 00     Mx
    SEC                             ; $81D0FC  38           Mx
    SBC $071E                       ; $81D0FD  ED 1E 07     Mx
    STA $00D9                       ; $81D100  8D D9 00     Mx
    LDA $00DF                       ; $81D103  AD DF 00     Mx
    SEC                             ; $81D106  38           Mx
    SBC $0726                       ; $81D107  ED 26 07     Mx
    STA $00DF                       ; $81D10A  8D DF 00     Mx
    LDA #$001E                      ; $81D10D  A9 1E 00     Mx
    LDX $06F4                       ; $81D110  AE F4 06     Mx
    CPX #$22                        ; $81D113  E0 22        Mx
    BNE L_81D11B                    ; $81D115  D0 04        Mx
    CLC                             ; $81D117  18           Mx
    ADC #$0014                      ; $81D118  69 14 00     Mx
L_81D11B:
    LDX $00DA                       ; $81D11B  AE DA 00     Mx
    BMI L_81D128                    ; $81D11E  30 08        Mx
    CMP $00D9                       ; $81D120  CD D9 00     Mx
    BCS L_81D128                    ; $81D123  B0 03        Mx
    STA $00D9                       ; $81D125  8D D9 00     Mx
L_81D128:
    LDX $00E0                       ; $81D128  AE E0 00     Mx
    BMI L_81D135                    ; $81D12B  30 08        Mx
    CMP $00DF                       ; $81D12D  CD DF 00     Mx
    BCS L_81D135                    ; $81D130  B0 03        Mx
    STA $00DF                       ; $81D132  8D DF 00     Mx
L_81D135:
    EOR #$FFFF                      ; $81D135  49 FF FF     Mx
    CLC                             ; $81D138  18           Mx
    ADC #$0001                      ; $81D139  69 01 00     Mx
    LDX $00DA                       ; $81D13C  AE DA 00     Mx
    BPL L_81D149                    ; $81D13F  10 08        Mx
    CMP $00D9                       ; $81D141  CD D9 00     Mx
    BCC L_81D149                    ; $81D144  90 03        Mx
    STA $00D9                       ; $81D146  8D D9 00     Mx
L_81D149:
    LDX $00E0                       ; $81D149  AE E0 00     Mx
    BPL L_81D156                    ; $81D14C  10 08        Mx
    CMP $00DF                       ; $81D14E  CD DF 00     Mx
    BCC L_81D156                    ; $81D151  90 03        Mx
    STA $00DF                       ; $81D153  8D DF 00     Mx
L_81D156:
    LDA $00D9                       ; $81D156  AD D9 00     Mx
    STA $00E5                       ; $81D159  8D E5 00     Mx
    BPL L_81D168                    ; $81D15C  10 0A        Mx
    EOR #$FFFF                      ; $81D15E  49 FF FF     Mx
    CLC                             ; $81D161  18           Mx
    ADC #$0001                      ; $81D162  69 01 00     Mx
    STA $00D9                       ; $81D165  8D D9 00     Mx
L_81D168:
    LDX $00DC                       ; $81D168  AE DC 00     Mx
    STX $00EE                       ; $81D16B  8E EE 00     Mx
    LDA #$0000                      ; $81D16E  A9 00 00     Mx
    STA $00EA                       ; $81D171  8D EA 00     Mx
    LDA $00D9                       ; $81D174  AD D9 00     Mx
    STA $4204                       ; $81D177  8D 04 42     Mx
    LDX $00EE                       ; $81D17A  AE EE 00     Mx
    STX $4206                       ; $81D17D  8E 06 42     Mx
    NOP                             ; $81D180  EA           Mx
    NOP                             ; $81D181  EA           Mx
    NOP                             ; $81D182  EA           Mx
    NOP                             ; $81D183  EA           Mx
    NOP                             ; $81D184  EA           Mx
    NOP                             ; $81D185  EA           Mx
    NOP                             ; $81D186  EA           Mx
    STZ $00F0                       ; $81D187  9C F0 00     Mx
    LDA $4214                       ; $81D18A  AD 14 42     Mx
    STA $00F2                       ; $81D18D  8D F2 00     Mx
    LDX $4216                       ; $81D190  AE 16 42     Mx
    STX $00EC                       ; $81D193  8E EC 00     Mx
    LDA $00EB                       ; $81D196  AD EB 00     Mx
    STA $4204                       ; $81D199  8D 04 42     Mx
    LDX $00EE                       ; $81D19C  AE EE 00     Mx
    STX $4206                       ; $81D19F  8E 06 42     Mx
    NOP                             ; $81D1A2  EA           Mx
    NOP                             ; $81D1A3  EA           Mx
    NOP                             ; $81D1A4  EA           Mx
    NOP                             ; $81D1A5  EA           Mx
    NOP                             ; $81D1A6  EA           Mx
    NOP                             ; $81D1A7  EA           Mx
    NOP                             ; $81D1A8  EA           Mx
    STZ $00F0                       ; $81D1A9  9C F0 00     Mx
    LDA $4214                       ; $81D1AC  AD 14 42     Mx
    ORA $00F1                       ; $81D1AF  0D F1 00     Mx
    STA $00F1                       ; $81D1B2  8D F1 00     Mx
    LDX $4216                       ; $81D1B5  AE 16 42     Mx
    STX $00EB                       ; $81D1B8  8E EB 00     Mx
    LDA $00EA                       ; $81D1BB  AD EA 00     Mx
    STA $4204                       ; $81D1BE  8D 04 42     Mx
    LDX $00EE                       ; $81D1C1  AE EE 00     Mx
    STX $4206                       ; $81D1C4  8E 06 42     Mx
    NOP                             ; $81D1C7  EA           Mx
    NOP                             ; $81D1C8  EA           Mx
    NOP                             ; $81D1C9  EA           Mx
    NOP                             ; $81D1CA  EA           Mx
    NOP                             ; $81D1CB  EA           Mx
    NOP                             ; $81D1CC  EA           Mx
    NOP                             ; $81D1CD  EA           Mx
    NOP                             ; $81D1CE  EA           Mx
    LDA $4214                       ; $81D1CF  AD 14 42     Mx
    ORA $00F0                       ; $81D1D2  0D F0 00     Mx
    STA $00F0                       ; $81D1D5  8D F0 00     Mx
    LDA $00F0                       ; $81D1D8  AD F0 00     Mx
    STA $00C2                       ; $81D1DB  8D C2 00     Mx
    LDA $00F2                       ; $81D1DE  AD F2 00     Mx
    STA $00C4                       ; $81D1E1  8D C4 00     Mx
    LDA $00E5                       ; $81D1E4  AD E5 00     Mx
    BPL L_81D202                    ; $81D1E7  10 19        Mx
    LDA $00C2                       ; $81D1E9  AD C2 00     Mx
    EOR #$FFFF                      ; $81D1EC  49 FF FF     Mx
    CLC                             ; $81D1EF  18           Mx
    ADC #$0001                      ; $81D1F0  69 01 00     Mx
    STA $00C2                       ; $81D1F3  8D C2 00     Mx
    LDA $00C4                       ; $81D1F6  AD C4 00     Mx
    EOR #$FFFF                      ; $81D1F9  49 FF FF     Mx
    ADC #$0000                      ; $81D1FC  69 00 00     Mx
    STA $00C4                       ; $81D1FF  8D C4 00     Mx
L_81D202:
    LDA $00DF                       ; $81D202  AD DF 00     Mx
    STA $00E5                       ; $81D205  8D E5 00     Mx
    BPL L_81D214                    ; $81D208  10 0A        Mx
    EOR #$FFFF                      ; $81D20A  49 FF FF     Mx
    CLC                             ; $81D20D  18           Mx
    ADC #$0001                      ; $81D20E  69 01 00     Mx
    STA $00DF                       ; $81D211  8D DF 00     Mx
L_81D214:
    LDX $00DC                       ; $81D214  AE DC 00     Mx
    STX $00EE                       ; $81D217  8E EE 00     Mx
    LDA #$0000                      ; $81D21A  A9 00 00     Mx
    STA $00EA                       ; $81D21D  8D EA 00     Mx
    LDA $00DF                       ; $81D220  AD DF 00     Mx
    STA $4204                       ; $81D223  8D 04 42     Mx
    LDX $00EE                       ; $81D226  AE EE 00     Mx
    STX $4206                       ; $81D229  8E 06 42     Mx
    NOP                             ; $81D22C  EA           Mx
    NOP                             ; $81D22D  EA           Mx
    NOP                             ; $81D22E  EA           Mx
    NOP                             ; $81D22F  EA           Mx
    NOP                             ; $81D230  EA           Mx
    NOP                             ; $81D231  EA           Mx
    NOP                             ; $81D232  EA           Mx
    STZ $00F0                       ; $81D233  9C F0 00     Mx
    LDA $4214                       ; $81D236  AD 14 42     Mx
    STA $00F2                       ; $81D239  8D F2 00     Mx
    LDX $4216                       ; $81D23C  AE 16 42     Mx
    STX $00EC                       ; $81D23F  8E EC 00     Mx
    LDA $00EB                       ; $81D242  AD EB 00     Mx
    STA $4204                       ; $81D245  8D 04 42     Mx
    LDX $00EE                       ; $81D248  AE EE 00     Mx
    STX $4206                       ; $81D24B  8E 06 42     Mx
    NOP                             ; $81D24E  EA           Mx
    NOP                             ; $81D24F  EA           Mx
    NOP                             ; $81D250  EA           Mx
    NOP                             ; $81D251  EA           Mx
    NOP                             ; $81D252  EA           Mx
    NOP                             ; $81D253  EA           Mx
    NOP                             ; $81D254  EA           Mx
    STZ $00F0                       ; $81D255  9C F0 00     Mx
    LDA $4214                       ; $81D258  AD 14 42     Mx
    ORA $00F1                       ; $81D25B  0D F1 00     Mx
    STA $00F1                       ; $81D25E  8D F1 00     Mx
    LDX $4216                       ; $81D261  AE 16 42     Mx
    STX $00EB                       ; $81D264  8E EB 00     Mx
    LDA $00EA                       ; $81D267  AD EA 00     Mx
    STA $4204                       ; $81D26A  8D 04 42     Mx
    LDX $00EE                       ; $81D26D  AE EE 00     Mx
    STX $4206                       ; $81D270  8E 06 42     Mx
    NOP                             ; $81D273  EA           Mx
    NOP                             ; $81D274  EA           Mx
    NOP                             ; $81D275  EA           Mx
    NOP                             ; $81D276  EA           Mx
    NOP                             ; $81D277  EA           Mx
    NOP                             ; $81D278  EA           Mx
    NOP                             ; $81D279  EA           Mx
    NOP                             ; $81D27A  EA           Mx
    LDA $4214                       ; $81D27B  AD 14 42     Mx
    ORA $00F0                       ; $81D27E  0D F0 00     Mx
    STA $00F0                       ; $81D281  8D F0 00     Mx
    LDA $00F0                       ; $81D284  AD F0 00     Mx
    STA $00C6                       ; $81D287  8D C6 00     Mx
    LDA $00F2                       ; $81D28A  AD F2 00     Mx
    STA $00C8                       ; $81D28D  8D C8 00     Mx
    LDA $00E5                       ; $81D290  AD E5 00     Mx
    BPL L_81D2AE                    ; $81D293  10 19        Mx
    LDA $00C6                       ; $81D295  AD C6 00     Mx
    EOR #$FFFF                      ; $81D298  49 FF FF     Mx
    CLC                             ; $81D29B  18           Mx
    ADC #$0001                      ; $81D29C  69 01 00     Mx
    STA $00C6                       ; $81D29F  8D C6 00     Mx
    LDA $00C8                       ; $81D2A2  AD C8 00     Mx
    EOR #$FFFF                      ; $81D2A5  49 FF FF     Mx
    ADC #$0000                      ; $81D2A8  69 00 00     Mx
    STA $00C8                       ; $81D2AB  8D C8 00     Mx
L_81D2AE:
    LDA $00C2                       ; $81D2AE  AD C2 00     Mx
    STA $0728                       ; $81D2B1  8D 28 07     Mx
    LDA $00C4                       ; $81D2B4  AD C4 00     Mx
    STA $072A                       ; $81D2B7  8D 2A 07     Mx
    LDA $00C6                       ; $81D2BA  AD C6 00     Mx
    STA $0730                       ; $81D2BD  8D 30 07     Mx
    LDA $00C8                       ; $81D2C0  AD C8 00     Mx
    STA $0732                       ; $81D2C3  8D 32 07     Mx
    LDA #$0080                      ; $81D2C6  A9 80 00     Mx
    STA $00D3                       ; $81D2C9  8D D3 00     Mx
    SEP #$20                        ; $81D2CC  E2 20        Mx
    LDA $00DC                       ; $81D2CE  AD DC 00     mx
    STA $4202                       ; $81D2D1  8D 02 42     mx
    LDA $00D3                       ; $81D2D4  AD D3 00     mx
    STA $4203                       ; $81D2D7  8D 03 42     mx
    NOP                             ; $81D2DA  EA           mx
    NOP                             ; $81D2DB  EA           mx
    NOP                             ; $81D2DC  EA           mx
    REP #$20                        ; $81D2DD  C2 20        mx
    LDA $4216                       ; $81D2DF  AD 16 42     Mx
    STA $00D3                       ; $81D2E2  8D D3 00     Mx
    STA $00A8                       ; $81D2E5  8D A8 00     Mx
    LDA #$0012                      ; $81D2E8  A9 12 00     Mx
    STA $00D3                       ; $81D2EB  8D D3 00     Mx
    SEP #$20                        ; $81D2EE  E2 20        Mx
    LDA $00DC                       ; $81D2F0  AD DC 00     mx
    STA $4202                       ; $81D2F3  8D 02 42     mx
    LDA $00D3                       ; $81D2F6  AD D3 00     mx
    STA $4203                       ; $81D2F9  8D 03 42     mx
    NOP                             ; $81D2FC  EA           mx
    NOP                             ; $81D2FD  EA           mx
    NOP                             ; $81D2FE  EA           mx
    REP #$20                        ; $81D2FF  C2 20        mx
    LDA $4216                       ; $81D301  AD 16 42     Mx
    STA $00D3                       ; $81D304  8D D3 00     Mx
    STZ $0B82                       ; $81D307  9C 82 0B     Mx
    STZ $0B80                       ; $81D30A  9C 80 0B     Mx
    STA $0B81                       ; $81D30D  8D 81 0B     Mx
    LDA $0B80                       ; $81D310  AD 80 0B     Mx
    CLC                             ; $81D313  18           Mx
    ADC $00A8                       ; $81D314  6D A8 00     Mx
    STA $0B80                       ; $81D317  8D 80 0B     Mx
    LDA $0B82                       ; $81D31A  AD 82 0B     Mx
    ADC #$0000                      ; $81D31D  69 00 00     Mx
    STA $0B82                       ; $81D320  8D 82 0B     Mx
    LDA $00F6                       ; $81D323  AD F6 00     Mx
    SBC #$002E                      ; $81D326  E9 2E 00     Mx
    STA $00F6                       ; $81D329  8D F6 00     Mx
    LDA $0720                       ; $81D32C  AD 20 07     Mx
    SEC                             ; $81D32F  38           Mx
    SBC $0BAD                       ; $81D330  ED AD 0B     Mx
    STA $00C2                       ; $81D333  8D C2 00     Mx
    LDA $0722                       ; $81D336  AD 22 07     Mx
    SBC $00F6                       ; $81D339  ED F6 00     Mx
    STA $00C4                       ; $81D33C  8D C4 00     Mx
    STA $00E5                       ; $81D33F  8D E5 00     Mx
    BPL L_81D35D                    ; $81D342  10 19        Mx
    LDA $00C2                       ; $81D344  AD C2 00     Mx
    EOR #$FFFF                      ; $81D347  49 FF FF     Mx
    CLC                             ; $81D34A  18           Mx
    ADC #$0001                      ; $81D34B  69 01 00     Mx
    STA $00C2                       ; $81D34E  8D C2 00     Mx
    LDA $00C4                       ; $81D351  AD C4 00     Mx
    EOR #$FFFF                      ; $81D354  49 FF FF     Mx
    ADC #$0000                      ; $81D357  69 00 00     Mx
    STA $00C4                       ; $81D35A  8D C4 00     Mx
L_81D35D:
    LDA $00C3                       ; $81D35D  AD C3 00     Mx
    STA $4204                       ; $81D360  8D 04 42     Mx
    LDX $00DC                       ; $81D363  AE DC 00     Mx
    STX $4206                       ; $81D366  8E 06 42     Mx
    NOP                             ; $81D369  EA           Mx
    NOP                             ; $81D36A  EA           Mx
    NOP                             ; $81D36B  EA           Mx
    NOP                             ; $81D36C  EA           Mx
    STZ $00EA                       ; $81D36D  9C EA 00     Mx
    STZ $00EC                       ; $81D370  9C EC 00     Mx
    LDA $00E5                       ; $81D373  AD E5 00     Mx
    BPL L_81D385                    ; $81D376  10 0D        Mx
    LDA $4214                       ; $81D378  AD 14 42     Mx
    EOR #$FFFF                      ; $81D37B  49 FF FF     Mx
    CLC                             ; $81D37E  18           Mx
    ADC #$0001                      ; $81D37F  69 01 00     Mx
    JMP L_81D388                    ; $81D382  4C 88 D3     Mx
L_81D385:
    LDA $4214                       ; $81D385  AD 14 42     Mx
L_81D388:
    STA $00EB                       ; $81D388  8D EB 00     Mx
    LDA $0B80                       ; $81D38B  AD 80 0B     Mx
    CLC                             ; $81D38E  18           Mx
    ADC $00EA                       ; $81D38F  6D EA 00     Mx
    STA $0B80                       ; $81D392  8D 80 0B     Mx
    LDA $0B82                       ; $81D395  AD 82 0B     Mx
    ADC $00EC                       ; $81D398  6D EC 00     Mx
    STA $0B82                       ; $81D39B  8D 82 0B     Mx
    LDA $0B80                       ; $81D39E  AD 80 0B     Mx
    SEC                             ; $81D3A1  38           Mx
    SBC #$C000                      ; $81D3A2  E9 00 C0     Mx
    LDA $0B82                       ; $81D3A5  AD 82 0B     Mx
    SBC #$0003                      ; $81D3A8  E9 03 00     Mx
    BPL L_81D3B9                    ; $81D3AB  10 0C        Mx
    LDA #$0003                      ; $81D3AD  A9 03 00     Mx
    STA $0B82                       ; $81D3B0  8D 82 0B     Mx
    LDA #$C000                      ; $81D3B3  A9 00 C0     Mx
    STA $0B80                       ; $81D3B6  8D 80 0B     Mx
L_81D3B9:
    LDA $0B80                       ; $81D3B9  AD 80 0B     Mx
    SEC                             ; $81D3BC  38           Mx
    SBC #$A200                      ; $81D3BD  E9 00 A2     Mx
    LDA $0B82                       ; $81D3C0  AD 82 0B     Mx
    SBC #$0004                      ; $81D3C3  E9 04 00     Mx
    BMI L_81D3D4                    ; $81D3C6  30 0C        Mx
    LDA #$0004                      ; $81D3C8  A9 04 00     Mx
    STA $0B82                       ; $81D3CB  8D 82 0B     Mx
    LDA #$A200                      ; $81D3CE  A9 00 A2     Mx
    STA $0B80                       ; $81D3D1  8D 80 0B     Mx
L_81D3D4:
    LDA $0B80                       ; $81D3D4  AD 80 0B     Mx
    STA $072C                       ; $81D3D7  8D 2C 07     Mx
    LDA $0B82                       ; $81D3DA  AD 82 0B     Mx
    STA $072E                       ; $81D3DD  8D 2E 07     Mx
L_81D3E0:
    LDA $06F4                       ; $81D3E0  AD F4 06     Mx
    CMP #$0024                      ; $81D3E3  C9 24 00     Mx
    BNE L_81D41E                    ; $81D3E6  D0 36        Mx
    LDA $072E                       ; $81D3E8  AD 2E 07     Mx
    STA $0734                       ; $81D3EB  8D 34 07     Mx
    LDA $072C                       ; $81D3EE  AD 2C 07     Mx
    STA $0736                       ; $81D3F1  8D 36 07     Mx
    LDA $072A                       ; $81D3F4  AD 2A 07     Mx
    STA $0738                       ; $81D3F7  8D 38 07     Mx
    LDA $0728                       ; $81D3FA  AD 28 07     Mx
    STA $073A                       ; $81D3FD  8D 3A 07     Mx
    LDA $0732                       ; $81D400  AD 32 07     Mx
    STA $073C                       ; $81D403  8D 3C 07     Mx
    LDA $0730                       ; $81D406  AD 30 07     Mx
    STA $073E                       ; $81D409  8D 3E 07     Mx
    STZ $072E                       ; $81D40C  9C 2E 07     Mx
    STZ $072C                       ; $81D40F  9C 2C 07     Mx
    STZ $072A                       ; $81D412  9C 2A 07     Mx
    STZ $0728                       ; $81D415  9C 28 07     Mx
    STZ $0732                       ; $81D418  9C 32 07     Mx
    STZ $0730                       ; $81D41B  9C 30 07     Mx
L_81D41E:
    STZ $0780                       ; $81D41E  9C 80 07     Mx
    LDA #$FFFF                      ; $81D421  A9 FF FF     Mx
    STA $076E                       ; $81D424  8D 6E 07     Mx
    RTS                             ; $81D427  60           Mx
L_81D428:
    LDX $06F1                       ; $81D428  AE F1 06     Mx
    BEQ L_81D435                    ; $81D42B  F0 08        Mx
    LDA $06F4                       ; $81D42D  AD F4 06     Mx
    CMP #$0004                      ; $81D430  C9 04 00     Mx
    BEQ L_81D4A7                    ; $81D433  F0 72        Mx
L_81D435:
    LDA $0722                       ; $81D435  AD 22 07     Mx
    BNE L_81D4A7                    ; $81D438  D0 6D        Mx
    LDA $0702                       ; $81D43A  AD 02 07     Mx
    BNE L_81D4A7                    ; $81D43D  D0 68        Mx
    LDA $08C4                       ; $81D43F  AD C4 08     Mx
    CMP #$0030                      ; $81D442  C9 30 00     Mx
    BEQ L_81D45C                    ; $81D445  F0 15        Mx
    LDA $0768                       ; $81D447  AD 68 07     Mx
    CMP #$0030                      ; $81D44A  C9 30 00     Mx
    BCS L_81D45C                    ; $81D44D  B0 0D        Mx
    CMP #$0018                      ; $81D44F  C9 18 00     Mx
    BCC L_81D47C                    ; $81D452  90 28        Mx
    LDA $08C4                       ; $81D454  AD C4 08     Mx
    CMP #$002C                      ; $81D457  C9 2C 00     Mx
    BEQ L_81D47C                    ; $81D45A  F0 20        Mx
L_81D45C:
    LDA $09AC                       ; $81D45C  AD AC 09     Mx
    CMP #$0030                      ; $81D45F  C9 30 00     Mx
    BEQ L_81D479                    ; $81D462  F0 15        Mx
    LDA $076A                       ; $81D464  AD 6A 07     Mx
    CMP #$0030                      ; $81D467  C9 30 00     Mx
    BCS L_81D479                    ; $81D46A  B0 0D        Mx
    CMP #$0018                      ; $81D46C  C9 18 00     Mx
    BCC L_81D47C                    ; $81D46F  90 0B        Mx
    LDA $09AC                       ; $81D471  AD AC 09     Mx
    CMP #$002C                      ; $81D474  C9 2C 00     Mx
    BEQ L_81D47C                    ; $81D477  F0 03        Mx
L_81D479:
    JMP L_81D4A7                    ; $81D479  4C A7 D4     Mx
L_81D47C:
    LDA $0CCB                       ; $81D47C  AD CB 0C     Mx
    CMP #$0003                      ; $81D47F  C9 03 00     Mx
    BCC L_81D4A7                    ; $81D482  90 23        Mx
    LDA $0CCB                       ; $81D484  AD CB 0C     Mx
    CMP #$00A9                      ; $81D487  C9 A9 00     Mx
    BCS L_81D4A7                    ; $81D48A  B0 1B        Mx
    LDA #$002E                      ; $81D48C  A9 2E 00     Mx
    STA $06F4                       ; $81D48F  8D F4 06     Mx
    LDA #$FFFF                      ; $81D492  A9 FF FF     Mx
    STA $06FA                       ; $81D495  8D FA 06     Mx
    STZ $06FC                       ; $81D498  9C FC 06     Mx
    STZ $0742                       ; $81D49B  9C 42 07     Mx
    STZ $06F8                       ; $81D49E  9C F8 06     Mx
    LDA #$FFF8                      ; $81D4A1  A9 F8 FF     Mx
    STA $06FE                       ; $81D4A4  8D FE 06     Mx
L_81D4A7:
    RTS                             ; $81D4A7  60           Mx
L_81D4A8:
    LDA $1683                       ; $81D4A8  AD 83 16     Mx
    CMP #$001B                      ; $81D4AB  C9 1B 00     Mx
    BNE L_81D4B3                    ; $81D4AE  D0 03        Mx
    JMP L_81D526                    ; $81D4B0  4C 26 D5     Mx
L_81D4B3:
    LDX $06F0                       ; $81D4B3  AE F0 06     Mx
    CPX $0C19                       ; $81D4B6  EC 19 0C     Mx
    BEQ L_81D527                    ; $81D4B9  F0 6C        Mx
    LDA $0786                       ; $81D4BB  AD 86 07     Mx
    BEQ L_81D4E8                    ; $81D4BE  F0 28        Mx
    LDA $078A                       ; $81D4C0  AD 8A 07     Mx
    CMP #$000A                      ; $81D4C3  C9 0A 00     Mx
    BCC L_81D526                    ; $81D4C6  90 5E        Mx
    LDX $0774                       ; $81D4C8  AE 74 07     Mx
    INX                             ; $81D4CB  E8           Mx
    BEQ L_81D526                    ; $81D4CC  F0 58        Mx
    LDX $06F0                       ; $81D4CE  AE F0 06     Mx
    CPX $0A96                       ; $81D4D1  EC 96 0A     Mx
    BEQ L_81D4E3                    ; $81D4D4  F0 0D        Mx
    SEC                             ; $81D4D6  38           Mx
    SBC #$0009                      ; $81D4D7  E9 09 00     Mx
    STA $078A                       ; $81D4DA  8D 8A 07     Mx
    LDA #$000A                      ; $81D4DD  A9 0A 00     Mx
    STA $0792                       ; $81D4E0  8D 92 07     Mx
L_81D4E3:
    LDA #$0036                      ; $81D4E3  A9 36 00     Mx
    BNE L_81D4FC                    ; $81D4E6  D0 14        Mx
L_81D4E8:
    LDA $077E                       ; $81D4E8  AD 7E 07     Mx
    BNE L_81D526                    ; $81D4EB  D0 39        Mx
    LDA $0B6C                       ; $81D4ED  AD 6C 0B     Mx
    BNE L_81D526                    ; $81D4F0  D0 34        Mx
    LDA #$0008                      ; $81D4F2  A9 08 00     Mx
    JSL L_BDFDF3                    ; $81D4F5  22 F3 FD BD  Mx
    LDA #$002C                      ; $81D4F9  A9 2C 00     Mx
L_81D4FC:
    STZ $072A                       ; $81D4FC  9C 2A 07     Mx
    STZ $0728                       ; $81D4FF  9C 28 07     Mx
    STZ $0732                       ; $81D502  9C 32 07     Mx
    STZ $0730                       ; $81D505  9C 30 07     Mx
    STZ $072E                       ; $81D508  9C 2E 07     Mx
    STZ $072C                       ; $81D50B  9C 2C 07     Mx
    STA $06F4                       ; $81D50E  8D F4 06     Mx
    LDA #$FFFF                      ; $81D511  A9 FF FF     Mx
    STA $06FA                       ; $81D514  8D FA 06     Mx
    STZ $06FC                       ; $81D517  9C FC 06     Mx
    STZ $0742                       ; $81D51A  9C 42 07     Mx
    STZ $06F8                       ; $81D51D  9C F8 06     Mx
    LDA #$FFF8                      ; $81D520  A9 F8 FF     Mx
    STA $06FE                       ; $81D523  8D FE 06     Mx
L_81D526:
    RTS                             ; $81D526  60           Mx
L_81D527:
    LDX $0774                       ; $81D527  AE 74 07     Mx
    INX                             ; $81D52A  E8           Mx
    BEQ L_81D526                    ; $81D52B  F0 F9        Mx
    STZ $072A                       ; $81D52D  9C 2A 07     Mx
    STZ $0728                       ; $81D530  9C 28 07     Mx
    STZ $0732                       ; $81D533  9C 32 07     Mx
    STZ $0730                       ; $81D536  9C 30 07     Mx
    STZ $072E                       ; $81D539  9C 2E 07     Mx
    STZ $072C                       ; $81D53C  9C 2C 07     Mx
    STZ $0742                       ; $81D53F  9C 42 07     Mx
    STZ $0C1B                       ; $81D542  9C 1B 0C     Mx
    STZ $0C29                       ; $81D545  9C 29 0C     Mx
    STZ $0C27                       ; $81D548  9C 27 0C     Mx
    LDA #$07D8                      ; $81D54B  A9 D8 07     Mx
    STA $0C25                       ; $81D54E  8D 25 0C     Mx
    LDA $0C19                       ; $81D551  AD 19 0C     Mx
    STA $0C1F                       ; $81D554  8D 1F 0C     Mx
    STZ $0780                       ; $81D557  9C 80 07     Mx
    LDA $00C0                       ; $81D55A  AD C0 00     Mx
    STA $0C39                       ; $81D55D  8D 39 0C     Mx
    LDA $0708                       ; $81D560  AD 08 07     Mx
    STA $00A4                       ; $81D563  8D A4 00     Mx
    LDA $0760                       ; $81D566  AD 60 07     Mx
    TAX                             ; $81D569  AA           Mx
    LDA $A7E377,X                   ; $81D56A  BF 77 E3 A7  Mx
    AND #$0007                      ; $81D56E  29 07 00     Mx
    STA $0708                       ; $81D571  8D 08 07     Mx
    TXA                             ; $81D574  8A           Mx
    CLC                             ; $81D575  18           Mx
    ADC #$0040                      ; $81D576  69 40 00     Mx
    AND #$007F                      ; $81D579  29 7F 00     Mx
    TAX                             ; $81D57C  AA           Mx
    LDA $A7E377,X                   ; $81D57D  BF 77 E3 A7  Mx
    AND #$0007                      ; $81D581  29 07 00     Mx
    STA $07F0                       ; $81D584  8D F0 07     Mx
    LDA $0702                       ; $81D587  AD 02 07     Mx
    BNE L_81D59C                    ; $81D58A  D0 10        Mx
    LDA $1D56                       ; $81D58C  AD 56 1D     Mx
    AND #$0003                      ; $81D58F  29 03 00     Mx
    BNE L_81D59C                    ; $81D592  D0 08        Mx
    LDA $0766                       ; $81D594  AD 66 07     Mx
    CMP #$0038                      ; $81D597  C9 38 00     Mx
    BCS L_81D59F                    ; $81D59A  B0 03        Mx
L_81D59C:
    JMP L_81D640                    ; $81D59C  4C 40 D6     Mx
L_81D59F:
    CMP #$0100                      ; $81D59F  C9 00 01     Mx
    BPL L_81D59C                    ; $81D5A2  10 F8        Mx
    LDA $00A4                       ; $81D5A4  AD A4 00     Mx
    CMP #$0003                      ; $81D5A7  C9 03 00     Mx
    BCC L_81D5BE                    ; $81D5AA  90 12        Mx
    CMP #$0006                      ; $81D5AC  C9 06 00     Mx
    BCC L_81D5EF                    ; $81D5AF  90 3E        Mx
    LDA $0708                       ; $81D5B1  AD 08 07     Mx
    BEQ L_81D5D7                    ; $81D5B4  F0 21        Mx
    CMP #$0001                      ; $81D5B6  C9 01 00     Mx
    BEQ L_81D5D7                    ; $81D5B9  F0 1C        Mx
    JMP L_81D5EF                    ; $81D5BB  4C EF D5     Mx
L_81D5BE:
    LDA $0708                       ; $81D5BE  AD 08 07     Mx
    CMP #$0002                      ; $81D5C1  C9 02 00     Mx
    BEQ L_81D5E3                    ; $81D5C4  F0 1D        Mx
    CMP #$0007                      ; $81D5C6  C9 07 00     Mx
    BNE L_81D5EF                    ; $81D5C9  D0 24        Mx
    LDA #$0002                      ; $81D5CB  A9 02 00     Mx
    STA $0708                       ; $81D5CE  8D 08 07     Mx
    LDA #$003E                      ; $81D5D1  A9 3E 00     Mx
    JMP L_81D76B                    ; $81D5D4  4C 6B D7     Mx
L_81D5D7:
    LDA #$0006                      ; $81D5D7  A9 06 00     Mx
    STA $0708                       ; $81D5DA  8D 08 07     Mx
    LDA #$003E                      ; $81D5DD  A9 3E 00     Mx
    JMP L_81D76B                    ; $81D5E0  4C 6B D7     Mx
L_81D5E3:
    LDA #$0001                      ; $81D5E3  A9 01 00     Mx
    STA $0708                       ; $81D5E6  8D 08 07     Mx
    LDA #$003E                      ; $81D5E9  A9 3E 00     Mx
    JMP L_81D76B                    ; $81D5EC  4C 6B D7     Mx
L_81D5EF:
    LDA $00A4                       ; $81D5EF  AD A4 00     Mx
    CMP #$0002                      ; $81D5F2  C9 02 00     Mx
    BCC L_81D640                    ; $81D5F5  90 49        Mx
    CMP #$0005                      ; $81D5F7  C9 05 00     Mx
    BCC L_81D60C                    ; $81D5FA  90 10        Mx
    CMP #$0007                      ; $81D5FC  C9 07 00     Mx
    BEQ L_81D640                    ; $81D5FF  F0 3F        Mx
    LDA $0708                       ; $81D601  AD 08 07     Mx
    CMP #$0006                      ; $81D604  C9 06 00     Mx
    BEQ L_81D625                    ; $81D607  F0 1C        Mx
    JMP L_81D640                    ; $81D609  4C 40 D6     Mx
L_81D60C:
    LDA $0708                       ; $81D60C  AD 08 07     Mx
    CMP #$0005                      ; $81D60F  C9 05 00     Mx
    BEQ L_81D634                    ; $81D612  F0 20        Mx
    CMP #$0002                      ; $81D614  C9 02 00     Mx
    BNE L_81D640                    ; $81D617  D0 27        Mx
    LDA #$0003                      ; $81D619  A9 03 00     Mx
    STA $0708                       ; $81D61C  8D 08 07     Mx
    LDA #$0040                      ; $81D61F  A9 40 00     Mx
    JMP L_81D76B                    ; $81D622  4C 6B D7     Mx
L_81D625:
    LDA #$0005                      ; $81D625  A9 05 00     Mx
    STA $0708                       ; $81D628  8D 08 07     Mx
    LDA #$0040                      ; $81D62B  A9 40 00     Mx
    JMP L_81D76B                    ; $81D62E  4C 6B D7     Mx
L_81D631:
    JMP L_81D76B                    ; $81D631  4C 6B D7     Mx
L_81D634:
    LDA #$0002                      ; $81D634  A9 02 00     Mx
    STA $0708                       ; $81D637  8D 08 07     Mx
    LDA #$0040                      ; $81D63A  A9 40 00     Mx
    JMP L_81D76B                    ; $81D63D  4C 6B D7     Mx
L_81D640:
    PHP                             ; $81D640  08           Mx
    REP #$30                        ; $81D641  C2 30        Mx
    LDA $4212                       ; $81D643  AD 12 42     MX
    SEP #$20                        ; $81D646  E2 20        MX
    CLC                             ; $81D648  18           mX
    ADC $1D57                       ; $81D649  6D 57 1D     mX
    STA $1D57                       ; $81D64C  8D 57 1D     mX
    REP #$20                        ; $81D64F  C2 20        mX
    LDA $4212                       ; $81D651  AD 12 42     MX
    TAX                             ; $81D654  AA           MX
    SEP #$20                        ; $81D655  E2 20        MX
    EOR $1D58                       ; $81D657  4D 58 1D     mX
    STA $1D58                       ; $81D65A  8D 58 1D     mX
    TXA                             ; $81D65D  8A           mX
    ADC $1D59                       ; $81D65E  6D 59 1D     mX
    REP #$20                        ; $81D661  C2 20        mX
    LDA $1D56                       ; $81D663  AD 56 1D     MX
    INC                             ; $81D666  1A           MX
    ROR                             ; $81D667  6A           MX
    LSR $1D58                       ; $81D668  4E 58 1D     MX
    EOR #$2B41                      ; $81D66B  49 41 2B     MX
    SBC #$000F                      ; $81D66E  E9 0F 00     MX
    STA $1D56                       ; $81D671  8D 56 1D     MX
    LDA $1D58                       ; $81D674  AD 58 1D     MX
    EOR #$1D87                      ; $81D677  49 87 1D     MX
    STA $1D58                       ; $81D67A  8D 58 1D     MX
    LDA $1D52                       ; $81D67D  AD 52 1D     MX
    EOR $1D56                       ; $81D680  4D 56 1D     MX
    STA $0002                       ; $81D683  8D 02 00     MX
    INC                             ; $81D686  1A           MX
    STA $1D52                       ; $81D687  8D 52 1D     MX
    LDA $1D54                       ; $81D68A  AD 54 1D     MX
    EOR $1D58                       ; $81D68D  4D 58 1D     MX
    ADC #$0000                      ; $81D690  69 00 00     MX
    STA $1D52                       ; $81D693  8D 52 1D     MX
    STA $0004                       ; $81D696  8D 04 00     MX
    PLP                             ; $81D699  28           MX
    LDA $0002                       ; $81D69A  AD 02 00     Mx
    CMP #$5999                      ; $81D69D  C9 99 59     Mx
    BCC L_81D6A5                    ; $81D6A0  90 03        Mx
L_81D6A2:
    JMP L_81D738                    ; $81D6A2  4C 38 D7     Mx
L_81D6A5:
    LDA $0742                       ; $81D6A5  AD 42 07     Mx
    BNE L_81D6A2                    ; $81D6A8  D0 F8        Mx
    LDA $0766                       ; $81D6AA  AD 66 07     Mx
    CMP #$005A                      ; $81D6AD  C9 5A 00     Mx
    BCC L_81D6A2                    ; $81D6B0  90 F0        Mx
    CMP #$0168                      ; $81D6B2  C9 68 01     Mx
    BCC L_81D6BA                    ; $81D6B5  90 03        Mx
    JMP L_81D6A2                    ; $81D6B7  4C A2 D6     Mx
L_81D6BA:
    LDA $00A4                       ; $81D6BA  AD A4 00     Mx
    CMP #$0002                      ; $81D6BD  C9 02 00     Mx
    BCC L_81D6DD                    ; $81D6C0  90 1B        Mx
    CMP #$0005                      ; $81D6C2  C9 05 00     Mx
    BCS L_81D6DD                    ; $81D6C5  B0 16        Mx
    LDA $0708                       ; $81D6C7  AD 08 07     Mx
    CMP #$0001                      ; $81D6CA  C9 01 00     Mx
    BEQ L_81D6D4                    ; $81D6CD  F0 05        Mx
    CMP #$0002                      ; $81D6CF  C9 02 00     Mx
    BNE L_81D738                    ; $81D6D2  D0 64        Mx
L_81D6D4:
    LDA #$0003                      ; $81D6D4  A9 03 00     Mx
    STA $0708                       ; $81D6D7  8D 08 07     Mx
    JMP L_81D762                    ; $81D6DA  4C 62 D7     Mx
L_81D6DD:
    CMP #$0005                      ; $81D6DD  C9 05 00     Mx
    BEQ L_81D722                    ; $81D6E0  F0 40        Mx
    CMP #$0006                      ; $81D6E2  C9 06 00     Mx
    BEQ L_81D722                    ; $81D6E5  F0 3B        Mx
    CMP #$0000                      ; $81D6E7  C9 00 00     Mx
    BEQ L_81D70C                    ; $81D6EA  F0 20        Mx
    CMP #$0001                      ; $81D6EC  C9 01 00     Mx
    BEQ L_81D70C                    ; $81D6EF  F0 1B        Mx
    CMP #$0007                      ; $81D6F1  C9 07 00     Mx
    BNE L_81D738                    ; $81D6F4  D0 42        Mx
    LDA $0708                       ; $81D6F6  AD 08 07     Mx
    CMP #$0005                      ; $81D6F9  C9 05 00     Mx
    BEQ L_81D703                    ; $81D6FC  F0 05        Mx
    CMP #$0006                      ; $81D6FE  C9 06 00     Mx
    BNE L_81D738                    ; $81D701  D0 35        Mx
L_81D703:
    LDA #$0007                      ; $81D703  A9 07 00     Mx
    STA $0708                       ; $81D706  8D 08 07     Mx
    JMP L_81D762                    ; $81D709  4C 62 D7     Mx
L_81D70C:
    LDA $0708                       ; $81D70C  AD 08 07     Mx
    CMP #$0002                      ; $81D70F  C9 02 00     Mx
    BEQ L_81D719                    ; $81D712  F0 05        Mx
    CMP #$0003                      ; $81D714  C9 03 00     Mx
    BNE L_81D738                    ; $81D717  D0 1F        Mx
L_81D719:
    LDA #$0001                      ; $81D719  A9 01 00     Mx
    STA $0708                       ; $81D71C  8D 08 07     Mx
    JMP L_81D762                    ; $81D71F  4C 62 D7     Mx
L_81D722:
    LDA $0708                       ; $81D722  AD 08 07     Mx
    CMP #$0006                      ; $81D725  C9 06 00     Mx
    BEQ L_81D72F                    ; $81D728  F0 05        Mx
    CMP #$0007                      ; $81D72A  C9 07 00     Mx
    BNE L_81D738                    ; $81D72D  D0 09        Mx
L_81D72F:
    LDA #$0005                      ; $81D72F  A9 05 00     Mx
    STA $0708                       ; $81D732  8D 08 07     Mx
    JMP L_81D762                    ; $81D735  4C 62 D7     Mx
L_81D738:
    LDA $0766                       ; $81D738  AD 66 07     Mx
    CMP #$0082                      ; $81D73B  C9 82 00     Mx
    BCC L_81D768                    ; $81D73E  90 28        Mx
    CMP #$0168                      ; $81D740  C9 68 01     Mx
    BCC L_81D748                    ; $81D743  90 03        Mx
    STZ $0C39                       ; $81D745  9C 39 0C     Mx
L_81D748:
    LDA $0006                       ; $81D748  AD 06 00     Mx
    AND #$0007                      ; $81D74B  29 07 00     Mx
    CMP #$0004                      ; $81D74E  C9 04 00     Mx
    BEQ L_81D759                    ; $81D751  F0 06        Mx
    LDA #$000A                      ; $81D753  A9 0A 00     Mx
    JMP L_81D76B                    ; $81D756  4C 6B D7     Mx
L_81D759:
    LDA #$001A                      ; $81D759  A9 1A 00     Mx
    STZ $0C39                       ; $81D75C  9C 39 0C     Mx
    JMP L_81D76B                    ; $81D75F  4C 6B D7     Mx
L_81D762:
    LDA #$0016                      ; $81D762  A9 16 00     Mx
    JMP L_81D76B                    ; $81D765  4C 6B D7     Mx
L_81D768:
    LDA #$0012                      ; $81D768  A9 12 00     Mx
L_81D76B:
    STA $06F4                       ; $81D76B  8D F4 06     Mx
    LDA #$FFFF                      ; $81D76E  A9 FF FF     Mx
    STA $06FA                       ; $81D771  8D FA 06     Mx
    STZ $06FC                       ; $81D774  9C FC 06     Mx
    STZ $0742                       ; $81D777  9C 42 07     Mx
    STZ $06F8                       ; $81D77A  9C F8 06     Mx
    LDA #$FFF8                      ; $81D77D  A9 F8 FF     Mx
    STA $06FE                       ; $81D780  8D FE 06     Mx
    LDA #$0002                      ; $81D783  A9 02 00     Mx
    STA $06F8                       ; $81D786  8D F8 06     Mx
    STZ $07A4                       ; $81D789  9C A4 07     Mx
    LDA $0722                       ; $81D78C  AD 22 07     Mx
    BNE L_81D7C1                    ; $81D78F  D0 30        Mx
    LDA $088E                       ; $81D791  AD 8E 08     Mx
    BEQ L_81D7C1                    ; $81D794  F0 2B        Mx
    CMP #$0009                      ; $81D796  C9 09 00     Mx
    BCC L_81D7C1                    ; $81D799  90 26        Mx
    LDA $0850                       ; $81D79B  AD 50 08     Mx
    CMP #$0023                      ; $81D79E  C9 23 00     Mx
    BCC L_81D7C1                    ; $81D7A1  90 1E        Mx
    LDA $0852                       ; $81D7A3  AD 52 08     Mx
    CMP #$0023                      ; $81D7A6  C9 23 00     Mx
    BCC L_81D7C1                    ; $81D7A9  90 16        Mx
    LDA $0766                       ; $81D7AB  AD 66 07     Mx
    CMP #$0028                      ; $81D7AE  C9 28 00     Mx
    BCC L_81D7C1                    ; $81D7B1  90 0E        Mx
    LDA #$0001                      ; $81D7B3  A9 01 00     Mx
    STA $088C                       ; $81D7B6  8D 8C 08     Mx
    LDA #$0032                      ; $81D7B9  A9 32 00     Mx
    STA $088A                       ; $81D7BC  8D 8A 08     Mx
    BNE L_81D7CD                    ; $81D7BF  D0 0C        Mx
L_81D7C1:
    STZ $0812                       ; $81D7C1  9C 12 08     Mx
    STZ $0810                       ; $81D7C4  9C 10 08     Mx
    STZ $081A                       ; $81D7C7  9C 1A 08     Mx
    STZ $0818                       ; $81D7CA  9C 18 08     Mx
L_81D7CD:
    LDA #$0087                      ; $81D7CD  A9 87 00     Mx
    STA $089A                       ; $81D7D0  8D 9A 08     Mx
    LDA $06F0                       ; $81D7D3  AD F0 06     Mx
    AND #$00FF                      ; $81D7D6  29 FF 00     Mx
    STA $0AA0                       ; $81D7D9  8D A0 0A     Mx
    LDA #$00D2                      ; $81D7DC  A9 D2 00     Mx
    STA $0A9E                       ; $81D7DF  8D 9E 0A     Mx
    RTS                             ; $81D7E2  60           Mx
L_81D7E3:
    REP #$10                        ; $81D7E3  C2 10        Mx
    STZ $0BFF                       ; $81D7E5  9C FF 0B     MX
    STZ $072E                       ; $81D7E8  9C 2E 07     MX
    STZ $072C                       ; $81D7EB  9C 2C 07     MX
    STZ $0742                       ; $81D7EE  9C 42 07     MX
    STZ $0C29                       ; $81D7F1  9C 29 0C     MX
    STZ $0BC9                       ; $81D7F4  9C C9 0B     MX
    STZ $1131                       ; $81D7F7  9C 31 11     MX
    STZ $1133                       ; $81D7FA  9C 33 11     MX
    STZ $1135                       ; $81D7FD  9C 35 11     MX
    STZ $0780                       ; $81D800  9C 80 07     MX
    LDX $0708                       ; $81D803  AE 08 07     MX
    BEQ L_81D810                    ; $81D806  F0 08        MX
    CPX #$0004                      ; $81D808  E0 04 00     MX
    BEQ L_81D810                    ; $81D80B  F0 03        MX
L_81D80D:
    JMP L_81D851                    ; $81D80D  4C 51 D8     MX
L_81D810:
    LDA $0754                       ; $81D810  AD 54 07     MX
    CMP #$0028                      ; $81D813  C9 28 00     MX
    BCC L_81D80D                    ; $81D816  90 F5        MX
    CMP #$0096                      ; $81D818  C9 96 00     MX
    BCS L_81D80D                    ; $81D81B  B0 F0        MX
    LDA $0726                       ; $81D81D  AD 26 07     MX
    CMP #$0356                      ; $81D820  C9 56 03     MX
    BCC L_81D80D                    ; $81D823  90 E8        MX
    CMP #$0392                      ; $81D825  C9 92 03     MX
    BCS L_81D80D                    ; $81D828  B0 E3        MX
    CPX #$0000                      ; $81D82A  E0 00 00     MX
    BEQ L_81D834                    ; $81D82D  F0 05        MX
    LDX #$0003                      ; $81D82F  A2 03 00     MX
    BNE L_81D837                    ; $81D832  D0 03        MX
L_81D834:
    LDX #$0001                      ; $81D834  A2 01 00     MX
L_81D837:
    STX $0708                       ; $81D837  8E 08 07     MX
    LDA #$0002                      ; $81D83A  A9 02 00     MX
    STA $0C3B                       ; $81D83D  8D 3B 0C     MX
    LDA $0786                       ; $81D840  AD 86 07     MX
    BEQ L_81D84B                    ; $81D843  F0 06        MX
    LDA #$0010                      ; $81D845  A9 10 00     MX
    JMP L_81DE17                    ; $81D848  4C 17 DE     MX
L_81D84B:
    LDA #$0034                      ; $81D84B  A9 34 00     MX
    JMP L_81DE17                    ; $81D84E  4C 17 DE     MX
L_81D851:
    LDA $0756                       ; $81D851  AD 56 07     MX
    STA $00D9                       ; $81D854  8D D9 00     MX
    CLC                             ; $81D857  18           MX
    ADC #$0008                      ; $81D858  69 08 00     MX
    AND #$007F                      ; $81D85B  29 7F 00     MX
    LSR                             ; $81D85E  4A           MX
    LSR                             ; $81D85F  4A           MX
    LSR                             ; $81D860  4A           MX
    LSR                             ; $81D861  4A           MX
    SEC                             ; $81D862  38           MX
    SBC #$0005                      ; $81D863  E9 05 00     MX
    BMI L_81D876                    ; $81D866  30 0E        MX
    LDA $0754                       ; $81D868  AD 54 07     MX
    CMP #$0046                      ; $81D86B  C9 46 00     MX
    BCS L_81D873                    ; $81D86E  B0 03        MX
    JMP L_81D9C6                    ; $81D870  4C C6 D9     MX
L_81D873:
    JMP L_81DDB3                    ; $81D873  4C B3 DD     MX
L_81D876:
    LDA $0754                       ; $81D876  AD 54 07     MX
    CMP #$0030                      ; $81D879  C9 30 00     MX
    BCS L_81D881                    ; $81D87C  B0 03        MX
    JMP L_81D90C                    ; $81D87E  4C 0C D9     MX
L_81D881:
    LDA $0708                       ; $81D881  AD 08 07     MX
    ASL                             ; $81D884  0A           MX
    ASL                             ; $81D885  0A           MX
    ASL                             ; $81D886  0A           MX
    ASL                             ; $81D887  0A           MX
    SEC                             ; $81D888  38           MX
    SBC $0756                       ; $81D889  ED 56 07     MX
    BPL L_81D895                    ; $81D88C  10 07        MX
    EOR #$FFFF                      ; $81D88E  49 FF FF     MX
    CLC                             ; $81D891  18           MX
    ADC #$0001                      ; $81D892  69 01 00     MX
L_81D895:
    CMP #$0040                      ; $81D895  C9 40 00     MX
    BCC L_81D8A7                    ; $81D898  90 0D        MX
    SEC                             ; $81D89A  38           MX
    SBC #$0080                      ; $81D89B  E9 80 00     MX
    BPL L_81D8A7                    ; $81D89E  10 07        MX
    EOR #$FFFF                      ; $81D8A0  49 FF FF     MX
    CLC                             ; $81D8A3  18           MX
    ADC #$0001                      ; $81D8A4  69 01 00     MX
L_81D8A7:
    SEC                             ; $81D8A7  38           MX
    SBC #$0018                      ; $81D8A8  E9 18 00     MX
    BPL L_81D8C8                    ; $81D8AB  10 1B        MX
    LDA $07D6                       ; $81D8AD  AD D6 07     MX
    AND #$0010                      ; $81D8B0  29 10 00     MX
    BEQ L_81D8C0                    ; $81D8B3  F0 0B        MX
    LDA $0754                       ; $81D8B5  AD 54 07     MX
    CMP #$0110                      ; $81D8B8  C9 10 01     MX
    BCS L_81D8C8                    ; $81D8BB  B0 0B        MX
    JMP L_81D9C6                    ; $81D8BD  4C C6 D9     MX
L_81D8C0:
    LDA $0754                       ; $81D8C0  AD 54 07     MX
    CMP #$0088                      ; $81D8C3  C9 88 00     MX
    BCC L_81D8CB                    ; $81D8C6  90 03        MX
L_81D8C8:
    JMP L_81DDB3                    ; $81D8C8  4C B3 DD     MX
L_81D8CB:
    LDA $0726                       ; $81D8CB  AD 26 07     MX
    CMP #$0330                      ; $81D8CE  C9 30 03     MX
    BCC L_81D8C8                    ; $81D8D1  90 F5        MX
    CMP #$03D0                      ; $81D8D3  C9 D0 03     MX
    BCS L_81D8C8                    ; $81D8D6  B0 F0        MX
    LDA $072A                       ; $81D8D8  AD 2A 07     MX
    BPL L_81D8F0                    ; $81D8DB  10 13        MX
    LDA $0728                       ; $81D8DD  AD 28 07     MX
    EOR #$FFFF                      ; $81D8E0  49 FF FF     MX
    CLC                             ; $81D8E3  18           MX
    ADC #$0001                      ; $81D8E4  69 01 00     MX
    LDA $072A                       ; $81D8E7  AD 2A 07     MX
    EOR #$FFFF                      ; $81D8EA  49 FF FF     MX
    ADC #$0000                      ; $81D8ED  69 00 00     MX
L_81D8F0:
    BNE L_81D90C                    ; $81D8F0  D0 1A        MX
    LDA $0732                       ; $81D8F2  AD 32 07     MX
    BPL L_81D90A                    ; $81D8F5  10 13        MX
    LDA $0730                       ; $81D8F7  AD 30 07     MX
    EOR #$FFFF                      ; $81D8FA  49 FF FF     MX
    CLC                             ; $81D8FD  18           MX
    ADC #$0001                      ; $81D8FE  69 01 00     MX
    LDA $0732                       ; $81D901  AD 32 07     MX
    EOR #$FFFF                      ; $81D904  49 FF FF     MX
    ADC #$0000                      ; $81D907  69 00 00     MX
L_81D90A:
    BEQ L_81D8C8                    ; $81D90A  F0 BC        MX
L_81D90C:
    LDX $08C0                       ; $81D90C  AE C0 08     MX
    CPX $0A96                       ; $81D90F  EC 96 0A     MX
    BNE L_81D91D                    ; $81D912  D0 09        MX
    LDA #$000B                      ; $81D914  A9 0B 00     MX
    STA $00D0                       ; $81D917  8D D0 00     MX
    JMP L_81D923                    ; $81D91A  4C 23 D9     MX
L_81D91D:
    LDA $098E                       ; $81D91D  AD 8E 09     MX
    STA $00D0                       ; $81D920  8D D0 00     MX
L_81D923:
    ASL                             ; $81D923  0A           MX
    TAX                             ; $81D924  AA           MX
    LDA $DD41,X                     ; $81D925  BD 41 DD     MX
    STA $00D6                       ; $81D928  8D D6 00     MX
    LDA $DD59,X                     ; $81D92B  BD 59 DD     MX
    STA $00D0                       ; $81D92E  8D D0 00     MX
    LDA $0768                       ; $81D931  AD 68 07     MX
    CMP $0754                       ; $81D934  CD 54 07     MX
    BCS L_81D969                    ; $81D937  B0 30        MX
    CMP $00D6                       ; $81D939  CD D6 00     MX
    BCS L_81D969                    ; $81D93C  B0 2B        MX
    LDA $0762                       ; $81D93E  AD 62 07     MX
    SEC                             ; $81D941  38           MX
    SBC $00D9                       ; $81D942  ED D9 00     MX
    BPL L_81D94E                    ; $81D945  10 07        MX
    EOR #$FFFF                      ; $81D947  49 FF FF     MX
    CLC                             ; $81D94A  18           MX
    ADC #$0001                      ; $81D94B  69 01 00     MX
L_81D94E:
    CMP #$0040                      ; $81D94E  C9 40 00     MX
    BCC L_81D960                    ; $81D951  90 0D        MX
    SEC                             ; $81D953  38           MX
    SBC #$0080                      ; $81D954  E9 80 00     MX
    BPL L_81D960                    ; $81D957  10 07        MX
    EOR #$FFFF                      ; $81D959  49 FF FF     MX
    CLC                             ; $81D95C  18           MX
    ADC #$0001                      ; $81D95D  69 01 00     MX
L_81D960:
    SEC                             ; $81D960  38           MX
    SBC $00D0                       ; $81D961  ED D0 00     MX
    BPL L_81D969                    ; $81D964  10 03        MX
    JMP L_81DD71                    ; $81D966  4C 71 DD     MX
L_81D969:
    LDX $09A8                       ; $81D969  AE A8 09     MX
    CPX $0A96                       ; $81D96C  EC 96 0A     MX
    BNE L_81D97A                    ; $81D96F  D0 09        MX
    LDA #$000B                      ; $81D971  A9 0B 00     MX
    STA $00D0                       ; $81D974  8D D0 00     MX
    JMP L_81D980                    ; $81D977  4C 80 D9     MX
L_81D97A:
    LDA $0A76                       ; $81D97A  AD 76 0A     MX
    STA $00D0                       ; $81D97D  8D D0 00     MX
L_81D980:
    ASL                             ; $81D980  0A           MX
    TAX                             ; $81D981  AA           MX
    LDA $DD41,X                     ; $81D982  BD 41 DD     MX
    STA $00D6                       ; $81D985  8D D6 00     MX
    LDA $DD59,X                     ; $81D988  BD 59 DD     MX
    STA $00D0                       ; $81D98B  8D D0 00     MX
    LDA $076A                       ; $81D98E  AD 6A 07     MX
    CMP $0754                       ; $81D991  CD 54 07     MX
    BCS L_81D9C6                    ; $81D994  B0 30        MX
    CMP $00D6                       ; $81D996  CD D6 00     MX
    BCS L_81D9C6                    ; $81D999  B0 2B        MX
    LDA $0764                       ; $81D99B  AD 64 07     MX
    SEC                             ; $81D99E  38           MX
    SBC $00D9                       ; $81D99F  ED D9 00     MX
    BPL L_81D9AB                    ; $81D9A2  10 07        MX
    EOR #$FFFF                      ; $81D9A4  49 FF FF     MX
    CLC                             ; $81D9A7  18           MX
    ADC #$0001                      ; $81D9A8  69 01 00     MX
L_81D9AB:
    CMP #$0040                      ; $81D9AB  C9 40 00     MX
    BCC L_81D9BD                    ; $81D9AE  90 0D        MX
    SEC                             ; $81D9B0  38           MX
    SBC #$0080                      ; $81D9B1  E9 80 00     MX
    BPL L_81D9BD                    ; $81D9B4  10 07        MX
    EOR #$FFFF                      ; $81D9B6  49 FF FF     MX
    CLC                             ; $81D9B9  18           MX
    ADC #$0001                      ; $81D9BA  69 01 00     MX
L_81D9BD:
    SEC                             ; $81D9BD  38           MX
    SBC $00D0                       ; $81D9BE  ED D0 00     MX
    BPL L_81D9C6                    ; $81D9C1  10 03        MX
    JMP L_81DD71                    ; $81D9C3  4C 71 DD     MX
L_81D9C6:
    LDX $0756                       ; $81D9C6  AE 56 07     MX
    LDA $A7E377,X                   ; $81D9C9  BF 77 E3 A7  MX
    AND #$0007                      ; $81D9CD  29 07 00     MX
    STA $00A4                       ; $81D9D0  8D A4 00     MX
    CMP #$0005                      ; $81D9D3  C9 05 00     MX
    BCS L_81D9DD                    ; $81D9D6  B0 05        MX
    LDA $00A4                       ; $81D9D8  AD A4 00     MX
    BRA L_81D9F1                    ; $81D9DB  80 14        MX
L_81D9DD:
    LDA $0754                       ; $81D9DD  AD 54 07     MX
    CMP #$0030                      ; $81D9E0  C9 30 00     MX
    BCC L_81D9EA                    ; $81D9E3  90 05        MX
    LDA $00A4                       ; $81D9E5  AD A4 00     MX
    BRA L_81D9F1                    ; $81D9E8  80 07        MX
L_81D9EA:
    LDX $0756                       ; $81D9EA  AE 56 07     MX
    LDA $81DE4A,X                   ; $81D9ED  BF 4A DE 81  MX
L_81D9F1:
    AND #$0007                      ; $81D9F1  29 07 00     MX
    STA $0708                       ; $81D9F4  8D 08 07     MX
    ASL                             ; $81D9F7  0A           MX
    STA $00D9                       ; $81D9F8  8D D9 00     MX
    SEP #$20                        ; $81D9FB  E2 20        MX
    PHB                             ; $81D9FD  8B           mX
    LDA #$24                        ; $81D9FE  A9 24        mX
    PHA                             ; $81DA00  48           mX
    PLB                             ; $81DA01  AB           mX
    REP #$20                        ; $81DA02  C2 20        mX
    LDA #$0004                      ; $81DA04  A9 04 00     MX
    STA $06F8                       ; $81DA07  8D F8 06     MX
    LDX $06F0                       ; $81DA0A  AE F0 06     MX
    CPX $0A96                       ; $81DA0D  EC 96 0A     MX
    BEQ L_81DA38                    ; $81DA10  F0 26        MX
    LDA $07D6                       ; $81DA12  AD D6 07     MX
    AND #$0010                      ; $81DA15  29 10 00     MX
    BNE L_81DA38                    ; $81DA18  D0 1E        MX
    LDA $07B8                       ; $81DA1A  AD B8 07     MX
    ASL                             ; $81DA1D  0A           MX
    TAX                             ; $81DA1E  AA           MX
    JMP ($DA22,X)                   ; $81DA1F  7C 22 DA     MX
    db $64,$DB,$64,$DB,$64,$DB,$19,$DB,$19,$DB,$CE,$DA,$83,$DA,$83,$DA ; $81DA22
    db $38,$DA,$38,$DA,$38,$DA                                         ; $81DA32
L_81DA38:
    LDA $00D9                       ; $81DA38  AD D9 00     MX
    CLC                             ; $81DA3B  18           MX
    ADC #$D62E                      ; $81DA3C  69 2E D6     MX
    STA $00D9                       ; $81DA3F  8D D9 00     MX
    LDA $0754                       ; $81DA42  AD 54 07     MX
    CMP #$0030                      ; $81DA45  C9 30 00     MX
    BCC L_81DA7D                    ; $81DA48  90 33        MX
    LDA $00D9                       ; $81DA4A  AD D9 00     MX
    CLC                             ; $81DA4D  18           MX
    ADC #$0012                      ; $81DA4E  69 12 00     MX
    STA $00D9                       ; $81DA51  8D D9 00     MX
    LDA $0754                       ; $81DA54  AD 54 07     MX
    CMP #$0040                      ; $81DA57  C9 40 00     MX
    BCC L_81DA7D                    ; $81DA5A  90 21        MX
    LDA $0786                       ; $81DA5C  AD 86 07     MX
    BEQ L_81DA80                    ; $81DA5F  F0 1F        MX
    LDA $00D9                       ; $81DA61  AD D9 00     MX
    CLC                             ; $81DA64  18           MX
    ADC #$0012                      ; $81DA65  69 12 00     MX
    STA $00D9                       ; $81DA68  8D D9 00     MX
    LDA $0754                       ; $81DA6B  AD 54 07     MX
    CMP #$0060                      ; $81DA6E  C9 60 00     MX
    BCC L_81DA7D                    ; $81DA71  90 0A        MX
    LDA $00D9                       ; $81DA73  AD D9 00     MX
    CLC                             ; $81DA76  18           MX
    ADC #$0012                      ; $81DA77  69 12 00     MX
    STA $00D9                       ; $81DA7A  8D D9 00     MX
L_81DA7D:
    JMP L_81DBB2                    ; $81DA7D  4C B2 DB     MX
L_81DA80:
    JMP L_81DBAC                    ; $81DA80  4C AC DB     MX
L_81DA83:
    LDA $00D9                       ; $81DA83  AD D9 00     MX
    CLC                             ; $81DA86  18           MX
    ADC #$D8AC                      ; $81DA87  69 AC D8     MX
    STA $00D9                       ; $81DA8A  8D D9 00     MX
    LDA $0754                       ; $81DA8D  AD 54 07     MX
    CMP #$0030                      ; $81DA90  C9 30 00     MX
    BCC L_81DAC8                    ; $81DA93  90 33        MX
    LDA $00D9                       ; $81DA95  AD D9 00     MX
    CLC                             ; $81DA98  18           MX
    ADC #$0012                      ; $81DA99  69 12 00     MX
    STA $00D9                       ; $81DA9C  8D D9 00     MX
    LDA $0754                       ; $81DA9F  AD 54 07     MX
    CMP #$0040                      ; $81DAA2  C9 40 00     MX
    BCC L_81DAC8                    ; $81DAA5  90 21        MX
    LDA $0786                       ; $81DAA7  AD 86 07     MX
    BEQ L_81DACB                    ; $81DAAA  F0 1F        MX
    LDA $00D9                       ; $81DAAC  AD D9 00     MX
    CLC                             ; $81DAAF  18           MX
    ADC #$0012                      ; $81DAB0  69 12 00     MX
    STA $00D9                       ; $81DAB3  8D D9 00     MX
    LDA $0754                       ; $81DAB6  AD 54 07     MX
    CMP #$0060                      ; $81DAB9  C9 60 00     MX
    BCC L_81DAC8                    ; $81DABC  90 0A        MX
    LDA $00D9                       ; $81DABE  AD D9 00     MX
    CLC                             ; $81DAC1  18           MX
    ADC #$0012                      ; $81DAC2  69 12 00     MX
    STA $00D9                       ; $81DAC5  8D D9 00     MX
L_81DAC8:
    JMP L_81DBB2                    ; $81DAC8  4C B2 DB     MX
L_81DACB:
    JMP L_81DBAC                    ; $81DACB  4C AC DB     MX
L_81DACE:
    LDA $00D9                       ; $81DACE  AD D9 00     MX
    CLC                             ; $81DAD1  18           MX
    ADC #$DB24                      ; $81DAD2  69 24 DB     MX
    STA $00D9                       ; $81DAD5  8D D9 00     MX
    LDA $0754                       ; $81DAD8  AD 54 07     MX
    CMP #$0030                      ; $81DADB  C9 30 00     MX
    BCC L_81DB13                    ; $81DADE  90 33        MX
    LDA $00D9                       ; $81DAE0  AD D9 00     MX
    CLC                             ; $81DAE3  18           MX
    ADC #$0012                      ; $81DAE4  69 12 00     MX
    STA $00D9                       ; $81DAE7  8D D9 00     MX
    LDA $0754                       ; $81DAEA  AD 54 07     MX
    CMP #$0040                      ; $81DAED  C9 40 00     MX
    BCC L_81DB13                    ; $81DAF0  90 21        MX
    LDA $0786                       ; $81DAF2  AD 86 07     MX
    BEQ L_81DB16                    ; $81DAF5  F0 1F        MX
    LDA $00D9                       ; $81DAF7  AD D9 00     MX
    CLC                             ; $81DAFA  18           MX
    ADC #$0012                      ; $81DAFB  69 12 00     MX
    STA $00D9                       ; $81DAFE  8D D9 00     MX
    LDA $0754                       ; $81DB01  AD 54 07     MX
    CMP #$0060                      ; $81DB04  C9 60 00     MX
    BCC L_81DB13                    ; $81DB07  90 0A        MX
    LDA $00D9                       ; $81DB09  AD D9 00     MX
    CLC                             ; $81DB0C  18           MX
    ADC #$0012                      ; $81DB0D  69 12 00     MX
    STA $00D9                       ; $81DB10  8D D9 00     MX
L_81DB13:
    JMP L_81DBB2                    ; $81DB13  4C B2 DB     MX
L_81DB16:
    JMP L_81DBAC                    ; $81DB16  4C AC DB     MX
L_81DB19:
    LDA $00D9                       ; $81DB19  AD D9 00     MX
    CLC                             ; $81DB1C  18           MX
    ADC #$DD48                      ; $81DB1D  69 48 DD     MX
    STA $00D9                       ; $81DB20  8D D9 00     MX
    LDA $0754                       ; $81DB23  AD 54 07     MX
    CMP #$0030                      ; $81DB26  C9 30 00     MX
    BCC L_81DB5E                    ; $81DB29  90 33        MX
    LDA $00D9                       ; $81DB2B  AD D9 00     MX
    CLC                             ; $81DB2E  18           MX
    ADC #$0012                      ; $81DB2F  69 12 00     MX
    STA $00D9                       ; $81DB32  8D D9 00     MX
    LDA $0754                       ; $81DB35  AD 54 07     MX
    CMP #$0040                      ; $81DB38  C9 40 00     MX
    BCC L_81DB5E                    ; $81DB3B  90 21        MX
    LDA $0786                       ; $81DB3D  AD 86 07     MX
    BEQ L_81DB61                    ; $81DB40  F0 1F        MX
    LDA $00D9                       ; $81DB42  AD D9 00     MX
    CLC                             ; $81DB45  18           MX
    ADC #$0012                      ; $81DB46  69 12 00     MX
    STA $00D9                       ; $81DB49  8D D9 00     MX
    LDA $0754                       ; $81DB4C  AD 54 07     MX
    CMP #$0060                      ; $81DB4F  C9 60 00     MX
    BCC L_81DB5E                    ; $81DB52  90 0A        MX
    LDA $00D9                       ; $81DB54  AD D9 00     MX
    CLC                             ; $81DB57  18           MX
    ADC #$0012                      ; $81DB58  69 12 00     MX
    STA $00D9                       ; $81DB5B  8D D9 00     MX
L_81DB5E:
    JMP L_81DBB2                    ; $81DB5E  4C B2 DB     MX
L_81DB61:
    JMP L_81DBAC                    ; $81DB61  4C AC DB     MX
L_81DB64:
    LDA $00D9                       ; $81DB64  AD D9 00     MX
    CLC                             ; $81DB67  18           MX
    ADC #$DEEC                      ; $81DB68  69 EC DE     MX
    STA $00D9                       ; $81DB6B  8D D9 00     MX
    LDA $0754                       ; $81DB6E  AD 54 07     MX
    CMP #$0030                      ; $81DB71  C9 30 00     MX
    BCC L_81DBA9                    ; $81DB74  90 33        MX
    LDA $00D9                       ; $81DB76  AD D9 00     MX
    CLC                             ; $81DB79  18           MX
    ADC #$0012                      ; $81DB7A  69 12 00     MX
    STA $00D9                       ; $81DB7D  8D D9 00     MX
    LDA $0754                       ; $81DB80  AD 54 07     MX
    CMP #$0040                      ; $81DB83  C9 40 00     MX
    BCC L_81DBA9                    ; $81DB86  90 21        MX
    LDA $0786                       ; $81DB88  AD 86 07     MX
    BEQ L_81DBAC                    ; $81DB8B  F0 1F        MX
    LDA $00D9                       ; $81DB8D  AD D9 00     MX
    CLC                             ; $81DB90  18           MX
    ADC #$0012                      ; $81DB91  69 12 00     MX
    STA $00D9                       ; $81DB94  8D D9 00     MX
    LDA $0754                       ; $81DB97  AD 54 07     MX
    CMP #$0060                      ; $81DB9A  C9 60 00     MX
    BCC L_81DBA9                    ; $81DB9D  90 0A        MX
    LDA $00D9                       ; $81DB9F  AD D9 00     MX
    CLC                             ; $81DBA2  18           MX
    ADC #$0012                      ; $81DBA3  69 12 00     MX
    STA $00D9                       ; $81DBA6  8D D9 00     MX
L_81DBA9:
    JMP L_81DBB2                    ; $81DBA9  4C B2 DB     MX
L_81DBAC:
    STZ $06FC                       ; $81DBAC  9C FC 06     MX
    JMP L_81DD28                    ; $81DBAF  4C 28 DD     MX
L_81DBB2:
    LDX $0B4A                       ; $81DBB2  AE 4A 0B     MX
    CPX #$0002                      ; $81DBB5  E0 02 00     MX
    BCC L_81DBC6                    ; $81DBB8  90 0C        MX
    DEX                             ; $81DBBA  CA           MX
    DEX                             ; $81DBBB  CA           MX
    LDA $A6DC03,X                   ; $81DBBC  BF 03 DC A6  MX
    AND #$00FF                      ; $81DBC0  29 FF 00     MX
    JMP L_81DC67                    ; $81DBC3  4C 67 DC     MX
L_81DBC6:
    LDA ($D9)                       ; $81DBC6  B2 D9        MX
    STA $00D9                       ; $81DBC8  8D D9 00     MX
    LDA ($D9)                       ; $81DBCB  B2 D9        MX
    STA $00D0                       ; $81DBCD  8D D0 00     MX
    PHP                             ; $81DBD0  08           MX
    REP #$30                        ; $81DBD1  C2 30        MX
    LDA $4212                       ; $81DBD3  AD 12 42     MX
    SEP #$20                        ; $81DBD6  E2 20        MX
    CLC                             ; $81DBD8  18           mX
    ADC $1D57                       ; $81DBD9  6D 57 1D     mX
    STA $1D57                       ; $81DBDC  8D 57 1D     mX
    REP #$20                        ; $81DBDF  C2 20        mX
    LDA $4212                       ; $81DBE1  AD 12 42     MX
    TAX                             ; $81DBE4  AA           MX
    SEP #$20                        ; $81DBE5  E2 20        MX
    EOR $1D58                       ; $81DBE7  4D 58 1D     mX
    STA $1D58                       ; $81DBEA  8D 58 1D     mX
    TXA                             ; $81DBED  8A           mX
    ADC $1D59                       ; $81DBEE  6D 59 1D     mX
    REP #$20                        ; $81DBF1  C2 20        mX
    LDA $1D56                       ; $81DBF3  AD 56 1D     MX
    INC                             ; $81DBF6  1A           MX
    ROR                             ; $81DBF7  6A           MX
    LSR $1D58                       ; $81DBF8  4E 58 1D     MX
    EOR #$2B41                      ; $81DBFB  49 41 2B     MX
    SBC #$000F                      ; $81DBFE  E9 0F 00     MX
    STA $1D56                       ; $81DC01  8D 56 1D     MX
    LDA $1D58                       ; $81DC04  AD 58 1D     MX
    EOR #$1D87                      ; $81DC07  49 87 1D     MX
    STA $1D58                       ; $81DC0A  8D 58 1D     MX
    LDA $1D52                       ; $81DC0D  AD 52 1D     MX
    EOR $1D56                       ; $81DC10  4D 56 1D     MX
    STA $0002                       ; $81DC13  8D 02 00     MX
    INC                             ; $81DC16  1A           MX
    STA $1D52                       ; $81DC17  8D 52 1D     MX
    LDA $1D54                       ; $81DC1A  AD 54 1D     MX
    EOR $1D58                       ; $81DC1D  4D 58 1D     MX
    ADC #$0000                      ; $81DC20  69 00 00     MX
    STA $1D52                       ; $81DC23  8D 52 1D     MX
    STA $0004                       ; $81DC26  8D 04 00     MX
    PLP                             ; $81DC29  28           MX
    INC $00D0                       ; $81DC2A  EE D0 00     MX
    LDA $1D56                       ; $81DC2D  AD 56 1D     MX
    STA $00BA                       ; $81DC30  8D BA 00     MX
    SEP #$20                        ; $81DC33  E2 20        MX
    LDA $00D0                       ; $81DC35  AD D0 00     mX
    STA $4202                       ; $81DC38  8D 02 42     mX
    LDA $00BA                       ; $81DC3B  AD BA 00     mX
    STA $4203                       ; $81DC3E  8D 03 42     mX
    NOP                             ; $81DC41  EA           mX
    NOP                             ; $81DC42  EA           mX
    NOP                             ; $81DC43  EA           mX
    REP #$20                        ; $81DC44  C2 20        mX
    LDA $4216                       ; $81DC46  AD 16 42     MX
    STA $00BA                       ; $81DC49  8D BA 00     MX
    LDA $00BB                       ; $81DC4C  AD BB 00     MX
    AND #$00FF                      ; $81DC4F  29 FF 00     MX
    REP #$10                        ; $81DC52  C2 10        MX
    ASL                             ; $81DC54  0A           MX
    CLC                             ; $81DC55  18           MX
    ADC #$0002                      ; $81DC56  69 02 00     MX
    CLC                             ; $81DC59  18           MX
    ADC $00D9                       ; $81DC5A  6D D9 00     MX
    STA $00D9                       ; $81DC5D  8D D9 00     MX
    LDA ($D9)                       ; $81DC60  B2 D9        MX
L_81DC62:
    BPL L_81DC67                    ; $81DC62  10 03        MX
    JMP L_81DBAC                    ; $81DC64  4C AC DB     MX
L_81DC67:
    STA $0AA2                       ; $81DC67  8D A2 0A     MX
    STA $079C                       ; $81DC6A  8D 9C 07     MX
    TAX                             ; $81DC6D  AA           MX
    LDA #$2400                      ; $81DC6E  A9 00 24     MX
    STA $00D1                       ; $81DC71  8D D1 00     MX
    LDA $B818,X                     ; $81DC74  BD 18 B8     MX
    STA $00D0                       ; $81DC77  8D D0 00     MX
    LDA $0708                       ; $81DC7A  AD 08 07     MX
    ASL                             ; $81DC7D  0A           MX
    TAY                             ; $81DC7E  A8           MX
    LDA ($D0),Y                     ; $81DC7F  B1 D0        MX
    STA $079E                       ; $81DC81  8D 9E 07     MX
    STA $00D0                       ; $81DC84  8D D0 00     MX
    STZ $07A0                       ; $81DC87  9C A0 07     MX
    STZ $070E                       ; $81DC8A  9C 0E 07     MX
    LDA $079C                       ; $81DC8D  AD 9C 07     MX
    CMP #$0076                      ; $81DC90  C9 76 00     MX
    BEQ L_81DC9F                    ; $81DC93  F0 0A        MX
    CMP #$0078                      ; $81DC95  C9 78 00     MX
    BEQ L_81DC9F                    ; $81DC98  F0 05        MX
    CMP #$007A                      ; $81DC9A  C9 7A 00     MX
    BNE L_81DCC3                    ; $81DC9D  D0 24        MX
L_81DC9F:
    LDA #$0001                      ; $81DC9F  A9 01 00     MX
    STA $0C11                       ; $81DCA2  8D 11 0C     MX
    LDA $0BBB                       ; $81DCA5  AD BB 0B     MX
    STA $0C01                       ; $81DCA8  8D 01 0C     MX
    STA $0C05                       ; $81DCAB  8D 05 0C     MX
    STA $0C09                       ; $81DCAE  8D 09 0C     MX
    STA $0C0D                       ; $81DCB1  8D 0D 0C     MX
    LDA $0BBD                       ; $81DCB4  AD BD 0B     MX
    STA $0C03                       ; $81DCB7  8D 03 0C     MX
    STA $0C07                       ; $81DCBA  8D 07 0C     MX
    STA $0C0B                       ; $81DCBD  8D 0B 0C     MX
    STA $0C0F                       ; $81DCC0  8D 0F 0C     MX
L_81DCC3:
    LDA #$0002                      ; $81DCC3  A9 02 00     MX
    STA $0C3B                       ; $81DCC6  8D 3B 0C     MX
    LDA $06F8                       ; $81DCC9  AD F8 06     MX
    STA $00A4                       ; $81DCCC  8D A4 00     MX
    LDA #$003A                      ; $81DCCF  A9 3A 00     MX
    STA $06F4                       ; $81DCD2  8D F4 06     MX
    LDA #$FFFF                      ; $81DCD5  A9 FF FF     MX
    STA $06FA                       ; $81DCD8  8D FA 06     MX
    STZ $06FC                       ; $81DCDB  9C FC 06     MX
    STZ $0742                       ; $81DCDE  9C 42 07     MX
    STZ $06F8                       ; $81DCE1  9C F8 06     MX
    LDA #$FFF8                      ; $81DCE4  A9 F8 FF     MX
    STA $06FE                       ; $81DCE7  8D FE 06     MX
    LDA $00A4                       ; $81DCEA  AD A4 00     MX
    STA $06F8                       ; $81DCED  8D F8 06     MX
    STZ $072E                       ; $81DCF0  9C 2E 07     MX
    STZ $072C                       ; $81DCF3  9C 2C 07     MX
    LDY $07A0                       ; $81DCF6  AC A0 07     MX
    LDA [$D0],Y                     ; $81DCF9  B7 D0        MX
    STA $06FC                       ; $81DCFB  8D FC 06     MX
    INY                             ; $81DCFE  C8           MX
    INY                             ; $81DCFF  C8           MX
    LDA [$D0],Y                     ; $81DD00  B7 D0        MX
    STA $06FE                       ; $81DD02  8D FE 06     MX
    STZ $06FA                       ; $81DD05  9C FA 06     MX
    INY                             ; $81DD08  C8           MX
    INY                             ; $81DD09  C8           MX
    STY $07A0                       ; $81DD0A  8C A0 07     MX
    LDA $06FC                       ; $81DD0D  AD FC 06     MX
    STA $06F6                       ; $81DD10  8D F6 06     MX
    LDX $0756                       ; $81DD13  AE 56 07     MX
    LDA $A7E377,X                   ; $81DD16  BF 77 E3 A7  MX
    AND #$0007                      ; $81DD1A  29 07 00     MX
    TAX                             ; $81DD1D  AA           MX
    LDA $81DE4A,X                   ; $81DD1E  BF 4A DE 81  MX
    AND #$0007                      ; $81DD22  29 07 00     MX
    STA $070A                       ; $81DD25  8D 0A 07     MX
L_81DD28:
    LDA $06FC                       ; $81DD28  AD FC 06     MX
    BNE L_81DD31                    ; $81DD2B  D0 04        MX
    PLB                             ; $81DD2D  AB           MX
    JMP L_81DDB3                    ; $81DD2E  4C B3 DD     MX
L_81DD31:
    LDA $070A                       ; $81DD31  AD 0A 07     MX
    STA $0708                       ; $81DD34  8D 08 07     MX
    LDA #$00C8                      ; $81DD37  A9 C8 00     MX
    STA $06F6                       ; $81DD3A  8D F6 06     MX
    PLB                             ; $81DD3D  AB           MX
    JMP L_81DE35                    ; $81DD3E  4C 35 DE     MX
    db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF ; $81DD41
    db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$0C,$00,$0E,$00,$10,$00,$12,$00 ; $81DD51
    db $15,$00,$16,$00,$17,$00,$18,$00,$19,$00,$1C,$00,$1E,$00,$25,$00 ; $81DD61
L_81DD71:
    LDA $0754                       ; $81DD71  AD 54 07     MX
    CMP #$0025                      ; $81DD74  C9 25 00     MX
    BCS L_81DD7C                    ; $81DD77  B0 03        MX
    JMP L_81D9C6                    ; $81DD79  4C C6 D9     MX
L_81DD7C:
    LDA $00C0                       ; $81DD7C  AD C0 00     MX
    BNE L_81DDB3                    ; $81DD7F  D0 32        MX
    LDA $0754                       ; $81DD81  AD 54 07     MX
    CMP #$0080                      ; $81DD84  C9 80 00     MX
    BCS L_81DDB3                    ; $81DD87  B0 2A        MX
    CMP #$0023                      ; $81DD89  C9 23 00     MX
    BCS L_81DD91                    ; $81DD8C  B0 03        MX
    JMP L_81DDB3                    ; $81DD8E  4C B3 DD     MX
L_81DD91:
    SEP #$20                        ; $81DD91  E2 20        MX
    PHB                             ; $81DD93  8B           mX
    LDA #$24                        ; $81DD94  A9 24        mX
    PHA                             ; $81DD96  48           mX
    PLB                             ; $81DD97  AB           mX
    REP #$20                        ; $81DD98  C2 20        mX
    LDA #$0008                      ; $81DD9A  A9 08 00     MX
    STA $06F8                       ; $81DD9D  8D F8 06     MX
    LDX $0756                       ; $81DDA0  AE 56 07     MX
    LDA $A7E377,X                   ; $81DDA3  BF 77 E3 A7  MX
    AND #$0007                      ; $81DDA7  29 07 00     MX
    STA $0708                       ; $81DDAA  8D 08 07     MX
    LDA #$0082                      ; $81DDAD  A9 82 00     MX
    JMP L_81DC62                    ; $81DDB0  4C 62 DC     MX
L_81DDB3:
    LDA $0708                       ; $81DDB3  AD 08 07     MX
    STA $00A4                       ; $81DDB6  8D A4 00     MX
    LDX $0756                       ; $81DDB9  AE 56 07     MX
    LDA $A7E377,X                   ; $81DDBC  BF 77 E3 A7  MX
    AND #$0007                      ; $81DDC0  29 07 00     MX
    STA $0708                       ; $81DDC3  8D 08 07     MX
    LDA $0754                       ; $81DDC6  AD 54 07     MX
    CMP #$0140                      ; $81DDC9  C9 40 01     MX
    BCC L_81DE14                    ; $81DDCC  90 46        MX
    LDA $0CCB                       ; $81DDCE  AD CB 0C     MX
    CMP #$0006                      ; $81DDD1  C9 06 00     MX
    BCS L_81DDEB                    ; $81DDD4  B0 15        MX
    LDA #$0028                      ; $81DDD6  A9 28 00     MX
    STA $077A                       ; $81DDD9  8D 7A 07     MX
    STA $0862                       ; $81DDDC  8D 62 08     MX
    STA $094A                       ; $81DDDF  8D 4A 09     MX
    STA $0A32                       ; $81DDE2  8D 32 0A     MX
    LDA #$001E                      ; $81DDE5  A9 1E 00     MX
    JMP L_81DDF9                    ; $81DDE8  4C F9 DD     MX
L_81DDEB:
    LDA $00C0                       ; $81DDEB  AD C0 00     MX
    BNE L_81DDF6                    ; $81DDEE  D0 06        MX
    LDA #$000E                      ; $81DDF0  A9 0E 00     MX
    JMP L_81DDF9                    ; $81DDF3  4C F9 DD     MX
L_81DDF6:
    LDA #$001C                      ; $81DDF6  A9 1C 00     MX
L_81DDF9:
    STA $06F4                       ; $81DDF9  8D F4 06     MX
    LDA #$FFFF                      ; $81DDFC  A9 FF FF     MX
    STA $06FA                       ; $81DDFF  8D FA 06     MX
    STZ $06FC                       ; $81DE02  9C FC 06     MX
    STZ $0742                       ; $81DE05  9C 42 07     MX
    STZ $06F8                       ; $81DE08  9C F8 06     MX
    LDA #$FFF8                      ; $81DE0B  A9 F8 FF     MX
    STA $06FE                       ; $81DE0E  8D FE 06     MX
    JMP L_81DE2F                    ; $81DE11  4C 2F DE     MX
L_81DE14:
    LDA #$0008                      ; $81DE14  A9 08 00     MX
L_81DE17:
    STA $06F4                       ; $81DE17  8D F4 06     MX
    LDA #$FFFF                      ; $81DE1A  A9 FF FF     MX
    STA $06FA                       ; $81DE1D  8D FA 06     MX
    STZ $06FC                       ; $81DE20  9C FC 06     MX
    STZ $0742                       ; $81DE23  9C 42 07     MX
    STZ $06F8                       ; $81DE26  9C F8 06     MX
    LDA #$FFF8                      ; $81DE29  A9 F8 FF     MX
    STA $06FE                       ; $81DE2C  8D FE 06     MX
L_81DE2F:
    LDA #$0001                      ; $81DE2F  A9 01 00     MX
    STA $06F8                       ; $81DE32  8D F8 06     MX
L_81DE35:
    STZ $072A                       ; $81DE35  9C 2A 07     MX
    STZ $0728                       ; $81DE38  9C 28 07     MX
    STZ $0732                       ; $81DE3B  9C 32 07     MX
    STZ $0730                       ; $81DE3E  9C 30 07     MX
    SEP #$10                        ; $81DE41  E2 10        MX
    LDA $06F4                       ; $81DE43  AD F4 06     Mx
    STA $0B52                       ; $81DE46  8D 52 0B     Mx
    RTS                             ; $81DE49  60           Mx
    db $01,$01,$02,$03,$03,$03,$02,$01,$A9,$28,$00,$8D,$2A,$00,$A9,$A0 ; $81DE4A
    db $00,$8D,$F2,$00,$AE,$55,$0C,$FC,$1B,$F2,$6B,$AD,$29,$01,$C9,$2A ; $81DE5A
    db $01,$B0,$33,$AD,$93,$0E,$18,$69,$19,$00,$8D,$EE,$00,$8D,$F6,$00 ; $81DE6A
    db $A9,$4C,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6 ; $81DE7A
    db $00,$38,$E9,$05,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2 ; $81DE8A
    db $00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$A9,$A0,$00,$8D ; $81DE9A
    db $F2,$00,$AD,$95,$0E,$38,$E9,$01,$00,$8D,$EE,$00,$8D,$F6,$00,$A9 ; $81DEAA
    db $4C,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00 ; $81DEBA
    db $18,$69,$0D,$00,$8D,$EE,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0 ; $81DECA
    db $AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0,$33,$AD,$93,$0E,$18,$69,$1A ; $81DEDA
    db $00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4C,$01,$38,$ED,$2B,$01,$8D,$F0 ; $81DEEA
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$05,$00,$8D,$EE,$00,$8D ; $81DEFA
    db $F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00 ; $81DF0A
    db $8D,$2A,$00,$A9,$A0,$00,$8D,$F2,$00,$AD,$95,$0E,$38,$E9,$02,$00 ; $81DF1A
    db $8D,$EE,$00,$8D,$F6,$00,$A9,$4C,$01,$38,$ED,$2B,$01,$8D,$F0,$00 ; $81DF2A
    db $22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$0D,$00,$8D,$EE,$00,$EE,$F2 ; $81DF3A
    db $00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0 ; $81DF4A
    db $33,$AD,$93,$0E,$18,$69,$19,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4C ; $81DF5A
    db $01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$38 ; $81DF6A
    db $E9,$05,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22 ; $81DF7A
    db $00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$A9,$A0,$00,$8D,$F2,$00 ; $81DF8A
    db $AD,$95,$0E,$38,$E9,$01,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4C,$01 ; $81DF9A
    db $38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69 ; $81DFAA
    db $0D,$00,$8D,$EE,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60 ; $81DFBA
    db $AD,$29,$01,$C9,$2A,$01,$B0,$33,$AD,$93,$0E,$18,$69,$19,$00,$8D ; $81DFCA
    db $EE,$00,$8D,$F6,$00,$A9,$4F,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22 ; $81DFDA
    db $07,$E0,$AB,$AD,$F6,$00,$38,$E9,$05,$00,$8D,$EE,$00,$8D,$F6,$00 ; $81DFEA
    db $EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A ; $81DFFA
    db $00,$A9,$A0,$00,$8D,$F2,$00,$AD,$95,$0E,$38,$E9,$01,$00,$8D,$EE ; $81E00A
    db $00,$8D,$F6,$00,$A9,$4F,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07 ; $81E01A
    db $E0,$AB,$AD,$F6,$00,$18,$69,$0D,$00,$8D,$EE,$00,$EE,$F2,$00,$EE ; $81E02A
    db $F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0,$33,$AD ; $81E03A
    db $93,$0E,$18,$69,$19,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4E,$01,$38 ; $81E04A
    db $ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$05 ; $81E05A
    db $00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0 ; $81E06A
    db $AB,$60,$A9,$68,$00,$8D,$2A,$00,$A9,$A0,$00,$8D,$F2,$00,$AD,$95 ; $81E07A
    db $0E,$38,$E9,$01,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4E,$01,$38,$ED ; $81E08A
    db $2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$0D,$00 ; $81E09A
    db $8D,$EE,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29 ; $81E0AA
    db $01,$C9,$2A,$01,$B0,$5F,$AD,$93,$0E,$18,$69,$19,$00,$8D,$EE,$00 ; $81E0BA
    db $8D,$F6,$00,$A9,$4C,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0 ; $81E0CA
    db $AB,$AD,$F6,$00,$18,$69,$04,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2 ; $81E0DA
    db $00,$EE,$F2,$00,$AD,$F0,$00,$18,$69,$0E,$00,$8D,$F0,$00,$22,$00 ; $81E0EA
    db $E0,$AB,$AD,$F6,$00,$38,$E9,$09,$00,$8D,$EE,$00,$AD,$F0,$00,$38 ; $81E0FA
    db $E9,$0E,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00 ; $81E10A
    db $22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$A9,$A0,$00,$8D,$F2 ; $81E11A
    db $00,$AD,$95,$0E,$38,$E9,$01,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4C ; $81E12A
    db $01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18 ; $81E13A
    db $69,$04,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$AD ; $81E14A
    db $F0,$00,$18,$69,$0E,$00,$8D,$F0,$00,$22,$00,$E0,$AB,$AD,$F6,$00 ; $81E15A
    db $18,$69,$09,$00,$8D,$EE,$00,$AD,$F0,$00,$38,$E9,$0E,$00,$8D,$F0 ; $81E16A
    db $00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60 ; $81E17A
    db $AD,$29,$01,$C9,$2A,$01,$B0,$33,$AD,$93,$0E,$18,$69,$19,$00,$8D ; $81E18A
    db $EE,$00,$8D,$F6,$00,$A9,$4A,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22 ; $81E19A
    db $07,$E0,$AB,$AD,$F6,$00,$38,$E9,$05,$00,$8D,$EE,$00,$8D,$F6,$00 ; $81E1AA
    db $EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A ; $81E1BA
    db $00,$A9,$A0,$00,$8D,$F2,$00,$AD,$95,$0E,$38,$E9,$01,$00,$8D,$EE ; $81E1CA
    db $00,$8D,$F6,$00,$A9,$4A,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07 ; $81E1DA
    db $E0,$AB,$AD,$F6,$00,$18,$69,$0D,$00,$8D,$EE,$00,$EE,$F2,$00,$EE ; $81E1EA
    db $F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0,$5B,$AD ; $81E1FA
    db $93,$0E,$18,$69,$19,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4C,$01,$38 ; $81E20A
    db $ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$04 ; $81E21A
    db $00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$AD,$F0,$00 ; $81E22A
    db $18,$69,$10,$00,$8D,$F0,$00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE ; $81E23A
    db $00,$AD,$F0,$00,$38,$E9,$10,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69 ; $81E24A
    db $10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00 ; $81E25A
    db $A9,$A0,$00,$8D,$F2,$00,$AD,$95,$0E,$38,$E9,$01,$00,$8D,$EE,$00 ; $81E26A
    db $8D,$F6,$00,$A9,$4C,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0 ; $81E27A
    db $AB,$AD,$F6,$00,$18,$69,$04,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2 ; $81E28A
    db $00,$EE,$F2,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$22,$00 ; $81E29A
    db $E0,$AB,$AD,$F6,$00,$18,$69,$09,$00,$8D,$EE,$00,$AD,$F0,$00,$38 ; $81E2AA
    db $E9,$10,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00 ; $81E2BA
    db $22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0,$51,$AD,$93,$0E ; $81E2CA
    db $18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4E,$01,$38,$ED,$2B ; $81E2DA
    db $01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$10,$00,$8D ; $81E2EA
    db $EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD ; $81E2FA
    db $F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD ; $81E30A
    db $F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$68 ; $81E31A
    db $00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$03,$00,$8D,$EE,$00,$8D,$F6 ; $81E32A
    db $00,$A9,$4E,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD ; $81E33A
    db $F6,$00,$38,$E9,$08,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE ; $81E34A
    db $F2,$00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18 ; $81E35A
    db $69,$08,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00 ; $81E36A
    db $22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0,$1C,$AD,$93,$0E ; $81E37A
    db $18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$51,$01,$38,$ED,$2B ; $81E38A
    db $01,$8D,$F0,$00,$22,$07,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$AD ; $81E39A
    db $95,$0E,$18,$69,$03,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$51,$01,$38 ; $81E3AA
    db $ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$60,$AD,$29,$01,$C9,$2A ; $81E3BA
    db $01,$B0,$36,$AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00 ; $81E3CA
    db $A9,$51,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2 ; $81E3DA
    db $00,$EE,$F2,$00,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$0C ; $81E3EA
    db $00,$8D,$F0,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$AD ; $81E3FA
    db $95,$0E,$18,$69,$03,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$51,$01,$38 ; $81E40A
    db $ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2,$00,$EE,$F2,$00 ; $81E41A
    db $AD,$F6,$00,$18,$69,$08,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$0C ; $81E42A
    db $00,$8D,$F0,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0 ; $81E43A
    db $3A,$AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$51 ; $81E44A
    db $01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2,$00,$EE ; $81E45A
    db $F2,$00,$AD,$F6,$00,$18,$69,$04,$00,$8D,$EE,$00,$AD,$F0,$00,$18 ; $81E46A
    db $69,$0C,$00,$8D,$F0,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A ; $81E47A
    db $00,$AD,$95,$0E,$18,$69,$03,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$51 ; $81E48A
    db $01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2,$00,$EE ; $81E49A
    db $F2,$00,$AD,$F6,$00,$18,$69,$04,$00,$8D,$EE,$00,$AD,$F0,$00,$18 ; $81E4AA
    db $69,$0C,$00,$8D,$F0,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A ; $81E4BA
    db $01,$B0,$30,$AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00 ; $81E4CA
    db $A9,$4A,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2 ; $81E4DA
    db $00,$EE,$F2,$00,$AD,$F6,$00,$18,$69,$10,$00,$8D,$EE,$00,$22,$00 ; $81E4EA
    db $E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$03,$00 ; $81E4FA
    db $8D,$EE,$00,$8D,$F6,$00,$A9,$4A,$01,$38,$ED,$2B,$01,$8D,$F0,$00 ; $81E50A
    db $22,$07,$E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$F6,$00,$38,$E9,$08 ; $81E51A
    db $00,$8D,$EE,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0 ; $81E52A
    db $57,$A9,$2C,$00,$8D,$2A,$00,$AD,$93,$0E,$18,$69,$14,$00,$8D,$EE ; $81E53A
    db $00,$8D,$F6,$00,$A9,$47,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07 ; $81E54A
    db $E0,$AB,$AD,$F6,$00,$18,$69,$10,$00,$8D,$EE,$00,$8D,$F6,$00,$EE ; $81E55A
    db $F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD ; $81E56A
    db $F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00 ; $81E57A
    db $8D,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$6C,$00,$8D,$2A,$00,$AD,$95 ; $81E58A
    db $0E,$18,$69,$03,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$47,$01,$38,$ED ; $81E59A
    db $2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$08,$00 ; $81E5AA
    db $8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB ; $81E5BA
    db $AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00 ; $81E5CA
    db $AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$A9 ; $81E5DA
    db $28,$00,$8D,$2A,$00,$A9,$A8,$00,$8D,$F2,$00,$AE,$55,$0C,$FC,$19 ; $81E5EA
    db $F2,$6B,$AD,$29,$01,$C9,$2A,$01,$B0,$30,$AD,$93,$0E,$18,$69,$19 ; $81E5FA
    db $00,$8D,$EE,$00,$8D,$F6,$00,$A9,$50,$01,$38,$ED,$2B,$01,$8D,$F0 ; $81E60A
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$05,$00,$8D,$EE,$00,$EE ; $81E61A
    db $F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00 ; $81E62A
    db $AD,$95,$0E,$38,$E9,$02,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$50,$01 ; $81E63A
    db $38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69 ; $81E64A
    db $0D,$00,$8D,$EE,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60 ; $81E65A
    db $AD,$29,$01,$C9,$2A,$01,$B0,$30,$AD,$93,$0E,$18,$69,$19,$00,$8D ; $81E66A
    db $EE,$00,$8D,$F6,$00,$A9,$50,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22 ; $81E67A
    db $07,$E0,$AB,$AD,$F6,$00,$38,$E9,$06,$00,$8D,$EE,$00,$EE,$F2,$00 ; $81E68A
    db $EE,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$AD,$95 ; $81E69A
    db $0E,$38,$E9,$02,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$50,$01,$38,$ED ; $81E6AA
    db $2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$0E,$00 ; $81E6BA
    db $8D,$EE,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29 ; $81E6CA
    db $01,$C9,$2A,$01,$B0,$30,$AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00 ; $81E6DA
    db $8D,$F6,$00,$A9,$50,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0 ; $81E6EA
    db $AB,$AD,$F6,$00,$18,$69,$0D,$00,$8D,$EE,$00,$EE,$F2,$00,$EE,$F2 ; $81E6FA
    db $00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$AD,$95,$0E,$18 ; $81E70A
    db $69,$03,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$50,$01,$38,$ED,$2B,$01 ; $81E71A
    db $8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$05,$00,$8D,$EE ; $81E72A
    db $00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9 ; $81E73A
    db $2A,$01,$B0,$30,$AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00,$8D,$F6 ; $81E74A
    db $00,$A9,$50,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD ; $81E75A
    db $F6,$00,$18,$69,$10,$00,$8D,$EE,$00,$EE,$F2,$00,$EE,$F2,$00,$22 ; $81E76A
    db $00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$03 ; $81E77A
    db $00,$8D,$EE,$00,$8D,$F6,$00,$A9,$50,$01,$38,$ED,$2B,$01,$8D,$F0 ; $81E78A
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$08,$00,$8D,$EE,$00,$EE ; $81E79A
    db $F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01 ; $81E7AA
    db $B0,$3A,$AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9 ; $81E7BA
    db $50,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00 ; $81E7CA
    db $18,$69,$10,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$05,$00,$8D,$F0 ; $81E7DA
    db $00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D ; $81E7EA
    db $2A,$00,$AD,$95,$0E,$18,$69,$03,$00,$8D,$EE,$00,$8D,$F6,$00,$A9 ; $81E7FA
    db $50,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00 ; $81E80A
    db $38,$E9,$08,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$05,$00,$8D,$F0 ; $81E81A
    db $00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9 ; $81E82A
    db $2A,$01,$B0,$3A,$AD,$93,$0E,$18,$69,$19,$00,$8D,$EE,$00,$8D,$F6 ; $81E83A
    db $00,$A9,$4C,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD ; $81E84A
    db $F6,$00,$38,$E9,$05,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$04,$00 ; $81E85A
    db $8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$68 ; $81E86A
    db $00,$8D,$2A,$00,$AD,$95,$0E,$38,$E9,$02,$00,$8D,$EE,$00,$8D,$F6 ; $81E87A
    db $00,$A9,$4C,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD ; $81E88A
    db $F6,$00,$18,$69,$0D,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$04,$00 ; $81E89A
    db $8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29 ; $81E8AA
    db $01,$C9,$2A,$01,$B0,$51,$AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00 ; $81E8BA
    db $8D,$F6,$00,$A9,$50,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0 ; $81E8CA
    db $AB,$AD,$F6,$00,$18,$69,$10,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2 ; $81E8DA
    db $00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0 ; $81E8EA
    db $00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D ; $81E8FA
    db $F2,$00,$22,$00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$AD,$95,$0E ; $81E90A
    db $18,$69,$03,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$50,$01,$38,$ED,$2B ; $81E91A
    db $01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$08,$00,$8D ; $81E92A
    db $EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD ; $81E93A
    db $F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD ; $81E94A
    db $F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29 ; $81E95A
    db $01,$C9,$2A,$01,$B0,$4E,$AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00 ; $81E96A
    db $8D,$F6,$00,$A9,$50,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0 ; $81E97A
    db $AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$0D,$00,$8D,$F0 ; $81E98A
    db $00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD,$F6,$00,$18,$69 ; $81E99A
    db $08,$00,$8D,$EE,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22 ; $81E9AA
    db $00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$03 ; $81E9BA
    db $00,$8D,$EE,$00,$8D,$F6,$00,$A9,$50,$01,$38,$ED,$2B,$01,$8D,$F0 ; $81E9CA
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$08,$00,$8D,$EE,$00,$AD ; $81E9DA
    db $F0,$00,$18,$69,$0D,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22 ; $81E9EA
    db $00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F2,$00,$18,$69,$10,$00 ; $81E9FA
    db $8D,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0,$51 ; $81EA0A
    db $AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4F,$01 ; $81EA1A
    db $38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69 ; $81EA2A
    db $10,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00 ; $81EA3A
    db $E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$08,$00,$8D ; $81EA4A
    db $F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB ; $81EA5A
    db $60,$A9,$68,$00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$03,$00,$8D,$EE ; $81EA6A
    db $00,$8D,$F6,$00,$A9,$4F,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07 ; $81EA7A
    db $E0,$AB,$AD,$F6,$00,$38,$E9,$08,$00,$8D,$EE,$00,$8D,$F6,$00,$EE ; $81EA8A
    db $F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD ; $81EA9A
    db $F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00 ; $81EAAA
    db $8D,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0,$54 ; $81EABA
    db $AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4B,$01 ; $81EACA
    db $38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$CE,$F0,$00,$AD,$F6 ; $81EADA
    db $00,$18,$69,$10,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2 ; $81EAEA
    db $00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69 ; $81EAFA
    db $08,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22 ; $81EB0A
    db $00,$E0,$AB,$60,$A9,$68,$00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$03 ; $81EB1A
    db $00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4B,$01,$38,$ED,$2B,$01,$8D,$F0 ; $81EB2A
    db $00,$22,$07,$E0,$AB,$CE,$F0,$00,$AD,$F6,$00,$38,$E9,$08,$00,$8D ; $81EB3A
    db $EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD ; $81EB4A
    db $F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD ; $81EB5A
    db $F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29 ; $81EB6A
    db $01,$C9,$2A,$01,$B0,$57,$A9,$2C,$00,$8D,$2A,$00,$AD,$93,$0E,$18 ; $81EB7A
    db $69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$4D,$01,$38,$ED,$2B,$01 ; $81EB8A
    db $8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$10,$00,$8D,$EE ; $81EB9A
    db $00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD,$F6 ; $81EBAA
    db $00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F2 ; $81EBBA
    db $00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$6C,$00 ; $81EBCA
    db $8D,$2A,$00,$AD,$95,$0E,$18,$69,$03,$00,$8D,$EE,$00,$8D,$F6,$00 ; $81EBDA
    db $A9,$4D,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6 ; $81EBEA
    db $00,$38,$E9,$08,$00,$8D,$EE,$00,$8D,$F6,$00,$EE,$F2,$00,$EE,$F2 ; $81EBFA
    db $00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69 ; $81EC0A
    db $08,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22 ; $81EC1A
    db $00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$B0,$78,$A9,$2C,$00,$8D ; $81EC2A
    db $2A,$00,$AD,$93,$0E,$18,$69,$18,$00,$8D,$EE,$00,$8D,$F6,$00,$A9 ; $81EC3A
    db $3D,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2,$00 ; $81EC4A
    db $EE,$F2,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$AD,$F6,$00 ; $81EC5A
    db $38,$E9,$04,$00,$8D,$EE,$00,$8D,$F6,$00,$22,$07,$E0,$AB,$EE,$F2 ; $81EC6A
    db $00,$EE,$F2,$00,$AD,$F6,$00,$18,$69,$10,$00,$8D,$EE,$00,$8D,$F6 ; $81EC7A
    db $00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69 ; $81EC8A
    db $08,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22 ; $81EC9A
    db $00,$E0,$AB,$60,$A9,$6C,$00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$FF ; $81ECAA
    db $FF,$8D,$EE,$00,$8D,$F6,$00,$A9,$3D,$01,$38,$ED,$2B,$01,$8D,$F0 ; $81ECBA
    db $00,$22,$07,$E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$F6,$00,$18,$69 ; $81ECCA
    db $04,$00,$8D,$EE,$00,$8D,$F6,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D ; $81ECDA
    db $F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$08,$00,$8D,$EE,$00 ; $81ECEA
    db $8D,$F6,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD,$F6,$00 ; $81ECFA
    db $8D,$EE,$00,$AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F2,$00 ; $81ED0A
    db $18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9 ; $81ED1A
    db $2A,$01,$90,$03,$4C,$CB,$ED,$A9,$2C,$00,$8D,$2A,$00,$AD,$93,$0E ; $81ED2A
    db $18,$69,$18,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$3D,$01,$38,$ED,$2B ; $81ED3A
    db $01,$8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$F0 ; $81ED4A
    db $00,$18,$69,$10,$00,$8D,$F0,$00,$AD,$F6,$00,$38,$E9,$04,$00,$8D ; $81ED5A
    db $EE,$00,$8D,$F6,$00,$22,$07,$E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD ; $81ED6A
    db $F6,$00,$18,$69,$10,$00,$8D,$EE,$00,$8D,$F6,$00,$22,$00,$E0,$AB ; $81ED7A
    db $AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00 ; $81ED8A
    db $AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$AD,$F0 ; $81ED9A
    db $00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F6,$00,$38,$E9,$08,$00,$8D ; $81EDAA
    db $EE,$00,$AD,$F2,$00,$38,$E9,$0F,$00,$8D,$F2,$00,$22,$00,$E0,$AB ; $81EDBA
    db $60,$A9,$6C,$00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$FF,$FF,$8D,$EE ; $81EDCA
    db $00,$8D,$F6,$00,$A9,$3D,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07 ; $81EDDA
    db $E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$F6,$00,$18,$69,$04,$00,$8D ; $81EDEA
    db $EE,$00,$8D,$F6,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$22 ; $81EDFA
    db $07,$E0,$AB,$AD,$F6,$00,$38,$E9,$08,$00,$8D,$EE,$00,$8D,$F6,$00 ; $81EE0A
    db $EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00 ; $81EE1A
    db $AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10 ; $81EE2A
    db $00,$8D,$F2,$00,$22,$00,$E0,$AB,$AD,$F0,$00,$18,$69,$08,$00,$8D ; $81EE3A
    db $F0,$00,$AD,$F6,$00,$18,$69,$08,$00,$8D,$EE,$00,$AD,$F2,$00,$38 ; $81EE4A
    db $E9,$0F,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A ; $81EE5A
    db $01,$90,$03,$4C,$2B,$EF,$A9,$2C,$00,$8D,$2A,$00,$AD,$93,$0E,$18 ; $81EE6A
    db $69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$3D,$01,$38,$ED,$2B,$01 ; $81EE7A
    db $8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$F0,$00 ; $81EE8A
    db $18,$69,$10,$00,$8D,$F0,$00,$AD,$F6,$00,$8D,$EE,$00,$22,$07,$E0 ; $81EE9A
    db $AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$F6,$00,$18,$69,$10,$00,$8D,$EE ; $81EEAA
    db $00,$8D,$F6,$00,$AD,$F0,$00,$38,$E9,$0C,$00,$8D,$F0,$00,$22,$00 ; $81EEBA
    db $E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$0C,$00,$8D ; $81EECA
    db $F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB ; $81EEDA
    db $AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F6,$00,$8D,$EE,$00 ; $81EEEA
    db $AD,$F2,$00,$38,$E9,$0F,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$AD,$F0 ; $81EEFA
    db $00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F6,$00,$38,$E9,$08,$00,$8D ; $81EF0A
    db $EE,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB ; $81EF1A
    db $60,$A9,$6C,$00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$03,$00,$8D,$EE ; $81EF2A
    db $00,$8D,$F6,$00,$A9,$3D,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07 ; $81EF3A
    db $E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$F6,$00,$8D,$EE,$00,$8D,$F6 ; $81EF4A
    db $00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$22,$07,$E0,$AB,$AD ; $81EF5A
    db $F6,$00,$38,$E9,$08,$00,$8D,$EE,$00,$8D,$F6,$00,$AD,$F0,$00,$38 ; $81EF6A
    db $E9,$0C,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB ; $81EF7A
    db $AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$0C,$00,$8D,$F0,$00 ; $81EF8A
    db $AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$AD,$F0 ; $81EF9A
    db $00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F6,$00,$8D,$EE,$00,$AD,$F2 ; $81EFAA
    db $00,$38,$E9,$0F,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$AD,$F0,$00,$18 ; $81EFBA
    db $69,$08,$00,$8D,$F0,$00,$AD,$F6,$00,$18,$69,$08,$00,$8D,$EE,$00 ; $81EFCA
    db $AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$AD ; $81EFDA
    db $29,$01,$C9,$2A,$01,$90,$03,$4C,$8D,$F0,$A9,$2C,$00,$8D,$2A,$00 ; $81EFEA
    db $AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$3D,$01 ; $81EFFA
    db $38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2,$00,$EE,$F2 ; $81F00A
    db $00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$AD,$F6,$00,$8D,$EE ; $81F01A
    db $00,$22,$07,$E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$F6,$00,$18,$69 ; $81F02A
    db $10,$00,$8D,$EE,$00,$8D,$F6,$00,$AD,$F0,$00,$38,$E9,$0C,$00,$8D ; $81F03A
    db $F0,$00,$22,$00,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18 ; $81F04A
    db $69,$0C,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00 ; $81F05A
    db $22,$00,$E0,$AB,$AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F6 ; $81F06A
    db $00,$8D,$EE,$00,$AD,$F2,$00,$38,$E9,$0F,$00,$8D,$F2,$00,$22,$00 ; $81F07A
    db $E0,$AB,$60,$A9,$6C,$00,$8D,$2A,$00,$AD,$95,$0E,$18,$69,$03,$00 ; $81F08A
    db $8D,$EE,$00,$8D,$F6,$00,$A9,$3D,$01,$38,$ED,$2B,$01,$8D,$F0,$00 ; $81F09A
    db $22,$07,$E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$F6,$00,$8D,$EE,$00 ; $81F0AA
    db $8D,$F6,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$22,$07,$E0 ; $81F0BA
    db $AB,$AD,$F6,$00,$38,$E9,$08,$00,$8D,$EE,$00,$8D,$F6,$00,$AD,$F0 ; $81F0CA
    db $00,$38,$E9,$0C,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00 ; $81F0DA
    db $E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$0C,$00,$8D ; $81F0EA
    db $F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB ; $81F0FA
    db $AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F6,$00,$8D,$EE,$00 ; $81F10A
    db $AD,$F2,$00,$38,$E9,$0F,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$AD ; $81F11A
    db $29,$01,$C9,$2A,$01,$90,$03,$4C,$A5,$F1,$A9,$2C,$00,$8D,$2A,$00 ; $81F12A
    db $AD,$93,$0E,$18,$69,$14,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$3D,$01 ; $81F13A
    db $38,$ED,$2B,$01,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$AD,$F0,$00 ; $81F14A
    db $18,$69,$10,$00,$8D,$F0,$00,$AD,$F6,$00,$8D,$EE,$00,$22,$07,$E0 ; $81F15A
    db $AB,$AD,$F2,$00,$18,$69,$12,$00,$8D,$F2,$00,$AD,$F6,$00,$18,$69 ; $81F16A
    db $10,$00,$8D,$EE,$00,$8D,$F6,$00,$22,$00,$E0,$AB,$AD,$F0,$00,$18 ; $81F17A
    db $69,$08,$00,$8D,$F0,$00,$AD,$F6,$00,$8D,$EE,$00,$AD,$F2,$00,$38 ; $81F18A
    db $E9,$0F,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$A9,$6C,$00,$8D,$2A ; $81F19A
    db $00,$AD,$95,$0E,$18,$69,$03,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$3D ; $81F1AA
    db $01,$38,$ED,$2B,$01,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$AD,$F6 ; $81F1BA
    db $00,$8D,$EE,$00,$8D,$F6,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0 ; $81F1CA
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$08,$00,$8D,$EE,$00,$8D ; $81F1DA
    db $F6,$00,$AD,$F2,$00,$18,$69,$12,$00,$8D,$F2,$00,$22,$00,$E0,$AB ; $81F1EA
    db $AD,$F0,$00,$18,$69,$08,$00,$8D,$F0,$00,$AD,$F6,$00,$8D,$EE,$00 ; $81F1FA
    db $AD,$F2,$00,$38,$E9,$0F,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$FC ; $81F20A
    db $E5,$B8,$E0,$FC,$E5,$B8,$E0,$FC,$E5,$65,$DE,$FC,$E5,$65,$DE,$36 ; $81F21A
    db $E8,$8A,$E1,$FC,$E5,$8A,$E1,$6A,$E6,$53,$DF,$D8,$E6,$DC,$DE,$46 ; $81F22A
    db $E7,$53,$DF,$46,$E7,$53,$DF,$FC,$E5,$41,$E0,$FC,$E5,$CA,$DF,$B4 ; $81F23A
    db $E7,$41,$E0,$B8,$E8,$CF,$E2,$B8,$E8,$CF,$E2,$B8,$E8,$CF,$E2,$68 ; $81F24A
    db $E9,$7F,$E3,$68,$E9,$C5,$E3,$68,$E9,$43,$E4,$68,$E9,$7F,$E3,$B8 ; $81F25A
    db $E8,$CF,$E2,$B8,$E8,$CF,$E2,$12,$EA,$C5,$E4,$C2,$EA,$C5,$E4,$C2 ; $81F26A
    db $EA,$C5,$E4,$B8,$E8,$CF,$E2,$B8,$E8,$CF,$E2,$B8,$E8,$CF,$E2,$B8 ; $81F27A
    db $E8,$CF,$E2,$78,$EB,$33,$E5,$2E,$EC,$33,$E5,$2E,$EC,$33,$E5,$26 ; $81F28A
    db $ED,$33,$E5,$26,$ED,$33,$E5,$26,$ED,$33,$E5,$65,$EE,$33,$E5,$E9 ; $81F29A
    db $EF,$33,$E5,$E9,$EF,$33,$E5,$E9,$EF,$33,$E5,$29,$F1,$33,$E5,$15 ; $81F2AA
    db $A3,$60,$00,$15,$A3,$60,$00,$E9,$A3,$60,$00,$BD,$A4,$60,$00,$91 ; $81F2BA
    db $A5,$60,$00,$65,$A6,$60,$00,$89,$AA,$60,$00,$5D,$AB,$60,$00,$31 ; $81F2CA
    db $AC,$60,$00,$05,$AD,$60,$00,$55,$B0,$60,$00,$29,$B1,$60,$00,$FD ; $81F2DA
    db $B1,$60,$00,$DA,$B2,$60,$00,$B7,$B3,$60,$00,$94,$B4,$60,$00,$5F ; $81F2EA
    db $B5,$40,$00,$F3,$B5,$60,$00,$C7,$B6,$60,$00,$92,$B7,$40,$00,$2F ; $81F2FA
    db $B8,$60,$00,$0C,$B9,$60,$00,$E0,$B9,$60,$00,$B4,$BA,$60,$00,$88 ; $81F30A
    db $BB,$60,$00,$65,$BC,$60,$00,$42,$BD,$60,$00,$1F,$BE,$60,$00,$FC ; $81F31A
    db $BE,$60,$00,$A9,$CD,$60,$00,$86,$CE,$60,$00,$63,$CF,$60,$00,$40 ; $81F32A
    db $D0,$60,$00,$1D,$D1,$60,$00,$FA,$D1,$60,$00,$FA,$D1,$60,$00,$FA ; $81F33A
    db $D1,$60,$00,$FA,$D1,$60,$00,$FA,$D1,$60,$00,$FA,$D1,$60,$00,$E8 ; $81F34A
    db $9E,$60,$00,$E8,$9E,$60,$00,$BC,$9F,$60,$00,$90,$A0,$60,$00,$64 ; $81F35A
    db $A1,$60,$00,$38,$A2,$60,$00,$39,$A7,$60,$00,$0D,$A8,$60,$00,$E1 ; $81F36A
    db $A8,$60,$00,$B5,$A9,$60,$00,$D9,$AD,$60,$00,$AD,$AE,$60,$00,$81 ; $81F37A
    db $AF,$60,$00,$D9,$BF,$60,$00,$B6,$C0,$60,$00,$93,$C1,$60,$00,$70 ; $81F38A
    db $C2,$60,$00,$4D,$C3,$60,$00,$2A,$C4,$60,$00,$07,$C5,$60,$00,$E4 ; $81F39A
    db $C5,$60,$00,$C1,$C6,$60,$00,$9E,$C7,$60,$00,$7B,$C8,$60,$00,$58 ; $81F3AA
    db $C9,$60,$00,$35,$CA,$60,$00,$12,$CB,$60,$00,$EF,$CB,$60,$00,$CC ; $81F3BA
    db $CC,$60,$00,$D7,$D2,$60,$00,$BD,$D3,$A0,$00,$23,$D5,$A0,$00,$92 ; $81F3CA
    db $D6,$C0,$00,$41,$D8,$C0,$00,$F0,$D9,$C0,$00,$A8,$DB,$C0,$00,$57 ; $81F3DA
    db $DD,$C0,$00,$06,$DF,$C0,$00,$B5,$E0,$C0,$00,$B5,$E0,$C0,$00,$C8 ; $81F3EA
    db $AC,$00,$21,$12,$1B,$00,$8E,$00,$00,$00,$00,$1E,$1A,$1E,$00,$86 ; $81F3FA
    db $00,$10,$00,$01,$1A,$22,$1A,$00,$76,$00,$01,$00,$01,$1A,$32,$1A ; $81F40A
    db $00,$66,$00,$03,$00,$01,$1E,$3E,$16,$00,$5A,$00,$05,$00,$00,$25 ; $81F41A
    db $33,$17,$00,$6D,$00,$07,$00,$00,$18,$42,$24,$00,$5E,$00,$17,$00 ; $81F42A
    db $80,$17,$46,$25,$00,$5A,$00,$08,$00,$00,$00,$00,$00,$08,$0C,$04 ; $81F43A
    db $08,$10,$18,$00,$10,$30,$20,$40,$60,$00,$04,$02,$0C,$0C,$00,$0C ; $81F44A
    db $10,$18,$00,$10,$20,$30,$00,$70,$00,$00,$02,$06,$04,$02,$04,$02 ; $81F45A
    db $04,$04,$03,$00,$0F,$01,$0E,$00,$1F,$03,$04,$07,$00,$07,$08,$07 ; $81F46A
    db $08,$00,$08,$07,$07,$0F,$0F,$1F,$1F,$00,$00,$00,$00,$00,$00,$80 ; $81F47A
    db $00,$00,$C0,$40,$80,$28,$D8,$00,$FC,$00,$00,$00,$00,$00,$00,$80 ; $81F48A
    db $00,$A0,$80,$B8,$80,$C0,$C0,$FC,$FC,$31,$CF,$89,$F7,$8A,$F3,$59 ; $81F49A
    db $A0,$26,$86,$8E,$06,$B7,$17,$DB,$5B,$48,$48,$7E,$7F,$7D,$7F,$7F ; $81F4AA
    db $7F,$79,$7F,$79,$7F,$68,$7F,$20,$7B,$00,$8A,$07,$C7,$C1,$41,$80 ; $81F4BA
    db $61,$90,$60,$40,$80,$10,$30,$A0,$50,$0A,$04,$87,$80,$81,$82,$C1 ; $81F4CA
    db $C0,$E0,$E0,$E0,$F0,$F0,$C0,$F0,$08,$81,$00,$00,$80,$00,$00,$00 ; $81F4DA
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$81,$00,$80,$00,$00,$00,$00 ; $81F4EA
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$E0,$20,$90,$30,$20 ; $81F4FA
    db $00,$50,$10,$00,$50,$00,$28,$08,$10,$C0,$20,$E0,$00,$F0,$00,$60 ; $81F50A
    db $10,$70,$00,$70,$08,$38,$00,$18,$00,$38,$38,$0C,$0C,$00,$08,$80 ; $81F51A
    db $00,$00,$00,$80,$80,$00,$80,$80,$80,$38,$00,$0C,$10,$08,$04,$00 ; $81F52A
    db $00,$00,$80,$80,$00,$80,$40,$80,$40,$60,$20,$60,$30,$30,$60,$70 ; $81F53A
    db $60,$70,$60,$50,$60,$20,$70,$70,$30,$30,$40,$20,$70,$20,$70,$60 ; $81F54A
    db $70,$60,$70,$40,$70,$20,$70,$30,$70,$04,$00,$04,$00,$18,$10,$00 ; $81F55A
    db $00,$10,$10,$20,$30,$10,$00,$30,$20,$04,$08,$04,$18,$1C,$00,$08 ; $81F56A
    db $10,$18,$20,$38,$00,$10,$20,$30,$40,$03,$1C,$09,$16,$02,$3D,$05 ; $81F57A
    db $3A,$36,$08,$3B,$03,$0B,$63,$45,$39,$1F,$1F,$1F,$1F,$3F,$3F,$3F ; $81F58A
    db $3F,$3F,$3F,$3C,$3F,$3C,$3F,$06,$07,$00,$FC,$84,$78,$CC,$30,$9C ; $81F59A
    db $40,$88,$64,$24,$C4,$40,$00,$00,$08,$FC,$FC,$F8,$F8,$F4,$F0,$FC ; $81F5AA
    db $F0,$FC,$F0,$EC,$E0,$C8,$C4,$88,$84,$40,$60,$28,$00,$68,$40,$28 ; $81F5BA
    db $40,$28,$40,$40,$48,$00,$40,$10,$40,$78,$00,$38,$40,$78,$00,$78 ; $81F5CA
    db $00,$78,$00,$78,$00,$70,$00,$70,$80,$90,$30,$48,$18,$00,$48,$08 ; $81F5DA
    db $20,$14,$04,$0E,$02,$09,$03,$02,$00,$F0,$08,$78,$00,$78,$04,$38 ; $81F5EA
    db $04,$1C,$02,$0E,$00,$0F,$00,$06,$01,$00,$00,$00,$00,$00,$00,$00 ; $81F5FA
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $81F60A
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$00,$18,$08,$18,$08,$10 ; $81F61A
    db $0C,$08,$0C,$0C,$06,$06,$07,$07,$03,$08,$10,$08,$18,$08,$18,$00 ; $81F62A
    db $1C,$08,$0C,$04,$0E,$06,$07,$03,$07,$10,$00,$30,$20,$60,$40,$20 ; $81F63A
    db $40,$C0,$40,$C0,$60,$60,$C0,$E0,$C0,$18,$20,$38,$40,$70,$00,$60 ; $81F64A
    db $00,$60,$80,$40,$E0,$40,$E0,$C0,$E0,$00,$00,$20,$20,$30,$30,$10 ; $81F65A
    db $20,$10,$20,$20,$40,$00,$40,$00,$40,$00,$00,$20,$00,$30,$40,$30 ; $81F66A
    db $40,$30,$40,$60,$00,$40,$80,$40,$80,$C8,$AC,$00,$24,$0E,$18,$00 ; $81F67A
    db $92,$00,$00,$00,$00,$21,$16,$1B,$00,$8A,$00,$10,$00,$01,$1A,$1E ; $81F68A
    db $1A,$00,$7A,$00,$01,$00,$01,$1A,$2E,$1A,$00,$6A,$00,$03,$00,$01 ; $81F69A
    db $1C,$3D,$18,$00,$5B,$00,$05,$00,$00,$17,$3F,$25,$00,$61,$00,$07 ; $81F6AA
    db $00,$00,$16,$47,$26,$00,$59,$00,$17,$00,$00,$17,$48,$25,$00,$58 ; $81F6BA
    db $00,$08,$00,$80,$26,$46,$16,$00,$5A,$00,$18,$00,$00,$00,$00,$00 ; $81F6CA
    db $04,$04,$0C,$0C,$06,$0E,$1C,$14,$00,$10,$00,$10,$00,$04,$00,$04 ; $81F6DA
    db $04,$08,$0C,$00,$0E,$10,$1C,$00,$18,$00,$10,$20,$00,$00,$00,$00 ; $81F6EA
    db $00,$00,$00,$00,$01,$01,$01,$01,$00,$01,$00,$01,$00,$00,$00,$01 ; $81F6FA
    db $00,$01,$00,$01,$01,$02,$01,$02,$01,$02,$01,$06,$40,$00,$40,$00 ; $81F70A
    db $80,$80,$00,$80,$80,$00,$80,$00,$00,$00,$40,$00,$60,$80,$40,$80 ; $81F71A
    db $C0,$00,$C0,$00,$80,$00,$80,$00,$80,$00,$80,$00,$11,$28,$17,$27 ; $81F72A
    db $53,$2D,$15,$6B,$60,$5F,$65,$DA,$47,$F8,$B6,$E6,$3F,$3F,$38,$3F ; $81F73A
    db $26,$27,$08,$08,$1F,$1F,$1F,$1F,$1F,$1F,$19,$1F,$C0,$10,$C0,$00 ; $81F74A
    db $00,$0C,$80,$00,$04,$84,$00,$80,$00,$C0,$00,$40,$F0,$C8,$F0,$C8 ; $81F75A
    db $9C,$80,$08,$04,$84,$80,$80,$80,$C0,$C0,$C0,$C0,$00,$80,$A0,$00 ; $81F76A
    db $A0,$00,$80,$00,$40,$00,$40,$00,$00,$00,$80,$00,$E0,$00,$E0,$00 ; $81F77A
    db $E0,$00,$C0,$00,$C0,$00,$C0,$00,$80,$00,$80,$00,$80,$A0,$60,$00 ; $81F78A
    db $20,$00,$10,$30,$28,$38,$38,$28,$10,$08,$18,$04,$E0,$00,$60,$90 ; $81F79A
    db $20,$50,$30,$40,$38,$00,$38,$00,$18,$00,$1C,$00,$05,$00,$0C,$08 ; $81F7AA
    db $02,$08,$0A,$00,$08,$00,$14,$10,$00,$10,$38,$20,$07,$08,$0E,$00 ; $81F7BA
    db $0E,$00,$0E,$10,$0C,$10,$1C,$20,$18,$20,$38,$00,$30,$20,$70,$60 ; $81F7CA
    db $50,$60,$70,$40,$60,$70,$30,$70,$38,$18,$10,$08,$30,$20,$60,$70 ; $81F7DA
    db $40,$70,$40,$70,$60,$70,$30,$70,$18,$38,$00,$18,$02,$00,$04,$04 ; $81F7EA
    db $00,$04,$0C,$08,$10,$18,$08,$10,$30,$20,$40,$60,$02,$04,$04,$08 ; $81F7FA
    db $04,$08,$0C,$10,$1C,$00,$18,$20,$38,$00,$70,$00,$03,$02,$05,$02 ; $81F80A
    db $08,$07,$08,$07,$15,$0A,$1E,$01,$10,$0F,$1F,$00,$03,$04,$00,$00 ; $81F81A
    db $0F,$0F,$0F,$0F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$80,$70,$00,$F8 ; $81F82A
    db $00,$F8,$00,$F8,$00,$F8,$00,$F0,$10,$F0,$28,$D8,$70,$70,$F8,$F8 ; $81F83A
    db $F8,$F8,$F8,$F8,$F8,$F8,$F0,$F0,$F0,$E0,$F8,$E0,$7B,$A3,$77,$27 ; $81F84A
    db $57,$27,$00,$61,$00,$20,$00,$20,$40,$60,$00,$60,$1C,$1F,$18,$1F ; $81F85A
    db $18,$1F,$79,$00,$38,$40,$38,$40,$78,$00,$78,$00,$C0,$20,$20,$20 ; $81F86A
    db $40,$20,$10,$30,$80,$10,$D0,$80,$28,$48,$20,$28,$E0,$E0,$E0,$C0 ; $81F87A
    db $E0,$10,$F0,$00,$F0,$08,$F0,$08,$78,$00,$38,$00,$00,$00,$00,$00 ; $81F88A
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $81F89A
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$14,$10,$0C ; $81F8AA
    db $1C,$0C,$10,$0E,$0E,$0E,$0E,$06,$06,$06,$06,$03,$1C,$00,$00,$1C ; $81F8BA
    db $0C,$1C,$00,$1E,$0E,$0E,$06,$0E,$06,$06,$02,$07,$08,$00,$18,$10 ; $81F8CA
    db $38,$30,$28,$30,$38,$20,$30,$38,$18,$38,$1C,$0C,$08,$10,$18,$10 ; $81F8DA
    db $30,$38,$20,$38,$20,$38,$30,$38,$18,$38,$0C,$1C,$40,$30,$70,$30 ; $81F8EA
    db $40,$38,$38,$38,$38,$18,$18,$18,$18,$0C,$08,$04,$00,$70,$30,$70 ; $81F8FA
    db $00,$78,$38,$38,$18,$38,$18,$18,$08,$1C,$00,$0C,$C8,$AC,$00,$24 ; $81F90A
    db $10,$18,$00,$90,$00,$00,$00,$00,$23,$18,$19,$00,$88,$00,$10,$00 ; $81F91A
    db $01,$1B,$20,$19,$00,$78,$00,$01,$00,$01,$1B,$30,$19,$00,$68,$00 ; $81F92A
    db $03,$00,$81,$19,$40,$1B,$00,$58,$00,$05,$00,$08,$08,$18,$18,$1C ; $81F93A
    db $14,$1E,$02,$14,$08,$04,$0C,$00,$08,$00,$10,$08,$00,$18,$00,$1C ; $81F94A
    db $00,$1E,$00,$1C,$00,$1C,$00,$18,$00,$10,$08,$00,$00,$00,$00,$01 ; $81F95A
    db $01,$04,$0D,$07,$1E,$0A,$3C,$0D,$30,$07,$38,$00,$00,$00,$00,$01 ; $81F96A
    db $00,$05,$02,$0F,$00,$2F,$20,$37,$30,$38,$38,$20,$40,$50,$90,$80 ; $81F97A
    db $20,$60,$20,$40,$40,$00,$80,$00,$80,$00,$80,$70,$00,$F0,$00,$E0 ; $81F98A
    db $00,$E0,$00,$C0,$00,$80,$00,$00,$00,$80,$80,$01,$1E,$0D,$3A,$0A ; $81F99A
    db $3F,$15,$2E,$0F,$36,$32,$0F,$22,$1D,$24,$1B,$07,$07,$21,$21,$20 ; $81F9AA
    db $20,$21,$21,$21,$21,$00,$00,$00,$00,$00,$00,$80,$80,$00,$00,$80 ; $81F9BA
    db $00,$00,$80,$00,$C0,$80,$40,$40,$00,$00,$00,$00,$80,$80,$80,$00 ; $81F9CA
    db $00,$80,$80,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$01,$01,$00,$01,$01 ; $81F9DA
    db $02,$06,$05,$0C,$0A,$08,$04,$08,$10,$20,$38,$01,$00,$01,$02,$03 ; $81F9EA
    db $04,$07,$08,$0E,$00,$0C,$10,$08,$10,$28,$30,$94,$44,$40,$54,$04 ; $81F9FA
    db $90,$14,$10,$08,$00,$00,$08,$0C,$08,$0C,$00,$DC,$00,$DC,$00,$9C ; $81FA0A
    db $00,$1C,$00,$0C,$00,$0C,$00,$0C,$00,$00,$0C,$00,$08,$08,$08,$00 ; $81FA1A
    db $00,$04,$04,$00,$14,$18,$18,$08,$18,$28,$28,$08,$04,$08,$04,$00 ; $81FA2A
    db $0C,$04,$08,$14,$08,$18,$00,$18,$00,$38,$00,$00,$3F,$0A,$35,$09 ; $81FA3A
    db $36,$01,$1E,$08,$17,$08,$11,$17,$08,$04,$14,$3F,$3F,$3F,$3F,$3F ; $81FA4A
    db $3F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1B,$1F,$00,$80,$80,$00,$00 ; $81FA5A
    db $80,$80,$00,$80,$00,$80,$00,$00,$00,$80,$80,$80,$80,$80,$80,$80 ; $81FA6A
    db $80,$80,$80,$80,$80,$80,$80,$80,$80,$00,$80,$05,$1A,$32,$24,$0C ; $81FA7A
    db $02,$00,$0A,$06,$02,$02,$06,$06,$06,$01,$02,$20,$20,$0F,$20,$0F ; $81FA8A
    db $00,$0F,$00,$07,$00,$07,$00,$07,$00,$03,$04,$80,$80,$40,$C0,$00 ; $81FA9A
    db $C0,$20,$E0,$E0,$A0,$C0,$A0,$00,$A0,$30,$90,$00,$C0,$C0,$00,$C0 ; $81FAAA
    db $20,$E0,$00,$E0,$00,$E0,$10,$E0,$10,$F0,$00,$38,$70,$70,$C0,$70 ; $81FABA
    db $E0,$60,$E0,$60,$E0,$60,$E0,$00,$60,$00,$20,$30,$78,$40,$F0,$60 ; $81FACA
    db $F0,$60,$E0,$60,$E0,$60,$E0,$00,$60,$00,$20,$0C,$04,$04,$0C,$1C ; $81FADA
    db $0C,$14,$0C,$16,$0C,$0B,$06,$07,$03,$03,$00,$04,$0C,$04,$0C,$0C ; $81FAEA
    db $1C,$04,$1C,$04,$1E,$02,$0F,$03,$07,$00,$03,$C8,$AC,$00,$21,$10 ; $81FAFA
    db $1B,$00,$90,$00,$00,$00,$00,$21,$18,$1B,$00,$88,$00,$10,$00,$01 ; $81FB0A
    db $1A,$20,$1A,$00,$78,$00,$01,$00,$01,$1A,$30,$1A,$00,$68,$00,$03 ; $81FB1A
    db $00,$01,$1A,$40,$1A,$00,$58,$00,$05,$00,$80,$24,$4B,$18,$00,$55 ; $81FB2A
    db $00,$07,$00,$14,$14,$10,$1C,$18,$10,$1C,$10,$08,$14,$04,$04,$08 ; $81FB3A
    db $04,$04,$06,$14,$00,$1C,$00,$1C,$00,$1C,$00,$1C,$00,$0C,$00,$0C ; $81FB4A
    db $00,$06,$00,$00,$00,$00,$00,$00,$00,$03,$07,$01,$0D,$02,$1F,$02 ; $81FB5A
    db $19,$07,$1A,$00,$00,$00,$00,$00,$01,$03,$00,$09,$0A,$1B,$18,$1D ; $81FB6A
    db $1C,$1C,$1E,$28,$20,$20,$40,$20,$B0,$80,$40,$00,$40,$40,$40,$40 ; $81FB7A
    db $00,$C0,$00,$38,$40,$60,$90,$F0,$00,$C0,$20,$C0,$00,$C0,$00,$80 ; $81FB8A
    db $00,$80,$00,$07,$18,$02,$1D,$08,$17,$06,$39,$05,$38,$09,$36,$2E ; $81FB9A
    db $11,$16,$01,$1B,$1B,$1C,$1C,$1F,$1F,$3F,$3F,$3E,$3E,$3E,$3E,$3C ; $81FBAA
    db $3C,$1C,$1C,$00,$00,$00,$80,$80,$40,$40,$C0,$80,$C0,$C0,$80,$00 ; $81FBBA
    db $C0,$40,$C0,$C0,$C0,$40,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $81FBCA
    db $00,$00,$00,$02,$00,$0C,$0A,$04,$08,$06,$0A,$08,$0A,$0A,$08,$06 ; $81FBDA
    db $08,$0A,$0C,$06,$08,$0E,$00,$0C,$02,$0E,$00,$0E,$00,$0E,$00,$0E ; $81FBEA
    db $00,$08,$0E,$34,$24,$08,$14,$1C,$10,$0C,$00,$04,$08,$0C,$08,$0C ; $81FBFA
    db $08,$0C,$08,$3C,$00,$1C,$00,$1C,$00,$0C,$10,$0C,$10,$0C,$10,$0C ; $81FC0A
    db $00,$0C,$00,$30,$20,$20,$30,$30,$30,$70,$30,$50,$38,$38,$18,$38 ; $81FC1A
    db $1C,$1C,$0C,$30,$20,$20,$30,$30,$30,$30,$70,$10,$78,$18,$38,$18 ; $81FC2A
    db $3C,$0C,$1C,$06,$06,$04,$04,$04,$04,$04,$04,$04,$04,$06,$0E,$08 ; $81FC3A
    db $0E,$14,$18,$06,$00,$04,$02,$04,$02,$04,$02,$04,$02,$0E,$00,$0E ; $81FC4A
    db $00,$1C,$00,$00,$1E,$03,$1C,$03,$1C,$12,$0C,$18,$06,$0D,$01,$03 ; $81FC5A
    db $0C,$05,$09,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$0E,$0F,$0F ; $81FC6A
    db $0F,$0E,$0F,$80,$40,$00,$C0,$80,$40,$00,$40,$80,$40,$00,$40,$C0 ; $81FC7A
    db $00,$40,$40,$40,$40,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0 ; $81FC8A
    db $C0,$80,$C0,$09,$0F,$19,$1E,$1E,$14,$17,$1A,$05,$0B,$0B,$09,$03 ; $81FC9A
    db $01,$02,$01,$14,$1C,$04,$1C,$1F,$00,$1F,$00,$0F,$00,$0F,$00,$07 ; $81FCAA
    db $08,$07,$08,$C0,$40,$C0,$40,$60,$20,$10,$30,$80,$10,$58,$88,$20 ; $81FCBA
    db $48,$14,$24,$00,$00,$40,$00,$E0,$00,$F0,$00,$F0,$00,$F8,$00,$78 ; $81FCCA
    db $00,$3C,$00,$1A,$0C,$10,$1C,$18,$1C,$1C,$1C,$1C,$0C,$04,$0C,$0A ; $81FCDA
    db $06,$06,$00,$08,$1E,$10,$1C,$18,$1C,$1C,$1C,$0C,$1C,$04,$0C,$02 ; $81FCEA
    db $0E,$00,$06,$0C,$08,$0C,$08,$04,$08,$0C,$08,$08,$0C,$0C,$0C,$1C ; $81FCFA
    db $0C,$14,$0E,$0C,$00,$0C,$00,$0C,$00,$0C,$08,$08,$0C,$0C,$0C,$0C ; $81FD0A
    db $1C,$04,$1E,$08,$00,$18,$10,$38,$30,$28,$30,$38,$20,$30,$38,$18 ; $81FD1A
    db $38,$1C,$0C,$08,$10,$18,$10,$30,$38,$20,$38,$20,$38,$30,$38,$18 ; $81FD2A
    db $38,$0C,$1C,$C8,$AC,$00,$23,$11,$19,$00,$8F,$00,$00,$00,$00,$22 ; $81FD3A
    db $19,$1A,$00,$87,$00,$10,$00,$01,$1A,$21,$1A,$00,$77,$00,$01,$00 ; $81FD4A
    db $01,$1B,$31,$19,$00,$67,$00,$03,$00,$01,$24,$3C,$10,$00,$5C,$00 ; $81FD5A
    db $05,$00,$00,$1B,$41,$21,$00,$5F,$00,$07,$00,$00,$19,$49,$23,$00 ; $81FD6A
    db $57,$00,$17,$00,$80,$19,$4B,$23,$00,$55,$00,$08,$00,$00,$20,$10 ; $81FD7A
    db $30,$30,$90,$20,$50,$10,$08,$18,$08,$00,$10,$04,$04,$20,$00,$30 ; $81FD8A
    db $00,$B0,$00,$70,$00,$38,$00,$18,$00,$10,$08,$04,$08,$00,$00,$00 ; $81FD9A
    db $00,$00,$00,$02,$1C,$15,$1A,$0D,$74,$12,$61,$23,$40,$00,$00,$00 ; $81FDAA
    db $00,$00,$00,$1D,$01,$03,$03,$7B,$7F,$7F,$7F,$7F,$7F,$14,$00,$30 ; $81FDBA
    db $20,$48,$60,$20,$C0,$D0,$80,$20,$C0,$00,$E0,$20,$C0,$1C,$20,$38 ; $81FDCA
    db $40,$78,$80,$70,$00,$30,$80,$C0,$C0,$E0,$E0,$E0,$E0,$6C,$17,$00 ; $81FDDA
    db $7F,$20,$DF,$38,$C7,$0E,$F1,$36,$C1,$00,$41,$74,$35,$11,$11,$7E ; $81FDEA
    db $7E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$7F,$4B,$7F,$00,$C0,$40 ; $81FDFA
    db $80,$00,$C0,$80,$40,$A0,$E0,$B0,$E0,$70,$F0,$40,$F0,$C0,$C0,$00 ; $81FE0A
    db $00,$80,$80,$00,$00,$00,$00,$00,$00,$10,$00,$10,$00,$46,$02,$13 ; $81FE1A
    db $01,$04,$01,$02,$00,$00,$00,$00,$01,$00,$00,$00,$00,$7E,$00,$1F ; $81FE2A
    db $00,$07,$00,$03,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00 ; $81FE3A
    db $00,$80,$80,$80,$C0,$00,$80,$00,$40,$60,$20,$50,$30,$00,$00,$00 ; $81FE4A
    db $00,$80,$00,$C0,$00,$80,$40,$C0,$20,$E0,$00,$70,$00,$40,$20,$50 ; $81FE5A
    db $30,$70,$10,$00,$50,$00,$50,$30,$50,$00,$60,$60,$20,$60,$10,$70 ; $81FE6A
    db $00,$70,$00,$70,$00,$70,$00,$70,$00,$60,$00,$60,$00,$10,$38,$10 ; $81FE7A
    db $38,$00,$78,$70,$08,$30,$08,$18,$04,$0C,$00,$00,$00,$10,$38,$10 ; $81FE8A
    db $38,$00,$78,$00,$78,$00,$38,$00,$1C,$00,$0C,$00,$00,$00,$00,$04 ; $81FE9A
    db $04,$00,$04,$06,$02,$00,$02,$0A,$08,$06,$08,$1C,$10,$00,$06,$04 ; $81FEAA
    db $02,$04,$02,$06,$00,$06,$00,$0E,$00,$0E,$00,$1C,$00,$0E,$01,$38 ; $81FEBA
    db $07,$23,$3C,$27,$38,$00,$1F,$23,$1C,$1F,$20,$0C,$1C,$3F,$3F,$3F ; $81FECA
    db $3F,$1F,$3F,$1F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$13,$1F,$00,$C0,$20 ; $81FEDA
    db $A0,$00,$E0,$60,$80,$A0,$20,$80,$80,$40,$20,$80,$60,$E0,$E0,$C0 ; $81FEEA
    db $E0,$E0,$E0,$E0,$E0,$C0,$E0,$60,$E0,$E0,$E0,$E0,$E0,$3D,$3C,$47 ; $81FEFA
    db $02,$44,$00,$50,$04,$48,$10,$78,$10,$78,$10,$48,$20,$42,$7E,$7C ; $81FF0A
    db $02,$7C,$00,$7C,$00,$78,$00,$78,$00,$78,$00,$68,$10,$D8,$48,$9C ; $81FF1A
    db $04,$86,$02,$23,$01,$09,$00,$02,$00,$01,$00,$00,$00,$38,$00,$7C ; $81FF2A
    db $00,$FE,$00,$3F,$00,$0F,$00,$03,$00,$01,$00,$00,$00,$00,$00,$00 ; $81FF3A
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $81FF4A
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$10,$10 ; $81FF5A
    db $30,$10,$38,$17,$1F,$0E,$1F,$02,$0C,$0C,$00,$00,$00,$20,$10,$10 ; $81FF6A
    db $30,$10,$38,$17,$1F,$0E,$1F,$00,$0E,$00,$0C,$00,$00,$10,$18,$00 ; $81FF7A
    db $18,$10,$38,$10,$38,$00,$78,$70,$08,$30,$08,$18,$04,$10,$18,$00 ; $81FF8A
    db $18,$10,$38,$10,$38,$00,$78,$00,$78,$00,$38,$00,$1C,$40,$30,$70 ; $81FF9A
    db $30,$40,$38,$38,$38,$38,$18,$18,$18,$18,$0C,$08,$04,$00,$70,$30 ; $81FFAA
    db $70,$00,$78,$38,$38,$18,$38,$18,$18,$08,$1C,$00,$0C,$FF,$FF,$00 ; $81FFBA
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $81FFCA
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $81FFDA
    db $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00 ; $81FFEA
    db $00,$FF,$FF,$00,$00,$FF                                         ; $81FFFA
