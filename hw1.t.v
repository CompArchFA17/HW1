`include "hw1.v"

module demorgan_test ();

  reg A, B;
  wire nA, nB, nAandnB, AandB, nAandB, nAornB, AorB, nAorB;

  demorgan dut(A, B, nA, nB, nAandnB, AandB, nAandB, nAornB, AorB, nAorB);

  initial begin
    $display("A B | ~A ~B | ~A~B | ~(AB) | ~A+~B | ~(A+B)");
    A=0;B=0; #1
    $display("%b %b |  %b  %b | 	%b  | 	%b  | 	%b  | 	%b  ", A,B, nA, nB, nAandnB, nAandB, nAornB, nAorB);
    A=0;B=1; #1
    $display("%b %b |  %b  %b | 	%b  | 	%b  | 	%b  | 	%b  ", A,B, nA, nB, nAandnB, nAandB, nAornB, nAorB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b | 	%b  | 	%b  | 	%b  | 	%b  ", A,B, nA, nB, nAandnB, nAandB, nAornB, nAorB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b | 	%b  | 	%b  | 	%b  | 	%b  ", A,B, nA, nB, nAandnB, nAandB, nAornB, nAorB);
  end
endmodule
