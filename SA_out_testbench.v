`timescale 1ns/1ns

module SA_out_testbench();

reg clk;
reg rst_n;
reg SA_fire_in;
reg [127:0] SA_data_in;
reg [127:0] SA_weight_in;
reg [15:0]  CEN;

wire SA_fire_out;
wire [127:0] SA_data_out;
wire [127:0] SA_weight_out;
wire [511:0] Q;

SA_out SA_out(
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_fire_in(SA_fire_in),
                  .SA_data_in(SA_data_in),
                  .SA_weight_in(SA_weight_in),
                  .CEN(CEN),
                  .SA_fire_out(SA_fire_out),
                  .SA_data_out(SA_data_out),
                  .SA_weight_out(SA_weight_out),
                  .Q(Q)
                 );

always #5 clk = ~clk;

initial
begin

clk = 1'b0;
rst_n = 1'b1;
SA_fire_in = 1'b0;
SA_data_in = 128'b0;
SA_weight_in = 128'b0;
CEN = 16'b0;

#2 rst_n = 1'b0;
#1  rst_n = 1'b1;
    SA_fire_in = 1'b1;
    SA_data_in = 128'h0;
    SA_weight_in = 128'h0;
#10
    SA_data_in = 128'hff;
    SA_weight_in = 128'hff; //cycle1
#10
    SA_data_in = 128'hfefe;
    SA_weight_in = 128'hfefe; //cycle2
#10
    SA_data_in = 128'hfdfdfd;
    SA_weight_in = 128'hfdfdfd; //cycle3
#10
    SA_data_in = 128'hfcfcfcfc;
    SA_weight_in = 128'hfcfcfcfc; //cycle4
#10
    SA_data_in = 128'hfbfbfbfbfb;
    SA_weight_in = 128'hfbfbfbfbfb; //cycle5
#10
    SA_data_in = 128'hfafafafafafa;
    SA_weight_in = 128'hfafafafafafa; //cycle6
#10
    SA_data_in = 128'hf9f9f9f9f9f9f9;
    SA_weight_in = 128'hf9f9f9f9f9f9f9; //cycle7
#10
    SA_data_in = 128'hf8f8f8f8f8f8f8f8;
    SA_weight_in = 128'hf8f8f8f8f8f8f8f8; //cycle8
#10
    SA_data_in = 128'hf7f7f7f7f7f7f7f7f7;
    SA_weight_in = 128'hf7f7f7f7f7f7f7f7f7; //cycle9
#10
    SA_data_in = 128'hf6f6f6f6f6f6f6f6f6f6;
    SA_weight_in = 128'hf6f6f6f6f6f6f6f6f6f6; //cycle10
#10
    SA_data_in = 128'hf5f5f5f5f5f5f5f5f5f5f5;
    SA_weight_in = 128'hf5f5f5f5f5f5f5f5f5f5f5; //cycle11
#10
    SA_data_in = 128'hf4f4f4f4f4f4f4f4f4f4f4f4;
    SA_weight_in = 128'hf4f4f4f4f4f4f4f4f4f4f4f4; //cycle12
#10
    SA_data_in = 128'hf3f3f3f3f3f3f3f3f3f3f3f3f3;
    SA_weight_in = 128'hf3f3f3f3f3f3f3f3f3f3f3f3f3; //cycle13
#10
    SA_data_in = 128'hf2f2f2f2f2f2f2f2f2f2f2f2f2f2;
    SA_weight_in = 128'hf2f2f2f2f2f2f2f2f2f2f2f2f2f2; //cycle14
#10
    SA_data_in = 128'hf1f1f1f1f1f1f1f1f1f1f1f1f1f1f1;
    SA_weight_in = 128'hf1f1f1f1f1f1f1f1f1f1f1f1f1f1f1; //cycle15
#10
    SA_data_in = 128'hf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0;
    SA_weight_in = 128'hf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0; //cycle16
#10
    SA_fire_in = 1'b0;
    SA_data_in = 128'h0;
    SA_weight_in = 128'h0;
#10
    SA_fire_in = 1'b1;

#400 $stop;

end

endmodule




