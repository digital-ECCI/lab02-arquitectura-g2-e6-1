module Sumador_1b(

	input A,
	input B,
	input Ci,
	output Co,
	output So
);

assign So = A ^ B ^ Ci;
assign Co = (A & B) | (Ci & (A ^ B));

endmodule
