module Nand(input a, b, output out);
nand g1(out, a, b);
endmodule

module Not(input in, output out);
Nand g1(in, in, out);
endmodule

module Or(input a, b, output out);
Not g1(a, outa);
Not g2(b, outb);
Nand g3(outa, outb, out);
endmodule

module Xor(input a, b, output out);
Nand g1(a, b, tab);
Or g2(a, b, ttab);
And g3(tab, ttab, out);
endmodule

module And(input a, b, output out);
Nand g1(a, b, tab);
Nand g2(tab, tab, out);
endmodule

module Or8Way(input[7:0] in, output out);
  Or g1(in[7], in[6], out76);
  Or g2(in[5], in[4], out54);
  Or g3(in[3], in[2], out32);
  Or g4(in[1], in[0], out10);
  Or g5(out76, out54, out74);
  Or g6(out32, out10, out30);
  Or g7(out74, out30, out);
endmodule