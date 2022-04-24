`timescale 1ns/1ns

module PE(clk, rst_n, fire_in, weight_in, data_in, fire_out, weight_out, data_out, result);

input clk;
input rst_n;
input fire_in;
input signed [7:0] weight_in;
input signed [7:0] data_in;

output reg fire_out;
output reg [7:0] weight_out;
output reg [7:0] data_out;
output reg [31:0] result;

reg signed [31:0] tmp;
wire signed [31:0] tmp_next;

assign tmp_next = data_in * weight_in;

always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
     tmp <= 32'b0;
   else if(fire_in)
     tmp <= tmp_next + tmp;
   else if(!fire_in)
     tmp <= 32'b0;
end

always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
    result <= 32'b0;
   else if(!fire_in)
    result <= tmp;
end

//assign result = fire_in ? 32'd0 : tmp;

always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
   fire_out <= 1'b0;
   else
   fire_out <= fire_in;
end

always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
   weight_out <= 8'b0;
   else
   weight_out <= weight_in;
end

always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
   data_out <= 8'b0;
   else
   data_out <= data_in;
end


endmodule




