module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,    // Single bit output, (~A)*(~B)
  output n_AorB,     // Signle bit output, ~(A+B)
  output nAornB,     // Signle bit output, (~A)+(~B)
  output n_AandB     // Signle bit output, ~(A*B)
);

  wire nA;
  wire nB;
  wire AandB;
  wire AorB;

  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  and andgate2(AandB, A, B);
  or orgate1(AorB, A, B);
  or orgate2(nAornB, nA, nB);
  not not_and(n_AandB, AandB);
  not not_or(n_AorB, AorB);

endmodule
