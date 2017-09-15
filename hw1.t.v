`include "hw1.v"

module demorgan_test ();

    reg A, B;
    wire nA, nB, nAandnB;

    demorgan dut(A, B, nA, nB, nAandnB, AorB, nAorB, AandB, nAandB, nAornB);

    initial begin
        $display("~A~B");
        $display("A B | ~A ~B | ~A~B ");
        A=0;B=0; #1
        $display("%b %b |  %b  %b |    %b  ", A, B, nA, nB, nAandnB);
        A=0;B=1; #1
        $display("%b %b |  %b  %b |    %b  ", A, B, nA, nB, nAandnB);
        A=1;B=0; #1
        $display("%b %b |  %b  %b |    %b  ", A, B, nA, nB, nAandnB);
        A=1;B=1; #1
        $display("%b %b |  %b  %b |    %b  ", A, B, nA, nB, nAandnB);
        
        $display("~(A+B)");
        $display("A B | A+B | ~(A+B) ");
        A=0;B=0; #1
        $display("%b %b |  %b  |    %b  ", A, B, AorB, nAorB);
        A=0;B=1; #1
        $display("%b %b |  %b  |    %b  ", A, B, AorB, nAorB);
        A=1;B=0; #1
        $display("%b %b |  %b  |    %b  ", A, B, AorB, nAorB);
        A=1;B=1; #1
        $display("%b %b |  %b  |    %b  ", A, B, AorB, nAorB);

        $display("~(AB)");
        $display("A B | AB | ~(AB) ");
        A=0;B=0; #1
        $display("%b %b |  %b |   %b  ", A, B, AandB, nAandB);
        A=0;B=1; #1
        $display("%b %b |  %b |   %b  ", A, B, AandB, nAandB);
        A=1;B=0; #1
        $display("%b %b |  %b |   %b  ", A, B, AandB, nAandB);
        A=1;B=1; #1
        $display("%b %b |  %b |   %b  ", A, B, AandB, nAandB);

        $display("(~A)+(~B)");
        $display("A B | ~A ~B | (~A)+(~B) ");
        A=0;B=0; #1
        $display("%b %b |  %b  %b |    %b  ", A, B, nA, nB, nAornB);
        A=0;B=1; #1
        $display("%b %b |  %b  %b |    %b  ", A, B, nA, nB, nAornB);
        A=1;B=0; #1
        $display("%b %b |  %b  %b |    %b  ", A, B, nA, nB, nAornB);
        A=1;B=1; #1
        $display("%b %b |  %b  %b |    %b  ", A, B, nA, nB, nAornB);
    end
endmodule
