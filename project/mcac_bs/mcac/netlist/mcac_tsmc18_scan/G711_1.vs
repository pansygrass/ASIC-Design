
module G711_1 ( LAW, PCM, mag );
  input [7:0] PCM;
  output [13:0] mag;
  input LAW;
  wire   N44, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, mag_8_, mag_10_, mag_11_, mag_9_;
  assign N44 = PCM[4];
  assign mag[8] = mag_8_;
  assign mag[10] = mag_10_;
  assign mag[11] = mag_11_;
  assign mag[9] = mag_9_;

  NAND3X1 U4 ( .A(n3), .B(n4), .C(n90), .Y(mag[7]) );
  NAND3X1 U5 ( .A(n27), .B(n26), .C(n25), .Y(mag[2]) );
  NAND2X1 U6 ( .A(n12), .B(n93), .Y(n32) );
  NAND2BX2 U7 ( .AN(n43), .B(n42), .Y(n91) );
  OAI211X1 U8 ( .A0(n106), .A1(n117), .B0(n111), .C0(n115), .Y(mag_9_) );
  NAND3XL U9 ( .A(n65), .B(n17), .C(n42), .Y(n20) );
  OAI211X1 U10 ( .A0(n18), .A1(n59), .B0(n20), .C0(n19), .Y(mag[1]) );
  MXI2X1 U11 ( .A(n83), .B(n78), .S0(n16), .Y(n58) );
  NAND3BX1 U12 ( .AN(n91), .B(n38), .C(n76), .Y(n27) );
  OR3XL U13 ( .A(n32), .B(n1), .C(LAW), .Y(n35) );
  INVX1 U14 ( .A(n2), .Y(n1) );
  NAND2X1 U15 ( .A(n44), .B(n114), .Y(n53) );
  INVX1 U16 ( .A(n77), .Y(n44) );
  INVX1 U17 ( .A(n117), .Y(n114) );
  OAI22X1 U18 ( .A0(n37), .A1(n11), .B0(n106), .B1(n91), .Y(n64) );
  NOR2XL U19 ( .A(n65), .B(n89), .Y(n67) );
  OAI211XL U20 ( .A0(n78), .A1(n77), .B0(n114), .C0(n76), .Y(n79) );
  NAND2BX1 U21 ( .AN(n82), .B(n12), .Y(n22) );
  MXI2XL U22 ( .A(n66), .B(n7), .S0(n11), .Y(n106) );
  OAI2BB2X1 U23 ( .B0(n117), .B1(n113), .A0N(n116), .A1N(n115), .Y(mag_10_) );
  NAND2BXL U24 ( .AN(n12), .B(n68), .Y(n42) );
  NAND3X1 U25 ( .A(n95), .B(n96), .C(n110), .Y(n99) );
  CLKINVX3 U26 ( .A(n88), .Y(n65) );
  XOR2X2 U27 ( .A(n15), .B(LAW), .Y(n82) );
  OR2X2 U28 ( .A(n43), .B(n42), .Y(n117) );
  MX2X2 U29 ( .A(n47), .B(n46), .S0(n11), .Y(n8) );
  NAND2BX2 U30 ( .AN(n12), .B(n49), .Y(n74) );
  MXI2X1 U31 ( .A(n2), .B(n84), .S0(n12), .Y(n95) );
  INVX1 U32 ( .A(n82), .Y(n56) );
  MXI2X1 U33 ( .A(n59), .B(n109), .S0(n12), .Y(n73) );
  NAND2X1 U34 ( .A(n73), .B(n74), .Y(n96) );
  MXI2X1 U35 ( .A(n72), .B(n71), .S0(n12), .Y(n110) );
  INVX1 U36 ( .A(n112), .Y(n71) );
  INVX1 U37 ( .A(n37), .Y(n55) );
  INVX1 U38 ( .A(PCM[2]), .Y(n70) );
  NAND3BX1 U39 ( .AN(n16), .B(n12), .C(LAW), .Y(n37) );
  INVX1 U40 ( .A(n74), .Y(n51) );
  OAI2BB1X1 U41 ( .A0N(n102), .A1N(n41), .B0(n40), .Y(n100) );
  OAI2BB1X1 U42 ( .A0N(n12), .A1N(n56), .B0(LAW), .Y(n43) );
  BUFX3 U43 ( .A(PCM[6]), .Y(n12) );
  NAND2BX2 U44 ( .AN(n11), .B(n16), .Y(n93) );
  AOI21X1 U45 ( .A0(n44), .A1(PCM[2]), .B0(n10), .Y(n9) );
  MX2X1 U46 ( .A(n29), .B(n28), .S0(n65), .Y(n10) );
  INVX4 U47 ( .A(n16), .Y(n45) );
  MXI2X1 U48 ( .A(PCM[0]), .B(PCM[2]), .S0(n45), .Y(n47) );
  XNOR2X2 U49 ( .A(PCM[3]), .B(LAW), .Y(n83) );
  XNOR2X2 U50 ( .A(PCM[1]), .B(LAW), .Y(n78) );
  OAI21XL U51 ( .A0(n51), .A1(n50), .B0(n13), .Y(n52) );
  INVXL U52 ( .A(n61), .Y(n29) );
  MXI2X2 U53 ( .A(n48), .B(n8), .S0(n12), .Y(n49) );
  INVX1 U54 ( .A(PCM[5]), .Y(n15) );
  INVX1 U55 ( .A(n21), .Y(n72) );
  INVX1 U56 ( .A(n99), .Y(n85) );
  NAND4BXL U57 ( .AN(n5), .B(n54), .C(n53), .D(n52), .Y(mag[4]) );
  NAND3X1 U58 ( .A(n36), .B(n35), .C(n34), .Y(mag[3]) );
  AOI22X1 U59 ( .A0(n22), .A1(n13), .B0(n55), .B1(n41), .Y(n19) );
  NAND3BX1 U60 ( .AN(n64), .B(n63), .C(n62), .Y(mag[5]) );
  NAND2X1 U61 ( .A(n60), .B(n14), .Y(n63) );
  INVXL U62 ( .A(LAW), .Y(n13) );
  INVXL U63 ( .A(LAW), .Y(n14) );
  MX2X1 U64 ( .A(n31), .B(n47), .S0(n11), .Y(n2) );
  NAND2BX1 U65 ( .AN(LAW), .B(n75), .Y(n80) );
  NAND3BX1 U66 ( .AN(n81), .B(n80), .C(n79), .Y(mag[6]) );
  NAND2XL U67 ( .A(n110), .B(n96), .Y(n87) );
  AOI21XL U68 ( .A0(n87), .A1(n86), .B0(n85), .Y(n92) );
  OR2X2 U69 ( .A(n92), .B(LAW), .Y(n3) );
  OR2XL U70 ( .A(n118), .B(n91), .Y(n4) );
  OAI2BB1XL U71 ( .A0N(n11), .A1N(n89), .B0(n88), .Y(n118) );
  MX2XL U72 ( .A(n78), .B(n83), .S0(n65), .Y(n7) );
  NAND2BX4 U73 ( .AN(n69), .B(n45), .Y(n68) );
  INVXL U74 ( .A(n43), .Y(n17) );
  NOR2XL U75 ( .A(n89), .B(n37), .Y(n5) );
  XOR2XL U76 ( .A(n74), .B(n73), .Y(n60) );
  NOR2XL U77 ( .A(n49), .B(n121), .Y(n50) );
  NAND3XL U78 ( .A(n6), .B(n110), .C(n96), .Y(n107) );
  NAND3XL U79 ( .A(n6), .B(n110), .C(n109), .Y(n115) );
  OAI22XL U80 ( .A0(n120), .A1(n119), .B0(n118), .B1(n117), .Y(mag_11_) );
  MXI2X1 U81 ( .A(n58), .B(n57), .S0(n11), .Y(n108) );
  NOR2XL U82 ( .A(n56), .B(n70), .Y(n57) );
  AOI21XL U83 ( .A0(n55), .A1(n70), .B0(n33), .Y(n34) );
  NAND2XL U84 ( .A(n9), .B(n101), .Y(n36) );
  AOI21X1 U85 ( .A0(n32), .A1(n13), .B0(n24), .Y(n25) );
  NAND2XL U86 ( .A(n76), .B(n56), .Y(n59) );
  MXI2XL U87 ( .A(n8), .B(n122), .S0(n12), .Y(n94) );
  NOR2XL U88 ( .A(n78), .B(n69), .Y(n28) );
  NAND2XL U89 ( .A(PCM[0]), .B(n11), .Y(n76) );
  INVXL U90 ( .A(PCM[0]), .Y(n41) );
  INVX1 U91 ( .A(n91), .Y(n101) );
  INVX1 U92 ( .A(n107), .Y(n97) );
  INVX1 U93 ( .A(n38), .Y(n102) );
  INVX1 U94 ( .A(n22), .Y(n23) );
  NAND3BXL U95 ( .AN(n120), .B(n108), .C(n107), .Y(n111) );
  NAND2BX1 U96 ( .AN(LAW), .B(n121), .Y(n120) );
  OAI21XL U97 ( .A0(n110), .A1(n96), .B0(n87), .Y(n75) );
  NOR2X1 U98 ( .A(n120), .B(n112), .Y(n116) );
  OAI2BB1XL U99 ( .A0N(n18), .A1N(n14), .B0(n37), .Y(mag[0]) );
  NOR2XL U100 ( .A(n30), .B(n37), .Y(n24) );
  INVX1 U101 ( .A(n108), .Y(n109) );
  INVXL U102 ( .A(n93), .Y(n122) );
  INVX1 U103 ( .A(n95), .Y(n86) );
  NAND2BXL U104 ( .AN(n69), .B(n88), .Y(n38) );
  INVX1 U105 ( .A(n94), .Y(n98) );
  AND2X2 U106 ( .A(n95), .B(n94), .Y(n6) );
  NAND2XL U107 ( .A(n9), .B(n114), .Y(n90) );
  OAI221XL U108 ( .A0(LAW), .A1(n105), .B0(n104), .B1(n117), .C0(n103), .Y(
        mag_8_) );
  NAND2XL U109 ( .A(n102), .B(n101), .Y(n103) );
  INVX1 U110 ( .A(n100), .Y(n104) );
  AOI21X1 U111 ( .A0(n99), .A1(n98), .B0(n97), .Y(n105) );
  OAI221XL U112 ( .A0(n93), .A1(n70), .B0(n83), .B1(n69), .C0(n68), .Y(n112)
         );
  INVXL U113 ( .A(n68), .Y(n48) );
  NAND3XL U114 ( .A(n72), .B(n14), .C(n23), .Y(n26) );
  MXI2XL U115 ( .A(n123), .B(n124), .S0(LAW), .Y(mag[12]) );
  NAND2X1 U116 ( .A(n122), .B(n121), .Y(n123) );
  MXI2X1 U117 ( .A(n67), .B(n66), .S0(n11), .Y(n113) );
  OAI21XL U118 ( .A0(n11), .A1(n83), .B0(n16), .Y(n119) );
  INVX1 U119 ( .A(n119), .Y(n84) );
  NOR2XL U120 ( .A(n113), .B(n91), .Y(n81) );
  NAND3BX1 U121 ( .AN(n88), .B(n114), .C(n61), .Y(n62) );
  INVX1 U122 ( .A(n83), .Y(n89) );
  NAND3BXL U123 ( .AN(n121), .B(n45), .C(n11), .Y(n18) );
  INVX1 U124 ( .A(n78), .Y(n30) );
  NAND2BXL U125 ( .AN(n11), .B(n93), .Y(n77) );
  OAI211XL U126 ( .A0(n78), .A1(n68), .B0(n61), .C0(n93), .Y(n21) );
  NOR2XL U127 ( .A(n12), .B(LAW), .Y(n33) );
  NAND2XL U128 ( .A(n30), .B(n56), .Y(n31) );
  NOR2XL U129 ( .A(LAW), .B(n125), .Y(mag[13]) );
  INVX1 U130 ( .A(n124), .Y(n125) );
  NAND2BX1 U131 ( .AN(n91), .B(n100), .Y(n54) );
  INVX1 U132 ( .A(n12), .Y(n121) );
  INVX1 U133 ( .A(n11), .Y(n69) );
  NAND2XL U134 ( .A(PCM[2]), .B(n88), .Y(n66) );
  MXI2X1 U135 ( .A(n7), .B(n39), .S0(n11), .Y(n40) );
  NOR2XL U136 ( .A(PCM[2]), .B(n88), .Y(n39) );
  XNOR2XL U137 ( .A(PCM[7]), .B(LAW), .Y(n124) );
  NAND2BX1 U138 ( .AN(n11), .B(PCM[0]), .Y(n61) );
  NAND2X4 U139 ( .A(n68), .B(n93), .Y(n88) );
  XOR2X4 U140 ( .A(n15), .B(LAW), .Y(n16) );
  CLKINVX3 U141 ( .A(n58), .Y(n46) );
  BUFX3 U1 ( .A(N44), .Y(n11) );
endmodule
