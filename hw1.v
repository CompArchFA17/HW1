module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output n_AorB,
  output nAornB,
  output n_AandB
);

  wire nA;
  wire nB;
  wire AandB;
  wire AorB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);

  // ~A * ~B
  and nAandnBgate(nAandnB, nA, nB);

  // ~(A*B)
  and AandBgate(AandB, A, B);
  not AandBInv(n_AandB, AandB); 

  // ~A + ~B
  or nAornBgate(nAornB, nA, nB);

  // ~(A+B)
  or AorBgate(AorB, A, B);
  not AorBInv(n_AorB, AorB); 




endmodule
