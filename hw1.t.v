`include "hw1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB, nAorB;    // Test outputs

  demorgan_not_or dno(A, B, nA, nB, nAandnB, nAorB);  // Module to be tested

  wire nAornB, nAandB;

  demorgan_not_and dna(A, B, nA, nB, nAornB, nAandB);
  // Run sequence of test stimuli
  initial begin
    $display("A B | ~A ~B | ~A~B | ~(A+B) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |    %b |      %b  ", A,B, nA, nB, nAandnB, nAorB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b  %b |    %b |      %b  ", A,B, nA, nB, nAandnB, nAorB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b |      %b  ", A,B, nA, nB, nAandnB, nAorB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b |      %b  ", A,B, nA, nB, nAandnB, nAorB);
    $display("");
    $display("A B | ~A ~B | ~A+~B | ~(AB) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |     %b |     %b  ", A,B, nA, nB, nAornB, nAandB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b  %b |     %b |     %b  ", A,B, nA, nB, nAornB, nAandB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |     %b |     %b  ", A,B, nA, nB, nAornB, nAandB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |     %b |     %b  ", A,B, nA, nB, nAornB, nAandB);
  end
endmodule    // End demorgan_test
