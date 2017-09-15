`include "hw1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAnB;    // Test outputs

  demorgan dut(.A (A),.B (B),.nA (nA),.nB (nB),.nAandnB (nAnB));  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("A B | ~A ~B | ~A~B ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAnB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAnB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAnB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAnB);
  end
endmodule    // End demorgan_test

module nAornB_test ();

  reg A, B;
  wire nA, nB, nAnB;

  nAornB dut(.A (A),.B (B),.nA (nA),.nB (nB),.nAornB (nAnB));

  initial begin
    $display("A B | ~A ~B | ~A+~B");
    A=0;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAnB);
    A=0;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAnB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAnB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAnB);
  end
endmodule

module nAorB_test ();

  reg A, B;
  wire AorB, nAB;

  nAorB dut(.A (A), .B(B), .AorB (AorB), .nAorB (nAB));

  initial begin
    $display("A B | A+B | ~A+B");
    A=0;B=0; #1
    $display("%b %b | %b | %b  ", A,B, AorB, nAB);
    A=0;B=1; #1
    $display("%b %b | %b | %b  ", A,B, AorB, nAB);
    A=1;B=0; #1
    $display("%b %b | %b | %b  ", A,B, AorB, nAB);
    A=1;B=1; #1
    $display("%b %b | %b | %b  ", A,B, AorB, nAB);
  end
endmodule

module nAandB_test ();

  reg A, B;
  wire AB, nAnB;

  nAandB dut(.A (A), .B (B), .AandB (AB), .nAandB (nAnB));

  initial begin
    $display("A B | AB | ~AB");
    A=0;B=0; #1
    $display("%b %b | %b | %b  ", A,B, AB, nAnB);
    A=0;B=1; #1
    $display("%b %b | %b | %b  ", A,B, AB, nAnB);
    A=1;B=0; #1
    $display("%b %b | %b | %b  ", A,B, AB, nAnB);
    A=1;B=1; #1
    $display("%b %b | %b | %b  ", A,B, AB, nAnB);
  end
endmodule