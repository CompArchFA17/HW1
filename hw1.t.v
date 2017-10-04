`include "hw1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB;    // Test outputs

  demorgan1 turnip(A, B, nA, nB, nAandnB);  // Module to be tested
  demorgan2 potato(A, B, AorB, notAorB); 
  demorgan3 leek(A, B, AxB, notAxB);  // Module to be tested
  demorgan4 radish(A, B, nA, nB,  nAornB); 


  // Run sequence of test stimuli
  initial begin
    $display("A B | ~A ~B|~A~B|~(A+B)|~(AB)|~A+~B");   // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b | %b  %b |  %b  |  %b  |  %b  | %b", A,B, nA, nB, nAandnB, notAorB, notAxB, nAornB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b | %b  %b |  %b  |  %b  |  %b  | %b", A,B, nA, nB, nAandnB, notAorB, notAxB, nAornB);
    A=1;B=0; #1
    $display("%b %b | %b  %b |  %b  |  %b  |  %b  | %b", A,B, nA, nB, nAandnB, notAorB, notAxB, nAornB);
    A=1;B=1; #1
    $display("%b %b | %b  %b |  %b  |  %b  |  %b  | %b", A,B, nA, nB, nAandnB, notAorB, notAxB, nAornB);
  end
endmodule    // End demorgan_test
