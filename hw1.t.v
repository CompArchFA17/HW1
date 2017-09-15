`include "hw1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB, AB, AorB;    // Test outputs

  demorgan dut(A, B, nA, nB, AB, AorB, nAandnB, nAorB, nAornB, nAB);  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("A B | AB | A+B | ~A ~B | ~A~B | ~(A+B) | ~A+~B | ~(AB)");            // Prints header for truth table
    A=0;B=0; #1
    $display("%b %b |  %b |   %b |  %b  %b |    %b |      %b |     %d |     %d", A,B, AB, AorB, nA, nB, nAandnB, nAorB, nAornB, nAB);
    A=0;B=1; #1
    $display("%b %b |  %b |   %b |  %b  %b |    %b |      %b |     %d |     %d", A,B, AB, AorB, nA, nB, nAandnB, nAorB, nAornB, nAB);
    A=1;B=0; #1
    $display("%b %b |  %b |   %b |  %b  %b |    %b |      %b |     %d |     %d", A,B, AB, AorB, nA, nB, nAandnB, nAorB, nAornB, nAB);
    A=1;B=1; #1
    $display("%b %b |  %b |   %b |  %b  %b |    %b |      %b |     %d |     %d", A,B, AB, AorB, nA, nB, nAandnB, nAorB, nAornB, nAB);
  end
endmodule    // End demorgan_test
