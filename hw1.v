module demorgan_not_or
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output nAorB       // Single bit output, ~(A+B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  nor norgate(nAorB, A, B);

endmodule

module demorgan_not_and
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAornB,     // Single bit output, (~A)*(~B)
  output nAandB       // Single bit output, ~(A+B)
);
  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  or orgate(nAornB, nA, nB);
  nand nandgate(nAandB, A, B);

endmodule
