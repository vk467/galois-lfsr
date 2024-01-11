module DFF( input clk,d,pre,clr,//active high preset and clear
           output q,qb);
wire w1,w2,w3,w4,w5,w6;
nand n1(w1,clk,d,qb);
nand n2(w2,clk,~d,q);
nand n3(w3,w1,~pre,w4);
nand n4(w4,w2,~clr,w3);
nand n5(w5,~clk,w3);
nand n6(w6,~clk,w4);
nand n7(q,w5,~pre,qb);
nand n8(qb,w6,~clr,q);
endmodule
