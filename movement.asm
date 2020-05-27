 ;start of loop, put stuff under this
.start

 ;screen drawing is not included here but this will not function without it

 ;move up
 lda #$10
 bit SWCHA
 BNE .skipup
 DEC player0y
 LDA #%10000000
 STA ram2
.skipup
 ;move down
 lda #$20
 bit SWCHA
 BNE .skipdown
 INC player0y
 LDA #%01000000
 STA ram2
.skipdown
 ;move left
 lda #$40
 bit SWCHA
 BNE .skipleft
 DEC player0x
 LDA #%00100000
 STA ram2
.skipleft
 ;move right
 lda #$80
 bit SWCHA
 BNE .skipright
 INC player0x
 LDA #%00010000
 STA ram2
.skipright

 ;check for collision
 ;i have no idea how this works it just does
 BIT CXP0FB
 if ((* - .1p11) < 127) && ((* - .1p11) > -128)
 bmi .1p11
 else
 bpl .skipcollide
 jmp .1p11
 endif

 ;collision maths
.1p11
 ;left
 LDA ram2
 AND #16
 BEQ .skipleftcollide
 DEC player0x
.skipleftcollide
 ;right
 LDA ram2
 AND #32
 BEQ .skiprightcollide
 INC player0x
.skiprightcollide
 ;up
 BIT ram2
 BPL .skipupcollide
 INC player0y
.skipupcollide
 ;down
 BIT ram2
 BVC .skipcollide
 DEC player0y
.skipcollide

 ;go back to start of loop
 jmp .start
