module nAornB(A,B,nA,nB,nAornB);

  input A;
  input B;
  output nA;
  output nB;
  output nAornB;

  wire nA;
  wire nB;
  
  not Ainv(nA, A);
  not Binv(nB, B);
  or orgate(nAornB, nA, nB);

endmodule

module demorgan(A,B,nA,nB,nAandnB);

  input A;
  input B;
  output nA;
  output nB;
  output nAandnB;

  wire nA;
  wire nB;

  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB

endmodule

module nAorB(A,B,AorB,nAorB);

  input A;
  input B;
  output AorB;
  output nAorB;

  wire AorB;

  or orgate(AorB, A, B);
  not AorBinv(nAorB, AorB);

endmodule

module nAandB(A,B,AandB,nAandB);

  input A;
  input B;
  output AandB;
  output nAandB;

  wire AandB;

  and andgate(AandB, A, B);
  not inverter(nAandB, AandB);

endmodule