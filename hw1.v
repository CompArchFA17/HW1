//Joseph Lee
//Computer Architecture HW1
//Proving DeMorgan's Laws Exhaustively


module demorgan
(

  //First define all the inputs to the module:
  //Just going to simulate all 4 equations in 1 module
  //since they all share the same inputs we can do this easily
  input  A,          // Single bit inputs
  input  B,


  //Now define all the outputs for all 4 equations (including intermediates):
  output nA,         // Output intermediate complemented inputs
  output nB,

  output nAandnB,    // Single bit output, (~A)*(~B)
  output AandB,      // Single bit output, A*B
  output nAB,        // Single bit output, ~(A*B)
  output nAornB,     // Single bit output, ~A+~B
  output AorB,       // Single bit output, A+B
  output nAorB       // Single bit output, ~(A+B)
);

  //Define wires:
  wire nA;
  wire nB;
  wire AorB;

  //Define all the connections:
  not Ainv(nA, A);    // Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);   // AND gate produces nAandnB from nA and nB
  and andgate2(AandB, A, B);      // AND gate produces AandB from A and B
  not ABinv(nAB, AandB);          //not gate produces nAB from AandB
  or orgate(nAornB, nA, nB);      //or gate produces nAornB from nA and nB
  or orgate2(AorB, A, B);         //or gate produces AorB from A and B
  not AorBinv(nAorB, AorB);       //not gate produces n(AorB) from AorB

endmodule