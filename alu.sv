import typedefs::*;

module alu (input logic [7:0] accum,
	    input logic [7:0] data,
	    input opcode_t opcode,
	    input logic clk,

	    output logic [7:0] out,
	    output logic zero
	   );

	timeunit 1ns;
	timeprecision 100ps;

	always_comb begin
	  zero = (accum == 8'b0) ? 1 : 0;
	end

	always_ff @ (negedge clk) begin
	  case(opcode)
		ADD: out <= data + accum;
		AND: out <= data & accum;
		XOR: out <= data ^ accum;
		LDA: out <= data;
		default: out = accum;
	  endcase
	end	
endmodule