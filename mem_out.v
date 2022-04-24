`timescale 1ns/1ps

module mem_out#(parameter sram_count=16, parameter sram_addr = 4, parameter word_len = 32)
	(clk, Q, CEN, WEN, A, D);
	/*
	clk, Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15,
	CEN0, CEN1, CEN2, CEN3, CEN4, CEN5, CEN6, CEN7, CEN8, CEN9, CEN10, CEN11, CEN12, CEN13, CEN14, CEN15,
	WEN0, WEN1, WEN2, WEN3, WEN4, WEN5, WEN6, WEN7, WEN8, WEN9, WEN10, WEN11, WEN12, WEN13, WEN14, WEN15,
	A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15,
	D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15
	*/
	
	//wire [sram_count-1:0] CEN_sub; 	//chip enables for each mem8
	//wire [word_len-1:0] Q_sub [0:sram_count-1];   	//output from each mem8

	//input and outputs
	input clk;
	output [sram_count*word_len-1:0] Q;
	input [sram_count*word_len-1:0] D;
	input [sram_count*sram_addr-1:0] A;
	input [sram_count-1:0] CEN;
	input [sram_count-1:0] WEN;

	wire [sram_addr-1:0] A_in [0:sram_count-1]; //One address for each SRAM
	wire [word_len-1:0] D_in [0:sram_count-1]; //One data line for each SRAM
	wire [word_len-1:0] Q_out [0:sram_count-1]; //One output line for each SRAM
	//wire [8-1:0] Q_ff;
	//wire [7:0] A_sub;

	

	//assign A_sub = A[7:0];

	//assign Q = Q_sub[A_out];
	genvar i;

	generate
		for(i = 0; i < sram_count; i = i + 1) begin : generate_mem_32
			assign A_in[i] = A[sram_addr*(i+1)-1:sram_addr*i];
			assign D_in[i] = D[word_len*(i+1)-1:word_len*i];
			assign Q[word_len*(i+1)-1:word_len*i] = Q_out[i];

			mem32 mem32_u(.Q(Q_out[i]), .CLK(clk), .CEN(CEN[i]), .WEN(WEN[i]), .A(A_in[i]), .D(D_in[i]));
		end
	endgenerate

	/*
	always @(posedge clk)
	begin
		if(CEN == 0) begin
			A_out <= A[addr_len+7:8];
		end
	end
	*/
endmodule
