# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #0000ff
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new ALU_8BIT work:ALU_8BIT:NOFILE -nosplit
load symbol RTL_MUX3 work MUX pin I0 input.left pin I1 input.left pin I10 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left pin I6 input.left pin I7 input.left pin I8 input.left pin I9 input.left pin O output.right pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_ROM work GEN pin O output.right pinBus A input.left [7:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_MULT work RTL(*) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_DIV work RTL(/) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_AND work AND pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_OR work OR pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_XOR work XOR pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_INV work INV pinBus I0 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_LSHIFT work RTL(<<) pin I1 input.left pin I2 input.left pinBus I0 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_RSHIFT work RTL(>>) pin I1 input.left pin I2 input.left pinBus I0 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MOD work RTL(%) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX0 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus I10 input.left [7:0] pinBus I2 input.left [7:0] pinBus I3 input.left [7:0] pinBus I4 input.left [7:0] pinBus I5 input.left [7:0] pinBus I6 input.left [7:0] pinBus I7 input.left [7:0] pinBus I8 input.left [7:0] pinBus I9 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_OR0 work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_NEQ work RTL(!=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_AND8 workI1 AND pin I0 input pin I1 input.neg pin O output fillcolor 1
load symbol RTL_AND8 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_AND8 workI0,I1 AND pin I0 input.neg pin I1 input.neg pin O output fillcolor 1
load symbol RTL_AND7 workI0 AND pin I0 input.neg pin I1 input pin O output fillcolor 1
load symbol RTL_EQ work RTL(=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load port C output -pg 1 -lvl 5 -x 1410 -y 150
load port Err output -pg 1 -lvl 5 -x 1410 -y 1510
load port N output -pg 1 -lvl 5 -x 1410 -y 450
load port V output -pg 1 -lvl 5 -x 1410 -y 760
load port Z output -pg 1 -lvl 5 -x 1410 -y 1330
load portBus A input [7:0] -attr @name A[7:0] -pg 1 -lvl 0 -x 0 -y 340
load portBus B input [7:0] -attr @name B[7:0] -pg 1 -lvl 0 -x 0 -y 370
load portBus Opcode input [3:0] -attr @name Opcode[3:0] -pg 1 -lvl 0 -x 0 -y 1410
load portBus Result output [7:0] -attr @name Result[7:0] -pg 1 -lvl 5 -x 1410 -y 480
load portBus Result_High output [7:0] -attr @name Result_High[7:0] -pg 1 -lvl 5 -x 1410 -y 970
load inst C_i RTL_MUX3 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b0001 -pinAttr I10 @attr S=default -pinAttr I2 @attr S=4'b0010 -pinAttr I3 @attr S=4'b0011 -pinAttr I4 @attr S=4'b0100 -pinAttr I5 @attr S=4'b0101 -pinAttr I6 @attr S=4'b0110 -pinAttr I7 @attr S=4'b0111 -pinAttr I8 @attr S=4'b1000 -pinAttr I9 @attr S=4'b1001 -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 1270 -y 150
load inst Err_i RTL_ROM work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 3 -x 770 -y 1150
load inst Err_i__0 RTL_MUX3 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b0001 -pinAttr I10 @attr S=default -pinAttr I2 @attr S=4'b0010 -pinAttr I3 @attr S=4'b0011 -pinAttr I4 @attr S=4'b0100 -pinAttr I5 @attr S=4'b0101 -pinAttr I6 @attr S=4'b0110 -pinAttr I7 @attr S=4'b0111 -pinAttr I8 @attr S=4'b1000 -pinAttr I9 @attr S=4'b1001 -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 1270 -y 1510
load inst Result0_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 1 -x 110 -y 350
load inst Result0_i__0 RTL_SUB work -attr @cell(#000000) RTL_SUB -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 1 -x 110 -y 650
load inst Result0_i__1 RTL_MULT work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 2 -x 370 -y 790
load inst Result0_i__2 RTL_DIV work -attr @cell(#000000) RTL_DIV -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 2 -x 370 -y 900
load inst Result0_i__3 RTL_AND work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 3 -x 770 -y 40
load inst Result0_i__4 RTL_OR work -attr @cell(#000000) RTL_OR -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 3 -x 770 -y 110
load inst Result0_i__5 RTL_XOR work -attr @cell(#000000) RTL_XOR -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 3 -x 770 -y 180
load inst Result0_i__6 RTL_INV work -attr @cell(#000000) RTL_INV -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 3 -x 770 -y 250
load inst Result0_i__7 RTL_LSHIFT work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 3 -x 770 -y 340
load inst Result0_i__8 RTL_RSHIFT work -attr @cell(#000000) RTL_RSHIFT -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 3 -x 770 -y 550
load inst Result_High0_i RTL_MOD work -attr @cell(#000000) RTL_MOD -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 2 -x 370 -y 990
load inst Result_High_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=8'b00000000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 3 -x 770 -y 1010
load inst Result_High_i__0 RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=4'b0000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=4'b0001 -pinBusAttr I10 @name I10[7:0] -pinBusAttr I10 @attr S=default -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr S=4'b0010 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr S=4'b0011 -pinBusAttr I4 @name I4[7:0] -pinBusAttr I4 @attr S=4'b0100 -pinBusAttr I5 @name I5[7:0] -pinBusAttr I5 @attr S=4'b0101 -pinBusAttr I6 @name I6[7:0] -pinBusAttr I6 @attr S=4'b0110 -pinBusAttr I7 @name I7[7:0] -pinBusAttr I7 @attr S=4'b0111 -pinBusAttr I8 @name I8[7:0] -pinBusAttr I8 @attr S=4'b1000 -pinBusAttr I9 @name I9[7:0] -pinBusAttr I9 @attr S=4'b1001 -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 1270 -y 1120
load inst Result_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=8'b00000000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 3 -x 770 -y 890
load inst Result_i__0 RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=4'b0000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=4'b0001 -pinBusAttr I10 @name I10[7:0] -pinBusAttr I10 @attr S=default -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr S=4'b0010 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr S=4'b0011 -pinBusAttr I4 @name I4[7:0] -pinBusAttr I4 @attr S=4'b0100 -pinBusAttr I5 @name I5[7:0] -pinBusAttr I5 @attr S=4'b0101 -pinBusAttr I6 @name I6[7:0] -pinBusAttr I6 @attr S=4'b0110 -pinBusAttr I7 @name I7[7:0] -pinBusAttr I7 @attr S=4'b0111 -pinBusAttr I8 @name I8[7:0] -pinBusAttr I8 @attr S=4'b1000 -pinBusAttr I9 @name I9[7:0] -pinBusAttr I9 @attr S=4'b1001 -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 1270 -y 450
load inst V0_i RTL_OR0 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -x 770 -y 450
load inst V0_i__0 RTL_OR0 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -x 770 -y 660
load inst V0_i__1 RTL_NEQ work -attr @cell(#000000) RTL_NEQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 3 -x 770 -y 760
load inst V1_i RTL_AND8 workI1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 2 -x 370 -y 440
load inst V1_i__0 RTL_AND8 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 2 -x 370 -y 510
load inst V1_i__1 RTL_AND8 workI1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 2 -x 370 -y 610
load inst V1_i__2 RTL_AND8 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 2 -x 370 -y 710
load inst V2_i RTL_AND8 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 110 -y 430
load inst V2_i__0 RTL_AND8 workI0,I1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 110 -y 500
load inst V2_i__1 RTL_AND8 workI1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 110 -y 570
load inst V2_i__2 RTL_AND7 workI0 -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 110 -y 750
load inst V_i RTL_MUX3 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=4'b0001 -pinAttr I10 @attr S=default -pinAttr I2 @attr S=4'b0010 -pinAttr I3 @attr S=4'b0011 -pinAttr I4 @attr S=4'b0100 -pinAttr I5 @attr S=4'b0101 -pinAttr I6 @attr S=4'b0110 -pinAttr I7 @attr S=4'b0111 -pinAttr I8 @attr S=4'b1000 -pinAttr I9 @attr S=4'b1001 -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 1270 -y 760
load inst Z0_i RTL_AND8 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 1270 -y 1330
load inst Z1_i RTL_EQ work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 3 -x 770 -y 1250
load inst Z1_i__0 RTL_EQ work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 3 -x 770 -y 1340
load net <const0> -ground -pin C_i I10 -pin C_i I2 -pin C_i I3 -pin C_i I4 -pin C_i I5 -pin C_i I6 -pin C_i I7 -pin C_i I8 -pin C_i I9 -pin Err_i__0 I0 -pin Err_i__0 I1 -pin Err_i__0 I10 -pin Err_i__0 I2 -pin Err_i__0 I4 -pin Err_i__0 I5 -pin Err_i__0 I6 -pin Err_i__0 I7 -pin Err_i__0 I8 -pin Err_i__0 I9 -pin Result_High_i I0[7] -pin Result_High_i I0[6] -pin Result_High_i I0[5] -pin Result_High_i I0[4] -pin Result_High_i I0[3] -pin Result_High_i I0[2] -pin Result_High_i I0[1] -pin Result_High_i I0[0] -pin Result_High_i__0 I0[7] -pin Result_High_i__0 I0[6] -pin Result_High_i__0 I0[5] -pin Result_High_i__0 I0[4] -pin Result_High_i__0 I0[3] -pin Result_High_i__0 I0[2] -pin Result_High_i__0 I0[1] -pin Result_High_i__0 I0[0] -pin Result_High_i__0 I1[7] -pin Result_High_i__0 I1[6] -pin Result_High_i__0 I1[5] -pin Result_High_i__0 I1[4] -pin Result_High_i__0 I1[3] -pin Result_High_i__0 I1[2] -pin Result_High_i__0 I1[1] -pin Result_High_i__0 I1[0] -pin Result_High_i__0 I10[7] -pin Result_High_i__0 I10[6] -pin Result_High_i__0 I10[5] -pin Result_High_i__0 I10[4] -pin Result_High_i__0 I10[3] -pin Result_High_i__0 I10[2] -pin Result_High_i__0 I10[1] -pin Result_High_i__0 I10[0] -pin Result_High_i__0 I4[7] -pin Result_High_i__0 I4[6] -pin Result_High_i__0 I4[5] -pin Result_High_i__0 I4[4] -pin Result_High_i__0 I4[3] -pin Result_High_i__0 I4[2] -pin Result_High_i__0 I4[1] -pin Result_High_i__0 I4[0] -pin Result_High_i__0 I5[7] -pin Result_High_i__0 I5[6] -pin Result_High_i__0 I5[5] -pin Result_High_i__0 I5[4] -pin Result_High_i__0 I5[3] -pin Result_High_i__0 I5[2] -pin Result_High_i__0 I5[1] -pin Result_High_i__0 I5[0] -pin Result_High_i__0 I6[7] -pin Result_High_i__0 I6[6] -pin Result_High_i__0 I6[5] -pin Result_High_i__0 I6[4] -pin Result_High_i__0 I6[3] -pin Result_High_i__0 I6[2] -pin Result_High_i__0 I6[1] -pin Result_High_i__0 I6[0] -pin Result_High_i__0 I7[7] -pin Result_High_i__0 I7[6] -pin Result_High_i__0 I7[5] -pin Result_High_i__0 I7[4] -pin Result_High_i__0 I7[3] -pin Result_High_i__0 I7[2] -pin Result_High_i__0 I7[1] -pin Result_High_i__0 I7[0] -pin Result_High_i__0 I8[7] -pin Result_High_i__0 I8[6] -pin Result_High_i__0 I8[5] -pin Result_High_i__0 I8[4] -pin Result_High_i__0 I8[3] -pin Result_High_i__0 I8[2] -pin Result_High_i__0 I8[1] -pin Result_High_i__0 I8[0] -pin Result_High_i__0 I9[7] -pin Result_High_i__0 I9[6] -pin Result_High_i__0 I9[5] -pin Result_High_i__0 I9[4] -pin Result_High_i__0 I9[3] -pin Result_High_i__0 I9[2] -pin Result_High_i__0 I9[1] -pin Result_High_i__0 I9[0] -pin Result_i__0 I10[7] -pin Result_i__0 I10[6] -pin Result_i__0 I10[5] -pin Result_i__0 I10[4] -pin Result_i__0 I10[3] -pin Result_i__0 I10[2] -pin Result_i__0 I10[1] -pin Result_i__0 I10[0] -pin V0_i__1 I1[7] -pin V0_i__1 I1[6] -pin V0_i__1 I1[5] -pin V0_i__1 I1[4] -pin V0_i__1 I1[3] -pin V0_i__1 I1[2] -pin V0_i__1 I1[1] -pin V0_i__1 I1[0] -pin V_i I10 -pin V_i I3 -pin V_i I4 -pin V_i I5 -pin V_i I6 -pin V_i I7 -pin V_i I8 -pin V_i I9 -pin Z1_i I1[7] -pin Z1_i I1[6] -pin Z1_i I1[5] -pin Z1_i I1[4] -pin Z1_i I1[3] -pin Z1_i I1[2] -pin Z1_i I1[1] -pin Z1_i I1[0] -pin Z1_i__0 I1[7] -pin Z1_i__0 I1[6] -pin Z1_i__0 I1[5] -pin Z1_i__0 I1[4] -pin Z1_i__0 I1[3] -pin Z1_i__0 I1[2] -pin Z1_i__0 I1[1] -pin Z1_i__0 I1[0]
load net <const1> -power -pin Result0_i__7 I1 -pin Result0_i__7 I2 -pin Result0_i__8 I1 -pin Result0_i__8 I2 -pin Result_i I0[7] -pin Result_i I0[6] -pin Result_i I0[5] -pin Result_i I0[4] -pin Result_i I0[3] -pin Result_i I0[2] -pin Result_i I0[1] -pin Result_i I0[0]
load net A[0] -attr @rip A[0] -port A[0] -pin Result0_i I0[0] -pin Result0_i__0 I0[0] -pin Result0_i__1 I0[0] -pin Result0_i__2 I0[0] -pin Result0_i__3 I0[0] -pin Result0_i__4 I0[0] -pin Result0_i__5 I0[0] -pin Result0_i__6 I0[0] -pin Result0_i__7 I0[0] -pin Result0_i__8 I0[0] -pin Result_High0_i I0[0]
load net A[1] -attr @rip A[1] -port A[1] -pin Result0_i I0[1] -pin Result0_i__0 I0[1] -pin Result0_i__1 I0[1] -pin Result0_i__2 I0[1] -pin Result0_i__3 I0[1] -pin Result0_i__4 I0[1] -pin Result0_i__5 I0[1] -pin Result0_i__6 I0[1] -pin Result0_i__7 I0[1] -pin Result0_i__8 I0[1] -pin Result_High0_i I0[1]
load net A[2] -attr @rip A[2] -port A[2] -pin Result0_i I0[2] -pin Result0_i__0 I0[2] -pin Result0_i__1 I0[2] -pin Result0_i__2 I0[2] -pin Result0_i__3 I0[2] -pin Result0_i__4 I0[2] -pin Result0_i__5 I0[2] -pin Result0_i__6 I0[2] -pin Result0_i__7 I0[2] -pin Result0_i__8 I0[2] -pin Result_High0_i I0[2]
load net A[3] -attr @rip A[3] -port A[3] -pin Result0_i I0[3] -pin Result0_i__0 I0[3] -pin Result0_i__1 I0[3] -pin Result0_i__2 I0[3] -pin Result0_i__3 I0[3] -pin Result0_i__4 I0[3] -pin Result0_i__5 I0[3] -pin Result0_i__6 I0[3] -pin Result0_i__7 I0[3] -pin Result0_i__8 I0[3] -pin Result_High0_i I0[3]
load net A[4] -attr @rip A[4] -port A[4] -pin Result0_i I0[4] -pin Result0_i__0 I0[4] -pin Result0_i__1 I0[4] -pin Result0_i__2 I0[4] -pin Result0_i__3 I0[4] -pin Result0_i__4 I0[4] -pin Result0_i__5 I0[4] -pin Result0_i__6 I0[4] -pin Result0_i__7 I0[4] -pin Result0_i__8 I0[4] -pin Result_High0_i I0[4]
load net A[5] -attr @rip A[5] -port A[5] -pin Result0_i I0[5] -pin Result0_i__0 I0[5] -pin Result0_i__1 I0[5] -pin Result0_i__2 I0[5] -pin Result0_i__3 I0[5] -pin Result0_i__4 I0[5] -pin Result0_i__5 I0[5] -pin Result0_i__6 I0[5] -pin Result0_i__7 I0[5] -pin Result0_i__8 I0[5] -pin Result_High0_i I0[5]
load net A[6] -attr @rip A[6] -port A[6] -pin Result0_i I0[6] -pin Result0_i__0 I0[6] -pin Result0_i__1 I0[6] -pin Result0_i__2 I0[6] -pin Result0_i__3 I0[6] -pin Result0_i__4 I0[6] -pin Result0_i__5 I0[6] -pin Result0_i__6 I0[6] -pin Result0_i__7 I0[6] -pin Result0_i__8 I0[6] -pin Result_High0_i I0[6]
load net A[7] -attr @rip A[7] -port A[7] -pin Result0_i I0[7] -pin Result0_i__0 I0[7] -pin Result0_i__1 I0[7] -pin Result0_i__2 I0[7] -pin Result0_i__3 I0[7] -pin Result0_i__4 I0[7] -pin Result0_i__5 I0[7] -pin Result0_i__6 I0[7] -pin Result0_i__7 I0[7] -pin Result0_i__8 I0[7] -pin Result_High0_i I0[7] -pin V2_i I0 -pin V2_i__0 I0 -pin V2_i__1 I0 -pin V2_i__2 I0
load net B[0] -attr @rip B[0] -port B[0] -pin Err_i A[0] -pin Result0_i I1[0] -pin Result0_i__0 I1[0] -pin Result0_i__1 I1[0] -pin Result0_i__2 I1[0] -pin Result0_i__3 I1[0] -pin Result0_i__4 I1[0] -pin Result0_i__5 I1[0] -pin Result_High0_i I1[0] -pin Result_High_i S[0] -pin Result_i S[0]
load net B[1] -attr @rip B[1] -port B[1] -pin Err_i A[1] -pin Result0_i I1[1] -pin Result0_i__0 I1[1] -pin Result0_i__1 I1[1] -pin Result0_i__2 I1[1] -pin Result0_i__3 I1[1] -pin Result0_i__4 I1[1] -pin Result0_i__5 I1[1] -pin Result_High0_i I1[1] -pin Result_High_i S[1] -pin Result_i S[1]
load net B[2] -attr @rip B[2] -port B[2] -pin Err_i A[2] -pin Result0_i I1[2] -pin Result0_i__0 I1[2] -pin Result0_i__1 I1[2] -pin Result0_i__2 I1[2] -pin Result0_i__3 I1[2] -pin Result0_i__4 I1[2] -pin Result0_i__5 I1[2] -pin Result_High0_i I1[2] -pin Result_High_i S[2] -pin Result_i S[2]
load net B[3] -attr @rip B[3] -port B[3] -pin Err_i A[3] -pin Result0_i I1[3] -pin Result0_i__0 I1[3] -pin Result0_i__1 I1[3] -pin Result0_i__2 I1[3] -pin Result0_i__3 I1[3] -pin Result0_i__4 I1[3] -pin Result0_i__5 I1[3] -pin Result_High0_i I1[3] -pin Result_High_i S[3] -pin Result_i S[3]
load net B[4] -attr @rip B[4] -port B[4] -pin Err_i A[4] -pin Result0_i I1[4] -pin Result0_i__0 I1[4] -pin Result0_i__1 I1[4] -pin Result0_i__2 I1[4] -pin Result0_i__3 I1[4] -pin Result0_i__4 I1[4] -pin Result0_i__5 I1[4] -pin Result_High0_i I1[4] -pin Result_High_i S[4] -pin Result_i S[4]
load net B[5] -attr @rip B[5] -port B[5] -pin Err_i A[5] -pin Result0_i I1[5] -pin Result0_i__0 I1[5] -pin Result0_i__1 I1[5] -pin Result0_i__2 I1[5] -pin Result0_i__3 I1[5] -pin Result0_i__4 I1[5] -pin Result0_i__5 I1[5] -pin Result_High0_i I1[5] -pin Result_High_i S[5] -pin Result_i S[5]
load net B[6] -attr @rip B[6] -port B[6] -pin Err_i A[6] -pin Result0_i I1[6] -pin Result0_i__0 I1[6] -pin Result0_i__1 I1[6] -pin Result0_i__2 I1[6] -pin Result0_i__3 I1[6] -pin Result0_i__4 I1[6] -pin Result0_i__5 I1[6] -pin Result_High0_i I1[6] -pin Result_High_i S[6] -pin Result_i S[6]
load net B[7] -attr @rip B[7] -port B[7] -pin Err_i A[7] -pin Result0_i I1[7] -pin Result0_i__0 I1[7] -pin Result0_i__1 I1[7] -pin Result0_i__2 I1[7] -pin Result0_i__3 I1[7] -pin Result0_i__4 I1[7] -pin Result0_i__5 I1[7] -pin Result_High0_i I1[7] -pin Result_High_i S[7] -pin Result_i S[7] -pin V2_i I1 -pin V2_i__0 I1 -pin V2_i__1 I1 -pin V2_i__2 I1
load net C -port C -pin C_i O
netloc C 1 4 1 NJ 150
load net Err -port Err -pin Err_i__0 O
netloc Err 1 4 1 NJ 1510
load net Err_i_n_0 -pin Err_i O -pin Err_i__0 I3
netloc Err_i_n_0 1 3 1 960 1150n
load net N -attr @rip O[7] -port N -port Result[7] -pin Result_i__0 O[7] -pin Z1_i I0[7]
load net Opcode[0] -attr @rip Opcode[0] -pin C_i S[0] -pin Err_i__0 S[0] -port Opcode[0] -pin Result_High_i__0 S[0] -pin Result_i__0 S[0] -pin V_i S[0]
load net Opcode[1] -attr @rip Opcode[1] -pin C_i S[1] -pin Err_i__0 S[1] -port Opcode[1] -pin Result_High_i__0 S[1] -pin Result_i__0 S[1] -pin V_i S[1]
load net Opcode[2] -attr @rip Opcode[2] -pin C_i S[2] -pin Err_i__0 S[2] -port Opcode[2] -pin Result_High_i__0 S[2] -pin Result_i__0 S[2] -pin V_i S[2]
load net Opcode[3] -attr @rip Opcode[3] -pin C_i S[3] -pin Err_i__0 S[3] -port Opcode[3] -pin Result_High_i__0 S[3] -pin Result_i__0 S[3] -pin V_i S[3]
load net Result0[0] -attr @rip O[0] -pin Result0_i__5 O[0] -pin Result_i__0 I6[0]
load net Result0[1] -attr @rip O[1] -pin Result0_i__5 O[1] -pin Result_i__0 I6[1]
load net Result0[2] -attr @rip O[2] -pin Result0_i__5 O[2] -pin Result_i__0 I6[2]
load net Result0[3] -attr @rip O[3] -pin Result0_i__5 O[3] -pin Result_i__0 I6[3]
load net Result0[4] -attr @rip O[4] -pin Result0_i__5 O[4] -pin Result_i__0 I6[4]
load net Result0[5] -attr @rip O[5] -pin Result0_i__5 O[5] -pin Result_i__0 I6[5]
load net Result0[6] -attr @rip O[6] -pin Result0_i__5 O[6] -pin Result_i__0 I6[6]
load net Result0[7] -attr @rip O[7] -pin Result0_i__5 O[7] -pin Result_i__0 I6[7]
load net Result0_i__0_n_0 -attr @rip O[8] -pin C_i I1 -pin Result0_i__0 O[8]
load net Result0_i__2_n_0 -attr @rip O[7] -pin Result0_i__2 O[7] -pin Result_i I1[7]
load net Result0_i__2_n_1 -attr @rip O[6] -pin Result0_i__2 O[6] -pin Result_i I1[6]
load net Result0_i__2_n_2 -attr @rip O[5] -pin Result0_i__2 O[5] -pin Result_i I1[5]
load net Result0_i__2_n_3 -attr @rip O[4] -pin Result0_i__2 O[4] -pin Result_i I1[4]
load net Result0_i__2_n_4 -attr @rip O[3] -pin Result0_i__2 O[3] -pin Result_i I1[3]
load net Result0_i__2_n_5 -attr @rip O[2] -pin Result0_i__2 O[2] -pin Result_i I1[2]
load net Result0_i__2_n_6 -attr @rip O[1] -pin Result0_i__2 O[1] -pin Result_i I1[1]
load net Result0_i__2_n_7 -attr @rip O[0] -pin Result0_i__2 O[0] -pin Result_i I1[0]
load net Result0_i__3_n_0 -attr @rip O[7] -pin Result0_i__3 O[7] -pin Result_i__0 I4[7]
load net Result0_i__3_n_1 -attr @rip O[6] -pin Result0_i__3 O[6] -pin Result_i__0 I4[6]
load net Result0_i__3_n_2 -attr @rip O[5] -pin Result0_i__3 O[5] -pin Result_i__0 I4[5]
load net Result0_i__3_n_3 -attr @rip O[4] -pin Result0_i__3 O[4] -pin Result_i__0 I4[4]
load net Result0_i__3_n_4 -attr @rip O[3] -pin Result0_i__3 O[3] -pin Result_i__0 I4[3]
load net Result0_i__3_n_5 -attr @rip O[2] -pin Result0_i__3 O[2] -pin Result_i__0 I4[2]
load net Result0_i__3_n_6 -attr @rip O[1] -pin Result0_i__3 O[1] -pin Result_i__0 I4[1]
load net Result0_i__3_n_7 -attr @rip O[0] -pin Result0_i__3 O[0] -pin Result_i__0 I4[0]
load net Result0_i__4_n_0 -attr @rip O[7] -pin Result0_i__4 O[7] -pin Result_i__0 I5[7]
load net Result0_i__4_n_1 -attr @rip O[6] -pin Result0_i__4 O[6] -pin Result_i__0 I5[6]
load net Result0_i__4_n_2 -attr @rip O[5] -pin Result0_i__4 O[5] -pin Result_i__0 I5[5]
load net Result0_i__4_n_3 -attr @rip O[4] -pin Result0_i__4 O[4] -pin Result_i__0 I5[4]
load net Result0_i__4_n_4 -attr @rip O[3] -pin Result0_i__4 O[3] -pin Result_i__0 I5[3]
load net Result0_i__4_n_5 -attr @rip O[2] -pin Result0_i__4 O[2] -pin Result_i__0 I5[2]
load net Result0_i__4_n_6 -attr @rip O[1] -pin Result0_i__4 O[1] -pin Result_i__0 I5[1]
load net Result0_i__4_n_7 -attr @rip O[0] -pin Result0_i__4 O[0] -pin Result_i__0 I5[0]
load net Result0_i__6_n_0 -attr @rip O[7] -pin Result0_i__6 O[7] -pin Result_i__0 I7[7]
load net Result0_i__6_n_1 -attr @rip O[6] -pin Result0_i__6 O[6] -pin Result_i__0 I7[6]
load net Result0_i__6_n_2 -attr @rip O[5] -pin Result0_i__6 O[5] -pin Result_i__0 I7[5]
load net Result0_i__6_n_3 -attr @rip O[4] -pin Result0_i__6 O[4] -pin Result_i__0 I7[4]
load net Result0_i__6_n_4 -attr @rip O[3] -pin Result0_i__6 O[3] -pin Result_i__0 I7[3]
load net Result0_i__6_n_5 -attr @rip O[2] -pin Result0_i__6 O[2] -pin Result_i__0 I7[2]
load net Result0_i__6_n_6 -attr @rip O[1] -pin Result0_i__6 O[1] -pin Result_i__0 I7[1]
load net Result0_i__6_n_7 -attr @rip O[0] -pin Result0_i__6 O[0] -pin Result_i__0 I7[0]
load net Result0_i__7_n_0 -attr @rip O[7] -pin Result0_i__7 O[7] -pin Result_i__0 I8[7]
load net Result0_i__7_n_1 -attr @rip O[6] -pin Result0_i__7 O[6] -pin Result_i__0 I8[6]
load net Result0_i__7_n_2 -attr @rip O[5] -pin Result0_i__7 O[5] -pin Result_i__0 I8[5]
load net Result0_i__7_n_3 -attr @rip O[4] -pin Result0_i__7 O[4] -pin Result_i__0 I8[4]
load net Result0_i__7_n_4 -attr @rip O[3] -pin Result0_i__7 O[3] -pin Result_i__0 I8[3]
load net Result0_i__7_n_5 -attr @rip O[2] -pin Result0_i__7 O[2] -pin Result_i__0 I8[2]
load net Result0_i__7_n_6 -attr @rip O[1] -pin Result0_i__7 O[1] -pin Result_i__0 I8[1]
load net Result0_i__7_n_7 -attr @rip O[0] -pin Result0_i__7 O[0] -pin Result_i__0 I8[0]
load net Result0_i__8_n_0 -attr @rip O[7] -pin Result0_i__8 O[7] -pin Result_i__0 I9[7]
load net Result0_i__8_n_1 -attr @rip O[6] -pin Result0_i__8 O[6] -pin Result_i__0 I9[6]
load net Result0_i__8_n_2 -attr @rip O[5] -pin Result0_i__8 O[5] -pin Result_i__0 I9[5]
load net Result0_i__8_n_3 -attr @rip O[4] -pin Result0_i__8 O[4] -pin Result_i__0 I9[4]
load net Result0_i__8_n_4 -attr @rip O[3] -pin Result0_i__8 O[3] -pin Result_i__0 I9[3]
load net Result0_i__8_n_5 -attr @rip O[2] -pin Result0_i__8 O[2] -pin Result_i__0 I9[2]
load net Result0_i__8_n_6 -attr @rip O[1] -pin Result0_i__8 O[1] -pin Result_i__0 I9[1]
load net Result0_i__8_n_7 -attr @rip O[0] -pin Result0_i__8 O[0] -pin Result_i__0 I9[0]
load net Result0_i_n_0 -attr @rip O[8] -pin C_i I0 -pin Result0_i O[8]
load net Result[0] -attr @rip O[0] -port Result[0] -pin Result_i__0 O[0] -pin Z1_i I0[0]
load net Result[1] -attr @rip O[1] -port Result[1] -pin Result_i__0 O[1] -pin Z1_i I0[1]
load net Result[2] -attr @rip O[2] -port Result[2] -pin Result_i__0 O[2] -pin Z1_i I0[2]
load net Result[3] -attr @rip O[3] -port Result[3] -pin Result_i__0 O[3] -pin Z1_i I0[3]
load net Result[4] -attr @rip O[4] -port Result[4] -pin Result_i__0 O[4] -pin Z1_i I0[4]
load net Result[5] -attr @rip O[5] -port Result[5] -pin Result_i__0 O[5] -pin Z1_i I0[5]
load net Result[6] -attr @rip O[6] -port Result[6] -pin Result_i__0 O[6] -pin Z1_i I0[6]
load net Result_High0[0] -attr @rip O[0] -pin Result_High0_i O[0] -pin Result_High_i I1[0]
load net Result_High0[1] -attr @rip O[1] -pin Result_High0_i O[1] -pin Result_High_i I1[1]
load net Result_High0[2] -attr @rip O[2] -pin Result_High0_i O[2] -pin Result_High_i I1[2]
load net Result_High0[3] -attr @rip O[3] -pin Result_High0_i O[3] -pin Result_High_i I1[3]
load net Result_High0[4] -attr @rip O[4] -pin Result_High0_i O[4] -pin Result_High_i I1[4]
load net Result_High0[5] -attr @rip O[5] -pin Result_High0_i O[5] -pin Result_High_i I1[5]
load net Result_High0[6] -attr @rip O[6] -pin Result_High0_i O[6] -pin Result_High_i I1[6]
load net Result_High0[7] -attr @rip O[7] -pin Result_High0_i O[7] -pin Result_High_i I1[7]
load net Result_High[0] -attr @rip O[0] -port Result_High[0] -pin Result_High_i__0 O[0] -pin Z1_i__0 I0[0]
load net Result_High[1] -attr @rip O[1] -port Result_High[1] -pin Result_High_i__0 O[1] -pin Z1_i__0 I0[1]
load net Result_High[2] -attr @rip O[2] -port Result_High[2] -pin Result_High_i__0 O[2] -pin Z1_i__0 I0[2]
load net Result_High[3] -attr @rip O[3] -port Result_High[3] -pin Result_High_i__0 O[3] -pin Z1_i__0 I0[3]
load net Result_High[4] -attr @rip O[4] -port Result_High[4] -pin Result_High_i__0 O[4] -pin Z1_i__0 I0[4]
load net Result_High[5] -attr @rip O[5] -port Result_High[5] -pin Result_High_i__0 O[5] -pin Z1_i__0 I0[5]
load net Result_High[6] -attr @rip O[6] -port Result_High[6] -pin Result_High_i__0 O[6] -pin Z1_i__0 I0[6]
load net Result_High[7] -attr @rip O[7] -port Result_High[7] -pin Result_High_i__0 O[7] -pin Z1_i__0 I0[7]
load net Result_High_i_n_0 -attr @rip O[7] -pin Result_High_i O[7] -pin Result_High_i__0 I3[7]
load net Result_High_i_n_1 -attr @rip O[6] -pin Result_High_i O[6] -pin Result_High_i__0 I3[6]
load net Result_High_i_n_2 -attr @rip O[5] -pin Result_High_i O[5] -pin Result_High_i__0 I3[5]
load net Result_High_i_n_3 -attr @rip O[4] -pin Result_High_i O[4] -pin Result_High_i__0 I3[4]
load net Result_High_i_n_4 -attr @rip O[3] -pin Result_High_i O[3] -pin Result_High_i__0 I3[3]
load net Result_High_i_n_5 -attr @rip O[2] -pin Result_High_i O[2] -pin Result_High_i__0 I3[2]
load net Result_High_i_n_6 -attr @rip O[1] -pin Result_High_i O[1] -pin Result_High_i__0 I3[1]
load net Result_High_i_n_7 -attr @rip O[0] -pin Result_High_i O[0] -pin Result_High_i__0 I3[0]
load net Result_i_n_0 -attr @rip O[7] -pin Result_i O[7] -pin Result_i__0 I3[7]
load net Result_i_n_1 -attr @rip O[6] -pin Result_i O[6] -pin Result_i__0 I3[6]
load net Result_i_n_2 -attr @rip O[5] -pin Result_i O[5] -pin Result_i__0 I3[5]
load net Result_i_n_3 -attr @rip O[4] -pin Result_i O[4] -pin Result_i__0 I3[4]
load net Result_i_n_4 -attr @rip O[3] -pin Result_i O[3] -pin Result_i__0 I3[3]
load net Result_i_n_5 -attr @rip O[2] -pin Result_i O[2] -pin Result_i__0 I3[2]
load net Result_i_n_6 -attr @rip O[1] -pin Result_i O[1] -pin Result_i__0 I3[1]
load net Result_i_n_7 -attr @rip O[0] -pin Result_i O[0] -pin Result_i__0 I3[0]
load net V -port V -pin V_i O
netloc V 1 4 1 NJ 760
load net V0 -pin V0_i O -pin V_i I0
netloc V0 1 3 1 920 450n
load net V0_i__0_n_0 -pin V0_i__0 O -pin V_i I1
netloc V0_i__0_n_0 1 3 1 900 660n
load net V0_i__1_n_0 -pin V0_i__1 O -pin V_i I2
netloc V0_i__1_n_0 1 3 1 1040 720n
load net V1 -pin V0_i I0 -pin V1_i O
netloc V1 1 2 1 N 440
load net V1_i__0_n_0 -pin V0_i I1 -pin V1_i__0 O
netloc V1_i__0_n_0 1 2 1 520 460n
load net V1_i__1_n_0 -pin V0_i__0 I0 -pin V1_i__1 O
netloc V1_i__1_n_0 1 2 1 520 610n
load net V1_i__2_n_0 -pin V0_i__0 I1 -pin V1_i__2 O
netloc V1_i__2_n_0 1 2 1 580 670n
load net V2 -pin V1_i I0 -pin V2_i O
netloc V2 1 1 1 N 430
load net V2_i__0_n_0 -pin V1_i__0 I0 -pin V2_i__0 O
netloc V2_i__0_n_0 1 1 1 N 500
load net V2_i__1_n_0 -pin V1_i__1 I0 -pin V2_i__1 O
netloc V2_i__1_n_0 1 1 1 240 570n
load net V2_i__2_n_0 -pin V1_i__2 I0 -pin V2_i__2 O
netloc V2_i__2_n_0 1 1 1 280 700n
load net Z -port Z -pin Z0_i O
netloc Z 1 4 1 NJ 1330
load net Z1 -pin Z0_i I0 -pin Z1_i O
netloc Z1 1 3 1 900J 1250n
load net Z1_i__0_n_0 -pin Z0_i I1 -pin Z1_i__0 O
netloc Z1_i__0_n_0 1 3 1 NJ 1340
load net p_0_in[0] -attr @rip O[8] -pin Result0_i__1 O[8] -pin Result_High_i__0 I2[0] -pin V0_i__1 I0[0]
load net p_0_in[1] -attr @rip O[9] -pin Result0_i__1 O[9] -pin Result_High_i__0 I2[1] -pin V0_i__1 I0[1]
load net p_0_in[2] -attr @rip O[10] -pin Result0_i__1 O[10] -pin Result_High_i__0 I2[2] -pin V0_i__1 I0[2]
load net p_0_in[3] -attr @rip O[11] -pin Result0_i__1 O[11] -pin Result_High_i__0 I2[3] -pin V0_i__1 I0[3]
load net p_0_in[4] -attr @rip O[12] -pin Result0_i__1 O[12] -pin Result_High_i__0 I2[4] -pin V0_i__1 I0[4]
load net p_0_in[5] -attr @rip O[13] -pin Result0_i__1 O[13] -pin Result_High_i__0 I2[5] -pin V0_i__1 I0[5]
load net p_0_in[6] -attr @rip O[14] -pin Result0_i__1 O[14] -pin Result_High_i__0 I2[6] -pin V0_i__1 I0[6]
load net p_0_in[7] -attr @rip O[15] -pin Result0_i__1 O[15] -pin Result_High_i__0 I2[7] -pin V0_i__1 I0[7]
load net p_1_in[0] -attr @rip O[0] -pin Result0_i__1 O[0] -pin Result_i__0 I2[0]
load net p_1_in[1] -attr @rip O[1] -pin Result0_i__1 O[1] -pin Result_i__0 I2[1]
load net p_1_in[2] -attr @rip O[2] -pin Result0_i__1 O[2] -pin Result_i__0 I2[2]
load net p_1_in[3] -attr @rip O[3] -pin Result0_i__1 O[3] -pin Result_i__0 I2[3]
load net p_1_in[4] -attr @rip O[4] -pin Result0_i__1 O[4] -pin Result_i__0 I2[4]
load net p_1_in[5] -attr @rip O[5] -pin Result0_i__1 O[5] -pin Result_i__0 I2[5]
load net p_1_in[6] -attr @rip O[6] -pin Result0_i__1 O[6] -pin Result_i__0 I2[6]
load net p_1_in[7] -attr @rip O[7] -pin Result0_i__1 O[7] -pin Result_i__0 I2[7]
load net p_2_in[0] -attr @rip O[0] -pin Result0_i__0 O[0] -pin Result_i__0 I1[0]
load net p_2_in[1] -attr @rip O[1] -pin Result0_i__0 O[1] -pin Result_i__0 I1[1]
load net p_2_in[2] -attr @rip O[2] -pin Result0_i__0 O[2] -pin Result_i__0 I1[2]
load net p_2_in[3] -attr @rip O[3] -pin Result0_i__0 O[3] -pin Result_i__0 I1[3]
load net p_2_in[4] -attr @rip O[4] -pin Result0_i__0 O[4] -pin Result_i__0 I1[4]
load net p_2_in[5] -attr @rip O[5] -pin Result0_i__0 O[5] -pin Result_i__0 I1[5]
load net p_2_in[6] -attr @rip O[6] -pin Result0_i__0 O[6] -pin Result_i__0 I1[6]
load net p_2_in[7] -attr @rip O[7] -pin Result0_i__0 O[7] -pin Result_i__0 I1[7] -pin V1_i__1 I1 -pin V1_i__2 I1
load net p_3_in[0] -attr @rip O[0] -pin Result0_i O[0] -pin Result_i__0 I0[0]
load net p_3_in[1] -attr @rip O[1] -pin Result0_i O[1] -pin Result_i__0 I0[1]
load net p_3_in[2] -attr @rip O[2] -pin Result0_i O[2] -pin Result_i__0 I0[2]
load net p_3_in[3] -attr @rip O[3] -pin Result0_i O[3] -pin Result_i__0 I0[3]
load net p_3_in[4] -attr @rip O[4] -pin Result0_i O[4] -pin Result_i__0 I0[4]
load net p_3_in[5] -attr @rip O[5] -pin Result0_i O[5] -pin Result_i__0 I0[5]
load net p_3_in[6] -attr @rip O[6] -pin Result0_i O[6] -pin Result_i__0 I0[6]
load net p_3_in[7] -attr @rip O[7] -pin Result0_i O[7] -pin Result_i__0 I0[7] -pin V1_i I1 -pin V1_i__0 I1
load netBundle @A 8 A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] -autobundled
netbloc @A 1 0 3 20 700 260 560 600
load netBundle @B 8 B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] -autobundled
netbloc @B 1 0 3 40 800 240 840 560
load netBundle @Opcode 4 Opcode[3] Opcode[2] Opcode[1] Opcode[0] -autobundled
netbloc @Opcode 1 0 4 NJ 1410 NJ 1410 NJ 1410 1060
load netBundle @Result,N 8 N Result[6] Result[5] Result[4] Result[3] Result[2] Result[1] Result[0] -autobundled
netbloc @Result,N 1 2 3 620 1100 900J 950 1390
load netBundle @Result_High 8 Result_High[7] Result_High[6] Result_High[5] Result_High[4] Result_High[3] Result_High[2] Result_High[1] Result_High[0] -autobundled
netbloc @Result_High 1 2 3 560 1200 1120J 970 1390
load netBundle @p_3_in,Result0_i_n_ 9 Result0_i_n_0 p_3_in[7] p_3_in[6] p_3_in[5] p_3_in[4] p_3_in[3] p_3_in[2] p_3_in[1] p_3_in[0] -autobundled
netbloc @p_3_in,Result0_i_n_ 1 1 3 240 390 580J 400 960
load netBundle @p_2_in,Result0_i__0_n_ 9 Result0_i__0_n_0 p_2_in[7] p_2_in[6] p_2_in[5] p_2_in[4] p_2_in[3] p_2_in[2] p_2_in[1] p_2_in[0] -autobundled
netbloc @p_2_in,Result0_i__0_n_ 1 1 3 300 660 540J 610 980
load netBundle @p_0_in,p_1_in 16 p_0_in[7] p_0_in[6] p_0_in[5] p_0_in[4] p_0_in[3] p_0_in[2] p_0_in[1] p_0_in[0] p_1_in[7] p_1_in[6] p_1_in[5] p_1_in[4] p_1_in[3] p_1_in[2] p_1_in[1] p_1_in[0] -autobundled
netbloc @p_0_in,p_1_in 1 2 2 600 710 1000
load netBundle @Result0_i__2_n_ 8 Result0_i__2_n_0 Result0_i__2_n_1 Result0_i__2_n_2 Result0_i__2_n_3 Result0_i__2_n_4 Result0_i__2_n_5 Result0_i__2_n_6 Result0_i__2_n_7 -autobundled
netbloc @Result0_i__2_n_ 1 2 1 N 900
load netBundle @Result0_i__3_n_ 8 Result0_i__3_n_0 Result0_i__3_n_1 Result0_i__3_n_2 Result0_i__3_n_3 Result0_i__3_n_4 Result0_i__3_n_5 Result0_i__3_n_6 Result0_i__3_n_7 -autobundled
netbloc @Result0_i__3_n_ 1 3 1 940 40n
load netBundle @Result0_i__4_n_ 8 Result0_i__4_n_0 Result0_i__4_n_1 Result0_i__4_n_2 Result0_i__4_n_3 Result0_i__4_n_4 Result0_i__4_n_5 Result0_i__4_n_6 Result0_i__4_n_7 -autobundled
netbloc @Result0_i__4_n_ 1 3 1 1120 110n
load netBundle @Result0 8 Result0[7] Result0[6] Result0[5] Result0[4] Result0[3] Result0[2] Result0[1] Result0[0] -autobundled
netbloc @Result0 1 3 1 1100 180n
load netBundle @Result0_i__6_n_ 8 Result0_i__6_n_0 Result0_i__6_n_1 Result0_i__6_n_2 Result0_i__6_n_3 Result0_i__6_n_4 Result0_i__6_n_5 Result0_i__6_n_6 Result0_i__6_n_7 -autobundled
netbloc @Result0_i__6_n_ 1 3 1 1080 250n
load netBundle @Result0_i__7_n_ 8 Result0_i__7_n_0 Result0_i__7_n_1 Result0_i__7_n_2 Result0_i__7_n_3 Result0_i__7_n_4 Result0_i__7_n_5 Result0_i__7_n_6 Result0_i__7_n_7 -autobundled
netbloc @Result0_i__7_n_ 1 3 1 900 340n
load netBundle @Result0_i__8_n_ 8 Result0_i__8_n_0 Result0_i__8_n_1 Result0_i__8_n_2 Result0_i__8_n_3 Result0_i__8_n_4 Result0_i__8_n_5 Result0_i__8_n_6 Result0_i__8_n_7 -autobundled
netbloc @Result0_i__8_n_ 1 3 1 N 550
load netBundle @Result_High0 8 Result_High0[7] Result_High0[6] Result_High0[5] Result_High0[4] Result_High0[3] Result_High0[2] Result_High0[1] Result_High0[0] -autobundled
netbloc @Result_High0 1 2 1 520 990n
load netBundle @Result_High_i_n_ 8 Result_High_i_n_0 Result_High_i_n_1 Result_High_i_n_2 Result_High_i_n_3 Result_High_i_n_4 Result_High_i_n_5 Result_High_i_n_6 Result_High_i_n_7 -autobundled
netbloc @Result_High_i_n_ 1 3 1 940 1010n
load netBundle @Result_i_n_ 8 Result_i_n_0 Result_i_n_1 Result_i_n_2 Result_i_n_3 Result_i_n_4 Result_i_n_5 Result_i_n_6 Result_i_n_7 -autobundled
netbloc @Result_i_n_ 1 3 1 1020 430n
levelinfo -pg 1 0 110 370 770 1270 1410
pagesize -pg 1 -db -bbox -sgen -130 0 1570 1690
show
zoom 0.749426
scrollpos -94 -2
#
# initialize ictrl to current module ALU_8BIT work:ALU_8BIT:NOFILE
ictrl init topinfo |
