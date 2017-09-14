`include "hw1.v"

module demorgan_test ();

// Instantiate device/module under test
reg A, B; //test inputs
wire nA, nB, nAandnB, AnandB, nAornB, AnorB; //test outputs

demorgan dut(A, B, nA, nB, nAandnB, AnandB, nAornB, AnorB);

// Run tests

initial begin
  $display("\n");
  $display("| A B | ~A ~V || ~A~B | ~(A+B) || ~A+~B | ~(AB) |");
  A=0;B=0; #1
  $display("| %b %b |  %b  %b ||   %b  |    %b   ||   %b   |   %b   |", 
	A,B, nA, nB, nAandnB, AnorB, nAornB, AnandB);
  A=0;B=1; #1
  $display("| %b %b |  %b  %b ||   %b  |    %b   ||   %b   |   %b   |", 
	A,B, nA, nB, nAandnB, AnorB, nAornB, AnandB);
  A=1;B=0; #1
  $display("| %b %b |  %b  %b ||   %b  |    %b   ||   %b   |   %b   |", 
	A,B, nA, nB, nAandnB, AnorB, nAornB, AnandB);
  A=1;B=1; #1
  $display("| %b %b |  %b  %b ||   %b  |    %b   ||   %b   |   %b   |", 
	A,B, nA, nB, nAandnB, AnorB, nAornB, AnandB);
  $display("\n");
end
endmodule
