; bank $AB  (file offset $158000)
org $AB8000

L_AB8000:
    STZ $00EC                       ; $AB8000  9C EC 00     MX
L_AB8003:
    LDA $00EE                       ; $AB8003  AD EE 00     MX
L_AB8006:
    CLC                             ; $AB8006  18           MX
L_AB8007:
    ADC #$0004                      ; $AB8007  69 04 00     MX
L_AB800A:
    STA $00EE                       ; $AB800A  8D EE 00     MX
L_AB800D:
    CMP #$0100                      ; $AB800D  C9 00 01     MX
L_AB8010:
    BCC L_AB801B                    ; $AB8010  90 09        MX
    INC $00EC                       ; $AB8012  EE EC 00     MX
    CMP #$FFF0                      ; $AB8015  C9 F0 FF     MX
    BCS L_AB801B                    ; $AB8018  B0 01        MX
    RTS                             ; $AB801A  60           MX
L_AB801B:
    LDA $00F0                       ; $AB801B  AD F0 00     MX
L_AB801E:
    CMP #$00E0                      ; $AB801E  C9 E0 00     MX
L_AB8021:
    BCC L_AB8029                    ; $AB8021  90 06        MX
L_AB8023:
    CMP #$FFF0                      ; $AB8023  C9 F0 FF     MX
L_AB8026:
    BCS L_AB8029                    ; $AB8026  B0 01        MX
L_AB8028:
    RTS                             ; $AB8028  60           MX
L_AB8029:
    SEP #$20                        ; $AB8029  E2 20        MX
L_AB802B:
    LDA $00EC                       ; $AB802B  AD EC 00     mX
L_AB802E:
    BNE L_AB8036                    ; $AB802E  D0 06        mX
L_AB8030:
    LDA $ABE4CD                     ; $AB8030  AF CD E4 AB  mX
L_AB8034:
    BRA L_AB803A                    ; $AB8034  80 04        mX
L_AB8036:
    LDA $ABE4D1                     ; $AB8036  AF D1 E4 AB  mX
L_AB803A:
    ORA $0500                       ; $AB803A  0D 00 05     mX
L_AB803D:
    STA $0500                       ; $AB803D  8D 00 05     mX
L_AB8040:
    LDA $00F0                       ; $AB8040  AD F0 00     mX
L_AB8043:
    STA $0301                       ; $AB8043  8D 01 03     mX
L_AB8046:
    LDA $00EE                       ; $AB8046  AD EE 00     mX
L_AB8049:
    STA $0300                       ; $AB8049  8D 00 03     mX
L_AB804C:
    LDA $00F2                       ; $AB804C  AD F2 00     mX
L_AB804F:
    STA $0302                       ; $AB804F  8D 02 03     mX
L_AB8052:
    LDA $002A                       ; $AB8052  AD 2A 00     mX
L_AB8055:
    ORA $00F3                       ; $AB8055  0D F3 00     mX
L_AB8058:
    STA $0303                       ; $AB8058  8D 03 03     mX
L_AB805B:
    REP #$20                        ; $AB805B  C2 20        mX
L_AB805D:
    LDA #$0004                      ; $AB805D  A9 04 00     MX
L_AB8060:
    STA ($10)                       ; $AB8060  92 10        MX
L_AB8062:
    RTS                             ; $AB8062  60           MX
L_AB8063:
    STZ $00EC                       ; $AB8063  9C EC 00     MX
    LDA $00EE                       ; $AB8066  AD EE 00     MX
    CLC                             ; $AB8069  18           MX
    ADC #$0004                      ; $AB806A  69 04 00     MX
    STA $00EE                       ; $AB806D  8D EE 00     MX
    CMP #$0100                      ; $AB8070  C9 00 01     MX
    BCC L_AB807E                    ; $AB8073  90 09        MX
    INC $00EC                       ; $AB8075  EE EC 00     MX
    CMP #$FFF0                      ; $AB8078  C9 F0 FF     MX
    BCS L_AB807E                    ; $AB807B  B0 01        MX
    RTS                             ; $AB807D  60           MX
L_AB807E:
    LDA $00F0                       ; $AB807E  AD F0 00     MX
    CMP #$00E0                      ; $AB8081  C9 E0 00     MX
    BCC L_AB808C                    ; $AB8084  90 06        MX
    CMP #$FFF0                      ; $AB8086  C9 F0 FF     MX
    BCS L_AB808C                    ; $AB8089  B0 01        MX
    RTS                             ; $AB808B  60           MX
L_AB808C:
    SEP #$20                        ; $AB808C  E2 20        MX
    LDA $00EC                       ; $AB808E  AD EC 00     mX
    BNE L_AB8099                    ; $AB8091  D0 06        mX
    LDA $ABE4CE                     ; $AB8093  AF CE E4 AB  mX
    BRA L_AB809D                    ; $AB8097  80 04        mX
L_AB8099:
    LDA $ABE4D2                     ; $AB8099  AF D2 E4 AB  mX
L_AB809D:
    ORA $0500                       ; $AB809D  0D 00 05     mX
    STA $0500                       ; $AB80A0  8D 00 05     mX
    LDA $00F0                       ; $AB80A3  AD F0 00     mX
    STA $0305                       ; $AB80A6  8D 05 03     mX
    LDA $00EE                       ; $AB80A9  AD EE 00     mX
    STA $0304                       ; $AB80AC  8D 04 03     mX
    LDA $00F2                       ; $AB80AF  AD F2 00     mX
    STA $0306                       ; $AB80B2  8D 06 03     mX
    LDA $002A                       ; $AB80B5  AD 2A 00     mX
    ORA $00F3                       ; $AB80B8  0D F3 00     mX
    STA $0307                       ; $AB80BB  8D 07 03     mX
    REP #$20                        ; $AB80BE  C2 20        mX
    LDA #$0008                      ; $AB80C0  A9 08 00     MX
    STA ($10)                       ; $AB80C3  92 10        MX
    RTS                             ; $AB80C5  60           MX
L_AB80C6:
    STZ $00EC                       ; $AB80C6  9C EC 00     MX
    LDA $00EE                       ; $AB80C9  AD EE 00     MX
    CLC                             ; $AB80CC  18           MX
    ADC #$0004                      ; $AB80CD  69 04 00     MX
    STA $00EE                       ; $AB80D0  8D EE 00     MX
    CMP #$0100                      ; $AB80D3  C9 00 01     MX
    BCC L_AB80E1                    ; $AB80D6  90 09        MX
    INC $00EC                       ; $AB80D8  EE EC 00     MX
    CMP #$FFF0                      ; $AB80DB  C9 F0 FF     MX
    BCS L_AB80E1                    ; $AB80DE  B0 01        MX
    RTS                             ; $AB80E0  60           MX
L_AB80E1:
    LDA $00F0                       ; $AB80E1  AD F0 00     MX
    CMP #$00E0                      ; $AB80E4  C9 E0 00     MX
    BCC L_AB80EF                    ; $AB80E7  90 06        MX
    CMP #$FFF0                      ; $AB80E9  C9 F0 FF     MX
    BCS L_AB80EF                    ; $AB80EC  B0 01        MX
    RTS                             ; $AB80EE  60           MX
L_AB80EF:
    SEP #$20                        ; $AB80EF  E2 20        MX
    LDA $00EC                       ; $AB80F1  AD EC 00     mX
    BNE L_AB80FC                    ; $AB80F4  D0 06        mX
    LDA $ABE4CF                     ; $AB80F6  AF CF E4 AB  mX
    BRA L_AB8100                    ; $AB80FA  80 04        mX
L_AB80FC:
    LDA $ABE4D3                     ; $AB80FC  AF D3 E4 AB  mX
L_AB8100:
    ORA $0500                       ; $AB8100  0D 00 05     mX
    STA $0500                       ; $AB8103  8D 00 05     mX
    LDA $00F0                       ; $AB8106  AD F0 00     mX
    STA $0309                       ; $AB8109  8D 09 03     mX
    LDA $00EE                       ; $AB810C  AD EE 00     mX
    STA $0308                       ; $AB810F  8D 08 03     mX
    LDA $00F2                       ; $AB8112  AD F2 00     mX
    STA $030A                       ; $AB8115  8D 0A 03     mX
    LDA $002A                       ; $AB8118  AD 2A 00     mX
    ORA $00F3                       ; $AB811B  0D F3 00     mX
    STA $030B                       ; $AB811E  8D 0B 03     mX
    REP #$20                        ; $AB8121  C2 20        mX
    LDA #$000C                      ; $AB8123  A9 0C 00     MX
    STA ($10)                       ; $AB8126  92 10        MX
    RTS                             ; $AB8128  60           MX
L_AB8129:
    STZ $00EC                       ; $AB8129  9C EC 00     MX
    LDA $00EE                       ; $AB812C  AD EE 00     MX
    CLC                             ; $AB812F  18           MX
    ADC #$0004                      ; $AB8130  69 04 00     MX
    STA $00EE                       ; $AB8133  8D EE 00     MX
    CMP #$0100                      ; $AB8136  C9 00 01     MX
    BCC L_AB8144                    ; $AB8139  90 09        MX
    INC $00EC                       ; $AB813B  EE EC 00     MX
    CMP #$FFF0                      ; $AB813E  C9 F0 FF     MX
    BCS L_AB8144                    ; $AB8141  B0 01        MX
    RTS                             ; $AB8143  60           MX
L_AB8144:
    LDA $00F0                       ; $AB8144  AD F0 00     MX
    CMP #$00E0                      ; $AB8147  C9 E0 00     MX
    BCC L_AB8152                    ; $AB814A  90 06        MX
    CMP #$FFF0                      ; $AB814C  C9 F0 FF     MX
    BCS L_AB8152                    ; $AB814F  B0 01        MX
    RTS                             ; $AB8151  60           MX
L_AB8152:
    SEP #$20                        ; $AB8152  E2 20        MX
    LDA $00EC                       ; $AB8154  AD EC 00     mX
    BNE L_AB815F                    ; $AB8157  D0 06        mX
    LDA $ABE4D0                     ; $AB8159  AF D0 E4 AB  mX
    BRA L_AB8163                    ; $AB815D  80 04        mX
L_AB815F:
    LDA $ABE4D4                     ; $AB815F  AF D4 E4 AB  mX
L_AB8163:
    ORA $0500                       ; $AB8163  0D 00 05     mX
    STA $0500                       ; $AB8166  8D 00 05     mX
    LDA $00F0                       ; $AB8169  AD F0 00     mX
    STA $030D                       ; $AB816C  8D 0D 03     mX
    LDA $00EE                       ; $AB816F  AD EE 00     mX
    STA $030C                       ; $AB8172  8D 0C 03     mX
    LDA $00F2                       ; $AB8175  AD F2 00     mX
    STA $030E                       ; $AB8178  8D 0E 03     mX
    LDA $002A                       ; $AB817B  AD 2A 00     mX
    ORA $00F3                       ; $AB817E  0D F3 00     mX
    STA $030F                       ; $AB8181  8D 0F 03     mX
    REP #$20                        ; $AB8184  C2 20        mX
    LDA #$0010                      ; $AB8186  A9 10 00     MX
    STA ($10)                       ; $AB8189  92 10        MX
    RTS                             ; $AB818B  60           MX
L_AB818C:
    STZ $00EC                       ; $AB818C  9C EC 00     MX
    LDA $00EE                       ; $AB818F  AD EE 00     MX
    CLC                             ; $AB8192  18           MX
    ADC #$0004                      ; $AB8193  69 04 00     MX
    STA $00EE                       ; $AB8196  8D EE 00     MX
    CMP #$0100                      ; $AB8199  C9 00 01     MX
    BCC L_AB81A7                    ; $AB819C  90 09        MX
    INC $00EC                       ; $AB819E  EE EC 00     MX
    CMP #$FFF0                      ; $AB81A1  C9 F0 FF     MX
    BCS L_AB81A7                    ; $AB81A4  B0 01        MX
    RTS                             ; $AB81A6  60           MX
L_AB81A7:
    LDA $00F0                       ; $AB81A7  AD F0 00     MX
    CMP #$00E0                      ; $AB81AA  C9 E0 00     MX
    BCC L_AB81B5                    ; $AB81AD  90 06        MX
    CMP #$FFF0                      ; $AB81AF  C9 F0 FF     MX
    BCS L_AB81B5                    ; $AB81B2  B0 01        MX
    RTS                             ; $AB81B4  60           MX
L_AB81B5:
    SEP #$20                        ; $AB81B5  E2 20        MX
    LDA $00EC                       ; $AB81B7  AD EC 00     mX
    BNE L_AB81C2                    ; $AB81BA  D0 06        mX
    LDA $ABE4CD                     ; $AB81BC  AF CD E4 AB  mX
    BRA L_AB81C6                    ; $AB81C0  80 04        mX
L_AB81C2:
    LDA $ABE4D1                     ; $AB81C2  AF D1 E4 AB  mX
L_AB81C6:
    ORA $0501                       ; $AB81C6  0D 01 05     mX
    STA $0501                       ; $AB81C9  8D 01 05     mX
    LDA $00F0                       ; $AB81CC  AD F0 00     mX
    STA $0311                       ; $AB81CF  8D 11 03     mX
    LDA $00EE                       ; $AB81D2  AD EE 00     mX
    STA $0310                       ; $AB81D5  8D 10 03     mX
    LDA $00F2                       ; $AB81D8  AD F2 00     mX
    STA $0312                       ; $AB81DB  8D 12 03     mX
    LDA $002A                       ; $AB81DE  AD 2A 00     mX
    ORA $00F3                       ; $AB81E1  0D F3 00     mX
    STA $0313                       ; $AB81E4  8D 13 03     mX
    REP #$20                        ; $AB81E7  C2 20        mX
    LDA #$0014                      ; $AB81E9  A9 14 00     MX
    STA ($10)                       ; $AB81EC  92 10        MX
    RTS                             ; $AB81EE  60           MX
L_AB81EF:
    STZ $00EC                       ; $AB81EF  9C EC 00     MX
    LDA $00EE                       ; $AB81F2  AD EE 00     MX
    CLC                             ; $AB81F5  18           MX
    ADC #$0004                      ; $AB81F6  69 04 00     MX
    STA $00EE                       ; $AB81F9  8D EE 00     MX
    CMP #$0100                      ; $AB81FC  C9 00 01     MX
    BCC L_AB820A                    ; $AB81FF  90 09        MX
    INC $00EC                       ; $AB8201  EE EC 00     MX
    CMP #$FFF0                      ; $AB8204  C9 F0 FF     MX
    BCS L_AB820A                    ; $AB8207  B0 01        MX
    RTS                             ; $AB8209  60           MX
L_AB820A:
    LDA $00F0                       ; $AB820A  AD F0 00     MX
    CMP #$00E0                      ; $AB820D  C9 E0 00     MX
    BCC L_AB8218                    ; $AB8210  90 06        MX
    CMP #$FFF0                      ; $AB8212  C9 F0 FF     MX
    BCS L_AB8218                    ; $AB8215  B0 01        MX
    RTS                             ; $AB8217  60           MX
L_AB8218:
    SEP #$20                        ; $AB8218  E2 20        MX
    LDA $00EC                       ; $AB821A  AD EC 00     mX
    BNE L_AB8225                    ; $AB821D  D0 06        mX
    LDA $ABE4CE                     ; $AB821F  AF CE E4 AB  mX
    BRA L_AB8229                    ; $AB8223  80 04        mX
L_AB8225:
    LDA $ABE4D2                     ; $AB8225  AF D2 E4 AB  mX
L_AB8229:
    ORA $0501                       ; $AB8229  0D 01 05     mX
    STA $0501                       ; $AB822C  8D 01 05     mX
    LDA $00F0                       ; $AB822F  AD F0 00     mX
    STA $0315                       ; $AB8232  8D 15 03     mX
    LDA $00EE                       ; $AB8235  AD EE 00     mX
    STA $0314                       ; $AB8238  8D 14 03     mX
    LDA $00F2                       ; $AB823B  AD F2 00     mX
    STA $0316                       ; $AB823E  8D 16 03     mX
    LDA $002A                       ; $AB8241  AD 2A 00     mX
    ORA $00F3                       ; $AB8244  0D F3 00     mX
    STA $0317                       ; $AB8247  8D 17 03     mX
    REP #$20                        ; $AB824A  C2 20        mX
    LDA #$0018                      ; $AB824C  A9 18 00     MX
    STA ($10)                       ; $AB824F  92 10        MX
    RTS                             ; $AB8251  60           MX
L_AB8252:
    STZ $00EC                       ; $AB8252  9C EC 00     MX
    LDA $00EE                       ; $AB8255  AD EE 00     MX
    CLC                             ; $AB8258  18           MX
    ADC #$0004                      ; $AB8259  69 04 00     MX
    STA $00EE                       ; $AB825C  8D EE 00     MX
    CMP #$0100                      ; $AB825F  C9 00 01     MX
    BCC L_AB826D                    ; $AB8262  90 09        MX
    INC $00EC                       ; $AB8264  EE EC 00     MX
    CMP #$FFF0                      ; $AB8267  C9 F0 FF     MX
    BCS L_AB826D                    ; $AB826A  B0 01        MX
    RTS                             ; $AB826C  60           MX
L_AB826D:
    LDA $00F0                       ; $AB826D  AD F0 00     MX
    CMP #$00E0                      ; $AB8270  C9 E0 00     MX
    BCC L_AB827B                    ; $AB8273  90 06        MX
    CMP #$FFF0                      ; $AB8275  C9 F0 FF     MX
    BCS L_AB827B                    ; $AB8278  B0 01        MX
    RTS                             ; $AB827A  60           MX
L_AB827B:
    SEP #$20                        ; $AB827B  E2 20        MX
    LDA $00EC                       ; $AB827D  AD EC 00     mX
    BNE L_AB8288                    ; $AB8280  D0 06        mX
    LDA $ABE4CF                     ; $AB8282  AF CF E4 AB  mX
    BRA L_AB828C                    ; $AB8286  80 04        mX
L_AB8288:
    LDA $ABE4D3                     ; $AB8288  AF D3 E4 AB  mX
L_AB828C:
    ORA $0501                       ; $AB828C  0D 01 05     mX
    STA $0501                       ; $AB828F  8D 01 05     mX
    LDA $00F0                       ; $AB8292  AD F0 00     mX
    STA $0319                       ; $AB8295  8D 19 03     mX
    LDA $00EE                       ; $AB8298  AD EE 00     mX
    STA $0318                       ; $AB829B  8D 18 03     mX
    LDA $00F2                       ; $AB829E  AD F2 00     mX
    STA $031A                       ; $AB82A1  8D 1A 03     mX
    LDA $002A                       ; $AB82A4  AD 2A 00     mX
    ORA $00F3                       ; $AB82A7  0D F3 00     mX
    STA $031B                       ; $AB82AA  8D 1B 03     mX
    REP #$20                        ; $AB82AD  C2 20        mX
    LDA #$001C                      ; $AB82AF  A9 1C 00     MX
    STA ($10)                       ; $AB82B2  92 10        MX
    RTS                             ; $AB82B4  60           MX
L_AB82B5:
    STZ $00EC                       ; $AB82B5  9C EC 00     MX
    LDA $00EE                       ; $AB82B8  AD EE 00     MX
    CLC                             ; $AB82BB  18           MX
    ADC #$0004                      ; $AB82BC  69 04 00     MX
    STA $00EE                       ; $AB82BF  8D EE 00     MX
    CMP #$0100                      ; $AB82C2  C9 00 01     MX
    BCC L_AB82D0                    ; $AB82C5  90 09        MX
    INC $00EC                       ; $AB82C7  EE EC 00     MX
    CMP #$FFF0                      ; $AB82CA  C9 F0 FF     MX
    BCS L_AB82D0                    ; $AB82CD  B0 01        MX
    RTS                             ; $AB82CF  60           MX
L_AB82D0:
    LDA $00F0                       ; $AB82D0  AD F0 00     MX
    CMP #$00E0                      ; $AB82D3  C9 E0 00     MX
    BCC L_AB82DE                    ; $AB82D6  90 06        MX
    CMP #$FFF0                      ; $AB82D8  C9 F0 FF     MX
    BCS L_AB82DE                    ; $AB82DB  B0 01        MX
    RTS                             ; $AB82DD  60           MX
L_AB82DE:
    SEP #$20                        ; $AB82DE  E2 20        MX
    LDA $00EC                       ; $AB82E0  AD EC 00     mX
    BNE L_AB82EB                    ; $AB82E3  D0 06        mX
    LDA $ABE4D0                     ; $AB82E5  AF D0 E4 AB  mX
    BRA L_AB82EF                    ; $AB82E9  80 04        mX
L_AB82EB:
    LDA $ABE4D4                     ; $AB82EB  AF D4 E4 AB  mX
L_AB82EF:
    ORA $0501                       ; $AB82EF  0D 01 05     mX
    STA $0501                       ; $AB82F2  8D 01 05     mX
    LDA $00F0                       ; $AB82F5  AD F0 00     mX
    STA $031D                       ; $AB82F8  8D 1D 03     mX
    LDA $00EE                       ; $AB82FB  AD EE 00     mX
    STA $031C                       ; $AB82FE  8D 1C 03     mX
    LDA $00F2                       ; $AB8301  AD F2 00     mX
    STA $031E                       ; $AB8304  8D 1E 03     mX
    LDA $002A                       ; $AB8307  AD 2A 00     mX
    ORA $00F3                       ; $AB830A  0D F3 00     mX
    STA $031F                       ; $AB830D  8D 1F 03     mX
    REP #$20                        ; $AB8310  C2 20        mX
    LDA #$0020                      ; $AB8312  A9 20 00     MX
    STA ($10)                       ; $AB8315  92 10        MX
    RTS                             ; $AB8317  60           MX
L_AB8318:
    STZ $00EC                       ; $AB8318  9C EC 00     MX
    LDA $00EE                       ; $AB831B  AD EE 00     MX
    CLC                             ; $AB831E  18           MX
    ADC #$0004                      ; $AB831F  69 04 00     MX
    STA $00EE                       ; $AB8322  8D EE 00     MX
    CMP #$0100                      ; $AB8325  C9 00 01     MX
    BCC L_AB8333                    ; $AB8328  90 09        MX
    INC $00EC                       ; $AB832A  EE EC 00     MX
    CMP #$FFF0                      ; $AB832D  C9 F0 FF     MX
    BCS L_AB8333                    ; $AB8330  B0 01        MX
    RTS                             ; $AB8332  60           MX
L_AB8333:
    LDA $00F0                       ; $AB8333  AD F0 00     MX
    CMP #$00E0                      ; $AB8336  C9 E0 00     MX
    BCC L_AB8341                    ; $AB8339  90 06        MX
    CMP #$FFF0                      ; $AB833B  C9 F0 FF     MX
    BCS L_AB8341                    ; $AB833E  B0 01        MX
    RTS                             ; $AB8340  60           MX
L_AB8341:
    SEP #$20                        ; $AB8341  E2 20        MX
    LDA $00EC                       ; $AB8343  AD EC 00     mX
    BNE L_AB834E                    ; $AB8346  D0 06        mX
    LDA $ABE4CD                     ; $AB8348  AF CD E4 AB  mX
    BRA L_AB8352                    ; $AB834C  80 04        mX
L_AB834E:
    LDA $ABE4D1                     ; $AB834E  AF D1 E4 AB  mX
L_AB8352:
    ORA $0502                       ; $AB8352  0D 02 05     mX
    STA $0502                       ; $AB8355  8D 02 05     mX
    LDA $00F0                       ; $AB8358  AD F0 00     mX
    STA $0321                       ; $AB835B  8D 21 03     mX
    LDA $00EE                       ; $AB835E  AD EE 00     mX
    STA $0320                       ; $AB8361  8D 20 03     mX
    LDA $00F2                       ; $AB8364  AD F2 00     mX
    STA $0322                       ; $AB8367  8D 22 03     mX
    LDA $002A                       ; $AB836A  AD 2A 00     mX
    ORA $00F3                       ; $AB836D  0D F3 00     mX
    STA $0323                       ; $AB8370  8D 23 03     mX
    REP #$20                        ; $AB8373  C2 20        mX
    LDA #$0024                      ; $AB8375  A9 24 00     MX
    STA ($10)                       ; $AB8378  92 10        MX
    RTS                             ; $AB837A  60           MX
L_AB837B:
    STZ $00EC                       ; $AB837B  9C EC 00     MX
    LDA $00EE                       ; $AB837E  AD EE 00     MX
    CLC                             ; $AB8381  18           MX
    ADC #$0004                      ; $AB8382  69 04 00     MX
    STA $00EE                       ; $AB8385  8D EE 00     MX
    CMP #$0100                      ; $AB8388  C9 00 01     MX
    BCC L_AB8396                    ; $AB838B  90 09        MX
    INC $00EC                       ; $AB838D  EE EC 00     MX
    CMP #$FFF0                      ; $AB8390  C9 F0 FF     MX
    BCS L_AB8396                    ; $AB8393  B0 01        MX
    RTS                             ; $AB8395  60           MX
L_AB8396:
    LDA $00F0                       ; $AB8396  AD F0 00     MX
    CMP #$00E0                      ; $AB8399  C9 E0 00     MX
    BCC L_AB83A4                    ; $AB839C  90 06        MX
    CMP #$FFF0                      ; $AB839E  C9 F0 FF     MX
    BCS L_AB83A4                    ; $AB83A1  B0 01        MX
    RTS                             ; $AB83A3  60           MX
L_AB83A4:
    SEP #$20                        ; $AB83A4  E2 20        MX
    LDA $00EC                       ; $AB83A6  AD EC 00     mX
    BNE L_AB83B1                    ; $AB83A9  D0 06        mX
    LDA $ABE4CE                     ; $AB83AB  AF CE E4 AB  mX
    BRA L_AB83B5                    ; $AB83AF  80 04        mX
L_AB83B1:
    LDA $ABE4D2                     ; $AB83B1  AF D2 E4 AB  mX
L_AB83B5:
    ORA $0502                       ; $AB83B5  0D 02 05     mX
    STA $0502                       ; $AB83B8  8D 02 05     mX
    LDA $00F0                       ; $AB83BB  AD F0 00     mX
    STA $0325                       ; $AB83BE  8D 25 03     mX
    LDA $00EE                       ; $AB83C1  AD EE 00     mX
    STA $0324                       ; $AB83C4  8D 24 03     mX
    LDA $00F2                       ; $AB83C7  AD F2 00     mX
    STA $0326                       ; $AB83CA  8D 26 03     mX
    LDA $002A                       ; $AB83CD  AD 2A 00     mX
    ORA $00F3                       ; $AB83D0  0D F3 00     mX
    STA $0327                       ; $AB83D3  8D 27 03     mX
    REP #$20                        ; $AB83D6  C2 20        mX
    LDA #$0028                      ; $AB83D8  A9 28 00     MX
    STA ($10)                       ; $AB83DB  92 10        MX
    RTS                             ; $AB83DD  60           MX
L_AB83DE:
    STZ $00EC                       ; $AB83DE  9C EC 00     MX
    LDA $00EE                       ; $AB83E1  AD EE 00     MX
    CLC                             ; $AB83E4  18           MX
    ADC #$0004                      ; $AB83E5  69 04 00     MX
    STA $00EE                       ; $AB83E8  8D EE 00     MX
    CMP #$0100                      ; $AB83EB  C9 00 01     MX
    BCC L_AB83F9                    ; $AB83EE  90 09        MX
    INC $00EC                       ; $AB83F0  EE EC 00     MX
    CMP #$FFF0                      ; $AB83F3  C9 F0 FF     MX
    BCS L_AB83F9                    ; $AB83F6  B0 01        MX
    RTS                             ; $AB83F8  60           MX
L_AB83F9:
    LDA $00F0                       ; $AB83F9  AD F0 00     MX
    CMP #$00E0                      ; $AB83FC  C9 E0 00     MX
    BCC L_AB8407                    ; $AB83FF  90 06        MX
    CMP #$FFF0                      ; $AB8401  C9 F0 FF     MX
    BCS L_AB8407                    ; $AB8404  B0 01        MX
    RTS                             ; $AB8406  60           MX
L_AB8407:
    SEP #$20                        ; $AB8407  E2 20        MX
    LDA $00EC                       ; $AB8409  AD EC 00     mX
    BNE L_AB8414                    ; $AB840C  D0 06        mX
    LDA $ABE4CF                     ; $AB840E  AF CF E4 AB  mX
    BRA L_AB8418                    ; $AB8412  80 04        mX
L_AB8414:
    LDA $ABE4D3                     ; $AB8414  AF D3 E4 AB  mX
L_AB8418:
    ORA $0502                       ; $AB8418  0D 02 05     mX
    STA $0502                       ; $AB841B  8D 02 05     mX
    LDA $00F0                       ; $AB841E  AD F0 00     mX
    STA $0329                       ; $AB8421  8D 29 03     mX
    LDA $00EE                       ; $AB8424  AD EE 00     mX
    STA $0328                       ; $AB8427  8D 28 03     mX
    LDA $00F2                       ; $AB842A  AD F2 00     mX
    STA $032A                       ; $AB842D  8D 2A 03     mX
    LDA $002A                       ; $AB8430  AD 2A 00     mX
    ORA $00F3                       ; $AB8433  0D F3 00     mX
    STA $032B                       ; $AB8436  8D 2B 03     mX
    REP #$20                        ; $AB8439  C2 20        mX
    LDA #$002C                      ; $AB843B  A9 2C 00     MX
    STA ($10)                       ; $AB843E  92 10        MX
    RTS                             ; $AB8440  60           MX
L_AB8441:
    STZ $00EC                       ; $AB8441  9C EC 00     MX
    LDA $00EE                       ; $AB8444  AD EE 00     MX
    CLC                             ; $AB8447  18           MX
    ADC #$0004                      ; $AB8448  69 04 00     MX
    STA $00EE                       ; $AB844B  8D EE 00     MX
    CMP #$0100                      ; $AB844E  C9 00 01     MX
    BCC L_AB845C                    ; $AB8451  90 09        MX
    INC $00EC                       ; $AB8453  EE EC 00     MX
    CMP #$FFF0                      ; $AB8456  C9 F0 FF     MX
    BCS L_AB845C                    ; $AB8459  B0 01        MX
    RTS                             ; $AB845B  60           MX
L_AB845C:
    LDA $00F0                       ; $AB845C  AD F0 00     MX
    CMP #$00E0                      ; $AB845F  C9 E0 00     MX
    BCC L_AB846A                    ; $AB8462  90 06        MX
    CMP #$FFF0                      ; $AB8464  C9 F0 FF     MX
    BCS L_AB846A                    ; $AB8467  B0 01        MX
    RTS                             ; $AB8469  60           MX
L_AB846A:
    SEP #$20                        ; $AB846A  E2 20        MX
    LDA $00EC                       ; $AB846C  AD EC 00     mX
    BNE L_AB8477                    ; $AB846F  D0 06        mX
    LDA $ABE4D0                     ; $AB8471  AF D0 E4 AB  mX
    BRA L_AB847B                    ; $AB8475  80 04        mX
L_AB8477:
    LDA $ABE4D4                     ; $AB8477  AF D4 E4 AB  mX
L_AB847B:
    ORA $0502                       ; $AB847B  0D 02 05     mX
    STA $0502                       ; $AB847E  8D 02 05     mX
    LDA $00F0                       ; $AB8481  AD F0 00     mX
    STA $032D                       ; $AB8484  8D 2D 03     mX
    LDA $00EE                       ; $AB8487  AD EE 00     mX
    STA $032C                       ; $AB848A  8D 2C 03     mX
    LDA $00F2                       ; $AB848D  AD F2 00     mX
    STA $032E                       ; $AB8490  8D 2E 03     mX
    LDA $002A                       ; $AB8493  AD 2A 00     mX
    ORA $00F3                       ; $AB8496  0D F3 00     mX
    STA $032F                       ; $AB8499  8D 2F 03     mX
    REP #$20                        ; $AB849C  C2 20        mX
    LDA #$0030                      ; $AB849E  A9 30 00     MX
    STA ($10)                       ; $AB84A1  92 10        MX
    RTS                             ; $AB84A3  60           MX
L_AB84A4:
    STZ $00EC                       ; $AB84A4  9C EC 00     MX
    LDA $00EE                       ; $AB84A7  AD EE 00     MX
    CLC                             ; $AB84AA  18           MX
    ADC #$0004                      ; $AB84AB  69 04 00     MX
    STA $00EE                       ; $AB84AE  8D EE 00     MX
    CMP #$0100                      ; $AB84B1  C9 00 01     MX
    BCC L_AB84BF                    ; $AB84B4  90 09        MX
    INC $00EC                       ; $AB84B6  EE EC 00     MX
    CMP #$FFF0                      ; $AB84B9  C9 F0 FF     MX
    BCS L_AB84BF                    ; $AB84BC  B0 01        MX
    RTS                             ; $AB84BE  60           MX
L_AB84BF:
    LDA $00F0                       ; $AB84BF  AD F0 00     MX
    CMP #$00E0                      ; $AB84C2  C9 E0 00     MX
    BCC L_AB84CD                    ; $AB84C5  90 06        MX
    CMP #$FFF0                      ; $AB84C7  C9 F0 FF     MX
    BCS L_AB84CD                    ; $AB84CA  B0 01        MX
    RTS                             ; $AB84CC  60           MX
L_AB84CD:
    SEP #$20                        ; $AB84CD  E2 20        MX
    LDA $00EC                       ; $AB84CF  AD EC 00     mX
    BNE L_AB84DA                    ; $AB84D2  D0 06        mX
    LDA $ABE4CD                     ; $AB84D4  AF CD E4 AB  mX
    BRA L_AB84DE                    ; $AB84D8  80 04        mX
L_AB84DA:
    LDA $ABE4D1                     ; $AB84DA  AF D1 E4 AB  mX
L_AB84DE:
    ORA $0503                       ; $AB84DE  0D 03 05     mX
    STA $0503                       ; $AB84E1  8D 03 05     mX
    LDA $00F0                       ; $AB84E4  AD F0 00     mX
    STA $0331                       ; $AB84E7  8D 31 03     mX
    LDA $00EE                       ; $AB84EA  AD EE 00     mX
    STA $0330                       ; $AB84ED  8D 30 03     mX
    LDA $00F2                       ; $AB84F0  AD F2 00     mX
    STA $0332                       ; $AB84F3  8D 32 03     mX
    LDA $002A                       ; $AB84F6  AD 2A 00     mX
    ORA $00F3                       ; $AB84F9  0D F3 00     mX
    STA $0333                       ; $AB84FC  8D 33 03     mX
    REP #$20                        ; $AB84FF  C2 20        mX
    LDA #$0034                      ; $AB8501  A9 34 00     MX
    STA ($10)                       ; $AB8504  92 10        MX
    RTS                             ; $AB8506  60           MX
L_AB8507:
    STZ $00EC                       ; $AB8507  9C EC 00     MX
    LDA $00EE                       ; $AB850A  AD EE 00     MX
    CLC                             ; $AB850D  18           MX
    ADC #$0004                      ; $AB850E  69 04 00     MX
    STA $00EE                       ; $AB8511  8D EE 00     MX
    CMP #$0100                      ; $AB8514  C9 00 01     MX
    BCC L_AB8522                    ; $AB8517  90 09        MX
    INC $00EC                       ; $AB8519  EE EC 00     MX
    CMP #$FFF0                      ; $AB851C  C9 F0 FF     MX
    BCS L_AB8522                    ; $AB851F  B0 01        MX
    RTS                             ; $AB8521  60           MX
L_AB8522:
    LDA $00F0                       ; $AB8522  AD F0 00     MX
    CMP #$00E0                      ; $AB8525  C9 E0 00     MX
    BCC L_AB8530                    ; $AB8528  90 06        MX
    CMP #$FFF0                      ; $AB852A  C9 F0 FF     MX
    BCS L_AB8530                    ; $AB852D  B0 01        MX
    RTS                             ; $AB852F  60           MX
L_AB8530:
    SEP #$20                        ; $AB8530  E2 20        MX
    LDA $00EC                       ; $AB8532  AD EC 00     mX
    BNE L_AB853D                    ; $AB8535  D0 06        mX
    LDA $ABE4CE                     ; $AB8537  AF CE E4 AB  mX
    BRA L_AB8541                    ; $AB853B  80 04        mX
L_AB853D:
    LDA $ABE4D2                     ; $AB853D  AF D2 E4 AB  mX
L_AB8541:
    ORA $0503                       ; $AB8541  0D 03 05     mX
    STA $0503                       ; $AB8544  8D 03 05     mX
    LDA $00F0                       ; $AB8547  AD F0 00     mX
    STA $0335                       ; $AB854A  8D 35 03     mX
    LDA $00EE                       ; $AB854D  AD EE 00     mX
    STA $0334                       ; $AB8550  8D 34 03     mX
    LDA $00F2                       ; $AB8553  AD F2 00     mX
    STA $0336                       ; $AB8556  8D 36 03     mX
    LDA $002A                       ; $AB8559  AD 2A 00     mX
    ORA $00F3                       ; $AB855C  0D F3 00     mX
    STA $0337                       ; $AB855F  8D 37 03     mX
    REP #$20                        ; $AB8562  C2 20        mX
    LDA #$0038                      ; $AB8564  A9 38 00     MX
    STA ($10)                       ; $AB8567  92 10        MX
    RTS                             ; $AB8569  60           MX
L_AB856A:
    STZ $00EC                       ; $AB856A  9C EC 00     MX
    LDA $00EE                       ; $AB856D  AD EE 00     MX
    CLC                             ; $AB8570  18           MX
    ADC #$0004                      ; $AB8571  69 04 00     MX
    STA $00EE                       ; $AB8574  8D EE 00     MX
    CMP #$0100                      ; $AB8577  C9 00 01     MX
    BCC L_AB8585                    ; $AB857A  90 09        MX
    INC $00EC                       ; $AB857C  EE EC 00     MX
    CMP #$FFF0                      ; $AB857F  C9 F0 FF     MX
    BCS L_AB8585                    ; $AB8582  B0 01        MX
    RTS                             ; $AB8584  60           MX
L_AB8585:
    LDA $00F0                       ; $AB8585  AD F0 00     MX
    CMP #$00E0                      ; $AB8588  C9 E0 00     MX
    BCC L_AB8593                    ; $AB858B  90 06        MX
    CMP #$FFF0                      ; $AB858D  C9 F0 FF     MX
    BCS L_AB8593                    ; $AB8590  B0 01        MX
    RTS                             ; $AB8592  60           MX
L_AB8593:
    SEP #$20                        ; $AB8593  E2 20        MX
    LDA $00EC                       ; $AB8595  AD EC 00     mX
    BNE L_AB85A0                    ; $AB8598  D0 06        mX
    LDA $ABE4CF                     ; $AB859A  AF CF E4 AB  mX
    BRA L_AB85A4                    ; $AB859E  80 04        mX
L_AB85A0:
    LDA $ABE4D3                     ; $AB85A0  AF D3 E4 AB  mX
L_AB85A4:
    ORA $0503                       ; $AB85A4  0D 03 05     mX
    STA $0503                       ; $AB85A7  8D 03 05     mX
    LDA $00F0                       ; $AB85AA  AD F0 00     mX
    STA $0339                       ; $AB85AD  8D 39 03     mX
    LDA $00EE                       ; $AB85B0  AD EE 00     mX
    STA $0338                       ; $AB85B3  8D 38 03     mX
    LDA $00F2                       ; $AB85B6  AD F2 00     mX
    STA $033A                       ; $AB85B9  8D 3A 03     mX
    LDA $002A                       ; $AB85BC  AD 2A 00     mX
    ORA $00F3                       ; $AB85BF  0D F3 00     mX
    STA $033B                       ; $AB85C2  8D 3B 03     mX
    REP #$20                        ; $AB85C5  C2 20        mX
    LDA #$003C                      ; $AB85C7  A9 3C 00     MX
    STA ($10)                       ; $AB85CA  92 10        MX
    RTS                             ; $AB85CC  60           MX
L_AB85CD:
    STZ $00EC                       ; $AB85CD  9C EC 00     MX
    LDA $00EE                       ; $AB85D0  AD EE 00     MX
    CLC                             ; $AB85D3  18           MX
    ADC #$0004                      ; $AB85D4  69 04 00     MX
    STA $00EE                       ; $AB85D7  8D EE 00     MX
    CMP #$0100                      ; $AB85DA  C9 00 01     MX
    BCC L_AB85E8                    ; $AB85DD  90 09        MX
    INC $00EC                       ; $AB85DF  EE EC 00     MX
    CMP #$FFF0                      ; $AB85E2  C9 F0 FF     MX
    BCS L_AB85E8                    ; $AB85E5  B0 01        MX
    RTS                             ; $AB85E7  60           MX
L_AB85E8:
    LDA $00F0                       ; $AB85E8  AD F0 00     MX
    CMP #$00E0                      ; $AB85EB  C9 E0 00     MX
    BCC L_AB85F6                    ; $AB85EE  90 06        MX
    CMP #$FFF0                      ; $AB85F0  C9 F0 FF     MX
    BCS L_AB85F6                    ; $AB85F3  B0 01        MX
    RTS                             ; $AB85F5  60           MX
L_AB85F6:
    SEP #$20                        ; $AB85F6  E2 20        MX
    LDA $00EC                       ; $AB85F8  AD EC 00     mX
    BNE L_AB8603                    ; $AB85FB  D0 06        mX
    LDA $ABE4D0                     ; $AB85FD  AF D0 E4 AB  mX
    BRA L_AB8607                    ; $AB8601  80 04        mX
L_AB8603:
    LDA $ABE4D4                     ; $AB8603  AF D4 E4 AB  mX
L_AB8607:
    ORA $0503                       ; $AB8607  0D 03 05     mX
    STA $0503                       ; $AB860A  8D 03 05     mX
    LDA $00F0                       ; $AB860D  AD F0 00     mX
    STA $033D                       ; $AB8610  8D 3D 03     mX
    LDA $00EE                       ; $AB8613  AD EE 00     mX
    STA $033C                       ; $AB8616  8D 3C 03     mX
    LDA $00F2                       ; $AB8619  AD F2 00     mX
    STA $033E                       ; $AB861C  8D 3E 03     mX
    LDA $002A                       ; $AB861F  AD 2A 00     mX
    ORA $00F3                       ; $AB8622  0D F3 00     mX
    STA $033F                       ; $AB8625  8D 3F 03     mX
    REP #$20                        ; $AB8628  C2 20        mX
    LDA #$0040                      ; $AB862A  A9 40 00     MX
    STA ($10)                       ; $AB862D  92 10        MX
    RTS                             ; $AB862F  60           MX
L_AB8630:
    STZ $00EC                       ; $AB8630  9C EC 00     MX
    LDA $00EE                       ; $AB8633  AD EE 00     MX
    CLC                             ; $AB8636  18           MX
    ADC #$0004                      ; $AB8637  69 04 00     MX
    STA $00EE                       ; $AB863A  8D EE 00     MX
    CMP #$0100                      ; $AB863D  C9 00 01     MX
    BCC L_AB864B                    ; $AB8640  90 09        MX
    INC $00EC                       ; $AB8642  EE EC 00     MX
    CMP #$FFF0                      ; $AB8645  C9 F0 FF     MX
    BCS L_AB864B                    ; $AB8648  B0 01        MX
    RTS                             ; $AB864A  60           MX
L_AB864B:
    LDA $00F0                       ; $AB864B  AD F0 00     MX
    CMP #$00E0                      ; $AB864E  C9 E0 00     MX
    BCC L_AB8659                    ; $AB8651  90 06        MX
    CMP #$FFF0                      ; $AB8653  C9 F0 FF     MX
    BCS L_AB8659                    ; $AB8656  B0 01        MX
    RTS                             ; $AB8658  60           MX
L_AB8659:
    SEP #$20                        ; $AB8659  E2 20        MX
    LDA $00EC                       ; $AB865B  AD EC 00     mX
    BNE L_AB8666                    ; $AB865E  D0 06        mX
    LDA $ABE4CD                     ; $AB8660  AF CD E4 AB  mX
    BRA L_AB866A                    ; $AB8664  80 04        mX
L_AB8666:
    LDA $ABE4D1                     ; $AB8666  AF D1 E4 AB  mX
L_AB866A:
    ORA $0504                       ; $AB866A  0D 04 05     mX
    STA $0504                       ; $AB866D  8D 04 05     mX
    LDA $00F0                       ; $AB8670  AD F0 00     mX
    STA $0341                       ; $AB8673  8D 41 03     mX
    LDA $00EE                       ; $AB8676  AD EE 00     mX
    STA $0340                       ; $AB8679  8D 40 03     mX
    LDA $00F2                       ; $AB867C  AD F2 00     mX
    STA $0342                       ; $AB867F  8D 42 03     mX
    LDA $002A                       ; $AB8682  AD 2A 00     mX
    ORA $00F3                       ; $AB8685  0D F3 00     mX
    STA $0343                       ; $AB8688  8D 43 03     mX
    REP #$20                        ; $AB868B  C2 20        mX
    LDA #$0044                      ; $AB868D  A9 44 00     MX
    STA ($10)                       ; $AB8690  92 10        MX
    RTS                             ; $AB8692  60           MX
L_AB8693:
    STZ $00EC                       ; $AB8693  9C EC 00     MX
    LDA $00EE                       ; $AB8696  AD EE 00     MX
    CLC                             ; $AB8699  18           MX
    ADC #$0004                      ; $AB869A  69 04 00     MX
    STA $00EE                       ; $AB869D  8D EE 00     MX
    CMP #$0100                      ; $AB86A0  C9 00 01     MX
    BCC L_AB86AE                    ; $AB86A3  90 09        MX
    INC $00EC                       ; $AB86A5  EE EC 00     MX
    CMP #$FFF0                      ; $AB86A8  C9 F0 FF     MX
    BCS L_AB86AE                    ; $AB86AB  B0 01        MX
    RTS                             ; $AB86AD  60           MX
L_AB86AE:
    LDA $00F0                       ; $AB86AE  AD F0 00     MX
    CMP #$00E0                      ; $AB86B1  C9 E0 00     MX
    BCC L_AB86BC                    ; $AB86B4  90 06        MX
    CMP #$FFF0                      ; $AB86B6  C9 F0 FF     MX
    BCS L_AB86BC                    ; $AB86B9  B0 01        MX
    RTS                             ; $AB86BB  60           MX
L_AB86BC:
    SEP #$20                        ; $AB86BC  E2 20        MX
    LDA $00EC                       ; $AB86BE  AD EC 00     mX
    BNE L_AB86C9                    ; $AB86C1  D0 06        mX
    LDA $ABE4CE                     ; $AB86C3  AF CE E4 AB  mX
    BRA L_AB86CD                    ; $AB86C7  80 04        mX
L_AB86C9:
    LDA $ABE4D2                     ; $AB86C9  AF D2 E4 AB  mX
L_AB86CD:
    ORA $0504                       ; $AB86CD  0D 04 05     mX
    STA $0504                       ; $AB86D0  8D 04 05     mX
    LDA $00F0                       ; $AB86D3  AD F0 00     mX
    STA $0345                       ; $AB86D6  8D 45 03     mX
    LDA $00EE                       ; $AB86D9  AD EE 00     mX
    STA $0344                       ; $AB86DC  8D 44 03     mX
    LDA $00F2                       ; $AB86DF  AD F2 00     mX
    STA $0346                       ; $AB86E2  8D 46 03     mX
    LDA $002A                       ; $AB86E5  AD 2A 00     mX
    ORA $00F3                       ; $AB86E8  0D F3 00     mX
    STA $0347                       ; $AB86EB  8D 47 03     mX
    REP #$20                        ; $AB86EE  C2 20        mX
    LDA #$0048                      ; $AB86F0  A9 48 00     MX
    STA ($10)                       ; $AB86F3  92 10        MX
    RTS                             ; $AB86F5  60           MX
L_AB86F6:
    STZ $00EC                       ; $AB86F6  9C EC 00     MX
    LDA $00EE                       ; $AB86F9  AD EE 00     MX
    CLC                             ; $AB86FC  18           MX
    ADC #$0004                      ; $AB86FD  69 04 00     MX
    STA $00EE                       ; $AB8700  8D EE 00     MX
    CMP #$0100                      ; $AB8703  C9 00 01     MX
    BCC L_AB8711                    ; $AB8706  90 09        MX
    INC $00EC                       ; $AB8708  EE EC 00     MX
    CMP #$FFF0                      ; $AB870B  C9 F0 FF     MX
    BCS L_AB8711                    ; $AB870E  B0 01        MX
    RTS                             ; $AB8710  60           MX
L_AB8711:
    LDA $00F0                       ; $AB8711  AD F0 00     MX
    CMP #$00E0                      ; $AB8714  C9 E0 00     MX
    BCC L_AB871F                    ; $AB8717  90 06        MX
    CMP #$FFF0                      ; $AB8719  C9 F0 FF     MX
    BCS L_AB871F                    ; $AB871C  B0 01        MX
    RTS                             ; $AB871E  60           MX
L_AB871F:
    SEP #$20                        ; $AB871F  E2 20        MX
    LDA $00EC                       ; $AB8721  AD EC 00     mX
    BNE L_AB872C                    ; $AB8724  D0 06        mX
    LDA $ABE4CF                     ; $AB8726  AF CF E4 AB  mX
    BRA L_AB8730                    ; $AB872A  80 04        mX
L_AB872C:
    LDA $ABE4D3                     ; $AB872C  AF D3 E4 AB  mX
L_AB8730:
    ORA $0504                       ; $AB8730  0D 04 05     mX
    STA $0504                       ; $AB8733  8D 04 05     mX
    LDA $00F0                       ; $AB8736  AD F0 00     mX
    STA $0349                       ; $AB8739  8D 49 03     mX
    LDA $00EE                       ; $AB873C  AD EE 00     mX
    STA $0348                       ; $AB873F  8D 48 03     mX
    LDA $00F2                       ; $AB8742  AD F2 00     mX
    STA $034A                       ; $AB8745  8D 4A 03     mX
    LDA $002A                       ; $AB8748  AD 2A 00     mX
    ORA $00F3                       ; $AB874B  0D F3 00     mX
    STA $034B                       ; $AB874E  8D 4B 03     mX
    REP #$20                        ; $AB8751  C2 20        mX
    LDA #$004C                      ; $AB8753  A9 4C 00     MX
    STA ($10)                       ; $AB8756  92 10        MX
    RTS                             ; $AB8758  60           MX
L_AB8759:
    STZ $00EC                       ; $AB8759  9C EC 00     MX
    LDA $00EE                       ; $AB875C  AD EE 00     MX
    CLC                             ; $AB875F  18           MX
    ADC #$0004                      ; $AB8760  69 04 00     MX
    STA $00EE                       ; $AB8763  8D EE 00     MX
    CMP #$0100                      ; $AB8766  C9 00 01     MX
    BCC L_AB8774                    ; $AB8769  90 09        MX
    INC $00EC                       ; $AB876B  EE EC 00     MX
    CMP #$FFF0                      ; $AB876E  C9 F0 FF     MX
    BCS L_AB8774                    ; $AB8771  B0 01        MX
    RTS                             ; $AB8773  60           MX
L_AB8774:
    LDA $00F0                       ; $AB8774  AD F0 00     MX
    CMP #$00E0                      ; $AB8777  C9 E0 00     MX
    BCC L_AB8782                    ; $AB877A  90 06        MX
    CMP #$FFF0                      ; $AB877C  C9 F0 FF     MX
    BCS L_AB8782                    ; $AB877F  B0 01        MX
    RTS                             ; $AB8781  60           MX
L_AB8782:
    SEP #$20                        ; $AB8782  E2 20        MX
    LDA $00EC                       ; $AB8784  AD EC 00     mX
    BNE L_AB878F                    ; $AB8787  D0 06        mX
    LDA $ABE4D0                     ; $AB8789  AF D0 E4 AB  mX
    BRA L_AB8793                    ; $AB878D  80 04        mX
L_AB878F:
    LDA $ABE4D4                     ; $AB878F  AF D4 E4 AB  mX
L_AB8793:
    ORA $0504                       ; $AB8793  0D 04 05     mX
    STA $0504                       ; $AB8796  8D 04 05     mX
    LDA $00F0                       ; $AB8799  AD F0 00     mX
    STA $034D                       ; $AB879C  8D 4D 03     mX
    LDA $00EE                       ; $AB879F  AD EE 00     mX
    STA $034C                       ; $AB87A2  8D 4C 03     mX
    LDA $00F2                       ; $AB87A5  AD F2 00     mX
    STA $034E                       ; $AB87A8  8D 4E 03     mX
    LDA $002A                       ; $AB87AB  AD 2A 00     mX
    ORA $00F3                       ; $AB87AE  0D F3 00     mX
    STA $034F                       ; $AB87B1  8D 4F 03     mX
    REP #$20                        ; $AB87B4  C2 20        mX
    LDA #$0050                      ; $AB87B6  A9 50 00     MX
    STA ($10)                       ; $AB87B9  92 10        MX
    RTS                             ; $AB87BB  60           MX
L_AB87BC:
    STZ $00EC                       ; $AB87BC  9C EC 00     MX
    LDA $00EE                       ; $AB87BF  AD EE 00     MX
    CLC                             ; $AB87C2  18           MX
    ADC #$0004                      ; $AB87C3  69 04 00     MX
    STA $00EE                       ; $AB87C6  8D EE 00     MX
    CMP #$0100                      ; $AB87C9  C9 00 01     MX
    BCC L_AB87D7                    ; $AB87CC  90 09        MX
    INC $00EC                       ; $AB87CE  EE EC 00     MX
    CMP #$FFF0                      ; $AB87D1  C9 F0 FF     MX
    BCS L_AB87D7                    ; $AB87D4  B0 01        MX
    RTS                             ; $AB87D6  60           MX
L_AB87D7:
    LDA $00F0                       ; $AB87D7  AD F0 00     MX
    CMP #$00E0                      ; $AB87DA  C9 E0 00     MX
    BCC L_AB87E5                    ; $AB87DD  90 06        MX
    CMP #$FFF0                      ; $AB87DF  C9 F0 FF     MX
    BCS L_AB87E5                    ; $AB87E2  B0 01        MX
    RTS                             ; $AB87E4  60           MX
L_AB87E5:
    SEP #$20                        ; $AB87E5  E2 20        MX
    LDA $00EC                       ; $AB87E7  AD EC 00     mX
    BNE L_AB87F2                    ; $AB87EA  D0 06        mX
    LDA $ABE4CD                     ; $AB87EC  AF CD E4 AB  mX
    BRA L_AB87F6                    ; $AB87F0  80 04        mX
L_AB87F2:
    LDA $ABE4D1                     ; $AB87F2  AF D1 E4 AB  mX
L_AB87F6:
    ORA $0505                       ; $AB87F6  0D 05 05     mX
    STA $0505                       ; $AB87F9  8D 05 05     mX
    LDA $00F0                       ; $AB87FC  AD F0 00     mX
    STA $0351                       ; $AB87FF  8D 51 03     mX
    LDA $00EE                       ; $AB8802  AD EE 00     mX
    STA $0350                       ; $AB8805  8D 50 03     mX
    LDA $00F2                       ; $AB8808  AD F2 00     mX
    STA $0352                       ; $AB880B  8D 52 03     mX
    LDA $002A                       ; $AB880E  AD 2A 00     mX
    ORA $00F3                       ; $AB8811  0D F3 00     mX
    STA $0353                       ; $AB8814  8D 53 03     mX
    REP #$20                        ; $AB8817  C2 20        mX
    LDA #$0054                      ; $AB8819  A9 54 00     MX
    STA ($10)                       ; $AB881C  92 10        MX
    RTS                             ; $AB881E  60           MX
L_AB881F:
    STZ $00EC                       ; $AB881F  9C EC 00     MX
    LDA $00EE                       ; $AB8822  AD EE 00     MX
    CLC                             ; $AB8825  18           MX
    ADC #$0004                      ; $AB8826  69 04 00     MX
    STA $00EE                       ; $AB8829  8D EE 00     MX
    CMP #$0100                      ; $AB882C  C9 00 01     MX
    BCC L_AB883A                    ; $AB882F  90 09        MX
    INC $00EC                       ; $AB8831  EE EC 00     MX
    CMP #$FFF0                      ; $AB8834  C9 F0 FF     MX
    BCS L_AB883A                    ; $AB8837  B0 01        MX
    RTS                             ; $AB8839  60           MX
L_AB883A:
    LDA $00F0                       ; $AB883A  AD F0 00     MX
    CMP #$00E0                      ; $AB883D  C9 E0 00     MX
    BCC L_AB8848                    ; $AB8840  90 06        MX
    CMP #$FFF0                      ; $AB8842  C9 F0 FF     MX
    BCS L_AB8848                    ; $AB8845  B0 01        MX
    RTS                             ; $AB8847  60           MX
L_AB8848:
    SEP #$20                        ; $AB8848  E2 20        MX
    LDA $00EC                       ; $AB884A  AD EC 00     mX
    BNE L_AB8855                    ; $AB884D  D0 06        mX
    LDA $ABE4CE                     ; $AB884F  AF CE E4 AB  mX
    BRA L_AB8859                    ; $AB8853  80 04        mX
L_AB8855:
    LDA $ABE4D2                     ; $AB8855  AF D2 E4 AB  mX
L_AB8859:
    ORA $0505                       ; $AB8859  0D 05 05     mX
    STA $0505                       ; $AB885C  8D 05 05     mX
    LDA $00F0                       ; $AB885F  AD F0 00     mX
    STA $0355                       ; $AB8862  8D 55 03     mX
    LDA $00EE                       ; $AB8865  AD EE 00     mX
    STA $0354                       ; $AB8868  8D 54 03     mX
    LDA $00F2                       ; $AB886B  AD F2 00     mX
    STA $0356                       ; $AB886E  8D 56 03     mX
    LDA $002A                       ; $AB8871  AD 2A 00     mX
    ORA $00F3                       ; $AB8874  0D F3 00     mX
    STA $0357                       ; $AB8877  8D 57 03     mX
    REP #$20                        ; $AB887A  C2 20        mX
    LDA #$0058                      ; $AB887C  A9 58 00     MX
    STA ($10)                       ; $AB887F  92 10        MX
    RTS                             ; $AB8881  60           MX
L_AB8882:
    STZ $00EC                       ; $AB8882  9C EC 00     MX
    LDA $00EE                       ; $AB8885  AD EE 00     MX
    CLC                             ; $AB8888  18           MX
    ADC #$0004                      ; $AB8889  69 04 00     MX
    STA $00EE                       ; $AB888C  8D EE 00     MX
    CMP #$0100                      ; $AB888F  C9 00 01     MX
    BCC L_AB889D                    ; $AB8892  90 09        MX
    INC $00EC                       ; $AB8894  EE EC 00     MX
    CMP #$FFF0                      ; $AB8897  C9 F0 FF     MX
    BCS L_AB889D                    ; $AB889A  B0 01        MX
    RTS                             ; $AB889C  60           MX
L_AB889D:
    LDA $00F0                       ; $AB889D  AD F0 00     MX
    CMP #$00E0                      ; $AB88A0  C9 E0 00     MX
    BCC L_AB88AB                    ; $AB88A3  90 06        MX
    CMP #$FFF0                      ; $AB88A5  C9 F0 FF     MX
    BCS L_AB88AB                    ; $AB88A8  B0 01        MX
    RTS                             ; $AB88AA  60           MX
L_AB88AB:
    SEP #$20                        ; $AB88AB  E2 20        MX
    LDA $00EC                       ; $AB88AD  AD EC 00     mX
    BNE L_AB88B8                    ; $AB88B0  D0 06        mX
    LDA $ABE4CF                     ; $AB88B2  AF CF E4 AB  mX
    BRA L_AB88BC                    ; $AB88B6  80 04        mX
L_AB88B8:
    LDA $ABE4D3                     ; $AB88B8  AF D3 E4 AB  mX
L_AB88BC:
    ORA $0505                       ; $AB88BC  0D 05 05     mX
    STA $0505                       ; $AB88BF  8D 05 05     mX
    LDA $00F0                       ; $AB88C2  AD F0 00     mX
    STA $0359                       ; $AB88C5  8D 59 03     mX
    LDA $00EE                       ; $AB88C8  AD EE 00     mX
    STA $0358                       ; $AB88CB  8D 58 03     mX
    LDA $00F2                       ; $AB88CE  AD F2 00     mX
    STA $035A                       ; $AB88D1  8D 5A 03     mX
    LDA $002A                       ; $AB88D4  AD 2A 00     mX
    ORA $00F3                       ; $AB88D7  0D F3 00     mX
    STA $035B                       ; $AB88DA  8D 5B 03     mX
    REP #$20                        ; $AB88DD  C2 20        mX
    LDA #$005C                      ; $AB88DF  A9 5C 00     MX
    STA ($10)                       ; $AB88E2  92 10        MX
    RTS                             ; $AB88E4  60           MX
L_AB88E5:
    STZ $00EC                       ; $AB88E5  9C EC 00     MX
    LDA $00EE                       ; $AB88E8  AD EE 00     MX
    CLC                             ; $AB88EB  18           MX
    ADC #$0004                      ; $AB88EC  69 04 00     MX
    STA $00EE                       ; $AB88EF  8D EE 00     MX
    CMP #$0100                      ; $AB88F2  C9 00 01     MX
    BCC L_AB8900                    ; $AB88F5  90 09        MX
    INC $00EC                       ; $AB88F7  EE EC 00     MX
    CMP #$FFF0                      ; $AB88FA  C9 F0 FF     MX
    BCS L_AB8900                    ; $AB88FD  B0 01        MX
    RTS                             ; $AB88FF  60           MX
L_AB8900:
    LDA $00F0                       ; $AB8900  AD F0 00     MX
    CMP #$00E0                      ; $AB8903  C9 E0 00     MX
    BCC L_AB890E                    ; $AB8906  90 06        MX
    CMP #$FFF0                      ; $AB8908  C9 F0 FF     MX
    BCS L_AB890E                    ; $AB890B  B0 01        MX
    RTS                             ; $AB890D  60           MX
L_AB890E:
    SEP #$20                        ; $AB890E  E2 20        MX
    LDA $00EC                       ; $AB8910  AD EC 00     mX
    BNE L_AB891B                    ; $AB8913  D0 06        mX
    LDA $ABE4D0                     ; $AB8915  AF D0 E4 AB  mX
    BRA L_AB891F                    ; $AB8919  80 04        mX
L_AB891B:
    LDA $ABE4D4                     ; $AB891B  AF D4 E4 AB  mX
L_AB891F:
    ORA $0505                       ; $AB891F  0D 05 05     mX
    STA $0505                       ; $AB8922  8D 05 05     mX
    LDA $00F0                       ; $AB8925  AD F0 00     mX
    STA $035D                       ; $AB8928  8D 5D 03     mX
    LDA $00EE                       ; $AB892B  AD EE 00     mX
    STA $035C                       ; $AB892E  8D 5C 03     mX
    LDA $00F2                       ; $AB8931  AD F2 00     mX
    STA $035E                       ; $AB8934  8D 5E 03     mX
    LDA $002A                       ; $AB8937  AD 2A 00     mX
    ORA $00F3                       ; $AB893A  0D F3 00     mX
    STA $035F                       ; $AB893D  8D 5F 03     mX
    REP #$20                        ; $AB8940  C2 20        mX
    LDA #$0060                      ; $AB8942  A9 60 00     MX
    STA ($10)                       ; $AB8945  92 10        MX
    RTS                             ; $AB8947  60           MX
L_AB8948:
    STZ $00EC                       ; $AB8948  9C EC 00     MX
    LDA $00EE                       ; $AB894B  AD EE 00     MX
    CLC                             ; $AB894E  18           MX
    ADC #$0004                      ; $AB894F  69 04 00     MX
    STA $00EE                       ; $AB8952  8D EE 00     MX
    CMP #$0100                      ; $AB8955  C9 00 01     MX
    BCC L_AB8963                    ; $AB8958  90 09        MX
    INC $00EC                       ; $AB895A  EE EC 00     MX
    CMP #$FFF0                      ; $AB895D  C9 F0 FF     MX
    BCS L_AB8963                    ; $AB8960  B0 01        MX
    RTS                             ; $AB8962  60           MX
L_AB8963:
    LDA $00F0                       ; $AB8963  AD F0 00     MX
    CMP #$00E0                      ; $AB8966  C9 E0 00     MX
    BCC L_AB8971                    ; $AB8969  90 06        MX
    CMP #$FFF0                      ; $AB896B  C9 F0 FF     MX
    BCS L_AB8971                    ; $AB896E  B0 01        MX
    RTS                             ; $AB8970  60           MX
L_AB8971:
    SEP #$20                        ; $AB8971  E2 20        MX
    LDA $00EC                       ; $AB8973  AD EC 00     mX
    BNE L_AB897E                    ; $AB8976  D0 06        mX
    LDA $ABE4CD                     ; $AB8978  AF CD E4 AB  mX
    BRA L_AB8982                    ; $AB897C  80 04        mX
L_AB897E:
    LDA $ABE4D1                     ; $AB897E  AF D1 E4 AB  mX
L_AB8982:
    ORA $0506                       ; $AB8982  0D 06 05     mX
    STA $0506                       ; $AB8985  8D 06 05     mX
    LDA $00F0                       ; $AB8988  AD F0 00     mX
    STA $0361                       ; $AB898B  8D 61 03     mX
    LDA $00EE                       ; $AB898E  AD EE 00     mX
    STA $0360                       ; $AB8991  8D 60 03     mX
    LDA $00F2                       ; $AB8994  AD F2 00     mX
    STA $0362                       ; $AB8997  8D 62 03     mX
    LDA $002A                       ; $AB899A  AD 2A 00     mX
    ORA $00F3                       ; $AB899D  0D F3 00     mX
    STA $0363                       ; $AB89A0  8D 63 03     mX
    REP #$20                        ; $AB89A3  C2 20        mX
    LDA #$0064                      ; $AB89A5  A9 64 00     MX
    STA ($10)                       ; $AB89A8  92 10        MX
    RTS                             ; $AB89AA  60           MX
L_AB89AB:
    STZ $00EC                       ; $AB89AB  9C EC 00     MX
    LDA $00EE                       ; $AB89AE  AD EE 00     MX
    CLC                             ; $AB89B1  18           MX
    ADC #$0004                      ; $AB89B2  69 04 00     MX
    STA $00EE                       ; $AB89B5  8D EE 00     MX
    CMP #$0100                      ; $AB89B8  C9 00 01     MX
    BCC L_AB89C6                    ; $AB89BB  90 09        MX
    INC $00EC                       ; $AB89BD  EE EC 00     MX
    CMP #$FFF0                      ; $AB89C0  C9 F0 FF     MX
    BCS L_AB89C6                    ; $AB89C3  B0 01        MX
    RTS                             ; $AB89C5  60           MX
L_AB89C6:
    LDA $00F0                       ; $AB89C6  AD F0 00     MX
    CMP #$00E0                      ; $AB89C9  C9 E0 00     MX
    BCC L_AB89D4                    ; $AB89CC  90 06        MX
    CMP #$FFF0                      ; $AB89CE  C9 F0 FF     MX
    BCS L_AB89D4                    ; $AB89D1  B0 01        MX
    RTS                             ; $AB89D3  60           MX
L_AB89D4:
    SEP #$20                        ; $AB89D4  E2 20        MX
    LDA $00EC                       ; $AB89D6  AD EC 00     mX
    BNE L_AB89E1                    ; $AB89D9  D0 06        mX
    LDA $ABE4CE                     ; $AB89DB  AF CE E4 AB  mX
    BRA L_AB89E5                    ; $AB89DF  80 04        mX
L_AB89E1:
    LDA $ABE4D2                     ; $AB89E1  AF D2 E4 AB  mX
L_AB89E5:
    ORA $0506                       ; $AB89E5  0D 06 05     mX
    STA $0506                       ; $AB89E8  8D 06 05     mX
    LDA $00F0                       ; $AB89EB  AD F0 00     mX
    STA $0365                       ; $AB89EE  8D 65 03     mX
    LDA $00EE                       ; $AB89F1  AD EE 00     mX
    STA $0364                       ; $AB89F4  8D 64 03     mX
    LDA $00F2                       ; $AB89F7  AD F2 00     mX
    STA $0366                       ; $AB89FA  8D 66 03     mX
    LDA $002A                       ; $AB89FD  AD 2A 00     mX
    ORA $00F3                       ; $AB8A00  0D F3 00     mX
    STA $0367                       ; $AB8A03  8D 67 03     mX
    REP #$20                        ; $AB8A06  C2 20        mX
    LDA #$0068                      ; $AB8A08  A9 68 00     MX
    STA ($10)                       ; $AB8A0B  92 10        MX
    RTS                             ; $AB8A0D  60           MX
L_AB8A0E:
    STZ $00EC                       ; $AB8A0E  9C EC 00     MX
    LDA $00EE                       ; $AB8A11  AD EE 00     MX
    CLC                             ; $AB8A14  18           MX
    ADC #$0004                      ; $AB8A15  69 04 00     MX
    STA $00EE                       ; $AB8A18  8D EE 00     MX
    CMP #$0100                      ; $AB8A1B  C9 00 01     MX
    BCC L_AB8A29                    ; $AB8A1E  90 09        MX
    INC $00EC                       ; $AB8A20  EE EC 00     MX
    CMP #$FFF0                      ; $AB8A23  C9 F0 FF     MX
    BCS L_AB8A29                    ; $AB8A26  B0 01        MX
    RTS                             ; $AB8A28  60           MX
L_AB8A29:
    LDA $00F0                       ; $AB8A29  AD F0 00     MX
    CMP #$00E0                      ; $AB8A2C  C9 E0 00     MX
    BCC L_AB8A37                    ; $AB8A2F  90 06        MX
    CMP #$FFF0                      ; $AB8A31  C9 F0 FF     MX
    BCS L_AB8A37                    ; $AB8A34  B0 01        MX
    RTS                             ; $AB8A36  60           MX
L_AB8A37:
    SEP #$20                        ; $AB8A37  E2 20        MX
    LDA $00EC                       ; $AB8A39  AD EC 00     mX
    BNE L_AB8A44                    ; $AB8A3C  D0 06        mX
    LDA $ABE4CF                     ; $AB8A3E  AF CF E4 AB  mX
    BRA L_AB8A48                    ; $AB8A42  80 04        mX
L_AB8A44:
    LDA $ABE4D3                     ; $AB8A44  AF D3 E4 AB  mX
L_AB8A48:
    ORA $0506                       ; $AB8A48  0D 06 05     mX
    STA $0506                       ; $AB8A4B  8D 06 05     mX
    LDA $00F0                       ; $AB8A4E  AD F0 00     mX
    STA $0369                       ; $AB8A51  8D 69 03     mX
    LDA $00EE                       ; $AB8A54  AD EE 00     mX
    STA $0368                       ; $AB8A57  8D 68 03     mX
    LDA $00F2                       ; $AB8A5A  AD F2 00     mX
    STA $036A                       ; $AB8A5D  8D 6A 03     mX
    LDA $002A                       ; $AB8A60  AD 2A 00     mX
    ORA $00F3                       ; $AB8A63  0D F3 00     mX
    STA $036B                       ; $AB8A66  8D 6B 03     mX
    REP #$20                        ; $AB8A69  C2 20        mX
    LDA #$006C                      ; $AB8A6B  A9 6C 00     MX
    STA ($10)                       ; $AB8A6E  92 10        MX
    RTS                             ; $AB8A70  60           MX
L_AB8A71:
    STZ $00EC                       ; $AB8A71  9C EC 00     MX
    LDA $00EE                       ; $AB8A74  AD EE 00     MX
    CLC                             ; $AB8A77  18           MX
    ADC #$0004                      ; $AB8A78  69 04 00     MX
    STA $00EE                       ; $AB8A7B  8D EE 00     MX
    CMP #$0100                      ; $AB8A7E  C9 00 01     MX
    BCC L_AB8A8C                    ; $AB8A81  90 09        MX
    INC $00EC                       ; $AB8A83  EE EC 00     MX
    CMP #$FFF0                      ; $AB8A86  C9 F0 FF     MX
    BCS L_AB8A8C                    ; $AB8A89  B0 01        MX
    RTS                             ; $AB8A8B  60           MX
L_AB8A8C:
    LDA $00F0                       ; $AB8A8C  AD F0 00     MX
    CMP #$00E0                      ; $AB8A8F  C9 E0 00     MX
    BCC L_AB8A9A                    ; $AB8A92  90 06        MX
    CMP #$FFF0                      ; $AB8A94  C9 F0 FF     MX
    BCS L_AB8A9A                    ; $AB8A97  B0 01        MX
    RTS                             ; $AB8A99  60           MX
L_AB8A9A:
    SEP #$20                        ; $AB8A9A  E2 20        MX
    LDA $00EC                       ; $AB8A9C  AD EC 00     mX
    BNE L_AB8AA7                    ; $AB8A9F  D0 06        mX
    LDA $ABE4D0                     ; $AB8AA1  AF D0 E4 AB  mX
    BRA L_AB8AAB                    ; $AB8AA5  80 04        mX
L_AB8AA7:
    LDA $ABE4D4                     ; $AB8AA7  AF D4 E4 AB  mX
L_AB8AAB:
    ORA $0506                       ; $AB8AAB  0D 06 05     mX
    STA $0506                       ; $AB8AAE  8D 06 05     mX
    LDA $00F0                       ; $AB8AB1  AD F0 00     mX
    STA $036D                       ; $AB8AB4  8D 6D 03     mX
    LDA $00EE                       ; $AB8AB7  AD EE 00     mX
    STA $036C                       ; $AB8ABA  8D 6C 03     mX
    LDA $00F2                       ; $AB8ABD  AD F2 00     mX
    STA $036E                       ; $AB8AC0  8D 6E 03     mX
    LDA $002A                       ; $AB8AC3  AD 2A 00     mX
    ORA $00F3                       ; $AB8AC6  0D F3 00     mX
    STA $036F                       ; $AB8AC9  8D 6F 03     mX
    REP #$20                        ; $AB8ACC  C2 20        mX
    LDA #$0070                      ; $AB8ACE  A9 70 00     MX
    STA ($10)                       ; $AB8AD1  92 10        MX
    RTS                             ; $AB8AD3  60           MX
L_AB8AD4:
    STZ $00EC                       ; $AB8AD4  9C EC 00     MX
    LDA $00EE                       ; $AB8AD7  AD EE 00     MX
    CLC                             ; $AB8ADA  18           MX
    ADC #$0004                      ; $AB8ADB  69 04 00     MX
    STA $00EE                       ; $AB8ADE  8D EE 00     MX
    CMP #$0100                      ; $AB8AE1  C9 00 01     MX
    BCC L_AB8AEF                    ; $AB8AE4  90 09        MX
    INC $00EC                       ; $AB8AE6  EE EC 00     MX
    CMP #$FFF0                      ; $AB8AE9  C9 F0 FF     MX
    BCS L_AB8AEF                    ; $AB8AEC  B0 01        MX
    RTS                             ; $AB8AEE  60           MX
L_AB8AEF:
    LDA $00F0                       ; $AB8AEF  AD F0 00     MX
    CMP #$00E0                      ; $AB8AF2  C9 E0 00     MX
    BCC L_AB8AFD                    ; $AB8AF5  90 06        MX
    CMP #$FFF0                      ; $AB8AF7  C9 F0 FF     MX
    BCS L_AB8AFD                    ; $AB8AFA  B0 01        MX
    RTS                             ; $AB8AFC  60           MX
L_AB8AFD:
    SEP #$20                        ; $AB8AFD  E2 20        MX
    LDA $00EC                       ; $AB8AFF  AD EC 00     mX
    BNE L_AB8B0A                    ; $AB8B02  D0 06        mX
    LDA $ABE4CD                     ; $AB8B04  AF CD E4 AB  mX
    BRA L_AB8B0E                    ; $AB8B08  80 04        mX
L_AB8B0A:
    LDA $ABE4D1                     ; $AB8B0A  AF D1 E4 AB  mX
L_AB8B0E:
    ORA $0507                       ; $AB8B0E  0D 07 05     mX
    STA $0507                       ; $AB8B11  8D 07 05     mX
    LDA $00F0                       ; $AB8B14  AD F0 00     mX
    STA $0371                       ; $AB8B17  8D 71 03     mX
    LDA $00EE                       ; $AB8B1A  AD EE 00     mX
    STA $0370                       ; $AB8B1D  8D 70 03     mX
    LDA $00F2                       ; $AB8B20  AD F2 00     mX
    STA $0372                       ; $AB8B23  8D 72 03     mX
    LDA $002A                       ; $AB8B26  AD 2A 00     mX
    ORA $00F3                       ; $AB8B29  0D F3 00     mX
    STA $0373                       ; $AB8B2C  8D 73 03     mX
    REP #$20                        ; $AB8B2F  C2 20        mX
    LDA #$0074                      ; $AB8B31  A9 74 00     MX
    STA ($10)                       ; $AB8B34  92 10        MX
    RTS                             ; $AB8B36  60           MX
L_AB8B37:
    STZ $00EC                       ; $AB8B37  9C EC 00     MX
    LDA $00EE                       ; $AB8B3A  AD EE 00     MX
    CLC                             ; $AB8B3D  18           MX
    ADC #$0004                      ; $AB8B3E  69 04 00     MX
    STA $00EE                       ; $AB8B41  8D EE 00     MX
    CMP #$0100                      ; $AB8B44  C9 00 01     MX
    BCC L_AB8B52                    ; $AB8B47  90 09        MX
    INC $00EC                       ; $AB8B49  EE EC 00     MX
    CMP #$FFF0                      ; $AB8B4C  C9 F0 FF     MX
    BCS L_AB8B52                    ; $AB8B4F  B0 01        MX
    RTS                             ; $AB8B51  60           MX
L_AB8B52:
    LDA $00F0                       ; $AB8B52  AD F0 00     MX
    CMP #$00E0                      ; $AB8B55  C9 E0 00     MX
    BCC L_AB8B60                    ; $AB8B58  90 06        MX
    CMP #$FFF0                      ; $AB8B5A  C9 F0 FF     MX
    BCS L_AB8B60                    ; $AB8B5D  B0 01        MX
    RTS                             ; $AB8B5F  60           MX
L_AB8B60:
    SEP #$20                        ; $AB8B60  E2 20        MX
    LDA $00EC                       ; $AB8B62  AD EC 00     mX
    BNE L_AB8B6D                    ; $AB8B65  D0 06        mX
    LDA $ABE4CE                     ; $AB8B67  AF CE E4 AB  mX
    BRA L_AB8B71                    ; $AB8B6B  80 04        mX
L_AB8B6D:
    LDA $ABE4D2                     ; $AB8B6D  AF D2 E4 AB  mX
L_AB8B71:
    ORA $0507                       ; $AB8B71  0D 07 05     mX
    STA $0507                       ; $AB8B74  8D 07 05     mX
    LDA $00F0                       ; $AB8B77  AD F0 00     mX
    STA $0375                       ; $AB8B7A  8D 75 03     mX
    LDA $00EE                       ; $AB8B7D  AD EE 00     mX
    STA $0374                       ; $AB8B80  8D 74 03     mX
    LDA $00F2                       ; $AB8B83  AD F2 00     mX
    STA $0376                       ; $AB8B86  8D 76 03     mX
    LDA $002A                       ; $AB8B89  AD 2A 00     mX
    ORA $00F3                       ; $AB8B8C  0D F3 00     mX
    STA $0377                       ; $AB8B8F  8D 77 03     mX
    REP #$20                        ; $AB8B92  C2 20        mX
    LDA #$0078                      ; $AB8B94  A9 78 00     MX
    STA ($10)                       ; $AB8B97  92 10        MX
    RTS                             ; $AB8B99  60           MX
L_AB8B9A:
    STZ $00EC                       ; $AB8B9A  9C EC 00     MX
    LDA $00EE                       ; $AB8B9D  AD EE 00     MX
    CLC                             ; $AB8BA0  18           MX
    ADC #$0004                      ; $AB8BA1  69 04 00     MX
    STA $00EE                       ; $AB8BA4  8D EE 00     MX
    CMP #$0100                      ; $AB8BA7  C9 00 01     MX
    BCC L_AB8BB5                    ; $AB8BAA  90 09        MX
    INC $00EC                       ; $AB8BAC  EE EC 00     MX
    CMP #$FFF0                      ; $AB8BAF  C9 F0 FF     MX
    BCS L_AB8BB5                    ; $AB8BB2  B0 01        MX
    RTS                             ; $AB8BB4  60           MX
L_AB8BB5:
    LDA $00F0                       ; $AB8BB5  AD F0 00     MX
    CMP #$00E0                      ; $AB8BB8  C9 E0 00     MX
    BCC L_AB8BC3                    ; $AB8BBB  90 06        MX
    CMP #$FFF0                      ; $AB8BBD  C9 F0 FF     MX
    BCS L_AB8BC3                    ; $AB8BC0  B0 01        MX
    RTS                             ; $AB8BC2  60           MX
L_AB8BC3:
    SEP #$20                        ; $AB8BC3  E2 20        MX
    LDA $00EC                       ; $AB8BC5  AD EC 00     mX
    BNE L_AB8BD0                    ; $AB8BC8  D0 06        mX
    LDA $ABE4CF                     ; $AB8BCA  AF CF E4 AB  mX
    BRA L_AB8BD4                    ; $AB8BCE  80 04        mX
L_AB8BD0:
    LDA $ABE4D3                     ; $AB8BD0  AF D3 E4 AB  mX
L_AB8BD4:
    ORA $0507                       ; $AB8BD4  0D 07 05     mX
    STA $0507                       ; $AB8BD7  8D 07 05     mX
    LDA $00F0                       ; $AB8BDA  AD F0 00     mX
    STA $0379                       ; $AB8BDD  8D 79 03     mX
    LDA $00EE                       ; $AB8BE0  AD EE 00     mX
    STA $0378                       ; $AB8BE3  8D 78 03     mX
    LDA $00F2                       ; $AB8BE6  AD F2 00     mX
    STA $037A                       ; $AB8BE9  8D 7A 03     mX
    LDA $002A                       ; $AB8BEC  AD 2A 00     mX
    ORA $00F3                       ; $AB8BEF  0D F3 00     mX
    STA $037B                       ; $AB8BF2  8D 7B 03     mX
    REP #$20                        ; $AB8BF5  C2 20        mX
    LDA #$007C                      ; $AB8BF7  A9 7C 00     MX
    STA ($10)                       ; $AB8BFA  92 10        MX
    RTS                             ; $AB8BFC  60           MX
L_AB8BFD:
    STZ $00EC                       ; $AB8BFD  9C EC 00     MX
    LDA $00EE                       ; $AB8C00  AD EE 00     MX
    CLC                             ; $AB8C03  18           MX
    ADC #$0004                      ; $AB8C04  69 04 00     MX
    STA $00EE                       ; $AB8C07  8D EE 00     MX
    CMP #$0100                      ; $AB8C0A  C9 00 01     MX
    BCC L_AB8C18                    ; $AB8C0D  90 09        MX
    INC $00EC                       ; $AB8C0F  EE EC 00     MX
    CMP #$FFF0                      ; $AB8C12  C9 F0 FF     MX
    BCS L_AB8C18                    ; $AB8C15  B0 01        MX
    RTS                             ; $AB8C17  60           MX
L_AB8C18:
    LDA $00F0                       ; $AB8C18  AD F0 00     MX
    CMP #$00E0                      ; $AB8C1B  C9 E0 00     MX
    BCC L_AB8C26                    ; $AB8C1E  90 06        MX
    CMP #$FFF0                      ; $AB8C20  C9 F0 FF     MX
    BCS L_AB8C26                    ; $AB8C23  B0 01        MX
    RTS                             ; $AB8C25  60           MX
L_AB8C26:
    SEP #$20                        ; $AB8C26  E2 20        MX
    LDA $00EC                       ; $AB8C28  AD EC 00     mX
    BNE L_AB8C33                    ; $AB8C2B  D0 06        mX
    LDA $ABE4D0                     ; $AB8C2D  AF D0 E4 AB  mX
    BRA L_AB8C37                    ; $AB8C31  80 04        mX
L_AB8C33:
    LDA $ABE4D4                     ; $AB8C33  AF D4 E4 AB  mX
L_AB8C37:
    ORA $0507                       ; $AB8C37  0D 07 05     mX
    STA $0507                       ; $AB8C3A  8D 07 05     mX
    LDA $00F0                       ; $AB8C3D  AD F0 00     mX
    STA $037D                       ; $AB8C40  8D 7D 03     mX
    LDA $00EE                       ; $AB8C43  AD EE 00     mX
    STA $037C                       ; $AB8C46  8D 7C 03     mX
    LDA $00F2                       ; $AB8C49  AD F2 00     mX
    STA $037E                       ; $AB8C4C  8D 7E 03     mX
    LDA $002A                       ; $AB8C4F  AD 2A 00     mX
    ORA $00F3                       ; $AB8C52  0D F3 00     mX
    STA $037F                       ; $AB8C55  8D 7F 03     mX
    REP #$20                        ; $AB8C58  C2 20        mX
    LDA #$0080                      ; $AB8C5A  A9 80 00     MX
    STA ($10)                       ; $AB8C5D  92 10        MX
    RTS                             ; $AB8C5F  60           MX
L_AB8C60:
    STZ $00EC                       ; $AB8C60  9C EC 00     MX
    LDA $00EE                       ; $AB8C63  AD EE 00     MX
    CLC                             ; $AB8C66  18           MX
    ADC #$0004                      ; $AB8C67  69 04 00     MX
    STA $00EE                       ; $AB8C6A  8D EE 00     MX
    CMP #$0100                      ; $AB8C6D  C9 00 01     MX
    BCC L_AB8C7B                    ; $AB8C70  90 09        MX
    INC $00EC                       ; $AB8C72  EE EC 00     MX
    CMP #$FFF0                      ; $AB8C75  C9 F0 FF     MX
    BCS L_AB8C7B                    ; $AB8C78  B0 01        MX
    RTS                             ; $AB8C7A  60           MX
L_AB8C7B:
    LDA $00F0                       ; $AB8C7B  AD F0 00     MX
    CMP #$00E0                      ; $AB8C7E  C9 E0 00     MX
    BCC L_AB8C89                    ; $AB8C81  90 06        MX
    CMP #$FFF0                      ; $AB8C83  C9 F0 FF     MX
    BCS L_AB8C89                    ; $AB8C86  B0 01        MX
    RTS                             ; $AB8C88  60           MX
L_AB8C89:
    SEP #$20                        ; $AB8C89  E2 20        MX
    LDA $00EC                       ; $AB8C8B  AD EC 00     mX
    BNE L_AB8C96                    ; $AB8C8E  D0 06        mX
    LDA $ABE4CD                     ; $AB8C90  AF CD E4 AB  mX
    BRA L_AB8C9A                    ; $AB8C94  80 04        mX
L_AB8C96:
    LDA $ABE4D1                     ; $AB8C96  AF D1 E4 AB  mX
L_AB8C9A:
    ORA $0508                       ; $AB8C9A  0D 08 05     mX
    STA $0508                       ; $AB8C9D  8D 08 05     mX
    LDA $00F0                       ; $AB8CA0  AD F0 00     mX
    STA $0381                       ; $AB8CA3  8D 81 03     mX
    LDA $00EE                       ; $AB8CA6  AD EE 00     mX
    STA $0380                       ; $AB8CA9  8D 80 03     mX
    LDA $00F2                       ; $AB8CAC  AD F2 00     mX
    STA $0382                       ; $AB8CAF  8D 82 03     mX
    LDA $002A                       ; $AB8CB2  AD 2A 00     mX
    ORA $00F3                       ; $AB8CB5  0D F3 00     mX
    STA $0383                       ; $AB8CB8  8D 83 03     mX
    REP #$20                        ; $AB8CBB  C2 20        mX
    LDA #$0084                      ; $AB8CBD  A9 84 00     MX
    STA ($10)                       ; $AB8CC0  92 10        MX
    RTS                             ; $AB8CC2  60           MX
L_AB8CC3:
    STZ $00EC                       ; $AB8CC3  9C EC 00     MX
    LDA $00EE                       ; $AB8CC6  AD EE 00     MX
    CLC                             ; $AB8CC9  18           MX
    ADC #$0004                      ; $AB8CCA  69 04 00     MX
    STA $00EE                       ; $AB8CCD  8D EE 00     MX
    CMP #$0100                      ; $AB8CD0  C9 00 01     MX
    BCC L_AB8CDE                    ; $AB8CD3  90 09        MX
    INC $00EC                       ; $AB8CD5  EE EC 00     MX
    CMP #$FFF0                      ; $AB8CD8  C9 F0 FF     MX
    BCS L_AB8CDE                    ; $AB8CDB  B0 01        MX
    RTS                             ; $AB8CDD  60           MX
L_AB8CDE:
    LDA $00F0                       ; $AB8CDE  AD F0 00     MX
    CMP #$00E0                      ; $AB8CE1  C9 E0 00     MX
    BCC L_AB8CEC                    ; $AB8CE4  90 06        MX
    CMP #$FFF0                      ; $AB8CE6  C9 F0 FF     MX
    BCS L_AB8CEC                    ; $AB8CE9  B0 01        MX
    RTS                             ; $AB8CEB  60           MX
L_AB8CEC:
    SEP #$20                        ; $AB8CEC  E2 20        MX
    LDA $00EC                       ; $AB8CEE  AD EC 00     mX
    BNE L_AB8CF9                    ; $AB8CF1  D0 06        mX
    LDA $ABE4CE                     ; $AB8CF3  AF CE E4 AB  mX
    BRA L_AB8CFD                    ; $AB8CF7  80 04        mX
L_AB8CF9:
    LDA $ABE4D2                     ; $AB8CF9  AF D2 E4 AB  mX
L_AB8CFD:
    ORA $0508                       ; $AB8CFD  0D 08 05     mX
    STA $0508                       ; $AB8D00  8D 08 05     mX
    LDA $00F0                       ; $AB8D03  AD F0 00     mX
    STA $0385                       ; $AB8D06  8D 85 03     mX
    LDA $00EE                       ; $AB8D09  AD EE 00     mX
    STA $0384                       ; $AB8D0C  8D 84 03     mX
    LDA $00F2                       ; $AB8D0F  AD F2 00     mX
    STA $0386                       ; $AB8D12  8D 86 03     mX
    LDA $002A                       ; $AB8D15  AD 2A 00     mX
    ORA $00F3                       ; $AB8D18  0D F3 00     mX
    STA $0387                       ; $AB8D1B  8D 87 03     mX
    REP #$20                        ; $AB8D1E  C2 20        mX
    LDA #$0088                      ; $AB8D20  A9 88 00     MX
    STA ($10)                       ; $AB8D23  92 10        MX
    RTS                             ; $AB8D25  60           MX
L_AB8D26:
    STZ $00EC                       ; $AB8D26  9C EC 00     MX
    LDA $00EE                       ; $AB8D29  AD EE 00     MX
    CLC                             ; $AB8D2C  18           MX
    ADC #$0004                      ; $AB8D2D  69 04 00     MX
    STA $00EE                       ; $AB8D30  8D EE 00     MX
    CMP #$0100                      ; $AB8D33  C9 00 01     MX
    BCC L_AB8D41                    ; $AB8D36  90 09        MX
    INC $00EC                       ; $AB8D38  EE EC 00     MX
    CMP #$FFF0                      ; $AB8D3B  C9 F0 FF     MX
    BCS L_AB8D41                    ; $AB8D3E  B0 01        MX
    RTS                             ; $AB8D40  60           MX
L_AB8D41:
    LDA $00F0                       ; $AB8D41  AD F0 00     MX
    CMP #$00E0                      ; $AB8D44  C9 E0 00     MX
    BCC L_AB8D4F                    ; $AB8D47  90 06        MX
    CMP #$FFF0                      ; $AB8D49  C9 F0 FF     MX
    BCS L_AB8D4F                    ; $AB8D4C  B0 01        MX
    RTS                             ; $AB8D4E  60           MX
L_AB8D4F:
    SEP #$20                        ; $AB8D4F  E2 20        MX
    LDA $00EC                       ; $AB8D51  AD EC 00     mX
    BNE L_AB8D5C                    ; $AB8D54  D0 06        mX
    LDA $ABE4CF                     ; $AB8D56  AF CF E4 AB  mX
    BRA L_AB8D60                    ; $AB8D5A  80 04        mX
L_AB8D5C:
    LDA $ABE4D3                     ; $AB8D5C  AF D3 E4 AB  mX
L_AB8D60:
    ORA $0508                       ; $AB8D60  0D 08 05     mX
    STA $0508                       ; $AB8D63  8D 08 05     mX
    LDA $00F0                       ; $AB8D66  AD F0 00     mX
    STA $0389                       ; $AB8D69  8D 89 03     mX
    LDA $00EE                       ; $AB8D6C  AD EE 00     mX
    STA $0388                       ; $AB8D6F  8D 88 03     mX
    LDA $00F2                       ; $AB8D72  AD F2 00     mX
    STA $038A                       ; $AB8D75  8D 8A 03     mX
    LDA $002A                       ; $AB8D78  AD 2A 00     mX
    ORA $00F3                       ; $AB8D7B  0D F3 00     mX
    STA $038B                       ; $AB8D7E  8D 8B 03     mX
    REP #$20                        ; $AB8D81  C2 20        mX
    LDA #$008C                      ; $AB8D83  A9 8C 00     MX
    STA ($10)                       ; $AB8D86  92 10        MX
    RTS                             ; $AB8D88  60           MX
L_AB8D89:
    STZ $00EC                       ; $AB8D89  9C EC 00     MX
    LDA $00EE                       ; $AB8D8C  AD EE 00     MX
    CLC                             ; $AB8D8F  18           MX
    ADC #$0004                      ; $AB8D90  69 04 00     MX
    STA $00EE                       ; $AB8D93  8D EE 00     MX
    CMP #$0100                      ; $AB8D96  C9 00 01     MX
    BCC L_AB8DA4                    ; $AB8D99  90 09        MX
    INC $00EC                       ; $AB8D9B  EE EC 00     MX
    CMP #$FFF0                      ; $AB8D9E  C9 F0 FF     MX
    BCS L_AB8DA4                    ; $AB8DA1  B0 01        MX
    RTS                             ; $AB8DA3  60           MX
L_AB8DA4:
    LDA $00F0                       ; $AB8DA4  AD F0 00     MX
    CMP #$00E0                      ; $AB8DA7  C9 E0 00     MX
    BCC L_AB8DB2                    ; $AB8DAA  90 06        MX
    CMP #$FFF0                      ; $AB8DAC  C9 F0 FF     MX
    BCS L_AB8DB2                    ; $AB8DAF  B0 01        MX
    RTS                             ; $AB8DB1  60           MX
L_AB8DB2:
    SEP #$20                        ; $AB8DB2  E2 20        MX
    LDA $00EC                       ; $AB8DB4  AD EC 00     mX
    BNE L_AB8DBF                    ; $AB8DB7  D0 06        mX
    LDA $ABE4D0                     ; $AB8DB9  AF D0 E4 AB  mX
    BRA L_AB8DC3                    ; $AB8DBD  80 04        mX
L_AB8DBF:
    LDA $ABE4D4                     ; $AB8DBF  AF D4 E4 AB  mX
L_AB8DC3:
    ORA $0508                       ; $AB8DC3  0D 08 05     mX
    STA $0508                       ; $AB8DC6  8D 08 05     mX
    LDA $00F0                       ; $AB8DC9  AD F0 00     mX
    STA $038D                       ; $AB8DCC  8D 8D 03     mX
    LDA $00EE                       ; $AB8DCF  AD EE 00     mX
    STA $038C                       ; $AB8DD2  8D 8C 03     mX
    LDA $00F2                       ; $AB8DD5  AD F2 00     mX
    STA $038E                       ; $AB8DD8  8D 8E 03     mX
    LDA $002A                       ; $AB8DDB  AD 2A 00     mX
    ORA $00F3                       ; $AB8DDE  0D F3 00     mX
    STA $038F                       ; $AB8DE1  8D 8F 03     mX
    REP #$20                        ; $AB8DE4  C2 20        mX
    LDA #$0090                      ; $AB8DE6  A9 90 00     MX
    STA ($10)                       ; $AB8DE9  92 10        MX
    RTS                             ; $AB8DEB  60           MX
L_AB8DEC:
    STZ $00EC                       ; $AB8DEC  9C EC 00     MX
    LDA $00EE                       ; $AB8DEF  AD EE 00     MX
    CLC                             ; $AB8DF2  18           MX
    ADC #$0004                      ; $AB8DF3  69 04 00     MX
    STA $00EE                       ; $AB8DF6  8D EE 00     MX
    CMP #$0100                      ; $AB8DF9  C9 00 01     MX
    BCC L_AB8E07                    ; $AB8DFC  90 09        MX
    INC $00EC                       ; $AB8DFE  EE EC 00     MX
    CMP #$FFF0                      ; $AB8E01  C9 F0 FF     MX
    BCS L_AB8E07                    ; $AB8E04  B0 01        MX
    RTS                             ; $AB8E06  60           MX
L_AB8E07:
    LDA $00F0                       ; $AB8E07  AD F0 00     MX
    CMP #$00E0                      ; $AB8E0A  C9 E0 00     MX
    BCC L_AB8E15                    ; $AB8E0D  90 06        MX
    CMP #$FFF0                      ; $AB8E0F  C9 F0 FF     MX
    BCS L_AB8E15                    ; $AB8E12  B0 01        MX
    RTS                             ; $AB8E14  60           MX
L_AB8E15:
    SEP #$20                        ; $AB8E15  E2 20        MX
    LDA $00EC                       ; $AB8E17  AD EC 00     mX
    BNE L_AB8E22                    ; $AB8E1A  D0 06        mX
    LDA $ABE4CD                     ; $AB8E1C  AF CD E4 AB  mX
    BRA L_AB8E26                    ; $AB8E20  80 04        mX
L_AB8E22:
    LDA $ABE4D1                     ; $AB8E22  AF D1 E4 AB  mX
L_AB8E26:
    ORA $0509                       ; $AB8E26  0D 09 05     mX
    STA $0509                       ; $AB8E29  8D 09 05     mX
    LDA $00F0                       ; $AB8E2C  AD F0 00     mX
    STA $0391                       ; $AB8E2F  8D 91 03     mX
    LDA $00EE                       ; $AB8E32  AD EE 00     mX
    STA $0390                       ; $AB8E35  8D 90 03     mX
    LDA $00F2                       ; $AB8E38  AD F2 00     mX
    STA $0392                       ; $AB8E3B  8D 92 03     mX
    LDA $002A                       ; $AB8E3E  AD 2A 00     mX
    ORA $00F3                       ; $AB8E41  0D F3 00     mX
    STA $0393                       ; $AB8E44  8D 93 03     mX
    REP #$20                        ; $AB8E47  C2 20        mX
    LDA #$0094                      ; $AB8E49  A9 94 00     MX
    STA ($10)                       ; $AB8E4C  92 10        MX
    RTS                             ; $AB8E4E  60           MX
L_AB8E4F:
    STZ $00EC                       ; $AB8E4F  9C EC 00     MX
    LDA $00EE                       ; $AB8E52  AD EE 00     MX
    CLC                             ; $AB8E55  18           MX
    ADC #$0004                      ; $AB8E56  69 04 00     MX
    STA $00EE                       ; $AB8E59  8D EE 00     MX
    CMP #$0100                      ; $AB8E5C  C9 00 01     MX
    BCC L_AB8E6A                    ; $AB8E5F  90 09        MX
    INC $00EC                       ; $AB8E61  EE EC 00     MX
    CMP #$FFF0                      ; $AB8E64  C9 F0 FF     MX
    BCS L_AB8E6A                    ; $AB8E67  B0 01        MX
    RTS                             ; $AB8E69  60           MX
L_AB8E6A:
    LDA $00F0                       ; $AB8E6A  AD F0 00     MX
    CMP #$00E0                      ; $AB8E6D  C9 E0 00     MX
    BCC L_AB8E78                    ; $AB8E70  90 06        MX
    CMP #$FFF0                      ; $AB8E72  C9 F0 FF     MX
    BCS L_AB8E78                    ; $AB8E75  B0 01        MX
    RTS                             ; $AB8E77  60           MX
L_AB8E78:
    SEP #$20                        ; $AB8E78  E2 20        MX
    LDA $00EC                       ; $AB8E7A  AD EC 00     mX
    BNE L_AB8E85                    ; $AB8E7D  D0 06        mX
    LDA $ABE4CE                     ; $AB8E7F  AF CE E4 AB  mX
    BRA L_AB8E89                    ; $AB8E83  80 04        mX
L_AB8E85:
    LDA $ABE4D2                     ; $AB8E85  AF D2 E4 AB  mX
L_AB8E89:
    ORA $0509                       ; $AB8E89  0D 09 05     mX
    STA $0509                       ; $AB8E8C  8D 09 05     mX
    LDA $00F0                       ; $AB8E8F  AD F0 00     mX
    STA $0395                       ; $AB8E92  8D 95 03     mX
    LDA $00EE                       ; $AB8E95  AD EE 00     mX
    STA $0394                       ; $AB8E98  8D 94 03     mX
    LDA $00F2                       ; $AB8E9B  AD F2 00     mX
    STA $0396                       ; $AB8E9E  8D 96 03     mX
    LDA $002A                       ; $AB8EA1  AD 2A 00     mX
    ORA $00F3                       ; $AB8EA4  0D F3 00     mX
    STA $0397                       ; $AB8EA7  8D 97 03     mX
    REP #$20                        ; $AB8EAA  C2 20        mX
    LDA #$0098                      ; $AB8EAC  A9 98 00     MX
    STA ($10)                       ; $AB8EAF  92 10        MX
    RTS                             ; $AB8EB1  60           MX
L_AB8EB2:
    STZ $00EC                       ; $AB8EB2  9C EC 00     MX
    LDA $00EE                       ; $AB8EB5  AD EE 00     MX
    CLC                             ; $AB8EB8  18           MX
    ADC #$0004                      ; $AB8EB9  69 04 00     MX
    STA $00EE                       ; $AB8EBC  8D EE 00     MX
    CMP #$0100                      ; $AB8EBF  C9 00 01     MX
    BCC L_AB8ECD                    ; $AB8EC2  90 09        MX
    INC $00EC                       ; $AB8EC4  EE EC 00     MX
    CMP #$FFF0                      ; $AB8EC7  C9 F0 FF     MX
    BCS L_AB8ECD                    ; $AB8ECA  B0 01        MX
    RTS                             ; $AB8ECC  60           MX
L_AB8ECD:
    LDA $00F0                       ; $AB8ECD  AD F0 00     MX
    CMP #$00E0                      ; $AB8ED0  C9 E0 00     MX
    BCC L_AB8EDB                    ; $AB8ED3  90 06        MX
    CMP #$FFF0                      ; $AB8ED5  C9 F0 FF     MX
    BCS L_AB8EDB                    ; $AB8ED8  B0 01        MX
    RTS                             ; $AB8EDA  60           MX
L_AB8EDB:
    SEP #$20                        ; $AB8EDB  E2 20        MX
    LDA $00EC                       ; $AB8EDD  AD EC 00     mX
    BNE L_AB8EE8                    ; $AB8EE0  D0 06        mX
    LDA $ABE4CF                     ; $AB8EE2  AF CF E4 AB  mX
    BRA L_AB8EEC                    ; $AB8EE6  80 04        mX
L_AB8EE8:
    LDA $ABE4D3                     ; $AB8EE8  AF D3 E4 AB  mX
L_AB8EEC:
    ORA $0509                       ; $AB8EEC  0D 09 05     mX
    STA $0509                       ; $AB8EEF  8D 09 05     mX
    LDA $00F0                       ; $AB8EF2  AD F0 00     mX
    STA $0399                       ; $AB8EF5  8D 99 03     mX
    LDA $00EE                       ; $AB8EF8  AD EE 00     mX
    STA $0398                       ; $AB8EFB  8D 98 03     mX
    LDA $00F2                       ; $AB8EFE  AD F2 00     mX
    STA $039A                       ; $AB8F01  8D 9A 03     mX
    LDA $002A                       ; $AB8F04  AD 2A 00     mX
    ORA $00F3                       ; $AB8F07  0D F3 00     mX
    STA $039B                       ; $AB8F0A  8D 9B 03     mX
    REP #$20                        ; $AB8F0D  C2 20        mX
    LDA #$009C                      ; $AB8F0F  A9 9C 00     MX
    STA ($10)                       ; $AB8F12  92 10        MX
    RTS                             ; $AB8F14  60           MX
L_AB8F15:
    STZ $00EC                       ; $AB8F15  9C EC 00     MX
    LDA $00EE                       ; $AB8F18  AD EE 00     MX
    CLC                             ; $AB8F1B  18           MX
    ADC #$0004                      ; $AB8F1C  69 04 00     MX
    STA $00EE                       ; $AB8F1F  8D EE 00     MX
    CMP #$0100                      ; $AB8F22  C9 00 01     MX
    BCC L_AB8F30                    ; $AB8F25  90 09        MX
    INC $00EC                       ; $AB8F27  EE EC 00     MX
    CMP #$FFF0                      ; $AB8F2A  C9 F0 FF     MX
    BCS L_AB8F30                    ; $AB8F2D  B0 01        MX
    RTS                             ; $AB8F2F  60           MX
L_AB8F30:
    LDA $00F0                       ; $AB8F30  AD F0 00     MX
    CMP #$00E0                      ; $AB8F33  C9 E0 00     MX
    BCC L_AB8F3E                    ; $AB8F36  90 06        MX
    CMP #$FFF0                      ; $AB8F38  C9 F0 FF     MX
    BCS L_AB8F3E                    ; $AB8F3B  B0 01        MX
    RTS                             ; $AB8F3D  60           MX
L_AB8F3E:
    SEP #$20                        ; $AB8F3E  E2 20        MX
    LDA $00EC                       ; $AB8F40  AD EC 00     mX
    BNE L_AB8F4B                    ; $AB8F43  D0 06        mX
    LDA $ABE4D0                     ; $AB8F45  AF D0 E4 AB  mX
    BRA L_AB8F4F                    ; $AB8F49  80 04        mX
L_AB8F4B:
    LDA $ABE4D4                     ; $AB8F4B  AF D4 E4 AB  mX
L_AB8F4F:
    ORA $0509                       ; $AB8F4F  0D 09 05     mX
    STA $0509                       ; $AB8F52  8D 09 05     mX
    LDA $00F0                       ; $AB8F55  AD F0 00     mX
    STA $039D                       ; $AB8F58  8D 9D 03     mX
    LDA $00EE                       ; $AB8F5B  AD EE 00     mX
    STA $039C                       ; $AB8F5E  8D 9C 03     mX
    LDA $00F2                       ; $AB8F61  AD F2 00     mX
    STA $039E                       ; $AB8F64  8D 9E 03     mX
    LDA $002A                       ; $AB8F67  AD 2A 00     mX
    ORA $00F3                       ; $AB8F6A  0D F3 00     mX
    STA $039F                       ; $AB8F6D  8D 9F 03     mX
    REP #$20                        ; $AB8F70  C2 20        mX
    LDA #$00A0                      ; $AB8F72  A9 A0 00     MX
    STA ($10)                       ; $AB8F75  92 10        MX
    RTS                             ; $AB8F77  60           MX
L_AB8F78:
    STZ $00EC                       ; $AB8F78  9C EC 00     MX
    LDA $00EE                       ; $AB8F7B  AD EE 00     MX
    CLC                             ; $AB8F7E  18           MX
    ADC #$0004                      ; $AB8F7F  69 04 00     MX
    STA $00EE                       ; $AB8F82  8D EE 00     MX
    CMP #$0100                      ; $AB8F85  C9 00 01     MX
    BCC L_AB8F93                    ; $AB8F88  90 09        MX
    INC $00EC                       ; $AB8F8A  EE EC 00     MX
    CMP #$FFF0                      ; $AB8F8D  C9 F0 FF     MX
    BCS L_AB8F93                    ; $AB8F90  B0 01        MX
    RTS                             ; $AB8F92  60           MX
L_AB8F93:
    LDA $00F0                       ; $AB8F93  AD F0 00     MX
    CMP #$00E0                      ; $AB8F96  C9 E0 00     MX
    BCC L_AB8FA1                    ; $AB8F99  90 06        MX
    CMP #$FFF0                      ; $AB8F9B  C9 F0 FF     MX
    BCS L_AB8FA1                    ; $AB8F9E  B0 01        MX
    RTS                             ; $AB8FA0  60           MX
L_AB8FA1:
    SEP #$20                        ; $AB8FA1  E2 20        MX
    LDA $00EC                       ; $AB8FA3  AD EC 00     mX
    BNE L_AB8FAE                    ; $AB8FA6  D0 06        mX
    LDA $ABE4CD                     ; $AB8FA8  AF CD E4 AB  mX
    BRA L_AB8FB2                    ; $AB8FAC  80 04        mX
L_AB8FAE:
    LDA $ABE4D1                     ; $AB8FAE  AF D1 E4 AB  mX
L_AB8FB2:
    ORA $050A                       ; $AB8FB2  0D 0A 05     mX
    STA $050A                       ; $AB8FB5  8D 0A 05     mX
    LDA $00F0                       ; $AB8FB8  AD F0 00     mX
    STA $03A1                       ; $AB8FBB  8D A1 03     mX
    LDA $00EE                       ; $AB8FBE  AD EE 00     mX
    STA $03A0                       ; $AB8FC1  8D A0 03     mX
    LDA $00F2                       ; $AB8FC4  AD F2 00     mX
    STA $03A2                       ; $AB8FC7  8D A2 03     mX
    LDA $002A                       ; $AB8FCA  AD 2A 00     mX
    ORA $00F3                       ; $AB8FCD  0D F3 00     mX
    STA $03A3                       ; $AB8FD0  8D A3 03     mX
    REP #$20                        ; $AB8FD3  C2 20        mX
    LDA #$00A4                      ; $AB8FD5  A9 A4 00     MX
    STA ($10)                       ; $AB8FD8  92 10        MX
    RTS                             ; $AB8FDA  60           MX
L_AB8FDB:
    STZ $00EC                       ; $AB8FDB  9C EC 00     MX
    LDA $00EE                       ; $AB8FDE  AD EE 00     MX
    CLC                             ; $AB8FE1  18           MX
    ADC #$0004                      ; $AB8FE2  69 04 00     MX
    STA $00EE                       ; $AB8FE5  8D EE 00     MX
    CMP #$0100                      ; $AB8FE8  C9 00 01     MX
    BCC L_AB8FF6                    ; $AB8FEB  90 09        MX
    INC $00EC                       ; $AB8FED  EE EC 00     MX
    CMP #$FFF0                      ; $AB8FF0  C9 F0 FF     MX
    BCS L_AB8FF6                    ; $AB8FF3  B0 01        MX
    RTS                             ; $AB8FF5  60           MX
L_AB8FF6:
    LDA $00F0                       ; $AB8FF6  AD F0 00     MX
    CMP #$00E0                      ; $AB8FF9  C9 E0 00     MX
    BCC L_AB9004                    ; $AB8FFC  90 06        MX
    CMP #$FFF0                      ; $AB8FFE  C9 F0 FF     MX
    BCS L_AB9004                    ; $AB9001  B0 01        MX
    RTS                             ; $AB9003  60           MX
L_AB9004:
    SEP #$20                        ; $AB9004  E2 20        MX
    LDA $00EC                       ; $AB9006  AD EC 00     mX
    BNE L_AB9011                    ; $AB9009  D0 06        mX
    LDA $ABE4CE                     ; $AB900B  AF CE E4 AB  mX
    BRA L_AB9015                    ; $AB900F  80 04        mX
L_AB9011:
    LDA $ABE4D2                     ; $AB9011  AF D2 E4 AB  mX
L_AB9015:
    ORA $050A                       ; $AB9015  0D 0A 05     mX
    STA $050A                       ; $AB9018  8D 0A 05     mX
    LDA $00F0                       ; $AB901B  AD F0 00     mX
    STA $03A5                       ; $AB901E  8D A5 03     mX
    LDA $00EE                       ; $AB9021  AD EE 00     mX
    STA $03A4                       ; $AB9024  8D A4 03     mX
    LDA $00F2                       ; $AB9027  AD F2 00     mX
    STA $03A6                       ; $AB902A  8D A6 03     mX
    LDA $002A                       ; $AB902D  AD 2A 00     mX
    ORA $00F3                       ; $AB9030  0D F3 00     mX
    STA $03A7                       ; $AB9033  8D A7 03     mX
    REP #$20                        ; $AB9036  C2 20        mX
    LDA #$00A8                      ; $AB9038  A9 A8 00     MX
    STA ($10)                       ; $AB903B  92 10        MX
    RTS                             ; $AB903D  60           MX
L_AB903E:
    STZ $00EC                       ; $AB903E  9C EC 00     MX
    LDA $00EE                       ; $AB9041  AD EE 00     MX
    CLC                             ; $AB9044  18           MX
    ADC #$0004                      ; $AB9045  69 04 00     MX
    STA $00EE                       ; $AB9048  8D EE 00     MX
    CMP #$0100                      ; $AB904B  C9 00 01     MX
    BCC L_AB9059                    ; $AB904E  90 09        MX
    INC $00EC                       ; $AB9050  EE EC 00     MX
    CMP #$FFF0                      ; $AB9053  C9 F0 FF     MX
    BCS L_AB9059                    ; $AB9056  B0 01        MX
    RTS                             ; $AB9058  60           MX
L_AB9059:
    LDA $00F0                       ; $AB9059  AD F0 00     MX
    CMP #$00E0                      ; $AB905C  C9 E0 00     MX
    BCC L_AB9067                    ; $AB905F  90 06        MX
    CMP #$FFF0                      ; $AB9061  C9 F0 FF     MX
    BCS L_AB9067                    ; $AB9064  B0 01        MX
    RTS                             ; $AB9066  60           MX
L_AB9067:
    SEP #$20                        ; $AB9067  E2 20        MX
    LDA $00EC                       ; $AB9069  AD EC 00     mX
    BNE L_AB9074                    ; $AB906C  D0 06        mX
    LDA $ABE4CF                     ; $AB906E  AF CF E4 AB  mX
    BRA L_AB9078                    ; $AB9072  80 04        mX
L_AB9074:
    LDA $ABE4D3                     ; $AB9074  AF D3 E4 AB  mX
L_AB9078:
    ORA $050A                       ; $AB9078  0D 0A 05     mX
    STA $050A                       ; $AB907B  8D 0A 05     mX
    LDA $00F0                       ; $AB907E  AD F0 00     mX
    STA $03A9                       ; $AB9081  8D A9 03     mX
    LDA $00EE                       ; $AB9084  AD EE 00     mX
    STA $03A8                       ; $AB9087  8D A8 03     mX
    LDA $00F2                       ; $AB908A  AD F2 00     mX
    STA $03AA                       ; $AB908D  8D AA 03     mX
    LDA $002A                       ; $AB9090  AD 2A 00     mX
    ORA $00F3                       ; $AB9093  0D F3 00     mX
    STA $03AB                       ; $AB9096  8D AB 03     mX
    REP #$20                        ; $AB9099  C2 20        mX
    LDA #$00AC                      ; $AB909B  A9 AC 00     MX
    STA ($10)                       ; $AB909E  92 10        MX
    RTS                             ; $AB90A0  60           MX
L_AB90A1:
    STZ $00EC                       ; $AB90A1  9C EC 00     MX
    LDA $00EE                       ; $AB90A4  AD EE 00     MX
    CLC                             ; $AB90A7  18           MX
    ADC #$0004                      ; $AB90A8  69 04 00     MX
    STA $00EE                       ; $AB90AB  8D EE 00     MX
    CMP #$0100                      ; $AB90AE  C9 00 01     MX
    BCC L_AB90BC                    ; $AB90B1  90 09        MX
    INC $00EC                       ; $AB90B3  EE EC 00     MX
    CMP #$FFF0                      ; $AB90B6  C9 F0 FF     MX
    BCS L_AB90BC                    ; $AB90B9  B0 01        MX
    RTS                             ; $AB90BB  60           MX
L_AB90BC:
    LDA $00F0                       ; $AB90BC  AD F0 00     MX
    CMP #$00E0                      ; $AB90BF  C9 E0 00     MX
    BCC L_AB90CA                    ; $AB90C2  90 06        MX
    CMP #$FFF0                      ; $AB90C4  C9 F0 FF     MX
    BCS L_AB90CA                    ; $AB90C7  B0 01        MX
    RTS                             ; $AB90C9  60           MX
L_AB90CA:
    SEP #$20                        ; $AB90CA  E2 20        MX
    LDA $00EC                       ; $AB90CC  AD EC 00     mX
    BNE L_AB90D7                    ; $AB90CF  D0 06        mX
    LDA $ABE4D0                     ; $AB90D1  AF D0 E4 AB  mX
    BRA L_AB90DB                    ; $AB90D5  80 04        mX
L_AB90D7:
    LDA $ABE4D4                     ; $AB90D7  AF D4 E4 AB  mX
L_AB90DB:
    ORA $050A                       ; $AB90DB  0D 0A 05     mX
    STA $050A                       ; $AB90DE  8D 0A 05     mX
    LDA $00F0                       ; $AB90E1  AD F0 00     mX
    STA $03AD                       ; $AB90E4  8D AD 03     mX
    LDA $00EE                       ; $AB90E7  AD EE 00     mX
    STA $03AC                       ; $AB90EA  8D AC 03     mX
    LDA $00F2                       ; $AB90ED  AD F2 00     mX
    STA $03AE                       ; $AB90F0  8D AE 03     mX
    LDA $002A                       ; $AB90F3  AD 2A 00     mX
    ORA $00F3                       ; $AB90F6  0D F3 00     mX
    STA $03AF                       ; $AB90F9  8D AF 03     mX
    REP #$20                        ; $AB90FC  C2 20        mX
    LDA #$00B0                      ; $AB90FE  A9 B0 00     MX
    STA ($10)                       ; $AB9101  92 10        MX
    RTS                             ; $AB9103  60           MX
L_AB9104:
    STZ $00EC                       ; $AB9104  9C EC 00     MX
    LDA $00EE                       ; $AB9107  AD EE 00     MX
    CLC                             ; $AB910A  18           MX
    ADC #$0004                      ; $AB910B  69 04 00     MX
    STA $00EE                       ; $AB910E  8D EE 00     MX
    CMP #$0100                      ; $AB9111  C9 00 01     MX
    BCC L_AB911F                    ; $AB9114  90 09        MX
    INC $00EC                       ; $AB9116  EE EC 00     MX
    CMP #$FFF0                      ; $AB9119  C9 F0 FF     MX
    BCS L_AB911F                    ; $AB911C  B0 01        MX
    RTS                             ; $AB911E  60           MX
L_AB911F:
    LDA $00F0                       ; $AB911F  AD F0 00     MX
    CMP #$00E0                      ; $AB9122  C9 E0 00     MX
    BCC L_AB912D                    ; $AB9125  90 06        MX
    CMP #$FFF0                      ; $AB9127  C9 F0 FF     MX
    BCS L_AB912D                    ; $AB912A  B0 01        MX
    RTS                             ; $AB912C  60           MX
L_AB912D:
    SEP #$20                        ; $AB912D  E2 20        MX
    LDA $00EC                       ; $AB912F  AD EC 00     mX
    BNE L_AB913A                    ; $AB9132  D0 06        mX
    LDA $ABE4CD                     ; $AB9134  AF CD E4 AB  mX
    BRA L_AB913E                    ; $AB9138  80 04        mX
L_AB913A:
    LDA $ABE4D1                     ; $AB913A  AF D1 E4 AB  mX
L_AB913E:
    ORA $050B                       ; $AB913E  0D 0B 05     mX
    STA $050B                       ; $AB9141  8D 0B 05     mX
    LDA $00F0                       ; $AB9144  AD F0 00     mX
    STA $03B1                       ; $AB9147  8D B1 03     mX
    LDA $00EE                       ; $AB914A  AD EE 00     mX
    STA $03B0                       ; $AB914D  8D B0 03     mX
    LDA $00F2                       ; $AB9150  AD F2 00     mX
    STA $03B2                       ; $AB9153  8D B2 03     mX
    LDA $002A                       ; $AB9156  AD 2A 00     mX
    ORA $00F3                       ; $AB9159  0D F3 00     mX
    STA $03B3                       ; $AB915C  8D B3 03     mX
    REP #$20                        ; $AB915F  C2 20        mX
    LDA #$00B4                      ; $AB9161  A9 B4 00     MX
    STA ($10)                       ; $AB9164  92 10        MX
    RTS                             ; $AB9166  60           MX
L_AB9167:
    STZ $00EC                       ; $AB9167  9C EC 00     MX
    LDA $00EE                       ; $AB916A  AD EE 00     MX
    CLC                             ; $AB916D  18           MX
    ADC #$0004                      ; $AB916E  69 04 00     MX
    STA $00EE                       ; $AB9171  8D EE 00     MX
    CMP #$0100                      ; $AB9174  C9 00 01     MX
    BCC L_AB9182                    ; $AB9177  90 09        MX
    INC $00EC                       ; $AB9179  EE EC 00     MX
    CMP #$FFF0                      ; $AB917C  C9 F0 FF     MX
    BCS L_AB9182                    ; $AB917F  B0 01        MX
    RTS                             ; $AB9181  60           MX
L_AB9182:
    LDA $00F0                       ; $AB9182  AD F0 00     MX
    CMP #$00E0                      ; $AB9185  C9 E0 00     MX
    BCC L_AB9190                    ; $AB9188  90 06        MX
    CMP #$FFF0                      ; $AB918A  C9 F0 FF     MX
    BCS L_AB9190                    ; $AB918D  B0 01        MX
    RTS                             ; $AB918F  60           MX
L_AB9190:
    SEP #$20                        ; $AB9190  E2 20        MX
    LDA $00EC                       ; $AB9192  AD EC 00     mX
    BNE L_AB919D                    ; $AB9195  D0 06        mX
    LDA $ABE4CE                     ; $AB9197  AF CE E4 AB  mX
    BRA L_AB91A1                    ; $AB919B  80 04        mX
L_AB919D:
    LDA $ABE4D2                     ; $AB919D  AF D2 E4 AB  mX
L_AB91A1:
    ORA $050B                       ; $AB91A1  0D 0B 05     mX
    STA $050B                       ; $AB91A4  8D 0B 05     mX
    LDA $00F0                       ; $AB91A7  AD F0 00     mX
    STA $03B5                       ; $AB91AA  8D B5 03     mX
    LDA $00EE                       ; $AB91AD  AD EE 00     mX
    STA $03B4                       ; $AB91B0  8D B4 03     mX
    LDA $00F2                       ; $AB91B3  AD F2 00     mX
    STA $03B6                       ; $AB91B6  8D B6 03     mX
    LDA $002A                       ; $AB91B9  AD 2A 00     mX
    ORA $00F3                       ; $AB91BC  0D F3 00     mX
    STA $03B7                       ; $AB91BF  8D B7 03     mX
    REP #$20                        ; $AB91C2  C2 20        mX
    LDA #$00B8                      ; $AB91C4  A9 B8 00     MX
    STA ($10)                       ; $AB91C7  92 10        MX
    RTS                             ; $AB91C9  60           MX
L_AB91CA:
    STZ $00EC                       ; $AB91CA  9C EC 00     MX
    LDA $00EE                       ; $AB91CD  AD EE 00     MX
    CLC                             ; $AB91D0  18           MX
    ADC #$0004                      ; $AB91D1  69 04 00     MX
    STA $00EE                       ; $AB91D4  8D EE 00     MX
    CMP #$0100                      ; $AB91D7  C9 00 01     MX
    BCC L_AB91E5                    ; $AB91DA  90 09        MX
    INC $00EC                       ; $AB91DC  EE EC 00     MX
    CMP #$FFF0                      ; $AB91DF  C9 F0 FF     MX
    BCS L_AB91E5                    ; $AB91E2  B0 01        MX
    RTS                             ; $AB91E4  60           MX
L_AB91E5:
    LDA $00F0                       ; $AB91E5  AD F0 00     MX
    CMP #$00E0                      ; $AB91E8  C9 E0 00     MX
    BCC L_AB91F3                    ; $AB91EB  90 06        MX
    CMP #$FFF0                      ; $AB91ED  C9 F0 FF     MX
    BCS L_AB91F3                    ; $AB91F0  B0 01        MX
    RTS                             ; $AB91F2  60           MX
L_AB91F3:
    SEP #$20                        ; $AB91F3  E2 20        MX
    LDA $00EC                       ; $AB91F5  AD EC 00     mX
    BNE L_AB9200                    ; $AB91F8  D0 06        mX
    LDA $ABE4CF                     ; $AB91FA  AF CF E4 AB  mX
    BRA L_AB9204                    ; $AB91FE  80 04        mX
L_AB9200:
    LDA $ABE4D3                     ; $AB9200  AF D3 E4 AB  mX
L_AB9204:
    ORA $050B                       ; $AB9204  0D 0B 05     mX
    STA $050B                       ; $AB9207  8D 0B 05     mX
    LDA $00F0                       ; $AB920A  AD F0 00     mX
    STA $03B9                       ; $AB920D  8D B9 03     mX
    LDA $00EE                       ; $AB9210  AD EE 00     mX
    STA $03B8                       ; $AB9213  8D B8 03     mX
    LDA $00F2                       ; $AB9216  AD F2 00     mX
    STA $03BA                       ; $AB9219  8D BA 03     mX
    LDA $002A                       ; $AB921C  AD 2A 00     mX
    ORA $00F3                       ; $AB921F  0D F3 00     mX
    STA $03BB                       ; $AB9222  8D BB 03     mX
    REP #$20                        ; $AB9225  C2 20        mX
    LDA #$00BC                      ; $AB9227  A9 BC 00     MX
    STA ($10)                       ; $AB922A  92 10        MX
    RTS                             ; $AB922C  60           MX
L_AB922D:
    STZ $00EC                       ; $AB922D  9C EC 00     MX
    LDA $00EE                       ; $AB9230  AD EE 00     MX
    CLC                             ; $AB9233  18           MX
    ADC #$0004                      ; $AB9234  69 04 00     MX
    STA $00EE                       ; $AB9237  8D EE 00     MX
    CMP #$0100                      ; $AB923A  C9 00 01     MX
    BCC L_AB9248                    ; $AB923D  90 09        MX
    INC $00EC                       ; $AB923F  EE EC 00     MX
    CMP #$FFF0                      ; $AB9242  C9 F0 FF     MX
    BCS L_AB9248                    ; $AB9245  B0 01        MX
    RTS                             ; $AB9247  60           MX
L_AB9248:
    LDA $00F0                       ; $AB9248  AD F0 00     MX
    CMP #$00E0                      ; $AB924B  C9 E0 00     MX
    BCC L_AB9256                    ; $AB924E  90 06        MX
    CMP #$FFF0                      ; $AB9250  C9 F0 FF     MX
    BCS L_AB9256                    ; $AB9253  B0 01        MX
    RTS                             ; $AB9255  60           MX
L_AB9256:
    SEP #$20                        ; $AB9256  E2 20        MX
    LDA $00EC                       ; $AB9258  AD EC 00     mX
    BNE L_AB9263                    ; $AB925B  D0 06        mX
    LDA $ABE4D0                     ; $AB925D  AF D0 E4 AB  mX
    BRA L_AB9267                    ; $AB9261  80 04        mX
L_AB9263:
    LDA $ABE4D4                     ; $AB9263  AF D4 E4 AB  mX
L_AB9267:
    ORA $050B                       ; $AB9267  0D 0B 05     mX
    STA $050B                       ; $AB926A  8D 0B 05     mX
    LDA $00F0                       ; $AB926D  AD F0 00     mX
    STA $03BD                       ; $AB9270  8D BD 03     mX
    LDA $00EE                       ; $AB9273  AD EE 00     mX
    STA $03BC                       ; $AB9276  8D BC 03     mX
    LDA $00F2                       ; $AB9279  AD F2 00     mX
    STA $03BE                       ; $AB927C  8D BE 03     mX
    LDA $002A                       ; $AB927F  AD 2A 00     mX
    ORA $00F3                       ; $AB9282  0D F3 00     mX
    STA $03BF                       ; $AB9285  8D BF 03     mX
    REP #$20                        ; $AB9288  C2 20        mX
    LDA #$00C0                      ; $AB928A  A9 C0 00     MX
    STA ($10)                       ; $AB928D  92 10        MX
    RTS                             ; $AB928F  60           MX
L_AB9290:
    STZ $00EC                       ; $AB9290  9C EC 00     MX
    LDA $00EE                       ; $AB9293  AD EE 00     MX
    CLC                             ; $AB9296  18           MX
    ADC #$0004                      ; $AB9297  69 04 00     MX
    STA $00EE                       ; $AB929A  8D EE 00     MX
    CMP #$0100                      ; $AB929D  C9 00 01     MX
    BCC L_AB92AB                    ; $AB92A0  90 09        MX
    INC $00EC                       ; $AB92A2  EE EC 00     MX
    CMP #$FFF0                      ; $AB92A5  C9 F0 FF     MX
    BCS L_AB92AB                    ; $AB92A8  B0 01        MX
    RTS                             ; $AB92AA  60           MX
L_AB92AB:
    LDA $00F0                       ; $AB92AB  AD F0 00     MX
    CMP #$00E0                      ; $AB92AE  C9 E0 00     MX
    BCC L_AB92B9                    ; $AB92B1  90 06        MX
    CMP #$FFF0                      ; $AB92B3  C9 F0 FF     MX
    BCS L_AB92B9                    ; $AB92B6  B0 01        MX
    RTS                             ; $AB92B8  60           MX
L_AB92B9:
    SEP #$20                        ; $AB92B9  E2 20        MX
    LDA $00EC                       ; $AB92BB  AD EC 00     mX
    BNE L_AB92C6                    ; $AB92BE  D0 06        mX
    LDA $ABE4CD                     ; $AB92C0  AF CD E4 AB  mX
    BRA L_AB92CA                    ; $AB92C4  80 04        mX
L_AB92C6:
    LDA $ABE4D1                     ; $AB92C6  AF D1 E4 AB  mX
L_AB92CA:
    ORA $050C                       ; $AB92CA  0D 0C 05     mX
    STA $050C                       ; $AB92CD  8D 0C 05     mX
    LDA $00F0                       ; $AB92D0  AD F0 00     mX
    STA $03C1                       ; $AB92D3  8D C1 03     mX
    LDA $00EE                       ; $AB92D6  AD EE 00     mX
    STA $03C0                       ; $AB92D9  8D C0 03     mX
    LDA $00F2                       ; $AB92DC  AD F2 00     mX
    STA $03C2                       ; $AB92DF  8D C2 03     mX
    LDA $002A                       ; $AB92E2  AD 2A 00     mX
    ORA $00F3                       ; $AB92E5  0D F3 00     mX
    STA $03C3                       ; $AB92E8  8D C3 03     mX
    REP #$20                        ; $AB92EB  C2 20        mX
    LDA #$00C4                      ; $AB92ED  A9 C4 00     MX
    STA ($10)                       ; $AB92F0  92 10        MX
    RTS                             ; $AB92F2  60           MX
L_AB92F3:
    STZ $00EC                       ; $AB92F3  9C EC 00     MX
    LDA $00EE                       ; $AB92F6  AD EE 00     MX
    CLC                             ; $AB92F9  18           MX
    ADC #$0004                      ; $AB92FA  69 04 00     MX
    STA $00EE                       ; $AB92FD  8D EE 00     MX
    CMP #$0100                      ; $AB9300  C9 00 01     MX
    BCC L_AB930E                    ; $AB9303  90 09        MX
    INC $00EC                       ; $AB9305  EE EC 00     MX
    CMP #$FFF0                      ; $AB9308  C9 F0 FF     MX
    BCS L_AB930E                    ; $AB930B  B0 01        MX
    RTS                             ; $AB930D  60           MX
L_AB930E:
    LDA $00F0                       ; $AB930E  AD F0 00     MX
    CMP #$00E0                      ; $AB9311  C9 E0 00     MX
    BCC L_AB931C                    ; $AB9314  90 06        MX
    CMP #$FFF0                      ; $AB9316  C9 F0 FF     MX
    BCS L_AB931C                    ; $AB9319  B0 01        MX
    RTS                             ; $AB931B  60           MX
L_AB931C:
    SEP #$20                        ; $AB931C  E2 20        MX
    LDA $00EC                       ; $AB931E  AD EC 00     mX
    BNE L_AB9329                    ; $AB9321  D0 06        mX
    LDA $ABE4CE                     ; $AB9323  AF CE E4 AB  mX
    BRA L_AB932D                    ; $AB9327  80 04        mX
L_AB9329:
    LDA $ABE4D2                     ; $AB9329  AF D2 E4 AB  mX
L_AB932D:
    ORA $050C                       ; $AB932D  0D 0C 05     mX
    STA $050C                       ; $AB9330  8D 0C 05     mX
    LDA $00F0                       ; $AB9333  AD F0 00     mX
    STA $03C5                       ; $AB9336  8D C5 03     mX
    LDA $00EE                       ; $AB9339  AD EE 00     mX
    STA $03C4                       ; $AB933C  8D C4 03     mX
    LDA $00F2                       ; $AB933F  AD F2 00     mX
    STA $03C6                       ; $AB9342  8D C6 03     mX
    LDA $002A                       ; $AB9345  AD 2A 00     mX
    ORA $00F3                       ; $AB9348  0D F3 00     mX
    STA $03C7                       ; $AB934B  8D C7 03     mX
    REP #$20                        ; $AB934E  C2 20        mX
    LDA #$00C8                      ; $AB9350  A9 C8 00     MX
    STA ($10)                       ; $AB9353  92 10        MX
    RTS                             ; $AB9355  60           MX
L_AB9356:
    STZ $00EC                       ; $AB9356  9C EC 00     MX
    LDA $00EE                       ; $AB9359  AD EE 00     MX
    CLC                             ; $AB935C  18           MX
    ADC #$0004                      ; $AB935D  69 04 00     MX
    STA $00EE                       ; $AB9360  8D EE 00     MX
    CMP #$0100                      ; $AB9363  C9 00 01     MX
    BCC L_AB9371                    ; $AB9366  90 09        MX
    INC $00EC                       ; $AB9368  EE EC 00     MX
    CMP #$FFF0                      ; $AB936B  C9 F0 FF     MX
    BCS L_AB9371                    ; $AB936E  B0 01        MX
    RTS                             ; $AB9370  60           MX
L_AB9371:
    LDA $00F0                       ; $AB9371  AD F0 00     MX
    CMP #$00E0                      ; $AB9374  C9 E0 00     MX
    BCC L_AB937F                    ; $AB9377  90 06        MX
    CMP #$FFF0                      ; $AB9379  C9 F0 FF     MX
    BCS L_AB937F                    ; $AB937C  B0 01        MX
    RTS                             ; $AB937E  60           MX
L_AB937F:
    SEP #$20                        ; $AB937F  E2 20        MX
    LDA $00EC                       ; $AB9381  AD EC 00     mX
    BNE L_AB938C                    ; $AB9384  D0 06        mX
    LDA $ABE4CF                     ; $AB9386  AF CF E4 AB  mX
    BRA L_AB9390                    ; $AB938A  80 04        mX
L_AB938C:
    LDA $ABE4D3                     ; $AB938C  AF D3 E4 AB  mX
L_AB9390:
    ORA $050C                       ; $AB9390  0D 0C 05     mX
    STA $050C                       ; $AB9393  8D 0C 05     mX
    LDA $00F0                       ; $AB9396  AD F0 00     mX
    STA $03C9                       ; $AB9399  8D C9 03     mX
    LDA $00EE                       ; $AB939C  AD EE 00     mX
    STA $03C8                       ; $AB939F  8D C8 03     mX
    LDA $00F2                       ; $AB93A2  AD F2 00     mX
    STA $03CA                       ; $AB93A5  8D CA 03     mX
    LDA $002A                       ; $AB93A8  AD 2A 00     mX
    ORA $00F3                       ; $AB93AB  0D F3 00     mX
    STA $03CB                       ; $AB93AE  8D CB 03     mX
    REP #$20                        ; $AB93B1  C2 20        mX
    LDA #$00CC                      ; $AB93B3  A9 CC 00     MX
    STA ($10)                       ; $AB93B6  92 10        MX
    RTS                             ; $AB93B8  60           MX
L_AB93B9:
    STZ $00EC                       ; $AB93B9  9C EC 00     MX
    LDA $00EE                       ; $AB93BC  AD EE 00     MX
    CLC                             ; $AB93BF  18           MX
    ADC #$0004                      ; $AB93C0  69 04 00     MX
    STA $00EE                       ; $AB93C3  8D EE 00     MX
    CMP #$0100                      ; $AB93C6  C9 00 01     MX
    BCC L_AB93D4                    ; $AB93C9  90 09        MX
    INC $00EC                       ; $AB93CB  EE EC 00     MX
    CMP #$FFF0                      ; $AB93CE  C9 F0 FF     MX
    BCS L_AB93D4                    ; $AB93D1  B0 01        MX
    RTS                             ; $AB93D3  60           MX
L_AB93D4:
    LDA $00F0                       ; $AB93D4  AD F0 00     MX
    CMP #$00E0                      ; $AB93D7  C9 E0 00     MX
    BCC L_AB93E2                    ; $AB93DA  90 06        MX
    CMP #$FFF0                      ; $AB93DC  C9 F0 FF     MX
    BCS L_AB93E2                    ; $AB93DF  B0 01        MX
    RTS                             ; $AB93E1  60           MX
L_AB93E2:
    SEP #$20                        ; $AB93E2  E2 20        MX
    LDA $00EC                       ; $AB93E4  AD EC 00     mX
    BNE L_AB93EF                    ; $AB93E7  D0 06        mX
    LDA $ABE4D0                     ; $AB93E9  AF D0 E4 AB  mX
    BRA L_AB93F3                    ; $AB93ED  80 04        mX
L_AB93EF:
    LDA $ABE4D4                     ; $AB93EF  AF D4 E4 AB  mX
L_AB93F3:
    ORA $050C                       ; $AB93F3  0D 0C 05     mX
    STA $050C                       ; $AB93F6  8D 0C 05     mX
    LDA $00F0                       ; $AB93F9  AD F0 00     mX
    STA $03CD                       ; $AB93FC  8D CD 03     mX
    LDA $00EE                       ; $AB93FF  AD EE 00     mX
    STA $03CC                       ; $AB9402  8D CC 03     mX
    LDA $00F2                       ; $AB9405  AD F2 00     mX
    STA $03CE                       ; $AB9408  8D CE 03     mX
    LDA $002A                       ; $AB940B  AD 2A 00     mX
    ORA $00F3                       ; $AB940E  0D F3 00     mX
    STA $03CF                       ; $AB9411  8D CF 03     mX
    REP #$20                        ; $AB9414  C2 20        mX
    LDA #$00D0                      ; $AB9416  A9 D0 00     MX
    STA ($10)                       ; $AB9419  92 10        MX
    RTS                             ; $AB941B  60           MX
L_AB941C:
    STZ $00EC                       ; $AB941C  9C EC 00     MX
    LDA $00EE                       ; $AB941F  AD EE 00     MX
    CLC                             ; $AB9422  18           MX
    ADC #$0004                      ; $AB9423  69 04 00     MX
    STA $00EE                       ; $AB9426  8D EE 00     MX
    CMP #$0100                      ; $AB9429  C9 00 01     MX
    BCC L_AB9437                    ; $AB942C  90 09        MX
    INC $00EC                       ; $AB942E  EE EC 00     MX
    CMP #$FFF0                      ; $AB9431  C9 F0 FF     MX
    BCS L_AB9437                    ; $AB9434  B0 01        MX
    RTS                             ; $AB9436  60           MX
L_AB9437:
    LDA $00F0                       ; $AB9437  AD F0 00     MX
    CMP #$00E0                      ; $AB943A  C9 E0 00     MX
    BCC L_AB9445                    ; $AB943D  90 06        MX
    CMP #$FFF0                      ; $AB943F  C9 F0 FF     MX
    BCS L_AB9445                    ; $AB9442  B0 01        MX
    RTS                             ; $AB9444  60           MX
L_AB9445:
    SEP #$20                        ; $AB9445  E2 20        MX
    LDA $00EC                       ; $AB9447  AD EC 00     mX
    BNE L_AB9452                    ; $AB944A  D0 06        mX
    LDA $ABE4CD                     ; $AB944C  AF CD E4 AB  mX
    BRA L_AB9456                    ; $AB9450  80 04        mX
L_AB9452:
    LDA $ABE4D1                     ; $AB9452  AF D1 E4 AB  mX
L_AB9456:
    ORA $050D                       ; $AB9456  0D 0D 05     mX
    STA $050D                       ; $AB9459  8D 0D 05     mX
    LDA $00F0                       ; $AB945C  AD F0 00     mX
    STA $03D1                       ; $AB945F  8D D1 03     mX
    LDA $00EE                       ; $AB9462  AD EE 00     mX
    STA $03D0                       ; $AB9465  8D D0 03     mX
    LDA $00F2                       ; $AB9468  AD F2 00     mX
    STA $03D2                       ; $AB946B  8D D2 03     mX
    LDA $002A                       ; $AB946E  AD 2A 00     mX
    ORA $00F3                       ; $AB9471  0D F3 00     mX
    STA $03D3                       ; $AB9474  8D D3 03     mX
    REP #$20                        ; $AB9477  C2 20        mX
    LDA #$00D4                      ; $AB9479  A9 D4 00     MX
    STA ($10)                       ; $AB947C  92 10        MX
    RTS                             ; $AB947E  60           MX
L_AB947F:
    STZ $00EC                       ; $AB947F  9C EC 00     MX
    LDA $00EE                       ; $AB9482  AD EE 00     MX
    CLC                             ; $AB9485  18           MX
    ADC #$0004                      ; $AB9486  69 04 00     MX
    STA $00EE                       ; $AB9489  8D EE 00     MX
    CMP #$0100                      ; $AB948C  C9 00 01     MX
    BCC L_AB949A                    ; $AB948F  90 09        MX
    INC $00EC                       ; $AB9491  EE EC 00     MX
    CMP #$FFF0                      ; $AB9494  C9 F0 FF     MX
    BCS L_AB949A                    ; $AB9497  B0 01        MX
    RTS                             ; $AB9499  60           MX
L_AB949A:
    LDA $00F0                       ; $AB949A  AD F0 00     MX
    CMP #$00E0                      ; $AB949D  C9 E0 00     MX
    BCC L_AB94A8                    ; $AB94A0  90 06        MX
    CMP #$FFF0                      ; $AB94A2  C9 F0 FF     MX
    BCS L_AB94A8                    ; $AB94A5  B0 01        MX
    RTS                             ; $AB94A7  60           MX
L_AB94A8:
    SEP #$20                        ; $AB94A8  E2 20        MX
    LDA $00EC                       ; $AB94AA  AD EC 00     mX
    BNE L_AB94B5                    ; $AB94AD  D0 06        mX
    LDA $ABE4CE                     ; $AB94AF  AF CE E4 AB  mX
    BRA L_AB94B9                    ; $AB94B3  80 04        mX
L_AB94B5:
    LDA $ABE4D2                     ; $AB94B5  AF D2 E4 AB  mX
L_AB94B9:
    ORA $050D                       ; $AB94B9  0D 0D 05     mX
    STA $050D                       ; $AB94BC  8D 0D 05     mX
    LDA $00F0                       ; $AB94BF  AD F0 00     mX
    STA $03D5                       ; $AB94C2  8D D5 03     mX
    LDA $00EE                       ; $AB94C5  AD EE 00     mX
    STA $03D4                       ; $AB94C8  8D D4 03     mX
    LDA $00F2                       ; $AB94CB  AD F2 00     mX
    STA $03D6                       ; $AB94CE  8D D6 03     mX
    LDA $002A                       ; $AB94D1  AD 2A 00     mX
    ORA $00F3                       ; $AB94D4  0D F3 00     mX
    STA $03D7                       ; $AB94D7  8D D7 03     mX
    REP #$20                        ; $AB94DA  C2 20        mX
    LDA #$00D8                      ; $AB94DC  A9 D8 00     MX
    STA ($10)                       ; $AB94DF  92 10        MX
    RTS                             ; $AB94E1  60           MX
L_AB94E2:
    STZ $00EC                       ; $AB94E2  9C EC 00     MX
    LDA $00EE                       ; $AB94E5  AD EE 00     MX
    CLC                             ; $AB94E8  18           MX
    ADC #$0004                      ; $AB94E9  69 04 00     MX
    STA $00EE                       ; $AB94EC  8D EE 00     MX
    CMP #$0100                      ; $AB94EF  C9 00 01     MX
    BCC L_AB94FD                    ; $AB94F2  90 09        MX
    INC $00EC                       ; $AB94F4  EE EC 00     MX
    CMP #$FFF0                      ; $AB94F7  C9 F0 FF     MX
    BCS L_AB94FD                    ; $AB94FA  B0 01        MX
    RTS                             ; $AB94FC  60           MX
L_AB94FD:
    LDA $00F0                       ; $AB94FD  AD F0 00     MX
    CMP #$00E0                      ; $AB9500  C9 E0 00     MX
    BCC L_AB950B                    ; $AB9503  90 06        MX
    CMP #$FFF0                      ; $AB9505  C9 F0 FF     MX
    BCS L_AB950B                    ; $AB9508  B0 01        MX
    RTS                             ; $AB950A  60           MX
L_AB950B:
    SEP #$20                        ; $AB950B  E2 20        MX
    LDA $00EC                       ; $AB950D  AD EC 00     mX
    BNE L_AB9518                    ; $AB9510  D0 06        mX
    LDA $ABE4CF                     ; $AB9512  AF CF E4 AB  mX
    BRA L_AB951C                    ; $AB9516  80 04        mX
L_AB9518:
    LDA $ABE4D3                     ; $AB9518  AF D3 E4 AB  mX
L_AB951C:
    ORA $050D                       ; $AB951C  0D 0D 05     mX
    STA $050D                       ; $AB951F  8D 0D 05     mX
    LDA $00F0                       ; $AB9522  AD F0 00     mX
    STA $03D9                       ; $AB9525  8D D9 03     mX
    LDA $00EE                       ; $AB9528  AD EE 00     mX
    STA $03D8                       ; $AB952B  8D D8 03     mX
    LDA $00F2                       ; $AB952E  AD F2 00     mX
    STA $03DA                       ; $AB9531  8D DA 03     mX
    LDA $002A                       ; $AB9534  AD 2A 00     mX
    ORA $00F3                       ; $AB9537  0D F3 00     mX
    STA $03DB                       ; $AB953A  8D DB 03     mX
    REP #$20                        ; $AB953D  C2 20        mX
    LDA #$00DC                      ; $AB953F  A9 DC 00     MX
    STA ($10)                       ; $AB9542  92 10        MX
    RTS                             ; $AB9544  60           MX
L_AB9545:
    STZ $00EC                       ; $AB9545  9C EC 00     MX
    LDA $00EE                       ; $AB9548  AD EE 00     MX
    CLC                             ; $AB954B  18           MX
    ADC #$0004                      ; $AB954C  69 04 00     MX
    STA $00EE                       ; $AB954F  8D EE 00     MX
    CMP #$0100                      ; $AB9552  C9 00 01     MX
    BCC L_AB9560                    ; $AB9555  90 09        MX
    INC $00EC                       ; $AB9557  EE EC 00     MX
    CMP #$FFF0                      ; $AB955A  C9 F0 FF     MX
    BCS L_AB9560                    ; $AB955D  B0 01        MX
    RTS                             ; $AB955F  60           MX
L_AB9560:
    LDA $00F0                       ; $AB9560  AD F0 00     MX
    CMP #$00E0                      ; $AB9563  C9 E0 00     MX
    BCC L_AB956E                    ; $AB9566  90 06        MX
    CMP #$FFF0                      ; $AB9568  C9 F0 FF     MX
    BCS L_AB956E                    ; $AB956B  B0 01        MX
    RTS                             ; $AB956D  60           MX
L_AB956E:
    SEP #$20                        ; $AB956E  E2 20        MX
    LDA $00EC                       ; $AB9570  AD EC 00     mX
    BNE L_AB957B                    ; $AB9573  D0 06        mX
    LDA $ABE4D0                     ; $AB9575  AF D0 E4 AB  mX
    BRA L_AB957F                    ; $AB9579  80 04        mX
L_AB957B:
    LDA $ABE4D4                     ; $AB957B  AF D4 E4 AB  mX
L_AB957F:
    ORA $050D                       ; $AB957F  0D 0D 05     mX
    STA $050D                       ; $AB9582  8D 0D 05     mX
    LDA $00F0                       ; $AB9585  AD F0 00     mX
    STA $03DD                       ; $AB9588  8D DD 03     mX
    LDA $00EE                       ; $AB958B  AD EE 00     mX
    STA $03DC                       ; $AB958E  8D DC 03     mX
    LDA $00F2                       ; $AB9591  AD F2 00     mX
    STA $03DE                       ; $AB9594  8D DE 03     mX
    LDA $002A                       ; $AB9597  AD 2A 00     mX
    ORA $00F3                       ; $AB959A  0D F3 00     mX
    STA $03DF                       ; $AB959D  8D DF 03     mX
    REP #$20                        ; $AB95A0  C2 20        mX
    LDA #$00E0                      ; $AB95A2  A9 E0 00     MX
    STA ($10)                       ; $AB95A5  92 10        MX
    RTS                             ; $AB95A7  60           MX
L_AB95A8:
    STZ $00EC                       ; $AB95A8  9C EC 00     MX
    LDA $00EE                       ; $AB95AB  AD EE 00     MX
    CLC                             ; $AB95AE  18           MX
    ADC #$0004                      ; $AB95AF  69 04 00     MX
    STA $00EE                       ; $AB95B2  8D EE 00     MX
    CMP #$0100                      ; $AB95B5  C9 00 01     MX
    BCC L_AB95C3                    ; $AB95B8  90 09        MX
    INC $00EC                       ; $AB95BA  EE EC 00     MX
    CMP #$FFF0                      ; $AB95BD  C9 F0 FF     MX
    BCS L_AB95C3                    ; $AB95C0  B0 01        MX
    RTS                             ; $AB95C2  60           MX
L_AB95C3:
    LDA $00F0                       ; $AB95C3  AD F0 00     MX
    CMP #$00E0                      ; $AB95C6  C9 E0 00     MX
    BCC L_AB95D1                    ; $AB95C9  90 06        MX
    CMP #$FFF0                      ; $AB95CB  C9 F0 FF     MX
    BCS L_AB95D1                    ; $AB95CE  B0 01        MX
    RTS                             ; $AB95D0  60           MX
L_AB95D1:
    SEP #$20                        ; $AB95D1  E2 20        MX
    LDA $00EC                       ; $AB95D3  AD EC 00     mX
    BNE L_AB95DE                    ; $AB95D6  D0 06        mX
    LDA $ABE4CD                     ; $AB95D8  AF CD E4 AB  mX
    BRA L_AB95E2                    ; $AB95DC  80 04        mX
L_AB95DE:
    LDA $ABE4D1                     ; $AB95DE  AF D1 E4 AB  mX
L_AB95E2:
    ORA $050E                       ; $AB95E2  0D 0E 05     mX
    STA $050E                       ; $AB95E5  8D 0E 05     mX
    LDA $00F0                       ; $AB95E8  AD F0 00     mX
    STA $03E1                       ; $AB95EB  8D E1 03     mX
    LDA $00EE                       ; $AB95EE  AD EE 00     mX
    STA $03E0                       ; $AB95F1  8D E0 03     mX
    LDA $00F2                       ; $AB95F4  AD F2 00     mX
    STA $03E2                       ; $AB95F7  8D E2 03     mX
    LDA $002A                       ; $AB95FA  AD 2A 00     mX
    ORA $00F3                       ; $AB95FD  0D F3 00     mX
    STA $03E3                       ; $AB9600  8D E3 03     mX
    REP #$20                        ; $AB9603  C2 20        mX
    LDA #$00E4                      ; $AB9605  A9 E4 00     MX
    STA ($10)                       ; $AB9608  92 10        MX
    RTS                             ; $AB960A  60           MX
L_AB960B:
    STZ $00EC                       ; $AB960B  9C EC 00     MX
    LDA $00EE                       ; $AB960E  AD EE 00     MX
    CLC                             ; $AB9611  18           MX
    ADC #$0004                      ; $AB9612  69 04 00     MX
    STA $00EE                       ; $AB9615  8D EE 00     MX
    CMP #$0100                      ; $AB9618  C9 00 01     MX
    BCC L_AB9626                    ; $AB961B  90 09        MX
    INC $00EC                       ; $AB961D  EE EC 00     MX
    CMP #$FFF0                      ; $AB9620  C9 F0 FF     MX
    BCS L_AB9626                    ; $AB9623  B0 01        MX
    RTS                             ; $AB9625  60           MX
L_AB9626:
    LDA $00F0                       ; $AB9626  AD F0 00     MX
    CMP #$00E0                      ; $AB9629  C9 E0 00     MX
    BCC L_AB9634                    ; $AB962C  90 06        MX
    CMP #$FFF0                      ; $AB962E  C9 F0 FF     MX
    BCS L_AB9634                    ; $AB9631  B0 01        MX
    RTS                             ; $AB9633  60           MX
L_AB9634:
    SEP #$20                        ; $AB9634  E2 20        MX
    LDA $00EC                       ; $AB9636  AD EC 00     mX
    BNE L_AB9641                    ; $AB9639  D0 06        mX
    LDA $ABE4CE                     ; $AB963B  AF CE E4 AB  mX
    BRA L_AB9645                    ; $AB963F  80 04        mX
L_AB9641:
    LDA $ABE4D2                     ; $AB9641  AF D2 E4 AB  mX
L_AB9645:
    ORA $050E                       ; $AB9645  0D 0E 05     mX
    STA $050E                       ; $AB9648  8D 0E 05     mX
    LDA $00F0                       ; $AB964B  AD F0 00     mX
    STA $03E5                       ; $AB964E  8D E5 03     mX
    LDA $00EE                       ; $AB9651  AD EE 00     mX
    STA $03E4                       ; $AB9654  8D E4 03     mX
    LDA $00F2                       ; $AB9657  AD F2 00     mX
    STA $03E6                       ; $AB965A  8D E6 03     mX
    LDA $002A                       ; $AB965D  AD 2A 00     mX
    ORA $00F3                       ; $AB9660  0D F3 00     mX
    STA $03E7                       ; $AB9663  8D E7 03     mX
    REP #$20                        ; $AB9666  C2 20        mX
    LDA #$00E8                      ; $AB9668  A9 E8 00     MX
    STA ($10)                       ; $AB966B  92 10        MX
    RTS                             ; $AB966D  60           MX
L_AB966E:
    STZ $00EC                       ; $AB966E  9C EC 00     MX
    LDA $00EE                       ; $AB9671  AD EE 00     MX
    CLC                             ; $AB9674  18           MX
    ADC #$0004                      ; $AB9675  69 04 00     MX
    STA $00EE                       ; $AB9678  8D EE 00     MX
    CMP #$0100                      ; $AB967B  C9 00 01     MX
    BCC L_AB9689                    ; $AB967E  90 09        MX
    INC $00EC                       ; $AB9680  EE EC 00     MX
    CMP #$FFF0                      ; $AB9683  C9 F0 FF     MX
    BCS L_AB9689                    ; $AB9686  B0 01        MX
    RTS                             ; $AB9688  60           MX
L_AB9689:
    LDA $00F0                       ; $AB9689  AD F0 00     MX
    CMP #$00E0                      ; $AB968C  C9 E0 00     MX
    BCC L_AB9697                    ; $AB968F  90 06        MX
    CMP #$FFF0                      ; $AB9691  C9 F0 FF     MX
    BCS L_AB9697                    ; $AB9694  B0 01        MX
    RTS                             ; $AB9696  60           MX
L_AB9697:
    SEP #$20                        ; $AB9697  E2 20        MX
    LDA $00EC                       ; $AB9699  AD EC 00     mX
    BNE L_AB96A4                    ; $AB969C  D0 06        mX
    LDA $ABE4CF                     ; $AB969E  AF CF E4 AB  mX
    BRA L_AB96A8                    ; $AB96A2  80 04        mX
L_AB96A4:
    LDA $ABE4D3                     ; $AB96A4  AF D3 E4 AB  mX
L_AB96A8:
    ORA $050E                       ; $AB96A8  0D 0E 05     mX
    STA $050E                       ; $AB96AB  8D 0E 05     mX
    LDA $00F0                       ; $AB96AE  AD F0 00     mX
    STA $03E9                       ; $AB96B1  8D E9 03     mX
    LDA $00EE                       ; $AB96B4  AD EE 00     mX
    STA $03E8                       ; $AB96B7  8D E8 03     mX
    LDA $00F2                       ; $AB96BA  AD F2 00     mX
    STA $03EA                       ; $AB96BD  8D EA 03     mX
    LDA $002A                       ; $AB96C0  AD 2A 00     mX
    ORA $00F3                       ; $AB96C3  0D F3 00     mX
    STA $03EB                       ; $AB96C6  8D EB 03     mX
    REP #$20                        ; $AB96C9  C2 20        mX
    LDA #$00EC                      ; $AB96CB  A9 EC 00     MX
    STA ($10)                       ; $AB96CE  92 10        MX
    RTS                             ; $AB96D0  60           MX
L_AB96D1:
    STZ $00EC                       ; $AB96D1  9C EC 00     MX
    LDA $00EE                       ; $AB96D4  AD EE 00     MX
    CLC                             ; $AB96D7  18           MX
    ADC #$0004                      ; $AB96D8  69 04 00     MX
    STA $00EE                       ; $AB96DB  8D EE 00     MX
    CMP #$0100                      ; $AB96DE  C9 00 01     MX
    BCC L_AB96EC                    ; $AB96E1  90 09        MX
    INC $00EC                       ; $AB96E3  EE EC 00     MX
    CMP #$FFF0                      ; $AB96E6  C9 F0 FF     MX
    BCS L_AB96EC                    ; $AB96E9  B0 01        MX
    RTS                             ; $AB96EB  60           MX
L_AB96EC:
    LDA $00F0                       ; $AB96EC  AD F0 00     MX
    CMP #$00E0                      ; $AB96EF  C9 E0 00     MX
    BCC L_AB96FA                    ; $AB96F2  90 06        MX
    CMP #$FFF0                      ; $AB96F4  C9 F0 FF     MX
    BCS L_AB96FA                    ; $AB96F7  B0 01        MX
    RTS                             ; $AB96F9  60           MX
L_AB96FA:
    SEP #$20                        ; $AB96FA  E2 20        MX
    LDA $00EC                       ; $AB96FC  AD EC 00     mX
    BNE L_AB9707                    ; $AB96FF  D0 06        mX
    LDA $ABE4D0                     ; $AB9701  AF D0 E4 AB  mX
    BRA L_AB970B                    ; $AB9705  80 04        mX
L_AB9707:
    LDA $ABE4D4                     ; $AB9707  AF D4 E4 AB  mX
L_AB970B:
    ORA $050E                       ; $AB970B  0D 0E 05     mX
    STA $050E                       ; $AB970E  8D 0E 05     mX
    LDA $00F0                       ; $AB9711  AD F0 00     mX
    STA $03ED                       ; $AB9714  8D ED 03     mX
    LDA $00EE                       ; $AB9717  AD EE 00     mX
    STA $03EC                       ; $AB971A  8D EC 03     mX
    LDA $00F2                       ; $AB971D  AD F2 00     mX
    STA $03EE                       ; $AB9720  8D EE 03     mX
    LDA $002A                       ; $AB9723  AD 2A 00     mX
    ORA $00F3                       ; $AB9726  0D F3 00     mX
    STA $03EF                       ; $AB9729  8D EF 03     mX
    REP #$20                        ; $AB972C  C2 20        mX
    LDA #$00F0                      ; $AB972E  A9 F0 00     MX
    STA ($10)                       ; $AB9731  92 10        MX
    RTS                             ; $AB9733  60           MX
L_AB9734:
    STZ $00EC                       ; $AB9734  9C EC 00     MX
    LDA $00EE                       ; $AB9737  AD EE 00     MX
    CLC                             ; $AB973A  18           MX
    ADC #$0004                      ; $AB973B  69 04 00     MX
    STA $00EE                       ; $AB973E  8D EE 00     MX
    CMP #$0100                      ; $AB9741  C9 00 01     MX
    BCC L_AB974F                    ; $AB9744  90 09        MX
    INC $00EC                       ; $AB9746  EE EC 00     MX
    CMP #$FFF0                      ; $AB9749  C9 F0 FF     MX
    BCS L_AB974F                    ; $AB974C  B0 01        MX
    RTS                             ; $AB974E  60           MX
L_AB974F:
    LDA $00F0                       ; $AB974F  AD F0 00     MX
    CMP #$00E0                      ; $AB9752  C9 E0 00     MX
    BCC L_AB975D                    ; $AB9755  90 06        MX
    CMP #$FFF0                      ; $AB9757  C9 F0 FF     MX
    BCS L_AB975D                    ; $AB975A  B0 01        MX
    RTS                             ; $AB975C  60           MX
L_AB975D:
    SEP #$20                        ; $AB975D  E2 20        MX
    LDA $00EC                       ; $AB975F  AD EC 00     mX
    BNE L_AB976A                    ; $AB9762  D0 06        mX
    LDA $ABE4CD                     ; $AB9764  AF CD E4 AB  mX
    BRA L_AB976E                    ; $AB9768  80 04        mX
L_AB976A:
    LDA $ABE4D1                     ; $AB976A  AF D1 E4 AB  mX
L_AB976E:
    ORA $050F                       ; $AB976E  0D 0F 05     mX
    STA $050F                       ; $AB9771  8D 0F 05     mX
    LDA $00F0                       ; $AB9774  AD F0 00     mX
    STA $03F1                       ; $AB9777  8D F1 03     mX
    LDA $00EE                       ; $AB977A  AD EE 00     mX
    STA $03F0                       ; $AB977D  8D F0 03     mX
    LDA $00F2                       ; $AB9780  AD F2 00     mX
    STA $03F2                       ; $AB9783  8D F2 03     mX
    LDA $002A                       ; $AB9786  AD 2A 00     mX
    ORA $00F3                       ; $AB9789  0D F3 00     mX
    STA $03F3                       ; $AB978C  8D F3 03     mX
    REP #$20                        ; $AB978F  C2 20        mX
    LDA #$00F4                      ; $AB9791  A9 F4 00     MX
    STA ($10)                       ; $AB9794  92 10        MX
    RTS                             ; $AB9796  60           MX
L_AB9797:
    STZ $00EC                       ; $AB9797  9C EC 00     MX
    LDA $00EE                       ; $AB979A  AD EE 00     MX
    CLC                             ; $AB979D  18           MX
    ADC #$0004                      ; $AB979E  69 04 00     MX
    STA $00EE                       ; $AB97A1  8D EE 00     MX
    CMP #$0100                      ; $AB97A4  C9 00 01     MX
    BCC L_AB97B2                    ; $AB97A7  90 09        MX
    INC $00EC                       ; $AB97A9  EE EC 00     MX
    CMP #$FFF0                      ; $AB97AC  C9 F0 FF     MX
    BCS L_AB97B2                    ; $AB97AF  B0 01        MX
    RTS                             ; $AB97B1  60           MX
L_AB97B2:
    LDA $00F0                       ; $AB97B2  AD F0 00     MX
    CMP #$00E0                      ; $AB97B5  C9 E0 00     MX
    BCC L_AB97C0                    ; $AB97B8  90 06        MX
    CMP #$FFF0                      ; $AB97BA  C9 F0 FF     MX
    BCS L_AB97C0                    ; $AB97BD  B0 01        MX
    RTS                             ; $AB97BF  60           MX
L_AB97C0:
    SEP #$20                        ; $AB97C0  E2 20        MX
    LDA $00EC                       ; $AB97C2  AD EC 00     mX
    BNE L_AB97CD                    ; $AB97C5  D0 06        mX
    LDA $ABE4CE                     ; $AB97C7  AF CE E4 AB  mX
    BRA L_AB97D1                    ; $AB97CB  80 04        mX
L_AB97CD:
    LDA $ABE4D2                     ; $AB97CD  AF D2 E4 AB  mX
L_AB97D1:
    ORA $050F                       ; $AB97D1  0D 0F 05     mX
    STA $050F                       ; $AB97D4  8D 0F 05     mX
    LDA $00F0                       ; $AB97D7  AD F0 00     mX
    STA $03F5                       ; $AB97DA  8D F5 03     mX
    LDA $00EE                       ; $AB97DD  AD EE 00     mX
    STA $03F4                       ; $AB97E0  8D F4 03     mX
    LDA $00F2                       ; $AB97E3  AD F2 00     mX
    STA $03F6                       ; $AB97E6  8D F6 03     mX
    LDA $002A                       ; $AB97E9  AD 2A 00     mX
    ORA $00F3                       ; $AB97EC  0D F3 00     mX
    STA $03F7                       ; $AB97EF  8D F7 03     mX
    REP #$20                        ; $AB97F2  C2 20        mX
    LDA #$00F8                      ; $AB97F4  A9 F8 00     MX
    STA ($10)                       ; $AB97F7  92 10        MX
    RTS                             ; $AB97F9  60           MX
L_AB97FA:
    STZ $00EC                       ; $AB97FA  9C EC 00     MX
    LDA $00EE                       ; $AB97FD  AD EE 00     MX
    CLC                             ; $AB9800  18           MX
    ADC #$0004                      ; $AB9801  69 04 00     MX
    STA $00EE                       ; $AB9804  8D EE 00     MX
    CMP #$0100                      ; $AB9807  C9 00 01     MX
    BCC L_AB9815                    ; $AB980A  90 09        MX
    INC $00EC                       ; $AB980C  EE EC 00     MX
    CMP #$FFF0                      ; $AB980F  C9 F0 FF     MX
    BCS L_AB9815                    ; $AB9812  B0 01        MX
    RTS                             ; $AB9814  60           MX
L_AB9815:
    LDA $00F0                       ; $AB9815  AD F0 00     MX
    CMP #$00E0                      ; $AB9818  C9 E0 00     MX
    BCC L_AB9823                    ; $AB981B  90 06        MX
    CMP #$FFF0                      ; $AB981D  C9 F0 FF     MX
    BCS L_AB9823                    ; $AB9820  B0 01        MX
    RTS                             ; $AB9822  60           MX
L_AB9823:
    SEP #$20                        ; $AB9823  E2 20        MX
    LDA $00EC                       ; $AB9825  AD EC 00     mX
    BNE L_AB9830                    ; $AB9828  D0 06        mX
    LDA $ABE4CF                     ; $AB982A  AF CF E4 AB  mX
    BRA L_AB9834                    ; $AB982E  80 04        mX
L_AB9830:
    LDA $ABE4D3                     ; $AB9830  AF D3 E4 AB  mX
L_AB9834:
    ORA $050F                       ; $AB9834  0D 0F 05     mX
    STA $050F                       ; $AB9837  8D 0F 05     mX
    LDA $00F0                       ; $AB983A  AD F0 00     mX
    STA $03F9                       ; $AB983D  8D F9 03     mX
    LDA $00EE                       ; $AB9840  AD EE 00     mX
    STA $03F8                       ; $AB9843  8D F8 03     mX
    LDA $00F2                       ; $AB9846  AD F2 00     mX
    STA $03FA                       ; $AB9849  8D FA 03     mX
    LDA $002A                       ; $AB984C  AD 2A 00     mX
    ORA $00F3                       ; $AB984F  0D F3 00     mX
    STA $03FB                       ; $AB9852  8D FB 03     mX
    REP #$20                        ; $AB9855  C2 20        mX
    LDA #$00FC                      ; $AB9857  A9 FC 00     MX
    STA ($10)                       ; $AB985A  92 10        MX
    RTS                             ; $AB985C  60           MX
L_AB985D:
    STZ $00EC                       ; $AB985D  9C EC 00     MX
    LDA $00EE                       ; $AB9860  AD EE 00     MX
    CLC                             ; $AB9863  18           MX
    ADC #$0004                      ; $AB9864  69 04 00     MX
    STA $00EE                       ; $AB9867  8D EE 00     MX
    CMP #$0100                      ; $AB986A  C9 00 01     MX
    BCC L_AB9878                    ; $AB986D  90 09        MX
    INC $00EC                       ; $AB986F  EE EC 00     MX
    CMP #$FFF0                      ; $AB9872  C9 F0 FF     MX
    BCS L_AB9878                    ; $AB9875  B0 01        MX
    RTS                             ; $AB9877  60           MX
L_AB9878:
    LDA $00F0                       ; $AB9878  AD F0 00     MX
    CMP #$00E0                      ; $AB987B  C9 E0 00     MX
    BCC L_AB9886                    ; $AB987E  90 06        MX
    CMP #$FFF0                      ; $AB9880  C9 F0 FF     MX
    BCS L_AB9886                    ; $AB9883  B0 01        MX
    RTS                             ; $AB9885  60           MX
L_AB9886:
    SEP #$20                        ; $AB9886  E2 20        MX
    LDA $00EC                       ; $AB9888  AD EC 00     mX
    BNE L_AB9893                    ; $AB988B  D0 06        mX
    LDA $ABE4D0                     ; $AB988D  AF D0 E4 AB  mX
    BRA L_AB9897                    ; $AB9891  80 04        mX
L_AB9893:
    LDA $ABE4D4                     ; $AB9893  AF D4 E4 AB  mX
L_AB9897:
    ORA $050F                       ; $AB9897  0D 0F 05     mX
    STA $050F                       ; $AB989A  8D 0F 05     mX
    LDA $00F0                       ; $AB989D  AD F0 00     mX
    STA $03FD                       ; $AB98A0  8D FD 03     mX
    LDA $00EE                       ; $AB98A3  AD EE 00     mX
    STA $03FC                       ; $AB98A6  8D FC 03     mX
    LDA $00F2                       ; $AB98A9  AD F2 00     mX
    STA $03FE                       ; $AB98AC  8D FE 03     mX
    LDA $002A                       ; $AB98AF  AD 2A 00     mX
    ORA $00F3                       ; $AB98B2  0D F3 00     mX
    STA $03FF                       ; $AB98B5  8D FF 03     mX
    REP #$20                        ; $AB98B8  C2 20        mX
    LDA #$0100                      ; $AB98BA  A9 00 01     MX
    STA ($10)                       ; $AB98BD  92 10        MX
    RTS                             ; $AB98BF  60           MX
L_AB98C0:
    STZ $00EC                       ; $AB98C0  9C EC 00     MX
    LDA $00EE                       ; $AB98C3  AD EE 00     MX
    CLC                             ; $AB98C6  18           MX
    ADC #$0004                      ; $AB98C7  69 04 00     MX
    STA $00EE                       ; $AB98CA  8D EE 00     MX
    CMP #$0100                      ; $AB98CD  C9 00 01     MX
    BCC L_AB98DB                    ; $AB98D0  90 09        MX
    INC $00EC                       ; $AB98D2  EE EC 00     MX
    CMP #$FFF0                      ; $AB98D5  C9 F0 FF     MX
    BCS L_AB98DB                    ; $AB98D8  B0 01        MX
    RTS                             ; $AB98DA  60           MX
L_AB98DB:
    LDA $00F0                       ; $AB98DB  AD F0 00     MX
    CMP #$00E0                      ; $AB98DE  C9 E0 00     MX
    BCC L_AB98E9                    ; $AB98E1  90 06        MX
    CMP #$FFF0                      ; $AB98E3  C9 F0 FF     MX
    BCS L_AB98E9                    ; $AB98E6  B0 01        MX
    RTS                             ; $AB98E8  60           MX
L_AB98E9:
    SEP #$20                        ; $AB98E9  E2 20        MX
    LDA $00EC                       ; $AB98EB  AD EC 00     mX
    BNE L_AB98F6                    ; $AB98EE  D0 06        mX
    LDA $ABE4CD                     ; $AB98F0  AF CD E4 AB  mX
    BRA L_AB98FA                    ; $AB98F4  80 04        mX
L_AB98F6:
    LDA $ABE4D1                     ; $AB98F6  AF D1 E4 AB  mX
L_AB98FA:
    ORA $0510                       ; $AB98FA  0D 10 05     mX
    STA $0510                       ; $AB98FD  8D 10 05     mX
    LDA $00F0                       ; $AB9900  AD F0 00     mX
    STA $0401                       ; $AB9903  8D 01 04     mX
    LDA $00EE                       ; $AB9906  AD EE 00     mX
    STA $0400                       ; $AB9909  8D 00 04     mX
    LDA $00F2                       ; $AB990C  AD F2 00     mX
    STA $0402                       ; $AB990F  8D 02 04     mX
    LDA $002A                       ; $AB9912  AD 2A 00     mX
    ORA $00F3                       ; $AB9915  0D F3 00     mX
    STA $0403                       ; $AB9918  8D 03 04     mX
    REP #$20                        ; $AB991B  C2 20        mX
    LDA #$0104                      ; $AB991D  A9 04 01     MX
    STA ($10)                       ; $AB9920  92 10        MX
    RTS                             ; $AB9922  60           MX
L_AB9923:
    STZ $00EC                       ; $AB9923  9C EC 00     MX
    LDA $00EE                       ; $AB9926  AD EE 00     MX
    CLC                             ; $AB9929  18           MX
    ADC #$0004                      ; $AB992A  69 04 00     MX
    STA $00EE                       ; $AB992D  8D EE 00     MX
    CMP #$0100                      ; $AB9930  C9 00 01     MX
    BCC L_AB993E                    ; $AB9933  90 09        MX
    INC $00EC                       ; $AB9935  EE EC 00     MX
    CMP #$FFF0                      ; $AB9938  C9 F0 FF     MX
    BCS L_AB993E                    ; $AB993B  B0 01        MX
    RTS                             ; $AB993D  60           MX
L_AB993E:
    LDA $00F0                       ; $AB993E  AD F0 00     MX
    CMP #$00E0                      ; $AB9941  C9 E0 00     MX
    BCC L_AB994C                    ; $AB9944  90 06        MX
    CMP #$FFF0                      ; $AB9946  C9 F0 FF     MX
    BCS L_AB994C                    ; $AB9949  B0 01        MX
    RTS                             ; $AB994B  60           MX
L_AB994C:
    SEP #$20                        ; $AB994C  E2 20        MX
    LDA $00EC                       ; $AB994E  AD EC 00     mX
    BNE L_AB9959                    ; $AB9951  D0 06        mX
    LDA $ABE4CE                     ; $AB9953  AF CE E4 AB  mX
    BRA L_AB995D                    ; $AB9957  80 04        mX
L_AB9959:
    LDA $ABE4D2                     ; $AB9959  AF D2 E4 AB  mX
L_AB995D:
    ORA $0510                       ; $AB995D  0D 10 05     mX
    STA $0510                       ; $AB9960  8D 10 05     mX
    LDA $00F0                       ; $AB9963  AD F0 00     mX
    STA $0405                       ; $AB9966  8D 05 04     mX
    LDA $00EE                       ; $AB9969  AD EE 00     mX
    STA $0404                       ; $AB996C  8D 04 04     mX
    LDA $00F2                       ; $AB996F  AD F2 00     mX
    STA $0406                       ; $AB9972  8D 06 04     mX
    LDA $002A                       ; $AB9975  AD 2A 00     mX
    ORA $00F3                       ; $AB9978  0D F3 00     mX
    STA $0407                       ; $AB997B  8D 07 04     mX
    REP #$20                        ; $AB997E  C2 20        mX
    LDA #$0108                      ; $AB9980  A9 08 01     MX
    STA ($10)                       ; $AB9983  92 10        MX
    RTS                             ; $AB9985  60           MX
L_AB9986:
    STZ $00EC                       ; $AB9986  9C EC 00     MX
    LDA $00EE                       ; $AB9989  AD EE 00     MX
    CLC                             ; $AB998C  18           MX
    ADC #$0004                      ; $AB998D  69 04 00     MX
    STA $00EE                       ; $AB9990  8D EE 00     MX
    CMP #$0100                      ; $AB9993  C9 00 01     MX
    BCC L_AB99A1                    ; $AB9996  90 09        MX
    INC $00EC                       ; $AB9998  EE EC 00     MX
    CMP #$FFF0                      ; $AB999B  C9 F0 FF     MX
    BCS L_AB99A1                    ; $AB999E  B0 01        MX
    RTS                             ; $AB99A0  60           MX
L_AB99A1:
    LDA $00F0                       ; $AB99A1  AD F0 00     MX
    CMP #$00E0                      ; $AB99A4  C9 E0 00     MX
    BCC L_AB99AF                    ; $AB99A7  90 06        MX
    CMP #$FFF0                      ; $AB99A9  C9 F0 FF     MX
    BCS L_AB99AF                    ; $AB99AC  B0 01        MX
    RTS                             ; $AB99AE  60           MX
L_AB99AF:
    SEP #$20                        ; $AB99AF  E2 20        MX
    LDA $00EC                       ; $AB99B1  AD EC 00     mX
    BNE L_AB99BC                    ; $AB99B4  D0 06        mX
    LDA $ABE4CF                     ; $AB99B6  AF CF E4 AB  mX
    BRA L_AB99C0                    ; $AB99BA  80 04        mX
L_AB99BC:
    LDA $ABE4D3                     ; $AB99BC  AF D3 E4 AB  mX
L_AB99C0:
    ORA $0510                       ; $AB99C0  0D 10 05     mX
    STA $0510                       ; $AB99C3  8D 10 05     mX
    LDA $00F0                       ; $AB99C6  AD F0 00     mX
    STA $0409                       ; $AB99C9  8D 09 04     mX
    LDA $00EE                       ; $AB99CC  AD EE 00     mX
    STA $0408                       ; $AB99CF  8D 08 04     mX
    LDA $00F2                       ; $AB99D2  AD F2 00     mX
    STA $040A                       ; $AB99D5  8D 0A 04     mX
    LDA $002A                       ; $AB99D8  AD 2A 00     mX
    ORA $00F3                       ; $AB99DB  0D F3 00     mX
    STA $040B                       ; $AB99DE  8D 0B 04     mX
    REP #$20                        ; $AB99E1  C2 20        mX
    LDA #$010C                      ; $AB99E3  A9 0C 01     MX
    STA ($10)                       ; $AB99E6  92 10        MX
    RTS                             ; $AB99E8  60           MX
L_AB99E9:
    STZ $00EC                       ; $AB99E9  9C EC 00     MX
    LDA $00EE                       ; $AB99EC  AD EE 00     MX
    CLC                             ; $AB99EF  18           MX
    ADC #$0004                      ; $AB99F0  69 04 00     MX
    STA $00EE                       ; $AB99F3  8D EE 00     MX
    CMP #$0100                      ; $AB99F6  C9 00 01     MX
    BCC L_AB9A04                    ; $AB99F9  90 09        MX
    INC $00EC                       ; $AB99FB  EE EC 00     MX
    CMP #$FFF0                      ; $AB99FE  C9 F0 FF     MX
    BCS L_AB9A04                    ; $AB9A01  B0 01        MX
    RTS                             ; $AB9A03  60           MX
L_AB9A04:
    LDA $00F0                       ; $AB9A04  AD F0 00     MX
    CMP #$00E0                      ; $AB9A07  C9 E0 00     MX
    BCC L_AB9A12                    ; $AB9A0A  90 06        MX
    CMP #$FFF0                      ; $AB9A0C  C9 F0 FF     MX
    BCS L_AB9A12                    ; $AB9A0F  B0 01        MX
    RTS                             ; $AB9A11  60           MX
L_AB9A12:
    SEP #$20                        ; $AB9A12  E2 20        MX
    LDA $00EC                       ; $AB9A14  AD EC 00     mX
    BNE L_AB9A1F                    ; $AB9A17  D0 06        mX
    LDA $ABE4D0                     ; $AB9A19  AF D0 E4 AB  mX
    BRA L_AB9A23                    ; $AB9A1D  80 04        mX
L_AB9A1F:
    LDA $ABE4D4                     ; $AB9A1F  AF D4 E4 AB  mX
L_AB9A23:
    ORA $0510                       ; $AB9A23  0D 10 05     mX
    STA $0510                       ; $AB9A26  8D 10 05     mX
    LDA $00F0                       ; $AB9A29  AD F0 00     mX
    STA $040D                       ; $AB9A2C  8D 0D 04     mX
    LDA $00EE                       ; $AB9A2F  AD EE 00     mX
    STA $040C                       ; $AB9A32  8D 0C 04     mX
    LDA $00F2                       ; $AB9A35  AD F2 00     mX
    STA $040E                       ; $AB9A38  8D 0E 04     mX
    LDA $002A                       ; $AB9A3B  AD 2A 00     mX
    ORA $00F3                       ; $AB9A3E  0D F3 00     mX
    STA $040F                       ; $AB9A41  8D 0F 04     mX
    REP #$20                        ; $AB9A44  C2 20        mX
    LDA #$0110                      ; $AB9A46  A9 10 01     MX
    STA ($10)                       ; $AB9A49  92 10        MX
    RTS                             ; $AB9A4B  60           MX
L_AB9A4C:
    STZ $00EC                       ; $AB9A4C  9C EC 00     MX
    LDA $00EE                       ; $AB9A4F  AD EE 00     MX
    CLC                             ; $AB9A52  18           MX
    ADC #$0004                      ; $AB9A53  69 04 00     MX
    STA $00EE                       ; $AB9A56  8D EE 00     MX
    CMP #$0100                      ; $AB9A59  C9 00 01     MX
    BCC L_AB9A67                    ; $AB9A5C  90 09        MX
    INC $00EC                       ; $AB9A5E  EE EC 00     MX
    CMP #$FFF0                      ; $AB9A61  C9 F0 FF     MX
    BCS L_AB9A67                    ; $AB9A64  B0 01        MX
    RTS                             ; $AB9A66  60           MX
L_AB9A67:
    LDA $00F0                       ; $AB9A67  AD F0 00     MX
    CMP #$00E0                      ; $AB9A6A  C9 E0 00     MX
    BCC L_AB9A75                    ; $AB9A6D  90 06        MX
    CMP #$FFF0                      ; $AB9A6F  C9 F0 FF     MX
    BCS L_AB9A75                    ; $AB9A72  B0 01        MX
    RTS                             ; $AB9A74  60           MX
L_AB9A75:
    SEP #$20                        ; $AB9A75  E2 20        MX
    LDA $00EC                       ; $AB9A77  AD EC 00     mX
    BNE L_AB9A82                    ; $AB9A7A  D0 06        mX
    LDA $ABE4CD                     ; $AB9A7C  AF CD E4 AB  mX
    BRA L_AB9A86                    ; $AB9A80  80 04        mX
L_AB9A82:
    LDA $ABE4D1                     ; $AB9A82  AF D1 E4 AB  mX
L_AB9A86:
    ORA $0511                       ; $AB9A86  0D 11 05     mX
    STA $0511                       ; $AB9A89  8D 11 05     mX
    LDA $00F0                       ; $AB9A8C  AD F0 00     mX
    STA $0411                       ; $AB9A8F  8D 11 04     mX
    LDA $00EE                       ; $AB9A92  AD EE 00     mX
    STA $0410                       ; $AB9A95  8D 10 04     mX
    LDA $00F2                       ; $AB9A98  AD F2 00     mX
    STA $0412                       ; $AB9A9B  8D 12 04     mX
    LDA $002A                       ; $AB9A9E  AD 2A 00     mX
    ORA $00F3                       ; $AB9AA1  0D F3 00     mX
    STA $0413                       ; $AB9AA4  8D 13 04     mX
    REP #$20                        ; $AB9AA7  C2 20        mX
    LDA #$0114                      ; $AB9AA9  A9 14 01     MX
    STA ($10)                       ; $AB9AAC  92 10        MX
    RTS                             ; $AB9AAE  60           MX
L_AB9AAF:
    STZ $00EC                       ; $AB9AAF  9C EC 00     MX
    LDA $00EE                       ; $AB9AB2  AD EE 00     MX
    CLC                             ; $AB9AB5  18           MX
    ADC #$0004                      ; $AB9AB6  69 04 00     MX
    STA $00EE                       ; $AB9AB9  8D EE 00     MX
    CMP #$0100                      ; $AB9ABC  C9 00 01     MX
    BCC L_AB9ACA                    ; $AB9ABF  90 09        MX
    INC $00EC                       ; $AB9AC1  EE EC 00     MX
    CMP #$FFF0                      ; $AB9AC4  C9 F0 FF     MX
    BCS L_AB9ACA                    ; $AB9AC7  B0 01        MX
    RTS                             ; $AB9AC9  60           MX
L_AB9ACA:
    LDA $00F0                       ; $AB9ACA  AD F0 00     MX
    CMP #$00E0                      ; $AB9ACD  C9 E0 00     MX
    BCC L_AB9AD8                    ; $AB9AD0  90 06        MX
    CMP #$FFF0                      ; $AB9AD2  C9 F0 FF     MX
    BCS L_AB9AD8                    ; $AB9AD5  B0 01        MX
    RTS                             ; $AB9AD7  60           MX
L_AB9AD8:
    SEP #$20                        ; $AB9AD8  E2 20        MX
    LDA $00EC                       ; $AB9ADA  AD EC 00     mX
    BNE L_AB9AE5                    ; $AB9ADD  D0 06        mX
    LDA $ABE4CE                     ; $AB9ADF  AF CE E4 AB  mX
    BRA L_AB9AE9                    ; $AB9AE3  80 04        mX
L_AB9AE5:
    LDA $ABE4D2                     ; $AB9AE5  AF D2 E4 AB  mX
L_AB9AE9:
    ORA $0511                       ; $AB9AE9  0D 11 05     mX
    STA $0511                       ; $AB9AEC  8D 11 05     mX
    LDA $00F0                       ; $AB9AEF  AD F0 00     mX
    STA $0415                       ; $AB9AF2  8D 15 04     mX
    LDA $00EE                       ; $AB9AF5  AD EE 00     mX
    STA $0414                       ; $AB9AF8  8D 14 04     mX
    LDA $00F2                       ; $AB9AFB  AD F2 00     mX
    STA $0416                       ; $AB9AFE  8D 16 04     mX
    LDA $002A                       ; $AB9B01  AD 2A 00     mX
    ORA $00F3                       ; $AB9B04  0D F3 00     mX
    STA $0417                       ; $AB9B07  8D 17 04     mX
    REP #$20                        ; $AB9B0A  C2 20        mX
    LDA #$0118                      ; $AB9B0C  A9 18 01     MX
    STA ($10)                       ; $AB9B0F  92 10        MX
    RTS                             ; $AB9B11  60           MX
L_AB9B12:
    STZ $00EC                       ; $AB9B12  9C EC 00     MX
    LDA $00EE                       ; $AB9B15  AD EE 00     MX
    CLC                             ; $AB9B18  18           MX
    ADC #$0004                      ; $AB9B19  69 04 00     MX
    STA $00EE                       ; $AB9B1C  8D EE 00     MX
    CMP #$0100                      ; $AB9B1F  C9 00 01     MX
    BCC L_AB9B2D                    ; $AB9B22  90 09        MX
    INC $00EC                       ; $AB9B24  EE EC 00     MX
    CMP #$FFF0                      ; $AB9B27  C9 F0 FF     MX
    BCS L_AB9B2D                    ; $AB9B2A  B0 01        MX
    RTS                             ; $AB9B2C  60           MX
L_AB9B2D:
    LDA $00F0                       ; $AB9B2D  AD F0 00     MX
    CMP #$00E0                      ; $AB9B30  C9 E0 00     MX
    BCC L_AB9B3B                    ; $AB9B33  90 06        MX
    CMP #$FFF0                      ; $AB9B35  C9 F0 FF     MX
    BCS L_AB9B3B                    ; $AB9B38  B0 01        MX
    RTS                             ; $AB9B3A  60           MX
L_AB9B3B:
    SEP #$20                        ; $AB9B3B  E2 20        MX
    LDA $00EC                       ; $AB9B3D  AD EC 00     mX
    BNE L_AB9B48                    ; $AB9B40  D0 06        mX
    LDA $ABE4CF                     ; $AB9B42  AF CF E4 AB  mX
    BRA L_AB9B4C                    ; $AB9B46  80 04        mX
L_AB9B48:
    LDA $ABE4D3                     ; $AB9B48  AF D3 E4 AB  mX
L_AB9B4C:
    ORA $0511                       ; $AB9B4C  0D 11 05     mX
    STA $0511                       ; $AB9B4F  8D 11 05     mX
    LDA $00F0                       ; $AB9B52  AD F0 00     mX
    STA $0419                       ; $AB9B55  8D 19 04     mX
    LDA $00EE                       ; $AB9B58  AD EE 00     mX
    STA $0418                       ; $AB9B5B  8D 18 04     mX
    LDA $00F2                       ; $AB9B5E  AD F2 00     mX
    STA $041A                       ; $AB9B61  8D 1A 04     mX
    LDA $002A                       ; $AB9B64  AD 2A 00     mX
    ORA $00F3                       ; $AB9B67  0D F3 00     mX
    STA $041B                       ; $AB9B6A  8D 1B 04     mX
    REP #$20                        ; $AB9B6D  C2 20        mX
    LDA #$011C                      ; $AB9B6F  A9 1C 01     MX
    STA ($10)                       ; $AB9B72  92 10        MX
    RTS                             ; $AB9B74  60           MX
L_AB9B75:
    STZ $00EC                       ; $AB9B75  9C EC 00     MX
    LDA $00EE                       ; $AB9B78  AD EE 00     MX
    CLC                             ; $AB9B7B  18           MX
    ADC #$0004                      ; $AB9B7C  69 04 00     MX
    STA $00EE                       ; $AB9B7F  8D EE 00     MX
    CMP #$0100                      ; $AB9B82  C9 00 01     MX
    BCC L_AB9B90                    ; $AB9B85  90 09        MX
    INC $00EC                       ; $AB9B87  EE EC 00     MX
    CMP #$FFF0                      ; $AB9B8A  C9 F0 FF     MX
    BCS L_AB9B90                    ; $AB9B8D  B0 01        MX
    RTS                             ; $AB9B8F  60           MX
L_AB9B90:
    LDA $00F0                       ; $AB9B90  AD F0 00     MX
    CMP #$00E0                      ; $AB9B93  C9 E0 00     MX
    BCC L_AB9B9E                    ; $AB9B96  90 06        MX
    CMP #$FFF0                      ; $AB9B98  C9 F0 FF     MX
    BCS L_AB9B9E                    ; $AB9B9B  B0 01        MX
    RTS                             ; $AB9B9D  60           MX
L_AB9B9E:
    SEP #$20                        ; $AB9B9E  E2 20        MX
    LDA $00EC                       ; $AB9BA0  AD EC 00     mX
    BNE L_AB9BAB                    ; $AB9BA3  D0 06        mX
    LDA $ABE4D0                     ; $AB9BA5  AF D0 E4 AB  mX
    BRA L_AB9BAF                    ; $AB9BA9  80 04        mX
L_AB9BAB:
    LDA $ABE4D4                     ; $AB9BAB  AF D4 E4 AB  mX
L_AB9BAF:
    ORA $0511                       ; $AB9BAF  0D 11 05     mX
    STA $0511                       ; $AB9BB2  8D 11 05     mX
    LDA $00F0                       ; $AB9BB5  AD F0 00     mX
    STA $041D                       ; $AB9BB8  8D 1D 04     mX
    LDA $00EE                       ; $AB9BBB  AD EE 00     mX
    STA $041C                       ; $AB9BBE  8D 1C 04     mX
    LDA $00F2                       ; $AB9BC1  AD F2 00     mX
    STA $041E                       ; $AB9BC4  8D 1E 04     mX
    LDA $002A                       ; $AB9BC7  AD 2A 00     mX
    ORA $00F3                       ; $AB9BCA  0D F3 00     mX
    STA $041F                       ; $AB9BCD  8D 1F 04     mX
    REP #$20                        ; $AB9BD0  C2 20        mX
    LDA #$0120                      ; $AB9BD2  A9 20 01     MX
    STA ($10)                       ; $AB9BD5  92 10        MX
    RTS                             ; $AB9BD7  60           MX
L_AB9BD8:
    STZ $00EC                       ; $AB9BD8  9C EC 00     MX
    LDA $00EE                       ; $AB9BDB  AD EE 00     MX
    CLC                             ; $AB9BDE  18           MX
    ADC #$0004                      ; $AB9BDF  69 04 00     MX
    STA $00EE                       ; $AB9BE2  8D EE 00     MX
    CMP #$0100                      ; $AB9BE5  C9 00 01     MX
    BCC L_AB9BF3                    ; $AB9BE8  90 09        MX
    INC $00EC                       ; $AB9BEA  EE EC 00     MX
    CMP #$FFF0                      ; $AB9BED  C9 F0 FF     MX
    BCS L_AB9BF3                    ; $AB9BF0  B0 01        MX
    RTS                             ; $AB9BF2  60           MX
L_AB9BF3:
    LDA $00F0                       ; $AB9BF3  AD F0 00     MX
    CMP #$00E0                      ; $AB9BF6  C9 E0 00     MX
    BCC L_AB9C01                    ; $AB9BF9  90 06        MX
    CMP #$FFF0                      ; $AB9BFB  C9 F0 FF     MX
    BCS L_AB9C01                    ; $AB9BFE  B0 01        MX
    RTS                             ; $AB9C00  60           MX
L_AB9C01:
    SEP #$20                        ; $AB9C01  E2 20        MX
    LDA $00EC                       ; $AB9C03  AD EC 00     mX
    BNE L_AB9C0E                    ; $AB9C06  D0 06        mX
    LDA $ABE4CD                     ; $AB9C08  AF CD E4 AB  mX
    BRA L_AB9C12                    ; $AB9C0C  80 04        mX
L_AB9C0E:
    LDA $ABE4D1                     ; $AB9C0E  AF D1 E4 AB  mX
L_AB9C12:
    ORA $0512                       ; $AB9C12  0D 12 05     mX
    STA $0512                       ; $AB9C15  8D 12 05     mX
    LDA $00F0                       ; $AB9C18  AD F0 00     mX
    STA $0421                       ; $AB9C1B  8D 21 04     mX
    LDA $00EE                       ; $AB9C1E  AD EE 00     mX
    STA $0420                       ; $AB9C21  8D 20 04     mX
    LDA $00F2                       ; $AB9C24  AD F2 00     mX
    STA $0422                       ; $AB9C27  8D 22 04     mX
    LDA $002A                       ; $AB9C2A  AD 2A 00     mX
    ORA $00F3                       ; $AB9C2D  0D F3 00     mX
    STA $0423                       ; $AB9C30  8D 23 04     mX
    REP #$20                        ; $AB9C33  C2 20        mX
    LDA #$0124                      ; $AB9C35  A9 24 01     MX
    STA ($10)                       ; $AB9C38  92 10        MX
    RTS                             ; $AB9C3A  60           MX
L_AB9C3B:
    STZ $00EC                       ; $AB9C3B  9C EC 00     MX
    LDA $00EE                       ; $AB9C3E  AD EE 00     MX
    CLC                             ; $AB9C41  18           MX
    ADC #$0004                      ; $AB9C42  69 04 00     MX
    STA $00EE                       ; $AB9C45  8D EE 00     MX
    CMP #$0100                      ; $AB9C48  C9 00 01     MX
    BCC L_AB9C56                    ; $AB9C4B  90 09        MX
    INC $00EC                       ; $AB9C4D  EE EC 00     MX
    CMP #$FFF0                      ; $AB9C50  C9 F0 FF     MX
    BCS L_AB9C56                    ; $AB9C53  B0 01        MX
    RTS                             ; $AB9C55  60           MX
L_AB9C56:
    LDA $00F0                       ; $AB9C56  AD F0 00     MX
    CMP #$00E0                      ; $AB9C59  C9 E0 00     MX
    BCC L_AB9C64                    ; $AB9C5C  90 06        MX
    CMP #$FFF0                      ; $AB9C5E  C9 F0 FF     MX
    BCS L_AB9C64                    ; $AB9C61  B0 01        MX
    RTS                             ; $AB9C63  60           MX
L_AB9C64:
    SEP #$20                        ; $AB9C64  E2 20        MX
    LDA $00EC                       ; $AB9C66  AD EC 00     mX
    BNE L_AB9C71                    ; $AB9C69  D0 06        mX
    LDA $ABE4CE                     ; $AB9C6B  AF CE E4 AB  mX
    BRA L_AB9C75                    ; $AB9C6F  80 04        mX
L_AB9C71:
    LDA $ABE4D2                     ; $AB9C71  AF D2 E4 AB  mX
L_AB9C75:
    ORA $0512                       ; $AB9C75  0D 12 05     mX
    STA $0512                       ; $AB9C78  8D 12 05     mX
    LDA $00F0                       ; $AB9C7B  AD F0 00     mX
    STA $0425                       ; $AB9C7E  8D 25 04     mX
    LDA $00EE                       ; $AB9C81  AD EE 00     mX
    STA $0424                       ; $AB9C84  8D 24 04     mX
    LDA $00F2                       ; $AB9C87  AD F2 00     mX
    STA $0426                       ; $AB9C8A  8D 26 04     mX
    LDA $002A                       ; $AB9C8D  AD 2A 00     mX
    ORA $00F3                       ; $AB9C90  0D F3 00     mX
    STA $0427                       ; $AB9C93  8D 27 04     mX
    REP #$20                        ; $AB9C96  C2 20        mX
    LDA #$0128                      ; $AB9C98  A9 28 01     MX
    STA ($10)                       ; $AB9C9B  92 10        MX
    RTS                             ; $AB9C9D  60           MX
L_AB9C9E:
    STZ $00EC                       ; $AB9C9E  9C EC 00     MX
    LDA $00EE                       ; $AB9CA1  AD EE 00     MX
    CLC                             ; $AB9CA4  18           MX
    ADC #$0004                      ; $AB9CA5  69 04 00     MX
    STA $00EE                       ; $AB9CA8  8D EE 00     MX
    CMP #$0100                      ; $AB9CAB  C9 00 01     MX
    BCC L_AB9CB9                    ; $AB9CAE  90 09        MX
    INC $00EC                       ; $AB9CB0  EE EC 00     MX
    CMP #$FFF0                      ; $AB9CB3  C9 F0 FF     MX
    BCS L_AB9CB9                    ; $AB9CB6  B0 01        MX
    RTS                             ; $AB9CB8  60           MX
L_AB9CB9:
    LDA $00F0                       ; $AB9CB9  AD F0 00     MX
    CMP #$00E0                      ; $AB9CBC  C9 E0 00     MX
    BCC L_AB9CC7                    ; $AB9CBF  90 06        MX
    CMP #$FFF0                      ; $AB9CC1  C9 F0 FF     MX
    BCS L_AB9CC7                    ; $AB9CC4  B0 01        MX
    RTS                             ; $AB9CC6  60           MX
L_AB9CC7:
    SEP #$20                        ; $AB9CC7  E2 20        MX
    LDA $00EC                       ; $AB9CC9  AD EC 00     mX
    BNE L_AB9CD4                    ; $AB9CCC  D0 06        mX
    LDA $ABE4CF                     ; $AB9CCE  AF CF E4 AB  mX
    BRA L_AB9CD8                    ; $AB9CD2  80 04        mX
L_AB9CD4:
    LDA $ABE4D3                     ; $AB9CD4  AF D3 E4 AB  mX
L_AB9CD8:
    ORA $0512                       ; $AB9CD8  0D 12 05     mX
    STA $0512                       ; $AB9CDB  8D 12 05     mX
    LDA $00F0                       ; $AB9CDE  AD F0 00     mX
    STA $0429                       ; $AB9CE1  8D 29 04     mX
    LDA $00EE                       ; $AB9CE4  AD EE 00     mX
    STA $0428                       ; $AB9CE7  8D 28 04     mX
    LDA $00F2                       ; $AB9CEA  AD F2 00     mX
    STA $042A                       ; $AB9CED  8D 2A 04     mX
    LDA $002A                       ; $AB9CF0  AD 2A 00     mX
    ORA $00F3                       ; $AB9CF3  0D F3 00     mX
    STA $042B                       ; $AB9CF6  8D 2B 04     mX
    REP #$20                        ; $AB9CF9  C2 20        mX
    LDA #$012C                      ; $AB9CFB  A9 2C 01     MX
    STA ($10)                       ; $AB9CFE  92 10        MX
    RTS                             ; $AB9D00  60           MX
L_AB9D01:
    STZ $00EC                       ; $AB9D01  9C EC 00     MX
    LDA $00EE                       ; $AB9D04  AD EE 00     MX
    CLC                             ; $AB9D07  18           MX
    ADC #$0004                      ; $AB9D08  69 04 00     MX
    STA $00EE                       ; $AB9D0B  8D EE 00     MX
    CMP #$0100                      ; $AB9D0E  C9 00 01     MX
    BCC L_AB9D1C                    ; $AB9D11  90 09        MX
    INC $00EC                       ; $AB9D13  EE EC 00     MX
    CMP #$FFF0                      ; $AB9D16  C9 F0 FF     MX
    BCS L_AB9D1C                    ; $AB9D19  B0 01        MX
    RTS                             ; $AB9D1B  60           MX
L_AB9D1C:
    LDA $00F0                       ; $AB9D1C  AD F0 00     MX
    CMP #$00E0                      ; $AB9D1F  C9 E0 00     MX
    BCC L_AB9D2A                    ; $AB9D22  90 06        MX
    CMP #$FFF0                      ; $AB9D24  C9 F0 FF     MX
    BCS L_AB9D2A                    ; $AB9D27  B0 01        MX
    RTS                             ; $AB9D29  60           MX
L_AB9D2A:
    SEP #$20                        ; $AB9D2A  E2 20        MX
    LDA $00EC                       ; $AB9D2C  AD EC 00     mX
    BNE L_AB9D37                    ; $AB9D2F  D0 06        mX
    LDA $ABE4D0                     ; $AB9D31  AF D0 E4 AB  mX
    BRA L_AB9D3B                    ; $AB9D35  80 04        mX
L_AB9D37:
    LDA $ABE4D4                     ; $AB9D37  AF D4 E4 AB  mX
L_AB9D3B:
    ORA $0512                       ; $AB9D3B  0D 12 05     mX
    STA $0512                       ; $AB9D3E  8D 12 05     mX
    LDA $00F0                       ; $AB9D41  AD F0 00     mX
    STA $042D                       ; $AB9D44  8D 2D 04     mX
    LDA $00EE                       ; $AB9D47  AD EE 00     mX
    STA $042C                       ; $AB9D4A  8D 2C 04     mX
    LDA $00F2                       ; $AB9D4D  AD F2 00     mX
    STA $042E                       ; $AB9D50  8D 2E 04     mX
    LDA $002A                       ; $AB9D53  AD 2A 00     mX
    ORA $00F3                       ; $AB9D56  0D F3 00     mX
    STA $042F                       ; $AB9D59  8D 2F 04     mX
    REP #$20                        ; $AB9D5C  C2 20        mX
    LDA #$0130                      ; $AB9D5E  A9 30 01     MX
    STA ($10)                       ; $AB9D61  92 10        MX
    RTS                             ; $AB9D63  60           MX
L_AB9D64:
    STZ $00EC                       ; $AB9D64  9C EC 00     MX
    LDA $00EE                       ; $AB9D67  AD EE 00     MX
    CLC                             ; $AB9D6A  18           MX
    ADC #$0004                      ; $AB9D6B  69 04 00     MX
    STA $00EE                       ; $AB9D6E  8D EE 00     MX
    CMP #$0100                      ; $AB9D71  C9 00 01     MX
    BCC L_AB9D7F                    ; $AB9D74  90 09        MX
    INC $00EC                       ; $AB9D76  EE EC 00     MX
    CMP #$FFF0                      ; $AB9D79  C9 F0 FF     MX
    BCS L_AB9D7F                    ; $AB9D7C  B0 01        MX
    RTS                             ; $AB9D7E  60           MX
L_AB9D7F:
    LDA $00F0                       ; $AB9D7F  AD F0 00     MX
    CMP #$00E0                      ; $AB9D82  C9 E0 00     MX
    BCC L_AB9D8D                    ; $AB9D85  90 06        MX
    CMP #$FFF0                      ; $AB9D87  C9 F0 FF     MX
    BCS L_AB9D8D                    ; $AB9D8A  B0 01        MX
    RTS                             ; $AB9D8C  60           MX
L_AB9D8D:
    SEP #$20                        ; $AB9D8D  E2 20        MX
    LDA $00EC                       ; $AB9D8F  AD EC 00     mX
    BNE L_AB9D9A                    ; $AB9D92  D0 06        mX
    LDA $ABE4CD                     ; $AB9D94  AF CD E4 AB  mX
    BRA L_AB9D9E                    ; $AB9D98  80 04        mX
L_AB9D9A:
    LDA $ABE4D1                     ; $AB9D9A  AF D1 E4 AB  mX
L_AB9D9E:
    ORA $0513                       ; $AB9D9E  0D 13 05     mX
    STA $0513                       ; $AB9DA1  8D 13 05     mX
    LDA $00F0                       ; $AB9DA4  AD F0 00     mX
    STA $0431                       ; $AB9DA7  8D 31 04     mX
    LDA $00EE                       ; $AB9DAA  AD EE 00     mX
    STA $0430                       ; $AB9DAD  8D 30 04     mX
    LDA $00F2                       ; $AB9DB0  AD F2 00     mX
    STA $0432                       ; $AB9DB3  8D 32 04     mX
    LDA $002A                       ; $AB9DB6  AD 2A 00     mX
    ORA $00F3                       ; $AB9DB9  0D F3 00     mX
    STA $0433                       ; $AB9DBC  8D 33 04     mX
    REP #$20                        ; $AB9DBF  C2 20        mX
    LDA #$0134                      ; $AB9DC1  A9 34 01     MX
    STA ($10)                       ; $AB9DC4  92 10        MX
    RTS                             ; $AB9DC6  60           MX
L_AB9DC7:
    STZ $00EC                       ; $AB9DC7  9C EC 00     MX
    LDA $00EE                       ; $AB9DCA  AD EE 00     MX
    CLC                             ; $AB9DCD  18           MX
    ADC #$0004                      ; $AB9DCE  69 04 00     MX
    STA $00EE                       ; $AB9DD1  8D EE 00     MX
    CMP #$0100                      ; $AB9DD4  C9 00 01     MX
    BCC L_AB9DE2                    ; $AB9DD7  90 09        MX
    INC $00EC                       ; $AB9DD9  EE EC 00     MX
    CMP #$FFF0                      ; $AB9DDC  C9 F0 FF     MX
    BCS L_AB9DE2                    ; $AB9DDF  B0 01        MX
    RTS                             ; $AB9DE1  60           MX
L_AB9DE2:
    LDA $00F0                       ; $AB9DE2  AD F0 00     MX
    CMP #$00E0                      ; $AB9DE5  C9 E0 00     MX
    BCC L_AB9DF0                    ; $AB9DE8  90 06        MX
    CMP #$FFF0                      ; $AB9DEA  C9 F0 FF     MX
    BCS L_AB9DF0                    ; $AB9DED  B0 01        MX
    RTS                             ; $AB9DEF  60           MX
L_AB9DF0:
    SEP #$20                        ; $AB9DF0  E2 20        MX
    LDA $00EC                       ; $AB9DF2  AD EC 00     mX
    BNE L_AB9DFD                    ; $AB9DF5  D0 06        mX
    LDA $ABE4CE                     ; $AB9DF7  AF CE E4 AB  mX
    BRA L_AB9E01                    ; $AB9DFB  80 04        mX
L_AB9DFD:
    LDA $ABE4D2                     ; $AB9DFD  AF D2 E4 AB  mX
L_AB9E01:
    ORA $0513                       ; $AB9E01  0D 13 05     mX
    STA $0513                       ; $AB9E04  8D 13 05     mX
    LDA $00F0                       ; $AB9E07  AD F0 00     mX
    STA $0435                       ; $AB9E0A  8D 35 04     mX
    LDA $00EE                       ; $AB9E0D  AD EE 00     mX
    STA $0434                       ; $AB9E10  8D 34 04     mX
    LDA $00F2                       ; $AB9E13  AD F2 00     mX
    STA $0436                       ; $AB9E16  8D 36 04     mX
    LDA $002A                       ; $AB9E19  AD 2A 00     mX
    ORA $00F3                       ; $AB9E1C  0D F3 00     mX
    STA $0437                       ; $AB9E1F  8D 37 04     mX
    REP #$20                        ; $AB9E22  C2 20        mX
    LDA #$0138                      ; $AB9E24  A9 38 01     MX
    STA ($10)                       ; $AB9E27  92 10        MX
    RTS                             ; $AB9E29  60           MX
L_AB9E2A:
    STZ $00EC                       ; $AB9E2A  9C EC 00     MX
    LDA $00EE                       ; $AB9E2D  AD EE 00     MX
    CLC                             ; $AB9E30  18           MX
    ADC #$0004                      ; $AB9E31  69 04 00     MX
    STA $00EE                       ; $AB9E34  8D EE 00     MX
    CMP #$0100                      ; $AB9E37  C9 00 01     MX
    BCC L_AB9E45                    ; $AB9E3A  90 09        MX
    INC $00EC                       ; $AB9E3C  EE EC 00     MX
    CMP #$FFF0                      ; $AB9E3F  C9 F0 FF     MX
    BCS L_AB9E45                    ; $AB9E42  B0 01        MX
    RTS                             ; $AB9E44  60           MX
L_AB9E45:
    LDA $00F0                       ; $AB9E45  AD F0 00     MX
    CMP #$00E0                      ; $AB9E48  C9 E0 00     MX
    BCC L_AB9E53                    ; $AB9E4B  90 06        MX
    CMP #$FFF0                      ; $AB9E4D  C9 F0 FF     MX
    BCS L_AB9E53                    ; $AB9E50  B0 01        MX
    RTS                             ; $AB9E52  60           MX
L_AB9E53:
    SEP #$20                        ; $AB9E53  E2 20        MX
    LDA $00EC                       ; $AB9E55  AD EC 00     mX
    BNE L_AB9E60                    ; $AB9E58  D0 06        mX
    LDA $ABE4CF                     ; $AB9E5A  AF CF E4 AB  mX
    BRA L_AB9E64                    ; $AB9E5E  80 04        mX
L_AB9E60:
    LDA $ABE4D3                     ; $AB9E60  AF D3 E4 AB  mX
L_AB9E64:
    ORA $0513                       ; $AB9E64  0D 13 05     mX
    STA $0513                       ; $AB9E67  8D 13 05     mX
    LDA $00F0                       ; $AB9E6A  AD F0 00     mX
    STA $0439                       ; $AB9E6D  8D 39 04     mX
    LDA $00EE                       ; $AB9E70  AD EE 00     mX
    STA $0438                       ; $AB9E73  8D 38 04     mX
    LDA $00F2                       ; $AB9E76  AD F2 00     mX
    STA $043A                       ; $AB9E79  8D 3A 04     mX
    LDA $002A                       ; $AB9E7C  AD 2A 00     mX
    ORA $00F3                       ; $AB9E7F  0D F3 00     mX
    STA $043B                       ; $AB9E82  8D 3B 04     mX
    REP #$20                        ; $AB9E85  C2 20        mX
    LDA #$013C                      ; $AB9E87  A9 3C 01     MX
    STA ($10)                       ; $AB9E8A  92 10        MX
    RTS                             ; $AB9E8C  60           MX
L_AB9E8D:
    STZ $00EC                       ; $AB9E8D  9C EC 00     MX
    LDA $00EE                       ; $AB9E90  AD EE 00     MX
    CLC                             ; $AB9E93  18           MX
    ADC #$0004                      ; $AB9E94  69 04 00     MX
    STA $00EE                       ; $AB9E97  8D EE 00     MX
    CMP #$0100                      ; $AB9E9A  C9 00 01     MX
    BCC L_AB9EA8                    ; $AB9E9D  90 09        MX
    INC $00EC                       ; $AB9E9F  EE EC 00     MX
    CMP #$FFF0                      ; $AB9EA2  C9 F0 FF     MX
    BCS L_AB9EA8                    ; $AB9EA5  B0 01        MX
    RTS                             ; $AB9EA7  60           MX
L_AB9EA8:
    LDA $00F0                       ; $AB9EA8  AD F0 00     MX
    CMP #$00E0                      ; $AB9EAB  C9 E0 00     MX
    BCC L_AB9EB6                    ; $AB9EAE  90 06        MX
    CMP #$FFF0                      ; $AB9EB0  C9 F0 FF     MX
    BCS L_AB9EB6                    ; $AB9EB3  B0 01        MX
    RTS                             ; $AB9EB5  60           MX
L_AB9EB6:
    SEP #$20                        ; $AB9EB6  E2 20        MX
    LDA $00EC                       ; $AB9EB8  AD EC 00     mX
    BNE L_AB9EC3                    ; $AB9EBB  D0 06        mX
    LDA $ABE4D0                     ; $AB9EBD  AF D0 E4 AB  mX
    BRA L_AB9EC7                    ; $AB9EC1  80 04        mX
L_AB9EC3:
    LDA $ABE4D4                     ; $AB9EC3  AF D4 E4 AB  mX
L_AB9EC7:
    ORA $0513                       ; $AB9EC7  0D 13 05     mX
    STA $0513                       ; $AB9ECA  8D 13 05     mX
    LDA $00F0                       ; $AB9ECD  AD F0 00     mX
    STA $043D                       ; $AB9ED0  8D 3D 04     mX
    LDA $00EE                       ; $AB9ED3  AD EE 00     mX
    STA $043C                       ; $AB9ED6  8D 3C 04     mX
    LDA $00F2                       ; $AB9ED9  AD F2 00     mX
    STA $043E                       ; $AB9EDC  8D 3E 04     mX
    LDA $002A                       ; $AB9EDF  AD 2A 00     mX
    ORA $00F3                       ; $AB9EE2  0D F3 00     mX
    STA $043F                       ; $AB9EE5  8D 3F 04     mX
    REP #$20                        ; $AB9EE8  C2 20        mX
    LDA #$0140                      ; $AB9EEA  A9 40 01     MX
    STA ($10)                       ; $AB9EED  92 10        MX
    RTS                             ; $AB9EEF  60           MX
L_AB9EF0:
    STZ $00EC                       ; $AB9EF0  9C EC 00     MX
    LDA $00EE                       ; $AB9EF3  AD EE 00     MX
    CLC                             ; $AB9EF6  18           MX
    ADC #$0004                      ; $AB9EF7  69 04 00     MX
    STA $00EE                       ; $AB9EFA  8D EE 00     MX
    CMP #$0100                      ; $AB9EFD  C9 00 01     MX
    BCC L_AB9F0B                    ; $AB9F00  90 09        MX
    INC $00EC                       ; $AB9F02  EE EC 00     MX
    CMP #$FFF0                      ; $AB9F05  C9 F0 FF     MX
    BCS L_AB9F0B                    ; $AB9F08  B0 01        MX
    RTS                             ; $AB9F0A  60           MX
L_AB9F0B:
    LDA $00F0                       ; $AB9F0B  AD F0 00     MX
    CMP #$00E0                      ; $AB9F0E  C9 E0 00     MX
    BCC L_AB9F19                    ; $AB9F11  90 06        MX
    CMP #$FFF0                      ; $AB9F13  C9 F0 FF     MX
    BCS L_AB9F19                    ; $AB9F16  B0 01        MX
    RTS                             ; $AB9F18  60           MX
L_AB9F19:
    SEP #$20                        ; $AB9F19  E2 20        MX
    LDA $00EC                       ; $AB9F1B  AD EC 00     mX
    BNE L_AB9F26                    ; $AB9F1E  D0 06        mX
    LDA $ABE4CD                     ; $AB9F20  AF CD E4 AB  mX
    BRA L_AB9F2A                    ; $AB9F24  80 04        mX
L_AB9F26:
    LDA $ABE4D1                     ; $AB9F26  AF D1 E4 AB  mX
L_AB9F2A:
    ORA $0514                       ; $AB9F2A  0D 14 05     mX
    STA $0514                       ; $AB9F2D  8D 14 05     mX
    LDA $00F0                       ; $AB9F30  AD F0 00     mX
    STA $0441                       ; $AB9F33  8D 41 04     mX
    LDA $00EE                       ; $AB9F36  AD EE 00     mX
    STA $0440                       ; $AB9F39  8D 40 04     mX
    LDA $00F2                       ; $AB9F3C  AD F2 00     mX
    STA $0442                       ; $AB9F3F  8D 42 04     mX
    LDA $002A                       ; $AB9F42  AD 2A 00     mX
    ORA $00F3                       ; $AB9F45  0D F3 00     mX
    STA $0443                       ; $AB9F48  8D 43 04     mX
    REP #$20                        ; $AB9F4B  C2 20        mX
    LDA #$0144                      ; $AB9F4D  A9 44 01     MX
    STA ($10)                       ; $AB9F50  92 10        MX
    RTS                             ; $AB9F52  60           MX
L_AB9F53:
    STZ $00EC                       ; $AB9F53  9C EC 00     MX
    LDA $00EE                       ; $AB9F56  AD EE 00     MX
    CLC                             ; $AB9F59  18           MX
    ADC #$0004                      ; $AB9F5A  69 04 00     MX
    STA $00EE                       ; $AB9F5D  8D EE 00     MX
    CMP #$0100                      ; $AB9F60  C9 00 01     MX
    BCC L_AB9F6E                    ; $AB9F63  90 09        MX
    INC $00EC                       ; $AB9F65  EE EC 00     MX
    CMP #$FFF0                      ; $AB9F68  C9 F0 FF     MX
    BCS L_AB9F6E                    ; $AB9F6B  B0 01        MX
    RTS                             ; $AB9F6D  60           MX
L_AB9F6E:
    LDA $00F0                       ; $AB9F6E  AD F0 00     MX
    CMP #$00E0                      ; $AB9F71  C9 E0 00     MX
    BCC L_AB9F7C                    ; $AB9F74  90 06        MX
    CMP #$FFF0                      ; $AB9F76  C9 F0 FF     MX
    BCS L_AB9F7C                    ; $AB9F79  B0 01        MX
    RTS                             ; $AB9F7B  60           MX
L_AB9F7C:
    SEP #$20                        ; $AB9F7C  E2 20        MX
    LDA $00EC                       ; $AB9F7E  AD EC 00     mX
    BNE L_AB9F89                    ; $AB9F81  D0 06        mX
    LDA $ABE4CE                     ; $AB9F83  AF CE E4 AB  mX
    BRA L_AB9F8D                    ; $AB9F87  80 04        mX
L_AB9F89:
    LDA $ABE4D2                     ; $AB9F89  AF D2 E4 AB  mX
L_AB9F8D:
    ORA $0514                       ; $AB9F8D  0D 14 05     mX
    STA $0514                       ; $AB9F90  8D 14 05     mX
    LDA $00F0                       ; $AB9F93  AD F0 00     mX
    STA $0445                       ; $AB9F96  8D 45 04     mX
    LDA $00EE                       ; $AB9F99  AD EE 00     mX
    STA $0444                       ; $AB9F9C  8D 44 04     mX
    LDA $00F2                       ; $AB9F9F  AD F2 00     mX
    STA $0446                       ; $AB9FA2  8D 46 04     mX
    LDA $002A                       ; $AB9FA5  AD 2A 00     mX
    ORA $00F3                       ; $AB9FA8  0D F3 00     mX
    STA $0447                       ; $AB9FAB  8D 47 04     mX
    REP #$20                        ; $AB9FAE  C2 20        mX
    LDA #$0148                      ; $AB9FB0  A9 48 01     MX
    STA ($10)                       ; $AB9FB3  92 10        MX
    RTS                             ; $AB9FB5  60           MX
L_AB9FB6:
    STZ $00EC                       ; $AB9FB6  9C EC 00     MX
    LDA $00EE                       ; $AB9FB9  AD EE 00     MX
    CLC                             ; $AB9FBC  18           MX
    ADC #$0004                      ; $AB9FBD  69 04 00     MX
    STA $00EE                       ; $AB9FC0  8D EE 00     MX
    CMP #$0100                      ; $AB9FC3  C9 00 01     MX
    BCC L_AB9FD1                    ; $AB9FC6  90 09        MX
    INC $00EC                       ; $AB9FC8  EE EC 00     MX
    CMP #$FFF0                      ; $AB9FCB  C9 F0 FF     MX
    BCS L_AB9FD1                    ; $AB9FCE  B0 01        MX
    RTS                             ; $AB9FD0  60           MX
L_AB9FD1:
    LDA $00F0                       ; $AB9FD1  AD F0 00     MX
    CMP #$00E0                      ; $AB9FD4  C9 E0 00     MX
    BCC L_AB9FDF                    ; $AB9FD7  90 06        MX
    CMP #$FFF0                      ; $AB9FD9  C9 F0 FF     MX
    BCS L_AB9FDF                    ; $AB9FDC  B0 01        MX
    RTS                             ; $AB9FDE  60           MX
L_AB9FDF:
    SEP #$20                        ; $AB9FDF  E2 20        MX
    LDA $00EC                       ; $AB9FE1  AD EC 00     mX
    BNE L_AB9FEC                    ; $AB9FE4  D0 06        mX
    LDA $ABE4CF                     ; $AB9FE6  AF CF E4 AB  mX
    BRA L_AB9FF0                    ; $AB9FEA  80 04        mX
L_AB9FEC:
    LDA $ABE4D3                     ; $AB9FEC  AF D3 E4 AB  mX
L_AB9FF0:
    ORA $0514                       ; $AB9FF0  0D 14 05     mX
    STA $0514                       ; $AB9FF3  8D 14 05     mX
    LDA $00F0                       ; $AB9FF6  AD F0 00     mX
    STA $0449                       ; $AB9FF9  8D 49 04     mX
    LDA $00EE                       ; $AB9FFC  AD EE 00     mX
    STA $0448                       ; $AB9FFF  8D 48 04     mX
    LDA $00F2                       ; $ABA002  AD F2 00     mX
    STA $044A                       ; $ABA005  8D 4A 04     mX
    LDA $002A                       ; $ABA008  AD 2A 00     mX
    ORA $00F3                       ; $ABA00B  0D F3 00     mX
    STA $044B                       ; $ABA00E  8D 4B 04     mX
    REP #$20                        ; $ABA011  C2 20        mX
    LDA #$014C                      ; $ABA013  A9 4C 01     MX
    STA ($10)                       ; $ABA016  92 10        MX
    RTS                             ; $ABA018  60           MX
L_ABA019:
    STZ $00EC                       ; $ABA019  9C EC 00     MX
    LDA $00EE                       ; $ABA01C  AD EE 00     MX
    CLC                             ; $ABA01F  18           MX
    ADC #$0004                      ; $ABA020  69 04 00     MX
    STA $00EE                       ; $ABA023  8D EE 00     MX
    CMP #$0100                      ; $ABA026  C9 00 01     MX
    BCC L_ABA034                    ; $ABA029  90 09        MX
    INC $00EC                       ; $ABA02B  EE EC 00     MX
    CMP #$FFF0                      ; $ABA02E  C9 F0 FF     MX
    BCS L_ABA034                    ; $ABA031  B0 01        MX
    RTS                             ; $ABA033  60           MX
L_ABA034:
    LDA $00F0                       ; $ABA034  AD F0 00     MX
    CMP #$00E0                      ; $ABA037  C9 E0 00     MX
    BCC L_ABA042                    ; $ABA03A  90 06        MX
    CMP #$FFF0                      ; $ABA03C  C9 F0 FF     MX
    BCS L_ABA042                    ; $ABA03F  B0 01        MX
    RTS                             ; $ABA041  60           MX
L_ABA042:
    SEP #$20                        ; $ABA042  E2 20        MX
    LDA $00EC                       ; $ABA044  AD EC 00     mX
    BNE L_ABA04F                    ; $ABA047  D0 06        mX
    LDA $ABE4D0                     ; $ABA049  AF D0 E4 AB  mX
    BRA L_ABA053                    ; $ABA04D  80 04        mX
L_ABA04F:
    LDA $ABE4D4                     ; $ABA04F  AF D4 E4 AB  mX
L_ABA053:
    ORA $0514                       ; $ABA053  0D 14 05     mX
    STA $0514                       ; $ABA056  8D 14 05     mX
    LDA $00F0                       ; $ABA059  AD F0 00     mX
    STA $044D                       ; $ABA05C  8D 4D 04     mX
    LDA $00EE                       ; $ABA05F  AD EE 00     mX
    STA $044C                       ; $ABA062  8D 4C 04     mX
    LDA $00F2                       ; $ABA065  AD F2 00     mX
    STA $044E                       ; $ABA068  8D 4E 04     mX
    LDA $002A                       ; $ABA06B  AD 2A 00     mX
    ORA $00F3                       ; $ABA06E  0D F3 00     mX
    STA $044F                       ; $ABA071  8D 4F 04     mX
    REP #$20                        ; $ABA074  C2 20        mX
    LDA #$0150                      ; $ABA076  A9 50 01     MX
    STA ($10)                       ; $ABA079  92 10        MX
    RTS                             ; $ABA07B  60           MX
L_ABA07C:
    STZ $00EC                       ; $ABA07C  9C EC 00     MX
    LDA $00EE                       ; $ABA07F  AD EE 00     MX
    CLC                             ; $ABA082  18           MX
    ADC #$0004                      ; $ABA083  69 04 00     MX
    STA $00EE                       ; $ABA086  8D EE 00     MX
    CMP #$0100                      ; $ABA089  C9 00 01     MX
    BCC L_ABA097                    ; $ABA08C  90 09        MX
    INC $00EC                       ; $ABA08E  EE EC 00     MX
    CMP #$FFF0                      ; $ABA091  C9 F0 FF     MX
    BCS L_ABA097                    ; $ABA094  B0 01        MX
    RTS                             ; $ABA096  60           MX
L_ABA097:
    LDA $00F0                       ; $ABA097  AD F0 00     MX
    CMP #$00E0                      ; $ABA09A  C9 E0 00     MX
    BCC L_ABA0A5                    ; $ABA09D  90 06        MX
    CMP #$FFF0                      ; $ABA09F  C9 F0 FF     MX
    BCS L_ABA0A5                    ; $ABA0A2  B0 01        MX
    RTS                             ; $ABA0A4  60           MX
L_ABA0A5:
    SEP #$20                        ; $ABA0A5  E2 20        MX
    LDA $00EC                       ; $ABA0A7  AD EC 00     mX
    BNE L_ABA0B2                    ; $ABA0AA  D0 06        mX
    LDA $ABE4CD                     ; $ABA0AC  AF CD E4 AB  mX
    BRA L_ABA0B6                    ; $ABA0B0  80 04        mX
L_ABA0B2:
    LDA $ABE4D1                     ; $ABA0B2  AF D1 E4 AB  mX
L_ABA0B6:
    ORA $0515                       ; $ABA0B6  0D 15 05     mX
    STA $0515                       ; $ABA0B9  8D 15 05     mX
    LDA $00F0                       ; $ABA0BC  AD F0 00     mX
    STA $0451                       ; $ABA0BF  8D 51 04     mX
    LDA $00EE                       ; $ABA0C2  AD EE 00     mX
    STA $0450                       ; $ABA0C5  8D 50 04     mX
    LDA $00F2                       ; $ABA0C8  AD F2 00     mX
    STA $0452                       ; $ABA0CB  8D 52 04     mX
    LDA $002A                       ; $ABA0CE  AD 2A 00     mX
    ORA $00F3                       ; $ABA0D1  0D F3 00     mX
    STA $0453                       ; $ABA0D4  8D 53 04     mX
    REP #$20                        ; $ABA0D7  C2 20        mX
    LDA #$0154                      ; $ABA0D9  A9 54 01     MX
    STA ($10)                       ; $ABA0DC  92 10        MX
    RTS                             ; $ABA0DE  60           MX
L_ABA0DF:
    STZ $00EC                       ; $ABA0DF  9C EC 00     MX
    LDA $00EE                       ; $ABA0E2  AD EE 00     MX
    CLC                             ; $ABA0E5  18           MX
    ADC #$0004                      ; $ABA0E6  69 04 00     MX
    STA $00EE                       ; $ABA0E9  8D EE 00     MX
    CMP #$0100                      ; $ABA0EC  C9 00 01     MX
    BCC L_ABA0FA                    ; $ABA0EF  90 09        MX
    INC $00EC                       ; $ABA0F1  EE EC 00     MX
    CMP #$FFF0                      ; $ABA0F4  C9 F0 FF     MX
    BCS L_ABA0FA                    ; $ABA0F7  B0 01        MX
    RTS                             ; $ABA0F9  60           MX
L_ABA0FA:
    LDA $00F0                       ; $ABA0FA  AD F0 00     MX
    CMP #$00E0                      ; $ABA0FD  C9 E0 00     MX
    BCC L_ABA108                    ; $ABA100  90 06        MX
    CMP #$FFF0                      ; $ABA102  C9 F0 FF     MX
    BCS L_ABA108                    ; $ABA105  B0 01        MX
    RTS                             ; $ABA107  60           MX
L_ABA108:
    SEP #$20                        ; $ABA108  E2 20        MX
    LDA $00EC                       ; $ABA10A  AD EC 00     mX
    BNE L_ABA115                    ; $ABA10D  D0 06        mX
    LDA $ABE4CE                     ; $ABA10F  AF CE E4 AB  mX
    BRA L_ABA119                    ; $ABA113  80 04        mX
L_ABA115:
    LDA $ABE4D2                     ; $ABA115  AF D2 E4 AB  mX
L_ABA119:
    ORA $0515                       ; $ABA119  0D 15 05     mX
    STA $0515                       ; $ABA11C  8D 15 05     mX
    LDA $00F0                       ; $ABA11F  AD F0 00     mX
    STA $0455                       ; $ABA122  8D 55 04     mX
    LDA $00EE                       ; $ABA125  AD EE 00     mX
    STA $0454                       ; $ABA128  8D 54 04     mX
    LDA $00F2                       ; $ABA12B  AD F2 00     mX
    STA $0456                       ; $ABA12E  8D 56 04     mX
    LDA $002A                       ; $ABA131  AD 2A 00     mX
    ORA $00F3                       ; $ABA134  0D F3 00     mX
    STA $0457                       ; $ABA137  8D 57 04     mX
    REP #$20                        ; $ABA13A  C2 20        mX
    LDA #$0158                      ; $ABA13C  A9 58 01     MX
    STA ($10)                       ; $ABA13F  92 10        MX
    RTS                             ; $ABA141  60           MX
L_ABA142:
    STZ $00EC                       ; $ABA142  9C EC 00     MX
    LDA $00EE                       ; $ABA145  AD EE 00     MX
    CLC                             ; $ABA148  18           MX
    ADC #$0004                      ; $ABA149  69 04 00     MX
    STA $00EE                       ; $ABA14C  8D EE 00     MX
    CMP #$0100                      ; $ABA14F  C9 00 01     MX
    BCC L_ABA15D                    ; $ABA152  90 09        MX
    INC $00EC                       ; $ABA154  EE EC 00     MX
    CMP #$FFF0                      ; $ABA157  C9 F0 FF     MX
    BCS L_ABA15D                    ; $ABA15A  B0 01        MX
    RTS                             ; $ABA15C  60           MX
L_ABA15D:
    LDA $00F0                       ; $ABA15D  AD F0 00     MX
    CMP #$00E0                      ; $ABA160  C9 E0 00     MX
    BCC L_ABA16B                    ; $ABA163  90 06        MX
    CMP #$FFF0                      ; $ABA165  C9 F0 FF     MX
    BCS L_ABA16B                    ; $ABA168  B0 01        MX
    RTS                             ; $ABA16A  60           MX
L_ABA16B:
    SEP #$20                        ; $ABA16B  E2 20        MX
    LDA $00EC                       ; $ABA16D  AD EC 00     mX
    BNE L_ABA178                    ; $ABA170  D0 06        mX
    LDA $ABE4CF                     ; $ABA172  AF CF E4 AB  mX
    BRA L_ABA17C                    ; $ABA176  80 04        mX
L_ABA178:
    LDA $ABE4D3                     ; $ABA178  AF D3 E4 AB  mX
L_ABA17C:
    ORA $0515                       ; $ABA17C  0D 15 05     mX
    STA $0515                       ; $ABA17F  8D 15 05     mX
    LDA $00F0                       ; $ABA182  AD F0 00     mX
    STA $0459                       ; $ABA185  8D 59 04     mX
    LDA $00EE                       ; $ABA188  AD EE 00     mX
    STA $0458                       ; $ABA18B  8D 58 04     mX
    LDA $00F2                       ; $ABA18E  AD F2 00     mX
    STA $045A                       ; $ABA191  8D 5A 04     mX
    LDA $002A                       ; $ABA194  AD 2A 00     mX
    ORA $00F3                       ; $ABA197  0D F3 00     mX
    STA $045B                       ; $ABA19A  8D 5B 04     mX
    REP #$20                        ; $ABA19D  C2 20        mX
    LDA #$015C                      ; $ABA19F  A9 5C 01     MX
    STA ($10)                       ; $ABA1A2  92 10        MX
    RTS                             ; $ABA1A4  60           MX
L_ABA1A5:
    STZ $00EC                       ; $ABA1A5  9C EC 00     MX
    LDA $00EE                       ; $ABA1A8  AD EE 00     MX
    CLC                             ; $ABA1AB  18           MX
    ADC #$0004                      ; $ABA1AC  69 04 00     MX
    STA $00EE                       ; $ABA1AF  8D EE 00     MX
    CMP #$0100                      ; $ABA1B2  C9 00 01     MX
    BCC L_ABA1C0                    ; $ABA1B5  90 09        MX
    INC $00EC                       ; $ABA1B7  EE EC 00     MX
    CMP #$FFF0                      ; $ABA1BA  C9 F0 FF     MX
    BCS L_ABA1C0                    ; $ABA1BD  B0 01        MX
    RTS                             ; $ABA1BF  60           MX
L_ABA1C0:
    LDA $00F0                       ; $ABA1C0  AD F0 00     MX
    CMP #$00E0                      ; $ABA1C3  C9 E0 00     MX
    BCC L_ABA1CE                    ; $ABA1C6  90 06        MX
    CMP #$FFF0                      ; $ABA1C8  C9 F0 FF     MX
    BCS L_ABA1CE                    ; $ABA1CB  B0 01        MX
    RTS                             ; $ABA1CD  60           MX
L_ABA1CE:
    SEP #$20                        ; $ABA1CE  E2 20        MX
    LDA $00EC                       ; $ABA1D0  AD EC 00     mX
    BNE L_ABA1DB                    ; $ABA1D3  D0 06        mX
    LDA $ABE4D0                     ; $ABA1D5  AF D0 E4 AB  mX
    BRA L_ABA1DF                    ; $ABA1D9  80 04        mX
L_ABA1DB:
    LDA $ABE4D4                     ; $ABA1DB  AF D4 E4 AB  mX
L_ABA1DF:
    ORA $0515                       ; $ABA1DF  0D 15 05     mX
    STA $0515                       ; $ABA1E2  8D 15 05     mX
    LDA $00F0                       ; $ABA1E5  AD F0 00     mX
    STA $045D                       ; $ABA1E8  8D 5D 04     mX
    LDA $00EE                       ; $ABA1EB  AD EE 00     mX
    STA $045C                       ; $ABA1EE  8D 5C 04     mX
    LDA $00F2                       ; $ABA1F1  AD F2 00     mX
    STA $045E                       ; $ABA1F4  8D 5E 04     mX
    LDA $002A                       ; $ABA1F7  AD 2A 00     mX
    ORA $00F3                       ; $ABA1FA  0D F3 00     mX
    STA $045F                       ; $ABA1FD  8D 5F 04     mX
    REP #$20                        ; $ABA200  C2 20        mX
    LDA #$0160                      ; $ABA202  A9 60 01     MX
    STA ($10)                       ; $ABA205  92 10        MX
    RTS                             ; $ABA207  60           MX
L_ABA208:
    STZ $00EC                       ; $ABA208  9C EC 00     MX
    LDA $00EE                       ; $ABA20B  AD EE 00     MX
    CLC                             ; $ABA20E  18           MX
    ADC #$0004                      ; $ABA20F  69 04 00     MX
    STA $00EE                       ; $ABA212  8D EE 00     MX
    CMP #$0100                      ; $ABA215  C9 00 01     MX
    BCC L_ABA223                    ; $ABA218  90 09        MX
    INC $00EC                       ; $ABA21A  EE EC 00     MX
    CMP #$FFF0                      ; $ABA21D  C9 F0 FF     MX
    BCS L_ABA223                    ; $ABA220  B0 01        MX
    RTS                             ; $ABA222  60           MX
L_ABA223:
    LDA $00F0                       ; $ABA223  AD F0 00     MX
    CMP #$00E0                      ; $ABA226  C9 E0 00     MX
    BCC L_ABA231                    ; $ABA229  90 06        MX
    CMP #$FFF0                      ; $ABA22B  C9 F0 FF     MX
    BCS L_ABA231                    ; $ABA22E  B0 01        MX
    RTS                             ; $ABA230  60           MX
L_ABA231:
    SEP #$20                        ; $ABA231  E2 20        MX
    LDA $00EC                       ; $ABA233  AD EC 00     mX
    BNE L_ABA23E                    ; $ABA236  D0 06        mX
    LDA $ABE4CD                     ; $ABA238  AF CD E4 AB  mX
    BRA L_ABA242                    ; $ABA23C  80 04        mX
L_ABA23E:
    LDA $ABE4D1                     ; $ABA23E  AF D1 E4 AB  mX
L_ABA242:
    ORA $0516                       ; $ABA242  0D 16 05     mX
    STA $0516                       ; $ABA245  8D 16 05     mX
    LDA $00F0                       ; $ABA248  AD F0 00     mX
    STA $0461                       ; $ABA24B  8D 61 04     mX
    LDA $00EE                       ; $ABA24E  AD EE 00     mX
    STA $0460                       ; $ABA251  8D 60 04     mX
    LDA $00F2                       ; $ABA254  AD F2 00     mX
    STA $0462                       ; $ABA257  8D 62 04     mX
    LDA $002A                       ; $ABA25A  AD 2A 00     mX
    ORA $00F3                       ; $ABA25D  0D F3 00     mX
    STA $0463                       ; $ABA260  8D 63 04     mX
    REP #$20                        ; $ABA263  C2 20        mX
    LDA #$0164                      ; $ABA265  A9 64 01     MX
    STA ($10)                       ; $ABA268  92 10        MX
    RTS                             ; $ABA26A  60           MX
L_ABA26B:
    STZ $00EC                       ; $ABA26B  9C EC 00     MX
    LDA $00EE                       ; $ABA26E  AD EE 00     MX
    CLC                             ; $ABA271  18           MX
    ADC #$0004                      ; $ABA272  69 04 00     MX
    STA $00EE                       ; $ABA275  8D EE 00     MX
    CMP #$0100                      ; $ABA278  C9 00 01     MX
    BCC L_ABA286                    ; $ABA27B  90 09        MX
    INC $00EC                       ; $ABA27D  EE EC 00     MX
    CMP #$FFF0                      ; $ABA280  C9 F0 FF     MX
    BCS L_ABA286                    ; $ABA283  B0 01        MX
    RTS                             ; $ABA285  60           MX
L_ABA286:
    LDA $00F0                       ; $ABA286  AD F0 00     MX
    CMP #$00E0                      ; $ABA289  C9 E0 00     MX
    BCC L_ABA294                    ; $ABA28C  90 06        MX
    CMP #$FFF0                      ; $ABA28E  C9 F0 FF     MX
    BCS L_ABA294                    ; $ABA291  B0 01        MX
    RTS                             ; $ABA293  60           MX
L_ABA294:
    SEP #$20                        ; $ABA294  E2 20        MX
    LDA $00EC                       ; $ABA296  AD EC 00     mX
    BNE L_ABA2A1                    ; $ABA299  D0 06        mX
    LDA $ABE4CE                     ; $ABA29B  AF CE E4 AB  mX
    BRA L_ABA2A5                    ; $ABA29F  80 04        mX
L_ABA2A1:
    LDA $ABE4D2                     ; $ABA2A1  AF D2 E4 AB  mX
L_ABA2A5:
    ORA $0516                       ; $ABA2A5  0D 16 05     mX
    STA $0516                       ; $ABA2A8  8D 16 05     mX
    LDA $00F0                       ; $ABA2AB  AD F0 00     mX
    STA $0465                       ; $ABA2AE  8D 65 04     mX
    LDA $00EE                       ; $ABA2B1  AD EE 00     mX
    STA $0464                       ; $ABA2B4  8D 64 04     mX
    LDA $00F2                       ; $ABA2B7  AD F2 00     mX
    STA $0466                       ; $ABA2BA  8D 66 04     mX
    LDA $002A                       ; $ABA2BD  AD 2A 00     mX
    ORA $00F3                       ; $ABA2C0  0D F3 00     mX
    STA $0467                       ; $ABA2C3  8D 67 04     mX
    REP #$20                        ; $ABA2C6  C2 20        mX
    LDA #$0168                      ; $ABA2C8  A9 68 01     MX
    STA ($10)                       ; $ABA2CB  92 10        MX
    RTS                             ; $ABA2CD  60           MX
L_ABA2CE:
    STZ $00EC                       ; $ABA2CE  9C EC 00     MX
    LDA $00EE                       ; $ABA2D1  AD EE 00     MX
    CLC                             ; $ABA2D4  18           MX
    ADC #$0004                      ; $ABA2D5  69 04 00     MX
    STA $00EE                       ; $ABA2D8  8D EE 00     MX
    CMP #$0100                      ; $ABA2DB  C9 00 01     MX
    BCC L_ABA2E9                    ; $ABA2DE  90 09        MX
    INC $00EC                       ; $ABA2E0  EE EC 00     MX
    CMP #$FFF0                      ; $ABA2E3  C9 F0 FF     MX
    BCS L_ABA2E9                    ; $ABA2E6  B0 01        MX
    RTS                             ; $ABA2E8  60           MX
L_ABA2E9:
    LDA $00F0                       ; $ABA2E9  AD F0 00     MX
    CMP #$00E0                      ; $ABA2EC  C9 E0 00     MX
    BCC L_ABA2F7                    ; $ABA2EF  90 06        MX
    CMP #$FFF0                      ; $ABA2F1  C9 F0 FF     MX
    BCS L_ABA2F7                    ; $ABA2F4  B0 01        MX
    RTS                             ; $ABA2F6  60           MX
L_ABA2F7:
    SEP #$20                        ; $ABA2F7  E2 20        MX
    LDA $00EC                       ; $ABA2F9  AD EC 00     mX
    BNE L_ABA304                    ; $ABA2FC  D0 06        mX
    LDA $ABE4CF                     ; $ABA2FE  AF CF E4 AB  mX
    BRA L_ABA308                    ; $ABA302  80 04        mX
L_ABA304:
    LDA $ABE4D3                     ; $ABA304  AF D3 E4 AB  mX
L_ABA308:
    ORA $0516                       ; $ABA308  0D 16 05     mX
    STA $0516                       ; $ABA30B  8D 16 05     mX
    LDA $00F0                       ; $ABA30E  AD F0 00     mX
    STA $0469                       ; $ABA311  8D 69 04     mX
    LDA $00EE                       ; $ABA314  AD EE 00     mX
    STA $0468                       ; $ABA317  8D 68 04     mX
    LDA $00F2                       ; $ABA31A  AD F2 00     mX
    STA $046A                       ; $ABA31D  8D 6A 04     mX
    LDA $002A                       ; $ABA320  AD 2A 00     mX
    ORA $00F3                       ; $ABA323  0D F3 00     mX
    STA $046B                       ; $ABA326  8D 6B 04     mX
    REP #$20                        ; $ABA329  C2 20        mX
    LDA #$016C                      ; $ABA32B  A9 6C 01     MX
    STA ($10)                       ; $ABA32E  92 10        MX
    RTS                             ; $ABA330  60           MX
L_ABA331:
    STZ $00EC                       ; $ABA331  9C EC 00     MX
    LDA $00EE                       ; $ABA334  AD EE 00     MX
    CLC                             ; $ABA337  18           MX
    ADC #$0004                      ; $ABA338  69 04 00     MX
    STA $00EE                       ; $ABA33B  8D EE 00     MX
    CMP #$0100                      ; $ABA33E  C9 00 01     MX
    BCC L_ABA34C                    ; $ABA341  90 09        MX
    INC $00EC                       ; $ABA343  EE EC 00     MX
    CMP #$FFF0                      ; $ABA346  C9 F0 FF     MX
    BCS L_ABA34C                    ; $ABA349  B0 01        MX
    RTS                             ; $ABA34B  60           MX
L_ABA34C:
    LDA $00F0                       ; $ABA34C  AD F0 00     MX
    CMP #$00E0                      ; $ABA34F  C9 E0 00     MX
    BCC L_ABA35A                    ; $ABA352  90 06        MX
    CMP #$FFF0                      ; $ABA354  C9 F0 FF     MX
    BCS L_ABA35A                    ; $ABA357  B0 01        MX
    RTS                             ; $ABA359  60           MX
L_ABA35A:
    SEP #$20                        ; $ABA35A  E2 20        MX
    LDA $00EC                       ; $ABA35C  AD EC 00     mX
    BNE L_ABA367                    ; $ABA35F  D0 06        mX
    LDA $ABE4D0                     ; $ABA361  AF D0 E4 AB  mX
    BRA L_ABA36B                    ; $ABA365  80 04        mX
L_ABA367:
    LDA $ABE4D4                     ; $ABA367  AF D4 E4 AB  mX
L_ABA36B:
    ORA $0516                       ; $ABA36B  0D 16 05     mX
    STA $0516                       ; $ABA36E  8D 16 05     mX
    LDA $00F0                       ; $ABA371  AD F0 00     mX
    STA $046D                       ; $ABA374  8D 6D 04     mX
    LDA $00EE                       ; $ABA377  AD EE 00     mX
    STA $046C                       ; $ABA37A  8D 6C 04     mX
    LDA $00F2                       ; $ABA37D  AD F2 00     mX
    STA $046E                       ; $ABA380  8D 6E 04     mX
    LDA $002A                       ; $ABA383  AD 2A 00     mX
    ORA $00F3                       ; $ABA386  0D F3 00     mX
    STA $046F                       ; $ABA389  8D 6F 04     mX
    REP #$20                        ; $ABA38C  C2 20        mX
    LDA #$0170                      ; $ABA38E  A9 70 01     MX
    STA ($10)                       ; $ABA391  92 10        MX
    RTS                             ; $ABA393  60           MX
L_ABA394:
    STZ $00EC                       ; $ABA394  9C EC 00     MX
    LDA $00EE                       ; $ABA397  AD EE 00     MX
    CLC                             ; $ABA39A  18           MX
    ADC #$0004                      ; $ABA39B  69 04 00     MX
    STA $00EE                       ; $ABA39E  8D EE 00     MX
    CMP #$0100                      ; $ABA3A1  C9 00 01     MX
    BCC L_ABA3AF                    ; $ABA3A4  90 09        MX
    INC $00EC                       ; $ABA3A6  EE EC 00     MX
    CMP #$FFF0                      ; $ABA3A9  C9 F0 FF     MX
    BCS L_ABA3AF                    ; $ABA3AC  B0 01        MX
    RTS                             ; $ABA3AE  60           MX
L_ABA3AF:
    LDA $00F0                       ; $ABA3AF  AD F0 00     MX
    CMP #$00E0                      ; $ABA3B2  C9 E0 00     MX
    BCC L_ABA3BD                    ; $ABA3B5  90 06        MX
    CMP #$FFF0                      ; $ABA3B7  C9 F0 FF     MX
    BCS L_ABA3BD                    ; $ABA3BA  B0 01        MX
    RTS                             ; $ABA3BC  60           MX
L_ABA3BD:
    SEP #$20                        ; $ABA3BD  E2 20        MX
    LDA $00EC                       ; $ABA3BF  AD EC 00     mX
    BNE L_ABA3CA                    ; $ABA3C2  D0 06        mX
    LDA $ABE4CD                     ; $ABA3C4  AF CD E4 AB  mX
    BRA L_ABA3CE                    ; $ABA3C8  80 04        mX
L_ABA3CA:
    LDA $ABE4D1                     ; $ABA3CA  AF D1 E4 AB  mX
L_ABA3CE:
    ORA $0517                       ; $ABA3CE  0D 17 05     mX
    STA $0517                       ; $ABA3D1  8D 17 05     mX
    LDA $00F0                       ; $ABA3D4  AD F0 00     mX
    STA $0471                       ; $ABA3D7  8D 71 04     mX
    LDA $00EE                       ; $ABA3DA  AD EE 00     mX
    STA $0470                       ; $ABA3DD  8D 70 04     mX
    LDA $00F2                       ; $ABA3E0  AD F2 00     mX
    STA $0472                       ; $ABA3E3  8D 72 04     mX
    LDA $002A                       ; $ABA3E6  AD 2A 00     mX
    ORA $00F3                       ; $ABA3E9  0D F3 00     mX
    STA $0473                       ; $ABA3EC  8D 73 04     mX
    REP #$20                        ; $ABA3EF  C2 20        mX
    LDA #$0174                      ; $ABA3F1  A9 74 01     MX
    STA ($10)                       ; $ABA3F4  92 10        MX
    RTS                             ; $ABA3F6  60           MX
L_ABA3F7:
    STZ $00EC                       ; $ABA3F7  9C EC 00     MX
    LDA $00EE                       ; $ABA3FA  AD EE 00     MX
    CLC                             ; $ABA3FD  18           MX
    ADC #$0004                      ; $ABA3FE  69 04 00     MX
    STA $00EE                       ; $ABA401  8D EE 00     MX
    CMP #$0100                      ; $ABA404  C9 00 01     MX
    BCC L_ABA412                    ; $ABA407  90 09        MX
    INC $00EC                       ; $ABA409  EE EC 00     MX
    CMP #$FFF0                      ; $ABA40C  C9 F0 FF     MX
    BCS L_ABA412                    ; $ABA40F  B0 01        MX
    RTS                             ; $ABA411  60           MX
L_ABA412:
    LDA $00F0                       ; $ABA412  AD F0 00     MX
    CMP #$00E0                      ; $ABA415  C9 E0 00     MX
    BCC L_ABA420                    ; $ABA418  90 06        MX
    CMP #$FFF0                      ; $ABA41A  C9 F0 FF     MX
    BCS L_ABA420                    ; $ABA41D  B0 01        MX
    RTS                             ; $ABA41F  60           MX
L_ABA420:
    SEP #$20                        ; $ABA420  E2 20        MX
    LDA $00EC                       ; $ABA422  AD EC 00     mX
    BNE L_ABA42D                    ; $ABA425  D0 06        mX
    LDA $ABE4CE                     ; $ABA427  AF CE E4 AB  mX
    BRA L_ABA431                    ; $ABA42B  80 04        mX
L_ABA42D:
    LDA $ABE4D2                     ; $ABA42D  AF D2 E4 AB  mX
L_ABA431:
    ORA $0517                       ; $ABA431  0D 17 05     mX
    STA $0517                       ; $ABA434  8D 17 05     mX
    LDA $00F0                       ; $ABA437  AD F0 00     mX
    STA $0475                       ; $ABA43A  8D 75 04     mX
    LDA $00EE                       ; $ABA43D  AD EE 00     mX
    STA $0474                       ; $ABA440  8D 74 04     mX
    LDA $00F2                       ; $ABA443  AD F2 00     mX
    STA $0476                       ; $ABA446  8D 76 04     mX
    LDA $002A                       ; $ABA449  AD 2A 00     mX
    ORA $00F3                       ; $ABA44C  0D F3 00     mX
    STA $0477                       ; $ABA44F  8D 77 04     mX
    REP #$20                        ; $ABA452  C2 20        mX
    LDA #$0178                      ; $ABA454  A9 78 01     MX
    STA ($10)                       ; $ABA457  92 10        MX
    RTS                             ; $ABA459  60           MX
L_ABA45A:
    STZ $00EC                       ; $ABA45A  9C EC 00     MX
    LDA $00EE                       ; $ABA45D  AD EE 00     MX
    CLC                             ; $ABA460  18           MX
    ADC #$0004                      ; $ABA461  69 04 00     MX
    STA $00EE                       ; $ABA464  8D EE 00     MX
    CMP #$0100                      ; $ABA467  C9 00 01     MX
    BCC L_ABA475                    ; $ABA46A  90 09        MX
    INC $00EC                       ; $ABA46C  EE EC 00     MX
    CMP #$FFF0                      ; $ABA46F  C9 F0 FF     MX
    BCS L_ABA475                    ; $ABA472  B0 01        MX
    RTS                             ; $ABA474  60           MX
L_ABA475:
    LDA $00F0                       ; $ABA475  AD F0 00     MX
    CMP #$00E0                      ; $ABA478  C9 E0 00     MX
    BCC L_ABA483                    ; $ABA47B  90 06        MX
    CMP #$FFF0                      ; $ABA47D  C9 F0 FF     MX
    BCS L_ABA483                    ; $ABA480  B0 01        MX
    RTS                             ; $ABA482  60           MX
L_ABA483:
    SEP #$20                        ; $ABA483  E2 20        MX
    LDA $00EC                       ; $ABA485  AD EC 00     mX
    BNE L_ABA490                    ; $ABA488  D0 06        mX
    LDA $ABE4CF                     ; $ABA48A  AF CF E4 AB  mX
    BRA L_ABA494                    ; $ABA48E  80 04        mX
L_ABA490:
    LDA $ABE4D3                     ; $ABA490  AF D3 E4 AB  mX
L_ABA494:
    ORA $0517                       ; $ABA494  0D 17 05     mX
    STA $0517                       ; $ABA497  8D 17 05     mX
    LDA $00F0                       ; $ABA49A  AD F0 00     mX
    STA $0479                       ; $ABA49D  8D 79 04     mX
    LDA $00EE                       ; $ABA4A0  AD EE 00     mX
    STA $0478                       ; $ABA4A3  8D 78 04     mX
    LDA $00F2                       ; $ABA4A6  AD F2 00     mX
    STA $047A                       ; $ABA4A9  8D 7A 04     mX
    LDA $002A                       ; $ABA4AC  AD 2A 00     mX
    ORA $00F3                       ; $ABA4AF  0D F3 00     mX
    STA $047B                       ; $ABA4B2  8D 7B 04     mX
    REP #$20                        ; $ABA4B5  C2 20        mX
    LDA #$017C                      ; $ABA4B7  A9 7C 01     MX
    STA ($10)                       ; $ABA4BA  92 10        MX
    RTS                             ; $ABA4BC  60           MX
L_ABA4BD:
    STZ $00EC                       ; $ABA4BD  9C EC 00     MX
    LDA $00EE                       ; $ABA4C0  AD EE 00     MX
    CLC                             ; $ABA4C3  18           MX
    ADC #$0004                      ; $ABA4C4  69 04 00     MX
    STA $00EE                       ; $ABA4C7  8D EE 00     MX
    CMP #$0100                      ; $ABA4CA  C9 00 01     MX
    BCC L_ABA4D8                    ; $ABA4CD  90 09        MX
    INC $00EC                       ; $ABA4CF  EE EC 00     MX
    CMP #$FFF0                      ; $ABA4D2  C9 F0 FF     MX
    BCS L_ABA4D8                    ; $ABA4D5  B0 01        MX
    RTS                             ; $ABA4D7  60           MX
L_ABA4D8:
    LDA $00F0                       ; $ABA4D8  AD F0 00     MX
    CMP #$00E0                      ; $ABA4DB  C9 E0 00     MX
    BCC L_ABA4E6                    ; $ABA4DE  90 06        MX
    CMP #$FFF0                      ; $ABA4E0  C9 F0 FF     MX
    BCS L_ABA4E6                    ; $ABA4E3  B0 01        MX
    RTS                             ; $ABA4E5  60           MX
L_ABA4E6:
    SEP #$20                        ; $ABA4E6  E2 20        MX
    LDA $00EC                       ; $ABA4E8  AD EC 00     mX
    BNE L_ABA4F3                    ; $ABA4EB  D0 06        mX
    LDA $ABE4D0                     ; $ABA4ED  AF D0 E4 AB  mX
    BRA L_ABA4F7                    ; $ABA4F1  80 04        mX
L_ABA4F3:
    LDA $ABE4D4                     ; $ABA4F3  AF D4 E4 AB  mX
L_ABA4F7:
    ORA $0517                       ; $ABA4F7  0D 17 05     mX
    STA $0517                       ; $ABA4FA  8D 17 05     mX
    LDA $00F0                       ; $ABA4FD  AD F0 00     mX
    STA $047D                       ; $ABA500  8D 7D 04     mX
    LDA $00EE                       ; $ABA503  AD EE 00     mX
    STA $047C                       ; $ABA506  8D 7C 04     mX
    LDA $00F2                       ; $ABA509  AD F2 00     mX
    STA $047E                       ; $ABA50C  8D 7E 04     mX
    LDA $002A                       ; $ABA50F  AD 2A 00     mX
    ORA $00F3                       ; $ABA512  0D F3 00     mX
    STA $047F                       ; $ABA515  8D 7F 04     mX
    REP #$20                        ; $ABA518  C2 20        mX
    LDA #$0180                      ; $ABA51A  A9 80 01     MX
    STA ($10)                       ; $ABA51D  92 10        MX
    RTS                             ; $ABA51F  60           MX
L_ABA520:
    STZ $00EC                       ; $ABA520  9C EC 00     MX
    LDA $00EE                       ; $ABA523  AD EE 00     MX
    CLC                             ; $ABA526  18           MX
    ADC #$0004                      ; $ABA527  69 04 00     MX
    STA $00EE                       ; $ABA52A  8D EE 00     MX
    CMP #$0100                      ; $ABA52D  C9 00 01     MX
    BCC L_ABA53B                    ; $ABA530  90 09        MX
    INC $00EC                       ; $ABA532  EE EC 00     MX
    CMP #$FFF0                      ; $ABA535  C9 F0 FF     MX
    BCS L_ABA53B                    ; $ABA538  B0 01        MX
    RTS                             ; $ABA53A  60           MX
L_ABA53B:
    LDA $00F0                       ; $ABA53B  AD F0 00     MX
    CMP #$00E0                      ; $ABA53E  C9 E0 00     MX
    BCC L_ABA549                    ; $ABA541  90 06        MX
    CMP #$FFF0                      ; $ABA543  C9 F0 FF     MX
    BCS L_ABA549                    ; $ABA546  B0 01        MX
    RTS                             ; $ABA548  60           MX
L_ABA549:
    SEP #$20                        ; $ABA549  E2 20        MX
    LDA $00EC                       ; $ABA54B  AD EC 00     mX
    BNE L_ABA556                    ; $ABA54E  D0 06        mX
    LDA $ABE4CD                     ; $ABA550  AF CD E4 AB  mX
    BRA L_ABA55A                    ; $ABA554  80 04        mX
L_ABA556:
    LDA $ABE4D1                     ; $ABA556  AF D1 E4 AB  mX
L_ABA55A:
    ORA $0518                       ; $ABA55A  0D 18 05     mX
    STA $0518                       ; $ABA55D  8D 18 05     mX
    LDA $00F0                       ; $ABA560  AD F0 00     mX
    STA $0481                       ; $ABA563  8D 81 04     mX
    LDA $00EE                       ; $ABA566  AD EE 00     mX
    STA $0480                       ; $ABA569  8D 80 04     mX
    LDA $00F2                       ; $ABA56C  AD F2 00     mX
    STA $0482                       ; $ABA56F  8D 82 04     mX
    LDA $002A                       ; $ABA572  AD 2A 00     mX
    ORA $00F3                       ; $ABA575  0D F3 00     mX
    STA $0483                       ; $ABA578  8D 83 04     mX
    REP #$20                        ; $ABA57B  C2 20        mX
    LDA #$0184                      ; $ABA57D  A9 84 01     MX
    STA ($10)                       ; $ABA580  92 10        MX
    RTS                             ; $ABA582  60           MX
L_ABA583:
    STZ $00EC                       ; $ABA583  9C EC 00     MX
    LDA $00EE                       ; $ABA586  AD EE 00     MX
    CLC                             ; $ABA589  18           MX
    ADC #$0004                      ; $ABA58A  69 04 00     MX
    STA $00EE                       ; $ABA58D  8D EE 00     MX
    CMP #$0100                      ; $ABA590  C9 00 01     MX
    BCC L_ABA59E                    ; $ABA593  90 09        MX
    INC $00EC                       ; $ABA595  EE EC 00     MX
    CMP #$FFF0                      ; $ABA598  C9 F0 FF     MX
    BCS L_ABA59E                    ; $ABA59B  B0 01        MX
    RTS                             ; $ABA59D  60           MX
L_ABA59E:
    LDA $00F0                       ; $ABA59E  AD F0 00     MX
    CMP #$00E0                      ; $ABA5A1  C9 E0 00     MX
    BCC L_ABA5AC                    ; $ABA5A4  90 06        MX
    CMP #$FFF0                      ; $ABA5A6  C9 F0 FF     MX
    BCS L_ABA5AC                    ; $ABA5A9  B0 01        MX
    RTS                             ; $ABA5AB  60           MX
L_ABA5AC:
    SEP #$20                        ; $ABA5AC  E2 20        MX
    LDA $00EC                       ; $ABA5AE  AD EC 00     mX
    BNE L_ABA5B9                    ; $ABA5B1  D0 06        mX
    LDA $ABE4CE                     ; $ABA5B3  AF CE E4 AB  mX
    BRA L_ABA5BD                    ; $ABA5B7  80 04        mX
L_ABA5B9:
    LDA $ABE4D2                     ; $ABA5B9  AF D2 E4 AB  mX
L_ABA5BD:
    ORA $0518                       ; $ABA5BD  0D 18 05     mX
    STA $0518                       ; $ABA5C0  8D 18 05     mX
    LDA $00F0                       ; $ABA5C3  AD F0 00     mX
    STA $0485                       ; $ABA5C6  8D 85 04     mX
    LDA $00EE                       ; $ABA5C9  AD EE 00     mX
    STA $0484                       ; $ABA5CC  8D 84 04     mX
    LDA $00F2                       ; $ABA5CF  AD F2 00     mX
    STA $0486                       ; $ABA5D2  8D 86 04     mX
    LDA $002A                       ; $ABA5D5  AD 2A 00     mX
    ORA $00F3                       ; $ABA5D8  0D F3 00     mX
    STA $0487                       ; $ABA5DB  8D 87 04     mX
    REP #$20                        ; $ABA5DE  C2 20        mX
    LDA #$0188                      ; $ABA5E0  A9 88 01     MX
    STA ($10)                       ; $ABA5E3  92 10        MX
    RTS                             ; $ABA5E5  60           MX
L_ABA5E6:
    STZ $00EC                       ; $ABA5E6  9C EC 00     MX
    LDA $00EE                       ; $ABA5E9  AD EE 00     MX
    CLC                             ; $ABA5EC  18           MX
    ADC #$0004                      ; $ABA5ED  69 04 00     MX
    STA $00EE                       ; $ABA5F0  8D EE 00     MX
    CMP #$0100                      ; $ABA5F3  C9 00 01     MX
    BCC L_ABA601                    ; $ABA5F6  90 09        MX
    INC $00EC                       ; $ABA5F8  EE EC 00     MX
    CMP #$FFF0                      ; $ABA5FB  C9 F0 FF     MX
    BCS L_ABA601                    ; $ABA5FE  B0 01        MX
    RTS                             ; $ABA600  60           MX
L_ABA601:
    LDA $00F0                       ; $ABA601  AD F0 00     MX
    CMP #$00E0                      ; $ABA604  C9 E0 00     MX
    BCC L_ABA60F                    ; $ABA607  90 06        MX
    CMP #$FFF0                      ; $ABA609  C9 F0 FF     MX
    BCS L_ABA60F                    ; $ABA60C  B0 01        MX
    RTS                             ; $ABA60E  60           MX
L_ABA60F:
    SEP #$20                        ; $ABA60F  E2 20        MX
    LDA $00EC                       ; $ABA611  AD EC 00     mX
    BNE L_ABA61C                    ; $ABA614  D0 06        mX
    LDA $ABE4CF                     ; $ABA616  AF CF E4 AB  mX
    BRA L_ABA620                    ; $ABA61A  80 04        mX
L_ABA61C:
    LDA $ABE4D3                     ; $ABA61C  AF D3 E4 AB  mX
L_ABA620:
    ORA $0518                       ; $ABA620  0D 18 05     mX
    STA $0518                       ; $ABA623  8D 18 05     mX
    LDA $00F0                       ; $ABA626  AD F0 00     mX
    STA $0489                       ; $ABA629  8D 89 04     mX
    LDA $00EE                       ; $ABA62C  AD EE 00     mX
    STA $0488                       ; $ABA62F  8D 88 04     mX
    LDA $00F2                       ; $ABA632  AD F2 00     mX
    STA $048A                       ; $ABA635  8D 8A 04     mX
    LDA $002A                       ; $ABA638  AD 2A 00     mX
    ORA $00F3                       ; $ABA63B  0D F3 00     mX
    STA $048B                       ; $ABA63E  8D 8B 04     mX
    REP #$20                        ; $ABA641  C2 20        mX
    LDA #$018C                      ; $ABA643  A9 8C 01     MX
    STA ($10)                       ; $ABA646  92 10        MX
    RTS                             ; $ABA648  60           MX
L_ABA649:
    STZ $00EC                       ; $ABA649  9C EC 00     MX
    LDA $00EE                       ; $ABA64C  AD EE 00     MX
    CLC                             ; $ABA64F  18           MX
    ADC #$0004                      ; $ABA650  69 04 00     MX
    STA $00EE                       ; $ABA653  8D EE 00     MX
    CMP #$0100                      ; $ABA656  C9 00 01     MX
    BCC L_ABA664                    ; $ABA659  90 09        MX
    INC $00EC                       ; $ABA65B  EE EC 00     MX
    CMP #$FFF0                      ; $ABA65E  C9 F0 FF     MX
    BCS L_ABA664                    ; $ABA661  B0 01        MX
    RTS                             ; $ABA663  60           MX
L_ABA664:
    LDA $00F0                       ; $ABA664  AD F0 00     MX
    CMP #$00E0                      ; $ABA667  C9 E0 00     MX
    BCC L_ABA672                    ; $ABA66A  90 06        MX
    CMP #$FFF0                      ; $ABA66C  C9 F0 FF     MX
    BCS L_ABA672                    ; $ABA66F  B0 01        MX
    RTS                             ; $ABA671  60           MX
L_ABA672:
    SEP #$20                        ; $ABA672  E2 20        MX
    LDA $00EC                       ; $ABA674  AD EC 00     mX
    BNE L_ABA67F                    ; $ABA677  D0 06        mX
    LDA $ABE4D0                     ; $ABA679  AF D0 E4 AB  mX
    BRA L_ABA683                    ; $ABA67D  80 04        mX
L_ABA67F:
    LDA $ABE4D4                     ; $ABA67F  AF D4 E4 AB  mX
L_ABA683:
    ORA $0518                       ; $ABA683  0D 18 05     mX
    STA $0518                       ; $ABA686  8D 18 05     mX
    LDA $00F0                       ; $ABA689  AD F0 00     mX
    STA $048D                       ; $ABA68C  8D 8D 04     mX
    LDA $00EE                       ; $ABA68F  AD EE 00     mX
    STA $048C                       ; $ABA692  8D 8C 04     mX
    LDA $00F2                       ; $ABA695  AD F2 00     mX
    STA $048E                       ; $ABA698  8D 8E 04     mX
    LDA $002A                       ; $ABA69B  AD 2A 00     mX
    ORA $00F3                       ; $ABA69E  0D F3 00     mX
    STA $048F                       ; $ABA6A1  8D 8F 04     mX
    REP #$20                        ; $ABA6A4  C2 20        mX
    LDA #$0190                      ; $ABA6A6  A9 90 01     MX
    STA ($10)                       ; $ABA6A9  92 10        MX
    RTS                             ; $ABA6AB  60           MX
L_ABA6AC:
    STZ $00EC                       ; $ABA6AC  9C EC 00     MX
    LDA $00EE                       ; $ABA6AF  AD EE 00     MX
    CLC                             ; $ABA6B2  18           MX
    ADC #$0004                      ; $ABA6B3  69 04 00     MX
    STA $00EE                       ; $ABA6B6  8D EE 00     MX
    CMP #$0100                      ; $ABA6B9  C9 00 01     MX
    BCC L_ABA6C7                    ; $ABA6BC  90 09        MX
    INC $00EC                       ; $ABA6BE  EE EC 00     MX
    CMP #$FFF0                      ; $ABA6C1  C9 F0 FF     MX
    BCS L_ABA6C7                    ; $ABA6C4  B0 01        MX
    RTS                             ; $ABA6C6  60           MX
L_ABA6C7:
    LDA $00F0                       ; $ABA6C7  AD F0 00     MX
    CMP #$00E0                      ; $ABA6CA  C9 E0 00     MX
    BCC L_ABA6D5                    ; $ABA6CD  90 06        MX
    CMP #$FFF0                      ; $ABA6CF  C9 F0 FF     MX
    BCS L_ABA6D5                    ; $ABA6D2  B0 01        MX
    RTS                             ; $ABA6D4  60           MX
L_ABA6D5:
    SEP #$20                        ; $ABA6D5  E2 20        MX
    LDA $00EC                       ; $ABA6D7  AD EC 00     mX
    BNE L_ABA6E2                    ; $ABA6DA  D0 06        mX
    LDA $ABE4CD                     ; $ABA6DC  AF CD E4 AB  mX
    BRA L_ABA6E6                    ; $ABA6E0  80 04        mX
L_ABA6E2:
    LDA $ABE4D1                     ; $ABA6E2  AF D1 E4 AB  mX
L_ABA6E6:
    ORA $0519                       ; $ABA6E6  0D 19 05     mX
    STA $0519                       ; $ABA6E9  8D 19 05     mX
    LDA $00F0                       ; $ABA6EC  AD F0 00     mX
    STA $0491                       ; $ABA6EF  8D 91 04     mX
    LDA $00EE                       ; $ABA6F2  AD EE 00     mX
    STA $0490                       ; $ABA6F5  8D 90 04     mX
    LDA $00F2                       ; $ABA6F8  AD F2 00     mX
    STA $0492                       ; $ABA6FB  8D 92 04     mX
    LDA $002A                       ; $ABA6FE  AD 2A 00     mX
    ORA $00F3                       ; $ABA701  0D F3 00     mX
    STA $0493                       ; $ABA704  8D 93 04     mX
    REP #$20                        ; $ABA707  C2 20        mX
    LDA #$0194                      ; $ABA709  A9 94 01     MX
    STA ($10)                       ; $ABA70C  92 10        MX
    RTS                             ; $ABA70E  60           MX
L_ABA70F:
    STZ $00EC                       ; $ABA70F  9C EC 00     MX
    LDA $00EE                       ; $ABA712  AD EE 00     MX
    CLC                             ; $ABA715  18           MX
    ADC #$0004                      ; $ABA716  69 04 00     MX
    STA $00EE                       ; $ABA719  8D EE 00     MX
    CMP #$0100                      ; $ABA71C  C9 00 01     MX
    BCC L_ABA72A                    ; $ABA71F  90 09        MX
    INC $00EC                       ; $ABA721  EE EC 00     MX
    CMP #$FFF0                      ; $ABA724  C9 F0 FF     MX
    BCS L_ABA72A                    ; $ABA727  B0 01        MX
    RTS                             ; $ABA729  60           MX
L_ABA72A:
    LDA $00F0                       ; $ABA72A  AD F0 00     MX
    CMP #$00E0                      ; $ABA72D  C9 E0 00     MX
    BCC L_ABA738                    ; $ABA730  90 06        MX
    CMP #$FFF0                      ; $ABA732  C9 F0 FF     MX
    BCS L_ABA738                    ; $ABA735  B0 01        MX
    RTS                             ; $ABA737  60           MX
L_ABA738:
    SEP #$20                        ; $ABA738  E2 20        MX
    LDA $00EC                       ; $ABA73A  AD EC 00     mX
    BNE L_ABA745                    ; $ABA73D  D0 06        mX
    LDA $ABE4CE                     ; $ABA73F  AF CE E4 AB  mX
    BRA L_ABA749                    ; $ABA743  80 04        mX
L_ABA745:
    LDA $ABE4D2                     ; $ABA745  AF D2 E4 AB  mX
L_ABA749:
    ORA $0519                       ; $ABA749  0D 19 05     mX
    STA $0519                       ; $ABA74C  8D 19 05     mX
    LDA $00F0                       ; $ABA74F  AD F0 00     mX
    STA $0495                       ; $ABA752  8D 95 04     mX
    LDA $00EE                       ; $ABA755  AD EE 00     mX
    STA $0494                       ; $ABA758  8D 94 04     mX
    LDA $00F2                       ; $ABA75B  AD F2 00     mX
    STA $0496                       ; $ABA75E  8D 96 04     mX
    LDA $002A                       ; $ABA761  AD 2A 00     mX
    ORA $00F3                       ; $ABA764  0D F3 00     mX
    STA $0497                       ; $ABA767  8D 97 04     mX
    REP #$20                        ; $ABA76A  C2 20        mX
    LDA #$0198                      ; $ABA76C  A9 98 01     MX
    STA ($10)                       ; $ABA76F  92 10        MX
    RTS                             ; $ABA771  60           MX
L_ABA772:
    STZ $00EC                       ; $ABA772  9C EC 00     MX
    LDA $00EE                       ; $ABA775  AD EE 00     MX
    CLC                             ; $ABA778  18           MX
    ADC #$0004                      ; $ABA779  69 04 00     MX
    STA $00EE                       ; $ABA77C  8D EE 00     MX
    CMP #$0100                      ; $ABA77F  C9 00 01     MX
    BCC L_ABA78D                    ; $ABA782  90 09        MX
    INC $00EC                       ; $ABA784  EE EC 00     MX
    CMP #$FFF0                      ; $ABA787  C9 F0 FF     MX
    BCS L_ABA78D                    ; $ABA78A  B0 01        MX
    RTS                             ; $ABA78C  60           MX
L_ABA78D:
    LDA $00F0                       ; $ABA78D  AD F0 00     MX
    CMP #$00E0                      ; $ABA790  C9 E0 00     MX
    BCC L_ABA79B                    ; $ABA793  90 06        MX
    CMP #$FFF0                      ; $ABA795  C9 F0 FF     MX
    BCS L_ABA79B                    ; $ABA798  B0 01        MX
    RTS                             ; $ABA79A  60           MX
L_ABA79B:
    SEP #$20                        ; $ABA79B  E2 20        MX
    LDA $00EC                       ; $ABA79D  AD EC 00     mX
    BNE L_ABA7A8                    ; $ABA7A0  D0 06        mX
    LDA $ABE4CF                     ; $ABA7A2  AF CF E4 AB  mX
    BRA L_ABA7AC                    ; $ABA7A6  80 04        mX
L_ABA7A8:
    LDA $ABE4D3                     ; $ABA7A8  AF D3 E4 AB  mX
L_ABA7AC:
    ORA $0519                       ; $ABA7AC  0D 19 05     mX
    STA $0519                       ; $ABA7AF  8D 19 05     mX
    LDA $00F0                       ; $ABA7B2  AD F0 00     mX
    STA $0499                       ; $ABA7B5  8D 99 04     mX
    LDA $00EE                       ; $ABA7B8  AD EE 00     mX
    STA $0498                       ; $ABA7BB  8D 98 04     mX
    LDA $00F2                       ; $ABA7BE  AD F2 00     mX
    STA $049A                       ; $ABA7C1  8D 9A 04     mX
    LDA $002A                       ; $ABA7C4  AD 2A 00     mX
    ORA $00F3                       ; $ABA7C7  0D F3 00     mX
    STA $049B                       ; $ABA7CA  8D 9B 04     mX
    REP #$20                        ; $ABA7CD  C2 20        mX
    LDA #$019C                      ; $ABA7CF  A9 9C 01     MX
    STA ($10)                       ; $ABA7D2  92 10        MX
    RTS                             ; $ABA7D4  60           MX
L_ABA7D5:
    STZ $00EC                       ; $ABA7D5  9C EC 00     MX
    LDA $00EE                       ; $ABA7D8  AD EE 00     MX
    CLC                             ; $ABA7DB  18           MX
    ADC #$0004                      ; $ABA7DC  69 04 00     MX
    STA $00EE                       ; $ABA7DF  8D EE 00     MX
    CMP #$0100                      ; $ABA7E2  C9 00 01     MX
    BCC L_ABA7F0                    ; $ABA7E5  90 09        MX
    INC $00EC                       ; $ABA7E7  EE EC 00     MX
    CMP #$FFF0                      ; $ABA7EA  C9 F0 FF     MX
    BCS L_ABA7F0                    ; $ABA7ED  B0 01        MX
    RTS                             ; $ABA7EF  60           MX
L_ABA7F0:
    LDA $00F0                       ; $ABA7F0  AD F0 00     MX
    CMP #$00E0                      ; $ABA7F3  C9 E0 00     MX
    BCC L_ABA7FE                    ; $ABA7F6  90 06        MX
    CMP #$FFF0                      ; $ABA7F8  C9 F0 FF     MX
    BCS L_ABA7FE                    ; $ABA7FB  B0 01        MX
    RTS                             ; $ABA7FD  60           MX
L_ABA7FE:
    SEP #$20                        ; $ABA7FE  E2 20        MX
    LDA $00EC                       ; $ABA800  AD EC 00     mX
    BNE L_ABA80B                    ; $ABA803  D0 06        mX
    LDA $ABE4D0                     ; $ABA805  AF D0 E4 AB  mX
    BRA L_ABA80F                    ; $ABA809  80 04        mX
L_ABA80B:
    LDA $ABE4D4                     ; $ABA80B  AF D4 E4 AB  mX
L_ABA80F:
    ORA $0519                       ; $ABA80F  0D 19 05     mX
    STA $0519                       ; $ABA812  8D 19 05     mX
    LDA $00F0                       ; $ABA815  AD F0 00     mX
    STA $049D                       ; $ABA818  8D 9D 04     mX
    LDA $00EE                       ; $ABA81B  AD EE 00     mX
    STA $049C                       ; $ABA81E  8D 9C 04     mX
    LDA $00F2                       ; $ABA821  AD F2 00     mX
    STA $049E                       ; $ABA824  8D 9E 04     mX
    LDA $002A                       ; $ABA827  AD 2A 00     mX
    ORA $00F3                       ; $ABA82A  0D F3 00     mX
    STA $049F                       ; $ABA82D  8D 9F 04     mX
    REP #$20                        ; $ABA830  C2 20        mX
    LDA #$01A0                      ; $ABA832  A9 A0 01     MX
    STA ($10)                       ; $ABA835  92 10        MX
    RTS                             ; $ABA837  60           MX
L_ABA838:
    STZ $00EC                       ; $ABA838  9C EC 00     MX
    LDA $00EE                       ; $ABA83B  AD EE 00     MX
    CLC                             ; $ABA83E  18           MX
    ADC #$0004                      ; $ABA83F  69 04 00     MX
    STA $00EE                       ; $ABA842  8D EE 00     MX
    CMP #$0100                      ; $ABA845  C9 00 01     MX
    BCC L_ABA853                    ; $ABA848  90 09        MX
    INC $00EC                       ; $ABA84A  EE EC 00     MX
    CMP #$FFF0                      ; $ABA84D  C9 F0 FF     MX
    BCS L_ABA853                    ; $ABA850  B0 01        MX
    RTS                             ; $ABA852  60           MX
L_ABA853:
    LDA $00F0                       ; $ABA853  AD F0 00     MX
    CMP #$00E0                      ; $ABA856  C9 E0 00     MX
    BCC L_ABA861                    ; $ABA859  90 06        MX
    CMP #$FFF0                      ; $ABA85B  C9 F0 FF     MX
    BCS L_ABA861                    ; $ABA85E  B0 01        MX
    RTS                             ; $ABA860  60           MX
L_ABA861:
    SEP #$20                        ; $ABA861  E2 20        MX
    LDA $00EC                       ; $ABA863  AD EC 00     mX
    BNE L_ABA86E                    ; $ABA866  D0 06        mX
    LDA $ABE4CD                     ; $ABA868  AF CD E4 AB  mX
    BRA L_ABA872                    ; $ABA86C  80 04        mX
L_ABA86E:
    LDA $ABE4D1                     ; $ABA86E  AF D1 E4 AB  mX
L_ABA872:
    ORA $051A                       ; $ABA872  0D 1A 05     mX
    STA $051A                       ; $ABA875  8D 1A 05     mX
    LDA $00F0                       ; $ABA878  AD F0 00     mX
    STA $04A1                       ; $ABA87B  8D A1 04     mX
    LDA $00EE                       ; $ABA87E  AD EE 00     mX
    STA $04A0                       ; $ABA881  8D A0 04     mX
    LDA $00F2                       ; $ABA884  AD F2 00     mX
    STA $04A2                       ; $ABA887  8D A2 04     mX
    LDA $002A                       ; $ABA88A  AD 2A 00     mX
    ORA $00F3                       ; $ABA88D  0D F3 00     mX
    STA $04A3                       ; $ABA890  8D A3 04     mX
    REP #$20                        ; $ABA893  C2 20        mX
    LDA #$01A4                      ; $ABA895  A9 A4 01     MX
    STA ($10)                       ; $ABA898  92 10        MX
    RTS                             ; $ABA89A  60           MX
L_ABA89B:
    STZ $00EC                       ; $ABA89B  9C EC 00     MX
    LDA $00EE                       ; $ABA89E  AD EE 00     MX
    CLC                             ; $ABA8A1  18           MX
    ADC #$0004                      ; $ABA8A2  69 04 00     MX
    STA $00EE                       ; $ABA8A5  8D EE 00     MX
    CMP #$0100                      ; $ABA8A8  C9 00 01     MX
    BCC L_ABA8B6                    ; $ABA8AB  90 09        MX
    INC $00EC                       ; $ABA8AD  EE EC 00     MX
    CMP #$FFF0                      ; $ABA8B0  C9 F0 FF     MX
    BCS L_ABA8B6                    ; $ABA8B3  B0 01        MX
    RTS                             ; $ABA8B5  60           MX
L_ABA8B6:
    LDA $00F0                       ; $ABA8B6  AD F0 00     MX
    CMP #$00E0                      ; $ABA8B9  C9 E0 00     MX
    BCC L_ABA8C4                    ; $ABA8BC  90 06        MX
    CMP #$FFF0                      ; $ABA8BE  C9 F0 FF     MX
    BCS L_ABA8C4                    ; $ABA8C1  B0 01        MX
    RTS                             ; $ABA8C3  60           MX
L_ABA8C4:
    SEP #$20                        ; $ABA8C4  E2 20        MX
    LDA $00EC                       ; $ABA8C6  AD EC 00     mX
    BNE L_ABA8D1                    ; $ABA8C9  D0 06        mX
    LDA $ABE4CE                     ; $ABA8CB  AF CE E4 AB  mX
    BRA L_ABA8D5                    ; $ABA8CF  80 04        mX
L_ABA8D1:
    LDA $ABE4D2                     ; $ABA8D1  AF D2 E4 AB  mX
L_ABA8D5:
    ORA $051A                       ; $ABA8D5  0D 1A 05     mX
    STA $051A                       ; $ABA8D8  8D 1A 05     mX
    LDA $00F0                       ; $ABA8DB  AD F0 00     mX
    STA $04A5                       ; $ABA8DE  8D A5 04     mX
    LDA $00EE                       ; $ABA8E1  AD EE 00     mX
    STA $04A4                       ; $ABA8E4  8D A4 04     mX
    LDA $00F2                       ; $ABA8E7  AD F2 00     mX
    STA $04A6                       ; $ABA8EA  8D A6 04     mX
    LDA $002A                       ; $ABA8ED  AD 2A 00     mX
    ORA $00F3                       ; $ABA8F0  0D F3 00     mX
    STA $04A7                       ; $ABA8F3  8D A7 04     mX
    REP #$20                        ; $ABA8F6  C2 20        mX
    LDA #$01A8                      ; $ABA8F8  A9 A8 01     MX
    STA ($10)                       ; $ABA8FB  92 10        MX
    RTS                             ; $ABA8FD  60           MX
L_ABA8FE:
    STZ $00EC                       ; $ABA8FE  9C EC 00     MX
    LDA $00EE                       ; $ABA901  AD EE 00     MX
    CLC                             ; $ABA904  18           MX
    ADC #$0004                      ; $ABA905  69 04 00     MX
    STA $00EE                       ; $ABA908  8D EE 00     MX
    CMP #$0100                      ; $ABA90B  C9 00 01     MX
    BCC L_ABA919                    ; $ABA90E  90 09        MX
    INC $00EC                       ; $ABA910  EE EC 00     MX
    CMP #$FFF0                      ; $ABA913  C9 F0 FF     MX
    BCS L_ABA919                    ; $ABA916  B0 01        MX
    RTS                             ; $ABA918  60           MX
L_ABA919:
    LDA $00F0                       ; $ABA919  AD F0 00     MX
    CMP #$00E0                      ; $ABA91C  C9 E0 00     MX
    BCC L_ABA927                    ; $ABA91F  90 06        MX
    CMP #$FFF0                      ; $ABA921  C9 F0 FF     MX
    BCS L_ABA927                    ; $ABA924  B0 01        MX
    RTS                             ; $ABA926  60           MX
L_ABA927:
    SEP #$20                        ; $ABA927  E2 20        MX
    LDA $00EC                       ; $ABA929  AD EC 00     mX
    BNE L_ABA934                    ; $ABA92C  D0 06        mX
    LDA $ABE4CF                     ; $ABA92E  AF CF E4 AB  mX
    BRA L_ABA938                    ; $ABA932  80 04        mX
L_ABA934:
    LDA $ABE4D3                     ; $ABA934  AF D3 E4 AB  mX
L_ABA938:
    ORA $051A                       ; $ABA938  0D 1A 05     mX
    STA $051A                       ; $ABA93B  8D 1A 05     mX
    LDA $00F0                       ; $ABA93E  AD F0 00     mX
    STA $04A9                       ; $ABA941  8D A9 04     mX
    LDA $00EE                       ; $ABA944  AD EE 00     mX
    STA $04A8                       ; $ABA947  8D A8 04     mX
    LDA $00F2                       ; $ABA94A  AD F2 00     mX
    STA $04AA                       ; $ABA94D  8D AA 04     mX
    LDA $002A                       ; $ABA950  AD 2A 00     mX
    ORA $00F3                       ; $ABA953  0D F3 00     mX
    STA $04AB                       ; $ABA956  8D AB 04     mX
    REP #$20                        ; $ABA959  C2 20        mX
    LDA #$01AC                      ; $ABA95B  A9 AC 01     MX
    STA ($10)                       ; $ABA95E  92 10        MX
    RTS                             ; $ABA960  60           MX
L_ABA961:
    STZ $00EC                       ; $ABA961  9C EC 00     MX
    LDA $00EE                       ; $ABA964  AD EE 00     MX
    CLC                             ; $ABA967  18           MX
    ADC #$0004                      ; $ABA968  69 04 00     MX
    STA $00EE                       ; $ABA96B  8D EE 00     MX
    CMP #$0100                      ; $ABA96E  C9 00 01     MX
    BCC L_ABA97C                    ; $ABA971  90 09        MX
    INC $00EC                       ; $ABA973  EE EC 00     MX
    CMP #$FFF0                      ; $ABA976  C9 F0 FF     MX
    BCS L_ABA97C                    ; $ABA979  B0 01        MX
    RTS                             ; $ABA97B  60           MX
L_ABA97C:
    LDA $00F0                       ; $ABA97C  AD F0 00     MX
    CMP #$00E0                      ; $ABA97F  C9 E0 00     MX
    BCC L_ABA98A                    ; $ABA982  90 06        MX
    CMP #$FFF0                      ; $ABA984  C9 F0 FF     MX
    BCS L_ABA98A                    ; $ABA987  B0 01        MX
    RTS                             ; $ABA989  60           MX
L_ABA98A:
    SEP #$20                        ; $ABA98A  E2 20        MX
    LDA $00EC                       ; $ABA98C  AD EC 00     mX
    BNE L_ABA997                    ; $ABA98F  D0 06        mX
    LDA $ABE4D0                     ; $ABA991  AF D0 E4 AB  mX
    BRA L_ABA99B                    ; $ABA995  80 04        mX
L_ABA997:
    LDA $ABE4D4                     ; $ABA997  AF D4 E4 AB  mX
L_ABA99B:
    ORA $051A                       ; $ABA99B  0D 1A 05     mX
    STA $051A                       ; $ABA99E  8D 1A 05     mX
    LDA $00F0                       ; $ABA9A1  AD F0 00     mX
    STA $04AD                       ; $ABA9A4  8D AD 04     mX
    LDA $00EE                       ; $ABA9A7  AD EE 00     mX
    STA $04AC                       ; $ABA9AA  8D AC 04     mX
    LDA $00F2                       ; $ABA9AD  AD F2 00     mX
    STA $04AE                       ; $ABA9B0  8D AE 04     mX
    LDA $002A                       ; $ABA9B3  AD 2A 00     mX
    ORA $00F3                       ; $ABA9B6  0D F3 00     mX
    STA $04AF                       ; $ABA9B9  8D AF 04     mX
    REP #$20                        ; $ABA9BC  C2 20        mX
    LDA #$01B0                      ; $ABA9BE  A9 B0 01     MX
    STA ($10)                       ; $ABA9C1  92 10        MX
    RTS                             ; $ABA9C3  60           MX
L_ABA9C4:
    STZ $00EC                       ; $ABA9C4  9C EC 00     MX
    LDA $00EE                       ; $ABA9C7  AD EE 00     MX
    CLC                             ; $ABA9CA  18           MX
    ADC #$0004                      ; $ABA9CB  69 04 00     MX
    STA $00EE                       ; $ABA9CE  8D EE 00     MX
    CMP #$0100                      ; $ABA9D1  C9 00 01     MX
    BCC L_ABA9DF                    ; $ABA9D4  90 09        MX
    INC $00EC                       ; $ABA9D6  EE EC 00     MX
    CMP #$FFF0                      ; $ABA9D9  C9 F0 FF     MX
    BCS L_ABA9DF                    ; $ABA9DC  B0 01        MX
    RTS                             ; $ABA9DE  60           MX
L_ABA9DF:
    LDA $00F0                       ; $ABA9DF  AD F0 00     MX
    CMP #$00E0                      ; $ABA9E2  C9 E0 00     MX
    BCC L_ABA9ED                    ; $ABA9E5  90 06        MX
    CMP #$FFF0                      ; $ABA9E7  C9 F0 FF     MX
    BCS L_ABA9ED                    ; $ABA9EA  B0 01        MX
    RTS                             ; $ABA9EC  60           MX
L_ABA9ED:
    SEP #$20                        ; $ABA9ED  E2 20        MX
    LDA $00EC                       ; $ABA9EF  AD EC 00     mX
    BNE L_ABA9FA                    ; $ABA9F2  D0 06        mX
    LDA $ABE4CD                     ; $ABA9F4  AF CD E4 AB  mX
    BRA L_ABA9FE                    ; $ABA9F8  80 04        mX
L_ABA9FA:
    LDA $ABE4D1                     ; $ABA9FA  AF D1 E4 AB  mX
L_ABA9FE:
    ORA $051B                       ; $ABA9FE  0D 1B 05     mX
    STA $051B                       ; $ABAA01  8D 1B 05     mX
    LDA $00F0                       ; $ABAA04  AD F0 00     mX
    STA $04B1                       ; $ABAA07  8D B1 04     mX
    LDA $00EE                       ; $ABAA0A  AD EE 00     mX
    STA $04B0                       ; $ABAA0D  8D B0 04     mX
    LDA $00F2                       ; $ABAA10  AD F2 00     mX
    STA $04B2                       ; $ABAA13  8D B2 04     mX
    LDA $002A                       ; $ABAA16  AD 2A 00     mX
    ORA $00F3                       ; $ABAA19  0D F3 00     mX
    STA $04B3                       ; $ABAA1C  8D B3 04     mX
    REP #$20                        ; $ABAA1F  C2 20        mX
    LDA #$01B4                      ; $ABAA21  A9 B4 01     MX
    STA ($10)                       ; $ABAA24  92 10        MX
    RTS                             ; $ABAA26  60           MX
L_ABAA27:
    STZ $00EC                       ; $ABAA27  9C EC 00     MX
    LDA $00EE                       ; $ABAA2A  AD EE 00     MX
    CLC                             ; $ABAA2D  18           MX
    ADC #$0004                      ; $ABAA2E  69 04 00     MX
    STA $00EE                       ; $ABAA31  8D EE 00     MX
    CMP #$0100                      ; $ABAA34  C9 00 01     MX
    BCC L_ABAA42                    ; $ABAA37  90 09        MX
    INC $00EC                       ; $ABAA39  EE EC 00     MX
    CMP #$FFF0                      ; $ABAA3C  C9 F0 FF     MX
    BCS L_ABAA42                    ; $ABAA3F  B0 01        MX
    RTS                             ; $ABAA41  60           MX
L_ABAA42:
    LDA $00F0                       ; $ABAA42  AD F0 00     MX
    CMP #$00E0                      ; $ABAA45  C9 E0 00     MX
    BCC L_ABAA50                    ; $ABAA48  90 06        MX
    CMP #$FFF0                      ; $ABAA4A  C9 F0 FF     MX
    BCS L_ABAA50                    ; $ABAA4D  B0 01        MX
    RTS                             ; $ABAA4F  60           MX
L_ABAA50:
    SEP #$20                        ; $ABAA50  E2 20        MX
    LDA $00EC                       ; $ABAA52  AD EC 00     mX
    BNE L_ABAA5D                    ; $ABAA55  D0 06        mX
    LDA $ABE4CE                     ; $ABAA57  AF CE E4 AB  mX
    BRA L_ABAA61                    ; $ABAA5B  80 04        mX
L_ABAA5D:
    LDA $ABE4D2                     ; $ABAA5D  AF D2 E4 AB  mX
L_ABAA61:
    ORA $051B                       ; $ABAA61  0D 1B 05     mX
    STA $051B                       ; $ABAA64  8D 1B 05     mX
    LDA $00F0                       ; $ABAA67  AD F0 00     mX
    STA $04B5                       ; $ABAA6A  8D B5 04     mX
    LDA $00EE                       ; $ABAA6D  AD EE 00     mX
    STA $04B4                       ; $ABAA70  8D B4 04     mX
    LDA $00F2                       ; $ABAA73  AD F2 00     mX
    STA $04B6                       ; $ABAA76  8D B6 04     mX
    LDA $002A                       ; $ABAA79  AD 2A 00     mX
    ORA $00F3                       ; $ABAA7C  0D F3 00     mX
    STA $04B7                       ; $ABAA7F  8D B7 04     mX
    REP #$20                        ; $ABAA82  C2 20        mX
    LDA #$01B8                      ; $ABAA84  A9 B8 01     MX
    STA ($10)                       ; $ABAA87  92 10        MX
    RTS                             ; $ABAA89  60           MX
L_ABAA8A:
    STZ $00EC                       ; $ABAA8A  9C EC 00     MX
    LDA $00EE                       ; $ABAA8D  AD EE 00     MX
    CLC                             ; $ABAA90  18           MX
    ADC #$0004                      ; $ABAA91  69 04 00     MX
    STA $00EE                       ; $ABAA94  8D EE 00     MX
    CMP #$0100                      ; $ABAA97  C9 00 01     MX
    BCC L_ABAAA5                    ; $ABAA9A  90 09        MX
    INC $00EC                       ; $ABAA9C  EE EC 00     MX
    CMP #$FFF0                      ; $ABAA9F  C9 F0 FF     MX
    BCS L_ABAAA5                    ; $ABAAA2  B0 01        MX
    RTS                             ; $ABAAA4  60           MX
L_ABAAA5:
    LDA $00F0                       ; $ABAAA5  AD F0 00     MX
    CMP #$00E0                      ; $ABAAA8  C9 E0 00     MX
    BCC L_ABAAB3                    ; $ABAAAB  90 06        MX
    CMP #$FFF0                      ; $ABAAAD  C9 F0 FF     MX
    BCS L_ABAAB3                    ; $ABAAB0  B0 01        MX
    RTS                             ; $ABAAB2  60           MX
L_ABAAB3:
    SEP #$20                        ; $ABAAB3  E2 20        MX
    LDA $00EC                       ; $ABAAB5  AD EC 00     mX
    BNE L_ABAAC0                    ; $ABAAB8  D0 06        mX
    LDA $ABE4CF                     ; $ABAABA  AF CF E4 AB  mX
    BRA L_ABAAC4                    ; $ABAABE  80 04        mX
L_ABAAC0:
    LDA $ABE4D3                     ; $ABAAC0  AF D3 E4 AB  mX
L_ABAAC4:
    ORA $051B                       ; $ABAAC4  0D 1B 05     mX
    STA $051B                       ; $ABAAC7  8D 1B 05     mX
    LDA $00F0                       ; $ABAACA  AD F0 00     mX
    STA $04B9                       ; $ABAACD  8D B9 04     mX
    LDA $00EE                       ; $ABAAD0  AD EE 00     mX
    STA $04B8                       ; $ABAAD3  8D B8 04     mX
    LDA $00F2                       ; $ABAAD6  AD F2 00     mX
    STA $04BA                       ; $ABAAD9  8D BA 04     mX
    LDA $002A                       ; $ABAADC  AD 2A 00     mX
    ORA $00F3                       ; $ABAADF  0D F3 00     mX
    STA $04BB                       ; $ABAAE2  8D BB 04     mX
    REP #$20                        ; $ABAAE5  C2 20        mX
    LDA #$01BC                      ; $ABAAE7  A9 BC 01     MX
    STA ($10)                       ; $ABAAEA  92 10        MX
    RTS                             ; $ABAAEC  60           MX
L_ABAAED:
    STZ $00EC                       ; $ABAAED  9C EC 00     MX
    LDA $00EE                       ; $ABAAF0  AD EE 00     MX
    CLC                             ; $ABAAF3  18           MX
    ADC #$0004                      ; $ABAAF4  69 04 00     MX
    STA $00EE                       ; $ABAAF7  8D EE 00     MX
    CMP #$0100                      ; $ABAAFA  C9 00 01     MX
    BCC L_ABAB08                    ; $ABAAFD  90 09        MX
    INC $00EC                       ; $ABAAFF  EE EC 00     MX
    CMP #$FFF0                      ; $ABAB02  C9 F0 FF     MX
    BCS L_ABAB08                    ; $ABAB05  B0 01        MX
    RTS                             ; $ABAB07  60           MX
L_ABAB08:
    LDA $00F0                       ; $ABAB08  AD F0 00     MX
    CMP #$00E0                      ; $ABAB0B  C9 E0 00     MX
    BCC L_ABAB16                    ; $ABAB0E  90 06        MX
    CMP #$FFF0                      ; $ABAB10  C9 F0 FF     MX
    BCS L_ABAB16                    ; $ABAB13  B0 01        MX
    RTS                             ; $ABAB15  60           MX
L_ABAB16:
    SEP #$20                        ; $ABAB16  E2 20        MX
    LDA $00EC                       ; $ABAB18  AD EC 00     mX
    BNE L_ABAB23                    ; $ABAB1B  D0 06        mX
    LDA $ABE4D0                     ; $ABAB1D  AF D0 E4 AB  mX
    BRA L_ABAB27                    ; $ABAB21  80 04        mX
L_ABAB23:
    LDA $ABE4D4                     ; $ABAB23  AF D4 E4 AB  mX
L_ABAB27:
    ORA $051B                       ; $ABAB27  0D 1B 05     mX
    STA $051B                       ; $ABAB2A  8D 1B 05     mX
    LDA $00F0                       ; $ABAB2D  AD F0 00     mX
    STA $04BD                       ; $ABAB30  8D BD 04     mX
    LDA $00EE                       ; $ABAB33  AD EE 00     mX
    STA $04BC                       ; $ABAB36  8D BC 04     mX
    LDA $00F2                       ; $ABAB39  AD F2 00     mX
    STA $04BE                       ; $ABAB3C  8D BE 04     mX
    LDA $002A                       ; $ABAB3F  AD 2A 00     mX
    ORA $00F3                       ; $ABAB42  0D F3 00     mX
    STA $04BF                       ; $ABAB45  8D BF 04     mX
    REP #$20                        ; $ABAB48  C2 20        mX
    LDA #$01C0                      ; $ABAB4A  A9 C0 01     MX
    STA ($10)                       ; $ABAB4D  92 10        MX
    RTS                             ; $ABAB4F  60           MX
L_ABAB50:
    STZ $00EC                       ; $ABAB50  9C EC 00     MX
    LDA $00EE                       ; $ABAB53  AD EE 00     MX
    CLC                             ; $ABAB56  18           MX
    ADC #$0004                      ; $ABAB57  69 04 00     MX
    STA $00EE                       ; $ABAB5A  8D EE 00     MX
    CMP #$0100                      ; $ABAB5D  C9 00 01     MX
    BCC L_ABAB6B                    ; $ABAB60  90 09        MX
    INC $00EC                       ; $ABAB62  EE EC 00     MX
    CMP #$FFF0                      ; $ABAB65  C9 F0 FF     MX
    BCS L_ABAB6B                    ; $ABAB68  B0 01        MX
    RTS                             ; $ABAB6A  60           MX
L_ABAB6B:
    LDA $00F0                       ; $ABAB6B  AD F0 00     MX
    CMP #$00E0                      ; $ABAB6E  C9 E0 00     MX
    BCC L_ABAB79                    ; $ABAB71  90 06        MX
    CMP #$FFF0                      ; $ABAB73  C9 F0 FF     MX
    BCS L_ABAB79                    ; $ABAB76  B0 01        MX
    RTS                             ; $ABAB78  60           MX
L_ABAB79:
    SEP #$20                        ; $ABAB79  E2 20        MX
    LDA $00EC                       ; $ABAB7B  AD EC 00     mX
    BNE L_ABAB86                    ; $ABAB7E  D0 06        mX
    LDA $ABE4CD                     ; $ABAB80  AF CD E4 AB  mX
    BRA L_ABAB8A                    ; $ABAB84  80 04        mX
L_ABAB86:
    LDA $ABE4D1                     ; $ABAB86  AF D1 E4 AB  mX
L_ABAB8A:
    ORA $051C                       ; $ABAB8A  0D 1C 05     mX
    STA $051C                       ; $ABAB8D  8D 1C 05     mX
    LDA $00F0                       ; $ABAB90  AD F0 00     mX
    STA $04C1                       ; $ABAB93  8D C1 04     mX
    LDA $00EE                       ; $ABAB96  AD EE 00     mX
    STA $04C0                       ; $ABAB99  8D C0 04     mX
    LDA $00F2                       ; $ABAB9C  AD F2 00     mX
    STA $04C2                       ; $ABAB9F  8D C2 04     mX
    LDA $002A                       ; $ABABA2  AD 2A 00     mX
    ORA $00F3                       ; $ABABA5  0D F3 00     mX
    STA $04C3                       ; $ABABA8  8D C3 04     mX
    REP #$20                        ; $ABABAB  C2 20        mX
    LDA #$01C4                      ; $ABABAD  A9 C4 01     MX
    STA ($10)                       ; $ABABB0  92 10        MX
    RTS                             ; $ABABB2  60           MX
L_ABABB3:
    STZ $00EC                       ; $ABABB3  9C EC 00     MX
    LDA $00EE                       ; $ABABB6  AD EE 00     MX
    CLC                             ; $ABABB9  18           MX
    ADC #$0004                      ; $ABABBA  69 04 00     MX
    STA $00EE                       ; $ABABBD  8D EE 00     MX
    CMP #$0100                      ; $ABABC0  C9 00 01     MX
    BCC L_ABABCE                    ; $ABABC3  90 09        MX
    INC $00EC                       ; $ABABC5  EE EC 00     MX
    CMP #$FFF0                      ; $ABABC8  C9 F0 FF     MX
    BCS L_ABABCE                    ; $ABABCB  B0 01        MX
    RTS                             ; $ABABCD  60           MX
L_ABABCE:
    LDA $00F0                       ; $ABABCE  AD F0 00     MX
    CMP #$00E0                      ; $ABABD1  C9 E0 00     MX
    BCC L_ABABDC                    ; $ABABD4  90 06        MX
    CMP #$FFF0                      ; $ABABD6  C9 F0 FF     MX
    BCS L_ABABDC                    ; $ABABD9  B0 01        MX
    RTS                             ; $ABABDB  60           MX
L_ABABDC:
    SEP #$20                        ; $ABABDC  E2 20        MX
    LDA $00EC                       ; $ABABDE  AD EC 00     mX
    BNE L_ABABE9                    ; $ABABE1  D0 06        mX
    LDA $ABE4CE                     ; $ABABE3  AF CE E4 AB  mX
    BRA L_ABABED                    ; $ABABE7  80 04        mX
L_ABABE9:
    LDA $ABE4D2                     ; $ABABE9  AF D2 E4 AB  mX
L_ABABED:
    ORA $051C                       ; $ABABED  0D 1C 05     mX
    STA $051C                       ; $ABABF0  8D 1C 05     mX
    LDA $00F0                       ; $ABABF3  AD F0 00     mX
    STA $04C5                       ; $ABABF6  8D C5 04     mX
    LDA $00EE                       ; $ABABF9  AD EE 00     mX
    STA $04C4                       ; $ABABFC  8D C4 04     mX
    LDA $00F2                       ; $ABABFF  AD F2 00     mX
    STA $04C6                       ; $ABAC02  8D C6 04     mX
    LDA $002A                       ; $ABAC05  AD 2A 00     mX
    ORA $00F3                       ; $ABAC08  0D F3 00     mX
    STA $04C7                       ; $ABAC0B  8D C7 04     mX
    REP #$20                        ; $ABAC0E  C2 20        mX
    LDA #$01C8                      ; $ABAC10  A9 C8 01     MX
    STA ($10)                       ; $ABAC13  92 10        MX
    RTS                             ; $ABAC15  60           MX
L_ABAC16:
    STZ $00EC                       ; $ABAC16  9C EC 00     MX
    LDA $00EE                       ; $ABAC19  AD EE 00     MX
    CLC                             ; $ABAC1C  18           MX
    ADC #$0004                      ; $ABAC1D  69 04 00     MX
    STA $00EE                       ; $ABAC20  8D EE 00     MX
    CMP #$0100                      ; $ABAC23  C9 00 01     MX
    BCC L_ABAC31                    ; $ABAC26  90 09        MX
    INC $00EC                       ; $ABAC28  EE EC 00     MX
    CMP #$FFF0                      ; $ABAC2B  C9 F0 FF     MX
    BCS L_ABAC31                    ; $ABAC2E  B0 01        MX
    RTS                             ; $ABAC30  60           MX
L_ABAC31:
    LDA $00F0                       ; $ABAC31  AD F0 00     MX
    CMP #$00E0                      ; $ABAC34  C9 E0 00     MX
    BCC L_ABAC3F                    ; $ABAC37  90 06        MX
    CMP #$FFF0                      ; $ABAC39  C9 F0 FF     MX
    BCS L_ABAC3F                    ; $ABAC3C  B0 01        MX
    RTS                             ; $ABAC3E  60           MX
L_ABAC3F:
    SEP #$20                        ; $ABAC3F  E2 20        MX
    LDA $00EC                       ; $ABAC41  AD EC 00     mX
    BNE L_ABAC4C                    ; $ABAC44  D0 06        mX
    LDA $ABE4CF                     ; $ABAC46  AF CF E4 AB  mX
    BRA L_ABAC50                    ; $ABAC4A  80 04        mX
L_ABAC4C:
    LDA $ABE4D3                     ; $ABAC4C  AF D3 E4 AB  mX
L_ABAC50:
    ORA $051C                       ; $ABAC50  0D 1C 05     mX
    STA $051C                       ; $ABAC53  8D 1C 05     mX
    LDA $00F0                       ; $ABAC56  AD F0 00     mX
    STA $04C9                       ; $ABAC59  8D C9 04     mX
    LDA $00EE                       ; $ABAC5C  AD EE 00     mX
    STA $04C8                       ; $ABAC5F  8D C8 04     mX
    LDA $00F2                       ; $ABAC62  AD F2 00     mX
    STA $04CA                       ; $ABAC65  8D CA 04     mX
    LDA $002A                       ; $ABAC68  AD 2A 00     mX
    ORA $00F3                       ; $ABAC6B  0D F3 00     mX
    STA $04CB                       ; $ABAC6E  8D CB 04     mX
    REP #$20                        ; $ABAC71  C2 20        mX
    LDA #$01CC                      ; $ABAC73  A9 CC 01     MX
    STA ($10)                       ; $ABAC76  92 10        MX
    RTS                             ; $ABAC78  60           MX
L_ABAC79:
    STZ $00EC                       ; $ABAC79  9C EC 00     MX
    LDA $00EE                       ; $ABAC7C  AD EE 00     MX
    CLC                             ; $ABAC7F  18           MX
    ADC #$0004                      ; $ABAC80  69 04 00     MX
    STA $00EE                       ; $ABAC83  8D EE 00     MX
    CMP #$0100                      ; $ABAC86  C9 00 01     MX
    BCC L_ABAC94                    ; $ABAC89  90 09        MX
    INC $00EC                       ; $ABAC8B  EE EC 00     MX
    CMP #$FFF0                      ; $ABAC8E  C9 F0 FF     MX
    BCS L_ABAC94                    ; $ABAC91  B0 01        MX
    RTS                             ; $ABAC93  60           MX
L_ABAC94:
    LDA $00F0                       ; $ABAC94  AD F0 00     MX
    CMP #$00E0                      ; $ABAC97  C9 E0 00     MX
    BCC L_ABACA2                    ; $ABAC9A  90 06        MX
    CMP #$FFF0                      ; $ABAC9C  C9 F0 FF     MX
    BCS L_ABACA2                    ; $ABAC9F  B0 01        MX
    RTS                             ; $ABACA1  60           MX
L_ABACA2:
    SEP #$20                        ; $ABACA2  E2 20        MX
    LDA $00EC                       ; $ABACA4  AD EC 00     mX
    BNE L_ABACAF                    ; $ABACA7  D0 06        mX
    LDA $ABE4D0                     ; $ABACA9  AF D0 E4 AB  mX
    BRA L_ABACB3                    ; $ABACAD  80 04        mX
L_ABACAF:
    LDA $ABE4D4                     ; $ABACAF  AF D4 E4 AB  mX
L_ABACB3:
    ORA $051C                       ; $ABACB3  0D 1C 05     mX
    STA $051C                       ; $ABACB6  8D 1C 05     mX
    LDA $00F0                       ; $ABACB9  AD F0 00     mX
    STA $04CD                       ; $ABACBC  8D CD 04     mX
    LDA $00EE                       ; $ABACBF  AD EE 00     mX
    STA $04CC                       ; $ABACC2  8D CC 04     mX
    LDA $00F2                       ; $ABACC5  AD F2 00     mX
    STA $04CE                       ; $ABACC8  8D CE 04     mX
    LDA $002A                       ; $ABACCB  AD 2A 00     mX
    ORA $00F3                       ; $ABACCE  0D F3 00     mX
    STA $04CF                       ; $ABACD1  8D CF 04     mX
    REP #$20                        ; $ABACD4  C2 20        mX
    LDA #$01D0                      ; $ABACD6  A9 D0 01     MX
    STA ($10)                       ; $ABACD9  92 10        MX
    RTS                             ; $ABACDB  60           MX
L_ABACDC:
    STZ $00EC                       ; $ABACDC  9C EC 00     MX
    LDA $00EE                       ; $ABACDF  AD EE 00     MX
    CLC                             ; $ABACE2  18           MX
    ADC #$0004                      ; $ABACE3  69 04 00     MX
    STA $00EE                       ; $ABACE6  8D EE 00     MX
    CMP #$0100                      ; $ABACE9  C9 00 01     MX
    BCC L_ABACF7                    ; $ABACEC  90 09        MX
    INC $00EC                       ; $ABACEE  EE EC 00     MX
    CMP #$FFF0                      ; $ABACF1  C9 F0 FF     MX
    BCS L_ABACF7                    ; $ABACF4  B0 01        MX
    RTS                             ; $ABACF6  60           MX
L_ABACF7:
    LDA $00F0                       ; $ABACF7  AD F0 00     MX
    CMP #$00E0                      ; $ABACFA  C9 E0 00     MX
    BCC L_ABAD05                    ; $ABACFD  90 06        MX
    CMP #$FFF0                      ; $ABACFF  C9 F0 FF     MX
    BCS L_ABAD05                    ; $ABAD02  B0 01        MX
    RTS                             ; $ABAD04  60           MX
L_ABAD05:
    SEP #$20                        ; $ABAD05  E2 20        MX
    LDA $00EC                       ; $ABAD07  AD EC 00     mX
    BNE L_ABAD12                    ; $ABAD0A  D0 06        mX
    LDA $ABE4CD                     ; $ABAD0C  AF CD E4 AB  mX
    BRA L_ABAD16                    ; $ABAD10  80 04        mX
L_ABAD12:
    LDA $ABE4D1                     ; $ABAD12  AF D1 E4 AB  mX
L_ABAD16:
    ORA $051D                       ; $ABAD16  0D 1D 05     mX
    STA $051D                       ; $ABAD19  8D 1D 05     mX
    LDA $00F0                       ; $ABAD1C  AD F0 00     mX
    STA $04D1                       ; $ABAD1F  8D D1 04     mX
    LDA $00EE                       ; $ABAD22  AD EE 00     mX
    STA $04D0                       ; $ABAD25  8D D0 04     mX
    LDA $00F2                       ; $ABAD28  AD F2 00     mX
    STA $04D2                       ; $ABAD2B  8D D2 04     mX
    LDA $002A                       ; $ABAD2E  AD 2A 00     mX
    ORA $00F3                       ; $ABAD31  0D F3 00     mX
    STA $04D3                       ; $ABAD34  8D D3 04     mX
    REP #$20                        ; $ABAD37  C2 20        mX
    LDA #$01D4                      ; $ABAD39  A9 D4 01     MX
    STA ($10)                       ; $ABAD3C  92 10        MX
    RTS                             ; $ABAD3E  60           MX
L_ABAD3F:
    STZ $00EC                       ; $ABAD3F  9C EC 00     MX
    LDA $00EE                       ; $ABAD42  AD EE 00     MX
    CLC                             ; $ABAD45  18           MX
    ADC #$0004                      ; $ABAD46  69 04 00     MX
    STA $00EE                       ; $ABAD49  8D EE 00     MX
    CMP #$0100                      ; $ABAD4C  C9 00 01     MX
    BCC L_ABAD5A                    ; $ABAD4F  90 09        MX
    INC $00EC                       ; $ABAD51  EE EC 00     MX
    CMP #$FFF0                      ; $ABAD54  C9 F0 FF     MX
    BCS L_ABAD5A                    ; $ABAD57  B0 01        MX
    RTS                             ; $ABAD59  60           MX
L_ABAD5A:
    LDA $00F0                       ; $ABAD5A  AD F0 00     MX
    CMP #$00E0                      ; $ABAD5D  C9 E0 00     MX
    BCC L_ABAD68                    ; $ABAD60  90 06        MX
    CMP #$FFF0                      ; $ABAD62  C9 F0 FF     MX
    BCS L_ABAD68                    ; $ABAD65  B0 01        MX
    RTS                             ; $ABAD67  60           MX
L_ABAD68:
    SEP #$20                        ; $ABAD68  E2 20        MX
    LDA $00EC                       ; $ABAD6A  AD EC 00     mX
    BNE L_ABAD75                    ; $ABAD6D  D0 06        mX
    LDA $ABE4CE                     ; $ABAD6F  AF CE E4 AB  mX
    BRA L_ABAD79                    ; $ABAD73  80 04        mX
L_ABAD75:
    LDA $ABE4D2                     ; $ABAD75  AF D2 E4 AB  mX
L_ABAD79:
    ORA $051D                       ; $ABAD79  0D 1D 05     mX
    STA $051D                       ; $ABAD7C  8D 1D 05     mX
    LDA $00F0                       ; $ABAD7F  AD F0 00     mX
    STA $04D5                       ; $ABAD82  8D D5 04     mX
    LDA $00EE                       ; $ABAD85  AD EE 00     mX
    STA $04D4                       ; $ABAD88  8D D4 04     mX
    LDA $00F2                       ; $ABAD8B  AD F2 00     mX
    STA $04D6                       ; $ABAD8E  8D D6 04     mX
    LDA $002A                       ; $ABAD91  AD 2A 00     mX
    ORA $00F3                       ; $ABAD94  0D F3 00     mX
    STA $04D7                       ; $ABAD97  8D D7 04     mX
    REP #$20                        ; $ABAD9A  C2 20        mX
    LDA #$01D8                      ; $ABAD9C  A9 D8 01     MX
    STA ($10)                       ; $ABAD9F  92 10        MX
    RTS                             ; $ABADA1  60           MX
L_ABADA2:
    STZ $00EC                       ; $ABADA2  9C EC 00     MX
    LDA $00EE                       ; $ABADA5  AD EE 00     MX
    CLC                             ; $ABADA8  18           MX
    ADC #$0004                      ; $ABADA9  69 04 00     MX
    STA $00EE                       ; $ABADAC  8D EE 00     MX
    CMP #$0100                      ; $ABADAF  C9 00 01     MX
    BCC L_ABADBD                    ; $ABADB2  90 09        MX
    INC $00EC                       ; $ABADB4  EE EC 00     MX
    CMP #$FFF0                      ; $ABADB7  C9 F0 FF     MX
    BCS L_ABADBD                    ; $ABADBA  B0 01        MX
    RTS                             ; $ABADBC  60           MX
L_ABADBD:
    LDA $00F0                       ; $ABADBD  AD F0 00     MX
    CMP #$00E0                      ; $ABADC0  C9 E0 00     MX
    BCC L_ABADCB                    ; $ABADC3  90 06        MX
    CMP #$FFF0                      ; $ABADC5  C9 F0 FF     MX
    BCS L_ABADCB                    ; $ABADC8  B0 01        MX
    RTS                             ; $ABADCA  60           MX
L_ABADCB:
    SEP #$20                        ; $ABADCB  E2 20        MX
    LDA $00EC                       ; $ABADCD  AD EC 00     mX
    BNE L_ABADD8                    ; $ABADD0  D0 06        mX
    LDA $ABE4CF                     ; $ABADD2  AF CF E4 AB  mX
    BRA L_ABADDC                    ; $ABADD6  80 04        mX
L_ABADD8:
    LDA $ABE4D3                     ; $ABADD8  AF D3 E4 AB  mX
L_ABADDC:
    ORA $051D                       ; $ABADDC  0D 1D 05     mX
    STA $051D                       ; $ABADDF  8D 1D 05     mX
    LDA $00F0                       ; $ABADE2  AD F0 00     mX
    STA $04D9                       ; $ABADE5  8D D9 04     mX
    LDA $00EE                       ; $ABADE8  AD EE 00     mX
    STA $04D8                       ; $ABADEB  8D D8 04     mX
    LDA $00F2                       ; $ABADEE  AD F2 00     mX
    STA $04DA                       ; $ABADF1  8D DA 04     mX
    LDA $002A                       ; $ABADF4  AD 2A 00     mX
    ORA $00F3                       ; $ABADF7  0D F3 00     mX
    STA $04DB                       ; $ABADFA  8D DB 04     mX
    REP #$20                        ; $ABADFD  C2 20        mX
    LDA #$01DC                      ; $ABADFF  A9 DC 01     MX
    STA ($10)                       ; $ABAE02  92 10        MX
    RTS                             ; $ABAE04  60           MX
L_ABAE05:
    STZ $00EC                       ; $ABAE05  9C EC 00     MX
    LDA $00EE                       ; $ABAE08  AD EE 00     MX
    CLC                             ; $ABAE0B  18           MX
    ADC #$0004                      ; $ABAE0C  69 04 00     MX
    STA $00EE                       ; $ABAE0F  8D EE 00     MX
    CMP #$0100                      ; $ABAE12  C9 00 01     MX
    BCC L_ABAE20                    ; $ABAE15  90 09        MX
    INC $00EC                       ; $ABAE17  EE EC 00     MX
    CMP #$FFF0                      ; $ABAE1A  C9 F0 FF     MX
    BCS L_ABAE20                    ; $ABAE1D  B0 01        MX
    RTS                             ; $ABAE1F  60           MX
L_ABAE20:
    LDA $00F0                       ; $ABAE20  AD F0 00     MX
    CMP #$00E0                      ; $ABAE23  C9 E0 00     MX
    BCC L_ABAE2E                    ; $ABAE26  90 06        MX
    CMP #$FFF0                      ; $ABAE28  C9 F0 FF     MX
    BCS L_ABAE2E                    ; $ABAE2B  B0 01        MX
    RTS                             ; $ABAE2D  60           MX
L_ABAE2E:
    SEP #$20                        ; $ABAE2E  E2 20        MX
    LDA $00EC                       ; $ABAE30  AD EC 00     mX
    BNE L_ABAE3B                    ; $ABAE33  D0 06        mX
    LDA $ABE4D0                     ; $ABAE35  AF D0 E4 AB  mX
    BRA L_ABAE3F                    ; $ABAE39  80 04        mX
L_ABAE3B:
    LDA $ABE4D4                     ; $ABAE3B  AF D4 E4 AB  mX
L_ABAE3F:
    ORA $051D                       ; $ABAE3F  0D 1D 05     mX
    STA $051D                       ; $ABAE42  8D 1D 05     mX
    LDA $00F0                       ; $ABAE45  AD F0 00     mX
    STA $04DD                       ; $ABAE48  8D DD 04     mX
    LDA $00EE                       ; $ABAE4B  AD EE 00     mX
    STA $04DC                       ; $ABAE4E  8D DC 04     mX
    LDA $00F2                       ; $ABAE51  AD F2 00     mX
    STA $04DE                       ; $ABAE54  8D DE 04     mX
    LDA $002A                       ; $ABAE57  AD 2A 00     mX
    ORA $00F3                       ; $ABAE5A  0D F3 00     mX
    STA $04DF                       ; $ABAE5D  8D DF 04     mX
    REP #$20                        ; $ABAE60  C2 20        mX
    LDA #$01E0                      ; $ABAE62  A9 E0 01     MX
    STA ($10)                       ; $ABAE65  92 10        MX
    RTS                             ; $ABAE67  60           MX
L_ABAE68:
    STZ $00EC                       ; $ABAE68  9C EC 00     MX
    LDA $00EE                       ; $ABAE6B  AD EE 00     MX
    CLC                             ; $ABAE6E  18           MX
    ADC #$0004                      ; $ABAE6F  69 04 00     MX
    STA $00EE                       ; $ABAE72  8D EE 00     MX
    CMP #$0100                      ; $ABAE75  C9 00 01     MX
    BCC L_ABAE83                    ; $ABAE78  90 09        MX
    INC $00EC                       ; $ABAE7A  EE EC 00     MX
    CMP #$FFF0                      ; $ABAE7D  C9 F0 FF     MX
    BCS L_ABAE83                    ; $ABAE80  B0 01        MX
    RTS                             ; $ABAE82  60           MX
L_ABAE83:
    LDA $00F0                       ; $ABAE83  AD F0 00     MX
    CMP #$00E0                      ; $ABAE86  C9 E0 00     MX
    BCC L_ABAE91                    ; $ABAE89  90 06        MX
    CMP #$FFF0                      ; $ABAE8B  C9 F0 FF     MX
    BCS L_ABAE91                    ; $ABAE8E  B0 01        MX
    RTS                             ; $ABAE90  60           MX
L_ABAE91:
    SEP #$20                        ; $ABAE91  E2 20        MX
    LDA $00EC                       ; $ABAE93  AD EC 00     mX
    BNE L_ABAE9E                    ; $ABAE96  D0 06        mX
    LDA $ABE4CD                     ; $ABAE98  AF CD E4 AB  mX
    BRA L_ABAEA2                    ; $ABAE9C  80 04        mX
L_ABAE9E:
    LDA $ABE4D1                     ; $ABAE9E  AF D1 E4 AB  mX
L_ABAEA2:
    ORA $051E                       ; $ABAEA2  0D 1E 05     mX
    STA $051E                       ; $ABAEA5  8D 1E 05     mX
    LDA $00F0                       ; $ABAEA8  AD F0 00     mX
    STA $04E1                       ; $ABAEAB  8D E1 04     mX
    LDA $00EE                       ; $ABAEAE  AD EE 00     mX
    STA $04E0                       ; $ABAEB1  8D E0 04     mX
    LDA $00F2                       ; $ABAEB4  AD F2 00     mX
    STA $04E2                       ; $ABAEB7  8D E2 04     mX
    LDA $002A                       ; $ABAEBA  AD 2A 00     mX
    ORA $00F3                       ; $ABAEBD  0D F3 00     mX
    STA $04E3                       ; $ABAEC0  8D E3 04     mX
    REP #$20                        ; $ABAEC3  C2 20        mX
    LDA #$01E4                      ; $ABAEC5  A9 E4 01     MX
    STA ($10)                       ; $ABAEC8  92 10        MX
    RTS                             ; $ABAECA  60           MX
L_ABAECB:
    STZ $00EC                       ; $ABAECB  9C EC 00     MX
    LDA $00EE                       ; $ABAECE  AD EE 00     MX
    CLC                             ; $ABAED1  18           MX
    ADC #$0004                      ; $ABAED2  69 04 00     MX
    STA $00EE                       ; $ABAED5  8D EE 00     MX
    CMP #$0100                      ; $ABAED8  C9 00 01     MX
    BCC L_ABAEE6                    ; $ABAEDB  90 09        MX
    INC $00EC                       ; $ABAEDD  EE EC 00     MX
    CMP #$FFF0                      ; $ABAEE0  C9 F0 FF     MX
    BCS L_ABAEE6                    ; $ABAEE3  B0 01        MX
    RTS                             ; $ABAEE5  60           MX
L_ABAEE6:
    LDA $00F0                       ; $ABAEE6  AD F0 00     MX
    CMP #$00E0                      ; $ABAEE9  C9 E0 00     MX
    BCC L_ABAEF4                    ; $ABAEEC  90 06        MX
    CMP #$FFF0                      ; $ABAEEE  C9 F0 FF     MX
    BCS L_ABAEF4                    ; $ABAEF1  B0 01        MX
    RTS                             ; $ABAEF3  60           MX
L_ABAEF4:
    SEP #$20                        ; $ABAEF4  E2 20        MX
    LDA $00EC                       ; $ABAEF6  AD EC 00     mX
    BNE L_ABAF01                    ; $ABAEF9  D0 06        mX
    LDA $ABE4CE                     ; $ABAEFB  AF CE E4 AB  mX
    BRA L_ABAF05                    ; $ABAEFF  80 04        mX
L_ABAF01:
    LDA $ABE4D2                     ; $ABAF01  AF D2 E4 AB  mX
L_ABAF05:
    ORA $051E                       ; $ABAF05  0D 1E 05     mX
    STA $051E                       ; $ABAF08  8D 1E 05     mX
    LDA $00F0                       ; $ABAF0B  AD F0 00     mX
    STA $04E5                       ; $ABAF0E  8D E5 04     mX
    LDA $00EE                       ; $ABAF11  AD EE 00     mX
    STA $04E4                       ; $ABAF14  8D E4 04     mX
    LDA $00F2                       ; $ABAF17  AD F2 00     mX
    STA $04E6                       ; $ABAF1A  8D E6 04     mX
    LDA $002A                       ; $ABAF1D  AD 2A 00     mX
    ORA $00F3                       ; $ABAF20  0D F3 00     mX
    STA $04E7                       ; $ABAF23  8D E7 04     mX
    REP #$20                        ; $ABAF26  C2 20        mX
    LDA #$01E8                      ; $ABAF28  A9 E8 01     MX
    STA ($10)                       ; $ABAF2B  92 10        MX
    RTS                             ; $ABAF2D  60           MX
L_ABAF2E:
    STZ $00EC                       ; $ABAF2E  9C EC 00     MX
    LDA $00EE                       ; $ABAF31  AD EE 00     MX
    CLC                             ; $ABAF34  18           MX
    ADC #$0004                      ; $ABAF35  69 04 00     MX
    STA $00EE                       ; $ABAF38  8D EE 00     MX
    CMP #$0100                      ; $ABAF3B  C9 00 01     MX
    BCC L_ABAF49                    ; $ABAF3E  90 09        MX
    INC $00EC                       ; $ABAF40  EE EC 00     MX
    CMP #$FFF0                      ; $ABAF43  C9 F0 FF     MX
    BCS L_ABAF49                    ; $ABAF46  B0 01        MX
    RTS                             ; $ABAF48  60           MX
L_ABAF49:
    LDA $00F0                       ; $ABAF49  AD F0 00     MX
    CMP #$00E0                      ; $ABAF4C  C9 E0 00     MX
    BCC L_ABAF57                    ; $ABAF4F  90 06        MX
    CMP #$FFF0                      ; $ABAF51  C9 F0 FF     MX
    BCS L_ABAF57                    ; $ABAF54  B0 01        MX
    RTS                             ; $ABAF56  60           MX
L_ABAF57:
    SEP #$20                        ; $ABAF57  E2 20        MX
    LDA $00EC                       ; $ABAF59  AD EC 00     mX
    BNE L_ABAF64                    ; $ABAF5C  D0 06        mX
    LDA $ABE4CF                     ; $ABAF5E  AF CF E4 AB  mX
    BRA L_ABAF68                    ; $ABAF62  80 04        mX
L_ABAF64:
    LDA $ABE4D3                     ; $ABAF64  AF D3 E4 AB  mX
L_ABAF68:
    ORA $051E                       ; $ABAF68  0D 1E 05     mX
    STA $051E                       ; $ABAF6B  8D 1E 05     mX
    LDA $00F0                       ; $ABAF6E  AD F0 00     mX
    STA $04E9                       ; $ABAF71  8D E9 04     mX
    LDA $00EE                       ; $ABAF74  AD EE 00     mX
    STA $04E8                       ; $ABAF77  8D E8 04     mX
    LDA $00F2                       ; $ABAF7A  AD F2 00     mX
    STA $04EA                       ; $ABAF7D  8D EA 04     mX
    LDA $002A                       ; $ABAF80  AD 2A 00     mX
    ORA $00F3                       ; $ABAF83  0D F3 00     mX
    STA $04EB                       ; $ABAF86  8D EB 04     mX
    REP #$20                        ; $ABAF89  C2 20        mX
    LDA #$01EC                      ; $ABAF8B  A9 EC 01     MX
    STA ($10)                       ; $ABAF8E  92 10        MX
    RTS                             ; $ABAF90  60           MX
L_ABAF91:
    STZ $00EC                       ; $ABAF91  9C EC 00     MX
    LDA $00EE                       ; $ABAF94  AD EE 00     MX
    CLC                             ; $ABAF97  18           MX
    ADC #$0004                      ; $ABAF98  69 04 00     MX
    STA $00EE                       ; $ABAF9B  8D EE 00     MX
    CMP #$0100                      ; $ABAF9E  C9 00 01     MX
    BCC L_ABAFAC                    ; $ABAFA1  90 09        MX
    INC $00EC                       ; $ABAFA3  EE EC 00     MX
    CMP #$FFF0                      ; $ABAFA6  C9 F0 FF     MX
    BCS L_ABAFAC                    ; $ABAFA9  B0 01        MX
    RTS                             ; $ABAFAB  60           MX
L_ABAFAC:
    LDA $00F0                       ; $ABAFAC  AD F0 00     MX
    CMP #$00E0                      ; $ABAFAF  C9 E0 00     MX
    BCC L_ABAFBA                    ; $ABAFB2  90 06        MX
    CMP #$FFF0                      ; $ABAFB4  C9 F0 FF     MX
    BCS L_ABAFBA                    ; $ABAFB7  B0 01        MX
    RTS                             ; $ABAFB9  60           MX
L_ABAFBA:
    SEP #$20                        ; $ABAFBA  E2 20        MX
    LDA $00EC                       ; $ABAFBC  AD EC 00     mX
    BNE L_ABAFC7                    ; $ABAFBF  D0 06        mX
    LDA $ABE4D0                     ; $ABAFC1  AF D0 E4 AB  mX
    BRA L_ABAFCB                    ; $ABAFC5  80 04        mX
L_ABAFC7:
    LDA $ABE4D4                     ; $ABAFC7  AF D4 E4 AB  mX
L_ABAFCB:
    ORA $051E                       ; $ABAFCB  0D 1E 05     mX
    STA $051E                       ; $ABAFCE  8D 1E 05     mX
    LDA $00F0                       ; $ABAFD1  AD F0 00     mX
    STA $04ED                       ; $ABAFD4  8D ED 04     mX
    LDA $00EE                       ; $ABAFD7  AD EE 00     mX
    STA $04EC                       ; $ABAFDA  8D EC 04     mX
    LDA $00F2                       ; $ABAFDD  AD F2 00     mX
    STA $04EE                       ; $ABAFE0  8D EE 04     mX
    LDA $002A                       ; $ABAFE3  AD 2A 00     mX
    ORA $00F3                       ; $ABAFE6  0D F3 00     mX
    STA $04EF                       ; $ABAFE9  8D EF 04     mX
    REP #$20                        ; $ABAFEC  C2 20        mX
    LDA #$01F0                      ; $ABAFEE  A9 F0 01     MX
    STA ($10)                       ; $ABAFF1  92 10        MX
    RTS                             ; $ABAFF3  60           MX
L_ABAFF4:
    STZ $00EC                       ; $ABAFF4  9C EC 00     MX
    LDA $00EE                       ; $ABAFF7  AD EE 00     MX
    CLC                             ; $ABAFFA  18           MX
    ADC #$0004                      ; $ABAFFB  69 04 00     MX
    STA $00EE                       ; $ABAFFE  8D EE 00     MX
    CMP #$0100                      ; $ABB001  C9 00 01     MX
    BCC L_ABB00F                    ; $ABB004  90 09        MX
    INC $00EC                       ; $ABB006  EE EC 00     MX
    CMP #$FFF0                      ; $ABB009  C9 F0 FF     MX
    BCS L_ABB00F                    ; $ABB00C  B0 01        MX
    RTS                             ; $ABB00E  60           MX
L_ABB00F:
    LDA $00F0                       ; $ABB00F  AD F0 00     MX
    CMP #$00E0                      ; $ABB012  C9 E0 00     MX
    BCC L_ABB01D                    ; $ABB015  90 06        MX
    CMP #$FFF0                      ; $ABB017  C9 F0 FF     MX
    BCS L_ABB01D                    ; $ABB01A  B0 01        MX
    RTS                             ; $ABB01C  60           MX
L_ABB01D:
    SEP #$20                        ; $ABB01D  E2 20        MX
    LDA $00EC                       ; $ABB01F  AD EC 00     mX
    BNE L_ABB02A                    ; $ABB022  D0 06        mX
    LDA $ABE4CD                     ; $ABB024  AF CD E4 AB  mX
    BRA L_ABB02E                    ; $ABB028  80 04        mX
L_ABB02A:
    LDA $ABE4D1                     ; $ABB02A  AF D1 E4 AB  mX
L_ABB02E:
    ORA $051F                       ; $ABB02E  0D 1F 05     mX
    STA $051F                       ; $ABB031  8D 1F 05     mX
    LDA $00F0                       ; $ABB034  AD F0 00     mX
    STA $04F1                       ; $ABB037  8D F1 04     mX
    LDA $00EE                       ; $ABB03A  AD EE 00     mX
    STA $04F0                       ; $ABB03D  8D F0 04     mX
    LDA $00F2                       ; $ABB040  AD F2 00     mX
    STA $04F2                       ; $ABB043  8D F2 04     mX
    LDA $002A                       ; $ABB046  AD 2A 00     mX
    ORA $00F3                       ; $ABB049  0D F3 00     mX
    STA $04F3                       ; $ABB04C  8D F3 04     mX
    REP #$20                        ; $ABB04F  C2 20        mX
    LDA #$01F4                      ; $ABB051  A9 F4 01     MX
    STA ($10)                       ; $ABB054  92 10        MX
    RTS                             ; $ABB056  60           MX
L_ABB057:
    STZ $00EC                       ; $ABB057  9C EC 00     MX
    LDA $00EE                       ; $ABB05A  AD EE 00     MX
    CLC                             ; $ABB05D  18           MX
    ADC #$0004                      ; $ABB05E  69 04 00     MX
    STA $00EE                       ; $ABB061  8D EE 00     MX
    CMP #$0100                      ; $ABB064  C9 00 01     MX
    BCC L_ABB072                    ; $ABB067  90 09        MX
    INC $00EC                       ; $ABB069  EE EC 00     MX
    CMP #$FFF0                      ; $ABB06C  C9 F0 FF     MX
    BCS L_ABB072                    ; $ABB06F  B0 01        MX
    RTS                             ; $ABB071  60           MX
L_ABB072:
    LDA $00F0                       ; $ABB072  AD F0 00     MX
    CMP #$00E0                      ; $ABB075  C9 E0 00     MX
    BCC L_ABB080                    ; $ABB078  90 06        MX
    CMP #$FFF0                      ; $ABB07A  C9 F0 FF     MX
    BCS L_ABB080                    ; $ABB07D  B0 01        MX
    RTS                             ; $ABB07F  60           MX
L_ABB080:
    SEP #$20                        ; $ABB080  E2 20        MX
    LDA $00EC                       ; $ABB082  AD EC 00     mX
    BNE L_ABB08D                    ; $ABB085  D0 06        mX
    LDA $ABE4CE                     ; $ABB087  AF CE E4 AB  mX
    BRA L_ABB091                    ; $ABB08B  80 04        mX
L_ABB08D:
    LDA $ABE4D2                     ; $ABB08D  AF D2 E4 AB  mX
L_ABB091:
    ORA $051F                       ; $ABB091  0D 1F 05     mX
    STA $051F                       ; $ABB094  8D 1F 05     mX
    LDA $00F0                       ; $ABB097  AD F0 00     mX
    STA $04F5                       ; $ABB09A  8D F5 04     mX
    LDA $00EE                       ; $ABB09D  AD EE 00     mX
    STA $04F4                       ; $ABB0A0  8D F4 04     mX
    LDA $00F2                       ; $ABB0A3  AD F2 00     mX
    STA $04F6                       ; $ABB0A6  8D F6 04     mX
    LDA $002A                       ; $ABB0A9  AD 2A 00     mX
    ORA $00F3                       ; $ABB0AC  0D F3 00     mX
    STA $04F7                       ; $ABB0AF  8D F7 04     mX
    REP #$20                        ; $ABB0B2  C2 20        mX
    LDA #$01F8                      ; $ABB0B4  A9 F8 01     MX
    STA ($10)                       ; $ABB0B7  92 10        MX
    RTS                             ; $ABB0B9  60           MX
L_ABB0BA:
    STZ $00EC                       ; $ABB0BA  9C EC 00     MX
    LDA $00EE                       ; $ABB0BD  AD EE 00     MX
    CLC                             ; $ABB0C0  18           MX
    ADC #$0004                      ; $ABB0C1  69 04 00     MX
    STA $00EE                       ; $ABB0C4  8D EE 00     MX
    CMP #$0100                      ; $ABB0C7  C9 00 01     MX
    BCC L_ABB0D5                    ; $ABB0CA  90 09        MX
    INC $00EC                       ; $ABB0CC  EE EC 00     MX
    CMP #$FFF0                      ; $ABB0CF  C9 F0 FF     MX
    BCS L_ABB0D5                    ; $ABB0D2  B0 01        MX
    RTS                             ; $ABB0D4  60           MX
L_ABB0D5:
    LDA $00F0                       ; $ABB0D5  AD F0 00     MX
    CMP #$00E0                      ; $ABB0D8  C9 E0 00     MX
    BCC L_ABB0E3                    ; $ABB0DB  90 06        MX
    CMP #$FFF0                      ; $ABB0DD  C9 F0 FF     MX
    BCS L_ABB0E3                    ; $ABB0E0  B0 01        MX
    RTS                             ; $ABB0E2  60           MX
L_ABB0E3:
    SEP #$20                        ; $ABB0E3  E2 20        MX
    LDA $00EC                       ; $ABB0E5  AD EC 00     mX
    BNE L_ABB0F0                    ; $ABB0E8  D0 06        mX
    LDA $ABE4CF                     ; $ABB0EA  AF CF E4 AB  mX
    BRA L_ABB0F4                    ; $ABB0EE  80 04        mX
L_ABB0F0:
    LDA $ABE4D3                     ; $ABB0F0  AF D3 E4 AB  mX
L_ABB0F4:
    ORA $051F                       ; $ABB0F4  0D 1F 05     mX
    STA $051F                       ; $ABB0F7  8D 1F 05     mX
    LDA $00F0                       ; $ABB0FA  AD F0 00     mX
    STA $04F9                       ; $ABB0FD  8D F9 04     mX
    LDA $00EE                       ; $ABB100  AD EE 00     mX
    STA $04F8                       ; $ABB103  8D F8 04     mX
    LDA $00F2                       ; $ABB106  AD F2 00     mX
    STA $04FA                       ; $ABB109  8D FA 04     mX
    LDA $002A                       ; $ABB10C  AD 2A 00     mX
    ORA $00F3                       ; $ABB10F  0D F3 00     mX
    STA $04FB                       ; $ABB112  8D FB 04     mX
    REP #$20                        ; $ABB115  C2 20        mX
    LDA #$01FC                      ; $ABB117  A9 FC 01     MX
    STA ($10)                       ; $ABB11A  92 10        MX
    RTS                             ; $ABB11C  60           MX
L_ABB11D:
    STZ $00EC                       ; $ABB11D  9C EC 00     MX
    LDA $00EE                       ; $ABB120  AD EE 00     MX
    CLC                             ; $ABB123  18           MX
    ADC #$0004                      ; $ABB124  69 04 00     MX
    STA $00EE                       ; $ABB127  8D EE 00     MX
    CMP #$0100                      ; $ABB12A  C9 00 01     MX
    BCC L_ABB138                    ; $ABB12D  90 09        MX
    INC $00EC                       ; $ABB12F  EE EC 00     MX
    CMP #$FFF0                      ; $ABB132  C9 F0 FF     MX
    BCS L_ABB138                    ; $ABB135  B0 01        MX
    RTS                             ; $ABB137  60           MX
L_ABB138:
    LDA $00F0                       ; $ABB138  AD F0 00     MX
    CMP #$00E0                      ; $ABB13B  C9 E0 00     MX
    BCC L_ABB146                    ; $ABB13E  90 06        MX
    CMP #$FFF0                      ; $ABB140  C9 F0 FF     MX
    BCS L_ABB146                    ; $ABB143  B0 01        MX
    RTS                             ; $ABB145  60           MX
L_ABB146:
    SEP #$20                        ; $ABB146  E2 20        MX
    LDA $00EC                       ; $ABB148  AD EC 00     mX
    BNE L_ABB153                    ; $ABB14B  D0 06        mX
    LDA $ABE4D0                     ; $ABB14D  AF D0 E4 AB  mX
    BRA L_ABB157                    ; $ABB151  80 04        mX
L_ABB153:
    LDA $ABE4D4                     ; $ABB153  AF D4 E4 AB  mX
L_ABB157:
    ORA $051F                       ; $ABB157  0D 1F 05     mX
    STA $051F                       ; $ABB15A  8D 1F 05     mX
    LDA $00F0                       ; $ABB15D  AD F0 00     mX
    STA $04FD                       ; $ABB160  8D FD 04     mX
    LDA $00EE                       ; $ABB163  AD EE 00     mX
    STA $04FC                       ; $ABB166  8D FC 04     mX
    LDA $00F2                       ; $ABB169  AD F2 00     mX
    STA $04FE                       ; $ABB16C  8D FE 04     mX
    LDA $002A                       ; $ABB16F  AD 2A 00     mX
    ORA $00F3                       ; $ABB172  0D F3 00     mX
    STA $04FF                       ; $ABB175  8D FF 04     mX
    REP #$20                        ; $ABB178  C2 20        mX
    LDA #$0200                      ; $ABB17A  A9 00 02     MX
    STA ($10)                       ; $ABB17D  92 10        MX
    RTS                             ; $ABB17F  60           MX
L_ABB180:
    STZ $00EC                       ; $ABB180  9C EC 00     MX
L_ABB183:
    LDA $00EE                       ; $ABB183  AD EE 00     MX
L_ABB186:
    CLC                             ; $ABB186  18           MX
L_ABB187:
    ADC #$0004                      ; $ABB187  69 04 00     MX
L_ABB18A:
    STA $00EE                       ; $ABB18A  8D EE 00     MX
L_ABB18D:
    CMP #$0100                      ; $ABB18D  C9 00 01     MX
L_ABB190:
    BCC L_ABB19B                    ; $ABB190  90 09        MX
L_ABB192:
    INC $00EC                       ; $ABB192  EE EC 00     MX
L_ABB195:
    CMP #$FFF8                      ; $ABB195  C9 F8 FF     MX
L_ABB198:
    BCS L_ABB19B                    ; $ABB198  B0 01        MX
L_ABB19A:
    RTS                             ; $ABB19A  60           MX
L_ABB19B:
    LDA $00F0                       ; $ABB19B  AD F0 00     MX
L_ABB19E:
    CMP #$00E0                      ; $ABB19E  C9 E0 00     MX
L_ABB1A1:
    BCC L_ABB1A9                    ; $ABB1A1  90 06        MX
L_ABB1A3:
    CMP #$FFF0                      ; $ABB1A3  C9 F0 FF     MX
L_ABB1A6:
    BCS L_ABB1A9                    ; $ABB1A6  B0 01        MX
L_ABB1A8:
    RTS                             ; $ABB1A8  60           MX
L_ABB1A9:
    SEP #$20                        ; $ABB1A9  E2 20        MX
L_ABB1AB:
    LDA $00EC                       ; $ABB1AB  AD EC 00     mX
L_ABB1AE:
    BEQ L_ABB1BA                    ; $ABB1AE  F0 0A        mX
    LDA $ABE4D5                     ; $ABB1B0  AF D5 E4 AB  mX
    ORA $0500                       ; $ABB1B4  0D 00 05     mX
    STA $0500                       ; $ABB1B7  8D 00 05     mX
L_ABB1BA:
    LDA $00F0                       ; $ABB1BA  AD F0 00     mX
L_ABB1BD:
    STA $0301                       ; $ABB1BD  8D 01 03     mX
L_ABB1C0:
    LDA $00EE                       ; $ABB1C0  AD EE 00     mX
L_ABB1C3:
    STA $0300                       ; $ABB1C3  8D 00 03     mX
L_ABB1C6:
    LDA $00F2                       ; $ABB1C6  AD F2 00     mX
L_ABB1C9:
    STA $0302                       ; $ABB1C9  8D 02 03     mX
L_ABB1CC:
    LDA $002A                       ; $ABB1CC  AD 2A 00     mX
L_ABB1CF:
    ORA $00F3                       ; $ABB1CF  0D F3 00     mX
L_ABB1D2:
    STA $0303                       ; $ABB1D2  8D 03 03     mX
L_ABB1D5:
    REP #$20                        ; $ABB1D5  C2 20        mX
L_ABB1D7:
    LDA #$0004                      ; $ABB1D7  A9 04 00     MX
L_ABB1DA:
    STA ($10)                       ; $ABB1DA  92 10        MX
L_ABB1DC:
    RTS                             ; $ABB1DC  60           MX
L_ABB1DD:
    STZ $00EC                       ; $ABB1DD  9C EC 00     MX
L_ABB1E0:
    LDA $00EE                       ; $ABB1E0  AD EE 00     MX
L_ABB1E3:
    CLC                             ; $ABB1E3  18           MX
L_ABB1E4:
    ADC #$0004                      ; $ABB1E4  69 04 00     MX
L_ABB1E7:
    STA $00EE                       ; $ABB1E7  8D EE 00     MX
L_ABB1EA:
    CMP #$0100                      ; $ABB1EA  C9 00 01     MX
L_ABB1ED:
    BCC L_ABB1F8                    ; $ABB1ED  90 09        MX
L_ABB1EF:
    INC $00EC                       ; $ABB1EF  EE EC 00     MX
L_ABB1F2:
    CMP #$FFF8                      ; $ABB1F2  C9 F8 FF     MX
L_ABB1F5:
    BCS L_ABB1F8                    ; $ABB1F5  B0 01        MX
L_ABB1F7:
    RTS                             ; $ABB1F7  60           MX
L_ABB1F8:
    LDA $00F0                       ; $ABB1F8  AD F0 00     MX
L_ABB1FB:
    CMP #$00E0                      ; $ABB1FB  C9 E0 00     MX
L_ABB1FE:
    BCC L_ABB206                    ; $ABB1FE  90 06        MX
L_ABB200:
    CMP #$FFF0                      ; $ABB200  C9 F0 FF     MX
L_ABB203:
    BCS L_ABB206                    ; $ABB203  B0 01        MX
L_ABB205:
    RTS                             ; $ABB205  60           MX
L_ABB206:
    SEP #$20                        ; $ABB206  E2 20        MX
L_ABB208:
    LDA $00EC                       ; $ABB208  AD EC 00     mX
L_ABB20B:
    BEQ L_ABB217                    ; $ABB20B  F0 0A        mX
    LDA $ABE4D6                     ; $ABB20D  AF D6 E4 AB  mX
    ORA $0500                       ; $ABB211  0D 00 05     mX
    STA $0500                       ; $ABB214  8D 00 05     mX
L_ABB217:
    LDA $00F0                       ; $ABB217  AD F0 00     mX
L_ABB21A:
    STA $0305                       ; $ABB21A  8D 05 03     mX
L_ABB21D:
    LDA $00EE                       ; $ABB21D  AD EE 00     mX
L_ABB220:
    STA $0304                       ; $ABB220  8D 04 03     mX
L_ABB223:
    LDA $00F2                       ; $ABB223  AD F2 00     mX
L_ABB226:
    STA $0306                       ; $ABB226  8D 06 03     mX
L_ABB229:
    LDA $002A                       ; $ABB229  AD 2A 00     mX
L_ABB22C:
    ORA $00F3                       ; $ABB22C  0D F3 00     mX
L_ABB22F:
    STA $0307                       ; $ABB22F  8D 07 03     mX
L_ABB232:
    REP #$20                        ; $ABB232  C2 20        mX
L_ABB234:
    LDA #$0008                      ; $ABB234  A9 08 00     MX
L_ABB237:
    STA ($10)                       ; $ABB237  92 10        MX
L_ABB239:
    RTS                             ; $ABB239  60           MX
L_ABB23A:
    STZ $00EC                       ; $ABB23A  9C EC 00     MX
L_ABB23D:
    LDA $00EE                       ; $ABB23D  AD EE 00     MX
L_ABB240:
    CLC                             ; $ABB240  18           MX
L_ABB241:
    ADC #$0004                      ; $ABB241  69 04 00     MX
L_ABB244:
    STA $00EE                       ; $ABB244  8D EE 00     MX
L_ABB247:
    CMP #$0100                      ; $ABB247  C9 00 01     MX
L_ABB24A:
    BCC L_ABB255                    ; $ABB24A  90 09        MX
    INC $00EC                       ; $ABB24C  EE EC 00     MX
    CMP #$FFF8                      ; $ABB24F  C9 F8 FF     MX
    BCS L_ABB255                    ; $ABB252  B0 01        MX
    RTS                             ; $ABB254  60           MX
L_ABB255:
    LDA $00F0                       ; $ABB255  AD F0 00     MX
L_ABB258:
    CMP #$00E0                      ; $ABB258  C9 E0 00     MX
L_ABB25B:
    BCC L_ABB263                    ; $ABB25B  90 06        MX
L_ABB25D:
    CMP #$FFF0                      ; $ABB25D  C9 F0 FF     MX
L_ABB260:
    BCS L_ABB263                    ; $ABB260  B0 01        MX
L_ABB262:
    RTS                             ; $ABB262  60           MX
L_ABB263:
    SEP #$20                        ; $ABB263  E2 20        MX
L_ABB265:
    LDA $00EC                       ; $ABB265  AD EC 00     mX
L_ABB268:
    BEQ L_ABB274                    ; $ABB268  F0 0A        mX
    LDA $ABE4D7                     ; $ABB26A  AF D7 E4 AB  mX
    ORA $0500                       ; $ABB26E  0D 00 05     mX
    STA $0500                       ; $ABB271  8D 00 05     mX
L_ABB274:
    LDA $00F0                       ; $ABB274  AD F0 00     mX
L_ABB277:
    STA $0309                       ; $ABB277  8D 09 03     mX
L_ABB27A:
    LDA $00EE                       ; $ABB27A  AD EE 00     mX
L_ABB27D:
    STA $0308                       ; $ABB27D  8D 08 03     mX
L_ABB280:
    LDA $00F2                       ; $ABB280  AD F2 00     mX
L_ABB283:
    STA $030A                       ; $ABB283  8D 0A 03     mX
L_ABB286:
    LDA $002A                       ; $ABB286  AD 2A 00     mX
L_ABB289:
    ORA $00F3                       ; $ABB289  0D F3 00     mX
L_ABB28C:
    STA $030B                       ; $ABB28C  8D 0B 03     mX
L_ABB28F:
    REP #$20                        ; $ABB28F  C2 20        mX
L_ABB291:
    LDA #$000C                      ; $ABB291  A9 0C 00     MX
L_ABB294:
    STA ($10)                       ; $ABB294  92 10        MX
L_ABB296:
    RTS                             ; $ABB296  60           MX
L_ABB297:
    STZ $00EC                       ; $ABB297  9C EC 00     MX
L_ABB29A:
    LDA $00EE                       ; $ABB29A  AD EE 00     MX
L_ABB29D:
    CLC                             ; $ABB29D  18           MX
L_ABB29E:
    ADC #$0004                      ; $ABB29E  69 04 00     MX
L_ABB2A1:
    STA $00EE                       ; $ABB2A1  8D EE 00     MX
L_ABB2A4:
    CMP #$0100                      ; $ABB2A4  C9 00 01     MX
L_ABB2A7:
    BCC L_ABB2B2                    ; $ABB2A7  90 09        MX
L_ABB2A9:
    INC $00EC                       ; $ABB2A9  EE EC 00     MX
L_ABB2AC:
    CMP #$FFF8                      ; $ABB2AC  C9 F8 FF     MX
L_ABB2AF:
    BCS L_ABB2B2                    ; $ABB2AF  B0 01        MX
L_ABB2B1:
    RTS                             ; $ABB2B1  60           MX
L_ABB2B2:
    LDA $00F0                       ; $ABB2B2  AD F0 00     MX
L_ABB2B5:
    CMP #$00E0                      ; $ABB2B5  C9 E0 00     MX
L_ABB2B8:
    BCC L_ABB2C0                    ; $ABB2B8  90 06        MX
L_ABB2BA:
    CMP #$FFF0                      ; $ABB2BA  C9 F0 FF     MX
L_ABB2BD:
    BCS L_ABB2C0                    ; $ABB2BD  B0 01        MX
    RTS                             ; $ABB2BF  60           MX
L_ABB2C0:
    SEP #$20                        ; $ABB2C0  E2 20        MX
L_ABB2C2:
    LDA $00EC                       ; $ABB2C2  AD EC 00     mX
L_ABB2C5:
    BEQ L_ABB2D1                    ; $ABB2C5  F0 0A        mX
    LDA $ABE4D8                     ; $ABB2C7  AF D8 E4 AB  mX
    ORA $0500                       ; $ABB2CB  0D 00 05     mX
    STA $0500                       ; $ABB2CE  8D 00 05     mX
L_ABB2D1:
    LDA $00F0                       ; $ABB2D1  AD F0 00     mX
L_ABB2D4:
    STA $030D                       ; $ABB2D4  8D 0D 03     mX
L_ABB2D7:
    LDA $00EE                       ; $ABB2D7  AD EE 00     mX
L_ABB2DA:
    STA $030C                       ; $ABB2DA  8D 0C 03     mX
L_ABB2DD:
    LDA $00F2                       ; $ABB2DD  AD F2 00     mX
L_ABB2E0:
    STA $030E                       ; $ABB2E0  8D 0E 03     mX
L_ABB2E3:
    LDA $002A                       ; $ABB2E3  AD 2A 00     mX
L_ABB2E6:
    ORA $00F3                       ; $ABB2E6  0D F3 00     mX
L_ABB2E9:
    STA $030F                       ; $ABB2E9  8D 0F 03     mX
L_ABB2EC:
    REP #$20                        ; $ABB2EC  C2 20        mX
L_ABB2EE:
    LDA #$0010                      ; $ABB2EE  A9 10 00     MX
L_ABB2F1:
    STA ($10)                       ; $ABB2F1  92 10        MX
L_ABB2F3:
    RTS                             ; $ABB2F3  60           MX
L_ABB2F4:
    STZ $00EC                       ; $ABB2F4  9C EC 00     MX
L_ABB2F7:
    LDA $00EE                       ; $ABB2F7  AD EE 00     MX
L_ABB2FA:
    CLC                             ; $ABB2FA  18           MX
L_ABB2FB:
    ADC #$0004                      ; $ABB2FB  69 04 00     MX
L_ABB2FE:
    STA $00EE                       ; $ABB2FE  8D EE 00     MX
L_ABB301:
    CMP #$0100                      ; $ABB301  C9 00 01     MX
L_ABB304:
    BCC L_ABB30F                    ; $ABB304  90 09        MX
    INC $00EC                       ; $ABB306  EE EC 00     MX
    CMP #$FFF8                      ; $ABB309  C9 F8 FF     MX
    BCS L_ABB30F                    ; $ABB30C  B0 01        MX
    RTS                             ; $ABB30E  60           MX
L_ABB30F:
    LDA $00F0                       ; $ABB30F  AD F0 00     MX
L_ABB312:
    CMP #$00E0                      ; $ABB312  C9 E0 00     MX
L_ABB315:
    BCC L_ABB31D                    ; $ABB315  90 06        MX
L_ABB317:
    CMP #$FFF0                      ; $ABB317  C9 F0 FF     MX
L_ABB31A:
    BCS L_ABB31D                    ; $ABB31A  B0 01        MX
    RTS                             ; $ABB31C  60           MX
L_ABB31D:
    SEP #$20                        ; $ABB31D  E2 20        MX
L_ABB31F:
    LDA $00EC                       ; $ABB31F  AD EC 00     mX
L_ABB322:
    BEQ L_ABB32E                    ; $ABB322  F0 0A        mX
    LDA $ABE4D5                     ; $ABB324  AF D5 E4 AB  mX
    ORA $0501                       ; $ABB328  0D 01 05     mX
    STA $0501                       ; $ABB32B  8D 01 05     mX
L_ABB32E:
    LDA $00F0                       ; $ABB32E  AD F0 00     mX
L_ABB331:
    STA $0311                       ; $ABB331  8D 11 03     mX
L_ABB334:
    LDA $00EE                       ; $ABB334  AD EE 00     mX
L_ABB337:
    STA $0310                       ; $ABB337  8D 10 03     mX
L_ABB33A:
    LDA $00F2                       ; $ABB33A  AD F2 00     mX
L_ABB33D:
    STA $0312                       ; $ABB33D  8D 12 03     mX
L_ABB340:
    LDA $002A                       ; $ABB340  AD 2A 00     mX
L_ABB343:
    ORA $00F3                       ; $ABB343  0D F3 00     mX
L_ABB346:
    STA $0313                       ; $ABB346  8D 13 03     mX
L_ABB349:
    REP #$20                        ; $ABB349  C2 20        mX
L_ABB34B:
    LDA #$0014                      ; $ABB34B  A9 14 00     MX
L_ABB34E:
    STA ($10)                       ; $ABB34E  92 10        MX
L_ABB350:
    RTS                             ; $ABB350  60           MX
L_ABB351:
    STZ $00EC                       ; $ABB351  9C EC 00     MX
    LDA $00EE                       ; $ABB354  AD EE 00     MX
    CLC                             ; $ABB357  18           MX
    ADC #$0004                      ; $ABB358  69 04 00     MX
    STA $00EE                       ; $ABB35B  8D EE 00     MX
    CMP #$0100                      ; $ABB35E  C9 00 01     MX
    BCC L_ABB36C                    ; $ABB361  90 09        MX
    INC $00EC                       ; $ABB363  EE EC 00     MX
    CMP #$FFF8                      ; $ABB366  C9 F8 FF     MX
    BCS L_ABB36C                    ; $ABB369  B0 01        MX
    RTS                             ; $ABB36B  60           MX
L_ABB36C:
    LDA $00F0                       ; $ABB36C  AD F0 00     MX
    CMP #$00E0                      ; $ABB36F  C9 E0 00     MX
    BCC L_ABB37A                    ; $ABB372  90 06        MX
    CMP #$FFF0                      ; $ABB374  C9 F0 FF     MX
    BCS L_ABB37A                    ; $ABB377  B0 01        MX
    RTS                             ; $ABB379  60           MX
L_ABB37A:
    SEP #$20                        ; $ABB37A  E2 20        MX
    LDA $00EC                       ; $ABB37C  AD EC 00     mX
    BEQ L_ABB38B                    ; $ABB37F  F0 0A        mX
    LDA $ABE4D6                     ; $ABB381  AF D6 E4 AB  mX
    ORA $0501                       ; $ABB385  0D 01 05     mX
    STA $0501                       ; $ABB388  8D 01 05     mX
L_ABB38B:
    LDA $00F0                       ; $ABB38B  AD F0 00     mX
    STA $0315                       ; $ABB38E  8D 15 03     mX
    LDA $00EE                       ; $ABB391  AD EE 00     mX
    STA $0314                       ; $ABB394  8D 14 03     mX
    LDA $00F2                       ; $ABB397  AD F2 00     mX
    STA $0316                       ; $ABB39A  8D 16 03     mX
    LDA $002A                       ; $ABB39D  AD 2A 00     mX
    ORA $00F3                       ; $ABB3A0  0D F3 00     mX
    STA $0317                       ; $ABB3A3  8D 17 03     mX
    REP #$20                        ; $ABB3A6  C2 20        mX
    LDA #$0018                      ; $ABB3A8  A9 18 00     MX
    STA ($10)                       ; $ABB3AB  92 10        MX
    RTS                             ; $ABB3AD  60           MX
L_ABB3AE:
    STZ $00EC                       ; $ABB3AE  9C EC 00     MX
    LDA $00EE                       ; $ABB3B1  AD EE 00     MX
    CLC                             ; $ABB3B4  18           MX
    ADC #$0004                      ; $ABB3B5  69 04 00     MX
    STA $00EE                       ; $ABB3B8  8D EE 00     MX
    CMP #$0100                      ; $ABB3BB  C9 00 01     MX
    BCC L_ABB3C9                    ; $ABB3BE  90 09        MX
    INC $00EC                       ; $ABB3C0  EE EC 00     MX
    CMP #$FFF8                      ; $ABB3C3  C9 F8 FF     MX
    BCS L_ABB3C9                    ; $ABB3C6  B0 01        MX
    RTS                             ; $ABB3C8  60           MX
L_ABB3C9:
    LDA $00F0                       ; $ABB3C9  AD F0 00     MX
    CMP #$00E0                      ; $ABB3CC  C9 E0 00     MX
    BCC L_ABB3D7                    ; $ABB3CF  90 06        MX
    CMP #$FFF0                      ; $ABB3D1  C9 F0 FF     MX
    BCS L_ABB3D7                    ; $ABB3D4  B0 01        MX
    RTS                             ; $ABB3D6  60           MX
L_ABB3D7:
    SEP #$20                        ; $ABB3D7  E2 20        MX
    LDA $00EC                       ; $ABB3D9  AD EC 00     mX
    BEQ L_ABB3E8                    ; $ABB3DC  F0 0A        mX
    LDA $ABE4D7                     ; $ABB3DE  AF D7 E4 AB  mX
    ORA $0501                       ; $ABB3E2  0D 01 05     mX
    STA $0501                       ; $ABB3E5  8D 01 05     mX
L_ABB3E8:
    LDA $00F0                       ; $ABB3E8  AD F0 00     mX
    STA $0319                       ; $ABB3EB  8D 19 03     mX
    LDA $00EE                       ; $ABB3EE  AD EE 00     mX
    STA $0318                       ; $ABB3F1  8D 18 03     mX
    LDA $00F2                       ; $ABB3F4  AD F2 00     mX
    STA $031A                       ; $ABB3F7  8D 1A 03     mX
    LDA $002A                       ; $ABB3FA  AD 2A 00     mX
    ORA $00F3                       ; $ABB3FD  0D F3 00     mX
    STA $031B                       ; $ABB400  8D 1B 03     mX
    REP #$20                        ; $ABB403  C2 20        mX
    LDA #$001C                      ; $ABB405  A9 1C 00     MX
    STA ($10)                       ; $ABB408  92 10        MX
    RTS                             ; $ABB40A  60           MX
L_ABB40B:
    STZ $00EC                       ; $ABB40B  9C EC 00     MX
    LDA $00EE                       ; $ABB40E  AD EE 00     MX
    CLC                             ; $ABB411  18           MX
    ADC #$0004                      ; $ABB412  69 04 00     MX
    STA $00EE                       ; $ABB415  8D EE 00     MX
    CMP #$0100                      ; $ABB418  C9 00 01     MX
    BCC L_ABB426                    ; $ABB41B  90 09        MX
    INC $00EC                       ; $ABB41D  EE EC 00     MX
    CMP #$FFF8                      ; $ABB420  C9 F8 FF     MX
    BCS L_ABB426                    ; $ABB423  B0 01        MX
    RTS                             ; $ABB425  60           MX
L_ABB426:
    LDA $00F0                       ; $ABB426  AD F0 00     MX
    CMP #$00E0                      ; $ABB429  C9 E0 00     MX
    BCC L_ABB434                    ; $ABB42C  90 06        MX
    CMP #$FFF0                      ; $ABB42E  C9 F0 FF     MX
    BCS L_ABB434                    ; $ABB431  B0 01        MX
    RTS                             ; $ABB433  60           MX
L_ABB434:
    SEP #$20                        ; $ABB434  E2 20        MX
    LDA $00EC                       ; $ABB436  AD EC 00     mX
    BEQ L_ABB445                    ; $ABB439  F0 0A        mX
    LDA $ABE4D8                     ; $ABB43B  AF D8 E4 AB  mX
    ORA $0501                       ; $ABB43F  0D 01 05     mX
    STA $0501                       ; $ABB442  8D 01 05     mX
L_ABB445:
    LDA $00F0                       ; $ABB445  AD F0 00     mX
    STA $031D                       ; $ABB448  8D 1D 03     mX
    LDA $00EE                       ; $ABB44B  AD EE 00     mX
    STA $031C                       ; $ABB44E  8D 1C 03     mX
    LDA $00F2                       ; $ABB451  AD F2 00     mX
    STA $031E                       ; $ABB454  8D 1E 03     mX
    LDA $002A                       ; $ABB457  AD 2A 00     mX
    ORA $00F3                       ; $ABB45A  0D F3 00     mX
    STA $031F                       ; $ABB45D  8D 1F 03     mX
    REP #$20                        ; $ABB460  C2 20        mX
    LDA #$0020                      ; $ABB462  A9 20 00     MX
    STA ($10)                       ; $ABB465  92 10        MX
    RTS                             ; $ABB467  60           MX
L_ABB468:
    STZ $00EC                       ; $ABB468  9C EC 00     MX
    LDA $00EE                       ; $ABB46B  AD EE 00     MX
    CLC                             ; $ABB46E  18           MX
    ADC #$0004                      ; $ABB46F  69 04 00     MX
    STA $00EE                       ; $ABB472  8D EE 00     MX
    CMP #$0100                      ; $ABB475  C9 00 01     MX
    BCC L_ABB483                    ; $ABB478  90 09        MX
    INC $00EC                       ; $ABB47A  EE EC 00     MX
    CMP #$FFF8                      ; $ABB47D  C9 F8 FF     MX
    BCS L_ABB483                    ; $ABB480  B0 01        MX
    RTS                             ; $ABB482  60           MX
L_ABB483:
    LDA $00F0                       ; $ABB483  AD F0 00     MX
    CMP #$00E0                      ; $ABB486  C9 E0 00     MX
    BCC L_ABB491                    ; $ABB489  90 06        MX
    CMP #$FFF0                      ; $ABB48B  C9 F0 FF     MX
    BCS L_ABB491                    ; $ABB48E  B0 01        MX
    RTS                             ; $ABB490  60           MX
L_ABB491:
    SEP #$20                        ; $ABB491  E2 20        MX
    LDA $00EC                       ; $ABB493  AD EC 00     mX
    BEQ L_ABB4A2                    ; $ABB496  F0 0A        mX
    LDA $ABE4D5                     ; $ABB498  AF D5 E4 AB  mX
    ORA $0502                       ; $ABB49C  0D 02 05     mX
    STA $0502                       ; $ABB49F  8D 02 05     mX
L_ABB4A2:
    LDA $00F0                       ; $ABB4A2  AD F0 00     mX
    STA $0321                       ; $ABB4A5  8D 21 03     mX
    LDA $00EE                       ; $ABB4A8  AD EE 00     mX
    STA $0320                       ; $ABB4AB  8D 20 03     mX
    LDA $00F2                       ; $ABB4AE  AD F2 00     mX
    STA $0322                       ; $ABB4B1  8D 22 03     mX
    LDA $002A                       ; $ABB4B4  AD 2A 00     mX
    ORA $00F3                       ; $ABB4B7  0D F3 00     mX
    STA $0323                       ; $ABB4BA  8D 23 03     mX
    REP #$20                        ; $ABB4BD  C2 20        mX
    LDA #$0024                      ; $ABB4BF  A9 24 00     MX
    STA ($10)                       ; $ABB4C2  92 10        MX
    RTS                             ; $ABB4C4  60           MX
L_ABB4C5:
    STZ $00EC                       ; $ABB4C5  9C EC 00     MX
    LDA $00EE                       ; $ABB4C8  AD EE 00     MX
    CLC                             ; $ABB4CB  18           MX
    ADC #$0004                      ; $ABB4CC  69 04 00     MX
    STA $00EE                       ; $ABB4CF  8D EE 00     MX
    CMP #$0100                      ; $ABB4D2  C9 00 01     MX
    BCC L_ABB4E0                    ; $ABB4D5  90 09        MX
    INC $00EC                       ; $ABB4D7  EE EC 00     MX
    CMP #$FFF8                      ; $ABB4DA  C9 F8 FF     MX
    BCS L_ABB4E0                    ; $ABB4DD  B0 01        MX
    RTS                             ; $ABB4DF  60           MX
L_ABB4E0:
    LDA $00F0                       ; $ABB4E0  AD F0 00     MX
    CMP #$00E0                      ; $ABB4E3  C9 E0 00     MX
    BCC L_ABB4EE                    ; $ABB4E6  90 06        MX
    CMP #$FFF0                      ; $ABB4E8  C9 F0 FF     MX
    BCS L_ABB4EE                    ; $ABB4EB  B0 01        MX
    RTS                             ; $ABB4ED  60           MX
L_ABB4EE:
    SEP #$20                        ; $ABB4EE  E2 20        MX
    LDA $00EC                       ; $ABB4F0  AD EC 00     mX
    BEQ L_ABB4FF                    ; $ABB4F3  F0 0A        mX
    LDA $ABE4D6                     ; $ABB4F5  AF D6 E4 AB  mX
    ORA $0502                       ; $ABB4F9  0D 02 05     mX
    STA $0502                       ; $ABB4FC  8D 02 05     mX
L_ABB4FF:
    LDA $00F0                       ; $ABB4FF  AD F0 00     mX
    STA $0325                       ; $ABB502  8D 25 03     mX
    LDA $00EE                       ; $ABB505  AD EE 00     mX
    STA $0324                       ; $ABB508  8D 24 03     mX
    LDA $00F2                       ; $ABB50B  AD F2 00     mX
    STA $0326                       ; $ABB50E  8D 26 03     mX
    LDA $002A                       ; $ABB511  AD 2A 00     mX
    ORA $00F3                       ; $ABB514  0D F3 00     mX
    STA $0327                       ; $ABB517  8D 27 03     mX
    REP #$20                        ; $ABB51A  C2 20        mX
    LDA #$0028                      ; $ABB51C  A9 28 00     MX
    STA ($10)                       ; $ABB51F  92 10        MX
    RTS                             ; $ABB521  60           MX
L_ABB522:
    STZ $00EC                       ; $ABB522  9C EC 00     MX
    LDA $00EE                       ; $ABB525  AD EE 00     MX
    CLC                             ; $ABB528  18           MX
    ADC #$0004                      ; $ABB529  69 04 00     MX
    STA $00EE                       ; $ABB52C  8D EE 00     MX
    CMP #$0100                      ; $ABB52F  C9 00 01     MX
    BCC L_ABB53D                    ; $ABB532  90 09        MX
    INC $00EC                       ; $ABB534  EE EC 00     MX
    CMP #$FFF8                      ; $ABB537  C9 F8 FF     MX
    BCS L_ABB53D                    ; $ABB53A  B0 01        MX
    RTS                             ; $ABB53C  60           MX
L_ABB53D:
    LDA $00F0                       ; $ABB53D  AD F0 00     MX
    CMP #$00E0                      ; $ABB540  C9 E0 00     MX
    BCC L_ABB54B                    ; $ABB543  90 06        MX
    CMP #$FFF0                      ; $ABB545  C9 F0 FF     MX
    BCS L_ABB54B                    ; $ABB548  B0 01        MX
    RTS                             ; $ABB54A  60           MX
L_ABB54B:
    SEP #$20                        ; $ABB54B  E2 20        MX
    LDA $00EC                       ; $ABB54D  AD EC 00     mX
    BEQ L_ABB55C                    ; $ABB550  F0 0A        mX
    LDA $ABE4D7                     ; $ABB552  AF D7 E4 AB  mX
    ORA $0502                       ; $ABB556  0D 02 05     mX
    STA $0502                       ; $ABB559  8D 02 05     mX
L_ABB55C:
    LDA $00F0                       ; $ABB55C  AD F0 00     mX
    STA $0329                       ; $ABB55F  8D 29 03     mX
    LDA $00EE                       ; $ABB562  AD EE 00     mX
    STA $0328                       ; $ABB565  8D 28 03     mX
    LDA $00F2                       ; $ABB568  AD F2 00     mX
    STA $032A                       ; $ABB56B  8D 2A 03     mX
    LDA $002A                       ; $ABB56E  AD 2A 00     mX
    ORA $00F3                       ; $ABB571  0D F3 00     mX
    STA $032B                       ; $ABB574  8D 2B 03     mX
    REP #$20                        ; $ABB577  C2 20        mX
    LDA #$002C                      ; $ABB579  A9 2C 00     MX
    STA ($10)                       ; $ABB57C  92 10        MX
    RTS                             ; $ABB57E  60           MX
L_ABB57F:
    STZ $00EC                       ; $ABB57F  9C EC 00     MX
    LDA $00EE                       ; $ABB582  AD EE 00     MX
    CLC                             ; $ABB585  18           MX
    ADC #$0004                      ; $ABB586  69 04 00     MX
    STA $00EE                       ; $ABB589  8D EE 00     MX
    CMP #$0100                      ; $ABB58C  C9 00 01     MX
    BCC L_ABB59A                    ; $ABB58F  90 09        MX
    INC $00EC                       ; $ABB591  EE EC 00     MX
    CMP #$FFF8                      ; $ABB594  C9 F8 FF     MX
    BCS L_ABB59A                    ; $ABB597  B0 01        MX
    RTS                             ; $ABB599  60           MX
L_ABB59A:
    LDA $00F0                       ; $ABB59A  AD F0 00     MX
    CMP #$00E0                      ; $ABB59D  C9 E0 00     MX
    BCC L_ABB5A8                    ; $ABB5A0  90 06        MX
    CMP #$FFF0                      ; $ABB5A2  C9 F0 FF     MX
    BCS L_ABB5A8                    ; $ABB5A5  B0 01        MX
    RTS                             ; $ABB5A7  60           MX
L_ABB5A8:
    SEP #$20                        ; $ABB5A8  E2 20        MX
    LDA $00EC                       ; $ABB5AA  AD EC 00     mX
    BEQ L_ABB5B9                    ; $ABB5AD  F0 0A        mX
    LDA $ABE4D8                     ; $ABB5AF  AF D8 E4 AB  mX
    ORA $0502                       ; $ABB5B3  0D 02 05     mX
    STA $0502                       ; $ABB5B6  8D 02 05     mX
L_ABB5B9:
    LDA $00F0                       ; $ABB5B9  AD F0 00     mX
    STA $032D                       ; $ABB5BC  8D 2D 03     mX
    LDA $00EE                       ; $ABB5BF  AD EE 00     mX
    STA $032C                       ; $ABB5C2  8D 2C 03     mX
    LDA $00F2                       ; $ABB5C5  AD F2 00     mX
    STA $032E                       ; $ABB5C8  8D 2E 03     mX
    LDA $002A                       ; $ABB5CB  AD 2A 00     mX
    ORA $00F3                       ; $ABB5CE  0D F3 00     mX
    STA $032F                       ; $ABB5D1  8D 2F 03     mX
    REP #$20                        ; $ABB5D4  C2 20        mX
    LDA #$0030                      ; $ABB5D6  A9 30 00     MX
    STA ($10)                       ; $ABB5D9  92 10        MX
    RTS                             ; $ABB5DB  60           MX
L_ABB5DC:
    STZ $00EC                       ; $ABB5DC  9C EC 00     MX
    LDA $00EE                       ; $ABB5DF  AD EE 00     MX
    CLC                             ; $ABB5E2  18           MX
    ADC #$0004                      ; $ABB5E3  69 04 00     MX
    STA $00EE                       ; $ABB5E6  8D EE 00     MX
    CMP #$0100                      ; $ABB5E9  C9 00 01     MX
    BCC L_ABB5F7                    ; $ABB5EC  90 09        MX
    INC $00EC                       ; $ABB5EE  EE EC 00     MX
    CMP #$FFF8                      ; $ABB5F1  C9 F8 FF     MX
    BCS L_ABB5F7                    ; $ABB5F4  B0 01        MX
    RTS                             ; $ABB5F6  60           MX
L_ABB5F7:
    LDA $00F0                       ; $ABB5F7  AD F0 00     MX
    CMP #$00E0                      ; $ABB5FA  C9 E0 00     MX
    BCC L_ABB605                    ; $ABB5FD  90 06        MX
    CMP #$FFF0                      ; $ABB5FF  C9 F0 FF     MX
    BCS L_ABB605                    ; $ABB602  B0 01        MX
    RTS                             ; $ABB604  60           MX
L_ABB605:
    SEP #$20                        ; $ABB605  E2 20        MX
    LDA $00EC                       ; $ABB607  AD EC 00     mX
    BEQ L_ABB616                    ; $ABB60A  F0 0A        mX
    LDA $ABE4D5                     ; $ABB60C  AF D5 E4 AB  mX
    ORA $0503                       ; $ABB610  0D 03 05     mX
    STA $0503                       ; $ABB613  8D 03 05     mX
L_ABB616:
    LDA $00F0                       ; $ABB616  AD F0 00     mX
    STA $0331                       ; $ABB619  8D 31 03     mX
    LDA $00EE                       ; $ABB61C  AD EE 00     mX
    STA $0330                       ; $ABB61F  8D 30 03     mX
    LDA $00F2                       ; $ABB622  AD F2 00     mX
    STA $0332                       ; $ABB625  8D 32 03     mX
    LDA $002A                       ; $ABB628  AD 2A 00     mX
    ORA $00F3                       ; $ABB62B  0D F3 00     mX
    STA $0333                       ; $ABB62E  8D 33 03     mX
    REP #$20                        ; $ABB631  C2 20        mX
    LDA #$0034                      ; $ABB633  A9 34 00     MX
    STA ($10)                       ; $ABB636  92 10        MX
    RTS                             ; $ABB638  60           MX
L_ABB639:
    STZ $00EC                       ; $ABB639  9C EC 00     MX
    LDA $00EE                       ; $ABB63C  AD EE 00     MX
    CLC                             ; $ABB63F  18           MX
    ADC #$0004                      ; $ABB640  69 04 00     MX
    STA $00EE                       ; $ABB643  8D EE 00     MX
    CMP #$0100                      ; $ABB646  C9 00 01     MX
    BCC L_ABB654                    ; $ABB649  90 09        MX
    INC $00EC                       ; $ABB64B  EE EC 00     MX
    CMP #$FFF8                      ; $ABB64E  C9 F8 FF     MX
    BCS L_ABB654                    ; $ABB651  B0 01        MX
    RTS                             ; $ABB653  60           MX
L_ABB654:
    LDA $00F0                       ; $ABB654  AD F0 00     MX
    CMP #$00E0                      ; $ABB657  C9 E0 00     MX
    BCC L_ABB662                    ; $ABB65A  90 06        MX
    CMP #$FFF0                      ; $ABB65C  C9 F0 FF     MX
    BCS L_ABB662                    ; $ABB65F  B0 01        MX
    RTS                             ; $ABB661  60           MX
L_ABB662:
    SEP #$20                        ; $ABB662  E2 20        MX
    LDA $00EC                       ; $ABB664  AD EC 00     mX
    BEQ L_ABB673                    ; $ABB667  F0 0A        mX
    LDA $ABE4D6                     ; $ABB669  AF D6 E4 AB  mX
    ORA $0503                       ; $ABB66D  0D 03 05     mX
    STA $0503                       ; $ABB670  8D 03 05     mX
L_ABB673:
    LDA $00F0                       ; $ABB673  AD F0 00     mX
    STA $0335                       ; $ABB676  8D 35 03     mX
    LDA $00EE                       ; $ABB679  AD EE 00     mX
    STA $0334                       ; $ABB67C  8D 34 03     mX
    LDA $00F2                       ; $ABB67F  AD F2 00     mX
    STA $0336                       ; $ABB682  8D 36 03     mX
    LDA $002A                       ; $ABB685  AD 2A 00     mX
    ORA $00F3                       ; $ABB688  0D F3 00     mX
    STA $0337                       ; $ABB68B  8D 37 03     mX
    REP #$20                        ; $ABB68E  C2 20        mX
    LDA #$0038                      ; $ABB690  A9 38 00     MX
    STA ($10)                       ; $ABB693  92 10        MX
    RTS                             ; $ABB695  60           MX
L_ABB696:
    STZ $00EC                       ; $ABB696  9C EC 00     MX
    LDA $00EE                       ; $ABB699  AD EE 00     MX
    CLC                             ; $ABB69C  18           MX
    ADC #$0004                      ; $ABB69D  69 04 00     MX
    STA $00EE                       ; $ABB6A0  8D EE 00     MX
    CMP #$0100                      ; $ABB6A3  C9 00 01     MX
    BCC L_ABB6B1                    ; $ABB6A6  90 09        MX
    INC $00EC                       ; $ABB6A8  EE EC 00     MX
    CMP #$FFF8                      ; $ABB6AB  C9 F8 FF     MX
    BCS L_ABB6B1                    ; $ABB6AE  B0 01        MX
    RTS                             ; $ABB6B0  60           MX
L_ABB6B1:
    LDA $00F0                       ; $ABB6B1  AD F0 00     MX
    CMP #$00E0                      ; $ABB6B4  C9 E0 00     MX
    BCC L_ABB6BF                    ; $ABB6B7  90 06        MX
    CMP #$FFF0                      ; $ABB6B9  C9 F0 FF     MX
    BCS L_ABB6BF                    ; $ABB6BC  B0 01        MX
    RTS                             ; $ABB6BE  60           MX
L_ABB6BF:
    SEP #$20                        ; $ABB6BF  E2 20        MX
    LDA $00EC                       ; $ABB6C1  AD EC 00     mX
    BEQ L_ABB6D0                    ; $ABB6C4  F0 0A        mX
    LDA $ABE4D7                     ; $ABB6C6  AF D7 E4 AB  mX
    ORA $0503                       ; $ABB6CA  0D 03 05     mX
    STA $0503                       ; $ABB6CD  8D 03 05     mX
L_ABB6D0:
    LDA $00F0                       ; $ABB6D0  AD F0 00     mX
    STA $0339                       ; $ABB6D3  8D 39 03     mX
    LDA $00EE                       ; $ABB6D6  AD EE 00     mX
    STA $0338                       ; $ABB6D9  8D 38 03     mX
    LDA $00F2                       ; $ABB6DC  AD F2 00     mX
    STA $033A                       ; $ABB6DF  8D 3A 03     mX
    LDA $002A                       ; $ABB6E2  AD 2A 00     mX
    ORA $00F3                       ; $ABB6E5  0D F3 00     mX
    STA $033B                       ; $ABB6E8  8D 3B 03     mX
    REP #$20                        ; $ABB6EB  C2 20        mX
    LDA #$003C                      ; $ABB6ED  A9 3C 00     MX
    STA ($10)                       ; $ABB6F0  92 10        MX
    RTS                             ; $ABB6F2  60           MX
L_ABB6F3:
    STZ $00EC                       ; $ABB6F3  9C EC 00     MX
    LDA $00EE                       ; $ABB6F6  AD EE 00     MX
    CLC                             ; $ABB6F9  18           MX
    ADC #$0004                      ; $ABB6FA  69 04 00     MX
    STA $00EE                       ; $ABB6FD  8D EE 00     MX
    CMP #$0100                      ; $ABB700  C9 00 01     MX
    BCC L_ABB70E                    ; $ABB703  90 09        MX
    INC $00EC                       ; $ABB705  EE EC 00     MX
    CMP #$FFF8                      ; $ABB708  C9 F8 FF     MX
    BCS L_ABB70E                    ; $ABB70B  B0 01        MX
    RTS                             ; $ABB70D  60           MX
L_ABB70E:
    LDA $00F0                       ; $ABB70E  AD F0 00     MX
    CMP #$00E0                      ; $ABB711  C9 E0 00     MX
    BCC L_ABB71C                    ; $ABB714  90 06        MX
    CMP #$FFF0                      ; $ABB716  C9 F0 FF     MX
    BCS L_ABB71C                    ; $ABB719  B0 01        MX
    RTS                             ; $ABB71B  60           MX
L_ABB71C:
    SEP #$20                        ; $ABB71C  E2 20        MX
    LDA $00EC                       ; $ABB71E  AD EC 00     mX
    BEQ L_ABB72D                    ; $ABB721  F0 0A        mX
    LDA $ABE4D8                     ; $ABB723  AF D8 E4 AB  mX
    ORA $0503                       ; $ABB727  0D 03 05     mX
    STA $0503                       ; $ABB72A  8D 03 05     mX
L_ABB72D:
    LDA $00F0                       ; $ABB72D  AD F0 00     mX
    STA $033D                       ; $ABB730  8D 3D 03     mX
    LDA $00EE                       ; $ABB733  AD EE 00     mX
    STA $033C                       ; $ABB736  8D 3C 03     mX
    LDA $00F2                       ; $ABB739  AD F2 00     mX
    STA $033E                       ; $ABB73C  8D 3E 03     mX
    LDA $002A                       ; $ABB73F  AD 2A 00     mX
    ORA $00F3                       ; $ABB742  0D F3 00     mX
    STA $033F                       ; $ABB745  8D 3F 03     mX
    REP #$20                        ; $ABB748  C2 20        mX
    LDA #$0040                      ; $ABB74A  A9 40 00     MX
    STA ($10)                       ; $ABB74D  92 10        MX
    RTS                             ; $ABB74F  60           MX
L_ABB750:
    STZ $00EC                       ; $ABB750  9C EC 00     MX
    LDA $00EE                       ; $ABB753  AD EE 00     MX
    CLC                             ; $ABB756  18           MX
    ADC #$0004                      ; $ABB757  69 04 00     MX
    STA $00EE                       ; $ABB75A  8D EE 00     MX
    CMP #$0100                      ; $ABB75D  C9 00 01     MX
    BCC L_ABB76B                    ; $ABB760  90 09        MX
    INC $00EC                       ; $ABB762  EE EC 00     MX
    CMP #$FFF8                      ; $ABB765  C9 F8 FF     MX
    BCS L_ABB76B                    ; $ABB768  B0 01        MX
    RTS                             ; $ABB76A  60           MX
L_ABB76B:
    LDA $00F0                       ; $ABB76B  AD F0 00     MX
    CMP #$00E0                      ; $ABB76E  C9 E0 00     MX
    BCC L_ABB779                    ; $ABB771  90 06        MX
    CMP #$FFF0                      ; $ABB773  C9 F0 FF     MX
    BCS L_ABB779                    ; $ABB776  B0 01        MX
    RTS                             ; $ABB778  60           MX
L_ABB779:
    SEP #$20                        ; $ABB779  E2 20        MX
    LDA $00EC                       ; $ABB77B  AD EC 00     mX
    BEQ L_ABB78A                    ; $ABB77E  F0 0A        mX
    LDA $ABE4D5                     ; $ABB780  AF D5 E4 AB  mX
    ORA $0504                       ; $ABB784  0D 04 05     mX
    STA $0504                       ; $ABB787  8D 04 05     mX
L_ABB78A:
    LDA $00F0                       ; $ABB78A  AD F0 00     mX
    STA $0341                       ; $ABB78D  8D 41 03     mX
    LDA $00EE                       ; $ABB790  AD EE 00     mX
    STA $0340                       ; $ABB793  8D 40 03     mX
    LDA $00F2                       ; $ABB796  AD F2 00     mX
    STA $0342                       ; $ABB799  8D 42 03     mX
    LDA $002A                       ; $ABB79C  AD 2A 00     mX
    ORA $00F3                       ; $ABB79F  0D F3 00     mX
    STA $0343                       ; $ABB7A2  8D 43 03     mX
    REP #$20                        ; $ABB7A5  C2 20        mX
    LDA #$0044                      ; $ABB7A7  A9 44 00     MX
    STA ($10)                       ; $ABB7AA  92 10        MX
    RTS                             ; $ABB7AC  60           MX
L_ABB7AD:
    STZ $00EC                       ; $ABB7AD  9C EC 00     MX
    LDA $00EE                       ; $ABB7B0  AD EE 00     MX
    CLC                             ; $ABB7B3  18           MX
    ADC #$0004                      ; $ABB7B4  69 04 00     MX
    STA $00EE                       ; $ABB7B7  8D EE 00     MX
    CMP #$0100                      ; $ABB7BA  C9 00 01     MX
    BCC L_ABB7C8                    ; $ABB7BD  90 09        MX
    INC $00EC                       ; $ABB7BF  EE EC 00     MX
    CMP #$FFF8                      ; $ABB7C2  C9 F8 FF     MX
    BCS L_ABB7C8                    ; $ABB7C5  B0 01        MX
    RTS                             ; $ABB7C7  60           MX
L_ABB7C8:
    LDA $00F0                       ; $ABB7C8  AD F0 00     MX
    CMP #$00E0                      ; $ABB7CB  C9 E0 00     MX
    BCC L_ABB7D6                    ; $ABB7CE  90 06        MX
    CMP #$FFF0                      ; $ABB7D0  C9 F0 FF     MX
    BCS L_ABB7D6                    ; $ABB7D3  B0 01        MX
    RTS                             ; $ABB7D5  60           MX
L_ABB7D6:
    SEP #$20                        ; $ABB7D6  E2 20        MX
    LDA $00EC                       ; $ABB7D8  AD EC 00     mX
    BEQ L_ABB7E7                    ; $ABB7DB  F0 0A        mX
    LDA $ABE4D6                     ; $ABB7DD  AF D6 E4 AB  mX
    ORA $0504                       ; $ABB7E1  0D 04 05     mX
    STA $0504                       ; $ABB7E4  8D 04 05     mX
L_ABB7E7:
    LDA $00F0                       ; $ABB7E7  AD F0 00     mX
    STA $0345                       ; $ABB7EA  8D 45 03     mX
    LDA $00EE                       ; $ABB7ED  AD EE 00     mX
    STA $0344                       ; $ABB7F0  8D 44 03     mX
    LDA $00F2                       ; $ABB7F3  AD F2 00     mX
    STA $0346                       ; $ABB7F6  8D 46 03     mX
    LDA $002A                       ; $ABB7F9  AD 2A 00     mX
    ORA $00F3                       ; $ABB7FC  0D F3 00     mX
    STA $0347                       ; $ABB7FF  8D 47 03     mX
    REP #$20                        ; $ABB802  C2 20        mX
    LDA #$0048                      ; $ABB804  A9 48 00     MX
    STA ($10)                       ; $ABB807  92 10        MX
    RTS                             ; $ABB809  60           MX
L_ABB80A:
    STZ $00EC                       ; $ABB80A  9C EC 00     MX
    LDA $00EE                       ; $ABB80D  AD EE 00     MX
    CLC                             ; $ABB810  18           MX
    ADC #$0004                      ; $ABB811  69 04 00     MX
    STA $00EE                       ; $ABB814  8D EE 00     MX
    CMP #$0100                      ; $ABB817  C9 00 01     MX
    BCC L_ABB825                    ; $ABB81A  90 09        MX
    INC $00EC                       ; $ABB81C  EE EC 00     MX
    CMP #$FFF8                      ; $ABB81F  C9 F8 FF     MX
    BCS L_ABB825                    ; $ABB822  B0 01        MX
    RTS                             ; $ABB824  60           MX
L_ABB825:
    LDA $00F0                       ; $ABB825  AD F0 00     MX
    CMP #$00E0                      ; $ABB828  C9 E0 00     MX
    BCC L_ABB833                    ; $ABB82B  90 06        MX
    CMP #$FFF0                      ; $ABB82D  C9 F0 FF     MX
    BCS L_ABB833                    ; $ABB830  B0 01        MX
    RTS                             ; $ABB832  60           MX
L_ABB833:
    SEP #$20                        ; $ABB833  E2 20        MX
    LDA $00EC                       ; $ABB835  AD EC 00     mX
    BEQ L_ABB844                    ; $ABB838  F0 0A        mX
    LDA $ABE4D7                     ; $ABB83A  AF D7 E4 AB  mX
    ORA $0504                       ; $ABB83E  0D 04 05     mX
    STA $0504                       ; $ABB841  8D 04 05     mX
L_ABB844:
    LDA $00F0                       ; $ABB844  AD F0 00     mX
    STA $0349                       ; $ABB847  8D 49 03     mX
    LDA $00EE                       ; $ABB84A  AD EE 00     mX
    STA $0348                       ; $ABB84D  8D 48 03     mX
    LDA $00F2                       ; $ABB850  AD F2 00     mX
    STA $034A                       ; $ABB853  8D 4A 03     mX
    LDA $002A                       ; $ABB856  AD 2A 00     mX
    ORA $00F3                       ; $ABB859  0D F3 00     mX
    STA $034B                       ; $ABB85C  8D 4B 03     mX
    REP #$20                        ; $ABB85F  C2 20        mX
    LDA #$004C                      ; $ABB861  A9 4C 00     MX
    STA ($10)                       ; $ABB864  92 10        MX
    RTS                             ; $ABB866  60           MX
L_ABB867:
    STZ $00EC                       ; $ABB867  9C EC 00     MX
    LDA $00EE                       ; $ABB86A  AD EE 00     MX
    CLC                             ; $ABB86D  18           MX
    ADC #$0004                      ; $ABB86E  69 04 00     MX
    STA $00EE                       ; $ABB871  8D EE 00     MX
    CMP #$0100                      ; $ABB874  C9 00 01     MX
    BCC L_ABB882                    ; $ABB877  90 09        MX
    INC $00EC                       ; $ABB879  EE EC 00     MX
    CMP #$FFF8                      ; $ABB87C  C9 F8 FF     MX
    BCS L_ABB882                    ; $ABB87F  B0 01        MX
    RTS                             ; $ABB881  60           MX
L_ABB882:
    LDA $00F0                       ; $ABB882  AD F0 00     MX
    CMP #$00E0                      ; $ABB885  C9 E0 00     MX
    BCC L_ABB890                    ; $ABB888  90 06        MX
    CMP #$FFF0                      ; $ABB88A  C9 F0 FF     MX
    BCS L_ABB890                    ; $ABB88D  B0 01        MX
    RTS                             ; $ABB88F  60           MX
L_ABB890:
    SEP #$20                        ; $ABB890  E2 20        MX
    LDA $00EC                       ; $ABB892  AD EC 00     mX
    BEQ L_ABB8A1                    ; $ABB895  F0 0A        mX
    LDA $ABE4D8                     ; $ABB897  AF D8 E4 AB  mX
    ORA $0504                       ; $ABB89B  0D 04 05     mX
    STA $0504                       ; $ABB89E  8D 04 05     mX
L_ABB8A1:
    LDA $00F0                       ; $ABB8A1  AD F0 00     mX
    STA $034D                       ; $ABB8A4  8D 4D 03     mX
    LDA $00EE                       ; $ABB8A7  AD EE 00     mX
    STA $034C                       ; $ABB8AA  8D 4C 03     mX
    LDA $00F2                       ; $ABB8AD  AD F2 00     mX
    STA $034E                       ; $ABB8B0  8D 4E 03     mX
    LDA $002A                       ; $ABB8B3  AD 2A 00     mX
    ORA $00F3                       ; $ABB8B6  0D F3 00     mX
    STA $034F                       ; $ABB8B9  8D 4F 03     mX
    REP #$20                        ; $ABB8BC  C2 20        mX
    LDA #$0050                      ; $ABB8BE  A9 50 00     MX
    STA ($10)                       ; $ABB8C1  92 10        MX
    RTS                             ; $ABB8C3  60           MX
L_ABB8C4:
    STZ $00EC                       ; $ABB8C4  9C EC 00     MX
    LDA $00EE                       ; $ABB8C7  AD EE 00     MX
    CLC                             ; $ABB8CA  18           MX
    ADC #$0004                      ; $ABB8CB  69 04 00     MX
    STA $00EE                       ; $ABB8CE  8D EE 00     MX
    CMP #$0100                      ; $ABB8D1  C9 00 01     MX
    BCC L_ABB8DF                    ; $ABB8D4  90 09        MX
    INC $00EC                       ; $ABB8D6  EE EC 00     MX
    CMP #$FFF8                      ; $ABB8D9  C9 F8 FF     MX
    BCS L_ABB8DF                    ; $ABB8DC  B0 01        MX
    RTS                             ; $ABB8DE  60           MX
L_ABB8DF:
    LDA $00F0                       ; $ABB8DF  AD F0 00     MX
    CMP #$00E0                      ; $ABB8E2  C9 E0 00     MX
    BCC L_ABB8ED                    ; $ABB8E5  90 06        MX
    CMP #$FFF0                      ; $ABB8E7  C9 F0 FF     MX
    BCS L_ABB8ED                    ; $ABB8EA  B0 01        MX
    RTS                             ; $ABB8EC  60           MX
L_ABB8ED:
    SEP #$20                        ; $ABB8ED  E2 20        MX
    LDA $00EC                       ; $ABB8EF  AD EC 00     mX
    BEQ L_ABB8FE                    ; $ABB8F2  F0 0A        mX
    LDA $ABE4D5                     ; $ABB8F4  AF D5 E4 AB  mX
    ORA $0505                       ; $ABB8F8  0D 05 05     mX
    STA $0505                       ; $ABB8FB  8D 05 05     mX
L_ABB8FE:
    LDA $00F0                       ; $ABB8FE  AD F0 00     mX
    STA $0351                       ; $ABB901  8D 51 03     mX
    LDA $00EE                       ; $ABB904  AD EE 00     mX
    STA $0350                       ; $ABB907  8D 50 03     mX
    LDA $00F2                       ; $ABB90A  AD F2 00     mX
    STA $0352                       ; $ABB90D  8D 52 03     mX
    LDA $002A                       ; $ABB910  AD 2A 00     mX
    ORA $00F3                       ; $ABB913  0D F3 00     mX
    STA $0353                       ; $ABB916  8D 53 03     mX
    REP #$20                        ; $ABB919  C2 20        mX
    LDA #$0054                      ; $ABB91B  A9 54 00     MX
    STA ($10)                       ; $ABB91E  92 10        MX
    RTS                             ; $ABB920  60           MX
L_ABB921:
    STZ $00EC                       ; $ABB921  9C EC 00     MX
    LDA $00EE                       ; $ABB924  AD EE 00     MX
    CLC                             ; $ABB927  18           MX
    ADC #$0004                      ; $ABB928  69 04 00     MX
    STA $00EE                       ; $ABB92B  8D EE 00     MX
    CMP #$0100                      ; $ABB92E  C9 00 01     MX
    BCC L_ABB93C                    ; $ABB931  90 09        MX
    INC $00EC                       ; $ABB933  EE EC 00     MX
    CMP #$FFF8                      ; $ABB936  C9 F8 FF     MX
    BCS L_ABB93C                    ; $ABB939  B0 01        MX
    RTS                             ; $ABB93B  60           MX
L_ABB93C:
    LDA $00F0                       ; $ABB93C  AD F0 00     MX
    CMP #$00E0                      ; $ABB93F  C9 E0 00     MX
    BCC L_ABB94A                    ; $ABB942  90 06        MX
    CMP #$FFF0                      ; $ABB944  C9 F0 FF     MX
    BCS L_ABB94A                    ; $ABB947  B0 01        MX
    RTS                             ; $ABB949  60           MX
L_ABB94A:
    SEP #$20                        ; $ABB94A  E2 20        MX
    LDA $00EC                       ; $ABB94C  AD EC 00     mX
    BEQ L_ABB95B                    ; $ABB94F  F0 0A        mX
    LDA $ABE4D6                     ; $ABB951  AF D6 E4 AB  mX
    ORA $0505                       ; $ABB955  0D 05 05     mX
    STA $0505                       ; $ABB958  8D 05 05     mX
L_ABB95B:
    LDA $00F0                       ; $ABB95B  AD F0 00     mX
    STA $0355                       ; $ABB95E  8D 55 03     mX
    LDA $00EE                       ; $ABB961  AD EE 00     mX
    STA $0354                       ; $ABB964  8D 54 03     mX
    LDA $00F2                       ; $ABB967  AD F2 00     mX
    STA $0356                       ; $ABB96A  8D 56 03     mX
    LDA $002A                       ; $ABB96D  AD 2A 00     mX
    ORA $00F3                       ; $ABB970  0D F3 00     mX
    STA $0357                       ; $ABB973  8D 57 03     mX
    REP #$20                        ; $ABB976  C2 20        mX
    LDA #$0058                      ; $ABB978  A9 58 00     MX
    STA ($10)                       ; $ABB97B  92 10        MX
    RTS                             ; $ABB97D  60           MX
L_ABB97E:
    STZ $00EC                       ; $ABB97E  9C EC 00     MX
    LDA $00EE                       ; $ABB981  AD EE 00     MX
    CLC                             ; $ABB984  18           MX
    ADC #$0004                      ; $ABB985  69 04 00     MX
    STA $00EE                       ; $ABB988  8D EE 00     MX
    CMP #$0100                      ; $ABB98B  C9 00 01     MX
    BCC L_ABB999                    ; $ABB98E  90 09        MX
    INC $00EC                       ; $ABB990  EE EC 00     MX
    CMP #$FFF8                      ; $ABB993  C9 F8 FF     MX
    BCS L_ABB999                    ; $ABB996  B0 01        MX
    RTS                             ; $ABB998  60           MX
L_ABB999:
    LDA $00F0                       ; $ABB999  AD F0 00     MX
    CMP #$00E0                      ; $ABB99C  C9 E0 00     MX
    BCC L_ABB9A7                    ; $ABB99F  90 06        MX
    CMP #$FFF0                      ; $ABB9A1  C9 F0 FF     MX
    BCS L_ABB9A7                    ; $ABB9A4  B0 01        MX
    RTS                             ; $ABB9A6  60           MX
L_ABB9A7:
    SEP #$20                        ; $ABB9A7  E2 20        MX
    LDA $00EC                       ; $ABB9A9  AD EC 00     mX
    BEQ L_ABB9B8                    ; $ABB9AC  F0 0A        mX
    LDA $ABE4D7                     ; $ABB9AE  AF D7 E4 AB  mX
    ORA $0505                       ; $ABB9B2  0D 05 05     mX
    STA $0505                       ; $ABB9B5  8D 05 05     mX
L_ABB9B8:
    LDA $00F0                       ; $ABB9B8  AD F0 00     mX
    STA $0359                       ; $ABB9BB  8D 59 03     mX
    LDA $00EE                       ; $ABB9BE  AD EE 00     mX
    STA $0358                       ; $ABB9C1  8D 58 03     mX
    LDA $00F2                       ; $ABB9C4  AD F2 00     mX
    STA $035A                       ; $ABB9C7  8D 5A 03     mX
    LDA $002A                       ; $ABB9CA  AD 2A 00     mX
    ORA $00F3                       ; $ABB9CD  0D F3 00     mX
    STA $035B                       ; $ABB9D0  8D 5B 03     mX
    REP #$20                        ; $ABB9D3  C2 20        mX
    LDA #$005C                      ; $ABB9D5  A9 5C 00     MX
    STA ($10)                       ; $ABB9D8  92 10        MX
    RTS                             ; $ABB9DA  60           MX
L_ABB9DB:
    STZ $00EC                       ; $ABB9DB  9C EC 00     MX
    LDA $00EE                       ; $ABB9DE  AD EE 00     MX
    CLC                             ; $ABB9E1  18           MX
    ADC #$0004                      ; $ABB9E2  69 04 00     MX
    STA $00EE                       ; $ABB9E5  8D EE 00     MX
    CMP #$0100                      ; $ABB9E8  C9 00 01     MX
    BCC L_ABB9F6                    ; $ABB9EB  90 09        MX
    INC $00EC                       ; $ABB9ED  EE EC 00     MX
    CMP #$FFF8                      ; $ABB9F0  C9 F8 FF     MX
    BCS L_ABB9F6                    ; $ABB9F3  B0 01        MX
    RTS                             ; $ABB9F5  60           MX
L_ABB9F6:
    LDA $00F0                       ; $ABB9F6  AD F0 00     MX
    CMP #$00E0                      ; $ABB9F9  C9 E0 00     MX
    BCC L_ABBA04                    ; $ABB9FC  90 06        MX
    CMP #$FFF0                      ; $ABB9FE  C9 F0 FF     MX
    BCS L_ABBA04                    ; $ABBA01  B0 01        MX
    RTS                             ; $ABBA03  60           MX
L_ABBA04:
    SEP #$20                        ; $ABBA04  E2 20        MX
    LDA $00EC                       ; $ABBA06  AD EC 00     mX
    BEQ L_ABBA15                    ; $ABBA09  F0 0A        mX
    LDA $ABE4D8                     ; $ABBA0B  AF D8 E4 AB  mX
    ORA $0505                       ; $ABBA0F  0D 05 05     mX
    STA $0505                       ; $ABBA12  8D 05 05     mX
L_ABBA15:
    LDA $00F0                       ; $ABBA15  AD F0 00     mX
    STA $035D                       ; $ABBA18  8D 5D 03     mX
    LDA $00EE                       ; $ABBA1B  AD EE 00     mX
    STA $035C                       ; $ABBA1E  8D 5C 03     mX
    LDA $00F2                       ; $ABBA21  AD F2 00     mX
    STA $035E                       ; $ABBA24  8D 5E 03     mX
    LDA $002A                       ; $ABBA27  AD 2A 00     mX
    ORA $00F3                       ; $ABBA2A  0D F3 00     mX
    STA $035F                       ; $ABBA2D  8D 5F 03     mX
    REP #$20                        ; $ABBA30  C2 20        mX
    LDA #$0060                      ; $ABBA32  A9 60 00     MX
    STA ($10)                       ; $ABBA35  92 10        MX
    RTS                             ; $ABBA37  60           MX
L_ABBA38:
    STZ $00EC                       ; $ABBA38  9C EC 00     MX
    LDA $00EE                       ; $ABBA3B  AD EE 00     MX
    CLC                             ; $ABBA3E  18           MX
    ADC #$0004                      ; $ABBA3F  69 04 00     MX
    STA $00EE                       ; $ABBA42  8D EE 00     MX
    CMP #$0100                      ; $ABBA45  C9 00 01     MX
    BCC L_ABBA53                    ; $ABBA48  90 09        MX
    INC $00EC                       ; $ABBA4A  EE EC 00     MX
    CMP #$FFF8                      ; $ABBA4D  C9 F8 FF     MX
    BCS L_ABBA53                    ; $ABBA50  B0 01        MX
    RTS                             ; $ABBA52  60           MX
L_ABBA53:
    LDA $00F0                       ; $ABBA53  AD F0 00     MX
    CMP #$00E0                      ; $ABBA56  C9 E0 00     MX
    BCC L_ABBA61                    ; $ABBA59  90 06        MX
    CMP #$FFF0                      ; $ABBA5B  C9 F0 FF     MX
    BCS L_ABBA61                    ; $ABBA5E  B0 01        MX
    RTS                             ; $ABBA60  60           MX
L_ABBA61:
    SEP #$20                        ; $ABBA61  E2 20        MX
    LDA $00EC                       ; $ABBA63  AD EC 00     mX
    BEQ L_ABBA72                    ; $ABBA66  F0 0A        mX
    LDA $ABE4D5                     ; $ABBA68  AF D5 E4 AB  mX
    ORA $0506                       ; $ABBA6C  0D 06 05     mX
    STA $0506                       ; $ABBA6F  8D 06 05     mX
L_ABBA72:
    LDA $00F0                       ; $ABBA72  AD F0 00     mX
    STA $0361                       ; $ABBA75  8D 61 03     mX
    LDA $00EE                       ; $ABBA78  AD EE 00     mX
    STA $0360                       ; $ABBA7B  8D 60 03     mX
    LDA $00F2                       ; $ABBA7E  AD F2 00     mX
    STA $0362                       ; $ABBA81  8D 62 03     mX
    LDA $002A                       ; $ABBA84  AD 2A 00     mX
    ORA $00F3                       ; $ABBA87  0D F3 00     mX
    STA $0363                       ; $ABBA8A  8D 63 03     mX
    REP #$20                        ; $ABBA8D  C2 20        mX
    LDA #$0064                      ; $ABBA8F  A9 64 00     MX
    STA ($10)                       ; $ABBA92  92 10        MX
    RTS                             ; $ABBA94  60           MX
L_ABBA95:
    STZ $00EC                       ; $ABBA95  9C EC 00     MX
    LDA $00EE                       ; $ABBA98  AD EE 00     MX
    CLC                             ; $ABBA9B  18           MX
    ADC #$0004                      ; $ABBA9C  69 04 00     MX
    STA $00EE                       ; $ABBA9F  8D EE 00     MX
    CMP #$0100                      ; $ABBAA2  C9 00 01     MX
    BCC L_ABBAB0                    ; $ABBAA5  90 09        MX
    INC $00EC                       ; $ABBAA7  EE EC 00     MX
    CMP #$FFF8                      ; $ABBAAA  C9 F8 FF     MX
    BCS L_ABBAB0                    ; $ABBAAD  B0 01        MX
    RTS                             ; $ABBAAF  60           MX
L_ABBAB0:
    LDA $00F0                       ; $ABBAB0  AD F0 00     MX
    CMP #$00E0                      ; $ABBAB3  C9 E0 00     MX
    BCC L_ABBABE                    ; $ABBAB6  90 06        MX
    CMP #$FFF0                      ; $ABBAB8  C9 F0 FF     MX
    BCS L_ABBABE                    ; $ABBABB  B0 01        MX
    RTS                             ; $ABBABD  60           MX
L_ABBABE:
    SEP #$20                        ; $ABBABE  E2 20        MX
    LDA $00EC                       ; $ABBAC0  AD EC 00     mX
    BEQ L_ABBACF                    ; $ABBAC3  F0 0A        mX
    LDA $ABE4D6                     ; $ABBAC5  AF D6 E4 AB  mX
    ORA $0506                       ; $ABBAC9  0D 06 05     mX
    STA $0506                       ; $ABBACC  8D 06 05     mX
L_ABBACF:
    LDA $00F0                       ; $ABBACF  AD F0 00     mX
    STA $0365                       ; $ABBAD2  8D 65 03     mX
    LDA $00EE                       ; $ABBAD5  AD EE 00     mX
    STA $0364                       ; $ABBAD8  8D 64 03     mX
    LDA $00F2                       ; $ABBADB  AD F2 00     mX
    STA $0366                       ; $ABBADE  8D 66 03     mX
    LDA $002A                       ; $ABBAE1  AD 2A 00     mX
    ORA $00F3                       ; $ABBAE4  0D F3 00     mX
    STA $0367                       ; $ABBAE7  8D 67 03     mX
    REP #$20                        ; $ABBAEA  C2 20        mX
    LDA #$0068                      ; $ABBAEC  A9 68 00     MX
    STA ($10)                       ; $ABBAEF  92 10        MX
    RTS                             ; $ABBAF1  60           MX
L_ABBAF2:
    STZ $00EC                       ; $ABBAF2  9C EC 00     MX
    LDA $00EE                       ; $ABBAF5  AD EE 00     MX
    CLC                             ; $ABBAF8  18           MX
    ADC #$0004                      ; $ABBAF9  69 04 00     MX
    STA $00EE                       ; $ABBAFC  8D EE 00     MX
    CMP #$0100                      ; $ABBAFF  C9 00 01     MX
    BCC L_ABBB0D                    ; $ABBB02  90 09        MX
    INC $00EC                       ; $ABBB04  EE EC 00     MX
    CMP #$FFF8                      ; $ABBB07  C9 F8 FF     MX
    BCS L_ABBB0D                    ; $ABBB0A  B0 01        MX
    RTS                             ; $ABBB0C  60           MX
L_ABBB0D:
    LDA $00F0                       ; $ABBB0D  AD F0 00     MX
    CMP #$00E0                      ; $ABBB10  C9 E0 00     MX
    BCC L_ABBB1B                    ; $ABBB13  90 06        MX
    CMP #$FFF0                      ; $ABBB15  C9 F0 FF     MX
    BCS L_ABBB1B                    ; $ABBB18  B0 01        MX
    RTS                             ; $ABBB1A  60           MX
L_ABBB1B:
    SEP #$20                        ; $ABBB1B  E2 20        MX
    LDA $00EC                       ; $ABBB1D  AD EC 00     mX
    BEQ L_ABBB2C                    ; $ABBB20  F0 0A        mX
    LDA $ABE4D7                     ; $ABBB22  AF D7 E4 AB  mX
    ORA $0506                       ; $ABBB26  0D 06 05     mX
    STA $0506                       ; $ABBB29  8D 06 05     mX
L_ABBB2C:
    LDA $00F0                       ; $ABBB2C  AD F0 00     mX
    STA $0369                       ; $ABBB2F  8D 69 03     mX
    LDA $00EE                       ; $ABBB32  AD EE 00     mX
    STA $0368                       ; $ABBB35  8D 68 03     mX
    LDA $00F2                       ; $ABBB38  AD F2 00     mX
    STA $036A                       ; $ABBB3B  8D 6A 03     mX
    LDA $002A                       ; $ABBB3E  AD 2A 00     mX
    ORA $00F3                       ; $ABBB41  0D F3 00     mX
    STA $036B                       ; $ABBB44  8D 6B 03     mX
    REP #$20                        ; $ABBB47  C2 20        mX
    LDA #$006C                      ; $ABBB49  A9 6C 00     MX
    STA ($10)                       ; $ABBB4C  92 10        MX
    RTS                             ; $ABBB4E  60           MX
L_ABBB4F:
    STZ $00EC                       ; $ABBB4F  9C EC 00     MX
    LDA $00EE                       ; $ABBB52  AD EE 00     MX
    CLC                             ; $ABBB55  18           MX
    ADC #$0004                      ; $ABBB56  69 04 00     MX
    STA $00EE                       ; $ABBB59  8D EE 00     MX
    CMP #$0100                      ; $ABBB5C  C9 00 01     MX
    BCC L_ABBB6A                    ; $ABBB5F  90 09        MX
    INC $00EC                       ; $ABBB61  EE EC 00     MX
    CMP #$FFF8                      ; $ABBB64  C9 F8 FF     MX
    BCS L_ABBB6A                    ; $ABBB67  B0 01        MX
    RTS                             ; $ABBB69  60           MX
L_ABBB6A:
    LDA $00F0                       ; $ABBB6A  AD F0 00     MX
    CMP #$00E0                      ; $ABBB6D  C9 E0 00     MX
    BCC L_ABBB78                    ; $ABBB70  90 06        MX
    CMP #$FFF0                      ; $ABBB72  C9 F0 FF     MX
    BCS L_ABBB78                    ; $ABBB75  B0 01        MX
    RTS                             ; $ABBB77  60           MX
L_ABBB78:
    SEP #$20                        ; $ABBB78  E2 20        MX
    LDA $00EC                       ; $ABBB7A  AD EC 00     mX
    BEQ L_ABBB89                    ; $ABBB7D  F0 0A        mX
    LDA $ABE4D8                     ; $ABBB7F  AF D8 E4 AB  mX
    ORA $0506                       ; $ABBB83  0D 06 05     mX
    STA $0506                       ; $ABBB86  8D 06 05     mX
L_ABBB89:
    LDA $00F0                       ; $ABBB89  AD F0 00     mX
    STA $036D                       ; $ABBB8C  8D 6D 03     mX
    LDA $00EE                       ; $ABBB8F  AD EE 00     mX
    STA $036C                       ; $ABBB92  8D 6C 03     mX
    LDA $00F2                       ; $ABBB95  AD F2 00     mX
    STA $036E                       ; $ABBB98  8D 6E 03     mX
    LDA $002A                       ; $ABBB9B  AD 2A 00     mX
    ORA $00F3                       ; $ABBB9E  0D F3 00     mX
    STA $036F                       ; $ABBBA1  8D 6F 03     mX
    REP #$20                        ; $ABBBA4  C2 20        mX
    LDA #$0070                      ; $ABBBA6  A9 70 00     MX
    STA ($10)                       ; $ABBBA9  92 10        MX
    RTS                             ; $ABBBAB  60           MX
L_ABBBAC:
    STZ $00EC                       ; $ABBBAC  9C EC 00     MX
    LDA $00EE                       ; $ABBBAF  AD EE 00     MX
    CLC                             ; $ABBBB2  18           MX
    ADC #$0004                      ; $ABBBB3  69 04 00     MX
    STA $00EE                       ; $ABBBB6  8D EE 00     MX
    CMP #$0100                      ; $ABBBB9  C9 00 01     MX
    BCC L_ABBBC7                    ; $ABBBBC  90 09        MX
    INC $00EC                       ; $ABBBBE  EE EC 00     MX
    CMP #$FFF8                      ; $ABBBC1  C9 F8 FF     MX
    BCS L_ABBBC7                    ; $ABBBC4  B0 01        MX
    RTS                             ; $ABBBC6  60           MX
L_ABBBC7:
    LDA $00F0                       ; $ABBBC7  AD F0 00     MX
    CMP #$00E0                      ; $ABBBCA  C9 E0 00     MX
    BCC L_ABBBD5                    ; $ABBBCD  90 06        MX
    CMP #$FFF0                      ; $ABBBCF  C9 F0 FF     MX
    BCS L_ABBBD5                    ; $ABBBD2  B0 01        MX
    RTS                             ; $ABBBD4  60           MX
L_ABBBD5:
    SEP #$20                        ; $ABBBD5  E2 20        MX
    LDA $00EC                       ; $ABBBD7  AD EC 00     mX
    BEQ L_ABBBE6                    ; $ABBBDA  F0 0A        mX
    LDA $ABE4D5                     ; $ABBBDC  AF D5 E4 AB  mX
    ORA $0507                       ; $ABBBE0  0D 07 05     mX
    STA $0507                       ; $ABBBE3  8D 07 05     mX
L_ABBBE6:
    LDA $00F0                       ; $ABBBE6  AD F0 00     mX
    STA $0371                       ; $ABBBE9  8D 71 03     mX
    LDA $00EE                       ; $ABBBEC  AD EE 00     mX
    STA $0370                       ; $ABBBEF  8D 70 03     mX
    LDA $00F2                       ; $ABBBF2  AD F2 00     mX
    STA $0372                       ; $ABBBF5  8D 72 03     mX
    LDA $002A                       ; $ABBBF8  AD 2A 00     mX
    ORA $00F3                       ; $ABBBFB  0D F3 00     mX
    STA $0373                       ; $ABBBFE  8D 73 03     mX
    REP #$20                        ; $ABBC01  C2 20        mX
    LDA #$0074                      ; $ABBC03  A9 74 00     MX
    STA ($10)                       ; $ABBC06  92 10        MX
    RTS                             ; $ABBC08  60           MX
L_ABBC09:
    STZ $00EC                       ; $ABBC09  9C EC 00     MX
    LDA $00EE                       ; $ABBC0C  AD EE 00     MX
    CLC                             ; $ABBC0F  18           MX
    ADC #$0004                      ; $ABBC10  69 04 00     MX
    STA $00EE                       ; $ABBC13  8D EE 00     MX
    CMP #$0100                      ; $ABBC16  C9 00 01     MX
    BCC L_ABBC24                    ; $ABBC19  90 09        MX
    INC $00EC                       ; $ABBC1B  EE EC 00     MX
    CMP #$FFF8                      ; $ABBC1E  C9 F8 FF     MX
    BCS L_ABBC24                    ; $ABBC21  B0 01        MX
    RTS                             ; $ABBC23  60           MX
L_ABBC24:
    LDA $00F0                       ; $ABBC24  AD F0 00     MX
    CMP #$00E0                      ; $ABBC27  C9 E0 00     MX
    BCC L_ABBC32                    ; $ABBC2A  90 06        MX
    CMP #$FFF0                      ; $ABBC2C  C9 F0 FF     MX
    BCS L_ABBC32                    ; $ABBC2F  B0 01        MX
    RTS                             ; $ABBC31  60           MX
L_ABBC32:
    SEP #$20                        ; $ABBC32  E2 20        MX
    LDA $00EC                       ; $ABBC34  AD EC 00     mX
    BEQ L_ABBC43                    ; $ABBC37  F0 0A        mX
    LDA $ABE4D6                     ; $ABBC39  AF D6 E4 AB  mX
    ORA $0507                       ; $ABBC3D  0D 07 05     mX
    STA $0507                       ; $ABBC40  8D 07 05     mX
L_ABBC43:
    LDA $00F0                       ; $ABBC43  AD F0 00     mX
    STA $0375                       ; $ABBC46  8D 75 03     mX
    LDA $00EE                       ; $ABBC49  AD EE 00     mX
    STA $0374                       ; $ABBC4C  8D 74 03     mX
    LDA $00F2                       ; $ABBC4F  AD F2 00     mX
    STA $0376                       ; $ABBC52  8D 76 03     mX
    LDA $002A                       ; $ABBC55  AD 2A 00     mX
    ORA $00F3                       ; $ABBC58  0D F3 00     mX
    STA $0377                       ; $ABBC5B  8D 77 03     mX
    REP #$20                        ; $ABBC5E  C2 20        mX
    LDA #$0078                      ; $ABBC60  A9 78 00     MX
    STA ($10)                       ; $ABBC63  92 10        MX
    RTS                             ; $ABBC65  60           MX
L_ABBC66:
    STZ $00EC                       ; $ABBC66  9C EC 00     MX
    LDA $00EE                       ; $ABBC69  AD EE 00     MX
    CLC                             ; $ABBC6C  18           MX
    ADC #$0004                      ; $ABBC6D  69 04 00     MX
    STA $00EE                       ; $ABBC70  8D EE 00     MX
    CMP #$0100                      ; $ABBC73  C9 00 01     MX
    BCC L_ABBC81                    ; $ABBC76  90 09        MX
    INC $00EC                       ; $ABBC78  EE EC 00     MX
    CMP #$FFF8                      ; $ABBC7B  C9 F8 FF     MX
    BCS L_ABBC81                    ; $ABBC7E  B0 01        MX
    RTS                             ; $ABBC80  60           MX
L_ABBC81:
    LDA $00F0                       ; $ABBC81  AD F0 00     MX
    CMP #$00E0                      ; $ABBC84  C9 E0 00     MX
    BCC L_ABBC8F                    ; $ABBC87  90 06        MX
    CMP #$FFF0                      ; $ABBC89  C9 F0 FF     MX
    BCS L_ABBC8F                    ; $ABBC8C  B0 01        MX
    RTS                             ; $ABBC8E  60           MX
L_ABBC8F:
    SEP #$20                        ; $ABBC8F  E2 20        MX
    LDA $00EC                       ; $ABBC91  AD EC 00     mX
    BEQ L_ABBCA0                    ; $ABBC94  F0 0A        mX
    LDA $ABE4D7                     ; $ABBC96  AF D7 E4 AB  mX
    ORA $0507                       ; $ABBC9A  0D 07 05     mX
    STA $0507                       ; $ABBC9D  8D 07 05     mX
L_ABBCA0:
    LDA $00F0                       ; $ABBCA0  AD F0 00     mX
    STA $0379                       ; $ABBCA3  8D 79 03     mX
    LDA $00EE                       ; $ABBCA6  AD EE 00     mX
    STA $0378                       ; $ABBCA9  8D 78 03     mX
    LDA $00F2                       ; $ABBCAC  AD F2 00     mX
    STA $037A                       ; $ABBCAF  8D 7A 03     mX
    LDA $002A                       ; $ABBCB2  AD 2A 00     mX
    ORA $00F3                       ; $ABBCB5  0D F3 00     mX
    STA $037B                       ; $ABBCB8  8D 7B 03     mX
    REP #$20                        ; $ABBCBB  C2 20        mX
    LDA #$007C                      ; $ABBCBD  A9 7C 00     MX
    STA ($10)                       ; $ABBCC0  92 10        MX
    RTS                             ; $ABBCC2  60           MX
L_ABBCC3:
    STZ $00EC                       ; $ABBCC3  9C EC 00     MX
    LDA $00EE                       ; $ABBCC6  AD EE 00     MX
    CLC                             ; $ABBCC9  18           MX
    ADC #$0004                      ; $ABBCCA  69 04 00     MX
    STA $00EE                       ; $ABBCCD  8D EE 00     MX
    CMP #$0100                      ; $ABBCD0  C9 00 01     MX
    BCC L_ABBCDE                    ; $ABBCD3  90 09        MX
    INC $00EC                       ; $ABBCD5  EE EC 00     MX
    CMP #$FFF8                      ; $ABBCD8  C9 F8 FF     MX
    BCS L_ABBCDE                    ; $ABBCDB  B0 01        MX
    RTS                             ; $ABBCDD  60           MX
L_ABBCDE:
    LDA $00F0                       ; $ABBCDE  AD F0 00     MX
    CMP #$00E0                      ; $ABBCE1  C9 E0 00     MX
    BCC L_ABBCEC                    ; $ABBCE4  90 06        MX
    CMP #$FFF0                      ; $ABBCE6  C9 F0 FF     MX
    BCS L_ABBCEC                    ; $ABBCE9  B0 01        MX
    RTS                             ; $ABBCEB  60           MX
L_ABBCEC:
    SEP #$20                        ; $ABBCEC  E2 20        MX
    LDA $00EC                       ; $ABBCEE  AD EC 00     mX
    BEQ L_ABBCFD                    ; $ABBCF1  F0 0A        mX
    LDA $ABE4D8                     ; $ABBCF3  AF D8 E4 AB  mX
    ORA $0507                       ; $ABBCF7  0D 07 05     mX
    STA $0507                       ; $ABBCFA  8D 07 05     mX
L_ABBCFD:
    LDA $00F0                       ; $ABBCFD  AD F0 00     mX
    STA $037D                       ; $ABBD00  8D 7D 03     mX
    LDA $00EE                       ; $ABBD03  AD EE 00     mX
    STA $037C                       ; $ABBD06  8D 7C 03     mX
    LDA $00F2                       ; $ABBD09  AD F2 00     mX
    STA $037E                       ; $ABBD0C  8D 7E 03     mX
    LDA $002A                       ; $ABBD0F  AD 2A 00     mX
    ORA $00F3                       ; $ABBD12  0D F3 00     mX
    STA $037F                       ; $ABBD15  8D 7F 03     mX
    REP #$20                        ; $ABBD18  C2 20        mX
    LDA #$0080                      ; $ABBD1A  A9 80 00     MX
    STA ($10)                       ; $ABBD1D  92 10        MX
    RTS                             ; $ABBD1F  60           MX
L_ABBD20:
    STZ $00EC                       ; $ABBD20  9C EC 00     MX
    LDA $00EE                       ; $ABBD23  AD EE 00     MX
    CLC                             ; $ABBD26  18           MX
    ADC #$0004                      ; $ABBD27  69 04 00     MX
    STA $00EE                       ; $ABBD2A  8D EE 00     MX
    CMP #$0100                      ; $ABBD2D  C9 00 01     MX
    BCC L_ABBD3B                    ; $ABBD30  90 09        MX
    INC $00EC                       ; $ABBD32  EE EC 00     MX
    CMP #$FFF8                      ; $ABBD35  C9 F8 FF     MX
    BCS L_ABBD3B                    ; $ABBD38  B0 01        MX
    RTS                             ; $ABBD3A  60           MX
L_ABBD3B:
    LDA $00F0                       ; $ABBD3B  AD F0 00     MX
    CMP #$00E0                      ; $ABBD3E  C9 E0 00     MX
    BCC L_ABBD49                    ; $ABBD41  90 06        MX
    CMP #$FFF0                      ; $ABBD43  C9 F0 FF     MX
    BCS L_ABBD49                    ; $ABBD46  B0 01        MX
    RTS                             ; $ABBD48  60           MX
L_ABBD49:
    SEP #$20                        ; $ABBD49  E2 20        MX
    LDA $00EC                       ; $ABBD4B  AD EC 00     mX
    BEQ L_ABBD5A                    ; $ABBD4E  F0 0A        mX
    LDA $ABE4D5                     ; $ABBD50  AF D5 E4 AB  mX
    ORA $0508                       ; $ABBD54  0D 08 05     mX
    STA $0508                       ; $ABBD57  8D 08 05     mX
L_ABBD5A:
    LDA $00F0                       ; $ABBD5A  AD F0 00     mX
    STA $0381                       ; $ABBD5D  8D 81 03     mX
    LDA $00EE                       ; $ABBD60  AD EE 00     mX
    STA $0380                       ; $ABBD63  8D 80 03     mX
    LDA $00F2                       ; $ABBD66  AD F2 00     mX
    STA $0382                       ; $ABBD69  8D 82 03     mX
    LDA $002A                       ; $ABBD6C  AD 2A 00     mX
    ORA $00F3                       ; $ABBD6F  0D F3 00     mX
    STA $0383                       ; $ABBD72  8D 83 03     mX
    REP #$20                        ; $ABBD75  C2 20        mX
    LDA #$0084                      ; $ABBD77  A9 84 00     MX
    STA ($10)                       ; $ABBD7A  92 10        MX
    RTS                             ; $ABBD7C  60           MX
L_ABBD7D:
    STZ $00EC                       ; $ABBD7D  9C EC 00     MX
    LDA $00EE                       ; $ABBD80  AD EE 00     MX
    CLC                             ; $ABBD83  18           MX
    ADC #$0004                      ; $ABBD84  69 04 00     MX
    STA $00EE                       ; $ABBD87  8D EE 00     MX
    CMP #$0100                      ; $ABBD8A  C9 00 01     MX
    BCC L_ABBD98                    ; $ABBD8D  90 09        MX
    INC $00EC                       ; $ABBD8F  EE EC 00     MX
    CMP #$FFF8                      ; $ABBD92  C9 F8 FF     MX
    BCS L_ABBD98                    ; $ABBD95  B0 01        MX
    RTS                             ; $ABBD97  60           MX
L_ABBD98:
    LDA $00F0                       ; $ABBD98  AD F0 00     MX
    CMP #$00E0                      ; $ABBD9B  C9 E0 00     MX
    BCC L_ABBDA6                    ; $ABBD9E  90 06        MX
    CMP #$FFF0                      ; $ABBDA0  C9 F0 FF     MX
    BCS L_ABBDA6                    ; $ABBDA3  B0 01        MX
    RTS                             ; $ABBDA5  60           MX
L_ABBDA6:
    SEP #$20                        ; $ABBDA6  E2 20        MX
    LDA $00EC                       ; $ABBDA8  AD EC 00     mX
    BEQ L_ABBDB7                    ; $ABBDAB  F0 0A        mX
    LDA $ABE4D6                     ; $ABBDAD  AF D6 E4 AB  mX
    ORA $0508                       ; $ABBDB1  0D 08 05     mX
    STA $0508                       ; $ABBDB4  8D 08 05     mX
L_ABBDB7:
    LDA $00F0                       ; $ABBDB7  AD F0 00     mX
    STA $0385                       ; $ABBDBA  8D 85 03     mX
    LDA $00EE                       ; $ABBDBD  AD EE 00     mX
    STA $0384                       ; $ABBDC0  8D 84 03     mX
    LDA $00F2                       ; $ABBDC3  AD F2 00     mX
    STA $0386                       ; $ABBDC6  8D 86 03     mX
    LDA $002A                       ; $ABBDC9  AD 2A 00     mX
    ORA $00F3                       ; $ABBDCC  0D F3 00     mX
    STA $0387                       ; $ABBDCF  8D 87 03     mX
    REP #$20                        ; $ABBDD2  C2 20        mX
    LDA #$0088                      ; $ABBDD4  A9 88 00     MX
    STA ($10)                       ; $ABBDD7  92 10        MX
    RTS                             ; $ABBDD9  60           MX
L_ABBDDA:
    STZ $00EC                       ; $ABBDDA  9C EC 00     MX
    LDA $00EE                       ; $ABBDDD  AD EE 00     MX
    CLC                             ; $ABBDE0  18           MX
    ADC #$0004                      ; $ABBDE1  69 04 00     MX
    STA $00EE                       ; $ABBDE4  8D EE 00     MX
    CMP #$0100                      ; $ABBDE7  C9 00 01     MX
    BCC L_ABBDF5                    ; $ABBDEA  90 09        MX
    INC $00EC                       ; $ABBDEC  EE EC 00     MX
    CMP #$FFF8                      ; $ABBDEF  C9 F8 FF     MX
    BCS L_ABBDF5                    ; $ABBDF2  B0 01        MX
    RTS                             ; $ABBDF4  60           MX
L_ABBDF5:
    LDA $00F0                       ; $ABBDF5  AD F0 00     MX
    CMP #$00E0                      ; $ABBDF8  C9 E0 00     MX
    BCC L_ABBE03                    ; $ABBDFB  90 06        MX
    CMP #$FFF0                      ; $ABBDFD  C9 F0 FF     MX
    BCS L_ABBE03                    ; $ABBE00  B0 01        MX
    RTS                             ; $ABBE02  60           MX
L_ABBE03:
    SEP #$20                        ; $ABBE03  E2 20        MX
    LDA $00EC                       ; $ABBE05  AD EC 00     mX
    BEQ L_ABBE14                    ; $ABBE08  F0 0A        mX
    LDA $ABE4D7                     ; $ABBE0A  AF D7 E4 AB  mX
    ORA $0508                       ; $ABBE0E  0D 08 05     mX
    STA $0508                       ; $ABBE11  8D 08 05     mX
L_ABBE14:
    LDA $00F0                       ; $ABBE14  AD F0 00     mX
    STA $0389                       ; $ABBE17  8D 89 03     mX
    LDA $00EE                       ; $ABBE1A  AD EE 00     mX
    STA $0388                       ; $ABBE1D  8D 88 03     mX
    LDA $00F2                       ; $ABBE20  AD F2 00     mX
    STA $038A                       ; $ABBE23  8D 8A 03     mX
    LDA $002A                       ; $ABBE26  AD 2A 00     mX
    ORA $00F3                       ; $ABBE29  0D F3 00     mX
    STA $038B                       ; $ABBE2C  8D 8B 03     mX
    REP #$20                        ; $ABBE2F  C2 20        mX
    LDA #$008C                      ; $ABBE31  A9 8C 00     MX
    STA ($10)                       ; $ABBE34  92 10        MX
    RTS                             ; $ABBE36  60           MX
L_ABBE37:
    STZ $00EC                       ; $ABBE37  9C EC 00     MX
    LDA $00EE                       ; $ABBE3A  AD EE 00     MX
    CLC                             ; $ABBE3D  18           MX
    ADC #$0004                      ; $ABBE3E  69 04 00     MX
    STA $00EE                       ; $ABBE41  8D EE 00     MX
    CMP #$0100                      ; $ABBE44  C9 00 01     MX
    BCC L_ABBE52                    ; $ABBE47  90 09        MX
    INC $00EC                       ; $ABBE49  EE EC 00     MX
    CMP #$FFF8                      ; $ABBE4C  C9 F8 FF     MX
    BCS L_ABBE52                    ; $ABBE4F  B0 01        MX
    RTS                             ; $ABBE51  60           MX
L_ABBE52:
    LDA $00F0                       ; $ABBE52  AD F0 00     MX
    CMP #$00E0                      ; $ABBE55  C9 E0 00     MX
    BCC L_ABBE60                    ; $ABBE58  90 06        MX
    CMP #$FFF0                      ; $ABBE5A  C9 F0 FF     MX
    BCS L_ABBE60                    ; $ABBE5D  B0 01        MX
    RTS                             ; $ABBE5F  60           MX
L_ABBE60:
    SEP #$20                        ; $ABBE60  E2 20        MX
    LDA $00EC                       ; $ABBE62  AD EC 00     mX
    BEQ L_ABBE71                    ; $ABBE65  F0 0A        mX
    LDA $ABE4D8                     ; $ABBE67  AF D8 E4 AB  mX
    ORA $0508                       ; $ABBE6B  0D 08 05     mX
    STA $0508                       ; $ABBE6E  8D 08 05     mX
L_ABBE71:
    LDA $00F0                       ; $ABBE71  AD F0 00     mX
    STA $038D                       ; $ABBE74  8D 8D 03     mX
    LDA $00EE                       ; $ABBE77  AD EE 00     mX
    STA $038C                       ; $ABBE7A  8D 8C 03     mX
    LDA $00F2                       ; $ABBE7D  AD F2 00     mX
    STA $038E                       ; $ABBE80  8D 8E 03     mX
    LDA $002A                       ; $ABBE83  AD 2A 00     mX
    ORA $00F3                       ; $ABBE86  0D F3 00     mX
    STA $038F                       ; $ABBE89  8D 8F 03     mX
    REP #$20                        ; $ABBE8C  C2 20        mX
    LDA #$0090                      ; $ABBE8E  A9 90 00     MX
    STA ($10)                       ; $ABBE91  92 10        MX
    RTS                             ; $ABBE93  60           MX
L_ABBE94:
    STZ $00EC                       ; $ABBE94  9C EC 00     MX
    LDA $00EE                       ; $ABBE97  AD EE 00     MX
    CLC                             ; $ABBE9A  18           MX
    ADC #$0004                      ; $ABBE9B  69 04 00     MX
    STA $00EE                       ; $ABBE9E  8D EE 00     MX
    CMP #$0100                      ; $ABBEA1  C9 00 01     MX
    BCC L_ABBEAF                    ; $ABBEA4  90 09        MX
    INC $00EC                       ; $ABBEA6  EE EC 00     MX
    CMP #$FFF8                      ; $ABBEA9  C9 F8 FF     MX
    BCS L_ABBEAF                    ; $ABBEAC  B0 01        MX
    RTS                             ; $ABBEAE  60           MX
L_ABBEAF:
    LDA $00F0                       ; $ABBEAF  AD F0 00     MX
    CMP #$00E0                      ; $ABBEB2  C9 E0 00     MX
    BCC L_ABBEBD                    ; $ABBEB5  90 06        MX
    CMP #$FFF0                      ; $ABBEB7  C9 F0 FF     MX
    BCS L_ABBEBD                    ; $ABBEBA  B0 01        MX
    RTS                             ; $ABBEBC  60           MX
L_ABBEBD:
    SEP #$20                        ; $ABBEBD  E2 20        MX
    LDA $00EC                       ; $ABBEBF  AD EC 00     mX
    BEQ L_ABBECE                    ; $ABBEC2  F0 0A        mX
    LDA $ABE4D5                     ; $ABBEC4  AF D5 E4 AB  mX
    ORA $0509                       ; $ABBEC8  0D 09 05     mX
    STA $0509                       ; $ABBECB  8D 09 05     mX
L_ABBECE:
    LDA $00F0                       ; $ABBECE  AD F0 00     mX
    STA $0391                       ; $ABBED1  8D 91 03     mX
    LDA $00EE                       ; $ABBED4  AD EE 00     mX
    STA $0390                       ; $ABBED7  8D 90 03     mX
    LDA $00F2                       ; $ABBEDA  AD F2 00     mX
    STA $0392                       ; $ABBEDD  8D 92 03     mX
    LDA $002A                       ; $ABBEE0  AD 2A 00     mX
    ORA $00F3                       ; $ABBEE3  0D F3 00     mX
    STA $0393                       ; $ABBEE6  8D 93 03     mX
    REP #$20                        ; $ABBEE9  C2 20        mX
    LDA #$0094                      ; $ABBEEB  A9 94 00     MX
    STA ($10)                       ; $ABBEEE  92 10        MX
    RTS                             ; $ABBEF0  60           MX
L_ABBEF1:
    STZ $00EC                       ; $ABBEF1  9C EC 00     MX
    LDA $00EE                       ; $ABBEF4  AD EE 00     MX
    CLC                             ; $ABBEF7  18           MX
    ADC #$0004                      ; $ABBEF8  69 04 00     MX
    STA $00EE                       ; $ABBEFB  8D EE 00     MX
    CMP #$0100                      ; $ABBEFE  C9 00 01     MX
    BCC L_ABBF0C                    ; $ABBF01  90 09        MX
    INC $00EC                       ; $ABBF03  EE EC 00     MX
    CMP #$FFF8                      ; $ABBF06  C9 F8 FF     MX
    BCS L_ABBF0C                    ; $ABBF09  B0 01        MX
    RTS                             ; $ABBF0B  60           MX
L_ABBF0C:
    LDA $00F0                       ; $ABBF0C  AD F0 00     MX
    CMP #$00E0                      ; $ABBF0F  C9 E0 00     MX
    BCC L_ABBF1A                    ; $ABBF12  90 06        MX
    CMP #$FFF0                      ; $ABBF14  C9 F0 FF     MX
    BCS L_ABBF1A                    ; $ABBF17  B0 01        MX
    RTS                             ; $ABBF19  60           MX
L_ABBF1A:
    SEP #$20                        ; $ABBF1A  E2 20        MX
    LDA $00EC                       ; $ABBF1C  AD EC 00     mX
    BEQ L_ABBF2B                    ; $ABBF1F  F0 0A        mX
    LDA $ABE4D6                     ; $ABBF21  AF D6 E4 AB  mX
    ORA $0509                       ; $ABBF25  0D 09 05     mX
    STA $0509                       ; $ABBF28  8D 09 05     mX
L_ABBF2B:
    LDA $00F0                       ; $ABBF2B  AD F0 00     mX
    STA $0395                       ; $ABBF2E  8D 95 03     mX
    LDA $00EE                       ; $ABBF31  AD EE 00     mX
    STA $0394                       ; $ABBF34  8D 94 03     mX
    LDA $00F2                       ; $ABBF37  AD F2 00     mX
    STA $0396                       ; $ABBF3A  8D 96 03     mX
    LDA $002A                       ; $ABBF3D  AD 2A 00     mX
    ORA $00F3                       ; $ABBF40  0D F3 00     mX
    STA $0397                       ; $ABBF43  8D 97 03     mX
    REP #$20                        ; $ABBF46  C2 20        mX
    LDA #$0098                      ; $ABBF48  A9 98 00     MX
    STA ($10)                       ; $ABBF4B  92 10        MX
    RTS                             ; $ABBF4D  60           MX
L_ABBF4E:
    STZ $00EC                       ; $ABBF4E  9C EC 00     MX
    LDA $00EE                       ; $ABBF51  AD EE 00     MX
    CLC                             ; $ABBF54  18           MX
    ADC #$0004                      ; $ABBF55  69 04 00     MX
    STA $00EE                       ; $ABBF58  8D EE 00     MX
    CMP #$0100                      ; $ABBF5B  C9 00 01     MX
    BCC L_ABBF69                    ; $ABBF5E  90 09        MX
    INC $00EC                       ; $ABBF60  EE EC 00     MX
    CMP #$FFF8                      ; $ABBF63  C9 F8 FF     MX
    BCS L_ABBF69                    ; $ABBF66  B0 01        MX
    RTS                             ; $ABBF68  60           MX
L_ABBF69:
    LDA $00F0                       ; $ABBF69  AD F0 00     MX
    CMP #$00E0                      ; $ABBF6C  C9 E0 00     MX
    BCC L_ABBF77                    ; $ABBF6F  90 06        MX
    CMP #$FFF0                      ; $ABBF71  C9 F0 FF     MX
    BCS L_ABBF77                    ; $ABBF74  B0 01        MX
    RTS                             ; $ABBF76  60           MX
L_ABBF77:
    SEP #$20                        ; $ABBF77  E2 20        MX
    LDA $00EC                       ; $ABBF79  AD EC 00     mX
    BEQ L_ABBF88                    ; $ABBF7C  F0 0A        mX
    LDA $ABE4D7                     ; $ABBF7E  AF D7 E4 AB  mX
    ORA $0509                       ; $ABBF82  0D 09 05     mX
    STA $0509                       ; $ABBF85  8D 09 05     mX
L_ABBF88:
    LDA $00F0                       ; $ABBF88  AD F0 00     mX
    STA $0399                       ; $ABBF8B  8D 99 03     mX
    LDA $00EE                       ; $ABBF8E  AD EE 00     mX
    STA $0398                       ; $ABBF91  8D 98 03     mX
    LDA $00F2                       ; $ABBF94  AD F2 00     mX
    STA $039A                       ; $ABBF97  8D 9A 03     mX
    LDA $002A                       ; $ABBF9A  AD 2A 00     mX
    ORA $00F3                       ; $ABBF9D  0D F3 00     mX
    STA $039B                       ; $ABBFA0  8D 9B 03     mX
    REP #$20                        ; $ABBFA3  C2 20        mX
    LDA #$009C                      ; $ABBFA5  A9 9C 00     MX
    STA ($10)                       ; $ABBFA8  92 10        MX
    RTS                             ; $ABBFAA  60           MX
L_ABBFAB:
    STZ $00EC                       ; $ABBFAB  9C EC 00     MX
    LDA $00EE                       ; $ABBFAE  AD EE 00     MX
    CLC                             ; $ABBFB1  18           MX
    ADC #$0004                      ; $ABBFB2  69 04 00     MX
    STA $00EE                       ; $ABBFB5  8D EE 00     MX
    CMP #$0100                      ; $ABBFB8  C9 00 01     MX
    BCC L_ABBFC6                    ; $ABBFBB  90 09        MX
    INC $00EC                       ; $ABBFBD  EE EC 00     MX
    CMP #$FFF8                      ; $ABBFC0  C9 F8 FF     MX
    BCS L_ABBFC6                    ; $ABBFC3  B0 01        MX
    RTS                             ; $ABBFC5  60           MX
L_ABBFC6:
    LDA $00F0                       ; $ABBFC6  AD F0 00     MX
    CMP #$00E0                      ; $ABBFC9  C9 E0 00     MX
    BCC L_ABBFD4                    ; $ABBFCC  90 06        MX
    CMP #$FFF0                      ; $ABBFCE  C9 F0 FF     MX
    BCS L_ABBFD4                    ; $ABBFD1  B0 01        MX
    RTS                             ; $ABBFD3  60           MX
L_ABBFD4:
    SEP #$20                        ; $ABBFD4  E2 20        MX
    LDA $00EC                       ; $ABBFD6  AD EC 00     mX
    BEQ L_ABBFE5                    ; $ABBFD9  F0 0A        mX
    LDA $ABE4D8                     ; $ABBFDB  AF D8 E4 AB  mX
    ORA $0509                       ; $ABBFDF  0D 09 05     mX
    STA $0509                       ; $ABBFE2  8D 09 05     mX
L_ABBFE5:
    LDA $00F0                       ; $ABBFE5  AD F0 00     mX
    STA $039D                       ; $ABBFE8  8D 9D 03     mX
    LDA $00EE                       ; $ABBFEB  AD EE 00     mX
    STA $039C                       ; $ABBFEE  8D 9C 03     mX
    LDA $00F2                       ; $ABBFF1  AD F2 00     mX
    STA $039E                       ; $ABBFF4  8D 9E 03     mX
    LDA $002A                       ; $ABBFF7  AD 2A 00     mX
    ORA $00F3                       ; $ABBFFA  0D F3 00     mX
    STA $039F                       ; $ABBFFD  8D 9F 03     mX
    REP #$20                        ; $ABC000  C2 20        mX
    LDA #$00A0                      ; $ABC002  A9 A0 00     MX
    STA ($10)                       ; $ABC005  92 10        MX
    RTS                             ; $ABC007  60           MX
L_ABC008:
    STZ $00EC                       ; $ABC008  9C EC 00     MX
    LDA $00EE                       ; $ABC00B  AD EE 00     MX
    CLC                             ; $ABC00E  18           MX
    ADC #$0004                      ; $ABC00F  69 04 00     MX
    STA $00EE                       ; $ABC012  8D EE 00     MX
    CMP #$0100                      ; $ABC015  C9 00 01     MX
    BCC L_ABC023                    ; $ABC018  90 09        MX
    INC $00EC                       ; $ABC01A  EE EC 00     MX
    CMP #$FFF8                      ; $ABC01D  C9 F8 FF     MX
    BCS L_ABC023                    ; $ABC020  B0 01        MX
    RTS                             ; $ABC022  60           MX
L_ABC023:
    LDA $00F0                       ; $ABC023  AD F0 00     MX
    CMP #$00E0                      ; $ABC026  C9 E0 00     MX
    BCC L_ABC031                    ; $ABC029  90 06        MX
    CMP #$FFF0                      ; $ABC02B  C9 F0 FF     MX
    BCS L_ABC031                    ; $ABC02E  B0 01        MX
    RTS                             ; $ABC030  60           MX
L_ABC031:
    SEP #$20                        ; $ABC031  E2 20        MX
    LDA $00EC                       ; $ABC033  AD EC 00     mX
    BEQ L_ABC042                    ; $ABC036  F0 0A        mX
    LDA $ABE4D5                     ; $ABC038  AF D5 E4 AB  mX
    ORA $050A                       ; $ABC03C  0D 0A 05     mX
    STA $050A                       ; $ABC03F  8D 0A 05     mX
L_ABC042:
    LDA $00F0                       ; $ABC042  AD F0 00     mX
    STA $03A1                       ; $ABC045  8D A1 03     mX
    LDA $00EE                       ; $ABC048  AD EE 00     mX
    STA $03A0                       ; $ABC04B  8D A0 03     mX
    LDA $00F2                       ; $ABC04E  AD F2 00     mX
    STA $03A2                       ; $ABC051  8D A2 03     mX
    LDA $002A                       ; $ABC054  AD 2A 00     mX
    ORA $00F3                       ; $ABC057  0D F3 00     mX
    STA $03A3                       ; $ABC05A  8D A3 03     mX
    REP #$20                        ; $ABC05D  C2 20        mX
    LDA #$00A4                      ; $ABC05F  A9 A4 00     MX
    STA ($10)                       ; $ABC062  92 10        MX
    RTS                             ; $ABC064  60           MX
L_ABC065:
    STZ $00EC                       ; $ABC065  9C EC 00     MX
    LDA $00EE                       ; $ABC068  AD EE 00     MX
    CLC                             ; $ABC06B  18           MX
    ADC #$0004                      ; $ABC06C  69 04 00     MX
    STA $00EE                       ; $ABC06F  8D EE 00     MX
    CMP #$0100                      ; $ABC072  C9 00 01     MX
    BCC L_ABC080                    ; $ABC075  90 09        MX
    INC $00EC                       ; $ABC077  EE EC 00     MX
    CMP #$FFF8                      ; $ABC07A  C9 F8 FF     MX
    BCS L_ABC080                    ; $ABC07D  B0 01        MX
    RTS                             ; $ABC07F  60           MX
L_ABC080:
    LDA $00F0                       ; $ABC080  AD F0 00     MX
    CMP #$00E0                      ; $ABC083  C9 E0 00     MX
    BCC L_ABC08E                    ; $ABC086  90 06        MX
    CMP #$FFF0                      ; $ABC088  C9 F0 FF     MX
    BCS L_ABC08E                    ; $ABC08B  B0 01        MX
    RTS                             ; $ABC08D  60           MX
L_ABC08E:
    SEP #$20                        ; $ABC08E  E2 20        MX
    LDA $00EC                       ; $ABC090  AD EC 00     mX
    BEQ L_ABC09F                    ; $ABC093  F0 0A        mX
    LDA $ABE4D6                     ; $ABC095  AF D6 E4 AB  mX
    ORA $050A                       ; $ABC099  0D 0A 05     mX
    STA $050A                       ; $ABC09C  8D 0A 05     mX
L_ABC09F:
    LDA $00F0                       ; $ABC09F  AD F0 00     mX
    STA $03A5                       ; $ABC0A2  8D A5 03     mX
    LDA $00EE                       ; $ABC0A5  AD EE 00     mX
    STA $03A4                       ; $ABC0A8  8D A4 03     mX
    LDA $00F2                       ; $ABC0AB  AD F2 00     mX
    STA $03A6                       ; $ABC0AE  8D A6 03     mX
    LDA $002A                       ; $ABC0B1  AD 2A 00     mX
    ORA $00F3                       ; $ABC0B4  0D F3 00     mX
    STA $03A7                       ; $ABC0B7  8D A7 03     mX
    REP #$20                        ; $ABC0BA  C2 20        mX
    LDA #$00A8                      ; $ABC0BC  A9 A8 00     MX
    STA ($10)                       ; $ABC0BF  92 10        MX
    RTS                             ; $ABC0C1  60           MX
L_ABC0C2:
    STZ $00EC                       ; $ABC0C2  9C EC 00     MX
    LDA $00EE                       ; $ABC0C5  AD EE 00     MX
    CLC                             ; $ABC0C8  18           MX
    ADC #$0004                      ; $ABC0C9  69 04 00     MX
    STA $00EE                       ; $ABC0CC  8D EE 00     MX
    CMP #$0100                      ; $ABC0CF  C9 00 01     MX
    BCC L_ABC0DD                    ; $ABC0D2  90 09        MX
    INC $00EC                       ; $ABC0D4  EE EC 00     MX
    CMP #$FFF8                      ; $ABC0D7  C9 F8 FF     MX
    BCS L_ABC0DD                    ; $ABC0DA  B0 01        MX
    RTS                             ; $ABC0DC  60           MX
L_ABC0DD:
    LDA $00F0                       ; $ABC0DD  AD F0 00     MX
    CMP #$00E0                      ; $ABC0E0  C9 E0 00     MX
    BCC L_ABC0EB                    ; $ABC0E3  90 06        MX
    CMP #$FFF0                      ; $ABC0E5  C9 F0 FF     MX
    BCS L_ABC0EB                    ; $ABC0E8  B0 01        MX
    RTS                             ; $ABC0EA  60           MX
L_ABC0EB:
    SEP #$20                        ; $ABC0EB  E2 20        MX
    LDA $00EC                       ; $ABC0ED  AD EC 00     mX
    BEQ L_ABC0FC                    ; $ABC0F0  F0 0A        mX
    LDA $ABE4D7                     ; $ABC0F2  AF D7 E4 AB  mX
    ORA $050A                       ; $ABC0F6  0D 0A 05     mX
    STA $050A                       ; $ABC0F9  8D 0A 05     mX
L_ABC0FC:
    LDA $00F0                       ; $ABC0FC  AD F0 00     mX
    STA $03A9                       ; $ABC0FF  8D A9 03     mX
    LDA $00EE                       ; $ABC102  AD EE 00     mX
    STA $03A8                       ; $ABC105  8D A8 03     mX
    LDA $00F2                       ; $ABC108  AD F2 00     mX
    STA $03AA                       ; $ABC10B  8D AA 03     mX
    LDA $002A                       ; $ABC10E  AD 2A 00     mX
    ORA $00F3                       ; $ABC111  0D F3 00     mX
    STA $03AB                       ; $ABC114  8D AB 03     mX
    REP #$20                        ; $ABC117  C2 20        mX
    LDA #$00AC                      ; $ABC119  A9 AC 00     MX
    STA ($10)                       ; $ABC11C  92 10        MX
    RTS                             ; $ABC11E  60           MX
L_ABC11F:
    STZ $00EC                       ; $ABC11F  9C EC 00     MX
    LDA $00EE                       ; $ABC122  AD EE 00     MX
    CLC                             ; $ABC125  18           MX
    ADC #$0004                      ; $ABC126  69 04 00     MX
    STA $00EE                       ; $ABC129  8D EE 00     MX
    CMP #$0100                      ; $ABC12C  C9 00 01     MX
    BCC L_ABC13A                    ; $ABC12F  90 09        MX
    INC $00EC                       ; $ABC131  EE EC 00     MX
    CMP #$FFF8                      ; $ABC134  C9 F8 FF     MX
    BCS L_ABC13A                    ; $ABC137  B0 01        MX
    RTS                             ; $ABC139  60           MX
L_ABC13A:
    LDA $00F0                       ; $ABC13A  AD F0 00     MX
    CMP #$00E0                      ; $ABC13D  C9 E0 00     MX
    BCC L_ABC148                    ; $ABC140  90 06        MX
    CMP #$FFF0                      ; $ABC142  C9 F0 FF     MX
    BCS L_ABC148                    ; $ABC145  B0 01        MX
    RTS                             ; $ABC147  60           MX
L_ABC148:
    SEP #$20                        ; $ABC148  E2 20        MX
    LDA $00EC                       ; $ABC14A  AD EC 00     mX
    BEQ L_ABC159                    ; $ABC14D  F0 0A        mX
    LDA $ABE4D8                     ; $ABC14F  AF D8 E4 AB  mX
    ORA $050A                       ; $ABC153  0D 0A 05     mX
    STA $050A                       ; $ABC156  8D 0A 05     mX
L_ABC159:
    LDA $00F0                       ; $ABC159  AD F0 00     mX
    STA $03AD                       ; $ABC15C  8D AD 03     mX
    LDA $00EE                       ; $ABC15F  AD EE 00     mX
    STA $03AC                       ; $ABC162  8D AC 03     mX
    LDA $00F2                       ; $ABC165  AD F2 00     mX
    STA $03AE                       ; $ABC168  8D AE 03     mX
    LDA $002A                       ; $ABC16B  AD 2A 00     mX
    ORA $00F3                       ; $ABC16E  0D F3 00     mX
    STA $03AF                       ; $ABC171  8D AF 03     mX
    REP #$20                        ; $ABC174  C2 20        mX
    LDA #$00B0                      ; $ABC176  A9 B0 00     MX
    STA ($10)                       ; $ABC179  92 10        MX
    RTS                             ; $ABC17B  60           MX
L_ABC17C:
    STZ $00EC                       ; $ABC17C  9C EC 00     MX
    LDA $00EE                       ; $ABC17F  AD EE 00     MX
    CLC                             ; $ABC182  18           MX
    ADC #$0004                      ; $ABC183  69 04 00     MX
    STA $00EE                       ; $ABC186  8D EE 00     MX
    CMP #$0100                      ; $ABC189  C9 00 01     MX
    BCC L_ABC197                    ; $ABC18C  90 09        MX
    INC $00EC                       ; $ABC18E  EE EC 00     MX
    CMP #$FFF8                      ; $ABC191  C9 F8 FF     MX
    BCS L_ABC197                    ; $ABC194  B0 01        MX
    RTS                             ; $ABC196  60           MX
L_ABC197:
    LDA $00F0                       ; $ABC197  AD F0 00     MX
    CMP #$00E0                      ; $ABC19A  C9 E0 00     MX
    BCC L_ABC1A5                    ; $ABC19D  90 06        MX
    CMP #$FFF0                      ; $ABC19F  C9 F0 FF     MX
    BCS L_ABC1A5                    ; $ABC1A2  B0 01        MX
    RTS                             ; $ABC1A4  60           MX
L_ABC1A5:
    SEP #$20                        ; $ABC1A5  E2 20        MX
    LDA $00EC                       ; $ABC1A7  AD EC 00     mX
    BEQ L_ABC1B6                    ; $ABC1AA  F0 0A        mX
    LDA $ABE4D5                     ; $ABC1AC  AF D5 E4 AB  mX
    ORA $050B                       ; $ABC1B0  0D 0B 05     mX
    STA $050B                       ; $ABC1B3  8D 0B 05     mX
L_ABC1B6:
    LDA $00F0                       ; $ABC1B6  AD F0 00     mX
    STA $03B1                       ; $ABC1B9  8D B1 03     mX
    LDA $00EE                       ; $ABC1BC  AD EE 00     mX
    STA $03B0                       ; $ABC1BF  8D B0 03     mX
    LDA $00F2                       ; $ABC1C2  AD F2 00     mX
    STA $03B2                       ; $ABC1C5  8D B2 03     mX
    LDA $002A                       ; $ABC1C8  AD 2A 00     mX
    ORA $00F3                       ; $ABC1CB  0D F3 00     mX
    STA $03B3                       ; $ABC1CE  8D B3 03     mX
    REP #$20                        ; $ABC1D1  C2 20        mX
    LDA #$00B4                      ; $ABC1D3  A9 B4 00     MX
    STA ($10)                       ; $ABC1D6  92 10        MX
    RTS                             ; $ABC1D8  60           MX
L_ABC1D9:
    STZ $00EC                       ; $ABC1D9  9C EC 00     MX
    LDA $00EE                       ; $ABC1DC  AD EE 00     MX
    CLC                             ; $ABC1DF  18           MX
    ADC #$0004                      ; $ABC1E0  69 04 00     MX
    STA $00EE                       ; $ABC1E3  8D EE 00     MX
    CMP #$0100                      ; $ABC1E6  C9 00 01     MX
    BCC L_ABC1F4                    ; $ABC1E9  90 09        MX
    INC $00EC                       ; $ABC1EB  EE EC 00     MX
    CMP #$FFF8                      ; $ABC1EE  C9 F8 FF     MX
    BCS L_ABC1F4                    ; $ABC1F1  B0 01        MX
    RTS                             ; $ABC1F3  60           MX
L_ABC1F4:
    LDA $00F0                       ; $ABC1F4  AD F0 00     MX
    CMP #$00E0                      ; $ABC1F7  C9 E0 00     MX
    BCC L_ABC202                    ; $ABC1FA  90 06        MX
    CMP #$FFF0                      ; $ABC1FC  C9 F0 FF     MX
    BCS L_ABC202                    ; $ABC1FF  B0 01        MX
    RTS                             ; $ABC201  60           MX
L_ABC202:
    SEP #$20                        ; $ABC202  E2 20        MX
    LDA $00EC                       ; $ABC204  AD EC 00     mX
    BEQ L_ABC213                    ; $ABC207  F0 0A        mX
    LDA $ABE4D6                     ; $ABC209  AF D6 E4 AB  mX
    ORA $050B                       ; $ABC20D  0D 0B 05     mX
    STA $050B                       ; $ABC210  8D 0B 05     mX
L_ABC213:
    LDA $00F0                       ; $ABC213  AD F0 00     mX
    STA $03B5                       ; $ABC216  8D B5 03     mX
    LDA $00EE                       ; $ABC219  AD EE 00     mX
    STA $03B4                       ; $ABC21C  8D B4 03     mX
    LDA $00F2                       ; $ABC21F  AD F2 00     mX
    STA $03B6                       ; $ABC222  8D B6 03     mX
    LDA $002A                       ; $ABC225  AD 2A 00     mX
    ORA $00F3                       ; $ABC228  0D F3 00     mX
    STA $03B7                       ; $ABC22B  8D B7 03     mX
    REP #$20                        ; $ABC22E  C2 20        mX
    LDA #$00B8                      ; $ABC230  A9 B8 00     MX
    STA ($10)                       ; $ABC233  92 10        MX
    RTS                             ; $ABC235  60           MX
L_ABC236:
    STZ $00EC                       ; $ABC236  9C EC 00     MX
    LDA $00EE                       ; $ABC239  AD EE 00     MX
    CLC                             ; $ABC23C  18           MX
    ADC #$0004                      ; $ABC23D  69 04 00     MX
    STA $00EE                       ; $ABC240  8D EE 00     MX
    CMP #$0100                      ; $ABC243  C9 00 01     MX
    BCC L_ABC251                    ; $ABC246  90 09        MX
    INC $00EC                       ; $ABC248  EE EC 00     MX
    CMP #$FFF8                      ; $ABC24B  C9 F8 FF     MX
    BCS L_ABC251                    ; $ABC24E  B0 01        MX
    RTS                             ; $ABC250  60           MX
L_ABC251:
    LDA $00F0                       ; $ABC251  AD F0 00     MX
    CMP #$00E0                      ; $ABC254  C9 E0 00     MX
    BCC L_ABC25F                    ; $ABC257  90 06        MX
    CMP #$FFF0                      ; $ABC259  C9 F0 FF     MX
    BCS L_ABC25F                    ; $ABC25C  B0 01        MX
    RTS                             ; $ABC25E  60           MX
L_ABC25F:
    SEP #$20                        ; $ABC25F  E2 20        MX
    LDA $00EC                       ; $ABC261  AD EC 00     mX
    BEQ L_ABC270                    ; $ABC264  F0 0A        mX
    LDA $ABE4D7                     ; $ABC266  AF D7 E4 AB  mX
    ORA $050B                       ; $ABC26A  0D 0B 05     mX
    STA $050B                       ; $ABC26D  8D 0B 05     mX
L_ABC270:
    LDA $00F0                       ; $ABC270  AD F0 00     mX
    STA $03B9                       ; $ABC273  8D B9 03     mX
    LDA $00EE                       ; $ABC276  AD EE 00     mX
    STA $03B8                       ; $ABC279  8D B8 03     mX
    LDA $00F2                       ; $ABC27C  AD F2 00     mX
    STA $03BA                       ; $ABC27F  8D BA 03     mX
    LDA $002A                       ; $ABC282  AD 2A 00     mX
    ORA $00F3                       ; $ABC285  0D F3 00     mX
    STA $03BB                       ; $ABC288  8D BB 03     mX
    REP #$20                        ; $ABC28B  C2 20        mX
    LDA #$00BC                      ; $ABC28D  A9 BC 00     MX
    STA ($10)                       ; $ABC290  92 10        MX
    RTS                             ; $ABC292  60           MX
L_ABC293:
    STZ $00EC                       ; $ABC293  9C EC 00     MX
    LDA $00EE                       ; $ABC296  AD EE 00     MX
    CLC                             ; $ABC299  18           MX
    ADC #$0004                      ; $ABC29A  69 04 00     MX
    STA $00EE                       ; $ABC29D  8D EE 00     MX
    CMP #$0100                      ; $ABC2A0  C9 00 01     MX
    BCC L_ABC2AE                    ; $ABC2A3  90 09        MX
    INC $00EC                       ; $ABC2A5  EE EC 00     MX
    CMP #$FFF8                      ; $ABC2A8  C9 F8 FF     MX
    BCS L_ABC2AE                    ; $ABC2AB  B0 01        MX
    RTS                             ; $ABC2AD  60           MX
L_ABC2AE:
    LDA $00F0                       ; $ABC2AE  AD F0 00     MX
    CMP #$00E0                      ; $ABC2B1  C9 E0 00     MX
    BCC L_ABC2BC                    ; $ABC2B4  90 06        MX
    CMP #$FFF0                      ; $ABC2B6  C9 F0 FF     MX
    BCS L_ABC2BC                    ; $ABC2B9  B0 01        MX
    RTS                             ; $ABC2BB  60           MX
L_ABC2BC:
    SEP #$20                        ; $ABC2BC  E2 20        MX
    LDA $00EC                       ; $ABC2BE  AD EC 00     mX
    BEQ L_ABC2CD                    ; $ABC2C1  F0 0A        mX
    LDA $ABE4D8                     ; $ABC2C3  AF D8 E4 AB  mX
    ORA $050B                       ; $ABC2C7  0D 0B 05     mX
    STA $050B                       ; $ABC2CA  8D 0B 05     mX
L_ABC2CD:
    LDA $00F0                       ; $ABC2CD  AD F0 00     mX
    STA $03BD                       ; $ABC2D0  8D BD 03     mX
    LDA $00EE                       ; $ABC2D3  AD EE 00     mX
    STA $03BC                       ; $ABC2D6  8D BC 03     mX
    LDA $00F2                       ; $ABC2D9  AD F2 00     mX
    STA $03BE                       ; $ABC2DC  8D BE 03     mX
    LDA $002A                       ; $ABC2DF  AD 2A 00     mX
    ORA $00F3                       ; $ABC2E2  0D F3 00     mX
    STA $03BF                       ; $ABC2E5  8D BF 03     mX
    REP #$20                        ; $ABC2E8  C2 20        mX
    LDA #$00C0                      ; $ABC2EA  A9 C0 00     MX
    STA ($10)                       ; $ABC2ED  92 10        MX
    RTS                             ; $ABC2EF  60           MX
L_ABC2F0:
    STZ $00EC                       ; $ABC2F0  9C EC 00     MX
    LDA $00EE                       ; $ABC2F3  AD EE 00     MX
    CLC                             ; $ABC2F6  18           MX
    ADC #$0004                      ; $ABC2F7  69 04 00     MX
    STA $00EE                       ; $ABC2FA  8D EE 00     MX
    CMP #$0100                      ; $ABC2FD  C9 00 01     MX
    BCC L_ABC30B                    ; $ABC300  90 09        MX
    INC $00EC                       ; $ABC302  EE EC 00     MX
    CMP #$FFF8                      ; $ABC305  C9 F8 FF     MX
    BCS L_ABC30B                    ; $ABC308  B0 01        MX
    RTS                             ; $ABC30A  60           MX
L_ABC30B:
    LDA $00F0                       ; $ABC30B  AD F0 00     MX
    CMP #$00E0                      ; $ABC30E  C9 E0 00     MX
    BCC L_ABC319                    ; $ABC311  90 06        MX
    CMP #$FFF0                      ; $ABC313  C9 F0 FF     MX
    BCS L_ABC319                    ; $ABC316  B0 01        MX
    RTS                             ; $ABC318  60           MX
L_ABC319:
    SEP #$20                        ; $ABC319  E2 20        MX
    LDA $00EC                       ; $ABC31B  AD EC 00     mX
    BEQ L_ABC32A                    ; $ABC31E  F0 0A        mX
    LDA $ABE4D5                     ; $ABC320  AF D5 E4 AB  mX
    ORA $050C                       ; $ABC324  0D 0C 05     mX
    STA $050C                       ; $ABC327  8D 0C 05     mX
L_ABC32A:
    LDA $00F0                       ; $ABC32A  AD F0 00     mX
    STA $03C1                       ; $ABC32D  8D C1 03     mX
    LDA $00EE                       ; $ABC330  AD EE 00     mX
    STA $03C0                       ; $ABC333  8D C0 03     mX
    LDA $00F2                       ; $ABC336  AD F2 00     mX
    STA $03C2                       ; $ABC339  8D C2 03     mX
    LDA $002A                       ; $ABC33C  AD 2A 00     mX
    ORA $00F3                       ; $ABC33F  0D F3 00     mX
    STA $03C3                       ; $ABC342  8D C3 03     mX
    REP #$20                        ; $ABC345  C2 20        mX
    LDA #$00C4                      ; $ABC347  A9 C4 00     MX
    STA ($10)                       ; $ABC34A  92 10        MX
    RTS                             ; $ABC34C  60           MX
L_ABC34D:
    STZ $00EC                       ; $ABC34D  9C EC 00     MX
    LDA $00EE                       ; $ABC350  AD EE 00     MX
    CLC                             ; $ABC353  18           MX
    ADC #$0004                      ; $ABC354  69 04 00     MX
    STA $00EE                       ; $ABC357  8D EE 00     MX
    CMP #$0100                      ; $ABC35A  C9 00 01     MX
    BCC L_ABC368                    ; $ABC35D  90 09        MX
    INC $00EC                       ; $ABC35F  EE EC 00     MX
    CMP #$FFF8                      ; $ABC362  C9 F8 FF     MX
    BCS L_ABC368                    ; $ABC365  B0 01        MX
    RTS                             ; $ABC367  60           MX
L_ABC368:
    LDA $00F0                       ; $ABC368  AD F0 00     MX
    CMP #$00E0                      ; $ABC36B  C9 E0 00     MX
    BCC L_ABC376                    ; $ABC36E  90 06        MX
    CMP #$FFF0                      ; $ABC370  C9 F0 FF     MX
    BCS L_ABC376                    ; $ABC373  B0 01        MX
    RTS                             ; $ABC375  60           MX
L_ABC376:
    SEP #$20                        ; $ABC376  E2 20        MX
    LDA $00EC                       ; $ABC378  AD EC 00     mX
    BEQ L_ABC387                    ; $ABC37B  F0 0A        mX
    LDA $ABE4D6                     ; $ABC37D  AF D6 E4 AB  mX
    ORA $050C                       ; $ABC381  0D 0C 05     mX
    STA $050C                       ; $ABC384  8D 0C 05     mX
L_ABC387:
    LDA $00F0                       ; $ABC387  AD F0 00     mX
    STA $03C5                       ; $ABC38A  8D C5 03     mX
    LDA $00EE                       ; $ABC38D  AD EE 00     mX
    STA $03C4                       ; $ABC390  8D C4 03     mX
    LDA $00F2                       ; $ABC393  AD F2 00     mX
    STA $03C6                       ; $ABC396  8D C6 03     mX
    LDA $002A                       ; $ABC399  AD 2A 00     mX
    ORA $00F3                       ; $ABC39C  0D F3 00     mX
    STA $03C7                       ; $ABC39F  8D C7 03     mX
    REP #$20                        ; $ABC3A2  C2 20        mX
    LDA #$00C8                      ; $ABC3A4  A9 C8 00     MX
    STA ($10)                       ; $ABC3A7  92 10        MX
    RTS                             ; $ABC3A9  60           MX
L_ABC3AA:
    STZ $00EC                       ; $ABC3AA  9C EC 00     MX
    LDA $00EE                       ; $ABC3AD  AD EE 00     MX
    CLC                             ; $ABC3B0  18           MX
    ADC #$0004                      ; $ABC3B1  69 04 00     MX
    STA $00EE                       ; $ABC3B4  8D EE 00     MX
    CMP #$0100                      ; $ABC3B7  C9 00 01     MX
    BCC L_ABC3C5                    ; $ABC3BA  90 09        MX
    INC $00EC                       ; $ABC3BC  EE EC 00     MX
    CMP #$FFF8                      ; $ABC3BF  C9 F8 FF     MX
    BCS L_ABC3C5                    ; $ABC3C2  B0 01        MX
    RTS                             ; $ABC3C4  60           MX
L_ABC3C5:
    LDA $00F0                       ; $ABC3C5  AD F0 00     MX
    CMP #$00E0                      ; $ABC3C8  C9 E0 00     MX
    BCC L_ABC3D3                    ; $ABC3CB  90 06        MX
    CMP #$FFF0                      ; $ABC3CD  C9 F0 FF     MX
    BCS L_ABC3D3                    ; $ABC3D0  B0 01        MX
    RTS                             ; $ABC3D2  60           MX
L_ABC3D3:
    SEP #$20                        ; $ABC3D3  E2 20        MX
    LDA $00EC                       ; $ABC3D5  AD EC 00     mX
    BEQ L_ABC3E4                    ; $ABC3D8  F0 0A        mX
    LDA $ABE4D7                     ; $ABC3DA  AF D7 E4 AB  mX
    ORA $050C                       ; $ABC3DE  0D 0C 05     mX
    STA $050C                       ; $ABC3E1  8D 0C 05     mX
L_ABC3E4:
    LDA $00F0                       ; $ABC3E4  AD F0 00     mX
    STA $03C9                       ; $ABC3E7  8D C9 03     mX
    LDA $00EE                       ; $ABC3EA  AD EE 00     mX
    STA $03C8                       ; $ABC3ED  8D C8 03     mX
    LDA $00F2                       ; $ABC3F0  AD F2 00     mX
    STA $03CA                       ; $ABC3F3  8D CA 03     mX
    LDA $002A                       ; $ABC3F6  AD 2A 00     mX
    ORA $00F3                       ; $ABC3F9  0D F3 00     mX
    STA $03CB                       ; $ABC3FC  8D CB 03     mX
    REP #$20                        ; $ABC3FF  C2 20        mX
    LDA #$00CC                      ; $ABC401  A9 CC 00     MX
    STA ($10)                       ; $ABC404  92 10        MX
    RTS                             ; $ABC406  60           MX
L_ABC407:
    STZ $00EC                       ; $ABC407  9C EC 00     MX
    LDA $00EE                       ; $ABC40A  AD EE 00     MX
    CLC                             ; $ABC40D  18           MX
    ADC #$0004                      ; $ABC40E  69 04 00     MX
    STA $00EE                       ; $ABC411  8D EE 00     MX
    CMP #$0100                      ; $ABC414  C9 00 01     MX
    BCC L_ABC422                    ; $ABC417  90 09        MX
    INC $00EC                       ; $ABC419  EE EC 00     MX
    CMP #$FFF8                      ; $ABC41C  C9 F8 FF     MX
    BCS L_ABC422                    ; $ABC41F  B0 01        MX
    RTS                             ; $ABC421  60           MX
L_ABC422:
    LDA $00F0                       ; $ABC422  AD F0 00     MX
    CMP #$00E0                      ; $ABC425  C9 E0 00     MX
    BCC L_ABC430                    ; $ABC428  90 06        MX
    CMP #$FFF0                      ; $ABC42A  C9 F0 FF     MX
    BCS L_ABC430                    ; $ABC42D  B0 01        MX
    RTS                             ; $ABC42F  60           MX
L_ABC430:
    SEP #$20                        ; $ABC430  E2 20        MX
    LDA $00EC                       ; $ABC432  AD EC 00     mX
    BEQ L_ABC441                    ; $ABC435  F0 0A        mX
    LDA $ABE4D8                     ; $ABC437  AF D8 E4 AB  mX
    ORA $050C                       ; $ABC43B  0D 0C 05     mX
    STA $050C                       ; $ABC43E  8D 0C 05     mX
L_ABC441:
    LDA $00F0                       ; $ABC441  AD F0 00     mX
    STA $03CD                       ; $ABC444  8D CD 03     mX
    LDA $00EE                       ; $ABC447  AD EE 00     mX
    STA $03CC                       ; $ABC44A  8D CC 03     mX
    LDA $00F2                       ; $ABC44D  AD F2 00     mX
    STA $03CE                       ; $ABC450  8D CE 03     mX
    LDA $002A                       ; $ABC453  AD 2A 00     mX
    ORA $00F3                       ; $ABC456  0D F3 00     mX
    STA $03CF                       ; $ABC459  8D CF 03     mX
    REP #$20                        ; $ABC45C  C2 20        mX
    LDA #$00D0                      ; $ABC45E  A9 D0 00     MX
    STA ($10)                       ; $ABC461  92 10        MX
    RTS                             ; $ABC463  60           MX
L_ABC464:
    STZ $00EC                       ; $ABC464  9C EC 00     MX
    LDA $00EE                       ; $ABC467  AD EE 00     MX
    CLC                             ; $ABC46A  18           MX
    ADC #$0004                      ; $ABC46B  69 04 00     MX
    STA $00EE                       ; $ABC46E  8D EE 00     MX
    CMP #$0100                      ; $ABC471  C9 00 01     MX
    BCC L_ABC47F                    ; $ABC474  90 09        MX
    INC $00EC                       ; $ABC476  EE EC 00     MX
    CMP #$FFF8                      ; $ABC479  C9 F8 FF     MX
    BCS L_ABC47F                    ; $ABC47C  B0 01        MX
    RTS                             ; $ABC47E  60           MX
L_ABC47F:
    LDA $00F0                       ; $ABC47F  AD F0 00     MX
    CMP #$00E0                      ; $ABC482  C9 E0 00     MX
    BCC L_ABC48D                    ; $ABC485  90 06        MX
    CMP #$FFF0                      ; $ABC487  C9 F0 FF     MX
    BCS L_ABC48D                    ; $ABC48A  B0 01        MX
    RTS                             ; $ABC48C  60           MX
L_ABC48D:
    SEP #$20                        ; $ABC48D  E2 20        MX
    LDA $00EC                       ; $ABC48F  AD EC 00     mX
    BEQ L_ABC49E                    ; $ABC492  F0 0A        mX
    LDA $ABE4D5                     ; $ABC494  AF D5 E4 AB  mX
    ORA $050D                       ; $ABC498  0D 0D 05     mX
    STA $050D                       ; $ABC49B  8D 0D 05     mX
L_ABC49E:
    LDA $00F0                       ; $ABC49E  AD F0 00     mX
    STA $03D1                       ; $ABC4A1  8D D1 03     mX
    LDA $00EE                       ; $ABC4A4  AD EE 00     mX
    STA $03D0                       ; $ABC4A7  8D D0 03     mX
    LDA $00F2                       ; $ABC4AA  AD F2 00     mX
    STA $03D2                       ; $ABC4AD  8D D2 03     mX
    LDA $002A                       ; $ABC4B0  AD 2A 00     mX
    ORA $00F3                       ; $ABC4B3  0D F3 00     mX
    STA $03D3                       ; $ABC4B6  8D D3 03     mX
    REP #$20                        ; $ABC4B9  C2 20        mX
    LDA #$00D4                      ; $ABC4BB  A9 D4 00     MX
    STA ($10)                       ; $ABC4BE  92 10        MX
    RTS                             ; $ABC4C0  60           MX
L_ABC4C1:
    STZ $00EC                       ; $ABC4C1  9C EC 00     MX
    LDA $00EE                       ; $ABC4C4  AD EE 00     MX
    CLC                             ; $ABC4C7  18           MX
    ADC #$0004                      ; $ABC4C8  69 04 00     MX
    STA $00EE                       ; $ABC4CB  8D EE 00     MX
    CMP #$0100                      ; $ABC4CE  C9 00 01     MX
    BCC L_ABC4DC                    ; $ABC4D1  90 09        MX
    INC $00EC                       ; $ABC4D3  EE EC 00     MX
    CMP #$FFF8                      ; $ABC4D6  C9 F8 FF     MX
    BCS L_ABC4DC                    ; $ABC4D9  B0 01        MX
    RTS                             ; $ABC4DB  60           MX
L_ABC4DC:
    LDA $00F0                       ; $ABC4DC  AD F0 00     MX
    CMP #$00E0                      ; $ABC4DF  C9 E0 00     MX
    BCC L_ABC4EA                    ; $ABC4E2  90 06        MX
    CMP #$FFF0                      ; $ABC4E4  C9 F0 FF     MX
    BCS L_ABC4EA                    ; $ABC4E7  B0 01        MX
    RTS                             ; $ABC4E9  60           MX
L_ABC4EA:
    SEP #$20                        ; $ABC4EA  E2 20        MX
    LDA $00EC                       ; $ABC4EC  AD EC 00     mX
    BEQ L_ABC4FB                    ; $ABC4EF  F0 0A        mX
    LDA $ABE4D6                     ; $ABC4F1  AF D6 E4 AB  mX
    ORA $050D                       ; $ABC4F5  0D 0D 05     mX
    STA $050D                       ; $ABC4F8  8D 0D 05     mX
L_ABC4FB:
    LDA $00F0                       ; $ABC4FB  AD F0 00     mX
    STA $03D5                       ; $ABC4FE  8D D5 03     mX
    LDA $00EE                       ; $ABC501  AD EE 00     mX
    STA $03D4                       ; $ABC504  8D D4 03     mX
    LDA $00F2                       ; $ABC507  AD F2 00     mX
    STA $03D6                       ; $ABC50A  8D D6 03     mX
    LDA $002A                       ; $ABC50D  AD 2A 00     mX
    ORA $00F3                       ; $ABC510  0D F3 00     mX
    STA $03D7                       ; $ABC513  8D D7 03     mX
    REP #$20                        ; $ABC516  C2 20        mX
    LDA #$00D8                      ; $ABC518  A9 D8 00     MX
    STA ($10)                       ; $ABC51B  92 10        MX
    RTS                             ; $ABC51D  60           MX
L_ABC51E:
    STZ $00EC                       ; $ABC51E  9C EC 00     MX
    LDA $00EE                       ; $ABC521  AD EE 00     MX
    CLC                             ; $ABC524  18           MX
    ADC #$0004                      ; $ABC525  69 04 00     MX
    STA $00EE                       ; $ABC528  8D EE 00     MX
    CMP #$0100                      ; $ABC52B  C9 00 01     MX
    BCC L_ABC539                    ; $ABC52E  90 09        MX
    INC $00EC                       ; $ABC530  EE EC 00     MX
    CMP #$FFF8                      ; $ABC533  C9 F8 FF     MX
    BCS L_ABC539                    ; $ABC536  B0 01        MX
    RTS                             ; $ABC538  60           MX
L_ABC539:
    LDA $00F0                       ; $ABC539  AD F0 00     MX
    CMP #$00E0                      ; $ABC53C  C9 E0 00     MX
    BCC L_ABC547                    ; $ABC53F  90 06        MX
    CMP #$FFF0                      ; $ABC541  C9 F0 FF     MX
    BCS L_ABC547                    ; $ABC544  B0 01        MX
    RTS                             ; $ABC546  60           MX
L_ABC547:
    SEP #$20                        ; $ABC547  E2 20        MX
    LDA $00EC                       ; $ABC549  AD EC 00     mX
    BEQ L_ABC558                    ; $ABC54C  F0 0A        mX
    LDA $ABE4D7                     ; $ABC54E  AF D7 E4 AB  mX
    ORA $050D                       ; $ABC552  0D 0D 05     mX
    STA $050D                       ; $ABC555  8D 0D 05     mX
L_ABC558:
    LDA $00F0                       ; $ABC558  AD F0 00     mX
    STA $03D9                       ; $ABC55B  8D D9 03     mX
    LDA $00EE                       ; $ABC55E  AD EE 00     mX
    STA $03D8                       ; $ABC561  8D D8 03     mX
    LDA $00F2                       ; $ABC564  AD F2 00     mX
    STA $03DA                       ; $ABC567  8D DA 03     mX
    LDA $002A                       ; $ABC56A  AD 2A 00     mX
    ORA $00F3                       ; $ABC56D  0D F3 00     mX
    STA $03DB                       ; $ABC570  8D DB 03     mX
    REP #$20                        ; $ABC573  C2 20        mX
    LDA #$00DC                      ; $ABC575  A9 DC 00     MX
    STA ($10)                       ; $ABC578  92 10        MX
    RTS                             ; $ABC57A  60           MX
L_ABC57B:
    STZ $00EC                       ; $ABC57B  9C EC 00     MX
    LDA $00EE                       ; $ABC57E  AD EE 00     MX
    CLC                             ; $ABC581  18           MX
    ADC #$0004                      ; $ABC582  69 04 00     MX
    STA $00EE                       ; $ABC585  8D EE 00     MX
    CMP #$0100                      ; $ABC588  C9 00 01     MX
    BCC L_ABC596                    ; $ABC58B  90 09        MX
    INC $00EC                       ; $ABC58D  EE EC 00     MX
    CMP #$FFF8                      ; $ABC590  C9 F8 FF     MX
    BCS L_ABC596                    ; $ABC593  B0 01        MX
    RTS                             ; $ABC595  60           MX
L_ABC596:
    LDA $00F0                       ; $ABC596  AD F0 00     MX
    CMP #$00E0                      ; $ABC599  C9 E0 00     MX
    BCC L_ABC5A4                    ; $ABC59C  90 06        MX
    CMP #$FFF0                      ; $ABC59E  C9 F0 FF     MX
    BCS L_ABC5A4                    ; $ABC5A1  B0 01        MX
    RTS                             ; $ABC5A3  60           MX
L_ABC5A4:
    SEP #$20                        ; $ABC5A4  E2 20        MX
    LDA $00EC                       ; $ABC5A6  AD EC 00     mX
    BEQ L_ABC5B5                    ; $ABC5A9  F0 0A        mX
    LDA $ABE4D8                     ; $ABC5AB  AF D8 E4 AB  mX
    ORA $050D                       ; $ABC5AF  0D 0D 05     mX
    STA $050D                       ; $ABC5B2  8D 0D 05     mX
L_ABC5B5:
    LDA $00F0                       ; $ABC5B5  AD F0 00     mX
    STA $03DD                       ; $ABC5B8  8D DD 03     mX
    LDA $00EE                       ; $ABC5BB  AD EE 00     mX
    STA $03DC                       ; $ABC5BE  8D DC 03     mX
    LDA $00F2                       ; $ABC5C1  AD F2 00     mX
    STA $03DE                       ; $ABC5C4  8D DE 03     mX
    LDA $002A                       ; $ABC5C7  AD 2A 00     mX
    ORA $00F3                       ; $ABC5CA  0D F3 00     mX
    STA $03DF                       ; $ABC5CD  8D DF 03     mX
    REP #$20                        ; $ABC5D0  C2 20        mX
    LDA #$00E0                      ; $ABC5D2  A9 E0 00     MX
    STA ($10)                       ; $ABC5D5  92 10        MX
    RTS                             ; $ABC5D7  60           MX
L_ABC5D8:
    STZ $00EC                       ; $ABC5D8  9C EC 00     MX
    LDA $00EE                       ; $ABC5DB  AD EE 00     MX
    CLC                             ; $ABC5DE  18           MX
    ADC #$0004                      ; $ABC5DF  69 04 00     MX
    STA $00EE                       ; $ABC5E2  8D EE 00     MX
    CMP #$0100                      ; $ABC5E5  C9 00 01     MX
    BCC L_ABC5F3                    ; $ABC5E8  90 09        MX
    INC $00EC                       ; $ABC5EA  EE EC 00     MX
    CMP #$FFF8                      ; $ABC5ED  C9 F8 FF     MX
    BCS L_ABC5F3                    ; $ABC5F0  B0 01        MX
    RTS                             ; $ABC5F2  60           MX
L_ABC5F3:
    LDA $00F0                       ; $ABC5F3  AD F0 00     MX
    CMP #$00E0                      ; $ABC5F6  C9 E0 00     MX
    BCC L_ABC601                    ; $ABC5F9  90 06        MX
    CMP #$FFF0                      ; $ABC5FB  C9 F0 FF     MX
    BCS L_ABC601                    ; $ABC5FE  B0 01        MX
    RTS                             ; $ABC600  60           MX
L_ABC601:
    SEP #$20                        ; $ABC601  E2 20        MX
    LDA $00EC                       ; $ABC603  AD EC 00     mX
    BEQ L_ABC612                    ; $ABC606  F0 0A        mX
    LDA $ABE4D5                     ; $ABC608  AF D5 E4 AB  mX
    ORA $050E                       ; $ABC60C  0D 0E 05     mX
    STA $050E                       ; $ABC60F  8D 0E 05     mX
L_ABC612:
    LDA $00F0                       ; $ABC612  AD F0 00     mX
    STA $03E1                       ; $ABC615  8D E1 03     mX
    LDA $00EE                       ; $ABC618  AD EE 00     mX
    STA $03E0                       ; $ABC61B  8D E0 03     mX
    LDA $00F2                       ; $ABC61E  AD F2 00     mX
    STA $03E2                       ; $ABC621  8D E2 03     mX
    LDA $002A                       ; $ABC624  AD 2A 00     mX
    ORA $00F3                       ; $ABC627  0D F3 00     mX
    STA $03E3                       ; $ABC62A  8D E3 03     mX
    REP #$20                        ; $ABC62D  C2 20        mX
    LDA #$00E4                      ; $ABC62F  A9 E4 00     MX
    STA ($10)                       ; $ABC632  92 10        MX
    RTS                             ; $ABC634  60           MX
L_ABC635:
    STZ $00EC                       ; $ABC635  9C EC 00     MX
    LDA $00EE                       ; $ABC638  AD EE 00     MX
    CLC                             ; $ABC63B  18           MX
    ADC #$0004                      ; $ABC63C  69 04 00     MX
    STA $00EE                       ; $ABC63F  8D EE 00     MX
    CMP #$0100                      ; $ABC642  C9 00 01     MX
    BCC L_ABC650                    ; $ABC645  90 09        MX
    INC $00EC                       ; $ABC647  EE EC 00     MX
    CMP #$FFF8                      ; $ABC64A  C9 F8 FF     MX
    BCS L_ABC650                    ; $ABC64D  B0 01        MX
    RTS                             ; $ABC64F  60           MX
L_ABC650:
    LDA $00F0                       ; $ABC650  AD F0 00     MX
    CMP #$00E0                      ; $ABC653  C9 E0 00     MX
    BCC L_ABC65E                    ; $ABC656  90 06        MX
    CMP #$FFF0                      ; $ABC658  C9 F0 FF     MX
    BCS L_ABC65E                    ; $ABC65B  B0 01        MX
    RTS                             ; $ABC65D  60           MX
L_ABC65E:
    SEP #$20                        ; $ABC65E  E2 20        MX
    LDA $00EC                       ; $ABC660  AD EC 00     mX
    BEQ L_ABC66F                    ; $ABC663  F0 0A        mX
    LDA $ABE4D6                     ; $ABC665  AF D6 E4 AB  mX
    ORA $050E                       ; $ABC669  0D 0E 05     mX
    STA $050E                       ; $ABC66C  8D 0E 05     mX
L_ABC66F:
    LDA $00F0                       ; $ABC66F  AD F0 00     mX
    STA $03E5                       ; $ABC672  8D E5 03     mX
    LDA $00EE                       ; $ABC675  AD EE 00     mX
    STA $03E4                       ; $ABC678  8D E4 03     mX
    LDA $00F2                       ; $ABC67B  AD F2 00     mX
    STA $03E6                       ; $ABC67E  8D E6 03     mX
    LDA $002A                       ; $ABC681  AD 2A 00     mX
    ORA $00F3                       ; $ABC684  0D F3 00     mX
    STA $03E7                       ; $ABC687  8D E7 03     mX
    REP #$20                        ; $ABC68A  C2 20        mX
    LDA #$00E8                      ; $ABC68C  A9 E8 00     MX
    STA ($10)                       ; $ABC68F  92 10        MX
    RTS                             ; $ABC691  60           MX
L_ABC692:
    STZ $00EC                       ; $ABC692  9C EC 00     MX
    LDA $00EE                       ; $ABC695  AD EE 00     MX
    CLC                             ; $ABC698  18           MX
    ADC #$0004                      ; $ABC699  69 04 00     MX
    STA $00EE                       ; $ABC69C  8D EE 00     MX
    CMP #$0100                      ; $ABC69F  C9 00 01     MX
    BCC L_ABC6AD                    ; $ABC6A2  90 09        MX
    INC $00EC                       ; $ABC6A4  EE EC 00     MX
    CMP #$FFF8                      ; $ABC6A7  C9 F8 FF     MX
    BCS L_ABC6AD                    ; $ABC6AA  B0 01        MX
    RTS                             ; $ABC6AC  60           MX
L_ABC6AD:
    LDA $00F0                       ; $ABC6AD  AD F0 00     MX
    CMP #$00E0                      ; $ABC6B0  C9 E0 00     MX
    BCC L_ABC6BB                    ; $ABC6B3  90 06        MX
    CMP #$FFF0                      ; $ABC6B5  C9 F0 FF     MX
    BCS L_ABC6BB                    ; $ABC6B8  B0 01        MX
    RTS                             ; $ABC6BA  60           MX
L_ABC6BB:
    SEP #$20                        ; $ABC6BB  E2 20        MX
    LDA $00EC                       ; $ABC6BD  AD EC 00     mX
    BEQ L_ABC6CC                    ; $ABC6C0  F0 0A        mX
    LDA $ABE4D7                     ; $ABC6C2  AF D7 E4 AB  mX
    ORA $050E                       ; $ABC6C6  0D 0E 05     mX
    STA $050E                       ; $ABC6C9  8D 0E 05     mX
L_ABC6CC:
    LDA $00F0                       ; $ABC6CC  AD F0 00     mX
    STA $03E9                       ; $ABC6CF  8D E9 03     mX
    LDA $00EE                       ; $ABC6D2  AD EE 00     mX
    STA $03E8                       ; $ABC6D5  8D E8 03     mX
    LDA $00F2                       ; $ABC6D8  AD F2 00     mX
    STA $03EA                       ; $ABC6DB  8D EA 03     mX
    LDA $002A                       ; $ABC6DE  AD 2A 00     mX
    ORA $00F3                       ; $ABC6E1  0D F3 00     mX
    STA $03EB                       ; $ABC6E4  8D EB 03     mX
    REP #$20                        ; $ABC6E7  C2 20        mX
    LDA #$00EC                      ; $ABC6E9  A9 EC 00     MX
    STA ($10)                       ; $ABC6EC  92 10        MX
    RTS                             ; $ABC6EE  60           MX
L_ABC6EF:
    STZ $00EC                       ; $ABC6EF  9C EC 00     MX
    LDA $00EE                       ; $ABC6F2  AD EE 00     MX
    CLC                             ; $ABC6F5  18           MX
    ADC #$0004                      ; $ABC6F6  69 04 00     MX
    STA $00EE                       ; $ABC6F9  8D EE 00     MX
    CMP #$0100                      ; $ABC6FC  C9 00 01     MX
    BCC L_ABC70A                    ; $ABC6FF  90 09        MX
    INC $00EC                       ; $ABC701  EE EC 00     MX
    CMP #$FFF8                      ; $ABC704  C9 F8 FF     MX
    BCS L_ABC70A                    ; $ABC707  B0 01        MX
    RTS                             ; $ABC709  60           MX
L_ABC70A:
    LDA $00F0                       ; $ABC70A  AD F0 00     MX
    CMP #$00E0                      ; $ABC70D  C9 E0 00     MX
    BCC L_ABC718                    ; $ABC710  90 06        MX
    CMP #$FFF0                      ; $ABC712  C9 F0 FF     MX
    BCS L_ABC718                    ; $ABC715  B0 01        MX
    RTS                             ; $ABC717  60           MX
L_ABC718:
    SEP #$20                        ; $ABC718  E2 20        MX
    LDA $00EC                       ; $ABC71A  AD EC 00     mX
    BEQ L_ABC729                    ; $ABC71D  F0 0A        mX
    LDA $ABE4D8                     ; $ABC71F  AF D8 E4 AB  mX
    ORA $050E                       ; $ABC723  0D 0E 05     mX
    STA $050E                       ; $ABC726  8D 0E 05     mX
L_ABC729:
    LDA $00F0                       ; $ABC729  AD F0 00     mX
    STA $03ED                       ; $ABC72C  8D ED 03     mX
    LDA $00EE                       ; $ABC72F  AD EE 00     mX
    STA $03EC                       ; $ABC732  8D EC 03     mX
    LDA $00F2                       ; $ABC735  AD F2 00     mX
    STA $03EE                       ; $ABC738  8D EE 03     mX
    LDA $002A                       ; $ABC73B  AD 2A 00     mX
    ORA $00F3                       ; $ABC73E  0D F3 00     mX
    STA $03EF                       ; $ABC741  8D EF 03     mX
    REP #$20                        ; $ABC744  C2 20        mX
    LDA #$00F0                      ; $ABC746  A9 F0 00     MX
    STA ($10)                       ; $ABC749  92 10        MX
    RTS                             ; $ABC74B  60           MX
L_ABC74C:
    STZ $00EC                       ; $ABC74C  9C EC 00     MX
    LDA $00EE                       ; $ABC74F  AD EE 00     MX
    CLC                             ; $ABC752  18           MX
    ADC #$0004                      ; $ABC753  69 04 00     MX
    STA $00EE                       ; $ABC756  8D EE 00     MX
    CMP #$0100                      ; $ABC759  C9 00 01     MX
    BCC L_ABC767                    ; $ABC75C  90 09        MX
    INC $00EC                       ; $ABC75E  EE EC 00     MX
    CMP #$FFF8                      ; $ABC761  C9 F8 FF     MX
    BCS L_ABC767                    ; $ABC764  B0 01        MX
    RTS                             ; $ABC766  60           MX
L_ABC767:
    LDA $00F0                       ; $ABC767  AD F0 00     MX
    CMP #$00E0                      ; $ABC76A  C9 E0 00     MX
    BCC L_ABC775                    ; $ABC76D  90 06        MX
    CMP #$FFF0                      ; $ABC76F  C9 F0 FF     MX
    BCS L_ABC775                    ; $ABC772  B0 01        MX
    RTS                             ; $ABC774  60           MX
L_ABC775:
    SEP #$20                        ; $ABC775  E2 20        MX
    LDA $00EC                       ; $ABC777  AD EC 00     mX
    BEQ L_ABC786                    ; $ABC77A  F0 0A        mX
    LDA $ABE4D5                     ; $ABC77C  AF D5 E4 AB  mX
    ORA $050F                       ; $ABC780  0D 0F 05     mX
    STA $050F                       ; $ABC783  8D 0F 05     mX
L_ABC786:
    LDA $00F0                       ; $ABC786  AD F0 00     mX
    STA $03F1                       ; $ABC789  8D F1 03     mX
    LDA $00EE                       ; $ABC78C  AD EE 00     mX
    STA $03F0                       ; $ABC78F  8D F0 03     mX
    LDA $00F2                       ; $ABC792  AD F2 00     mX
    STA $03F2                       ; $ABC795  8D F2 03     mX
    LDA $002A                       ; $ABC798  AD 2A 00     mX
    ORA $00F3                       ; $ABC79B  0D F3 00     mX
    STA $03F3                       ; $ABC79E  8D F3 03     mX
    REP #$20                        ; $ABC7A1  C2 20        mX
    LDA #$00F4                      ; $ABC7A3  A9 F4 00     MX
    STA ($10)                       ; $ABC7A6  92 10        MX
    RTS                             ; $ABC7A8  60           MX
L_ABC7A9:
    STZ $00EC                       ; $ABC7A9  9C EC 00     MX
    LDA $00EE                       ; $ABC7AC  AD EE 00     MX
    CLC                             ; $ABC7AF  18           MX
    ADC #$0004                      ; $ABC7B0  69 04 00     MX
    STA $00EE                       ; $ABC7B3  8D EE 00     MX
    CMP #$0100                      ; $ABC7B6  C9 00 01     MX
    BCC L_ABC7C4                    ; $ABC7B9  90 09        MX
    INC $00EC                       ; $ABC7BB  EE EC 00     MX
    CMP #$FFF8                      ; $ABC7BE  C9 F8 FF     MX
    BCS L_ABC7C4                    ; $ABC7C1  B0 01        MX
    RTS                             ; $ABC7C3  60           MX
L_ABC7C4:
    LDA $00F0                       ; $ABC7C4  AD F0 00     MX
    CMP #$00E0                      ; $ABC7C7  C9 E0 00     MX
    BCC L_ABC7D2                    ; $ABC7CA  90 06        MX
    CMP #$FFF0                      ; $ABC7CC  C9 F0 FF     MX
    BCS L_ABC7D2                    ; $ABC7CF  B0 01        MX
    RTS                             ; $ABC7D1  60           MX
L_ABC7D2:
    SEP #$20                        ; $ABC7D2  E2 20        MX
    LDA $00EC                       ; $ABC7D4  AD EC 00     mX
    BEQ L_ABC7E3                    ; $ABC7D7  F0 0A        mX
    LDA $ABE4D6                     ; $ABC7D9  AF D6 E4 AB  mX
    ORA $050F                       ; $ABC7DD  0D 0F 05     mX
    STA $050F                       ; $ABC7E0  8D 0F 05     mX
L_ABC7E3:
    LDA $00F0                       ; $ABC7E3  AD F0 00     mX
    STA $03F5                       ; $ABC7E6  8D F5 03     mX
    LDA $00EE                       ; $ABC7E9  AD EE 00     mX
    STA $03F4                       ; $ABC7EC  8D F4 03     mX
    LDA $00F2                       ; $ABC7EF  AD F2 00     mX
    STA $03F6                       ; $ABC7F2  8D F6 03     mX
    LDA $002A                       ; $ABC7F5  AD 2A 00     mX
    ORA $00F3                       ; $ABC7F8  0D F3 00     mX
    STA $03F7                       ; $ABC7FB  8D F7 03     mX
    REP #$20                        ; $ABC7FE  C2 20        mX
    LDA #$00F8                      ; $ABC800  A9 F8 00     MX
    STA ($10)                       ; $ABC803  92 10        MX
    RTS                             ; $ABC805  60           MX
L_ABC806:
    STZ $00EC                       ; $ABC806  9C EC 00     MX
    LDA $00EE                       ; $ABC809  AD EE 00     MX
    CLC                             ; $ABC80C  18           MX
    ADC #$0004                      ; $ABC80D  69 04 00     MX
    STA $00EE                       ; $ABC810  8D EE 00     MX
    CMP #$0100                      ; $ABC813  C9 00 01     MX
    BCC L_ABC821                    ; $ABC816  90 09        MX
    INC $00EC                       ; $ABC818  EE EC 00     MX
    CMP #$FFF8                      ; $ABC81B  C9 F8 FF     MX
    BCS L_ABC821                    ; $ABC81E  B0 01        MX
    RTS                             ; $ABC820  60           MX
L_ABC821:
    LDA $00F0                       ; $ABC821  AD F0 00     MX
    CMP #$00E0                      ; $ABC824  C9 E0 00     MX
    BCC L_ABC82F                    ; $ABC827  90 06        MX
    CMP #$FFF0                      ; $ABC829  C9 F0 FF     MX
    BCS L_ABC82F                    ; $ABC82C  B0 01        MX
    RTS                             ; $ABC82E  60           MX
L_ABC82F:
    SEP #$20                        ; $ABC82F  E2 20        MX
    LDA $00EC                       ; $ABC831  AD EC 00     mX
    BEQ L_ABC840                    ; $ABC834  F0 0A        mX
    LDA $ABE4D7                     ; $ABC836  AF D7 E4 AB  mX
    ORA $050F                       ; $ABC83A  0D 0F 05     mX
    STA $050F                       ; $ABC83D  8D 0F 05     mX
L_ABC840:
    LDA $00F0                       ; $ABC840  AD F0 00     mX
    STA $03F9                       ; $ABC843  8D F9 03     mX
    LDA $00EE                       ; $ABC846  AD EE 00     mX
    STA $03F8                       ; $ABC849  8D F8 03     mX
    LDA $00F2                       ; $ABC84C  AD F2 00     mX
    STA $03FA                       ; $ABC84F  8D FA 03     mX
    LDA $002A                       ; $ABC852  AD 2A 00     mX
    ORA $00F3                       ; $ABC855  0D F3 00     mX
    STA $03FB                       ; $ABC858  8D FB 03     mX
    REP #$20                        ; $ABC85B  C2 20        mX
    LDA #$00FC                      ; $ABC85D  A9 FC 00     MX
    STA ($10)                       ; $ABC860  92 10        MX
    RTS                             ; $ABC862  60           MX
L_ABC863:
    STZ $00EC                       ; $ABC863  9C EC 00     MX
    LDA $00EE                       ; $ABC866  AD EE 00     MX
    CLC                             ; $ABC869  18           MX
    ADC #$0004                      ; $ABC86A  69 04 00     MX
    STA $00EE                       ; $ABC86D  8D EE 00     MX
    CMP #$0100                      ; $ABC870  C9 00 01     MX
    BCC L_ABC87E                    ; $ABC873  90 09        MX
    INC $00EC                       ; $ABC875  EE EC 00     MX
    CMP #$FFF8                      ; $ABC878  C9 F8 FF     MX
    BCS L_ABC87E                    ; $ABC87B  B0 01        MX
    RTS                             ; $ABC87D  60           MX
L_ABC87E:
    LDA $00F0                       ; $ABC87E  AD F0 00     MX
    CMP #$00E0                      ; $ABC881  C9 E0 00     MX
    BCC L_ABC88C                    ; $ABC884  90 06        MX
    CMP #$FFF0                      ; $ABC886  C9 F0 FF     MX
    BCS L_ABC88C                    ; $ABC889  B0 01        MX
    RTS                             ; $ABC88B  60           MX
L_ABC88C:
    SEP #$20                        ; $ABC88C  E2 20        MX
    LDA $00EC                       ; $ABC88E  AD EC 00     mX
    BEQ L_ABC89D                    ; $ABC891  F0 0A        mX
    LDA $ABE4D8                     ; $ABC893  AF D8 E4 AB  mX
    ORA $050F                       ; $ABC897  0D 0F 05     mX
    STA $050F                       ; $ABC89A  8D 0F 05     mX
L_ABC89D:
    LDA $00F0                       ; $ABC89D  AD F0 00     mX
    STA $03FD                       ; $ABC8A0  8D FD 03     mX
    LDA $00EE                       ; $ABC8A3  AD EE 00     mX
    STA $03FC                       ; $ABC8A6  8D FC 03     mX
    LDA $00F2                       ; $ABC8A9  AD F2 00     mX
    STA $03FE                       ; $ABC8AC  8D FE 03     mX
    LDA $002A                       ; $ABC8AF  AD 2A 00     mX
    ORA $00F3                       ; $ABC8B2  0D F3 00     mX
    STA $03FF                       ; $ABC8B5  8D FF 03     mX
    REP #$20                        ; $ABC8B8  C2 20        mX
    LDA #$0100                      ; $ABC8BA  A9 00 01     MX
    STA ($10)                       ; $ABC8BD  92 10        MX
    RTS                             ; $ABC8BF  60           MX
L_ABC8C0:
    STZ $00EC                       ; $ABC8C0  9C EC 00     MX
    LDA $00EE                       ; $ABC8C3  AD EE 00     MX
    CLC                             ; $ABC8C6  18           MX
    ADC #$0004                      ; $ABC8C7  69 04 00     MX
    STA $00EE                       ; $ABC8CA  8D EE 00     MX
    CMP #$0100                      ; $ABC8CD  C9 00 01     MX
    BCC L_ABC8DB                    ; $ABC8D0  90 09        MX
    INC $00EC                       ; $ABC8D2  EE EC 00     MX
    CMP #$FFF8                      ; $ABC8D5  C9 F8 FF     MX
    BCS L_ABC8DB                    ; $ABC8D8  B0 01        MX
    RTS                             ; $ABC8DA  60           MX
L_ABC8DB:
    LDA $00F0                       ; $ABC8DB  AD F0 00     MX
    CMP #$00E0                      ; $ABC8DE  C9 E0 00     MX
    BCC L_ABC8E9                    ; $ABC8E1  90 06        MX
    CMP #$FFF0                      ; $ABC8E3  C9 F0 FF     MX
    BCS L_ABC8E9                    ; $ABC8E6  B0 01        MX
    RTS                             ; $ABC8E8  60           MX
L_ABC8E9:
    SEP #$20                        ; $ABC8E9  E2 20        MX
    LDA $00EC                       ; $ABC8EB  AD EC 00     mX
    BEQ L_ABC8FA                    ; $ABC8EE  F0 0A        mX
    LDA $ABE4D5                     ; $ABC8F0  AF D5 E4 AB  mX
    ORA $0510                       ; $ABC8F4  0D 10 05     mX
    STA $0510                       ; $ABC8F7  8D 10 05     mX
L_ABC8FA:
    LDA $00F0                       ; $ABC8FA  AD F0 00     mX
    STA $0401                       ; $ABC8FD  8D 01 04     mX
    LDA $00EE                       ; $ABC900  AD EE 00     mX
    STA $0400                       ; $ABC903  8D 00 04     mX
    LDA $00F2                       ; $ABC906  AD F2 00     mX
    STA $0402                       ; $ABC909  8D 02 04     mX
    LDA $002A                       ; $ABC90C  AD 2A 00     mX
    ORA $00F3                       ; $ABC90F  0D F3 00     mX
    STA $0403                       ; $ABC912  8D 03 04     mX
    REP #$20                        ; $ABC915  C2 20        mX
    LDA #$0104                      ; $ABC917  A9 04 01     MX
    STA ($10)                       ; $ABC91A  92 10        MX
    RTS                             ; $ABC91C  60           MX
L_ABC91D:
    STZ $00EC                       ; $ABC91D  9C EC 00     MX
    LDA $00EE                       ; $ABC920  AD EE 00     MX
    CLC                             ; $ABC923  18           MX
    ADC #$0004                      ; $ABC924  69 04 00     MX
    STA $00EE                       ; $ABC927  8D EE 00     MX
    CMP #$0100                      ; $ABC92A  C9 00 01     MX
    BCC L_ABC938                    ; $ABC92D  90 09        MX
    INC $00EC                       ; $ABC92F  EE EC 00     MX
    CMP #$FFF8                      ; $ABC932  C9 F8 FF     MX
    BCS L_ABC938                    ; $ABC935  B0 01        MX
    RTS                             ; $ABC937  60           MX
L_ABC938:
    LDA $00F0                       ; $ABC938  AD F0 00     MX
    CMP #$00E0                      ; $ABC93B  C9 E0 00     MX
    BCC L_ABC946                    ; $ABC93E  90 06        MX
    CMP #$FFF0                      ; $ABC940  C9 F0 FF     MX
    BCS L_ABC946                    ; $ABC943  B0 01        MX
    RTS                             ; $ABC945  60           MX
L_ABC946:
    SEP #$20                        ; $ABC946  E2 20        MX
    LDA $00EC                       ; $ABC948  AD EC 00     mX
    BEQ L_ABC957                    ; $ABC94B  F0 0A        mX
    LDA $ABE4D6                     ; $ABC94D  AF D6 E4 AB  mX
    ORA $0510                       ; $ABC951  0D 10 05     mX
    STA $0510                       ; $ABC954  8D 10 05     mX
L_ABC957:
    LDA $00F0                       ; $ABC957  AD F0 00     mX
    STA $0405                       ; $ABC95A  8D 05 04     mX
    LDA $00EE                       ; $ABC95D  AD EE 00     mX
    STA $0404                       ; $ABC960  8D 04 04     mX
    LDA $00F2                       ; $ABC963  AD F2 00     mX
    STA $0406                       ; $ABC966  8D 06 04     mX
    LDA $002A                       ; $ABC969  AD 2A 00     mX
    ORA $00F3                       ; $ABC96C  0D F3 00     mX
    STA $0407                       ; $ABC96F  8D 07 04     mX
    REP #$20                        ; $ABC972  C2 20        mX
    LDA #$0108                      ; $ABC974  A9 08 01     MX
    STA ($10)                       ; $ABC977  92 10        MX
    RTS                             ; $ABC979  60           MX
L_ABC97A:
    STZ $00EC                       ; $ABC97A  9C EC 00     MX
    LDA $00EE                       ; $ABC97D  AD EE 00     MX
    CLC                             ; $ABC980  18           MX
    ADC #$0004                      ; $ABC981  69 04 00     MX
    STA $00EE                       ; $ABC984  8D EE 00     MX
    CMP #$0100                      ; $ABC987  C9 00 01     MX
    BCC L_ABC995                    ; $ABC98A  90 09        MX
    INC $00EC                       ; $ABC98C  EE EC 00     MX
    CMP #$FFF8                      ; $ABC98F  C9 F8 FF     MX
    BCS L_ABC995                    ; $ABC992  B0 01        MX
    RTS                             ; $ABC994  60           MX
L_ABC995:
    LDA $00F0                       ; $ABC995  AD F0 00     MX
    CMP #$00E0                      ; $ABC998  C9 E0 00     MX
    BCC L_ABC9A3                    ; $ABC99B  90 06        MX
    CMP #$FFF0                      ; $ABC99D  C9 F0 FF     MX
    BCS L_ABC9A3                    ; $ABC9A0  B0 01        MX
    RTS                             ; $ABC9A2  60           MX
L_ABC9A3:
    SEP #$20                        ; $ABC9A3  E2 20        MX
    LDA $00EC                       ; $ABC9A5  AD EC 00     mX
    BEQ L_ABC9B4                    ; $ABC9A8  F0 0A        mX
    LDA $ABE4D7                     ; $ABC9AA  AF D7 E4 AB  mX
    ORA $0510                       ; $ABC9AE  0D 10 05     mX
    STA $0510                       ; $ABC9B1  8D 10 05     mX
L_ABC9B4:
    LDA $00F0                       ; $ABC9B4  AD F0 00     mX
    STA $0409                       ; $ABC9B7  8D 09 04     mX
    LDA $00EE                       ; $ABC9BA  AD EE 00     mX
    STA $0408                       ; $ABC9BD  8D 08 04     mX
    LDA $00F2                       ; $ABC9C0  AD F2 00     mX
    STA $040A                       ; $ABC9C3  8D 0A 04     mX
    LDA $002A                       ; $ABC9C6  AD 2A 00     mX
    ORA $00F3                       ; $ABC9C9  0D F3 00     mX
    STA $040B                       ; $ABC9CC  8D 0B 04     mX
    REP #$20                        ; $ABC9CF  C2 20        mX
    LDA #$010C                      ; $ABC9D1  A9 0C 01     MX
    STA ($10)                       ; $ABC9D4  92 10        MX
    RTS                             ; $ABC9D6  60           MX
L_ABC9D7:
    STZ $00EC                       ; $ABC9D7  9C EC 00     MX
    LDA $00EE                       ; $ABC9DA  AD EE 00     MX
    CLC                             ; $ABC9DD  18           MX
    ADC #$0004                      ; $ABC9DE  69 04 00     MX
    STA $00EE                       ; $ABC9E1  8D EE 00     MX
    CMP #$0100                      ; $ABC9E4  C9 00 01     MX
    BCC L_ABC9F2                    ; $ABC9E7  90 09        MX
    INC $00EC                       ; $ABC9E9  EE EC 00     MX
    CMP #$FFF8                      ; $ABC9EC  C9 F8 FF     MX
    BCS L_ABC9F2                    ; $ABC9EF  B0 01        MX
    RTS                             ; $ABC9F1  60           MX
L_ABC9F2:
    LDA $00F0                       ; $ABC9F2  AD F0 00     MX
    CMP #$00E0                      ; $ABC9F5  C9 E0 00     MX
    BCC L_ABCA00                    ; $ABC9F8  90 06        MX
    CMP #$FFF0                      ; $ABC9FA  C9 F0 FF     MX
    BCS L_ABCA00                    ; $ABC9FD  B0 01        MX
    RTS                             ; $ABC9FF  60           MX
L_ABCA00:
    SEP #$20                        ; $ABCA00  E2 20        MX
    LDA $00EC                       ; $ABCA02  AD EC 00     mX
    BEQ L_ABCA11                    ; $ABCA05  F0 0A        mX
    LDA $ABE4D8                     ; $ABCA07  AF D8 E4 AB  mX
    ORA $0510                       ; $ABCA0B  0D 10 05     mX
    STA $0510                       ; $ABCA0E  8D 10 05     mX
L_ABCA11:
    LDA $00F0                       ; $ABCA11  AD F0 00     mX
    STA $040D                       ; $ABCA14  8D 0D 04     mX
    LDA $00EE                       ; $ABCA17  AD EE 00     mX
    STA $040C                       ; $ABCA1A  8D 0C 04     mX
    LDA $00F2                       ; $ABCA1D  AD F2 00     mX
    STA $040E                       ; $ABCA20  8D 0E 04     mX
    LDA $002A                       ; $ABCA23  AD 2A 00     mX
    ORA $00F3                       ; $ABCA26  0D F3 00     mX
    STA $040F                       ; $ABCA29  8D 0F 04     mX
    REP #$20                        ; $ABCA2C  C2 20        mX
    LDA #$0110                      ; $ABCA2E  A9 10 01     MX
    STA ($10)                       ; $ABCA31  92 10        MX
    RTS                             ; $ABCA33  60           MX
L_ABCA34:
    STZ $00EC                       ; $ABCA34  9C EC 00     MX
    LDA $00EE                       ; $ABCA37  AD EE 00     MX
    CLC                             ; $ABCA3A  18           MX
    ADC #$0004                      ; $ABCA3B  69 04 00     MX
    STA $00EE                       ; $ABCA3E  8D EE 00     MX
    CMP #$0100                      ; $ABCA41  C9 00 01     MX
    BCC L_ABCA4F                    ; $ABCA44  90 09        MX
    INC $00EC                       ; $ABCA46  EE EC 00     MX
    CMP #$FFF8                      ; $ABCA49  C9 F8 FF     MX
    BCS L_ABCA4F                    ; $ABCA4C  B0 01        MX
    RTS                             ; $ABCA4E  60           MX
L_ABCA4F:
    LDA $00F0                       ; $ABCA4F  AD F0 00     MX
    CMP #$00E0                      ; $ABCA52  C9 E0 00     MX
    BCC L_ABCA5D                    ; $ABCA55  90 06        MX
    CMP #$FFF0                      ; $ABCA57  C9 F0 FF     MX
    BCS L_ABCA5D                    ; $ABCA5A  B0 01        MX
    RTS                             ; $ABCA5C  60           MX
L_ABCA5D:
    SEP #$20                        ; $ABCA5D  E2 20        MX
    LDA $00EC                       ; $ABCA5F  AD EC 00     mX
    BEQ L_ABCA6E                    ; $ABCA62  F0 0A        mX
    LDA $ABE4D5                     ; $ABCA64  AF D5 E4 AB  mX
    ORA $0511                       ; $ABCA68  0D 11 05     mX
    STA $0511                       ; $ABCA6B  8D 11 05     mX
L_ABCA6E:
    LDA $00F0                       ; $ABCA6E  AD F0 00     mX
    STA $0411                       ; $ABCA71  8D 11 04     mX
    LDA $00EE                       ; $ABCA74  AD EE 00     mX
    STA $0410                       ; $ABCA77  8D 10 04     mX
    LDA $00F2                       ; $ABCA7A  AD F2 00     mX
    STA $0412                       ; $ABCA7D  8D 12 04     mX
    LDA $002A                       ; $ABCA80  AD 2A 00     mX
    ORA $00F3                       ; $ABCA83  0D F3 00     mX
    STA $0413                       ; $ABCA86  8D 13 04     mX
    REP #$20                        ; $ABCA89  C2 20        mX
    LDA #$0114                      ; $ABCA8B  A9 14 01     MX
    STA ($10)                       ; $ABCA8E  92 10        MX
    RTS                             ; $ABCA90  60           MX
L_ABCA91:
    STZ $00EC                       ; $ABCA91  9C EC 00     MX
    LDA $00EE                       ; $ABCA94  AD EE 00     MX
    CLC                             ; $ABCA97  18           MX
    ADC #$0004                      ; $ABCA98  69 04 00     MX
    STA $00EE                       ; $ABCA9B  8D EE 00     MX
    CMP #$0100                      ; $ABCA9E  C9 00 01     MX
    BCC L_ABCAAC                    ; $ABCAA1  90 09        MX
    INC $00EC                       ; $ABCAA3  EE EC 00     MX
    CMP #$FFF8                      ; $ABCAA6  C9 F8 FF     MX
    BCS L_ABCAAC                    ; $ABCAA9  B0 01        MX
    RTS                             ; $ABCAAB  60           MX
L_ABCAAC:
    LDA $00F0                       ; $ABCAAC  AD F0 00     MX
    CMP #$00E0                      ; $ABCAAF  C9 E0 00     MX
    BCC L_ABCABA                    ; $ABCAB2  90 06        MX
    CMP #$FFF0                      ; $ABCAB4  C9 F0 FF     MX
    BCS L_ABCABA                    ; $ABCAB7  B0 01        MX
    RTS                             ; $ABCAB9  60           MX
L_ABCABA:
    SEP #$20                        ; $ABCABA  E2 20        MX
    LDA $00EC                       ; $ABCABC  AD EC 00     mX
    BEQ L_ABCACB                    ; $ABCABF  F0 0A        mX
    LDA $ABE4D6                     ; $ABCAC1  AF D6 E4 AB  mX
    ORA $0511                       ; $ABCAC5  0D 11 05     mX
    STA $0511                       ; $ABCAC8  8D 11 05     mX
L_ABCACB:
    LDA $00F0                       ; $ABCACB  AD F0 00     mX
    STA $0415                       ; $ABCACE  8D 15 04     mX
    LDA $00EE                       ; $ABCAD1  AD EE 00     mX
    STA $0414                       ; $ABCAD4  8D 14 04     mX
    LDA $00F2                       ; $ABCAD7  AD F2 00     mX
    STA $0416                       ; $ABCADA  8D 16 04     mX
    LDA $002A                       ; $ABCADD  AD 2A 00     mX
    ORA $00F3                       ; $ABCAE0  0D F3 00     mX
    STA $0417                       ; $ABCAE3  8D 17 04     mX
    REP #$20                        ; $ABCAE6  C2 20        mX
    LDA #$0118                      ; $ABCAE8  A9 18 01     MX
    STA ($10)                       ; $ABCAEB  92 10        MX
    RTS                             ; $ABCAED  60           MX
L_ABCAEE:
    STZ $00EC                       ; $ABCAEE  9C EC 00     MX
    LDA $00EE                       ; $ABCAF1  AD EE 00     MX
    CLC                             ; $ABCAF4  18           MX
    ADC #$0004                      ; $ABCAF5  69 04 00     MX
    STA $00EE                       ; $ABCAF8  8D EE 00     MX
    CMP #$0100                      ; $ABCAFB  C9 00 01     MX
    BCC L_ABCB09                    ; $ABCAFE  90 09        MX
    INC $00EC                       ; $ABCB00  EE EC 00     MX
    CMP #$FFF8                      ; $ABCB03  C9 F8 FF     MX
    BCS L_ABCB09                    ; $ABCB06  B0 01        MX
    RTS                             ; $ABCB08  60           MX
L_ABCB09:
    LDA $00F0                       ; $ABCB09  AD F0 00     MX
    CMP #$00E0                      ; $ABCB0C  C9 E0 00     MX
    BCC L_ABCB17                    ; $ABCB0F  90 06        MX
    CMP #$FFF0                      ; $ABCB11  C9 F0 FF     MX
    BCS L_ABCB17                    ; $ABCB14  B0 01        MX
    RTS                             ; $ABCB16  60           MX
L_ABCB17:
    SEP #$20                        ; $ABCB17  E2 20        MX
    LDA $00EC                       ; $ABCB19  AD EC 00     mX
    BEQ L_ABCB28                    ; $ABCB1C  F0 0A        mX
    LDA $ABE4D7                     ; $ABCB1E  AF D7 E4 AB  mX
    ORA $0511                       ; $ABCB22  0D 11 05     mX
    STA $0511                       ; $ABCB25  8D 11 05     mX
L_ABCB28:
    LDA $00F0                       ; $ABCB28  AD F0 00     mX
    STA $0419                       ; $ABCB2B  8D 19 04     mX
    LDA $00EE                       ; $ABCB2E  AD EE 00     mX
    STA $0418                       ; $ABCB31  8D 18 04     mX
    LDA $00F2                       ; $ABCB34  AD F2 00     mX
    STA $041A                       ; $ABCB37  8D 1A 04     mX
    LDA $002A                       ; $ABCB3A  AD 2A 00     mX
    ORA $00F3                       ; $ABCB3D  0D F3 00     mX
    STA $041B                       ; $ABCB40  8D 1B 04     mX
    REP #$20                        ; $ABCB43  C2 20        mX
    LDA #$011C                      ; $ABCB45  A9 1C 01     MX
    STA ($10)                       ; $ABCB48  92 10        MX
    RTS                             ; $ABCB4A  60           MX
L_ABCB4B:
    STZ $00EC                       ; $ABCB4B  9C EC 00     MX
    LDA $00EE                       ; $ABCB4E  AD EE 00     MX
    CLC                             ; $ABCB51  18           MX
    ADC #$0004                      ; $ABCB52  69 04 00     MX
    STA $00EE                       ; $ABCB55  8D EE 00     MX
    CMP #$0100                      ; $ABCB58  C9 00 01     MX
    BCC L_ABCB66                    ; $ABCB5B  90 09        MX
    INC $00EC                       ; $ABCB5D  EE EC 00     MX
    CMP #$FFF8                      ; $ABCB60  C9 F8 FF     MX
    BCS L_ABCB66                    ; $ABCB63  B0 01        MX
    RTS                             ; $ABCB65  60           MX
L_ABCB66:
    LDA $00F0                       ; $ABCB66  AD F0 00     MX
    CMP #$00E0                      ; $ABCB69  C9 E0 00     MX
    BCC L_ABCB74                    ; $ABCB6C  90 06        MX
    CMP #$FFF0                      ; $ABCB6E  C9 F0 FF     MX
    BCS L_ABCB74                    ; $ABCB71  B0 01        MX
    RTS                             ; $ABCB73  60           MX
L_ABCB74:
    SEP #$20                        ; $ABCB74  E2 20        MX
    LDA $00EC                       ; $ABCB76  AD EC 00     mX
    BEQ L_ABCB85                    ; $ABCB79  F0 0A        mX
    LDA $ABE4D8                     ; $ABCB7B  AF D8 E4 AB  mX
    ORA $0511                       ; $ABCB7F  0D 11 05     mX
    STA $0511                       ; $ABCB82  8D 11 05     mX
L_ABCB85:
    LDA $00F0                       ; $ABCB85  AD F0 00     mX
    STA $041D                       ; $ABCB88  8D 1D 04     mX
    LDA $00EE                       ; $ABCB8B  AD EE 00     mX
    STA $041C                       ; $ABCB8E  8D 1C 04     mX
    LDA $00F2                       ; $ABCB91  AD F2 00     mX
    STA $041E                       ; $ABCB94  8D 1E 04     mX
    LDA $002A                       ; $ABCB97  AD 2A 00     mX
    ORA $00F3                       ; $ABCB9A  0D F3 00     mX
    STA $041F                       ; $ABCB9D  8D 1F 04     mX
    REP #$20                        ; $ABCBA0  C2 20        mX
    LDA #$0120                      ; $ABCBA2  A9 20 01     MX
    STA ($10)                       ; $ABCBA5  92 10        MX
    RTS                             ; $ABCBA7  60           MX
L_ABCBA8:
    STZ $00EC                       ; $ABCBA8  9C EC 00     MX
    LDA $00EE                       ; $ABCBAB  AD EE 00     MX
    CLC                             ; $ABCBAE  18           MX
    ADC #$0004                      ; $ABCBAF  69 04 00     MX
    STA $00EE                       ; $ABCBB2  8D EE 00     MX
    CMP #$0100                      ; $ABCBB5  C9 00 01     MX
    BCC L_ABCBC3                    ; $ABCBB8  90 09        MX
    INC $00EC                       ; $ABCBBA  EE EC 00     MX
    CMP #$FFF8                      ; $ABCBBD  C9 F8 FF     MX
    BCS L_ABCBC3                    ; $ABCBC0  B0 01        MX
    RTS                             ; $ABCBC2  60           MX
L_ABCBC3:
    LDA $00F0                       ; $ABCBC3  AD F0 00     MX
    CMP #$00E0                      ; $ABCBC6  C9 E0 00     MX
    BCC L_ABCBD1                    ; $ABCBC9  90 06        MX
    CMP #$FFF0                      ; $ABCBCB  C9 F0 FF     MX
    BCS L_ABCBD1                    ; $ABCBCE  B0 01        MX
    RTS                             ; $ABCBD0  60           MX
L_ABCBD1:
    SEP #$20                        ; $ABCBD1  E2 20        MX
    LDA $00EC                       ; $ABCBD3  AD EC 00     mX
    BEQ L_ABCBE2                    ; $ABCBD6  F0 0A        mX
    LDA $ABE4D5                     ; $ABCBD8  AF D5 E4 AB  mX
    ORA $0512                       ; $ABCBDC  0D 12 05     mX
    STA $0512                       ; $ABCBDF  8D 12 05     mX
L_ABCBE2:
    LDA $00F0                       ; $ABCBE2  AD F0 00     mX
    STA $0421                       ; $ABCBE5  8D 21 04     mX
    LDA $00EE                       ; $ABCBE8  AD EE 00     mX
    STA $0420                       ; $ABCBEB  8D 20 04     mX
    LDA $00F2                       ; $ABCBEE  AD F2 00     mX
    STA $0422                       ; $ABCBF1  8D 22 04     mX
    LDA $002A                       ; $ABCBF4  AD 2A 00     mX
    ORA $00F3                       ; $ABCBF7  0D F3 00     mX
    STA $0423                       ; $ABCBFA  8D 23 04     mX
    REP #$20                        ; $ABCBFD  C2 20        mX
    LDA #$0124                      ; $ABCBFF  A9 24 01     MX
    STA ($10)                       ; $ABCC02  92 10        MX
    RTS                             ; $ABCC04  60           MX
L_ABCC05:
    STZ $00EC                       ; $ABCC05  9C EC 00     MX
    LDA $00EE                       ; $ABCC08  AD EE 00     MX
    CLC                             ; $ABCC0B  18           MX
    ADC #$0004                      ; $ABCC0C  69 04 00     MX
    STA $00EE                       ; $ABCC0F  8D EE 00     MX
    CMP #$0100                      ; $ABCC12  C9 00 01     MX
    BCC L_ABCC20                    ; $ABCC15  90 09        MX
    INC $00EC                       ; $ABCC17  EE EC 00     MX
    CMP #$FFF8                      ; $ABCC1A  C9 F8 FF     MX
    BCS L_ABCC20                    ; $ABCC1D  B0 01        MX
    RTS                             ; $ABCC1F  60           MX
L_ABCC20:
    LDA $00F0                       ; $ABCC20  AD F0 00     MX
    CMP #$00E0                      ; $ABCC23  C9 E0 00     MX
    BCC L_ABCC2E                    ; $ABCC26  90 06        MX
    CMP #$FFF0                      ; $ABCC28  C9 F0 FF     MX
    BCS L_ABCC2E                    ; $ABCC2B  B0 01        MX
    RTS                             ; $ABCC2D  60           MX
L_ABCC2E:
    SEP #$20                        ; $ABCC2E  E2 20        MX
    LDA $00EC                       ; $ABCC30  AD EC 00     mX
    BEQ L_ABCC3F                    ; $ABCC33  F0 0A        mX
    LDA $ABE4D6                     ; $ABCC35  AF D6 E4 AB  mX
    ORA $0512                       ; $ABCC39  0D 12 05     mX
    STA $0512                       ; $ABCC3C  8D 12 05     mX
L_ABCC3F:
    LDA $00F0                       ; $ABCC3F  AD F0 00     mX
    STA $0425                       ; $ABCC42  8D 25 04     mX
    LDA $00EE                       ; $ABCC45  AD EE 00     mX
    STA $0424                       ; $ABCC48  8D 24 04     mX
    LDA $00F2                       ; $ABCC4B  AD F2 00     mX
    STA $0426                       ; $ABCC4E  8D 26 04     mX
    LDA $002A                       ; $ABCC51  AD 2A 00     mX
    ORA $00F3                       ; $ABCC54  0D F3 00     mX
    STA $0427                       ; $ABCC57  8D 27 04     mX
    REP #$20                        ; $ABCC5A  C2 20        mX
    LDA #$0128                      ; $ABCC5C  A9 28 01     MX
    STA ($10)                       ; $ABCC5F  92 10        MX
    RTS                             ; $ABCC61  60           MX
L_ABCC62:
    STZ $00EC                       ; $ABCC62  9C EC 00     MX
    LDA $00EE                       ; $ABCC65  AD EE 00     MX
    CLC                             ; $ABCC68  18           MX
    ADC #$0004                      ; $ABCC69  69 04 00     MX
    STA $00EE                       ; $ABCC6C  8D EE 00     MX
    CMP #$0100                      ; $ABCC6F  C9 00 01     MX
    BCC L_ABCC7D                    ; $ABCC72  90 09        MX
    INC $00EC                       ; $ABCC74  EE EC 00     MX
    CMP #$FFF8                      ; $ABCC77  C9 F8 FF     MX
    BCS L_ABCC7D                    ; $ABCC7A  B0 01        MX
    RTS                             ; $ABCC7C  60           MX
L_ABCC7D:
    LDA $00F0                       ; $ABCC7D  AD F0 00     MX
    CMP #$00E0                      ; $ABCC80  C9 E0 00     MX
    BCC L_ABCC8B                    ; $ABCC83  90 06        MX
    CMP #$FFF0                      ; $ABCC85  C9 F0 FF     MX
    BCS L_ABCC8B                    ; $ABCC88  B0 01        MX
    RTS                             ; $ABCC8A  60           MX
L_ABCC8B:
    SEP #$20                        ; $ABCC8B  E2 20        MX
    LDA $00EC                       ; $ABCC8D  AD EC 00     mX
    BEQ L_ABCC9C                    ; $ABCC90  F0 0A        mX
    LDA $ABE4D7                     ; $ABCC92  AF D7 E4 AB  mX
    ORA $0512                       ; $ABCC96  0D 12 05     mX
    STA $0512                       ; $ABCC99  8D 12 05     mX
L_ABCC9C:
    LDA $00F0                       ; $ABCC9C  AD F0 00     mX
    STA $0429                       ; $ABCC9F  8D 29 04     mX
    LDA $00EE                       ; $ABCCA2  AD EE 00     mX
    STA $0428                       ; $ABCCA5  8D 28 04     mX
    LDA $00F2                       ; $ABCCA8  AD F2 00     mX
    STA $042A                       ; $ABCCAB  8D 2A 04     mX
    LDA $002A                       ; $ABCCAE  AD 2A 00     mX
    ORA $00F3                       ; $ABCCB1  0D F3 00     mX
    STA $042B                       ; $ABCCB4  8D 2B 04     mX
    REP #$20                        ; $ABCCB7  C2 20        mX
    LDA #$012C                      ; $ABCCB9  A9 2C 01     MX
    STA ($10)                       ; $ABCCBC  92 10        MX
    RTS                             ; $ABCCBE  60           MX
L_ABCCBF:
    STZ $00EC                       ; $ABCCBF  9C EC 00     MX
    LDA $00EE                       ; $ABCCC2  AD EE 00     MX
    CLC                             ; $ABCCC5  18           MX
    ADC #$0004                      ; $ABCCC6  69 04 00     MX
    STA $00EE                       ; $ABCCC9  8D EE 00     MX
    CMP #$0100                      ; $ABCCCC  C9 00 01     MX
    BCC L_ABCCDA                    ; $ABCCCF  90 09        MX
    INC $00EC                       ; $ABCCD1  EE EC 00     MX
    CMP #$FFF8                      ; $ABCCD4  C9 F8 FF     MX
    BCS L_ABCCDA                    ; $ABCCD7  B0 01        MX
    RTS                             ; $ABCCD9  60           MX
L_ABCCDA:
    LDA $00F0                       ; $ABCCDA  AD F0 00     MX
    CMP #$00E0                      ; $ABCCDD  C9 E0 00     MX
    BCC L_ABCCE8                    ; $ABCCE0  90 06        MX
    CMP #$FFF0                      ; $ABCCE2  C9 F0 FF     MX
    BCS L_ABCCE8                    ; $ABCCE5  B0 01        MX
    RTS                             ; $ABCCE7  60           MX
L_ABCCE8:
    SEP #$20                        ; $ABCCE8  E2 20        MX
    LDA $00EC                       ; $ABCCEA  AD EC 00     mX
    BEQ L_ABCCF9                    ; $ABCCED  F0 0A        mX
    LDA $ABE4D8                     ; $ABCCEF  AF D8 E4 AB  mX
    ORA $0512                       ; $ABCCF3  0D 12 05     mX
    STA $0512                       ; $ABCCF6  8D 12 05     mX
L_ABCCF9:
    LDA $00F0                       ; $ABCCF9  AD F0 00     mX
    STA $042D                       ; $ABCCFC  8D 2D 04     mX
    LDA $00EE                       ; $ABCCFF  AD EE 00     mX
    STA $042C                       ; $ABCD02  8D 2C 04     mX
    LDA $00F2                       ; $ABCD05  AD F2 00     mX
    STA $042E                       ; $ABCD08  8D 2E 04     mX
    LDA $002A                       ; $ABCD0B  AD 2A 00     mX
    ORA $00F3                       ; $ABCD0E  0D F3 00     mX
    STA $042F                       ; $ABCD11  8D 2F 04     mX
    REP #$20                        ; $ABCD14  C2 20        mX
    LDA #$0130                      ; $ABCD16  A9 30 01     MX
    STA ($10)                       ; $ABCD19  92 10        MX
    RTS                             ; $ABCD1B  60           MX
L_ABCD1C:
    STZ $00EC                       ; $ABCD1C  9C EC 00     MX
    LDA $00EE                       ; $ABCD1F  AD EE 00     MX
    CLC                             ; $ABCD22  18           MX
    ADC #$0004                      ; $ABCD23  69 04 00     MX
    STA $00EE                       ; $ABCD26  8D EE 00     MX
    CMP #$0100                      ; $ABCD29  C9 00 01     MX
    BCC L_ABCD37                    ; $ABCD2C  90 09        MX
    INC $00EC                       ; $ABCD2E  EE EC 00     MX
    CMP #$FFF8                      ; $ABCD31  C9 F8 FF     MX
    BCS L_ABCD37                    ; $ABCD34  B0 01        MX
    RTS                             ; $ABCD36  60           MX
L_ABCD37:
    LDA $00F0                       ; $ABCD37  AD F0 00     MX
    CMP #$00E0                      ; $ABCD3A  C9 E0 00     MX
    BCC L_ABCD45                    ; $ABCD3D  90 06        MX
    CMP #$FFF0                      ; $ABCD3F  C9 F0 FF     MX
    BCS L_ABCD45                    ; $ABCD42  B0 01        MX
    RTS                             ; $ABCD44  60           MX
L_ABCD45:
    SEP #$20                        ; $ABCD45  E2 20        MX
    LDA $00EC                       ; $ABCD47  AD EC 00     mX
    BEQ L_ABCD56                    ; $ABCD4A  F0 0A        mX
    LDA $ABE4D5                     ; $ABCD4C  AF D5 E4 AB  mX
    ORA $0513                       ; $ABCD50  0D 13 05     mX
    STA $0513                       ; $ABCD53  8D 13 05     mX
L_ABCD56:
    LDA $00F0                       ; $ABCD56  AD F0 00     mX
    STA $0431                       ; $ABCD59  8D 31 04     mX
    LDA $00EE                       ; $ABCD5C  AD EE 00     mX
    STA $0430                       ; $ABCD5F  8D 30 04     mX
    LDA $00F2                       ; $ABCD62  AD F2 00     mX
    STA $0432                       ; $ABCD65  8D 32 04     mX
    LDA $002A                       ; $ABCD68  AD 2A 00     mX
    ORA $00F3                       ; $ABCD6B  0D F3 00     mX
    STA $0433                       ; $ABCD6E  8D 33 04     mX
    REP #$20                        ; $ABCD71  C2 20        mX
    LDA #$0134                      ; $ABCD73  A9 34 01     MX
    STA ($10)                       ; $ABCD76  92 10        MX
    RTS                             ; $ABCD78  60           MX
L_ABCD79:
    STZ $00EC                       ; $ABCD79  9C EC 00     MX
    LDA $00EE                       ; $ABCD7C  AD EE 00     MX
    CLC                             ; $ABCD7F  18           MX
    ADC #$0004                      ; $ABCD80  69 04 00     MX
    STA $00EE                       ; $ABCD83  8D EE 00     MX
    CMP #$0100                      ; $ABCD86  C9 00 01     MX
    BCC L_ABCD94                    ; $ABCD89  90 09        MX
    INC $00EC                       ; $ABCD8B  EE EC 00     MX
    CMP #$FFF8                      ; $ABCD8E  C9 F8 FF     MX
    BCS L_ABCD94                    ; $ABCD91  B0 01        MX
    RTS                             ; $ABCD93  60           MX
L_ABCD94:
    LDA $00F0                       ; $ABCD94  AD F0 00     MX
    CMP #$00E0                      ; $ABCD97  C9 E0 00     MX
    BCC L_ABCDA2                    ; $ABCD9A  90 06        MX
    CMP #$FFF0                      ; $ABCD9C  C9 F0 FF     MX
    BCS L_ABCDA2                    ; $ABCD9F  B0 01        MX
    RTS                             ; $ABCDA1  60           MX
L_ABCDA2:
    SEP #$20                        ; $ABCDA2  E2 20        MX
    LDA $00EC                       ; $ABCDA4  AD EC 00     mX
    BEQ L_ABCDB3                    ; $ABCDA7  F0 0A        mX
    LDA $ABE4D6                     ; $ABCDA9  AF D6 E4 AB  mX
    ORA $0513                       ; $ABCDAD  0D 13 05     mX
    STA $0513                       ; $ABCDB0  8D 13 05     mX
L_ABCDB3:
    LDA $00F0                       ; $ABCDB3  AD F0 00     mX
    STA $0435                       ; $ABCDB6  8D 35 04     mX
    LDA $00EE                       ; $ABCDB9  AD EE 00     mX
    STA $0434                       ; $ABCDBC  8D 34 04     mX
    LDA $00F2                       ; $ABCDBF  AD F2 00     mX
    STA $0436                       ; $ABCDC2  8D 36 04     mX
    LDA $002A                       ; $ABCDC5  AD 2A 00     mX
    ORA $00F3                       ; $ABCDC8  0D F3 00     mX
    STA $0437                       ; $ABCDCB  8D 37 04     mX
    REP #$20                        ; $ABCDCE  C2 20        mX
    LDA #$0138                      ; $ABCDD0  A9 38 01     MX
    STA ($10)                       ; $ABCDD3  92 10        MX
    RTS                             ; $ABCDD5  60           MX
L_ABCDD6:
    STZ $00EC                       ; $ABCDD6  9C EC 00     MX
    LDA $00EE                       ; $ABCDD9  AD EE 00     MX
    CLC                             ; $ABCDDC  18           MX
    ADC #$0004                      ; $ABCDDD  69 04 00     MX
    STA $00EE                       ; $ABCDE0  8D EE 00     MX
    CMP #$0100                      ; $ABCDE3  C9 00 01     MX
    BCC L_ABCDF1                    ; $ABCDE6  90 09        MX
    INC $00EC                       ; $ABCDE8  EE EC 00     MX
    CMP #$FFF8                      ; $ABCDEB  C9 F8 FF     MX
    BCS L_ABCDF1                    ; $ABCDEE  B0 01        MX
    RTS                             ; $ABCDF0  60           MX
L_ABCDF1:
    LDA $00F0                       ; $ABCDF1  AD F0 00     MX
    CMP #$00E0                      ; $ABCDF4  C9 E0 00     MX
    BCC L_ABCDFF                    ; $ABCDF7  90 06        MX
    CMP #$FFF0                      ; $ABCDF9  C9 F0 FF     MX
    BCS L_ABCDFF                    ; $ABCDFC  B0 01        MX
    RTS                             ; $ABCDFE  60           MX
L_ABCDFF:
    SEP #$20                        ; $ABCDFF  E2 20        MX
    LDA $00EC                       ; $ABCE01  AD EC 00     mX
    BEQ L_ABCE10                    ; $ABCE04  F0 0A        mX
    LDA $ABE4D7                     ; $ABCE06  AF D7 E4 AB  mX
    ORA $0513                       ; $ABCE0A  0D 13 05     mX
    STA $0513                       ; $ABCE0D  8D 13 05     mX
L_ABCE10:
    LDA $00F0                       ; $ABCE10  AD F0 00     mX
    STA $0439                       ; $ABCE13  8D 39 04     mX
    LDA $00EE                       ; $ABCE16  AD EE 00     mX
    STA $0438                       ; $ABCE19  8D 38 04     mX
    LDA $00F2                       ; $ABCE1C  AD F2 00     mX
    STA $043A                       ; $ABCE1F  8D 3A 04     mX
    LDA $002A                       ; $ABCE22  AD 2A 00     mX
    ORA $00F3                       ; $ABCE25  0D F3 00     mX
    STA $043B                       ; $ABCE28  8D 3B 04     mX
    REP #$20                        ; $ABCE2B  C2 20        mX
    LDA #$013C                      ; $ABCE2D  A9 3C 01     MX
    STA ($10)                       ; $ABCE30  92 10        MX
    RTS                             ; $ABCE32  60           MX
L_ABCE33:
    STZ $00EC                       ; $ABCE33  9C EC 00     MX
    LDA $00EE                       ; $ABCE36  AD EE 00     MX
    CLC                             ; $ABCE39  18           MX
    ADC #$0004                      ; $ABCE3A  69 04 00     MX
    STA $00EE                       ; $ABCE3D  8D EE 00     MX
    CMP #$0100                      ; $ABCE40  C9 00 01     MX
    BCC L_ABCE4E                    ; $ABCE43  90 09        MX
    INC $00EC                       ; $ABCE45  EE EC 00     MX
    CMP #$FFF8                      ; $ABCE48  C9 F8 FF     MX
    BCS L_ABCE4E                    ; $ABCE4B  B0 01        MX
    RTS                             ; $ABCE4D  60           MX
L_ABCE4E:
    LDA $00F0                       ; $ABCE4E  AD F0 00     MX
    CMP #$00E0                      ; $ABCE51  C9 E0 00     MX
    BCC L_ABCE5C                    ; $ABCE54  90 06        MX
    CMP #$FFF0                      ; $ABCE56  C9 F0 FF     MX
    BCS L_ABCE5C                    ; $ABCE59  B0 01        MX
    RTS                             ; $ABCE5B  60           MX
L_ABCE5C:
    SEP #$20                        ; $ABCE5C  E2 20        MX
    LDA $00EC                       ; $ABCE5E  AD EC 00     mX
    BEQ L_ABCE6D                    ; $ABCE61  F0 0A        mX
    LDA $ABE4D8                     ; $ABCE63  AF D8 E4 AB  mX
    ORA $0513                       ; $ABCE67  0D 13 05     mX
    STA $0513                       ; $ABCE6A  8D 13 05     mX
L_ABCE6D:
    LDA $00F0                       ; $ABCE6D  AD F0 00     mX
    STA $043D                       ; $ABCE70  8D 3D 04     mX
    LDA $00EE                       ; $ABCE73  AD EE 00     mX
    STA $043C                       ; $ABCE76  8D 3C 04     mX
    LDA $00F2                       ; $ABCE79  AD F2 00     mX
    STA $043E                       ; $ABCE7C  8D 3E 04     mX
    LDA $002A                       ; $ABCE7F  AD 2A 00     mX
    ORA $00F3                       ; $ABCE82  0D F3 00     mX
    STA $043F                       ; $ABCE85  8D 3F 04     mX
    REP #$20                        ; $ABCE88  C2 20        mX
    LDA #$0140                      ; $ABCE8A  A9 40 01     MX
    STA ($10)                       ; $ABCE8D  92 10        MX
    RTS                             ; $ABCE8F  60           MX
L_ABCE90:
    STZ $00EC                       ; $ABCE90  9C EC 00     MX
    LDA $00EE                       ; $ABCE93  AD EE 00     MX
    CLC                             ; $ABCE96  18           MX
    ADC #$0004                      ; $ABCE97  69 04 00     MX
    STA $00EE                       ; $ABCE9A  8D EE 00     MX
    CMP #$0100                      ; $ABCE9D  C9 00 01     MX
    BCC L_ABCEAB                    ; $ABCEA0  90 09        MX
    INC $00EC                       ; $ABCEA2  EE EC 00     MX
    CMP #$FFF8                      ; $ABCEA5  C9 F8 FF     MX
    BCS L_ABCEAB                    ; $ABCEA8  B0 01        MX
    RTS                             ; $ABCEAA  60           MX
L_ABCEAB:
    LDA $00F0                       ; $ABCEAB  AD F0 00     MX
    CMP #$00E0                      ; $ABCEAE  C9 E0 00     MX
    BCC L_ABCEB9                    ; $ABCEB1  90 06        MX
    CMP #$FFF0                      ; $ABCEB3  C9 F0 FF     MX
    BCS L_ABCEB9                    ; $ABCEB6  B0 01        MX
    RTS                             ; $ABCEB8  60           MX
L_ABCEB9:
    SEP #$20                        ; $ABCEB9  E2 20        MX
    LDA $00EC                       ; $ABCEBB  AD EC 00     mX
    BEQ L_ABCECA                    ; $ABCEBE  F0 0A        mX
    LDA $ABE4D5                     ; $ABCEC0  AF D5 E4 AB  mX
    ORA $0514                       ; $ABCEC4  0D 14 05     mX
    STA $0514                       ; $ABCEC7  8D 14 05     mX
L_ABCECA:
    LDA $00F0                       ; $ABCECA  AD F0 00     mX
    STA $0441                       ; $ABCECD  8D 41 04     mX
    LDA $00EE                       ; $ABCED0  AD EE 00     mX
    STA $0440                       ; $ABCED3  8D 40 04     mX
    LDA $00F2                       ; $ABCED6  AD F2 00     mX
    STA $0442                       ; $ABCED9  8D 42 04     mX
    LDA $002A                       ; $ABCEDC  AD 2A 00     mX
    ORA $00F3                       ; $ABCEDF  0D F3 00     mX
    STA $0443                       ; $ABCEE2  8D 43 04     mX
    REP #$20                        ; $ABCEE5  C2 20        mX
    LDA #$0144                      ; $ABCEE7  A9 44 01     MX
    STA ($10)                       ; $ABCEEA  92 10        MX
    RTS                             ; $ABCEEC  60           MX
L_ABCEED:
    STZ $00EC                       ; $ABCEED  9C EC 00     MX
    LDA $00EE                       ; $ABCEF0  AD EE 00     MX
    CLC                             ; $ABCEF3  18           MX
    ADC #$0004                      ; $ABCEF4  69 04 00     MX
    STA $00EE                       ; $ABCEF7  8D EE 00     MX
    CMP #$0100                      ; $ABCEFA  C9 00 01     MX
    BCC L_ABCF08                    ; $ABCEFD  90 09        MX
    INC $00EC                       ; $ABCEFF  EE EC 00     MX
    CMP #$FFF8                      ; $ABCF02  C9 F8 FF     MX
    BCS L_ABCF08                    ; $ABCF05  B0 01        MX
    RTS                             ; $ABCF07  60           MX
L_ABCF08:
    LDA $00F0                       ; $ABCF08  AD F0 00     MX
    CMP #$00E0                      ; $ABCF0B  C9 E0 00     MX
    BCC L_ABCF16                    ; $ABCF0E  90 06        MX
    CMP #$FFF0                      ; $ABCF10  C9 F0 FF     MX
    BCS L_ABCF16                    ; $ABCF13  B0 01        MX
    RTS                             ; $ABCF15  60           MX
L_ABCF16:
    SEP #$20                        ; $ABCF16  E2 20        MX
    LDA $00EC                       ; $ABCF18  AD EC 00     mX
    BEQ L_ABCF27                    ; $ABCF1B  F0 0A        mX
    LDA $ABE4D6                     ; $ABCF1D  AF D6 E4 AB  mX
    ORA $0514                       ; $ABCF21  0D 14 05     mX
    STA $0514                       ; $ABCF24  8D 14 05     mX
L_ABCF27:
    LDA $00F0                       ; $ABCF27  AD F0 00     mX
    STA $0445                       ; $ABCF2A  8D 45 04     mX
    LDA $00EE                       ; $ABCF2D  AD EE 00     mX
    STA $0444                       ; $ABCF30  8D 44 04     mX
    LDA $00F2                       ; $ABCF33  AD F2 00     mX
    STA $0446                       ; $ABCF36  8D 46 04     mX
    LDA $002A                       ; $ABCF39  AD 2A 00     mX
    ORA $00F3                       ; $ABCF3C  0D F3 00     mX
    STA $0447                       ; $ABCF3F  8D 47 04     mX
    REP #$20                        ; $ABCF42  C2 20        mX
    LDA #$0148                      ; $ABCF44  A9 48 01     MX
    STA ($10)                       ; $ABCF47  92 10        MX
    RTS                             ; $ABCF49  60           MX
L_ABCF4A:
    STZ $00EC                       ; $ABCF4A  9C EC 00     MX
    LDA $00EE                       ; $ABCF4D  AD EE 00     MX
    CLC                             ; $ABCF50  18           MX
    ADC #$0004                      ; $ABCF51  69 04 00     MX
    STA $00EE                       ; $ABCF54  8D EE 00     MX
    CMP #$0100                      ; $ABCF57  C9 00 01     MX
    BCC L_ABCF65                    ; $ABCF5A  90 09        MX
    INC $00EC                       ; $ABCF5C  EE EC 00     MX
    CMP #$FFF8                      ; $ABCF5F  C9 F8 FF     MX
    BCS L_ABCF65                    ; $ABCF62  B0 01        MX
    RTS                             ; $ABCF64  60           MX
L_ABCF65:
    LDA $00F0                       ; $ABCF65  AD F0 00     MX
    CMP #$00E0                      ; $ABCF68  C9 E0 00     MX
    BCC L_ABCF73                    ; $ABCF6B  90 06        MX
    CMP #$FFF0                      ; $ABCF6D  C9 F0 FF     MX
    BCS L_ABCF73                    ; $ABCF70  B0 01        MX
    RTS                             ; $ABCF72  60           MX
L_ABCF73:
    SEP #$20                        ; $ABCF73  E2 20        MX
    LDA $00EC                       ; $ABCF75  AD EC 00     mX
    BEQ L_ABCF84                    ; $ABCF78  F0 0A        mX
    LDA $ABE4D7                     ; $ABCF7A  AF D7 E4 AB  mX
    ORA $0514                       ; $ABCF7E  0D 14 05     mX
    STA $0514                       ; $ABCF81  8D 14 05     mX
L_ABCF84:
    LDA $00F0                       ; $ABCF84  AD F0 00     mX
    STA $0449                       ; $ABCF87  8D 49 04     mX
    LDA $00EE                       ; $ABCF8A  AD EE 00     mX
    STA $0448                       ; $ABCF8D  8D 48 04     mX
    LDA $00F2                       ; $ABCF90  AD F2 00     mX
    STA $044A                       ; $ABCF93  8D 4A 04     mX
    LDA $002A                       ; $ABCF96  AD 2A 00     mX
    ORA $00F3                       ; $ABCF99  0D F3 00     mX
    STA $044B                       ; $ABCF9C  8D 4B 04     mX
    REP #$20                        ; $ABCF9F  C2 20        mX
    LDA #$014C                      ; $ABCFA1  A9 4C 01     MX
    STA ($10)                       ; $ABCFA4  92 10        MX
    RTS                             ; $ABCFA6  60           MX
L_ABCFA7:
    STZ $00EC                       ; $ABCFA7  9C EC 00     MX
    LDA $00EE                       ; $ABCFAA  AD EE 00     MX
    CLC                             ; $ABCFAD  18           MX
    ADC #$0004                      ; $ABCFAE  69 04 00     MX
    STA $00EE                       ; $ABCFB1  8D EE 00     MX
    CMP #$0100                      ; $ABCFB4  C9 00 01     MX
    BCC L_ABCFC2                    ; $ABCFB7  90 09        MX
    INC $00EC                       ; $ABCFB9  EE EC 00     MX
    CMP #$FFF8                      ; $ABCFBC  C9 F8 FF     MX
    BCS L_ABCFC2                    ; $ABCFBF  B0 01        MX
    RTS                             ; $ABCFC1  60           MX
L_ABCFC2:
    LDA $00F0                       ; $ABCFC2  AD F0 00     MX
    CMP #$00E0                      ; $ABCFC5  C9 E0 00     MX
    BCC L_ABCFD0                    ; $ABCFC8  90 06        MX
    CMP #$FFF0                      ; $ABCFCA  C9 F0 FF     MX
    BCS L_ABCFD0                    ; $ABCFCD  B0 01        MX
    RTS                             ; $ABCFCF  60           MX
L_ABCFD0:
    SEP #$20                        ; $ABCFD0  E2 20        MX
    LDA $00EC                       ; $ABCFD2  AD EC 00     mX
    BEQ L_ABCFE1                    ; $ABCFD5  F0 0A        mX
    LDA $ABE4D8                     ; $ABCFD7  AF D8 E4 AB  mX
    ORA $0514                       ; $ABCFDB  0D 14 05     mX
    STA $0514                       ; $ABCFDE  8D 14 05     mX
L_ABCFE1:
    LDA $00F0                       ; $ABCFE1  AD F0 00     mX
    STA $044D                       ; $ABCFE4  8D 4D 04     mX
    LDA $00EE                       ; $ABCFE7  AD EE 00     mX
    STA $044C                       ; $ABCFEA  8D 4C 04     mX
    LDA $00F2                       ; $ABCFED  AD F2 00     mX
    STA $044E                       ; $ABCFF0  8D 4E 04     mX
    LDA $002A                       ; $ABCFF3  AD 2A 00     mX
    ORA $00F3                       ; $ABCFF6  0D F3 00     mX
    STA $044F                       ; $ABCFF9  8D 4F 04     mX
    REP #$20                        ; $ABCFFC  C2 20        mX
    LDA #$0150                      ; $ABCFFE  A9 50 01     MX
    STA ($10)                       ; $ABD001  92 10        MX
    RTS                             ; $ABD003  60           MX
L_ABD004:
    STZ $00EC                       ; $ABD004  9C EC 00     MX
    LDA $00EE                       ; $ABD007  AD EE 00     MX
    CLC                             ; $ABD00A  18           MX
    ADC #$0004                      ; $ABD00B  69 04 00     MX
    STA $00EE                       ; $ABD00E  8D EE 00     MX
    CMP #$0100                      ; $ABD011  C9 00 01     MX
    BCC L_ABD01F                    ; $ABD014  90 09        MX
    INC $00EC                       ; $ABD016  EE EC 00     MX
    CMP #$FFF8                      ; $ABD019  C9 F8 FF     MX
    BCS L_ABD01F                    ; $ABD01C  B0 01        MX
    RTS                             ; $ABD01E  60           MX
L_ABD01F:
    LDA $00F0                       ; $ABD01F  AD F0 00     MX
    CMP #$00E0                      ; $ABD022  C9 E0 00     MX
    BCC L_ABD02D                    ; $ABD025  90 06        MX
    CMP #$FFF0                      ; $ABD027  C9 F0 FF     MX
    BCS L_ABD02D                    ; $ABD02A  B0 01        MX
    RTS                             ; $ABD02C  60           MX
L_ABD02D:
    SEP #$20                        ; $ABD02D  E2 20        MX
    LDA $00EC                       ; $ABD02F  AD EC 00     mX
    BEQ L_ABD03E                    ; $ABD032  F0 0A        mX
    LDA $ABE4D5                     ; $ABD034  AF D5 E4 AB  mX
    ORA $0515                       ; $ABD038  0D 15 05     mX
    STA $0515                       ; $ABD03B  8D 15 05     mX
L_ABD03E:
    LDA $00F0                       ; $ABD03E  AD F0 00     mX
    STA $0451                       ; $ABD041  8D 51 04     mX
    LDA $00EE                       ; $ABD044  AD EE 00     mX
    STA $0450                       ; $ABD047  8D 50 04     mX
    LDA $00F2                       ; $ABD04A  AD F2 00     mX
    STA $0452                       ; $ABD04D  8D 52 04     mX
    LDA $002A                       ; $ABD050  AD 2A 00     mX
    ORA $00F3                       ; $ABD053  0D F3 00     mX
    STA $0453                       ; $ABD056  8D 53 04     mX
    REP #$20                        ; $ABD059  C2 20        mX
    LDA #$0154                      ; $ABD05B  A9 54 01     MX
    STA ($10)                       ; $ABD05E  92 10        MX
    RTS                             ; $ABD060  60           MX
L_ABD061:
    STZ $00EC                       ; $ABD061  9C EC 00     MX
    LDA $00EE                       ; $ABD064  AD EE 00     MX
    CLC                             ; $ABD067  18           MX
    ADC #$0004                      ; $ABD068  69 04 00     MX
    STA $00EE                       ; $ABD06B  8D EE 00     MX
    CMP #$0100                      ; $ABD06E  C9 00 01     MX
    BCC L_ABD07C                    ; $ABD071  90 09        MX
    INC $00EC                       ; $ABD073  EE EC 00     MX
    CMP #$FFF8                      ; $ABD076  C9 F8 FF     MX
    BCS L_ABD07C                    ; $ABD079  B0 01        MX
    RTS                             ; $ABD07B  60           MX
L_ABD07C:
    LDA $00F0                       ; $ABD07C  AD F0 00     MX
    CMP #$00E0                      ; $ABD07F  C9 E0 00     MX
    BCC L_ABD08A                    ; $ABD082  90 06        MX
    CMP #$FFF0                      ; $ABD084  C9 F0 FF     MX
    BCS L_ABD08A                    ; $ABD087  B0 01        MX
    RTS                             ; $ABD089  60           MX
L_ABD08A:
    SEP #$20                        ; $ABD08A  E2 20        MX
    LDA $00EC                       ; $ABD08C  AD EC 00     mX
    BEQ L_ABD09B                    ; $ABD08F  F0 0A        mX
    LDA $ABE4D6                     ; $ABD091  AF D6 E4 AB  mX
    ORA $0515                       ; $ABD095  0D 15 05     mX
    STA $0515                       ; $ABD098  8D 15 05     mX
L_ABD09B:
    LDA $00F0                       ; $ABD09B  AD F0 00     mX
    STA $0455                       ; $ABD09E  8D 55 04     mX
    LDA $00EE                       ; $ABD0A1  AD EE 00     mX
    STA $0454                       ; $ABD0A4  8D 54 04     mX
    LDA $00F2                       ; $ABD0A7  AD F2 00     mX
    STA $0456                       ; $ABD0AA  8D 56 04     mX
    LDA $002A                       ; $ABD0AD  AD 2A 00     mX
    ORA $00F3                       ; $ABD0B0  0D F3 00     mX
    STA $0457                       ; $ABD0B3  8D 57 04     mX
    REP #$20                        ; $ABD0B6  C2 20        mX
    LDA #$0158                      ; $ABD0B8  A9 58 01     MX
    STA ($10)                       ; $ABD0BB  92 10        MX
    RTS                             ; $ABD0BD  60           MX
L_ABD0BE:
    STZ $00EC                       ; $ABD0BE  9C EC 00     MX
    LDA $00EE                       ; $ABD0C1  AD EE 00     MX
    CLC                             ; $ABD0C4  18           MX
    ADC #$0004                      ; $ABD0C5  69 04 00     MX
    STA $00EE                       ; $ABD0C8  8D EE 00     MX
    CMP #$0100                      ; $ABD0CB  C9 00 01     MX
    BCC L_ABD0D9                    ; $ABD0CE  90 09        MX
    INC $00EC                       ; $ABD0D0  EE EC 00     MX
    CMP #$FFF8                      ; $ABD0D3  C9 F8 FF     MX
    BCS L_ABD0D9                    ; $ABD0D6  B0 01        MX
    RTS                             ; $ABD0D8  60           MX
L_ABD0D9:
    LDA $00F0                       ; $ABD0D9  AD F0 00     MX
    CMP #$00E0                      ; $ABD0DC  C9 E0 00     MX
    BCC L_ABD0E7                    ; $ABD0DF  90 06        MX
    CMP #$FFF0                      ; $ABD0E1  C9 F0 FF     MX
    BCS L_ABD0E7                    ; $ABD0E4  B0 01        MX
    RTS                             ; $ABD0E6  60           MX
L_ABD0E7:
    SEP #$20                        ; $ABD0E7  E2 20        MX
    LDA $00EC                       ; $ABD0E9  AD EC 00     mX
    BEQ L_ABD0F8                    ; $ABD0EC  F0 0A        mX
    LDA $ABE4D7                     ; $ABD0EE  AF D7 E4 AB  mX
    ORA $0515                       ; $ABD0F2  0D 15 05     mX
    STA $0515                       ; $ABD0F5  8D 15 05     mX
L_ABD0F8:
    LDA $00F0                       ; $ABD0F8  AD F0 00     mX
    STA $0459                       ; $ABD0FB  8D 59 04     mX
    LDA $00EE                       ; $ABD0FE  AD EE 00     mX
    STA $0458                       ; $ABD101  8D 58 04     mX
    LDA $00F2                       ; $ABD104  AD F2 00     mX
    STA $045A                       ; $ABD107  8D 5A 04     mX
    LDA $002A                       ; $ABD10A  AD 2A 00     mX
    ORA $00F3                       ; $ABD10D  0D F3 00     mX
    STA $045B                       ; $ABD110  8D 5B 04     mX
    REP #$20                        ; $ABD113  C2 20        mX
    LDA #$015C                      ; $ABD115  A9 5C 01     MX
    STA ($10)                       ; $ABD118  92 10        MX
    RTS                             ; $ABD11A  60           MX
L_ABD11B:
    STZ $00EC                       ; $ABD11B  9C EC 00     MX
    LDA $00EE                       ; $ABD11E  AD EE 00     MX
    CLC                             ; $ABD121  18           MX
    ADC #$0004                      ; $ABD122  69 04 00     MX
    STA $00EE                       ; $ABD125  8D EE 00     MX
    CMP #$0100                      ; $ABD128  C9 00 01     MX
    BCC L_ABD136                    ; $ABD12B  90 09        MX
    INC $00EC                       ; $ABD12D  EE EC 00     MX
    CMP #$FFF8                      ; $ABD130  C9 F8 FF     MX
    BCS L_ABD136                    ; $ABD133  B0 01        MX
    RTS                             ; $ABD135  60           MX
L_ABD136:
    LDA $00F0                       ; $ABD136  AD F0 00     MX
    CMP #$00E0                      ; $ABD139  C9 E0 00     MX
    BCC L_ABD144                    ; $ABD13C  90 06        MX
    CMP #$FFF0                      ; $ABD13E  C9 F0 FF     MX
    BCS L_ABD144                    ; $ABD141  B0 01        MX
    RTS                             ; $ABD143  60           MX
L_ABD144:
    SEP #$20                        ; $ABD144  E2 20        MX
    LDA $00EC                       ; $ABD146  AD EC 00     mX
    BEQ L_ABD155                    ; $ABD149  F0 0A        mX
    LDA $ABE4D8                     ; $ABD14B  AF D8 E4 AB  mX
    ORA $0515                       ; $ABD14F  0D 15 05     mX
    STA $0515                       ; $ABD152  8D 15 05     mX
L_ABD155:
    LDA $00F0                       ; $ABD155  AD F0 00     mX
    STA $045D                       ; $ABD158  8D 5D 04     mX
    LDA $00EE                       ; $ABD15B  AD EE 00     mX
    STA $045C                       ; $ABD15E  8D 5C 04     mX
    LDA $00F2                       ; $ABD161  AD F2 00     mX
    STA $045E                       ; $ABD164  8D 5E 04     mX
    LDA $002A                       ; $ABD167  AD 2A 00     mX
    ORA $00F3                       ; $ABD16A  0D F3 00     mX
    STA $045F                       ; $ABD16D  8D 5F 04     mX
    REP #$20                        ; $ABD170  C2 20        mX
    LDA #$0160                      ; $ABD172  A9 60 01     MX
    STA ($10)                       ; $ABD175  92 10        MX
    RTS                             ; $ABD177  60           MX
L_ABD178:
    STZ $00EC                       ; $ABD178  9C EC 00     MX
    LDA $00EE                       ; $ABD17B  AD EE 00     MX
    CLC                             ; $ABD17E  18           MX
    ADC #$0004                      ; $ABD17F  69 04 00     MX
    STA $00EE                       ; $ABD182  8D EE 00     MX
    CMP #$0100                      ; $ABD185  C9 00 01     MX
    BCC L_ABD193                    ; $ABD188  90 09        MX
    INC $00EC                       ; $ABD18A  EE EC 00     MX
    CMP #$FFF8                      ; $ABD18D  C9 F8 FF     MX
    BCS L_ABD193                    ; $ABD190  B0 01        MX
    RTS                             ; $ABD192  60           MX
L_ABD193:
    LDA $00F0                       ; $ABD193  AD F0 00     MX
    CMP #$00E0                      ; $ABD196  C9 E0 00     MX
    BCC L_ABD1A1                    ; $ABD199  90 06        MX
    CMP #$FFF0                      ; $ABD19B  C9 F0 FF     MX
    BCS L_ABD1A1                    ; $ABD19E  B0 01        MX
    RTS                             ; $ABD1A0  60           MX
L_ABD1A1:
    SEP #$20                        ; $ABD1A1  E2 20        MX
    LDA $00EC                       ; $ABD1A3  AD EC 00     mX
    BEQ L_ABD1B2                    ; $ABD1A6  F0 0A        mX
    LDA $ABE4D5                     ; $ABD1A8  AF D5 E4 AB  mX
    ORA $0516                       ; $ABD1AC  0D 16 05     mX
    STA $0516                       ; $ABD1AF  8D 16 05     mX
L_ABD1B2:
    LDA $00F0                       ; $ABD1B2  AD F0 00     mX
    STA $0461                       ; $ABD1B5  8D 61 04     mX
    LDA $00EE                       ; $ABD1B8  AD EE 00     mX
    STA $0460                       ; $ABD1BB  8D 60 04     mX
    LDA $00F2                       ; $ABD1BE  AD F2 00     mX
    STA $0462                       ; $ABD1C1  8D 62 04     mX
    LDA $002A                       ; $ABD1C4  AD 2A 00     mX
    ORA $00F3                       ; $ABD1C7  0D F3 00     mX
    STA $0463                       ; $ABD1CA  8D 63 04     mX
    REP #$20                        ; $ABD1CD  C2 20        mX
    LDA #$0164                      ; $ABD1CF  A9 64 01     MX
    STA ($10)                       ; $ABD1D2  92 10        MX
    RTS                             ; $ABD1D4  60           MX
L_ABD1D5:
    STZ $00EC                       ; $ABD1D5  9C EC 00     MX
    LDA $00EE                       ; $ABD1D8  AD EE 00     MX
    CLC                             ; $ABD1DB  18           MX
    ADC #$0004                      ; $ABD1DC  69 04 00     MX
    STA $00EE                       ; $ABD1DF  8D EE 00     MX
    CMP #$0100                      ; $ABD1E2  C9 00 01     MX
    BCC L_ABD1F0                    ; $ABD1E5  90 09        MX
    INC $00EC                       ; $ABD1E7  EE EC 00     MX
    CMP #$FFF8                      ; $ABD1EA  C9 F8 FF     MX
    BCS L_ABD1F0                    ; $ABD1ED  B0 01        MX
    RTS                             ; $ABD1EF  60           MX
L_ABD1F0:
    LDA $00F0                       ; $ABD1F0  AD F0 00     MX
    CMP #$00E0                      ; $ABD1F3  C9 E0 00     MX
    BCC L_ABD1FE                    ; $ABD1F6  90 06        MX
    CMP #$FFF0                      ; $ABD1F8  C9 F0 FF     MX
    BCS L_ABD1FE                    ; $ABD1FB  B0 01        MX
    RTS                             ; $ABD1FD  60           MX
L_ABD1FE:
    SEP #$20                        ; $ABD1FE  E2 20        MX
    LDA $00EC                       ; $ABD200  AD EC 00     mX
    BEQ L_ABD20F                    ; $ABD203  F0 0A        mX
    LDA $ABE4D6                     ; $ABD205  AF D6 E4 AB  mX
    ORA $0516                       ; $ABD209  0D 16 05     mX
    STA $0516                       ; $ABD20C  8D 16 05     mX
L_ABD20F:
    LDA $00F0                       ; $ABD20F  AD F0 00     mX
    STA $0465                       ; $ABD212  8D 65 04     mX
    LDA $00EE                       ; $ABD215  AD EE 00     mX
    STA $0464                       ; $ABD218  8D 64 04     mX
    LDA $00F2                       ; $ABD21B  AD F2 00     mX
    STA $0466                       ; $ABD21E  8D 66 04     mX
    LDA $002A                       ; $ABD221  AD 2A 00     mX
    ORA $00F3                       ; $ABD224  0D F3 00     mX
    STA $0467                       ; $ABD227  8D 67 04     mX
    REP #$20                        ; $ABD22A  C2 20        mX
    LDA #$0168                      ; $ABD22C  A9 68 01     MX
    STA ($10)                       ; $ABD22F  92 10        MX
    RTS                             ; $ABD231  60           MX
L_ABD232:
    STZ $00EC                       ; $ABD232  9C EC 00     MX
    LDA $00EE                       ; $ABD235  AD EE 00     MX
    CLC                             ; $ABD238  18           MX
    ADC #$0004                      ; $ABD239  69 04 00     MX
    STA $00EE                       ; $ABD23C  8D EE 00     MX
    CMP #$0100                      ; $ABD23F  C9 00 01     MX
    BCC L_ABD24D                    ; $ABD242  90 09        MX
    INC $00EC                       ; $ABD244  EE EC 00     MX
    CMP #$FFF8                      ; $ABD247  C9 F8 FF     MX
    BCS L_ABD24D                    ; $ABD24A  B0 01        MX
    RTS                             ; $ABD24C  60           MX
L_ABD24D:
    LDA $00F0                       ; $ABD24D  AD F0 00     MX
    CMP #$00E0                      ; $ABD250  C9 E0 00     MX
    BCC L_ABD25B                    ; $ABD253  90 06        MX
    CMP #$FFF0                      ; $ABD255  C9 F0 FF     MX
    BCS L_ABD25B                    ; $ABD258  B0 01        MX
    RTS                             ; $ABD25A  60           MX
L_ABD25B:
    SEP #$20                        ; $ABD25B  E2 20        MX
    LDA $00EC                       ; $ABD25D  AD EC 00     mX
    BEQ L_ABD26C                    ; $ABD260  F0 0A        mX
    LDA $ABE4D7                     ; $ABD262  AF D7 E4 AB  mX
    ORA $0516                       ; $ABD266  0D 16 05     mX
    STA $0516                       ; $ABD269  8D 16 05     mX
L_ABD26C:
    LDA $00F0                       ; $ABD26C  AD F0 00     mX
    STA $0469                       ; $ABD26F  8D 69 04     mX
    LDA $00EE                       ; $ABD272  AD EE 00     mX
    STA $0468                       ; $ABD275  8D 68 04     mX
    LDA $00F2                       ; $ABD278  AD F2 00     mX
    STA $046A                       ; $ABD27B  8D 6A 04     mX
    LDA $002A                       ; $ABD27E  AD 2A 00     mX
    ORA $00F3                       ; $ABD281  0D F3 00     mX
    STA $046B                       ; $ABD284  8D 6B 04     mX
    REP #$20                        ; $ABD287  C2 20        mX
    LDA #$016C                      ; $ABD289  A9 6C 01     MX
    STA ($10)                       ; $ABD28C  92 10        MX
    RTS                             ; $ABD28E  60           MX
L_ABD28F:
    STZ $00EC                       ; $ABD28F  9C EC 00     MX
    LDA $00EE                       ; $ABD292  AD EE 00     MX
    CLC                             ; $ABD295  18           MX
    ADC #$0004                      ; $ABD296  69 04 00     MX
    STA $00EE                       ; $ABD299  8D EE 00     MX
    CMP #$0100                      ; $ABD29C  C9 00 01     MX
    BCC L_ABD2AA                    ; $ABD29F  90 09        MX
    INC $00EC                       ; $ABD2A1  EE EC 00     MX
    CMP #$FFF8                      ; $ABD2A4  C9 F8 FF     MX
    BCS L_ABD2AA                    ; $ABD2A7  B0 01        MX
    RTS                             ; $ABD2A9  60           MX
L_ABD2AA:
    LDA $00F0                       ; $ABD2AA  AD F0 00     MX
    CMP #$00E0                      ; $ABD2AD  C9 E0 00     MX
    BCC L_ABD2B8                    ; $ABD2B0  90 06        MX
    CMP #$FFF0                      ; $ABD2B2  C9 F0 FF     MX
    BCS L_ABD2B8                    ; $ABD2B5  B0 01        MX
    RTS                             ; $ABD2B7  60           MX
L_ABD2B8:
    SEP #$20                        ; $ABD2B8  E2 20        MX
    LDA $00EC                       ; $ABD2BA  AD EC 00     mX
    BEQ L_ABD2C9                    ; $ABD2BD  F0 0A        mX
    LDA $ABE4D8                     ; $ABD2BF  AF D8 E4 AB  mX
    ORA $0516                       ; $ABD2C3  0D 16 05     mX
    STA $0516                       ; $ABD2C6  8D 16 05     mX
L_ABD2C9:
    LDA $00F0                       ; $ABD2C9  AD F0 00     mX
    STA $046D                       ; $ABD2CC  8D 6D 04     mX
    LDA $00EE                       ; $ABD2CF  AD EE 00     mX
    STA $046C                       ; $ABD2D2  8D 6C 04     mX
    LDA $00F2                       ; $ABD2D5  AD F2 00     mX
    STA $046E                       ; $ABD2D8  8D 6E 04     mX
    LDA $002A                       ; $ABD2DB  AD 2A 00     mX
    ORA $00F3                       ; $ABD2DE  0D F3 00     mX
    STA $046F                       ; $ABD2E1  8D 6F 04     mX
    REP #$20                        ; $ABD2E4  C2 20        mX
    LDA #$0170                      ; $ABD2E6  A9 70 01     MX
    STA ($10)                       ; $ABD2E9  92 10        MX
    RTS                             ; $ABD2EB  60           MX
L_ABD2EC:
    STZ $00EC                       ; $ABD2EC  9C EC 00     MX
    LDA $00EE                       ; $ABD2EF  AD EE 00     MX
    CLC                             ; $ABD2F2  18           MX
    ADC #$0004                      ; $ABD2F3  69 04 00     MX
    STA $00EE                       ; $ABD2F6  8D EE 00     MX
    CMP #$0100                      ; $ABD2F9  C9 00 01     MX
    BCC L_ABD307                    ; $ABD2FC  90 09        MX
    INC $00EC                       ; $ABD2FE  EE EC 00     MX
    CMP #$FFF8                      ; $ABD301  C9 F8 FF     MX
    BCS L_ABD307                    ; $ABD304  B0 01        MX
    RTS                             ; $ABD306  60           MX
L_ABD307:
    LDA $00F0                       ; $ABD307  AD F0 00     MX
    CMP #$00E0                      ; $ABD30A  C9 E0 00     MX
    BCC L_ABD315                    ; $ABD30D  90 06        MX
    CMP #$FFF0                      ; $ABD30F  C9 F0 FF     MX
    BCS L_ABD315                    ; $ABD312  B0 01        MX
    RTS                             ; $ABD314  60           MX
L_ABD315:
    SEP #$20                        ; $ABD315  E2 20        MX
    LDA $00EC                       ; $ABD317  AD EC 00     mX
    BEQ L_ABD326                    ; $ABD31A  F0 0A        mX
    LDA $ABE4D5                     ; $ABD31C  AF D5 E4 AB  mX
    ORA $0517                       ; $ABD320  0D 17 05     mX
    STA $0517                       ; $ABD323  8D 17 05     mX
L_ABD326:
    LDA $00F0                       ; $ABD326  AD F0 00     mX
    STA $0471                       ; $ABD329  8D 71 04     mX
    LDA $00EE                       ; $ABD32C  AD EE 00     mX
    STA $0470                       ; $ABD32F  8D 70 04     mX
    LDA $00F2                       ; $ABD332  AD F2 00     mX
    STA $0472                       ; $ABD335  8D 72 04     mX
    LDA $002A                       ; $ABD338  AD 2A 00     mX
    ORA $00F3                       ; $ABD33B  0D F3 00     mX
    STA $0473                       ; $ABD33E  8D 73 04     mX
    REP #$20                        ; $ABD341  C2 20        mX
    LDA #$0174                      ; $ABD343  A9 74 01     MX
    STA ($10)                       ; $ABD346  92 10        MX
    RTS                             ; $ABD348  60           MX
L_ABD349:
    STZ $00EC                       ; $ABD349  9C EC 00     MX
    LDA $00EE                       ; $ABD34C  AD EE 00     MX
    CLC                             ; $ABD34F  18           MX
    ADC #$0004                      ; $ABD350  69 04 00     MX
    STA $00EE                       ; $ABD353  8D EE 00     MX
    CMP #$0100                      ; $ABD356  C9 00 01     MX
    BCC L_ABD364                    ; $ABD359  90 09        MX
    INC $00EC                       ; $ABD35B  EE EC 00     MX
    CMP #$FFF8                      ; $ABD35E  C9 F8 FF     MX
    BCS L_ABD364                    ; $ABD361  B0 01        MX
    RTS                             ; $ABD363  60           MX
L_ABD364:
    LDA $00F0                       ; $ABD364  AD F0 00     MX
    CMP #$00E0                      ; $ABD367  C9 E0 00     MX
    BCC L_ABD372                    ; $ABD36A  90 06        MX
    CMP #$FFF0                      ; $ABD36C  C9 F0 FF     MX
    BCS L_ABD372                    ; $ABD36F  B0 01        MX
    RTS                             ; $ABD371  60           MX
L_ABD372:
    SEP #$20                        ; $ABD372  E2 20        MX
    LDA $00EC                       ; $ABD374  AD EC 00     mX
    BEQ L_ABD383                    ; $ABD377  F0 0A        mX
    LDA $ABE4D6                     ; $ABD379  AF D6 E4 AB  mX
    ORA $0517                       ; $ABD37D  0D 17 05     mX
    STA $0517                       ; $ABD380  8D 17 05     mX
L_ABD383:
    LDA $00F0                       ; $ABD383  AD F0 00     mX
    STA $0475                       ; $ABD386  8D 75 04     mX
    LDA $00EE                       ; $ABD389  AD EE 00     mX
    STA $0474                       ; $ABD38C  8D 74 04     mX
    LDA $00F2                       ; $ABD38F  AD F2 00     mX
    STA $0476                       ; $ABD392  8D 76 04     mX
    LDA $002A                       ; $ABD395  AD 2A 00     mX
    ORA $00F3                       ; $ABD398  0D F3 00     mX
    STA $0477                       ; $ABD39B  8D 77 04     mX
    REP #$20                        ; $ABD39E  C2 20        mX
    LDA #$0178                      ; $ABD3A0  A9 78 01     MX
    STA ($10)                       ; $ABD3A3  92 10        MX
    RTS                             ; $ABD3A5  60           MX
L_ABD3A6:
    STZ $00EC                       ; $ABD3A6  9C EC 00     MX
    LDA $00EE                       ; $ABD3A9  AD EE 00     MX
    CLC                             ; $ABD3AC  18           MX
    ADC #$0004                      ; $ABD3AD  69 04 00     MX
    STA $00EE                       ; $ABD3B0  8D EE 00     MX
    CMP #$0100                      ; $ABD3B3  C9 00 01     MX
    BCC L_ABD3C1                    ; $ABD3B6  90 09        MX
    INC $00EC                       ; $ABD3B8  EE EC 00     MX
    CMP #$FFF8                      ; $ABD3BB  C9 F8 FF     MX
    BCS L_ABD3C1                    ; $ABD3BE  B0 01        MX
    RTS                             ; $ABD3C0  60           MX
L_ABD3C1:
    LDA $00F0                       ; $ABD3C1  AD F0 00     MX
    CMP #$00E0                      ; $ABD3C4  C9 E0 00     MX
    BCC L_ABD3CF                    ; $ABD3C7  90 06        MX
    CMP #$FFF0                      ; $ABD3C9  C9 F0 FF     MX
    BCS L_ABD3CF                    ; $ABD3CC  B0 01        MX
    RTS                             ; $ABD3CE  60           MX
L_ABD3CF:
    SEP #$20                        ; $ABD3CF  E2 20        MX
    LDA $00EC                       ; $ABD3D1  AD EC 00     mX
    BEQ L_ABD3E0                    ; $ABD3D4  F0 0A        mX
    LDA $ABE4D7                     ; $ABD3D6  AF D7 E4 AB  mX
    ORA $0517                       ; $ABD3DA  0D 17 05     mX
    STA $0517                       ; $ABD3DD  8D 17 05     mX
L_ABD3E0:
    LDA $00F0                       ; $ABD3E0  AD F0 00     mX
    STA $0479                       ; $ABD3E3  8D 79 04     mX
    LDA $00EE                       ; $ABD3E6  AD EE 00     mX
    STA $0478                       ; $ABD3E9  8D 78 04     mX
    LDA $00F2                       ; $ABD3EC  AD F2 00     mX
    STA $047A                       ; $ABD3EF  8D 7A 04     mX
    LDA $002A                       ; $ABD3F2  AD 2A 00     mX
    ORA $00F3                       ; $ABD3F5  0D F3 00     mX
    STA $047B                       ; $ABD3F8  8D 7B 04     mX
    REP #$20                        ; $ABD3FB  C2 20        mX
    LDA #$017C                      ; $ABD3FD  A9 7C 01     MX
    STA ($10)                       ; $ABD400  92 10        MX
    RTS                             ; $ABD402  60           MX
L_ABD403:
    STZ $00EC                       ; $ABD403  9C EC 00     MX
    LDA $00EE                       ; $ABD406  AD EE 00     MX
    CLC                             ; $ABD409  18           MX
    ADC #$0004                      ; $ABD40A  69 04 00     MX
    STA $00EE                       ; $ABD40D  8D EE 00     MX
    CMP #$0100                      ; $ABD410  C9 00 01     MX
    BCC L_ABD41E                    ; $ABD413  90 09        MX
    INC $00EC                       ; $ABD415  EE EC 00     MX
    CMP #$FFF8                      ; $ABD418  C9 F8 FF     MX
    BCS L_ABD41E                    ; $ABD41B  B0 01        MX
    RTS                             ; $ABD41D  60           MX
L_ABD41E:
    LDA $00F0                       ; $ABD41E  AD F0 00     MX
    CMP #$00E0                      ; $ABD421  C9 E0 00     MX
    BCC L_ABD42C                    ; $ABD424  90 06        MX
    CMP #$FFF0                      ; $ABD426  C9 F0 FF     MX
    BCS L_ABD42C                    ; $ABD429  B0 01        MX
    RTS                             ; $ABD42B  60           MX
L_ABD42C:
    SEP #$20                        ; $ABD42C  E2 20        MX
    LDA $00EC                       ; $ABD42E  AD EC 00     mX
    BEQ L_ABD43D                    ; $ABD431  F0 0A        mX
    LDA $ABE4D8                     ; $ABD433  AF D8 E4 AB  mX
    ORA $0517                       ; $ABD437  0D 17 05     mX
    STA $0517                       ; $ABD43A  8D 17 05     mX
L_ABD43D:
    LDA $00F0                       ; $ABD43D  AD F0 00     mX
    STA $047D                       ; $ABD440  8D 7D 04     mX
    LDA $00EE                       ; $ABD443  AD EE 00     mX
    STA $047C                       ; $ABD446  8D 7C 04     mX
    LDA $00F2                       ; $ABD449  AD F2 00     mX
    STA $047E                       ; $ABD44C  8D 7E 04     mX
    LDA $002A                       ; $ABD44F  AD 2A 00     mX
    ORA $00F3                       ; $ABD452  0D F3 00     mX
    STA $047F                       ; $ABD455  8D 7F 04     mX
    REP #$20                        ; $ABD458  C2 20        mX
    LDA #$0180                      ; $ABD45A  A9 80 01     MX
    STA ($10)                       ; $ABD45D  92 10        MX
    RTS                             ; $ABD45F  60           MX
L_ABD460:
    STZ $00EC                       ; $ABD460  9C EC 00     MX
    LDA $00EE                       ; $ABD463  AD EE 00     MX
    CLC                             ; $ABD466  18           MX
    ADC #$0004                      ; $ABD467  69 04 00     MX
    STA $00EE                       ; $ABD46A  8D EE 00     MX
    CMP #$0100                      ; $ABD46D  C9 00 01     MX
    BCC L_ABD47B                    ; $ABD470  90 09        MX
    INC $00EC                       ; $ABD472  EE EC 00     MX
    CMP #$FFF8                      ; $ABD475  C9 F8 FF     MX
    BCS L_ABD47B                    ; $ABD478  B0 01        MX
    RTS                             ; $ABD47A  60           MX
L_ABD47B:
    LDA $00F0                       ; $ABD47B  AD F0 00     MX
    CMP #$00E0                      ; $ABD47E  C9 E0 00     MX
    BCC L_ABD489                    ; $ABD481  90 06        MX
    CMP #$FFF0                      ; $ABD483  C9 F0 FF     MX
    BCS L_ABD489                    ; $ABD486  B0 01        MX
    RTS                             ; $ABD488  60           MX
L_ABD489:
    SEP #$20                        ; $ABD489  E2 20        MX
    LDA $00EC                       ; $ABD48B  AD EC 00     mX
    BEQ L_ABD49A                    ; $ABD48E  F0 0A        mX
    LDA $ABE4D5                     ; $ABD490  AF D5 E4 AB  mX
    ORA $0518                       ; $ABD494  0D 18 05     mX
    STA $0518                       ; $ABD497  8D 18 05     mX
L_ABD49A:
    LDA $00F0                       ; $ABD49A  AD F0 00     mX
    STA $0481                       ; $ABD49D  8D 81 04     mX
    LDA $00EE                       ; $ABD4A0  AD EE 00     mX
    STA $0480                       ; $ABD4A3  8D 80 04     mX
    LDA $00F2                       ; $ABD4A6  AD F2 00     mX
    STA $0482                       ; $ABD4A9  8D 82 04     mX
    LDA $002A                       ; $ABD4AC  AD 2A 00     mX
    ORA $00F3                       ; $ABD4AF  0D F3 00     mX
    STA $0483                       ; $ABD4B2  8D 83 04     mX
    REP #$20                        ; $ABD4B5  C2 20        mX
    LDA #$0184                      ; $ABD4B7  A9 84 01     MX
    STA ($10)                       ; $ABD4BA  92 10        MX
    RTS                             ; $ABD4BC  60           MX
L_ABD4BD:
    STZ $00EC                       ; $ABD4BD  9C EC 00     MX
    LDA $00EE                       ; $ABD4C0  AD EE 00     MX
    CLC                             ; $ABD4C3  18           MX
    ADC #$0004                      ; $ABD4C4  69 04 00     MX
    STA $00EE                       ; $ABD4C7  8D EE 00     MX
    CMP #$0100                      ; $ABD4CA  C9 00 01     MX
    BCC L_ABD4D8                    ; $ABD4CD  90 09        MX
    INC $00EC                       ; $ABD4CF  EE EC 00     MX
    CMP #$FFF8                      ; $ABD4D2  C9 F8 FF     MX
    BCS L_ABD4D8                    ; $ABD4D5  B0 01        MX
    RTS                             ; $ABD4D7  60           MX
L_ABD4D8:
    LDA $00F0                       ; $ABD4D8  AD F0 00     MX
    CMP #$00E0                      ; $ABD4DB  C9 E0 00     MX
    BCC L_ABD4E6                    ; $ABD4DE  90 06        MX
    CMP #$FFF0                      ; $ABD4E0  C9 F0 FF     MX
    BCS L_ABD4E6                    ; $ABD4E3  B0 01        MX
    RTS                             ; $ABD4E5  60           MX
L_ABD4E6:
    SEP #$20                        ; $ABD4E6  E2 20        MX
    LDA $00EC                       ; $ABD4E8  AD EC 00     mX
    BEQ L_ABD4F7                    ; $ABD4EB  F0 0A        mX
    LDA $ABE4D6                     ; $ABD4ED  AF D6 E4 AB  mX
    ORA $0518                       ; $ABD4F1  0D 18 05     mX
    STA $0518                       ; $ABD4F4  8D 18 05     mX
L_ABD4F7:
    LDA $00F0                       ; $ABD4F7  AD F0 00     mX
    STA $0485                       ; $ABD4FA  8D 85 04     mX
    LDA $00EE                       ; $ABD4FD  AD EE 00     mX
    STA $0484                       ; $ABD500  8D 84 04     mX
    LDA $00F2                       ; $ABD503  AD F2 00     mX
    STA $0486                       ; $ABD506  8D 86 04     mX
    LDA $002A                       ; $ABD509  AD 2A 00     mX
    ORA $00F3                       ; $ABD50C  0D F3 00     mX
    STA $0487                       ; $ABD50F  8D 87 04     mX
    REP #$20                        ; $ABD512  C2 20        mX
    LDA #$0188                      ; $ABD514  A9 88 01     MX
    STA ($10)                       ; $ABD517  92 10        MX
    RTS                             ; $ABD519  60           MX
L_ABD51A:
    STZ $00EC                       ; $ABD51A  9C EC 00     MX
    LDA $00EE                       ; $ABD51D  AD EE 00     MX
    CLC                             ; $ABD520  18           MX
    ADC #$0004                      ; $ABD521  69 04 00     MX
    STA $00EE                       ; $ABD524  8D EE 00     MX
    CMP #$0100                      ; $ABD527  C9 00 01     MX
    BCC L_ABD535                    ; $ABD52A  90 09        MX
    INC $00EC                       ; $ABD52C  EE EC 00     MX
    CMP #$FFF8                      ; $ABD52F  C9 F8 FF     MX
    BCS L_ABD535                    ; $ABD532  B0 01        MX
    RTS                             ; $ABD534  60           MX
L_ABD535:
    LDA $00F0                       ; $ABD535  AD F0 00     MX
    CMP #$00E0                      ; $ABD538  C9 E0 00     MX
    BCC L_ABD543                    ; $ABD53B  90 06        MX
    CMP #$FFF0                      ; $ABD53D  C9 F0 FF     MX
    BCS L_ABD543                    ; $ABD540  B0 01        MX
    RTS                             ; $ABD542  60           MX
L_ABD543:
    SEP #$20                        ; $ABD543  E2 20        MX
    LDA $00EC                       ; $ABD545  AD EC 00     mX
    BEQ L_ABD554                    ; $ABD548  F0 0A        mX
    LDA $ABE4D7                     ; $ABD54A  AF D7 E4 AB  mX
    ORA $0518                       ; $ABD54E  0D 18 05     mX
    STA $0518                       ; $ABD551  8D 18 05     mX
L_ABD554:
    LDA $00F0                       ; $ABD554  AD F0 00     mX
    STA $0489                       ; $ABD557  8D 89 04     mX
    LDA $00EE                       ; $ABD55A  AD EE 00     mX
    STA $0488                       ; $ABD55D  8D 88 04     mX
    LDA $00F2                       ; $ABD560  AD F2 00     mX
    STA $048A                       ; $ABD563  8D 8A 04     mX
    LDA $002A                       ; $ABD566  AD 2A 00     mX
    ORA $00F3                       ; $ABD569  0D F3 00     mX
    STA $048B                       ; $ABD56C  8D 8B 04     mX
    REP #$20                        ; $ABD56F  C2 20        mX
    LDA #$018C                      ; $ABD571  A9 8C 01     MX
    STA ($10)                       ; $ABD574  92 10        MX
    RTS                             ; $ABD576  60           MX
L_ABD577:
    STZ $00EC                       ; $ABD577  9C EC 00     MX
    LDA $00EE                       ; $ABD57A  AD EE 00     MX
    CLC                             ; $ABD57D  18           MX
    ADC #$0004                      ; $ABD57E  69 04 00     MX
    STA $00EE                       ; $ABD581  8D EE 00     MX
    CMP #$0100                      ; $ABD584  C9 00 01     MX
    BCC L_ABD592                    ; $ABD587  90 09        MX
    INC $00EC                       ; $ABD589  EE EC 00     MX
    CMP #$FFF8                      ; $ABD58C  C9 F8 FF     MX
    BCS L_ABD592                    ; $ABD58F  B0 01        MX
    RTS                             ; $ABD591  60           MX
L_ABD592:
    LDA $00F0                       ; $ABD592  AD F0 00     MX
    CMP #$00E0                      ; $ABD595  C9 E0 00     MX
    BCC L_ABD5A0                    ; $ABD598  90 06        MX
    CMP #$FFF0                      ; $ABD59A  C9 F0 FF     MX
    BCS L_ABD5A0                    ; $ABD59D  B0 01        MX
    RTS                             ; $ABD59F  60           MX
L_ABD5A0:
    SEP #$20                        ; $ABD5A0  E2 20        MX
    LDA $00EC                       ; $ABD5A2  AD EC 00     mX
    BEQ L_ABD5B1                    ; $ABD5A5  F0 0A        mX
    LDA $ABE4D8                     ; $ABD5A7  AF D8 E4 AB  mX
    ORA $0518                       ; $ABD5AB  0D 18 05     mX
    STA $0518                       ; $ABD5AE  8D 18 05     mX
L_ABD5B1:
    LDA $00F0                       ; $ABD5B1  AD F0 00     mX
    STA $048D                       ; $ABD5B4  8D 8D 04     mX
    LDA $00EE                       ; $ABD5B7  AD EE 00     mX
    STA $048C                       ; $ABD5BA  8D 8C 04     mX
    LDA $00F2                       ; $ABD5BD  AD F2 00     mX
    STA $048E                       ; $ABD5C0  8D 8E 04     mX
    LDA $002A                       ; $ABD5C3  AD 2A 00     mX
    ORA $00F3                       ; $ABD5C6  0D F3 00     mX
    STA $048F                       ; $ABD5C9  8D 8F 04     mX
    REP #$20                        ; $ABD5CC  C2 20        mX
    LDA #$0190                      ; $ABD5CE  A9 90 01     MX
    STA ($10)                       ; $ABD5D1  92 10        MX
    RTS                             ; $ABD5D3  60           MX
L_ABD5D4:
    STZ $00EC                       ; $ABD5D4  9C EC 00     MX
    LDA $00EE                       ; $ABD5D7  AD EE 00     MX
    CLC                             ; $ABD5DA  18           MX
    ADC #$0004                      ; $ABD5DB  69 04 00     MX
    STA $00EE                       ; $ABD5DE  8D EE 00     MX
    CMP #$0100                      ; $ABD5E1  C9 00 01     MX
    BCC L_ABD5EF                    ; $ABD5E4  90 09        MX
    INC $00EC                       ; $ABD5E6  EE EC 00     MX
    CMP #$FFF8                      ; $ABD5E9  C9 F8 FF     MX
    BCS L_ABD5EF                    ; $ABD5EC  B0 01        MX
    RTS                             ; $ABD5EE  60           MX
L_ABD5EF:
    LDA $00F0                       ; $ABD5EF  AD F0 00     MX
    CMP #$00E0                      ; $ABD5F2  C9 E0 00     MX
    BCC L_ABD5FD                    ; $ABD5F5  90 06        MX
    CMP #$FFF0                      ; $ABD5F7  C9 F0 FF     MX
    BCS L_ABD5FD                    ; $ABD5FA  B0 01        MX
    RTS                             ; $ABD5FC  60           MX
L_ABD5FD:
    SEP #$20                        ; $ABD5FD  E2 20        MX
    LDA $00EC                       ; $ABD5FF  AD EC 00     mX
    BEQ L_ABD60E                    ; $ABD602  F0 0A        mX
    LDA $ABE4D5                     ; $ABD604  AF D5 E4 AB  mX
    ORA $0519                       ; $ABD608  0D 19 05     mX
    STA $0519                       ; $ABD60B  8D 19 05     mX
L_ABD60E:
    LDA $00F0                       ; $ABD60E  AD F0 00     mX
    STA $0491                       ; $ABD611  8D 91 04     mX
    LDA $00EE                       ; $ABD614  AD EE 00     mX
    STA $0490                       ; $ABD617  8D 90 04     mX
    LDA $00F2                       ; $ABD61A  AD F2 00     mX
    STA $0492                       ; $ABD61D  8D 92 04     mX
    LDA $002A                       ; $ABD620  AD 2A 00     mX
    ORA $00F3                       ; $ABD623  0D F3 00     mX
    STA $0493                       ; $ABD626  8D 93 04     mX
    REP #$20                        ; $ABD629  C2 20        mX
    LDA #$0194                      ; $ABD62B  A9 94 01     MX
    STA ($10)                       ; $ABD62E  92 10        MX
    RTS                             ; $ABD630  60           MX
L_ABD631:
    STZ $00EC                       ; $ABD631  9C EC 00     MX
    LDA $00EE                       ; $ABD634  AD EE 00     MX
    CLC                             ; $ABD637  18           MX
    ADC #$0004                      ; $ABD638  69 04 00     MX
    STA $00EE                       ; $ABD63B  8D EE 00     MX
    CMP #$0100                      ; $ABD63E  C9 00 01     MX
    BCC L_ABD64C                    ; $ABD641  90 09        MX
    INC $00EC                       ; $ABD643  EE EC 00     MX
    CMP #$FFF8                      ; $ABD646  C9 F8 FF     MX
    BCS L_ABD64C                    ; $ABD649  B0 01        MX
    RTS                             ; $ABD64B  60           MX
L_ABD64C:
    LDA $00F0                       ; $ABD64C  AD F0 00     MX
    CMP #$00E0                      ; $ABD64F  C9 E0 00     MX
    BCC L_ABD65A                    ; $ABD652  90 06        MX
    CMP #$FFF0                      ; $ABD654  C9 F0 FF     MX
    BCS L_ABD65A                    ; $ABD657  B0 01        MX
    RTS                             ; $ABD659  60           MX
L_ABD65A:
    SEP #$20                        ; $ABD65A  E2 20        MX
    LDA $00EC                       ; $ABD65C  AD EC 00     mX
    BEQ L_ABD66B                    ; $ABD65F  F0 0A        mX
    LDA $ABE4D6                     ; $ABD661  AF D6 E4 AB  mX
    ORA $0519                       ; $ABD665  0D 19 05     mX
    STA $0519                       ; $ABD668  8D 19 05     mX
L_ABD66B:
    LDA $00F0                       ; $ABD66B  AD F0 00     mX
    STA $0495                       ; $ABD66E  8D 95 04     mX
    LDA $00EE                       ; $ABD671  AD EE 00     mX
    STA $0494                       ; $ABD674  8D 94 04     mX
    LDA $00F2                       ; $ABD677  AD F2 00     mX
    STA $0496                       ; $ABD67A  8D 96 04     mX
    LDA $002A                       ; $ABD67D  AD 2A 00     mX
    ORA $00F3                       ; $ABD680  0D F3 00     mX
    STA $0497                       ; $ABD683  8D 97 04     mX
    REP #$20                        ; $ABD686  C2 20        mX
    LDA #$0198                      ; $ABD688  A9 98 01     MX
    STA ($10)                       ; $ABD68B  92 10        MX
    RTS                             ; $ABD68D  60           MX
L_ABD68E:
    STZ $00EC                       ; $ABD68E  9C EC 00     MX
    LDA $00EE                       ; $ABD691  AD EE 00     MX
    CLC                             ; $ABD694  18           MX
    ADC #$0004                      ; $ABD695  69 04 00     MX
    STA $00EE                       ; $ABD698  8D EE 00     MX
    CMP #$0100                      ; $ABD69B  C9 00 01     MX
    BCC L_ABD6A9                    ; $ABD69E  90 09        MX
    INC $00EC                       ; $ABD6A0  EE EC 00     MX
    CMP #$FFF8                      ; $ABD6A3  C9 F8 FF     MX
    BCS L_ABD6A9                    ; $ABD6A6  B0 01        MX
    RTS                             ; $ABD6A8  60           MX
L_ABD6A9:
    LDA $00F0                       ; $ABD6A9  AD F0 00     MX
    CMP #$00E0                      ; $ABD6AC  C9 E0 00     MX
    BCC L_ABD6B7                    ; $ABD6AF  90 06        MX
    CMP #$FFF0                      ; $ABD6B1  C9 F0 FF     MX
    BCS L_ABD6B7                    ; $ABD6B4  B0 01        MX
    RTS                             ; $ABD6B6  60           MX
L_ABD6B7:
    SEP #$20                        ; $ABD6B7  E2 20        MX
    LDA $00EC                       ; $ABD6B9  AD EC 00     mX
    BEQ L_ABD6C8                    ; $ABD6BC  F0 0A        mX
    LDA $ABE4D7                     ; $ABD6BE  AF D7 E4 AB  mX
    ORA $0519                       ; $ABD6C2  0D 19 05     mX
    STA $0519                       ; $ABD6C5  8D 19 05     mX
L_ABD6C8:
    LDA $00F0                       ; $ABD6C8  AD F0 00     mX
    STA $0499                       ; $ABD6CB  8D 99 04     mX
    LDA $00EE                       ; $ABD6CE  AD EE 00     mX
    STA $0498                       ; $ABD6D1  8D 98 04     mX
    LDA $00F2                       ; $ABD6D4  AD F2 00     mX
    STA $049A                       ; $ABD6D7  8D 9A 04     mX
    LDA $002A                       ; $ABD6DA  AD 2A 00     mX
    ORA $00F3                       ; $ABD6DD  0D F3 00     mX
    STA $049B                       ; $ABD6E0  8D 9B 04     mX
    REP #$20                        ; $ABD6E3  C2 20        mX
    LDA #$019C                      ; $ABD6E5  A9 9C 01     MX
    STA ($10)                       ; $ABD6E8  92 10        MX
    RTS                             ; $ABD6EA  60           MX
L_ABD6EB:
    STZ $00EC                       ; $ABD6EB  9C EC 00     MX
    LDA $00EE                       ; $ABD6EE  AD EE 00     MX
    CLC                             ; $ABD6F1  18           MX
    ADC #$0004                      ; $ABD6F2  69 04 00     MX
    STA $00EE                       ; $ABD6F5  8D EE 00     MX
    CMP #$0100                      ; $ABD6F8  C9 00 01     MX
    BCC L_ABD706                    ; $ABD6FB  90 09        MX
    INC $00EC                       ; $ABD6FD  EE EC 00     MX
    CMP #$FFF8                      ; $ABD700  C9 F8 FF     MX
    BCS L_ABD706                    ; $ABD703  B0 01        MX
    RTS                             ; $ABD705  60           MX
L_ABD706:
    LDA $00F0                       ; $ABD706  AD F0 00     MX
    CMP #$00E0                      ; $ABD709  C9 E0 00     MX
    BCC L_ABD714                    ; $ABD70C  90 06        MX
    CMP #$FFF0                      ; $ABD70E  C9 F0 FF     MX
    BCS L_ABD714                    ; $ABD711  B0 01        MX
    RTS                             ; $ABD713  60           MX
L_ABD714:
    SEP #$20                        ; $ABD714  E2 20        MX
    LDA $00EC                       ; $ABD716  AD EC 00     mX
    BEQ L_ABD725                    ; $ABD719  F0 0A        mX
    LDA $ABE4D8                     ; $ABD71B  AF D8 E4 AB  mX
    ORA $0519                       ; $ABD71F  0D 19 05     mX
    STA $0519                       ; $ABD722  8D 19 05     mX
L_ABD725:
    LDA $00F0                       ; $ABD725  AD F0 00     mX
    STA $049D                       ; $ABD728  8D 9D 04     mX
    LDA $00EE                       ; $ABD72B  AD EE 00     mX
    STA $049C                       ; $ABD72E  8D 9C 04     mX
    LDA $00F2                       ; $ABD731  AD F2 00     mX
    STA $049E                       ; $ABD734  8D 9E 04     mX
    LDA $002A                       ; $ABD737  AD 2A 00     mX
    ORA $00F3                       ; $ABD73A  0D F3 00     mX
    STA $049F                       ; $ABD73D  8D 9F 04     mX
    REP #$20                        ; $ABD740  C2 20        mX
    LDA #$01A0                      ; $ABD742  A9 A0 01     MX
    STA ($10)                       ; $ABD745  92 10        MX
    RTS                             ; $ABD747  60           MX
L_ABD748:
    STZ $00EC                       ; $ABD748  9C EC 00     MX
    LDA $00EE                       ; $ABD74B  AD EE 00     MX
    CLC                             ; $ABD74E  18           MX
    ADC #$0004                      ; $ABD74F  69 04 00     MX
    STA $00EE                       ; $ABD752  8D EE 00     MX
    CMP #$0100                      ; $ABD755  C9 00 01     MX
    BCC L_ABD763                    ; $ABD758  90 09        MX
    INC $00EC                       ; $ABD75A  EE EC 00     MX
    CMP #$FFF8                      ; $ABD75D  C9 F8 FF     MX
    BCS L_ABD763                    ; $ABD760  B0 01        MX
    RTS                             ; $ABD762  60           MX
L_ABD763:
    LDA $00F0                       ; $ABD763  AD F0 00     MX
    CMP #$00E0                      ; $ABD766  C9 E0 00     MX
    BCC L_ABD771                    ; $ABD769  90 06        MX
    CMP #$FFF0                      ; $ABD76B  C9 F0 FF     MX
    BCS L_ABD771                    ; $ABD76E  B0 01        MX
    RTS                             ; $ABD770  60           MX
L_ABD771:
    SEP #$20                        ; $ABD771  E2 20        MX
    LDA $00EC                       ; $ABD773  AD EC 00     mX
    BEQ L_ABD782                    ; $ABD776  F0 0A        mX
    LDA $ABE4D5                     ; $ABD778  AF D5 E4 AB  mX
    ORA $051A                       ; $ABD77C  0D 1A 05     mX
    STA $051A                       ; $ABD77F  8D 1A 05     mX
L_ABD782:
    LDA $00F0                       ; $ABD782  AD F0 00     mX
    STA $04A1                       ; $ABD785  8D A1 04     mX
    LDA $00EE                       ; $ABD788  AD EE 00     mX
    STA $04A0                       ; $ABD78B  8D A0 04     mX
    LDA $00F2                       ; $ABD78E  AD F2 00     mX
    STA $04A2                       ; $ABD791  8D A2 04     mX
    LDA $002A                       ; $ABD794  AD 2A 00     mX
    ORA $00F3                       ; $ABD797  0D F3 00     mX
    STA $04A3                       ; $ABD79A  8D A3 04     mX
    REP #$20                        ; $ABD79D  C2 20        mX
    LDA #$01A4                      ; $ABD79F  A9 A4 01     MX
    STA ($10)                       ; $ABD7A2  92 10        MX
    RTS                             ; $ABD7A4  60           MX
L_ABD7A5:
    STZ $00EC                       ; $ABD7A5  9C EC 00     MX
    LDA $00EE                       ; $ABD7A8  AD EE 00     MX
    CLC                             ; $ABD7AB  18           MX
    ADC #$0004                      ; $ABD7AC  69 04 00     MX
    STA $00EE                       ; $ABD7AF  8D EE 00     MX
    CMP #$0100                      ; $ABD7B2  C9 00 01     MX
    BCC L_ABD7C0                    ; $ABD7B5  90 09        MX
    INC $00EC                       ; $ABD7B7  EE EC 00     MX
    CMP #$FFF8                      ; $ABD7BA  C9 F8 FF     MX
    BCS L_ABD7C0                    ; $ABD7BD  B0 01        MX
    RTS                             ; $ABD7BF  60           MX
L_ABD7C0:
    LDA $00F0                       ; $ABD7C0  AD F0 00     MX
    CMP #$00E0                      ; $ABD7C3  C9 E0 00     MX
    BCC L_ABD7CE                    ; $ABD7C6  90 06        MX
    CMP #$FFF0                      ; $ABD7C8  C9 F0 FF     MX
    BCS L_ABD7CE                    ; $ABD7CB  B0 01        MX
    RTS                             ; $ABD7CD  60           MX
L_ABD7CE:
    SEP #$20                        ; $ABD7CE  E2 20        MX
    LDA $00EC                       ; $ABD7D0  AD EC 00     mX
    BEQ L_ABD7DF                    ; $ABD7D3  F0 0A        mX
    LDA $ABE4D6                     ; $ABD7D5  AF D6 E4 AB  mX
    ORA $051A                       ; $ABD7D9  0D 1A 05     mX
    STA $051A                       ; $ABD7DC  8D 1A 05     mX
L_ABD7DF:
    LDA $00F0                       ; $ABD7DF  AD F0 00     mX
    STA $04A5                       ; $ABD7E2  8D A5 04     mX
    LDA $00EE                       ; $ABD7E5  AD EE 00     mX
    STA $04A4                       ; $ABD7E8  8D A4 04     mX
    LDA $00F2                       ; $ABD7EB  AD F2 00     mX
    STA $04A6                       ; $ABD7EE  8D A6 04     mX
    LDA $002A                       ; $ABD7F1  AD 2A 00     mX
    ORA $00F3                       ; $ABD7F4  0D F3 00     mX
    STA $04A7                       ; $ABD7F7  8D A7 04     mX
    REP #$20                        ; $ABD7FA  C2 20        mX
    LDA #$01A8                      ; $ABD7FC  A9 A8 01     MX
    STA ($10)                       ; $ABD7FF  92 10        MX
    RTS                             ; $ABD801  60           MX
L_ABD802:
    STZ $00EC                       ; $ABD802  9C EC 00     MX
    LDA $00EE                       ; $ABD805  AD EE 00     MX
    CLC                             ; $ABD808  18           MX
    ADC #$0004                      ; $ABD809  69 04 00     MX
    STA $00EE                       ; $ABD80C  8D EE 00     MX
    CMP #$0100                      ; $ABD80F  C9 00 01     MX
    BCC L_ABD81D                    ; $ABD812  90 09        MX
    INC $00EC                       ; $ABD814  EE EC 00     MX
    CMP #$FFF8                      ; $ABD817  C9 F8 FF     MX
    BCS L_ABD81D                    ; $ABD81A  B0 01        MX
    RTS                             ; $ABD81C  60           MX
L_ABD81D:
    LDA $00F0                       ; $ABD81D  AD F0 00     MX
    CMP #$00E0                      ; $ABD820  C9 E0 00     MX
    BCC L_ABD82B                    ; $ABD823  90 06        MX
    CMP #$FFF0                      ; $ABD825  C9 F0 FF     MX
    BCS L_ABD82B                    ; $ABD828  B0 01        MX
    RTS                             ; $ABD82A  60           MX
L_ABD82B:
    SEP #$20                        ; $ABD82B  E2 20        MX
    LDA $00EC                       ; $ABD82D  AD EC 00     mX
    BEQ L_ABD83C                    ; $ABD830  F0 0A        mX
    LDA $ABE4D7                     ; $ABD832  AF D7 E4 AB  mX
    ORA $051A                       ; $ABD836  0D 1A 05     mX
    STA $051A                       ; $ABD839  8D 1A 05     mX
L_ABD83C:
    LDA $00F0                       ; $ABD83C  AD F0 00     mX
    STA $04A9                       ; $ABD83F  8D A9 04     mX
    LDA $00EE                       ; $ABD842  AD EE 00     mX
    STA $04A8                       ; $ABD845  8D A8 04     mX
    LDA $00F2                       ; $ABD848  AD F2 00     mX
    STA $04AA                       ; $ABD84B  8D AA 04     mX
    LDA $002A                       ; $ABD84E  AD 2A 00     mX
    ORA $00F3                       ; $ABD851  0D F3 00     mX
    STA $04AB                       ; $ABD854  8D AB 04     mX
    REP #$20                        ; $ABD857  C2 20        mX
    LDA #$01AC                      ; $ABD859  A9 AC 01     MX
    STA ($10)                       ; $ABD85C  92 10        MX
    RTS                             ; $ABD85E  60           MX
L_ABD85F:
    STZ $00EC                       ; $ABD85F  9C EC 00     MX
    LDA $00EE                       ; $ABD862  AD EE 00     MX
    CLC                             ; $ABD865  18           MX
    ADC #$0004                      ; $ABD866  69 04 00     MX
    STA $00EE                       ; $ABD869  8D EE 00     MX
    CMP #$0100                      ; $ABD86C  C9 00 01     MX
    BCC L_ABD87A                    ; $ABD86F  90 09        MX
    INC $00EC                       ; $ABD871  EE EC 00     MX
    CMP #$FFF8                      ; $ABD874  C9 F8 FF     MX
    BCS L_ABD87A                    ; $ABD877  B0 01        MX
    RTS                             ; $ABD879  60           MX
L_ABD87A:
    LDA $00F0                       ; $ABD87A  AD F0 00     MX
    CMP #$00E0                      ; $ABD87D  C9 E0 00     MX
    BCC L_ABD888                    ; $ABD880  90 06        MX
    CMP #$FFF0                      ; $ABD882  C9 F0 FF     MX
    BCS L_ABD888                    ; $ABD885  B0 01        MX
    RTS                             ; $ABD887  60           MX
L_ABD888:
    SEP #$20                        ; $ABD888  E2 20        MX
    LDA $00EC                       ; $ABD88A  AD EC 00     mX
    BEQ L_ABD899                    ; $ABD88D  F0 0A        mX
    LDA $ABE4D8                     ; $ABD88F  AF D8 E4 AB  mX
    ORA $051A                       ; $ABD893  0D 1A 05     mX
    STA $051A                       ; $ABD896  8D 1A 05     mX
L_ABD899:
    LDA $00F0                       ; $ABD899  AD F0 00     mX
    STA $04AD                       ; $ABD89C  8D AD 04     mX
    LDA $00EE                       ; $ABD89F  AD EE 00     mX
    STA $04AC                       ; $ABD8A2  8D AC 04     mX
    LDA $00F2                       ; $ABD8A5  AD F2 00     mX
    STA $04AE                       ; $ABD8A8  8D AE 04     mX
    LDA $002A                       ; $ABD8AB  AD 2A 00     mX
    ORA $00F3                       ; $ABD8AE  0D F3 00     mX
    STA $04AF                       ; $ABD8B1  8D AF 04     mX
    REP #$20                        ; $ABD8B4  C2 20        mX
    LDA #$01B0                      ; $ABD8B6  A9 B0 01     MX
    STA ($10)                       ; $ABD8B9  92 10        MX
    RTS                             ; $ABD8BB  60           MX
L_ABD8BC:
    STZ $00EC                       ; $ABD8BC  9C EC 00     MX
    LDA $00EE                       ; $ABD8BF  AD EE 00     MX
    CLC                             ; $ABD8C2  18           MX
    ADC #$0004                      ; $ABD8C3  69 04 00     MX
    STA $00EE                       ; $ABD8C6  8D EE 00     MX
    CMP #$0100                      ; $ABD8C9  C9 00 01     MX
    BCC L_ABD8D7                    ; $ABD8CC  90 09        MX
    INC $00EC                       ; $ABD8CE  EE EC 00     MX
    CMP #$FFF8                      ; $ABD8D1  C9 F8 FF     MX
    BCS L_ABD8D7                    ; $ABD8D4  B0 01        MX
    RTS                             ; $ABD8D6  60           MX
L_ABD8D7:
    LDA $00F0                       ; $ABD8D7  AD F0 00     MX
    CMP #$00E0                      ; $ABD8DA  C9 E0 00     MX
    BCC L_ABD8E5                    ; $ABD8DD  90 06        MX
    CMP #$FFF0                      ; $ABD8DF  C9 F0 FF     MX
    BCS L_ABD8E5                    ; $ABD8E2  B0 01        MX
    RTS                             ; $ABD8E4  60           MX
L_ABD8E5:
    SEP #$20                        ; $ABD8E5  E2 20        MX
    LDA $00EC                       ; $ABD8E7  AD EC 00     mX
    BEQ L_ABD8F6                    ; $ABD8EA  F0 0A        mX
    LDA $ABE4D5                     ; $ABD8EC  AF D5 E4 AB  mX
    ORA $051B                       ; $ABD8F0  0D 1B 05     mX
    STA $051B                       ; $ABD8F3  8D 1B 05     mX
L_ABD8F6:
    LDA $00F0                       ; $ABD8F6  AD F0 00     mX
    STA $04B1                       ; $ABD8F9  8D B1 04     mX
    LDA $00EE                       ; $ABD8FC  AD EE 00     mX
    STA $04B0                       ; $ABD8FF  8D B0 04     mX
    LDA $00F2                       ; $ABD902  AD F2 00     mX
    STA $04B2                       ; $ABD905  8D B2 04     mX
    LDA $002A                       ; $ABD908  AD 2A 00     mX
    ORA $00F3                       ; $ABD90B  0D F3 00     mX
    STA $04B3                       ; $ABD90E  8D B3 04     mX
    REP #$20                        ; $ABD911  C2 20        mX
    LDA #$01B4                      ; $ABD913  A9 B4 01     MX
    STA ($10)                       ; $ABD916  92 10        MX
    RTS                             ; $ABD918  60           MX
L_ABD919:
    STZ $00EC                       ; $ABD919  9C EC 00     MX
    LDA $00EE                       ; $ABD91C  AD EE 00     MX
    CLC                             ; $ABD91F  18           MX
    ADC #$0004                      ; $ABD920  69 04 00     MX
    STA $00EE                       ; $ABD923  8D EE 00     MX
    CMP #$0100                      ; $ABD926  C9 00 01     MX
    BCC L_ABD934                    ; $ABD929  90 09        MX
    INC $00EC                       ; $ABD92B  EE EC 00     MX
    CMP #$FFF8                      ; $ABD92E  C9 F8 FF     MX
    BCS L_ABD934                    ; $ABD931  B0 01        MX
    RTS                             ; $ABD933  60           MX
L_ABD934:
    LDA $00F0                       ; $ABD934  AD F0 00     MX
    CMP #$00E0                      ; $ABD937  C9 E0 00     MX
    BCC L_ABD942                    ; $ABD93A  90 06        MX
    CMP #$FFF0                      ; $ABD93C  C9 F0 FF     MX
    BCS L_ABD942                    ; $ABD93F  B0 01        MX
    RTS                             ; $ABD941  60           MX
L_ABD942:
    SEP #$20                        ; $ABD942  E2 20        MX
    LDA $00EC                       ; $ABD944  AD EC 00     mX
    BEQ L_ABD953                    ; $ABD947  F0 0A        mX
    LDA $ABE4D6                     ; $ABD949  AF D6 E4 AB  mX
    ORA $051B                       ; $ABD94D  0D 1B 05     mX
    STA $051B                       ; $ABD950  8D 1B 05     mX
L_ABD953:
    LDA $00F0                       ; $ABD953  AD F0 00     mX
    STA $04B5                       ; $ABD956  8D B5 04     mX
    LDA $00EE                       ; $ABD959  AD EE 00     mX
    STA $04B4                       ; $ABD95C  8D B4 04     mX
    LDA $00F2                       ; $ABD95F  AD F2 00     mX
    STA $04B6                       ; $ABD962  8D B6 04     mX
    LDA $002A                       ; $ABD965  AD 2A 00     mX
    ORA $00F3                       ; $ABD968  0D F3 00     mX
    STA $04B7                       ; $ABD96B  8D B7 04     mX
    REP #$20                        ; $ABD96E  C2 20        mX
    LDA #$01B8                      ; $ABD970  A9 B8 01     MX
    STA ($10)                       ; $ABD973  92 10        MX
    RTS                             ; $ABD975  60           MX
L_ABD976:
    STZ $00EC                       ; $ABD976  9C EC 00     MX
    LDA $00EE                       ; $ABD979  AD EE 00     MX
    CLC                             ; $ABD97C  18           MX
    ADC #$0004                      ; $ABD97D  69 04 00     MX
    STA $00EE                       ; $ABD980  8D EE 00     MX
    CMP #$0100                      ; $ABD983  C9 00 01     MX
    BCC L_ABD991                    ; $ABD986  90 09        MX
    INC $00EC                       ; $ABD988  EE EC 00     MX
    CMP #$FFF8                      ; $ABD98B  C9 F8 FF     MX
    BCS L_ABD991                    ; $ABD98E  B0 01        MX
    RTS                             ; $ABD990  60           MX
L_ABD991:
    LDA $00F0                       ; $ABD991  AD F0 00     MX
    CMP #$00E0                      ; $ABD994  C9 E0 00     MX
    BCC L_ABD99F                    ; $ABD997  90 06        MX
    CMP #$FFF0                      ; $ABD999  C9 F0 FF     MX
    BCS L_ABD99F                    ; $ABD99C  B0 01        MX
    RTS                             ; $ABD99E  60           MX
L_ABD99F:
    SEP #$20                        ; $ABD99F  E2 20        MX
    LDA $00EC                       ; $ABD9A1  AD EC 00     mX
    BEQ L_ABD9B0                    ; $ABD9A4  F0 0A        mX
    LDA $ABE4D7                     ; $ABD9A6  AF D7 E4 AB  mX
    ORA $051B                       ; $ABD9AA  0D 1B 05     mX
    STA $051B                       ; $ABD9AD  8D 1B 05     mX
L_ABD9B0:
    LDA $00F0                       ; $ABD9B0  AD F0 00     mX
    STA $04B9                       ; $ABD9B3  8D B9 04     mX
    LDA $00EE                       ; $ABD9B6  AD EE 00     mX
    STA $04B8                       ; $ABD9B9  8D B8 04     mX
    LDA $00F2                       ; $ABD9BC  AD F2 00     mX
    STA $04BA                       ; $ABD9BF  8D BA 04     mX
    LDA $002A                       ; $ABD9C2  AD 2A 00     mX
    ORA $00F3                       ; $ABD9C5  0D F3 00     mX
    STA $04BB                       ; $ABD9C8  8D BB 04     mX
    REP #$20                        ; $ABD9CB  C2 20        mX
    LDA #$01BC                      ; $ABD9CD  A9 BC 01     MX
    STA ($10)                       ; $ABD9D0  92 10        MX
    RTS                             ; $ABD9D2  60           MX
L_ABD9D3:
    STZ $00EC                       ; $ABD9D3  9C EC 00     MX
    LDA $00EE                       ; $ABD9D6  AD EE 00     MX
    CLC                             ; $ABD9D9  18           MX
    ADC #$0004                      ; $ABD9DA  69 04 00     MX
    STA $00EE                       ; $ABD9DD  8D EE 00     MX
    CMP #$0100                      ; $ABD9E0  C9 00 01     MX
    BCC L_ABD9EE                    ; $ABD9E3  90 09        MX
    INC $00EC                       ; $ABD9E5  EE EC 00     MX
    CMP #$FFF8                      ; $ABD9E8  C9 F8 FF     MX
    BCS L_ABD9EE                    ; $ABD9EB  B0 01        MX
    RTS                             ; $ABD9ED  60           MX
L_ABD9EE:
    LDA $00F0                       ; $ABD9EE  AD F0 00     MX
    CMP #$00E0                      ; $ABD9F1  C9 E0 00     MX
    BCC L_ABD9FC                    ; $ABD9F4  90 06        MX
    CMP #$FFF0                      ; $ABD9F6  C9 F0 FF     MX
    BCS L_ABD9FC                    ; $ABD9F9  B0 01        MX
    RTS                             ; $ABD9FB  60           MX
L_ABD9FC:
    SEP #$20                        ; $ABD9FC  E2 20        MX
    LDA $00EC                       ; $ABD9FE  AD EC 00     mX
    BEQ L_ABDA0D                    ; $ABDA01  F0 0A        mX
    LDA $ABE4D8                     ; $ABDA03  AF D8 E4 AB  mX
    ORA $051B                       ; $ABDA07  0D 1B 05     mX
    STA $051B                       ; $ABDA0A  8D 1B 05     mX
L_ABDA0D:
    LDA $00F0                       ; $ABDA0D  AD F0 00     mX
    STA $04BD                       ; $ABDA10  8D BD 04     mX
    LDA $00EE                       ; $ABDA13  AD EE 00     mX
    STA $04BC                       ; $ABDA16  8D BC 04     mX
    LDA $00F2                       ; $ABDA19  AD F2 00     mX
    STA $04BE                       ; $ABDA1C  8D BE 04     mX
    LDA $002A                       ; $ABDA1F  AD 2A 00     mX
    ORA $00F3                       ; $ABDA22  0D F3 00     mX
    STA $04BF                       ; $ABDA25  8D BF 04     mX
    REP #$20                        ; $ABDA28  C2 20        mX
    LDA #$01C0                      ; $ABDA2A  A9 C0 01     MX
    STA ($10)                       ; $ABDA2D  92 10        MX
    RTS                             ; $ABDA2F  60           MX
L_ABDA30:
    STZ $00EC                       ; $ABDA30  9C EC 00     MX
    LDA $00EE                       ; $ABDA33  AD EE 00     MX
    CLC                             ; $ABDA36  18           MX
    ADC #$0004                      ; $ABDA37  69 04 00     MX
    STA $00EE                       ; $ABDA3A  8D EE 00     MX
    CMP #$0100                      ; $ABDA3D  C9 00 01     MX
    BCC L_ABDA4B                    ; $ABDA40  90 09        MX
    INC $00EC                       ; $ABDA42  EE EC 00     MX
    CMP #$FFF8                      ; $ABDA45  C9 F8 FF     MX
    BCS L_ABDA4B                    ; $ABDA48  B0 01        MX
    RTS                             ; $ABDA4A  60           MX
L_ABDA4B:
    LDA $00F0                       ; $ABDA4B  AD F0 00     MX
    CMP #$00E0                      ; $ABDA4E  C9 E0 00     MX
    BCC L_ABDA59                    ; $ABDA51  90 06        MX
    CMP #$FFF0                      ; $ABDA53  C9 F0 FF     MX
    BCS L_ABDA59                    ; $ABDA56  B0 01        MX
    RTS                             ; $ABDA58  60           MX
L_ABDA59:
    SEP #$20                        ; $ABDA59  E2 20        MX
    LDA $00EC                       ; $ABDA5B  AD EC 00     mX
    BEQ L_ABDA6A                    ; $ABDA5E  F0 0A        mX
    LDA $ABE4D5                     ; $ABDA60  AF D5 E4 AB  mX
    ORA $051C                       ; $ABDA64  0D 1C 05     mX
    STA $051C                       ; $ABDA67  8D 1C 05     mX
L_ABDA6A:
    LDA $00F0                       ; $ABDA6A  AD F0 00     mX
    STA $04C1                       ; $ABDA6D  8D C1 04     mX
    LDA $00EE                       ; $ABDA70  AD EE 00     mX
    STA $04C0                       ; $ABDA73  8D C0 04     mX
    LDA $00F2                       ; $ABDA76  AD F2 00     mX
    STA $04C2                       ; $ABDA79  8D C2 04     mX
    LDA $002A                       ; $ABDA7C  AD 2A 00     mX
    ORA $00F3                       ; $ABDA7F  0D F3 00     mX
    STA $04C3                       ; $ABDA82  8D C3 04     mX
    REP #$20                        ; $ABDA85  C2 20        mX
    LDA #$01C4                      ; $ABDA87  A9 C4 01     MX
    STA ($10)                       ; $ABDA8A  92 10        MX
    RTS                             ; $ABDA8C  60           MX
L_ABDA8D:
    STZ $00EC                       ; $ABDA8D  9C EC 00     MX
    LDA $00EE                       ; $ABDA90  AD EE 00     MX
    CLC                             ; $ABDA93  18           MX
    ADC #$0004                      ; $ABDA94  69 04 00     MX
    STA $00EE                       ; $ABDA97  8D EE 00     MX
    CMP #$0100                      ; $ABDA9A  C9 00 01     MX
    BCC L_ABDAA8                    ; $ABDA9D  90 09        MX
    INC $00EC                       ; $ABDA9F  EE EC 00     MX
    CMP #$FFF8                      ; $ABDAA2  C9 F8 FF     MX
    BCS L_ABDAA8                    ; $ABDAA5  B0 01        MX
    RTS                             ; $ABDAA7  60           MX
L_ABDAA8:
    LDA $00F0                       ; $ABDAA8  AD F0 00     MX
    CMP #$00E0                      ; $ABDAAB  C9 E0 00     MX
    BCC L_ABDAB6                    ; $ABDAAE  90 06        MX
    CMP #$FFF0                      ; $ABDAB0  C9 F0 FF     MX
    BCS L_ABDAB6                    ; $ABDAB3  B0 01        MX
    RTS                             ; $ABDAB5  60           MX
L_ABDAB6:
    SEP #$20                        ; $ABDAB6  E2 20        MX
    LDA $00EC                       ; $ABDAB8  AD EC 00     mX
    BEQ L_ABDAC7                    ; $ABDABB  F0 0A        mX
    LDA $ABE4D6                     ; $ABDABD  AF D6 E4 AB  mX
    ORA $051C                       ; $ABDAC1  0D 1C 05     mX
    STA $051C                       ; $ABDAC4  8D 1C 05     mX
L_ABDAC7:
    LDA $00F0                       ; $ABDAC7  AD F0 00     mX
    STA $04C5                       ; $ABDACA  8D C5 04     mX
    LDA $00EE                       ; $ABDACD  AD EE 00     mX
    STA $04C4                       ; $ABDAD0  8D C4 04     mX
    LDA $00F2                       ; $ABDAD3  AD F2 00     mX
    STA $04C6                       ; $ABDAD6  8D C6 04     mX
    LDA $002A                       ; $ABDAD9  AD 2A 00     mX
    ORA $00F3                       ; $ABDADC  0D F3 00     mX
    STA $04C7                       ; $ABDADF  8D C7 04     mX
    REP #$20                        ; $ABDAE2  C2 20        mX
    LDA #$01C8                      ; $ABDAE4  A9 C8 01     MX
    STA ($10)                       ; $ABDAE7  92 10        MX
    RTS                             ; $ABDAE9  60           MX
L_ABDAEA:
    STZ $00EC                       ; $ABDAEA  9C EC 00     MX
    LDA $00EE                       ; $ABDAED  AD EE 00     MX
    CLC                             ; $ABDAF0  18           MX
    ADC #$0004                      ; $ABDAF1  69 04 00     MX
    STA $00EE                       ; $ABDAF4  8D EE 00     MX
    CMP #$0100                      ; $ABDAF7  C9 00 01     MX
    BCC L_ABDB05                    ; $ABDAFA  90 09        MX
    INC $00EC                       ; $ABDAFC  EE EC 00     MX
    CMP #$FFF8                      ; $ABDAFF  C9 F8 FF     MX
    BCS L_ABDB05                    ; $ABDB02  B0 01        MX
    RTS                             ; $ABDB04  60           MX
L_ABDB05:
    LDA $00F0                       ; $ABDB05  AD F0 00     MX
    CMP #$00E0                      ; $ABDB08  C9 E0 00     MX
    BCC L_ABDB13                    ; $ABDB0B  90 06        MX
    CMP #$FFF0                      ; $ABDB0D  C9 F0 FF     MX
    BCS L_ABDB13                    ; $ABDB10  B0 01        MX
    RTS                             ; $ABDB12  60           MX
L_ABDB13:
    SEP #$20                        ; $ABDB13  E2 20        MX
    LDA $00EC                       ; $ABDB15  AD EC 00     mX
    BEQ L_ABDB24                    ; $ABDB18  F0 0A        mX
    LDA $ABE4D7                     ; $ABDB1A  AF D7 E4 AB  mX
    ORA $051C                       ; $ABDB1E  0D 1C 05     mX
    STA $051C                       ; $ABDB21  8D 1C 05     mX
L_ABDB24:
    LDA $00F0                       ; $ABDB24  AD F0 00     mX
    STA $04C9                       ; $ABDB27  8D C9 04     mX
    LDA $00EE                       ; $ABDB2A  AD EE 00     mX
    STA $04C8                       ; $ABDB2D  8D C8 04     mX
    LDA $00F2                       ; $ABDB30  AD F2 00     mX
    STA $04CA                       ; $ABDB33  8D CA 04     mX
    LDA $002A                       ; $ABDB36  AD 2A 00     mX
    ORA $00F3                       ; $ABDB39  0D F3 00     mX
    STA $04CB                       ; $ABDB3C  8D CB 04     mX
    REP #$20                        ; $ABDB3F  C2 20        mX
    LDA #$01CC                      ; $ABDB41  A9 CC 01     MX
    STA ($10)                       ; $ABDB44  92 10        MX
    RTS                             ; $ABDB46  60           MX
L_ABDB47:
    STZ $00EC                       ; $ABDB47  9C EC 00     MX
    LDA $00EE                       ; $ABDB4A  AD EE 00     MX
    CLC                             ; $ABDB4D  18           MX
    ADC #$0004                      ; $ABDB4E  69 04 00     MX
    STA $00EE                       ; $ABDB51  8D EE 00     MX
    CMP #$0100                      ; $ABDB54  C9 00 01     MX
    BCC L_ABDB62                    ; $ABDB57  90 09        MX
    INC $00EC                       ; $ABDB59  EE EC 00     MX
    CMP #$FFF8                      ; $ABDB5C  C9 F8 FF     MX
    BCS L_ABDB62                    ; $ABDB5F  B0 01        MX
    RTS                             ; $ABDB61  60           MX
L_ABDB62:
    LDA $00F0                       ; $ABDB62  AD F0 00     MX
    CMP #$00E0                      ; $ABDB65  C9 E0 00     MX
    BCC L_ABDB70                    ; $ABDB68  90 06        MX
    CMP #$FFF0                      ; $ABDB6A  C9 F0 FF     MX
    BCS L_ABDB70                    ; $ABDB6D  B0 01        MX
    RTS                             ; $ABDB6F  60           MX
L_ABDB70:
    SEP #$20                        ; $ABDB70  E2 20        MX
    LDA $00EC                       ; $ABDB72  AD EC 00     mX
    BEQ L_ABDB81                    ; $ABDB75  F0 0A        mX
    LDA $ABE4D8                     ; $ABDB77  AF D8 E4 AB  mX
    ORA $051C                       ; $ABDB7B  0D 1C 05     mX
    STA $051C                       ; $ABDB7E  8D 1C 05     mX
L_ABDB81:
    LDA $00F0                       ; $ABDB81  AD F0 00     mX
    STA $04CD                       ; $ABDB84  8D CD 04     mX
    LDA $00EE                       ; $ABDB87  AD EE 00     mX
    STA $04CC                       ; $ABDB8A  8D CC 04     mX
    LDA $00F2                       ; $ABDB8D  AD F2 00     mX
    STA $04CE                       ; $ABDB90  8D CE 04     mX
    LDA $002A                       ; $ABDB93  AD 2A 00     mX
    ORA $00F3                       ; $ABDB96  0D F3 00     mX
    STA $04CF                       ; $ABDB99  8D CF 04     mX
    REP #$20                        ; $ABDB9C  C2 20        mX
    LDA #$01D0                      ; $ABDB9E  A9 D0 01     MX
    STA ($10)                       ; $ABDBA1  92 10        MX
    RTS                             ; $ABDBA3  60           MX
L_ABDBA4:
    STZ $00EC                       ; $ABDBA4  9C EC 00     MX
    LDA $00EE                       ; $ABDBA7  AD EE 00     MX
    CLC                             ; $ABDBAA  18           MX
    ADC #$0004                      ; $ABDBAB  69 04 00     MX
    STA $00EE                       ; $ABDBAE  8D EE 00     MX
    CMP #$0100                      ; $ABDBB1  C9 00 01     MX
    BCC L_ABDBBF                    ; $ABDBB4  90 09        MX
    INC $00EC                       ; $ABDBB6  EE EC 00     MX
    CMP #$FFF8                      ; $ABDBB9  C9 F8 FF     MX
    BCS L_ABDBBF                    ; $ABDBBC  B0 01        MX
    RTS                             ; $ABDBBE  60           MX
L_ABDBBF:
    LDA $00F0                       ; $ABDBBF  AD F0 00     MX
    CMP #$00E0                      ; $ABDBC2  C9 E0 00     MX
    BCC L_ABDBCD                    ; $ABDBC5  90 06        MX
    CMP #$FFF0                      ; $ABDBC7  C9 F0 FF     MX
    BCS L_ABDBCD                    ; $ABDBCA  B0 01        MX
    RTS                             ; $ABDBCC  60           MX
L_ABDBCD:
    SEP #$20                        ; $ABDBCD  E2 20        MX
    LDA $00EC                       ; $ABDBCF  AD EC 00     mX
    BEQ L_ABDBDE                    ; $ABDBD2  F0 0A        mX
    LDA $ABE4D5                     ; $ABDBD4  AF D5 E4 AB  mX
    ORA $051D                       ; $ABDBD8  0D 1D 05     mX
    STA $051D                       ; $ABDBDB  8D 1D 05     mX
L_ABDBDE:
    LDA $00F0                       ; $ABDBDE  AD F0 00     mX
    STA $04D1                       ; $ABDBE1  8D D1 04     mX
    LDA $00EE                       ; $ABDBE4  AD EE 00     mX
    STA $04D0                       ; $ABDBE7  8D D0 04     mX
    LDA $00F2                       ; $ABDBEA  AD F2 00     mX
    STA $04D2                       ; $ABDBED  8D D2 04     mX
    LDA $002A                       ; $ABDBF0  AD 2A 00     mX
    ORA $00F3                       ; $ABDBF3  0D F3 00     mX
    STA $04D3                       ; $ABDBF6  8D D3 04     mX
    REP #$20                        ; $ABDBF9  C2 20        mX
    LDA #$01D4                      ; $ABDBFB  A9 D4 01     MX
    STA ($10)                       ; $ABDBFE  92 10        MX
    RTS                             ; $ABDC00  60           MX
L_ABDC01:
    STZ $00EC                       ; $ABDC01  9C EC 00     MX
    LDA $00EE                       ; $ABDC04  AD EE 00     MX
    CLC                             ; $ABDC07  18           MX
    ADC #$0004                      ; $ABDC08  69 04 00     MX
    STA $00EE                       ; $ABDC0B  8D EE 00     MX
    CMP #$0100                      ; $ABDC0E  C9 00 01     MX
    BCC L_ABDC1C                    ; $ABDC11  90 09        MX
    INC $00EC                       ; $ABDC13  EE EC 00     MX
    CMP #$FFF8                      ; $ABDC16  C9 F8 FF     MX
    BCS L_ABDC1C                    ; $ABDC19  B0 01        MX
    RTS                             ; $ABDC1B  60           MX
L_ABDC1C:
    LDA $00F0                       ; $ABDC1C  AD F0 00     MX
    CMP #$00E0                      ; $ABDC1F  C9 E0 00     MX
    BCC L_ABDC2A                    ; $ABDC22  90 06        MX
    CMP #$FFF0                      ; $ABDC24  C9 F0 FF     MX
    BCS L_ABDC2A                    ; $ABDC27  B0 01        MX
    RTS                             ; $ABDC29  60           MX
L_ABDC2A:
    SEP #$20                        ; $ABDC2A  E2 20        MX
    LDA $00EC                       ; $ABDC2C  AD EC 00     mX
    BEQ L_ABDC3B                    ; $ABDC2F  F0 0A        mX
    LDA $ABE4D6                     ; $ABDC31  AF D6 E4 AB  mX
    ORA $051D                       ; $ABDC35  0D 1D 05     mX
    STA $051D                       ; $ABDC38  8D 1D 05     mX
L_ABDC3B:
    LDA $00F0                       ; $ABDC3B  AD F0 00     mX
    STA $04D5                       ; $ABDC3E  8D D5 04     mX
    LDA $00EE                       ; $ABDC41  AD EE 00     mX
    STA $04D4                       ; $ABDC44  8D D4 04     mX
    LDA $00F2                       ; $ABDC47  AD F2 00     mX
    STA $04D6                       ; $ABDC4A  8D D6 04     mX
    LDA $002A                       ; $ABDC4D  AD 2A 00     mX
    ORA $00F3                       ; $ABDC50  0D F3 00     mX
    STA $04D7                       ; $ABDC53  8D D7 04     mX
    REP #$20                        ; $ABDC56  C2 20        mX
    LDA #$01D8                      ; $ABDC58  A9 D8 01     MX
    STA ($10)                       ; $ABDC5B  92 10        MX
    RTS                             ; $ABDC5D  60           MX
L_ABDC5E:
    STZ $00EC                       ; $ABDC5E  9C EC 00     MX
    LDA $00EE                       ; $ABDC61  AD EE 00     MX
    CLC                             ; $ABDC64  18           MX
    ADC #$0004                      ; $ABDC65  69 04 00     MX
    STA $00EE                       ; $ABDC68  8D EE 00     MX
    CMP #$0100                      ; $ABDC6B  C9 00 01     MX
    BCC L_ABDC79                    ; $ABDC6E  90 09        MX
    INC $00EC                       ; $ABDC70  EE EC 00     MX
    CMP #$FFF8                      ; $ABDC73  C9 F8 FF     MX
    BCS L_ABDC79                    ; $ABDC76  B0 01        MX
    RTS                             ; $ABDC78  60           MX
L_ABDC79:
    LDA $00F0                       ; $ABDC79  AD F0 00     MX
    CMP #$00E0                      ; $ABDC7C  C9 E0 00     MX
    BCC L_ABDC87                    ; $ABDC7F  90 06        MX
    CMP #$FFF0                      ; $ABDC81  C9 F0 FF     MX
    BCS L_ABDC87                    ; $ABDC84  B0 01        MX
    RTS                             ; $ABDC86  60           MX
L_ABDC87:
    SEP #$20                        ; $ABDC87  E2 20        MX
    LDA $00EC                       ; $ABDC89  AD EC 00     mX
    BEQ L_ABDC98                    ; $ABDC8C  F0 0A        mX
    LDA $ABE4D7                     ; $ABDC8E  AF D7 E4 AB  mX
    ORA $051D                       ; $ABDC92  0D 1D 05     mX
    STA $051D                       ; $ABDC95  8D 1D 05     mX
L_ABDC98:
    LDA $00F0                       ; $ABDC98  AD F0 00     mX
    STA $04D9                       ; $ABDC9B  8D D9 04     mX
    LDA $00EE                       ; $ABDC9E  AD EE 00     mX
    STA $04D8                       ; $ABDCA1  8D D8 04     mX
    LDA $00F2                       ; $ABDCA4  AD F2 00     mX
    STA $04DA                       ; $ABDCA7  8D DA 04     mX
    LDA $002A                       ; $ABDCAA  AD 2A 00     mX
    ORA $00F3                       ; $ABDCAD  0D F3 00     mX
    STA $04DB                       ; $ABDCB0  8D DB 04     mX
    REP #$20                        ; $ABDCB3  C2 20        mX
    LDA #$01DC                      ; $ABDCB5  A9 DC 01     MX
    STA ($10)                       ; $ABDCB8  92 10        MX
    RTS                             ; $ABDCBA  60           MX
L_ABDCBB:
    STZ $00EC                       ; $ABDCBB  9C EC 00     MX
    LDA $00EE                       ; $ABDCBE  AD EE 00     MX
    CLC                             ; $ABDCC1  18           MX
    ADC #$0004                      ; $ABDCC2  69 04 00     MX
    STA $00EE                       ; $ABDCC5  8D EE 00     MX
    CMP #$0100                      ; $ABDCC8  C9 00 01     MX
    BCC L_ABDCD6                    ; $ABDCCB  90 09        MX
    INC $00EC                       ; $ABDCCD  EE EC 00     MX
    CMP #$FFF8                      ; $ABDCD0  C9 F8 FF     MX
    BCS L_ABDCD6                    ; $ABDCD3  B0 01        MX
    RTS                             ; $ABDCD5  60           MX
L_ABDCD6:
    LDA $00F0                       ; $ABDCD6  AD F0 00     MX
    CMP #$00E0                      ; $ABDCD9  C9 E0 00     MX
    BCC L_ABDCE4                    ; $ABDCDC  90 06        MX
    CMP #$FFF0                      ; $ABDCDE  C9 F0 FF     MX
    BCS L_ABDCE4                    ; $ABDCE1  B0 01        MX
    RTS                             ; $ABDCE3  60           MX
L_ABDCE4:
    SEP #$20                        ; $ABDCE4  E2 20        MX
    LDA $00EC                       ; $ABDCE6  AD EC 00     mX
    BEQ L_ABDCF5                    ; $ABDCE9  F0 0A        mX
    LDA $ABE4D8                     ; $ABDCEB  AF D8 E4 AB  mX
    ORA $051D                       ; $ABDCEF  0D 1D 05     mX
    STA $051D                       ; $ABDCF2  8D 1D 05     mX
L_ABDCF5:
    LDA $00F0                       ; $ABDCF5  AD F0 00     mX
    STA $04DD                       ; $ABDCF8  8D DD 04     mX
    LDA $00EE                       ; $ABDCFB  AD EE 00     mX
    STA $04DC                       ; $ABDCFE  8D DC 04     mX
    LDA $00F2                       ; $ABDD01  AD F2 00     mX
    STA $04DE                       ; $ABDD04  8D DE 04     mX
    LDA $002A                       ; $ABDD07  AD 2A 00     mX
    ORA $00F3                       ; $ABDD0A  0D F3 00     mX
    STA $04DF                       ; $ABDD0D  8D DF 04     mX
    REP #$20                        ; $ABDD10  C2 20        mX
    LDA #$01E0                      ; $ABDD12  A9 E0 01     MX
    STA ($10)                       ; $ABDD15  92 10        MX
    RTS                             ; $ABDD17  60           MX
L_ABDD18:
    STZ $00EC                       ; $ABDD18  9C EC 00     MX
    LDA $00EE                       ; $ABDD1B  AD EE 00     MX
    CLC                             ; $ABDD1E  18           MX
    ADC #$0004                      ; $ABDD1F  69 04 00     MX
    STA $00EE                       ; $ABDD22  8D EE 00     MX
    CMP #$0100                      ; $ABDD25  C9 00 01     MX
    BCC L_ABDD33                    ; $ABDD28  90 09        MX
    INC $00EC                       ; $ABDD2A  EE EC 00     MX
    CMP #$FFF8                      ; $ABDD2D  C9 F8 FF     MX
    BCS L_ABDD33                    ; $ABDD30  B0 01        MX
    RTS                             ; $ABDD32  60           MX
L_ABDD33:
    LDA $00F0                       ; $ABDD33  AD F0 00     MX
    CMP #$00E0                      ; $ABDD36  C9 E0 00     MX
    BCC L_ABDD41                    ; $ABDD39  90 06        MX
    CMP #$FFF0                      ; $ABDD3B  C9 F0 FF     MX
    BCS L_ABDD41                    ; $ABDD3E  B0 01        MX
    RTS                             ; $ABDD40  60           MX
L_ABDD41:
    SEP #$20                        ; $ABDD41  E2 20        MX
    LDA $00EC                       ; $ABDD43  AD EC 00     mX
    BEQ L_ABDD52                    ; $ABDD46  F0 0A        mX
    LDA $ABE4D5                     ; $ABDD48  AF D5 E4 AB  mX
    ORA $051E                       ; $ABDD4C  0D 1E 05     mX
    STA $051E                       ; $ABDD4F  8D 1E 05     mX
L_ABDD52:
    LDA $00F0                       ; $ABDD52  AD F0 00     mX
    STA $04E1                       ; $ABDD55  8D E1 04     mX
    LDA $00EE                       ; $ABDD58  AD EE 00     mX
    STA $04E0                       ; $ABDD5B  8D E0 04     mX
    LDA $00F2                       ; $ABDD5E  AD F2 00     mX
    STA $04E2                       ; $ABDD61  8D E2 04     mX
    LDA $002A                       ; $ABDD64  AD 2A 00     mX
    ORA $00F3                       ; $ABDD67  0D F3 00     mX
    STA $04E3                       ; $ABDD6A  8D E3 04     mX
    REP #$20                        ; $ABDD6D  C2 20        mX
    LDA #$01E4                      ; $ABDD6F  A9 E4 01     MX
    STA ($10)                       ; $ABDD72  92 10        MX
    RTS                             ; $ABDD74  60           MX
L_ABDD75:
    STZ $00EC                       ; $ABDD75  9C EC 00     MX
    LDA $00EE                       ; $ABDD78  AD EE 00     MX
    CLC                             ; $ABDD7B  18           MX
    ADC #$0004                      ; $ABDD7C  69 04 00     MX
    STA $00EE                       ; $ABDD7F  8D EE 00     MX
    CMP #$0100                      ; $ABDD82  C9 00 01     MX
    BCC L_ABDD90                    ; $ABDD85  90 09        MX
    INC $00EC                       ; $ABDD87  EE EC 00     MX
    CMP #$FFF8                      ; $ABDD8A  C9 F8 FF     MX
    BCS L_ABDD90                    ; $ABDD8D  B0 01        MX
    RTS                             ; $ABDD8F  60           MX
L_ABDD90:
    LDA $00F0                       ; $ABDD90  AD F0 00     MX
    CMP #$00E0                      ; $ABDD93  C9 E0 00     MX
    BCC L_ABDD9E                    ; $ABDD96  90 06        MX
    CMP #$FFF0                      ; $ABDD98  C9 F0 FF     MX
    BCS L_ABDD9E                    ; $ABDD9B  B0 01        MX
    RTS                             ; $ABDD9D  60           MX
L_ABDD9E:
    SEP #$20                        ; $ABDD9E  E2 20        MX
    LDA $00EC                       ; $ABDDA0  AD EC 00     mX
    BEQ L_ABDDAF                    ; $ABDDA3  F0 0A        mX
    LDA $ABE4D6                     ; $ABDDA5  AF D6 E4 AB  mX
    ORA $051E                       ; $ABDDA9  0D 1E 05     mX
    STA $051E                       ; $ABDDAC  8D 1E 05     mX
L_ABDDAF:
    LDA $00F0                       ; $ABDDAF  AD F0 00     mX
    STA $04E5                       ; $ABDDB2  8D E5 04     mX
    LDA $00EE                       ; $ABDDB5  AD EE 00     mX
    STA $04E4                       ; $ABDDB8  8D E4 04     mX
    LDA $00F2                       ; $ABDDBB  AD F2 00     mX
    STA $04E6                       ; $ABDDBE  8D E6 04     mX
    LDA $002A                       ; $ABDDC1  AD 2A 00     mX
    ORA $00F3                       ; $ABDDC4  0D F3 00     mX
    STA $04E7                       ; $ABDDC7  8D E7 04     mX
    REP #$20                        ; $ABDDCA  C2 20        mX
    LDA #$01E8                      ; $ABDDCC  A9 E8 01     MX
    STA ($10)                       ; $ABDDCF  92 10        MX
    RTS                             ; $ABDDD1  60           MX
L_ABDDD2:
    STZ $00EC                       ; $ABDDD2  9C EC 00     MX
    LDA $00EE                       ; $ABDDD5  AD EE 00     MX
    CLC                             ; $ABDDD8  18           MX
    ADC #$0004                      ; $ABDDD9  69 04 00     MX
    STA $00EE                       ; $ABDDDC  8D EE 00     MX
    CMP #$0100                      ; $ABDDDF  C9 00 01     MX
    BCC L_ABDDED                    ; $ABDDE2  90 09        MX
    INC $00EC                       ; $ABDDE4  EE EC 00     MX
    CMP #$FFF8                      ; $ABDDE7  C9 F8 FF     MX
    BCS L_ABDDED                    ; $ABDDEA  B0 01        MX
    RTS                             ; $ABDDEC  60           MX
L_ABDDED:
    LDA $00F0                       ; $ABDDED  AD F0 00     MX
    CMP #$00E0                      ; $ABDDF0  C9 E0 00     MX
    BCC L_ABDDFB                    ; $ABDDF3  90 06        MX
    CMP #$FFF0                      ; $ABDDF5  C9 F0 FF     MX
    BCS L_ABDDFB                    ; $ABDDF8  B0 01        MX
    RTS                             ; $ABDDFA  60           MX
L_ABDDFB:
    SEP #$20                        ; $ABDDFB  E2 20        MX
    LDA $00EC                       ; $ABDDFD  AD EC 00     mX
    BEQ L_ABDE0C                    ; $ABDE00  F0 0A        mX
    LDA $ABE4D7                     ; $ABDE02  AF D7 E4 AB  mX
    ORA $051E                       ; $ABDE06  0D 1E 05     mX
    STA $051E                       ; $ABDE09  8D 1E 05     mX
L_ABDE0C:
    LDA $00F0                       ; $ABDE0C  AD F0 00     mX
    STA $04E9                       ; $ABDE0F  8D E9 04     mX
    LDA $00EE                       ; $ABDE12  AD EE 00     mX
    STA $04E8                       ; $ABDE15  8D E8 04     mX
    LDA $00F2                       ; $ABDE18  AD F2 00     mX
    STA $04EA                       ; $ABDE1B  8D EA 04     mX
    LDA $002A                       ; $ABDE1E  AD 2A 00     mX
    ORA $00F3                       ; $ABDE21  0D F3 00     mX
    STA $04EB                       ; $ABDE24  8D EB 04     mX
    REP #$20                        ; $ABDE27  C2 20        mX
    LDA #$01EC                      ; $ABDE29  A9 EC 01     MX
    STA ($10)                       ; $ABDE2C  92 10        MX
    RTS                             ; $ABDE2E  60           MX
L_ABDE2F:
    STZ $00EC                       ; $ABDE2F  9C EC 00     MX
    LDA $00EE                       ; $ABDE32  AD EE 00     MX
    CLC                             ; $ABDE35  18           MX
    ADC #$0004                      ; $ABDE36  69 04 00     MX
    STA $00EE                       ; $ABDE39  8D EE 00     MX
    CMP #$0100                      ; $ABDE3C  C9 00 01     MX
    BCC L_ABDE4A                    ; $ABDE3F  90 09        MX
    INC $00EC                       ; $ABDE41  EE EC 00     MX
    CMP #$FFF8                      ; $ABDE44  C9 F8 FF     MX
    BCS L_ABDE4A                    ; $ABDE47  B0 01        MX
    RTS                             ; $ABDE49  60           MX
L_ABDE4A:
    LDA $00F0                       ; $ABDE4A  AD F0 00     MX
    CMP #$00E0                      ; $ABDE4D  C9 E0 00     MX
    BCC L_ABDE58                    ; $ABDE50  90 06        MX
    CMP #$FFF0                      ; $ABDE52  C9 F0 FF     MX
    BCS L_ABDE58                    ; $ABDE55  B0 01        MX
    RTS                             ; $ABDE57  60           MX
L_ABDE58:
    SEP #$20                        ; $ABDE58  E2 20        MX
    LDA $00EC                       ; $ABDE5A  AD EC 00     mX
    BEQ L_ABDE69                    ; $ABDE5D  F0 0A        mX
    LDA $ABE4D8                     ; $ABDE5F  AF D8 E4 AB  mX
    ORA $051E                       ; $ABDE63  0D 1E 05     mX
    STA $051E                       ; $ABDE66  8D 1E 05     mX
L_ABDE69:
    LDA $00F0                       ; $ABDE69  AD F0 00     mX
    STA $04ED                       ; $ABDE6C  8D ED 04     mX
    LDA $00EE                       ; $ABDE6F  AD EE 00     mX
    STA $04EC                       ; $ABDE72  8D EC 04     mX
    LDA $00F2                       ; $ABDE75  AD F2 00     mX
    STA $04EE                       ; $ABDE78  8D EE 04     mX
    LDA $002A                       ; $ABDE7B  AD 2A 00     mX
    ORA $00F3                       ; $ABDE7E  0D F3 00     mX
    STA $04EF                       ; $ABDE81  8D EF 04     mX
    REP #$20                        ; $ABDE84  C2 20        mX
    LDA #$01F0                      ; $ABDE86  A9 F0 01     MX
    STA ($10)                       ; $ABDE89  92 10        MX
    RTS                             ; $ABDE8B  60           MX
L_ABDE8C:
    STZ $00EC                       ; $ABDE8C  9C EC 00     MX
    LDA $00EE                       ; $ABDE8F  AD EE 00     MX
    CLC                             ; $ABDE92  18           MX
    ADC #$0004                      ; $ABDE93  69 04 00     MX
    STA $00EE                       ; $ABDE96  8D EE 00     MX
    CMP #$0100                      ; $ABDE99  C9 00 01     MX
    BCC L_ABDEA7                    ; $ABDE9C  90 09        MX
    INC $00EC                       ; $ABDE9E  EE EC 00     MX
    CMP #$FFF8                      ; $ABDEA1  C9 F8 FF     MX
    BCS L_ABDEA7                    ; $ABDEA4  B0 01        MX
    RTS                             ; $ABDEA6  60           MX
L_ABDEA7:
    LDA $00F0                       ; $ABDEA7  AD F0 00     MX
    CMP #$00E0                      ; $ABDEAA  C9 E0 00     MX
    BCC L_ABDEB5                    ; $ABDEAD  90 06        MX
    CMP #$FFF0                      ; $ABDEAF  C9 F0 FF     MX
    BCS L_ABDEB5                    ; $ABDEB2  B0 01        MX
    RTS                             ; $ABDEB4  60           MX
L_ABDEB5:
    SEP #$20                        ; $ABDEB5  E2 20        MX
    LDA $00EC                       ; $ABDEB7  AD EC 00     mX
    BEQ L_ABDEC6                    ; $ABDEBA  F0 0A        mX
    LDA $ABE4D5                     ; $ABDEBC  AF D5 E4 AB  mX
    ORA $051F                       ; $ABDEC0  0D 1F 05     mX
    STA $051F                       ; $ABDEC3  8D 1F 05     mX
L_ABDEC6:
    LDA $00F0                       ; $ABDEC6  AD F0 00     mX
    STA $04F1                       ; $ABDEC9  8D F1 04     mX
    LDA $00EE                       ; $ABDECC  AD EE 00     mX
    STA $04F0                       ; $ABDECF  8D F0 04     mX
    LDA $00F2                       ; $ABDED2  AD F2 00     mX
    STA $04F2                       ; $ABDED5  8D F2 04     mX
    LDA $002A                       ; $ABDED8  AD 2A 00     mX
    ORA $00F3                       ; $ABDEDB  0D F3 00     mX
    STA $04F3                       ; $ABDEDE  8D F3 04     mX
    REP #$20                        ; $ABDEE1  C2 20        mX
    LDA #$01F4                      ; $ABDEE3  A9 F4 01     MX
    STA ($10)                       ; $ABDEE6  92 10        MX
    RTS                             ; $ABDEE8  60           MX
L_ABDEE9:
    STZ $00EC                       ; $ABDEE9  9C EC 00     MX
    LDA $00EE                       ; $ABDEEC  AD EE 00     MX
    CLC                             ; $ABDEEF  18           MX
    ADC #$0004                      ; $ABDEF0  69 04 00     MX
    STA $00EE                       ; $ABDEF3  8D EE 00     MX
    CMP #$0100                      ; $ABDEF6  C9 00 01     MX
    BCC L_ABDF04                    ; $ABDEF9  90 09        MX
    INC $00EC                       ; $ABDEFB  EE EC 00     MX
    CMP #$FFF8                      ; $ABDEFE  C9 F8 FF     MX
    BCS L_ABDF04                    ; $ABDF01  B0 01        MX
    RTS                             ; $ABDF03  60           MX
L_ABDF04:
    LDA $00F0                       ; $ABDF04  AD F0 00     MX
    CMP #$00E0                      ; $ABDF07  C9 E0 00     MX
    BCC L_ABDF12                    ; $ABDF0A  90 06        MX
    CMP #$FFF0                      ; $ABDF0C  C9 F0 FF     MX
    BCS L_ABDF12                    ; $ABDF0F  B0 01        MX
    RTS                             ; $ABDF11  60           MX
L_ABDF12:
    SEP #$20                        ; $ABDF12  E2 20        MX
    LDA $00EC                       ; $ABDF14  AD EC 00     mX
    BEQ L_ABDF23                    ; $ABDF17  F0 0A        mX
    LDA $ABE4D6                     ; $ABDF19  AF D6 E4 AB  mX
    ORA $051F                       ; $ABDF1D  0D 1F 05     mX
    STA $051F                       ; $ABDF20  8D 1F 05     mX
L_ABDF23:
    LDA $00F0                       ; $ABDF23  AD F0 00     mX
    STA $04F5                       ; $ABDF26  8D F5 04     mX
    LDA $00EE                       ; $ABDF29  AD EE 00     mX
    STA $04F4                       ; $ABDF2C  8D F4 04     mX
    LDA $00F2                       ; $ABDF2F  AD F2 00     mX
    STA $04F6                       ; $ABDF32  8D F6 04     mX
    LDA $002A                       ; $ABDF35  AD 2A 00     mX
    ORA $00F3                       ; $ABDF38  0D F3 00     mX
    STA $04F7                       ; $ABDF3B  8D F7 04     mX
    REP #$20                        ; $ABDF3E  C2 20        mX
    LDA #$01F8                      ; $ABDF40  A9 F8 01     MX
    STA ($10)                       ; $ABDF43  92 10        MX
    RTS                             ; $ABDF45  60           MX
L_ABDF46:
    STZ $00EC                       ; $ABDF46  9C EC 00     MX
    LDA $00EE                       ; $ABDF49  AD EE 00     MX
    CLC                             ; $ABDF4C  18           MX
    ADC #$0004                      ; $ABDF4D  69 04 00     MX
    STA $00EE                       ; $ABDF50  8D EE 00     MX
    CMP #$0100                      ; $ABDF53  C9 00 01     MX
    BCC L_ABDF61                    ; $ABDF56  90 09        MX
    INC $00EC                       ; $ABDF58  EE EC 00     MX
    CMP #$FFF8                      ; $ABDF5B  C9 F8 FF     MX
    BCS L_ABDF61                    ; $ABDF5E  B0 01        MX
    RTS                             ; $ABDF60  60           MX
L_ABDF61:
    LDA $00F0                       ; $ABDF61  AD F0 00     MX
    CMP #$00E0                      ; $ABDF64  C9 E0 00     MX
    BCC L_ABDF6F                    ; $ABDF67  90 06        MX
    CMP #$FFF0                      ; $ABDF69  C9 F0 FF     MX
    BCS L_ABDF6F                    ; $ABDF6C  B0 01        MX
    RTS                             ; $ABDF6E  60           MX
L_ABDF6F:
    SEP #$20                        ; $ABDF6F  E2 20        MX
    LDA $00EC                       ; $ABDF71  AD EC 00     mX
    BEQ L_ABDF80                    ; $ABDF74  F0 0A        mX
    LDA $ABE4D7                     ; $ABDF76  AF D7 E4 AB  mX
    ORA $051F                       ; $ABDF7A  0D 1F 05     mX
    STA $051F                       ; $ABDF7D  8D 1F 05     mX
L_ABDF80:
    LDA $00F0                       ; $ABDF80  AD F0 00     mX
    STA $04F9                       ; $ABDF83  8D F9 04     mX
    LDA $00EE                       ; $ABDF86  AD EE 00     mX
    STA $04F8                       ; $ABDF89  8D F8 04     mX
    LDA $00F2                       ; $ABDF8C  AD F2 00     mX
    STA $04FA                       ; $ABDF8F  8D FA 04     mX
    LDA $002A                       ; $ABDF92  AD 2A 00     mX
    ORA $00F3                       ; $ABDF95  0D F3 00     mX
    STA $04FB                       ; $ABDF98  8D FB 04     mX
    REP #$20                        ; $ABDF9B  C2 20        mX
    LDA #$01FC                      ; $ABDF9D  A9 FC 01     MX
    STA ($10)                       ; $ABDFA0  92 10        MX
    RTS                             ; $ABDFA2  60           MX
L_ABDFA3:
    STZ $00EC                       ; $ABDFA3  9C EC 00     MX
    LDA $00EE                       ; $ABDFA6  AD EE 00     MX
    CLC                             ; $ABDFA9  18           MX
    ADC #$0004                      ; $ABDFAA  69 04 00     MX
    STA $00EE                       ; $ABDFAD  8D EE 00     MX
    CMP #$0100                      ; $ABDFB0  C9 00 01     MX
    BCC L_ABDFBE                    ; $ABDFB3  90 09        MX
    INC $00EC                       ; $ABDFB5  EE EC 00     MX
    CMP #$FFF8                      ; $ABDFB8  C9 F8 FF     MX
    BCS L_ABDFBE                    ; $ABDFBB  B0 01        MX
    RTS                             ; $ABDFBD  60           MX
L_ABDFBE:
    LDA $00F0                       ; $ABDFBE  AD F0 00     MX
    CMP #$00E0                      ; $ABDFC1  C9 E0 00     MX
    BCC L_ABDFCC                    ; $ABDFC4  90 06        MX
    CMP #$FFF0                      ; $ABDFC6  C9 F0 FF     MX
    BCS L_ABDFCC                    ; $ABDFC9  B0 01        MX
    RTS                             ; $ABDFCB  60           MX
L_ABDFCC:
    SEP #$20                        ; $ABDFCC  E2 20        MX
    LDA $00EC                       ; $ABDFCE  AD EC 00     mX
    BEQ L_ABDFDD                    ; $ABDFD1  F0 0A        mX
    LDA $ABE4D8                     ; $ABDFD3  AF D8 E4 AB  mX
    ORA $051F                       ; $ABDFD7  0D 1F 05     mX
    STA $051F                       ; $ABDFDA  8D 1F 05     mX
L_ABDFDD:
    LDA $00F0                       ; $ABDFDD  AD F0 00     mX
    STA $04FD                       ; $ABDFE0  8D FD 04     mX
    LDA $00EE                       ; $ABDFE3  AD EE 00     mX
    STA $04FC                       ; $ABDFE6  8D FC 04     mX
    LDA $00F2                       ; $ABDFE9  AD F2 00     mX
    STA $04FE                       ; $ABDFEC  8D FE 04     mX
    LDA $002A                       ; $ABDFEF  AD 2A 00     mX
    ORA $00F3                       ; $ABDFF2  0D F3 00     mX
    STA $04FF                       ; $ABDFF5  8D FF 04     mX
    REP #$20                        ; $ABDFF8  C2 20        mX
    LDA #$0200                      ; $ABDFFA  A9 00 02     MX
    STA ($10)                       ; $ABDFFD  92 10        MX
    RTS                             ; $ABDFFF  60           MX
L_ABE000:
    LDA ($10)                       ; $ABE000  B2 10        MX
    TAX                             ; $ABE002  AA           MX
    JSR ($E010,X)                   ; $ABE003  FC 10 E0     MX
    RTL                             ; $ABE006  6B           MX
L_ABE007:
    LDA ($10)                       ; $ABE007  B2 10        MX
    TAX                             ; $ABE009  AA           MX
    JSR ($E00E,X)                   ; $ABE00A  FC 0E E0     MX
    RTL                             ; $ABE00D  6B           MX
    db $00,$80,$80,$B1,$63,$80,$DD,$B1,$C6,$80,$3A,$B2,$29,$81,$97,$B2 ; $ABE00E
    db $8C,$81,$F4,$B2,$EF,$81,$51,$B3,$52,$82,$AE,$B3,$B5,$82,$0B,$B4 ; $ABE01E
    db $18,$83,$68,$B4,$7B,$83,$C5,$B4,$DE,$83,$22,$B5,$41,$84,$7F,$B5 ; $ABE02E
    db $A4,$84,$DC,$B5,$07,$85,$39,$B6,$6A,$85,$96,$B6,$CD,$85,$F3,$B6 ; $ABE03E
    db $30,$86,$50,$B7,$93,$86,$AD,$B7,$F6,$86,$0A,$B8,$59,$87,$67,$B8 ; $ABE04E
    db $BC,$87,$C4,$B8,$1F,$88,$21,$B9,$82,$88,$7E,$B9,$E5,$88,$DB,$B9 ; $ABE05E
    db $48,$89,$38,$BA,$AB,$89,$95,$BA,$0E,$8A,$F2,$BA,$71,$8A,$4F,$BB ; $ABE06E
    db $D4,$8A,$AC,$BB,$37,$8B,$09,$BC,$9A,$8B,$66,$BC,$FD,$8B,$C3,$BC ; $ABE07E
    db $60,$8C,$20,$BD,$C3,$8C,$7D,$BD,$26,$8D,$DA,$BD,$89,$8D,$37,$BE ; $ABE08E
    db $EC,$8D,$94,$BE,$4F,$8E,$F1,$BE,$B2,$8E,$4E,$BF,$15,$8F,$AB,$BF ; $ABE09E
    db $78,$8F,$08,$C0,$DB,$8F,$65,$C0,$3E,$90,$C2,$C0,$A1,$90,$1F,$C1 ; $ABE0AE
    db $04,$91,$7C,$C1,$67,$91,$D9,$C1,$CA,$91,$36,$C2,$2D,$92,$93,$C2 ; $ABE0BE
    db $90,$92,$F0,$C2,$F3,$92,$4D,$C3,$56,$93,$AA,$C3,$B9,$93,$07,$C4 ; $ABE0CE
    db $1C,$94,$64,$C4,$7F,$94,$C1,$C4,$E2,$94,$1E,$C5,$45,$95,$7B,$C5 ; $ABE0DE
    db $A8,$95,$D8,$C5,$0B,$96,$35,$C6,$6E,$96,$92,$C6,$D1,$96,$EF,$C6 ; $ABE0EE
    db $34,$97,$4C,$C7,$97,$97,$A9,$C7,$FA,$97,$06,$C8,$5D,$98,$63,$C8 ; $ABE0FE
    db $C0,$98,$C0,$C8,$23,$99,$1D,$C9,$86,$99,$7A,$C9,$E9,$99,$D7,$C9 ; $ABE10E
    db $4C,$9A,$34,$CA,$AF,$9A,$91,$CA,$12,$9B,$EE,$CA,$75,$9B,$4B,$CB ; $ABE11E
    db $D8,$9B,$A8,$CB,$3B,$9C,$05,$CC,$9E,$9C,$62,$CC,$01,$9D,$BF,$CC ; $ABE12E
    db $64,$9D,$1C,$CD,$C7,$9D,$79,$CD,$2A,$9E,$D6,$CD,$8D,$9E,$33,$CE ; $ABE13E
    db $F0,$9E,$90,$CE,$53,$9F,$ED,$CE,$B6,$9F,$4A,$CF,$19,$A0,$A7,$CF ; $ABE14E
    db $7C,$A0,$04,$D0,$DF,$A0,$61,$D0,$42,$A1,$BE,$D0,$A5,$A1,$1B,$D1 ; $ABE15E
    db $08,$A2,$78,$D1,$6B,$A2,$D5,$D1,$CE,$A2,$32,$D2,$31,$A3,$8F,$D2 ; $ABE16E
    db $94,$A3,$EC,$D2,$F7,$A3,$49,$D3,$5A,$A4,$A6,$D3,$BD,$A4,$03,$D4 ; $ABE17E
    db $20,$A5,$60,$D4,$83,$A5,$BD,$D4,$E6,$A5,$1A,$D5,$49,$A6,$77,$D5 ; $ABE18E
    db $AC,$A6,$D4,$D5,$0F,$A7,$31,$D6,$72,$A7,$8E,$D6,$D5,$A7,$EB,$D6 ; $ABE19E
    db $38,$A8,$48,$D7,$9B,$A8,$A5,$D7,$FE,$A8,$02,$D8,$61,$A9,$5F,$D8 ; $ABE1AE
    db $C4,$A9,$BC,$D8,$27,$AA,$19,$D9,$8A,$AA,$76,$D9,$ED,$AA,$D3,$D9 ; $ABE1BE
    db $50,$AB,$30,$DA,$B3,$AB,$8D,$DA,$16,$AC,$EA,$DA,$79,$AC,$47,$DB ; $ABE1CE
    db $DC,$AC,$A4,$DB,$3F,$AD,$01,$DC,$A2,$AD,$5E,$DC,$05,$AE,$BB,$DC ; $ABE1DE
    db $68,$AE,$18,$DD,$CB,$AE,$75,$DD,$2E,$AF,$D2,$DD,$91,$AF,$2F,$DE ; $ABE1EE
    db $F4,$AF,$8C,$DE,$57,$B0,$E9,$DE,$BA,$B0,$46,$DF,$1D,$B1,$A3,$DF ; $ABE1FE
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE20E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE21E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE22E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE23E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE24E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE25E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE26E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE27E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE28E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE29E
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE2AE
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF ; $ABE2BE
    db $1D,$B1,$A3,$DF,$1D,$B1,$A3,$DF,$AD,$24,$00,$38,$ED,$29,$01,$8D ; $ABE2CE
    db $24,$00,$AD,$26,$00,$38,$ED,$2B,$01,$8D,$26,$00                 ; $ABE2DE
L_ABE2EA:
    LDX $0024                       ; $ABE2EA  AE 24 00     MX
L_ABE2ED:
    CPX #$0114                      ; $ABE2ED  E0 14 01     MX
L_ABE2F0:
    BCC L_ABE301                    ; $ABE2F0  90 0F        MX
    LDA [$20]                       ; $ABE2F2  A7 20        MX
    ORA #$FF00                      ; $ABE2F4  09 00 FF     MX
    SEC                             ; $ABE2F7  38           MX
    SBC #$0030                      ; $ABE2F8  E9 30 00     MX
    CMP $0024                       ; $ABE2FB  CD 24 00     MX
    BCC L_ABE301                    ; $ABE2FE  90 01        MX
    RTL                             ; $ABE300  6B           MX
L_ABE301:
    LDY $0026                       ; $ABE301  AC 26 00     MX
L_ABE304:
    CPY #$00E0                      ; $ABE304  C0 E0 00     MX
L_ABE307:
    BCC L_ABE317                    ; $ABE307  90 0E        MX
L_ABE309:
    LDY #$0001                      ; $ABE309  A0 01 00     MX
L_ABE30C:
    LDA [$20],Y                     ; $ABE30C  B7 20        MX
L_ABE30E:
    ORA #$FF00                      ; $ABE30E  09 00 FF     MX
L_ABE311:
    CMP $0026                       ; $ABE311  CD 26 00     MX
L_ABE314:
    BCC L_ABE317                    ; $ABE314  90 01        MX
L_ABE316:
    RTL                             ; $ABE316  6B           MX
L_ABE317:
    SEP #$20                        ; $ABE317  E2 20        MX
L_ABE319:
    LDA $0028                       ; $ABE319  AD 28 00     mX
L_ABE31C:
    AND #$C0                        ; $ABE31C  29 C0        mX
L_ABE31E:
    BEQ L_ABE32D                    ; $ABE31E  F0 0D        mX
    JMP L_ABE398                    ; $ABE320  4C 98 E3     mX
L_ABE323:
    CMP #$80                        ; $ABE323  C9 80        mX
    BNE L_ABE32A                    ; $ABE325  D0 03        mX
    JMP L_ABE402                    ; $ABE327  4C 02 E4     mX
L_ABE32A:
    JMP L_ABE469                    ; $ABE32A  4C 69 E4     mX
L_ABE32D:
    LDY #$0002                      ; $ABE32D  A0 02 00     mX
L_ABE330:
    STZ $00F6                       ; $ABE330  9C F6 00     mX
L_ABE333:
    LDA [$20],Y                     ; $ABE333  B7 20        mX
L_ABE335:
    BPL L_ABE33A                    ; $ABE335  10 03        mX
L_ABE337:
    INC $00F6                       ; $ABE337  EE F6 00     mX
L_ABE33A:
    STA $00F4                       ; $ABE33A  8D F4 00     mX
L_ABE33D:
    ASL                             ; $ABE33D  0A           mX
L_ABE33E:
    AND #$C0                        ; $ABE33E  29 C0        mX
L_ABE340:
    EOR $0028                       ; $ABE340  4D 28 00     mX
L_ABE343:
    STA $002A                       ; $ABE343  8D 2A 00     mX
L_ABE346:
    REP #$20                        ; $ABE346  C2 20        mX
L_ABE348:
    INY                             ; $ABE348  C8           MX
L_ABE349:
    LDA [$20],Y                     ; $ABE349  B7 20        MX
L_ABE34B:
    AND #$00FF                      ; $ABE34B  29 FF 00     MX
L_ABE34E:
    CLC                             ; $ABE34E  18           MX
L_ABE34F:
    ADC $0024                       ; $ABE34F  6D 24 00     MX
L_ABE352:
    STA $00EE                       ; $ABE352  8D EE 00     MX
L_ABE355:
    INY                             ; $ABE355  C8           MX
L_ABE356:
    LDA [$20],Y                     ; $ABE356  B7 20        MX
L_ABE358:
    AND #$00FF                      ; $ABE358  29 FF 00     MX
L_ABE35B:
    CLC                             ; $ABE35B  18           MX
L_ABE35C:
    ADC $0026                       ; $ABE35C  6D 26 00     MX
L_ABE35F:
    STA $00F0                       ; $ABE35F  8D F0 00     MX
L_ABE362:
    TYA                             ; $ABE362  98           MX
L_ABE363:
    CLC                             ; $ABE363  18           MX
L_ABE364:
    ADC #$0005                      ; $ABE364  69 05 00     MX
L_ABE367:
    TAY                             ; $ABE367  A8           MX
L_ABE368:
    LDA [$20],Y                     ; $ABE368  B7 20        MX
L_ABE36A:
    CLC                             ; $ABE36A  18           MX
L_ABE36B:
    ADC $002C                       ; $ABE36B  6D 2C 00     MX
L_ABE36E:
    STA $00F2                       ; $ABE36E  8D F2 00     MX
L_ABE371:
    PHY                             ; $ABE371  5A           MX
L_ABE372:
    LDA $00F4                       ; $ABE372  AD F4 00     MX
L_ABE375:
    AND #$0001                      ; $ABE375  29 01 00     MX
L_ABE378:
    BNE L_ABE382                    ; $ABE378  D0 08        MX
L_ABE37A:
    LDA ($10)                       ; $ABE37A  B2 10        MX
L_ABE37C:
    TAX                             ; $ABE37C  AA           MX
L_ABE37D:
    JSR ($E010,X)                   ; $ABE37D  FC 10 E0     MX
L_ABE380:
    BRA L_ABE388                    ; $ABE380  80 06        MX
L_ABE382:
    LDA ($10)                       ; $ABE382  B2 10        MX
L_ABE384:
    TAX                             ; $ABE384  AA           MX
L_ABE385:
    JSR ($E00E,X)                   ; $ABE385  FC 0E E0     MX
L_ABE388:
    PLY                             ; $ABE388  7A           MX
L_ABE389:
    SEP #$20                        ; $ABE389  E2 20        MX
L_ABE38B:
    LDA $00F6                       ; $ABE38B  AD F6 00     mX
L_ABE38E:
    BNE L_ABE395                    ; $ABE38E  D0 05        mX
L_ABE390:
    INY                             ; $ABE390  C8           mX
L_ABE391:
    INY                             ; $ABE391  C8           mX
L_ABE392:
    JMP L_ABE333                    ; $ABE392  4C 33 E3     mX
L_ABE395:
    REP #$20                        ; $ABE395  C2 20        mX
L_ABE397:
    RTL                             ; $ABE397  6B           MX
L_ABE398:
    LDY #$0002                      ; $ABE398  A0 02 00     mX
    STZ $00F6                       ; $ABE39B  9C F6 00     mX
L_ABE39E:
    LDA [$20],Y                     ; $ABE39E  B7 20        mX
    BPL L_ABE3A5                    ; $ABE3A0  10 03        mX
    INC $00F6                       ; $ABE3A2  EE F6 00     mX
L_ABE3A5:
    STA $00F4                       ; $ABE3A5  8D F4 00     mX
    ASL                             ; $ABE3A8  0A           mX
    AND #$C0                        ; $ABE3A9  29 C0        mX
    EOR $0028                       ; $ABE3AB  4D 28 00     mX
    STA $002A                       ; $ABE3AE  8D 2A 00     mX
    REP #$20                        ; $ABE3B1  C2 20        mX
    INY                             ; $ABE3B3  C8           MX
    INY                             ; $ABE3B4  C8           MX
    INY                             ; $ABE3B5  C8           MX
    LDA [$20],Y                     ; $ABE3B6  B7 20        MX
    CLC                             ; $ABE3B8  18           MX
    ADC $0024                       ; $ABE3B9  6D 24 00     MX
    STA $00EE                       ; $ABE3BC  8D EE 00     MX
    DEY                             ; $ABE3BF  88           MX
    LDA [$20],Y                     ; $ABE3C0  B7 20        MX
    AND #$00FF                      ; $ABE3C2  29 FF 00     MX
    CLC                             ; $ABE3C5  18           MX
    ADC $0026                       ; $ABE3C6  6D 26 00     MX
    STA $00F0                       ; $ABE3C9  8D F0 00     MX
    TYA                             ; $ABE3CC  98           MX
    CLC                             ; $ABE3CD  18           MX
    ADC #$0005                      ; $ABE3CE  69 05 00     MX
    TAY                             ; $ABE3D1  A8           MX
    LDA [$20],Y                     ; $ABE3D2  B7 20        MX
    CLC                             ; $ABE3D4  18           MX
    ADC $002C                       ; $ABE3D5  6D 2C 00     MX
    STA $00F2                       ; $ABE3D8  8D F2 00     MX
    PHY                             ; $ABE3DB  5A           MX
    LDA $00F4                       ; $ABE3DC  AD F4 00     MX
    AND #$0001                      ; $ABE3DF  29 01 00     MX
    BNE L_ABE3EC                    ; $ABE3E2  D0 08        MX
    LDA ($10)                       ; $ABE3E4  B2 10        MX
    TAX                             ; $ABE3E6  AA           MX
    JSR ($E010,X)                   ; $ABE3E7  FC 10 E0     MX
    BRA L_ABE3F2                    ; $ABE3EA  80 06        MX
L_ABE3EC:
    LDA ($10)                       ; $ABE3EC  B2 10        MX
    TAX                             ; $ABE3EE  AA           MX
    JSR ($E00E,X)                   ; $ABE3EF  FC 0E E0     MX
L_ABE3F2:
    PLY                             ; $ABE3F2  7A           MX
    SEP #$20                        ; $ABE3F3  E2 20        MX
    LDA $00F6                       ; $ABE3F5  AD F6 00     mX
    BNE L_ABE3FF                    ; $ABE3F8  D0 05        mX
    INY                             ; $ABE3FA  C8           mX
    INY                             ; $ABE3FB  C8           mX
    JMP L_ABE39E                    ; $ABE3FC  4C 9E E3     mX
L_ABE3FF:
    REP #$20                        ; $ABE3FF  C2 20        mX
    RTL                             ; $ABE401  6B           MX
L_ABE402:
    LDY #$0002                      ; $ABE402  A0 02 00     mX
    STZ $00F6                       ; $ABE405  9C F6 00     mX
L_ABE408:
    LDA [$20],Y                     ; $ABE408  B7 20        mX
    BPL L_ABE40F                    ; $ABE40A  10 03        mX
    INC $00F6                       ; $ABE40C  EE F6 00     mX
L_ABE40F:
    STA $00F4                       ; $ABE40F  8D F4 00     mX
    ASL                             ; $ABE412  0A           mX
    AND #$C0                        ; $ABE413  29 C0        mX
    EOR $0028                       ; $ABE415  4D 28 00     mX
    STA $002A                       ; $ABE418  8D 2A 00     mX
    REP #$20                        ; $ABE41B  C2 20        mX
    INY                             ; $ABE41D  C8           MX
    LDA [$20],Y                     ; $ABE41E  B7 20        MX
    AND #$00FF                      ; $ABE420  29 FF 00     MX
    CLC                             ; $ABE423  18           MX
    ADC $0024                       ; $ABE424  6D 24 00     MX
    STA $00EE                       ; $ABE427  8D EE 00     MX
    INY                             ; $ABE42A  C8           MX
    INY                             ; $ABE42B  C8           MX
    INY                             ; $ABE42C  C8           MX
    INY                             ; $ABE42D  C8           MX
    LDA [$20],Y                     ; $ABE42E  B7 20        MX
    CLC                             ; $ABE430  18           MX
    ADC $0026                       ; $ABE431  6D 26 00     MX
    STA $00F0                       ; $ABE434  8D F0 00     MX
    INY                             ; $ABE437  C8           MX
    INY                             ; $ABE438  C8           MX
    LDA [$20],Y                     ; $ABE439  B7 20        MX
    CLC                             ; $ABE43B  18           MX
    ADC $002C                       ; $ABE43C  6D 2C 00     MX
    STA $00F2                       ; $ABE43F  8D F2 00     MX
    PHY                             ; $ABE442  5A           MX
    LDA $00F4                       ; $ABE443  AD F4 00     MX
    AND #$0001                      ; $ABE446  29 01 00     MX
    BNE L_ABE453                    ; $ABE449  D0 08        MX
    LDA ($10)                       ; $ABE44B  B2 10        MX
    TAX                             ; $ABE44D  AA           MX
    JSR ($E010,X)                   ; $ABE44E  FC 10 E0     MX
    BRA L_ABE459                    ; $ABE451  80 06        MX
L_ABE453:
    LDA ($10)                       ; $ABE453  B2 10        MX
    TAX                             ; $ABE455  AA           MX
    JSR ($E00E,X)                   ; $ABE456  FC 0E E0     MX
L_ABE459:
    PLY                             ; $ABE459  7A           MX
    SEP #$20                        ; $ABE45A  E2 20        MX
    LDA $00F6                       ; $ABE45C  AD F6 00     mX
    BNE L_ABE466                    ; $ABE45F  D0 05        mX
    INY                             ; $ABE461  C8           mX
    INY                             ; $ABE462  C8           mX
    JMP L_ABE408                    ; $ABE463  4C 08 E4     mX
L_ABE466:
    REP #$20                        ; $ABE466  C2 20        mX
    RTL                             ; $ABE468  6B           MX
L_ABE469:
    LDY #$0002                      ; $ABE469  A0 02 00     mX
    STZ $00F6                       ; $ABE46C  9C F6 00     mX
L_ABE46F:
    LDA [$20],Y                     ; $ABE46F  B7 20        mX
    BPL L_ABE476                    ; $ABE471  10 03        mX
    INC $00F6                       ; $ABE473  EE F6 00     mX
L_ABE476:
    STA $00F4                       ; $ABE476  8D F4 00     mX
    ASL                             ; $ABE479  0A           mX
    AND #$C0                        ; $ABE47A  29 C0        mX
    EOR $0028                       ; $ABE47C  4D 28 00     mX
    STA $002A                       ; $ABE47F  8D 2A 00     mX
    REP #$20                        ; $ABE482  C2 20        mX
    INY                             ; $ABE484  C8           MX
    INY                             ; $ABE485  C8           MX
    INY                             ; $ABE486  C8           MX
    LDA [$20],Y                     ; $ABE487  B7 20        MX
    CLC                             ; $ABE489  18           MX
    ADC $0024                       ; $ABE48A  6D 24 00     MX
    STA $00EE                       ; $ABE48D  8D EE 00     MX
    INY                             ; $ABE490  C8           MX
    INY                             ; $ABE491  C8           MX
    LDA [$20],Y                     ; $ABE492  B7 20        MX
    CLC                             ; $ABE494  18           MX
    ADC $0026                       ; $ABE495  6D 26 00     MX
    STA $00F0                       ; $ABE498  8D F0 00     MX
    INY                             ; $ABE49B  C8           MX
    INY                             ; $ABE49C  C8           MX
    LDA [$20],Y                     ; $ABE49D  B7 20        MX
    CLC                             ; $ABE49F  18           MX
    ADC $002C                       ; $ABE4A0  6D 2C 00     MX
    STA $00F2                       ; $ABE4A3  8D F2 00     MX
    PHY                             ; $ABE4A6  5A           MX
    LDA $00F4                       ; $ABE4A7  AD F4 00     MX
    AND #$0001                      ; $ABE4AA  29 01 00     MX
    BNE L_ABE4B7                    ; $ABE4AD  D0 08        MX
    LDA ($10)                       ; $ABE4AF  B2 10        MX
    TAX                             ; $ABE4B1  AA           MX
    JSR ($E010,X)                   ; $ABE4B2  FC 10 E0     MX
    BRA L_ABE4BD                    ; $ABE4B5  80 06        MX
L_ABE4B7:
    LDA ($10)                       ; $ABE4B7  B2 10        MX
    TAX                             ; $ABE4B9  AA           MX
    JSR ($E00E,X)                   ; $ABE4BA  FC 0E E0     MX
L_ABE4BD:
    PLY                             ; $ABE4BD  7A           MX
    SEP #$20                        ; $ABE4BE  E2 20        MX
    LDA $00F6                       ; $ABE4C0  AD F6 00     mX
    BNE L_ABE4CA                    ; $ABE4C3  D0 05        mX
    INY                             ; $ABE4C5  C8           mX
    INY                             ; $ABE4C6  C8           mX
    JMP L_ABE46F                    ; $ABE4C7  4C 6F E4     mX
L_ABE4CA:
    REP #$20                        ; $ABE4CA  C2 20        mX
    RTL                             ; $ABE4CC  6B           MX
    db $02,$08,$20,$80,$03,$0C,$30,$C0,$01,$04,$10,$40,$F1,$F1,$81,$00 ; $ABE4CD
    db $00,$F4,$FF,$0E,$00,$00,$00,$1C,$00,$02,$3C,$08,$77,$92,$6F,$8D ; $ABE4DD
    db $79,$B0,$57,$A9,$7B,$DE,$3E,$00,$00,$3C,$00,$70,$00,$60,$00,$66 ; $ABE4ED
    db $00,$0A,$00,$04,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE4FD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE50D
    db $00,$00,$00,$00,$00,$00,$00,$AA,$5F,$B1,$4E,$1E,$E0,$D8,$60,$70 ; $ABE51D
    db $00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE52D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE53D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE54D
    db $00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00 ; $ABE55D
    db $00,$00,$38,$00,$40,$3C,$A0,$5E,$48,$BE,$6A,$A2,$E2,$3C,$E4,$AE ; $ABE56D
    db $3E,$FA,$00,$00,$3C,$00,$40,$00,$80,$00,$9C,$00,$08,$00,$10,$00 ; $ABE57D
    db $04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE58D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE59D
    db $00,$00,$96,$78,$44,$BA,$70,$8C,$78,$80,$50,$20,$20,$30,$00,$00 ; $ABE5AD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE5BD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE5CD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE5DD
    db $00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0C,$00,$00,$00,$30,$08,$00 ; $ABE5ED
    db $7C,$44,$BA,$B8,$7E,$6E,$CC,$6C,$92,$92,$FE,$34,$BE,$08,$00,$7C ; $ABE5FD
    db $00,$82,$00,$02,$00,$30,$00,$00,$00,$00,$00,$40,$00,$00,$00,$00 ; $ABE60D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE61D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FA,$44,$92 ; $ABE62D
    db $6C,$44,$38,$7C,$00,$64,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE63D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE64D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE65D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81 ; $ABE66D
    db $00,$00,$F8,$FF,$0C,$00,$00,$00,$38,$00,$44,$38,$82,$7C,$80,$7E ; $ABE67D
    db $00,$FE,$00,$FE,$00,$FE,$82,$7C,$00,$00,$38,$00,$7C,$00,$7E,$00 ; $ABE68D
    db $FE,$00,$FE,$00,$FE,$00,$7C,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE69D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE6AD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$7C,$00,$64,$18,$00,$00 ; $ABE6BD
    db $00,$00,$00,$00,$00,$00,$00,$00,$7C,$00,$00,$00,$00,$00,$00,$00 ; $ABE6CD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE6DD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE6ED
    db $00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0E ; $ABE6FD
    db $00,$00,$00,$3C,$00,$40,$3E,$87,$78,$06,$FA,$09,$F7,$09,$F6,$89 ; $ABE70D
    db $77,$8D,$72,$00,$00,$3E,$00,$78,$00,$F9,$00,$F0,$00,$F0,$00,$70 ; $ABE71D
    db $00,$70,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE72D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE73D
    db $00,$00,$00,$AC,$53,$E7,$18,$70,$0E,$18,$00,$00,$00,$00,$00,$00 ; $ABE74D
    db $00,$00,$00,$10,$00,$18,$00,$0E,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE75D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE76D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE77D
    db $00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00,$00,$00,$03,$00 ; $ABE78D
    db $0C,$03,$10,$0F,$11,$0E,$25,$1B,$3B,$0F,$47,$3E,$94,$6D,$00,$00 ; $ABE79D
    db $03,$00,$0F,$00,$06,$00,$10,$00,$00,$00,$00,$00,$02,$00,$80,$00 ; $ABE7AD
    db $00,$C0,$00,$E0,$40,$A0,$00,$E0,$00,$20,$40,$C0,$40,$80,$00,$00 ; $ABE7BD
    db $C0,$00,$E0,$00,$20,$00,$20,$00,$C0,$00,$80,$00,$00,$00,$D5,$6F ; $ABE7CD
    db $D9,$26,$F6,$00,$E0,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE7DD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE7ED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00 ; $ABE7FD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1 ; $ABE80D
    db $81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$07,$00,$00,$0F,$03,$1C,$20 ; $ABE81D
    db $1F,$38,$39,$06,$70,$50,$37,$4C,$BD,$00,$00,$0F,$00,$1C,$00,$08 ; $ABE82D
    db $00,$06,$00,$09,$00,$0A,$00,$02,$00,$00,$00,$80,$00,$40,$80,$C0 ; $ABE83D
    db $00,$00,$C0,$80,$80,$00,$80,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $ABE84D
    db $00,$40,$00,$00,$00,$00,$00,$00,$00,$4A,$B6,$E4,$18,$F8,$00,$80 ; $ABE85D
    db $40,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE86D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE87D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE88D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF ; $ABE89D
    db $0C,$00,$00,$00,$38,$00,$44,$38,$82,$7C,$44,$BA,$3A,$FC,$6C,$CE ; $ABE8AD
    db $EE,$92,$10,$FE,$00,$00,$38,$00,$7C,$00,$82,$00,$00,$00,$30,$00 ; $ABE8BD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE8CD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE8DD
    db $00,$00,$00,$00,$DA,$7C,$BA,$44,$54,$28,$7C,$00,$64,$18,$00,$00 ; $ABE8ED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE8FD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE90D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE91D
    db $00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0C,$00,$00,$00,$07 ; $ABE92D
    db $00,$08,$07,$10,$0F,$00,$1F,$25,$1A,$0A,$35,$48,$37,$29,$D7,$00 ; $ABE93D
    db $00,$07,$00,$0F,$00,$1F,$00,$1A,$00,$30,$00,$30,$00,$10,$00,$00 ; $ABE94D
    db $00,$80,$00,$40,$80,$80,$40,$40,$80,$00,$80,$40,$C0,$80,$00,$00 ; $ABE95D
    db $00,$00,$00,$80,$00,$40,$00,$00,$00,$40,$00,$00,$00,$00,$00,$39 ; $ABE96D
    db $C7,$79,$86,$E6,$00,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE97D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE98D
    db $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE99D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1 ; $ABE9AD
    db $F1,$81,$00,$00,$FA,$FF,$0E,$00,$00,$00,$1C,$00,$20,$1E,$40,$3E ; $ABE9BD
    db $01,$7E,$00,$7F,$00,$7F,$40,$3F,$01,$3E,$00,$00,$1C,$00,$3E,$00 ; $ABE9CD
    db $7E,$00,$7F,$00,$7F,$00,$3F,$00,$3E,$00,$00,$00,$00,$00,$00,$00 ; $ABE9DD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABE9ED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$18,$09,$06,$0C,$03 ; $ABE9FD
    db $07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00 ; $ABEA0D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00 ; $ABEA1D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEA2D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA ; $ABEA3D
    db $FF,$0A,$00,$00,$00,$08,$3D,$33,$56,$2A,$57,$2B,$5B,$36,$4F,$45 ; $ABEA4D
    db $3A,$22,$1D,$11,$0E,$22,$00,$4C,$00,$48,$00,$44,$00,$40,$00,$38 ; $ABEA5D
    db $00,$18,$00,$0E,$00,$80,$00,$40,$80,$40,$80,$70,$80,$F0,$00,$90 ; $ABEA6D
    db $60,$30,$E0,$A0,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEA7D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEA8D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEA9D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEAAD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEABD
    db $00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0E,$00,$00,$00 ; $ABEACD
    db $14,$08,$06,$3C,$43,$3C,$01,$75,$12,$67,$4B,$31,$4F,$3F,$39,$0E ; $ABEADD
    db $08,$00,$30,$00,$30,$00,$6E,$00,$68,$00,$36,$00,$20,$00,$00,$00 ; $ABEAED
    db $00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$C0,$80,$40,$80,$80,$40 ; $ABEAFD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEB0D
    db $1F,$00,$07,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEB1D
    db $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEB2D
    db $00,$E0,$80,$60,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEB3D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEB4D
    db $F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$00,$38,$14,$78,$6C ; $ABEB5D
    db $CE,$6C,$92,$36,$BC,$54,$EE,$BA,$46,$82,$7C,$38,$00,$40,$00,$B2 ; $ABEB6D
    db $00,$82,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEB7D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEB8D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$D6,$38,$7C,$00,$64 ; $ABEB9D
    db $18,$74,$18,$74,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEBAD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEBBD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEBCD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00 ; $ABEBDD
    db $F8,$FF,$0C,$00,$00,$00,$3C,$40,$42,$BC,$00,$FE,$00,$FE,$00,$FE ; $ABEBED
    db $00,$FE,$00,$7C,$00,$00,$00,$00,$3C,$00,$FE,$00,$FE,$00,$FE,$00 ; $ABEBFD
    db $FE,$00,$7C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEC0D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEC1D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEC2D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEC3D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEC4D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEC5D
    db $00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00 ; $ABEC6D
    db $00,$00,$00,$00,$38,$14,$6A,$07,$FE,$10,$EF,$87,$78,$80,$7F,$44 ; $ABEC7D
    db $3B,$00,$00,$30,$00,$60,$00,$E0,$00,$E0,$00,$70,$00,$7F,$00,$3B ; $ABEC8D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$80,$00,$80,$80 ; $ABEC9D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$00 ; $ABECAD
    db $00,$06,$39,$06,$01,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABECBD
    db $00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABECCD
    db $00,$00,$C0,$60,$E0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABECDD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABECED
    db $00,$F1,$F1,$81,$00,$00,$FC,$FF,$0E,$00,$00,$00,$18,$00,$0C,$30 ; $ABECFD
    db $52,$28,$08,$7A,$09,$7B,$14,$6D,$4B,$37,$45,$3E,$00,$00,$30,$00 ; $ABED0D
    db $24,$00,$67,$00,$64,$00,$62,$00,$30,$00,$20,$00,$00,$00,$00,$00 ; $ABED1D
    db $00,$00,$00,$00,$80,$00,$C0,$40,$40,$C0,$80,$00,$00,$00,$00,$00 ; $ABED2D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$37,$08,$0C,$03 ; $ABED3D
    db $01,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00 ; $ABED4D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$00,$60,$80 ; $ABED5D
    db $C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABED6D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00 ; $ABED7D
    db $00,$F4,$FF,$0E,$00,$00,$00,$1A,$24,$00,$78,$06,$F1,$8A,$67,$1D ; $ABED8D
    db $C9,$30,$D6,$28,$FA,$06,$E6,$24,$00,$7E,$00,$F8,$00,$70,$00,$E6 ; $ABED9D
    db $00,$CB,$01,$C5,$00,$D9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEDAD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEDBD
    db $00,$00,$00,$00,$00,$00,$00,$21,$D4,$30,$C8,$1C,$E4,$48,$F0,$60 ; $ABEDCD
    db $98,$30,$8C,$00,$80,$00,$00,$CA,$00,$C3,$04,$E2,$01,$B0,$00,$98 ; $ABEDDD
    db $00,$8C,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEDED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEDFD
    db $00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00 ; $ABEE0D
    db $00,$00,$28,$54,$40,$A2,$9C,$40,$2A,$9C,$2A,$82,$62,$B8,$60,$AA ; $ABEE1D
    db $12,$D6,$00,$00,$3C,$00,$62,$00,$C0,$00,$DC,$00,$9D,$11,$95,$00 ; $ABEE2D
    db $A8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEE3D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEE4D
    db $00,$00,$06,$CA,$4A,$AA,$30,$D0,$78,$80,$50,$AC,$20,$B4,$00,$82 ; $ABEE5D
    db $00,$00,$B0,$00,$94,$00,$CA,$04,$80,$00,$8C,$00,$84,$00,$82,$00 ; $ABEE6D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEE7D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEE8D
    db $00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0C,$00,$00,$00,$20,$5C,$40 ; $ABEE9D
    db $86,$B8,$02,$6C,$29,$66,$E5,$24,$DB,$6C,$6D,$00,$92,$08,$00,$3C ; $ABEEAD
    db $00,$46,$00,$92,$00,$38,$00,$6C,$48,$92,$00,$6C,$00,$00,$00,$00 ; $ABEEBD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEECD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$BA,$28,$AA ; $ABEEDD
    db $28,$44,$C6,$6C,$AA,$64,$9A,$00,$82,$00,$81,$00,$00,$44,$00,$54 ; $ABEEED
    db $00,$82,$38,$92,$00,$82,$00,$82,$00,$81,$00,$00,$00,$00,$00,$00 ; $ABEEFD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEF0D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81 ; $ABEF1D
    db $00,$00,$F8,$FF,$0C,$00,$00,$00,$38,$00,$44,$38,$82,$7C,$80,$7E ; $ABEF2D
    db $00,$FE,$00,$FE,$00,$FE,$02,$FC,$00,$00,$38,$00,$7C,$00,$7E,$00 ; $ABEF3D
    db $FE,$00,$FE,$00,$FE,$00,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEF4D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEF5D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$44,$BA,$20,$DE,$00,$D6 ; $ABEF6D
    db $00,$EA,$00,$49,$00,$00,$00,$00,$FE,$00,$BA,$00,$DE,$00,$D6,$00 ; $ABEF7D
    db $EA,$00,$49,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEF8D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEF9D
    db $00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0E ; $ABEFAD
    db $00,$00,$00,$22,$1C,$40,$38,$87,$74,$16,$E2,$09,$F7,$09,$F6,$89 ; $ABEFBD
    db $77,$8D,$76,$1C,$00,$3E,$00,$78,$00,$E9,$00,$F0,$00,$F0,$00,$70 ; $ABEFCD
    db $00,$70,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABEFDD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80 ; $ABEFED
    db $00,$00,$00,$AC,$55,$A4,$58,$30,$4E,$10,$48,$00,$44,$00,$00,$00 ; $ABEFFD
    db $00,$00,$00,$52,$00,$5B,$00,$4F,$00,$48,$00,$44,$00,$00,$00,$00 ; $ABF00D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF01D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF02D
    db $00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00,$00,$00,$03,$00 ; $ABF03D
    db $08,$07,$10,$0C,$11,$2E,$05,$FB,$13,$E7,$44,$BD,$94,$65,$00,$00 ; $ABF04D
    db $07,$00,$0F,$00,$26,$00,$F0,$00,$E8,$00,$A3,$03,$4A,$00,$80,$00 ; $ABF05D
    db $00,$C0,$00,$60,$00,$B0,$00,$D0,$00,$30,$40,$F0,$00,$A0,$00,$00 ; $ABF06D
    db $C0,$00,$E0,$00,$70,$00,$30,$00,$D0,$00,$B0,$00,$60,$40,$11,$E3 ; $ABF07D
    db $59,$AA,$F8,$08,$E0,$00,$40,$00,$00,$00,$00,$00,$00,$00,$CC,$00 ; $ABF08D
    db $84,$00,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF09D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00 ; $ABF0AD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1 ; $ABF0BD
    db $81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$07,$00,$00,$0F,$00,$38,$00 ; $ABF0CD
    db $7F,$18,$FD,$06,$F0,$58,$9B,$6C,$BD,$00,$00,$0F,$00,$3F,$00,$78 ; $ABF0DD
    db $00,$E6,$04,$89,$00,$A6,$00,$02,$00,$00,$00,$80,$00,$40,$80,$60 ; $ABF0ED
    db $00,$20,$80,$A0,$80,$40,$80,$00,$00,$00,$00,$00,$00,$80,$00,$80 ; $ABF0FD
    db $00,$40,$00,$40,$00,$00,$00,$80,$80,$5A,$96,$EC,$20,$E0,$00,$80 ; $ABF10D
    db $40,$00,$80,$00,$00,$00,$00,$00,$00,$21,$00,$10,$00,$18,$00,$00 ; $ABF11D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF12D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF13D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF ; $ABF14D
    db $0C,$00,$00,$00,$28,$54,$7C,$82,$80,$02,$7C,$01,$6E,$A9,$64,$E7 ; $ABF15D
    db $24,$59,$6C,$EE,$00,$00,$00,$00,$7E,$00,$82,$00,$10,$00,$38,$00 ; $ABF16D
    db $EE,$48,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF17D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF18D
    db $00,$00,$00,$00,$C6,$54,$BA,$28,$28,$AA,$44,$C6,$7C,$BA,$00,$82 ; $ABF19D
    db $00,$81,$00,$00,$28,$00,$44,$00,$D6,$00,$82,$38,$82,$00,$82,$00 ; $ABF1AD
    db $81,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF1BD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF1CD
    db $00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0C,$00,$00,$00,$07 ; $ABF1DD
    db $00,$08,$07,$00,$1F,$00,$3C,$05,$FA,$0A,$F5,$48,$B3,$25,$D6,$00 ; $ABF1ED
    db $00,$07,$00,$1F,$00,$3F,$00,$FA,$00,$F0,$00,$B4,$00,$D8,$00,$00 ; $ABF1FD
    db $00,$80,$00,$40,$80,$20,$40,$A0,$00,$60,$80,$40,$C0,$00,$80,$00 ; $ABF20D
    db $00,$00,$00,$80,$00,$C0,$00,$40,$00,$00,$00,$00,$00,$00,$80,$35 ; $ABF21D
    db $C7,$7B,$8A,$E0,$00,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$88 ; $ABF22D
    db $00,$04,$00,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF23D
    db $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF24D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1 ; $ABF25D
    db $F1,$81,$00,$00,$FA,$FF,$0E,$00,$00,$00,$1C,$00,$20,$1E,$40,$3E ; $ABF26D
    db $01,$7E,$00,$7F,$00,$7F,$40,$3F,$01,$3E,$00,$00,$1C,$00,$3E,$00 ; $ABF27D
    db $7E,$00,$7F,$00,$7F,$00,$3F,$00,$3E,$00,$00,$00,$00,$00,$00,$00 ; $ABF28D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF29D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$00,$3F,$08,$17 ; $ABF2AD
    db $09,$16,$08,$12,$00,$10,$00,$00,$00,$00,$3F,$00,$3F,$00,$16,$00 ; $ABF2BD
    db $16,$00,$12,$00,$10,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00 ; $ABF2CD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF2DD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA ; $ABF2ED
    db $FF,$0A,$00,$00,$00,$08,$39,$1B,$46,$12,$47,$0B,$63,$16,$63,$40 ; $ABF2FD
    db $3B,$20,$1F,$10,$0F,$26,$04,$6C,$00,$68,$00,$74,$00,$68,$00,$3F ; $ABF30D
    db $00,$1F,$00,$0F,$00,$80,$00,$00,$00,$00,$00,$70,$00,$F0,$00,$80 ; $ABF31D
    db $70,$10,$E0,$00,$E0,$00,$40,$C0,$00,$40,$80,$80,$00,$00,$00,$70 ; $ABF32D
    db $00,$E0,$00,$E0,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF33D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF34D
    db $00,$00,$00,$00,$00,$30,$C0,$00,$30,$00,$00,$00,$00,$00,$00,$00 ; $ABF35D
    db $00,$00,$00,$00,$00,$C0,$00,$30,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF36D
    db $00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0E,$00,$00,$00 ; $ABF37D
    db $14,$00,$0E,$24,$49,$24,$18,$42,$12,$43,$0B,$61,$4F,$2F,$20,$1C ; $ABF38D
    db $08,$00,$31,$01,$32,$00,$67,$04,$6C,$04,$76,$00,$30,$00,$1B,$00 ; $ABF39D
    db $00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$80,$80,$00,$00,$00,$40 ; $ABF3AD
    db $00,$00,$00,$00,$80,$00,$00,$00,$40,$00,$40,$00,$80,$40,$80,$00 ; $ABF3BD
    db $13,$0C,$08,$07,$04,$09,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF3CD
    db $0C,$00,$07,$00,$09,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF3DD
    db $00,$E0,$80,$60,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF3ED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF3FD
    db $F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$20,$5C,$A8,$02,$7C ; $ABF40D
    db $38,$66,$E5,$24,$DB,$6C,$6D,$00,$93,$BA,$28,$08,$00,$56,$00,$82 ; $ABF41D
    db $00,$38,$00,$6C,$48,$92,$00,$6C,$00,$44,$00,$00,$00,$00,$00,$00 ; $ABF42D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF43D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$28,$44,$C6,$6C ; $ABF44D
    db $AA,$64,$9A,$64,$9A,$00,$82,$00,$81,$00,$00,$54,$00,$82,$38,$92 ; $ABF45D
    db $00,$82,$00,$82,$00,$82,$00,$81,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF46D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF47D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00 ; $ABF48D
    db $F8,$FF,$0C,$00,$00,$00,$3C,$40,$42,$BC,$00,$FE,$00,$FE,$00,$FE ; $ABF49D
    db $00,$FE,$00,$FE,$00,$FA,$00,$00,$3C,$00,$FE,$00,$FE,$00,$FE,$00 ; $ABF4AD
    db $FE,$00,$FE,$00,$FA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF4BD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF4CD
    db $00,$00,$00,$00,$00,$00,$00,$AE,$00,$49,$00,$00,$00,$00,$00,$00 ; $ABF4DD
    db $00,$00,$00,$00,$00,$00,$AE,$00,$49,$00,$00,$00,$00,$00,$00,$00 ; $ABF4ED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF4FD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF50D
    db $00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00 ; $ABF51D
    db $00,$00,$00,$08,$20,$10,$48,$15,$CC,$10,$CF,$86,$5A,$81,$7F,$44 ; $ABF52D
    db $3B,$00,$00,$30,$00,$64,$04,$E2,$00,$E0,$00,$71,$00,$7E,$00,$3B ; $ABF53D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; $ABF54D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$80,$00,$00 ; $ABF55D
    db $00,$00,$3F,$04,$1B,$02,$0D,$00,$05,$00,$04,$00,$00,$00,$00,$00 ; $ABF56D
    db $00,$3E,$00,$1A,$00,$0D,$00,$05,$00,$04,$00,$00,$00,$00,$00,$00 ; $ABF57D
    db $00,$00,$C0,$60,$E0,$00,$80,$00,$80,$00,$80,$00,$00,$00,$00,$00 ; $ABF58D
    db $00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00 ; $ABF59D
    db $00,$F1,$F1,$81,$00,$00,$FC,$FF,$0E,$00,$00,$00,$18,$00,$04,$30 ; $ABF5AD
    db $4E,$20,$08,$62,$09,$63,$0C,$65,$4B,$27,$44,$3C,$00,$00,$38,$00 ; $ABF5BD
    db $31,$01,$77,$00,$74,$04,$72,$00,$30,$00,$23,$00,$00,$00,$00,$00 ; $ABF5CD
    db $00,$00,$00,$00,$80,$00,$80,$00,$00,$00,$80,$80,$00,$00,$00,$00 ; $ABF5DD
    db $00,$00,$00,$00,$00,$00,$40,$00,$C0,$00,$00,$00,$07,$38,$00,$1F ; $ABF5ED
    db $00,$0F,$00,$06,$00,$04,$00,$00,$00,$00,$00,$00,$38,$00,$1E,$00 ; $ABF5FD
    db $0F,$00,$06,$00,$04,$00,$00,$00,$00,$00,$00,$00,$C0,$00,$60,$80 ; $ABF60D
    db $C0,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF61D
    db $00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00 ; $ABF62D
    db $00,$F4,$FF,$0E,$00,$00,$00,$28,$2A,$50,$57,$A3,$A8,$46,$57,$69 ; $ABF63D
    db $70,$C7,$F1,$C1,$F3,$5E,$71,$14,$00,$2A,$00,$5F,$00,$AA,$01,$9D ; $ABF64D
    db $03,$1E,$00,$18,$06,$8A,$27,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF65D
    db $00,$00,$00,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF66D
    db $00,$00,$00,$80,$00,$80,$00,$41,$5E,$60,$4F,$38,$63,$27,$70,$40 ; $ABF67D
    db $70,$00,$30,$00,$00,$00,$00,$81,$3E,$20,$1F,$58,$07,$67,$18,$40 ; $ABF68D
    db $30,$00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF69D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF6AD
    db $00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00 ; $ABF6BD
    db $00,$00,$24,$24,$58,$58,$A0,$BE,$54,$6A,$44,$7A,$50,$64,$8A,$CE ; $ABF6CD
    db $B0,$CA,$18,$00,$26,$00,$52,$00,$B4,$0E,$A4,$1E,$BA,$04,$30,$04 ; $ABF6DD
    db $20,$5E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF6ED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF6FD
    db $00,$00,$C4,$BA,$00,$18,$52,$0C,$4C,$28,$40,$30,$00,$30,$00,$00 ; $ABF70D
    db $00,$00,$44,$3A,$60,$1E,$52,$2C,$0C,$70,$00,$70,$00,$30,$00,$00 ; $ABF71D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF72D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF73D
    db $00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0C,$00,$00,$00,$38,$38,$44 ; $ABF74D
    db $44,$82,$BA,$E6,$9A,$C2,$FE,$5C,$86,$28,$BA,$44,$AA,$00,$00,$38 ; $ABF75D
    db $00,$44,$00,$24,$38,$40,$3C,$EE,$10,$44,$10,$80,$7C,$00,$00,$00 ; $ABF76D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF77D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$28,$44 ; $ABF78D
    db $38,$2C,$50,$38,$40,$10,$58,$00,$00,$00,$00,$00,$00,$10,$6C,$44 ; $ABF79D
    db $38,$28,$54,$38,$44,$10,$6C,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF7AD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF7BD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81 ; $ABF7CD
    db $00,$00,$F8,$FF,$0C,$00,$00,$00,$38,$38,$5C,$5C,$92,$B6,$F6,$F6 ; $ABF7DD
    db $14,$54,$DA,$DA,$B6,$B6,$AA,$AA,$00,$00,$20,$00,$6C,$00,$08,$00 ; $ABF7ED
    db $EA,$00,$24,$00,$48,$00,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF7FD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF80D
    db $00,$00,$00,$00,$00,$00,$00,$00,$EE,$FE,$AA,$FE,$74,$7C,$00,$00 ; $ABF81D
    db $00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$54,$00,$08,$00,$00,$00 ; $ABF82D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF83D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF84D
    db $00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0E ; $ABF85D
    db $00,$00,$00,$4E,$4E,$C3,$DB,$D7,$F7,$AA,$AF,$2A,$6F,$30,$73,$74 ; $ABF86D
    db $77,$AC,$EF,$30,$00,$3C,$00,$29,$00,$54,$01,$D4,$01,$CE,$01,$8A ; $ABF87D
    db $01,$52,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF88D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF89D
    db $00,$00,$00,$ED,$ED,$A0,$EE,$60,$7C,$00,$18,$00,$00,$00,$00,$00 ; $ABF8AD
    db $00,$00,$00,$13,$00,$54,$00,$1C,$00,$08,$00,$00,$00,$00,$00,$00 ; $ABF8BD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF8CD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF8DD
    db $00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF,$0E,$00,$00,$00,$0F,$0F ; $ABF8ED
    db $21,$29,$7F,$7F,$46,$7E,$BF,$FF,$C3,$F2,$84,$E7,$2B,$47,$00,$00 ; $ABF8FD
    db $1E,$00,$00,$00,$39,$00,$40,$00,$31,$0C,$68,$13,$B2,$0C,$00,$00 ; $ABF90D
    db $80,$80,$C0,$C0,$40,$40,$00,$00,$00,$C0,$40,$C0,$00,$00,$00,$00 ; $ABF91D
    db $00,$00,$00,$00,$80,$00,$C0,$00,$00,$80,$40,$80,$80,$00,$03,$ED ; $ABF92D
    db $20,$C0,$44,$84,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$FE ; $ABF93D
    db $00,$FE,$04,$E8,$00,$C0,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF94D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF95D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1 ; $ABF96D
    db $81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$11,$1D,$37,$37,$2C,$6F,$4D ; $ABF97D
    db $7A,$69,$FE,$26,$FB,$27,$FA,$60,$9E,$02,$00,$08,$00,$13,$00,$25 ; $ABF98D
    db $03,$01,$17,$04,$19,$C5,$18,$60,$9E,$80,$80,$40,$40,$00,$80,$C0 ; $ABF99D
    db $C0,$40,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$80,$00,$C0,$00,$80 ; $ABF9AD
    db $00,$00,$80,$00,$80,$00,$00,$00,$00,$60,$58,$98,$00,$40,$40,$80 ; $ABF9BD
    db $00,$80,$00,$00,$00,$00,$00,$00,$00,$60,$9C,$B8,$40,$80,$00,$80 ; $ABF9CD
    db $00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF9DD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABF9ED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F6,$FF ; $ABF9FD
    db $0C,$00,$00,$00,$38,$38,$44,$44,$AA,$AA,$60,$FC,$E6,$9A,$40,$FE ; $ABFA0D
    db $5C,$86,$28,$BA,$00,$00,$38,$00,$54,$00,$02,$00,$24,$38,$C2,$3C ; $ABFA1D
    db $6C,$10,$C4,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFA2D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFA3D
    db $00,$00,$00,$00,$44,$28,$50,$28,$44,$38,$6C,$10,$38,$40,$00,$00 ; $ABFA4D
    db $00,$00,$00,$00,$00,$7C,$10,$6C,$44,$38,$6C,$10,$38,$44,$00,$00 ; $ABFA5D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFA6D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFA7D
    db $00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA,$FF,$0C,$00,$00,$00,$0E ; $ABFA8D
    db $0E,$15,$15,$3B,$3B,$6E,$6E,$7D,$7D,$AD,$AF,$A4,$AF,$EC,$EE,$00 ; $ABFA9D
    db $00,$0A,$00,$04,$00,$11,$00,$02,$00,$52,$00,$5A,$01,$10,$02,$00 ; $ABFAAD
    db $00,$00,$00,$80,$80,$40,$40,$C0,$C0,$80,$80,$00,$00,$00,$00,$00 ; $ABFABD
    db $00,$00,$00,$00,$00,$80,$00,$00,$00,$80,$00,$00,$00,$00,$00,$D8 ; $ABFACD
    db $DC,$B0,$B0,$A0,$40,$40,$80,$80,$00,$00,$00,$00,$00,$00,$00,$20 ; $ABFADD
    db $04,$C0,$00,$20,$C0,$40,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFAED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFAFD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1 ; $ABFB0D
    db $F1,$81,$00,$00,$FA,$FF,$0E,$00,$00,$00,$78,$78,$44,$44,$A6,$BE ; $ABFB1D
    db $B6,$B6,$95,$D7,$59,$5B,$59,$5B,$47,$67,$00,$00,$38,$00,$58,$00 ; $ABFB2D
    db $48,$00,$6A,$00,$26,$00,$26,$00,$38,$00,$00,$00,$00,$00,$00,$00 ; $ABFB3D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFB4D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$31,$33,$1B,$1B,$1F,$1F ; $ABFB5D
    db $08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$0E,$00,$04,$00,$00,$00 ; $ABFB6D
    db $00,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$00,$00 ; $ABFB7D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; $ABFB8D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$FA ; $ABFB9D
    db $FF,$0A,$00,$00,$00,$2E,$79,$3D,$A2,$9F,$A0,$1F,$60,$4E,$7E,$A4 ; $ABFBAD
    db $AE,$5C,$5F,$36,$37,$22,$15,$68,$17,$40,$1F,$99,$06,$81,$00,$53 ; $ABFBBD
    db $00,$21,$00,$09,$00,$80,$00,$80,$00,$80,$00,$00,$80,$80,$B0,$F0 ; $ABFBCD
    db $70,$30,$30,$00,$C0,$80,$00,$80,$00,$80,$00,$00,$40,$00,$70,$D0 ; $ABFBDD
    db $00,$20,$C0,$A0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFBED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFBFD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFC0D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFC1D
    db $00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0E,$00,$00,$00 ; $ABFC2D
    db $58,$58,$90,$BC,$DA,$E4,$46,$7F,$76,$E9,$38,$BF,$C0,$DF,$6F,$7E ; $ABFC3D
    db $20,$00,$70,$0C,$3A,$1C,$A0,$19,$16,$09,$40,$07,$20,$0F,$11,$00 ; $ABFC4D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$80,$40,$80,$80,$00 ; $ABFC5D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$40,$80,$40,$80,$C0,$00 ; $ABFC6D
    db $19,$3E,$00,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFC7D
    db $03,$00,$02,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFC8D
    db $A0,$A0,$40,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFC9D
    db $80,$40,$60,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFCAD
    db $F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00,$00,$38,$38,$44,$44,$E6 ; $ABFCBD
    db $9A,$C2,$FE,$DE,$86,$28,$BA,$44,$AA,$50,$AA,$00,$00,$38,$00,$24 ; $ABFCCD
    db $38,$40,$3C,$6C,$10,$C6,$10,$00,$7C,$90,$6C,$00,$00,$00,$00,$00 ; $ABFCDD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFCED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$44,$38,$2C,$10,$38 ; $ABFCFD
    db $40,$00,$40,$10,$58,$00,$00,$00,$00,$00,$00,$44,$38,$28,$54,$38 ; $ABFD0D
    db $44,$00,$7C,$10,$6C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFD1D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFD2D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00 ; $ABFD3D
    db $F8,$FF,$0C,$00,$00,$00,$2C,$2C,$4A,$5A,$66,$76,$DA,$DE,$F6,$FE ; $ABFD4D
    db $EE,$EE,$58,$7C,$00,$00,$50,$00,$B4,$00,$98,$00,$24,$00,$08,$00 ; $ABFD5D
    db $10,$00,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFD6D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFD7D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFD8D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFD9D
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFDAD
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFDBD
    db $00,$00,$00,$00,$00,$00,$F1,$F1,$81,$00,$00,$F8,$FF,$0C,$00,$00 ; $ABFDCD
    db $00,$18,$18,$3C,$3C,$0C,$6E,$06,$6F,$96,$DE,$D0,$D3,$DA,$DB,$6E ; $ABFDDD
    db $6F,$00,$00,$04,$00,$34,$02,$3A,$01,$68,$01,$2E,$00,$25,$00,$11 ; $ABFDED
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$80 ; $ABFDFD
    db $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$00,$80,$00,$00 ; $ABFE0D
    db $00,$34,$3F,$1E,$1F,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFE1D
    db $00,$0A,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFE2D
    db $00,$40,$C0,$60,$E0,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFE3D
    db $00,$C0,$00,$E0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFE4D
    db $00,$F1,$F1,$81,$00,$00,$FC,$FF,$0E,$00,$00,$00,$00,$00,$64,$6C ; $ABFE5D
    db $80,$AC,$A8,$F5,$A3,$BF,$A4,$B7,$22,$A1,$D0,$D8,$00,$00,$14,$00 ; $ABFE6D
    db $72,$0C,$4A,$05,$41,$04,$40,$0B,$D4,$0B,$2A,$05,$00,$00,$00,$00 ; $ABFE7D
    db $00,$00,$00,$00,$00,$00,$40,$40,$00,$00,$00,$00,$00,$00,$00,$00 ; $ABFE8D
    db $00,$00,$00,$00,$00,$80,$40,$80,$00,$C0,$80,$00,$D2,$DD,$6A,$7F ; $ABFE9D
    db $0F,$0E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2E,$01,$14,$01 ; $ABFEAD
    db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$40,$80 ; $ABFEBD
    db $00,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$00,$E0 ; $ABFECD
    db $00,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF ; $ABFEDD
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFEED
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFEFD
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF0D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF1D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF2D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF3D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF4D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF5D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF6D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF7D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF8D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFF9D
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFFAD
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFFBD
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFFCD
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFFDD
    db $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $ABFFED
    db $00,$00,$FF                                                     ; $ABFFFD
