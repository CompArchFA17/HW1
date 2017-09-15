module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output AandB,
  output nAandB,
  output AorB,
  output nAorB,
  output nAornB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  and andgate(AandB, A, B);
  not AnBinv(nAandB, AandB);
  or og(AorB, A, B);
  not AorBinv(nAorB, AorB);
  or og(nAornB, nA, nB);

endmodule