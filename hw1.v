module demorgan
(
  input   A,
  input   B,
  output  nA,
  output  nB,
  output  nAornB,
  output  nAandnB,
  output  n_AorB,
  output  n_AandB
);

  wire nA;
  wire nB;
  not Ainv(nA, A); //Instantiate a NOT called Ainv
  not Binv(nB, B); //Instantiate a NOT called Binv
  and andgate(nAandnB, nA, nB); //Instantiate an AND
  or orgate(nAornB, nA, nB);

  //NOR and NAND for comparison
  nor norgate (n_AorB, A, B);
  nand nandgate (n_AandB, A, B);

endmodule
