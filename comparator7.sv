module comparator7  #(parameter N=7)
(input logic [N-1:0]a, b,
output logic eq);


assign eq = (a == b);

endmodule