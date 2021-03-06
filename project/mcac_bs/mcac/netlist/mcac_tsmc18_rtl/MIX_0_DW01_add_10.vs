
module MIX_0_DW01_add_10 ( A, B, CI, SUM, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n12, n15, n16, n18, n20, n21, n22, n23,
         n25, n27, n28, n30, n32, n33, n34, n36, n38, n39, n40, n41, n43, n45,
         n46, n48, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n66, n68, n69, n70, n71, n73, n81, SUM_1_, SUM_2_,
         SUM_3_, n156, SUM_5_, n155, SUM_7_, SUM_8_, SUM_9_, SUM_10_, SUM_11_,
         SUM_12_, B_0_, B_1_, B_2_, B_3_, B_4_, B_5_, B_6_, B_7_, B_8_, B_9_,
         B_10_, B_11_, B_12_, A_0_, A_1_, A_2_, A_3_, A_4_, A_5_, A_6_, A_7_,
         A_8_, A_9_, A_10_, A_11_, A_12_, n135, SUM_6_, n137, n138, n139,
         SUM_4_, n141, n142, n143, n144, SUM_0_, n146, n147, n148, n149, n150,
         n151, n152, n153, n154;
  assign SUM[1] = SUM_1_;
  assign SUM[2] = SUM_2_;
  assign SUM[3] = SUM_3_;
  assign SUM[5] = SUM_5_;
  assign SUM[7] = SUM_7_;
  assign SUM[8] = SUM_8_;
  assign SUM[9] = SUM_9_;
  assign SUM[10] = SUM_10_;
  assign SUM[11] = SUM_11_;
  assign SUM[12] = SUM_12_;
  assign B_0_ = B[0];
  assign B_1_ = B[1];
  assign B_2_ = B[2];
  assign B_3_ = B[3];
  assign B_4_ = B[4];
  assign B_5_ = B[5];
  assign B_6_ = B[6];
  assign B_7_ = B[7];
  assign B_8_ = B[8];
  assign B_9_ = B[9];
  assign B_10_ = B[10];
  assign B_11_ = B[11];
  assign B_12_ = B[12];
  assign A_0_ = A[0];
  assign A_1_ = A[1];
  assign A_2_ = A[2];
  assign A_3_ = A[3];
  assign A_4_ = A[4];
  assign A_5_ = A[5];
  assign A_6_ = A[6];
  assign A_7_ = A[7];
  assign A_8_ = A[8];
  assign A_9_ = A[9];
  assign A_10_ = A[10];
  assign A_11_ = A[11];
  assign A_12_ = A[12];
  assign SUM[6] = SUM_6_;
  assign SUM[4] = SUM_4_;
  assign SUM[0] = SUM_0_;

  XOR2X4 U1 ( .A(n16), .B(n1), .Y(SUM_12_) );
  NAND2X4 U2 ( .A(n137), .B(n15), .Y(n1) );
  XNOR2X4 U6 ( .A(n139), .B(n2), .Y(SUM_11_) );
  AOI21X4 U7 ( .A0(n139), .A1(n147), .B0(n18), .Y(n16) );
  XOR2X4 U14 ( .A(n28), .B(n3), .Y(SUM_10_) );
  XNOR2X4 U24 ( .A(n33), .B(n4), .Y(SUM_9_) );
  AOI21X4 U25 ( .A0(n33), .A1(n152), .B0(n30), .Y(n28) );
  XNOR2X4 U32 ( .A(n39), .B(n5), .Y(SUM_8_) );
  OAI21X4 U69 ( .A0(n60), .A1(n58), .B0(n59), .Y(n57) );
  NOR2X4 U72 ( .A(B_4_), .B(A_4_), .Y(n58) );
  NAND2X4 U73 ( .A(B_4_), .B(A_4_), .Y(n59) );
  OAI21X4 U76 ( .A0(n64), .A1(n62), .B0(n63), .Y(n61) );
  AOI21X4 U82 ( .A0(n69), .A1(n151), .B0(n66), .Y(n64) );
  OAI21X4 U103 ( .A0(n40), .A1(n52), .B0(n41), .Y(n39) );
  AOI21X2 U104 ( .A0(n39), .A1(n150), .B0(n36), .Y(n34) );
  CLKINVX3 U105 ( .A(n143), .Y(SUM_2_) );
  NAND2X1 U106 ( .A(B_12_), .B(A_12_), .Y(n15) );
  XOR2X1 U107 ( .A(n144), .B(n69), .Y(n143) );
  AND2X2 U108 ( .A(n63), .B(n135), .Y(n142) );
  INVX1 U109 ( .A(n62), .Y(n135) );
  AOI21X2 U110 ( .A0(n48), .A1(n149), .B0(n43), .Y(n41) );
  INVX1 U111 ( .A(n50), .Y(n48) );
  NOR2BXL U112 ( .AN(n59), .B(n58), .Y(n141) );
  AND2X2 U113 ( .A(n56), .B(n81), .Y(n146) );
  INVX1 U114 ( .A(n55), .Y(n81) );
  NAND2BX1 U115 ( .AN(n70), .B(n71), .Y(n12) );
  NAND2X2 U116 ( .A(n147), .B(n20), .Y(n2) );
  NAND2BX2 U117 ( .AN(B_11_), .B(n148), .Y(n147) );
  NAND2X2 U118 ( .A(n149), .B(n153), .Y(n40) );
  OR2X4 U119 ( .A(B_6_), .B(A_6_), .Y(n153) );
  NOR2X2 U120 ( .A(n55), .B(n58), .Y(n53) );
  OAI21X2 U121 ( .A0(n55), .A1(n59), .B0(n56), .Y(n54) );
  OR2X4 U122 ( .A(B_9_), .B(A_9_), .Y(n152) );
  XOR2X4 U123 ( .A(n46), .B(n6), .Y(SUM_7_) );
  AOI21X2 U124 ( .A0(n154), .A1(n30), .B0(n25), .Y(n23) );
  AOI21X2 U125 ( .A0(n53), .A1(n61), .B0(n54), .Y(n52) );
  CLKINVX3 U126 ( .A(n52), .Y(n51) );
  NAND2X1 U127 ( .A(B_8_), .B(A_8_), .Y(n38) );
  NOR2X2 U128 ( .A(B_5_), .B(A_5_), .Y(n55) );
  NAND2X1 U129 ( .A(B_5_), .B(A_5_), .Y(n56) );
  NAND2X1 U130 ( .A(B_9_), .B(A_9_), .Y(n32) );
  OR2XL U131 ( .A(B_0_), .B(A_0_), .Y(n138) );
  NOR2X2 U132 ( .A(B_3_), .B(A_3_), .Y(n62) );
  NAND2X1 U133 ( .A(B_3_), .B(A_3_), .Y(n63) );
  NAND2XL U134 ( .A(B_2_), .B(A_2_), .Y(n68) );
  OR2X2 U135 ( .A(B_2_), .B(A_2_), .Y(n151) );
  NAND2X2 U136 ( .A(n154), .B(n27), .Y(n3) );
  INVX2 U137 ( .A(n27), .Y(n25) );
  NAND2X1 U138 ( .A(B_10_), .B(A_10_), .Y(n27) );
  BUFX8 U139 ( .A(n155), .Y(SUM_6_) );
  OR2X4 U140 ( .A(B_8_), .B(A_8_), .Y(n150) );
  INVX2 U141 ( .A(n68), .Y(n66) );
  NAND2X2 U142 ( .A(B_11_), .B(A_11_), .Y(n20) );
  INVX1 U143 ( .A(n45), .Y(n43) );
  INVX1 U144 ( .A(n32), .Y(n30) );
  OR2X2 U145 ( .A(B_10_), .B(A_10_), .Y(n154) );
  INVX1 U146 ( .A(n20), .Y(n18) );
  NAND2X1 U147 ( .A(n151), .B(n68), .Y(n144) );
  XNOR2X2 U148 ( .A(n142), .B(n64), .Y(SUM_3_) );
  XNOR2X1 U149 ( .A(n60), .B(n141), .Y(n156) );
  XNOR2X2 U150 ( .A(n51), .B(n7), .Y(n155) );
  NAND2X1 U151 ( .A(n152), .B(n32), .Y(n4) );
  OR2X2 U152 ( .A(B_12_), .B(A_12_), .Y(n137) );
  OAI21X2 U153 ( .A0(n70), .A1(n73), .B0(n71), .Y(n69) );
  AOI21X2 U154 ( .A0(n51), .A1(n153), .B0(n48), .Y(n46) );
  NAND2X1 U155 ( .A(n153), .B(n50), .Y(n7) );
  BUFX4 U156 ( .A(n21), .Y(n139) );
  OAI21XL U157 ( .A0(n22), .A1(n34), .B0(n23), .Y(n21) );
  BUFX8 U158 ( .A(n156), .Y(SUM_4_) );
  CLKINVX3 U159 ( .A(n61), .Y(n60) );
  NAND2X2 U160 ( .A(n150), .B(n38), .Y(n5) );
  OR2X4 U161 ( .A(B_7_), .B(A_7_), .Y(n149) );
  NAND2X1 U162 ( .A(B_6_), .B(A_6_), .Y(n50) );
  NAND2XL U163 ( .A(n149), .B(n45), .Y(n6) );
  NOR2XL U164 ( .A(B_1_), .B(A_1_), .Y(n70) );
  CLKINVXL U165 ( .A(A_11_), .Y(n148) );
  AND2X1 U166 ( .A(n138), .B(n73), .Y(SUM_0_) );
  INVX1 U167 ( .A(n38), .Y(n36) );
  XOR2X4 U168 ( .A(n57), .B(n146), .Y(SUM_5_) );
  XOR2XL U169 ( .A(n12), .B(n73), .Y(SUM_1_) );
  NAND2XL U170 ( .A(B_1_), .B(A_1_), .Y(n71) );
  NAND2X1 U171 ( .A(B_7_), .B(A_7_), .Y(n45) );
  NAND2XL U172 ( .A(B_0_), .B(A_0_), .Y(n73) );
  NAND2X1 U173 ( .A(n154), .B(n152), .Y(n22) );
  INVX4 U174 ( .A(n34), .Y(n33) );
endmodule

