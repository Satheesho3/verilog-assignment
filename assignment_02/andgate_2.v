module nand_gate_switch(output out, input a, b);
  supply1 VDD;
  supply0 GND;

  wire w_nmos;
  pmos (out, VDD, a);    
  pmos (out, VDD, b);  

  nmos (w_nmos, GND, a);  
  nmos (out, w_nmos, b);  

endmodule