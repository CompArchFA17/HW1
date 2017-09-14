// Homework 1 modules

module demorgan
( // notAndnot
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,    // Single bit output, (~A)*(~B)
  output AandB,      // Single bit output, A*B
  output nAB,        // ~(A*B)
  output nAornB,     // ~A+~B
  output AorB,       // A+B
  output nAorB       // ~(A+B)
);

  wire nA;
  wire nB;
  wire AorB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  and andgate2(AandB, A, B);
  not ABinv(nAB, AandB);
  or orgate(nAornB, nA, nB);
  or orgate2(AorB, A, B);
  not AorBinv(nAorB, AorB);

endmodule