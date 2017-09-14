// homework 1, exhaustively prove demorgan's law

module demorgan
(
  input A,
  input B,
  output nA,
  output nB,
  output nAandnB,
  output AnandB,
  output nAornB,
  output AnorB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
// type: not, name: Ainv, output variable: nA, input variable: A
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);
  nand nandgate(AnandB, A, B);
  or orgate(nAornB, nA, nB);
  nor norgate(AnorB, A, B);

endmodule

