module demorgan
(
    input A,
    input B,
    output nA,
    output nB,
    output nAandnB,
    
    //~(A+B)
    output AorB,
    output nAorB,

    //~(AB)
    output AandB,
    output nAandB,

    //(~A)+(~B)
    output nAornB
);

    wire nA;
    wire nB;
    not Ainv(nA, A);
    not Binv(nB, B);
    and andgate(nAandnB, nA, nB);
    
    //~(A+B)
    wire AorB;
    wire nAorB;
    or orgate(AorB, A, B);
    not AorBinv(nAorB, AorB);

    //~(AB)
    wire AandB;
    wire nAandB;
    and AandBgate(AandB, A, B);
    not AandBinv(nAandB, AandB);

    //(~A)+(~B)
    or nAornBgate(nAornB, nA, nB);
endmodule
