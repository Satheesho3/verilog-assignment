module test_nand_gate;
  reg a, b;
  wire out;
  nand_gate_switch uut (.out(out),.a(a),.b(b) );

  initial begin
    $display("Time\tA B | OUT");
    $monitor("%0t\t%b %b |  %b", $time, a, b, out);
    
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end

endmodule