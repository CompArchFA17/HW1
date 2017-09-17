module demorgan1
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB     // Single bit output, (~A)*(~B)
);
  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes A as input and produces nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
endmodule

//////////////////////////////////////////////////////////////////////////////////
module demorgan2
(
  input  A,          
  input  B,
  output AorB,         
  output notAorB        // output final answer ~(A+B)
);
  wire AorB;
  or orgate(AorB, A, B); 
  not inv(notAorB, AorB);
endmodule

//////////////////////////////////////////////////////////////////////////////////
module demorgan3
(
  input  A,          
  input  B,
  output AxB,	     
  output notAxB     // output final answer ~(AB)
);
  wire AxB;
  and andgate(AxB, A, B);   
  not inv(notAxB, AxB);   
endmodule

//////////////////////////////////////////////////////////////////////////////////
module demorgan4
(
  input  A,          
  input  B,
  output nA,         
  output nB,
  output nAornB     // output final answer (~A)+(~B)
);
  wire nA;
  wire nB;
  not Ainv(nA, A);  	
  not Binv(nB, B);
  or orgate(nAornB, nA, nB); 	
endmodule

