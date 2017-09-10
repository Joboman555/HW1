`include "hw1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B; // Primary test inputs
  wire nA, nB, nAandnB, nAornB, n_AandB, n_AorB; // Test outputs

  // module to be tested
  demorgan dut(A, B, nA, nB, nAandnB, nAornB, n_AorB, n_AandB);

  // Run sequence of test stimuli
  initial begin
    $display("A B | ~A~B | ~(A+B) | ~A+~B | ~(AB) "); // prints header for truth table
    A=0;B=0; #1 // set A and B, wait for update (#1)
    $display("%b %b |   %b  |   %b    |   %b   |   %b  ", A, B, nAandnB, n_AorB, nAornB, n_AandB);
    A=0;B=1; #1 // set A and B, wait for update (#1)
    $display("%b %b |   %b  |   %b    |   %b   |   %b  ", A, B, nAandnB, n_AorB, nAornB, n_AandB);
    A=1;B=0; #1 // set A and B, wait for update (#1)
    $display("%b %b |   %b  |   %b    |   %b   |   %b  ", A, B, nAandnB, n_AorB, nAornB, n_AandB);
    A=1;B=1; #1 // set A and B, wait for update (#1)
    $display("%b %b |   %b  |   %b    |   %b   |   %b  ", A, B, nAandnB, n_AorB, nAornB, n_AandB);
  end
endmodule
