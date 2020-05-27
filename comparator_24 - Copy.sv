module comparator_24 #(parameter N = 8,M = 23)
							(input logic [N-1: 0] a,
							output logic q);
							
		assign q = ( a <= M );
		
endmodule 