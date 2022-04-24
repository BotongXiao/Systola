`timescale 1ns/1ps

module SA_out(
		input clk,
		input rst_n,
		input SA_fire_in,
		input [127:0] SA_data_in,
		input [127:0] SA_weight_in,
		input [15:0] CEN,
		output SA_fire_out,
		output [127:0] SA_data_out,
		output [127:0] SA_weight_out,
		output [511:0] Q
             );


wire [15:0] SA_valid;
wire [511:0] SA_result;
wire [15:0] WEN;
wire [63:0] A;
wire [511:0] D;

reg [511:0] D_neg;

assign WEN [15:0] = ~ SA_valid[15:0];
assign D = D_neg;

always@(negedge clk or negedge rst_n)
begin
   if(!rst_n)
     D_neg <= 512'd0;
   else
    D_neg <= SA_result;
end

reg [3:0] addr_cnt_1;
reg [3:0] addr_cnt_2;
reg [3:0] addr_cnt_3;
reg [3:0] addr_cnt_4;
reg [3:0] addr_cnt_5;
reg [3:0] addr_cnt_6;
reg [3:0] addr_cnt_7;
reg [3:0] addr_cnt_8;
reg [3:0] addr_cnt_9;
reg [3:0] addr_cnt_10;
reg [3:0] addr_cnt_11;
reg [3:0] addr_cnt_12;
reg [3:0] addr_cnt_13;
reg [3:0] addr_cnt_14;
reg [3:0] addr_cnt_15;
reg [3:0] addr_cnt_16;

always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_1 <= 4'd0;
   else if(!SA_valid[0])
     addr_cnt_1 <= 4'd0;
   else if(SA_valid[0])
     addr_cnt_1 <= addr_cnt_1 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_2 <= 4'd0;
   else if(!SA_valid[1])
     addr_cnt_2 <= 4'd0;
   else if(SA_valid[1])
     addr_cnt_2 <= addr_cnt_2 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_3 <= 4'd0;
   else if(!SA_valid[2])
     addr_cnt_3 <= 4'd0;
   else if(SA_valid[2])
     addr_cnt_3 <= addr_cnt_3 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_4 <= 4'd0;
   else if(!SA_valid[3])
     addr_cnt_4 <= 4'd0;
   else if(SA_valid[3])
     addr_cnt_4 <= addr_cnt_4 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_5 <= 4'd0;
   else if(!SA_valid[4])
     addr_cnt_5 <= 4'd0;
   else if(SA_valid[4])
     addr_cnt_5 <= addr_cnt_5 + 1'b1;
end

always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_6 <= 4'd0;
   else if(!SA_valid[5])
     addr_cnt_6 <= 4'd0;
   else if(SA_valid[5])
     addr_cnt_6 <= addr_cnt_6 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_7 <= 4'd0;
   else if(!SA_valid[6])
     addr_cnt_7 <= 4'd0;
   else if(SA_valid[6])
     addr_cnt_7 <= addr_cnt_7 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_8 <= 4'd0;
   else if(!SA_valid[7])
     addr_cnt_8 <= 4'd0;
   else if(SA_valid[7])
     addr_cnt_8 <= addr_cnt_8 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_9 <= 4'd0;
   else if(!SA_valid[8])
     addr_cnt_9 <= 4'd0;
   else if(SA_valid[8])
     addr_cnt_9 <= addr_cnt_9 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_10 <= 4'd0;
   else if(!SA_valid[9])
     addr_cnt_10 <= 4'd0;
   else if(SA_valid[9])
     addr_cnt_10 <= addr_cnt_10 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_11 <= 4'd0;
   else if(!SA_valid[10])
     addr_cnt_11 <= 4'd0;
   else if(SA_valid[10])
     addr_cnt_11 <= addr_cnt_11 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_12 <= 4'd0;
   else if(!SA_valid[11])
     addr_cnt_12 <= 4'd0;
   else if(SA_valid[11])
     addr_cnt_12 <= addr_cnt_12 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_13 <= 4'd0;
   else if(!SA_valid[12])
     addr_cnt_13 <= 4'd0;
   else if(SA_valid[12])
     addr_cnt_13 <= addr_cnt_13 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_14 <= 4'd0;
   else if(!SA_valid[13])
     addr_cnt_14 <= 4'd0;
   else if(SA_valid[13])
     addr_cnt_14 <= addr_cnt_14 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_15 <= 4'd0;
   else if(!SA_valid[14])
     addr_cnt_15 <= 4'd0;
   else if(SA_valid[14])
     addr_cnt_15 <= addr_cnt_15 + 1'b1;
end


always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     addr_cnt_16 <= 4'd0;
   else if(!SA_valid[15])
     addr_cnt_16 <= 4'd0;
   else if(SA_valid[15])
     addr_cnt_16 <= addr_cnt_16 + 1'b1;
end

assign A[3:0] = addr_cnt_1[3:0];
assign A[7:4] = addr_cnt_2[3:0];
assign A[11:8] = addr_cnt_3[3:0];
assign A[15:12] = addr_cnt_4[3:0];
assign A[19:16] = addr_cnt_5[3:0];
assign A[23:20] = addr_cnt_6[3:0];
assign A[27:24] = addr_cnt_7[3:0];
assign A[31:28] = addr_cnt_8[3:0];
assign A[35:32] = addr_cnt_9[3:0];
assign A[39:36] = addr_cnt_10[3:0];
assign A[43:40] = addr_cnt_11[3:0];
assign A[47:44] = addr_cnt_12[3:0];
assign A[51:48] = addr_cnt_13[3:0];
assign A[55:52] = addr_cnt_14[3:0];
assign A[59:56] = addr_cnt_15[3:0];
assign A[63:60] = addr_cnt_16[3:0];



SA SA(
      .clk(clk),
      .rst_n(rst_n),
      .SA_fire_in(SA_fire_in),
      .SA_data_in(SA_data_in),
      .SA_weight_in(SA_weight_in),
      .SA_fire_out(SA_fire_out),
      .SA_data_out(SA_data_out),
      .SA_weight_out(SA_weight_out),
      .SA_result(SA_result),
      .SA_valid(SA_valid)
     );

mem_out mem_out(
                .clk(clk),
                .Q(Q),
                .CEN(CEN),
                .WEN(WEN),
                .A(A),
                .D(D)
               );

endmodule

