module demorgan
(
  input  A,
  input  B,
  output nA,
  output nB,
  output nAandnB,

  output AandB,
  output nAandB,
  output nAornB,
  output AorB,
  output nAorB
);

  wire nA;
  wire nB;

  wire AandB;
  wire AorB;

  not Ainv(nA, A);
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);

  and andgate(AandB, A, B);
  not AandBinv(nAandB, AandB);

  or orgate(nAornB, nA, nB);

  or orgate(AorB, A, B);
  not AorBinv(nAorB, AorB);

endmodule
