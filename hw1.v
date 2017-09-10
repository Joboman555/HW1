module demorgan
(
  input A,
  input B,
  output nA,
  output nB,
  output nAandnB,
  output nAornB,
  output n_AorB,
  output n_AandB
);

  wire nA;
  wire nB;
  wire AandB;
  wire AorB;
  not Ainv(nA, A);
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);
  or orgate(nAornB, nA, nB);

  and _AandB(AandB, A, B);
  not _n_AandB(n_AandB, AandB);

  or _AorB(AorB, A, B);
  not _n_AorB(n_AorB, AorB);
endmodule
