module Galois(pre,clear,oe,o);
 //feedback polynomial is x32+x30+x17+x12+x3+x+1
 
 
input pre;   //active high set
input clear; //active high clear
input oe;    //active high output enable
output [31:0]o;  


wire x[4:0]; 
wire w[74:0];
wire out;

   

DFF D32(.d(o[31]),.pre(pre),.clr(clear),.clk(out),.q(o[0]));
DFF D31(.d(o[0]),.pre(pre),.clr(clear),.clk(out),.q(o[1]));
xor e1(x[0],o[1],o[31]);
DFF D30(.d(x[0]),.pre(pre),.clr(clear),.clk(out),.q(o[2]));
DFF D29(.d(o[2]),.pre(pre),.clr(clear),.clk(out),.q(o[3]));
DFF D28(.d(o[3]),.pre(pre),.clr(clear),.clk(out),.q(o[4]));
DFF D27(.d(o[4]),.pre(pre),.clr(clear),.clk(out),.q(o[5]));
DFF D26(.d(o[5]),.pre(pre),.clr(clear),.clk(out),.q(o[6]));
DFF D25(.d(o[6]),.pre(pre),.clr(clear),.clk(out),.q(o[7]));
DFF D24(.d(o[7]),.pre(pre),.clr(clear),.clk(out),.q(o[8]));
DFF D23(.d(o[8]),.pre(pre),.clr(clear),.clk(out),.q(o[9]));
DFF D22(.d(o[9]),.pre(pre),.clr(clear),.clk(out),.q(o[10]));
DFF D21(.d(o[10]),.pre(pre),.clr(clear),.clk(out),.q(o[11]));
DFF D20(.d(o[11]),.pre(pre),.clr(clear),.clk(out),.q(o[12]));
DFF D19(.d(o[12]),.pre(pre),.clr(clear),.clk(out),.q(o[13]));
DFF D18(.d(o[13]),.pre(pre),.clr(clear),.clk(out),.q(o[14]));
xor e2(x[1],o[14],o[31]);
DFF D17(.d(x[1]),.pre(pre),.clr(clear),.clk(out),.q(o[15]));
DFF D16(.d(o[15]),.pre(pre),.clr(clear),.clk(out),.q(o[16]));
DFF D15(.d(o[16]),.pre(pre),.clr(clear),.clk(out),.q(o[17]));
DFF D14(.d(o[17]),.pre(pre),.clr(clear),.clk(out),.q(o[18]));
DFF D13(.d(o[18]),.pre(pre),.clr(clear),.clk(out),.q(o[19]));
xor e3(x[2],o[19],o[31]);
DFF D12(.d(x[2]),.pre(pre),.clr(clear),.clk(out),.q(o[20]));
DFF D11(.d(o[20]),.pre(pre),.clr(clear),.clk(out),.q(o[21]));
DFF D10(.d(o[21]),.pre(pre),.clr(clear),.clk(out),.q(o[22]));
DFF D9(.d(o[22]),.pre(pre),.clr(clear),.clk(out),.q(o[23]));
DFF D8(.d(o[23]),.pre(pre),.clr(clear),.clk(out),.q(o[24]));
DFF D7(.d(o[24]),.pre(pre),.clr(clear),.clk(out),.q(o[25]));
DFF D6(.d(o[25]),.pre(pre),.clr(clear),.clk(out),.q(o[26]));
DFF D5(.d(o[26]),.pre(pre),.clr(clear),.clk(out),.q(o[27]));
DFF D4(.d(o[27]),.pre(pre),.clr(clear),.clk(out),.q(o[28]));
xor e4(x[3],o[28],o[31]);
DFF D3(.d(x[3]),.pre(pre),.clr(clear),.clk(out),.q(o[29]));
DFF D2(.d(o[29]),.pre(pre),.clr(clear),.clk(out),.q(o[30]));
xor e5(x[4],o[30],o[31]);
DFF D1(.d(x[4]),.pre(pre),.clr(clear),.clk(out),.q(o[31]));


//clock jitter or ring oscillator
nand a1(w[1],~pre,out,~oe);
not n1(w[2],w[1]);
not n2(w[3],w[2]);
not n3(w[4],w[3]);
not n4(w[5],w[4]);
not n5(w[6],w[5]);
not n6(w[7],w[6]);
not n7(w[8],w[7]);
not n8(w[9],w[8]);
not n9(w[10],w[9]);
not n10(w[11],w[10]);
not n11(w[12],w[11]);
not n12(w[13],w[12]);
not n13(w[14],w[13]);
not n14(w[15],w[14]);
not n15(w[16],w[15]);
not n16(w[17],w[16]);
not n17(w[18],w[17]);
not n18(w[19],w[18]);
not n19(w[20],w[19]);
not n20(w[21],w[20]);
not n21(w[22],w[21]);
not n22(w[23],w[22]);
not n23(w[24],w[23]);
not n24(w[25],w[24]);
not n25(w[26],w[25]);
not n26(w[27],w[26]);
not n27(w[28],w[27]);
not n28(w[29],w[28]);
not n29(w[30],w[29]);
not n30(w[31],w[30]);
not n31(w[32],w[31]);
not n32(w[33],w[32]);
not n33(w[34],w[33]);
not n34(w[35],w[34]);
not n35(w[36],w[35]);
not n36(w[37],w[36]);
not n37(w[38],w[37]);
not n38(w[39],w[38]);
not n39(w[40],w[39]);
not n40(w[41],w[40]);
not n41(w[42],w[41]);
not n42(w[43],w[42]);
not n43(w[44],w[43]);
not n44(w[45],w[44]);
not n45(w[46],w[45]);
not n46(w[47],w[46]);
not n47(w[48],w[47]);
not n48(w[49],w[48]);
not n49(w[50],w[49]);
not n50(w[51],w[50]);
not n51(w[52],w[51]);
not n52(w[53],w[52]);
not n53(w[54],w[53]);
not n54(w[55],w[54]);
not n55(w[56],w[55]);
not n56(w[57],w[56]);
not n57(w[58],w[57]);
not n58(w[59],w[58]);
not n59(w[60],w[59]);
not n60(w[61],w[60]);
not n61(w[62],w[61]);
not n62(w[63],w[62]);
not n63(w[64],w[63]);
not n64(w[65],w[64]);
not n65(w[66],w[65]);
not n66(w[67],w[66]);
not n67(w[68],w[67]);
not n68(w[69],w[68]);
not n69(w[70],w[69]);
not n70(w[71],w[70]);
not n71(w[72],w[71]);
not n72(w[73],w[72]);
not n73(w[74],w[73]);
not n74(out,w[74]);


endmodule