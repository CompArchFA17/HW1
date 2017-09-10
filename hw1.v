module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output AandB,        // intermediate A*B
  output nAandB,       // ~(A*B)
  output nAornB,      // ~A+~B
  output AorB,        // intermediate A+B
  output nAorB        // ~(A+B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  and andgate2(AandB, A, B);
  not AandBinv(nAandB, AandB);
  or orgate1(nAornB, nA, nB);
  or orgate2(AorB, A, B);
  not AorBinv(nAorB, AorB);

endmodule