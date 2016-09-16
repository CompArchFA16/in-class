// Day 3 in-class Verilog example

// Note: this quick example includes both the circuit and testbench in
//       the same module. We can do better (and will on HW1)
module SR_latch ();

  // Structural part - actual gates and wires
  reg S, R;      // 'reg' type so we can set its value in the testbench
  wire Q, _Q;    // 'wire' type because it is combinationally driven by NORs

  nor TOP_NOR (Q, R, _Q);
  nor BOT_NOR (_Q, S, Q);


  // Non-synthesizable simulation part
  initial begin

    // Dump trace to a file. Open with gtkwave.
    $dumpfile("my_trace.vcd");
    $dumpvars;

    // Test pattern stimulus
    $display("S R | Q _Q");
    S=0; R=0; #5
    $display("%b %b | %b %b", S, R, Q, _Q);
    S=1; R=0; #5 
    $display("%b %b | %b %b", S, R, Q, _Q);
    S=0; R=0; #5 
    $display("%b %b | %b %b", S, R, Q, _Q);
    S=0; R=1; #5 
    $display("%b %b | %b %b", S, R, Q, _Q);
    S=0; R=0; #5 
    $display("%b %b | %b %b", S, R, Q, _Q);
  end

endmodule
