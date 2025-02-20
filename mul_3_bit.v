module mul_3_bit(a,b,p);
input [2:0] a,b;
output [4:0] p;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,cout;
and g1(p[0],a[0],b[0]); /////P0
and g2(w0,a[0],b[1]);
and g3(w1,a[1],b[0]);
ha g4(p[1],w2,w0,w1);
and g5(w3,a[2],b[0]);
and g6(w4,a[1],b[1]);
fa g7(w5,w7,w4,w3,w2);
and g15(w6,a[0],b[2]);
ha g8(p[2],w8,w5,w6);
and (w9,a[2],b[1]);
and g9(w10,b[2],a[1]);
ha g10(w11,w13,w9,w7);
fa g11(p[3],w12,w10,w11,w8);
and g12(w14,a[2],b[2]);
fa g13(p[4],cout,w14,w13,w12);

endmodule

module ha(s,c,a,b);
input a,b;
output s,c;
xor (s,a,b);
and (c,a,b);
endmodule

module fa(s,cout,a,b,cin);
input a,b,cin;
output  s,cout;
wire w1,w2,w3 ;
xor(s,a,b,cin);
xor(w1,a,b);
and(w2,a,b);
and(w3,w1,cin);
or(cout,w3,w2);
endmodule 
