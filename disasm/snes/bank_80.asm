; bank $80  (file offset $000000)
org $808000

L_808000:
    REP #$30                        ; $808000  C2 30        mx
L_808002:
    REP #$20                        ; $808002  C2 20        MX
L_808004:
    SEP #$10                        ; $808004  E2 10        MX
L_808006:
    STZ $4200                       ; $808006  9C 00 42     Mx
L_808009:
    LDA #$008F                      ; $808009  A9 8F 00     Mx
L_80800C:
    STA $2100                       ; $80800C  8D 00 21     Mx
L_80800F:
    STZ $00CA                       ; $80800F  9C CA 00     Mx
L_808012:
    STZ $0B4A                       ; $808012  9C 4A 0B     Mx
L_808015:
    STZ $1CCB                       ; $808015  9C CB 1C     Mx
L_808018:
    STZ $1CC9                       ; $808018  9C C9 1C     Mx
L_80801B:
    SEP #$30                        ; $80801B  E2 30        Mx
L_80801D:
    JSR L_80F923                    ; $80801D  20 23 F9     mx
L_808020:
    JSL $00F8CD                     ; $808020  22 CD F8 00  mx
    JSR L_80FA10                    ; $808024  20 10 FA     mx
    JSL $3DFA9C                     ; $808027  22 9C FA 3D  mx
    REP #$20                        ; $80802B  C2 20        mx
    SEP #$10                        ; $80802D  E2 10        Mx
    JSL $02DBC9                     ; $80802F  22 C9 DB 02  Mx
    REP #$20                        ; $808033  C2 20        Mx
    SEP #$10                        ; $808035  E2 10        Mx
    JML L_80803B                    ; $808037  5C 3B 80 80  Mx
L_80803B:
    PHK                             ; $80803B  4B           Mx
L_80803C:
    PLB                             ; $80803C  AB           Mx
L_80803D:
    LDX #$01                        ; $80803D  A2 01        Mx
L_80803F:
    STX $420D                       ; $80803F  8E 0D 42     Mx
L_808042:
    LDA #$7349                      ; $808042  A9 49 73     Mx
L_808045:
    STA $1D56                       ; $808045  8D 56 1D     Mx
L_808048:
    LDA #$1563                      ; $808048  A9 63 15     Mx
L_80804B:
    STA $1D58                       ; $80804B  8D 58 1D     Mx
L_80804E:
    LDA #$1FEA                      ; $80804E  A9 EA 1F     Mx
L_808051:
    STA $1D52                       ; $808051  8D 52 1D     Mx
L_808054:
    LDA #$9FA1                      ; $808054  A9 A1 9F     Mx
L_808057:
    STA $1D54                       ; $808057  8D 54 1D     Mx
L_80805A:
    REP #$20                        ; $80805A  C2 20        Mx
L_80805C:
    LDA $0B4A                       ; $80805C  AD 4A 0B     Mx
L_80805F:
    CMP #$0002                      ; $80805F  C9 02 00     Mx
L_808062:
    BCS L_80809A                    ; $808062  B0 36        Mx
L_808064:
    JSL L_82DC9F                    ; $808064  22 9F DC 82  Mx
L_808068:
    REP #$30                        ; $808068  C2 30        Mx
L_80806A:
    JSL L_BDFE53                    ; $80806A  22 53 FE BD  MX
L_80806E:
    JSL L_BDFB7C                    ; $80806E  22 7C FB BD  MX
L_808072:
    SEP #$10                        ; $808072  E2 10        MX
L_808074:
    REP #$20                        ; $808074  C2 20        Mx
L_808076:
    LDA #$0000                      ; $808076  A9 00 00     Mx
L_808079:
    JSL L_BDFD8F                    ; $808079  22 8F FD BD  Mx
L_80807D:
    JSL L_BDFD74                    ; $80807D  22 74 FD BD  Mx
L_808081:
    LDA #$0001                      ; $808081  A9 01 00     Mx
L_808084:
    STA $165F                       ; $808084  8D 5F 16     Mx
L_808087:
    LDA #$0000                      ; $808087  A9 00 00     Mx
L_80808A:
    JSL L_8A801C                    ; $80808A  22 1C 80 8A  Mx
    LDA $001665                     ; $80808E  AF 65 16 00  Mx
    CMP #$FFFF                      ; $808092  C9 FF FF     Mx
    BEQ L_8080CD                    ; $808095  F0 36        Mx
    STZ $0B4A                       ; $808097  9C 4A 0B     Mx
L_80809A:
    JSL L_808136                    ; $80809A  22 36 81 80  Mx
    LDA $0B4A                       ; $80809E  AD 4A 0B     Mx
    CMP #$0002                      ; $8080A1  C9 02 00     Mx
    BCS L_8080AB                    ; $8080A4  B0 05        Mx
    LDA $0B4E                       ; $8080A6  AD 4E 0B     Mx
    BNE L_808087                    ; $8080A9  D0 DC        Mx
L_8080AB:
    LDA $0B4A                       ; $8080AB  AD 4A 0B     Mx
    CMP #$0002                      ; $8080AE  C9 02 00     Mx
    BCC L_8080C8                    ; $8080B1  90 15        Mx
    INC                             ; $8080B3  1A           Mx
    STA $0B4A                       ; $8080B4  8D 4A 0B     Mx
    CMP #$000C                      ; $8080B7  C9 0C 00     Mx
    BCC L_80809A                    ; $8080BA  90 DE        Mx
    STZ $0B4A                       ; $8080BC  9C 4A 0B     Mx
    LDA #$0001                      ; $8080BF  A9 01 00     Mx
    TSB $1D39                       ; $8080C2  0C 39 1D     Mx
    JMP L_80805C                    ; $8080C5  4C 5C 80     Mx
L_8080C8:
    LDA #$000B                      ; $8080C8  A9 0B 00     Mx
    BRA L_80808A                    ; $8080CB  80 BD        Mx
L_8080CD:
    JSR L_80817B                    ; $8080CD  20 7B 81     Mx
    REP #$20                        ; $8080D0  C2 20        Mx
    SEP #$10                        ; $8080D2  E2 10        Mx
    LDA #$0021                      ; $8080D4  A9 21 00     Mx
    JSL L_8A801C                    ; $8080D7  22 1C 80 8A  Mx
    JSR L_80818B                    ; $8080DB  20 8B 81     Mx
    REP #$20                        ; $8080DE  C2 20        Mx
    SEP #$10                        ; $8080E0  E2 10        Mx
    LDA #$0000                      ; $8080E2  A9 00 00     Mx
    STA $1CD1                       ; $8080E5  8D D1 1C     Mx
    LDA #$0029                      ; $8080E8  A9 29 00     Mx
    JSL L_8A801C                    ; $8080EB  22 1C 80 8A  Mx
    JSR L_80818B                    ; $8080EF  20 8B 81     Mx
L_8080F2:
    REP #$20                        ; $8080F2  C2 20        Mx
    SEP #$10                        ; $8080F4  E2 10        Mx
    LDA #$0021                      ; $8080F6  A9 21 00     Mx
    JSL L_8A801C                    ; $8080F9  22 1C 80 8A  Mx
    JSR L_80818B                    ; $8080FD  20 8B 81     Mx
    REP #$20                        ; $808100  C2 20        Mx
    SEP #$10                        ; $808102  E2 10        Mx
    LDA $0CB5                       ; $808104  AD B5 0C     Mx
    CMP $0CBB                       ; $808107  CD BB 0C     Mx
    BNE L_80811F                    ; $80810A  D0 13        Mx
    LDA $0CB7                       ; $80810C  AD B7 0C     Mx
    CMP $0CBD                       ; $80810F  CD BD 0C     Mx
    BNE L_80811F                    ; $808112  D0 0B        Mx
    LDA $0CB9                       ; $808114  AD B9 0C     Mx
    CMP $0CBF                       ; $808117  CD BF 0C     Mx
    BNE L_80811F                    ; $80811A  D0 03        Mx
    JMP L_8080F2                    ; $80811C  4C F2 80     Mx
L_80811F:
    LDA #$0001                      ; $80811F  A9 01 00     Mx
    STA $1CD1                       ; $808122  8D D1 1C     Mx
    LDA #$0024                      ; $808125  A9 24 00     Mx
    JSL L_8A801C                    ; $808128  22 1C 80 8A  Mx
    LDA #$000E                      ; $80812C  A9 0E 00     Mx
    JSL L_8A801C                    ; $80812F  22 1C 80 8A  Mx
    JMP L_80805C                    ; $808133  4C 5C 80     Mx
L_808136:
    LDA $0B4A                       ; $808136  AD 4A 0B     Mx
    BNE L_808141                    ; $808139  D0 06        Mx
    LDA #$0001                      ; $80813B  A9 01 00     Mx
    STA $0B4A                       ; $80813E  8D 4A 0B     Mx
L_808141:
    STA $165F                       ; $808141  8D 5F 16     Mx
    LDA #$0708                      ; $808144  A9 08 07     Mx
    STA $0B4C                       ; $808147  8D 4C 0B     Mx
    JSR L_80817B                    ; $80814A  20 7B 81     Mx
    LDA #$0002                      ; $80814D  A9 02 00     Mx
    STA $1C5D                       ; $808150  8D 5D 1C     Mx
    SEP #$20                        ; $808153  E2 20        Mx
    STZ $420C                       ; $808155  9C 0C 42     mx
    PHA                             ; $808158  48           mx
L_808159:
    LDA $4212                       ; $808159  AD 12 42     mx
    BMI L_808159                    ; $80815C  30 FB        mx
    PLA                             ; $80815E  68           mx
    STZ $4200                       ; $80815F  9C 00 42     mx
    LDA #$8F                        ; $808162  A9 8F        mx
    STA $2100                       ; $808164  8D 00 21     mx
    REP #$20                        ; $808167  C2 20        mx
    STZ $1139                       ; $808169  9C 39 11     Mx
    STZ $00CA                       ; $80816C  9C CA 00     Mx
    LDA $0B4A                       ; $80816F  AD 4A 0B     Mx
    CMP #$0002                      ; $808172  C9 02 00     Mx
    BCS L_80817A                    ; $808175  B0 03        Mx
    STZ $0B4A                       ; $808177  9C 4A 0B     Mx
L_80817A:
    RTL                             ; $80817A  6B           Mx
L_80817B:
    SEP #$20                        ; $80817B  E2 20        Mx
    STZ $4200                       ; $80817D  9C 00 42     mx
    LDA #$8F                        ; $808180  A9 8F        mx
    STA $2100                       ; $808182  8D 00 21     mx
    REP #$20                        ; $808185  C2 20        mx
    JSL L_A7F641                    ; $808187  22 41 F6 A7  Mx
L_80818B:
    SEP #$20                        ; $80818B  E2 20        Mx
    PHA                             ; $80818D  48           mx
L_80818E:
    LDA $4212                       ; $80818E  AD 12 42     mx
    BMI L_80818E                    ; $808191  30 FB        mx
    PLA                             ; $808193  68           mx
    STZ $4200                       ; $808194  9C 00 42     mx
    LDA #$8F                        ; $808197  A9 8F        mx
    STA $2100                       ; $808199  8D 00 21     mx
    REP #$20                        ; $80819C  C2 20        mx
    JSL L_A7FA92                    ; $80819E  22 92 FA A7  Mx
    REP #$30                        ; $8081A2  C2 30        Mx
    JSL L_80F04F                    ; $8081A4  22 4F F0 80  MX
    SEP #$10                        ; $8081A8  E2 10        MX
    JSL L_82DBA4                    ; $8081AA  22 A4 DB 82  Mx
    JSR L_80D949                    ; $8081AE  20 49 D9     Mx
    JSR L_8089EF                    ; $8081B1  20 EF 89     Mx
    JSL L_A7F223                    ; $8081B4  22 23 F2 A7  Mx
    JSL L_AAF78B                    ; $8081B8  22 8B F7 AA  Mx
    JSR L_80B1C9                    ; $8081BC  20 C9 B1     Mx
    REP #$10                        ; $8081BF  C2 10        Mx
    JSL L_B1F769                    ; $8081C1  22 69 F7 B1  MX
    STZ $0014                       ; $8081C5  9C 14 00     MX
    STZ $0016                       ; $8081C8  9C 16 00     MX
    STZ $0018                       ; $8081CB  9C 18 00     MX
    STZ $001A                       ; $8081CE  9C 1A 00     MX
    STZ $001C                       ; $8081D1  9C 1C 00     MX
    STZ $001E                       ; $8081D4  9C 1E 00     MX
    LDA #$0014                      ; $8081D7  A9 14 00     MX
    STA $0010                       ; $8081DA  8D 10 00     MX
    LDA #$0016                      ; $8081DD  A9 16 00     MX
    STA $0012                       ; $8081E0  8D 12 00     MX
    JSL L_A7EAAC                    ; $8081E3  22 AC EA A7  MX
    JSL L_A7EA46                    ; $8081E7  22 46 EA A7  MX
    JSL L_A7E977                    ; $8081EB  22 77 E9 A7  MX
    SEP #$10                        ; $8081EF  E2 10        MX
    STZ $0C3B                       ; $8081F1  9C 3B 0C     Mx
    JSR L_80A6C8                    ; $8081F4  20 C8 A6     Mx
    JSR L_80A8B1                    ; $8081F7  20 B1 A8     Mx
    JSR L_80AD7E                    ; $8081FA  20 7E AD     Mx
    LDA #$01F0                      ; $8081FD  A9 F0 01     Mx
    STA $0BBB                       ; $808200  8D BB 0B     Mx
    LDA #$0190                      ; $808203  A9 90 01     Mx
    STA $0BBD                       ; $808206  8D BD 0B     Mx
    SEP #$30                        ; $808209  E2 30        Mx
    PHA                             ; $80820B  48           mx
L_80820C:
    LDA $4212                       ; $80820C  AD 12 42     mx
    BPL L_80820C                    ; $80820F  10 FB        mx
    PLA                             ; $808211  68           mx
    PHA                             ; $808212  48           mx
L_808213:
    LDA $4212                       ; $808213  AD 12 42     mx
    BMI L_808213                    ; $808216  30 FB        mx
    PLA                             ; $808218  68           mx
    REP #$20                        ; $808219  C2 20        mx
    STZ $0CE9                       ; $80821B  9C E9 0C     Mx
    STZ $0CFB                       ; $80821E  9C FB 0C     Mx
    STZ $0CFD                       ; $808221  9C FD 0C     Mx
    STZ $1139                       ; $808224  9C 39 11     Mx
    STZ $112B                       ; $808227  9C 2B 11     Mx
    LDX #$80                        ; $80822A  A2 80        Mx
    STX $011C                       ; $80822C  8E 1C 01     Mx
    LDX #$81                        ; $80822F  A2 81        Mx
    STX $4200                       ; $808231  8E 00 42     Mx
    STZ $112B                       ; $808234  9C 2B 11     Mx
    STZ $15E9                       ; $808237  9C E9 15     Mx
    STZ $1607                       ; $80823A  9C 07 16     Mx
    LDX #$00                        ; $80823D  A2 00        Mx
    STX $0104                       ; $80823F  8E 04 01     Mx
L_808242:
    LDX $0104                       ; $808242  AE 04 01     Mx
    BEQ L_808242                    ; $808245  F0 FB        Mx
L_808247:
    LDX #$00                        ; $808247  A2 00        Mx
    STX $0104                       ; $808249  8E 04 01     Mx
L_80824C:
    LDX $0104                       ; $80824C  AE 04 01     Mx
    BEQ L_80824C                    ; $80824F  F0 FB        Mx
    LDA $0C3F                       ; $808251  AD 3F 0C     Mx
    BEQ L_808259                    ; $808254  F0 03        Mx
    DEC $0C3F                       ; $808256  CE 3F 0C     Mx
L_808259:
    LDA #$0001                      ; $808259  A9 01 00     Mx
    STA $112B                       ; $80825C  8D 2B 11     Mx
    LDA $0006                       ; $80825F  AD 06 00     Mx
    AND #$0003                      ; $808262  29 03 00     Mx
    STA $00BE                       ; $808265  8D BE 00     Mx
    AND #$0001                      ; $808268  29 01 00     Mx
    STA $00C0                       ; $80826B  8D C0 00     Mx
    JSR L_80DD40                    ; $80826E  20 40 DD     Mx
    LDA $1C4F                       ; $808271  AD 4F 1C     Mx  password_work
    BMI L_80827F                    ; $808274  30 09        Mx
    BNE L_80827C                    ; $808276  D0 04        Mx
    JSL $2AFC46                     ; $808278  22 46 FC 2A  Mx
L_80827C:
    DEC $1C4F                       ; $80827C  CE 4F 1C     Mx  password_work
L_80827F:
    JSL L_A7DB9F                    ; $80827F  22 9F DB A7  Mx
    JSL L_9A8000                    ; $808283  22 00 80 9A  Mx
    JSR L_808884                    ; $808287  20 84 88     Mx
    JSL L_9ABCAE                    ; $80828A  22 AE BC 9A  Mx
    JSR L_80D957                    ; $80828E  20 57 D9     Mx
    JSR L_80B219                    ; $808291  20 19 B2     Mx
    JSR L_80A909                    ; $808294  20 09 A9     Mx
    JSL L_A7EC8F                    ; $808297  22 8F EC A7  Mx
    JSR L_80B266                    ; $80829B  20 66 B2     Mx
    JSR L_80CC50                    ; $80829E  20 50 CC     Mx
    LDA $1615                       ; $8082A1  AD 15 16     Mx
    BEQ L_8082B4                    ; $8082A4  F0 0E        Mx
    LDA $1617                       ; $8082A6  AD 17 16     Mx
    BEQ L_8082B1                    ; $8082A9  F0 06        Mx
    DEC                             ; $8082AB  3A           Mx
    STA $1617                       ; $8082AC  8D 17 16     Mx
    BNE L_8082B4                    ; $8082AF  D0 03        Mx
L_8082B1:
    STZ $1615                       ; $8082B1  9C 15 16     Mx
L_8082B4:
    LDA $0CCB                       ; $8082B4  AD CB 0C     Mx
    BNE L_80830F                    ; $8082B7  D0 56        Mx
    LDA $0CC9                       ; $8082B9  AD C9 0C     Mx
    BNE L_80830F                    ; $8082BC  D0 51        Mx
    LDA $1607                       ; $8082BE  AD 07 16     Mx
    BEQ L_8082CA                    ; $8082C1  F0 07        Mx
    LDA $0CC9                       ; $8082C3  AD C9 0C     Mx
    BEQ L_8082DB                    ; $8082C6  F0 13        Mx
    BRA L_80830F                    ; $8082C8  80 45        Mx
L_8082CA:
    LDA #$0001                      ; $8082CA  A9 01 00     Mx
    STA $160B                       ; $8082CD  8D 0B 16     Mx
    LDA #$0001                      ; $8082D0  A9 01 00     Mx
    STA $1609                       ; $8082D3  8D 09 16     Mx
    STA $1607                       ; $8082D6  8D 07 16     Mx
    BRA L_80830F                    ; $8082D9  80 34        Mx
L_8082DB:
    LDA $0B50                       ; $8082DB  AD 50 0B     Mx
    BNE L_80830F                    ; $8082DE  D0 2F        Mx
    LDA $0BDD                       ; $8082E0  AD DD 0B     Mx
    CMP #$001E                      ; $8082E3  C9 1E 00     Mx
    BCS L_8082F3                    ; $8082E6  B0 0B        Mx
L_8082E8:
    LDA $1341                       ; $8082E8  AD 41 13     Mx
    CMP #$0002                      ; $8082EB  C9 02 00     Mx
    BEQ L_80830F                    ; $8082EE  F0 1F        Mx
    JMP L_8083B8                    ; $8082F0  4C B8 83     Mx
L_8082F3:
    LDA $0C19                       ; $8082F3  AD 19 0C     Mx
    BEQ L_80830F                    ; $8082F6  F0 17        Mx
    LDY #$32                        ; $8082F8  A0 32        Mx
    LDA ($CC),Y                     ; $8082FA  B1 CC        Mx
    CMP #$000A                      ; $8082FC  C9 0A 00     Mx
    BCC L_808307                    ; $8082FF  90 06        Mx
    LDY #$08                        ; $808301  A0 08        Mx
    LDA ($CC),Y                     ; $808303  B1 CC        Mx
    BEQ L_80830F                    ; $808305  F0 08        Mx
L_808307:
    LDY #$3E                        ; $808307  A0 3E        Mx
    LDA ($CC),Y                     ; $808309  B1 CC        Mx
    BEQ L_8082E8                    ; $80830B  F0 DB        Mx
    BMI L_8082E8                    ; $80830D  30 D9        Mx
L_80830F:
    LDA $0B4A                       ; $80830F  AD 4A 0B     Mx
    BNE L_808317                    ; $808312  D0 03        Mx
    JSR L_8086CF                    ; $808314  20 CF 86     Mx
L_808317:
    LDA $0B4A                       ; $808317  AD 4A 0B     Mx
    BEQ L_808379                    ; $80831A  F0 5D        Mx
    DEC $0B4C                       ; $80831C  CE 4C 0B     Mx
    LDA $0B4C                       ; $80831F  AD 4C 0B     Mx
    BNE L_808327                    ; $808322  D0 03        Mx
    JMP L_8083B7                    ; $808324  4C B7 83     Mx
L_808327:
    CMP #$0014                      ; $808327  C9 14 00     Mx
    BPL L_808334                    ; $80832A  10 08        Mx
    LDA #$FFFF                      ; $80832C  A9 FF FF     Mx
    STA $1139                       ; $80832F  8D 39 11     Mx
    BRA L_808381                    ; $808332  80 4D        Mx
L_808334:
    LDA $0B4A                       ; $808334  AD 4A 0B     Mx
    CMP #$0002                      ; $808337  C9 02 00     Mx
    BCS L_808379                    ; $80833A  B0 3D        Mx
    STZ $0B4E                       ; $80833C  9C 4E 0B     Mx
    LDA $011C                       ; $80833F  AD 1C 01     Mx
    AND #$000F                      ; $808342  29 0F 00     Mx
    CMP #$000F                      ; $808345  C9 0F 00     Mx
    BNE L_808379                    ; $808348  D0 2F        Mx
    LDA $1669                       ; $80834A  AD 69 16     Mx
    ORA $166B                       ; $80834D  0D 6B 16     Mx
    ORA $166D                       ; $808350  0D 6D 16     Mx
    ORA $166F                       ; $808353  0D 6F 16     Mx
    BIT #$D0C0                      ; $808356  89 C0 D0     Mx
    BEQ L_808379                    ; $808359  F0 1E        Mx
    BIT #$1000                      ; $80835B  89 00 10     Mx
    BEQ L_808366                    ; $80835E  F0 06        Mx
    LDA #$0001                      ; $808360  A9 01 00     Mx
    STA $0B4E                       ; $808363  8D 4E 0B     Mx
L_808366:
    LDA #$0014                      ; $808366  A9 14 00     Mx
    STA $0B4C                       ; $808369  8D 4C 0B     Mx
    PHA                             ; $80836C  48           Mx
    PHX                             ; $80836D  DA           Mx
    PHY                             ; $80836E  5A           Mx
    LDA #$0045                      ; $80836F  A9 45 00     Mx
    JSL L_BDFE18                    ; $808372  22 18 FE BD  Mx
    PLY                             ; $808376  7A           Mx
    PLX                             ; $808377  FA           Mx
    PLA                             ; $808378  68           Mx
L_808379:
    LDA $1341                       ; $808379  AD 41 13     Mx
    CMP #$0002                      ; $80837C  C9 02 00     Mx
    BNE L_80838B                    ; $80837F  D0 0A        Mx
L_808381:
    REP #$10                        ; $808381  C2 10        Mx
    LDX #$1000                      ; $808383  A2 00 10     MX
L_808386:
    DEX                             ; $808386  CA           MX
    BNE L_808386                    ; $808387  D0 FD        MX
    SEP #$10                        ; $808389  E2 10        MX
L_80838B:
    INC $0006                       ; $80838B  EE 06 00     Mx
    ADC $1D52                       ; $80838E  6D 52 1D     Mx
    TXA                             ; $808391  8A           Mx
    EOR $1D52                       ; $808392  4D 52 1D     Mx
    STA $1D52                       ; $808395  8D 52 1D     Mx
    TYA                             ; $808398  98           Mx
    ADC $1D54                       ; $808399  6D 54 1D     Mx
    EOR $1D52                       ; $80839C  4D 52 1D     Mx
    STA $1D54                       ; $80839F  8D 54 1D     Mx
    ADC $1D58                       ; $8083A2  6D 58 1D     Mx
    STA $1D58                       ; $8083A5  8D 58 1D     Mx
    LDA $1D56                       ; $8083A8  AD 56 1D     Mx
    ADC $1D52                       ; $8083AB  6D 52 1D     Mx
    STA $1D56                       ; $8083AE  8D 56 1D     Mx
    STZ $112B                       ; $8083B1  9C 2B 11     Mx
    JMP L_808247                    ; $8083B4  4C 47 82     Mx
L_8083B7:
    RTS                             ; $8083B7  60           Mx
L_8083B8:
    LDA $1139                       ; $8083B8  AD 39 11     Mx
    BNE L_8083EA                    ; $8083BB  D0 2D        Mx
    LDA #$000F                      ; $8083BD  A9 0F 00     Mx
    STA $113B                       ; $8083C0  8D 3B 11     Mx
    LDA #$0008                      ; $8083C3  A9 08 00     Mx
    STA $1139                       ; $8083C6  8D 39 11     Mx
    LDA #$0021                      ; $8083C9  A9 21 00     Mx
    STA $0CD3                       ; $8083CC  8D D3 0C     Mx
    LDA $0B4A                       ; $8083CF  AD 4A 0B     Mx
    BNE L_8083D8                    ; $8083D2  D0 04        Mx
    JSL L_82E087                    ; $8083D4  22 87 E0 82  Mx
L_8083D8:
    LDA #$000A                      ; $8083D8  A9 0A 00     Mx
    STA $07A2                       ; $8083DB  8D A2 07     Mx
    STA $088A                       ; $8083DE  8D 8A 08     Mx
    STA $0972                       ; $8083E1  8D 72 09     Mx
    STA $0A5A                       ; $8083E4  8D 5A 0A     Mx
    JMP L_80830F                    ; $8083E7  4C 0F 83     Mx
L_8083EA:
    LDA #$7FFF                      ; $8083EA  A9 FF 7F     Mx
    STA $1110                       ; $8083ED  8D 10 11     Mx
    STA $1115                       ; $8083F0  8D 15 11     Mx
    LDA $0CD5                       ; $8083F3  AD D5 0C     Mx
    CMP #$0003                      ; $8083F6  C9 03 00     Mx
    BCC L_808452                    ; $8083F9  90 57        Mx
    LDA $0CB5                       ; $8083FB  AD B5 0C     Mx
    CMP $0CBB                       ; $8083FE  CD BB 0C     Mx
    BNE L_808452                    ; $808401  D0 4F        Mx
    LDA $0CB7                       ; $808403  AD B7 0C     Mx
    CMP $0CBD                       ; $808406  CD BD 0C     Mx
    BNE L_808452                    ; $808409  D0 47        Mx
    LDA $0CB9                       ; $80840B  AD B9 0C     Mx
    CMP $0CBF                       ; $80840E  CD BF 0C     Mx
    BNE L_808452                    ; $808411  D0 3F        Mx
    SEP #$30                        ; $808413  E2 30        Mx
    LDX #$1E                        ; $808415  A2 1E        mx
L_808417:
    PHX                             ; $808417  DA           mx
    JSR L_80850E                    ; $808418  20 0E 85     mx
    PLX                             ; $80841B  FA           mx
    DEX                             ; $80841C  CA           mx
    BNE L_808417                    ; $80841D  D0 F8        mx
    REP #$20                        ; $80841F  C2 20        mx
    JSL L_BDFE53                    ; $808421  22 53 FE BD  Mx
    SEP #$20                        ; $808425  E2 20        Mx
    STZ $4200                       ; $808427  9C 00 42     mx
    JSL L_BDFD20                    ; $80842A  22 20 FD BD  mx
    SEP #$30                        ; $80842E  E2 30        mx
    JSR L_80850E                    ; $808430  20 0E 85     mx
    REP #$20                        ; $808433  C2 20        mx
    LDX #$81                        ; $808435  A2 81        Mx
    STX $4200                       ; $808437  8E 00 42     Mx
    STZ $1615                       ; $80843A  9C 15 16     Mx
    LDA #$000F                      ; $80843D  A9 0F 00     Mx
    JSL L_9ABBD5                    ; $808440  22 D5 BB 9A  Mx
    SEP #$30                        ; $808444  E2 30        Mx
    LDX #$1E                        ; $808446  A2 1E        mx
L_808448:
    PHX                             ; $808448  DA           mx
    JSR L_80850E                    ; $808449  20 0E 85     mx
    PLX                             ; $80844C  FA           mx
    DEX                             ; $80844D  CA           mx
    BNE L_808448                    ; $80844E  D0 F8        mx
    REP #$20                        ; $808450  C2 20        mx
L_808452:
    LDA #$7FFF                      ; $808452  A9 FF 7F     Mx
    STA $1110                       ; $808455  8D 10 11     Mx
    STA $1115                       ; $808458  8D 15 11     Mx
    SEP #$30                        ; $80845B  E2 30        Mx
    PHA                             ; $80845D  48           mx
L_80845E:
    LDA $4212                       ; $80845E  AD 12 42     mx
    BMI L_80845E                    ; $808461  30 FB        mx
    PLA                             ; $808463  68           mx
    PHA                             ; $808464  48           mx
L_808465:
    LDA $4212                       ; $808465  AD 12 42     mx
    BPL L_808465                    ; $808468  10 FB        mx
    PLA                             ; $80846A  68           mx
    PHA                             ; $80846B  48           mx
L_80846C:
    LDA $4212                       ; $80846C  AD 12 42     mx
    BMI L_80846C                    ; $80846F  30 FB        mx
    PLA                             ; $808471  68           mx
L_808472:
    SEP #$30                        ; $808472  E2 30        mx
    PHA                             ; $808474  48           mx
L_808475:
    LDA $4212                       ; $808475  AD 12 42     mx
    BPL L_808475                    ; $808478  10 FB        mx
    PLA                             ; $80847A  68           mx
    LDA #$80                        ; $80847B  A9 80        mx
    STA $2100                       ; $80847D  8D 00 21     mx
    REP #$20                        ; $808480  C2 20        mx
    LDA #$739C                      ; $808482  A9 9C 73     Mx
    STA $7FC9B6                     ; $808485  8F B6 C9 7F  Mx
    LDX #$80                        ; $808489  A2 80        Mx
    STX $2115                       ; $80848B  8E 15 21     Mx
    LDA #$2200                      ; $80848E  A9 00 22     Mx
    STA $4300                       ; $808491  8D 00 43     Mx
    LDX #$10                        ; $808494  A2 10        Mx
    STX $2121                       ; $808496  8E 21 21     Mx
    LDX #$10                        ; $808499  A2 10        Mx
    STX $2121                       ; $80849B  8E 21 21     Mx
    LDA #$C840                      ; $80849E  A9 40 C8     Mx
    STA $4302                       ; $8084A1  8D 02 43     Mx
    LDA #$007F                      ; $8084A4  A9 7F 00     Mx
    STA $4304                       ; $8084A7  8D 04 43     Mx
    LDA #$01E0                      ; $8084AA  A9 E0 01     Mx
    STA $4305                       ; $8084AD  8D 05 43     Mx
    LDX #$01                        ; $8084B0  A2 01        Mx
    STX $420B                       ; $8084B2  8E 0B 42     Mx
    SEP #$20                        ; $8084B5  E2 20        Mx
    JSL L_80D973                    ; $8084B7  22 73 D9 80  mx
    JSR L_80E004                    ; $8084BB  20 04 E0     mx
    REP #$20                        ; $8084BE  C2 20        mx
    LDA $0006                       ; $8084C0  AD 06 00     Mx
    AND #$0003                      ; $8084C3  29 03 00     Mx
    BNE L_8084D3                    ; $8084C6  D0 0B        Mx
    LDA $1139                       ; $8084C8  AD 39 11     Mx
    CMP $113B                       ; $8084CB  CD 3B 11     Mx
    BEQ L_80851D                    ; $8084CE  F0 4D        Mx
    DEC $113B                       ; $8084D0  CE 3B 11     Mx
L_8084D3:
    SEP #$20                        ; $8084D3  E2 20        Mx
    LDA #$0F                        ; $8084D5  A9 0F        mx
    STA $2100                       ; $8084D7  8D 00 21     mx
    REP #$20                        ; $8084DA  C2 20        mx
    STZ $00A4                       ; $8084DC  9C A4 00     Mx
    STZ $00A6                       ; $8084DF  9C A6 00     Mx
    STZ $00A8                       ; $8084E2  9C A8 00     Mx
    LDA #$07D0                      ; $8084E5  A9 D0 07     Mx
L_8084E8:
    DEC                             ; $8084E8  3A           Mx
    BNE L_8084E8                    ; $8084E9  D0 FD        Mx
    SEP #$20                        ; $8084EB  E2 20        Mx
    LDA $0006                       ; $8084ED  AD 06 00     mx
    AND #$03                        ; $8084F0  29 03        mx
    BNE L_808504                    ; $8084F2  D0 10        mx
    LDA #$01                        ; $8084F4  A9 01        mx
    STA $00A4                       ; $8084F6  8D A4 00     mx
    ASL                             ; $8084F9  0A           mx
    ASL                             ; $8084FA  0A           mx
    STA $00A9                       ; $8084FB  8D A9 00     mx
    ASL                             ; $8084FE  0A           mx
    ASL                             ; $8084FF  0A           mx
    ASL                             ; $808500  0A           mx
    STA $00A6                       ; $808501  8D A6 00     mx
L_808504:
    JSL L_82DCC0                    ; $808504  22 C0 DC 82  mx
    INC $0006                       ; $808508  EE 06 00     mx
    JMP L_808472                    ; $80850B  4C 72 84     mx
L_80850E:
    PHA                             ; $80850E  48           mx
L_80850F:
    LDA $4212                       ; $80850F  AD 12 42     mx
    BMI L_80850F                    ; $808512  30 FB        mx
    PLA                             ; $808514  68           mx
    PHA                             ; $808515  48           mx
L_808516:
    LDA $4212                       ; $808516  AD 12 42     mx
    BPL L_808516                    ; $808519  10 FB        mx
    PLA                             ; $80851B  68           mx
    RTS                             ; $80851C  60           mx
L_80851D:
    SEP #$20                        ; $80851D  E2 20        Mx
    LDA #$0F                        ; $80851F  A9 0F        mx
    STA $2100                       ; $808521  8D 00 21     mx
    REP #$20                        ; $808524  C2 20        mx
    LDA $0B4A                       ; $808526  AD 4A 0B     Mx
    BEQ L_80852E                    ; $808529  F0 03        Mx
    JMP L_80859A                    ; $80852B  4C 9A 85     Mx
L_80852E:
    JSL L_BDFE53                    ; $80852E  22 53 FE BD  Mx
    SEP #$20                        ; $808532  E2 20        Mx
    STZ $4200                       ; $808534  9C 00 42     mx
    JSL L_BDFB7C                    ; $808537  22 7C FB BD  mx
    SEP #$30                        ; $80853B  E2 30        mx
    JSR L_80850E                    ; $80853D  20 0E 85     mx
    REP #$20                        ; $808540  C2 20        mx
    LDX #$81                        ; $808542  A2 81        Mx
    STX $4200                       ; $808544  8E 00 42     Mx
    LDA $0CD5                       ; $808547  AD D5 0C     Mx
    CMP #$0001                      ; $80854A  C9 01 00     Mx
    BEQ L_80857B                    ; $80854D  F0 2C        Mx
    CMP #$0003                      ; $80854F  C9 03 00     Mx
    BCS L_808559                    ; $808552  B0 05        Mx
    LDA #$0001                      ; $808554  A9 01 00     Mx
    BRA L_80857E                    ; $808557  80 25        Mx
L_808559:
    LDA $0CB5                       ; $808559  AD B5 0C     Mx
    CMP $0CBB                       ; $80855C  CD BB 0C     Mx
    BNE L_808576                    ; $80855F  D0 15        Mx
    LDA $0CB7                       ; $808561  AD B7 0C     Mx
    CMP $0CBD                       ; $808564  CD BD 0C     Mx
    BNE L_808576                    ; $808567  D0 0D        Mx
    LDA $0CB9                       ; $808569  AD B9 0C     Mx
    CMP $0CBF                       ; $80856C  CD BF 0C     Mx
    BNE L_808576                    ; $80856F  D0 05        Mx
    LDA #$0001                      ; $808571  A9 01 00     Mx
    BRA L_80857E                    ; $808574  80 08        Mx
L_808576:
    LDA #$0003                      ; $808576  A9 03 00     Mx
    BRA L_80857E                    ; $808579  80 03        Mx
L_80857B:
    LDA #$0001                      ; $80857B  A9 01 00     Mx
L_80857E:
    JSL L_BDFD8F                    ; $80857E  22 8F FD BD  Mx
    JSL L_BDFD74                    ; $808582  22 74 FD BD  Mx
    LDA $0CD5                       ; $808586  AD D5 0C     Mx
    CMP #$0003                      ; $808589  C9 03 00     Mx
    BCC L_80859A                    ; $80858C  90 0C        Mx
    JSL L_A7EFF5                    ; $80858E  22 F5 EF A7  Mx
    BEQ L_808597                    ; $808592  F0 03        Mx
    JMP L_808643                    ; $808594  4C 43 86     Mx
L_808597:
    JMP L_8085C8                    ; $808597  4C C8 85     Mx
L_80859A:
    SEP #$30                        ; $80859A  E2 30        Mx
    LDX #$F0                        ; $80859C  A2 F0        mx
L_80859E:
    PHX                             ; $80859E  DA           mx
    PHA                             ; $80859F  48           mx
L_8085A0:
    LDA $4212                       ; $8085A0  AD 12 42     mx
    BPL L_8085A0                    ; $8085A3  10 FB        mx
    PLA                             ; $8085A5  68           mx
    REP #$20                        ; $8085A6  C2 20        mx
    SEP #$20                        ; $8085A8  E2 20        Mx
    PHA                             ; $8085AA  48           mx
L_8085AB:
    LDA $4212                       ; $8085AB  AD 12 42     mx
    BMI L_8085AB                    ; $8085AE  30 FB        mx
    PLA                             ; $8085B0  68           mx
    PLX                             ; $8085B1  FA           mx
    DEX                             ; $8085B2  CA           mx
    BNE L_80859E                    ; $8085B3  D0 E9        mx
    REP #$20                        ; $8085B5  C2 20        mx
    SEP #$10                        ; $8085B7  E2 10        Mx
    STZ $112B                       ; $8085B9  9C 2B 11     Mx
    STZ $0CD3                       ; $8085BC  9C D3 0C     Mx
    STZ $0E7B                       ; $8085BF  9C 7B 0E     Mx
    STZ $0E7D                       ; $8085C2  9C 7D 0E     Mx
    JMP L_8086CE                    ; $8085C5  4C CE 86     Mx
L_8085C8:
    REP #$20                        ; $8085C8  C2 20        Mx
    SEP #$10                        ; $8085CA  E2 10        Mx
    STZ $112B                       ; $8085CC  9C 2B 11     Mx
    STZ $0CD3                       ; $8085CF  9C D3 0C     Mx
    STZ $0E7B                       ; $8085D2  9C 7B 0E     Mx
    STZ $0E7D                       ; $8085D5  9C 7D 0E     Mx
    LDX #$00                        ; $8085D8  A2 00        Mx
    STX $0104                       ; $8085DA  8E 04 01     Mx
L_8085DD:
    LDX $0104                       ; $8085DD  AE 04 01     Mx
    BEQ L_8085DD                    ; $8085E0  F0 FB        Mx
    JSL L_9ABCAE                    ; $8085E2  22 AE BC 9A  Mx
    LDA #$7FFF                      ; $8085E6  A9 FF 7F     Mx
    STA $1110                       ; $8085E9  8D 10 11     Mx
    STA $1115                       ; $8085EC  8D 15 11     Mx
    STA $1127                       ; $8085EF  8D 27 11     Mx
    STA $1129                       ; $8085F2  8D 29 11     Mx
    LDA #$007F                      ; $8085F5  A9 7F 00     Mx
    STA $10CB                       ; $8085F8  8D CB 10     Mx
    LDX #$00                        ; $8085FB  A2 00        Mx
    STX $0104                       ; $8085FD  8E 04 01     Mx
L_808600:
    LDX $0104                       ; $808600  AE 04 01     Mx
    BEQ L_808600                    ; $808603  F0 FB        Mx
    LDA #$0001                      ; $808605  A9 01 00     Mx
    STA $112B                       ; $808608  8D 2B 11     Mx
    SEP #$30                        ; $80860B  E2 30        Mx
    LDX #$F0                        ; $80860D  A2 F0        mx
L_80860F:
    PHX                             ; $80860F  DA           mx
    PHA                             ; $808610  48           mx
L_808611:
    LDA $4212                       ; $808611  AD 12 42     mx
    BPL L_808611                    ; $808614  10 FB        mx
    PLA                             ; $808616  68           mx
    REP #$20                        ; $808617  C2 20        mx
    SEP #$20                        ; $808619  E2 20        Mx
    PHA                             ; $80861B  48           mx
L_80861C:
    LDA $4212                       ; $80861C  AD 12 42     mx
    BMI L_80861C                    ; $80861F  30 FB        mx
    PLA                             ; $808621  68           mx
    PLX                             ; $808622  FA           mx
    TXA                             ; $808623  8A           mx
    REP #$20                        ; $808624  C2 20        mx
    AND #$0008                      ; $808626  29 08 00     Mx
    BEQ L_808633                    ; $808629  F0 08        Mx
    LDA #$7FFF                      ; $80862B  A9 FF 7F     Mx
    STA $10FC                       ; $80862E  8D FC 10     Mx
    BRA L_808639                    ; $808631  80 06        Mx
L_808633:
    LDA #$001F                      ; $808633  A9 1F 00     Mx
    STA $10FC                       ; $808636  8D FC 10     Mx
L_808639:
    SEP #$20                        ; $808639  E2 20        Mx
    DEX                             ; $80863B  CA           mx
    BNE L_80860F                    ; $80863C  D0 D1        mx
    REP #$20                        ; $80863E  C2 20        mx
    SEP #$10                        ; $808640  E2 10        Mx
    RTS                             ; $808642  60           Mx
L_808643:
    REP #$20                        ; $808643  C2 20        Mx
    SEP #$10                        ; $808645  E2 10        Mx
    STZ $112B                       ; $808647  9C 2B 11     Mx
    STZ $0CD3                       ; $80864A  9C D3 0C     Mx
    SEP #$20                        ; $80864D  E2 20        Mx
    LDA #$E0                        ; $80864F  A9 E0        mx
    STA $0301                       ; $808651  8D 01 03     mx
    STA $0305                       ; $808654  8D 05 03     mx
    STA $0309                       ; $808657  8D 09 03     mx
    STA $030D                       ; $80865A  8D 0D 03     mx
    STA $0311                       ; $80865D  8D 11 03     mx
    STA $0315                       ; $808660  8D 15 03     mx
    STA $0319                       ; $808663  8D 19 03     mx
    REP #$20                        ; $808666  C2 20        mx
    STZ $0E7B                       ; $808668  9C 7B 0E     Mx
    STZ $0E7D                       ; $80866B  9C 7D 0E     Mx
    LDX #$00                        ; $80866E  A2 00        Mx
    STX $0104                       ; $808670  8E 04 01     Mx
L_808673:
    LDX $0104                       ; $808673  AE 04 01     Mx
    BEQ L_808673                    ; $808676  F0 FB        Mx
    REP #$20                        ; $808678  C2 20        Mx
    JSL L_9ABCAE                    ; $80867A  22 AE BC 9A  Mx
    LDA #$7FFF                      ; $80867E  A9 FF 7F     Mx
    STA $1110                       ; $808681  8D 10 11     Mx
    STA $1115                       ; $808684  8D 15 11     Mx
    LDX #$00                        ; $808687  A2 00        Mx
    STX $0104                       ; $808689  8E 04 01     Mx
L_80868C:
    LDX $0104                       ; $80868C  AE 04 01     Mx
    BEQ L_80868C                    ; $80868F  F0 FB        Mx
    LDA #$0001                      ; $808691  A9 01 00     Mx
    STA $112B                       ; $808694  8D 2B 11     Mx
    SEP #$30                        ; $808697  E2 30        Mx
    LDX #$F0                        ; $808699  A2 F0        mx
L_80869B:
    PHX                             ; $80869B  DA           mx
    PHA                             ; $80869C  48           mx
L_80869D:
    LDA $4212                       ; $80869D  AD 12 42     mx
    BPL L_80869D                    ; $8086A0  10 FB        mx
    PLA                             ; $8086A2  68           mx
    REP #$20                        ; $8086A3  C2 20        mx
    SEP #$20                        ; $8086A5  E2 20        Mx
    PHA                             ; $8086A7  48           mx
L_8086A8:
    LDA $4212                       ; $8086A8  AD 12 42     mx
    BMI L_8086A8                    ; $8086AB  30 FB        mx
    PLA                             ; $8086AD  68           mx
    PLX                             ; $8086AE  FA           mx
    TXA                             ; $8086AF  8A           mx
    REP #$20                        ; $8086B0  C2 20        mx
    AND #$0008                      ; $8086B2  29 08 00     Mx
    BEQ L_8086BF                    ; $8086B5  F0 08        Mx
    LDA #$7FFF                      ; $8086B7  A9 FF 7F     Mx
    STA $10FC                       ; $8086BA  8D FC 10     Mx
    BRA L_8086C5                    ; $8086BD  80 06        Mx
L_8086BF:
    LDA #$001F                      ; $8086BF  A9 1F 00     Mx
    STA $10FC                       ; $8086C2  8D FC 10     Mx
L_8086C5:
    SEP #$20                        ; $8086C5  E2 20        Mx
    DEX                             ; $8086C7  CA           mx
    BNE L_80869B                    ; $8086C8  D0 D1        mx
    REP #$20                        ; $8086CA  C2 20        mx
    SEP #$10                        ; $8086CC  E2 10        Mx
L_8086CE:
    RTS                             ; $8086CE  60           Mx
L_8086CF:
    LDA $011C                       ; $8086CF  AD 1C 01     Mx
    AND #$000F                      ; $8086D2  29 0F 00     Mx
    CMP #$000F                      ; $8086D5  C9 0F 00     Mx
    BEQ L_8086DB                    ; $8086D8  F0 01        Mx
    RTS                             ; $8086DA  60           Mx
L_8086DB:
    JSR L_808FF3                    ; $8086DB  20 F3 8F     Mx
    LDA $0CE9                       ; $8086DE  AD E9 0C     Mx
    BNE L_8086E6                    ; $8086E1  D0 03        Mx
L_8086E3:
    JMP L_808799                    ; $8086E3  4C 99 87     Mx
L_8086E6:
    LDA $0CEB                       ; $8086E6  AD EB 0C     Mx
    ORA $0CEF                       ; $8086E9  0D EF 0C     Mx
    ORA $0CF3                       ; $8086EC  0D F3 0C     Mx
    ORA $0CF7                       ; $8086EF  0D F7 0C     Mx
    EOR $0CED                       ; $8086F2  4D ED 0C     Mx
    EOR $0CF1                       ; $8086F5  4D F1 0C     Mx
    EOR $0CF5                       ; $8086F8  4D F5 0C     Mx
    EOR $0CF9                       ; $8086FB  4D F9 0C     Mx
    BEQ L_8086E3                    ; $8086FE  F0 E3        Mx
    LDA $0CFD                       ; $808700  AD FD 0C     Mx
    BEQ L_808708                    ; $808703  F0 03        Mx
    JMP L_80879C                    ; $808705  4C 9C 87     Mx
L_808708:
    LDX $06F1                       ; $808708  AE F1 06     Mx
    BEQ L_808715                    ; $80870B  F0 08        Mx
    LDA $0006,X                     ; $80870D  BD 06 00     Mx
    AND #$1000                      ; $808710  29 00 10     Mx
    BNE L_80873E                    ; $808713  D0 29        Mx
L_808715:
    LDX $07D9                       ; $808715  AE D9 07     Mx
    BEQ L_808722                    ; $808718  F0 08        Mx
    LDA $0006,X                     ; $80871A  BD 06 00     Mx
    AND #$1000                      ; $80871D  29 00 10     Mx
    BNE L_80873E                    ; $808720  D0 1C        Mx
L_808722:
    LDX $08C1                       ; $808722  AE C1 08     Mx
    BEQ L_80872F                    ; $808725  F0 08        Mx
    LDA $0006,X                     ; $808727  BD 06 00     Mx
    AND #$1000                      ; $80872A  29 00 10     Mx
    BNE L_80873E                    ; $80872D  D0 0F        Mx
L_80872F:
    LDX $09A9                       ; $80872F  AE A9 09     Mx
    BEQ L_80873C                    ; $808732  F0 08        Mx
    LDA $0006,X                     ; $808734  BD 06 00     Mx
    AND #$1000                      ; $808737  29 00 10     Mx
    BNE L_80873E                    ; $80873A  D0 02        Mx
L_80873C:
    BRA L_8087A1                    ; $80873C  80 63        Mx
L_80873E:
    INC $0CFB                       ; $80873E  EE FB 0C     Mx
    JSL $2AFC46                     ; $808741  22 46 FC 2A  Mx
    LDX #$4C                        ; $808745  A2 4C        Mx
    STX $0335                       ; $808747  8E 35 03     Mx
    STX $0339                       ; $80874A  8E 39 03     Mx
    STX $033D                       ; $80874D  8E 3D 03     Mx
    STX $0341                       ; $808750  8E 41 03     Mx
    STX $0345                       ; $808753  8E 45 03     Mx
    JSL L_BDFE53                    ; $808756  22 53 FE BD  Mx
    LDA #$0007                      ; $80875A  A9 07 00     Mx
    JSL L_BDFDF3                    ; $80875D  22 F3 FD BD  Mx
L_808761:
    JSR L_808FF3                    ; $808761  20 F3 8F     Mx
    LDA $0CE9                       ; $808764  AD E9 0C     Mx
    BNE L_808761                    ; $808767  D0 F8        Mx
    INC $0CFB                       ; $808769  EE FB 0C     Mx
L_80876C:
    LDX #$00                        ; $80876C  A2 00        Mx
    STX $0104                       ; $80876E  8E 04 01     Mx
L_808771:
    LDX $0104                       ; $808771  AE 04 01     Mx
    BEQ L_808771                    ; $808774  F0 FB        Mx
    JSR L_808FF3                    ; $808776  20 F3 8F     Mx
    LDA $0CE9                       ; $808779  AD E9 0C     Mx
    BEQ L_80876C                    ; $80877C  F0 EE        Mx
    STZ $0CFB                       ; $80877E  9C FB 0C     Mx
    LDX #$E0                        ; $808781  A2 E0        Mx
    STX $0335                       ; $808783  8E 35 03     Mx
    STX $0339                       ; $808786  8E 39 03     Mx
    STX $033D                       ; $808789  8E 3D 03     Mx
    STX $0341                       ; $80878C  8E 41 03     Mx
    STX $0345                       ; $80878F  8E 45 03     Mx
    LDA #$0007                      ; $808792  A9 07 00     Mx
    JSL L_BDFDF3                    ; $808795  22 F3 FD BD  Mx
L_808799:
    STZ $0CFD                       ; $808799  9C FD 0C     Mx
L_80879C:
    REP #$20                        ; $80879C  C2 20        Mx
    SEP #$10                        ; $80879E  E2 10        Mx
    RTS                             ; $8087A0  60           Mx
L_8087A1:
    LDX #$02                        ; $8087A1  A2 02        Mx
    LDA $0CEB                       ; $8087A3  AD EB 0C     Mx
    EOR $0CED                       ; $8087A6  4D ED 0C     Mx
    BEQ L_8087B4                    ; $8087A9  F0 09        Mx
    LDA #$06F0                      ; $8087AB  A9 F0 06     Mx
    STA $00D0                       ; $8087AE  8D D0 00     Mx
    JSR L_8087EE                    ; $8087B1  20 EE 87     Mx
L_8087B4:
    LDX #$04                        ; $8087B4  A2 04        Mx
    LDA $0CEF                       ; $8087B6  AD EF 0C     Mx
    EOR $0CF1                       ; $8087B9  4D F1 0C     Mx
    BEQ L_8087C7                    ; $8087BC  F0 09        Mx
    LDA #$07D8                      ; $8087BE  A9 D8 07     Mx
    STA $00D0                       ; $8087C1  8D D0 00     Mx
    JSR L_8087EE                    ; $8087C4  20 EE 87     Mx
L_8087C7:
    LDX #$06                        ; $8087C7  A2 06        Mx
    LDA $0CF3                       ; $8087C9  AD F3 0C     Mx
    EOR $0CF5                       ; $8087CC  4D F5 0C     Mx
    BEQ L_8087DA                    ; $8087CF  F0 09        Mx
    LDA #$08C0                      ; $8087D1  A9 C0 08     Mx
    STA $00D0                       ; $8087D4  8D D0 00     Mx
    JSR L_8087EE                    ; $8087D7  20 EE 87     Mx
L_8087DA:
    LDX #$08                        ; $8087DA  A2 08        Mx
    LDA $0CF7                       ; $8087DC  AD F7 0C     Mx
    EOR $0CF9                       ; $8087DF  4D F9 0C     Mx
    BEQ L_8087ED                    ; $8087E2  F0 09        Mx
    LDA #$09A8                      ; $8087E4  A9 A8 09     Mx
    STA $00D0                       ; $8087E7  8D D0 00     Mx
    JSR L_8087EE                    ; $8087EA  20 EE 87     Mx
L_8087ED:
    RTS                             ; $8087ED  60           Mx
L_8087EE:
    INC $0CFD                       ; $8087EE  EE FD 0C     Mx
    LDA $1C5D                       ; $8087F1  AD 5D 1C     Mx
    CMP #$0002                      ; $8087F4  C9 02 00     Mx
    BEQ L_808812                    ; $8087F7  F0 19        Mx
    CPX #$06                        ; $8087F9  E0 06        Mx
    BCS L_808811                    ; $8087FB  B0 14        Mx
    CPX #$02                        ; $8087FD  E0 02        Mx
    BEQ L_808812                    ; $8087FF  F0 11        Mx
    LDA $1C5D                       ; $808801  AD 5D 1C     Mx
    CMP #$0001                      ; $808804  C9 01 00     Mx
    BEQ L_808812                    ; $808807  F0 09        Mx
    LDA #$08C0                      ; $808809  A9 C0 08     Mx
    STA $00D0                       ; $80880C  8D D0 00     Mx
    BRA L_808812                    ; $80880F  80 01        Mx
L_808811:
    RTS                             ; $808811  60           Mx
L_808812:
    LDY #$00                        ; $808812  A0 00        Mx
    LDA ($D0),Y                     ; $808814  B1 D0        Mx
    AND #$FF00                      ; $808816  29 00 FF     Mx
    BEQ L_808821                    ; $808819  F0 06        Mx
    LDA $887A,X                     ; $80881B  BD 7A 88     Mx
    STA $00D0                       ; $80881E  8D D0 00     Mx
L_808821:
    LDA $1C5D                       ; $808821  AD 5D 1C     Mx
    BNE L_808838                    ; $808824  D0 12        Mx
    CPX #$04                        ; $808826  E0 04        Mx
    BNE L_808838                    ; $808828  D0 0E        Mx
    LDA #$FFFF                      ; $80882A  A9 FF FF     Mx
    STA $16CC,X                     ; $80882D  9D CC 16     Mx  initial1
    LDA #$0001                      ; $808830  A9 01 00     Mx
    STA $169E,X                     ; $808833  9D 9E 16     Mx
    BRA L_808844                    ; $808836  80 0C        Mx
L_808838:
    LDA #$FFFF                      ; $808838  A9 FF FF     Mx
    STA $16CA,X                     ; $80883B  9D CA 16     Mx
    LDA #$0001                      ; $80883E  A9 01 00     Mx
    STA $169C,X                     ; $808841  9D 9C 16     Mx
L_808844:
    LDY #$00                        ; $808844  A0 00        Mx
    LDA ($D0),Y                     ; $808846  B1 D0        Mx
    STA $00A4                       ; $808848  8D A4 00     Mx
    STX $00A5                       ; $80884B  8E A5 00     Mx
    LDA $00A4                       ; $80884E  AD A4 00     Mx
    STA ($D0),Y                     ; $808851  91 D0        Mx
    TAY                             ; $808853  A8           Mx
    CPY $0C19                       ; $808854  CC 19 0C     Mx
    BNE L_80885C                    ; $808857  D0 03        Mx
    STX $0C1A                       ; $808859  8E 1A 0C     Mx
L_80885C:
    CPY $0C1F                       ; $80885C  CC 1F 0C     Mx
    BNE L_808864                    ; $80885F  D0 03        Mx
    STX $0C20                       ; $808861  8E 20 0C     Mx
L_808864:
    CPY $0A96                       ; $808864  CC 96 0A     Mx
    BNE L_80886C                    ; $808867  D0 03        Mx
    STX $0A97                       ; $808869  8E 97 0A     Mx
L_80886C:
    CPY $0C1B                       ; $80886C  CC 1B 0C     Mx
    BNE L_808874                    ; $80886F  D0 03        Mx
    STX $0C1C                       ; $808871  8E 1C 0C     Mx
L_808874:
    LDY #$C2                        ; $808874  A0 C2        Mx
    LDA #$0087                      ; $808876  A9 87 00     Mx
    STA ($D0),Y                     ; $808879  91 D0        Mx
    RTS                             ; $80887B  60           Mx
    db $D8,$07,$F0,$06,$A8,$09,$C0,$08                                 ; $80887C
L_808884:
    LDA $0E81                       ; $808884  AD 81 0E     Mx
    BEQ L_808891                    ; $808887  F0 08        Mx
    LDA $0E83                       ; $808889  AD 83 0E     Mx
    STA $0BBB                       ; $80888C  8D BB 0B     Mx
    BRA L_8088B3                    ; $80888F  80 22        Mx
L_808891:
    LDA $077E                       ; $808891  AD 7E 07     Mx
    BNE L_80889D                    ; $808894  D0 07        Mx
    LDA $094E                       ; $808896  AD 4E 09     Mx
    BNE L_8088A9                    ; $808899  D0 0E        Mx
    BRA L_8088B3                    ; $80889B  80 16        Mx
L_80889D:
    LDA $0BBB                       ; $80889D  AD BB 0B     Mx
    CLC                             ; $8088A0  18           Mx
    ADC #$0040                      ; $8088A1  69 40 00     Mx
    STA $0BBB                       ; $8088A4  8D BB 0B     Mx
    BRA L_8088B3                    ; $8088A7  80 0A        Mx
L_8088A9:
    LDA $0BBB                       ; $8088A9  AD BB 0B     Mx
    SEC                             ; $8088AC  38           Mx
    SBC #$0040                      ; $8088AD  E9 40 00     Mx
    STA $0BBB                       ; $8088B0  8D BB 0B     Mx
L_8088B3:
    STZ $00A4                       ; $8088B3  9C A4 00     Mx
    LDA $1139                       ; $8088B6  AD 39 11     Mx
    BEQ L_8088BF                    ; $8088B9  F0 04        Mx
    STZ $0E7B                       ; $8088BB  9C 7B 0E     Mx
    RTS                             ; $8088BE  60           Mx
L_8088BF:
    LDA $1137                       ; $8088BF  AD 37 11     Mx
    BEQ L_8088D5                    ; $8088C2  F0 11        Mx
    DEC $1137                       ; $8088C4  CE 37 11     Mx
    LDA $0006                       ; $8088C7  AD 06 00     Mx
    AND #$000F                      ; $8088CA  29 0F 00     Mx
    ASL                             ; $8088CD  0A           Mx
    TAX                             ; $8088CE  AA           Mx
    LDA $88E9,X                     ; $8088CF  BD E9 88     Mx
    STA $00A4                       ; $8088D2  8D A4 00     Mx
L_8088D5:
    LDA $0129                       ; $8088D5  AD 29 01     Mx
    STA $0E79                       ; $8088D8  8D 79 0E     Mx
    JSR L_808919                    ; $8088DB  20 19 89     Mx
    LDA $0129                       ; $8088DE  AD 29 01     Mx
    SEC                             ; $8088E1  38           Mx
    SBC $0E79                       ; $8088E2  ED 79 0E     Mx
    STA $0E7B                       ; $8088E5  8D 7B 0E     Mx
    RTS                             ; $8088E8  60           Mx
    db $B0,$FF,$00,$00,$64,$00,$B0,$FF,$00,$00,$64,$00,$B0,$FF,$00,$00 ; $8088E9
    db $64,$00,$B0,$FF,$00,$00,$64,$00,$B0,$FF,$00,$00,$64,$00,$B0,$FF ; $8088F9
    db $00,$00,$64,$00,$B0,$FF,$00,$00,$64,$00,$B0,$FF,$00,$00,$64,$00 ; $808909
L_808919:
    LDA $0BBB                       ; $808919  AD BB 0B     Mx
    SEC                             ; $80891C  38           Mx
    SBC $0129                       ; $80891D  ED 29 01     Mx
    SBC #$0070                      ; $808920  E9 70 00     Mx
    BEQ L_80892A                    ; $808923  F0 05        Mx
    BMI L_80892D                    ; $808925  30 06        Mx
    JMP L_80895E                    ; $808927  4C 5E 89     Mx
L_80892A:
    JMP L_808987                    ; $80892A  4C 87 89     Mx
L_80892D:
    EOR #$FFFF                      ; $80892D  49 FF FF     Mx
    INC                             ; $808930  1A           Mx
    LSR                             ; $808931  4A           Mx
    LSR                             ; $808932  4A           Mx
    LSR                             ; $808933  4A           Mx
    LSR                             ; $808934  4A           Mx
    CMP #$0008                      ; $808935  C9 08 00     Mx
    BCC L_80893D                    ; $808938  90 03        Mx
    LDA #$0008                      ; $80893A  A9 08 00     Mx
L_80893D:
    STA $00E8                       ; $80893D  8D E8 00     Mx
    LDA $0129                       ; $808940  AD 29 01     Mx
    SEC                             ; $808943  38           Mx
    SBC $00E8                       ; $808944  ED E8 00     Mx
    CMP #$0088                      ; $808947  C9 88 00     Mx
    BMI L_808956                    ; $80894A  30 0A        Mx
    STA $0129                       ; $80894C  8D 29 01     Mx
    JSR L_8099EB                    ; $80894F  20 EB 99     Mx
    REP #$20                        ; $808952  C2 20        mx
    BRA L_808987                    ; $808954  80 31        Mx
L_808956:
    LDA #$0088                      ; $808956  A9 88 00     Mx
    STA $0129                       ; $808959  8D 29 01     Mx
    BRA L_808987                    ; $80895C  80 29        Mx
L_80895E:
    LSR                             ; $80895E  4A           Mx
    LSR                             ; $80895F  4A           Mx
    LSR                             ; $808960  4A           Mx
    LSR                             ; $808961  4A           Mx
    CMP #$0008                      ; $808962  C9 08 00     Mx
    BCC L_80896A                    ; $808965  90 03        Mx
    LDA #$0008                      ; $808967  A9 08 00     Mx
L_80896A:
    STA $00E8                       ; $80896A  8D E8 00     Mx
    CLC                             ; $80896D  18           Mx
    ADC $0129                       ; $80896E  6D 29 01     Mx
    CMP $012D                       ; $808971  CD 2D 01     Mx
    BPL L_808980                    ; $808974  10 0A        Mx
    STA $0129                       ; $808976  8D 29 01     Mx
    JSR L_809951                    ; $808979  20 51 99     Mx
    REP #$20                        ; $80897C  C2 20        mx
    BRA L_808987                    ; $80897E  80 07        Mx
L_808980:
    LDA $012D                       ; $808980  AD 2D 01     Mx
    DEC                             ; $808983  3A           Mx
    STA $0129                       ; $808984  8D 29 01     Mx
L_808987:
    LDA $0BBD                       ; $808987  AD BD 0B     Mx
    SEC                             ; $80898A  38           Mx
    SBC $012B                       ; $80898B  ED 2B 01     Mx
    CLC                             ; $80898E  18           Mx
    ADC $00A4                       ; $80898F  6D A4 00     Mx
    CMP #$0048                      ; $808992  C9 48 00     Mx
    BMI L_80899F                    ; $808995  30 08        Mx
    CMP #$0070                      ; $808997  C9 70 00     Mx
    BEQ L_80899E                    ; $80899A  F0 02        Mx
    BPL L_8089CA                    ; $80899C  10 2C        Mx
L_80899E:
    RTS                             ; $80899E  60           Mx
L_80899F:
    SEC                             ; $80899F  38           Mx
    SBC #$0048                      ; $8089A0  E9 48 00     Mx
    EOR #$FFFF                      ; $8089A3  49 FF FF     Mx
    INC                             ; $8089A6  1A           Mx
    LSR                             ; $8089A7  4A           Mx
    LSR                             ; $8089A8  4A           Mx
    LSR                             ; $8089A9  4A           Mx
    LSR                             ; $8089AA  4A           Mx
    CMP #$0008                      ; $8089AB  C9 08 00     Mx
    BCC L_8089B3                    ; $8089AE  90 03        Mx
    LDA #$0008                      ; $8089B0  A9 08 00     Mx
L_8089B3:
    EOR #$FFFF                      ; $8089B3  49 FF FF     Mx
    CLC                             ; $8089B6  18           Mx
    ADC $012B                       ; $8089B7  6D 2B 01     Mx
    CMP #$00D0                      ; $8089BA  C9 D0 00     Mx
    BMI L_8089C3                    ; $8089BD  30 04        Mx
    STA $012B                       ; $8089BF  8D 2B 01     Mx
    RTS                             ; $8089C2  60           Mx
L_8089C3:
    LDA #$00D0                      ; $8089C3  A9 D0 00     Mx
    STA $012B                       ; $8089C6  8D 2B 01     Mx
    RTS                             ; $8089C9  60           Mx
L_8089CA:
    SEC                             ; $8089CA  38           Mx
    SBC #$0070                      ; $8089CB  E9 70 00     Mx
    LSR                             ; $8089CE  4A           Mx
    LSR                             ; $8089CF  4A           Mx
    LSR                             ; $8089D0  4A           Mx
    LSR                             ; $8089D1  4A           Mx
    CMP #$0008                      ; $8089D2  C9 08 00     Mx
    BCC L_8089DA                    ; $8089D5  90 03        Mx
    LDA #$0008                      ; $8089D7  A9 08 00     Mx
L_8089DA:
    CLC                             ; $8089DA  18           Mx
    ADC $012B                       ; $8089DB  6D 2B 01     Mx
    CMP $012F                       ; $8089DE  CD 2F 01     Mx
    BCS L_8089E7                    ; $8089E1  B0 04        Mx
    STA $012B                       ; $8089E3  8D 2B 01     Mx
    RTS                             ; $8089E6  60           Mx
L_8089E7:
    LDA $012F                       ; $8089E7  AD 2F 01     Mx
    DEC                             ; $8089EA  3A           Mx
    STA $012B                       ; $8089EB  8D 2B 01     Mx
    RTS                             ; $8089EE  60           Mx
L_8089EF:
    SEP #$20                        ; $8089EF  E2 20        Mx
    JSR L_80F923                    ; $8089F1  20 23 F9     mx
    JSR L_80F8CD                    ; $8089F4  20 CD F8     mx
    JSR L_808B68                    ; $8089F7  20 68 8B     mx
    LDA $0B4A                       ; $8089FA  AD 4A 0B     mx
    BNE L_808A03                    ; $8089FD  D0 04        mx
    JSL L_BDFE38                    ; $8089FF  22 38 FE BD  mx
L_808A03:
    REP #$30                        ; $808A03  C2 30        mx
    JSL $2AFC6C                     ; $808A05  22 6C FC 2A  MX
    REP #$20                        ; $808A09  C2 20        MX
    LDA $0B4A                       ; $808A0B  AD 4A 0B     MX
    BNE L_808A23                    ; $808A0E  D0 13        MX
    JSL L_BDFE53                    ; $808A10  22 53 FE BD  MX
    JSL L_BDFBD0                    ; $808A14  22 D0 FB BD  MX
    JSL L_80F2F7                    ; $808A18  22 F7 F2 80  MX
    LDA #$0012                      ; $808A1C  A9 12 00     MX
    JSL L_BDFDF3                    ; $808A1F  22 F3 FD BD  MX
L_808A23:
    SEP #$30                        ; $808A23  E2 30        MX
    LDA #$00                        ; $808A25  A9 00        mx
    STA $2116                       ; $808A27  8D 16 21     mx
    LDA #$00                        ; $808A2A  A9 00        mx
    STA $2117                       ; $808A2C  8D 17 21     mx
    LDA #$01                        ; $808A2F  A9 01        mx
    STA $4300                       ; $808A31  8D 00 43     mx
    LDA #$18                        ; $808A34  A9 18        mx
    STA $4301                       ; $808A36  8D 01 43     mx
    LDA #$00                        ; $808A39  A9 00        mx
    STA $4302                       ; $808A3B  8D 02 43     mx
    LDA #$80                        ; $808A3E  A9 80        mx
    STA $4303                       ; $808A40  8D 03 43     mx
    LDA #$03                        ; $808A43  A9 03        mx
    STA $4304                       ; $808A45  8D 04 43     mx
    LDA #$20                        ; $808A48  A9 20        mx
    STA $4305                       ; $808A4A  8D 05 43     mx
    LDA #$00                        ; $808A4D  A9 00        mx
    STA $4306                       ; $808A4F  8D 06 43     mx
    LDA #$01                        ; $808A52  A9 01        mx
    STA $420B                       ; $808A54  8D 0B 42     mx
    LDA #$10                        ; $808A57  A9 10        mx
    STA $2116                       ; $808A59  8D 16 21     mx
    LDA #$00                        ; $808A5C  A9 00        mx
    STA $2117                       ; $808A5E  8D 17 21     mx
    LDA #$01                        ; $808A61  A9 01        mx
    STA $4300                       ; $808A63  8D 00 43     mx
    LDA #$18                        ; $808A66  A9 18        mx
    STA $4301                       ; $808A68  8D 01 43     mx
    LDA #$00                        ; $808A6B  A9 00        mx
    STA $4302                       ; $808A6D  8D 02 43     mx
    LDA #$00                        ; $808A70  A9 00        mx
    STA $4303                       ; $808A72  8D 03 43     mx
    LDA #$7F                        ; $808A75  A9 7F        mx
    STA $4304                       ; $808A77  8D 04 43     mx
    LDA #$80                        ; $808A7A  A9 80        mx
    STA $4305                       ; $808A7C  8D 05 43     mx
    LDA #$7A                        ; $808A7F  A9 7A        mx
    STA $4306                       ; $808A81  8D 06 43     mx
    LDA #$01                        ; $808A84  A9 01        mx
    STA $420B                       ; $808A86  8D 0B 42     mx
    LDA #$40                        ; $808A89  A9 40        mx
    STA $2116                       ; $808A8B  8D 16 21     mx
    LDA #$3F                        ; $808A8E  A9 3F        mx
    STA $2117                       ; $808A90  8D 17 21     mx
    LDA #$01                        ; $808A93  A9 01        mx
    STA $4300                       ; $808A95  8D 00 43     mx
    LDA #$18                        ; $808A98  A9 18        mx
    STA $4301                       ; $808A9A  8D 01 43     mx
    LDA #$20                        ; $808A9D  A9 20        mx
    STA $4302                       ; $808A9F  8D 02 43     mx
    LDA #$C3                        ; $808AA2  A9 C3        mx
    STA $4303                       ; $808AA4  8D 03 43     mx
    LDA #$28                        ; $808AA7  A9 28        mx
    STA $4304                       ; $808AA9  8D 04 43     mx
    LDA #$40                        ; $808AAC  A9 40        mx
    STA $4305                       ; $808AAE  8D 05 43     mx
    LDA #$00                        ; $808AB1  A9 00        mx
    STA $4306                       ; $808AB3  8D 06 43     mx
    LDA #$01                        ; $808AB6  A9 01        mx
    STA $420B                       ; $808AB8  8D 0B 42     mx
    LDA $0CD5                       ; $808ABB  AD D5 0C     mx
    BEQ L_808AD6                    ; $808ABE  F0 16        mx
    REP #$30                        ; $808AC0  C2 30        mx
    LDX #$0000                      ; $808AC2  A2 00 00     MX
L_808AC5:
    LDA $00113D,X                   ; $808AC5  BF 3D 11 00  MX
    STA $7FC820,X                   ; $808AC9  9F 20 C8 7F  MX
    INX                             ; $808ACD  E8           MX
    INX                             ; $808ACE  E8           MX
    CPX #$0200                      ; $808ACF  E0 00 02     MX
    BNE L_808AC5                    ; $808AD2  D0 F1        MX
    BRA L_808B30                    ; $808AD4  80 5A        MX
L_808AD6:
    REP #$20                        ; $808AD6  C2 20        mx
    LDA #$C820                      ; $808AD8  A9 20 C8     Mx
    STA $2181                       ; $808ADB  8D 81 21     Mx
    LDA #$E7F4                      ; $808ADE  A9 F4 E7     Mx
    STA $4302                       ; $808AE1  8D 02 43     Mx
    LDA #$0100                      ; $808AE4  A9 00 01     Mx
    STA $4305                       ; $808AE7  8D 05 43     Mx
    SEP #$20                        ; $808AEA  E2 20        Mx
    LDA #$7F                        ; $808AEC  A9 7F        mx
    STA $2183                       ; $808AEE  8D 83 21     mx
    LDA #$03                        ; $808AF1  A9 03        mx
    STA $4304                       ; $808AF3  8D 04 43     mx
    STZ $4300                       ; $808AF6  9C 00 43     mx
    LDA #$80                        ; $808AF9  A9 80        mx
    STA $4301                       ; $808AFB  8D 01 43     mx
    LDA #$01                        ; $808AFE  A9 01        mx
    STA $420B                       ; $808B00  8D 0B 42     mx
    REP #$20                        ; $808B03  C2 20        mx
    LDA #$C920                      ; $808B05  A9 20 C9     Mx
    STA $2181                       ; $808B08  8D 81 21     Mx
    LDA #$E8F4                      ; $808B0B  A9 F4 E8     Mx
    STA $4302                       ; $808B0E  8D 02 43     Mx
    LDA #$0100                      ; $808B11  A9 00 01     Mx
    STA $4305                       ; $808B14  8D 05 43     Mx
    SEP #$20                        ; $808B17  E2 20        Mx
    LDA #$7F                        ; $808B19  A9 7F        mx
    STA $2183                       ; $808B1B  8D 83 21     mx
    LDA #$03                        ; $808B1E  A9 03        mx
    STA $4304                       ; $808B20  8D 04 43     mx
    STZ $4300                       ; $808B23  9C 00 43     mx
    LDA #$80                        ; $808B26  A9 80        mx
    STA $4301                       ; $808B28  8D 01 43     mx
    LDA #$01                        ; $808B2B  A9 01        mx
    STA $420B                       ; $808B2D  8D 0B 42     mx
L_808B30:
    REP #$30                        ; $808B30  C2 30        MX
    JSR L_809040                    ; $808B32  20 40 90     MX
    JSR L_809C89                    ; $808B35  20 89 9C     MX
    REP #$30                        ; $808B38  C2 30        Mx
    LDA #$27FB                      ; $808B3A  A9 FB 27     MX
    STA $00D1                       ; $808B3D  8D D1 00     MX
    LDA #$FB71                      ; $808B40  A9 71 FB     MX
    STA $00D0                       ; $808B43  8D D0 00     MX
    JSL L_80E02F                    ; $808B46  22 2F E0 80  MX
    SEP #$10                        ; $808B4A  E2 10        MX
    LDA #$8CEC                      ; $808B4C  A9 EC 8C     Mx
    STA $0100                       ; $808B4F  8D 00 01     Mx
    RTS                             ; $808B52  60           Mx
L_808B53:
    STA $2121                       ; $808B53  8D 21 21     mx
L_808B56:
    LDY #$00                        ; $808B56  A0 00        mx
L_808B58:
    LDA [$D0],Y                     ; $808B58  B7 D0        mx
L_808B5A:
    STA $2122                       ; $808B5A  8D 22 21     mx
L_808B5D:
    INY                             ; $808B5D  C8           mx
L_808B5E:
    LDA [$D0],Y                     ; $808B5E  B7 D0        mx
L_808B60:
    STA $2122                       ; $808B60  8D 22 21     mx
L_808B63:
    INY                             ; $808B63  C8           mx
L_808B64:
    DEX                             ; $808B64  CA           mx
L_808B65:
    BNE L_808B58                    ; $808B65  D0 F1        mx
L_808B67:
    RTL                             ; $808B67  6B           mx
L_808B68:
    LDX #$8F                        ; $808B68  A2 8F        mx
    STX $2100                       ; $808B6A  8E 00 21     mx
    LDX #$09                        ; $808B6D  A2 09        mx
    STX $0115                       ; $808B6F  8E 15 01     mx
    LDX #$53                        ; $808B72  A2 53        mx
    STX $2107                       ; $808B74  8E 07 21     mx
    LDX #$43                        ; $808B77  A2 43        mx
    STX $2108                       ; $808B79  8E 08 21     mx
    LDX #$54                        ; $808B7C  A2 54        mx
    STX $2109                       ; $808B7E  8E 09 21     mx
    LDX #$00                        ; $808B81  A2 00        mx
    STX $210B                       ; $808B83  8E 0B 21     mx
    LDX #$06                        ; $808B86  A2 06        mx
    STX $210C                       ; $808B88  8E 0C 21     mx
    LDX #$17                        ; $808B8B  A2 17        mx
    STX $0117                       ; $808B8D  8E 17 01     mx
    LDX #$00                        ; $808B90  A2 00        mx
    STX $0118                       ; $808B92  8E 18 01     mx
    LDX #$03                        ; $808B95  A2 03        mx
    STX $2101                       ; $808B97  8E 01 21     mx
    LDX #$00                        ; $808B9A  A2 00        mx
    STX $011C                       ; $808B9C  8E 1C 01     mx
    LDX #$00                        ; $808B9F  A2 00        mx
    STX $420B                       ; $808BA1  8E 0B 42     mx
    LDX #$00                        ; $808BA4  A2 00        mx
    STX $420C                       ; $808BA6  8E 0C 42     mx
    RTS                             ; $808BA9  60           mx
L_808BAA:
    LDA $0115                       ; $808BAA  AD 15 01     mx
    STA $2105                       ; $808BAD  8D 05 21     mx
    LDA $0117                       ; $808BB0  AD 17 01     mx
    STA $212C                       ; $808BB3  8D 2C 21     mx
    LDA $0118                       ; $808BB6  AD 18 01     mx
    STA $212D                       ; $808BB9  8D 2D 21     mx
    LDA $012B                       ; $808BBC  AD 2B 01     mx
    STA $2110                       ; $808BBF  8D 10 21     mx
    LDA $012C                       ; $808BC2  AD 2C 01     mx
    STA $2110                       ; $808BC5  8D 10 21     mx
    LDA $012B                       ; $808BC8  AD 2B 01     mx
    STA $210E                       ; $808BCB  8D 0E 21     mx
    LDA $012C                       ; $808BCE  AD 2C 01     mx
    STA $210E                       ; $808BD1  8D 0E 21     mx
    LDA #$00                        ; $808BD4  A9 00        mx
    STA $2111                       ; $808BD6  8D 11 21     mx
    LDA #$00                        ; $808BD9  A9 00        mx
    STA $2111                       ; $808BDB  8D 11 21     mx
    RTS                             ; $808BDE  60           mx
L_808BDF:
    LDX #$00                        ; $808BDF  A2 00        mx
    STX $420B                       ; $808BE1  8E 0B 42     mx
    LDX #$00                        ; $808BE4  A2 00        mx
    STX $420C                       ; $808BE6  8E 0C 42     mx
    LDA $0006                       ; $808BE9  AD 06 00     mx
    AND #$01                        ; $808BEC  29 01        mx
    BEQ L_808C6E                    ; $808BEE  F0 7E        mx
    LDX #$02                        ; $808BF0  A2 02        mx
    STX $4370                       ; $808BF2  8E 70 43     mx
    LDX #$0F                        ; $808BF5  A2 0F        mx
    STX $4371                       ; $808BF7  8E 71 43     mx
    LDX #$A3                        ; $808BFA  A2 A3        mx
    STX $4372                       ; $808BFC  8E 72 43     mx
    LDX #$0E                        ; $808BFF  A2 0E        mx
    STX $4373                       ; $808C01  8E 73 43     mx
    LDX #$00                        ; $808C04  A2 00        mx
    STX $4374                       ; $808C06  8E 74 43     mx
    LDX #$00                        ; $808C09  A2 00        mx
    STX $4377                       ; $808C0B  8E 77 43     mx
    LDX #$02                        ; $808C0E  A2 02        mx
    STX $4360                       ; $808C10  8E 60 43     mx
    LDX #$0D                        ; $808C13  A2 0D        mx
    STX $4361                       ; $808C15  8E 61 43     mx
    LDX #$9B                        ; $808C18  A2 9B        mx
    STX $4362                       ; $808C1A  8E 62 43     mx
    LDX #$0F                        ; $808C1D  A2 0F        mx
    STX $4363                       ; $808C1F  8E 63 43     mx
    LDX #$00                        ; $808C22  A2 00        mx
    STX $4364                       ; $808C24  8E 64 43     mx
    LDX #$00                        ; $808C27  A2 00        mx
    STX $4367                       ; $808C29  8E 67 43     mx
    LDX #$02                        ; $808C2C  A2 02        mx
    STX $4350                       ; $808C2E  8E 50 43     mx
    LDX #$12                        ; $808C31  A2 12        mx
    STX $4351                       ; $808C33  8E 51 43     mx
    LDX #$BB                        ; $808C36  A2 BB        mx
    STX $4352                       ; $808C38  8E 52 43     mx
    LDX #$10                        ; $808C3B  A2 10        mx
    STX $4353                       ; $808C3D  8E 53 43     mx
    LDX #$00                        ; $808C40  A2 00        mx
    STX $4354                       ; $808C42  8E 54 43     mx
    LDX #$00                        ; $808C45  A2 00        mx
    STX $4357                       ; $808C47  8E 57 43     mx
    LDX #$03                        ; $808C4A  A2 03        mx
    STX $4340                       ; $808C4C  8E 40 43     mx
    LDX #$21                        ; $808C4F  A2 21        mx
    STX $4341                       ; $808C51  8E 41 43     mx
    LDX #$D1                        ; $808C54  A2 D1        mx
    STX $4342                       ; $808C56  8E 42 43     mx
    LDX #$10                        ; $808C59  A2 10        mx
    STX $4343                       ; $808C5B  8E 43 43     mx
    LDX #$00                        ; $808C5E  A2 00        mx
    STX $4344                       ; $808C60  8E 44 43     mx
    LDX #$00                        ; $808C63  A2 00        mx
    STX $4347                       ; $808C65  8E 47 43     mx
    LDX #$F0                        ; $808C68  A2 F0        mx
    STX $420C                       ; $808C6A  8E 0C 42     mx
    RTS                             ; $808C6D  60           mx
L_808C6E:
    LDX #$02                        ; $808C6E  A2 02        mx
    STX $4370                       ; $808C70  8E 70 43     mx
    LDX #$0F                        ; $808C73  A2 0F        mx
    STX $4371                       ; $808C75  8E 71 43     mx
    LDX #$B2                        ; $808C78  A2 B2        mx
    STX $4372                       ; $808C7A  8E 72 43     mx
    LDX #$0F                        ; $808C7D  A2 0F        mx
    STX $4373                       ; $808C7F  8E 73 43     mx
    LDX #$00                        ; $808C82  A2 00        mx
    STX $4374                       ; $808C84  8E 74 43     mx
    LDX #$00                        ; $808C87  A2 00        mx
    STX $4377                       ; $808C89  8E 77 43     mx
    LDX #$02                        ; $808C8C  A2 02        mx
    STX $4360                       ; $808C8E  8E 60 43     mx
    LDX #$0D                        ; $808C91  A2 0D        mx
    STX $4361                       ; $808C93  8E 61 43     mx
    LDX #$AA                        ; $808C96  A2 AA        mx
    STX $4362                       ; $808C98  8E 62 43     mx
    LDX #$10                        ; $808C9B  A2 10        mx
    STX $4363                       ; $808C9D  8E 63 43     mx
    LDX #$00                        ; $808CA0  A2 00        mx
    STX $4364                       ; $808CA2  8E 64 43     mx
    LDX #$00                        ; $808CA5  A2 00        mx
    STX $4367                       ; $808CA7  8E 67 43     mx
    LDX #$02                        ; $808CAA  A2 02        mx
    STX $4350                       ; $808CAC  8E 50 43     mx
    LDX #$12                        ; $808CAF  A2 12        mx
    STX $4351                       ; $808CB1  8E 51 43     mx
    LDX #$BB                        ; $808CB4  A2 BB        mx
    STX $4352                       ; $808CB6  8E 52 43     mx
    LDX #$10                        ; $808CB9  A2 10        mx
    STX $4353                       ; $808CBB  8E 53 43     mx
    LDX #$00                        ; $808CBE  A2 00        mx
    STX $4354                       ; $808CC0  8E 54 43     mx
    LDX #$00                        ; $808CC3  A2 00        mx
    STX $4357                       ; $808CC5  8E 57 43     mx
    LDX #$03                        ; $808CC8  A2 03        mx
    STX $4340                       ; $808CCA  8E 40 43     mx
    LDX #$21                        ; $808CCD  A2 21        mx
    STX $4341                       ; $808CCF  8E 41 43     mx
    LDX #$D1                        ; $808CD2  A2 D1        mx
    STX $4342                       ; $808CD4  8E 42 43     mx
    LDX #$10                        ; $808CD7  A2 10        mx
    STX $4343                       ; $808CD9  8E 43 43     mx
    LDX #$00                        ; $808CDC  A2 00        mx
    STX $4344                       ; $808CDE  8E 44 43     mx
    LDX #$00                        ; $808CE1  A2 00        mx
    STX $4347                       ; $808CE3  8E 47 43     mx
    LDX #$F0                        ; $808CE6  A2 F0        mx
    STX $420C                       ; $808CE8  8E 0C 42     mx
    RTS                             ; $808CEB  60           mx
L_808CEC:
    SEP #$30                        ; $808CEC  E2 30        mx
    LDA #$4A                        ; $808CEE  A9 4A        mx
    STA $7FFFFE                     ; $808CF0  8F FE FF 7F  mx
    LDA $112B                       ; $808CF4  AD 2B 11     mx
    BEQ L_808D57                    ; $808CF7  F0 5E        mx
    LDA #$41                        ; $808CF9  A9 41        mx
    STA $7FFFFE                     ; $808CFB  8F FE FF 7F  mx
    LDA $0CFB                       ; $808CFF  AD FB 0C     mx
    BEQ L_808D4E                    ; $808D02  F0 4A        mx
    LDA #$53                        ; $808D04  A9 53        mx
    STA $7FFFFE                     ; $808D06  8F FE FF 7F  mx
    LDA $0CFB                       ; $808D0A  AD FB 0C     mx
    CMP #$01                        ; $808D0D  C9 01        mx
    BNE L_808D4E                    ; $808D0F  D0 3D        mx
    LDA #$80                        ; $808D11  A9 80        mx
    STA $2100                       ; $808D13  8D 00 21     mx
    LDA #$1A                        ; $808D16  A9 1A        mx
    STA $2102                       ; $808D18  8D 02 21     mx
    STZ $2103                       ; $808D1B  9C 03 21     mx
    STZ $4300                       ; $808D1E  9C 00 43     mx
    LDA #$04                        ; $808D21  A9 04        mx
    STA $4301                       ; $808D23  8D 01 43     mx
    LDA #$34                        ; $808D26  A9 34        mx
    STA $4302                       ; $808D28  8D 02 43     mx
    LDA #$03                        ; $808D2B  A9 03        mx
    STA $4303                       ; $808D2D  8D 03 43     mx
    STZ $4304                       ; $808D30  9C 04 43     mx
    LDA #$14                        ; $808D33  A9 14        mx
    STA $4305                       ; $808D35  8D 05 43     mx
    LDA #$00                        ; $808D38  A9 00        mx
    STA $4306                       ; $808D3A  8D 06 43     mx
    LDA #$01                        ; $808D3D  A9 01        mx
    STA $420B                       ; $808D3F  8D 0B 42     mx
    LDA #$4F                        ; $808D42  A9 4F        mx
    STA $7FFFFE                     ; $808D44  8F FE FF 7F  mx
    LDA $011C                       ; $808D48  AD 1C 01     mx
    STA $2100                       ; $808D4B  8D 00 21     mx
L_808D4E:
    LDA #$4E                        ; $808D4E  A9 4E        mx
    STA $7FFFFE                     ; $808D50  8F FE FF 7F  mx
    JMP L_808FA7                    ; $808D54  4C A7 8F     mx
L_808D57:
    SEP #$30                        ; $808D57  E2 30        mx
    LDA #$80                        ; $808D59  A9 80        mx
    STA $2100                       ; $808D5B  8D 00 21     mx
    JSR L_80D977                    ; $808D5E  20 77 D9     mx
    JSR L_80F8DC                    ; $808D61  20 DC F8     mx
    STZ $2102                       ; $808D64  9C 02 21     mx
    STZ $2103                       ; $808D67  9C 03 21     mx
    STZ $4300                       ; $808D6A  9C 00 43     mx
    LDA #$04                        ; $808D6D  A9 04        mx
    STA $4301                       ; $808D6F  8D 01 43     mx
    LDA #$00                        ; $808D72  A9 00        mx
    STA $4302                       ; $808D74  8D 02 43     mx
    LDA #$03                        ; $808D77  A9 03        mx
    STA $4303                       ; $808D79  8D 03 43     mx
    STZ $4304                       ; $808D7C  9C 04 43     mx
    LDA #$20                        ; $808D7F  A9 20        mx
    STA $4305                       ; $808D81  8D 05 43     mx
    LDA #$02                        ; $808D84  A9 02        mx
    STA $4306                       ; $808D86  8D 06 43     mx
    LDA #$01                        ; $808D89  A9 01        mx
    STA $420B                       ; $808D8B  8D 0B 42     mx
    LDA $00BE                       ; $808D8E  AD BE 00     mx
    BNE L_808D96                    ; $808D91  D0 03        mx
    JMP L_808EC2                    ; $808D93  4C C2 8E     mx
L_808D96:
    DEC                             ; $808D96  3A           mx
    BNE L_808D9C                    ; $808D97  D0 03        mx
    JMP L_808E62                    ; $808D99  4C 62 8E     mx
L_808D9C:
    DEC                             ; $808D9C  3A           mx
    BNE L_808DA2                    ; $808D9D  D0 03        mx
    JMP L_808E02                    ; $808D9F  4C 02 8E     mx
L_808DA2:
    LDA $0A3E                       ; $808DA2  AD 3E 0A     mx
    BNE L_808DD2                    ; $808DA5  D0 2B        mx
L_808DA7:
    LDA #$AF                        ; $808DA7  A9 AF        mx
    STA $2121                       ; $808DA9  8D 21 21     mx
    LDA #$7B                        ; $808DAC  A9 7B        mx
    STA $2122                       ; $808DAE  8D 22 21     mx
    LDA #$6F                        ; $808DB1  A9 6F        mx
    STA $2122                       ; $808DB3  8D 22 21     mx
    LDA #$A9                        ; $808DB6  A9 A9        mx
    STA $2121                       ; $808DB8  8D 21 21     mx
    LDA #$AD                        ; $808DBB  A9 AD        mx
    STA $2122                       ; $808DBD  8D 22 21     mx
    LDA #$35                        ; $808DC0  A9 35        mx
    STA $2122                       ; $808DC2  8D 22 21     mx
    LDA #$94                        ; $808DC5  A9 94        mx
    STA $2122                       ; $808DC7  8D 22 21     mx
    LDA #$52                        ; $808DCA  A9 52        mx
    STA $2122                       ; $808DCC  8D 22 21     mx
    JMP L_808F1F                    ; $808DCF  4C 1F 8F     mx
L_808DD2:
    LDX $09A9                       ; $808DD2  AE A9 09     mx
    BEQ L_808DA7                    ; $808DD5  F0 D0        mx
    LDA #$AF                        ; $808DD7  A9 AF        mx
    STA $2121                       ; $808DD9  8D 21 21     mx
    LDA #$00                        ; $808DDC  A9 00        mx
    STA $2122                       ; $808DDE  8D 22 21     mx
    LDA #$7C                        ; $808DE1  A9 7C        mx
    STA $2122                       ; $808DE3  8D 22 21     mx
    LDA #$A9                        ; $808DE6  A9 A9        mx
    STA $2121                       ; $808DE8  8D 21 21     mx
    LDA #$00                        ; $808DEB  A9 00        mx
    STA $2122                       ; $808DED  8D 22 21     mx
    LDA #$6C                        ; $808DF0  A9 6C        mx
    STA $2122                       ; $808DF2  8D 22 21     mx
    LDA #$00                        ; $808DF5  A9 00        mx
    STA $2122                       ; $808DF7  8D 22 21     mx
    LDA #$5C                        ; $808DFA  A9 5C        mx
    STA $2122                       ; $808DFC  8D 22 21     mx
    JMP L_808F1F                    ; $808DFF  4C 1F 8F     mx
L_808E02:
    LDA $0956                       ; $808E02  AD 56 09     mx
    BNE L_808E32                    ; $808E05  D0 2B        mx
L_808E07:
    LDA #$BF                        ; $808E07  A9 BF        mx
    STA $2121                       ; $808E09  8D 21 21     mx
    LDA #$7B                        ; $808E0C  A9 7B        mx
    STA $2122                       ; $808E0E  8D 22 21     mx
    LDA #$6F                        ; $808E11  A9 6F        mx
    STA $2122                       ; $808E13  8D 22 21     mx
    LDA #$B9                        ; $808E16  A9 B9        mx
    STA $2121                       ; $808E18  8D 21 21     mx
    LDA #$AD                        ; $808E1B  A9 AD        mx
    STA $2122                       ; $808E1D  8D 22 21     mx
    LDA #$35                        ; $808E20  A9 35        mx
    STA $2122                       ; $808E22  8D 22 21     mx
    LDA #$94                        ; $808E25  A9 94        mx
    STA $2122                       ; $808E27  8D 22 21     mx
    LDA #$52                        ; $808E2A  A9 52        mx
    STA $2122                       ; $808E2C  8D 22 21     mx
    JMP L_808F1F                    ; $808E2F  4C 1F 8F     mx
L_808E32:
    LDX $08C1                       ; $808E32  AE C1 08     mx
    BEQ L_808E07                    ; $808E35  F0 D0        mx
    LDA #$BF                        ; $808E37  A9 BF        mx
    STA $2121                       ; $808E39  8D 21 21     mx
    LDA #$E0                        ; $808E3C  A9 E0        mx
    STA $2122                       ; $808E3E  8D 22 21     mx
    LDA #$03                        ; $808E41  A9 03        mx
    STA $2122                       ; $808E43  8D 22 21     mx
    LDA #$B9                        ; $808E46  A9 B9        mx
    STA $2121                       ; $808E48  8D 21 21     mx
    LDA #$60                        ; $808E4B  A9 60        mx
    STA $2122                       ; $808E4D  8D 22 21     mx
    LDA #$03                        ; $808E50  A9 03        mx
    STA $2122                       ; $808E52  8D 22 21     mx
    LDA #$E0                        ; $808E55  A9 E0        mx
    STA $2122                       ; $808E57  8D 22 21     mx
    LDA #$02                        ; $808E5A  A9 02        mx
    STA $2122                       ; $808E5C  8D 22 21     mx
    JMP L_808F1F                    ; $808E5F  4C 1F 8F     mx
L_808E62:
    LDA $086E                       ; $808E62  AD 6E 08     mx
    BNE L_808E92                    ; $808E65  D0 2B        mx
L_808E67:
    LDA #$9F                        ; $808E67  A9 9F        mx
    STA $2121                       ; $808E69  8D 21 21     mx
    LDA #$7B                        ; $808E6C  A9 7B        mx
    STA $2122                       ; $808E6E  8D 22 21     mx
    LDA #$6F                        ; $808E71  A9 6F        mx
    STA $2122                       ; $808E73  8D 22 21     mx
    LDA #$99                        ; $808E76  A9 99        mx
    STA $2121                       ; $808E78  8D 21 21     mx
    LDA #$AD                        ; $808E7B  A9 AD        mx
    STA $2122                       ; $808E7D  8D 22 21     mx
    LDA #$35                        ; $808E80  A9 35        mx
    STA $2122                       ; $808E82  8D 22 21     mx
    LDA #$94                        ; $808E85  A9 94        mx
    STA $2122                       ; $808E87  8D 22 21     mx
    LDA #$52                        ; $808E8A  A9 52        mx
    STA $2122                       ; $808E8C  8D 22 21     mx
    JMP L_808F1F                    ; $808E8F  4C 1F 8F     mx
L_808E92:
    LDX $07D9                       ; $808E92  AE D9 07     mx
    BEQ L_808E67                    ; $808E95  F0 D0        mx
    LDA #$9F                        ; $808E97  A9 9F        mx
    STA $2121                       ; $808E99  8D 21 21     mx
    LDA #$FF                        ; $808E9C  A9 FF        mx
    STA $2122                       ; $808E9E  8D 22 21     mx
    LDA #$03                        ; $808EA1  A9 03        mx
    STA $2122                       ; $808EA3  8D 22 21     mx
    LDA #$99                        ; $808EA6  A9 99        mx
    STA $2121                       ; $808EA8  8D 21 21     mx
    LDA #$7B                        ; $808EAB  A9 7B        mx
    STA $2122                       ; $808EAD  8D 22 21     mx
    LDA #$03                        ; $808EB0  A9 03        mx
    STA $2122                       ; $808EB2  8D 22 21     mx
    LDA #$F7                        ; $808EB5  A9 F7        mx
    STA $2122                       ; $808EB7  8D 22 21     mx
    LDA #$02                        ; $808EBA  A9 02        mx
    STA $2122                       ; $808EBC  8D 22 21     mx
    JMP L_808F1F                    ; $808EBF  4C 1F 8F     mx
L_808EC2:
    LDA $0786                       ; $808EC2  AD 86 07     mx
    BNE L_808EF2                    ; $808EC5  D0 2B        mx
L_808EC7:
    LDA #$8F                        ; $808EC7  A9 8F        mx
    STA $2121                       ; $808EC9  8D 21 21     mx
    LDA #$7B                        ; $808ECC  A9 7B        mx
    STA $2122                       ; $808ECE  8D 22 21     mx
    LDA #$6F                        ; $808ED1  A9 6F        mx
    STA $2122                       ; $808ED3  8D 22 21     mx
    LDA #$89                        ; $808ED6  A9 89        mx
    STA $2121                       ; $808ED8  8D 21 21     mx
    LDA #$AD                        ; $808EDB  A9 AD        mx
    STA $2122                       ; $808EDD  8D 22 21     mx
    LDA #$35                        ; $808EE0  A9 35        mx
    STA $2122                       ; $808EE2  8D 22 21     mx
    LDA #$94                        ; $808EE5  A9 94        mx
    STA $2122                       ; $808EE7  8D 22 21     mx
    LDA #$52                        ; $808EEA  A9 52        mx
    STA $2122                       ; $808EEC  8D 22 21     mx
    JMP L_808F1F                    ; $808EEF  4C 1F 8F     mx
L_808EF2:
    LDX $06F1                       ; $808EF2  AE F1 06     mx
    BEQ L_808EC7                    ; $808EF5  F0 D0        mx
    LDA #$8F                        ; $808EF7  A9 8F        mx
    STA $2121                       ; $808EF9  8D 21 21     mx
    LDA #$1F                        ; $808EFC  A9 1F        mx
    STA $2122                       ; $808EFE  8D 22 21     mx
    LDA #$00                        ; $808F01  A9 00        mx
    STA $2122                       ; $808F03  8D 22 21     mx
    LDA #$89                        ; $808F06  A9 89        mx
    STA $2121                       ; $808F08  8D 21 21     mx
    LDA #$1B                        ; $808F0B  A9 1B        mx
    STA $2122                       ; $808F0D  8D 22 21     mx
    LDA #$00                        ; $808F10  A9 00        mx
    STA $2122                       ; $808F12  8D 22 21     mx
    LDA #$17                        ; $808F15  A9 17        mx
    STA $2122                       ; $808F17  8D 22 21     mx
    LDA #$00                        ; $808F1A  A9 00        mx
    STA $2122                       ; $808F1C  8D 22 21     mx
L_808F1F:
    JSR L_808BAA                    ; $808F1F  20 AA 8B     mx
    LDA $1139                       ; $808F22  AD 39 11     mx
    BEQ L_808F40                    ; $808F25  F0 19        mx
    BMI L_808F2C                    ; $808F27  30 03        mx
    JMP L_808F74                    ; $808F29  4C 74 8F     mx
L_808F2C:
    LDA $011C                       ; $808F2C  AD 1C 01     mx
    AND #$0F                        ; $808F2F  29 0F        mx
    BNE L_808F3A                    ; $808F31  D0 07        mx
    LDA #$80                        ; $808F33  A9 80        mx
    STA $011C                       ; $808F35  8D 1C 01     mx
    BRA L_808F74                    ; $808F38  80 3A        mx
L_808F3A:
    DEC                             ; $808F3A  3A           mx
    STA $011C                       ; $808F3B  8D 1C 01     mx
    BRA L_808F74                    ; $808F3E  80 34        mx
L_808F40:
    LDA $011C                       ; $808F40  AD 1C 01     mx
    AND #$0F                        ; $808F43  29 0F        mx
    CMP #$0F                        ; $808F45  C9 0F        mx
    BEQ L_808F74                    ; $808F47  F0 2B        mx
    REP #$20                        ; $808F49  C2 20        mx
    LDA $0129                       ; $808F4B  AD 29 01     Mx
    CMP $0E81                       ; $808F4E  CD 81 0E     Mx
    BCS L_808F5E                    ; $808F51  B0 0B        Mx
    SEP #$20                        ; $808F53  E2 20        Mx
    LDA $011C                       ; $808F55  AD 1C 01     mx
    AND #$0F                        ; $808F58  29 0F        mx
    ORA #$80                        ; $808F5A  09 80        mx
    BNE L_808F71                    ; $808F5C  D0 13        mx
L_808F5E:
    SEP #$20                        ; $808F5E  E2 20        mx
    LDA $011C                       ; $808F60  AD 1C 01     mx
    AND #$0F                        ; $808F63  29 0F        mx
    INC                             ; $808F65  1A           mx
    CMP #$0F                        ; $808F66  C9 0F        mx
    BNE L_808F71                    ; $808F68  D0 07        mx
    REP #$20                        ; $808F6A  C2 20        mx
    STZ $0E81                       ; $808F6C  9C 81 0E     Mx
    SEP #$20                        ; $808F6F  E2 20        Mx
L_808F71:
    STA $011C                       ; $808F71  8D 1C 01     mx
L_808F74:
    LDA #$4E                        ; $808F74  A9 4E        mx
    STA $7FFFFE                     ; $808F76  8F FE FF 7F  mx
    LDA $011C                       ; $808F7A  AD 1C 01     mx
    STA $2100                       ; $808F7D  8D 00 21     mx
    JSR L_808BDF                    ; $808F80  20 DF 8B     mx
    REP #$20                        ; $808F83  C2 20        mx
    LDA #$7FFF                      ; $808F85  A9 FF 7F     Mx
    STA $10ED                       ; $808F88  8D ED 10     Mx
    LDA $1127                       ; $808F8B  AD 27 11     Mx
    STA $1110                       ; $808F8E  8D 10 11     Mx
    CMP #$7FFF                      ; $808F91  C9 FF 7F     Mx
    BEQ L_808F99                    ; $808F94  F0 03        Mx
    STA $10ED                       ; $808F96  8D ED 10     Mx
L_808F99:
    LDA $1129                       ; $808F99  AD 29 11     Mx
    STA $1115                       ; $808F9C  8D 15 11     Mx
    CMP #$7FFF                      ; $808F9F  C9 FF 7F     Mx
    BEQ L_808FA7                    ; $808FA2  F0 03        Mx
    STA $10ED                       ; $808FA4  8D ED 10     Mx
L_808FA7:
    REP #$30                        ; $808FA7  C2 30        mx
    LDA #$0046                      ; $808FA9  A9 46 00     MX
    STA $7FFFFE                     ; $808FAC  8F FE FF 7F  MX
    JSL L_8AA833                    ; $808FB0  22 33 A8 8A  MX
    LDA #$004C                      ; $808FB4  A9 4C 00     MX
    STA $7FFFFE                     ; $808FB7  8F FE FF 7F  MX
    LDA $1609                       ; $808FBB  AD 09 16     MX
    BEQ L_808FD6                    ; $808FBE  F0 16        MX
    LDA $160B                       ; $808FC0  AD 0B 16     MX
    DEC                             ; $808FC3  3A           MX
    AND #$000F                      ; $808FC4  29 0F 00     MX
    STA $160B                       ; $808FC7  8D 0B 16     MX
    BNE L_808FD6                    ; $808FCA  D0 0A        MX
    LDA #$0001                      ; $808FCC  A9 01 00     MX
    JSL L_BDFDF3                    ; $808FCF  22 F3 FD BD  MX
    DEC $1609                       ; $808FD3  CE 09 16     MX
L_808FD6:
    LDA #$0043                      ; $808FD6  A9 43 00     MX
    STA $7FFFFE                     ; $808FD9  8F FE FF 7F  MX
    JSL L_BDFE8F                    ; $808FDD  22 8F FE BD  MX
    SEP #$20                        ; $808FE1  E2 20        MX
    LDA #$55                        ; $808FE3  A9 55        mX
    STA $7FFFFE                     ; $808FE5  8F FE FF 7F  mX
    INC $1F00                       ; $808FE9  EE 00 1F     mX
    INC $0104                       ; $808FEC  EE 04 01     mX
    LDA $4210                       ; $808FEF  AD 10 42     mX
    RTS                             ; $808FF2  60           mX
L_808FF3:
    LDA $0CEB                       ; $808FF3  AD EB 0C     Mx
    STA $0CED                       ; $808FF6  8D ED 0C     Mx
    LDA $0CEF                       ; $808FF9  AD EF 0C     Mx
    STA $0CF1                       ; $808FFC  8D F1 0C     Mx
    LDA $0CF3                       ; $808FFF  AD F3 0C     Mx
    STA $0CF5                       ; $809002  8D F5 0C     Mx
    LDA $0CF7                       ; $809005  AD F7 0C     Mx
    STA $0CF9                       ; $809008  8D F9 0C     Mx
    LDA $0008                       ; $80900B  AD 08 00     Mx
    AND #$1000                      ; $80900E  29 00 10     Mx
    STA $0CEB                       ; $809011  8D EB 0C     Mx
    LDA $000A                       ; $809014  AD 0A 00     Mx
    AND #$1000                      ; $809017  29 00 10     Mx
    STA $0CEF                       ; $80901A  8D EF 0C     Mx
    LDA $000C                       ; $80901D  AD 0C 00     Mx
    AND #$1000                      ; $809020  29 00 10     Mx
    STA $0CF3                       ; $809023  8D F3 0C     Mx
    LDA $000E                       ; $809026  AD 0E 00     Mx
    AND #$1000                      ; $809029  29 00 10     Mx
    STA $0CF7                       ; $80902C  8D F7 0C     Mx
    LDA $0CEB                       ; $80902F  AD EB 0C     Mx
    ORA $0CEF                       ; $809032  0D EF 0C     Mx
    ORA $0CF3                       ; $809035  0D F3 0C     Mx
    ORA $0CF7                       ; $809038  0D F7 0C     Mx
    STA $0CE9                       ; $80903B  8D E9 0C     Mx
    RTS                             ; $80903E  60           Mx
L_80903F:
    RTS                             ; $80903F  60           Mx
L_809040:
    SEP #$20                        ; $809040  E2 20        MX
    PHB                             ; $809042  8B           mX
    LDA #$7F                        ; $809043  A9 7F        mX
    PHA                             ; $809045  48           mX
    PLB                             ; $809046  AB           mX
    REP #$30                        ; $809047  C2 30        mX
    LDX #$4000                      ; $809049  A2 00 40     MX
    LDY #$0000                      ; $80904C  A0 00 00     MX
    LDA #$0000                      ; $80904F  A9 00 00     MX
L_809052:
    STA $4000,Y                     ; $809052  99 00 40     MX
    INY                             ; $809055  C8           MX
    INY                             ; $809056  C8           MX
    DEX                             ; $809057  CA           MX
    BNE L_809052                    ; $809058  D0 F8        MX
    SEP #$20                        ; $80905A  E2 20        MX
    PLB                             ; $80905C  AB           mX
    REP #$20                        ; $80905D  C2 20        mX
    LDA #$1798                      ; $80905F  A9 98 17     MX
    STA $00D1                       ; $809062  8D D1 00     MX
    LDA #$98B0                      ; $809065  A9 B0 98     MX
    LDX #$0000                      ; $809068  A2 00 00     MX
    JSR L_809873                    ; $80906B  20 73 98     MX
    LDA #$1798                      ; $80906E  A9 98 17     MX
    STA $00D1                       ; $809071  8D D1 00     MX
    LDA #$98B0                      ; $809074  A9 B0 98     MX
    LDX #$4000                      ; $809077  A2 00 40     MX
    JSR L_809873                    ; $80907A  20 73 98     MX
    LDA #$1798                      ; $80907D  A9 98 17     MX
    STA $00D1                       ; $809080  8D D1 00     MX
    LDA #$98B0                      ; $809083  A9 B0 98     MX
    LDX #$0000                      ; $809086  A2 00 00     MX
    JSR L_809657                    ; $809089  20 57 96     MX
    LDA #$1798                      ; $80908C  A9 98 17     MX
    STA $00D1                       ; $80908F  8D D1 00     MX
    LDA #$98B0                      ; $809092  A9 B0 98     MX
    LDX #$0030                      ; $809095  A2 30 00     MX
    JSR L_809657                    ; $809098  20 57 96     MX
    LDA #$1798                      ; $80909B  A9 98 17     MX
    STA $00D1                       ; $80909E  8D D1 00     MX
    LDA #$98B0                      ; $8090A1  A9 B0 98     MX
    LDX #$0060                      ; $8090A4  A2 60 00     MX
    JSR L_809657                    ; $8090A7  20 57 96     MX
    LDA #$1798                      ; $8090AA  A9 98 17     MX
    STA $00D1                       ; $8090AD  8D D1 00     MX
    LDA #$98B0                      ; $8090B0  A9 B0 98     MX
    LDX #$0090                      ; $8090B3  A2 90 00     MX
    JSR L_809657                    ; $8090B6  20 57 96     MX
    LDA #$1798                      ; $8090B9  A9 98 17     MX
    STA $00D1                       ; $8090BC  8D D1 00     MX
    LDA #$98B0                      ; $8090BF  A9 B0 98     MX
    LDX #$00C0                      ; $8090C2  A2 C0 00     MX
    JSR L_809657                    ; $8090C5  20 57 96     MX
    LDA #$1798                      ; $8090C8  A9 98 17     MX
    STA $00D1                       ; $8090CB  8D D1 00     MX
    LDA #$98B0                      ; $8090CE  A9 B0 98     MX
    LDX #$1000                      ; $8090D1  A2 00 10     MX
    JSR L_809657                    ; $8090D4  20 57 96     MX
    LDA #$1798                      ; $8090D7  A9 98 17     MX
    STA $00D1                       ; $8090DA  8D D1 00     MX
    LDA #$98B0                      ; $8090DD  A9 B0 98     MX
    LDX #$1030                      ; $8090E0  A2 30 10     MX
    JSR L_809657                    ; $8090E3  20 57 96     MX
    LDA #$1798                      ; $8090E6  A9 98 17     MX
    STA $00D1                       ; $8090E9  8D D1 00     MX
    LDA #$98B0                      ; $8090EC  A9 B0 98     MX
    LDX #$1060                      ; $8090EF  A2 60 10     MX
    JSR L_809657                    ; $8090F2  20 57 96     MX
    LDA #$1798                      ; $8090F5  A9 98 17     MX
    STA $00D1                       ; $8090F8  8D D1 00     MX
    LDA #$98B0                      ; $8090FB  A9 B0 98     MX
    LDX #$1090                      ; $8090FE  A2 90 10     MX
    JSR L_809657                    ; $809101  20 57 96     MX
    LDA #$1798                      ; $809104  A9 98 17     MX
    STA $00D1                       ; $809107  8D D1 00     MX
    LDA #$98B0                      ; $80910A  A9 B0 98     MX
    LDX #$10C0                      ; $80910D  A2 C0 10     MX
    JSR L_809657                    ; $809110  20 57 96     MX
    LDA #$1798                      ; $809113  A9 98 17     MX
    STA $00D1                       ; $809116  8D D1 00     MX
    LDA #$98B0                      ; $809119  A9 B0 98     MX
    LDX #$2000                      ; $80911C  A2 00 20     MX
    JSR L_809657                    ; $80911F  20 57 96     MX
    LDA #$1798                      ; $809122  A9 98 17     MX
    STA $00D1                       ; $809125  8D D1 00     MX
    LDA #$98B0                      ; $809128  A9 B0 98     MX
    LDX #$2030                      ; $80912B  A2 30 20     MX
    JSR L_809657                    ; $80912E  20 57 96     MX
    LDA #$1798                      ; $809131  A9 98 17     MX
    STA $00D1                       ; $809134  8D D1 00     MX
    LDA #$98B0                      ; $809137  A9 B0 98     MX
    LDX #$2060                      ; $80913A  A2 60 20     MX
    JSR L_809657                    ; $80913D  20 57 96     MX
    LDA #$1798                      ; $809140  A9 98 17     MX
    STA $00D1                       ; $809143  8D D1 00     MX
    LDA #$98B0                      ; $809146  A9 B0 98     MX
    LDX #$2090                      ; $809149  A2 90 20     MX
    JSR L_809657                    ; $80914C  20 57 96     MX
    LDA #$1798                      ; $80914F  A9 98 17     MX
    STA $00D1                       ; $809152  8D D1 00     MX
    LDA #$98B0                      ; $809155  A9 B0 98     MX
    LDX #$20C0                      ; $809158  A2 C0 20     MX
    JSR L_809657                    ; $80915B  20 57 96     MX
    LDA #$1780                      ; $80915E  A9 80 17     MX
    STA $00D1                       ; $809161  8D D1 00     MX
    LDA #$8000                      ; $809164  A9 00 80     MX
    LDX #$2712                      ; $809167  A2 12 27     MX
    JSR L_809657                    ; $80916A  20 57 96     MX
    LDA #$1780                      ; $80916D  A9 80 17     MX
    STA $00D1                       ; $809170  8D D1 00     MX
    LDA #$80EC                      ; $809173  A9 EC 80     MX
    LDX #$2738                      ; $809176  A2 38 27     MX
    JSR L_809657                    ; $809179  20 57 96     MX
    LDA #$1787                      ; $80917C  A9 87 17     MX
    STA $00D1                       ; $80917F  8D D1 00     MX
    LDA #$8794                      ; $809182  A9 94 87     MX
    LDX #$2752                      ; $809185  A2 52 27     MX
    JSR L_809657                    ; $809188  20 57 96     MX
    LDA #$1781                      ; $80918B  A9 81 17     MX
    STA $00D1                       ; $80918E  8D D1 00     MX
    LDA #$8162                      ; $809191  A9 62 81     MX
    LDX #$2792                      ; $809194  A2 92 27     MX
    JSR L_809657                    ; $809197  20 57 96     MX
    LDA #$1780                      ; $80919A  A9 80 17     MX
    STA $00D1                       ; $80919D  8D D1 00     MX
    LDA #$8076                      ; $8091A0  A9 76 80     MX
    LDX #$27AC                      ; $8091A3  A2 AC 27     MX
    JSR L_809657                    ; $8091A6  20 57 96     MX
    LDA #$1783                      ; $8091A9  A9 83 17     MX
    STA $00D1                       ; $8091AC  8D D1 00     MX
    LDA #$83B4                      ; $8091AF  A9 B4 83     MX
    LDX #$2A12                      ; $8091B2  A2 12 2A     MX
    JSR L_809765                    ; $8091B5  20 65 97     MX
    LDA #$1781                      ; $8091B8  A9 81 17     MX
    STA $00D1                       ; $8091BB  8D D1 00     MX
    LDA #$81D8                      ; $8091BE  A9 D8 81     MX
    LDX #$2838                      ; $8091C1  A2 38 28     MX
    JSR L_8096B1                    ; $8091C4  20 B1 96     MX
    LDA #$1785                      ; $8091C7  A9 85 17     MX
    STA $00D1                       ; $8091CA  8D D1 00     MX
    LDA #$85D0                      ; $8091CD  A9 D0 85     MX
    LDX #$2A52                      ; $8091D0  A2 52 2A     MX
    JSR L_80970B                    ; $8091D3  20 0B 97     MX
    LDA #$1782                      ; $8091D6  A9 82 17     MX
    STA $00D1                       ; $8091D9  8D D1 00     MX
    LDA #$82C6                      ; $8091DC  A9 C6 82     MX
    LDX #$2892                      ; $8091DF  A2 92 28     MX
    JSR L_8096B1                    ; $8091E2  20 B1 96     MX
    LDA #$1784                      ; $8091E5  A9 84 17     MX
    STA $00D1                       ; $8091E8  8D D1 00     MX
    LDA #$84C2                      ; $8091EB  A9 C2 84     MX
    LDX #$2AAC                      ; $8091EE  A2 AC 2A     MX
    JSR L_809765                    ; $8091F1  20 65 97     MX
    LDA #$04E2                      ; $8091F4  A9 E2 04     MX
    STA $00D1                       ; $8091F7  8D D1 00     MX
    LDA #$E235                      ; $8091FA  A9 35 E2     MX
    LDX #$2E66                      ; $8091FD  A2 66 2E     MX
    JSR L_8097BF                    ; $809200  20 BF 97     MX
    LDA #$04E2                      ; $809203  A9 E2 04     MX
    STA $00D1                       ; $809206  8D D1 00     MX
    LDA #$E23F                      ; $809209  A9 3F E2     MX
    LDX #$2E78                      ; $80920C  A2 78 2E     MX
    JSR L_8097BF                    ; $80920F  20 BF 97     MX
    LDA #$04E2                      ; $809212  A9 E2 04     MX
    STA $00D1                       ; $809215  8D D1 00     MX
    LDA #$E249                      ; $809218  A9 49 E2     MX
    LDX #$2D6E                      ; $80921B  A2 6E 2D     MX
    JSR L_8097BF                    ; $80921E  20 BF 97     MX
    LDA #$28C2                      ; $809221  A9 C2 28     MX
    STA $00D1                       ; $809224  8D D1 00     MX
    LDA $0CD5                       ; $809227  AD D5 0C     MX
    CMP #$0003                      ; $80922A  C9 03 00     MX
    BCC L_809232                    ; $80922D  90 03        MX
    LDA #$0003                      ; $80922F  A9 03 00     MX
L_809232:
    ASL                             ; $809232  0A           MX
    TAX                             ; $809233  AA           MX
    LDA $A8C2E8,X                   ; $809234  BF E8 C2 A8  MX
    STA $00D0                       ; $809238  8D D0 00     MX
    LDX #$2E6E                      ; $80923B  A2 6E 2E     MX
    JSR L_80970B                    ; $80923E  20 0B 97     MX
    LDA #$178A                      ; $809241  A9 8A 17     MX
    STA $00D1                       ; $809244  8D D1 00     MX
    LDA #$8A04                      ; $809247  A9 04 8A     MX
    LDX #$6508                      ; $80924A  A2 08 65     MX
    JSR L_8097BF                    ; $80924D  20 BF 97     MX
    LDA #$178A                      ; $809250  A9 8A 17     MX
    STA $00D1                       ; $809253  8D D1 00     MX
    LDA #$8ABC                      ; $809256  A9 BC 8A     MX
    LDX #$6568                      ; $809259  A2 68 65     MX
    JSR L_8097BF                    ; $80925C  20 BF 97     MX
    LDA #$1788                      ; $80925F  A9 88 17     MX
    STA $00D1                       ; $809262  8D D1 00     MX
    LDA #$8858                      ; $809265  A9 58 88     MX
    LDX #$6E0A                      ; $809268  A2 0A 6E     MX
    JSR L_809819                    ; $80926B  20 19 98     MX
    LDA #$1789                      ; $80926E  A9 89 17     MX
    STA $00D1                       ; $809271  8D D1 00     MX
    LDA #$892E                      ; $809274  A9 2E 89     MX
    LDX #$6E6C                      ; $809277  A2 6C 6E     MX
    JSR L_809819                    ; $80927A  20 19 98     MX
    LDA #$178B                      ; $80927D  A9 8B 17     MX
    STA $00D1                       ; $809280  8D D1 00     MX
    LDA #$8B74                      ; $809283  A9 74 8B     MX
    LDX #$7152                      ; $809286  A2 52 71     MX
    JSR L_8098CD                    ; $809289  20 CD 98     MX
    LDA #$178B                      ; $80928C  A9 8B 17     MX
    STA $00D1                       ; $80928F  8D D1 00     MX
    LDA #$8BF8                      ; $809292  A9 F8 8B     MX
    LDX #$3106                      ; $809295  A2 06 31     MX
    JSR L_8098CD                    ; $809298  20 CD 98     MX
    LDA #$178F                      ; $80929B  A9 8F 17     MX
    STA $00D1                       ; $80929E  8D D1 00     MX
    LDA #$8F26                      ; $8092A1  A9 26 8F     MX
    LDX #$313C                      ; $8092A4  A2 3C 31     MX
    JSR L_8098CD                    ; $8092A7  20 CD 98     MX
    LDA #$1792                      ; $8092AA  A9 92 17     MX
    STA $00D1                       ; $8092AD  8D D1 00     MX
    LDA #$9254                      ; $8092B0  A9 54 92     MX
    LDX #$3172                      ; $8092B3  A2 72 31     MX
    JSR L_8098CD                    ; $8092B6  20 CD 98     MX
    LDA #$1795                      ; $8092B9  A9 95 17     MX
    STA $00D1                       ; $8092BC  8D D1 00     MX
    LDA #$9582                      ; $8092BF  A9 82 95     MX
    LDX #$31A8                      ; $8092C2  A2 A8 31     MX
    JSR L_8098CD                    ; $8092C5  20 CD 98     MX
    LDA #$7F40                      ; $8092C8  A9 40 7F     MX
    STA $00D1                       ; $8092CB  8D D1 00     MX
    LDA #$4000                      ; $8092CE  A9 00 40     MX
    JSR L_809572                    ; $8092D1  20 72 95     MX
    SEP #$30                        ; $8092D4  E2 30        MX
    LDA #$00                        ; $8092D6  A9 00        mx
    STA $2116                       ; $8092D8  8D 16 21     mx
    LDA #$40                        ; $8092DB  A9 40        mx
    STA $2117                       ; $8092DD  8D 17 21     mx
    LDA #$01                        ; $8092E0  A9 01        mx
    STA $4300                       ; $8092E2  8D 00 43     mx
    LDA #$18                        ; $8092E5  A9 18        mx
    STA $4301                       ; $8092E7  8D 01 43     mx
    LDA #$00                        ; $8092EA  A9 00        mx
    STA $4302                       ; $8092EC  8D 02 43     mx
    LDA #$06                        ; $8092EF  A9 06        mx
    STA $4303                       ; $8092F1  8D 03 43     mx
    LDA #$7F                        ; $8092F4  A9 7F        mx
    STA $4304                       ; $8092F6  8D 04 43     mx
    LDA #$00                        ; $8092F9  A9 00        mx
    STA $4305                       ; $8092FB  8D 05 43     mx
    LDA #$08                        ; $8092FE  A9 08        mx
    STA $4306                       ; $809300  8D 06 43     mx
    LDA #$01                        ; $809303  A9 01        mx
    STA $420B                       ; $809305  8D 0B 42     mx
    REP #$30                        ; $809308  C2 30        mx
    LDA #$7F40                      ; $80930A  A9 40 7F     MX
    STA $00D1                       ; $80930D  8D D1 00     MX
    LDA #$4040                      ; $809310  A9 40 40     MX
    JSR L_809572                    ; $809313  20 72 95     MX
    SEP #$30                        ; $809316  E2 30        MX
    LDA #$00                        ; $809318  A9 00        mx
    STA $2116                       ; $80931A  8D 16 21     mx
    LDA #$44                        ; $80931D  A9 44        mx
    STA $2117                       ; $80931F  8D 17 21     mx
    LDA #$01                        ; $809322  A9 01        mx
    STA $4300                       ; $809324  8D 00 43     mx
    LDA #$18                        ; $809327  A9 18        mx
    STA $4301                       ; $809329  8D 01 43     mx
    LDA #$00                        ; $80932C  A9 00        mx
    STA $4302                       ; $80932E  8D 02 43     mx
    LDA #$06                        ; $809331  A9 06        mx
    STA $4303                       ; $809333  8D 03 43     mx
    LDA #$7F                        ; $809336  A9 7F        mx
    STA $4304                       ; $809338  8D 04 43     mx
    LDA #$00                        ; $80933B  A9 00        mx
    STA $4305                       ; $80933D  8D 05 43     mx
    LDA #$08                        ; $809340  A9 08        mx
    STA $4306                       ; $809342  8D 06 43     mx
    LDA #$01                        ; $809345  A9 01        mx
    STA $420B                       ; $809347  8D 0B 42     mx
    REP #$30                        ; $80934A  C2 30        mx
    LDA #$7F60                      ; $80934C  A9 60 7F     MX
    STA $00D1                       ; $80934F  8D D1 00     MX
    LDA #$6000                      ; $809352  A9 00 60     MX
    JSR L_809572                    ; $809355  20 72 95     MX
    SEP #$30                        ; $809358  E2 30        MX
    LDA #$00                        ; $80935A  A9 00        mx
    STA $2116                       ; $80935C  8D 16 21     mx
    LDA #$48                        ; $80935F  A9 48        mx
    STA $2117                       ; $809361  8D 17 21     mx
    LDA #$01                        ; $809364  A9 01        mx
    STA $4300                       ; $809366  8D 00 43     mx
    LDA #$18                        ; $809369  A9 18        mx
    STA $4301                       ; $80936B  8D 01 43     mx
    LDA #$00                        ; $80936E  A9 00        mx
    STA $4302                       ; $809370  8D 02 43     mx
    LDA #$06                        ; $809373  A9 06        mx
    STA $4303                       ; $809375  8D 03 43     mx
    LDA #$7F                        ; $809378  A9 7F        mx
    STA $4304                       ; $80937A  8D 04 43     mx
    LDA #$00                        ; $80937D  A9 00        mx
    STA $4305                       ; $80937F  8D 05 43     mx
    LDA #$08                        ; $809382  A9 08        mx
    STA $4306                       ; $809384  8D 06 43     mx
    LDA #$01                        ; $809387  A9 01        mx
    STA $420B                       ; $809389  8D 0B 42     mx
    REP #$30                        ; $80938C  C2 30        mx
    LDA #$7F60                      ; $80938E  A9 60 7F     MX
    STA $00D1                       ; $809391  8D D1 00     MX
    LDA #$6040                      ; $809394  A9 40 60     MX
    JSR L_809572                    ; $809397  20 72 95     MX
    SEP #$30                        ; $80939A  E2 30        MX
    LDA #$00                        ; $80939C  A9 00        mx
    STA $2116                       ; $80939E  8D 16 21     mx
    LDA #$4C                        ; $8093A1  A9 4C        mx
    STA $2117                       ; $8093A3  8D 17 21     mx
    LDA #$01                        ; $8093A6  A9 01        mx
    STA $4300                       ; $8093A8  8D 00 43     mx
    LDA #$18                        ; $8093AB  A9 18        mx
    STA $4301                       ; $8093AD  8D 01 43     mx
    LDA #$00                        ; $8093B0  A9 00        mx
    STA $4302                       ; $8093B2  8D 02 43     mx
    LDA #$06                        ; $8093B5  A9 06        mx
    STA $4303                       ; $8093B7  8D 03 43     mx
    LDA #$7F                        ; $8093BA  A9 7F        mx
    STA $4304                       ; $8093BC  8D 04 43     mx
    LDA #$00                        ; $8093BF  A9 00        mx
    STA $4305                       ; $8093C1  8D 05 43     mx
    LDA #$08                        ; $8093C4  A9 08        mx
    STA $4306                       ; $8093C6  8D 06 43     mx
    LDA #$01                        ; $8093C9  A9 01        mx
    STA $420B                       ; $8093CB  8D 0B 42     mx
    REP #$30                        ; $8093CE  C2 30        mx
    LDA #$0080                      ; $8093D0  A9 80 00     MX
    STA $00EA                       ; $8093D3  8D EA 00     MX
    LDA #$0007                      ; $8093D6  A9 07 00     MX
    STA $00E8                       ; $8093D9  8D E8 00     MX
    LDX #$6600                      ; $8093DC  A2 00 66     MX
    JSR L_80992A                    ; $8093DF  20 2A 99     MX
    LDA #$7F80                      ; $8093E2  A9 80 7F     MX
    STA $00D1                       ; $8093E5  8D D1 00     MX
    LDA #$8000                      ; $8093E8  A9 00 80     MX
    JSR L_809572                    ; $8093EB  20 72 95     MX
    SEP #$30                        ; $8093EE  E2 30        MX
    LDA #$00                        ; $8093F0  A9 00        mx
    STA $2116                       ; $8093F2  8D 16 21     mx
    LDA #$50                        ; $8093F5  A9 50        mx
    STA $2117                       ; $8093F7  8D 17 21     mx
    LDA #$01                        ; $8093FA  A9 01        mx
    STA $4300                       ; $8093FC  8D 00 43     mx
    LDA #$18                        ; $8093FF  A9 18        mx
    STA $4301                       ; $809401  8D 01 43     mx
    LDA #$00                        ; $809404  A9 00        mx
    STA $4302                       ; $809406  8D 02 43     mx
    LDA #$06                        ; $809409  A9 06        mx
    STA $4303                       ; $80940B  8D 03 43     mx
    LDA #$7F                        ; $80940E  A9 7F        mx
    STA $4304                       ; $809410  8D 04 43     mx
    LDA #$00                        ; $809413  A9 00        mx
    STA $4305                       ; $809415  8D 05 43     mx
    LDA #$08                        ; $809418  A9 08        mx
    STA $4306                       ; $80941A  8D 06 43     mx
    LDA #$01                        ; $80941D  A9 01        mx
    STA $420B                       ; $80941F  8D 0B 42     mx
    REP #$30                        ; $809422  C2 30        mx
    LDA #$7F80                      ; $809424  A9 80 7F     MX
    STA $00D1                       ; $809427  8D D1 00     MX
    LDA #$8040                      ; $80942A  A9 40 80     MX
    JSR L_809572                    ; $80942D  20 72 95     MX
    SEP #$30                        ; $809430  E2 30        MX
    LDA #$00                        ; $809432  A9 00        mx
    STA $2116                       ; $809434  8D 16 21     mx
    LDA #$54                        ; $809437  A9 54        mx
    STA $2117                       ; $809439  8D 17 21     mx
    LDA #$01                        ; $80943C  A9 01        mx
    STA $4300                       ; $80943E  8D 00 43     mx
    LDA #$18                        ; $809441  A9 18        mx
    STA $4301                       ; $809443  8D 01 43     mx
    LDA #$00                        ; $809446  A9 00        mx
    STA $4302                       ; $809448  8D 02 43     mx
    LDA #$06                        ; $80944B  A9 06        mx
    STA $4303                       ; $80944D  8D 03 43     mx
    LDA #$7F                        ; $809450  A9 7F        mx
    STA $4304                       ; $809452  8D 04 43     mx
    LDA #$00                        ; $809455  A9 00        mx
    STA $4305                       ; $809457  8D 05 43     mx
    LDA #$08                        ; $80945A  A9 08        mx
    STA $4306                       ; $80945C  8D 06 43     mx
    LDA #$01                        ; $80945F  A9 01        mx
    STA $420B                       ; $809461  8D 0B 42     mx
    REP #$30                        ; $809464  C2 30        mx
    LDA #$7F80                      ; $809466  A9 80 7F     MX
    STA $00D1                       ; $809469  8D D1 00     MX
    LDA #$A000                      ; $80946C  A9 00 A0     MX
    JSR L_809572                    ; $80946F  20 72 95     MX
    SEP #$30                        ; $809472  E2 30        MX
    LDA #$00                        ; $809474  A9 00        mx
    STA $2116                       ; $809476  8D 16 21     mx
    LDA #$58                        ; $809479  A9 58        mx
    STA $2117                       ; $80947B  8D 17 21     mx
    LDA #$01                        ; $80947E  A9 01        mx
    STA $4300                       ; $809480  8D 00 43     mx
    LDA #$18                        ; $809483  A9 18        mx
    STA $4301                       ; $809485  8D 01 43     mx
    LDA #$00                        ; $809488  A9 00        mx
    STA $4302                       ; $80948A  8D 02 43     mx
    LDA #$06                        ; $80948D  A9 06        mx
    STA $4303                       ; $80948F  8D 03 43     mx
    LDA #$7F                        ; $809492  A9 7F        mx
    STA $4304                       ; $809494  8D 04 43     mx
    LDA #$00                        ; $809497  A9 00        mx
    STA $4305                       ; $809499  8D 05 43     mx
    LDA #$08                        ; $80949C  A9 08        mx
    STA $4306                       ; $80949E  8D 06 43     mx
    LDA #$01                        ; $8094A1  A9 01        mx
    STA $420B                       ; $8094A3  8D 0B 42     mx
    REP #$30                        ; $8094A6  C2 30        mx
    LDA #$7F80                      ; $8094A8  A9 80 7F     MX
    STA $00D1                       ; $8094AB  8D D1 00     MX
    LDA #$A040                      ; $8094AE  A9 40 A0     MX
    JSR L_809572                    ; $8094B1  20 72 95     MX
    SEP #$30                        ; $8094B4  E2 30        MX
    LDA #$00                        ; $8094B6  A9 00        mx
    STA $2116                       ; $8094B8  8D 16 21     mx
    LDA #$5C                        ; $8094BB  A9 5C        mx
    STA $2117                       ; $8094BD  8D 17 21     mx
    LDA #$01                        ; $8094C0  A9 01        mx
    STA $4300                       ; $8094C2  8D 00 43     mx
    LDA #$18                        ; $8094C5  A9 18        mx
    STA $4301                       ; $8094C7  8D 01 43     mx
    LDA #$00                        ; $8094CA  A9 00        mx
    STA $4302                       ; $8094CC  8D 02 43     mx
    LDA #$06                        ; $8094CF  A9 06        mx
    STA $4303                       ; $8094D1  8D 03 43     mx
    LDA #$7F                        ; $8094D4  A9 7F        mx
    STA $4304                       ; $8094D6  8D 04 43     mx
    LDA #$00                        ; $8094D9  A9 00        mx
    STA $4305                       ; $8094DB  8D 05 43     mx
    LDA #$08                        ; $8094DE  A9 08        mx
    STA $4306                       ; $8094E0  8D 06 43     mx
    LDA #$01                        ; $8094E3  A9 01        mx
    STA $420B                       ; $8094E5  8D 0B 42     mx
    REP #$30                        ; $8094E8  C2 30        mx
    LDA #$024C                      ; $8094EA  A9 4C 02     MX
    STA $012D                       ; $8094ED  8D 2D 01     MX
    LDA #$011F                      ; $8094F0  A9 1F 01     MX
    STA $012F                       ; $8094F3  8D 2F 01     MX
    LDA #$0307                      ; $8094F6  A9 07 03     MX
    STA $0121                       ; $8094F9  8D 21 01     MX
    LDA #$011F                      ; $8094FC  A9 1F 01     MX
    STA $0123                       ; $8094FF  8D 23 01     MX
    STZ $0DF1                       ; $809502  9C F1 0D     MX
    STZ $0E77                       ; $809505  9C 77 0E     MX
    STZ $0129                       ; $809508  9C 29 01     MX
    LDA #$0100                      ; $80950B  A9 00 01     MX
    STA $012B                       ; $80950E  8D 2B 01     MX
    STZ $0131                       ; $809511  9C 31 01     MX
    STZ $0133                       ; $809514  9C 33 01     MX
    STZ $011D                       ; $809517  9C 1D 01     MX
    STZ $011F                       ; $80951A  9C 1F 01     MX
    STZ $0125                       ; $80951D  9C 25 01     MX
    STZ $0127                       ; $809520  9C 27 01     MX
    STZ $0E7B                       ; $809523  9C 7B 0E     MX
    STZ $0E7D                       ; $809526  9C 7D 0E     MX
    LDA #$0006                      ; $809529  A9 06 00     MX
    STA $0E85                       ; $80952C  8D 85 0E     MX
    STZ $0E87                       ; $80952F  9C 87 0E     MX
    LDA #$FF69                      ; $809532  A9 69 FF     MX
    STA $0E89                       ; $809535  8D 89 0E     MX
    STZ $0E8B                       ; $809538  9C 8B 0E     MX
    STZ $0E8D                       ; $80953B  9C 8D 0E     MX
    STZ $0E8F                       ; $80953E  9C 8F 0E     MX
    STZ $0E91                       ; $809541  9C 91 0E     MX
    LDA #$0031                      ; $809544  A9 31 00     MX
    STA $0D8B                       ; $809547  8D 8B 0D     MX
    LDA #$FFF1                      ; $80954A  A9 F1 FF     MX
    STA $0D8D                       ; $80954D  8D 8D 0D     MX
    LDA #$0031                      ; $809550  A9 31 00     MX
    STA $0135                       ; $809553  8D 35 01     MX
    LDA #$FFF1                      ; $809556  A9 F1 FF     MX
    STA $0D05                       ; $809559  8D 05 0D     MX
    LDA #$0031                      ; $80955C  A9 31 00     MX
    STA $0DF3                       ; $80955F  8D F3 0D     MX
    LDA #$FFF1                      ; $809562  A9 F1 FF     MX
    STA $0DF5                       ; $809565  8D F5 0D     MX
    LDA #$0130                      ; $809568  A9 30 01     MX
    STA $0D03                       ; $80956B  8D 03 0D     MX
    STZ $0C47                       ; $80956E  9C 47 0C     MX
    RTS                             ; $809571  60           MX
L_809572:
    STA $00D0                       ; $809572  8D D0 00     MX
    STA $00D3                       ; $809575  8D D3 00     MX
    LDX #$0000                      ; $809578  A2 00 00     MX
    LDA #$0020                      ; $80957B  A9 20 00     MX
    STA $00E8                       ; $80957E  8D E8 00     MX
L_809581:
    LDY #$0020                      ; $809581  A0 20 00     MX
L_809584:
    LDA [$D0]                       ; $809584  A7 D0        MX
    STA $7F0600,X                   ; $809586  9F 00 06 7F  MX
    INC $00D0                       ; $80958A  EE D0 00     MX
    INC $00D0                       ; $80958D  EE D0 00     MX
    INX                             ; $809590  E8           MX
    INX                             ; $809591  E8           MX
    DEY                             ; $809592  88           MX
    BNE L_809584                    ; $809593  D0 EF        MX
    LDA $00D3                       ; $809595  AD D3 00     MX
    CLC                             ; $809598  18           MX
    ADC #$0100                      ; $809599  69 00 01     MX
    STA $00D3                       ; $80959C  8D D3 00     MX
    LDA $00D3                       ; $80959F  AD D3 00     MX
    STA $00D0                       ; $8095A2  8D D0 00     MX
    DEC $00E8                       ; $8095A5  CE E8 00     MX
    BNE L_809581                    ; $8095A8  D0 D7        MX
    RTS                             ; $8095AA  60           MX
L_8095AB:
    STA $00D0                       ; $8095AB  8D D0 00     MX
    STA $00D3                       ; $8095AE  8D D3 00     MX
    LDA [$D0]                       ; $8095B1  A7 D0        MX
    ASL                             ; $8095B3  0A           MX
    STA $00EA                       ; $8095B4  8D EA 00     MX
    INC $00D0                       ; $8095B7  EE D0 00     MX
    INC $00D0                       ; $8095BA  EE D0 00     MX
    INC $00D0                       ; $8095BD  EE D0 00     MX
    INC $00D0                       ; $8095C0  EE D0 00     MX
    LDA #$0020                      ; $8095C3  A9 20 00     MX
    STA $00E8                       ; $8095C6  8D E8 00     MX
    LDX #$0000                      ; $8095C9  A2 00 00     MX
L_8095CC:
    LDY #$0020                      ; $8095CC  A0 20 00     MX
L_8095CF:
    LDA [$D0]                       ; $8095CF  A7 D0        MX
    INC                             ; $8095D1  1A           MX
    AND #$E3FF                      ; $8095D2  29 FF E3     MX
    ORA #$0800                      ; $8095D5  09 00 08     MX
    STA $7F0600,X                   ; $8095D8  9F 00 06 7F  MX
    INC $00D0                       ; $8095DC  EE D0 00     MX
    INC $00D0                       ; $8095DF  EE D0 00     MX
    INX                             ; $8095E2  E8           MX
    INX                             ; $8095E3  E8           MX
    DEY                             ; $8095E4  88           MX
    BNE L_8095CF                    ; $8095E5  D0 E8        MX
    LDA $00D3                       ; $8095E7  AD D3 00     MX
    CLC                             ; $8095EA  18           MX
    ADC $00EA                       ; $8095EB  6D EA 00     MX
    STA $00D3                       ; $8095EE  8D D3 00     MX
    LDA $00D3                       ; $8095F1  AD D3 00     MX
    STA $00D0                       ; $8095F4  8D D0 00     MX
    DEC $00E8                       ; $8095F7  CE E8 00     MX
    BNE L_8095CC                    ; $8095FA  D0 D0        MX
    RTS                             ; $8095FC  60           MX
L_8095FD:
    STA $00D0                       ; $8095FD  8D D0 00     MX
    CLC                             ; $809600  18           MX
    ADC #$0004                      ; $809601  69 04 00     MX
    STA $00D3                       ; $809604  8D D3 00     MX
    LDA [$D0]                       ; $809607  A7 D0        MX
    ASL                             ; $809609  0A           MX
    STA $00EA                       ; $80960A  8D EA 00     MX
    INC $00D0                       ; $80960D  EE D0 00     MX
    INC $00D0                       ; $809610  EE D0 00     MX
    LDA [$D0]                       ; $809613  A7 D0        MX
    STA $00E8                       ; $809615  8D E8 00     MX
    INC $00D0                       ; $809618  EE D0 00     MX
    INC $00D0                       ; $80961B  EE D0 00     MX
L_80961E:
    LDY $00EA                       ; $80961E  AC EA 00     MX
    PHX                             ; $809621  DA           MX
L_809622:
    LDA [$D0]                       ; $809622  A7 D0        MX
    INC                             ; $809624  1A           MX
    AND #$E3FF                      ; $809625  29 FF E3     MX
    ORA #$0000                      ; $809628  09 00 00     MX
    STA $7F4000,X                   ; $80962B  9F 00 40 7F  MX
    INC $00D0                       ; $80962F  EE D0 00     MX
    INC $00D0                       ; $809632  EE D0 00     MX
    INX                             ; $809635  E8           MX
    INX                             ; $809636  E8           MX
    DEY                             ; $809637  88           MX
    DEY                             ; $809638  88           MX
    BNE L_809622                    ; $809639  D0 E7        MX
    PLA                             ; $80963B  68           MX
    CLC                             ; $80963C  18           MX
    ADC #$0100                      ; $80963D  69 00 01     MX
    TAX                             ; $809640  AA           MX
    LDA $00D3                       ; $809641  AD D3 00     MX
    CLC                             ; $809644  18           MX
    ADC $00EA                       ; $809645  6D EA 00     MX
    STA $00D3                       ; $809648  8D D3 00     MX
    LDA $00D3                       ; $80964B  AD D3 00     MX
    STA $00D0                       ; $80964E  8D D0 00     MX
    DEC $00E8                       ; $809651  CE E8 00     MX
    BNE L_80961E                    ; $809654  D0 C8        MX
    RTS                             ; $809656  60           MX
L_809657:
    STA $00D0                       ; $809657  8D D0 00     MX
    CLC                             ; $80965A  18           MX
    ADC #$0004                      ; $80965B  69 04 00     MX
    STA $00D3                       ; $80965E  8D D3 00     MX
    LDA [$D0]                       ; $809661  A7 D0        MX
    ASL                             ; $809663  0A           MX
    STA $00EA                       ; $809664  8D EA 00     MX
    INC $00D0                       ; $809667  EE D0 00     MX
    INC $00D0                       ; $80966A  EE D0 00     MX
    LDA [$D0]                       ; $80966D  A7 D0        MX
    STA $00E8                       ; $80966F  8D E8 00     MX
    INC $00D0                       ; $809672  EE D0 00     MX
    INC $00D0                       ; $809675  EE D0 00     MX
L_809678:
    LDY $00EA                       ; $809678  AC EA 00     MX
    PHX                             ; $80967B  DA           MX
L_80967C:
    LDA [$D0]                       ; $80967C  A7 D0        MX
    INC                             ; $80967E  1A           MX
    AND #$E3FF                      ; $80967F  29 FF E3     MX
    ORA #$0800                      ; $809682  09 00 08     MX
    STA $7F4000,X                   ; $809685  9F 00 40 7F  MX
    INC $00D0                       ; $809689  EE D0 00     MX
    INC $00D0                       ; $80968C  EE D0 00     MX
    INX                             ; $80968F  E8           MX
    INX                             ; $809690  E8           MX
    DEY                             ; $809691  88           MX
    DEY                             ; $809692  88           MX
    BNE L_80967C                    ; $809693  D0 E7        MX
    PLA                             ; $809695  68           MX
    CLC                             ; $809696  18           MX
    ADC #$0100                      ; $809697  69 00 01     MX
    TAX                             ; $80969A  AA           MX
    LDA $00D3                       ; $80969B  AD D3 00     MX
    CLC                             ; $80969E  18           MX
    ADC $00EA                       ; $80969F  6D EA 00     MX
    STA $00D3                       ; $8096A2  8D D3 00     MX
    LDA $00D3                       ; $8096A5  AD D3 00     MX
    STA $00D0                       ; $8096A8  8D D0 00     MX
    DEC $00E8                       ; $8096AB  CE E8 00     MX
    BNE L_809678                    ; $8096AE  D0 C8        MX
    RTS                             ; $8096B0  60           MX
L_8096B1:
    STA $00D0                       ; $8096B1  8D D0 00     MX
    CLC                             ; $8096B4  18           MX
    ADC #$0004                      ; $8096B5  69 04 00     MX
    STA $00D3                       ; $8096B8  8D D3 00     MX
    LDA [$D0]                       ; $8096BB  A7 D0        MX
    ASL                             ; $8096BD  0A           MX
    STA $00EA                       ; $8096BE  8D EA 00     MX
    INC $00D0                       ; $8096C1  EE D0 00     MX
    INC $00D0                       ; $8096C4  EE D0 00     MX
    LDA [$D0]                       ; $8096C7  A7 D0        MX
    STA $00E8                       ; $8096C9  8D E8 00     MX
    INC $00D0                       ; $8096CC  EE D0 00     MX
    INC $00D0                       ; $8096CF  EE D0 00     MX
L_8096D2:
    LDY $00EA                       ; $8096D2  AC EA 00     MX
    PHX                             ; $8096D5  DA           MX
L_8096D6:
    LDA [$D0]                       ; $8096D6  A7 D0        MX
    INC                             ; $8096D8  1A           MX
    AND #$E3FF                      ; $8096D9  29 FF E3     MX
    ORA #$0C00                      ; $8096DC  09 00 0C     MX
    STA $7F4000,X                   ; $8096DF  9F 00 40 7F  MX
    INC $00D0                       ; $8096E3  EE D0 00     MX
    INC $00D0                       ; $8096E6  EE D0 00     MX
    INX                             ; $8096E9  E8           MX
    INX                             ; $8096EA  E8           MX
    DEY                             ; $8096EB  88           MX
    DEY                             ; $8096EC  88           MX
    BNE L_8096D6                    ; $8096ED  D0 E7        MX
    PLA                             ; $8096EF  68           MX
    CLC                             ; $8096F0  18           MX
    ADC #$0100                      ; $8096F1  69 00 01     MX
    TAX                             ; $8096F4  AA           MX
    LDA $00D3                       ; $8096F5  AD D3 00     MX
    CLC                             ; $8096F8  18           MX
    ADC $00EA                       ; $8096F9  6D EA 00     MX
    STA $00D3                       ; $8096FC  8D D3 00     MX
    LDA $00D3                       ; $8096FF  AD D3 00     MX
    STA $00D0                       ; $809702  8D D0 00     MX
    DEC $00E8                       ; $809705  CE E8 00     MX
    BNE L_8096D2                    ; $809708  D0 C8        MX
    RTS                             ; $80970A  60           MX
L_80970B:
    STA $00D0                       ; $80970B  8D D0 00     MX
    CLC                             ; $80970E  18           MX
    ADC #$0004                      ; $80970F  69 04 00     MX
    STA $00D3                       ; $809712  8D D3 00     MX
    LDA [$D0]                       ; $809715  A7 D0        MX
    ASL                             ; $809717  0A           MX
    STA $00EA                       ; $809718  8D EA 00     MX
    INC $00D0                       ; $80971B  EE D0 00     MX
    INC $00D0                       ; $80971E  EE D0 00     MX
    LDA [$D0]                       ; $809721  A7 D0        MX
    STA $00E8                       ; $809723  8D E8 00     MX
    INC $00D0                       ; $809726  EE D0 00     MX
    INC $00D0                       ; $809729  EE D0 00     MX
L_80972C:
    LDY $00EA                       ; $80972C  AC EA 00     MX
    PHX                             ; $80972F  DA           MX
L_809730:
    LDA [$D0]                       ; $809730  A7 D0        MX
    INC                             ; $809732  1A           MX
    AND #$E3FF                      ; $809733  29 FF E3     MX
    ORA #$1400                      ; $809736  09 00 14     MX
    STA $7F4000,X                   ; $809739  9F 00 40 7F  MX
    INC $00D0                       ; $80973D  EE D0 00     MX
    INC $00D0                       ; $809740  EE D0 00     MX
    INX                             ; $809743  E8           MX
    INX                             ; $809744  E8           MX
    DEY                             ; $809745  88           MX
    DEY                             ; $809746  88           MX
    BNE L_809730                    ; $809747  D0 E7        MX
    PLA                             ; $809749  68           MX
    CLC                             ; $80974A  18           MX
    ADC #$0100                      ; $80974B  69 00 01     MX
    TAX                             ; $80974E  AA           MX
    LDA $00D3                       ; $80974F  AD D3 00     MX
    CLC                             ; $809752  18           MX
    ADC $00EA                       ; $809753  6D EA 00     MX
    STA $00D3                       ; $809756  8D D3 00     MX
    LDA $00D3                       ; $809759  AD D3 00     MX
    STA $00D0                       ; $80975C  8D D0 00     MX
    DEC $00E8                       ; $80975F  CE E8 00     MX
    BNE L_80972C                    ; $809762  D0 C8        MX
    RTS                             ; $809764  60           MX
L_809765:
    STA $00D0                       ; $809765  8D D0 00     MX
    CLC                             ; $809768  18           MX
    ADC #$0004                      ; $809769  69 04 00     MX
    STA $00D3                       ; $80976C  8D D3 00     MX
    LDA [$D0]                       ; $80976F  A7 D0        MX
    ASL                             ; $809771  0A           MX
    STA $00EA                       ; $809772  8D EA 00     MX
    INC $00D0                       ; $809775  EE D0 00     MX
    INC $00D0                       ; $809778  EE D0 00     MX
    LDA [$D0]                       ; $80977B  A7 D0        MX
    STA $00E8                       ; $80977D  8D E8 00     MX
    INC $00D0                       ; $809780  EE D0 00     MX
    INC $00D0                       ; $809783  EE D0 00     MX
L_809786:
    LDY $00EA                       ; $809786  AC EA 00     MX
    PHX                             ; $809789  DA           MX
L_80978A:
    LDA [$D0]                       ; $80978A  A7 D0        MX
    INC                             ; $80978C  1A           MX
    AND #$E3FF                      ; $80978D  29 FF E3     MX
    ORA #$1000                      ; $809790  09 00 10     MX
    STA $7F4000,X                   ; $809793  9F 00 40 7F  MX
    INC $00D0                       ; $809797  EE D0 00     MX
    INC $00D0                       ; $80979A  EE D0 00     MX
    INX                             ; $80979D  E8           MX
    INX                             ; $80979E  E8           MX
    DEY                             ; $80979F  88           MX
    DEY                             ; $8097A0  88           MX
    BNE L_80978A                    ; $8097A1  D0 E7        MX
    PLA                             ; $8097A3  68           MX
    CLC                             ; $8097A4  18           MX
    ADC #$0100                      ; $8097A5  69 00 01     MX
    TAX                             ; $8097A8  AA           MX
    LDA $00D3                       ; $8097A9  AD D3 00     MX
    CLC                             ; $8097AC  18           MX
    ADC $00EA                       ; $8097AD  6D EA 00     MX
    STA $00D3                       ; $8097B0  8D D3 00     MX
    LDA $00D3                       ; $8097B3  AD D3 00     MX
    STA $00D0                       ; $8097B6  8D D0 00     MX
    DEC $00E8                       ; $8097B9  CE E8 00     MX
    BNE L_809786                    ; $8097BC  D0 C8        MX
    RTS                             ; $8097BE  60           MX
L_8097BF:
    STA $00D0                       ; $8097BF  8D D0 00     MX
    CLC                             ; $8097C2  18           MX
    ADC #$0004                      ; $8097C3  69 04 00     MX
    STA $00D3                       ; $8097C6  8D D3 00     MX
    LDA [$D0]                       ; $8097C9  A7 D0        MX
    ASL                             ; $8097CB  0A           MX
    STA $00EA                       ; $8097CC  8D EA 00     MX
    INC $00D0                       ; $8097CF  EE D0 00     MX
    INC $00D0                       ; $8097D2  EE D0 00     MX
    LDA [$D0]                       ; $8097D5  A7 D0        MX
    STA $00E8                       ; $8097D7  8D E8 00     MX
    INC $00D0                       ; $8097DA  EE D0 00     MX
    INC $00D0                       ; $8097DD  EE D0 00     MX
L_8097E0:
    LDY $00EA                       ; $8097E0  AC EA 00     MX
    PHX                             ; $8097E3  DA           MX
L_8097E4:
    LDA [$D0]                       ; $8097E4  A7 D0        MX
    INC                             ; $8097E6  1A           MX
    AND #$E3FF                      ; $8097E7  29 FF E3     MX
    ORA #$1C00                      ; $8097EA  09 00 1C     MX
    STA $7F4000,X                   ; $8097ED  9F 00 40 7F  MX
    INC $00D0                       ; $8097F1  EE D0 00     MX
    INC $00D0                       ; $8097F4  EE D0 00     MX
    INX                             ; $8097F7  E8           MX
    INX                             ; $8097F8  E8           MX
    DEY                             ; $8097F9  88           MX
    DEY                             ; $8097FA  88           MX
    BNE L_8097E4                    ; $8097FB  D0 E7        MX
    PLA                             ; $8097FD  68           MX
    CLC                             ; $8097FE  18           MX
    ADC #$0100                      ; $8097FF  69 00 01     MX
    TAX                             ; $809802  AA           MX
    LDA $00D3                       ; $809803  AD D3 00     MX
    CLC                             ; $809806  18           MX
    ADC $00EA                       ; $809807  6D EA 00     MX
    STA $00D3                       ; $80980A  8D D3 00     MX
    LDA $00D3                       ; $80980D  AD D3 00     MX
    STA $00D0                       ; $809810  8D D0 00     MX
    DEC $00E8                       ; $809813  CE E8 00     MX
    BNE L_8097E0                    ; $809816  D0 C8        MX
    RTS                             ; $809818  60           MX
L_809819:
    STA $00D0                       ; $809819  8D D0 00     MX
    CLC                             ; $80981C  18           MX
    ADC #$0004                      ; $80981D  69 04 00     MX
    STA $00D3                       ; $809820  8D D3 00     MX
    LDA [$D0]                       ; $809823  A7 D0        MX
    ASL                             ; $809825  0A           MX
    STA $00EA                       ; $809826  8D EA 00     MX
    INC $00D0                       ; $809829  EE D0 00     MX
    INC $00D0                       ; $80982C  EE D0 00     MX
    LDA [$D0]                       ; $80982F  A7 D0        MX
    STA $00E8                       ; $809831  8D E8 00     MX
    INC $00D0                       ; $809834  EE D0 00     MX
    INC $00D0                       ; $809837  EE D0 00     MX
L_80983A:
    LDY $00EA                       ; $80983A  AC EA 00     MX
    PHX                             ; $80983D  DA           MX
L_80983E:
    LDA [$D0]                       ; $80983E  A7 D0        MX
    INC                             ; $809840  1A           MX
    AND #$E3FF                      ; $809841  29 FF E3     MX
    ORA #$1800                      ; $809844  09 00 18     MX
    STA $7F4000,X                   ; $809847  9F 00 40 7F  MX
    INC $00D0                       ; $80984B  EE D0 00     MX
    INC $00D0                       ; $80984E  EE D0 00     MX
    INX                             ; $809851  E8           MX
    INX                             ; $809852  E8           MX
    DEY                             ; $809853  88           MX
    DEY                             ; $809854  88           MX
    BNE L_80983E                    ; $809855  D0 E7        MX
    PLA                             ; $809857  68           MX
    CLC                             ; $809858  18           MX
    ADC #$0100                      ; $809859  69 00 01     MX
    TAX                             ; $80985C  AA           MX
    LDA $00D3                       ; $80985D  AD D3 00     MX
    CLC                             ; $809860  18           MX
    ADC $00EA                       ; $809861  6D EA 00     MX
    STA $00D3                       ; $809864  8D D3 00     MX
    LDA $00D3                       ; $809867  AD D3 00     MX
    STA $00D0                       ; $80986A  8D D0 00     MX
    DEC $00E8                       ; $80986D  CE E8 00     MX
    BNE L_80983A                    ; $809870  D0 C8        MX
    RTS                             ; $809872  60           MX
L_809873:
    STA $00D0                       ; $809873  8D D0 00     MX
    CLC                             ; $809876  18           MX
    ADC #$0004                      ; $809877  69 04 00     MX
    STA $00D3                       ; $80987A  8D D3 00     MX
    LDA [$D0]                       ; $80987D  A7 D0        MX
    LDA #$0014                      ; $80987F  A9 14 00     MX
    ASL                             ; $809882  0A           MX
    STA $00EA                       ; $809883  8D EA 00     MX
    INC $00D0                       ; $809886  EE D0 00     MX
    INC $00D0                       ; $809889  EE D0 00     MX
    LDA [$D0]                       ; $80988C  A7 D0        MX
    LDA #$0040                      ; $80988E  A9 40 00     MX
    STA $00E8                       ; $809891  8D E8 00     MX
    INC $00D0                       ; $809894  EE D0 00     MX
    INC $00D0                       ; $809897  EE D0 00     MX
L_80989A:
    LDY $00EA                       ; $80989A  AC EA 00     MX
    PHX                             ; $80989D  DA           MX
L_80989E:
    LDA #$0000                      ; $80989E  A9 00 00     MX
    STA $7F4000,X                   ; $8098A1  9F 00 40 7F  MX
    INC $00D0                       ; $8098A5  EE D0 00     MX
    INC $00D0                       ; $8098A8  EE D0 00     MX
    INX                             ; $8098AB  E8           MX
    INX                             ; $8098AC  E8           MX
    DEY                             ; $8098AD  88           MX
    DEY                             ; $8098AE  88           MX
    BNE L_80989E                    ; $8098AF  D0 ED        MX
    PLA                             ; $8098B1  68           MX
    CLC                             ; $8098B2  18           MX
    ADC #$0100                      ; $8098B3  69 00 01     MX
    TAX                             ; $8098B6  AA           MX
    LDA $00D3                       ; $8098B7  AD D3 00     MX
    CLC                             ; $8098BA  18           MX
    ADC $00EA                       ; $8098BB  6D EA 00     MX
    STA $00D3                       ; $8098BE  8D D3 00     MX
    LDA $00D3                       ; $8098C1  AD D3 00     MX
    STA $00D0                       ; $8098C4  8D D0 00     MX
    DEC $00E8                       ; $8098C7  CE E8 00     MX
    BNE L_80989A                    ; $8098CA  D0 CE        MX
    RTS                             ; $8098CC  60           MX
L_8098CD:
    STA $00D0                       ; $8098CD  8D D0 00     MX
    CLC                             ; $8098D0  18           MX
    ADC #$0004                      ; $8098D1  69 04 00     MX
    STA $00D3                       ; $8098D4  8D D3 00     MX
    LDA [$D0]                       ; $8098D7  A7 D0        MX
    ASL                             ; $8098D9  0A           MX
    STA $00EA                       ; $8098DA  8D EA 00     MX
    INC $00D0                       ; $8098DD  EE D0 00     MX
    INC $00D0                       ; $8098E0  EE D0 00     MX
    LDA [$D0]                       ; $8098E3  A7 D0        MX
    STA $00E8                       ; $8098E5  8D E8 00     MX
    INC $00D0                       ; $8098E8  EE D0 00     MX
    INC $00D0                       ; $8098EB  EE D0 00     MX
L_8098EE:
    LDY $00EA                       ; $8098EE  AC EA 00     MX
    PHX                             ; $8098F1  DA           MX
L_8098F2:
    LDA [$D0]                       ; $8098F2  A7 D0        MX
    CLC                             ; $8098F4  18           MX
    ADC #$0001                      ; $8098F5  69 01 00     MX
    AND #$E3FF                      ; $8098F8  29 FF E3     MX
    ORA #$0400                      ; $8098FB  09 00 04     MX
    STA $7F4000,X                   ; $8098FE  9F 00 40 7F  MX
    INC $00D0                       ; $809902  EE D0 00     MX
    INC $00D0                       ; $809905  EE D0 00     MX
    INX                             ; $809908  E8           MX
    INX                             ; $809909  E8           MX
    DEY                             ; $80990A  88           MX
    DEY                             ; $80990B  88           MX
    BNE L_8098F2                    ; $80990C  D0 E4        MX
    PLA                             ; $80990E  68           MX
    CLC                             ; $80990F  18           MX
    ADC #$0100                      ; $809910  69 00 01     MX
    TAX                             ; $809913  AA           MX
    LDA $00D3                       ; $809914  AD D3 00     MX
    CLC                             ; $809917  18           MX
    ADC $00EA                       ; $809918  6D EA 00     MX
    STA $00D3                       ; $80991B  8D D3 00     MX
    LDA $00D3                       ; $80991E  AD D3 00     MX
    STA $00D0                       ; $809921  8D D0 00     MX
    DEC $00E8                       ; $809924  CE E8 00     MX
    BNE L_8098EE                    ; $809927  D0 C5        MX
    RTS                             ; $809929  60           MX
L_80992A:
    STA $00D3                       ; $80992A  8D D3 00     MX
L_80992D:
    LDY $00EA                       ; $80992D  AC EA 00     MX
    PHX                             ; $809930  DA           MX
L_809931:
    LDA $7F4000,X                   ; $809931  BF 00 40 7F  MX
    AND #$DFFF                      ; $809935  29 FF DF     MX
    ORA #$2000                      ; $809938  09 00 20     MX
    STA $7F4000,X                   ; $80993B  9F 00 40 7F  MX
    INX                             ; $80993F  E8           MX
    INX                             ; $809940  E8           MX
    DEY                             ; $809941  88           MX
    DEY                             ; $809942  88           MX
    BNE L_809931                    ; $809943  D0 EC        MX
    PLA                             ; $809945  68           MX
    CLC                             ; $809946  18           MX
    ADC #$0100                      ; $809947  69 00 01     MX
    TAX                             ; $80994A  AA           MX
    DEC $00E8                       ; $80994B  CE E8 00     MX
    BNE L_80992D                    ; $80994E  D0 DD        MX
    RTS                             ; $809950  60           MX
L_809951:
    REP #$30                        ; $809951  C2 30        Mx
    LDA $0129                       ; $809953  AD 29 01     MX
    LSR                             ; $809956  4A           MX
    LSR                             ; $809957  4A           MX
    LSR                             ; $809958  4A           MX
    CMP $0131                       ; $809959  CD 31 01     MX
    BNE L_809961                    ; $80995C  D0 03        MX
    JMP L_8099E8                    ; $80995E  4C E8 99     MX
L_809961:
    STA $0131                       ; $809961  8D 31 01     MX
    LDX #$4000                      ; $809964  A2 00 40     MX
    LDY #$4800                      ; $809967  A0 00 48     MX
    LDA $0135                       ; $80996A  AD 35 01     MX
    AND #$003F                      ; $80996D  29 3F 00     MX
    CMP #$0020                      ; $809970  C9 20 00     MX
    BCC L_80997B                    ; $809973  90 06        MX
    LDX #$4400                      ; $809975  A2 00 44     MX
    LDY #$4C00                      ; $809978  A0 00 4C     MX
L_80997B:
    AND #$001F                      ; $80997B  29 1F 00     MX
    STA $00E8                       ; $80997E  8D E8 00     MX
    TYA                             ; $809981  98           MX
    CLC                             ; $809982  18           MX
    ADC $00E8                       ; $809983  6D E8 00     MX
    PHA                             ; $809986  48           MX
    LDY #$0D47                      ; $809987  A0 47 0D     MX
    JSR L_809A85                    ; $80998A  20 85 9A     MX
    PLA                             ; $80998D  68           MX
    CLC                             ; $80998E  18           MX
    ADC #$1220                      ; $80998F  69 20 12     MX
    LDY #$0D87                      ; $809992  A0 87 0D     MX
    JSR L_809AB7                    ; $809995  20 B7 9A     MX
    LDA #$7F40                      ; $809998  A9 40 7F     MX
    STA $00D1                       ; $80999B  8D D1 00     MX
    STA $00D4                       ; $80999E  8D D4 00     MX
    LDA $0135                       ; $8099A1  AD 35 01     MX
    AND #$007F                      ; $8099A4  29 7F 00     MX
    ASL                             ; $8099A7  0A           MX
    CLC                             ; $8099A8  18           MX
    ADC #$6000                      ; $8099A9  69 00 60     MX
    STA $00D3                       ; $8099AC  8D D3 00     MX
    LDX #$0000                      ; $8099AF  A2 00 00     MX
    LDY #$0020                      ; $8099B2  A0 20 00     MX
L_8099B5:
    LDA [$D3]                       ; $8099B5  A7 D3        MX
    STA $0D47,X                     ; $8099B7  9D 47 0D     MX
    INX                             ; $8099BA  E8           MX
    INX                             ; $8099BB  E8           MX
    INC $00D4                       ; $8099BC  EE D4 00     MX
    DEY                             ; $8099BF  88           MX
    BNE L_8099B5                    ; $8099C0  D0 F3        MX
    LDA $0135                       ; $8099C2  AD 35 01     MX
    AND #$007F                      ; $8099C5  29 7F 00     MX
    ASL                             ; $8099C8  0A           MX
    CLC                             ; $8099C9  18           MX
    ADC #$3100                      ; $8099CA  69 00 31     MX
    TAX                             ; $8099CD  AA           MX
    LDA $7F8000,X                   ; $8099CE  BF 00 80 7F  MX
    AND #$DFFF                      ; $8099D2  29 FF DF     MX
    STA $0D87                       ; $8099D5  8D 87 0D     MX
    LDA $7F8100,X                   ; $8099D8  BF 00 81 7F  MX
    AND #$DFFF                      ; $8099DC  29 FF DF     MX
    STA $0D89                       ; $8099DF  8D 89 0D     MX
    INC $0135                       ; $8099E2  EE 35 01     MX
    INC $0D05                       ; $8099E5  EE 05 0D     MX
L_8099E8:
    SEP #$30                        ; $8099E8  E2 30        MX
    RTS                             ; $8099EA  60           mx
L_8099EB:
    REP #$30                        ; $8099EB  C2 30        Mx
    LDA $0129                       ; $8099ED  AD 29 01     MX
    LSR                             ; $8099F0  4A           MX
    LSR                             ; $8099F1  4A           MX
    LSR                             ; $8099F2  4A           MX
    CMP $0131                       ; $8099F3  CD 31 01     MX
    BNE L_8099FB                    ; $8099F6  D0 03        MX
    JMP L_809A82                    ; $8099F8  4C 82 9A     MX
L_8099FB:
    STA $0131                       ; $8099FB  8D 31 01     MX
    LDX #$4000                      ; $8099FE  A2 00 40     MX
    LDY #$4800                      ; $809A01  A0 00 48     MX
    LDA $0135                       ; $809A04  AD 35 01     MX
    AND #$003F                      ; $809A07  29 3F 00     MX
    CMP #$0020                      ; $809A0A  C9 20 00     MX
    BCC L_809A15                    ; $809A0D  90 06        MX
    LDX #$4400                      ; $809A0F  A2 00 44     MX
    LDY #$4C00                      ; $809A12  A0 00 4C     MX
L_809A15:
    AND #$001F                      ; $809A15  29 1F 00     MX
    STA $00E8                       ; $809A18  8D E8 00     MX
    TYA                             ; $809A1B  98           MX
    CLC                             ; $809A1C  18           MX
    ADC $00E8                       ; $809A1D  6D E8 00     MX
    PHA                             ; $809A20  48           MX
    LDY #$0D47                      ; $809A21  A0 47 0D     MX
    JSR L_809A85                    ; $809A24  20 85 9A     MX
    PLA                             ; $809A27  68           MX
    CLC                             ; $809A28  18           MX
    ADC #$1220                      ; $809A29  69 20 12     MX
    LDY #$0D87                      ; $809A2C  A0 87 0D     MX
    JSR L_809AB7                    ; $809A2F  20 B7 9A     MX
    LDA #$7F40                      ; $809A32  A9 40 7F     MX
    STA $00D1                       ; $809A35  8D D1 00     MX
    STA $00D4                       ; $809A38  8D D4 00     MX
    LDA $0D05                       ; $809A3B  AD 05 0D     MX
    AND #$007F                      ; $809A3E  29 7F 00     MX
    ASL                             ; $809A41  0A           MX
    CLC                             ; $809A42  18           MX
    ADC #$6000                      ; $809A43  69 00 60     MX
    STA $00D3                       ; $809A46  8D D3 00     MX
    LDX #$0000                      ; $809A49  A2 00 00     MX
    LDY #$0020                      ; $809A4C  A0 20 00     MX
L_809A4F:
    LDA [$D3]                       ; $809A4F  A7 D3        MX
    STA $0D47,X                     ; $809A51  9D 47 0D     MX
    INX                             ; $809A54  E8           MX
    INX                             ; $809A55  E8           MX
    INC $00D4                       ; $809A56  EE D4 00     MX
    DEY                             ; $809A59  88           MX
    BNE L_809A4F                    ; $809A5A  D0 F3        MX
    LDA $0D05                       ; $809A5C  AD 05 0D     MX
    AND #$007F                      ; $809A5F  29 7F 00     MX
    ASL                             ; $809A62  0A           MX
    CLC                             ; $809A63  18           MX
    ADC #$3100                      ; $809A64  69 00 31     MX
    TAX                             ; $809A67  AA           MX
    LDA $7F8000,X                   ; $809A68  BF 00 80 7F  MX
    AND #$DFFF                      ; $809A6C  29 FF DF     MX
    STA $0D87                       ; $809A6F  8D 87 0D     MX
    LDA $7F8100,X                   ; $809A72  BF 00 81 7F  MX
    AND #$DFFF                      ; $809A76  29 FF DF     MX
    STA $0D89                       ; $809A79  8D 89 0D     MX
    DEC $0135                       ; $809A7C  CE 35 01     MX
    DEC $0D05                       ; $809A7F  CE 05 0D     MX
L_809A82:
    SEP #$30                        ; $809A82  E2 30        MX
    RTS                             ; $809A84  60           mx
L_809A85:
    LDX $0109                       ; $809A85  AE 09 01     MX
    STA $7E2002,X                   ; $809A88  9F 02 20 7E  MX
    LDA #$0040                      ; $809A8C  A9 40 00     MX
    STA $7E2000,X                   ; $809A8F  9F 00 20 7E  MX
    TYA                             ; $809A93  98           MX
    STA $7E2006,X                   ; $809A94  9F 06 20 7E  MX
    LDA #$1801                      ; $809A98  A9 01 18     MX
    STA $7E2004,X                   ; $809A9B  9F 04 20 7E  MX
    LDA #$8100                      ; $809A9F  A9 00 81     MX
    STA $7E2008,X                   ; $809AA2  9F 08 20 7E  MX
    TXA                             ; $809AA6  8A           MX
    CLC                             ; $809AA7  18           MX
    ADC #$000A                      ; $809AA8  69 0A 00     MX
    STA $0109                       ; $809AAB  8D 09 01     MX
    TAX                             ; $809AAE  AA           MX
    AND #$0000                      ; $809AAF  29 00 00     MX
    STA $7E2000,X                   ; $809AB2  9F 00 20 7E  MX
    RTS                             ; $809AB6  60           MX
L_809AB7:
    LDX $0109                       ; $809AB7  AE 09 01     MX
    STA $7E2002,X                   ; $809ABA  9F 02 20 7E  MX
    LDA #$0004                      ; $809ABE  A9 04 00     MX
    STA $7E2000,X                   ; $809AC1  9F 00 20 7E  MX
    TYA                             ; $809AC5  98           MX
    STA $7E2006,X                   ; $809AC6  9F 06 20 7E  MX
    LDA #$1801                      ; $809ACA  A9 01 18     MX
    STA $7E2004,X                   ; $809ACD  9F 04 20 7E  MX
    LDA #$8100                      ; $809AD1  A9 00 81     MX
    STA $7E2008,X                   ; $809AD4  9F 08 20 7E  MX
    TXA                             ; $809AD8  8A           MX
    CLC                             ; $809AD9  18           MX
    ADC #$000A                      ; $809ADA  69 0A 00     MX
    STA $0109                       ; $809ADD  8D 09 01     MX
    TAX                             ; $809AE0  AA           MX
    AND #$0000                      ; $809AE1  29 00 00     MX
    STA $7E2000,X                   ; $809AE4  9F 00 20 7E  MX
    RTS                             ; $809AE8  60           MX
L_809AE9:
    LDX $0109                       ; $809AE9  AE 09 01     MX
    STA $7E2002,X                   ; $809AEC  9F 02 20 7E  MX
    CLC                             ; $809AF0  18           MX
    ADC #$0010                      ; $809AF1  69 10 00     MX
    STA $7E200C,X                   ; $809AF4  9F 0C 20 7E  MX
    CLC                             ; $809AF8  18           MX
    ADC #$0010                      ; $809AF9  69 10 00     MX
    STA $7E2016,X                   ; $809AFC  9F 16 20 7E  MX
    LDA #$0020                      ; $809B00  A9 20 00     MX
    STA $7E2000,X                   ; $809B03  9F 00 20 7E  MX
    STA $7E200A,X                   ; $809B07  9F 0A 20 7E  MX
    STA $7E2014,X                   ; $809B0B  9F 14 20 7E  MX
    LDA $0CB5,Y                     ; $809B0F  B9 B5 0C     MX
    BNE L_809B17                    ; $809B12  D0 03        MX
    LDA #$000B                      ; $809B14  A9 0B 00     MX
L_809B17:
    ASL                             ; $809B17  0A           MX
    TAX                             ; $809B18  AA           MX
    LDA $83E644,X                   ; $809B19  BF 44 E6 83  MX
    LDX $0109                       ; $809B1D  AE 09 01     MX
    STA $7E2006,X                   ; $809B20  9F 06 20 7E  MX
    LDA $0CB7,Y                     ; $809B24  B9 B7 0C     MX
    BNE L_809B36                    ; $809B27  D0 0D        MX
    LDA $0CB5,Y                     ; $809B29  B9 B5 0C     MX
    BNE L_809B33                    ; $809B2C  D0 05        MX
    LDA #$000B                      ; $809B2E  A9 0B 00     MX
    BNE L_809B36                    ; $809B31  D0 03        MX
L_809B33:
    LDA #$0000                      ; $809B33  A9 00 00     MX
L_809B36:
    ASL                             ; $809B36  0A           MX
    TAX                             ; $809B37  AA           MX
    LDA $83E644,X                   ; $809B38  BF 44 E6 83  MX
    LDX $0109                       ; $809B3C  AE 09 01     MX
    STA $7E2010,X                   ; $809B3F  9F 10 20 7E  MX
    LDA $0CB9,Y                     ; $809B43  B9 B9 0C     MX
    ASL                             ; $809B46  0A           MX
    TAX                             ; $809B47  AA           MX
    LDA $83E644,X                   ; $809B48  BF 44 E6 83  MX
    LDX $0109                       ; $809B4C  AE 09 01     MX
    STA $7E201A,X                   ; $809B4F  9F 1A 20 7E  MX
    LDA #$1801                      ; $809B53  A9 01 18     MX
    STA $7E2004,X                   ; $809B56  9F 04 20 7E  MX
    STA $7E200E,X                   ; $809B5A  9F 0E 20 7E  MX
    STA $7E2018,X                   ; $809B5E  9F 18 20 7E  MX
    LDA #$8003                      ; $809B62  A9 03 80     MX
    STA $7E2008,X                   ; $809B65  9F 08 20 7E  MX
    STA $7E2012,X                   ; $809B69  9F 12 20 7E  MX
    STA $7E201C,X                   ; $809B6D  9F 1C 20 7E  MX
    TXA                             ; $809B71  8A           MX
    CLC                             ; $809B72  18           MX
    ADC #$001E                      ; $809B73  69 1E 00     MX
    STA $0109                       ; $809B76  8D 09 01     MX
    LDA $0CB5,Y                     ; $809B79  B9 B5 0C     MX
    BNE L_809B92                    ; $809B7C  D0 14        MX
    STZ $0CD9                       ; $809B7E  9C D9 0C     MX
    STZ $0CDB                       ; $809B81  9C DB 0C     MX
    LDA $0CB7,Y                     ; $809B84  B9 B7 0C     MX
    BNE L_809BBC                    ; $809B87  D0 33        MX
    STZ $0CDD                       ; $809B89  9C DD 0C     MX
    STZ $0CDF                       ; $809B8C  9C DF 0C     MX
    JMP L_809BE9                    ; $809B8F  4C E9 9B     MX
L_809B92:
    ASL                             ; $809B92  0A           MX
    TAX                             ; $809B93  AA           MX
    STA $0BAF                       ; $809B94  8D AF 0B     MX
    LDA $04F041,X                   ; $809B97  BF 41 F0 04  MX
    STA $0BB1                       ; $809B9B  8D B1 0B     MX
    LDA $0BAF                       ; $809B9E  AD AF 0B     MX
    ASL                             ; $809BA1  0A           MX
    ASL                             ; $809BA2  0A           MX
    TAX                             ; $809BA3  AA           MX
    LDA $04EFA1,X                   ; $809BA4  BF A1 EF 04  MX
    INC                             ; $809BA8  1A           MX
    CLC                             ; $809BA9  18           MX
    ADC $0BB1                       ; $809BAA  6D B1 0B     MX
    STA $0CD9                       ; $809BAD  8D D9 0C     MX
    LDA $04EFA3,X                   ; $809BB0  BF A3 EF 04  MX
    INC                             ; $809BB4  1A           MX
    CLC                             ; $809BB5  18           MX
    ADC $0BB1                       ; $809BB6  6D B1 0B     MX
    STA $0CDB                       ; $809BB9  8D DB 0C     MX
L_809BBC:
    LDA $0CB7,Y                     ; $809BBC  B9 B7 0C     MX
    ASL                             ; $809BBF  0A           MX
    TAX                             ; $809BC0  AA           MX
    STA $0BAF                       ; $809BC1  8D AF 0B     MX
    LDA $04F041,X                   ; $809BC4  BF 41 F0 04  MX
    STA $0BB1                       ; $809BC8  8D B1 0B     MX
    LDA $0BAF                       ; $809BCB  AD AF 0B     MX
    ASL                             ; $809BCE  0A           MX
    ASL                             ; $809BCF  0A           MX
    TAX                             ; $809BD0  AA           MX
    LDA $04EFA1,X                   ; $809BD1  BF A1 EF 04  MX
    INC                             ; $809BD5  1A           MX
    CLC                             ; $809BD6  18           MX
    ADC $0BB1                       ; $809BD7  6D B1 0B     MX
    STA $0CDD                       ; $809BDA  8D DD 0C     MX
    LDA $04EFA3,X                   ; $809BDD  BF A3 EF 04  MX
    INC                             ; $809BE1  1A           MX
    CLC                             ; $809BE2  18           MX
    ADC $0BB1                       ; $809BE3  6D B1 0B     MX
    STA $0CDF                       ; $809BE6  8D DF 0C     MX
L_809BE9:
    LDA $0CB9,Y                     ; $809BE9  B9 B9 0C     MX
    ASL                             ; $809BEC  0A           MX
    TAX                             ; $809BED  AA           MX
    STA $0BAF                       ; $809BEE  8D AF 0B     MX
    LDA $04F041,X                   ; $809BF1  BF 41 F0 04  MX
    STA $0BB1                       ; $809BF5  8D B1 0B     MX
    LDA $0BAF                       ; $809BF8  AD AF 0B     MX
    ASL                             ; $809BFB  0A           MX
    ASL                             ; $809BFC  0A           MX
    TAX                             ; $809BFD  AA           MX
    LDA $04EFA1,X                   ; $809BFE  BF A1 EF 04  MX
    INC                             ; $809C02  1A           MX
    CLC                             ; $809C03  18           MX
    ADC $0BB1                       ; $809C04  6D B1 0B     MX
    STA $0CE1                       ; $809C07  8D E1 0C     MX
    LDA $04EFA3,X                   ; $809C0A  BF A3 EF 04  MX
    INC                             ; $809C0E  1A           MX
    CLC                             ; $809C0F  18           MX
    ADC $0BB1                       ; $809C10  6D B1 0B     MX
    STA $0CE3                       ; $809C13  8D E3 0C     MX
    LDX $0109                       ; $809C16  AE 09 01     MX
    LDA #$5480                      ; $809C19  A9 80 54     MX
    STA $7E2002,X                   ; $809C1C  9F 02 20 7E  MX
    LDA #$0100                      ; $809C20  A9 00 01     MX
    STA $7E2000,X                   ; $809C23  9F 00 20 7E  MX
    LDA #$1801                      ; $809C27  A9 01 18     MX
    STA $7E2004,X                   ; $809C2A  9F 04 20 7E  MX
    LDA #$807F                      ; $809C2E  A9 7F 80     MX
    STA $7E2008,X                   ; $809C31  9F 08 20 7E  MX
    LDA #$C100                      ; $809C35  A9 00 C1     MX
    STA $7E2006,X                   ; $809C38  9F 06 20 7E  MX
    TXA                             ; $809C3C  8A           MX
    CLC                             ; $809C3D  18           MX
    ADC #$000A                      ; $809C3E  69 0A 00     MX
    STA $0109                       ; $809C41  8D 09 01     MX
    TAX                             ; $809C44  AA           MX
    AND #$0000                      ; $809C45  29 00 00     MX
    STA $7E2000,X                   ; $809C48  9F 00 20 7E  MX
    LDA $0C3B                       ; $809C4C  AD 3B 0C     MX
    CMP #$0003                      ; $809C4F  C9 03 00     MX
    BNE L_809C6F                    ; $809C52  D0 1B        MX
    LDA #$005C                      ; $809C54  A9 5C 00     MX
    STA $00A6                       ; $809C57  8D A6 00     MX
    LDA #$0C00                      ; $809C5A  A9 00 0C     MX
    STA $00A4                       ; $809C5D  8D A4 00     MX
    LDA #$04EF                      ; $809C60  A9 EF 04     MX
    STA $00D1                       ; $809C63  8D D1 00     MX
    LDA #$EFED                      ; $809C66  A9 ED EF     MX
    LDX #$001A                      ; $809C69  A2 1A 00     MX
    JSR L_80A4D9                    ; $809C6C  20 D9 A4     MX
L_809C6F:
    RTS                             ; $809C6F  60           MX
L_809C70:
    LDA #$FFFF                      ; $809C70  A9 FF FF     MX
    STA $00A6                       ; $809C73  8D A6 00     MX
    STZ $00A4                       ; $809C76  9C A4 00     MX
    LDA #$04F0                      ; $809C79  A9 F0 04     MX
    STA $00D1                       ; $809C7C  8D D1 00     MX
    LDA #$F009                      ; $809C7F  A9 09 F0     MX
    LDX #$001A                      ; $809C82  A2 1A 00     MX
    JSR L_80A4D9                    ; $809C85  20 D9 A4     MX
    RTL                             ; $809C88  6B           MX
L_809C89:
    JSR L_80A4C3                    ; $809C89  20 C3 A4     MX
    JSL L_82DD20                    ; $809C8C  22 20 DD 82  MX
    REP #$30                        ; $809C90  C2 30        mx
    LDA #$0000                      ; $809C92  A9 00 00     MX
    STA $00A6                       ; $809C95  8D A6 00     MX
    LDA #$0C00                      ; $809C98  A9 00 0C     MX
    STA $00A4                       ; $809C9B  8D A4 00     MX
    LDA #$04ED                      ; $809C9E  A9 ED 04     MX
    STA $00D1                       ; $809CA1  8D D1 00     MX
    LDA #$EDDD                      ; $809CA4  A9 DD ED     MX
    LDX #$0102                      ; $809CA7  A2 02 01     MX
    JSR L_80A4D9                    ; $809CAA  20 D9 A4     MX
    LDA #$002E                      ; $809CAD  A9 2E 00     MX
    STA $00A6                       ; $809CB0  8D A6 00     MX
    LDA #$0000                      ; $809CB3  A9 00 00     MX
    STA $00A4                       ; $809CB6  8D A4 00     MX
    LDA #$04EF                      ; $809CB9  A9 EF 04     MX
    STA $00D1                       ; $809CBC  8D D1 00     MX
    LDA #$EF85                      ; $809CBF  A9 85 EF     MX
    LDX #$0144                      ; $809CC2  A2 44 01     MX
    JSR L_80A4D9                    ; $809CC5  20 D9 A4     MX
    LDA $169E                       ; $809CC8  AD 9E 16     MX
    BMI L_809CFD                    ; $809CCB  30 30        MX
    LDA #$004C                      ; $809CCD  A9 4C 00     MX
    STA $00A6                       ; $809CD0  8D A6 00     MX
    LDA #$0000                      ; $809CD3  A9 00 00     MX
    STA $00A4                       ; $809CD6  8D A4 00     MX
    LDA #$04F0                      ; $809CD9  A9 F0 04     MX
    STA $00D1                       ; $809CDC  8D D1 00     MX
    LDA #$F025                      ; $809CDF  A9 25 F0     MX
    LDX #$0040                      ; $809CE2  A2 40 00     MX
    JSR L_80A4D9                    ; $809CE5  20 D9 A4     MX
    LDA #$0C00                      ; $809CE8  A9 00 0C     MX
    STA $00A4                       ; $809CEB  8D A4 00     MX
    LDA #$04F0                      ; $809CEE  A9 F0 04     MX
    STA $00D1                       ; $809CF1  8D D1 00     MX
    LDA #$F035                      ; $809CF4  A9 35 F0     MX
    LDX #$0082                      ; $809CF7  A2 82 00     MX
    JSR L_80A4D9                    ; $809CFA  20 D9 A4     MX
L_809CFD:
    LDA $16A0                       ; $809CFD  AD A0 16     MX
    BMI L_809D32                    ; $809D00  30 30        MX
    LDA #$004C                      ; $809D02  A9 4C 00     MX
    STA $00A6                       ; $809D05  8D A6 00     MX
    LDA #$0400                      ; $809D08  A9 00 04     MX
    STA $00A4                       ; $809D0B  8D A4 00     MX
    LDA #$04F0                      ; $809D0E  A9 F0 04     MX
    STA $00D1                       ; $809D11  8D D1 00     MX
    LDA #$F025                      ; $809D14  A9 25 F0     MX
    LDX #$004E                      ; $809D17  A2 4E 00     MX
    JSR L_80A4D9                    ; $809D1A  20 D9 A4     MX
    LDA #$0C00                      ; $809D1D  A9 00 0C     MX
    STA $00A4                       ; $809D20  8D A4 00     MX
    LDA #$04F0                      ; $809D23  A9 F0 04     MX
    STA $00D1                       ; $809D26  8D D1 00     MX
    LDA #$F035                      ; $809D29  A9 35 F0     MX
    LDX #$0090                      ; $809D2C  A2 90 00     MX
    JSR L_80A4D9                    ; $809D2F  20 D9 A4     MX
L_809D32:
    LDA $16A2                       ; $809D32  AD A2 16     MX
    BMI L_809D67                    ; $809D35  30 30        MX
    LDA #$004C                      ; $809D37  A9 4C 00     MX
    STA $00A6                       ; $809D3A  8D A6 00     MX
    LDA #$0C00                      ; $809D3D  A9 00 0C     MX
    STA $00A4                       ; $809D40  8D A4 00     MX
    LDA #$04F0                      ; $809D43  A9 F0 04     MX
    STA $00D1                       ; $809D46  8D D1 00     MX
    LDA #$F025                      ; $809D49  A9 25 F0     MX
    LDX #$0066                      ; $809D4C  A2 66 00     MX
    JSR L_80A4D9                    ; $809D4F  20 D9 A4     MX
    LDA #$0C00                      ; $809D52  A9 00 0C     MX
    STA $00A4                       ; $809D55  8D A4 00     MX
    LDA #$04F0                      ; $809D58  A9 F0 04     MX
    STA $00D1                       ; $809D5B  8D D1 00     MX
    LDA #$F035                      ; $809D5E  A9 35 F0     MX
    LDX #$00A8                      ; $809D61  A2 A8 00     MX
    JSR L_80A4D9                    ; $809D64  20 D9 A4     MX
L_809D67:
    LDA $16A4                       ; $809D67  AD A4 16     MX
    BMI L_809D9C                    ; $809D6A  30 30        MX
    LDA #$004C                      ; $809D6C  A9 4C 00     MX
    STA $00A6                       ; $809D6F  8D A6 00     MX
    LDA #$0800                      ; $809D72  A9 00 08     MX
    STA $00A4                       ; $809D75  8D A4 00     MX
    LDA #$04F0                      ; $809D78  A9 F0 04     MX
    STA $00D1                       ; $809D7B  8D D1 00     MX
    LDA #$F025                      ; $809D7E  A9 25 F0     MX
    LDX #$0074                      ; $809D81  A2 74 00     MX
    JSR L_80A4D9                    ; $809D84  20 D9 A4     MX
    LDA #$0C00                      ; $809D87  A9 00 0C     MX
    STA $00A4                       ; $809D8A  8D A4 00     MX
    LDA #$04F0                      ; $809D8D  A9 F0 04     MX
    STA $00D1                       ; $809D90  8D D1 00     MX
    LDA #$F035                      ; $809D93  A9 35 F0     MX
    LDX #$00B6                      ; $809D96  A2 B6 00     MX
    JSR L_80A4D9                    ; $809D99  20 D9 A4     MX
L_809D9C:
    REP #$20                        ; $809D9C  C2 20        MX
    LDA #$C800                      ; $809D9E  A9 00 C8     MX
    STA $2181                       ; $809DA1  8D 81 21     MX
    LDA #$F025                      ; $809DA4  A9 25 F0     MX
    STA $4302                       ; $809DA7  8D 02 43     MX
    LDA #$0010                      ; $809DAA  A9 10 00     MX
    STA $4305                       ; $809DAD  8D 05 43     MX
    SEP #$20                        ; $809DB0  E2 20        MX
    LDA #$7F                        ; $809DB2  A9 7F        mX
    STA $2183                       ; $809DB4  8D 83 21     mX
    LDA #$04                        ; $809DB7  A9 04        mX
    STA $4304                       ; $809DB9  8D 04 43     mX
    STZ $4300                       ; $809DBC  9C 00 43     mX
    LDA #$80                        ; $809DBF  A9 80        mX
    STA $4301                       ; $809DC1  8D 01 43     mX
    LDA #$01                        ; $809DC4  A9 01        mX
    STA $420B                       ; $809DC6  8D 0B 42     mX
    REP #$20                        ; $809DC9  C2 20        mX
    LDA #$0069                      ; $809DCB  A9 69 00     MX
    STA $00A6                       ; $809DCE  8D A6 00     MX
    LDA #$0400                      ; $809DD1  A9 00 04     MX
    STA $00A4                       ; $809DD4  8D A4 00     MX
    LDA $1683                       ; $809DD7  AD 83 16     MX
    AND #$001F                      ; $809DDA  29 1F 00     MX
    ASL                             ; $809DDD  0A           MX
    ASL                             ; $809DDE  0A           MX
    TAX                             ; $809DDF  AA           MX
    LDA #$17A9                      ; $809DE0  A9 A9 17     MX
    STA $00D1                       ; $809DE3  8D D1 00     MX
    LDA $97A91E,X                   ; $809DE6  BF 1E A9 97  MX
    PHX                             ; $809DEA  DA           MX
    LDX #$010C                      ; $809DEB  A2 0C 01     MX
    JSR L_80A4D9                    ; $809DEE  20 D9 A4     MX
    LDA #$007F                      ; $809DF1  A9 7F 00     MX
    STA $00A6                       ; $809DF4  8D A6 00     MX
    LDA #$0800                      ; $809DF7  A9 00 08     MX
    STA $00A4                       ; $809DFA  8D A4 00     MX
    LDA $1685                       ; $809DFD  AD 85 16     MX
    AND #$001F                      ; $809E00  29 1F 00     MX
    ASL                             ; $809E03  0A           MX
    ASL                             ; $809E04  0A           MX
    TAX                             ; $809E05  AA           MX
    LDA #$17A9                      ; $809E06  A9 A9 17     MX
    STA $00D1                       ; $809E09  8D D1 00     MX
    LDA $97A91E,X                   ; $809E0C  BF 1E A9 97  MX
    PHX                             ; $809E10  DA           MX
    LDX #$018C                      ; $809E11  A2 8C 01     MX
    JSR L_80A4D9                    ; $809E14  20 D9 A4     MX
    PLX                             ; $809E17  FA           MX
    LDA #$17A9                      ; $809E18  A9 A9 17     MX
    STA $00D1                       ; $809E1B  8D D1 00     MX
    LDA $97A91C,X                   ; $809E1E  BF 1C A9 97  MX
    STA $00D0                       ; $809E22  8D D0 00     MX
    LDA #$6400                      ; $809E25  A9 00 64     MX
    JSL L_82E018                    ; $809E28  22 18 E0 82  MX
    REP #$30                        ; $809E2C  C2 30        mx
    PLX                             ; $809E2E  FA           MX
    LDA #$17A9                      ; $809E2F  A9 A9 17     MX
    STA $00D1                       ; $809E32  8D D1 00     MX
    LDA $97A91C,X                   ; $809E35  BF 1C A9 97  MX
    STA $00D0                       ; $809E39  8D D0 00     MX
    LDA #$6350                      ; $809E3C  A9 50 63     MX
    JSL L_82E018                    ; $809E3F  22 18 E0 82  MX
    REP #$30                        ; $809E43  C2 30        mx
    LDA #$17E6                      ; $809E45  A9 E6 17     MX
    STA $00D1                       ; $809E48  8D D1 00     MX
    LDA $1683                       ; $809E4B  AD 83 16     MX
    AND #$001F                      ; $809E4E  29 1F 00     MX
    ASL                             ; $809E51  0A           MX
    ASL                             ; $809E52  0A           MX
    ASL                             ; $809E53  0A           MX
    TAX                             ; $809E54  AA           MX
    PHX                             ; $809E55  DA           MX
    LDA $97E5DC,X                   ; $809E56  BF DC E5 97  MX
    STA $00D0                       ; $809E5A  8D D0 00     MX
    JSL L_82E05E                    ; $809E5D  22 5E E0 82  MX
    SEP #$20                        ; $809E61  E2 20        MX
    LDA #$20                        ; $809E63  A9 20        mX
    STA $2116                       ; $809E65  8D 16 21     mX
    LDA #$65                        ; $809E68  A9 65        mX
    STA $2117                       ; $809E6A  8D 17 21     mX
    LDA #$01                        ; $809E6D  A9 01        mX
    STA $4300                       ; $809E6F  8D 00 43     mX
    LDA #$18                        ; $809E72  A9 18        mX
    STA $4301                       ; $809E74  8D 01 43     mX
    LDA #$00                        ; $809E77  A9 00        mX
    STA $4302                       ; $809E79  8D 02 43     mX
    LDA #$06                        ; $809E7C  A9 06        mX
    STA $4303                       ; $809E7E  8D 03 43     mX
    LDA #$7F                        ; $809E81  A9 7F        mX
    STA $4304                       ; $809E83  8D 04 43     mX
    LDA #$70                        ; $809E86  A9 70        mX
    STA $4305                       ; $809E88  8D 05 43     mX
    LDA #$00                        ; $809E8B  A9 00        mX
    STA $4306                       ; $809E8D  8D 06 43     mX
    LDA #$01                        ; $809E90  A9 01        mX
    STA $420B                       ; $809E92  8D 0B 42     mX
    REP #$20                        ; $809E95  C2 20        mX
    LDA #$00A4                      ; $809E97  A9 A4 00     MX
    STA $00A6                       ; $809E9A  8D A6 00     MX
    LDA #$0400                      ; $809E9D  A9 00 04     MX
    STA $00A4                       ; $809EA0  8D A4 00     MX
    PLX                             ; $809EA3  FA           MX
    PHX                             ; $809EA4  DA           MX
    LDA $1683                       ; $809EA5  AD 83 16     MX
    AND #$0040                      ; $809EA8  29 40 00     MX
    STA $00AA                       ; $809EAB  8D AA 00     MX
    LDA $97E5DE,X                   ; $809EAE  BF DE E5 97  MX
    LDY $00AA                       ; $809EB2  AC AA 00     MX
    BEQ L_809EBC                    ; $809EB5  F0 05        MX
    LDX #$000E                      ; $809EB7  A2 0E 00     MX
    BNE L_809EBF                    ; $809EBA  D0 03        MX
L_809EBC:
    LDX #$0000                      ; $809EBC  A2 00 00     MX
L_809EBF:
    JSR L_80A4D9                    ; $809EBF  20 D9 A4     MX
    PLX                             ; $809EC2  FA           MX
    PHX                             ; $809EC3  DA           MX
    LDA $97E5E0,X                   ; $809EC4  BF E0 E5 97  MX
    STA $00D0                       ; $809EC8  8D D0 00     MX
    JSL L_82E05E                    ; $809ECB  22 5E E0 82  MX
    SEP #$20                        ; $809ECF  E2 20        MX
    LDA #$58                        ; $809ED1  A9 58        mX
    STA $2116                       ; $809ED3  8D 16 21     mX
    LDA #$65                        ; $809ED6  A9 65        mX
    STA $2117                       ; $809ED8  8D 17 21     mX
    LDA #$01                        ; $809EDB  A9 01        mX
    STA $4300                       ; $809EDD  8D 00 43     mX
    LDA #$18                        ; $809EE0  A9 18        mX
    STA $4301                       ; $809EE2  8D 01 43     mX
    LDA #$00                        ; $809EE5  A9 00        mX
    STA $4302                       ; $809EE7  8D 02 43     mX
    LDA #$06                        ; $809EEA  A9 06        mX
    STA $4303                       ; $809EEC  8D 03 43     mX
    LDA #$7F                        ; $809EEF  A9 7F        mX
    STA $4304                       ; $809EF1  8D 04 43     mX
    LDA #$70                        ; $809EF4  A9 70        mX
    STA $4305                       ; $809EF6  8D 05 43     mX
    LDA #$00                        ; $809EF9  A9 00        mX
    STA $4306                       ; $809EFB  8D 06 43     mX
    LDA #$01                        ; $809EFE  A9 01        mX
    STA $420B                       ; $809F00  8D 0B 42     mX
    REP #$20                        ; $809F03  C2 20        mX
    LDA #$00AB                      ; $809F05  A9 AB 00     MX
    STA $00A6                       ; $809F08  8D A6 00     MX
    LDA #$0400                      ; $809F0B  A9 00 04     MX
    STA $00A4                       ; $809F0E  8D A4 00     MX
    PLX                             ; $809F11  FA           MX
    LDA $1683                       ; $809F12  AD 83 16     MX
    AND #$0040                      ; $809F15  29 40 00     MX
    STA $00AA                       ; $809F18  8D AA 00     MX
    LDA $97E5E2,X                   ; $809F1B  BF E2 E5 97  MX
    LDY $00AA                       ; $809F1F  AC AA 00     MX
    BNE L_809F29                    ; $809F22  D0 05        MX
    LDX #$000E                      ; $809F24  A2 0E 00     MX
    BNE L_809F2C                    ; $809F27  D0 03        MX
L_809F29:
    LDX #$0000                      ; $809F29  A2 00 00     MX
L_809F2C:
    JSR L_80A4D9                    ; $809F2C  20 D9 A4     MX
    LDA $1685                       ; $809F2F  AD 85 16     MX
    AND #$001F                      ; $809F32  29 1F 00     MX
    ASL                             ; $809F35  0A           MX
    ASL                             ; $809F36  0A           MX
    ASL                             ; $809F37  0A           MX
    TAX                             ; $809F38  AA           MX
    PHX                             ; $809F39  DA           MX
    LDA $97E5DC,X                   ; $809F3A  BF DC E5 97  MX
    STA $00D0                       ; $809F3E  8D D0 00     MX
    JSL L_82E05E                    ; $809F41  22 5E E0 82  MX
    SEP #$20                        ; $809F45  E2 20        MX
    LDA #$90                        ; $809F47  A9 90        mX
    STA $2116                       ; $809F49  8D 16 21     mX
    LDA #$65                        ; $809F4C  A9 65        mX
    STA $2117                       ; $809F4E  8D 17 21     mX
    LDA #$01                        ; $809F51  A9 01        mX
    STA $4300                       ; $809F53  8D 00 43     mX
    LDA #$18                        ; $809F56  A9 18        mX
    STA $4301                       ; $809F58  8D 01 43     mX
    LDA #$00                        ; $809F5B  A9 00        mX
    STA $4302                       ; $809F5D  8D 02 43     mX
    LDA #$06                        ; $809F60  A9 06        mX
    STA $4303                       ; $809F62  8D 03 43     mX
    LDA #$7F                        ; $809F65  A9 7F        mX
    STA $4304                       ; $809F67  8D 04 43     mX
    LDA #$70                        ; $809F6A  A9 70        mX
    STA $4305                       ; $809F6C  8D 05 43     mX
    LDA #$00                        ; $809F6F  A9 00        mX
    STA $4306                       ; $809F71  8D 06 43     mX
    LDA #$01                        ; $809F74  A9 01        mX
    STA $420B                       ; $809F76  8D 0B 42     mX
    REP #$20                        ; $809F79  C2 20        mX
    LDA #$00B2                      ; $809F7B  A9 B2 00     MX
    STA $00A6                       ; $809F7E  8D A6 00     MX
    LDA #$0400                      ; $809F81  A9 00 04     MX
    STA $00A4                       ; $809F84  8D A4 00     MX
    PLX                             ; $809F87  FA           MX
    PHX                             ; $809F88  DA           MX
    LDA $1685                       ; $809F89  AD 85 16     MX
    AND #$0040                      ; $809F8C  29 40 00     MX
    STA $00AA                       ; $809F8F  8D AA 00     MX
    LDA $97E5DE,X                   ; $809F92  BF DE E5 97  MX
    LDY $00AA                       ; $809F96  AC AA 00     MX
    BEQ L_809FA0                    ; $809F99  F0 05        MX
    LDX #$0034                      ; $809F9B  A2 34 00     MX
    BNE L_809FA3                    ; $809F9E  D0 03        MX
L_809FA0:
    LDX #$0026                      ; $809FA0  A2 26 00     MX
L_809FA3:
    JSR L_80A4D9                    ; $809FA3  20 D9 A4     MX
    PLX                             ; $809FA6  FA           MX
    PHX                             ; $809FA7  DA           MX
    LDA $97E5E0,X                   ; $809FA8  BF E0 E5 97  MX
    STA $00D0                       ; $809FAC  8D D0 00     MX
    JSL L_82E05E                    ; $809FAF  22 5E E0 82  MX
    SEP #$20                        ; $809FB3  E2 20        MX
    LDA #$C8                        ; $809FB5  A9 C8        mX
    STA $2116                       ; $809FB7  8D 16 21     mX
    LDA #$65                        ; $809FBA  A9 65        mX
    STA $2117                       ; $809FBC  8D 17 21     mX
    LDA #$01                        ; $809FBF  A9 01        mX
    STA $4300                       ; $809FC1  8D 00 43     mX
    LDA #$18                        ; $809FC4  A9 18        mX
    STA $4301                       ; $809FC6  8D 01 43     mX
    LDA #$00                        ; $809FC9  A9 00        mX
    STA $4302                       ; $809FCB  8D 02 43     mX
    LDA #$06                        ; $809FCE  A9 06        mX
    STA $4303                       ; $809FD0  8D 03 43     mX
    LDA #$7F                        ; $809FD3  A9 7F        mX
    STA $4304                       ; $809FD5  8D 04 43     mX
    LDA #$70                        ; $809FD8  A9 70        mX
    STA $4305                       ; $809FDA  8D 05 43     mX
    LDA #$00                        ; $809FDD  A9 00        mX
    STA $4306                       ; $809FDF  8D 06 43     mX
    LDA #$01                        ; $809FE2  A9 01        mX
    STA $420B                       ; $809FE4  8D 0B 42     mX
    REP #$20                        ; $809FE7  C2 20        mX
    LDA #$00B9                      ; $809FE9  A9 B9 00     MX
    STA $00A6                       ; $809FEC  8D A6 00     MX
    LDA #$0400                      ; $809FEF  A9 00 04     MX
    STA $00A4                       ; $809FF2  8D A4 00     MX
    PLX                             ; $809FF5  FA           MX
    LDA $1685                       ; $809FF6  AD 85 16     MX
    AND #$0040                      ; $809FF9  29 40 00     MX
    STA $00AA                       ; $809FFC  8D AA 00     MX
    LDA $97E5E2,X                   ; $809FFF  BF E2 E5 97  MX
    LDY $00AA                       ; $80A003  AC AA 00     MX
    BNE L_80A00D                    ; $80A006  D0 05        MX
    LDX #$0034                      ; $80A008  A2 34 00     MX
    BNE L_80A010                    ; $80A00B  D0 03        MX
L_80A00D:
    LDX #$0026                      ; $80A00D  A2 26 00     MX
L_80A010:
    JSR L_80A4D9                    ; $80A010  20 D9 A4     MX
    JSL L_B1FAAF                    ; $80A013  22 AF FA B1  MX
    LDA #$0095                      ; $80A017  A9 95 00     MX
    STA $00A6                       ; $80A01A  8D A6 00     MX
    LDA #$0C00                      ; $80A01D  A9 00 0C     MX
    STA $00A4                       ; $80A020  8D A4 00     MX
    LDA $0CD5                       ; $80A023  AD D5 0C     MX
    ASL                             ; $80A026  0A           MX
    ASL                             ; $80A027  0A           MX
    ASL                             ; $80A028  0A           MX
    TAX                             ; $80A029  AA           MX
    LDA $84EC8A,X                   ; $80A02A  BF 8A EC 84  MX
    STA $00D1                       ; $80A02E  8D D1 00     MX
    LDA $84EC89,X                   ; $80A031  BF 89 EC 84  MX
    PHX                             ; $80A035  DA           MX
    LDX #$024C                      ; $80A036  A2 4C 02     MX
    JSR L_80A4D9                    ; $80A039  20 D9 A4     MX
    PLX                             ; $80A03C  FA           MX
    LDA $84EC86,X                   ; $80A03D  BF 86 EC 84  MX
    STA $00D1                       ; $80A041  8D D1 00     MX
    LDA $84EC85,X                   ; $80A044  BF 85 EC 84  MX
    STA $00D0                       ; $80A048  8D D0 00     MX
    LDA #$64B0                      ; $80A04B  A9 B0 64     MX
    JSL L_82E03B                    ; $80A04E  22 3B E0 82  MX
    SEP #$20                        ; $80A052  E2 20        mx
    LDA $0B4A                       ; $80A054  AD 4A 0B     mx
    CMP #$02                        ; $80A057  C9 02        mx
    BCC L_80A064                    ; $80A059  90 09        mx
    JSR L_80A4B9                    ; $80A05B  20 B9 A4     mx
    SEP #$30                        ; $80A05E  E2 30        MX
    JSL L_A6DC0D                    ; $80A060  22 0D DC A6  mx
L_80A064:
    LDA #$00                        ; $80A064  A9 00        mx
    STA $2116                       ; $80A066  8D 16 21     mx
    LDA #$54                        ; $80A069  A9 54        mx
    STA $2117                       ; $80A06B  8D 17 21     mx
    LDA #$01                        ; $80A06E  A9 01        mx
    STA $4300                       ; $80A070  8D 00 43     mx
    LDA #$18                        ; $80A073  A9 18        mx
    STA $4301                       ; $80A075  8D 01 43     mx
    LDA #$00                        ; $80A078  A9 00        mx
    STA $4302                       ; $80A07A  8D 02 43     mx
    LDA #$C0                        ; $80A07D  A9 C0        mx
    STA $4303                       ; $80A07F  8D 03 43     mx
    LDA #$7F                        ; $80A082  A9 7F        mx
    STA $4304                       ; $80A084  8D 04 43     mx
    LDA #$00                        ; $80A087  A9 00        mx
    STA $4305                       ; $80A089  8D 05 43     mx
    LDA #$08                        ; $80A08C  A9 08        mx
    STA $4306                       ; $80A08E  8D 06 43     mx
    LDA #$01                        ; $80A091  A9 01        mx
    STA $420B                       ; $80A093  8D 0B 42     mx
    REP #$20                        ; $80A096  C2 20        mx
    RTS                             ; $80A098  60           Mx
    db $57,$20,$57,$20,$57,$20,$57,$20,$56,$20,$57,$20,$57,$20,$57,$20 ; $80A099
    db $55,$20,$57,$20,$57,$20,$57,$20,$54,$20,$57,$20,$57,$20,$57,$20 ; $80A0A9
    db $53,$20,$57,$20,$57,$20,$57,$20,$52,$20,$57,$20,$57,$20,$57,$20 ; $80A0B9
    db $51,$20,$57,$20,$57,$20,$57,$20,$50,$20,$57,$20,$57,$20,$57,$20 ; $80A0C9
    db $4F,$20,$57,$20,$57,$20,$57,$20,$4F,$20,$56,$20,$57,$20,$57,$20 ; $80A0D9
    db $4F,$20,$55,$20,$57,$20,$57,$20,$4F,$20,$54,$20,$57,$20,$57,$20 ; $80A0E9
    db $4F,$20,$53,$20,$57,$20,$57,$20,$4F,$20,$52,$20,$57,$20,$57,$20 ; $80A0F9
    db $4F,$20,$51,$20,$57,$20,$57,$20,$4F,$20,$50,$20,$57,$20,$57,$20 ; $80A109
    db $4F,$20,$4F,$20,$57,$20,$57,$20,$4F,$20,$4F,$20,$56,$20,$57,$20 ; $80A119
    db $4F,$20,$4F,$20,$55,$20,$57,$20,$4F,$20,$4F,$20,$54,$20,$57,$20 ; $80A129
    db $4F,$20,$4F,$20,$53,$20,$57,$20,$4F,$20,$4F,$20,$52,$20,$57,$20 ; $80A139
    db $4F,$20,$4F,$20,$51,$20,$57,$20,$4F,$20,$4F,$20,$50,$20,$57,$20 ; $80A149
    db $4F,$20,$4F,$20,$4F,$20,$57,$20,$4F,$20,$4F,$20,$4F,$20,$56,$20 ; $80A159
    db $4F,$20,$4F,$20,$4F,$20,$55,$20,$4F,$20,$4F,$20,$4F,$20,$54,$20 ; $80A169
    db $4F,$20,$4F,$20,$4F,$20,$53,$20,$4F,$20,$4F,$20,$4F,$20,$52,$20 ; $80A179
    db $4F,$20,$4F,$20,$4F,$20,$51,$20,$4F,$20,$4F,$20,$4F,$20,$50,$20 ; $80A189
    db $4F,$20,$4F,$20,$4F,$20,$4F,$20,$57,$24,$57,$24,$57,$24,$57,$24 ; $80A199
    db $56,$24,$57,$24,$57,$24,$57,$24,$55,$24,$57,$24,$57,$24,$57,$24 ; $80A1A9
    db $54,$24,$57,$24,$57,$24,$57,$24,$53,$24,$57,$24,$57,$24,$57,$24 ; $80A1B9
    db $52,$24,$57,$24,$57,$24,$57,$24,$51,$24,$57,$24,$57,$24,$57,$24 ; $80A1C9
    db $50,$24,$57,$24,$57,$24,$57,$24,$4F,$24,$57,$24,$57,$24,$57,$24 ; $80A1D9
    db $4F,$24,$56,$24,$57,$24,$57,$24,$4F,$24,$55,$24,$57,$24,$57,$24 ; $80A1E9
    db $4F,$24,$54,$24,$57,$24,$57,$24,$4F,$24,$53,$24,$57,$24,$57,$24 ; $80A1F9
    db $4F,$24,$52,$24,$57,$24,$57,$24,$4F,$24,$51,$24,$57,$24,$57,$24 ; $80A209
    db $4F,$24,$50,$24,$57,$24,$57,$24,$4F,$24,$4F,$24,$57,$24,$57,$24 ; $80A219
    db $4F,$24,$4F,$24,$56,$24,$57,$24,$4F,$24,$4F,$24,$55,$24,$57,$24 ; $80A229
    db $4F,$24,$4F,$24,$54,$24,$57,$24,$4F,$24,$4F,$24,$53,$24,$57,$24 ; $80A239
    db $4F,$24,$4F,$24,$52,$24,$57,$24,$4F,$24,$4F,$24,$51,$24,$57,$24 ; $80A249
    db $4F,$24,$4F,$24,$50,$24,$57,$24,$4F,$24,$4F,$24,$4F,$24,$57,$24 ; $80A259
    db $4F,$24,$4F,$24,$4F,$24,$56,$24,$4F,$24,$4F,$24,$4F,$24,$55,$24 ; $80A269
    db $4F,$24,$4F,$24,$4F,$24,$54,$24,$4F,$24,$4F,$24,$4F,$24,$53,$24 ; $80A279
    db $4F,$24,$4F,$24,$4F,$24,$52,$24,$4F,$24,$4F,$24,$4F,$24,$51,$24 ; $80A289
    db $4F,$24,$4F,$24,$4F,$24,$50,$24,$4F,$24,$4F,$24,$4F,$24,$4F,$24 ; $80A299
    db $57,$2C,$57,$2C,$57,$2C,$57,$2C,$56,$2C,$57,$2C,$57,$2C,$57,$2C ; $80A2A9
    db $55,$2C,$57,$2C,$57,$2C,$57,$2C,$54,$2C,$57,$2C,$57,$2C,$57,$2C ; $80A2B9
    db $53,$2C,$57,$2C,$57,$2C,$57,$2C,$52,$2C,$57,$2C,$57,$2C,$57,$2C ; $80A2C9
    db $51,$2C,$57,$2C,$57,$2C,$57,$2C,$50,$2C,$57,$2C,$57,$2C,$57,$2C ; $80A2D9
    db $4F,$2C,$57,$2C,$57,$2C,$57,$2C,$4F,$2C,$56,$2C,$57,$2C,$57,$2C ; $80A2E9
    db $4F,$2C,$55,$2C,$57,$2C,$57,$2C,$4F,$2C,$54,$2C,$57,$2C,$57,$2C ; $80A2F9
    db $4F,$2C,$53,$2C,$57,$2C,$57,$2C,$4F,$2C,$52,$2C,$57,$2C,$57,$2C ; $80A309
    db $4F,$2C,$51,$2C,$57,$2C,$57,$2C,$4F,$2C,$50,$2C,$57,$2C,$57,$2C ; $80A319
    db $4F,$2C,$4F,$2C,$57,$2C,$57,$2C,$4F,$2C,$4F,$2C,$56,$2C,$57,$2C ; $80A329
    db $4F,$2C,$4F,$2C,$55,$2C,$57,$2C,$4F,$2C,$4F,$2C,$54,$2C,$57,$2C ; $80A339
    db $4F,$2C,$4F,$2C,$53,$2C,$57,$2C,$4F,$2C,$4F,$2C,$52,$2C,$57,$2C ; $80A349
    db $4F,$2C,$4F,$2C,$51,$2C,$57,$2C,$4F,$2C,$4F,$2C,$50,$2C,$57,$2C ; $80A359
    db $4F,$2C,$4F,$2C,$4F,$2C,$57,$2C,$4F,$2C,$4F,$2C,$4F,$2C,$56,$2C ; $80A369
    db $4F,$2C,$4F,$2C,$4F,$2C,$55,$2C,$4F,$2C,$4F,$2C,$4F,$2C,$54,$2C ; $80A379
    db $4F,$2C,$4F,$2C,$4F,$2C,$53,$2C,$4F,$2C,$4F,$2C,$4F,$2C,$52,$2C ; $80A389
    db $4F,$2C,$4F,$2C,$4F,$2C,$51,$2C,$4F,$2C,$4F,$2C,$4F,$2C,$50,$2C ; $80A399
    db $4F,$2C,$4F,$2C,$4F,$2C,$4F,$2C,$57,$28,$57,$28,$57,$28,$57,$28 ; $80A3A9
    db $56,$28,$57,$28,$57,$28,$57,$28,$55,$28,$57,$28,$57,$28,$57,$28 ; $80A3B9
    db $54,$28,$57,$28,$57,$28,$57,$28,$53,$28,$57,$28,$57,$28,$57,$28 ; $80A3C9
    db $52,$28,$57,$28,$57,$28,$57,$28,$51,$28,$57,$28,$57,$28,$57,$28 ; $80A3D9
    db $50,$28,$57,$28,$57,$28,$57,$28,$4F,$28,$57,$28,$57,$28,$57,$28 ; $80A3E9
    db $4F,$28,$56,$28,$57,$28,$57,$28,$4F,$28,$55,$28,$57,$28,$57,$28 ; $80A3F9
    db $4F,$28,$54,$28,$57,$28,$57,$28,$4F,$28,$53,$28,$57,$28,$57,$28 ; $80A409
    db $4F,$28,$52,$28,$57,$28,$57,$28,$4F,$28,$51,$28,$57,$28,$57,$28 ; $80A419
    db $4F,$28,$50,$28,$57,$28,$57,$28,$4F,$28,$4F,$28,$57,$28,$57,$28 ; $80A429
    db $4F,$28,$4F,$28,$56,$28,$57,$28,$4F,$28,$4F,$28,$55,$28,$57,$28 ; $80A439
    db $4F,$28,$4F,$28,$54,$28,$57,$28,$4F,$28,$4F,$28,$53,$28,$57,$28 ; $80A449
    db $4F,$28,$4F,$28,$52,$28,$57,$28,$4F,$28,$4F,$28,$51,$28,$57,$28 ; $80A459
    db $4F,$28,$4F,$28,$50,$28,$57,$28,$4F,$28,$4F,$28,$4F,$28,$57,$28 ; $80A469
    db $4F,$28,$4F,$28,$4F,$28,$56,$28,$4F,$28,$4F,$28,$4F,$28,$55,$28 ; $80A479
    db $4F,$28,$4F,$28,$4F,$28,$54,$28,$4F,$28,$4F,$28,$4F,$28,$53,$28 ; $80A489
    db $4F,$28,$4F,$28,$4F,$28,$52,$28,$4F,$28,$4F,$28,$4F,$28,$51,$28 ; $80A499
    db $4F,$28,$4F,$28,$4F,$28,$50,$28,$4F,$28,$4F,$28,$4F,$28,$4F,$28 ; $80A4A9
L_80A4B9:
    REP #$30                        ; $80A4B9  C2 30        mx
    LDX #$0080                      ; $80A4BB  A2 80 00     MX
    LDA #$0000                      ; $80A4BE  A9 00 00     MX
    BRA L_80A4C9                    ; $80A4C1  80 06        MX
L_80A4C3:
    REP #$30                        ; $80A4C3  C2 30        MX
    LDX #$0000                      ; $80A4C5  A2 00 00     MX
    TXA                             ; $80A4C8  8A           MX
L_80A4C9:
    STA $7FC000,X                   ; $80A4C9  9F 00 C0 7F  MX
    INX                             ; $80A4CD  E8           MX
    INX                             ; $80A4CE  E8           MX
    CPX #$0800                      ; $80A4CF  E0 00 08     MX
    BNE L_80A4C9                    ; $80A4D2  D0 F5        MX
    RTS                             ; $80A4D4  60           MX
L_80A4D5:
    JSR L_80A4D9                    ; $80A4D5  20 D9 A4     MX
    RTL                             ; $80A4D8  6B           MX
L_80A4D9:
    STA $00D0                       ; $80A4D9  8D D0 00     MX
    CLC                             ; $80A4DC  18           MX
    ADC #$0004                      ; $80A4DD  69 04 00     MX
    STA $00D3                       ; $80A4E0  8D D3 00     MX
    LDA [$D0]                       ; $80A4E3  A7 D0        MX
    ASL                             ; $80A4E5  0A           MX
    STA $00EA                       ; $80A4E6  8D EA 00     MX
    INC $00D0                       ; $80A4E9  EE D0 00     MX
    INC $00D0                       ; $80A4EC  EE D0 00     MX
    LDA [$D0]                       ; $80A4EF  A7 D0        MX
    STA $00E8                       ; $80A4F1  8D E8 00     MX
    INC $00D0                       ; $80A4F4  EE D0 00     MX
    INC $00D0                       ; $80A4F7  EE D0 00     MX
L_80A4FA:
    LDY $00EA                       ; $80A4FA  AC EA 00     MX
    PHX                             ; $80A4FD  DA           MX
L_80A4FE:
    LDA [$D0]                       ; $80A4FE  A7 D0        MX
    INC                             ; $80A500  1A           MX
    CLC                             ; $80A501  18           MX
    ADC $00A6                       ; $80A502  6D A6 00     MX
    AND #$E3FF                      ; $80A505  29 FF E3     MX
    ORA $00A4                       ; $80A508  0D A4 00     MX
    ORA #$2000                      ; $80A50B  09 00 20     MX
    STA $7FC000,X                   ; $80A50E  9F 00 C0 7F  MX
    INC $00D0                       ; $80A512  EE D0 00     MX
    INC $00D0                       ; $80A515  EE D0 00     MX
    INX                             ; $80A518  E8           MX
    INX                             ; $80A519  E8           MX
    DEY                             ; $80A51A  88           MX
    DEY                             ; $80A51B  88           MX
    BNE L_80A4FE                    ; $80A51C  D0 E0        MX
    PLA                             ; $80A51E  68           MX
    CLC                             ; $80A51F  18           MX
    ADC #$0040                      ; $80A520  69 40 00     MX
    TAX                             ; $80A523  AA           MX
    LDA $00D3                       ; $80A524  AD D3 00     MX
    CLC                             ; $80A527  18           MX
    ADC $00EA                       ; $80A528  6D EA 00     MX
    STA $00D3                       ; $80A52B  8D D3 00     MX
    LDA $00D3                       ; $80A52E  AD D3 00     MX
    STA $00D0                       ; $80A531  8D D0 00     MX
    DEC $00E8                       ; $80A534  CE E8 00     MX
    BNE L_80A4FA                    ; $80A537  D0 C1        MX
    RTS                             ; $80A539  60           MX
L_80A53A:
    STA $00BA                       ; $80A53A  8D BA 00     Mx
    CLC                             ; $80A53D  18           Mx
    ADC $0CA9                       ; $80A53E  6D A9 0C     Mx
    STA $0CA9                       ; $80A541  8D A9 0C     Mx
    LDA $00BA                       ; $80A544  AD BA 00     Mx
    BNE L_80A54C                    ; $80A547  D0 03        Mx
    JMP L_80A583                    ; $80A549  4C 83 A5     Mx
L_80A54C:
    LDA $0C1F                       ; $80A54C  AD 1F 0C     Mx
    AND #$00FF                      ; $80A54F  29 FF 00     Mx
    CMP #$0001                      ; $80A552  C9 01 00     Mx
    BEQ L_80A56E                    ; $80A555  F0 17        Mx
    LDA $00BA                       ; $80A557  AD BA 00     Mx
    CMP #$0002                      ; $80A55A  C9 02 00     Mx
    BEQ L_80A562                    ; $80A55D  F0 03        Mx
    INC $1C93                       ; $80A55F  EE 93 1C     Mx
L_80A562:
    INC $1C8B                       ; $80A562  EE 8B 1C     Mx
    CLC                             ; $80A565  18           Mx
    ADC $1C9B                       ; $80A566  6D 9B 1C     Mx
    STA $1C9B                       ; $80A569  8D 9B 1C     Mx
    BRA L_80A583                    ; $80A56C  80 15        Mx
L_80A56E:
    LDA $00BA                       ; $80A56E  AD BA 00     Mx
    CMP #$0002                      ; $80A571  C9 02 00     Mx
    BEQ L_80A579                    ; $80A574  F0 03        Mx
    INC $1C91                       ; $80A576  EE 91 1C     Mx
L_80A579:
    INC $1C89                       ; $80A579  EE 89 1C     Mx
    CLC                             ; $80A57C  18           Mx
    ADC $1C99                       ; $80A57D  6D 99 1C     Mx
    STA $1C99                       ; $80A580  8D 99 1C     Mx
L_80A583:
    LDA $0CAF                       ; $80A583  AD AF 0C     Mx
    SEC                             ; $80A586  38           Mx
    SBC $0CA9                       ; $80A587  ED A9 0C     Mx
    STA $07CA                       ; $80A58A  8D CA 07     Mx
    STA $08B2                       ; $80A58D  8D B2 08     Mx
    LDA $0CA9                       ; $80A590  AD A9 0C     Mx
    SEC                             ; $80A593  38           Mx
    SBC $0CAF                       ; $80A594  ED AF 0C     Mx
    STA $099A                       ; $80A597  8D 9A 09     Mx
    STA $0A82                       ; $80A59A  8D 82 0A     Mx
    JSL $27DC65                     ; $80A59D  22 65 DC 27  Mx
    STZ $0C1D                       ; $80A5A1  9C 1D 0C     Mx
    LDA $00BA                       ; $80A5A4  AD BA 00     Mx
L_80A5A7:
    CLC                             ; $80A5A7  18           Mx
    ADC $0CB5,X                     ; $80A5A8  7D B5 0C     Mx
    CMP #$000A                      ; $80A5AB  C9 0A 00     Mx
    BCC L_80A5C0                    ; $80A5AE  90 10        Mx
    SEC                             ; $80A5B0  38           Mx
    SBC #$000A                      ; $80A5B1  E9 0A 00     Mx
    STA $0CB5,X                     ; $80A5B4  9D B5 0C     Mx
    LDA #$0001                      ; $80A5B7  A9 01 00     Mx
    DEX                             ; $80A5BA  CA           Mx
    DEX                             ; $80A5BB  CA           Mx
    BPL L_80A5A7                    ; $80A5BC  10 E9        Mx
    BRA L_80A5C3                    ; $80A5BE  80 03        Mx
L_80A5C0:
    STA $0CB5,X                     ; $80A5C0  9D B5 0C     Mx
L_80A5C3:
    JSR L_80A6C8                    ; $80A5C3  20 C8 A6     Mx
    LDA #$0002                      ; $80A5C6  A9 02 00     Mx
    STA $0CCD                       ; $80A5C9  8D CD 0C     Mx
    LDA #$0004                      ; $80A5CC  A9 04 00     Mx
    STA $0CCF                       ; $80A5CF  8D CF 0C     Mx
    STZ $0CD1                       ; $80A5D2  9C D1 0C     Mx
    LDA #$0001                      ; $80A5D5  A9 01 00     Mx
    STA $0702                       ; $80A5D8  8D 02 07     Mx
    STA $07EA                       ; $80A5DB  8D EA 07     Mx
    STA $08D2                       ; $80A5DE  8D D2 08     Mx
    STA $09BA                       ; $80A5E1  8D BA 09     Mx
    STZ $077A                       ; $80A5E4  9C 7A 07     Mx
    STZ $0862                       ; $80A5E7  9C 62 08     Mx
    STZ $094A                       ; $80A5EA  9C 4A 09     Mx
    STZ $0A32                       ; $80A5ED  9C 32 0A     Mx
    STZ $0778                       ; $80A5F0  9C 78 07     Mx
    STZ $0860                       ; $80A5F3  9C 60 08     Mx
    STZ $0948                       ; $80A5F6  9C 48 09     Mx
    STZ $0A30                       ; $80A5F9  9C 30 0A     Mx
    LDA #$FFFF                      ; $80A5FC  A9 FF FF     Mx
    STA $076E                       ; $80A5FF  8D 6E 07     Mx
    STA $0856                       ; $80A602  8D 56 08     Mx
    STA $093E                       ; $80A605  8D 3E 09     Mx
    STA $0A26                       ; $80A608  8D 26 0A     Mx
    STZ $0780                       ; $80A60B  9C 80 07     Mx
    STZ $0868                       ; $80A60E  9C 68 08     Mx
    STZ $0950                       ; $80A611  9C 50 09     Mx
    STZ $0A38                       ; $80A614  9C 38 0A     Mx
    STZ $07AC                       ; $80A617  9C AC 07     Mx
    STZ $0894                       ; $80A61A  9C 94 08     Mx
    STZ $097C                       ; $80A61D  9C 7C 09     Mx
    STZ $0A64                       ; $80A620  9C 64 0A     Mx
    LDA #$001E                      ; $80A623  A9 1E 00     Mx
    STA $0A9A                       ; $80A626  8D 9A 0A     Mx
    LDA $0A98                       ; $80A629  AD 98 0A     Mx
    BEQ L_80A635                    ; $80A62C  F0 07        Mx
    CMP #$0003                      ; $80A62E  C9 03 00     Mx
    BEQ L_80A678                    ; $80A631  F0 45        Mx
    BRA L_80A652                    ; $80A633  80 1D        Mx
L_80A635:
    LDA $08C1                       ; $80A635  AD C1 08     Mx
    ORA $09A9                       ; $80A638  0D A9 09     Mx
    AND #$00FF                      ; $80A63B  29 FF 00     Mx
    BEQ L_80A64A                    ; $80A63E  F0 0A        Mx
    LDX $08C1                       ; $80A640  AE C1 08     Mx
    BEQ L_80A678                    ; $80A643  F0 33        Mx
    LDX $09A9                       ; $80A645  AE A9 09     Mx
    BEQ L_80A652                    ; $80A648  F0 08        Mx
L_80A64A:
    LDA $0928                       ; $80A64A  AD 28 09     Mx
    CMP $0A10                       ; $80A64D  CD 10 0A     Mx
    BCC L_80A678                    ; $80A650  90 26        Mx
L_80A652:
    LDA #$011B                      ; $80A652  A9 1B 01     Mx
    STA $09BC                       ; $80A655  8D BC 09     Mx
    LDA #$0374                      ; $80A658  A9 74 03     Mx
    STA $09BE                       ; $80A65B  8D BE 09     Mx
    LDA #$09A8                      ; $80A65E  A9 A8 09     Mx
    STA $00CC                       ; $80A661  8D CC 00     Mx
    LDA $09A8                       ; $80A664  AD A8 09     Mx
    STA $0C1B                       ; $80A667  8D 1B 0C     Mx
    LDA #$00C6                      ; $80A66A  A9 C6 00     Mx
    STA $08D4                       ; $80A66D  8D D4 08     Mx
    LDA #$037E                      ; $80A670  A9 7E 03     Mx
    STA $08D6                       ; $80A673  8D D6 08     Mx
    BRA L_80A69C                    ; $80A676  80 24        Mx
L_80A678:
    LDA #$011B                      ; $80A678  A9 1B 01     Mx
    STA $08D4                       ; $80A67B  8D D4 08     Mx
    LDA #$0374                      ; $80A67E  A9 74 03     Mx
    STA $08D6                       ; $80A681  8D D6 08     Mx
    LDA #$08C0                      ; $80A684  A9 C0 08     Mx
    STA $00CC                       ; $80A687  8D CC 00     Mx
    LDA $08C0                       ; $80A68A  AD C0 08     Mx
    STA $0C1B                       ; $80A68D  8D 1B 0C     Mx
    LDA #$00C6                      ; $80A690  A9 C6 00     Mx
    STA $09BC                       ; $80A693  8D BC 09     Mx
    LDA #$037E                      ; $80A696  A9 7E 03     Mx
    STA $09BE                       ; $80A699  8D BE 09     Mx
L_80A69C:
    STZ $0A98                       ; $80A69C  9C 98 0A     Mx
    LDA #$007B                      ; $80A69F  A9 7B 00     Mx
    STA $0704                       ; $80A6A2  8D 04 07     Mx
    LDA #$007B                      ; $80A6A5  A9 7B 00     Mx
    STA $07EC                       ; $80A6A8  8D EC 07     Mx
    LDA #$0356                      ; $80A6AB  A9 56 03     Mx
    STA $0706                       ; $80A6AE  8D 06 07     Mx
    LDA #$039C                      ; $80A6B1  A9 9C 03     Mx
    STA $07EE                       ; $80A6B4  8D EE 07     Mx
    LDA $0BD9                       ; $80A6B7  AD D9 0B     Mx
    STA $0BFB                       ; $80A6BA  8D FB 0B     Mx
    LDA $0BE1                       ; $80A6BD  AD E1 0B     Mx
    STA $0BFD                       ; $80A6C0  8D FD 0B     Mx
    JSL $018000                     ; $80A6C3  22 00 80 01  Mx
    RTL                             ; $80A6C7  6B           Mx
L_80A6C8:
    REP #$10                        ; $80A6C8  C2 10        Mx
    LDA #$3F60                      ; $80A6CA  A9 60 3F     MX
    LDY #$0000                      ; $80A6CD  A0 00 00     MX
    JSR L_809AE9                    ; $80A6D0  20 E9 9A     MX
    LDA $0B4A                       ; $80A6D3  AD 4A 0B     MX
    CMP #$0002                      ; $80A6D6  C9 02 00     MX
    BCS L_80A71D                    ; $80A6D9  B0 42        MX
    LDA $0CD9                       ; $80A6DB  AD D9 0C     MX
    CLC                             ; $80A6DE  18           MX
    ADC #$2400                      ; $80A6DF  69 00 24     MX
    STA $7FC134                     ; $80A6E2  8F 34 C1 7F  MX
    LDA $0CDB                       ; $80A6E6  AD DB 0C     MX
    CLC                             ; $80A6E9  18           MX
    ADC #$2400                      ; $80A6EA  69 00 24     MX
    STA $7FC174                     ; $80A6ED  8F 74 C1 7F  MX
    LDA $0CDD                       ; $80A6F1  AD DD 0C     MX
    CLC                             ; $80A6F4  18           MX
    ADC #$2400                      ; $80A6F5  69 00 24     MX
    STA $7FC136                     ; $80A6F8  8F 36 C1 7F  MX
    LDA $0CDF                       ; $80A6FC  AD DF 0C     MX
    CLC                             ; $80A6FF  18           MX
    ADC #$2400                      ; $80A700  69 00 24     MX
    STA $7FC176                     ; $80A703  8F 76 C1 7F  MX
    LDA $0CE1                       ; $80A707  AD E1 0C     MX
    CLC                             ; $80A70A  18           MX
    ADC #$2400                      ; $80A70B  69 00 24     MX
    STA $7FC138                     ; $80A70E  8F 38 C1 7F  MX
    LDA $0CE3                       ; $80A712  AD E3 0C     MX
    CLC                             ; $80A715  18           MX
    ADC #$2400                      ; $80A716  69 00 24     MX
    STA $7FC178                     ; $80A719  8F 78 C1 7F  MX
L_80A71D:
    SEP #$10                        ; $80A71D  E2 10        MX
    RTS                             ; $80A71F  60           Mx
L_80A720:
    STA $00BA                       ; $80A720  8D BA 00     Mx
    CLC                             ; $80A723  18           Mx
    ADC $0CAF                       ; $80A724  6D AF 0C     Mx
    STA $0CAF                       ; $80A727  8D AF 0C     Mx
    LDA $00BA                       ; $80A72A  AD BA 00     Mx
    BNE L_80A732                    ; $80A72D  D0 03        Mx
    JMP L_80A769                    ; $80A72F  4C 69 A7     Mx
L_80A732:
    LDA $0C1F                       ; $80A732  AD 1F 0C     Mx
    AND #$00FF                      ; $80A735  29 FF 00     Mx
    CMP #$0003                      ; $80A738  C9 03 00     Mx
    BEQ L_80A754                    ; $80A73B  F0 17        Mx
    LDA $00BA                       ; $80A73D  AD BA 00     Mx
    CMP #$0002                      ; $80A740  C9 02 00     Mx
    BEQ L_80A748                    ; $80A743  F0 03        Mx
    INC $1C97                       ; $80A745  EE 97 1C     Mx
L_80A748:
    INC $1C8F                       ; $80A748  EE 8F 1C     Mx
    CLC                             ; $80A74B  18           Mx
    ADC $1C9F                       ; $80A74C  6D 9F 1C     Mx
    STA $1C9F                       ; $80A74F  8D 9F 1C     Mx
    BRA L_80A769                    ; $80A752  80 15        Mx
L_80A754:
    LDA $00BA                       ; $80A754  AD BA 00     Mx
    CMP #$0002                      ; $80A757  C9 02 00     Mx
    BEQ L_80A75F                    ; $80A75A  F0 03        Mx
    INC $1C95                       ; $80A75C  EE 95 1C     Mx
L_80A75F:
    INC $1C8D                       ; $80A75F  EE 8D 1C     Mx
    CLC                             ; $80A762  18           Mx
    ADC $1C9D                       ; $80A763  6D 9D 1C     Mx
    STA $1C9D                       ; $80A766  8D 9D 1C     Mx
L_80A769:
    LDA $0CA9                       ; $80A769  AD A9 0C     Mx
    SEC                             ; $80A76C  38           Mx
    SBC $0CAF                       ; $80A76D  ED AF 0C     Mx
    STA $099A                       ; $80A770  8D 9A 09     Mx
    STA $0A82                       ; $80A773  8D 82 0A     Mx
    LDA $0CAF                       ; $80A776  AD AF 0C     Mx
    SEC                             ; $80A779  38           Mx
    SBC $0CA9                       ; $80A77A  ED A9 0C     Mx
    STA $07CA                       ; $80A77D  8D CA 07     Mx
    STA $08B2                       ; $80A780  8D B2 08     Mx
    JSL $27DC65                     ; $80A783  22 65 DC 27  Mx
    LDA #$0001                      ; $80A787  A9 01 00     Mx
    STA $0C1D                       ; $80A78A  8D 1D 0C     Mx
    LDA $00BA                       ; $80A78D  AD BA 00     Mx
L_80A790:
    CLC                             ; $80A790  18           Mx
    ADC $0CBB,X                     ; $80A791  7D BB 0C     Mx
    CMP #$000A                      ; $80A794  C9 0A 00     Mx
    BCC L_80A7A9                    ; $80A797  90 10        Mx
    SEC                             ; $80A799  38           Mx
    SBC #$000A                      ; $80A79A  E9 0A 00     Mx
    STA $0CBB,X                     ; $80A79D  9D BB 0C     Mx
    LDA #$0001                      ; $80A7A0  A9 01 00     Mx
    DEX                             ; $80A7A3  CA           Mx
    DEX                             ; $80A7A4  CA           Mx
    BPL L_80A790                    ; $80A7A5  10 E9        Mx
    BRA L_80A7AC                    ; $80A7A7  80 03        Mx
L_80A7A9:
    STA $0CBB,X                     ; $80A7A9  9D BB 0C     Mx
L_80A7AC:
    JSR L_80A8B1                    ; $80A7AC  20 B1 A8     Mx
    LDA #$0002                      ; $80A7AF  A9 02 00     Mx
    STA $0CCD                       ; $80A7B2  8D CD 0C     Mx
    LDA #$0004                      ; $80A7B5  A9 04 00     Mx
    STA $0CCF                       ; $80A7B8  8D CF 0C     Mx
    STZ $0CD1                       ; $80A7BB  9C D1 0C     Mx
    LDA #$0001                      ; $80A7BE  A9 01 00     Mx
    STA $0702                       ; $80A7C1  8D 02 07     Mx
    STA $07EA                       ; $80A7C4  8D EA 07     Mx
    STA $08D2                       ; $80A7C7  8D D2 08     Mx
    STA $09BA                       ; $80A7CA  8D BA 09     Mx
    STZ $077A                       ; $80A7CD  9C 7A 07     Mx
    STZ $0862                       ; $80A7D0  9C 62 08     Mx
    STZ $094A                       ; $80A7D3  9C 4A 09     Mx
    STZ $0A32                       ; $80A7D6  9C 32 0A     Mx
    STZ $0778                       ; $80A7D9  9C 78 07     Mx
    STZ $0860                       ; $80A7DC  9C 60 08     Mx
    STZ $0948                       ; $80A7DF  9C 48 09     Mx
    STZ $0A30                       ; $80A7E2  9C 30 0A     Mx
    LDA #$FFFF                      ; $80A7E5  A9 FF FF     Mx
    STA $076E                       ; $80A7E8  8D 6E 07     Mx
    STA $0856                       ; $80A7EB  8D 56 08     Mx
    STA $093E                       ; $80A7EE  8D 3E 09     Mx
    STA $0A26                       ; $80A7F1  8D 26 0A     Mx
    STZ $0780                       ; $80A7F4  9C 80 07     Mx
    STZ $0868                       ; $80A7F7  9C 68 08     Mx
    STZ $0950                       ; $80A7FA  9C 50 09     Mx
    STZ $0A38                       ; $80A7FD  9C 38 0A     Mx
    STZ $07AC                       ; $80A800  9C AC 07     Mx
    STZ $0894                       ; $80A803  9C 94 08     Mx
    STZ $097C                       ; $80A806  9C 7C 09     Mx
    STZ $0A64                       ; $80A809  9C 64 0A     Mx
    LDA #$001E                      ; $80A80C  A9 1E 00     Mx
    STA $0A9A                       ; $80A80F  8D 9A 0A     Mx
    LDA $06F1                       ; $80A812  AD F1 06     Mx
    ORA $07D9                       ; $80A815  0D D9 07     Mx
    AND #$00FF                      ; $80A818  29 FF 00     Mx
    BEQ L_80A833                    ; $80A81B  F0 16        Mx
    LDA $0A98                       ; $80A81D  AD 98 0A     Mx
    BEQ L_80A829                    ; $80A820  F0 07        Mx
    CMP #$0001                      ; $80A822  C9 01 00     Mx
    BEQ L_80A861                    ; $80A825  F0 3A        Mx
    BRA L_80A83B                    ; $80A827  80 12        Mx
L_80A829:
    LDX $06F1                       ; $80A829  AE F1 06     Mx
    BEQ L_80A861                    ; $80A82C  F0 33        Mx
    LDX $07D9                       ; $80A82E  AE D9 07     Mx
    BEQ L_80A83B                    ; $80A831  F0 08        Mx
L_80A833:
    LDA $0758                       ; $80A833  AD 58 07     Mx
    CMP $0840                       ; $80A836  CD 40 08     Mx
    BCC L_80A861                    ; $80A839  90 26        Mx
L_80A83B:
    LDA #$FEEF                      ; $80A83B  A9 EF FE     Mx
    STA $07EC                       ; $80A83E  8D EC 07     Mx
    LDA #$0374                      ; $80A841  A9 74 03     Mx
    STA $07EE                       ; $80A844  8D EE 07     Mx
    LDA #$07D8                      ; $80A847  A9 D8 07     Mx
    STA $00CC                       ; $80A84A  8D CC 00     Mx
    LDA $07D8                       ; $80A84D  AD D8 07     Mx
    STA $0C1B                       ; $80A850  8D 1B 0C     Mx
    LDA #$FF44                      ; $80A853  A9 44 FF     Mx
    STA $0704                       ; $80A856  8D 04 07     Mx
    LDA #$0388                      ; $80A859  A9 88 03     Mx
    STA $0706                       ; $80A85C  8D 06 07     Mx
    BRA L_80A885                    ; $80A85F  80 24        Mx
L_80A861:
    LDA #$FEEF                      ; $80A861  A9 EF FE     Mx
    STA $0704                       ; $80A864  8D 04 07     Mx
    LDA #$0374                      ; $80A867  A9 74 03     Mx
    STA $0706                       ; $80A86A  8D 06 07     Mx
    LDA #$06F0                      ; $80A86D  A9 F0 06     Mx
    STA $00CC                       ; $80A870  8D CC 00     Mx
    LDA $06F0                       ; $80A873  AD F0 06     Mx
    STA $0C1B                       ; $80A876  8D 1B 0C     Mx
    LDA #$FF44                      ; $80A879  A9 44 FF     Mx
    STA $07EC                       ; $80A87C  8D EC 07     Mx
    LDA #$0388                      ; $80A87F  A9 88 03     Mx
    STA $07EE                       ; $80A882  8D EE 07     Mx
L_80A885:
    STZ $0A98                       ; $80A885  9C 98 0A     Mx
    LDA #$FF8F                      ; $80A888  A9 8F FF     Mx
    STA $08D4                       ; $80A88B  8D D4 08     Mx
    LDA #$FF8F                      ; $80A88E  A9 8F FF     Mx
    STA $09BC                       ; $80A891  8D BC 09     Mx
    LDA #$0356                      ; $80A894  A9 56 03     Mx
    STA $08D6                       ; $80A897  8D D6 08     Mx
    LDA #$039C                      ; $80A89A  A9 9C 03     Mx
    STA $09BE                       ; $80A89D  8D BE 09     Mx
    LDA $0BD9                       ; $80A8A0  AD D9 0B     Mx
    STA $0BFB                       ; $80A8A3  8D FB 0B     Mx
    LDA $0BE1                       ; $80A8A6  AD E1 0B     Mx
    STA $0BFD                       ; $80A8A9  8D FD 0B     Mx
    JSL $018000                     ; $80A8AC  22 00 80 01  Mx
    RTL                             ; $80A8B0  6B           Mx
L_80A8B1:
    REP #$10                        ; $80A8B1  C2 10        Mx
    LDA #$3F90                      ; $80A8B3  A9 90 3F     MX
    LDY #$0006                      ; $80A8B6  A0 06 00     MX
    JSR L_809AE9                    ; $80A8B9  20 E9 9A     MX
    LDA $0B4A                       ; $80A8BC  AD 4A 0B     MX
    CMP #$0002                      ; $80A8BF  C9 02 00     MX
    BCS L_80A906                    ; $80A8C2  B0 42        MX
    LDA $0CD9                       ; $80A8C4  AD D9 0C     MX
    CLC                             ; $80A8C7  18           MX
    ADC #$2800                      ; $80A8C8  69 00 28     MX
    STA $7FC1B4                     ; $80A8CB  8F B4 C1 7F  MX
    LDA $0CDB                       ; $80A8CF  AD DB 0C     MX
    CLC                             ; $80A8D2  18           MX
    ADC #$2800                      ; $80A8D3  69 00 28     MX
    STA $7FC1F4                     ; $80A8D6  8F F4 C1 7F  MX
    LDA $0CDD                       ; $80A8DA  AD DD 0C     MX
    CLC                             ; $80A8DD  18           MX
    ADC #$2800                      ; $80A8DE  69 00 28     MX
    STA $7FC1B6                     ; $80A8E1  8F B6 C1 7F  MX
    LDA $0CDF                       ; $80A8E5  AD DF 0C     MX
    CLC                             ; $80A8E8  18           MX
    ADC #$2800                      ; $80A8E9  69 00 28     MX
    STA $7FC1F6                     ; $80A8EC  8F F6 C1 7F  MX
    LDA $0CE1                       ; $80A8F0  AD E1 0C     MX
    CLC                             ; $80A8F3  18           MX
    ADC #$2800                      ; $80A8F4  69 00 28     MX
    STA $7FC1B8                     ; $80A8F7  8F B8 C1 7F  MX
    LDA $0CE3                       ; $80A8FB  AD E3 0C     MX
    CLC                             ; $80A8FE  18           MX
    ADC #$2800                      ; $80A8FF  69 00 28     MX
    STA $7FC1F8                     ; $80A902  8F F8 C1 7F  MX
L_80A906:
    SEP #$10                        ; $80A906  E2 10        MX
    RTS                             ; $80A908  60           Mx
L_80A909:
    LDA $0006                       ; $80A909  AD 06 00     Mx
    AND #$0008                      ; $80A90C  29 08 00     Mx
    BEQ L_80A919                    ; $80A90F  F0 08        Mx
    LDA #$7FFF                      ; $80A911  A9 FF 7F     Mx
    STA $10FC                       ; $80A914  8D FC 10     Mx
    BRA L_80A91F                    ; $80A917  80 06        Mx
L_80A919:
    LDA #$001F                      ; $80A919  A9 1F 00     Mx
    STA $10FC                       ; $80A91C  8D FC 10     Mx
L_80A91F:
    LDA #$7FFF                      ; $80A91F  A9 FF 7F     Mx
    STA $1127                       ; $80A922  8D 27 11     Mx
    STA $1129                       ; $80A925  8D 29 11     Mx
    LDA $0CD3                       ; $80A928  AD D3 0C     Mx
    BNE L_80A940                    ; $80A92B  D0 13        Mx
    LDA $0702                       ; $80A92D  AD 02 07     Mx
    ORA $07EA                       ; $80A930  0D EA 07     Mx
    ORA $08D2                       ; $80A933  0D D2 08     Mx
    ORA $09BA                       ; $80A936  0D BA 09     Mx
    BNE L_80A940                    ; $80A939  D0 05        Mx
    LDA $0B50                       ; $80A93B  AD 50 0B     Mx
    BEQ L_80A95B                    ; $80A93E  F0 1B        Mx
L_80A940:
    LDA $0006                       ; $80A940  AD 06 00     Mx
    AND #$0008                      ; $80A943  29 08 00     Mx
    BEQ L_80A95B                    ; $80A946  F0 13        Mx
    LDA $0C1D                       ; $80A948  AD 1D 0C     Mx
    BEQ L_80A955                    ; $80A94B  F0 08        Mx
    LDA #$001F                      ; $80A94D  A9 1F 00     Mx
    STA $1129                       ; $80A950  8D 29 11     Mx
    BNE L_80A95B                    ; $80A953  D0 06        Mx
L_80A955:
    LDA #$001F                      ; $80A955  A9 1F 00     Mx
    STA $1127                       ; $80A958  8D 27 11     Mx
L_80A95B:
    LDA $0C19                       ; $80A95B  AD 19 0C     Mx
    BNE L_80A974                    ; $80A95E  D0 14        Mx
    LDA $0CD1                       ; $80A960  AD D1 0C     Mx
    BNE L_80A98F                    ; $80A963  D0 2A        Mx
    LDA #$0002                      ; $80A965  A9 02 00     Mx
    STA $0CCD                       ; $80A968  8D CD 0C     Mx
    LDA #$0004                      ; $80A96B  A9 04 00     Mx
    STA $0CCF                       ; $80A96E  8D CF 0C     Mx
    JMP L_80A98F                    ; $80A971  4C 8F A9     Mx
L_80A974:
    DEC                             ; $80A974  3A           Mx
    AND #$0002                      ; $80A975  29 02 00     Mx
    BNE L_80A97B                    ; $80A978  D0 01        Mx
    INC                             ; $80A97A  1A           Mx
L_80A97B:
    CMP $0CD1                       ; $80A97B  CD D1 0C     Mx
    BEQ L_80A98F                    ; $80A97E  F0 0F        Mx
    STA $0CD1                       ; $80A980  8D D1 0C     Mx
    LDA #$0002                      ; $80A983  A9 02 00     Mx
    STA $0CCD                       ; $80A986  8D CD 0C     Mx
    LDA #$0004                      ; $80A989  A9 04 00     Mx
    STA $0CCF                       ; $80A98C  8D CF 0C     Mx
L_80A98F:
    LDA $00BE                       ; $80A98F  AD BE 00     Mx
    CMP #$0003                      ; $80A992  C9 03 00     Mx
    BEQ L_80A99A                    ; $80A995  F0 03        Mx
    JMP L_80AC30                    ; $80A997  4C 30 AC     Mx
L_80A99A:
    LDA $0702                       ; $80A99A  AD 02 07     Mx
    ORA $07EA                       ; $80A99D  0D EA 07     Mx
    ORA $08D2                       ; $80A9A0  0D D2 08     Mx
    ORA $09BA                       ; $80A9A3  0D BA 09     Mx
    BNE L_80A9FC                    ; $80A9A6  D0 54        Mx
    LDA $0BBF                       ; $80A9A8  AD BF 0B     Mx
    CMP #$0006                      ; $80A9AB  C9 06 00     Mx
    BEQ L_80A9FC                    ; $80A9AE  F0 4C        Mx
    LDA $0A9A                       ; $80A9B0  AD 9A 0A     Mx
    BNE L_80A9FC                    ; $80A9B3  D0 47        Mx
    LDA $15FD                       ; $80A9B5  AD FD 15     Mx
    BEQ L_80A9EB                    ; $80A9B8  F0 31        Mx
    LDA $15FF                       ; $80A9BA  AD FF 15     Mx
    BNE L_80A9E8                    ; $80A9BD  D0 29        Mx
    LDA #$0002                      ; $80A9BF  A9 02 00     Mx
    EOR $15FD                       ; $80A9C2  4D FD 15     Mx
    STA $15FD                       ; $80A9C5  8D FD 15     Mx
    BIT #$0002                      ; $80A9C8  89 02 00     Mx
    BEQ L_80A9D6                    ; $80A9CB  F0 09        Mx
    LDA #$0026                      ; $80A9CD  A9 26 00     Mx
    JSL L_BDFDF3                    ; $80A9D0  22 F3 FD BD  Mx
    BRA L_80A9DD                    ; $80A9D4  80 07        Mx
L_80A9D6:
    LDA #$0025                      ; $80A9D6  A9 25 00     Mx
    JSL L_BDFDF3                    ; $80A9D9  22 F3 FD BD  Mx
L_80A9DD:
    LDA $1CE5                       ; $80A9DD  AD E5 1C     Mx
    ASL                             ; $80A9E0  0A           Mx
    TAX                             ; $80A9E1  AA           Mx
    LDA $B1BF,X                     ; $80A9E2  BD BF B1     Mx
    STA $15FF                       ; $80A9E5  8D FF 15     Mx
L_80A9E8:
    DEC $15FF                       ; $80A9E8  CE FF 15     Mx
L_80A9EB:
    LDA $1CE5                       ; $80A9EB  AD E5 1C     Mx
    ASL                             ; $80A9EE  0A           Mx
    TAX                             ; $80A9EF  AA           Mx
    LDA $0CC7                       ; $80A9F0  AD C7 0C     Mx
    SEC                             ; $80A9F3  38           Mx
    SBC $B1B5,X                     ; $80A9F4  FD B5 B1     Mx
    BMI L_80AA02                    ; $80A9F7  30 09        Mx
    STA $0CC7                       ; $80A9F9  8D C7 0C     Mx
L_80A9FC:
    JSR L_80AD7E                    ; $80A9FC  20 7E AD     Mx
    JMP L_80AC30                    ; $80A9FF  4C 30 AC     Mx
L_80AA02:
    CLC                             ; $80AA02  18           Mx
    ADC #$003B                      ; $80AA03  69 3B 00     Mx
    STA $0CC7                       ; $80AA06  8D C7 0C     Mx
    LDA $0CCB                       ; $80AA09  AD CB 0C     Mx
    BNE L_80AA17                    ; $80AA0C  D0 09        Mx
    STZ $0CC7                       ; $80AA0E  9C C7 0C     Mx
    STZ $15FD                       ; $80AA11  9C FD 15     Mx
    JMP L_80AC2D                    ; $80AA14  4C 2D AC     Mx
L_80AA17:
    DEC $0CCB                       ; $80AA17  CE CB 0C     Mx
    LDA $0CCB                       ; $80AA1A  AD CB 0C     Mx
    CMP #$000A                      ; $80AA1D  C9 0A 00     Mx
    BCS L_80AA30                    ; $80AA20  B0 0E        Mx
    LDA $15FD                       ; $80AA22  AD FD 15     Mx
    BNE L_80AA30                    ; $80AA25  D0 09        Mx
    LDA #$0001                      ; $80AA27  A9 01 00     Mx
    STA $15FD                       ; $80AA2A  8D FD 15     Mx
    STZ $15FF                       ; $80AA2D  9C FF 15     Mx
L_80AA30:
    LDA $0CCF                       ; $80AA30  AD CF 0C     Mx
    DEC                             ; $80AA33  3A           Mx
    BMI L_80AA5C                    ; $80AA34  30 26        Mx
    CMP #$0008                      ; $80AA36  C9 08 00     Mx
    BCS L_80AA4F                    ; $80AA39  B0 14        Mx
    LDX $0CCD                       ; $80AA3B  AE CD 0C     Mx
    BNE L_80AA4F                    ; $80AA3E  D0 0F        Mx
    LDX $15FD                       ; $80AA40  AE FD 15     Mx
    BNE L_80AA59                    ; $80AA43  D0 14        Mx
    LDX #$01                        ; $80AA45  A2 01        Mx
    STX $15FD                       ; $80AA47  8E FD 15     Mx
    STZ $15FF                       ; $80AA4A  9C FF 15     Mx
    BRA L_80AA59                    ; $80AA4D  80 0A        Mx
L_80AA4F:
    LDX $0CCB                       ; $80AA4F  AE CB 0C     Mx
    CPX #$0A                        ; $80AA52  E0 0A        Mx
    BCC L_80AA59                    ; $80AA54  90 03        Mx
    STZ $15FD                       ; $80AA56  9C FD 15     Mx
L_80AA59:
    JMP L_80ABFA                    ; $80AA59  4C FA AB     Mx
L_80AA5C:
    LDA #$0009                      ; $80AA5C  A9 09 00     Mx
    STA $0CCF                       ; $80AA5F  8D CF 0C     Mx
    LDA $0CCD                       ; $80AA62  AD CD 0C     Mx
    DEC                             ; $80AA65  3A           Mx
    BMI L_80AA6B                    ; $80AA66  30 03        Mx
    JMP L_80ABF4                    ; $80AA68  4C F4 AB     Mx
L_80AA6B:
    STZ $0CCD                       ; $80AA6B  9C CD 0C     Mx
    STZ $0CCF                       ; $80AA6E  9C CF 0C     Mx
    STZ $15FD                       ; $80AA71  9C FD 15     Mx
    LDA $0C19                       ; $80AA74  AD 19 0C     Mx
    BNE L_80AA8B                    ; $80AA77  D0 12        Mx
    LDA $0C25                       ; $80AA79  AD 25 0C     Mx
    BNE L_80AA8B                    ; $80AA7C  D0 0D        Mx
    LDA $0C2B                       ; $80AA7E  AD 2B 0C     Mx
    BPL L_80AA88                    ; $80AA81  10 05        Mx
    CMP #$FFEC                      ; $80AA83  C9 EC FF     Mx
    BCC L_80AA8B                    ; $80AA86  90 03        Mx
L_80AA88:
    JMP L_80ABFD                    ; $80AA88  4C FD AB     Mx
L_80AA8B:
    STZ $0C3B                       ; $80AA8B  9C 3B 0C     Mx
    LDA #$0007                      ; $80AA8E  A9 07 00     Mx
    JSL L_BDFDF3                    ; $80AA91  22 F3 FD BD  Mx
    LDA #$0005                      ; $80AA95  A9 05 00     Mx
    STA $1609                       ; $80AA98  8D 09 16     Mx
    LDA #$000A                      ; $80AA9B  A9 0A 00     Mx
    STA $160B                       ; $80AA9E  8D 0B 16     Mx
    LDA #$00B4                      ; $80AAA1  A9 B4 00     Mx
    STA $0B50                       ; $80AAA4  8D 50 0B     Mx
    JSR L_80B1A6                    ; $80AAA7  20 A6 B1     Mx
    LDA #$0000                      ; $80AAAA  A9 00 00     Mx
    STA $00A6                       ; $80AAAD  8D A6 00     Mx
    LDA #$0400                      ; $80AAB0  A9 00 04     Mx
    STA $00A4                       ; $80AAB3  8D A4 00     Mx
    LDA #$28C8                      ; $80AAB6  A9 C8 28     Mx
    STA $00D1                       ; $80AAB9  8D D1 00     Mx
    LDA #$C8CC                      ; $80AABC  A9 CC C8     Mx
    REP #$10                        ; $80AABF  C2 10        Mx
    LDX #$02D6                      ; $80AAC1  A2 D6 02     MX
    JSR L_80A4D9                    ; $80AAC4  20 D9 A4     MX
    LDX $0109                       ; $80AAC7  AE 09 01     MX
    LDA #$6008                      ; $80AACA  A9 08 60     MX
    STA $7E2002,X                   ; $80AACD  9F 02 20 7E  MX
    LDA #$0250                      ; $80AAD1  A9 50 02     MX
    STA $7E2000,X                   ; $80AAD4  9F 00 20 7E  MX
    LDA #$1801                      ; $80AAD8  A9 01 18     MX
    STA $7E2004,X                   ; $80AADB  9F 04 20 7E  MX
    LDA #$8028                      ; $80AADF  A9 28 80     MX
    STA $7E2008,X                   ; $80AAE2  9F 08 20 7E  MX
    LDA #$C920                      ; $80AAE6  A9 20 C9     MX
    STA $7E2006,X                   ; $80AAE9  9F 06 20 7E  MX
    TXA                             ; $80AAED  8A           MX
    CLC                             ; $80AAEE  18           MX
    ADC #$000A                      ; $80AAEF  69 0A 00     MX
    TAX                             ; $80AAF2  AA           MX
    LDA #$5560                      ; $80AAF3  A9 60 55     MX
    STA $7E2002,X                   ; $80AAF6  9F 02 20 7E  MX
    LDA #$0100                      ; $80AAFA  A9 00 01     MX
    STA $7E2000,X                   ; $80AAFD  9F 00 20 7E  MX
    LDA #$1801                      ; $80AB01  A9 01 18     MX
    STA $7E2004,X                   ; $80AB04  9F 04 20 7E  MX
    LDA #$807F                      ; $80AB08  A9 7F 80     MX
    STA $7E2008,X                   ; $80AB0B  9F 08 20 7E  MX
    LDA #$C2C0                      ; $80AB0F  A9 C0 C2     MX
    STA $7E2006,X                   ; $80AB12  9F 06 20 7E  MX
    TXA                             ; $80AB16  8A           MX
    CLC                             ; $80AB17  18           MX
    ADC #$000A                      ; $80AB18  69 0A 00     MX
    TAX                             ; $80AB1B  AA           MX
    STA $0109                       ; $80AB1C  8D 09 01     MX
    TAX                             ; $80AB1F  AA           MX
    AND #$0000                      ; $80AB20  29 00 00     MX
    STA $7E2000,X                   ; $80AB23  9F 00 20 7E  MX
    SEP #$10                        ; $80AB27  E2 10        MX
    LDA $0C19                       ; $80AB29  AD 19 0C     Mx
    BEQ L_80AB94                    ; $80AB2C  F0 66        Mx
    LDA $0BD9                       ; $80AB2E  AD D9 0B     Mx
    CLC                             ; $80AB31  18           Mx
    ADC $0BEF                       ; $80AB32  6D EF 0B     Mx
    LDY #$54                        ; $80AB35  A0 54        Mx
    SEC                             ; $80AB37  38           Mx
    SBC ($CC),Y                     ; $80AB38  F1 CC        Mx
    BPL L_80AB46                    ; $80AB3A  10 0A        Mx
    CMP #$FEF4                      ; $80AB3C  C9 F4 FE     Mx
    BCS L_80AB4E                    ; $80AB3F  B0 0D        Mx
    LDA #$FEF4                      ; $80AB41  A9 F4 FE     Mx
    BRA L_80AB4E                    ; $80AB44  80 08        Mx
L_80AB46:
    CMP #$010C                      ; $80AB46  C9 0C 01     Mx
    BCC L_80AB4E                    ; $80AB49  90 03        Mx
    LDA #$010C                      ; $80AB4B  A9 0C 01     Mx
L_80AB4E:
    STA $0BD9                       ; $80AB4E  8D D9 0B     Mx
    LDA $0BDD                       ; $80AB51  AD DD 0B     Mx
    CLC                             ; $80AB54  18           Mx
    ADC $0BF1                       ; $80AB55  6D F1 0B     Mx
    STA $0BDD                       ; $80AB58  8D DD 0B     Mx
    LDA $0BF3                       ; $80AB5B  AD F3 0B     Mx
    CMP #$0310                      ; $80AB5E  C9 10 03     Mx
    BCC L_80AB6D                    ; $80AB61  90 0A        Mx
    CMP #$03F0                      ; $80AB63  C9 F0 03     Mx
    BCC L_80AB70                    ; $80AB66  90 08        Mx
    LDA #$03F0                      ; $80AB68  A9 F0 03     Mx
    BRA L_80AB70                    ; $80AB6B  80 03        Mx
L_80AB6D:
    LDA #$0310                      ; $80AB6D  A9 10 03     Mx
L_80AB70:
    STA $0BE1                       ; $80AB70  8D E1 0B     Mx
    STA $0BF3                       ; $80AB73  8D F3 0B     Mx
    STZ $0C19                       ; $80AB76  9C 19 0C     Mx
    STZ $00CC                       ; $80AB79  9C CC 00     Mx
    STZ $0C2B                       ; $80AB7C  9C 2B 0C     Mx
    STZ $0BEF                       ; $80AB7F  9C EF 0B     Mx
    STZ $0BF1                       ; $80AB82  9C F1 0B     Mx
    STZ $0C11                       ; $80AB85  9C 11 0C     Mx
    LDA #$0002                      ; $80AB88  A9 02 00     Mx
    STA $0BBF                       ; $80AB8B  8D BF 0B     Mx
    LDA #$0002                      ; $80AB8E  A9 02 00     Mx
    STA $0BC1                       ; $80AB91  8D C1 0B     Mx
L_80AB94:
    STZ $0BE3                       ; $80AB94  9C E3 0B     Mx
    STZ $0BE5                       ; $80AB97  9C E5 0B     Mx
    STZ $0BEB                       ; $80AB9A  9C EB 0B     Mx
    STZ $0BED                       ; $80AB9D  9C ED 0B     Mx
    STZ $0BE7                       ; $80ABA0  9C E7 0B     Mx
    STZ $0BE9                       ; $80ABA3  9C E9 0B     Mx
    LDA $0CD1                       ; $80ABA6  AD D1 0C     Mx
    CMP #$0001                      ; $80ABA9  C9 01 00     Mx
    BEQ L_80ABB1                    ; $80ABAC  F0 03        Mx
    JMP L_80ABBD                    ; $80ABAE  4C BD AB     Mx
L_80ABB1:
    LDA #$0000                      ; $80ABB1  A9 00 00     Mx
    LDX #$04                        ; $80ABB4  A2 04        Mx
    JSL $00A53A                     ; $80ABB6  22 3A A5 00  Mx
    JMP L_80ABC6                    ; $80ABBA  4C C6 AB     Mx
L_80ABBD:
    LDA #$0000                      ; $80ABBD  A9 00 00     Mx
    LDX #$04                        ; $80ABC0  A2 04        Mx
    JSL $00A720                     ; $80ABC2  22 20 A7 00  Mx
L_80ABC6:
    LDY #$2E                        ; $80ABC6  A0 2E        Mx
    LDA ($CC),Y                     ; $80ABC8  B1 CC        Mx
    STA $0BD9                       ; $80ABCA  8D D9 0B     Mx
    LDY #$36                        ; $80ABCD  A0 36        Mx
    LDA ($CC),Y                     ; $80ABCF  B1 CC        Mx
    STA $0BE1                       ; $80ABD1  8D E1 0B     Mx
    LDY #$32                        ; $80ABD4  A0 32        Mx
    LDA ($CC),Y                     ; $80ABD6  B1 CC        Mx
    CLC                             ; $80ABD8  18           Mx
    ADC #$0019                      ; $80ABD9  69 19 00     Mx
    STA $0BDD                       ; $80ABDC  8D DD 0B     Mx
    STZ $0BE5                       ; $80ABDF  9C E5 0B     Mx
    STZ $0BED                       ; $80ABE2  9C ED 0B     Mx
    STZ $0BE9                       ; $80ABE5  9C E9 0B     Mx
    STZ $0BE3                       ; $80ABE8  9C E3 0B     Mx
    STZ $0BEB                       ; $80ABEB  9C EB 0B     Mx
    STZ $0BE7                       ; $80ABEE  9C E7 0B     Mx
    JMP L_80ABFD                    ; $80ABF1  4C FD AB     Mx
L_80ABF4:
    STA $0CCD                       ; $80ABF4  8D CD 0C     Mx
    JMP L_80ABFD                    ; $80ABF7  4C FD AB     Mx
L_80ABFA:
    STA $0CCF                       ; $80ABFA  8D CF 0C     Mx
L_80ABFD:
    LDA $0CC5                       ; $80ABFD  AD C5 0C     Mx
    DEC                             ; $80AC00  3A           Mx
    BPL L_80AC2A                    ; $80AC01  10 27        Mx
    LDA #$0009                      ; $80AC03  A9 09 00     Mx
    STA $0CC5                       ; $80AC06  8D C5 0C     Mx
    LDA $0CC3                       ; $80AC09  AD C3 0C     Mx
    DEC                             ; $80AC0C  3A           Mx
    BPL L_80AC24                    ; $80AC0D  10 15        Mx
    LDA #$0005                      ; $80AC0F  A9 05 00     Mx
    STA $0CC3                       ; $80AC12  8D C3 0C     Mx
    LDA $0CC1                       ; $80AC15  AD C1 0C     Mx
    DEC                             ; $80AC18  3A           Mx
    BPL L_80AC1E                    ; $80AC19  10 03        Mx
    LDA #$0009                      ; $80AC1B  A9 09 00     Mx
L_80AC1E:
    STA $0CC1                       ; $80AC1E  8D C1 0C     Mx
    JMP L_80AC2D                    ; $80AC21  4C 2D AC     Mx
L_80AC24:
    STA $0CC3                       ; $80AC24  8D C3 0C     Mx
    JMP L_80AC2D                    ; $80AC27  4C 2D AC     Mx
L_80AC2A:
    STA $0CC5                       ; $80AC2A  8D C5 0C     Mx
L_80AC2D:
    JSR L_80AD7E                    ; $80AC2D  20 7E AD     Mx
L_80AC30:
    SEP #$20                        ; $80AC30  E2 20        Mx
    REP #$10                        ; $80AC32  C2 10        mx
    LDA $0B50                       ; $80AC34  AD 50 0B     mX
    BNE L_80AC3E                    ; $80AC37  D0 05        mX
    LDA $0CD3                       ; $80AC39  AD D3 0C     mX
    BNE L_80AC51                    ; $80AC3C  D0 13        mX
L_80AC3E:
    LDA $0CCD                       ; $80AC3E  AD CD 0C     mX
    BEQ L_80AC4C                    ; $80AC41  F0 09        mX
    CMP #$01                        ; $80AC43  C9 01        mX
    BNE L_80AC51                    ; $80AC45  D0 0A        mX
    LDA $0CCF                       ; $80AC47  AD CF 0C     mX
    BNE L_80AC51                    ; $80AC4A  D0 05        mX
L_80AC4C:
    JSR L_80AE7E                    ; $80AC4C  20 7E AE     mX
    BRA L_80AC6C                    ; $80AC4F  80 1B        mX
L_80AC51:
    LDA $031D                       ; $80AC51  AD 1D 03     mX
    CMP #$E0                        ; $80AC54  C9 E0        mX
    BEQ L_80AC6C                    ; $80AC56  F0 14        mX
    LDA #$E0                        ; $80AC58  A9 E0        mX
    STA $031D                       ; $80AC5A  8D 1D 03     mX
    STA $0321                       ; $80AC5D  8D 21 03     mX
    STA $0325                       ; $80AC60  8D 25 03     mX
    STA $0329                       ; $80AC63  8D 29 03     mX
    STA $032D                       ; $80AC66  8D 2D 03     mX
    STA $0331                       ; $80AC69  8D 31 03     mX
L_80AC6C:
    LDA $0AC6                       ; $80AC6C  AD C6 0A     mX
    BEQ L_80AC81                    ; $80AC6F  F0 10        mX
    LDA $0CD3                       ; $80AC71  AD D3 0C     mX
    BNE L_80AC81                    ; $80AC74  D0 0B        mX
    LDA $1131                       ; $80AC76  AD 31 11     mX
    ORA $1133                       ; $80AC79  0D 33 11     mX
    ORA $1135                       ; $80AC7C  0D 35 11     mX
    BNE L_80AC89                    ; $80AC7F  D0 08        mX
L_80AC81:
    LDA $0CC1                       ; $80AC81  AD C1 0C     mX
    BEQ L_80ACD4                    ; $80AC84  F0 4E        mX
    JMP L_80AD0F                    ; $80AC86  4C 0F AD     mX
L_80AC89:
    LDA $0301                       ; $80AC89  AD 01 03     mX
    CMP #$E0                        ; $80AC8C  C9 E0        mX
    BNE L_80ACA9                    ; $80AC8E  D0 19        mX
    LDA #$C6                        ; $80AC90  A9 C6        mX
    STA $0301                       ; $80AC92  8D 01 03     mX
    STA $0305                       ; $80AC95  8D 05 03     mX
    STA $0309                       ; $80AC98  8D 09 03     mX
    LDA #$C8                        ; $80AC9B  A9 C8        mX
    STA $030D                       ; $80AC9D  8D 0D 03     mX
    STA $0311                       ; $80ACA0  8D 11 03     mX
    STA $0315                       ; $80ACA3  8D 15 03     mX
    STA $0319                       ; $80ACA6  8D 19 03     mX
L_80ACA9:
    LDA $1131                       ; $80ACA9  AD 31 11     mX
    BEQ L_80ACB9                    ; $80ACAC  F0 0B        mX
    STZ $1131                       ; $80ACAE  9C 31 11     mX
    LDA #$09                        ; $80ACB1  A9 09        mX
    STA $1133                       ; $80ACB3  8D 33 11     mX
    STA $1135                       ; $80ACB6  8D 35 11     mX
L_80ACB9:
    LDA #$0B                        ; $80ACB9  A9 0B        mX
    STA $030E                       ; $80ACBB  8D 0E 03     mX
    LDA #$0C                        ; $80ACBE  A9 0C        mX
    STA $0312                       ; $80ACC0  8D 12 03     mX
    LDA $1133                       ; $80ACC3  AD 33 11     mX
    INC                             ; $80ACC6  1A           mX
    STA $0316                       ; $80ACC7  8D 16 03     mX
    LDA $1135                       ; $80ACCA  AD 35 11     mX
    INC                             ; $80ACCD  1A           mX
    STA $031A                       ; $80ACCE  8D 1A 03     mX
    SEP #$10                        ; $80ACD1  E2 10        mX
    RTS                             ; $80ACD3  60           mx
L_80ACD4:
    LDA $0301                       ; $80ACD4  AD 01 03     mX
    CMP #$E0                        ; $80ACD7  C9 E0        mX
    BNE L_80ACF4                    ; $80ACD9  D0 19        mX
    LDA #$C6                        ; $80ACDB  A9 C6        mX
    STA $0301                       ; $80ACDD  8D 01 03     mX
    STA $0305                       ; $80ACE0  8D 05 03     mX
    STA $0309                       ; $80ACE3  8D 09 03     mX
    LDA #$C8                        ; $80ACE6  A9 C8        mX
    STA $030D                       ; $80ACE8  8D 0D 03     mX
    STA $0311                       ; $80ACEB  8D 11 03     mX
    STA $0315                       ; $80ACEE  8D 15 03     mX
    STA $0319                       ; $80ACF1  8D 19 03     mX
L_80ACF4:
    LDA $0CC3                       ; $80ACF4  AD C3 0C     mX
    INC                             ; $80ACF7  1A           mX
    STA $030E                       ; $80ACF8  8D 0E 03     mX
    LDA $0CC5                       ; $80ACFB  AD C5 0C     mX
    INC                             ; $80ACFE  1A           mX
    STA $0312                       ; $80ACFF  8D 12 03     mX
    STZ $0316                       ; $80AD02  9C 16 03     mX
    LDA $0CC9                       ; $80AD05  AD C9 0C     mX
    INC                             ; $80AD08  1A           mX
    STA $031A                       ; $80AD09  8D 1A 03     mX
    SEP #$10                        ; $80AD0C  E2 10        mX
    RTS                             ; $80AD0E  60           mx
L_80AD0F:
    LDA $0B50                       ; $80AD0F  AD 50 0B     mX
    BNE L_80AD19                    ; $80AD12  D0 05        mX
    LDA $0CD3                       ; $80AD14  AD D3 0C     mX
    BNE L_80AD3A                    ; $80AD17  D0 21        mX
L_80AD19:
    LDA $0301                       ; $80AD19  AD 01 03     mX
    CMP #$E0                        ; $80AD1C  C9 E0        mX
    BEQ L_80AD37                    ; $80AD1E  F0 17        mX
    LDA #$E0                        ; $80AD20  A9 E0        mX
    STA $0301                       ; $80AD22  8D 01 03     mX
    STA $0305                       ; $80AD25  8D 05 03     mX
    STA $0309                       ; $80AD28  8D 09 03     mX
    STA $030D                       ; $80AD2B  8D 0D 03     mX
    STA $0311                       ; $80AD2E  8D 11 03     mX
    STA $0315                       ; $80AD31  8D 15 03     mX
    STA $0319                       ; $80AD34  8D 19 03     mX
L_80AD37:
    JMP L_80AD79                    ; $80AD37  4C 79 AD     mX
L_80AD3A:
    LDA $0B4A                       ; $80AD3A  AD 4A 0B     mX
    CMP #$02                        ; $80AD3D  C9 02        mX
    BCS L_80AD61                    ; $80AD3F  B0 20        mX
    LDA $0301                       ; $80AD41  AD 01 03     mX
    CMP #$E0                        ; $80AD44  C9 E0        mX
    BNE L_80AD61                    ; $80AD46  D0 19        mX
    LDA #$C6                        ; $80AD48  A9 C6        mX
    STA $0301                       ; $80AD4A  8D 01 03     mX
    STA $0305                       ; $80AD4D  8D 05 03     mX
    STA $0309                       ; $80AD50  8D 09 03     mX
    LDA #$C8                        ; $80AD53  A9 C8        mX
    STA $030D                       ; $80AD55  8D 0D 03     mX
    STA $0311                       ; $80AD58  8D 11 03     mX
    STA $0315                       ; $80AD5B  8D 15 03     mX
    STA $0319                       ; $80AD5E  8D 19 03     mX
L_80AD61:
    LDA $0CC1                       ; $80AD61  AD C1 0C     mX
    INC                             ; $80AD64  1A           mX
    STA $030E                       ; $80AD65  8D 0E 03     mX
    STZ $0312                       ; $80AD68  9C 12 03     mX
    LDA $0CC3                       ; $80AD6B  AD C3 0C     mX
    INC                             ; $80AD6E  1A           mX
    STA $0316                       ; $80AD6F  8D 16 03     mX
    LDA $0CC5                       ; $80AD72  AD C5 0C     mX
    INC                             ; $80AD75  1A           mX
    STA $031A                       ; $80AD76  8D 1A 03     mX
L_80AD79:
    REP #$20                        ; $80AD79  C2 20        mX
    SEP #$10                        ; $80AD7B  E2 10        MX
    RTS                             ; $80AD7D  60           Mx
L_80AD7E:
    LDX #$00                        ; $80AD7E  A2 00        Mx
    LDA $0CC7                       ; $80AD80  AD C7 0C     Mx
    BEQ L_80AD8F                    ; $80AD83  F0 0A        Mx
L_80AD85:
    SEC                             ; $80AD85  38           Mx
    SBC #$0006                      ; $80AD86  E9 06 00     Mx
    BMI L_80AD8F                    ; $80AD89  30 04        Mx
    INX                             ; $80AD8B  E8           Mx
    JMP L_80AD85                    ; $80AD8C  4C 85 AD     Mx
L_80AD8F:
    TXA                             ; $80AD8F  8A           Mx
    AND #$00FF                      ; $80AD90  29 FF 00     Mx
    STA $0CC9                       ; $80AD93  8D C9 0C     Mx
    REP #$10                        ; $80AD96  C2 10        Mx
    LDA #$3FC0                      ; $80AD98  A9 C0 3F     MX
    LDY #$0000                      ; $80AD9B  A0 00 00     MX
    LDX $0109                       ; $80AD9E  AE 09 01     MX
    STA $7E2002,X                   ; $80ADA1  9F 02 20 7E  MX
    CLC                             ; $80ADA5  18           MX
    ADC #$0010                      ; $80ADA6  69 10 00     MX
    STA $7E200C,X                   ; $80ADA9  9F 0C 20 7E  MX
    CLC                             ; $80ADAD  18           MX
    ADC #$0010                      ; $80ADAE  69 10 00     MX
    STA $7E2016,X                   ; $80ADB1  9F 16 20 7E  MX
    CLC                             ; $80ADB5  18           MX
    ADC #$0010                      ; $80ADB6  69 10 00     MX
    STA $7E2020,X                   ; $80ADB9  9F 20 20 7E  MX
    LDA #$0020                      ; $80ADBD  A9 20 00     MX
    STA $7E2000,X                   ; $80ADC0  9F 00 20 7E  MX
    STA $7E200A,X                   ; $80ADC4  9F 0A 20 7E  MX
    STA $7E2014,X                   ; $80ADC8  9F 14 20 7E  MX
    STA $7E201E,X                   ; $80ADCC  9F 1E 20 7E  MX
    LDA $0CC1,Y                     ; $80ADD0  B9 C1 0C     MX
    BEQ L_80AE0D                    ; $80ADD3  F0 38        MX
    ASL                             ; $80ADD5  0A           MX
    TAX                             ; $80ADD6  AA           MX
    LDA $83E7DC,X                   ; $80ADD7  BF DC E7 83  MX
    LDX $0109                       ; $80ADDB  AE 09 01     MX
    STA $7E2006,X                   ; $80ADDE  9F 06 20 7E  MX
    LDA $83E7F0                     ; $80ADE2  AF F0 E7 83  MX
    STA $7E2010,X                   ; $80ADE6  9F 10 20 7E  MX
    LDA $0CC3,Y                     ; $80ADEA  B9 C3 0C     MX
    ASL                             ; $80ADED  0A           MX
    TAX                             ; $80ADEE  AA           MX
    LDA $83E7DC,X                   ; $80ADEF  BF DC E7 83  MX
    LDX $0109                       ; $80ADF3  AE 09 01     MX
    STA $7E201A,X                   ; $80ADF6  9F 1A 20 7E  MX
    LDA $0CC5,Y                     ; $80ADFA  B9 C5 0C     MX
    ASL                             ; $80ADFD  0A           MX
    TAX                             ; $80ADFE  AA           MX
    LDA $83E7DC,X                   ; $80ADFF  BF DC E7 83  MX
    LDX $0109                       ; $80AE03  AE 09 01     MX
    STA $7E2024,X                   ; $80AE06  9F 24 20 7E  MX
    JMP L_80AE45                    ; $80AE0A  4C 45 AE     MX
L_80AE0D:
    LDA $0CC3,Y                     ; $80AE0D  B9 C3 0C     MX
    ASL                             ; $80AE10  0A           MX
    TAX                             ; $80AE11  AA           MX
    LDA $83E7DC,X                   ; $80AE12  BF DC E7 83  MX
    LDX $0109                       ; $80AE16  AE 09 01     MX
    STA $7E2006,X                   ; $80AE19  9F 06 20 7E  MX
    LDA $0CC5,Y                     ; $80AE1D  B9 C5 0C     MX
    ASL                             ; $80AE20  0A           MX
    TAX                             ; $80AE21  AA           MX
    LDA $83E7DC,X                   ; $80AE22  BF DC E7 83  MX
    LDX $0109                       ; $80AE26  AE 09 01     MX
    STA $7E2010,X                   ; $80AE29  9F 10 20 7E  MX
    LDA $83E7F0                     ; $80AE2D  AF F0 E7 83  MX
    STA $7E201A,X                   ; $80AE31  9F 1A 20 7E  MX
    LDA $0CC9                       ; $80AE35  AD C9 0C     MX
    ASL                             ; $80AE38  0A           MX
    TAX                             ; $80AE39  AA           MX
    LDA $83E7DC,X                   ; $80AE3A  BF DC E7 83  MX
    LDX $0109                       ; $80AE3E  AE 09 01     MX
    STA $7E2024,X                   ; $80AE41  9F 24 20 7E  MX
L_80AE45:
    LDA #$1801                      ; $80AE45  A9 01 18     MX
    STA $7E2004,X                   ; $80AE48  9F 04 20 7E  MX
    STA $7E200E,X                   ; $80AE4C  9F 0E 20 7E  MX
    STA $7E2018,X                   ; $80AE50  9F 18 20 7E  MX
    STA $7E2022,X                   ; $80AE54  9F 22 20 7E  MX
    LDA #$8003                      ; $80AE58  A9 03 80     MX
    STA $7E2008,X                   ; $80AE5B  9F 08 20 7E  MX
    STA $7E2012,X                   ; $80AE5F  9F 12 20 7E  MX
    STA $7E201C,X                   ; $80AE63  9F 1C 20 7E  MX
    STA $7E2026,X                   ; $80AE67  9F 26 20 7E  MX
    TXA                             ; $80AE6B  8A           MX
    CLC                             ; $80AE6C  18           MX
    ADC #$0028                      ; $80AE6D  69 28 00     MX
    STA $0109                       ; $80AE70  8D 09 01     MX
    TAX                             ; $80AE73  AA           MX
    AND #$0000                      ; $80AE74  29 00 00     MX
    STA $7E2000,X                   ; $80AE77  9F 00 20 7E  MX
    SEP #$10                        ; $80AE7B  E2 10        MX
    RTS                             ; $80AE7D  60           Mx
L_80AE7E:
    LDA $031D                       ; $80AE7E  AD 1D 03     mX
    CMP #$E0                        ; $80AE81  C9 E0        mX
    BNE L_80AE9D                    ; $80AE83  D0 18        mX
    LDA #$B6                        ; $80AE85  A9 B6        mX
    STA $031D                       ; $80AE87  8D 1D 03     mX
    STA $0321                       ; $80AE8A  8D 21 03     mX
    LDA #$C6                        ; $80AE8D  A9 C6        mX
    STA $0325                       ; $80AE8F  8D 25 03     mX
    STA $0329                       ; $80AE92  8D 29 03     mX
    LDA #$C8                        ; $80AE95  A9 C8        mX
    STA $032D                       ; $80AE97  8D 2D 03     mX
    STA $0331                       ; $80AE9A  8D 31 03     mX
L_80AE9D:
    LDA $0CCD                       ; $80AE9D  AD CD 0C     mX
    INC                             ; $80AEA0  1A           mX
    STA $032E                       ; $80AEA1  8D 2E 03     mX
    LDA $0CCF                       ; $80AEA4  AD CF 0C     mX
    INC                             ; $80AEA7  1A           mX
    STA $0332                       ; $80AEA8  8D 32 03     mX
    LDA $0CD1                       ; $80AEAB  AD D1 0C     mX
    CMP #$01                        ; $80AEAE  C9 01        mX
    BEQ L_80AEB5                    ; $80AEB0  F0 03        mX
    JMP L_80AED7                    ; $80AEB2  4C D7 AE     mX
L_80AEB5:
    LDA #$1A                        ; $80AEB5  A9 1A        mX
    CMP $031C                       ; $80AEB7  CD 1C 03     mX
    BEQ L_80AED6                    ; $80AEBA  F0 1A        mX
    LDA #$1A                        ; $80AEBC  A9 1A        mX
    STA $031C                       ; $80AEBE  8D 1C 03     mX
    STA $0324                       ; $80AEC1  8D 24 03     mX
    LDA #$2A                        ; $80AEC4  A9 2A        mX
    STA $0320                       ; $80AEC6  8D 20 03     mX
    STA $0328                       ; $80AEC9  8D 28 03     mX
    LDA #$1C                        ; $80AECC  A9 1C        mX
    STA $032C                       ; $80AECE  8D 2C 03     mX
    LDA #$24                        ; $80AED1  A9 24        mX
    STA $0330                       ; $80AED3  8D 30 03     mX
L_80AED6:
    RTS                             ; $80AED6  60           mX
L_80AED7:
    LDA #$DA                        ; $80AED7  A9 DA        mX
    CMP $031C                       ; $80AED9  CD 1C 03     mX
    BEQ L_80AEF8                    ; $80AEDC  F0 1A        mX
    LDA #$DA                        ; $80AEDE  A9 DA        mX
    STA $031C                       ; $80AEE0  8D 1C 03     mX
    STA $0324                       ; $80AEE3  8D 24 03     mX
    LDA #$EA                        ; $80AEE6  A9 EA        mX
    STA $0320                       ; $80AEE8  8D 20 03     mX
    STA $0328                       ; $80AEEB  8D 28 03     mX
    LDA #$DC                        ; $80AEEE  A9 DC        mX
    STA $032C                       ; $80AEF0  8D 2C 03     mX
    LDA #$E4                        ; $80AEF3  A9 E4        mX
    STA $0330                       ; $80AEF5  8D 30 03     mX
L_80AEF8:
    RTS                             ; $80AEF8  60           mX
L_80AEF9:
    JSR L_80AEFD                    ; $80AEF9  20 FD AE     Mx
    RTL                             ; $80AEFC  6B           Mx
L_80AEFD:
    STZ $00D6                       ; $80AEFD  9C D6 00     MX
    LDA $00D0                       ; $80AF00  AD D0 00     MX
    SEC                             ; $80AF03  38           MX
    SBC $00E2                       ; $80AF04  ED E2 00     MX
    STA $00D0                       ; $80AF07  8D D0 00     MX
    BPL L_80AF35                    ; $80AF0A  10 29        MX
    EOR #$FFFF                      ; $80AF0C  49 FF FF     MX
    CLC                             ; $80AF0F  18           MX
    ADC #$0001                      ; $80AF10  69 01 00     MX
    STA $00D0                       ; $80AF13  8D D0 00     MX
    LDA $00D3                       ; $80AF16  AD D3 00     MX
    SEC                             ; $80AF19  38           MX
    SBC $00E5                       ; $80AF1A  ED E5 00     MX
    STA $00D3                       ; $80AF1D  8D D3 00     MX
    BPL L_80AF75                    ; $80AF20  10 53        MX
    EOR #$FFFF                      ; $80AF22  49 FF FF     MX
    CLC                             ; $80AF25  18           MX
    ADC #$0001                      ; $80AF26  69 01 00     MX
    STA $00D3                       ; $80AF29  8D D3 00     MX
    LDA #$0008                      ; $80AF2C  A9 08 00     MX
    STA $00D6                       ; $80AF2F  8D D6 00     MX
    JMP L_80AF5D                    ; $80AF32  4C 5D AF     MX
L_80AF35:
    LDA #$0010                      ; $80AF35  A9 10 00     MX
    STA $00D6                       ; $80AF38  8D D6 00     MX
    LDA $00D3                       ; $80AF3B  AD D3 00     MX
    SEC                             ; $80AF3E  38           MX
    SBC $00E5                       ; $80AF3F  ED E5 00     MX
    STA $00B2                       ; $80AF42  8D B2 00     MX
    BPL L_80AF54                    ; $80AF45  10 0D        MX
    EOR #$FFFF                      ; $80AF47  49 FF FF     MX
    CLC                             ; $80AF4A  18           MX
    ADC #$0001                      ; $80AF4B  69 01 00     MX
    STA $00D3                       ; $80AF4E  8D D3 00     MX
    JMP L_80AF6F                    ; $80AF51  4C 6F AF     MX
L_80AF54:
    STA $00D3                       ; $80AF54  8D D3 00     MX
    LDA #$0018                      ; $80AF57  A9 18 00     MX
    STA $00D6                       ; $80AF5A  8D D6 00     MX
L_80AF5D:
    LDA $00D0                       ; $80AF5D  AD D0 00     MX
    STA $00BA                       ; $80AF60  8D BA 00     MX
    LDA $00D3                       ; $80AF63  AD D3 00     MX
    STA $00D0                       ; $80AF66  8D D0 00     MX
    LDA $00BA                       ; $80AF69  AD BA 00     MX
    STA $00D3                       ; $80AF6C  8D D3 00     MX
L_80AF6F:
    ASL $00D6                       ; $80AF6F  0E D6 00     MX
    ASL $00D6                       ; $80AF72  0E D6 00     MX
L_80AF75:
    STZ $00B7                       ; $80AF75  9C B7 00     MX
    LDA $00D0                       ; $80AF78  AD D0 00     MX
    CMP $00D3                       ; $80AF7B  CD D3 00     MX
    BCS L_80AFB3                    ; $80AF7E  B0 33        MX
    LDA $00D0                       ; $80AF80  AD D0 00     MX
    STA $00E8                       ; $80AF83  8D E8 00     MX
    LDA $00D3                       ; $80AF86  AD D3 00     MX
    STA $00EA                       ; $80AF89  8D EA 00     MX
    LDA $00D3                       ; $80AF8C  AD D3 00     MX
    LSR                             ; $80AF8F  4A           MX
    LSR                             ; $80AF90  4A           MX
    LSR                             ; $80AF91  4A           MX
    LSR                             ; $80AF92  4A           MX
    STA $00D3                       ; $80AF93  8D D3 00     MX
    BNE L_80AFA8                    ; $80AF96  D0 10        MX
    JMP L_80AFED                    ; $80AF98  4C ED AF     MX
L_80AF9B:
    INC $00D6                       ; $80AF9B  EE D6 00     MX
    LDA $00B7                       ; $80AF9E  AD B7 00     MX
    CLC                             ; $80AFA1  18           MX
    ADC $00D3                       ; $80AFA2  6D D3 00     MX
    STA $00B7                       ; $80AFA5  8D B7 00     MX
L_80AFA8:
    LDA $00B7                       ; $80AFA8  AD B7 00     MX
    CMP $00D0                       ; $80AFAB  CD D0 00     MX
    BCC L_80AF9B                    ; $80AFAE  90 EB        MX
    JMP L_80AFED                    ; $80AFB0  4C ED AF     MX
L_80AFB3:
    LDA $00D0                       ; $80AFB3  AD D0 00     MX
    STA $00EA                       ; $80AFB6  8D EA 00     MX
    LDA $00D3                       ; $80AFB9  AD D3 00     MX
    STA $00E8                       ; $80AFBC  8D E8 00     MX
    LDA $00D6                       ; $80AFBF  AD D6 00     MX
    CLC                             ; $80AFC2  18           MX
    ADC #$001F                      ; $80AFC3  69 1F 00     MX
    STA $00D6                       ; $80AFC6  8D D6 00     MX
    LDA $00D0                       ; $80AFC9  AD D0 00     MX
    LSR                             ; $80AFCC  4A           MX
    LSR                             ; $80AFCD  4A           MX
    LSR                             ; $80AFCE  4A           MX
    LSR                             ; $80AFCF  4A           MX
    STA $00D0                       ; $80AFD0  8D D0 00     MX
    BNE L_80AFE5                    ; $80AFD3  D0 10        MX
    JMP L_80AFED                    ; $80AFD5  4C ED AF     MX
L_80AFD8:
    DEC $00D6                       ; $80AFD8  CE D6 00     MX
    LDA $00B7                       ; $80AFDB  AD B7 00     MX
    CLC                             ; $80AFDE  18           MX
    ADC $00D0                       ; $80AFDF  6D D0 00     MX
    STA $00B7                       ; $80AFE2  8D B7 00     MX
L_80AFE5:
    LDA $00B7                       ; $80AFE5  AD B7 00     MX
    CMP $00D3                       ; $80AFE8  CD D3 00     MX
    BCC L_80AFD8                    ; $80AFEB  90 EB        MX
L_80AFED:
    LSR $00E8                       ; $80AFED  4E E8 00     MX
    LDA $00EA                       ; $80AFF0  AD EA 00     MX
    CLC                             ; $80AFF3  18           MX
    ADC $00E8                       ; $80AFF4  6D E8 00     MX
    LSR $00E8                       ; $80AFF7  4E E8 00     MX
    LSR $00E8                       ; $80AFFA  4E E8 00     MX
    SEC                             ; $80AFFD  38           MX
    SBC $00E8                       ; $80AFFE  ED E8 00     MX
    STA $00D3                       ; $80B001  8D D3 00     MX
    LDA #$007F                      ; $80B004  A9 7F 00     MX
    AND $00D6                       ; $80B007  2D D6 00     MX
    STA $00D0                       ; $80B00A  8D D0 00     MX
    RTS                             ; $80B00D  60           MX
    db $53,$54,$41,$52,$54,$20,$4F,$46,$20,$4D,$55,$4C,$54,$49,$35,$20 ; $80B00E
    db $43,$4F,$4E,$4E,$45,$43,$54,$20,$43,$48,$45,$43,$4B             ; $80B01E
L_80B02B:
    PHP                             ; $80B02B  08           MX
L_80B02C:
    SEP #$30                        ; $80B02C  E2 30        MX
L_80B02E:
    STZ $1D3D                       ; $80B02E  9C 3D 1D     mx
L_80B031:
    LDA $4212                       ; $80B031  AD 12 42     mx
L_80B034:
    AND #$01                        ; $80B034  29 01        mx
L_80B036:
    BNE L_80B031                    ; $80B036  D0 F9        mx
L_80B038:
    STZ $4016                       ; $80B038  9C 16 40     mx
L_80B03B:
    LDA #$01                        ; $80B03B  A9 01        mx
L_80B03D:
    STA $4016                       ; $80B03D  8D 16 40     mx
L_80B040:
    LDX #$08                        ; $80B040  A2 08        mx
L_80B042:
    LDA $4016                       ; $80B042  AD 16 40     mx
L_80B045:
    LSR                             ; $80B045  4A           mx
L_80B046:
    LSR                             ; $80B046  4A           mx
L_80B047:
    ROL $1D4F                       ; $80B047  2E 4F 1D     mx
L_80B04A:
    LDA $4017                       ; $80B04A  AD 17 40     mx
L_80B04D:
    LSR                             ; $80B04D  4A           mx
L_80B04E:
    LSR                             ; $80B04E  4A           mx
L_80B04F:
    ROL $1D51                       ; $80B04F  2E 51 1D     mx
L_80B052:
    DEX                             ; $80B052  CA           mx
L_80B053:
    BNE L_80B042                    ; $80B053  D0 ED        mx
L_80B055:
    STZ $4016                       ; $80B055  9C 16 40     mx
L_80B058:
    LDX #$08                        ; $80B058  A2 08        mx
L_80B05A:
    LDA $4016                       ; $80B05A  AD 16 40     mx
L_80B05D:
    LSR                             ; $80B05D  4A           mx
L_80B05E:
    LSR                             ; $80B05E  4A           mx
L_80B05F:
    ROL $1D4E                       ; $80B05F  2E 4E 1D     mx
L_80B062:
    LDA $4017                       ; $80B062  AD 17 40     mx
L_80B065:
    LSR                             ; $80B065  4A           mx
L_80B066:
    LSR                             ; $80B066  4A           mx
L_80B067:
    ROL $1D50                       ; $80B067  2E 50 1D     mx
L_80B06A:
    DEX                             ; $80B06A  CA           mx
L_80B06B:
    BNE L_80B05A                    ; $80B06B  D0 ED        mx
L_80B06D:
    LDA $1D4F                       ; $80B06D  AD 4F 1D     mx
L_80B070:
    CMP #$FF                        ; $80B070  C9 FF        mx
L_80B072:
    BNE L_80B080                    ; $80B072  D0 0C        mx
    LDA $1D4E                       ; $80B074  AD 4E 1D     mx
    CMP #$FF                        ; $80B077  C9 FF        mx
    BEQ L_80B080                    ; $80B079  F0 05        mx
    LDA #$80                        ; $80B07B  A9 80        mx
    STA $1D3D                       ; $80B07D  8D 3D 1D     mx
L_80B080:
    LDA $1D51                       ; $80B080  AD 51 1D     mx
L_80B083:
    CMP #$FF                        ; $80B083  C9 FF        mx
L_80B085:
    BNE L_80B096                    ; $80B085  D0 0F        mx
    LDA $1D50                       ; $80B087  AD 50 1D     mx
    CMP #$FF                        ; $80B08A  C9 FF        mx
    BEQ L_80B096                    ; $80B08C  F0 08        mx
    LDA #$40                        ; $80B08E  A9 40        mx
    ORA $1D3D                       ; $80B090  0D 3D 1D     mx
    STA $1D3D                       ; $80B093  8D 3D 1D     mx
L_80B096:
    PLP                             ; $80B096  28           mx
L_80B097:
    RTL                             ; $80B097  6B           MX
    db $4D,$4F,$44,$49,$46,$49,$45,$44,$20,$46,$52,$4F,$4D,$20,$53,$48 ; $80B098
    db $56,$43,$20,$4D,$55,$4C,$54,$49,$35,$20,$43,$4F,$4E,$4E,$45,$43 ; $80B0A8
    db $54,$20,$43,$48,$45,$43,$4B,$20,$56,$65,$72,$31,$2E,$30,$30,$45 ; $80B0B8
    db $4E,$44,$20,$4F,$46,$20,$4D,$55,$4C,$54,$49,$35,$20,$43,$4F,$4E ; $80B0C8
    db $4E,$45,$43,$54,$20,$43,$48,$45,$43,$4B                         ; $80B0D8
L_80B0E2:
    PHP                             ; $80B0E2  08           MX
    SEP #$30                        ; $80B0E3  E2 30        MX
L_80B0E5:
    LDA $4212                       ; $80B0E5  AD 12 42     mx
    AND #$01                        ; $80B0E8  29 01        mx
    BNE L_80B0E5                    ; $80B0EA  D0 F9        mx
    LDA $4219                       ; $80B0EC  AD 19 42     mx
    STA $1D48                       ; $80B0EF  8D 48 1D     mx
    LDA $4218                       ; $80B0F2  AD 18 42     mx
    STA $1D47                       ; $80B0F5  8D 47 1D     mx
    AND #$0F                        ; $80B0F8  29 0F        mx
    STA $1D4D                       ; $80B0FA  8D 4D 1D     mx
    LDA $4016                       ; $80B0FD  AD 16 40     mx
    LSR                             ; $80B100  4A           mx
    ROL $1D4D                       ; $80B101  2E 4D 1D     mx
    LDA $421B                       ; $80B104  AD 1B 42     mx
    STA $1D46                       ; $80B107  8D 46 1D     mx
    LDA $421A                       ; $80B10A  AD 1A 42     mx
    STA $1D45                       ; $80B10D  8D 45 1D     mx
    AND #$0F                        ; $80B110  29 0F        mx
    STA $1D4C                       ; $80B112  8D 4C 1D     mx
    LDA $421F                       ; $80B115  AD 1F 42     mx
    STA $1D44                       ; $80B118  8D 44 1D     mx
    LDA $421E                       ; $80B11B  AD 1E 42     mx
    STA $1D43                       ; $80B11E  8D 43 1D     mx
    AND #$0F                        ; $80B121  29 0F        mx
    STA $1D4B                       ; $80B123  8D 4B 1D     mx
    LDA $4017                       ; $80B126  AD 17 40     mx
    LSR                             ; $80B129  4A           mx
    ROL $1D4C                       ; $80B12A  2E 4C 1D     mx
    LSR                             ; $80B12D  4A           mx
    ROL $1D4B                       ; $80B12E  2E 4B 1D     mx
    STZ $4201                       ; $80B131  9C 01 42     mx
    LDY #$10                        ; $80B134  A0 10        mx
L_80B136:
    LDA $4017                       ; $80B136  AD 17 40     mx
    REP #$20                        ; $80B139  C2 20        mx
    LSR                             ; $80B13B  4A           Mx
    ROL $1D41                       ; $80B13C  2E 41 1D     Mx
    LSR                             ; $80B13F  4A           Mx
    ROL $1D3F                       ; $80B140  2E 3F 1D     Mx
    SEP #$20                        ; $80B143  E2 20        Mx
    DEY                             ; $80B145  88           mx
    BNE L_80B136                    ; $80B146  D0 EE        mx
    LDA $1D41                       ; $80B148  AD 41 1D     mx
    AND #$0F                        ; $80B14B  29 0F        mx
    STA $1D4A                       ; $80B14D  8D 4A 1D     mx
    LDA $1D3F                       ; $80B150  AD 3F 1D     mx
    AND #$0F                        ; $80B153  29 0F        mx
    STA $1D49                       ; $80B155  8D 49 1D     mx
    LDA $4017                       ; $80B158  AD 17 40     mx
    LSR                             ; $80B15B  4A           mx
    ROL $1D4A                       ; $80B15C  2E 4A 1D     mx
    LSR                             ; $80B15F  4A           mx
    ROL $1D49                       ; $80B160  2E 49 1D     mx
    LDA #$80                        ; $80B163  A9 80        mx
    STA $4201                       ; $80B165  8D 01 42     mx
    PLP                             ; $80B168  28           mx
    RTL                             ; $80B169  6B           MX
    db $4D,$4F,$44,$49,$46,$49,$45,$44,$20,$46,$52,$4F,$4D,$20,$53,$48 ; $80B16A
    db $56,$43,$20,$4D,$55,$4C,$54,$49,$35,$20,$42,$49,$4F,$53,$20,$56 ; $80B17A
    db $65,$72,$32,$2E,$30,$30,$45,$4E,$44,$20,$4F,$46,$20,$4D,$55,$4C ; $80B18A
    db $54,$49,$35,$20,$42,$49,$4F,$53                                 ; $80B19A
L_80B1A2:
    JSR L_80B1A6                    ; $80B1A2  20 A6 B1     Mx
    RTL                             ; $80B1A5  6B           Mx
L_80B1A6:
    SEP #$10                        ; $80B1A6  E2 10        Mx
    LDA #$0000                      ; $80B1A8  A9 00 00     Mx
    TAX                             ; $80B1AB  AA           Mx
L_80B1AC:
    STA $7FC2C0,X                   ; $80B1AC  9F C0 C2 7F  Mx
    INX                             ; $80B1B0  E8           Mx
    INX                             ; $80B1B1  E8           Mx
    BNE L_80B1AC                    ; $80B1B2  D0 F8        Mx
    RTS                             ; $80B1B4  60           Mx
    db $05,$00,$06,$00,$07,$00,$08,$00,$09,$00,$0C,$00,$0A,$00,$08,$00 ; $80B1B5
    db $07,$00,$06,$00                                                 ; $80B1C5
L_80B1C9:
    REP #$20                        ; $80B1C9  C2 20        Mx
    LDA #$0C89                      ; $80B1CB  A9 89 0C     Mx
    STA $2181                       ; $80B1CE  8D 81 21     Mx
    LDA #$B1F9                      ; $80B1D1  A9 F9 B1     Mx
    STA $4302                       ; $80B1D4  8D 02 43     Mx
    LDA #$0020                      ; $80B1D7  A9 20 00     Mx
    STA $4305                       ; $80B1DA  8D 05 43     Mx
    SEP #$20                        ; $80B1DD  E2 20        Mx
    LDA #$00                        ; $80B1DF  A9 00        mx
    STA $2183                       ; $80B1E1  8D 83 21     mx
    LDA #$00                        ; $80B1E4  A9 00        mx
    STA $4304                       ; $80B1E6  8D 04 43     mx
    STZ $4300                       ; $80B1E9  9C 00 43     mx
    LDA #$80                        ; $80B1EC  A9 80        mx
    STA $4301                       ; $80B1EE  8D 01 43     mx
    LDA #$01                        ; $80B1F1  A9 01        mx
    STA $420B                       ; $80B1F3  8D 0B 42     mx
    REP #$20                        ; $80B1F6  C2 20        mx
    RTS                             ; $80B1F8  60           Mx
    db $59,$CE,$26,$07,$13,$D1,$0E,$08,$CD,$D3,$F6,$08,$87,$D6,$DE,$09 ; $80B1F9
    db $F3,$C1,$F3,$0B,$3C,$C4,$45,$0C,$2E,$C4,$4D,$0C,$33,$C4,$53,$0C ; $80B209
L_80B219:
    LDY #$00                        ; $80B219  A0 00        Mx
    JSR L_80B223                    ; $80B21B  20 23 B2     Mx
    CPY #$00                        ; $80B21E  C0 00        Mx
    BNE L_80B219                    ; $80B220  D0 F7        Mx
    RTS                             ; $80B222  60           Mx
L_80B223:
    LDX #$00                        ; $80B223  A2 00        Mx
L_80B225:
    LDA $0C8B,X                     ; $80B225  BD 8B 0C     Mx
    STA $00D0                       ; $80B228  8D D0 00     Mx
    LDA $0C8F,X                     ; $80B22B  BD 8F 0C     Mx
    STA $00D3                       ; $80B22E  8D D3 00     Mx
    LDA ($D0)                       ; $80B231  B2 D0        Mx
    CMP ($D3)                       ; $80B233  D2 D3        Mx
    BCS L_80B25D                    ; $80B235  B0 26        Mx
    LDA $0C89,X                     ; $80B237  BD 89 0C     Mx
    STA $00F6                       ; $80B23A  8D F6 00     Mx
    LDA $0C8D,X                     ; $80B23D  BD 8D 0C     Mx
    STA $0C89,X                     ; $80B240  9D 89 0C     Mx
    LDA $00F6                       ; $80B243  AD F6 00     Mx
    STA $0C8D,X                     ; $80B246  9D 8D 0C     Mx
    LDA $0C8B,X                     ; $80B249  BD 8B 0C     Mx
    STA $00F6                       ; $80B24C  8D F6 00     Mx
    LDA $0C8F,X                     ; $80B24F  BD 8F 0C     Mx
    STA $0C8B,X                     ; $80B252  9D 8B 0C     Mx
    LDA $00F6                       ; $80B255  AD F6 00     Mx
    STA $0C8F,X                     ; $80B258  9D 8F 0C     Mx
    LDY #$01                        ; $80B25B  A0 01        Mx
L_80B25D:
    INX                             ; $80B25D  E8           Mx
    INX                             ; $80B25E  E8           Mx
    INX                             ; $80B25F  E8           Mx
    INX                             ; $80B260  E8           Mx
    CPX #$1C                        ; $80B261  E0 1C        Mx
    BNE L_80B225                    ; $80B263  D0 C0        Mx
    RTS                             ; $80B265  60           Mx
L_80B266:
    REP #$30                        ; $80B266  C2 30        Mx
    LDA $00BE                       ; $80B268  AD BE 00     MX
    BEQ L_80B280                    ; $80B26B  F0 13        MX
    CMP #$0001                      ; $80B26D  C9 01 00     MX
    BNE L_80B275                    ; $80B270  D0 03        MX
    JMP L_80B503                    ; $80B272  4C 03 B5     MX
L_80B275:
    CMP #$0002                      ; $80B275  C9 02 00     MX
    BNE L_80B27D                    ; $80B278  D0 03        MX
    JMP L_80B763                    ; $80B27A  4C 63 B7     MX
L_80B27D:
    JMP L_80B9C3                    ; $80B27D  4C C3 B9     MX
L_80B280:
    LDA $071E                       ; $80B280  AD 1E 07     MX
    STA $00D0                       ; $80B283  8D D0 00     MX
    LDA $0726                       ; $80B286  AD 26 07     MX
    STA $00D3                       ; $80B289  8D D3 00     MX
    LDA $0752                       ; $80B28C  AD 52 07     MX
    STA $00E2                       ; $80B28F  8D E2 00     MX
    LDA #$0374                      ; $80B292  A9 74 03     MX
    STA $00E5                       ; $80B295  8D E5 00     MX
    JSR L_80AEFD                    ; $80B298  20 FD AE     MX
    STA $0756                       ; $80B29B  8D 56 07     MX
    LDA $00D3                       ; $80B29E  AD D3 00     MX
    STA $0754                       ; $80B2A1  8D 54 07     MX
    LDA $071E                       ; $80B2A4  AD 1E 07     MX
    STA $00D0                       ; $80B2A7  8D D0 00     MX
    LDA $0726                       ; $80B2AA  AD 26 07     MX
    STA $00D3                       ; $80B2AD  8D D3 00     MX
    LDA $0922                       ; $80B2B0  AD 22 09     MX
    STA $00E2                       ; $80B2B3  8D E2 00     MX
    LDA #$0374                      ; $80B2B6  A9 74 03     MX
    STA $00E5                       ; $80B2B9  8D E5 00     MX
    JSR L_80AEFD                    ; $80B2BC  20 FD AE     MX
    STA $075A                       ; $80B2BF  8D 5A 07     MX
    LDA $00D3                       ; $80B2C2  AD D3 00     MX
    STA $0758                       ; $80B2C5  8D 58 07     MX
    LDA $06F0                       ; $80B2C8  AD F0 06     MX
    CMP $0C19                       ; $80B2CB  CD 19 0C     MX
    BEQ L_80B2F4                    ; $80B2CE  F0 24        MX
    LDA $071E                       ; $80B2D0  AD 1E 07     MX
    STA $00D0                       ; $80B2D3  8D D0 00     MX
    LDA $0726                       ; $80B2D6  AD 26 07     MX
    STA $00D3                       ; $80B2D9  8D D3 00     MX
    LDA $0BD9                       ; $80B2DC  AD D9 0B     MX
    STA $00E2                       ; $80B2DF  8D E2 00     MX
    LDA $0BE1                       ; $80B2E2  AD E1 0B     MX
    STA $00E5                       ; $80B2E5  8D E5 00     MX
    JSR L_80AEFD                    ; $80B2E8  20 FD AE     MX
    STA $075E                       ; $80B2EB  8D 5E 07     MX
    LDA $00D3                       ; $80B2EE  AD D3 00     MX
    STA $075C                       ; $80B2F1  8D 5C 07     MX
L_80B2F4:
    LDA $071E                       ; $80B2F4  AD 1E 07     MX
    STA $00D0                       ; $80B2F7  8D D0 00     MX
    LDA $0726                       ; $80B2FA  AD 26 07     MX
    STA $00D3                       ; $80B2FD  8D D3 00     MX
    LDA $0806                       ; $80B300  AD 06 08     MX
    STA $00E2                       ; $80B303  8D E2 00     MX
    LDA $080E                       ; $80B306  AD 0E 08     MX
    STA $00E5                       ; $80B309  8D E5 00     MX
    JSR L_80AEFD                    ; $80B30C  20 FD AE     MX
    STA $0760                       ; $80B30F  8D 60 07     MX
    LDA $00D3                       ; $80B312  AD D3 00     MX
    STA $0766                       ; $80B315  8D 66 07     MX
    LDA $071E                       ; $80B318  AD 1E 07     MX
    STA $00D0                       ; $80B31B  8D D0 00     MX
    LDA $0726                       ; $80B31E  AD 26 07     MX
    STA $00D3                       ; $80B321  8D D3 00     MX
    LDA $08EE                       ; $80B324  AD EE 08     MX
    STA $00E2                       ; $80B327  8D E2 00     MX
    LDA $08F6                       ; $80B32A  AD F6 08     MX
    STA $00E5                       ; $80B32D  8D E5 00     MX
    JSR L_80AEFD                    ; $80B330  20 FD AE     MX
    STA $0762                       ; $80B333  8D 62 07     MX
    LDA $00D3                       ; $80B336  AD D3 00     MX
    STA $0768                       ; $80B339  8D 68 07     MX
    LDA $071E                       ; $80B33C  AD 1E 07     MX
    STA $00D0                       ; $80B33F  8D D0 00     MX
    LDA $0726                       ; $80B342  AD 26 07     MX
    STA $00D3                       ; $80B345  8D D3 00     MX
    LDA $09D6                       ; $80B348  AD D6 09     MX
    STA $00E2                       ; $80B34B  8D E2 00     MX
    LDA $09DE                       ; $80B34E  AD DE 09     MX
    STA $00E5                       ; $80B351  8D E5 00     MX
    JSR L_80AEFD                    ; $80B354  20 FD AE     MX
    STA $0764                       ; $80B357  8D 64 07     MX
    LDA $00D3                       ; $80B35A  AD D3 00     MX
    STA $076A                       ; $80B35D  8D 6A 07     MX
    LDA $06F0                       ; $80B360  AD F0 06     MX
    CMP $0C19                       ; $80B363  CD 19 0C     MX
    BNE L_80B3D2                    ; $80B366  D0 6A        MX
    LDX $0700                       ; $80B368  AE 00 07     MX
    LDA $07BA                       ; $80B36B  AD BA 07     MX
    BEQ L_80B3A2                    ; $80B36E  F0 32        MX
    LDA #$2800                      ; $80B370  A9 00 28     MX
    STA $00D1                       ; $80B373  8D D1 00     MX
    LDA $A88000,X                   ; $80B376  BF 00 80 A8  MX
    CLC                             ; $80B37A  18           MX
    ADC $06FE                       ; $80B37B  6D FE 06     MX
    STA $00D0                       ; $80B37E  8D D0 00     MX
    LDY #$0000                      ; $80B381  A0 00 00     MX
    LDA [$D0],Y                     ; $80B384  B7 D0        MX
    STA $0BEF                       ; $80B386  8D EF 0B     MX
    LDY #$0002                      ; $80B389  A0 02 00     MX
    LDA [$D0],Y                     ; $80B38C  B7 D0        MX
    STA $0BF1                       ; $80B38E  8D F1 0B     MX
    LDY #$0004                      ; $80B391  A0 04 00     MX
    LDA [$D0],Y                     ; $80B394  B7 D0        MX
    STA $0BF5                       ; $80B396  8D F5 0B     MX
    CLC                             ; $80B399  18           MX
    ADC $0718                       ; $80B39A  6D 18 07     MX
    STA $0BF3                       ; $80B39D  8D F3 0B     MX
    BRA L_80B3D2                    ; $80B3A0  80 30        MX
L_80B3A2:
    LDA #$2500                      ; $80B3A2  A9 00 25     MX
    STA $00D1                       ; $80B3A5  8D D1 00     MX
    LDA $A58000,X                   ; $80B3A8  BF 00 80 A5  MX
    CLC                             ; $80B3AC  18           MX
    ADC $06FE                       ; $80B3AD  6D FE 06     MX
    STA $00D0                       ; $80B3B0  8D D0 00     MX
    LDY #$0000                      ; $80B3B3  A0 00 00     MX
    LDA [$D0],Y                     ; $80B3B6  B7 D0        MX
    STA $0BEF                       ; $80B3B8  8D EF 0B     MX
    LDY #$0002                      ; $80B3BB  A0 02 00     MX
    LDA [$D0],Y                     ; $80B3BE  B7 D0        MX
    STA $0BF1                       ; $80B3C0  8D F1 0B     MX
    LDY #$0004                      ; $80B3C3  A0 04 00     MX
    LDA [$D0],Y                     ; $80B3C6  B7 D0        MX
    STA $0BF5                       ; $80B3C8  8D F5 0B     MX
    CLC                             ; $80B3CB  18           MX
    ADC $0718                       ; $80B3CC  6D 18 07     MX
    STA $0BF3                       ; $80B3CF  8D F3 0B     MX
L_80B3D2:
    LDA $1683                       ; $80B3D2  AD 83 16     MX
    CMP #$001B                      ; $80B3D5  C9 1B 00     MX
    BNE L_80B3F5                    ; $80B3D8  D0 1B        MX
    SEP #$20                        ; $80B3DA  E2 20        MX
    LDA #$13                        ; $80B3DC  A9 13        mX
    STA $00D2                       ; $80B3DE  8D D2 00     mX
    LDA $06F4                       ; $80B3E1  AD F4 06     mX
    CMP #$04                        ; $80B3E4  C9 04        mX
    BEQ L_80B3F1                    ; $80B3E6  F0 09        mX
    CMP #$06                        ; $80B3E8  C9 06        mX
    BEQ L_80B3F1                    ; $80B3EA  F0 05        mX
    LDA #$2C                        ; $80B3EC  A9 2C        mX
    STA $00D2                       ; $80B3EE  8D D2 00     mX
L_80B3F1:
    REP #$20                        ; $80B3F1  C2 20        mX
    BRA L_80B3FB                    ; $80B3F3  80 06        MX
L_80B3F5:
    LDA $07CD                       ; $80B3F5  AD CD 07     MX
    STA $00D1                       ; $80B3F8  8D D1 00     MX
L_80B3FB:
    LDA $07CC                       ; $80B3FB  AD CC 07     MX
    STA $00D0                       ; $80B3FE  8D D0 00     MX
    LDA $0708                       ; $80B401  AD 08 07     MX
    STA $070C                       ; $80B404  8D 0C 07     MX
    LDX $0700                       ; $80B407  AE 00 07     MX
    LDA $A48000,X                   ; $80B40A  BF 00 80 A4  MX
    CLC                             ; $80B40E  18           MX
    ADC $06FE                       ; $80B40F  6D FE 06     MX
    STA $07C6                       ; $80B412  8D C6 07     MX
    LDA $07C7                       ; $80B415  AD C7 07     MX
    STA $00D4                       ; $80B418  8D D4 00     MX
    LDA $07C6                       ; $80B41B  AD C6 07     MX
    STA $00D3                       ; $80B41E  8D D3 00     MX
    LDY #$0000                      ; $80B421  A0 00 00     MX
    LDA [$D0],Y                     ; $80B424  B7 D0        MX
    CMP $0034                       ; $80B426  CD 34 00     MX
    BNE L_80B436                    ; $80B429  D0 0B        MX
    INY                             ; $80B42B  C8           MX
    LDA [$D0],Y                     ; $80B42C  B7 D0        MX
    CMP $0035                       ; $80B42E  CD 35 00     MX
    BNE L_80B43C                    ; $80B431  D0 09        MX
    JMP L_80B4C2                    ; $80B433  4C C2 B4     MX
L_80B436:
    STA $0034                       ; $80B436  8D 34 00     MX
    INY                             ; $80B439  C8           MX
    LDA [$D0],Y                     ; $80B43A  B7 D0        MX
L_80B43C:
    STA $0035                       ; $80B43C  8D 35 00     MX
    LDA [$D0]                       ; $80B43F  A7 D0        MX
    STA $00D6                       ; $80B441  8D D6 00     MX
    LDY #$0001                      ; $80B444  A0 01 00     MX
    LDA [$D0],Y                     ; $80B447  B7 D0        MX
    STA $00D7                       ; $80B449  8D D7 00     MX
    LDY #$0003                      ; $80B44C  A0 03 00     MX
    LDA [$D6],Y                     ; $80B44F  B7 D6        MX
    AND #$00FF                      ; $80B451  29 FF 00     MX
    STA $00E8                       ; $80B454  8D E8 00     MX
    LDY #$0002                      ; $80B457  A0 02 00     MX
    LDA [$D6],Y                     ; $80B45A  B7 D6        MX
    AND #$0001                      ; $80B45C  29 01 00     MX
    CLC                             ; $80B45F  18           MX
    BNE L_80B46A                    ; $80B460  D0 08        MX
    LDA $00E8                       ; $80B462  AD E8 00     MX
    ADC #$0008                      ; $80B465  69 08 00     MX
    BRA L_80B470                    ; $80B468  80 06        MX
L_80B46A:
    LDA $00E8                       ; $80B46A  AD E8 00     MX
    ADC #$0010                      ; $80B46D  69 10 00     MX
L_80B470:
    LDY #$0005                      ; $80B470  A0 05 00     MX
    ADC [$D6],Y                     ; $80B473  77 D6        MX
    LSR                             ; $80B475  4A           MX
    STA $0744                       ; $80B476  8D 44 07     MX
    SEP #$20                        ; $80B479  E2 20        MX
    LDY #$0005                      ; $80B47B  A0 05 00     mX
    LDA [$D0],Y                     ; $80B47E  B7 D0        mX
    STA $0046                       ; $80B480  8D 46 00     mX
    STA $004C                       ; $80B483  8D 4C 00     mX
    REP #$20                        ; $80B486  C2 20        mX
    LDY #$0003                      ; $80B488  A0 03 00     MX
    LDA [$D0],Y                     ; $80B48B  B7 D0        MX
    STA $0044                       ; $80B48D  8D 44 00     MX
    LDY #$0006                      ; $80B490  A0 06 00     MX
    LDA [$D0],Y                     ; $80B493  B7 D0        MX
    STA $0048                       ; $80B495  8D 48 00     MX
    STA $004E                       ; $80B498  8D 4E 00     MX
    CLC                             ; $80B49B  18           MX
    ADC $0044                       ; $80B49C  6D 44 00     MX
    STA $004A                       ; $80B49F  8D 4A 00     MX
    LDY #$0000                      ; $80B4A2  A0 00 00     MX
    LDA [$D3],Y                     ; $80B4A5  B7 D3        MX
    STA $074A                       ; $80B4A7  8D 4A 07     MX
    AND #$001F                      ; $80B4AA  29 1F 00     MX
    CLC                             ; $80B4AD  18           MX
    ADC $07C4                       ; $80B4AE  6D C4 07     MX
    TXY                             ; $80B4B1  9B           MX
    TAX                             ; $80B4B2  AA           MX
    LDA $AAF85C,X                   ; $80B4B3  BF 5C F8 AA  MX
    TYX                             ; $80B4B7  BB           MX
    STA $0C61                       ; $80B4B8  8D 61 0C     MX
    CLC                             ; $80B4BB  18           MX
    ADC $0C64                       ; $80B4BC  6D 64 0C     MX
    STA $0C66                       ; $80B4BF  8D 66 0C     MX
L_80B4C2:
    LDY #$0002                      ; $80B4C2  A0 02 00     MX
    LDA [$D3],Y                     ; $80B4C5  B7 D3        MX
    STA $074C                       ; $80B4C7  8D 4C 07     MX
    LDY #$0004                      ; $80B4CA  A0 04 00     MX
    LDA [$D3],Y                     ; $80B4CD  B7 D3        MX
    STA $074E                       ; $80B4CF  8D 4E 07     MX
    LDY #$0006                      ; $80B4D2  A0 06 00     MX
    LDA [$D3],Y                     ; $80B4D5  B7 D3        MX
    STA $0750                       ; $80B4D7  8D 50 07     MX
    LDA $07BA                       ; $80B4DA  AD BA 07     MX
    BEQ L_80B4E7                    ; $80B4DD  F0 08        MX
    LDA #$2880                      ; $80B4DF  A9 80 28     MX
    STA $00D1                       ; $80B4E2  8D D1 00     MX
    BRA L_80B4ED                    ; $80B4E5  80 06        MX
L_80B4E7:
    LDA #$2580                      ; $80B4E7  A9 80 25     MX
    STA $00D1                       ; $80B4EA  8D D1 00     MX
L_80B4ED:
    LDA $A58000,X                   ; $80B4ED  BF 00 80 A5  MX
    CLC                             ; $80B4F1  18           MX
    ADC $06FE                       ; $80B4F2  6D FE 06     MX
    STA $00D0                       ; $80B4F5  8D D0 00     MX
    LDY #$0006                      ; $80B4F8  A0 06 00     MX
    LDA [$D0],Y                     ; $80B4FB  B7 D0        MX
    STA $0740                       ; $80B4FD  8D 40 07     MX
    JMP L_80BC20                    ; $80B500  4C 20 BC     MX
L_80B503:
    LDA $0806                       ; $80B503  AD 06 08     MX
    STA $00D0                       ; $80B506  8D D0 00     MX
    LDA $080E                       ; $80B509  AD 0E 08     MX
    STA $00D3                       ; $80B50C  8D D3 00     MX
    LDA $083A                       ; $80B50F  AD 3A 08     MX
    STA $00E2                       ; $80B512  8D E2 00     MX
    LDA #$0374                      ; $80B515  A9 74 03     MX
    STA $00E5                       ; $80B518  8D E5 00     MX
    JSR L_80AEFD                    ; $80B51B  20 FD AE     MX
    STA $083E                       ; $80B51E  8D 3E 08     MX
    LDA $00D3                       ; $80B521  AD D3 00     MX
    STA $083C                       ; $80B524  8D 3C 08     MX
    LDA $0806                       ; $80B527  AD 06 08     MX
    STA $00D0                       ; $80B52A  8D D0 00     MX
    LDA $080E                       ; $80B52D  AD 0E 08     MX
    STA $00D3                       ; $80B530  8D D3 00     MX
    LDA $0A0A                       ; $80B533  AD 0A 0A     MX
    STA $00E2                       ; $80B536  8D E2 00     MX
    LDA #$0374                      ; $80B539  A9 74 03     MX
    STA $00E5                       ; $80B53C  8D E5 00     MX
    JSR L_80AEFD                    ; $80B53F  20 FD AE     MX
    STA $0842                       ; $80B542  8D 42 08     MX
    LDA $00D3                       ; $80B545  AD D3 00     MX
    STA $0840                       ; $80B548  8D 40 08     MX
    LDA $07D8                       ; $80B54B  AD D8 07     MX
    CMP $0C19                       ; $80B54E  CD 19 0C     MX
    BEQ L_80B577                    ; $80B551  F0 24        MX
    LDA $0806                       ; $80B553  AD 06 08     MX
    STA $00D0                       ; $80B556  8D D0 00     MX
    LDA $080E                       ; $80B559  AD 0E 08     MX
    STA $00D3                       ; $80B55C  8D D3 00     MX
    LDA $0BD9                       ; $80B55F  AD D9 0B     MX
    STA $00E2                       ; $80B562  8D E2 00     MX
    LDA $0BE1                       ; $80B565  AD E1 0B     MX
    STA $00E5                       ; $80B568  8D E5 00     MX
    JSR L_80AEFD                    ; $80B56B  20 FD AE     MX
    STA $0846                       ; $80B56E  8D 46 08     MX
    LDA $00D3                       ; $80B571  AD D3 00     MX
    STA $0844                       ; $80B574  8D 44 08     MX
L_80B577:
    LDA $0806                       ; $80B577  AD 06 08     MX
    STA $00D0                       ; $80B57A  8D D0 00     MX
    LDA $080E                       ; $80B57D  AD 0E 08     MX
    STA $00D3                       ; $80B580  8D D3 00     MX
    LDA $071E                       ; $80B583  AD 1E 07     MX
    STA $00E2                       ; $80B586  8D E2 00     MX
    LDA $0726                       ; $80B589  AD 26 07     MX
    STA $00E5                       ; $80B58C  8D E5 00     MX
    JSR L_80AEFD                    ; $80B58F  20 FD AE     MX
    STA $0848                       ; $80B592  8D 48 08     MX
    LDA $00D3                       ; $80B595  AD D3 00     MX
    STA $084E                       ; $80B598  8D 4E 08     MX
    LDA $0806                       ; $80B59B  AD 06 08     MX
    STA $00D0                       ; $80B59E  8D D0 00     MX
    LDA $080E                       ; $80B5A1  AD 0E 08     MX
    STA $00D3                       ; $80B5A4  8D D3 00     MX
    LDA $09D6                       ; $80B5A7  AD D6 09     MX
    STA $00E2                       ; $80B5AA  8D E2 00     MX
    LDA $09DE                       ; $80B5AD  AD DE 09     MX
    STA $00E5                       ; $80B5B0  8D E5 00     MX
    JSR L_80AEFD                    ; $80B5B3  20 FD AE     MX
    STA $084A                       ; $80B5B6  8D 4A 08     MX
    LDA $00D3                       ; $80B5B9  AD D3 00     MX
    STA $0850                       ; $80B5BC  8D 50 08     MX
    LDA $0806                       ; $80B5BF  AD 06 08     MX
    STA $00D0                       ; $80B5C2  8D D0 00     MX
    LDA $080E                       ; $80B5C5  AD 0E 08     MX
    STA $00D3                       ; $80B5C8  8D D3 00     MX
    LDA $08EE                       ; $80B5CB  AD EE 08     MX
    STA $00E2                       ; $80B5CE  8D E2 00     MX
    LDA $08F6                       ; $80B5D1  AD F6 08     MX
    STA $00E5                       ; $80B5D4  8D E5 00     MX
    JSR L_80AEFD                    ; $80B5D7  20 FD AE     MX
    STA $084C                       ; $80B5DA  8D 4C 08     MX
    LDA $00D3                       ; $80B5DD  AD D3 00     MX
    STA $0852                       ; $80B5E0  8D 52 08     MX
    LDA $07D8                       ; $80B5E3  AD D8 07     MX
    CMP $0C19                       ; $80B5E6  CD 19 0C     MX
    BNE L_80B655                    ; $80B5E9  D0 6A        MX
    LDX $07E8                       ; $80B5EB  AE E8 07     MX
    LDA $08A2                       ; $80B5EE  AD A2 08     MX
    BEQ L_80B625                    ; $80B5F1  F0 32        MX
    LDA #$2800                      ; $80B5F3  A9 00 28     MX
    STA $00D1                       ; $80B5F6  8D D1 00     MX
    LDA $A88000,X                   ; $80B5F9  BF 00 80 A8  MX
    CLC                             ; $80B5FD  18           MX
    ADC $07E6                       ; $80B5FE  6D E6 07     MX
    STA $00D0                       ; $80B601  8D D0 00     MX
    LDY #$0000                      ; $80B604  A0 00 00     MX
    LDA [$D0],Y                     ; $80B607  B7 D0        MX
    STA $0BEF                       ; $80B609  8D EF 0B     MX
    LDY #$0002                      ; $80B60C  A0 02 00     MX
    LDA [$D0],Y                     ; $80B60F  B7 D0        MX
    STA $0BF1                       ; $80B611  8D F1 0B     MX
    LDY #$0004                      ; $80B614  A0 04 00     MX
    LDA [$D0],Y                     ; $80B617  B7 D0        MX
    STA $0BF5                       ; $80B619  8D F5 0B     MX
    CLC                             ; $80B61C  18           MX
    ADC $0800                       ; $80B61D  6D 00 08     MX
    STA $0BF3                       ; $80B620  8D F3 0B     MX
    BRA L_80B655                    ; $80B623  80 30        MX
L_80B625:
    LDA #$2500                      ; $80B625  A9 00 25     MX
    STA $00D1                       ; $80B628  8D D1 00     MX
    LDA $A58000,X                   ; $80B62B  BF 00 80 A5  MX
    CLC                             ; $80B62F  18           MX
    ADC $07E6                       ; $80B630  6D E6 07     MX
    STA $00D0                       ; $80B633  8D D0 00     MX
    LDY #$0000                      ; $80B636  A0 00 00     MX
    LDA [$D0],Y                     ; $80B639  B7 D0        MX
    STA $0BEF                       ; $80B63B  8D EF 0B     MX
    LDY #$0002                      ; $80B63E  A0 02 00     MX
    LDA [$D0],Y                     ; $80B641  B7 D0        MX
    STA $0BF1                       ; $80B643  8D F1 0B     MX
    LDY #$0004                      ; $80B646  A0 04 00     MX
    LDA [$D0],Y                     ; $80B649  B7 D0        MX
    STA $0BF5                       ; $80B64B  8D F5 0B     MX
    CLC                             ; $80B64E  18           MX
    ADC $0800                       ; $80B64F  6D 00 08     MX
    STA $0BF3                       ; $80B652  8D F3 0B     MX
L_80B655:
    LDA $08B5                       ; $80B655  AD B5 08     MX
    STA $00D1                       ; $80B658  8D D1 00     MX
    LDA $08B4                       ; $80B65B  AD B4 08     MX
    STA $00D0                       ; $80B65E  8D D0 00     MX
    LDA $07F0                       ; $80B661  AD F0 07     MX
    STA $07F4                       ; $80B664  8D F4 07     MX
    LDX $07E8                       ; $80B667  AE E8 07     MX
    LDA $A48000,X                   ; $80B66A  BF 00 80 A4  MX
    CLC                             ; $80B66E  18           MX
    ADC $07E6                       ; $80B66F  6D E6 07     MX
    STA $08AE                       ; $80B672  8D AE 08     MX
    LDA $08AF                       ; $80B675  AD AF 08     MX
    STA $00D4                       ; $80B678  8D D4 00     MX
    LDA $08AE                       ; $80B67B  AD AE 08     MX
    STA $00D3                       ; $80B67E  8D D3 00     MX
    LDY #$0000                      ; $80B681  A0 00 00     MX
    LDA [$D0],Y                     ; $80B684  B7 D0        MX
    CMP $0038                       ; $80B686  CD 38 00     MX
    BNE L_80B696                    ; $80B689  D0 0B        MX
    INY                             ; $80B68B  C8           MX
    LDA [$D0],Y                     ; $80B68C  B7 D0        MX
    CMP $0039                       ; $80B68E  CD 39 00     MX
    BNE L_80B69C                    ; $80B691  D0 09        MX
    JMP L_80B722                    ; $80B693  4C 22 B7     MX
L_80B696:
    STA $0038                       ; $80B696  8D 38 00     MX
    INY                             ; $80B699  C8           MX
    LDA [$D0],Y                     ; $80B69A  B7 D0        MX
L_80B69C:
    STA $0039                       ; $80B69C  8D 39 00     MX
    LDA [$D0]                       ; $80B69F  A7 D0        MX
    STA $00D6                       ; $80B6A1  8D D6 00     MX
    LDY #$0001                      ; $80B6A4  A0 01 00     MX
    LDA [$D0],Y                     ; $80B6A7  B7 D0        MX
    STA $00D7                       ; $80B6A9  8D D7 00     MX
    LDY #$0003                      ; $80B6AC  A0 03 00     MX
    LDA [$D6],Y                     ; $80B6AF  B7 D6        MX
    AND #$00FF                      ; $80B6B1  29 FF 00     MX
    STA $00E8                       ; $80B6B4  8D E8 00     MX
    LDY #$0002                      ; $80B6B7  A0 02 00     MX
    LDA [$D6],Y                     ; $80B6BA  B7 D6        MX
    AND #$0001                      ; $80B6BC  29 01 00     MX
    CLC                             ; $80B6BF  18           MX
    BNE L_80B6CA                    ; $80B6C0  D0 08        MX
    LDA $00E8                       ; $80B6C2  AD E8 00     MX
    ADC #$0008                      ; $80B6C5  69 08 00     MX
    BRA L_80B6D0                    ; $80B6C8  80 06        MX
L_80B6CA:
    LDA $00E8                       ; $80B6CA  AD E8 00     MX
    ADC #$0010                      ; $80B6CD  69 10 00     MX
L_80B6D0:
    LDY #$0005                      ; $80B6D0  A0 05 00     MX
    ADC [$D6],Y                     ; $80B6D3  77 D6        MX
    LSR                             ; $80B6D5  4A           MX
    STA $082C                       ; $80B6D6  8D 2C 08     MX
    SEP #$20                        ; $80B6D9  E2 20        MX
    LDY #$0005                      ; $80B6DB  A0 05 00     mX
    LDA [$D0],Y                     ; $80B6DE  B7 D0        mX
    STA $0052                       ; $80B6E0  8D 52 00     mX
    STA $0058                       ; $80B6E3  8D 58 00     mX
    REP #$20                        ; $80B6E6  C2 20        mX
    LDY #$0003                      ; $80B6E8  A0 03 00     MX
    LDA [$D0],Y                     ; $80B6EB  B7 D0        MX
    STA $0050                       ; $80B6ED  8D 50 00     MX
    LDY #$0006                      ; $80B6F0  A0 06 00     MX
    LDA [$D0],Y                     ; $80B6F3  B7 D0        MX
    STA $0054                       ; $80B6F5  8D 54 00     MX
    STA $005A                       ; $80B6F8  8D 5A 00     MX
    CLC                             ; $80B6FB  18           MX
    ADC $0050                       ; $80B6FC  6D 50 00     MX
    STA $0056                       ; $80B6FF  8D 56 00     MX
    LDY #$0000                      ; $80B702  A0 00 00     MX
    LDA [$D3],Y                     ; $80B705  B7 D3        MX
    STA $0832                       ; $80B707  8D 32 08     MX
    AND #$001F                      ; $80B70A  29 1F 00     MX
    CLC                             ; $80B70D  18           MX
    ADC $08AC                       ; $80B70E  6D AC 08     MX
    TXY                             ; $80B711  9B           MX
    TAX                             ; $80B712  AA           MX
    LDA $AAF85C,X                   ; $80B713  BF 5C F8 AA  MX
    TYX                             ; $80B717  BB           MX
    STA $0C6B                       ; $80B718  8D 6B 0C     MX
    CLC                             ; $80B71B  18           MX
    ADC $0C6E                       ; $80B71C  6D 6E 0C     MX
    STA $0C70                       ; $80B71F  8D 70 0C     MX
L_80B722:
    LDY #$0002                      ; $80B722  A0 02 00     MX
    LDA [$D3],Y                     ; $80B725  B7 D3        MX
    STA $0834                       ; $80B727  8D 34 08     MX
    LDY #$0004                      ; $80B72A  A0 04 00     MX
    LDA [$D3],Y                     ; $80B72D  B7 D3        MX
    STA $0836                       ; $80B72F  8D 36 08     MX
    LDY #$0006                      ; $80B732  A0 06 00     MX
    LDA [$D3],Y                     ; $80B735  B7 D3        MX
    STA $0838                       ; $80B737  8D 38 08     MX
    LDA $08A2                       ; $80B73A  AD A2 08     MX
    BEQ L_80B747                    ; $80B73D  F0 08        MX
    LDA #$2880                      ; $80B73F  A9 80 28     MX
    STA $00D1                       ; $80B742  8D D1 00     MX
    BRA L_80B74D                    ; $80B745  80 06        MX
L_80B747:
    LDA #$2580                      ; $80B747  A9 80 25     MX
    STA $00D1                       ; $80B74A  8D D1 00     MX
L_80B74D:
    LDA $A58000,X                   ; $80B74D  BF 00 80 A5  MX
    CLC                             ; $80B751  18           MX
    ADC $07E6                       ; $80B752  6D E6 07     MX
    STA $00D0                       ; $80B755  8D D0 00     MX
    LDY #$0006                      ; $80B758  A0 06 00     MX
    LDA [$D0],Y                     ; $80B75B  B7 D0        MX
    STA $0828                       ; $80B75D  8D 28 08     MX
    JMP L_80BC20                    ; $80B760  4C 20 BC     MX
L_80B763:
    LDA $08EE                       ; $80B763  AD EE 08     MX
    STA $00D0                       ; $80B766  8D D0 00     MX
    LDA $08F6                       ; $80B769  AD F6 08     MX
    STA $00D3                       ; $80B76C  8D D3 00     MX
    LDA $0922                       ; $80B76F  AD 22 09     MX
    STA $00E2                       ; $80B772  8D E2 00     MX
    LDA #$0374                      ; $80B775  A9 74 03     MX
    STA $00E5                       ; $80B778  8D E5 00     MX
    JSR L_80AEFD                    ; $80B77B  20 FD AE     MX
    STA $0926                       ; $80B77E  8D 26 09     MX
    LDA $00D3                       ; $80B781  AD D3 00     MX
    STA $0924                       ; $80B784  8D 24 09     MX
    LDA $08EE                       ; $80B787  AD EE 08     MX
    STA $00D0                       ; $80B78A  8D D0 00     MX
    LDA $08F6                       ; $80B78D  AD F6 08     MX
    STA $00D3                       ; $80B790  8D D3 00     MX
    LDA $0752                       ; $80B793  AD 52 07     MX
    STA $00E2                       ; $80B796  8D E2 00     MX
    LDA #$0374                      ; $80B799  A9 74 03     MX
    STA $00E5                       ; $80B79C  8D E5 00     MX
    JSR L_80AEFD                    ; $80B79F  20 FD AE     MX
    STA $092A                       ; $80B7A2  8D 2A 09     MX
    LDA $00D3                       ; $80B7A5  AD D3 00     MX
    STA $0928                       ; $80B7A8  8D 28 09     MX
    LDA $08C0                       ; $80B7AB  AD C0 08     MX
    CMP $0C19                       ; $80B7AE  CD 19 0C     MX
    BEQ L_80B7D7                    ; $80B7B1  F0 24        MX
    LDA $08EE                       ; $80B7B3  AD EE 08     MX
    STA $00D0                       ; $80B7B6  8D D0 00     MX
    LDA $08F6                       ; $80B7B9  AD F6 08     MX
    STA $00D3                       ; $80B7BC  8D D3 00     MX
    LDA $0BD9                       ; $80B7BF  AD D9 0B     MX
    STA $00E2                       ; $80B7C2  8D E2 00     MX
    LDA $0BE1                       ; $80B7C5  AD E1 0B     MX
    STA $00E5                       ; $80B7C8  8D E5 00     MX
    JSR L_80AEFD                    ; $80B7CB  20 FD AE     MX
    STA $092E                       ; $80B7CE  8D 2E 09     MX
    LDA $00D3                       ; $80B7D1  AD D3 00     MX
    STA $092C                       ; $80B7D4  8D 2C 09     MX
L_80B7D7:
    LDA $08EE                       ; $80B7D7  AD EE 08     MX
    STA $00D0                       ; $80B7DA  8D D0 00     MX
    LDA $08F6                       ; $80B7DD  AD F6 08     MX
    STA $00D3                       ; $80B7E0  8D D3 00     MX
    LDA $09D6                       ; $80B7E3  AD D6 09     MX
    STA $00E2                       ; $80B7E6  8D E2 00     MX
    LDA $09DE                       ; $80B7E9  AD DE 09     MX
    STA $00E5                       ; $80B7EC  8D E5 00     MX
    JSR L_80AEFD                    ; $80B7EF  20 FD AE     MX
    STA $0930                       ; $80B7F2  8D 30 09     MX
    LDA $00D3                       ; $80B7F5  AD D3 00     MX
    STA $0936                       ; $80B7F8  8D 36 09     MX
    LDA $08EE                       ; $80B7FB  AD EE 08     MX
    STA $00D0                       ; $80B7FE  8D D0 00     MX
    LDA $08F6                       ; $80B801  AD F6 08     MX
    STA $00D3                       ; $80B804  8D D3 00     MX
    LDA $071E                       ; $80B807  AD 1E 07     MX
    STA $00E2                       ; $80B80A  8D E2 00     MX
    LDA $0726                       ; $80B80D  AD 26 07     MX
    STA $00E5                       ; $80B810  8D E5 00     MX
    JSR L_80AEFD                    ; $80B813  20 FD AE     MX
    STA $0932                       ; $80B816  8D 32 09     MX
    LDA $00D3                       ; $80B819  AD D3 00     MX
    STA $0938                       ; $80B81C  8D 38 09     MX
    LDA $08EE                       ; $80B81F  AD EE 08     MX
    STA $00D0                       ; $80B822  8D D0 00     MX
    LDA $08F6                       ; $80B825  AD F6 08     MX
    STA $00D3                       ; $80B828  8D D3 00     MX
    LDA $0806                       ; $80B82B  AD 06 08     MX
    STA $00E2                       ; $80B82E  8D E2 00     MX
    LDA $080E                       ; $80B831  AD 0E 08     MX
    STA $00E5                       ; $80B834  8D E5 00     MX
    JSR L_80AEFD                    ; $80B837  20 FD AE     MX
    STA $0934                       ; $80B83A  8D 34 09     MX
    LDA $00D3                       ; $80B83D  AD D3 00     MX
    STA $093A                       ; $80B840  8D 3A 09     MX
    LDA $08C0                       ; $80B843  AD C0 08     MX
    CMP $0C19                       ; $80B846  CD 19 0C     MX
    BNE L_80B8B5                    ; $80B849  D0 6A        MX
    LDX $08D0                       ; $80B84B  AE D0 08     MX
    LDA $098A                       ; $80B84E  AD 8A 09     MX
    BEQ L_80B885                    ; $80B851  F0 32        MX
    LDA #$2800                      ; $80B853  A9 00 28     MX
    STA $00D1                       ; $80B856  8D D1 00     MX
    LDA $A88000,X                   ; $80B859  BF 00 80 A8  MX
    CLC                             ; $80B85D  18           MX
    ADC $08CE                       ; $80B85E  6D CE 08     MX
    STA $00D0                       ; $80B861  8D D0 00     MX
    LDY #$0000                      ; $80B864  A0 00 00     MX
    LDA [$D0],Y                     ; $80B867  B7 D0        MX
    STA $0BEF                       ; $80B869  8D EF 0B     MX
    LDY #$0002                      ; $80B86C  A0 02 00     MX
    LDA [$D0],Y                     ; $80B86F  B7 D0        MX
    STA $0BF1                       ; $80B871  8D F1 0B     MX
    LDY #$0004                      ; $80B874  A0 04 00     MX
    LDA [$D0],Y                     ; $80B877  B7 D0        MX
    STA $0BF5                       ; $80B879  8D F5 0B     MX
    CLC                             ; $80B87C  18           MX
    ADC $08E8                       ; $80B87D  6D E8 08     MX
    STA $0BF3                       ; $80B880  8D F3 0B     MX
    BRA L_80B8B5                    ; $80B883  80 30        MX
L_80B885:
    LDA #$2500                      ; $80B885  A9 00 25     MX
    STA $00D1                       ; $80B888  8D D1 00     MX
    LDA $A58000,X                   ; $80B88B  BF 00 80 A5  MX
    CLC                             ; $80B88F  18           MX
    ADC $08CE                       ; $80B890  6D CE 08     MX
    STA $00D0                       ; $80B893  8D D0 00     MX
    LDY #$0000                      ; $80B896  A0 00 00     MX
    LDA [$D0],Y                     ; $80B899  B7 D0        MX
    STA $0BEF                       ; $80B89B  8D EF 0B     MX
    LDY #$0002                      ; $80B89E  A0 02 00     MX
    LDA [$D0],Y                     ; $80B8A1  B7 D0        MX
    STA $0BF1                       ; $80B8A3  8D F1 0B     MX
    LDY #$0004                      ; $80B8A6  A0 04 00     MX
    LDA [$D0],Y                     ; $80B8A9  B7 D0        MX
    STA $0BF5                       ; $80B8AB  8D F5 0B     MX
    CLC                             ; $80B8AE  18           MX
    ADC $08E8                       ; $80B8AF  6D E8 08     MX
    STA $0BF3                       ; $80B8B2  8D F3 0B     MX
L_80B8B5:
    LDA $099D                       ; $80B8B5  AD 9D 09     MX
    STA $00D1                       ; $80B8B8  8D D1 00     MX
    LDA $099C                       ; $80B8BB  AD 9C 09     MX
    STA $00D0                       ; $80B8BE  8D D0 00     MX
    LDA $08D8                       ; $80B8C1  AD D8 08     MX
    STA $08DC                       ; $80B8C4  8D DC 08     MX
    LDX $08D0                       ; $80B8C7  AE D0 08     MX
    LDA $A48000,X                   ; $80B8CA  BF 00 80 A4  MX
    CLC                             ; $80B8CE  18           MX
    ADC $08CE                       ; $80B8CF  6D CE 08     MX
    STA $0996                       ; $80B8D2  8D 96 09     MX
    LDA $0997                       ; $80B8D5  AD 97 09     MX
    STA $00D4                       ; $80B8D8  8D D4 00     MX
    LDA $0996                       ; $80B8DB  AD 96 09     MX
    STA $00D3                       ; $80B8DE  8D D3 00     MX
    LDY #$0000                      ; $80B8E1  A0 00 00     MX
    LDA [$D0],Y                     ; $80B8E4  B7 D0        MX
    CMP $003C                       ; $80B8E6  CD 3C 00     MX
    BNE L_80B8F6                    ; $80B8E9  D0 0B        MX
    INY                             ; $80B8EB  C8           MX
    LDA [$D0],Y                     ; $80B8EC  B7 D0        MX
    CMP $003D                       ; $80B8EE  CD 3D 00     MX
    BNE L_80B8FC                    ; $80B8F1  D0 09        MX
    JMP L_80B982                    ; $80B8F3  4C 82 B9     MX
L_80B8F6:
    STA $003C                       ; $80B8F6  8D 3C 00     MX
    INY                             ; $80B8F9  C8           MX
    LDA [$D0],Y                     ; $80B8FA  B7 D0        MX
L_80B8FC:
    STA $003D                       ; $80B8FC  8D 3D 00     MX
    LDA [$D0]                       ; $80B8FF  A7 D0        MX
    STA $00D6                       ; $80B901  8D D6 00     MX
    LDY #$0001                      ; $80B904  A0 01 00     MX
    LDA [$D0],Y                     ; $80B907  B7 D0        MX
    STA $00D7                       ; $80B909  8D D7 00     MX
    LDY #$0003                      ; $80B90C  A0 03 00     MX
    LDA [$D6],Y                     ; $80B90F  B7 D6        MX
    AND #$00FF                      ; $80B911  29 FF 00     MX
    STA $00E8                       ; $80B914  8D E8 00     MX
    LDY #$0002                      ; $80B917  A0 02 00     MX
    LDA [$D6],Y                     ; $80B91A  B7 D6        MX
    AND #$0001                      ; $80B91C  29 01 00     MX
    CLC                             ; $80B91F  18           MX
    BNE L_80B92A                    ; $80B920  D0 08        MX
    LDA $00E8                       ; $80B922  AD E8 00     MX
    ADC #$0008                      ; $80B925  69 08 00     MX
    BRA L_80B930                    ; $80B928  80 06        MX
L_80B92A:
    LDA $00E8                       ; $80B92A  AD E8 00     MX
    ADC #$0010                      ; $80B92D  69 10 00     MX
L_80B930:
    LDY #$0005                      ; $80B930  A0 05 00     MX
    ADC [$D6],Y                     ; $80B933  77 D6        MX
    LSR                             ; $80B935  4A           MX
    STA $0914                       ; $80B936  8D 14 09     MX
    SEP #$20                        ; $80B939  E2 20        MX
    LDY #$0005                      ; $80B93B  A0 05 00     mX
    LDA [$D0],Y                     ; $80B93E  B7 D0        mX
    STA $005E                       ; $80B940  8D 5E 00     mX
    STA $0064                       ; $80B943  8D 64 00     mX
    REP #$20                        ; $80B946  C2 20        mX
    LDY #$0003                      ; $80B948  A0 03 00     MX
    LDA [$D0],Y                     ; $80B94B  B7 D0        MX
    STA $005C                       ; $80B94D  8D 5C 00     MX
    LDY #$0006                      ; $80B950  A0 06 00     MX
    LDA [$D0],Y                     ; $80B953  B7 D0        MX
    STA $0060                       ; $80B955  8D 60 00     MX
    STA $0066                       ; $80B958  8D 66 00     MX
    CLC                             ; $80B95B  18           MX
    ADC $005C                       ; $80B95C  6D 5C 00     MX
    STA $0062                       ; $80B95F  8D 62 00     MX
    LDY #$0000                      ; $80B962  A0 00 00     MX
    LDA [$D3],Y                     ; $80B965  B7 D3        MX
    STA $091A                       ; $80B967  8D 1A 09     MX
    AND #$001F                      ; $80B96A  29 1F 00     MX
    CLC                             ; $80B96D  18           MX
    ADC $0994                       ; $80B96E  6D 94 09     MX
    TXY                             ; $80B971  9B           MX
    TAX                             ; $80B972  AA           MX
    LDA $AAF85C,X                   ; $80B973  BF 5C F8 AA  MX
    TYX                             ; $80B977  BB           MX
    STA $0C75                       ; $80B978  8D 75 0C     MX
    CLC                             ; $80B97B  18           MX
    ADC $0C78                       ; $80B97C  6D 78 0C     MX
    STA $0C7A                       ; $80B97F  8D 7A 0C     MX
L_80B982:
    LDY #$0002                      ; $80B982  A0 02 00     MX
    LDA [$D3],Y                     ; $80B985  B7 D3        MX
    STA $091C                       ; $80B987  8D 1C 09     MX
    LDY #$0004                      ; $80B98A  A0 04 00     MX
    LDA [$D3],Y                     ; $80B98D  B7 D3        MX
    STA $091E                       ; $80B98F  8D 1E 09     MX
    LDY #$0006                      ; $80B992  A0 06 00     MX
    LDA [$D3],Y                     ; $80B995  B7 D3        MX
    STA $0920                       ; $80B997  8D 20 09     MX
    LDA $098A                       ; $80B99A  AD 8A 09     MX
    BEQ L_80B9A7                    ; $80B99D  F0 08        MX
    LDA #$2880                      ; $80B99F  A9 80 28     MX
    STA $00D1                       ; $80B9A2  8D D1 00     MX
    BRA L_80B9AD                    ; $80B9A5  80 06        MX
L_80B9A7:
    LDA #$2580                      ; $80B9A7  A9 80 25     MX
    STA $00D1                       ; $80B9AA  8D D1 00     MX
L_80B9AD:
    LDA $A58000,X                   ; $80B9AD  BF 00 80 A5  MX
    CLC                             ; $80B9B1  18           MX
    ADC $08CE                       ; $80B9B2  6D CE 08     MX
    STA $00D0                       ; $80B9B5  8D D0 00     MX
    LDY #$0006                      ; $80B9B8  A0 06 00     MX
    LDA [$D0],Y                     ; $80B9BB  B7 D0        MX
    STA $0910                       ; $80B9BD  8D 10 09     MX
    JMP L_80BC20                    ; $80B9C0  4C 20 BC     MX
L_80B9C3:
    LDA $09D6                       ; $80B9C3  AD D6 09     MX
    STA $00D0                       ; $80B9C6  8D D0 00     MX
    LDA $09DE                       ; $80B9C9  AD DE 09     MX
    STA $00D3                       ; $80B9CC  8D D3 00     MX
    LDA $0A0A                       ; $80B9CF  AD 0A 0A     MX
    STA $00E2                       ; $80B9D2  8D E2 00     MX
    LDA #$0374                      ; $80B9D5  A9 74 03     MX
    STA $00E5                       ; $80B9D8  8D E5 00     MX
    JSR L_80AEFD                    ; $80B9DB  20 FD AE     MX
    STA $0A0E                       ; $80B9DE  8D 0E 0A     MX
    LDA $00D3                       ; $80B9E1  AD D3 00     MX
    STA $0A0C                       ; $80B9E4  8D 0C 0A     MX
    LDA $09D6                       ; $80B9E7  AD D6 09     MX
    STA $00D0                       ; $80B9EA  8D D0 00     MX
    LDA $09DE                       ; $80B9ED  AD DE 09     MX
    STA $00D3                       ; $80B9F0  8D D3 00     MX
    LDA $083A                       ; $80B9F3  AD 3A 08     MX
    STA $00E2                       ; $80B9F6  8D E2 00     MX
    LDA #$0374                      ; $80B9F9  A9 74 03     MX
    STA $00E5                       ; $80B9FC  8D E5 00     MX
    JSR L_80AEFD                    ; $80B9FF  20 FD AE     MX
    STA $0A12                       ; $80BA02  8D 12 0A     MX
    LDA $00D3                       ; $80BA05  AD D3 00     MX
    STA $0A10                       ; $80BA08  8D 10 0A     MX
    LDA $09A8                       ; $80BA0B  AD A8 09     MX
    CMP $0C19                       ; $80BA0E  CD 19 0C     MX
    BEQ L_80BA37                    ; $80BA11  F0 24        MX
    LDA $09D6                       ; $80BA13  AD D6 09     MX
    STA $00D0                       ; $80BA16  8D D0 00     MX
    LDA $09DE                       ; $80BA19  AD DE 09     MX
    STA $00D3                       ; $80BA1C  8D D3 00     MX
    LDA $0BD9                       ; $80BA1F  AD D9 0B     MX
    STA $00E2                       ; $80BA22  8D E2 00     MX
    LDA $0BE1                       ; $80BA25  AD E1 0B     MX
    STA $00E5                       ; $80BA28  8D E5 00     MX
    JSR L_80AEFD                    ; $80BA2B  20 FD AE     MX
    STA $0A16                       ; $80BA2E  8D 16 0A     MX
    LDA $00D3                       ; $80BA31  AD D3 00     MX
    STA $0A14                       ; $80BA34  8D 14 0A     MX
L_80BA37:
    LDA $09D6                       ; $80BA37  AD D6 09     MX
    STA $00D0                       ; $80BA3A  8D D0 00     MX
    LDA $09DE                       ; $80BA3D  AD DE 09     MX
    STA $00D3                       ; $80BA40  8D D3 00     MX
    LDA $08EE                       ; $80BA43  AD EE 08     MX
    STA $00E2                       ; $80BA46  8D E2 00     MX
    LDA $08F6                       ; $80BA49  AD F6 08     MX
    STA $00E5                       ; $80BA4C  8D E5 00     MX
    JSR L_80AEFD                    ; $80BA4F  20 FD AE     MX
    STA $0A18                       ; $80BA52  8D 18 0A     MX
    LDA $00D3                       ; $80BA55  AD D3 00     MX
    STA $0A1E                       ; $80BA58  8D 1E 0A     MX
    LDA $09D6                       ; $80BA5B  AD D6 09     MX
    STA $00D0                       ; $80BA5E  8D D0 00     MX
    LDA $09DE                       ; $80BA61  AD DE 09     MX
    STA $00D3                       ; $80BA64  8D D3 00     MX
    LDA $0806                       ; $80BA67  AD 06 08     MX
    STA $00E2                       ; $80BA6A  8D E2 00     MX
    LDA $080E                       ; $80BA6D  AD 0E 08     MX
    STA $00E5                       ; $80BA70  8D E5 00     MX
    JSR L_80AEFD                    ; $80BA73  20 FD AE     MX
    STA $0A1A                       ; $80BA76  8D 1A 0A     MX
    LDA $00D3                       ; $80BA79  AD D3 00     MX
    STA $0A20                       ; $80BA7C  8D 20 0A     MX
    LDA $09D6                       ; $80BA7F  AD D6 09     MX
    STA $00D0                       ; $80BA82  8D D0 00     MX
    LDA $09DE                       ; $80BA85  AD DE 09     MX
    STA $00D3                       ; $80BA88  8D D3 00     MX
    LDA $071E                       ; $80BA8B  AD 1E 07     MX
    STA $00E2                       ; $80BA8E  8D E2 00     MX
    LDA $0726                       ; $80BA91  AD 26 07     MX
    STA $00E5                       ; $80BA94  8D E5 00     MX
    JSR L_80AEFD                    ; $80BA97  20 FD AE     MX
    STA $0A1C                       ; $80BA9A  8D 1C 0A     MX
    LDA $00D3                       ; $80BA9D  AD D3 00     MX
    STA $0A22                       ; $80BAA0  8D 22 0A     MX
    LDA $09A8                       ; $80BAA3  AD A8 09     MX
    CMP $0C19                       ; $80BAA6  CD 19 0C     MX
    BNE L_80BB15                    ; $80BAA9  D0 6A        MX
    LDX $09B8                       ; $80BAAB  AE B8 09     MX
    LDA $0A72                       ; $80BAAE  AD 72 0A     MX
    BEQ L_80BAE5                    ; $80BAB1  F0 32        MX
    LDA #$2800                      ; $80BAB3  A9 00 28     MX
    STA $00D1                       ; $80BAB6  8D D1 00     MX
    LDA $A88000,X                   ; $80BAB9  BF 00 80 A8  MX
    CLC                             ; $80BABD  18           MX
    ADC $09B6                       ; $80BABE  6D B6 09     MX
    STA $00D0                       ; $80BAC1  8D D0 00     MX
    LDY #$0000                      ; $80BAC4  A0 00 00     MX
    LDA [$D0],Y                     ; $80BAC7  B7 D0        MX
    STA $0BEF                       ; $80BAC9  8D EF 0B     MX
    LDY #$0002                      ; $80BACC  A0 02 00     MX
    LDA [$D0],Y                     ; $80BACF  B7 D0        MX
    STA $0BF1                       ; $80BAD1  8D F1 0B     MX
    LDY #$0004                      ; $80BAD4  A0 04 00     MX
    LDA [$D0],Y                     ; $80BAD7  B7 D0        MX
    STA $0BF5                       ; $80BAD9  8D F5 0B     MX
    CLC                             ; $80BADC  18           MX
    ADC $09D0                       ; $80BADD  6D D0 09     MX
    STA $0BF3                       ; $80BAE0  8D F3 0B     MX
    BRA L_80BB15                    ; $80BAE3  80 30        MX
L_80BAE5:
    LDA #$2500                      ; $80BAE5  A9 00 25     MX
    STA $00D1                       ; $80BAE8  8D D1 00     MX
    LDA $A58000,X                   ; $80BAEB  BF 00 80 A5  MX
    CLC                             ; $80BAEF  18           MX
    ADC $09B6                       ; $80BAF0  6D B6 09     MX
    STA $00D0                       ; $80BAF3  8D D0 00     MX
    LDY #$0000                      ; $80BAF6  A0 00 00     MX
    LDA [$D0],Y                     ; $80BAF9  B7 D0        MX
    STA $0BEF                       ; $80BAFB  8D EF 0B     MX
    LDY #$0002                      ; $80BAFE  A0 02 00     MX
    LDA [$D0],Y                     ; $80BB01  B7 D0        MX
    STA $0BF1                       ; $80BB03  8D F1 0B     MX
    LDY #$0004                      ; $80BB06  A0 04 00     MX
    LDA [$D0],Y                     ; $80BB09  B7 D0        MX
    STA $0BF5                       ; $80BB0B  8D F5 0B     MX
    CLC                             ; $80BB0E  18           MX
    ADC $09D0                       ; $80BB0F  6D D0 09     MX
    STA $0BF3                       ; $80BB12  8D F3 0B     MX
L_80BB15:
    LDA $0A85                       ; $80BB15  AD 85 0A     MX
    STA $00D1                       ; $80BB18  8D D1 00     MX
    LDA $0A84                       ; $80BB1B  AD 84 0A     MX
    STA $00D0                       ; $80BB1E  8D D0 00     MX
    LDA $09C0                       ; $80BB21  AD C0 09     MX
    STA $09C4                       ; $80BB24  8D C4 09     MX
    LDX $09B8                       ; $80BB27  AE B8 09     MX
    LDA $A48000,X                   ; $80BB2A  BF 00 80 A4  MX
    CLC                             ; $80BB2E  18           MX
    ADC $09B6                       ; $80BB2F  6D B6 09     MX
    STA $0A7E                       ; $80BB32  8D 7E 0A     MX
    LDA $0A7F                       ; $80BB35  AD 7F 0A     MX
    STA $00D4                       ; $80BB38  8D D4 00     MX
    LDA $0A7E                       ; $80BB3B  AD 7E 0A     MX
    STA $00D3                       ; $80BB3E  8D D3 00     MX
    LDY #$0000                      ; $80BB41  A0 00 00     MX
    LDA [$D0],Y                     ; $80BB44  B7 D0        MX
    CMP $0040                       ; $80BB46  CD 40 00     MX
    BNE L_80BB56                    ; $80BB49  D0 0B        MX
    INY                             ; $80BB4B  C8           MX
    LDA [$D0],Y                     ; $80BB4C  B7 D0        MX
    CMP $0041                       ; $80BB4E  CD 41 00     MX
    BNE L_80BB5C                    ; $80BB51  D0 09        MX
    JMP L_80BBE2                    ; $80BB53  4C E2 BB     MX
L_80BB56:
    STA $0040                       ; $80BB56  8D 40 00     MX
    INY                             ; $80BB59  C8           MX
    LDA [$D0],Y                     ; $80BB5A  B7 D0        MX
L_80BB5C:
    STA $0041                       ; $80BB5C  8D 41 00     MX
    LDA [$D0]                       ; $80BB5F  A7 D0        MX
    STA $00D6                       ; $80BB61  8D D6 00     MX
    LDY #$0001                      ; $80BB64  A0 01 00     MX
    LDA [$D0],Y                     ; $80BB67  B7 D0        MX
    STA $00D7                       ; $80BB69  8D D7 00     MX
    LDY #$0003                      ; $80BB6C  A0 03 00     MX
    LDA [$D6],Y                     ; $80BB6F  B7 D6        MX
    AND #$00FF                      ; $80BB71  29 FF 00     MX
    STA $00E8                       ; $80BB74  8D E8 00     MX
    LDY #$0002                      ; $80BB77  A0 02 00     MX
    LDA [$D6],Y                     ; $80BB7A  B7 D6        MX
    AND #$0001                      ; $80BB7C  29 01 00     MX
    CLC                             ; $80BB7F  18           MX
    BNE L_80BB8A                    ; $80BB80  D0 08        MX
    LDA $00E8                       ; $80BB82  AD E8 00     MX
    ADC #$0008                      ; $80BB85  69 08 00     MX
    BRA L_80BB90                    ; $80BB88  80 06        MX
L_80BB8A:
    LDA $00E8                       ; $80BB8A  AD E8 00     MX
    ADC #$0010                      ; $80BB8D  69 10 00     MX
L_80BB90:
    LDY #$0005                      ; $80BB90  A0 05 00     MX
    ADC [$D6],Y                     ; $80BB93  77 D6        MX
    LSR                             ; $80BB95  4A           MX
    STA $09FC                       ; $80BB96  8D FC 09     MX
    SEP #$20                        ; $80BB99  E2 20        MX
    LDY #$0005                      ; $80BB9B  A0 05 00     mX
    LDA [$D0],Y                     ; $80BB9E  B7 D0        mX
    STA $006A                       ; $80BBA0  8D 6A 00     mX
    STA $0070                       ; $80BBA3  8D 70 00     mX
    REP #$20                        ; $80BBA6  C2 20        mX
    LDY #$0003                      ; $80BBA8  A0 03 00     MX
    LDA [$D0],Y                     ; $80BBAB  B7 D0        MX
    STA $0068                       ; $80BBAD  8D 68 00     MX
    LDY #$0006                      ; $80BBB0  A0 06 00     MX
    LDA [$D0],Y                     ; $80BBB3  B7 D0        MX
    STA $006C                       ; $80BBB5  8D 6C 00     MX
    STA $0072                       ; $80BBB8  8D 72 00     MX
    CLC                             ; $80BBBB  18           MX
    ADC $0068                       ; $80BBBC  6D 68 00     MX
    STA $006E                       ; $80BBBF  8D 6E 00     MX
    LDY #$0000                      ; $80BBC2  A0 00 00     MX
    LDA [$D3],Y                     ; $80BBC5  B7 D3        MX
    STA $0A02                       ; $80BBC7  8D 02 0A     MX
    AND #$001F                      ; $80BBCA  29 1F 00     MX
    CLC                             ; $80BBCD  18           MX
    ADC $0A7C                       ; $80BBCE  6D 7C 0A     MX
    TXY                             ; $80BBD1  9B           MX
    TAX                             ; $80BBD2  AA           MX
    LDA $AAF85C,X                   ; $80BBD3  BF 5C F8 AA  MX
    TYX                             ; $80BBD7  BB           MX
    STA $0C7F                       ; $80BBD8  8D 7F 0C     MX
    CLC                             ; $80BBDB  18           MX
    ADC $0C82                       ; $80BBDC  6D 82 0C     MX
    STA $0C84                       ; $80BBDF  8D 84 0C     MX
L_80BBE2:
    LDY #$0002                      ; $80BBE2  A0 02 00     MX
    LDA [$D3],Y                     ; $80BBE5  B7 D3        MX
    STA $0A04                       ; $80BBE7  8D 04 0A     MX
    LDY #$0004                      ; $80BBEA  A0 04 00     MX
    LDA [$D3],Y                     ; $80BBED  B7 D3        MX
    STA $0A06                       ; $80BBEF  8D 06 0A     MX
    LDY #$0006                      ; $80BBF2  A0 06 00     MX
    LDA [$D3],Y                     ; $80BBF5  B7 D3        MX
    STA $0A08                       ; $80BBF7  8D 08 0A     MX
    LDA $0A72                       ; $80BBFA  AD 72 0A     MX
    BEQ L_80BC07                    ; $80BBFD  F0 08        MX
    LDA #$2880                      ; $80BBFF  A9 80 28     MX
    STA $00D1                       ; $80BC02  8D D1 00     MX
    BRA L_80BC0D                    ; $80BC05  80 06        MX
L_80BC07:
    LDA #$2580                      ; $80BC07  A9 80 25     MX
    STA $00D1                       ; $80BC0A  8D D1 00     MX
L_80BC0D:
    LDA $A58000,X                   ; $80BC0D  BF 00 80 A5  MX
    CLC                             ; $80BC11  18           MX
    ADC $09B6                       ; $80BC12  6D B6 09     MX
    STA $00D0                       ; $80BC15  8D D0 00     MX
    LDY #$0006                      ; $80BC18  A0 06 00     MX
    LDA [$D0],Y                     ; $80BC1B  B7 D0        MX
    STA $09F8                       ; $80BC1D  8D F8 09     MX
L_80BC20:
    LDA $0006                       ; $80BC20  AD 06 00     MX
    AND #$0003                      ; $80BC23  29 03 00     MX
    BNE L_80BC2B                    ; $80BC26  D0 03        MX
    JMP L_80BD06                    ; $80BC28  4C 06 BD     MX
L_80BC2B:
    CMP #$0001                      ; $80BC2B  C9 01 00     MX
    BEQ L_80BC9B                    ; $80BC2E  F0 6B        MX
    CMP #$0002                      ; $80BC30  C9 02 00     MX
    BEQ L_80BC38                    ; $80BC33  F0 03        MX
    JMP L_80BD94                    ; $80BC35  4C 94 BD     MX
L_80BC38:
    LDA $0C3D                       ; $80BC38  AD 3D 0C     MX
    BEQ L_80BC4C                    ; $80BC3B  F0 0F        MX
    AND #$0004                      ; $80BC3D  29 04 00     MX
    BNE L_80BC47                    ; $80BC40  D0 05        MX
    LDA $0C13                       ; $80BC42  AD 13 0C     MX
    BRA L_80BC54                    ; $80BC45  80 0D        MX
L_80BC47:
    LDA #$0030                      ; $80BC47  A9 30 00     MX
    BRA L_80BC6F                    ; $80BC4A  80 23        MX
L_80BC4C:
    LDA $0C13                       ; $80BC4C  AD 13 0C     MX
    CMP $0C15                       ; $80BC4F  CD 15 0C     MX
    BEQ L_80BC98                    ; $80BC52  F0 44        MX
L_80BC54:
    STA $0C15                       ; $80BC54  8D 15 0C     MX
    AND #$00FC                      ; $80BC57  29 FC 00     MX
    SEP #$10                        ; $80BC5A  E2 10        MX
    LDX $0A96                       ; $80BC5C  AE 96 0A     Mx
    BEQ L_80BC72                    ; $80BC5F  F0 11        Mx
    CPX $0C19                       ; $80BC61  EC 19 0C     Mx
    BEQ L_80BC6B                    ; $80BC64  F0 05        Mx
    CPX $0C1F                       ; $80BC66  EC 1F 0C     Mx
    BNE L_80BC72                    ; $80BC69  D0 07        Mx
L_80BC6B:
    CLC                             ; $80BC6B  18           Mx
    ADC #$0018                      ; $80BC6C  69 18 00     Mx
L_80BC6F:
    STA $0C15                       ; $80BC6F  8D 15 0C     Mx
L_80BC72:
    REP #$10                        ; $80BC72  C2 10        Mx
    ASL                             ; $80BC74  0A           MX
    TAX                             ; $80BC75  AA           MX
    LDA $C0A9,X                     ; $80BC76  BD A9 C0     MX
    STA $009C                       ; $80BC79  8D 9C 00     MX
    STA $00A2                       ; $80BC7C  8D A2 00     MX
    LDA $C0A5,X                     ; $80BC7F  BD A5 C0     MX
    STA $0098                       ; $80BC82  8D 98 00     MX
    CLC                             ; $80BC85  18           MX
    ADC $009C                       ; $80BC86  6D 9C 00     MX
    STA $009E                       ; $80BC89  8D 9E 00     MX
    LDA $C0A7,X                     ; $80BC8C  BD A7 C0     MX
    LDA #$0028                      ; $80BC8F  A9 28 00     MX
    STA $009A                       ; $80BC92  8D 9A 00     MX
    STA $00A0                       ; $80BC95  8D A0 00     MX
L_80BC98:
    JMP L_80BD94                    ; $80BC98  4C 94 BD     MX
L_80BC9B:
    LDA $0B6C                       ; $80BC9B  AD 6C 0B     MX
    BNE L_80BD03                    ; $80BC9E  D0 63        MX
    LDA $0E89                       ; $80BCA0  AD 89 0E     MX
    CMP #$0080                      ; $80BCA3  C9 80 00     MX
    BCC L_80BCC2                    ; $80BCA6  90 1A        MX
    SEC                             ; $80BCA8  38           MX
    SBC #$01A6                      ; $80BCA9  E9 A6 01     MX
    BCC L_80BCDE                    ; $80BCAC  90 30        MX
    AND #$007F                      ; $80BCAE  29 7F 00     MX
    LSR                             ; $80BCB1  4A           MX
    LSR                             ; $80BCB2  4A           MX
    LSR                             ; $80BCB3  4A           MX
    STA $00E8                       ; $80BCB4  8D E8 00     MX
    LDA #$000F                      ; $80BCB7  A9 0F 00     MX
    SEC                             ; $80BCBA  38           MX
    SBC $00E8                       ; $80BCBB  ED E8 00     MX
    ASL                             ; $80BCBE  0A           MX
    JMP L_80BCC6                    ; $80BCBF  4C C6 BC     MX
L_80BCC2:
    LSR                             ; $80BCC2  4A           MX
    LSR                             ; $80BCC3  4A           MX
    LSR                             ; $80BCC4  4A           MX
    ASL                             ; $80BCC5  0A           MX
L_80BCC6:
    TAX                             ; $80BCC6  AA           MX
    LDA $C135,X                     ; $80BCC7  BD 35 C1     MX
    LDX $15E5                       ; $80BCCA  AE E5 15     MX
    BEQ L_80BCD3                    ; $80BCCD  F0 04        MX
    CLC                             ; $80BCCF  18           MX
    ADC #$0005                      ; $80BCD0  69 05 00     MX
L_80BCD3:
    CMP $0C47                       ; $80BCD3  CD 47 0C     MX
    BNE L_80BCDB                    ; $80BCD6  D0 03        MX
    JMP L_80BD94                    ; $80BCD8  4C 94 BD     MX
L_80BCDB:
    STA $0C47                       ; $80BCDB  8D 47 0C     MX
L_80BCDE:
    LDA $0C47                       ; $80BCDE  AD 47 0C     MX
    ASL                             ; $80BCE1  0A           MX
    ASL                             ; $80BCE2  0A           MX
    TAX                             ; $80BCE3  AA           MX
    LDA #$0004                      ; $80BCE4  A9 04 00     MX
    STA $0076                       ; $80BCE7  8D 76 00     MX
    STA $007C                       ; $80BCEA  8D 7C 00     MX
    LDA $C10D,X                     ; $80BCED  BD 0D C1     MX
    STA $0074                       ; $80BCF0  8D 74 00     MX
    CLC                             ; $80BCF3  18           MX
    ADC $C10F,X                     ; $80BCF4  7D 0F C1     MX
    STA $007A                       ; $80BCF7  8D 7A 00     MX
    LDA $C10F,X                     ; $80BCFA  BD 0F C1     MX
    STA $0078                       ; $80BCFD  8D 78 00     MX
    STA $007E                       ; $80BD00  8D 7E 00     MX
L_80BD03:
    JMP L_80BD94                    ; $80BD03  4C 94 BD     MX
L_80BD06:
    LDX $0C57                       ; $80BD06  AE 57 0C     MX
L_80BD09:
    LDA $C155,X                     ; $80BD09  BD 55 C1     MX
    BPL L_80BD40                    ; $80BD0C  10 32        MX
    LDA $0A96                       ; $80BD0E  AD 96 0A     MX
    BEQ L_80BD3B                    ; $80BD11  F0 28        MX
    LDA $0129                       ; $80BD13  AD 29 01     MX
    CMP #$012A                      ; $80BD16  C9 2A 01     MX
    BCS L_80BD2B                    ; $80BD19  B0 10        MX
    LDA $0A96                       ; $80BD1B  AD 96 0A     MX
    AND #$00FF                      ; $80BD1E  29 FF 00     MX
    CMP #$0003                      ; $80BD21  C9 03 00     MX
    BCC L_80BD3B                    ; $80BD24  90 15        MX
    LDX #$009A                      ; $80BD26  A2 9A 00     MX
    BNE L_80BD09                    ; $80BD29  D0 DE        MX
L_80BD2B:
    LDA $0A96                       ; $80BD2B  AD 96 0A     MX
    AND #$00FF                      ; $80BD2E  29 FF 00     MX
    CMP #$0003                      ; $80BD31  C9 03 00     MX
    BCS L_80BD3B                    ; $80BD34  B0 05        MX
    LDX #$009A                      ; $80BD36  A2 9A 00     MX
    BNE L_80BD09                    ; $80BD39  D0 CE        MX
L_80BD3B:
    LDX #$0000                      ; $80BD3B  A2 00 00     MX
    BEQ L_80BD09                    ; $80BD3E  F0 C9        MX
L_80BD40:
    PHA                             ; $80BD40  48           MX
    INX                             ; $80BD41  E8           MX
    INX                             ; $80BD42  E8           MX
    PLA                             ; $80BD43  68           MX
    STX $0C57                       ; $80BD44  8E 57 0C     MX
    CMP $0C55                       ; $80BD47  CD 55 0C     MX
    BEQ L_80BD03                    ; $80BD4A  F0 B7        MX
    STA $0C55                       ; $80BD4C  8D 55 0C     MX
    TAX                             ; $80BD4F  AA           MX
    LDA $81F2B9,X                   ; $80BD50  BF B9 F2 81  MX
    STA $0080                       ; $80BD54  8D 80 00     MX
    CLC                             ; $80BD57  18           MX
    ADC $81F2BB,X                   ; $80BD58  7F BB F2 81  MX
    STA $0086                       ; $80BD5C  8D 86 00     MX
    LDA $81F2BB,X                   ; $80BD5F  BF BB F2 81  MX
    STA $0084                       ; $80BD63  8D 84 00     MX
    STA $008A                       ; $80BD66  8D 8A 00     MX
    LDA #$0004                      ; $80BD69  A9 04 00     MX
    STA $0082                       ; $80BD6C  8D 82 00     MX
    STA $0088                       ; $80BD6F  8D 88 00     MX
    LDA $81F359,X                   ; $80BD72  BF 59 F3 81  MX
    STA $008C                       ; $80BD76  8D 8C 00     MX
    CLC                             ; $80BD79  18           MX
    ADC $81F35B,X                   ; $80BD7A  7F 5B F3 81  MX
    STA $0092                       ; $80BD7E  8D 92 00     MX
    LDA $81F35B,X                   ; $80BD81  BF 5B F3 81  MX
    STA $0090                       ; $80BD85  8D 90 00     MX
    STA $0096                       ; $80BD88  8D 96 00     MX
    LDA #$0004                      ; $80BD8B  A9 04 00     MX
    STA $008E                       ; $80BD8E  8D 8E 00     MX
    STA $0094                       ; $80BD91  8D 94 00     MX
L_80BD94:
    LDA $0E8D                       ; $80BD94  AD 8D 0E     MX
    CLC                             ; $80BD97  18           MX
    ADC #$0008                      ; $80BD98  69 08 00     MX
    STA $00EA                       ; $80BD9B  8D EA 00     MX
    LDA #$0068                      ; $80BD9E  A9 68 00     MX
    SEC                             ; $80BDA1  38           MX
    SBC $00EA                       ; $80BDA2  ED EA 00     MX
    STA $0E93                       ; $80BDA5  8D 93 0E     MX
    LDA #$0788                      ; $80BDA8  A9 88 07     MX
    SEC                             ; $80BDAB  38           MX
    SBC $00EA                       ; $80BDAC  ED EA 00     MX
    STA $0E95                       ; $80BDAF  8D 95 0E     MX
    LDA $0C19                       ; $80BDB2  AD 19 0C     MX
    BNE L_80BDC4                    ; $80BDB5  D0 0D        MX
    LDA $0BF9                       ; $80BDB7  AD F9 0B     MX
    AND #$0004                      ; $80BDBA  29 04 00     MX
    BEQ L_80BDC4                    ; $80BDBD  F0 05        MX
    LDA $0C1F                       ; $80BDBF  AD 1F 0C     MX
    BRA L_80BDC7                    ; $80BDC2  80 03        MX
L_80BDC4:
    LDA $0C19                       ; $80BDC4  AD 19 0C     MX
L_80BDC7:
    AND #$00FF                      ; $80BDC7  29 FF 00     MX
    ASL                             ; $80BDCA  0A           MX
    ASL                             ; $80BDCB  0A           MX
    ASL                             ; $80BDCC  0A           MX
    TAX                             ; $80BDCD  AA           MX
    LDA $C051,X                     ; $80BDCE  BD 51 C0     MX
    STA $0358                       ; $80BDD1  8D 58 03     MX
    LDA $C053,X                     ; $80BDD4  BD 53 C0     MX
    STA $035C                       ; $80BDD7  8D 5C 03     MX
    LDA $C055,X                     ; $80BDDA  BD 55 C0     MX
    STA $0360                       ; $80BDDD  8D 60 03     MX
    LDA $C057,X                     ; $80BDE0  BD 57 C0     MX
    STA $0364                       ; $80BDE3  8D 64 03     MX
    LDX #$0000                      ; $80BDE6  A2 00 00     MX
    JSR ($0C89,X)                   ; $80BDE9  FC 89 0C     MX
    LDX #$0000                      ; $80BDEC  A2 00 00     MX
    JSR ($0C8D,X)                   ; $80BDEF  FC 8D 0C     MX
    LDX #$0000                      ; $80BDF2  A2 00 00     MX
    JSR ($0C91,X)                   ; $80BDF5  FC 91 0C     MX
    LDX #$0000                      ; $80BDF8  A2 00 00     MX
    JSR ($0C95,X)                   ; $80BDFB  FC 95 0C     MX
    LDX #$0000                      ; $80BDFE  A2 00 00     MX
    JSR ($0C99,X)                   ; $80BE01  FC 99 0C     MX
    LDX #$0000                      ; $80BE04  A2 00 00     MX
    JSR ($0C9D,X)                   ; $80BE07  FC 9D 0C     MX
    LDX #$0000                      ; $80BE0A  A2 00 00     MX
    JSR ($0CA1,X)                   ; $80BE0D  FC A1 0C     MX
    LDX #$0000                      ; $80BE10  A2 00 00     MX
    JSR ($0CA5,X)                   ; $80BE13  FC A5 0C     MX
    LDA $00C0                       ; $80BE16  AD C0 00     MX
    ASL                             ; $80BE19  0A           MX
    ASL                             ; $80BE1A  0A           MX
    ASL                             ; $80BE1B  0A           MX
    ASL                             ; $80BE1C  0A           MX
    ASL                             ; $80BE1D  0A           MX
    ASL                             ; $80BE1E  0A           MX
    ORA #$002A                      ; $80BE1F  09 2A 00     MX
    STA $002A                       ; $80BE22  8D 2A 00     MX
    LDA $0B58                       ; $80BE25  AD 58 0B     MX
    STA $00EE                       ; $80BE28  8D EE 00     MX
    LDA $0B5A                       ; $80BE2B  AD 5A 0B     MX
    STA $00F0                       ; $80BE2E  8D F0 00     MX
    LDA $0722                       ; $80BE31  AD 22 07     MX
    LSR                             ; $80BE34  4A           MX
    LSR                             ; $80BE35  4A           MX
    LSR                             ; $80BE36  4A           MX
    AND #$00FE                      ; $80BE37  29 FE 00     MX
    TAX                             ; $80BE3A  AA           MX
    LDA $C079,X                     ; $80BE3B  BD 79 C0     MX
    LDX $00C0                       ; $80BE3E  AE C0 00     MX
    BEQ L_80BE6B                    ; $80BE41  F0 28        MX
    CLC                             ; $80BE43  18           MX
    ADC #$0002                      ; $80BE44  69 02 00     MX
    STA $00F2                       ; $80BE47  8D F2 00     MX
    LDA $00EE                       ; $80BE4A  AD EE 00     MX
    STA $00F6                       ; $80BE4D  8D F6 00     MX
    JSL L_ABE007                    ; $80BE50  22 07 E0 AB  MX
    LDA $00F6                       ; $80BE54  AD F6 00     MX
    CLC                             ; $80BE57  18           MX
    ADC #$0010                      ; $80BE58  69 10 00     MX
    STA $00EE                       ; $80BE5B  8D EE 00     MX
    DEC $00F2                       ; $80BE5E  CE F2 00     MX
    DEC $00F2                       ; $80BE61  CE F2 00     MX
    JSL L_ABE007                    ; $80BE64  22 07 E0 AB  MX
    JMP L_80BE8C                    ; $80BE68  4C 8C BE     MX
L_80BE6B:
    STA $00F2                       ; $80BE6B  8D F2 00     MX
    LDA $00EE                       ; $80BE6E  AD EE 00     MX
    STA $00F6                       ; $80BE71  8D F6 00     MX
    JSL L_ABE007                    ; $80BE74  22 07 E0 AB  MX
    LDA $00F6                       ; $80BE78  AD F6 00     MX
    CLC                             ; $80BE7B  18           MX
    ADC #$0010                      ; $80BE7C  69 10 00     MX
    STA $00EE                       ; $80BE7F  8D EE 00     MX
    INC $00F2                       ; $80BE82  EE F2 00     MX
    INC $00F2                       ; $80BE85  EE F2 00     MX
    JSL L_ABE007                    ; $80BE88  22 07 E0 AB  MX
L_80BE8C:
    LDA $0B5C                       ; $80BE8C  AD 5C 0B     MX
    STA $00EE                       ; $80BE8F  8D EE 00     MX
    LDA $0B5E                       ; $80BE92  AD 5E 0B     MX
    STA $00F0                       ; $80BE95  8D F0 00     MX
    LDA $080A                       ; $80BE98  AD 0A 08     MX
    LSR                             ; $80BE9B  4A           MX
    LSR                             ; $80BE9C  4A           MX
    LSR                             ; $80BE9D  4A           MX
    AND #$00FE                      ; $80BE9E  29 FE 00     MX
    TAX                             ; $80BEA1  AA           MX
    LDA $C079,X                     ; $80BEA2  BD 79 C0     MX
    LDX $00C0                       ; $80BEA5  AE C0 00     MX
    BEQ L_80BED2                    ; $80BEA8  F0 28        MX
    CLC                             ; $80BEAA  18           MX
    ADC #$0002                      ; $80BEAB  69 02 00     MX
    STA $00F2                       ; $80BEAE  8D F2 00     MX
    LDA $00EE                       ; $80BEB1  AD EE 00     MX
    STA $00F6                       ; $80BEB4  8D F6 00     MX
    JSL L_ABE007                    ; $80BEB7  22 07 E0 AB  MX
    LDA $00F6                       ; $80BEBB  AD F6 00     MX
    CLC                             ; $80BEBE  18           MX
    ADC #$0010                      ; $80BEBF  69 10 00     MX
    STA $00EE                       ; $80BEC2  8D EE 00     MX
    DEC $00F2                       ; $80BEC5  CE F2 00     MX
    DEC $00F2                       ; $80BEC8  CE F2 00     MX
    JSL L_ABE007                    ; $80BECB  22 07 E0 AB  MX
    JMP L_80BEF3                    ; $80BECF  4C F3 BE     MX
L_80BED2:
    STA $00F2                       ; $80BED2  8D F2 00     MX
    LDA $00EE                       ; $80BED5  AD EE 00     MX
    STA $00F6                       ; $80BED8  8D F6 00     MX
    JSL L_ABE007                    ; $80BEDB  22 07 E0 AB  MX
    LDA $00F6                       ; $80BEDF  AD F6 00     MX
    CLC                             ; $80BEE2  18           MX
    ADC #$0010                      ; $80BEE3  69 10 00     MX
    STA $00EE                       ; $80BEE6  8D EE 00     MX
    INC $00F2                       ; $80BEE9  EE F2 00     MX
    INC $00F2                       ; $80BEEC  EE F2 00     MX
    JSL L_ABE007                    ; $80BEEF  22 07 E0 AB  MX
L_80BEF3:
    LDA $0B60                       ; $80BEF3  AD 60 0B     MX
    STA $00EE                       ; $80BEF6  8D EE 00     MX
    LDA $0B62                       ; $80BEF9  AD 62 0B     MX
    STA $00F0                       ; $80BEFC  8D F0 00     MX
    LDA $08F2                       ; $80BEFF  AD F2 08     MX
    LSR                             ; $80BF02  4A           MX
    LSR                             ; $80BF03  4A           MX
    LSR                             ; $80BF04  4A           MX
    AND #$00FE                      ; $80BF05  29 FE 00     MX
    TAX                             ; $80BF08  AA           MX
    LDA $C079,X                     ; $80BF09  BD 79 C0     MX
    LDX $00C0                       ; $80BF0C  AE C0 00     MX
    BEQ L_80BF39                    ; $80BF0F  F0 28        MX
    CLC                             ; $80BF11  18           MX
    ADC #$0002                      ; $80BF12  69 02 00     MX
    STA $00F2                       ; $80BF15  8D F2 00     MX
    LDA $00EE                       ; $80BF18  AD EE 00     MX
    STA $00F6                       ; $80BF1B  8D F6 00     MX
    JSL L_ABE007                    ; $80BF1E  22 07 E0 AB  MX
    LDA $00F6                       ; $80BF22  AD F6 00     MX
    CLC                             ; $80BF25  18           MX
    ADC #$0010                      ; $80BF26  69 10 00     MX
    STA $00EE                       ; $80BF29  8D EE 00     MX
    DEC $00F2                       ; $80BF2C  CE F2 00     MX
    DEC $00F2                       ; $80BF2F  CE F2 00     MX
    JSL L_ABE007                    ; $80BF32  22 07 E0 AB  MX
    JMP L_80BF5A                    ; $80BF36  4C 5A BF     MX
L_80BF39:
    STA $00F2                       ; $80BF39  8D F2 00     MX
    LDA $00EE                       ; $80BF3C  AD EE 00     MX
    STA $00F6                       ; $80BF3F  8D F6 00     MX
    JSL L_ABE007                    ; $80BF42  22 07 E0 AB  MX
    LDA $00F6                       ; $80BF46  AD F6 00     MX
    CLC                             ; $80BF49  18           MX
    ADC #$0010                      ; $80BF4A  69 10 00     MX
    STA $00EE                       ; $80BF4D  8D EE 00     MX
    INC $00F2                       ; $80BF50  EE F2 00     MX
    INC $00F2                       ; $80BF53  EE F2 00     MX
    JSL L_ABE007                    ; $80BF56  22 07 E0 AB  MX
L_80BF5A:
    LDA $0B64                       ; $80BF5A  AD 64 0B     MX
    STA $00EE                       ; $80BF5D  8D EE 00     MX
    LDA $0B66                       ; $80BF60  AD 66 0B     MX
    STA $00F0                       ; $80BF63  8D F0 00     MX
    LDA $09DA                       ; $80BF66  AD DA 09     MX
    LSR                             ; $80BF69  4A           MX
    LSR                             ; $80BF6A  4A           MX
    LSR                             ; $80BF6B  4A           MX
    AND #$00FE                      ; $80BF6C  29 FE 00     MX
    TAX                             ; $80BF6F  AA           MX
    LDA $C079,X                     ; $80BF70  BD 79 C0     MX
    LDX $00C0                       ; $80BF73  AE C0 00     MX
    BEQ L_80BFA0                    ; $80BF76  F0 28        MX
    CLC                             ; $80BF78  18           MX
    ADC #$0002                      ; $80BF79  69 02 00     MX
    STA $00F2                       ; $80BF7C  8D F2 00     MX
    LDA $00EE                       ; $80BF7F  AD EE 00     MX
    STA $00F6                       ; $80BF82  8D F6 00     MX
    JSL L_ABE007                    ; $80BF85  22 07 E0 AB  MX
    LDA $00F6                       ; $80BF89  AD F6 00     MX
    CLC                             ; $80BF8C  18           MX
    ADC #$0010                      ; $80BF8D  69 10 00     MX
    STA $00EE                       ; $80BF90  8D EE 00     MX
    DEC $00F2                       ; $80BF93  CE F2 00     MX
    DEC $00F2                       ; $80BF96  CE F2 00     MX
    JSL L_ABE007                    ; $80BF99  22 07 E0 AB  MX
    JMP L_80BFC1                    ; $80BF9D  4C C1 BF     MX
L_80BFA0:
    STA $00F2                       ; $80BFA0  8D F2 00     MX
    LDA $00EE                       ; $80BFA3  AD EE 00     MX
    STA $00F6                       ; $80BFA6  8D F6 00     MX
    JSL L_ABE007                    ; $80BFA9  22 07 E0 AB  MX
    LDA $00F6                       ; $80BFAD  AD F6 00     MX
    CLC                             ; $80BFB0  18           MX
    ADC #$0010                      ; $80BFB1  69 10 00     MX
    STA $00EE                       ; $80BFB4  8D EE 00     MX
    INC $00F2                       ; $80BFB7  EE F2 00     MX
    INC $00F2                       ; $80BFBA  EE F2 00     MX
    JSL L_ABE007                    ; $80BFBD  22 07 E0 AB  MX
L_80BFC1:
    LDA $0B6C                       ; $80BFC1  AD 6C 0B     MX
    BEQ L_80C02D                    ; $80BFC4  F0 67        MX
    LDA $0B78                       ; $80BFC6  AD 78 0B     MX
    STA $00EE                       ; $80BFC9  8D EE 00     MX
    LDA $0B7A                       ; $80BFCC  AD 7A 0B     MX
    STA $00F0                       ; $80BFCF  8D F0 00     MX
    LDA #$0032                      ; $80BFD2  A9 32 00     MX
    LSR                             ; $80BFD5  4A           MX
    LSR                             ; $80BFD6  4A           MX
    LSR                             ; $80BFD7  4A           MX
    AND #$00FE                      ; $80BFD8  29 FE 00     MX
    TAX                             ; $80BFDB  AA           MX
    LDA $C079,X                     ; $80BFDC  BD 79 C0     MX
    LDX $00C0                       ; $80BFDF  AE C0 00     MX
    BEQ L_80C00C                    ; $80BFE2  F0 28        MX
    CLC                             ; $80BFE4  18           MX
    ADC #$0002                      ; $80BFE5  69 02 00     MX
    STA $00F2                       ; $80BFE8  8D F2 00     MX
    LDA $00EE                       ; $80BFEB  AD EE 00     MX
    STA $00F6                       ; $80BFEE  8D F6 00     MX
    JSL L_ABE007                    ; $80BFF1  22 07 E0 AB  MX
    LDA $00F6                       ; $80BFF5  AD F6 00     MX
    CLC                             ; $80BFF8  18           MX
    ADC #$0010                      ; $80BFF9  69 10 00     MX
    STA $00EE                       ; $80BFFC  8D EE 00     MX
    DEC $00F2                       ; $80BFFF  CE F2 00     MX
    DEC $00F2                       ; $80C002  CE F2 00     MX
    JSL L_ABE007                    ; $80C005  22 07 E0 AB  MX
    JMP L_80C02D                    ; $80C009  4C 2D C0     MX
L_80C00C:
    STA $00F2                       ; $80C00C  8D F2 00     MX
    LDA $00EE                       ; $80C00F  AD EE 00     MX
    STA $00F6                       ; $80C012  8D F6 00     MX
    JSL L_ABE007                    ; $80C015  22 07 E0 AB  MX
    LDA $00F6                       ; $80C019  AD F6 00     MX
    CLC                             ; $80C01C  18           MX
    ADC #$0010                      ; $80C01D  69 10 00     MX
    STA $00EE                       ; $80C020  8D EE 00     MX
    INC $00F2                       ; $80C023  EE F2 00     MX
    INC $00F2                       ; $80C026  EE F2 00     MX
    JSL L_ABE007                    ; $80C029  22 07 E0 AB  MX
L_80C02D:
    LDA $0BB7                       ; $80C02D  AD B7 0B     MX
    LDX $00C0                       ; $80C030  AE C0 00     MX
    BEQ L_80C039                    ; $80C033  F0 04        MX
    SEC                             ; $80C035  38           MX
    SBC #$0004                      ; $80C036  E9 04 00     MX
L_80C039:
    STA $00EE                       ; $80C039  8D EE 00     MX
    LDA $0BB9                       ; $80C03C  AD B9 0B     MX
    STA $00F0                       ; $80C03F  8D F0 00     MX
    LDA #$013C                      ; $80C042  A9 3C 01     MX
    STA $00F2                       ; $80C045  8D F2 00     MX
    JSL L_ABE007                    ; $80C048  22 07 E0 AB  MX
    REP #$20                        ; $80C04C  C2 20        MX
    SEP #$10                        ; $80C04E  E2 10        MX
    RTS                             ; $80C050  60           Mx
    db $00,$E0,$00,$E0,$00,$E0,$00,$E0,$08,$00,$18,$00,$08,$10,$18,$10 ; $80C051
    db $40,$00,$50,$00,$40,$10,$50,$10,$A0,$00,$B0,$00,$A0,$10,$B0,$10 ; $80C061
    db $D8,$00,$E8,$00,$D8,$10,$E8,$10,$30,$01,$34,$01,$38,$01,$38,$01 ; $80C071
    db $38,$01,$38,$01,$38,$01,$38,$01,$38,$01,$38,$01,$38,$01,$38,$01 ; $80C081
    db $38,$01,$38,$01,$38,$01,$38,$01,$38,$01,$38,$01,$38,$01,$38,$01 ; $80C091
    db $38,$01,$38,$01,$D7,$B7,$CC,$B7,$40,$00,$00,$00,$62,$B8,$57,$B8 ; $80C0A1
    db $40,$00,$00,$00,$ED,$B8,$E2,$B8,$40,$00,$00,$00,$78,$B9,$6D,$B9 ; $80C0B1
    db $40,$00,$00,$00,$03,$BA,$F8,$B9,$40,$00,$00,$00,$8E,$BA,$83,$BA ; $80C0C1
    db $40,$00,$00,$00,$19,$BB,$0E,$BB,$40,$00,$00,$00,$A4,$BB,$99,$BB ; $80C0D1
    db $40,$00,$00,$00,$2F,$BC,$24,$BC,$40,$00,$00,$00,$BA,$BC,$AF,$BC ; $80C0E1
    db $40,$00,$00,$00,$45,$BD,$3A,$BD,$40,$00,$00,$00,$D0,$BD,$C5,$BD ; $80C0F1
    db $40,$00,$00,$00,$5B,$BE,$50,$BE,$40,$00,$00,$00,$2F,$80,$20,$01 ; $80C101
    db $9E,$82,$20,$01,$0D,$85,$20,$01,$97,$87,$E0,$01,$AA,$8B,$E0,$01 ; $80C111
    db $94,$9C,$20,$01,$25,$9A,$20,$01,$B6,$97,$20,$01,$C7,$93,$E0,$01 ; $80C121
    db $BD,$8F,$E0,$01,$00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$01,$00 ; $80C131
    db $02,$00,$02,$00,$03,$00,$03,$00,$04,$00,$04,$00,$04,$00,$04,$00 ; $80C141
    db $04,$00,$04,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$08,$00,$0C,$00 ; $80C151
    db $10,$00,$10,$00,$14,$00,$0C,$00,$0C,$00,$08,$00,$08,$00,$FF,$FF ; $80C161
    db $00,$00,$18,$00,$1C,$00,$20,$00,$24,$00,$20,$00,$1C,$00,$18,$00 ; $80C171
    db $FF,$FF,$28,$00,$2C,$00,$30,$00,$2C,$00,$28,$00,$FF,$FF,$34,$00 ; $80C181
    db $38,$00,$3C,$00,$40,$00,$44,$00,$48,$00,$4C,$00,$50,$00,$54,$00 ; $80C191
    db $58,$00,$5C,$00,$60,$00,$64,$00,$68,$00,$6C,$00,$70,$00,$FF,$FF ; $80C1A1
    db $28,$00,$2C,$00,$30,$00,$2C,$00,$28,$00,$10,$00,$14,$00,$0C,$00 ; $80C1B1
    db $08,$00,$FF,$FF,$74,$00,$74,$00,$78,$00,$78,$00,$7C,$00,$7C,$00 ; $80C1C1
    db $80,$00,$80,$00,$84,$00,$84,$00,$88,$00,$88,$00,$8C,$00,$8C,$00 ; $80C1D1
    db $90,$00,$90,$00,$94,$00,$94,$00,$98,$00,$98,$00,$9C,$00,$9C,$00 ; $80C1E1
    db $FF,$FF,$A9,$2C,$00,$AE,$F3,$0B,$EC,$45,$0C,$90,$03,$09,$10,$00 ; $80C1F1
    db $8D,$2A,$00,$AD,$ED,$0B,$10,$1E,$AD,$EB,$0B,$49,$FF,$FF,$18,$69 ; $80C201
    db $01,$00,$AD,$ED,$0B,$49,$FF,$FF,$69,$00,$00,$C9,$01,$00,$90,$06 ; $80C211
    db $20,$7D,$C3,$4C,$2D,$C2,$20,$2D,$C2,$4C,$7D,$C3,$AD,$2A,$00,$29 ; $80C221
    db $F1,$00,$09,$0C,$00,$8D,$2A,$00,$AD,$D9,$0B,$38,$E9,$05,$00,$8D ; $80C231
    db $EC,$00,$AD,$F3,$0B,$4A,$8D,$26,$00,$AD,$F3,$0B,$38,$E9,$10,$03 ; $80C241
    db $B0,$03,$A9,$00,$00,$4A,$C9,$70,$00,$90,$03,$A9,$6F,$00,$8D,$EA ; $80C251
    db $00,$AD,$EC,$00,$8D,$A6,$00,$30,$03,$4C,$C8,$C2,$49,$FF,$FF,$18 ; $80C261
    db $69,$01,$00,$8D,$EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5,$27,$8D ; $80C271
    db $EA,$00,$AD,$EE,$00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2,$20,$8D ; $80C281
    db $02,$42,$AD,$EB,$00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD,$16,$42 ; $80C291
    db $8D,$F2,$00,$AD,$F3,$00,$29,$FF,$00,$49,$FF,$FF,$18,$69,$01,$00 ; $80C2A1
    db $18,$6D,$A6,$00,$AC,$C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C,$12,$C3 ; $80C2B1
    db $38,$FD,$AA,$0E,$4C,$12,$C3,$8D,$EE,$00,$AD,$EA,$00,$0A,$AA,$BF ; $80C2C1
    db $0B,$E5,$A7,$8D,$EA,$00,$AD,$EE,$00,$C9,$00,$01,$90,$03,$A9,$FF ; $80C2D1
    db $00,$E2,$20,$8D,$02,$42,$AD,$EB,$00,$8D,$03,$42,$EA,$EA,$EA,$C2 ; $80C2E1
    db $20,$AD,$16,$42,$8D,$F2,$00,$AD,$F3,$00,$29,$FF,$00,$18,$6D,$A6 ; $80C2F1
    db $00,$AC,$C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C,$12,$C3,$38,$FD,$AA ; $80C301
    db $0E,$18,$69,$C0,$01,$18,$6D,$EF,$0B,$AE,$19,$0C,$F0,$06,$A0,$54 ; $80C311
    db $00,$38,$F1,$CC,$8D,$54,$0B,$8D,$EE,$00,$8D,$A6,$00,$AD,$26,$00 ; $80C321
    db $38,$ED,$2B,$01,$8D,$56,$0B,$38,$ED,$F1,$0B,$38,$ED,$DD,$0B,$38 ; $80C331
    db $E9,$0C,$00,$8D,$F0,$00,$8D,$A8,$00,$A9,$C0,$00,$8D,$F2,$00,$22 ; $80C341
    db $07,$E0,$AB,$AD,$A8,$00,$18,$6D,$2B,$01,$8D,$BD,$0B,$AD,$A6,$00 ; $80C351
    db $18,$6D,$29,$01,$8D,$BB,$0B,$AD,$54,$0B,$38,$E9,$02,$00,$8D,$B7 ; $80C361
    db $0B,$AD,$56,$0B,$38,$E9,$02,$00,$8D,$B9,$0B,$60,$AD,$11,$0C,$D0 ; $80C371
    db $27,$AD,$96,$0A,$D0,$05,$C2,$20,$4C,$2D,$C4,$E2,$20,$CD,$19,$0C ; $80C381
    db $D0,$0F,$C2,$20,$A0,$08,$00,$B1,$CC,$29,$04,$00,$D0,$0A,$4C,$2D ; $80C391
    db $C4,$CD,$1F,$0C,$D0,$E0,$C2,$20,$AD,$2A,$00,$29,$F1,$00,$09,$08 ; $80C3A1
    db $00,$8D,$2A,$00,$A9,$78,$01,$8D,$F2,$00,$AD,$01,$0C,$38,$ED,$29 ; $80C3B1
    db $01,$8D,$EE,$00,$AD,$03,$0C,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07 ; $80C3C1
    db $E0,$AB,$EE,$F2,$00,$EE,$F2,$00,$AD,$05,$0C,$38,$ED,$29,$01,$8D ; $80C3D1
    db $EE,$00,$AD,$07,$0C,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB ; $80C3E1
    db $EE,$F2,$00,$EE,$F2,$00,$AD,$09,$0C,$38,$ED,$29,$01,$8D,$EE,$00 ; $80C3F1
    db $AD,$0B,$0C,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$EE,$F2 ; $80C401
    db $00,$EE,$F2,$00,$AD,$0D,$0C,$38,$ED,$29,$01,$8D,$EE,$00,$AD,$0F ; $80C411
    db $0C,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$60,$22,$52,$DE ; $80C421
    db $81,$60,$22,$39,$F0,$9A,$22,$E9,$E5,$81,$60,$AD,$6C,$0B,$F0,$03 ; $80C431
    db $4C,$89,$C9,$AD,$47,$0C,$C9,$05,$00,$90,$04,$38,$E9,$05,$00,$C9 ; $80C441
    db $04,$00,$F0,$0B,$C9,$03,$00,$F0,$03,$4C,$5A,$C8,$4C,$7D,$C6,$AD ; $80C451
    db $29,$01,$C9,$2A,$01,$90,$03,$4C,$76,$C5,$A9,$38,$00,$8D,$2A,$00 ; $80C461
    db $A9,$80,$00,$8D,$F2,$00,$AD,$93,$0E,$18,$69,$09,$00,$8D,$EE,$00 ; $80C471
    db $8D,$F6,$00,$A9,$22,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0 ; $80C481
    db $AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0 ; $80C491
    db $00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE ; $80C4A1
    db $00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2 ; $80C4B1
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69 ; $80C4C1
    db $10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD ; $80C4D1
    db $F6,$00,$18,$69,$08,$00,$8D,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$38 ; $80C4E1
    db $E9,$30,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB ; $80C4F1
    db $AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00 ; $80C501
    db $EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00 ; $80C511
    db $AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00 ; $80C521
    db $22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$08,$00,$8D,$EE,$00,$AD,$F0 ; $80C531
    db $00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00 ; $80C541
    db $E0,$AB,$AD,$F6,$00,$38,$E9,$10,$00,$8D,$EE,$00,$AD,$F0,$00,$18 ; $80C551
    db $69,$10,$00,$8D,$F0,$00,$AD,$F2,$00,$18,$69,$10,$00,$8D,$F2,$00 ; $80C561
    db $22,$00,$E0,$AB,$60,$A9,$78,$00,$8D,$2A,$00,$A9,$80,$00,$8D,$F2 ; $80C571
    db $00,$AD,$95,$0E,$18,$69,$0F,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$22 ; $80C581
    db $01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D ; $80C591
    db $EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE ; $80C5A1
    db $F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18 ; $80C5B1
    db $69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB ; $80C5C1
    db $AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00 ; $80C5D1
    db $EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$08 ; $80C5E1
    db $00,$8D,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$38,$E9,$30,$00,$8D,$F0 ; $80C5F1
    db $00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE ; $80C601
    db $00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2 ; $80C611
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69 ; $80C621
    db $10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD ; $80C631
    db $F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE ; $80C641
    db $F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$AD,$F6,$00,$18,$69,$10,$00 ; $80C651
    db $8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$AD,$F2,$00 ; $80C661
    db $18,$69,$10,$00,$8D,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9 ; $80C671
    db $2A,$01,$90,$03,$4C,$71,$C7,$A9,$38,$00,$8D,$2A,$00,$A9,$80,$00 ; $80C681
    db $8D,$F2,$00,$AD,$93,$0E,$18,$69,$0A,$00,$8D,$EE,$00,$8D,$F6,$00 ; $80C691
    db $A9,$22,$01,$38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6 ; $80C6A1
    db $00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2 ; $80C6B1
    db $00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0 ; $80C6C1
    db $00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07 ; $80C6D1
    db $E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D ; $80C6E1
    db $F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18 ; $80C6F1
    db $69,$08,$00,$8D,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$38,$E9,$30,$00 ; $80C701
    db $8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00 ; $80C711
    db $8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00 ; $80C721
    db $EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00 ; $80C731
    db $18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0 ; $80C741
    db $AB,$AD,$F6,$00,$38,$E9,$08,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69 ; $80C751
    db $20,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$00,$E0,$AB,$60 ; $80C761
    db $A9,$78,$00,$8D,$2A,$00,$A9,$80,$00,$8D,$F2,$00,$AD,$95,$0E,$18 ; $80C771
    db $69,$0E,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$22,$01,$38,$ED,$2B,$01 ; $80C781
    db $8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00 ; $80C791
    db $18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0 ; $80C7A1
    db $AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0 ; $80C7B1
    db $00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE ; $80C7C1
    db $00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2 ; $80C7D1
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$38,$E9,$08,$00,$8D,$F6,$00,$8D ; $80C7E1
    db $EE,$00,$AD,$F0,$00,$38,$E9,$30,$00,$8D,$F0,$00,$EE,$F2,$00,$EE ; $80C7F1
    db $F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18 ; $80C801
    db $69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB ; $80C811
    db $AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00 ; $80C821
    db $EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$10 ; $80C831
    db $00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$20,$00,$8D,$F0,$00,$EE,$F2 ; $80C841
    db $00,$EE,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$29,$01,$C9,$2A,$01,$90 ; $80C851
    db $03,$4C,$F5,$C8,$A9,$38,$00,$8D,$2A,$00,$A9,$80,$00,$8D,$F2,$00 ; $80C861
    db $AD,$93,$0E,$18,$69,$0C,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$22,$01 ; $80C871
    db $38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE ; $80C881
    db $00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2 ; $80C891
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69 ; $80C8A1
    db $10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD ; $80C8B1
    db $F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE ; $80C8C1
    db $F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD ; $80C8D1
    db $F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22 ; $80C8E1
    db $00,$E0,$AB,$60,$A9,$78,$00,$8D,$2A,$00,$A9,$80,$00,$8D,$F2,$00 ; $80C8F1
    db $AD,$95,$0E,$18,$69,$0C,$00,$8D,$EE,$00,$8D,$F6,$00,$A9,$22,$01 ; $80C901
    db $38,$ED,$2B,$01,$8D,$F0,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE ; $80C911
    db $00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2 ; $80C921
    db $00,$22,$07,$E0,$AB,$AD,$F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69 ; $80C931
    db $10,$00,$8D,$F0,$00,$EE,$F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD ; $80C941
    db $F6,$00,$8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE ; $80C951
    db $F2,$00,$EE,$F2,$00,$22,$07,$E0,$AB,$AD,$F6,$00,$18,$69,$08,$00 ; $80C961
    db $8D,$EE,$00,$AD,$F0,$00,$18,$69,$10,$00,$8D,$F0,$00,$EE,$F2,$00 ; $80C971
    db $EE,$F2,$00,$22,$00,$E0,$AB,$60,$AD,$76,$0B,$C9,$10,$03,$D0,$03 ; $80C981
    db $4C,$F4,$CA,$AD,$6E,$0B,$C9,$60,$00,$90,$03,$CE,$76,$0B,$A9,$08 ; $80C991
    db $00,$8D,$A4,$00,$AE,$6E,$0B,$E0,$60,$00,$B0,$08,$AD,$7B,$0E,$0D ; $80C9A1
    db $7D,$0E,$D0,$0B,$AD,$06,$00,$29,$07,$00,$C9,$01,$00,$F0,$03,$9C ; $80C9B1
    db $A4,$00,$A9,$A2,$2C,$8D,$D1,$00,$AD,$6E,$0B,$18,$6D,$A4,$00,$8D ; $80C9C1
    db $6E,$0B,$C9,$18,$00,$D0,$10,$AE,$A4,$00,$F0,$25,$48,$A9,$07,$00 ; $80C9D1
    db $22,$F3,$FD,$BD,$68,$80,$1A,$C9,$10,$00,$D0,$0E,$48,$22,$84,$DD ; $80C9E1
    db $02,$A9,$A2,$2C,$8D,$D1,$00,$68,$80,$07,$C9,$50,$00,$F0,$1D,$B0 ; $80C9F1
    db $5D,$AA,$BF,$38,$A2,$AC,$8D,$EF,$0B,$BF,$3A,$A2,$AC,$8D,$F5,$0B ; $80CA01
    db $BF,$3C,$A2,$AC,$8D,$F1,$0B,$AD,$6E,$0B,$80,$42,$AD,$D9,$0B,$18 ; $80CA11
    db $6D,$EF,$0B,$8D,$D9,$0B,$AD,$DD,$0B,$18,$6D,$F1,$0B,$8D,$DD,$0B ; $80CA21
    db $AD,$F5,$0B,$18,$6D,$F3,$0B,$8D,$E1,$0B,$8D,$F3,$0B,$9C,$EF,$0B ; $80CA31
    db $9C,$F1,$0B,$A9,$02,$00,$8D,$BF,$0B,$A9,$02,$00,$8D,$C1,$0B,$A9 ; $80CA41
    db $00,$60,$8D,$E7,$0B,$A9,$FB,$FF,$8D,$E9,$0B,$AD,$6E,$0B,$18,$69 ; $80CA51
    db $A0,$A2,$8D,$D0,$00,$A0,$00,$00,$B7,$D0,$C9,$FF,$FF,$D0,$09,$A9 ; $80CA61
    db $60,$00,$8D,$6E,$0B,$4C,$5F,$CA,$CD,$68,$0B,$D0,$0B,$C8,$B7,$D0 ; $80CA71
    db $CD,$69,$0B,$D0,$09,$4C,$F4,$CA,$8D,$68,$0B,$C8,$B7,$D0,$8D,$69 ; $80CA81
    db $0B,$AD,$68,$0B,$8D,$D6,$00,$AD,$69,$0B,$8D,$D7,$00,$A0,$03,$00 ; $80CA91
    db $B7,$D6,$29,$FF,$00,$8D,$E8,$00,$A0,$02,$00,$B7,$D6,$29,$01,$00 ; $80CAA1
    db $18,$D0,$08,$AD,$E8,$00,$69,$08,$00,$80,$06,$AD,$E8,$00,$69,$10 ; $80CAB1
    db $00,$A0,$05,$00,$77,$D6,$4A,$8D,$72,$0B,$E2,$20,$A0,$05,$00,$B7 ; $80CAC1
    db $D0,$8D,$76,$00,$8D,$7C,$00,$C2,$20,$A0,$03,$00,$B7,$D0,$8D,$74 ; $80CAD1
    db $00,$A0,$06,$00,$B7,$D0,$8D,$78,$00,$8D,$7E,$00,$18,$6D,$74,$00 ; $80CAE1
    db $8D,$7A,$00,$A9,$28,$00,$8D,$28,$00,$A9,$80,$00,$8D,$2C,$00,$AD ; $80CAF1
    db $68,$0B,$8D,$20,$00,$AD,$69,$0B,$8D,$21,$00,$AD,$74,$0B,$8D,$24 ; $80CB01
    db $00,$AD,$76,$0B,$18,$69,$02,$00,$8D,$AF,$0B,$4A,$8D,$26,$00,$AD ; $80CB11
    db $AF,$0B,$38,$E9,$10,$03,$B0,$03,$A9,$00,$00,$4A,$C9,$70,$00,$90 ; $80CB21
    db $03,$A9,$6F,$00,$8D,$EA,$00,$AD,$24,$00,$8D,$EC,$00,$AD,$EC,$00 ; $80CB31
    db $8D,$A6,$00,$30,$03,$4C,$A4,$CB,$49,$FF,$FF,$18,$69,$01,$00,$8D ; $80CB41
    db $EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5,$27,$8D,$EA,$00,$AD,$EE ; $80CB51
    db $00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2,$20,$8D,$02,$42,$AD,$EB ; $80CB61
    db $00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD,$16,$42,$8D,$F2,$00,$AD ; $80CB71
    db $F3,$00,$29,$FF,$00,$49,$FF,$FF,$18,$69,$01,$00,$18,$6D,$A6,$00 ; $80CB81
    db $AC,$C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C,$EE,$CB,$38,$FD,$AA,$0E ; $80CB91
    db $4C,$EE,$CB,$8D,$EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5,$A7,$8D ; $80CBA1
    db $EA,$00,$AD,$EE,$00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2,$20,$8D ; $80CBB1
    db $02,$42,$AD,$EB,$00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD,$16,$42 ; $80CBC1
    db $8D,$F2,$00,$AD,$F3,$00,$29,$FF,$00,$18,$6D,$A6,$00,$AC,$C0,$00 ; $80CBD1
    db $F0,$07,$38,$FD,$B9,$0F,$4C,$EE,$CB,$38,$FD,$AA,$0E,$18,$69,$C0 ; $80CBE1
    db $01,$8D,$AA,$00,$38,$ED,$72,$0B,$8D,$54,$0B,$AE,$6E,$0B,$E0,$60 ; $80CBF1
    db $00,$90,$0F,$C9,$F6,$00,$10,$3D,$C9,$00,$00,$10,$05,$C9,$D0,$FF ; $80CC01
    db $90,$33,$8D,$24,$00,$AD,$26,$00,$38,$ED,$2B,$01,$8D,$56,$0B,$38 ; $80CC11
    db $E9,$49,$00,$8D,$26,$00,$22,$EA,$E2,$AB,$AD,$54,$0B,$18,$69,$14 ; $80CC21
    db $00,$8D,$78,$0B,$AD,$56,$0B,$38,$E9,$07,$00,$8D,$7A,$0B,$AD,$76 ; $80CC31
    db $0B,$8D,$45,$0C,$60,$A9,$64,$03,$8D,$45,$0C,$9C,$6C,$0B,$60     ; $80CC41
L_80CC50:
    REP #$10                        ; $80CC50  C2 10        Mx
    STZ $002C                       ; $80CC52  9C 2C 00     MX
    LDA $0129                       ; $80CC55  AD 29 01     MX
    CMP #$012A                      ; $80CC58  C9 2A 01     MX
    BCC L_80CC60                    ; $80CC5B  90 03        MX
    JMP L_80CCD7                    ; $80CC5D  4C D7 CC     MX
L_80CC60:
    LDA #$002A                      ; $80CC60  A9 2A 00     MX
    STA $002A                       ; $80CC63  8D 2A 00     MX
    LDA $0E93                       ; $80CC66  AD 93 0E     MX
    SEC                             ; $80CC69  38           MX
    SBC #$000C                      ; $80CC6A  E9 0C 00     MX
    CMP #$FFEC                      ; $80CC6D  C9 EC FF     MX
    BMI L_80CCD4                    ; $80CC70  30 62        MX
    STA $00EE                       ; $80CC72  8D EE 00     MX
    LDA #$0187                      ; $80CC75  A9 87 01     MX
    SEC                             ; $80CC78  38           MX
    SBC $012B                       ; $80CC79  ED 2B 01     MX
    STA $00F0                       ; $80CC7C  8D F0 00     MX
    LDA #$0116                      ; $80CC7F  A9 16 01     MX
    STA $00F2                       ; $80CC82  8D F2 00     MX
    JSL L_ABE007                    ; $80CC85  22 07 E0 AB  MX
    LDA $0E93                       ; $80CC89  AD 93 0E     MX
    SEC                             ; $80CC8C  38           MX
    SBC #$001C                      ; $80CC8D  E9 1C 00     MX
    CMP #$FFEC                      ; $80CC90  C9 EC FF     MX
    BMI L_80CCD4                    ; $80CC93  30 3F        MX
    STA $00EE                       ; $80CC95  8D EE 00     MX
    DEC $00F2                       ; $80CC98  CE F2 00     MX
    DEC $00F2                       ; $80CC9B  CE F2 00     MX
    JSL L_ABE007                    ; $80CC9E  22 07 E0 AB  MX
    LDA $0E93                       ; $80CCA2  AD 93 0E     MX
    SEC                             ; $80CCA5  38           MX
    SBC #$002C                      ; $80CCA6  E9 2C 00     MX
    CMP #$FFEC                      ; $80CCA9  C9 EC FF     MX
    BMI L_80CCD4                    ; $80CCAC  30 26        MX
    STA $00EE                       ; $80CCAE  8D EE 00     MX
    DEC $00F2                       ; $80CCB1  CE F2 00     MX
    DEC $00F2                       ; $80CCB4  CE F2 00     MX
    JSL L_ABE007                    ; $80CCB7  22 07 E0 AB  MX
    LDA $0E93                       ; $80CCBB  AD 93 0E     MX
    SEC                             ; $80CCBE  38           MX
    SBC #$003C                      ; $80CCBF  E9 3C 00     MX
    CMP #$FFEC                      ; $80CCC2  C9 EC FF     MX
    BMI L_80CCD4                    ; $80CCC5  30 0D        MX
    STA $00EE                       ; $80CCC7  8D EE 00     MX
    DEC $00F2                       ; $80CCCA  CE F2 00     MX
    DEC $00F2                       ; $80CCCD  CE F2 00     MX
    JSL L_ABE007                    ; $80CCD0  22 07 E0 AB  MX
L_80CCD4:
    JMP L_80CD4B                    ; $80CCD4  4C 4B CD     MX
L_80CCD7:
    LDA #$006A                      ; $80CCD7  A9 6A 00     MX
    STA $002A                       ; $80CCDA  8D 2A 00     MX
    LDA $0E95                       ; $80CCDD  AD 95 0E     MX
    CLC                             ; $80CCE0  18           MX
    ADC #$0024                      ; $80CCE1  69 24 00     MX
    BIT #$FF00                      ; $80CCE4  89 00 FF     MX
    BNE L_80CD4B                    ; $80CCE7  D0 62        MX
    STA $00EE                       ; $80CCE9  8D EE 00     MX
    LDA #$0187                      ; $80CCEC  A9 87 01     MX
    SEC                             ; $80CCEF  38           MX
    SBC $012B                       ; $80CCF0  ED 2B 01     MX
    STA $00F0                       ; $80CCF3  8D F0 00     MX
    LDA #$0116                      ; $80CCF6  A9 16 01     MX
    STA $00F2                       ; $80CCF9  8D F2 00     MX
    JSL L_ABE007                    ; $80CCFC  22 07 E0 AB  MX
    LDA $0E95                       ; $80CD00  AD 95 0E     MX
    CLC                             ; $80CD03  18           MX
    ADC #$0034                      ; $80CD04  69 34 00     MX
    BIT #$FF00                      ; $80CD07  89 00 FF     MX
    BNE L_80CD4B                    ; $80CD0A  D0 3F        MX
    STA $00EE                       ; $80CD0C  8D EE 00     MX
    DEC $00F2                       ; $80CD0F  CE F2 00     MX
    DEC $00F2                       ; $80CD12  CE F2 00     MX
    JSL L_ABE007                    ; $80CD15  22 07 E0 AB  MX
    LDA $0E95                       ; $80CD19  AD 95 0E     MX
    CLC                             ; $80CD1C  18           MX
    ADC #$0044                      ; $80CD1D  69 44 00     MX
    BIT #$FF00                      ; $80CD20  89 00 FF     MX
    BNE L_80CD4B                    ; $80CD23  D0 26        MX
    STA $00EE                       ; $80CD25  8D EE 00     MX
    DEC $00F2                       ; $80CD28  CE F2 00     MX
    DEC $00F2                       ; $80CD2B  CE F2 00     MX
    JSL L_ABE007                    ; $80CD2E  22 07 E0 AB  MX
    LDA $0E95                       ; $80CD32  AD 95 0E     MX
    CLC                             ; $80CD35  18           MX
    ADC #$0054                      ; $80CD36  69 54 00     MX
    BIT #$FF00                      ; $80CD39  89 00 FF     MX
    BNE L_80CD4B                    ; $80CD3C  D0 0D        MX
    STA $00EE                       ; $80CD3E  8D EE 00     MX
    DEC $00F2                       ; $80CD41  CE F2 00     MX
    DEC $00F2                       ; $80CD44  CE F2 00     MX
    JSL L_ABE007                    ; $80CD47  22 07 E0 AB  MX
L_80CD4B:
    LDA #$002C                      ; $80CD4B  A9 2C 00     MX
    STA $002A                       ; $80CD4E  8D 2A 00     MX
    LDA #$011C                      ; $80CD51  A9 1C 01     MX
    STA $00F2                       ; $80CD54  8D F2 00     MX
    LDX #$003C                      ; $80CD57  A2 3C 00     MX
    LDA #$0182                      ; $80CD5A  A9 82 01     MX
    STA $00EC                       ; $80CD5D  8D EC 00     MX
    LDA $00C0                       ; $80CD60  AD C0 00     MX
    BEQ L_80CD72                    ; $80CD63  F0 0D        MX
    LDA $00EC                       ; $80CD65  AD EC 00     MX
    SEC                             ; $80CD68  38           MX
    SBC $0FB9,X                     ; $80CD69  FD B9 0F     MX
    STA $00EE                       ; $80CD6C  8D EE 00     MX
    JMP L_80CD7C                    ; $80CD6F  4C 7C CD     MX
L_80CD72:
    LDA $00EC                       ; $80CD72  AD EC 00     MX
    SEC                             ; $80CD75  38           MX
    SBC $0EAA,X                     ; $80CD76  FD AA 0E     MX
    STA $00EE                       ; $80CD79  8D EE 00     MX
L_80CD7C:
    LDA #$01A5                      ; $80CD7C  A9 A5 01     MX
    SEC                             ; $80CD7F  38           MX
    SBC $012B                       ; $80CD80  ED 2B 01     MX
    STA $00F0                       ; $80CD83  8D F0 00     MX
    JSL L_ABE007                    ; $80CD86  22 07 E0 AB  MX
    LDA $00EE                       ; $80CD8A  AD EE 00     MX
    CLC                             ; $80CD8D  18           MX
    ADC #$0070                      ; $80CD8E  69 70 00     MX
    STA $00EE                       ; $80CD91  8D EE 00     MX
    JSL $2BE007                     ; $80CD94  22 07 E0 2B  MX
    LDX #$008E                      ; $80CD98  A2 8E 00     MX
    LDA #$0172                      ; $80CD9B  A9 72 01     MX
    STA $00EC                       ; $80CD9E  8D EC 00     MX
    LDA $00C0                       ; $80CDA1  AD C0 00     MX
    BEQ L_80CDB3                    ; $80CDA4  F0 0D        MX
    LDA $00EC                       ; $80CDA6  AD EC 00     MX
    SEC                             ; $80CDA9  38           MX
    SBC $0FB9,X                     ; $80CDAA  FD B9 0F     MX
    STA $00EE                       ; $80CDAD  8D EE 00     MX
    JMP L_80CDBD                    ; $80CDB0  4C BD CD     MX
L_80CDB3:
    LDA $00EC                       ; $80CDB3  AD EC 00     MX
    SEC                             ; $80CDB6  38           MX
    SBC $0EAA,X                     ; $80CDB7  FD AA 0E     MX
    STA $00EE                       ; $80CDBA  8D EE 00     MX
L_80CDBD:
    LDA #$01CC                      ; $80CDBD  A9 CC 01     MX
    SEC                             ; $80CDC0  38           MX
    SBC $012B                       ; $80CDC1  ED 2B 01     MX
    STA $00F0                       ; $80CDC4  8D F0 00     MX
    JSL L_ABE007                    ; $80CDC7  22 07 E0 AB  MX
    LDA $00EE                       ; $80CDCB  AD EE 00     MX
    CLC                             ; $80CDCE  18           MX
    ADC #$0090                      ; $80CDCF  69 90 00     MX
    STA $00EE                       ; $80CDD2  8D EE 00     MX
    JSL $2BE007                     ; $80CDD5  22 07 E0 2B  MX
    LDA $15F5                       ; $80CDD9  AD F5 15     MX
    BEQ L_80CDF3                    ; $80CDDC  F0 15        MX
    LDA $15F7                       ; $80CDDE  AD F7 15     MX
    BNE L_80CDF0                    ; $80CDE1  D0 0D        MX
    LDA #$0000                      ; $80CDE3  A9 00 00     MX
    JSL L_BDFDF3                    ; $80CDE6  22 F3 FD BD  MX
    LDA #$0008                      ; $80CDEA  A9 08 00     MX
    STA $15F7                       ; $80CDED  8D F7 15     MX
L_80CDF0:
    DEC $15F7                       ; $80CDF0  CE F7 15     MX
L_80CDF3:
    LDA $15EB                       ; $80CDF3  AD EB 15     MX
    AND $15ED                       ; $80CDF6  2D ED 15     MX
    BEQ L_80CE4A                    ; $80CDF9  F0 4F        MX
    LDA #$0028                      ; $80CDFB  A9 28 00     MX
    STA $002A                       ; $80CDFE  8D 2A 00     MX
    LDA $15EF                       ; $80CE01  AD EF 15     MX
    STA $00EE                       ; $80CE04  8D EE 00     MX
    STA $00F0                       ; $80CE07  8D F0 00     MX
    LDA $15F1                       ; $80CE0A  AD F1 15     MX
    STA $00F0                       ; $80CE0D  8D F0 00     MX
    CMP #$00E0                      ; $80CE10  C9 E0 00     MX
    BCC L_80CE18                    ; $80CE13  90 03        MX
    STZ $00F0                       ; $80CE15  9C F0 00     MX
L_80CE18:
    LDA $15F3                       ; $80CE18  AD F3 15     MX
    ASL                             ; $80CE1B  0A           MX
    TAX                             ; $80CE1C  AA           MX
    LDA $CE4D,X                     ; $80CE1D  BD 4D CE     MX
    STA $00F2                       ; $80CE20  8D F2 00     MX
    JSL L_ABE007                    ; $80CE23  22 07 E0 AB  MX
    LDA $1D56                       ; $80CE27  AD 56 1D     MX
    AND #$000F                      ; $80CE2A  29 0F 00     MX
    BNE L_80CE4A                    ; $80CE2D  D0 1B        MX
    LDA $0CD7                       ; $80CE2F  AD D7 0C     MX
    AND #$0003                      ; $80CE32  29 03 00     MX
    CMP #$0002                      ; $80CE35  C9 02 00     MX
    LDA $1601                       ; $80CE38  AD 01 16     MX
    BNE L_80CE4A                    ; $80CE3B  D0 0D        MX
    LDA #$000F                      ; $80CE3D  A9 0F 00     MX
    STA $1601                       ; $80CE40  8D 01 16     MX
    LDA #$001B                      ; $80CE43  A9 1B 00     MX
    JSL L_BDFDF3                    ; $80CE46  22 F3 FD BD  MX
L_80CE4A:
    SEP #$10                        ; $80CE4A  E2 10        MX
    RTS                             ; $80CE4C  60           Mx
    db $AC,$01,$AC,$01,$AE,$01,$AE,$01,$AE,$01,$AC,$01,$A9,$20,$00,$AE ; $80CE4D
    db $26,$07,$EC,$45,$0C,$90,$03,$09,$10,$00,$8D,$28,$00,$A9,$C0,$01 ; $80CE5D
    db $8D,$2C,$00,$AD,$34,$00,$8D,$20,$00,$AD,$35,$00,$8D,$21,$00,$AD ; $80CE6D
    db $0C,$07,$C9,$05,$00,$90,$09,$AD,$28,$00,$09,$40,$00,$8D,$28,$00 ; $80CE7D
    db $AD,$4A,$07,$29,$60,$00,$0A,$4D,$28,$00,$8D,$AE,$00,$AD,$1E,$07 ; $80CE8D
    db $8D,$24,$00,$AD,$26,$07,$18,$69,$02,$00,$8D,$AF,$0B,$4A,$8D,$26 ; $80CE9D
    db $00,$AD,$AF,$0B,$38,$E9,$10,$03,$B0,$03,$A9,$00,$00,$4A,$C9,$70 ; $80CEAD
    db $00,$90,$03,$A9,$6F,$00,$8D,$EA,$00,$AD,$24,$00,$8D,$EC,$00,$AD ; $80CEBD
    db $EC,$00,$8D,$A6,$00,$30,$03,$4C,$32,$CF,$49,$FF,$FF,$18,$69,$01 ; $80CECD
    db $00,$8D,$EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5,$27,$8D,$EA,$00 ; $80CEDD
    db $AD,$EE,$00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2,$20,$8D,$02,$42 ; $80CEED
    db $AD,$EB,$00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD,$16,$42,$8D,$F2 ; $80CEFD
    db $00,$AD,$F3,$00,$29,$FF,$00,$49,$FF,$FF,$18,$69,$01,$00,$18,$6D ; $80CF0D
    db $A6,$00,$AC,$C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C,$7C,$CF,$38,$FD ; $80CF1D
    db $AA,$0E,$4C,$7C,$CF,$8D,$EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5 ; $80CF2D
    db $A7,$8D,$EA,$00,$AD,$EE,$00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2 ; $80CF3D
    db $20,$8D,$02,$42,$AD,$EB,$00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD ; $80CF4D
    db $16,$42,$8D,$F2,$00,$AD,$F3,$00,$29,$FF,$00,$18,$6D,$A6,$00,$AC ; $80CF5D
    db $C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C,$7C,$CF,$38,$FD,$AA,$0E,$18 ; $80CF6D
    db $69,$C0,$01,$8D,$AA,$00,$38,$ED,$44,$07,$8D,$54,$0B,$8D,$24,$00 ; $80CF7D
    db $AD,$26,$00,$38,$ED,$2B,$01,$8D,$56,$0B,$38,$ED,$22,$07,$8D,$AC ; $80CF8D
    db $00,$38,$ED,$40,$07,$38,$E9,$3F,$00,$8D,$26,$00,$AD,$50,$07,$F0 ; $80CF9D
    db $0A,$20,$C2,$CF,$22,$EA,$E2,$AB,$4C,$F5,$CF,$22,$EA,$E2,$AB,$20 ; $80CFAD
    db $C2,$CF,$4C,$F5,$CF,$A9,$50,$01,$8D,$F2,$00,$AD,$AE,$00,$29,$F1 ; $80CFBD
    db $00,$09,$0E,$00,$8D,$2A,$00,$A2,$00,$00,$AD,$AA,$00,$18,$6D,$4C ; $80CFCD
    db $07,$8D,$EE,$00,$AD,$AC,$00,$18,$6D,$4E,$07,$AE,$BA,$07,$F0,$00 ; $80CFDD
    db $8D,$F0,$00,$22,$07,$E0,$AB,$60,$AD,$54,$0B,$18,$69,$14,$00,$8D ; $80CFED
    db $58,$0B,$AD,$56,$0B,$38,$E9,$07,$00,$8D,$5A,$0B,$8D,$A4,$00,$9C ; $80CFFD
    db $B4,$07,$AD,$58,$0B,$89,$00,$FF,$F0,$7D,$C9,$E0,$FF,$10,$3D,$C9 ; $80D00D
    db $00,$80,$6A,$C9,$00,$80,$6A,$C9,$00,$80,$6A,$18,$69,$20,$00,$10 ; $80D01D
    db $0D,$A9,$00,$00,$80,$08,$89,$00,$FF,$F0,$03,$4C,$BE,$D0,$E2,$20 ; $80D02D
    db $8D,$48,$03,$AD,$A4,$00,$38,$E9,$30,$90,$76,$8D,$49,$03,$A9,$87 ; $80D03D
    db $8D,$B2,$07,$A2,$01,$00,$8E,$B4,$07,$4C,$CA,$D0,$C9,$10,$01,$30 ; $80D04D
    db $31,$38,$E9,$F0,$00,$4A,$4A,$4A,$18,$69,$D0,$00,$C9,$F0,$00,$90 ; $80D05D
    db $03,$A9,$F0,$00,$E2,$20,$8D,$48,$03,$AD,$A4,$00,$38,$E9,$30,$90 ; $80D06D
    db $40,$8D,$49,$03,$A9,$87,$8D,$B2,$07,$A2,$01,$00,$8E,$B4,$07,$4C ; $80D07D
    db $CA,$D0,$89,$00,$FF,$D0,$2A,$E2,$10,$AE,$B2,$07,$F0,$23,$AE,$F1 ; $80D08D
    db $06,$F0,$1E,$C2,$10,$E2,$20,$18,$69,$0C,$B0,$15,$8D,$48,$03,$AD ; $80D09D
    db $A4,$00,$38,$E9,$50,$38,$ED,$22,$07,$90,$06,$8D,$49,$03,$4C,$CA ; $80D0AD
    db $D0,$E2,$20,$A9,$E0,$8D,$49,$03,$C2,$30,$4C,$0F,$D1,$C2,$30,$AD ; $80D0BD
    db $BE,$00,$C9,$00,$00,$D0,$3B,$AD,$58,$0B,$30,$12,$29,$00,$FF,$F0 ; $80D0CD
    db $1A,$A9,$DE,$B1,$CD,$FA,$0A,$F0,$29,$8D,$FA,$0A,$80,$18,$A9,$69 ; $80D0DD
    db $B2,$CD,$FA,$0A,$F0,$1C,$8D,$FA,$0A,$80,$0B,$A9,$53,$B1,$CD,$FA ; $80D0ED
    db $0A,$F0,$0F,$8D,$FA,$0A,$18,$69,$40,$00,$8D,$02,$0B,$EE,$F2,$0A ; $80D0FD
    db $80,$03,$9C,$F2,$0A,$60,$A9,$22,$00,$AE,$0E,$08,$EC,$45,$0C,$90 ; $80D10D
    db $03,$09,$10,$00,$8D,$28,$00,$A9,$E0,$01,$8D,$2C,$00,$AD,$38,$00 ; $80D11D
    db $8D,$20,$00,$AD,$39,$00,$8D,$21,$00,$AD,$F4,$07,$C9,$05,$00,$90 ; $80D12D
    db $09,$AD,$28,$00,$09,$40,$00,$8D,$28,$00,$AD,$32,$08,$29,$60,$00 ; $80D13D
    db $0A,$4D,$28,$00,$8D,$AE,$00,$AD,$06,$08,$8D,$24,$00,$AD,$0E,$08 ; $80D14D
    db $18,$69,$02,$00,$8D,$AF,$0B,$4A,$8D,$26,$00,$AD,$AF,$0B,$38,$E9 ; $80D15D
    db $10,$03,$B0,$03,$A9,$00,$00,$4A,$C9,$70,$00,$90,$03,$A9,$6F,$00 ; $80D16D
    db $8D,$EA,$00,$AD,$24,$00,$8D,$EC,$00,$AD,$EC,$00,$8D,$A6,$00,$30 ; $80D17D
    db $03,$4C,$EC,$D1,$49,$FF,$FF,$18,$69,$01,$00,$8D,$EE,$00,$AD,$EA ; $80D18D
    db $00,$0A,$AA,$BF,$0B,$E5,$27,$8D,$EA,$00,$AD,$EE,$00,$C9,$00,$01 ; $80D19D
    db $90,$03,$A9,$FF,$00,$E2,$20,$8D,$02,$42,$AD,$EB,$00,$8D,$03,$42 ; $80D1AD
    db $EA,$EA,$EA,$C2,$20,$AD,$16,$42,$8D,$F2,$00,$AD,$F3,$00,$29,$FF ; $80D1BD
    db $00,$49,$FF,$FF,$18,$69,$01,$00,$18,$6D,$A6,$00,$AC,$C0,$00,$F0 ; $80D1CD
    db $07,$38,$FD,$B9,$0F,$4C,$36,$D2,$38,$FD,$AA,$0E,$4C,$36,$D2,$8D ; $80D1DD
    db $EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5,$A7,$8D,$EA,$00,$AD,$EE ; $80D1ED
    db $00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2,$20,$8D,$02,$42,$AD,$EB ; $80D1FD
    db $00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD,$16,$42,$8D,$F2,$00,$AD ; $80D20D
    db $F3,$00,$29,$FF,$00,$18,$6D,$A6,$00,$AC,$C0,$00,$F0,$07,$38,$FD ; $80D21D
    db $B9,$0F,$4C,$36,$D2,$38,$FD,$AA,$0E,$18,$69,$C0,$01,$8D,$AA,$00 ; $80D22D
    db $38,$ED,$2C,$08,$8D,$54,$0B,$8D,$24,$00,$AD,$26,$00,$38,$ED,$2B ; $80D23D
    db $01,$8D,$56,$0B,$38,$ED,$0A,$08,$8D,$AC,$00,$38,$ED,$28,$08,$38 ; $80D24D
    db $E9,$3F,$00,$8D,$26,$00,$AD,$38,$08,$F0,$0A,$20,$7C,$D2,$22,$EA ; $80D25D
    db $E2,$AB,$4C,$AF,$D2,$22,$EA,$E2,$AB,$20,$7C,$D2,$4C,$AF,$D2,$A9 ; $80D26D
    db $52,$01,$8D,$F2,$00,$AD,$AE,$00,$29,$F1,$00,$09,$0E,$00,$8D,$2A ; $80D27D
    db $00,$A2,$00,$00,$AD,$AA,$00,$18,$6D,$34,$08,$8D,$EE,$00,$AD,$AC ; $80D28D
    db $00,$18,$6D,$36,$08,$AE,$A2,$08,$F0,$00,$8D,$F0,$00,$22,$07,$E0 ; $80D29D
    db $AB,$60,$AD,$54,$0B,$18,$69,$14,$00,$8D,$5C,$0B,$AD,$56,$0B,$38 ; $80D2AD
    db $E9,$07,$00,$8D,$5E,$0B,$8D,$A4,$00,$9C,$9C,$08,$AD,$5C,$0B,$89 ; $80D2BD
    db $00,$FF,$F0,$7D,$C9,$E0,$FF,$10,$3D,$C9,$00,$80,$6A,$C9,$00,$80 ; $80D2CD
    db $6A,$C9,$00,$80,$6A,$18,$69,$20,$00,$10,$0D,$A9,$00,$00,$80,$08 ; $80D2DD
    db $89,$00,$FF,$F0,$03,$4C,$78,$D3,$E2,$20,$8D,$4C,$03,$AD,$A4,$00 ; $80D2ED
    db $38,$E9,$30,$90,$76,$8D,$4D,$03,$A9,$87,$8D,$9A,$08,$A2,$01,$00 ; $80D2FD
    db $8E,$9C,$08,$4C,$84,$D3,$C9,$10,$01,$30,$31,$38,$E9,$F0,$00,$4A ; $80D30D
    db $4A,$4A,$18,$69,$D0,$00,$C9,$F0,$00,$90,$03,$A9,$F0,$00,$E2,$20 ; $80D31D
    db $8D,$4C,$03,$AD,$A4,$00,$38,$E9,$30,$90,$40,$8D,$4D,$03,$A9,$87 ; $80D32D
    db $8D,$9A,$08,$A2,$01,$00,$8E,$9C,$08,$4C,$84,$D3,$89,$00,$FF,$D0 ; $80D33D
    db $2A,$E2,$10,$AE,$9A,$08,$F0,$23,$AE,$D9,$07,$F0,$1E,$C2,$10,$E2 ; $80D34D
    db $20,$18,$69,$0C,$B0,$15,$8D,$4C,$03,$AD,$A4,$00,$38,$E9,$50,$38 ; $80D35D
    db $ED,$0A,$08,$90,$06,$8D,$4D,$03,$4C,$84,$D3,$E2,$20,$A9,$E0,$8D ; $80D36D
    db $4D,$03,$C2,$30,$4C,$C9,$D3,$C2,$30,$AD,$BE,$00,$C9,$01,$00,$D0 ; $80D37D
    db $3B,$AD,$5C,$0B,$30,$12,$29,$00,$FF,$F0,$1A,$A9,$7F,$B3,$CD,$FC ; $80D38D
    db $0A,$F0,$29,$8D,$FC,$0A,$80,$18,$A9,$0A,$B4,$CD,$FC,$0A,$F0,$1C ; $80D39D
    db $8D,$FC,$0A,$80,$0B,$A9,$F4,$B2,$CD,$FC,$0A,$F0,$0F,$8D,$FC,$0A ; $80D3AD
    db $18,$69,$40,$00,$8D,$04,$0B,$EE,$F4,$0A,$80,$03,$9C,$F4,$0A,$60 ; $80D3BD
    db $A9,$26,$00,$AE,$F6,$08,$EC,$45,$0C,$90,$03,$09,$10,$00,$8D,$28 ; $80D3CD
    db $00,$A9,$E0,$00,$8D,$2C,$00,$AD,$3C,$00,$8D,$20,$00,$AD,$3D,$00 ; $80D3DD
    db $8D,$21,$00,$AD,$DC,$08,$C9,$05,$00,$90,$09,$AD,$28,$00,$09,$40 ; $80D3ED
    db $00,$8D,$28,$00,$AD,$1A,$09,$29,$60,$00,$0A,$4D,$28,$00,$8D,$AE ; $80D3FD
    db $00,$AD,$EE,$08,$8D,$24,$00,$AD,$F6,$08,$18,$69,$02,$00,$8D,$AF ; $80D40D
    db $0B,$4A,$8D,$26,$00,$AD,$AF,$0B,$38,$E9,$10,$03,$B0,$03,$A9,$00 ; $80D41D
    db $00,$4A,$C9,$70,$00,$90,$03,$A9,$6F,$00,$8D,$EA,$00,$AD,$24,$00 ; $80D42D
    db $8D,$EC,$00,$AD,$EC,$00,$8D,$A6,$00,$30,$03,$4C,$A6,$D4,$49,$FF ; $80D43D
    db $FF,$18,$69,$01,$00,$8D,$EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5 ; $80D44D
    db $27,$8D,$EA,$00,$AD,$EE,$00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2 ; $80D45D
    db $20,$8D,$02,$42,$AD,$EB,$00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD ; $80D46D
    db $16,$42,$8D,$F2,$00,$AD,$F3,$00,$29,$FF,$00,$49,$FF,$FF,$18,$69 ; $80D47D
    db $01,$00,$18,$6D,$A6,$00,$AC,$C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C ; $80D48D
    db $F0,$D4,$38,$FD,$AA,$0E,$4C,$F0,$D4,$8D,$EE,$00,$AD,$EA,$00,$0A ; $80D49D
    db $AA,$BF,$0B,$E5,$A7,$8D,$EA,$00,$AD,$EE,$00,$C9,$00,$01,$90,$03 ; $80D4AD
    db $A9,$FF,$00,$E2,$20,$8D,$02,$42,$AD,$EB,$00,$8D,$03,$42,$EA,$EA ; $80D4BD
    db $EA,$C2,$20,$AD,$16,$42,$8D,$F2,$00,$AD,$F3,$00,$29,$FF,$00,$18 ; $80D4CD
    db $6D,$A6,$00,$AC,$C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C,$F0,$D4,$38 ; $80D4DD
    db $FD,$AA,$0E,$18,$69,$C0,$01,$8D,$AA,$00,$38,$ED,$14,$09,$8D,$54 ; $80D4ED
    db $0B,$8D,$24,$00,$AD,$26,$00,$38,$ED,$2B,$01,$8D,$56,$0B,$38,$ED ; $80D4FD
    db $F2,$08,$8D,$AC,$00,$38,$ED,$10,$09,$38,$E9,$3F,$00,$8D,$26,$00 ; $80D50D
    db $AD,$20,$09,$F0,$0A,$20,$36,$D5,$22,$EA,$E2,$AB,$4C,$69,$D5,$22 ; $80D51D
    db $EA,$E2,$AB,$20,$36,$D5,$4C,$69,$D5,$A9,$54,$01,$8D,$F2,$00,$AD ; $80D52D
    db $AE,$00,$29,$F1,$00,$09,$0E,$00,$8D,$2A,$00,$A2,$00,$00,$AD,$AA ; $80D53D
    db $00,$18,$6D,$1C,$09,$8D,$EE,$00,$AD,$AC,$00,$18,$6D,$1E,$09,$AE ; $80D54D
    db $8A,$09,$F0,$00,$8D,$F0,$00,$22,$07,$E0,$AB,$60,$AD,$54,$0B,$18 ; $80D55D
    db $69,$14,$00,$8D,$60,$0B,$AD,$56,$0B,$38,$E9,$07,$00,$8D,$62,$0B ; $80D56D
    db $8D,$A4,$00,$9C,$84,$09,$AD,$60,$0B,$89,$00,$FF,$F0,$7D,$C9,$E0 ; $80D57D
    db $FF,$10,$3D,$C9,$00,$80,$6A,$C9,$00,$80,$6A,$C9,$00,$80,$6A,$18 ; $80D58D
    db $69,$20,$00,$10,$0D,$A9,$00,$00,$80,$08,$89,$00,$FF,$F0,$03,$4C ; $80D59D
    db $32,$D6,$E2,$20,$8D,$50,$03,$AD,$A4,$00,$38,$E9,$30,$90,$76,$8D ; $80D5AD
    db $51,$03,$A9,$87,$8D,$82,$09,$A2,$01,$00,$8E,$84,$09,$4C,$3E,$D6 ; $80D5BD
    db $C9,$10,$01,$30,$31,$38,$E9,$F0,$00,$4A,$4A,$4A,$18,$69,$D0,$00 ; $80D5CD
    db $C9,$F0,$00,$90,$03,$A9,$F0,$00,$E2,$20,$8D,$50,$03,$AD,$A4,$00 ; $80D5DD
    db $38,$E9,$30,$90,$40,$8D,$51,$03,$A9,$87,$8D,$82,$09,$A2,$01,$00 ; $80D5ED
    db $8E,$84,$09,$4C,$3E,$D6,$89,$00,$FF,$D0,$2A,$E2,$10,$AE,$82,$09 ; $80D5FD
    db $F0,$23,$AE,$C1,$08,$F0,$1E,$C2,$10,$E2,$20,$18,$69,$0C,$B0,$15 ; $80D60D
    db $8D,$50,$03,$AD,$A4,$00,$38,$E9,$50,$38,$ED,$F2,$08,$90,$06,$8D ; $80D61D
    db $51,$03,$4C,$3E,$D6,$E2,$20,$A9,$E0,$8D,$51,$03,$C2,$30,$4C,$83 ; $80D62D
    db $D6,$C2,$30,$AD,$BE,$00,$C9,$02,$00,$D0,$3B,$AD,$60,$0B,$30,$12 ; $80D63D
    db $29,$00,$FF,$F0,$1A,$A9,$C1,$B6,$CD,$FE,$0A,$F0,$29,$8D,$FE,$0A ; $80D64D
    db $80,$18,$A9,$4C,$B7,$CD,$FE,$0A,$F0,$1C,$8D,$FE,$0A,$80,$0B,$A9 ; $80D65D
    db $36,$B6,$CD,$FE,$0A,$F0,$0F,$8D,$FE,$0A,$18,$69,$40,$00,$8D,$06 ; $80D66D
    db $0B,$EE,$F6,$0A,$80,$03,$9C,$F6,$0A,$60,$A9,$24,$00,$AE,$DE,$09 ; $80D67D
    db $EC,$45,$0C,$90,$03,$09,$10,$00,$8D,$28,$00,$A9,$60,$00,$8D,$2C ; $80D68D
    db $00,$AD,$40,$00,$8D,$20,$00,$AD,$41,$00,$8D,$21,$00,$AD,$C4,$09 ; $80D69D
    db $C9,$05,$00,$90,$09,$AD,$28,$00,$09,$40,$00,$8D,$28,$00,$AD,$02 ; $80D6AD
    db $0A,$29,$60,$00,$0A,$4D,$28,$00,$8D,$AE,$00,$AD,$D6,$09,$8D,$24 ; $80D6BD
    db $00,$AD,$DE,$09,$18,$69,$02,$00,$8D,$AF,$0B,$4A,$8D,$26,$00,$AD ; $80D6CD
    db $AF,$0B,$38,$E9,$10,$03,$B0,$03,$A9,$00,$00,$4A,$C9,$70,$00,$90 ; $80D6DD
    db $03,$A9,$6F,$00,$8D,$EA,$00,$AD,$24,$00,$8D,$EC,$00,$AD,$EC,$00 ; $80D6ED
    db $8D,$A6,$00,$30,$03,$4C,$60,$D7,$49,$FF,$FF,$18,$69,$01,$00,$8D ; $80D6FD
    db $EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5,$27,$8D,$EA,$00,$AD,$EE ; $80D70D
    db $00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2,$20,$8D,$02,$42,$AD,$EB ; $80D71D
    db $00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD,$16,$42,$8D,$F2,$00,$AD ; $80D72D
    db $F3,$00,$29,$FF,$00,$49,$FF,$FF,$18,$69,$01,$00,$18,$6D,$A6,$00 ; $80D73D
    db $AC,$C0,$00,$F0,$07,$38,$FD,$B9,$0F,$4C,$AA,$D7,$38,$FD,$AA,$0E ; $80D74D
    db $4C,$AA,$D7,$8D,$EE,$00,$AD,$EA,$00,$0A,$AA,$BF,$0B,$E5,$A7,$8D ; $80D75D
    db $EA,$00,$AD,$EE,$00,$C9,$00,$01,$90,$03,$A9,$FF,$00,$E2,$20,$8D ; $80D76D
    db $02,$42,$AD,$EB,$00,$8D,$03,$42,$EA,$EA,$EA,$C2,$20,$AD,$16,$42 ; $80D77D
    db $8D,$F2,$00,$AD,$F3,$00,$29,$FF,$00,$18,$6D,$A6,$00,$AC,$C0,$00 ; $80D78D
    db $F0,$07,$38,$FD,$B9,$0F,$4C,$AA,$D7,$38,$FD,$AA,$0E,$18,$69,$C0 ; $80D79D
    db $01,$8D,$AA,$00,$38,$ED,$FC,$09,$8D,$54,$0B,$8D,$24,$00,$AD,$26 ; $80D7AD
    db $00,$38,$ED,$2B,$01,$8D,$56,$0B,$38,$ED,$DA,$09,$8D,$AC,$00,$38 ; $80D7BD
    db $ED,$F8,$09,$38,$E9,$3F,$00,$8D,$26,$00,$AD,$08,$0A,$F0,$0A,$20 ; $80D7CD
    db $F0,$D7,$22,$EA,$E2,$AB,$4C,$23,$D8,$22,$EA,$E2,$AB,$20,$F0,$D7 ; $80D7DD
    db $4C,$23,$D8,$A9,$56,$01,$8D,$F2,$00,$AD,$AE,$00,$29,$F1,$00,$09 ; $80D7ED
    db $0E,$00,$8D,$2A,$00,$A2,$00,$00,$AD,$AA,$00,$18,$6D,$04,$0A,$8D ; $80D7FD
    db $EE,$00,$AD,$AC,$00,$18,$6D,$06,$0A,$AE,$72,$0A,$F0,$00,$8D,$F0 ; $80D80D
    db $00,$22,$07,$E0,$AB,$60,$AD,$54,$0B,$18,$69,$14,$00,$8D,$64,$0B ; $80D81D
    db $AD,$56,$0B,$38,$E9,$07,$00,$8D,$66,$0B,$8D,$A4,$00,$9C,$6C,$0A ; $80D82D
    db $AD,$64,$0B,$89,$00,$FF,$F0,$7D,$C9,$E0,$FF,$10,$3D,$C9,$00,$80 ; $80D83D
    db $6A,$C9,$00,$80,$6A,$C9,$00,$80,$6A,$18,$69,$20,$00,$10,$0D,$A9 ; $80D84D
    db $00,$00,$80,$08,$89,$00,$FF,$F0,$03,$4C,$EC,$D8,$E2,$20,$8D,$54 ; $80D85D
    db $03,$AD,$A4,$00,$38,$E9,$30,$90,$76,$8D,$55,$03,$A9,$87,$8D,$6A ; $80D86D
    db $0A,$A2,$01,$00,$8E,$6C,$0A,$4C,$F8,$D8,$C9,$10,$01,$30,$31,$38 ; $80D87D
    db $E9,$F0,$00,$4A,$4A,$4A,$18,$69,$D0,$00,$C9,$F0,$00,$90,$03,$A9 ; $80D88D
    db $F0,$00,$E2,$20,$8D,$54,$03,$AD,$A4,$00,$38,$E9,$30,$90,$40,$8D ; $80D89D
    db $55,$03,$A9,$87,$8D,$6A,$0A,$A2,$01,$00,$8E,$6C,$0A,$4C,$F8,$D8 ; $80D8AD
    db $89,$00,$FF,$D0,$2A,$E2,$10,$AE,$6A,$0A,$F0,$23,$AE,$A9,$09,$F0 ; $80D8BD
    db $1E,$C2,$10,$E2,$20,$18,$69,$0C,$B0,$15,$8D,$54,$03,$AD,$A4,$00 ; $80D8CD
    db $38,$E9,$50,$38,$ED,$DA,$09,$90,$06,$8D,$55,$03,$4C,$F8,$D8,$E2 ; $80D8DD
    db $20,$A9,$E0,$8D,$55,$03,$C2,$30,$4C,$3D,$D9,$C2,$30,$AD,$BE,$00 ; $80D8ED
    db $C9,$03,$00,$D0,$3B,$AD,$64,$0B,$30,$12,$29,$00,$FF,$F0,$1A,$A9 ; $80D8FD
    db $20,$B5,$CD,$00,$0B,$F0,$29,$8D,$00,$0B,$80,$18,$A9,$AB,$B5,$CD ; $80D90D
    db $00,$0B,$F0,$1C,$8D,$00,$0B,$80,$0B,$A9,$95,$B4,$CD,$00,$0B,$F0 ; $80D91D
    db $0F,$8D,$00,$0B,$18,$69,$40,$00,$8D,$08,$0B,$EE,$F8,$0A,$80,$03 ; $80D92D
    db $9C,$F8,$0A,$60                                                 ; $80D93D
L_80D941:
    JSR L_80D949                    ; $80D941  20 49 D9     MX
L_80D944:
    RTL                             ; $80D944  6B           Mx
L_80D945:
    JSR L_80D957                    ; $80D945  20 57 D9     MX
    RTL                             ; $80D948  6B           MX
L_80D949:
    REP #$10                        ; $80D949  C2 10        MX
L_80D94B:
    LDX #$005C                      ; $80D94B  A2 5C 00     MX
L_80D94E:
    STZ $0044,X                     ; $80D94E  9E 44 00     MX
L_80D951:
    DEX                             ; $80D951  CA           MX
L_80D952:
    DEX                             ; $80D952  CA           MX
L_80D953:
    BPL L_80D94E                    ; $80D953  10 F9        MX
L_80D955:
    SEP #$10                        ; $80D955  E2 10        MX
L_80D957:
    STZ $005C                       ; $80D957  9C 5C 00     MX
L_80D95A:
    STZ $0068                       ; $80D95A  9C 68 00     MX
L_80D95D:
    STZ $0074                       ; $80D95D  9C 74 00     MX
L_80D960:
    STZ $0080                       ; $80D960  9C 80 00     MX
L_80D963:
    STZ $008C                       ; $80D963  9C 8C 00     MX
L_80D966:
    STZ $0098                       ; $80D966  9C 98 00     MX
L_80D969:
    STZ $0050                       ; $80D969  9C 50 00     MX
L_80D96C:
    STZ $0044                       ; $80D96C  9C 44 00     MX
L_80D96F:
    STZ $0050                       ; $80D96F  9C 50 00     MX
L_80D972:
    RTS                             ; $80D972  60           MX
L_80D973:
    JSR L_80D977                    ; $80D973  20 77 D9     mx
    RTL                             ; $80D976  6B           mx
L_80D977:
    REP #$20                        ; $80D977  C2 20        mx
    LDX #$80                        ; $80D979  A2 80        Mx
    STX $2115                       ; $80D97B  8E 15 21     Mx
    LDA #$1801                      ; $80D97E  A9 01 18     Mx
    STA $4300                       ; $80D981  8D 00 43     Mx
    LDX #$01                        ; $80D984  A2 01        Mx
    LDA $0044                       ; $80D986  AD 44 00     Mx
    BNE L_80D993                    ; $80D989  D0 08        Mx
    LDA $0AF2                       ; $80D98B  AD F2 0A     Mx
    BNE L_80DA04                    ; $80D98E  D0 74        Mx
    JMP L_80DA3A                    ; $80D990  4C 3A DA     Mx
L_80D993:
    LDA #$7C00                      ; $80D993  A9 00 7C     Mx
    STA $2116                       ; $80D996  8D 16 21     Mx
    LDA $0044                       ; $80D999  AD 44 00     Mx
    STA $4302                       ; $80D99C  8D 02 43     Mx
    LDA $0046                       ; $80D99F  AD 46 00     Mx
    STA $4304                       ; $80D9A2  8D 04 43     Mx
    LDA $0048                       ; $80D9A5  AD 48 00     Mx
    STA $4305                       ; $80D9A8  8D 05 43     Mx
    STX $420B                       ; $80D9AB  8E 0B 42     Mx
    LDA #$7D00                      ; $80D9AE  A9 00 7D     Mx
    STA $2116                       ; $80D9B1  8D 16 21     Mx
    LDA $004A                       ; $80D9B4  AD 4A 00     Mx
    STA $4302                       ; $80D9B7  8D 02 43     Mx
    LDA $004C                       ; $80D9BA  AD 4C 00     Mx
    STA $4304                       ; $80D9BD  8D 04 43     Mx
    LDA $004E                       ; $80D9C0  AD 4E 00     Mx
    STA $4305                       ; $80D9C3  8D 05 43     Mx
    STX $420B                       ; $80D9C6  8E 0B 42     Mx
    LDA #$7500                      ; $80D9C9  A9 00 75     Mx
    STA $2116                       ; $80D9CC  8D 16 21     Mx
    LDA $0C61                       ; $80D9CF  AD 61 0C     Mx
    STA $4302                       ; $80D9D2  8D 02 43     Mx
    LDA $0C59                       ; $80D9D5  AD 59 0C     Mx
    STA $4304                       ; $80D9D8  8D 04 43     Mx
    LDA $0C64                       ; $80D9DB  AD 64 0C     Mx
    STA $4305                       ; $80D9DE  8D 05 43     Mx
    STX $420B                       ; $80D9E1  8E 0B 42     Mx
    LDA #$7600                      ; $80D9E4  A9 00 76     Mx
    STA $2116                       ; $80D9E7  8D 16 21     Mx
    LDA $0C66                       ; $80D9EA  AD 66 0C     Mx
    STA $4302                       ; $80D9ED  8D 02 43     Mx
    LDA $0C5A                       ; $80D9F0  AD 5A 0C     Mx
    STA $4304                       ; $80D9F3  8D 04 43     Mx
    LDA $0C69                       ; $80D9F6  AD 69 0C     Mx
    STA $4305                       ; $80D9F9  8D 05 43     Mx
    STX $420B                       ; $80D9FC  8E 0B 42     Mx
    LDA $0AF2                       ; $80D9FF  AD F2 0A     Mx
    BEQ L_80DA3A                    ; $80DA02  F0 36        Mx
L_80DA04:
    LDA #$7A00                      ; $80DA04  A9 00 7A     Mx
    STA $2116                       ; $80DA07  8D 16 21     Mx
    LDA $0AFA                       ; $80DA0A  AD FA 0A     Mx
    STA $4302                       ; $80DA0D  8D 02 43     Mx
    LDA #$0028                      ; $80DA10  A9 28 00     Mx
    STA $4304                       ; $80DA13  8D 04 43     Mx
    LDA #$0040                      ; $80DA16  A9 40 00     Mx
    STA $4305                       ; $80DA19  8D 05 43     Mx
    STX $420B                       ; $80DA1C  8E 0B 42     Mx
    LDA #$7B00                      ; $80DA1F  A9 00 7B     Mx
    STA $2116                       ; $80DA22  8D 16 21     Mx
    LDA $0B02                       ; $80DA25  AD 02 0B     Mx
    STA $4302                       ; $80DA28  8D 02 43     Mx
    LDA #$0028                      ; $80DA2B  A9 28 00     Mx
    STA $4304                       ; $80DA2E  8D 04 43     Mx
    LDA #$0040                      ; $80DA31  A9 40 00     Mx
    STA $4305                       ; $80DA34  8D 05 43     Mx
    STX $420B                       ; $80DA37  8E 0B 42     Mx
L_80DA3A:
    LDA $0050                       ; $80DA3A  AD 50 00     Mx
    BNE L_80DA47                    ; $80DA3D  D0 08        Mx
    LDA $0AF4                       ; $80DA3F  AD F4 0A     Mx
    BNE L_80DAB8                    ; $80DA42  D0 74        Mx
    JMP L_80DAEE                    ; $80DA44  4C EE DA     Mx
L_80DA47:
    LDA #$7E00                      ; $80DA47  A9 00 7E     Mx
    STA $2116                       ; $80DA4A  8D 16 21     Mx
    LDA $0050                       ; $80DA4D  AD 50 00     Mx
    STA $4302                       ; $80DA50  8D 02 43     Mx
    LDA $0052                       ; $80DA53  AD 52 00     Mx
    STA $4304                       ; $80DA56  8D 04 43     Mx
    LDA $0054                       ; $80DA59  AD 54 00     Mx
    STA $4305                       ; $80DA5C  8D 05 43     Mx
    STX $420B                       ; $80DA5F  8E 0B 42     Mx
    LDA #$7F00                      ; $80DA62  A9 00 7F     Mx
    STA $2116                       ; $80DA65  8D 16 21     Mx
    LDA $0056                       ; $80DA68  AD 56 00     Mx
    STA $4302                       ; $80DA6B  8D 02 43     Mx
    LDA $0058                       ; $80DA6E  AD 58 00     Mx
    STA $4304                       ; $80DA71  8D 04 43     Mx
    LDA $0054                       ; $80DA74  AD 54 00     Mx
    STA $4305                       ; $80DA77  8D 05 43     Mx
    STX $420B                       ; $80DA7A  8E 0B 42     Mx
    LDA #$7520                      ; $80DA7D  A9 20 75     Mx
    STA $2116                       ; $80DA80  8D 16 21     Mx
    LDA $0C6B                       ; $80DA83  AD 6B 0C     Mx
    STA $4302                       ; $80DA86  8D 02 43     Mx
    LDA $0C5B                       ; $80DA89  AD 5B 0C     Mx
    STA $4304                       ; $80DA8C  8D 04 43     Mx
    LDA $0C6E                       ; $80DA8F  AD 6E 0C     Mx
    STA $4305                       ; $80DA92  8D 05 43     Mx
    STX $420B                       ; $80DA95  8E 0B 42     Mx
    LDA #$7620                      ; $80DA98  A9 20 76     Mx
    STA $2116                       ; $80DA9B  8D 16 21     Mx
    LDA $0C70                       ; $80DA9E  AD 70 0C     Mx
    STA $4302                       ; $80DAA1  8D 02 43     Mx
    LDA $0C5C                       ; $80DAA4  AD 5C 0C     Mx
    STA $4304                       ; $80DAA7  8D 04 43     Mx
    LDA $0C73                       ; $80DAAA  AD 73 0C     Mx
    STA $4305                       ; $80DAAD  8D 05 43     Mx
    STX $420B                       ; $80DAB0  8E 0B 42     Mx
    LDA $0AF4                       ; $80DAB3  AD F4 0A     Mx
    BEQ L_80DAEE                    ; $80DAB6  F0 36        Mx
L_80DAB8:
    LDA #$7A20                      ; $80DAB8  A9 20 7A     Mx
    STA $2116                       ; $80DABB  8D 16 21     Mx
    LDA $0AFC                       ; $80DABE  AD FC 0A     Mx
    STA $4302                       ; $80DAC1  8D 02 43     Mx
    LDA #$0028                      ; $80DAC4  A9 28 00     Mx
    STA $4304                       ; $80DAC7  8D 04 43     Mx
    LDA #$0040                      ; $80DACA  A9 40 00     Mx
    STA $4305                       ; $80DACD  8D 05 43     Mx
    STX $420B                       ; $80DAD0  8E 0B 42     Mx
    LDA #$7B20                      ; $80DAD3  A9 20 7B     Mx
    STA $2116                       ; $80DAD6  8D 16 21     Mx
    LDA $0B04                       ; $80DAD9  AD 04 0B     Mx
    STA $4302                       ; $80DADC  8D 02 43     Mx
    LDA #$0028                      ; $80DADF  A9 28 00     Mx
    STA $4304                       ; $80DAE2  8D 04 43     Mx
    LDA #$0040                      ; $80DAE5  A9 40 00     Mx
    STA $4305                       ; $80DAE8  8D 05 43     Mx
    STX $420B                       ; $80DAEB  8E 0B 42     Mx
L_80DAEE:
    LDA $005C                       ; $80DAEE  AD 5C 00     Mx
    BNE L_80DAFB                    ; $80DAF1  D0 08        Mx
    LDA $0AF6                       ; $80DAF3  AD F6 0A     Mx
    BNE L_80DB6C                    ; $80DAF6  D0 74        Mx
    JMP L_80DBA2                    ; $80DAF8  4C A2 DB     Mx
L_80DAFB:
    LDA #$6E00                      ; $80DAFB  A9 00 6E     Mx
    STA $2116                       ; $80DAFE  8D 16 21     Mx
    LDA $005C                       ; $80DB01  AD 5C 00     Mx
    STA $4302                       ; $80DB04  8D 02 43     Mx
    LDA $005E                       ; $80DB07  AD 5E 00     Mx
    STA $4304                       ; $80DB0A  8D 04 43     Mx
    LDA $0060                       ; $80DB0D  AD 60 00     Mx
    STA $4305                       ; $80DB10  8D 05 43     Mx
    STX $420B                       ; $80DB13  8E 0B 42     Mx
    LDA #$6F00                      ; $80DB16  A9 00 6F     Mx
    STA $2116                       ; $80DB19  8D 16 21     Mx
    LDA $0062                       ; $80DB1C  AD 62 00     Mx
    STA $4302                       ; $80DB1F  8D 02 43     Mx
    LDA $0064                       ; $80DB22  AD 64 00     Mx
    STA $4304                       ; $80DB25  8D 04 43     Mx
    LDA $0066                       ; $80DB28  AD 66 00     Mx
    STA $4305                       ; $80DB2B  8D 05 43     Mx
    STX $420B                       ; $80DB2E  8E 0B 42     Mx
    LDA #$7540                      ; $80DB31  A9 40 75     Mx
    STA $2116                       ; $80DB34  8D 16 21     Mx
    LDA $0C75                       ; $80DB37  AD 75 0C     Mx
    STA $4302                       ; $80DB3A  8D 02 43     Mx
    LDA $0C5D                       ; $80DB3D  AD 5D 0C     Mx
    STA $4304                       ; $80DB40  8D 04 43     Mx
    LDA $0C78                       ; $80DB43  AD 78 0C     Mx
    STA $4305                       ; $80DB46  8D 05 43     Mx
    STX $420B                       ; $80DB49  8E 0B 42     Mx
    LDA #$7640                      ; $80DB4C  A9 40 76     Mx
    STA $2116                       ; $80DB4F  8D 16 21     Mx
    LDA $0C7A                       ; $80DB52  AD 7A 0C     Mx
    STA $4302                       ; $80DB55  8D 02 43     Mx
    LDA $0C5E                       ; $80DB58  AD 5E 0C     Mx
    STA $4304                       ; $80DB5B  8D 04 43     Mx
    LDA $0C7D                       ; $80DB5E  AD 7D 0C     Mx
    STA $4305                       ; $80DB61  8D 05 43     Mx
    STX $420B                       ; $80DB64  8E 0B 42     Mx
    LDA $0AF6                       ; $80DB67  AD F6 0A     Mx
    BEQ L_80DBA2                    ; $80DB6A  F0 36        Mx
L_80DB6C:
    LDA #$7A40                      ; $80DB6C  A9 40 7A     Mx
    STA $2116                       ; $80DB6F  8D 16 21     Mx
    LDA $0AFE                       ; $80DB72  AD FE 0A     Mx
    STA $4302                       ; $80DB75  8D 02 43     Mx
    LDA #$0028                      ; $80DB78  A9 28 00     Mx
    STA $4304                       ; $80DB7B  8D 04 43     Mx
    LDA #$0040                      ; $80DB7E  A9 40 00     Mx
    STA $4305                       ; $80DB81  8D 05 43     Mx
    STX $420B                       ; $80DB84  8E 0B 42     Mx
    LDA #$7B40                      ; $80DB87  A9 40 7B     Mx
    STA $2116                       ; $80DB8A  8D 16 21     Mx
    LDA $0B06                       ; $80DB8D  AD 06 0B     Mx
    STA $4302                       ; $80DB90  8D 02 43     Mx
    LDA #$0028                      ; $80DB93  A9 28 00     Mx
    STA $4304                       ; $80DB96  8D 04 43     Mx
    LDA #$0040                      ; $80DB99  A9 40 00     Mx
    STA $4305                       ; $80DB9C  8D 05 43     Mx
    STX $420B                       ; $80DB9F  8E 0B 42     Mx
L_80DBA2:
    LDA $0068                       ; $80DBA2  AD 68 00     Mx
    BNE L_80DBAF                    ; $80DBA5  D0 08        Mx
    LDA $0AF8                       ; $80DBA7  AD F8 0A     Mx
    BNE L_80DC20                    ; $80DBAA  D0 74        Mx
    JMP L_80DC56                    ; $80DBAC  4C 56 DC     Mx
L_80DBAF:
    LDA #$6600                      ; $80DBAF  A9 00 66     Mx
    STA $2116                       ; $80DBB2  8D 16 21     Mx
    LDA $0068                       ; $80DBB5  AD 68 00     Mx
    STA $4302                       ; $80DBB8  8D 02 43     Mx
    LDA $006A                       ; $80DBBB  AD 6A 00     Mx
    STA $4304                       ; $80DBBE  8D 04 43     Mx
    LDA $006C                       ; $80DBC1  AD 6C 00     Mx
    STA $4305                       ; $80DBC4  8D 05 43     Mx
    STX $420B                       ; $80DBC7  8E 0B 42     Mx
    LDA #$6700                      ; $80DBCA  A9 00 67     Mx
    STA $2116                       ; $80DBCD  8D 16 21     Mx
    LDA $006E                       ; $80DBD0  AD 6E 00     Mx
    STA $4302                       ; $80DBD3  8D 02 43     Mx
    LDA $0070                       ; $80DBD6  AD 70 00     Mx
    STA $4304                       ; $80DBD9  8D 04 43     Mx
    LDA $0072                       ; $80DBDC  AD 72 00     Mx
    STA $4305                       ; $80DBDF  8D 05 43     Mx
    STX $420B                       ; $80DBE2  8E 0B 42     Mx
    LDA #$7560                      ; $80DBE5  A9 60 75     Mx
    STA $2116                       ; $80DBE8  8D 16 21     Mx
    LDA $0C7F                       ; $80DBEB  AD 7F 0C     Mx
    STA $4302                       ; $80DBEE  8D 02 43     Mx
    LDA $0C5F                       ; $80DBF1  AD 5F 0C     Mx
    STA $4304                       ; $80DBF4  8D 04 43     Mx
    LDA $0C82                       ; $80DBF7  AD 82 0C     Mx
    STA $4305                       ; $80DBFA  8D 05 43     Mx
    STX $420B                       ; $80DBFD  8E 0B 42     Mx
    LDA #$7660                      ; $80DC00  A9 60 76     Mx
    STA $2116                       ; $80DC03  8D 16 21     Mx
    LDA $0C84                       ; $80DC06  AD 84 0C     Mx
    STA $4302                       ; $80DC09  8D 02 43     Mx
    LDA $0C60                       ; $80DC0C  AD 60 0C     Mx
    STA $4304                       ; $80DC0F  8D 04 43     Mx
    LDA $0C87                       ; $80DC12  AD 87 0C     Mx
    STA $4305                       ; $80DC15  8D 05 43     Mx
    STX $420B                       ; $80DC18  8E 0B 42     Mx
    LDA $0AF8                       ; $80DC1B  AD F8 0A     Mx
    BEQ L_80DC56                    ; $80DC1E  F0 36        Mx
L_80DC20:
    LDA #$7A60                      ; $80DC20  A9 60 7A     Mx
    STA $2116                       ; $80DC23  8D 16 21     Mx
    LDA $0B00                       ; $80DC26  AD 00 0B     Mx
    STA $4302                       ; $80DC29  8D 02 43     Mx
    LDA #$0028                      ; $80DC2C  A9 28 00     Mx
    STA $4304                       ; $80DC2F  8D 04 43     Mx
    LDA #$0040                      ; $80DC32  A9 40 00     Mx
    STA $4305                       ; $80DC35  8D 05 43     Mx
    STX $420B                       ; $80DC38  8E 0B 42     Mx
    LDA #$7B60                      ; $80DC3B  A9 60 7B     Mx
    STA $2116                       ; $80DC3E  8D 16 21     Mx
    LDA $0B08                       ; $80DC41  AD 08 0B     Mx
    STA $4302                       ; $80DC44  8D 02 43     Mx
    LDA #$0028                      ; $80DC47  A9 28 00     Mx
    STA $4304                       ; $80DC4A  8D 04 43     Mx
    LDA #$0040                      ; $80DC4D  A9 40 00     Mx
    STA $4305                       ; $80DC50  8D 05 43     Mx
    STX $420B                       ; $80DC53  8E 0B 42     Mx
L_80DC56:
    LDA $0074                       ; $80DC56  AD 74 00     Mx
    BEQ L_80DC91                    ; $80DC59  F0 36        Mx
    LDA #$6800                      ; $80DC5B  A9 00 68     Mx
    STA $2116                       ; $80DC5E  8D 16 21     Mx
    LDA $0074                       ; $80DC61  AD 74 00     Mx
    STA $4302                       ; $80DC64  8D 02 43     Mx
    LDA $0076                       ; $80DC67  AD 76 00     Mx
    STA $4304                       ; $80DC6A  8D 04 43     Mx
    LDA $0078                       ; $80DC6D  AD 78 00     Mx
    STA $4305                       ; $80DC70  8D 05 43     Mx
    STX $420B                       ; $80DC73  8E 0B 42     Mx
    LDA #$6900                      ; $80DC76  A9 00 69     Mx
    STA $2116                       ; $80DC79  8D 16 21     Mx
    LDA $007A                       ; $80DC7C  AD 7A 00     Mx
    STA $4302                       ; $80DC7F  8D 02 43     Mx
    LDA $007C                       ; $80DC82  AD 7C 00     Mx
    STA $4304                       ; $80DC85  8D 04 43     Mx
    LDA $007E                       ; $80DC88  AD 7E 00     Mx
    STA $4305                       ; $80DC8B  8D 05 43     Mx
    STX $420B                       ; $80DC8E  8E 0B 42     Mx
L_80DC91:
    LDA $0080                       ; $80DC91  AD 80 00     Mx
    BEQ L_80DD02                    ; $80DC94  F0 6C        Mx
    LDA #$6A00                      ; $80DC96  A9 00 6A     Mx
    STA $2116                       ; $80DC99  8D 16 21     Mx
    LDA $0080                       ; $80DC9C  AD 80 00     Mx
    STA $4302                       ; $80DC9F  8D 02 43     Mx
    LDA $0082                       ; $80DCA2  AD 82 00     Mx
    STA $4304                       ; $80DCA5  8D 04 43     Mx
    LDA $0084                       ; $80DCA8  AD 84 00     Mx
    STA $4305                       ; $80DCAB  8D 05 43     Mx
    STX $420B                       ; $80DCAE  8E 0B 42     Mx
    LDA #$6B00                      ; $80DCB1  A9 00 6B     Mx
    STA $2116                       ; $80DCB4  8D 16 21     Mx
    LDA $0086                       ; $80DCB7  AD 86 00     Mx
    STA $4302                       ; $80DCBA  8D 02 43     Mx
    LDA $0088                       ; $80DCBD  AD 88 00     Mx
    STA $4304                       ; $80DCC0  8D 04 43     Mx
    LDA $008A                       ; $80DCC3  AD 8A 00     Mx
    STA $4305                       ; $80DCC6  8D 05 43     Mx
    STX $420B                       ; $80DCC9  8E 0B 42     Mx
    LDA #$6A80                      ; $80DCCC  A9 80 6A     Mx
    STA $2116                       ; $80DCCF  8D 16 21     Mx
    LDA $008C                       ; $80DCD2  AD 8C 00     Mx
    STA $4302                       ; $80DCD5  8D 02 43     Mx
    LDA $008E                       ; $80DCD8  AD 8E 00     Mx
    STA $4304                       ; $80DCDB  8D 04 43     Mx
    LDA $0090                       ; $80DCDE  AD 90 00     Mx
    STA $4305                       ; $80DCE1  8D 05 43     Mx
    STX $420B                       ; $80DCE4  8E 0B 42     Mx
    LDA #$6B80                      ; $80DCE7  A9 80 6B     Mx
    STA $2116                       ; $80DCEA  8D 16 21     Mx
    LDA $0092                       ; $80DCED  AD 92 00     Mx
    STA $4302                       ; $80DCF0  8D 02 43     Mx
    LDA $0094                       ; $80DCF3  AD 94 00     Mx
    STA $4304                       ; $80DCF6  8D 04 43     Mx
    LDA $0096                       ; $80DCF9  AD 96 00     Mx
    STA $4305                       ; $80DCFC  8D 05 43     Mx
    STX $420B                       ; $80DCFF  8E 0B 42     Mx
L_80DD02:
    LDA $0098                       ; $80DD02  AD 98 00     Mx
    BEQ L_80DD3D                    ; $80DD05  F0 36        Mx
    LDA #$6C00                      ; $80DD07  A9 00 6C     Mx
    STA $2116                       ; $80DD0A  8D 16 21     Mx
    LDA $0098                       ; $80DD0D  AD 98 00     Mx
    STA $4302                       ; $80DD10  8D 02 43     Mx
    LDA $009A                       ; $80DD13  AD 9A 00     Mx
    STA $4304                       ; $80DD16  8D 04 43     Mx
    LDA $009C                       ; $80DD19  AD 9C 00     Mx
    STA $4305                       ; $80DD1C  8D 05 43     Mx
    STX $420B                       ; $80DD1F  8E 0B 42     Mx
    LDA #$6D00                      ; $80DD22  A9 00 6D     Mx
    STA $2116                       ; $80DD25  8D 16 21     Mx
    LDA $009E                       ; $80DD28  AD 9E 00     Mx
    STA $4302                       ; $80DD2B  8D 02 43     Mx
    LDA $00A0                       ; $80DD2E  AD A0 00     Mx
    STA $4304                       ; $80DD31  8D 04 43     Mx
    LDA $00A2                       ; $80DD34  AD A2 00     Mx
    STA $4305                       ; $80DD37  8D 05 43     Mx
    STX $420B                       ; $80DD3A  8E 0B 42     Mx
L_80DD3D:
    SEP #$20                        ; $80DD3D  E2 20        Mx
    RTS                             ; $80DD3F  60           mx
L_80DD40:
    LDA #$E0E0                      ; $80DD40  A9 E0 E0     Mx
    STA $0370                       ; $80DD43  8D 70 03     Mx
    STA $0372                       ; $80DD46  8D 72 03     Mx
    STA $0374                       ; $80DD49  8D 74 03     Mx
    STA $0376                       ; $80DD4C  8D 76 03     Mx
    STA $0378                       ; $80DD4F  8D 78 03     Mx
    STA $037A                       ; $80DD52  8D 7A 03     Mx
    STA $037C                       ; $80DD55  8D 7C 03     Mx
    STA $037E                       ; $80DD58  8D 7E 03     Mx
    STA $0380                       ; $80DD5B  8D 80 03     Mx
    STA $0382                       ; $80DD5E  8D 82 03     Mx
    STA $0384                       ; $80DD61  8D 84 03     Mx
    STA $0386                       ; $80DD64  8D 86 03     Mx
    STA $0388                       ; $80DD67  8D 88 03     Mx
    STA $038A                       ; $80DD6A  8D 8A 03     Mx
    STA $038C                       ; $80DD6D  8D 8C 03     Mx
    STA $038E                       ; $80DD70  8D 8E 03     Mx
    STA $0390                       ; $80DD73  8D 90 03     Mx
    STA $0392                       ; $80DD76  8D 92 03     Mx
    STA $0394                       ; $80DD79  8D 94 03     Mx
    STA $0396                       ; $80DD7C  8D 96 03     Mx
    STA $0398                       ; $80DD7F  8D 98 03     Mx
    STA $039A                       ; $80DD82  8D 9A 03     Mx
    STA $039C                       ; $80DD85  8D 9C 03     Mx
    STA $039E                       ; $80DD88  8D 9E 03     Mx
    STA $03A0                       ; $80DD8B  8D A0 03     Mx
    STA $03A2                       ; $80DD8E  8D A2 03     Mx
    STA $03A4                       ; $80DD91  8D A4 03     Mx
    STA $03A6                       ; $80DD94  8D A6 03     Mx
    STA $03A8                       ; $80DD97  8D A8 03     Mx
    STA $03AA                       ; $80DD9A  8D AA 03     Mx
    STA $03AC                       ; $80DD9D  8D AC 03     Mx
    STA $03AE                       ; $80DDA0  8D AE 03     Mx
    STA $03B0                       ; $80DDA3  8D B0 03     Mx
    STA $03B2                       ; $80DDA6  8D B2 03     Mx
    STA $03B4                       ; $80DDA9  8D B4 03     Mx
    STA $03B6                       ; $80DDAC  8D B6 03     Mx
    STA $03B8                       ; $80DDAF  8D B8 03     Mx
    STA $03BA                       ; $80DDB2  8D BA 03     Mx
    STA $03BC                       ; $80DDB5  8D BC 03     Mx
    STA $03BE                       ; $80DDB8  8D BE 03     Mx
    STA $03C0                       ; $80DDBB  8D C0 03     Mx
    STA $03C2                       ; $80DDBE  8D C2 03     Mx
    STA $03C4                       ; $80DDC1  8D C4 03     Mx
    STA $03C6                       ; $80DDC4  8D C6 03     Mx
    STA $03C8                       ; $80DDC7  8D C8 03     Mx
    STA $03CA                       ; $80DDCA  8D CA 03     Mx
    STA $03CC                       ; $80DDCD  8D CC 03     Mx
    STA $03CE                       ; $80DDD0  8D CE 03     Mx
    STA $03D0                       ; $80DDD3  8D D0 03     Mx
    STA $03D2                       ; $80DDD6  8D D2 03     Mx
    STA $03D4                       ; $80DDD9  8D D4 03     Mx
    STA $03D6                       ; $80DDDC  8D D6 03     Mx
    STA $03D8                       ; $80DDDF  8D D8 03     Mx
    STA $03DA                       ; $80DDE2  8D DA 03     Mx
    STA $03DC                       ; $80DDE5  8D DC 03     Mx
    STA $03DE                       ; $80DDE8  8D DE 03     Mx
    STA $03E0                       ; $80DDEB  8D E0 03     Mx
    STA $03E2                       ; $80DDEE  8D E2 03     Mx
    STA $03E4                       ; $80DDF1  8D E4 03     Mx
    STA $03E6                       ; $80DDF4  8D E6 03     Mx
    STA $03E8                       ; $80DDF7  8D E8 03     Mx
    STA $03EA                       ; $80DDFA  8D EA 03     Mx
    STA $03EC                       ; $80DDFD  8D EC 03     Mx
    STA $03EE                       ; $80DE00  8D EE 03     Mx
    STA $03F0                       ; $80DE03  8D F0 03     Mx
    STA $03F2                       ; $80DE06  8D F2 03     Mx
    STA $03F4                       ; $80DE09  8D F4 03     Mx
    STA $03F6                       ; $80DE0C  8D F6 03     Mx
    STA $03F8                       ; $80DE0F  8D F8 03     Mx
    STA $03FA                       ; $80DE12  8D FA 03     Mx
    STA $03FC                       ; $80DE15  8D FC 03     Mx
    STA $03FE                       ; $80DE18  8D FE 03     Mx
    STA $0400                       ; $80DE1B  8D 00 04     Mx
    STA $0402                       ; $80DE1E  8D 02 04     Mx
    STA $0404                       ; $80DE21  8D 04 04     Mx
    STA $0406                       ; $80DE24  8D 06 04     Mx
    STA $0408                       ; $80DE27  8D 08 04     Mx
    STA $040A                       ; $80DE2A  8D 0A 04     Mx
    STA $040C                       ; $80DE2D  8D 0C 04     Mx
    STA $040E                       ; $80DE30  8D 0E 04     Mx
    STA $0410                       ; $80DE33  8D 10 04     Mx
    STA $0412                       ; $80DE36  8D 12 04     Mx
    STA $0414                       ; $80DE39  8D 14 04     Mx
    STA $0416                       ; $80DE3C  8D 16 04     Mx
    STA $0418                       ; $80DE3F  8D 18 04     Mx
    STA $041A                       ; $80DE42  8D 1A 04     Mx
    STA $041C                       ; $80DE45  8D 1C 04     Mx
    STA $041E                       ; $80DE48  8D 1E 04     Mx
    STA $0420                       ; $80DE4B  8D 20 04     Mx
    STA $0422                       ; $80DE4E  8D 22 04     Mx
    STA $0424                       ; $80DE51  8D 24 04     Mx
    STA $0426                       ; $80DE54  8D 26 04     Mx
    STA $0428                       ; $80DE57  8D 28 04     Mx
    STA $042A                       ; $80DE5A  8D 2A 04     Mx
    STA $042C                       ; $80DE5D  8D 2C 04     Mx
    STA $042E                       ; $80DE60  8D 2E 04     Mx
    STA $0430                       ; $80DE63  8D 30 04     Mx
    STA $0432                       ; $80DE66  8D 32 04     Mx
    STA $0434                       ; $80DE69  8D 34 04     Mx
    STA $0436                       ; $80DE6C  8D 36 04     Mx
    STA $0438                       ; $80DE6F  8D 38 04     Mx
    STA $043A                       ; $80DE72  8D 3A 04     Mx
    STA $043C                       ; $80DE75  8D 3C 04     Mx
    STA $043E                       ; $80DE78  8D 3E 04     Mx
    STA $0440                       ; $80DE7B  8D 40 04     Mx
    STA $0442                       ; $80DE7E  8D 42 04     Mx
    STA $0444                       ; $80DE81  8D 44 04     Mx
    STA $0446                       ; $80DE84  8D 46 04     Mx
    STA $0448                       ; $80DE87  8D 48 04     Mx
    STA $044A                       ; $80DE8A  8D 4A 04     Mx
    STA $044C                       ; $80DE8D  8D 4C 04     Mx
    STA $044E                       ; $80DE90  8D 4E 04     Mx
    STA $0450                       ; $80DE93  8D 50 04     Mx
    STA $0452                       ; $80DE96  8D 52 04     Mx
    STA $0454                       ; $80DE99  8D 54 04     Mx
    STA $0456                       ; $80DE9C  8D 56 04     Mx
    STA $0458                       ; $80DE9F  8D 58 04     Mx
    STA $045A                       ; $80DEA2  8D 5A 04     Mx
    STA $045C                       ; $80DEA5  8D 5C 04     Mx
    STA $045E                       ; $80DEA8  8D 5E 04     Mx
    STA $0460                       ; $80DEAB  8D 60 04     Mx
    STA $0462                       ; $80DEAE  8D 62 04     Mx
    STA $0464                       ; $80DEB1  8D 64 04     Mx
    STA $0466                       ; $80DEB4  8D 66 04     Mx
    STA $0468                       ; $80DEB7  8D 68 04     Mx
    STA $046A                       ; $80DEBA  8D 6A 04     Mx
    STA $046C                       ; $80DEBD  8D 6C 04     Mx
    STA $046E                       ; $80DEC0  8D 6E 04     Mx
    STA $0470                       ; $80DEC3  8D 70 04     Mx
    STA $0472                       ; $80DEC6  8D 72 04     Mx
    STA $0474                       ; $80DEC9  8D 74 04     Mx
    STA $0476                       ; $80DECC  8D 76 04     Mx
    STA $0478                       ; $80DECF  8D 78 04     Mx
    STA $047A                       ; $80DED2  8D 7A 04     Mx
    STA $047C                       ; $80DED5  8D 7C 04     Mx
    STA $047E                       ; $80DED8  8D 7E 04     Mx
    STA $0480                       ; $80DEDB  8D 80 04     Mx
    STA $0482                       ; $80DEDE  8D 82 04     Mx
    STA $0484                       ; $80DEE1  8D 84 04     Mx
    STA $0486                       ; $80DEE4  8D 86 04     Mx
    STA $0488                       ; $80DEE7  8D 88 04     Mx
    STA $048A                       ; $80DEEA  8D 8A 04     Mx
    STA $048C                       ; $80DEED  8D 8C 04     Mx
    STA $048E                       ; $80DEF0  8D 8E 04     Mx
    STA $0490                       ; $80DEF3  8D 90 04     Mx
    STA $0492                       ; $80DEF6  8D 92 04     Mx
    STA $0494                       ; $80DEF9  8D 94 04     Mx
    STA $0496                       ; $80DEFC  8D 96 04     Mx
    STA $0498                       ; $80DEFF  8D 98 04     Mx
    STA $049A                       ; $80DF02  8D 9A 04     Mx
    STA $049C                       ; $80DF05  8D 9C 04     Mx
    STA $049E                       ; $80DF08  8D 9E 04     Mx
    STA $04A0                       ; $80DF0B  8D A0 04     Mx
    STA $04A2                       ; $80DF0E  8D A2 04     Mx
    STA $04A4                       ; $80DF11  8D A4 04     Mx
    STA $04A6                       ; $80DF14  8D A6 04     Mx
    STA $04A8                       ; $80DF17  8D A8 04     Mx
    STA $04AA                       ; $80DF1A  8D AA 04     Mx
    STA $04AC                       ; $80DF1D  8D AC 04     Mx
    STA $04AE                       ; $80DF20  8D AE 04     Mx
    STA $04B0                       ; $80DF23  8D B0 04     Mx
    STA $04B2                       ; $80DF26  8D B2 04     Mx
    STA $04B4                       ; $80DF29  8D B4 04     Mx
    STA $04B6                       ; $80DF2C  8D B6 04     Mx
    STA $04B8                       ; $80DF2F  8D B8 04     Mx
    STA $04BA                       ; $80DF32  8D BA 04     Mx
    STA $04BC                       ; $80DF35  8D BC 04     Mx
    STA $04BE                       ; $80DF38  8D BE 04     Mx
    STA $04C0                       ; $80DF3B  8D C0 04     Mx
    STA $04C2                       ; $80DF3E  8D C2 04     Mx
    STA $04C4                       ; $80DF41  8D C4 04     Mx
    STA $04C6                       ; $80DF44  8D C6 04     Mx
    STA $04C8                       ; $80DF47  8D C8 04     Mx
    STA $04CA                       ; $80DF4A  8D CA 04     Mx
    STA $04CC                       ; $80DF4D  8D CC 04     Mx
    STA $04CE                       ; $80DF50  8D CE 04     Mx
    STA $04D0                       ; $80DF53  8D D0 04     Mx
    STA $04D2                       ; $80DF56  8D D2 04     Mx
    STA $04D4                       ; $80DF59  8D D4 04     Mx
    STA $04D6                       ; $80DF5C  8D D6 04     Mx
    STA $04D8                       ; $80DF5F  8D D8 04     Mx
    STA $04DA                       ; $80DF62  8D DA 04     Mx
    STA $04DC                       ; $80DF65  8D DC 04     Mx
    STA $04DE                       ; $80DF68  8D DE 04     Mx
    STA $04E0                       ; $80DF6B  8D E0 04     Mx
    STA $04E2                       ; $80DF6E  8D E2 04     Mx
    STA $04E4                       ; $80DF71  8D E4 04     Mx
    STA $04E6                       ; $80DF74  8D E6 04     Mx
    STA $04E8                       ; $80DF77  8D E8 04     Mx
    STA $04EA                       ; $80DF7A  8D EA 04     Mx
    STA $04EC                       ; $80DF7D  8D EC 04     Mx
    STA $04EE                       ; $80DF80  8D EE 04     Mx
    STA $04F0                       ; $80DF83  8D F0 04     Mx
    STA $04F2                       ; $80DF86  8D F2 04     Mx
    STA $04F4                       ; $80DF89  8D F4 04     Mx
    STA $04F6                       ; $80DF8C  8D F6 04     Mx
    STA $04F8                       ; $80DF8F  8D F8 04     Mx
    STA $04FA                       ; $80DF92  8D FA 04     Mx
    STA $04FC                       ; $80DF95  8D FC 04     Mx
    STA $04FE                       ; $80DF98  8D FE 04     Mx
    LDX #$00                        ; $80DF9B  A2 00        Mx
    STX $0507                       ; $80DF9D  8E 07 05     Mx
    STZ $0508                       ; $80DFA0  9C 08 05     Mx
    STZ $050A                       ; $80DFA3  9C 0A 05     Mx
    STZ $050C                       ; $80DFA6  9C 0C 05     Mx
    STZ $050E                       ; $80DFA9  9C 0E 05     Mx
    STZ $0510                       ; $80DFAC  9C 10 05     Mx
    STZ $0512                       ; $80DFAF  9C 12 05     Mx
    STZ $0514                       ; $80DFB2  9C 14 05     Mx
    STZ $0516                       ; $80DFB5  9C 16 05     Mx
    STZ $0518                       ; $80DFB8  9C 18 05     Mx
    STZ $051A                       ; $80DFBB  9C 1A 05     Mx
    STZ $051C                       ; $80DFBE  9C 1C 05     Mx
    STZ $051E                       ; $80DFC1  9C 1E 05     Mx
    LDA #$0070                      ; $80DFC4  A9 70 00     Mx
    STA $0014                       ; $80DFC7  8D 14 00     Mx
    LDA #$001C                      ; $80DFCA  A9 1C 00     Mx
    STA $0016                       ; $80DFCD  8D 16 00     Mx
    LDA #$0014                      ; $80DFD0  A9 14 00     Mx
    STA $0010                       ; $80DFD3  8D 10 00     Mx
    LDA #$0016                      ; $80DFD6  A9 16 00     Mx
    STA $0012                       ; $80DFD9  8D 12 00     Mx
    RTS                             ; $80DFDC  60           Mx
L_80DFDD:
    INC $0104                       ; $80DFDD  EE 04 01     Mx
    LDA $4210                       ; $80DFE0  AD 10 42     Mx
    RTS                             ; $80DFE3  60           Mx
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF ; $80DFE4
    db $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$20,$04,$E0,$6B ; $80DFF4
L_80E004:
    STZ $2102                       ; $80E004  9C 02 21     mx
    STZ $2103                       ; $80E007  9C 03 21     mx
    STZ $4300                       ; $80E00A  9C 00 43     mx
    LDA #$04                        ; $80E00D  A9 04        mx
    STA $4301                       ; $80E00F  8D 01 43     mx
    LDA #$00                        ; $80E012  A9 00        mx
    STA $4302                       ; $80E014  8D 02 43     mx
    LDA #$03                        ; $80E017  A9 03        mx
    STA $4303                       ; $80E019  8D 03 43     mx
    STZ $4304                       ; $80E01C  9C 04 43     mx
    LDA #$20                        ; $80E01F  A9 20        mx
    STA $4305                       ; $80E021  8D 05 43     mx
    LDA #$02                        ; $80E024  A9 02        mx
    STA $4306                       ; $80E026  8D 06 43     mx
    LDA #$01                        ; $80E029  A9 01        mx
    STA $420B                       ; $80E02B  8D 0B 42     mx
    RTS                             ; $80E02E  60           mx
L_80E02F:
    JSR L_80E033                    ; $80E02F  20 33 E0     MX
L_80E032:
    RTL                             ; $80E032  6B           MX
L_80E033:
    SEP #$10                        ; $80E033  E2 10        MX
L_80E035:
    LDA #$1801                      ; $80E035  A9 01 18     Mx
L_80E038:
    STA $4300                       ; $80E038  8D 00 43     Mx
L_80E03B:
    LDX #$80                        ; $80E03B  A2 80        Mx
L_80E03D:
    STX $2115                       ; $80E03D  8E 15 21     Mx
L_80E040:
    REP #$10                        ; $80E040  C2 10        Mx
L_80E042:
    LDY #$0000                      ; $80E042  A0 00 00     MX
L_80E045:
    LDA [$D0],Y                     ; $80E045  B7 D0        MX
L_80E047:
    STA $00D6                       ; $80E047  8D D6 00     MX
L_80E04A:
    INY                             ; $80E04A  C8           MX
L_80E04B:
    LDA [$D0],Y                     ; $80E04B  B7 D0        MX
L_80E04D:
    BMI L_80E070                    ; $80E04D  30 21        MX
L_80E04F:
    STA $00D7                       ; $80E04F  8D D7 00     MX
L_80E052:
    INY                             ; $80E052  C8           MX
L_80E053:
    INY                             ; $80E053  C8           MX
L_80E054:
    LDA [$D0],Y                     ; $80E054  B7 D0        MX
L_80E056:
    STA $00D9                       ; $80E056  8D D9 00     MX
L_80E059:
    INY                             ; $80E059  C8           MX
L_80E05A:
    LDA [$D0],Y                     ; $80E05A  B7 D0        MX
L_80E05C:
    STA $00DA                       ; $80E05C  8D DA 00     MX
L_80E05F:
    INY                             ; $80E05F  C8           MX
L_80E060:
    INY                             ; $80E060  C8           MX
L_80E061:
    PHY                             ; $80E061  5A           MX
L_80E062:
    LDA #$0006                      ; $80E062  A9 06 00     MX
L_80E065:
    STA $00E5                       ; $80E065  8D E5 00     MX
L_80E068:
    JSR L_80E071                    ; $80E068  20 71 E0     MX
L_80E06B:
    REP #$30                        ; $80E06B  C2 30        mX
L_80E06D:
    PLY                             ; $80E06D  7A           MX
L_80E06E:
    BRA L_80E045                    ; $80E06E  80 D5        MX
L_80E070:
    RTS                             ; $80E070  60           MX
L_80E071:
    LDX #$0000                      ; $80E071  A2 00 00     MX
L_80E074:
    STZ $00E8                       ; $80E074  9C E8 00     MX
L_80E077:
    LDA $00D6,X                     ; $80E077  BD D6 00     MX
L_80E07A:
    STA $00D3                       ; $80E07A  8D D3 00     MX
L_80E07D:
    SEP #$20                        ; $80E07D  E2 20        MX
L_80E07F:
    INX                             ; $80E07F  E8           mX
L_80E080:
    INX                             ; $80E080  E8           mX
L_80E081:
    LDA $00D6,X                     ; $80E081  BD D6 00     mX
L_80E084:
    INX                             ; $80E084  E8           mX
L_80E085:
    STA $00D5                       ; $80E085  8D D5 00     mX
L_80E088:
    REP #$20                        ; $80E088  C2 20        mX
L_80E08A:
    LDA $00D6,X                     ; $80E08A  BD D6 00     MX
L_80E08D:
    STA $4302                       ; $80E08D  8D 02 43     MX
L_80E090:
    SEP #$20                        ; $80E090  E2 20        MX
L_80E092:
    INX                             ; $80E092  E8           mX
L_80E093:
    INX                             ; $80E093  E8           mX
L_80E094:
    LDA $00D6,X                     ; $80E094  BD D6 00     mX
L_80E097:
    STA $4304                       ; $80E097  8D 04 43     mX
L_80E09A:
    INX                             ; $80E09A  E8           mX
L_80E09B:
    LDY #$0002                      ; $80E09B  A0 02 00     mX
L_80E09E:
    LDA [$D3],Y                     ; $80E09E  B7 D3        mX
L_80E0A0:
    BPL L_80E0A5                    ; $80E0A0  10 03        mX
L_80E0A2:
    INC $00E8                       ; $80E0A2  EE E8 00     mX
L_80E0A5:
    AND #$01                        ; $80E0A5  29 01        mX
L_80E0A7:
    BEQ L_80E0F2                    ; $80E0A7  F0 49        mX
L_80E0A9:
    REP #$20                        ; $80E0A9  C2 20        mX
L_80E0AB:
    LDY #$0009                      ; $80E0AB  A0 09 00     MX
L_80E0AE:
    LDA [$D3],Y                     ; $80E0AE  B7 D3        MX
L_80E0B0:
    ASL                             ; $80E0B0  0A           MX
L_80E0B1:
    ASL                             ; $80E0B1  0A           MX
L_80E0B2:
    ASL                             ; $80E0B2  0A           MX
L_80E0B3:
    ASL                             ; $80E0B3  0A           MX
L_80E0B4:
    ADC #$6000                      ; $80E0B4  69 00 60     MX
L_80E0B7:
    STA $2116                       ; $80E0B7  8D 16 21     MX
L_80E0BA:
    PHA                             ; $80E0BA  48           MX
L_80E0BB:
    LDA $00D3                       ; $80E0BB  AD D3 00     MX
L_80E0BE:
    CLC                             ; $80E0BE  18           MX
L_80E0BF:
    ADC #$0009                      ; $80E0BF  69 09 00     MX
L_80E0C2:
    STA $00D3                       ; $80E0C2  8D D3 00     MX
L_80E0C5:
    SEP #$20                        ; $80E0C5  E2 20        MX
L_80E0C7:
    LDA #$40                        ; $80E0C7  A9 40        mX
L_80E0C9:
    STA $4305                       ; $80E0C9  8D 05 43     mX
L_80E0CC:
    LDA #$01                        ; $80E0CC  A9 01        mX
L_80E0CE:
    STA $420B                       ; $80E0CE  8D 0B 42     mX
L_80E0D1:
    REP #$20                        ; $80E0D1  C2 20        mX
L_80E0D3:
    PLA                             ; $80E0D3  68           MX
L_80E0D4:
    CLC                             ; $80E0D4  18           MX
L_80E0D5:
    ADC #$0100                      ; $80E0D5  69 00 01     MX
L_80E0D8:
    STA $2116                       ; $80E0D8  8D 16 21     MX
L_80E0DB:
    SEP #$20                        ; $80E0DB  E2 20        MX
L_80E0DD:
    LDA #$40                        ; $80E0DD  A9 40        mX
L_80E0DF:
    STA $4305                       ; $80E0DF  8D 05 43     mX
L_80E0E2:
    LDA #$01                        ; $80E0E2  A9 01        mX
L_80E0E4:
    STA $420B                       ; $80E0E4  8D 0B 42     mX
L_80E0E7:
    LDA $00E8                       ; $80E0E7  AD E8 00     mX
L_80E0EA:
    BEQ L_80E09B                    ; $80E0EA  F0 AF        mX
L_80E0EC:
    CPX $00E5                       ; $80E0EC  EC E5 00     mX
L_80E0EF:
    BNE L_80E071                    ; $80E0EF  D0 80        mX
L_80E0F1:
    RTS                             ; $80E0F1  60           mX
L_80E0F2:
    REP #$20                        ; $80E0F2  C2 20        mX
L_80E0F4:
    LDY #$0009                      ; $80E0F4  A0 09 00     MX
L_80E0F7:
    LDA [$D3],Y                     ; $80E0F7  B7 D3        MX
L_80E0F9:
    ASL                             ; $80E0F9  0A           MX
L_80E0FA:
    ASL                             ; $80E0FA  0A           MX
L_80E0FB:
    ASL                             ; $80E0FB  0A           MX
L_80E0FC:
    ASL                             ; $80E0FC  0A           MX
L_80E0FD:
    ADC #$6000                      ; $80E0FD  69 00 60     MX
L_80E100:
    STA $2116                       ; $80E100  8D 16 21     MX
L_80E103:
    LDA $00D3                       ; $80E103  AD D3 00     MX
L_80E106:
    CLC                             ; $80E106  18           MX
L_80E107:
    ADC #$0009                      ; $80E107  69 09 00     MX
L_80E10A:
    STA $00D3                       ; $80E10A  8D D3 00     MX
L_80E10D:
    SEP #$20                        ; $80E10D  E2 20        MX
L_80E10F:
    LDA #$20                        ; $80E10F  A9 20        mX
L_80E111:
    STA $4305                       ; $80E111  8D 05 43     mX
L_80E114:
    LDA #$01                        ; $80E114  A9 01        mX
L_80E116:
    STA $420B                       ; $80E116  8D 0B 42     mX
L_80E119:
    BRA L_80E0E7                    ; $80E119  80 CC        mX
L_80E11B:
    LDA ($12)                       ; $80E11B  B2 12        MX
    LSR                             ; $80E11D  4A           MX
    LSR                             ; $80E11E  4A           MX
    TAY                             ; $80E11F  A8           MX
    LDA ($12)                       ; $80E120  B2 12        MX
    AND #$0003                      ; $80E122  29 03 00     MX
    TAX                             ; $80E125  AA           MX
    SEP #$20                        ; $80E126  E2 20        MX
    LDA ($12)                       ; $80E128  B2 12        mX
    INC                             ; $80E12A  1A           mX
    STA ($12)                       ; $80E12B  92 12        mX
    LDA ($10)                       ; $80E12D  B2 10        mX
    TAX                             ; $80E12F  AA           mX
    SEP #$20                        ; $80E130  E2 20        mX
    LDA $00F0                       ; $80E132  AD F0 00     mX
    STA $0301,X                     ; $80E135  9D 01 03     mX
    LDA $00EE                       ; $80E138  AD EE 00     mX
    STA $0300,X                     ; $80E13B  9D 00 03     mX
    LDA $00F2                       ; $80E13E  AD F2 00     mX
    STA $0302,X                     ; $80E141  9D 02 03     mX
    LDA $002A                       ; $80E144  AD 2A 00     mX
    ORA $00F3                       ; $80E147  0D F3 00     mX
    STA $0303,X                     ; $80E14A  9D 03 03     mX
    REP #$20                        ; $80E14D  C2 20        mX
    TXA                             ; $80E14F  8A           MX
    CLC                             ; $80E150  18           MX
    ADC #$0004                      ; $80E151  69 04 00     MX
    STA ($10)                       ; $80E154  92 10        MX
    RTL                             ; $80E156  6B           MX
L_80E157:
    LDA ($12)                       ; $80E157  B2 12        MX
    LSR                             ; $80E159  4A           MX
    LSR                             ; $80E15A  4A           MX
    TAY                             ; $80E15B  A8           MX
    LDA ($12)                       ; $80E15C  B2 12        MX
    AND #$0003                      ; $80E15E  29 03 00     MX
    TAX                             ; $80E161  AA           MX
    SEP #$20                        ; $80E162  E2 20        MX
    LDA $E4CD,X                     ; $80E164  BD CD E4     mX
    BRA L_80E169                    ; $80E167  80 00        mX
L_80E169:
    TYX                             ; $80E169  BB           mX
    ORA $0500,X                     ; $80E16A  1D 00 05     mX
    STA $0500,X                     ; $80E16D  9D 00 05     mX
    REP #$20                        ; $80E170  C2 20        mX
    LDA ($12)                       ; $80E172  B2 12        MX
    INC                             ; $80E174  1A           MX
    STA ($12)                       ; $80E175  92 12        MX
    LDA ($10)                       ; $80E177  B2 10        MX
    TAX                             ; $80E179  AA           MX
    SEP #$20                        ; $80E17A  E2 20        MX
    LDA $00F0                       ; $80E17C  AD F0 00     mX
    STA $0301,X                     ; $80E17F  9D 01 03     mX
    LDA $00EE                       ; $80E182  AD EE 00     mX
    STA $0300,X                     ; $80E185  9D 00 03     mX
    LDA $00F2                       ; $80E188  AD F2 00     mX
    STA $0302,X                     ; $80E18B  9D 02 03     mX
    LDA $002A                       ; $80E18E  AD 2A 00     mX
    ORA $00F3                       ; $80E191  0D F3 00     mX
    STA $0303,X                     ; $80E194  9D 03 03     mX
    REP #$20                        ; $80E197  C2 20        mX
    TXA                             ; $80E199  8A           MX
    CLC                             ; $80E19A  18           MX
    ADC #$0004                      ; $80E19B  69 04 00     MX
    STA ($10)                       ; $80E19E  92 10        MX
    RTL                             ; $80E1A0  6B           MX
L_80E1A1:
    PHB                             ; $80E1A1  8B           Mx
    PHK                             ; $80E1A2  4B           Mx
    PLB                             ; $80E1A3  AB           Mx
    STZ $0AC4                       ; $80E1A4  9C C4 0A     Mx
    LDA #$7FC9                      ; $80E1A7  A9 C9 7F     Mx
    STA $00DD                       ; $80E1AA  8D DD 00     Mx
    LDA #$7FC9                      ; $80E1AD  A9 C9 7F     Mx
    STA $00E0                       ; $80E1B0  8D E0 00     Mx
    LDA #$06F0                      ; $80E1B3  A9 F0 06     Mx
    STA $00D0                       ; $80E1B6  8D D0 00     Mx
    LDA #$07D8                      ; $80E1B9  A9 D8 07     Mx
    STA $00D3                       ; $80E1BC  8D D3 00     Mx
    LDA #$C920                      ; $80E1BF  A9 20 C9     Mx
    STA $00DC                       ; $80E1C2  8D DC 00     Mx
    LDA #$C940                      ; $80E1C5  A9 40 C9     Mx
    STA $00DF                       ; $80E1C8  8D DF 00     Mx
    LDA $1CD9                       ; $80E1CB  AD D9 1C     Mx
    STA $00A6                       ; $80E1CE  8D A6 00     Mx
    LDA $1CDB                       ; $80E1D1  AD DB 1C     Mx
    STA $00A8                       ; $80E1D4  8D A8 00     Mx
    LDA $1683                       ; $80E1D7  AD 83 16     Mx
    JSR L_80E616                    ; $80E1DA  20 16 E6     Mx
    LDA #$08C0                      ; $80E1DD  A9 C0 08     Mx
    STA $00D0                       ; $80E1E0  8D D0 00     Mx
    LDA #$09A8                      ; $80E1E3  A9 A8 09     Mx
    STA $00D3                       ; $80E1E6  8D D3 00     Mx
    LDA #$C960                      ; $80E1E9  A9 60 C9     Mx
    STA $00DF                       ; $80E1EC  8D DF 00     Mx
    LDA #$C980                      ; $80E1EF  A9 80 C9     Mx
    STA $00DC                       ; $80E1F2  8D DC 00     Mx
    LDA $1CDD                       ; $80E1F5  AD DD 1C     Mx
    STA $00A6                       ; $80E1F8  8D A6 00     Mx
    LDA $1CDF                       ; $80E1FB  AD DF 1C     Mx
    STA $00A8                       ; $80E1FE  8D A8 00     Mx
    LDA $1685                       ; $80E201  AD 85 16     Mx
    JSR L_80E616                    ; $80E204  20 16 E6     Mx
    REP #$10                        ; $80E207  C2 10        Mx
    JSR L_80E545                    ; $80E209  20 45 E5     MX
    LDA $0AB4                       ; $80E20C  AD B4 0A     MX
    STA $0ABC                       ; $80E20F  8D BC 0A     MX
    LDA $0AB6                       ; $80E212  AD B6 0A     MX
    STA $0ABE                       ; $80E215  8D BE 0A     MX
    LDA $0AB8                       ; $80E218  AD B8 0A     MX
    STA $0AC0                       ; $80E21B  8D C0 0A     MX
    LDA $0ABA                       ; $80E21E  AD BA 0A     MX
    STA $0AC2                       ; $80E221  8D C2 0A     MX
    LDA $0AB4                       ; $80E224  AD B4 0A     MX
    CMP #$001B                      ; $80E227  C9 1B 00     MX
    BCS L_80E244                    ; $80E22A  B0 18        MX
    LDA $0AB6                       ; $80E22C  AD B6 0A     MX
    CMP #$001B                      ; $80E22F  C9 1B 00     MX
    BCS L_80E244                    ; $80E232  B0 10        MX
    LDA $0AB8                       ; $80E234  AD B8 0A     MX
    CMP #$001B                      ; $80E237  C9 1B 00     MX
    BCS L_80E244                    ; $80E23A  B0 08        MX
    LDA $0ABA                       ; $80E23C  AD BA 0A     MX
    CMP #$001B                      ; $80E23F  C9 1B 00     MX
    BCC L_80E24F                    ; $80E242  90 0B        MX
L_80E244:
    LDA $1CE7                       ; $80E244  AD E7 1C     MX
    ASL                             ; $80E247  0A           MX
    CLC                             ; $80E248  18           MX
    ADC #$0005                      ; $80E249  69 05 00     MX
    STA $0AC4                       ; $80E24C  8D C4 0A     MX
L_80E24F:
    SEP #$10                        ; $80E24F  E2 10        MX
    LDA #$06F0                      ; $80E251  A9 F0 06     Mx
    STA $00D0                       ; $80E254  8D D0 00     Mx
    LDA #$07D8                      ; $80E257  A9 D8 07     Mx
    STA $00D3                       ; $80E25A  8D D3 00     Mx
    LDA #$08C0                      ; $80E25D  A9 C0 08     Mx
    STA $00D6                       ; $80E260  8D D6 00     Mx
    LDA #$09A8                      ; $80E263  A9 A8 09     Mx
    STA $00D9                       ; $80E266  8D D9 00     Mx
    LDX #$04                        ; $80E269  A2 04        Mx
    JSR L_80E4BD                    ; $80E26B  20 BD E4     Mx
    LDA #$07D8                      ; $80E26E  A9 D8 07     Mx
    STA $00D0                       ; $80E271  8D D0 00     Mx
    LDA #$06F0                      ; $80E274  A9 F0 06     Mx
    STA $00D3                       ; $80E277  8D D3 00     Mx
    LDA #$08C0                      ; $80E27A  A9 C0 08     Mx
    STA $00D6                       ; $80E27D  8D D6 00     Mx
    LDA #$09A8                      ; $80E280  A9 A8 09     Mx
    STA $00D9                       ; $80E283  8D D9 00     Mx
    LDX #$04                        ; $80E286  A2 04        Mx
    JSR L_80E4BD                    ; $80E288  20 BD E4     Mx
    LDA #$08C0                      ; $80E28B  A9 C0 08     Mx
    STA $00D0                       ; $80E28E  8D D0 00     Mx
    LDA #$09A8                      ; $80E291  A9 A8 09     Mx
    STA $00D3                       ; $80E294  8D D3 00     Mx
    LDA #$06F0                      ; $80E297  A9 F0 06     Mx
    STA $00D6                       ; $80E29A  8D D6 00     Mx
    LDA #$07D8                      ; $80E29D  A9 D8 07     Mx
    STA $00D9                       ; $80E2A0  8D D9 00     Mx
    LDX #$00                        ; $80E2A3  A2 00        Mx
    JSR L_80E4BD                    ; $80E2A5  20 BD E4     Mx
    LDA #$09A8                      ; $80E2A8  A9 A8 09     Mx
    STA $00D0                       ; $80E2AB  8D D0 00     Mx
    LDA #$08C0                      ; $80E2AE  A9 C0 08     Mx
    STA $00D3                       ; $80E2B1  8D D3 00     Mx
    LDA #$06F0                      ; $80E2B4  A9 F0 06     Mx
    STA $00D6                       ; $80E2B7  8D D6 00     Mx
    LDA #$07D8                      ; $80E2BA  A9 D8 07     Mx
    STA $00D9                       ; $80E2BD  8D D9 00     Mx
    LDX #$00                        ; $80E2C0  A2 00        Mx
    JSR L_80E4BD                    ; $80E2C2  20 BD E4     Mx
    LDA $1683                       ; $80E2C5  AD 83 16     Mx
    AND #$001F                      ; $80E2C8  29 1F 00     Mx
    ASL                             ; $80E2CB  0A           Mx
    ASL                             ; $80E2CC  0A           Mx
    ASL                             ; $80E2CD  0A           Mx
    TAX                             ; $80E2CE  AA           Mx
    LDA $1685                       ; $80E2CF  AD 85 16     Mx
    AND #$001F                      ; $80E2D2  29 1F 00     Mx
    ASL                             ; $80E2D5  0A           Mx
    ASL                             ; $80E2D6  0A           Mx
    ASL                             ; $80E2D7  0A           Mx
    TAY                             ; $80E2D8  A8           Mx
    LDA $EE03,X                     ; $80E2D9  BD 03 EE     Mx
    STA $00D0                       ; $80E2DC  8D D0 00     Mx
    LDA $EE03,Y                     ; $80E2DF  B9 03 EE     Mx
    STA $00D3                       ; $80E2E2  8D D3 00     Mx
    LDA $EDFF,X                     ; $80E2E5  BD FF ED     Mx
    CMP $EDFF,Y                     ; $80E2E8  D9 FF ED     Mx
    BNE L_80E300                    ; $80E2EB  D0 13        Mx
    LDA $EE01,X                     ; $80E2ED  BD 01 EE     Mx
    BNE L_80E2FA                    ; $80E2F0  D0 08        Mx
    LDA $EE05,X                     ; $80E2F2  BD 05 EE     Mx
    STA $00D0                       ; $80E2F5  8D D0 00     Mx
    BRA L_80E300                    ; $80E2F8  80 06        Mx
L_80E2FA:
    LDA $EE05,Y                     ; $80E2FA  B9 05 EE     Mx
    STA $00D3                       ; $80E2FD  8D D3 00     Mx
L_80E300:
    LDY #$00                        ; $80E300  A0 00        Mx
    LDA ($D0),Y                     ; $80E302  B1 D0        Mx
    STA $7FC922                     ; $80E304  8F 22 C9 7F  Mx
    STA $7FC942                     ; $80E308  8F 42 C9 7F  Mx
    INY                             ; $80E30C  C8           Mx
    INY                             ; $80E30D  C8           Mx
    LDA ($D0),Y                     ; $80E30E  B1 D0        Mx
    STA $7FC924                     ; $80E310  8F 24 C9 7F  Mx
    STA $7FC944                     ; $80E314  8F 44 C9 7F  Mx
    INY                             ; $80E318  C8           Mx
    INY                             ; $80E319  C8           Mx
    LDA ($D0),Y                     ; $80E31A  B1 D0        Mx
    STA $7FC926                     ; $80E31C  8F 26 C9 7F  Mx
    STA $7FC946                     ; $80E320  8F 46 C9 7F  Mx
    INY                             ; $80E324  C8           Mx
    INY                             ; $80E325  C8           Mx
    LDA ($D0),Y                     ; $80E326  B1 D0        Mx
    STA $7FC936                     ; $80E328  8F 36 C9 7F  Mx
    STA $7FC956                     ; $80E32C  8F 56 C9 7F  Mx
    INY                             ; $80E330  C8           Mx
    INY                             ; $80E331  C8           Mx
    LDA ($D0),Y                     ; $80E332  B1 D0        Mx
    STA $7FC938                     ; $80E334  8F 38 C9 7F  Mx
    STA $7FC958                     ; $80E338  8F 58 C9 7F  Mx
    INY                             ; $80E33C  C8           Mx
    INY                             ; $80E33D  C8           Mx
    LDA ($D0),Y                     ; $80E33E  B1 D0        Mx
    STA $7FC93A                     ; $80E340  8F 3A C9 7F  Mx
    STA $7FC95A                     ; $80E344  8F 5A C9 7F  Mx
    INY                             ; $80E348  C8           Mx
    INY                             ; $80E349  C8           Mx
    LDA ($D0),Y                     ; $80E34A  B1 D0        Mx
    STA $7FC93C                     ; $80E34C  8F 3C C9 7F  Mx
    STA $7FC95C                     ; $80E350  8F 5C C9 7F  Mx
    LDY #$00                        ; $80E354  A0 00        Mx
    LDA ($D3),Y                     ; $80E356  B1 D3        Mx
    STA $7FC962                     ; $80E358  8F 62 C9 7F  Mx
    STA $7FC982                     ; $80E35C  8F 82 C9 7F  Mx
    INY                             ; $80E360  C8           Mx
    INY                             ; $80E361  C8           Mx
    LDA ($D3),Y                     ; $80E362  B1 D3        Mx
    STA $7FC964                     ; $80E364  8F 64 C9 7F  Mx
    STA $7FC984                     ; $80E368  8F 84 C9 7F  Mx
    INY                             ; $80E36C  C8           Mx
    INY                             ; $80E36D  C8           Mx
    LDA ($D3),Y                     ; $80E36E  B1 D3        Mx
    STA $7FC966                     ; $80E370  8F 66 C9 7F  Mx
    STA $7FC986                     ; $80E374  8F 86 C9 7F  Mx
    INY                             ; $80E378  C8           Mx
    INY                             ; $80E379  C8           Mx
    LDA ($D3),Y                     ; $80E37A  B1 D3        Mx
    STA $7FC976                     ; $80E37C  8F 76 C9 7F  Mx
    STA $7FC996                     ; $80E380  8F 96 C9 7F  Mx
    INY                             ; $80E384  C8           Mx
    INY                             ; $80E385  C8           Mx
    LDA ($D3),Y                     ; $80E386  B1 D3        Mx
    STA $7FC978                     ; $80E388  8F 78 C9 7F  Mx
    STA $7FC998                     ; $80E38C  8F 98 C9 7F  Mx
    INY                             ; $80E390  C8           Mx
    INY                             ; $80E391  C8           Mx
    LDA ($D3),Y                     ; $80E392  B1 D3        Mx
    STA $7FC97A                     ; $80E394  8F 7A C9 7F  Mx
    STA $7FC99A                     ; $80E398  8F 9A C9 7F  Mx
    INY                             ; $80E39C  C8           Mx
    INY                             ; $80E39D  C8           Mx
    LDA ($D3),Y                     ; $80E39E  B1 D3        Mx
    STA $7FC97C                     ; $80E3A0  8F 7C C9 7F  Mx
    STA $7FC99C                     ; $80E3A4  8F 9C C9 7F  Mx
    LDA $1683                       ; $80E3A8  AD 83 16     Mx
    AND #$001F                      ; $80E3AB  29 1F 00     Mx
    CMP #$001B                      ; $80E3AE  C9 1B 00     Mx
    BNE L_80E3C2                    ; $80E3B1  D0 0F        Mx
    LDX #$00                        ; $80E3B3  A2 00        Mx
L_80E3B5:
    LDA $F02F,X                     ; $80E3B5  BD 2F F0     Mx
    STA $7FC920,X                   ; $80E3B8  9F 20 C9 7F  Mx
    INX                             ; $80E3BC  E8           Mx
    INX                             ; $80E3BD  E8           Mx
    CPX #$20                        ; $80E3BE  E0 20        Mx
    BNE L_80E3B5                    ; $80E3C0  D0 F3        Mx
L_80E3C2:
    LDA $1D52                       ; $80E3C2  AD 52 1D     Mx
    AND #$001F                      ; $80E3C5  29 1F 00     Mx
    ASL                             ; $80E3C8  0A           Mx
    TAX                             ; $80E3C9  AA           Mx
    LDA $E3F9,X                     ; $80E3CA  BD F9 E3     Mx
    STA $00D0                       ; $80E3CD  8D D0 00     Mx
    LDY #$00                        ; $80E3D0  A0 00        Mx
    TYX                             ; $80E3D2  BB           Mx
L_80E3D3:
    LDA ($D0),Y                     ; $80E3D3  B1 D0        Mx
    STA $7FC840,X                   ; $80E3D5  9F 40 C8 7F  Mx
    INY                             ; $80E3D9  C8           Mx
    INY                             ; $80E3DA  C8           Mx
    INX                             ; $80E3DB  E8           Mx
    INX                             ; $80E3DC  E8           Mx
    CPY #$20                        ; $80E3DD  C0 20        Mx
    BNE L_80E3D3                    ; $80E3DF  D0 F2        Mx
    REP #$30                        ; $80E3E1  C2 30        Mx
    LDX #$0000                      ; $80E3E3  A2 00 00     MX
L_80E3E6:
    LDA $7FC820,X                   ; $80E3E6  BF 20 C8 7F  MX
    STA $00113D,X                   ; $80E3EA  9F 3D 11 00  MX
    INX                             ; $80E3EE  E8           MX
    INX                             ; $80E3EF  E8           MX
    CPX #$0200                      ; $80E3F0  E0 00 02     MX
    BNE L_80E3E6                    ; $80E3F3  D0 F1        MX
    SEP #$10                        ; $80E3F5  E2 10        MX
    PLB                             ; $80E3F7  AB           Mx
    RTL                             ; $80E3F8  6B           Mx
    db $3D,$E4,$5D,$E4,$3D,$E4,$7D,$E4,$5D,$E4,$9D,$E4,$3D,$E4,$3D,$E4 ; $80E3F9
    db $3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4 ; $80E409
    db $3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4 ; $80E419
    db $3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4,$3D,$E4 ; $80E429
    db $3D,$E4,$3D,$E4,$00,$00,$95,$08,$32,$0D,$73,$11,$94,$15,$D5,$1D ; $80E439
    db $F6,$21,$A2,$69,$F6,$25,$9A,$36,$FF,$7F,$E0,$4C,$39,$67,$63,$34 ; $80E449
    db $95,$08,$20,$59,$00,$00,$4F,$48,$32,$0D,$73,$11,$94,$15,$D5,$1D ; $80E459
    db $F6,$21,$A2,$69,$F6,$25,$9A,$36,$FF,$7F,$E0,$4C,$39,$67,$63,$34 ; $80E469
    db $95,$08,$20,$59,$00,$00,$75,$02,$32,$0D,$73,$11,$94,$15,$D5,$1D ; $80E479
    db $F6,$21,$36,$71,$F6,$25,$9A,$36,$FF,$7F,$70,$58,$39,$67,$4F,$48 ; $80E489
    db $95,$08,$20,$59,$00,$00,$75,$02,$32,$0D,$73,$11,$94,$15,$D5,$1D ; $80E499
    db $F6,$21,$E0,$0D,$F6,$25,$9A,$36,$FF,$7F,$80,$09,$39,$67,$40,$05 ; $80E4A9
    db $95,$08,$20,$59                                                 ; $80E4B9
L_80E4BD:
    LDY #$C6                        ; $80E4BD  A0 C6        Mx
    LDA ($D0),Y                     ; $80E4BF  B1 D0        Mx
    STA $00E8                       ; $80E4C1  8D E8 00     Mx
    LDY #$00                        ; $80E4C4  A0 00        Mx
    LDA ($D0),Y                     ; $80E4C6  B1 D0        Mx
    AND #$FF00                      ; $80E4C8  29 00 FF     Mx
    BNE L_80E4D4                    ; $80E4CB  D0 07        Mx
    LDA ($D3),Y                     ; $80E4CD  B1 D3        Mx
    AND #$FF00                      ; $80E4CF  29 00 FF     Mx
    BEQ L_80E4DC                    ; $80E4D2  F0 08        Mx
L_80E4D4:
    LDA #$0005                      ; $80E4D4  A9 05 00     Mx
    STA $00E8                       ; $80E4D7  8D E8 00     Mx
    BRA L_80E52D                    ; $80E4DA  80 51        Mx
L_80E4DC:
    LDY #$00                        ; $80E4DC  A0 00        Mx
    LDA ($D6),Y                     ; $80E4DE  B1 D6        Mx
    AND #$FF00                      ; $80E4E0  29 00 FF     Mx
    BNE L_80E4EE                    ; $80E4E3  D0 09        Mx
    LDA ($D9),Y                     ; $80E4E5  B1 D9        Mx
    AND #$FF00                      ; $80E4E7  29 00 FF     Mx
    BEQ L_80E535                    ; $80E4EA  F0 49        Mx
    INX                             ; $80E4EC  E8           Mx
    INX                             ; $80E4ED  E8           Mx
L_80E4EE:
    LDA #$0006                      ; $80E4EE  A9 06 00     Mx
    STA $00EC                       ; $80E4F1  8D EC 00     Mx
    LDA $0AA4,X                     ; $80E4F4  BD A4 0A     Mx
    BMI L_80E509                    ; $80E4F7  30 10        Mx
    LDY #$04                        ; $80E4F9  A0 04        Mx
    STY $00EC                       ; $80E4FB  8C EC 00     Mx
    CMP #$0005                      ; $80E4FE  C9 05 00     Mx
    BCC L_80E509                    ; $80E501  90 06        Mx
    LDA #$0001                      ; $80E503  A9 01 00     Mx
    STA $00EC                       ; $80E506  8D EC 00     Mx
L_80E509:
    LDA $00E8                       ; $80E509  AD E8 00     Mx
    SEC                             ; $80E50C  38           Mx
    SBC $00EC                       ; $80E50D  ED EC 00     Mx
    STA $00E8                       ; $80E510  8D E8 00     Mx
    LDA $0AAC,X                     ; $80E513  BD AC 0A     Mx
    BNE L_80E524                    ; $80E516  D0 0C        Mx
    LDA $00E8                       ; $80E518  AD E8 00     Mx
    SEC                             ; $80E51B  38           Mx
    SBC #$0004                      ; $80E51C  E9 04 00     Mx
    STA $00E8                       ; $80E51F  8D E8 00     Mx
    BRA L_80E535                    ; $80E522  80 11        Mx
L_80E524:
    CLC                             ; $80E524  18           Mx
    ADC $00E8                       ; $80E525  6D E8 00     Mx
    STA $00E8                       ; $80E528  8D E8 00     Mx
    BRA L_80E535                    ; $80E52B  80 08        Mx
L_80E52D:
    LDA $00E8                       ; $80E52D  AD E8 00     Mx
    LDY #$C6                        ; $80E530  A0 C6        Mx
    STA ($D0),Y                     ; $80E532  91 D0        Mx
    RTS                             ; $80E534  60           Mx
L_80E535:
    LDA $00E8                       ; $80E535  AD E8 00     Mx
    CLC                             ; $80E538  18           Mx
    ADC $0AC4                       ; $80E539  6D C4 0A     Mx
    LDY #$C6                        ; $80E53C  A0 C6        Mx
    STA ($D0),Y                     ; $80E53E  91 D0        Mx
    RTS                             ; $80E540  60           Mx
L_80E541:
    JSR L_80E545                    ; $80E541  20 45 E5     Mx
    RTL                             ; $80E544  6B           Mx
L_80E545:
    LDA #$FFFF                      ; $80E545  A9 FF FF     MX
    STA $0AA4                       ; $80E548  8D A4 0A     MX
    STA $0AA6                       ; $80E54B  8D A6 0A     MX
    STA $0AA8                       ; $80E54E  8D A8 0A     MX
    STA $0AAA                       ; $80E551  8D AA 0A     MX
    STZ $0AAC                       ; $80E554  9C AC 0A     MX
    STZ $0AAE                       ; $80E557  9C AE 0A     MX
    STZ $0AB0                       ; $80E55A  9C B0 0A     MX
    STZ $0AB2                       ; $80E55D  9C B2 0A     MX
    STZ $0AB4                       ; $80E560  9C B4 0A     MX
    STZ $0AB6                       ; $80E563  9C B6 0A     MX
    STZ $0AB8                       ; $80E566  9C B8 0A     MX
    STZ $0ABA                       ; $80E569  9C BA 0A     MX
    LDX #$0000                      ; $80E56C  A2 00 00     MX
L_80E56F:
    LDA $16CC,X                     ; $80E56F  BD CC 16     MX  initial1
    BPL L_80E577                    ; $80E572  10 03        MX
    JMP L_80E60B                    ; $80E574  4C 0B E6     MX
L_80E577:
    SEP #$20                        ; $80E577  E2 20        MX
    LDA $16CC,X                     ; $80E579  BD CC 16     mX  initial1
    STA $00A4                       ; $80E57C  8D A4 00     mX
    LDA $16D4,X                     ; $80E57F  BD D4 16     mX
    STA $00A5                       ; $80E582  8D A5 00     mX
    LDA $16DC,X                     ; $80E585  BD DC 16     mX
    STA $00A6                       ; $80E588  8D A6 00     mX
    LDA #$00                        ; $80E58B  A9 00        mX
    STA $00A7                       ; $80E58D  8D A7 00     mX
    REP #$20                        ; $80E590  C2 20        mX
    PHX                             ; $80E592  DA           MX
    JSL L_8AD6FB                    ; $80E593  22 FB D6 8A  MX
    PLX                             ; $80E597  FA           MX
    BCS L_80E60B                    ; $80E598  B0 71        MX
    STA $1724,X                     ; $80E59A  9D 24 17     MX  player_record
    PHX                             ; $80E59D  DA           MX
    TAX                             ; $80E59E  AA           MX
    SEP #$20                        ; $80E59F  E2 20        MX
    LDA $00188E,X                   ; $80E5A1  BF 8E 18 00  mX  record_wins
    CLC                             ; $80E5A5  18           mX
    ADC $00188F,X                   ; $80E5A6  7F 8F 18 00  mX  record_losses
    PLY                             ; $80E5AA  7A           mX
    PHY                             ; $80E5AB  5A           mX
    STA $0AA4,Y                     ; $80E5AC  99 A4 0A     mX
    AND #$00                        ; $80E5AF  29 00        mX
    STA $0AA5,Y                     ; $80E5B1  99 A5 0A     mX
    LDA $001890,X                   ; $80E5B4  BF 90 18 00  mX  record_streak
    PLY                             ; $80E5B8  7A           mX
    PHY                             ; $80E5B9  5A           mX
    STA $0AAC,Y                     ; $80E5BA  99 AC 0A     mX
    SEP #$20                        ; $80E5BD  E2 20        mX
    LDA $0019EE,X                   ; $80E5BF  BF EE 19 00  mX  record_teams
    STA $1C15                       ; $80E5C3  8D 15 1C     mX
    LDA $0019EF,X                   ; $80E5C6  BF EF 19 00  mX
    STA $1C14                       ; $80E5CA  8D 14 1C     mX
    LDA $0019F0,X                   ; $80E5CD  BF F0 19 00  mX
    STA $1C17                       ; $80E5D1  8D 17 1C     mX
    LDA $0019F1,X                   ; $80E5D4  BF F1 19 00  mX
    STA $1C16                       ; $80E5D8  8D 16 1C     mX
    REP #$20                        ; $80E5DB  C2 20        mX
    LDY #$0000                      ; $80E5DD  A0 00 00     MX
    LDX #$001B                      ; $80E5E0  A2 1B 00     MX
    STZ $00A4                       ; $80E5E3  9C A4 00     MX
    LDA $1C14,Y                     ; $80E5E6  B9 14 1C     MX
    SEC                             ; $80E5E9  38           MX
    ROL                             ; $80E5EA  2A           MX
    STA $00A6                       ; $80E5EB  8D A6 00     MX
L_80E5EE:
    BCC L_80E5F3                    ; $80E5EE  90 03        MX
    INC $00A4                       ; $80E5F0  EE A4 00     MX
L_80E5F3:
    ASL $00A6                       ; $80E5F3  0E A6 00     MX
    BNE L_80E601                    ; $80E5F6  D0 09        MX
    INY                             ; $80E5F8  C8           MX
    INY                             ; $80E5F9  C8           MX
    LDA $1C14,Y                     ; $80E5FA  B9 14 1C     MX
    ROL                             ; $80E5FD  2A           MX
    STA $00A6                       ; $80E5FE  8D A6 00     MX
L_80E601:
    DEX                             ; $80E601  CA           MX
    BNE L_80E5EE                    ; $80E602  D0 EA        MX
    PLX                             ; $80E604  FA           MX
    LDA $00A4                       ; $80E605  AD A4 00     MX
    STA $0AB4,X                     ; $80E608  9D B4 0A     MX
L_80E60B:
    INX                             ; $80E60B  E8           MX
    INX                             ; $80E60C  E8           MX
    CPX #$0008                      ; $80E60D  E0 08 00     MX
    BEQ L_80E615                    ; $80E610  F0 03        MX
    JMP L_80E56F                    ; $80E612  4C 6F E5     MX
L_80E615:
    RTS                             ; $80E615  60           MX
L_80E616:
    STA $00A4                       ; $80E616  8D A4 00     Mx
    AND #$0040                      ; $80E619  29 40 00     Mx
    BEQ L_80E646                    ; $80E61C  F0 28        Mx
    REP #$10                        ; $80E61E  C2 10        Mx
    LDA $00D0                       ; $80E620  AD D0 00     MX
    LDX $00D3                       ; $80E623  AE D3 00     MX
    STX $00D0                       ; $80E626  8E D0 00     MX
    STA $00D3                       ; $80E629  8D D3 00     MX
    LDA $00DC                       ; $80E62C  AD DC 00     MX
    LDX $00DF                       ; $80E62F  AE DF 00     MX
    STX $00DC                       ; $80E632  8E DC 00     MX
    STA $00DF                       ; $80E635  8D DF 00     MX
    LDA $00A6                       ; $80E638  AD A6 00     MX
    LDX $00A8                       ; $80E63B  AE A8 00     MX
    STX $00A6                       ; $80E63E  8E A6 00     MX
    STA $00A8                       ; $80E641  8D A8 00     MX
    SEP #$10                        ; $80E644  E2 10        MX
L_80E646:
    LDA $00A4                       ; $80E646  AD A4 00     Mx
    AND #$001F                      ; $80E649  29 1F 00     Mx
    ASL                             ; $80E64C  0A           Mx
    TAX                             ; $80E64D  AA           Mx
    LDA $E7F5,X                     ; $80E64E  BD F5 E7     Mx
    STA $00D6                       ; $80E651  8D D6 00     Mx
    CLC                             ; $80E654  18           Mx
    ADC #$0012                      ; $80E655  69 12 00     Mx
    STA $00D9                       ; $80E658  8D D9 00     Mx
    LDA $00A6                       ; $80E65B  AD A6 00     Mx
    BMI L_80E66C                    ; $80E65E  30 0C        Mx
    SEC                             ; $80E660  38           Mx
    SBC #$0036                      ; $80E661  E9 36 00     Mx
    ASL                             ; $80E664  0A           Mx
    TAX                             ; $80E665  AA           Mx
    LDA $ECBB,X                     ; $80E666  BD BB EC     Mx
    STA $00D6                       ; $80E669  8D D6 00     Mx
L_80E66C:
    LDA $00A8                       ; $80E66C  AD A8 00     Mx
    BMI L_80E67D                    ; $80E66F  30 0C        Mx
    SEC                             ; $80E671  38           Mx
    SBC #$0036                      ; $80E672  E9 36 00     Mx
    ASL                             ; $80E675  0A           Mx
    TAX                             ; $80E676  AA           Mx
    LDA $ECBB,X                     ; $80E677  BD BB EC     Mx
    STA $00D9                       ; $80E67A  8D D9 00     Mx
L_80E67D:
    LDY #$CA                        ; $80E67D  A0 CA        Mx
    LDA ($D6)                       ; $80E67F  B2 D6        Mx
    STA ($D0),Y                     ; $80E681  91 D0        Mx
    LDA ($D9)                       ; $80E683  B2 D9        Mx
    STA ($D3),Y                     ; $80E685  91 D3        Mx
    REP #$10                        ; $80E687  C2 10        Mx
    CMP #$0000                      ; $80E689  C9 00 00     MX
    BEQ L_80E696                    ; $80E68C  F0 08        MX
    LDA #$002C                      ; $80E68E  A9 2C 00     MX
    LDX #$0039                      ; $80E691  A2 39 00     MX
    BRA L_80E69C                    ; $80E694  80 06        MX
L_80E696:
    LDA #$0019                      ; $80E696  A9 19 00     MX
    LDX #$0024                      ; $80E699  A2 24 00     MX
L_80E69C:
    LDY #$00DE                      ; $80E69C  A0 DE 00     MX
    STA ($D3),Y                     ; $80E69F  91 D3        MX
    LDY #$00D8                      ; $80E6A1  A0 D8 00     MX
    TXA                             ; $80E6A4  8A           MX
    STA ($D3),Y                     ; $80E6A5  91 D3        MX
    LDY #$00CA                      ; $80E6A7  A0 CA 00     MX
    LDA ($D0),Y                     ; $80E6AA  B1 D0        MX
    BEQ L_80E6BB                    ; $80E6AC  F0 0D        MX
    LDA #$002C                      ; $80E6AE  A9 2C 00     MX
    BRA L_80E6B6                    ; $80E6B1  80 03        MX
L_80E6B3:
    LDA #$002C                      ; $80E6B3  A9 2C 00     MX
L_80E6B6:
    LDX #$0039                      ; $80E6B6  A2 39 00     MX
    BRA L_80E6C1                    ; $80E6B9  80 06        MX
L_80E6BB:
    LDA #$0019                      ; $80E6BB  A9 19 00     MX
    LDX #$0024                      ; $80E6BE  A2 24 00     MX
L_80E6C1:
    LDY #$00DE                      ; $80E6C1  A0 DE 00     MX
    STA ($D0),Y                     ; $80E6C4  91 D0        MX
    LDY #$00D8                      ; $80E6C6  A0 D8 00     MX
    TXA                             ; $80E6C9  8A           MX
    STA ($D0),Y                     ; $80E6CA  91 D0        MX
    SEP #$10                        ; $80E6CC  E2 10        MX
    INC $00D6                       ; $80E6CE  EE D6 00     Mx
    INC $00D6                       ; $80E6D1  EE D6 00     Mx
    INC $00D9                       ; $80E6D4  EE D9 00     Mx
    INC $00D9                       ; $80E6D7  EE D9 00     Mx
    LDY #$D2                        ; $80E6DA  A0 D2        Mx
    LDA ($D6)                       ; $80E6DC  B2 D6        Mx
    LSR                             ; $80E6DE  4A           Mx
    LSR                             ; $80E6DF  4A           Mx
    LSR                             ; $80E6E0  4A           Mx
    LDX $0AF0                       ; $80E6E1  AE F0 0A     Mx
    BEQ L_80E6EA                    ; $80E6E4  F0 04        Mx
    CLC                             ; $80E6E6  18           Mx
    ADC #$0100                      ; $80E6E7  69 00 01     Mx
L_80E6EA:
    STA ($D0),Y                     ; $80E6EA  91 D0        Mx
    LDA ($D9)                       ; $80E6EC  B2 D9        Mx
    LSR                             ; $80E6EE  4A           Mx
    LSR                             ; $80E6EF  4A           Mx
    LSR                             ; $80E6F0  4A           Mx
    LDX $0AF0                       ; $80E6F1  AE F0 0A     Mx
    BEQ L_80E6FA                    ; $80E6F4  F0 04        Mx
    CLC                             ; $80E6F6  18           Mx
    ADC #$0100                      ; $80E6F7  69 00 01     Mx
L_80E6FA:
    STA ($D3),Y                     ; $80E6FA  91 D3        Mx
    INC $00D6                       ; $80E6FC  EE D6 00     Mx
    INC $00D6                       ; $80E6FF  EE D6 00     Mx
    INC $00D9                       ; $80E702  EE D9 00     Mx
    INC $00D9                       ; $80E705  EE D9 00     Mx
    LDY #$CC                        ; $80E708  A0 CC        Mx
    LDA ($D6)                       ; $80E70A  B2 D6        Mx
    STA ($D0),Y                     ; $80E70C  91 D0        Mx
    LDA ($D9)                       ; $80E70E  B2 D9        Mx
    STA ($D3),Y                     ; $80E710  91 D3        Mx
    INC $00D6                       ; $80E712  EE D6 00     Mx
    INC $00D6                       ; $80E715  EE D6 00     Mx
    INC $00D9                       ; $80E718  EE D9 00     Mx
    INC $00D9                       ; $80E71B  EE D9 00     Mx
    LDY #$C8                        ; $80E71E  A0 C8        Mx
    LDA ($D6)                       ; $80E720  B2 D6        Mx
    STA ($D0),Y                     ; $80E722  91 D0        Mx
    LDA ($D9)                       ; $80E724  B2 D9        Mx
    STA ($D3),Y                     ; $80E726  91 D3        Mx
    INC $00D6                       ; $80E728  EE D6 00     Mx
    INC $00D6                       ; $80E72B  EE D6 00     Mx
    INC $00D9                       ; $80E72E  EE D9 00     Mx
    INC $00D9                       ; $80E731  EE D9 00     Mx
    LDY #$CE                        ; $80E734  A0 CE        Mx
    LDA ($D6)                       ; $80E736  B2 D6        Mx
    STA ($D0),Y                     ; $80E738  91 D0        Mx
    LDA ($D9)                       ; $80E73A  B2 D9        Mx
    STA ($D3),Y                     ; $80E73C  91 D3        Mx
    INC $00D6                       ; $80E73E  EE D6 00     Mx
    INC $00D6                       ; $80E741  EE D6 00     Mx
    INC $00D9                       ; $80E744  EE D9 00     Mx
    INC $00D9                       ; $80E747  EE D9 00     Mx
    LDY #$D0                        ; $80E74A  A0 D0        Mx
    LDA ($D6)                       ; $80E74C  B2 D6        Mx
    STA ($D0),Y                     ; $80E74E  91 D0        Mx
    LDA ($D9)                       ; $80E750  B2 D9        Mx
    STA ($D3),Y                     ; $80E752  91 D3        Mx
    INC $00D6                       ; $80E754  EE D6 00     Mx
    INC $00D6                       ; $80E757  EE D6 00     Mx
    INC $00D9                       ; $80E75A  EE D9 00     Mx
    INC $00D9                       ; $80E75D  EE D9 00     Mx
    LDY #$C6                        ; $80E760  A0 C6        Mx
    LDA ($D6)                       ; $80E762  B2 D6        Mx
    STA ($D0),Y                     ; $80E764  91 D0        Mx
    LDA ($D9)                       ; $80E766  B2 D9        Mx
    STA ($D3),Y                     ; $80E768  91 D3        Mx
    INC $00D6                       ; $80E76A  EE D6 00     Mx
    INC $00D6                       ; $80E76D  EE D6 00     Mx
    INC $00D9                       ; $80E770  EE D9 00     Mx
    INC $00D9                       ; $80E773  EE D9 00     Mx
    LDA ($D6)                       ; $80E776  B2 D6        Mx
    STA $00E2                       ; $80E778  8D E2 00     Mx
    LDA ($D9)                       ; $80E77B  B2 D9        Mx
    STA $00E5                       ; $80E77D  8D E5 00     Mx
    LDY #$08                        ; $80E780  A0 08        Mx
L_80E782:
    LDA ($E2)                       ; $80E782  B2 E2        Mx
    STA [$DC],Y                     ; $80E784  97 DC        Mx
    LDA ($E5)                       ; $80E786  B2 E5        Mx
    STA [$DF],Y                     ; $80E788  97 DF        Mx
    INY                             ; $80E78A  C8           Mx
    INY                             ; $80E78B  C8           Mx
    INC $00E2                       ; $80E78C  EE E2 00     Mx
    INC $00E2                       ; $80E78F  EE E2 00     Mx
    INC $00E5                       ; $80E792  EE E5 00     Mx
    INC $00E5                       ; $80E795  EE E5 00     Mx
    CPY #$12                        ; $80E798  C0 12        Mx
    BNE L_80E782                    ; $80E79A  D0 E6        Mx
    INC $00D6                       ; $80E79C  EE D6 00     Mx
    INC $00D6                       ; $80E79F  EE D6 00     Mx
    INC $00D9                       ; $80E7A2  EE D9 00     Mx
    INC $00D9                       ; $80E7A5  EE D9 00     Mx
    LDA ($D6)                       ; $80E7A8  B2 D6        Mx
    STA $00DC                       ; $80E7AA  8D DC 00     Mx
    LDA ($D9)                       ; $80E7AD  B2 D9        Mx
    STA $00DF                       ; $80E7AF  8D DF 00     Mx
    LDY #$D4                        ; $80E7B2  A0 D4        Mx
    LDA ($DC)                       ; $80E7B4  B2 DC        Mx
    STA ($D0),Y                     ; $80E7B6  91 D0        Mx
    LDA ($DF)                       ; $80E7B8  B2 DF        Mx
    STA ($D3),Y                     ; $80E7BA  91 D3        Mx
    INC $00DC                       ; $80E7BC  EE DC 00     Mx
    INC $00DC                       ; $80E7BF  EE DC 00     Mx
    INC $00DF                       ; $80E7C2  EE DF 00     Mx
    INC $00DF                       ; $80E7C5  EE DF 00     Mx
    SEP #$20                        ; $80E7C8  E2 20        Mx
    LDY #$00                        ; $80E7CA  A0 00        mx
    LDA ($D0),Y                     ; $80E7CC  B1 D0        mx
    DEC                             ; $80E7CE  3A           mx
    ASL                             ; $80E7CF  0A           mx
    TAX                             ; $80E7D0  AA           mx
    LDA ($DC)                       ; $80E7D1  B2 DC        mx
    STA $0C59,X                     ; $80E7D3  9D 59 0C     mx
    STA $0C5A,X                     ; $80E7D6  9D 5A 0C     mx
    LDA ($D3),Y                     ; $80E7D9  B1 D3        mx
    DEC                             ; $80E7DB  3A           mx
    ASL                             ; $80E7DC  0A           mx
    TAX                             ; $80E7DD  AA           mx
    LDA ($DF)                       ; $80E7DE  B2 DF        mx
    STA $0C59,X                     ; $80E7E0  9D 59 0C     mx
    STA $0C5A,X                     ; $80E7E3  9D 5A 0C     mx
    REP #$20                        ; $80E7E6  C2 20        mx
    INC $00D6                       ; $80E7E8  EE D6 00     Mx
    INC $00D6                       ; $80E7EB  EE D6 00     Mx
    INC $00D9                       ; $80E7EE  EE D9 00     Mx
    INC $00D9                       ; $80E7F1  EE D9 00     Mx
    RTS                             ; $80E7F4  60           Mx
    db $EB,$E9,$57,$EA,$7B,$EA,$9B,$EB,$BF,$EB,$2B,$EC,$E3,$EB,$7F,$E9 ; $80E7F5
    db $A3,$E9,$0F,$EA,$E7,$EA,$07,$EC,$4F,$EC,$CB,$E8,$13,$E9,$37,$E9 ; $80E805
    db $5B,$E9,$C7,$E9,$33,$EA,$C3,$EA,$EF,$E8,$9F,$EA,$0B,$EB,$2F,$EB ; $80E815
    db $53,$EB,$77,$EB,$73,$EC,$97,$EC,$26,$00,$68,$04,$A9,$08,$0B,$11 ; $80E825
    db $2C,$21,$26,$00,$68,$04,$A9,$08,$0B,$11,$2C,$21,$0D,$0D,$4F,$11 ; $80E835
    db $91,$15,$D5,$25,$37,$3A,$00,$00,$3A,$00,$20,$00,$3A,$00,$40,$00 ; $80E845
    db $3A,$00,$60,$00,$3A,$00,$80,$00,$3A,$00,$A0,$00,$3A,$00,$C0,$00 ; $80E855
    db $3A,$00,$E0,$00,$3A,$00,$00,$01,$3A,$00,$20,$01,$3A,$00,$40,$01 ; $80E865
    db $3A,$00,$A0,$03,$3F,$00,$60,$01,$3A,$00,$80,$01,$3A,$00,$A0,$01 ; $80E875
    db $3A,$00,$C0,$01,$28,$00,$E0,$01,$28,$00,$00,$02,$08,$00,$20,$02 ; $80E885
    db $08,$00,$40,$02,$2B,$00,$60,$02,$2B,$00,$80,$02,$2B,$00,$A0,$02 ; $80E895
    db $26,$00,$C0,$02,$26,$00,$E0,$02,$26,$00,$00,$03,$26,$00,$20,$03 ; $80E8A5
    db $08,$00,$40,$03,$03,$00,$60,$03,$03,$00,$80,$03,$1C,$00,$C0,$03 ; $80E8B5
    db $3A,$00,$CA,$03,$15,$00,$00,$00,$40,$15,$D4,$03,$0A,$00,$04,$00 ; $80E8C5
    db $26,$00,$00,$00,$37,$E8,$5F,$E8,$00,$00,$30,$16,$24,$04,$03,$00 ; $80E8D5
    db $06,$00,$27,$00,$00,$00,$37,$E8,$6B,$E8,$01,$00,$E0,$15,$D4,$03 ; $80E8E5
    db $08,$00,$05,$00,$27,$00,$00,$00,$37,$E8,$8F,$E8,$00,$00,$A0,$14 ; $80E8F5
    db $E8,$03,$02,$00,$09,$00,$26,$00,$00,$00,$37,$E8,$5F,$E8,$00,$00 ; $80E905
    db $90,$15,$24,$04,$09,$00,$04,$00,$26,$00,$00,$00,$37,$E8,$5F,$E8 ; $80E915
    db $00,$00,$E0,$15,$24,$04,$07,$00,$07,$00,$28,$00,$00,$00,$37,$E8 ; $80E925
    db $6B,$E8,$00,$00,$30,$16,$10,$04,$0A,$00,$08,$00,$2A,$00,$05,$00 ; $80E935
    db $37,$E8,$6B,$E8,$00,$00,$90,$15,$8E,$03,$07,$00,$07,$00,$24,$00 ; $80E945
    db $05,$00,$37,$E8,$63,$E8,$01,$00,$E0,$15,$2E,$04,$00,$00,$04,$00 ; $80E955
    db $2E,$00,$00,$00,$41,$E8,$7B,$E8,$00,$00,$A0,$14,$C0,$03,$08,$00 ; $80E965
    db $06,$00,$26,$00,$00,$00,$37,$E8,$5F,$E8,$00,$00,$40,$15,$FC,$03 ; $80E975
    db $04,$00,$09,$00,$26,$00,$F5,$FF,$37,$E8,$5F,$E8,$00,$00,$E0,$15 ; $80E985
    db $2E,$04,$00,$00,$07,$00,$29,$00,$F5,$FF,$37,$E8,$5F,$E8,$00,$00 ; $80E995
    db $40,$15,$8E,$03,$09,$00,$07,$00,$26,$00,$F9,$FF,$37,$E8,$6B,$E8 ; $80E9A5
    db $00,$00,$90,$15,$C0,$03,$08,$00,$07,$00,$26,$00,$F9,$FF,$37,$E8 ; $80E9B5
    db $5F,$E8,$01,$00,$80,$16,$42,$04,$01,$00,$07,$00,$2E,$00,$01,$00 ; $80E9C5
    db $37,$E8,$87,$E8,$00,$00,$A0,$14,$24,$04,$00,$00,$08,$00,$29,$00 ; $80E9D5
    db $01,$00,$41,$E8,$4F,$E8,$01,$00,$30,$16,$10,$04,$02,$00,$07,$00 ; $80E9E5
    db $2C,$00,$FC,$FF,$37,$E8,$8F,$E8,$00,$00,$F0,$14,$7E,$04,$03,$00 ; $80E9F5
    db $05,$00,$27,$00,$FC,$FF,$41,$E8,$53,$E8,$00,$00,$40,$15,$8E,$03 ; $80EA05
    db $09,$00,$09,$00,$26,$00,$01,$00,$37,$E8,$5F,$E8,$00,$00,$E0,$15 ; $80EA15
    db $24,$04,$01,$00,$04,$00,$27,$00,$01,$00,$37,$E8,$5F,$E8,$00,$00 ; $80EA25
    db $E0,$15,$FC,$03,$07,$00,$03,$00,$26,$00,$00,$00,$37,$E8,$5F,$E8 ; $80EA35
    db $00,$00,$A0,$14,$C0,$03,$06,$00,$04,$00,$26,$00,$00,$00,$37,$E8 ; $80EA45
    db $5F,$E8,$00,$00,$40,$15,$FC,$03,$07,$00,$04,$00,$26,$00,$00,$00 ; $80EA55
    db $37,$E8,$5F,$E8,$00,$00,$30,$16,$24,$04,$04,$00,$07,$00,$28,$00 ; $80EA65
    db $00,$00,$37,$E8,$6B,$E8,$00,$00,$40,$15,$10,$04,$08,$00,$04,$00 ; $80EA75
    db $27,$00,$01,$00,$37,$E8,$63,$E8,$00,$00,$50,$14,$D4,$03,$07,$00 ; $80EA85
    db $07,$00,$26,$00,$01,$00,$41,$E8,$77,$E8,$00,$00,$A0,$14,$C0,$03 ; $80EA95
    db $06,$00,$08,$00,$26,$00,$FA,$FF,$41,$E8,$57,$E8,$00,$00,$A0,$14 ; $80EAA5
    db $E8,$03,$08,$00,$08,$00,$26,$00,$FA,$FF,$37,$E8,$67,$E8,$00,$00 ; $80EAB5
    db $F0,$14,$10,$04,$03,$00,$07,$00,$26,$00,$FE,$FF,$41,$E8,$4B,$E8 ; $80EAC5
    db $00,$00,$90,$15,$E8,$03,$07,$00,$04,$00,$28,$00,$FE,$FF,$37,$E8 ; $80EAD5
    db $67,$E8,$00,$00,$A0,$14,$FC,$03,$05,$00,$07,$00,$27,$00,$F6,$FF ; $80EAE5
    db $41,$E8,$4F,$E8,$00,$00,$40,$15,$24,$04,$08,$00,$03,$00,$27,$00 ; $80EAF5
    db $F6,$FF,$37,$E8,$6B,$E8,$00,$00,$40,$15,$D4,$03,$08,$00,$03,$00 ; $80EB05
    db $26,$00,$00,$00,$37,$E8,$5F,$E8,$01,$00,$F0,$14,$24,$04,$01,$00 ; $80EB15
    db $07,$00,$29,$00,$00,$00,$37,$E8,$8F,$E8,$00,$00,$E0,$15,$D4,$03 ; $80EB25
    db $09,$00,$09,$00,$26,$00,$02,$00,$37,$E8,$5F,$E8,$00,$00,$F0,$14 ; $80EB35
    db $24,$04,$07,$00,$08,$00,$26,$00,$02,$00,$37,$E8,$6B,$E8,$00,$00 ; $80EB45
    db $90,$15,$8E,$03,$0A,$00,$07,$00,$29,$00,$02,$00,$37,$E8,$6B,$E8 ; $80EB55
    db $01,$00,$90,$15,$42,$04,$00,$00,$06,$00,$2C,$00,$02,$00,$41,$E8 ; $80EB65
    db $7B,$E8,$00,$00,$E0,$15,$24,$04,$04,$00,$04,$00,$26,$00,$F7,$FF ; $80EB75
    db $37,$E8,$5F,$E8,$00,$00,$90,$15,$10,$04,$01,$00,$06,$00,$29,$00 ; $80EB85
    db $F7,$FF,$41,$E8,$4F,$E8,$00,$00,$90,$15,$FC,$03,$09,$00,$02,$00 ; $80EB95
    db $29,$00,$03,$00,$37,$E8,$67,$E8,$01,$00,$40,$15,$C0,$03,$07,$00 ; $80EBA5
    db $07,$00,$26,$00,$03,$00,$37,$E8,$87,$E8,$00,$00,$90,$15,$E8,$03 ; $80EBB5
    db $09,$00,$06,$00,$26,$00,$03,$00,$37,$E8,$6F,$E8,$01,$00,$40,$15 ; $80EBC5
    db $2E,$04,$03,$00,$04,$00,$28,$00,$03,$00,$37,$E8,$8B,$E8,$00,$00 ; $80EBD5
    db $40,$15,$E8,$03,$07,$00,$05,$00,$26,$00,$F8,$FF,$37,$E8,$5F,$E8 ; $80EBE5
    db $00,$00,$D0,$16,$10,$04,$0A,$00,$04,$00,$2B,$00,$F8,$FF,$37,$E8 ; $80EBF5
    db $6F,$E8,$00,$00,$40,$15,$C0,$03,$08,$00,$0A,$00,$26,$00,$FD,$FF ; $80EC05
    db $37,$E8,$5F,$E8,$00,$00,$E0,$15,$10,$04,$07,$00,$04,$00,$26,$00 ; $80EC15
    db $FD,$FF,$37,$E8,$6B,$E8,$00,$00,$E0,$15,$E8,$03,$0A,$00,$06,$00 ; $80EC25
    db $26,$00,$00,$00,$37,$E8,$6B,$E8,$00,$00,$40,$15,$E8,$03,$04,$00 ; $80EC35
    db $07,$00,$26,$00,$00,$00,$41,$E8,$5B,$E8,$00,$00,$40,$15,$C0,$03 ; $80EC45
    db $09,$00,$07,$00,$26,$00,$04,$00,$37,$E8,$5F,$E8,$01,$00,$30,$16 ; $80EC55
    db $2E,$04,$00,$00,$06,$00,$2E,$00,$04,$00,$41,$E8,$7B,$E8,$00,$00 ; $80EC65
    db $40,$15,$FC,$03,$04,$00,$08,$00,$26,$00,$FB,$FF,$41,$E8,$4F,$E8 ; $80EC75
    db $00,$00,$90,$15,$C0,$03,$08,$00,$05,$00,$26,$00,$FB,$FF,$37,$E8 ; $80EC85
    db $6B,$E8,$01,$00,$40,$15,$FC,$03,$04,$00,$08,$00,$26,$00,$FB,$FF ; $80EC95
    db $41,$E8,$C3,$E8,$00,$00,$90,$15,$C0,$03,$08,$00,$05,$00,$26,$00 ; $80ECA5
    db $FB,$FF,$37,$E8,$6B,$E8,$09,$ED,$F7,$EC,$D3,$EC,$E5,$EC,$1B,$ED ; $80ECB5
    db $2D,$ED,$3F,$ED,$51,$ED,$63,$ED,$75,$ED,$87,$ED,$99,$ED,$00,$00 ; $80ECC5
    db $D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00,$37,$E8,$97,$E8 ; $80ECD5
    db $00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00,$37,$E8 ; $80ECE5
    db $9B,$E8,$00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00 ; $80ECF5
    db $41,$E8,$9F,$E8,$00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00 ; $80ED05
    db $05,$00,$41,$E8,$A3,$E8,$00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00 ; $80ED15
    db $2A,$00,$05,$00,$41,$E8,$BB,$E8,$00,$00,$D0,$16,$7E,$04,$0A,$00 ; $80ED25
    db $08,$00,$2A,$00,$05,$00,$41,$E8,$BF,$E8,$00,$00,$D0,$16,$7E,$04 ; $80ED35
    db $0A,$00,$08,$00,$2A,$00,$05,$00,$41,$E8,$A7,$E8,$00,$00,$D0,$16 ; $80ED45
    db $7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00,$41,$E8,$AB,$E8,$01,$00 ; $80ED55
    db $D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00,$41,$E8,$AF,$E8 ; $80ED65
    db $00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00,$41,$E8 ; $80ED75
    db $B3,$E8,$00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00 ; $80ED85
    db $41,$E8,$B7,$E8,$00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00 ; $80ED95
    db $05,$00,$41,$E8,$C7,$E8,$00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00 ; $80EDA5
    db $2A,$00,$05,$00,$00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00 ; $80EDB5
    db $05,$00,$00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00 ; $80EDC5
    db $00,$00,$D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00,$00,$00 ; $80EDD5
    db $D0,$16,$7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00,$00,$00,$D0,$16 ; $80EDE5
    db $7E,$04,$0A,$00,$08,$00,$2A,$00,$05,$00,$05,$00,$00,$00,$4F,$EF ; $80EDF5
    db $25,$EF,$01,$00,$00,$00,$09,$EF,$6B,$EF,$02,$00,$00,$00,$79,$EF ; $80EE05
    db $F7,$EF,$02,$00,$00,$00,$05,$F0,$BF,$EF,$03,$00,$00,$00,$87,$EF ; $80EE15
    db $6B,$EF,$04,$00,$00,$00,$DB,$EF,$33,$EF,$05,$00,$00,$00,$A3,$EF ; $80EE25
    db $25,$EF,$05,$00,$00,$00,$41,$EF,$33,$EF,$05,$00,$00,$00,$4F,$EF ; $80EE35
    db $25,$EF,$01,$00,$00,$00,$DF,$EE,$6B,$EF,$05,$00,$00,$00,$A3,$EF ; $80EE45
    db $25,$EF,$03,$00,$00,$00,$13,$F0,$CD,$EF,$02,$00,$01,$00,$E9,$EF ; $80EE55
    db $E9,$EF,$01,$00,$00,$00,$DF,$EE,$6B,$EF,$05,$00,$01,$00,$FB,$EE ; $80EE65
    db $FB,$EE,$01,$00,$01,$00,$09,$EF,$09,$EF,$05,$00,$00,$00,$17,$EF ; $80EE75
    db $25,$EF,$05,$00,$00,$00,$5D,$EF,$25,$EF,$05,$00,$00,$00,$4F,$EF ; $80EE85
    db $25,$EF,$04,$00,$00,$00,$95,$EF,$33,$EF,$04,$00,$01,$00,$ED,$EE ; $80EE95
    db $ED,$EE,$03,$00,$00,$00,$87,$EF,$6B,$EF,$00,$00,$00,$00,$6B,$EF ; $80EEA5
    db $6B,$EF,$05,$00,$01,$00,$17,$EF,$17,$EF,$03,$00,$00,$00,$B1,$EF ; $80EEB5
    db $25,$EF,$01,$00,$00,$00,$21,$F0,$6B,$EF,$01,$00,$00,$00,$21,$F0 ; $80EEC5
    db $25,$EF,$01,$00,$01,$00,$6B,$EF,$6B,$EF,$F7,$02,$5A,$03,$FF,$03 ; $80EED5
    db $51,$00,$54,$00,$58,$00,$59,$00,$52,$4A,$18,$63,$BD,$77,$60,$00 ; $80EEE5
    db $C0,$00,$00,$01,$60,$01,$94,$52,$18,$63,$BD,$77,$E4,$60,$62,$65 ; $80EEF5
    db $C3,$69,$04,$6E,$F7,$5E,$5A,$6B,$FF,$7F,$51,$00,$54,$00,$58,$00 ; $80EF05
    db $5A,$00,$57,$01,$7A,$01,$9D,$01,$40,$2C,$40,$3C,$20,$4C,$40,$60 ; $80EF15
    db $00,$44,$40,$60,$60,$7C,$10,$42,$B5,$56,$39,$67,$BD,$77,$00,$01 ; $80EF25
    db $40,$01,$A0,$01,$10,$42,$B5,$56,$39,$67,$BD,$77,$80,$01,$C0,$01 ; $80EF35
    db $20,$02,$40,$2C,$40,$3C,$20,$4C,$40,$60,$95,$02,$D8,$02,$3B,$03 ; $80EF45
    db $40,$2C,$40,$3C,$20,$4C,$40,$60,$4E,$00,$51,$00,$35,$00,$20,$14 ; $80EF55
    db $20,$24,$20,$38,$20,$48,$2E,$00,$51,$00,$94,$00,$10,$42,$B5,$56 ; $80EF65
    db $39,$67,$BD,$77,$D6,$1A,$39,$1B,$9C,$1B,$4B,$2C,$4E,$38,$50,$40 ; $80EF75
    db $73,$4C,$4E,$00,$51,$00,$35,$00,$00,$00,$42,$08,$84,$10,$C6,$18 ; $80EF85
    db $A0,$05,$E0,$09,$40,$0E,$60,$00,$C0,$00,$00,$01,$60,$01,$F7,$5E ; $80EF95
    db $5A,$6B,$FF,$7F,$40,$2C,$40,$3C,$20,$4C,$40,$60,$40,$38,$40,$44 ; $80EFA5
    db $20,$54,$00,$00,$42,$08,$84,$10,$C6,$18,$D6,$1A,$39,$1B,$9C,$1B ; $80EFB5
    db $31,$46,$B5,$56,$39,$67,$FF,$7F,$00,$00,$21,$04,$42,$08,$10,$42 ; $80EFC5
    db $B5,$56,$39,$67,$BD,$77,$D6,$1A,$39,$1B,$9C,$1B,$60,$00,$C0,$00 ; $80EFD5
    db $00,$01,$60,$01,$B5,$56,$39,$67,$BD,$77,$4B,$2C,$4E,$38,$50,$40 ; $80EFE5
    db $73,$4C,$71,$48,$B5,$58,$17,$61,$74,$09,$F8,$09,$39,$0E,$99,$26 ; $80EFF5
    db $57,$19,$7A,$19,$DB,$19,$4B,$2C,$4E,$38,$50,$40,$73,$4C,$52,$4A ; $80F005
    db $D6,$5A,$BD,$77,$00,$00,$42,$08,$84,$10,$C6,$18,$20,$38,$40,$48 ; $80F015
    db $40,$58,$51,$00,$54,$00,$58,$00,$5A,$00,$E0,$00,$A0,$44,$E0,$48 ; $80F025
    db $17,$63,$0D,$21,$0D,$0D,$4F,$11,$91,$15,$D5,$25,$37,$3A,$94,$52 ; $80F035
    db $42,$2C,$63,$40,$A5,$4C,$C5,$5C,$BD,$77                         ; $80F045
L_80F04F:
    REP #$20                        ; $80F04F  C2 20        MX
    LDA #$0000                      ; $80F051  A9 00 00     MX
    TAX                             ; $80F054  AA           MX
L_80F055:
    STA $7FC000,X                   ; $80F055  9F 00 C0 7F  MX
    INX                             ; $80F059  E8           MX
    INX                             ; $80F05A  E8           MX
    CPX #$0800                      ; $80F05B  E0 00 08     MX
    BNE L_80F055                    ; $80F05E  D0 F5        MX
    SEP #$20                        ; $80F060  E2 20        MX
    REP #$20                        ; $80F062  C2 20        mX
    LDA #$0E9D                      ; $80F064  A9 9D 0E     MX
    STA $2181                       ; $80F067  8D 81 21     MX
    LDA #$F1D1                      ; $80F06A  A9 D1 F1     MX
    STA $4302                       ; $80F06D  8D 02 43     MX
    LDA #$00FE                      ; $80F070  A9 FE 00     MX
    STA $4305                       ; $80F073  8D 05 43     MX
    SEP #$20                        ; $80F076  E2 20        MX
    LDA #$00                        ; $80F078  A9 00        mX
    STA $2183                       ; $80F07A  8D 83 21     mX
    LDA #$00                        ; $80F07D  A9 00        mX
    STA $4304                       ; $80F07F  8D 04 43     mX
    STZ $4300                       ; $80F082  9C 00 43     mX
    LDA #$80                        ; $80F085  A9 80        mX
    STA $4301                       ; $80F087  8D 01 43     mX
    LDA #$01                        ; $80F08A  A9 01        mX
    STA $420B                       ; $80F08C  8D 0B 42     mX
    REP #$20                        ; $80F08F  C2 20        mX
    LDA #$0FAC                      ; $80F091  A9 AC 0F     MX
    STA $2181                       ; $80F094  8D 81 21     MX
    LDA #$F1D1                      ; $80F097  A9 D1 F1     MX
    STA $4302                       ; $80F09A  8D 02 43     MX
    LDA #$00FE                      ; $80F09D  A9 FE 00     MX
    STA $4305                       ; $80F0A0  8D 05 43     MX
    SEP #$20                        ; $80F0A3  E2 20        MX
    LDA #$00                        ; $80F0A5  A9 00        mX
    STA $2183                       ; $80F0A7  8D 83 21     mX
    LDA #$00                        ; $80F0AA  A9 00        mX
    STA $4304                       ; $80F0AC  8D 04 43     mX
    STZ $4300                       ; $80F0AF  9C 00 43     mX
    LDA #$80                        ; $80F0B2  A9 80        mX
    STA $4301                       ; $80F0B4  8D 01 43     mX
    LDA #$01                        ; $80F0B7  A9 01        mX
    STA $420B                       ; $80F0B9  8D 0B 42     mX
    REP #$20                        ; $80F0BC  C2 20        mX
    LDA #$0F9B                      ; $80F0BE  A9 9B 0F     MX
    STA $2181                       ; $80F0C1  8D 81 21     MX
    LDA #$F2D0                      ; $80F0C4  A9 D0 F2     MX
    STA $4302                       ; $80F0C7  8D 02 43     MX
    LDA #$0011                      ; $80F0CA  A9 11 00     MX
    STA $4305                       ; $80F0CD  8D 05 43     MX
    SEP #$20                        ; $80F0D0  E2 20        MX
    LDA #$00                        ; $80F0D2  A9 00        mX
    STA $2183                       ; $80F0D4  8D 83 21     mX
    LDA #$00                        ; $80F0D7  A9 00        mX
    STA $4304                       ; $80F0D9  8D 04 43     mX
    STZ $4300                       ; $80F0DC  9C 00 43     mX
    LDA #$80                        ; $80F0DF  A9 80        mX
    STA $4301                       ; $80F0E1  8D 01 43     mX
    LDA #$01                        ; $80F0E4  A9 01        mX
    STA $420B                       ; $80F0E6  8D 0B 42     mX
    REP #$20                        ; $80F0E9  C2 20        mX
    LDA #$10AA                      ; $80F0EB  A9 AA 10     MX
    STA $2181                       ; $80F0EE  8D 81 21     MX
    LDA #$F2D0                      ; $80F0F1  A9 D0 F2     MX
    STA $4302                       ; $80F0F4  8D 02 43     MX
    LDA #$0011                      ; $80F0F7  A9 11 00     MX
    STA $4305                       ; $80F0FA  8D 05 43     MX
    SEP #$20                        ; $80F0FD  E2 20        MX
    LDA #$00                        ; $80F0FF  A9 00        mX
    STA $2183                       ; $80F101  8D 83 21     mX
    LDA #$00                        ; $80F104  A9 00        mX
    STA $4304                       ; $80F106  8D 04 43     mX
    STZ $4300                       ; $80F109  9C 00 43     mX
    LDA #$80                        ; $80F10C  A9 80        mX
    STA $4301                       ; $80F10E  8D 01 43     mX
    LDA #$01                        ; $80F111  A9 01        mX
    STA $420B                       ; $80F113  8D 0B 42     mX
    REP #$20                        ; $80F116  C2 20        mX
    LDA #$10BB                      ; $80F118  A9 BB 10     MX
    STA $2181                       ; $80F11B  8D 81 21     MX
    LDA #$F2E1                      ; $80F11E  A9 E1 F2     MX
    STA $4302                       ; $80F121  8D 02 43     MX
    LDA #$0016                      ; $80F124  A9 16 00     MX
    STA $4305                       ; $80F127  8D 05 43     MX
    SEP #$20                        ; $80F12A  E2 20        MX
    LDA #$00                        ; $80F12C  A9 00        mX
    STA $2183                       ; $80F12E  8D 83 21     mX
    LDA #$00                        ; $80F131  A9 00        mX
    STA $4304                       ; $80F133  8D 04 43     mX
    STZ $4300                       ; $80F136  9C 00 43     mX
    LDA #$80                        ; $80F139  A9 80        mX
    STA $4301                       ; $80F13B  8D 01 43     mX
    LDA #$01                        ; $80F13E  A9 01        mX
    STA $420B                       ; $80F140  8D 0B 42     mX
    REP #$20                        ; $80F143  C2 20        mX
    LDA #$10D1                      ; $80F145  A9 D1 10     MX
    STA $2181                       ; $80F148  8D 81 21     MX
    LDA #$F180                      ; $80F14B  A9 80 F1     MX
    STA $4302                       ; $80F14E  8D 02 43     MX
    LDA #$0056                      ; $80F151  A9 56 00     MX
    STA $4305                       ; $80F154  8D 05 43     MX
    SEP #$20                        ; $80F157  E2 20        MX
    LDA #$00                        ; $80F159  A9 00        mX
    STA $2183                       ; $80F15B  8D 83 21     mX
    LDA #$00                        ; $80F15E  A9 00        mX
    STA $4304                       ; $80F160  8D 04 43     mX
    STZ $4300                       ; $80F163  9C 00 43     mX
    LDA #$80                        ; $80F166  A9 80        mX
    STA $4301                       ; $80F168  8D 01 43     mX
    LDA #$01                        ; $80F16B  A9 01        mX
    STA $420B                       ; $80F16D  8D 0B 42     mX
    REP #$20                        ; $80F170  C2 20        mX
    LDX #$0000                      ; $80F172  A2 00 00     MX
L_80F175:
    STZ $0600,X                     ; $80F175  9E 00 06     MX
    INX                             ; $80F178  E8           MX
    INX                             ; $80F179  E8           MX
    CPX #$00F0                      ; $80F17A  E0 F0 00     MX
    BNE L_80F175                    ; $80F17D  D0 F6        MX
    RTL                             ; $80F17F  6B           MX
    db $01,$02,$02,$00,$00,$01,$07,$07,$FF,$03,$01,$03,$03,$1F,$00,$01 ; $80F180
    db $0F,$0F,$E0,$03,$01,$0B,$0B,$00,$7C,$01,$0D,$0D,$FF,$7F,$10,$07 ; $80F190
    db $07,$FF,$03,$10,$0D,$0D,$FF,$7F,$6E,$05,$05,$FF,$7F,$01,$05,$05 ; $80F1A0
    db $FF,$03,$01,$02,$02,$00,$7C,$01,$03,$03,$FF,$7F,$01,$07,$07,$FF ; $80F1B0
    db $7F,$01,$0B,$0B,$FF,$7F,$01,$0F,$0F,$FF,$7F,$01,$0D,$0D,$AD,$7D ; $80F1C0
    db $00,$01,$00,$00,$01,$00,$00,$01,$00,$00,$48,$00,$00,$F8,$48,$01 ; $80F1D0
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F1E0
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F1F0
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F200
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F210
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F220
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F230
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F240
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F250
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F260
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F270
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F280
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F290
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F2A0
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01 ; $80F2B0
    db $48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$48,$01,$00,$00 ; $80F2C0
    db $68,$00,$00,$01,$00,$00,$10,$64,$00,$7F,$00,$00,$41,$00,$00,$00 ; $80F2D0
    db $00,$20,$F8,$03,$10,$58,$03,$28,$48,$03,$30,$50,$03,$18,$44,$03 ; $80F2E0
    db $38,$27,$00,$08,$00,$00,$00                                     ; $80F2F0
L_80F2F7:
    PHP                             ; $80F2F7  08           MX
    REP #$30                        ; $80F2F8  C2 30        MX
    LDA $0CD7                       ; $80F2FA  AD D7 0C     MX
    AND #$0003                      ; $80F2FD  29 03 00     MX
    ASL                             ; $80F300  0A           MX
    ASL                             ; $80F301  0A           MX
    TAX                             ; $80F302  AA           MX
    LDY #$0000                      ; $80F303  A0 00 00     MX
L_80F306:
    LDA $00F325,X                   ; $80F306  BF 25 F3 00  MX
    STA $163B,Y                     ; $80F30A  99 3B 16     MX
    LDA $00F323,X                   ; $80F30D  BF 23 F3 00  MX
    STA $1619,Y                     ; $80F311  99 19 16     MX
    TXA                             ; $80F314  8A           MX
    CLC                             ; $80F315  18           MX
    ADC #$0010                      ; $80F316  69 10 00     MX
    TAX                             ; $80F319  AA           MX
    INY                             ; $80F31A  C8           MX
    INY                             ; $80F31B  C8           MX
    CMP #$0110                      ; $80F31C  C9 10 01     MX
    BCC L_80F306                    ; $80F31F  90 E5        MX
    PLP                             ; $80F321  28           MX
    RTL                             ; $80F322  6B           MX
    db $23,$00,$0F,$00,$23,$00,$0F,$00,$23,$00,$0F,$00,$23,$00,$0F,$00 ; $80F323
    db $1F,$00,$1E,$00,$1F,$00,$1E,$00,$1F,$00,$1E,$00,$1F,$00,$1E,$00 ; $80F333
    db $1E,$00,$3C,$00,$1E,$00,$3C,$00,$1E,$00,$3C,$00,$1E,$00,$3C,$00 ; $80F343
    db $22,$00,$3C,$00,$22,$00,$3C,$00,$22,$00,$3C,$00,$22,$00,$3C,$00 ; $80F353
    db $21,$00,$3C,$00,$21,$00,$3C,$00,$21,$00,$3C,$00,$21,$00,$3C,$00 ; $80F363
    db $00,$00,$00,$00,$00,$00,$00,$00,$30,$00,$2D,$00,$00,$00,$00,$00 ; $80F373
    db $34,$00,$2D,$00,$33,$00,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80F383
    db $20,$00,$4B,$00,$20,$00,$4B,$00,$20,$00,$4B,$00,$20,$00,$4B,$00 ; $80F393
    db $1D,$00,$4B,$00,$1D,$00,$4B,$00,$1D,$00,$4B,$00,$1D,$00,$4B,$00 ; $80F3A3
    db $31,$00,$3C,$00,$30,$00,$3C,$00,$31,$00,$3C,$00,$32,$00,$3C,$00 ; $80F3B3
    db $30,$00,$4B,$00,$32,$00,$3C,$00,$00,$00,$00,$00,$33,$00,$4B,$00 ; $80F3C3
    db $32,$00,$4B,$00,$34,$00,$4B,$00,$32,$00,$4B,$00,$31,$00,$5A,$00 ; $80F3D3
    db $33,$00,$1E,$00,$31,$00,$3C,$00,$33,$00,$1E,$00,$30,$00,$1E,$00 ; $80F3E3
    db $1F,$00,$1E,$00,$31,$00,$3C,$00,$33,$00,$1E,$00,$30,$00,$1E,$00 ; $80F3F3
    db $30,$00,$28,$00,$30,$00,$28,$00,$30,$00,$28,$00,$30,$00,$28,$00 ; $80F403
    db $00,$00,$00,$00,$00,$00,$00,$00,$34,$00,$3C,$00,$00,$00,$00,$00 ; $80F413
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$34,$00,$1E,$00 ; $80F423
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F433
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F443
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F453
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F463
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F473
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F483
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F493
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F4A3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F4B3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F4C3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F4D3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F4E3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F4F3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F503
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F513
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F523
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F533
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F543
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F553
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F563
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F573
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F583
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F593
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F5A3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F5B3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F5C3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F5D3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F5E3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F5F3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F603
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F613
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F623
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F633
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F643
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F653
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F663
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F673
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F683
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F693
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F6A3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F6B3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F6C3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F6D3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F6E3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F6F3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F703
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F713
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F723
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F733
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F743
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F753
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F763
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F773
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F783
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F793
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F7A3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F7B3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F7C3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F7D3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $80F7E3
    db $FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$01,$02     ; $80F7F3
L_80F802:
    SEI                             ; $80F802  78           mx
    CLC                             ; $80F803  18           mx
    XCE                             ; $80F804  FB           mx
    LDA #$01                        ; $80F805  A9 01        mx
    STA $420D                       ; $80F807  8D 0D 42     mx
    JML L_80F80E                    ; $80F80A  5C 0E F8 80  mx
L_80F80E:
    CLD                             ; $80F80E  D8           mx
L_80F80F:
    REP #$20                        ; $80F80F  C2 20        mx
L_80F811:
    LDA #$0000                      ; $80F811  A9 00 00     Mx
L_80F814:
    TCD                             ; $80F814  5B           Mx
L_80F815:
    LDA #$05FF                      ; $80F815  A9 FF 05     Mx
L_80F818:
    TCS                             ; $80F818  1B           Mx
L_80F819:
    SEP #$20                        ; $80F819  E2 20        Mx
L_80F81B:
    PHK                             ; $80F81B  4B           mx
L_80F81C:
    PLB                             ; $80F81C  AB           mx
L_80F81D:
    REP #$30                        ; $80F81D  C2 30        mx
L_80F81F:
    AND #$0000                      ; $80F81F  29 00 00     MX
L_80F822:
    LDX #$02CE                      ; $80F822  A2 CE 02     MX
L_80F825:
    STA $00,X                       ; $80F825  95 00        MX
L_80F827:
    DEX                             ; $80F827  CA           MX
L_80F828:
    DEX                             ; $80F828  CA           MX
L_80F829:
    BPL L_80F825                    ; $80F829  10 FA        MX
L_80F82B:
    LDX #$09FE                      ; $80F82B  A2 FE 09     MX
L_80F82E:
    STA $0600,X                     ; $80F82E  9D 00 06     MX
L_80F831:
    DEX                             ; $80F831  CA           MX
L_80F832:
    DEX                             ; $80F832  CA           MX
L_80F833:
    BNE L_80F82E                    ; $80F833  D0 F9        MX
L_80F835:
    LDA #$F84F                      ; $80F835  A9 4F F8     MX
L_80F838:
    STA $0100                       ; $80F838  8D 00 01     MX
L_80F83B:
    LDA #$F84F                      ; $80F83B  A9 4F F8     MX
L_80F83E:
    STA $0102                       ; $80F83E  8D 02 01     MX
L_80F841:
    SEP #$30                        ; $80F841  E2 30        MX
L_80F843:
    JSR L_80F8CD                    ; $80F843  20 CD F8     mx
L_80F846:
    JSR L_80F923                    ; $80F846  20 23 F9     mx
L_80F849:
    JSR L_80FA10                    ; $80F849  20 10 FA     mx
L_80F84C:
    JMP L_808000                    ; $80F84C  4C 00 80     mx
L_80F84F:
    RTS                             ; $80F84F  60           mx
L_80F850:
    JML $00F854                     ; $80F850  5C 54 F8 00  mx
L_80F854:
    REP #$30                        ; $80F854  C2 30        mx
    PHX                             ; $80F856  DA           MX
    PHY                             ; $80F857  5A           MX
    PHA                             ; $80F858  48           MX
    PHB                             ; $80F859  8B           MX
    PHD                             ; $80F85A  0B           MX
    AND #$0000                      ; $80F85B  29 00 00     MX
    PHA                             ; $80F85E  48           MX
    PLD                             ; $80F85F  2B           MX
    PHK                             ; $80F860  4B           MX
    PLB                             ; $80F861  AB           MX
    SEP #$30                        ; $80F862  E2 30        MX
    LDX #$00                        ; $80F864  A2 00        mx
    JSR ($0100,X)                   ; $80F866  FC 00 01     mx
    REP #$30                        ; $80F869  C2 30        mx
    PLD                             ; $80F86B  2B           MX
    PLB                             ; $80F86C  AB           MX
    PLA                             ; $80F86D  68           MX
    PLY                             ; $80F86E  7A           MX
    PLX                             ; $80F86F  FA           MX
L_80F870:
    RTI                             ; $80F870  40           MX
L_80F871:
    JML $00F875                     ; $80F871  5C 75 F8 00  mx
L_80F875:
    REP #$30                        ; $80F875  C2 30        mx
    PHX                             ; $80F877  DA           MX
    PHY                             ; $80F878  5A           MX
    PHA                             ; $80F879  48           MX
    PHB                             ; $80F87A  8B           MX
    PHD                             ; $80F87B  0B           MX
    AND #$0000                      ; $80F87C  29 00 00     MX
    PHA                             ; $80F87F  48           MX
    PLD                             ; $80F880  2B           MX
    PHK                             ; $80F881  4B           MX
    PLB                             ; $80F882  AB           MX
    SEP #$30                        ; $80F883  E2 30        MX
    LDX #$00                        ; $80F885  A2 00        mx
    JSR ($0102,X)                   ; $80F887  FC 02 01     mx
    REP #$30                        ; $80F88A  C2 30        mx
    PLD                             ; $80F88C  2B           MX
    PLB                             ; $80F88D  AB           MX
    PLA                             ; $80F88E  68           MX
    PLY                             ; $80F88F  7A           MX
    PLX                             ; $80F890  FA           MX
    RTI                             ; $80F891  40           MX
    db $C2,$30,$AE,$09,$01,$AD,$0B,$01,$9F,$00,$20,$7E,$AD,$0D,$01,$9F ; $80F892
    db $02,$20,$7E,$AD,$11,$01,$9F,$06,$20,$7E,$AD,$0F,$01,$9F,$04,$20 ; $80F8A2
    db $7E,$AD,$13,$01,$9F,$08,$20,$7E,$8A,$18,$69,$0A,$00,$8D,$09,$01 ; $80F8B2
    db $29,$00,$00,$8A,$8F,$00,$20,$7E,$E2,$30,$60                     ; $80F8C2
L_80F8CD:
    REP #$30                        ; $80F8CD  C2 30        mx
L_80F8CF:
    AND #$0000                      ; $80F8CF  29 00 00     MX
L_80F8D2:
    STA $7E2000                     ; $80F8D2  8F 00 20 7E  MX
L_80F8D6:
    STA $0109                       ; $80F8D6  8D 09 01     MX
L_80F8D9:
    SEP #$30                        ; $80F8D9  E2 30        MX
L_80F8DB:
    RTS                             ; $80F8DB  60           mx
L_80F8DC:
    REP #$30                        ; $80F8DC  C2 30        mx
    LDX #$0000                      ; $80F8DE  A2 00 00     MX
L_80F8E1:
    LDA $7E2000,X                   ; $80F8E1  BF 00 20 7E  MX
    BEQ L_80F8CD                    ; $80F8E5  F0 E6        MX
    LDA $7E2000,X                   ; $80F8E7  BF 00 20 7E  MX
    STA $4305                       ; $80F8EB  8D 05 43     MX
    LDA $7E2002,X                   ; $80F8EE  BF 02 20 7E  MX
    STA $2116                       ; $80F8F2  8D 16 21     MX
    LDA $7E2004,X                   ; $80F8F5  BF 04 20 7E  MX
    STA $4300                       ; $80F8F9  8D 00 43     MX
    LDA $7E2006,X                   ; $80F8FC  BF 06 20 7E  MX
    STA $4302                       ; $80F900  8D 02 43     MX
    SEP #$20                        ; $80F903  E2 20        MX
    LDA $7E2008,X                   ; $80F905  BF 08 20 7E  mX
    STA $4304                       ; $80F909  8D 04 43     mX
    LDA $7E2009,X                   ; $80F90C  BF 09 20 7E  mX
    STA $2115                       ; $80F910  8D 15 21     mX
    LDA #$01                        ; $80F913  A9 01        mX
    STA $420B                       ; $80F915  8D 0B 42     mX
    REP #$20                        ; $80F918  C2 20        mX
    CLC                             ; $80F91A  18           MX
    TXA                             ; $80F91B  8A           MX
    ADC #$000A                      ; $80F91C  69 0A 00     MX
    TAX                             ; $80F91F  AA           MX
    JMP L_80F8E1                    ; $80F920  4C E1 F8     MX
L_80F923:
    LDA #$8F                        ; $80F923  A9 8F        mx
L_80F925:
    STA $2100                       ; $80F925  8D 00 21     mx
L_80F928:
    STZ $420C                       ; $80F928  9C 0C 42     mx
L_80F92B:
    STZ $2101                       ; $80F92B  9C 01 21     mx
L_80F92E:
    STZ $2102                       ; $80F92E  9C 02 21     mx
L_80F931:
    STZ $2103                       ; $80F931  9C 03 21     mx
L_80F934:
    STZ $2105                       ; $80F934  9C 05 21     mx
L_80F937:
    STZ $2106                       ; $80F937  9C 06 21     mx
L_80F93A:
    STZ $2107                       ; $80F93A  9C 07 21     mx
L_80F93D:
    STZ $2108                       ; $80F93D  9C 08 21     mx
L_80F940:
    STZ $2109                       ; $80F940  9C 09 21     mx
L_80F943:
    STZ $210A                       ; $80F943  9C 0A 21     mx
L_80F946:
    STZ $210B                       ; $80F946  9C 0B 21     mx
L_80F949:
    STZ $210C                       ; $80F949  9C 0C 21     mx
L_80F94C:
    STZ $210D                       ; $80F94C  9C 0D 21     mx
L_80F94F:
    STZ $210D                       ; $80F94F  9C 0D 21     mx
L_80F952:
    STZ $210E                       ; $80F952  9C 0E 21     mx
L_80F955:
    STZ $210E                       ; $80F955  9C 0E 21     mx
L_80F958:
    STZ $210F                       ; $80F958  9C 0F 21     mx
L_80F95B:
    STZ $210F                       ; $80F95B  9C 0F 21     mx
L_80F95E:
    STZ $2110                       ; $80F95E  9C 10 21     mx
L_80F961:
    STZ $2110                       ; $80F961  9C 10 21     mx
L_80F964:
    STZ $2111                       ; $80F964  9C 11 21     mx
L_80F967:
    STZ $2111                       ; $80F967  9C 11 21     mx
L_80F96A:
    STZ $2112                       ; $80F96A  9C 12 21     mx
L_80F96D:
    STZ $2112                       ; $80F96D  9C 12 21     mx
L_80F970:
    STZ $2113                       ; $80F970  9C 13 21     mx
L_80F973:
    STZ $2113                       ; $80F973  9C 13 21     mx
L_80F976:
    STZ $2114                       ; $80F976  9C 14 21     mx
L_80F979:
    STZ $2114                       ; $80F979  9C 14 21     mx
L_80F97C:
    LDA #$80                        ; $80F97C  A9 80        mx
L_80F97E:
    STA $2115                       ; $80F97E  8D 15 21     mx
L_80F981:
    STZ $2116                       ; $80F981  9C 16 21     mx
L_80F984:
    STZ $2117                       ; $80F984  9C 17 21     mx
L_80F987:
    STZ $211A                       ; $80F987  9C 1A 21     mx
L_80F98A:
    STZ $211B                       ; $80F98A  9C 1B 21     mx
L_80F98D:
    STZ $211B                       ; $80F98D  9C 1B 21     mx
L_80F990:
    STZ $211C                       ; $80F990  9C 1C 21     mx
L_80F993:
    STZ $211C                       ; $80F993  9C 1C 21     mx
L_80F996:
    STZ $211D                       ; $80F996  9C 1D 21     mx
L_80F999:
    STZ $211D                       ; $80F999  9C 1D 21     mx
L_80F99C:
    STZ $211E                       ; $80F99C  9C 1E 21     mx
L_80F99F:
    STZ $211E                       ; $80F99F  9C 1E 21     mx
L_80F9A2:
    STZ $211F                       ; $80F9A2  9C 1F 21     mx
L_80F9A5:
    STZ $211F                       ; $80F9A5  9C 1F 21     mx
L_80F9A8:
    STZ $2120                       ; $80F9A8  9C 20 21     mx
L_80F9AB:
    STZ $2120                       ; $80F9AB  9C 20 21     mx
L_80F9AE:
    STZ $2121                       ; $80F9AE  9C 21 21     mx
L_80F9B1:
    STZ $2123                       ; $80F9B1  9C 23 21     mx
L_80F9B4:
    STZ $2124                       ; $80F9B4  9C 24 21     mx
L_80F9B7:
    STZ $2125                       ; $80F9B7  9C 25 21     mx
L_80F9BA:
    STZ $2126                       ; $80F9BA  9C 26 21     mx
L_80F9BD:
    STZ $2127                       ; $80F9BD  9C 27 21     mx
L_80F9C0:
    STZ $2128                       ; $80F9C0  9C 28 21     mx
L_80F9C3:
    STZ $2129                       ; $80F9C3  9C 29 21     mx
L_80F9C6:
    STZ $212A                       ; $80F9C6  9C 2A 21     mx
L_80F9C9:
    STZ $212B                       ; $80F9C9  9C 2B 21     mx
L_80F9CC:
    STZ $212C                       ; $80F9CC  9C 2C 21     mx
L_80F9CF:
    STZ $212D                       ; $80F9CF  9C 2D 21     mx
L_80F9D2:
    STZ $212E                       ; $80F9D2  9C 2E 21     mx
L_80F9D5:
    LDA #$30                        ; $80F9D5  A9 30        mx
L_80F9D7:
    STA $2130                       ; $80F9D7  8D 30 21     mx
L_80F9DA:
    STZ $2131                       ; $80F9DA  9C 31 21     mx
L_80F9DD:
    LDA #$E0                        ; $80F9DD  A9 E0        mx
L_80F9DF:
    STA $2132                       ; $80F9DF  8D 32 21     mx
L_80F9E2:
    STZ $2133                       ; $80F9E2  9C 33 21     mx
L_80F9E5:
    STZ $4200                       ; $80F9E5  9C 00 42     mx
L_80F9E8:
    STZ $4201                       ; $80F9E8  9C 01 42     mx
L_80F9EB:
    STZ $4202                       ; $80F9EB  9C 02 42     mx
L_80F9EE:
    STZ $4203                       ; $80F9EE  9C 03 42     mx
L_80F9F1:
    STZ $4204                       ; $80F9F1  9C 04 42     mx
L_80F9F4:
    STZ $4205                       ; $80F9F4  9C 05 42     mx
L_80F9F7:
    STZ $4206                       ; $80F9F7  9C 06 42     mx
L_80F9FA:
    STZ $4207                       ; $80F9FA  9C 07 42     mx
L_80F9FD:
    STZ $4208                       ; $80F9FD  9C 08 42     mx
L_80FA00:
    STZ $4209                       ; $80FA00  9C 09 42     mx
L_80FA03:
    STZ $420A                       ; $80FA03  9C 0A 42     mx
L_80FA06:
    STZ $420B                       ; $80FA06  9C 0B 42     mx
L_80FA09:
    STZ $420C                       ; $80FA09  9C 0C 42     mx
L_80FA0C:
    STZ $420D                       ; $80FA0C  9C 0D 42     mx
L_80FA0F:
    RTS                             ; $80FA0F  60           mx
L_80FA10:
    LDA #$80                        ; $80FA10  A9 80        mx
L_80FA12:
    STA $2115                       ; $80FA12  8D 15 21     mx
L_80FA15:
    REP #$30                        ; $80FA15  C2 30        mx
L_80FA17:
    LDA #$0000                      ; $80FA17  A9 00 00     MX
L_80FA1A:
    STA $2116                       ; $80FA1A  8D 16 21     MX
L_80FA1D:
    LDX #$8000                      ; $80FA1D  A2 00 80     MX
L_80FA20:
    STA $2118                       ; $80FA20  8D 18 21     MX
L_80FA23:
    DEX                             ; $80FA23  CA           MX
L_80FA24:
    BNE L_80FA20                    ; $80FA24  D0 FA        MX
L_80FA26:
    SEP #$30                        ; $80FA26  E2 30        MX
L_80FA28:
    RTS                             ; $80FA28  60           mx
L_80FA29:
    REP #$30                        ; $80FA29  C2 30        mx
    LDA #$E0E0                      ; $80FA2B  A9 E0 E0     MX
    LDX #$01FE                      ; $80FA2E  A2 FE 01     MX
L_80FA31:
    STA $0300,X                     ; $80FA31  9D 00 03     MX
    DEX                             ; $80FA34  CA           MX
    DEX                             ; $80FA35  CA           MX
    BPL L_80FA31                    ; $80FA36  10 F9        MX
    LDX #$001E                      ; $80FA38  A2 1E 00     MX
L_80FA3B:
    STZ $0500,X                     ; $80FA3B  9E 00 05     MX
    DEX                             ; $80FA3E  CA           MX
    DEX                             ; $80FA3F  CA           MX
    BPL L_80FA3B                    ; $80FA40  10 F9        MX
    SEP #$30                        ; $80FA42  E2 30        MX
    RTS                             ; $80FA44  60           mx
L_80FA45:
    STZ $2103                       ; $80FA45  9C 03 21     mx
    STZ $2102                       ; $80FA48  9C 02 21     mx
    STZ $4300                       ; $80FA4B  9C 00 43     mx
    LDA #$04                        ; $80FA4E  A9 04        mx
    STA $4301                       ; $80FA50  8D 01 43     mx
    LDA #$00                        ; $80FA53  A9 00        mx
    STA $4302                       ; $80FA55  8D 02 43     mx
    LDA #$03                        ; $80FA58  A9 03        mx
    STA $4303                       ; $80FA5A  8D 03 43     mx
    STZ $4304                       ; $80FA5D  9C 04 43     mx
    LDA #$20                        ; $80FA60  A9 20        mx
    STA $4305                       ; $80FA62  8D 05 43     mx
    LDA #$02                        ; $80FA65  A9 02        mx
    STA $4306                       ; $80FA67  8D 06 43     mx
    LDA #$01                        ; $80FA6A  A9 01        mx
    STA $420B                       ; $80FA6C  8D 0B 42     mx
    RTS                             ; $80FA6F  60           mx
L_80FA70:
    STA $E9                         ; $80FA70  85 E9        mx
    AND #$00                        ; $80FA72  29 00        mx
    STZ $E8                         ; $80FA74  64 E8        mx
L_80FA76:
    PHA                             ; $80FA76  48           mx
L_80FA77:
    LDA $4212                       ; $80FA77  AD 12 42     mx
    BPL L_80FA77                    ; $80FA7A  10 FB        mx
    PLA                             ; $80FA7C  68           mx
    STA $2100                       ; $80FA7D  8D 00 21     mx
    LDA $E9                         ; $80FA80  A5 E9        mx
    STA $2106                       ; $80FA82  8D 06 21     mx
    INC $E8                         ; $80FA85  E6 E8        mx
    LDA $E9                         ; $80FA87  A5 E9        mx
    AND #$F0                        ; $80FA89  29 F0        mx
    BEQ L_80FA94                    ; $80FA8B  F0 07        mx
    LDA $E9                         ; $80FA8D  A5 E9        mx
    SEC                             ; $80FA8F  38           mx
    SBC #$10                        ; $80FA90  E9 10        mx
    STA $E9                         ; $80FA92  85 E9        mx
L_80FA94:
    PHA                             ; $80FA94  48           mx
L_80FA95:
    LDA $4212                       ; $80FA95  AD 12 42     mx
    BMI L_80FA95                    ; $80FA98  30 FB        mx
    PLA                             ; $80FA9A  68           mx
    PHA                             ; $80FA9B  48           mx
L_80FA9C:
    LDA $4212                       ; $80FA9C  AD 12 42     mx
    BPL L_80FA9C                    ; $80FA9F  10 FB        mx
    PLA                             ; $80FAA1  68           mx
    PHA                             ; $80FAA2  48           mx
L_80FAA3:
    LDA $4212                       ; $80FAA3  AD 12 42     mx
    BMI L_80FAA3                    ; $80FAA6  30 FB        mx
    PLA                             ; $80FAA8  68           mx
    PHA                             ; $80FAA9  48           mx
L_80FAAA:
    LDA $4212                       ; $80FAAA  AD 12 42     mx
    BPL L_80FAAA                    ; $80FAAD  10 FB        mx
    PLA                             ; $80FAAF  68           mx
    PHA                             ; $80FAB0  48           mx
L_80FAB1:
    LDA $4212                       ; $80FAB1  AD 12 42     mx
    BMI L_80FAB1                    ; $80FAB4  30 FB        mx
    PLA                             ; $80FAB6  68           mx
    LDA $E8                         ; $80FAB7  A5 E8        mx
    CMP #$10                        ; $80FAB9  C9 10        mx
    BNE L_80FA76                    ; $80FABB  D0 B9        mx
    RTS                             ; $80FABD  60           mx
L_80FABE:
    STA $E9                         ; $80FABE  85 E9        mx
    LDA #$0F                        ; $80FAC0  A9 0F        mx
    STA $E8                         ; $80FAC2  85 E8        mx
L_80FAC4:
    PHA                             ; $80FAC4  48           mx
L_80FAC5:
    LDA $4212                       ; $80FAC5  AD 12 42     mx
    BPL L_80FAC5                    ; $80FAC8  10 FB        mx
    PLA                             ; $80FACA  68           mx
    LDA $E8                         ; $80FACB  A5 E8        mx
    STA $2100                       ; $80FACD  8D 00 21     mx
    DEC $E8                         ; $80FAD0  C6 E8        mx
    LDA $E9                         ; $80FAD2  A5 E9        mx
    AND #$F0                        ; $80FAD4  29 F0        mx
    CMP #$F0                        ; $80FAD6  C9 F0        mx
    BEQ L_80FAE1                    ; $80FAD8  F0 07        mx
    LDA $E9                         ; $80FADA  A5 E9        mx
    CLC                             ; $80FADC  18           mx
    ADC #$10                        ; $80FADD  69 10        mx
    STA $E9                         ; $80FADF  85 E9        mx
L_80FAE1:
    PHA                             ; $80FAE1  48           mx
L_80FAE2:
    LDA $4212                       ; $80FAE2  AD 12 42     mx
    BMI L_80FAE2                    ; $80FAE5  30 FB        mx
    PLA                             ; $80FAE7  68           mx
    PHA                             ; $80FAE8  48           mx
L_80FAE9:
    LDA $4212                       ; $80FAE9  AD 12 42     mx
    BPL L_80FAE9                    ; $80FAEC  10 FB        mx
    PLA                             ; $80FAEE  68           mx
    PHA                             ; $80FAEF  48           mx
L_80FAF0:
    LDA $4212                       ; $80FAF0  AD 12 42     mx
    BMI L_80FAF0                    ; $80FAF3  30 FB        mx
    PLA                             ; $80FAF5  68           mx
    PHA                             ; $80FAF6  48           mx
L_80FAF7:
    LDA $4212                       ; $80FAF7  AD 12 42     mx
    BPL L_80FAF7                    ; $80FAFA  10 FB        mx
    PLA                             ; $80FAFC  68           mx
    PHA                             ; $80FAFD  48           mx
L_80FAFE:
    LDA $4212                       ; $80FAFE  AD 12 42     mx
    BMI L_80FAFE                    ; $80FB01  30 FB        mx
    PLA                             ; $80FB03  68           mx
    LDA $E8                         ; $80FB04  A5 E8        mx
    BNE L_80FAC4                    ; $80FB06  D0 BC        mx
    LDA #$8F                        ; $80FB08  A9 8F        mx
    STA $2100                       ; $80FB0A  8D 00 21     mx
    RTS                             ; $80FB0D  60           mx
L_80FB0E:
    LDA #$80                        ; $80FB0E  A9 80        mx
    JSR L_80FB93                    ; $80FB10  20 93 FB     mx
    LDX $029E                       ; $80FB13  AE 9E 02     mx
    STX $211B                       ; $80FB16  8E 1B 21     mx
    LDX $029F                       ; $80FB19  AE 9F 02     mx
    STX $211B                       ; $80FB1C  8E 1B 21     mx
    STA $211C                       ; $80FB1F  8D 1C 21     mx
    REP #$20                        ; $80FB22  C2 20        mx
    LDA $2135                       ; $80FB24  AD 35 21     Mx
    STA $02A0                       ; $80FB27  8D A0 02     Mx
    SEP #$20                        ; $80FB2A  E2 20        Mx
    AND #$00                        ; $80FB2C  29 00        mx
    JSR L_80FB93                    ; $80FB2E  20 93 FB     mx
    LDX $029E                       ; $80FB31  AE 9E 02     mx
    STX $211B                       ; $80FB34  8E 1B 21     mx
    LDX $029F                       ; $80FB37  AE 9F 02     mx
    STX $211B                       ; $80FB3A  8E 1B 21     mx
    STA $211C                       ; $80FB3D  8D 1C 21     mx
    REP #$20                        ; $80FB40  C2 20        mx
    LDA $2135                       ; $80FB42  AD 35 21     Mx
    STA $02A2                       ; $80FB45  8D A2 02     Mx
    SEP #$20                        ; $80FB48  E2 20        Mx
    LDA #$C0                        ; $80FB4A  A9 C0        mx
    JSR L_80FB93                    ; $80FB4C  20 93 FB     mx
    LDX $029E                       ; $80FB4F  AE 9E 02     mx
    STX $211B                       ; $80FB52  8E 1B 21     mx
    LDX $029F                       ; $80FB55  AE 9F 02     mx
    STX $211B                       ; $80FB58  8E 1B 21     mx
    STA $211C                       ; $80FB5B  8D 1C 21     mx
    REP #$20                        ; $80FB5E  C2 20        mx
    LDA $2135                       ; $80FB60  AD 35 21     Mx
    STA $02A4                       ; $80FB63  8D A4 02     Mx
    SEP #$20                        ; $80FB66  E2 20        Mx
    LDA $02A4                       ; $80FB68  AD A4 02     mx
    STA $211B                       ; $80FB6B  8D 1B 21     mx
    LDX $02A5                       ; $80FB6E  AE A5 02     mx
    STX $211B                       ; $80FB71  8E 1B 21     mx
    STA $211E                       ; $80FB74  8D 1E 21     mx
    STX $211E                       ; $80FB77  8E 1E 21     mx
    LDA $02A2                       ; $80FB7A  AD A2 02     mx
    STA $211C                       ; $80FB7D  8D 1C 21     mx
    LDA $02A3                       ; $80FB80  AD A3 02     mx
    STA $211C                       ; $80FB83  8D 1C 21     mx
    LDA $02A0                       ; $80FB86  AD A0 02     mx
    STA $211D                       ; $80FB89  8D 1D 21     mx
    LDA $02A1                       ; $80FB8C  AD A1 02     mx
    STA $211D                       ; $80FB8F  8D 1D 21     mx
    RTS                             ; $80FB92  60           mx
L_80FB93:
    CLC                             ; $80FB93  18           mx
    ADC $029D                       ; $80FB94  6D 9D 02     mx
    TAY                             ; $80FB97  A8           mx
    AND #$7F                        ; $80FB98  29 7F        mx
    STA $E8                         ; $80FB9A  85 E8        mx
    CMP #$40                        ; $80FB9C  C9 40        mx
    BCC L_80FBA5                    ; $80FB9E  90 05        mx
    SEC                             ; $80FBA0  38           mx
    LDA #$80                        ; $80FBA1  A9 80        mx
    SBC $E8                         ; $80FBA3  E5 E8        mx
L_80FBA5:
    TAX                             ; $80FBA5  AA           mx
    LDA $00FBB8,X                   ; $80FBA6  BF B8 FB 00  mx
    STA $E8                         ; $80FBAA  85 E8        mx
    TYA                             ; $80FBAC  98           mx
    BPL L_80FBB5                    ; $80FBAD  10 06        mx
    SEC                             ; $80FBAF  38           mx
    LDA #$00                        ; $80FBB0  A9 00        mx
    SBC $E8                         ; $80FBB2  E5 E8        mx
    RTS                             ; $80FBB4  60           mx
L_80FBB5:
    LDA $E8                         ; $80FBB5  A5 E8        mx
    RTS                             ; $80FBB7  60           mx
    db $00,$03,$06,$09,$0C,$0F,$12,$15,$18,$1C,$1F,$22,$25,$28,$2B,$2E ; $80FBB8
    db $30,$33,$36,$39,$3C,$3F,$41,$44,$47,$49,$4C,$4E,$51,$53,$55,$58 ; $80FBC8
    db $5A,$5C,$5E,$60,$62,$64,$66,$68,$6A,$6C,$6D,$6F,$70,$72,$73,$75 ; $80FBD8
    db $76,$77,$78,$79,$7A,$7B,$7C,$7C,$7D,$7E,$7E,$7F,$7F,$7F,$7F,$7F ; $80FBE8
    db $7F,$E2,$20,$AD,$12,$42,$4A,$B0,$F8,$C2,$20,$AD,$18,$42,$8D,$05 ; $80FBF8
    db $01,$AD,$1A,$42,$8D,$07,$01,$60,$8B,$A5,$D2,$48,$AB,$C2,$30,$B2 ; $80FC08
    db $D0,$A8,$B1,$D0,$85,$F4,$18,$65,$EA,$85,$D3,$88,$88,$E2,$20,$B1 ; $80FC18
    db $D0,$85,$F2,$46,$F2,$D0,$09,$EB,$88,$B1,$D0,$38,$6A,$85,$F2,$EB ; $80FC28
    db $90,$03,$4C,$01,$FD,$46,$F2,$D0,$09,$EB,$88,$B1,$D0,$38,$6A,$85 ; $80FC38
    db $F2,$EB,$A2,$01,$00,$86,$EC,$A9,$08,$90,$03,$4C,$2A,$FD,$C2,$20 ; $80FC48
    db $64,$EE,$E2,$20,$A9,$03,$A6,$EE,$20,$4D,$FD,$C2,$20,$8A,$38,$65 ; $80FC58
    db $EE,$85,$F0,$E2,$20,$86,$EE,$46,$F2,$D0,$09,$EB,$88,$B1,$D0,$38 ; $80FC68
    db $6A,$85,$F2,$EB,$2A,$46,$F2,$D0,$09,$EB,$88,$B1,$D0,$38,$6A,$85 ; $80FC78
    db $F2,$EB,$2A,$46,$F2,$D0,$09,$EB,$88,$B1,$D0,$38,$6A,$85,$F2,$EB ; $80FC88
    db $2A,$46,$F2,$D0,$09,$EB,$88,$B1,$D0,$38,$6A,$85,$F2,$EB,$2A,$46 ; $80FC98
    db $F2,$D0,$09,$EB,$88,$B1,$D0,$38,$6A,$85,$F2,$EB,$2A,$46,$F2,$D0 ; $80FCA8
    db $09,$EB,$88,$B1,$D0,$38,$6A,$85,$F2,$EB,$2A,$46,$F2,$D0,$09,$EB ; $80FCB8
    db $88,$B1,$D0,$38,$6A,$85,$F2,$EB,$2A,$46,$F2,$D0,$09,$EB,$88,$B1 ; $80FCC8
    db $D0,$38,$6A,$85,$F2,$EB,$2A,$C2,$20,$C6,$D3,$C6,$F0,$E2,$20,$87 ; $80FCD8
    db $D3,$D0,$84,$A6,$EA,$E4,$D3,$F0,$03,$4C,$2B,$FC,$E2,$10,$AB,$60 ; $80FCE8
    db $A9,$08,$85,$EE,$64,$EF,$4C,$5E,$FC,$A9,$02,$20,$4D,$FD,$A5,$EE ; $80FCF8
    db $C9,$02,$90,$11,$C9,$03,$F0,$E8,$A9,$08,$20,$4D,$FD,$A6,$EE,$86 ; $80FD08
    db $EC,$A9,$0C,$80,$0D,$A5,$EE,$18,$69,$09,$A6,$EE,$E8,$E8,$86,$EE ; $80FD18
    db $86,$EC,$20,$4D,$FD,$5A,$A4,$EE,$A6,$EC,$C2,$20,$C6,$D3,$E2,$20 ; $80FD28
    db $B7,$D3,$87,$D3,$CA,$10,$F3,$7A,$A6,$EA,$E4,$D3,$F0,$03,$4C,$2B ; $80FD38
    db $FC,$E2,$10,$AB,$60,$64,$EE,$64,$EF,$46,$F2,$F0,$0A,$C2,$20,$26 ; $80FD48
    db $EE,$E2,$20,$3A,$D0,$F3,$60,$88,$EB,$B1,$D0,$38,$6A,$85,$F2,$EB ; $80FD58
    db $C2,$20,$26,$EE,$E2,$20,$3A,$D0,$E0,$60,$00,$00,$00,$00,$00,$00 ; $80FD68
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FD78
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FD88
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FD98
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FDA8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FDB8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FDC8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FDD8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FDE8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FDF8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE08
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE18
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE28
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE38
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE48
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE58
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE68
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE78
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE88
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FE98
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FEA8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FEB8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FEC8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FED8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FEE8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FEF8
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF08
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF18
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF28
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF38
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF48
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF58
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF68
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF78
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF88
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FF98
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FFA8
    db $00,$00,$00,$00,$00,$00,$00,$00,$4E,$42,$41,$20,$4A,$41,$4D,$20 ; $80FFB8
    db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$30,$00,$0B ; $80FFC8
    db $00,$01,$51,$00,$0D,$9D,$F2,$62,$00,$00,$00,$00,$70,$F8,$70,$F8 ; $80FFD8
    db $70,$F8,$50,$F8,$70,$F8,$71,$F8,$00,$00,$00,$00,$00,$00,$00,$00 ; $80FFE8
    db $00,$00,$00,$00,$02,$F8,$00,$FF                                 ; $80FFF8
