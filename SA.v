`timescale 1ns/1ns

module SA(clk, rst_n, SA_fire_in, SA_data_in, SA_weight_in, SA_fire_out, SA_data_out, SA_weight_out, SA_result, SA_valid);

input clk;
input rst_n;
input SA_fire_in;
input [127:0] SA_data_in;
input [127:0] SA_weight_in;
output SA_fire_out;
output [127:0] SA_data_out;
output [127:0] SA_weight_out;
output [511:0] SA_result;
output [15:0] SA_valid;

wire [127:0] SA_col_data_in;
wire [7:0] SA_col_weight_in;
wire SA_col_fire_in;
wire [127:0] SA_col_data_out;
wire [7:0] SA_col_weight_out;
wire SA_col_fire_out;
wire [31:0] SA_col_result;
wire SA_col_valid;

wire SA_fire_i_1;
wire [127:0] SA_data_i_1;
wire [7:0] SA_weight_i_1;
wire SA_fire_o_1;
wire [127:0] SA_data_o_1;
wire [7:0] SA_weight_o_1;
wire [31:0] SA_result_o_1;
wire SA_valid_o_1;

wire SA_fire_i_2;
wire [127:0] SA_data_i_2;
wire [7:0] SA_weight_i_2;
wire SA_fire_o_2;
wire [127:0] SA_data_o_2;
wire [7:0] SA_weight_o_2;
wire [31:0] SA_result_o_2;
wire SA_valid_o_2;

wire SA_fire_i_3;
wire [127:0] SA_data_i_3;
wire [7:0] SA_weight_i_3;
wire SA_fire_o_3;
wire [127:0] SA_data_o_3;
wire [7:0] SA_weight_o_3;
wire [31:0] SA_result_o_3;
wire SA_valid_o_3;

wire SA_fire_i_4;
wire [127:0] SA_data_i_4;
wire [7:0] SA_weight_i_4;
wire SA_fire_o_4;
wire [127:0] SA_data_o_4;
wire [7:0] SA_weight_o_4;
wire [31:0] SA_result_o_4;
wire SA_valid_o_4;

wire SA_fire_i_5;
wire [127:0] SA_data_i_5;
wire [7:0] SA_weight_i_5;
wire SA_fire_o_5;
wire [127:0] SA_data_o_5;
wire [7:0] SA_weight_o_5;
wire [31:0] SA_result_o_5;
wire SA_valid_o_5;

wire SA_fire_i_6;
wire [127:0] SA_data_i_6;
wire [7:0] SA_weight_i_6;
wire SA_fire_o_6;
wire [127:0] SA_data_o_6;
wire [7:0] SA_weight_o_6;
wire [31:0] SA_result_o_6;
wire SA_valid_o_6;

wire SA_fire_i_7;
wire [127:0] SA_data_i_7;
wire [7:0] SA_weight_i_7;
wire SA_fire_o_7;
wire [127:0] SA_data_o_7;
wire [7:0] SA_weight_o_7;
wire [31:0] SA_result_o_7;
wire SA_valid_o_7;

wire SA_fire_i_8;
wire [127:0] SA_data_i_8;
wire [7:0] SA_weight_i_8;
wire SA_fire_o_8;
wire [127:0] SA_data_o_8;
wire [7:0] SA_weight_o_8;
wire [31:0] SA_result_o_8;
wire SA_valid_o_8;

wire SA_fire_i_9;
wire [127:0] SA_data_i_9;
wire [7:0] SA_weight_i_9;
wire SA_fire_o_9;
wire [127:0] SA_data_o_9;
wire [7:0] SA_weight_o_9;
wire [31:0] SA_result_o_9;
wire SA_valid_o_9;

wire SA_fire_i_10;
wire [127:0] SA_data_i_10;
wire [7:0] SA_weight_i_10;
wire SA_fire_o_10;
wire [127:0] SA_data_o_10;
wire [7:0] SA_weight_o_10;
wire [31:0] SA_result_o_10;
wire SA_valid_o_10;

wire SA_fire_i_11;
wire [127:0] SA_data_i_11;
wire [7:0] SA_weight_i_11;
wire SA_fire_o_11;
wire [127:0] SA_data_o_11;
wire [7:0] SA_weight_o_11;
wire [31:0] SA_result_o_11;
wire SA_valid_o_11;

wire SA_fire_i_12;
wire [127:0] SA_data_i_12;
wire [7:0] SA_weight_i_12;
wire SA_fire_o_12;
wire [127:0] SA_data_o_12;
wire [7:0] SA_weight_o_12;
wire [31:0] SA_result_o_12;
wire SA_valid_o_12;

wire SA_fire_i_13;
wire [127:0] SA_data_i_13;
wire [7:0] SA_weight_i_13;
wire SA_fire_o_13;
wire [127:0] SA_data_o_13;
wire [7:0] SA_weight_o_13;
wire [31:0] SA_result_o_13;
wire SA_valid_o_13;

wire SA_fire_i_14;
wire [127:0] SA_data_i_14;
wire [7:0] SA_weight_i_14;
wire SA_fire_o_14;
wire [127:0] SA_data_o_14;
wire [7:0] SA_weight_o_14;
wire [31:0] SA_result_o_14;
wire SA_valid_o_14;

wire SA_fire_i_15;
wire [127:0] SA_data_i_15;
wire [7:0] SA_weight_i_15;
wire SA_fire_o_15;
wire [127:0] SA_data_o_15;
wire [7:0] SA_weight_o_15;
wire [31:0] SA_result_o_15;
wire SA_valid_o_15;

wire SA_fire_i_16;
wire [127:0] SA_data_i_16;
wire [7:0] SA_weight_i_16;
wire SA_fire_o_16;
wire [127:0] SA_data_o_16;
wire [7:0] SA_weight_o_16;
wire [31:0] SA_result_o_16;
wire SA_valid_o_16;

//fire
assign SA_fire_i_1 = SA_fire_in;
assign SA_fire_i_2 = SA_fire_o_1;
assign SA_fire_i_3 = SA_fire_o_2;
assign SA_fire_i_4 = SA_fire_o_3;
assign SA_fire_i_5 = SA_fire_o_4;
assign SA_fire_i_6 = SA_fire_o_5;
assign SA_fire_i_7 = SA_fire_o_6;
assign SA_fire_i_8 = SA_fire_o_7;
assign SA_fire_i_9 = SA_fire_o_8;
assign SA_fire_i_10 = SA_fire_o_9;
assign SA_fire_i_11 = SA_fire_o_10;
assign SA_fire_i_12 = SA_fire_o_11;
assign SA_fire_i_13 = SA_fire_o_12;
assign SA_fire_i_14 = SA_fire_o_13;
assign SA_fire_i_15 = SA_fire_o_14;
assign SA_fire_i_16 = SA_fire_o_15;
assign SA_fire_out = SA_fire_o_1;

//weight
assign SA_weight_i_1[7:0] = SA_weight_in[7:0];
assign SA_weight_i_2[7:0] = SA_weight_in[15:8];
assign SA_weight_i_3[7:0] = SA_weight_in[23:16];
assign SA_weight_i_4[7:0] = SA_weight_in[31:24];
assign SA_weight_i_5[7:0] = SA_weight_in[39:32];
assign SA_weight_i_6[7:0] = SA_weight_in[47:40];
assign SA_weight_i_7[7:0] = SA_weight_in[55:48];
assign SA_weight_i_8[7:0] = SA_weight_in[63:56];
assign SA_weight_i_9[7:0] = SA_weight_in[71:64];
assign SA_weight_i_10[7:0] = SA_weight_in[79:72];
assign SA_weight_i_11[7:0] = SA_weight_in[87:80];
assign SA_weight_i_12[7:0] = SA_weight_in[95:88];
assign SA_weight_i_13[7:0] = SA_weight_in[103:96];
assign SA_weight_i_14[7:0] = SA_weight_in[111:104];
assign SA_weight_i_15[7:0] = SA_weight_in[119:112];
assign SA_weight_i_16[7:0] = SA_weight_in[127:120];
assign SA_weight_out[7:0] = SA_weight_o_1;
assign SA_weight_out[15:8] = SA_weight_o_2;
assign SA_weight_out[23:16] = SA_weight_o_3;
assign SA_weight_out[31:24] = SA_weight_o_4;
assign SA_weight_out[39:32] = SA_weight_o_5;
assign SA_weight_out[47:40] = SA_weight_o_6;
assign SA_weight_out[55:48] = SA_weight_o_7;
assign SA_weight_out[63:56] = SA_weight_o_8;
assign SA_weight_out[71:64] = SA_weight_o_9;
assign SA_weight_out[79:72] = SA_weight_o_10;
assign SA_weight_out[87:80] = SA_weight_o_11;
assign SA_weight_out[95:88] = SA_weight_o_12;
assign SA_weight_out[103:96] = SA_weight_o_13;
assign SA_weight_out[111:104] = SA_weight_o_14;
assign SA_weight_out[119:112] = SA_weight_o_15;
assign SA_weight_out[127:120] = SA_weight_o_16;

//data 
assign SA_data_i_1[127:0] = SA_data_in[127:0];
assign SA_data_i_2[127:0] = SA_data_o_1[127:0];
assign SA_data_i_3[127:0] = SA_data_o_2[127:0];
assign SA_data_i_4[127:0] = SA_data_o_3[127:0];
assign SA_data_i_5[127:0] = SA_data_o_4[127:0];
assign SA_data_i_6[127:0] = SA_data_o_5[127:0];
assign SA_data_i_7[127:0] = SA_data_o_6[127:0];
assign SA_data_i_8[127:0] = SA_data_o_7[127:0];
assign SA_data_i_9[127:0] = SA_data_o_8[127:0];
assign SA_data_i_10[127:0] = SA_data_o_9[127:0];
assign SA_data_i_11[127:0] = SA_data_o_10[127:0];
assign SA_data_i_12[127:0] = SA_data_o_11[127:0];
assign SA_data_i_13[127:0] = SA_data_o_12[127:0];
assign SA_data_i_14[127:0] = SA_data_o_13[127:0];
assign SA_data_i_15[127:0] = SA_data_o_14[127:0];
assign SA_data_i_16[127:0] = SA_data_o_15[127:0];
assign SA_data_out[127:0] = SA_data_o_16[127:0];

//result
assign SA_result[31:0] = SA_result_o_1[31:0];
assign SA_result[63:32] = SA_result_o_2[31:0];
assign SA_result[95:64] = SA_result_o_3[31:0];
assign SA_result[127:96] = SA_result_o_4[31:0];
assign SA_result[159:128] = SA_result_o_5[31:0];
assign SA_result[191:160] = SA_result_o_6[31:0];
assign SA_result[223:192] = SA_result_o_7[31:0];
assign SA_result[255:224] = SA_result_o_8[31:0];
assign SA_result[287:256] = SA_result_o_9[31:0];
assign SA_result[319:288] = SA_result_o_10[31:0];
assign SA_result[351:320] = SA_result_o_11[31:0];
assign SA_result[383:352] = SA_result_o_12[31:0];
assign SA_result[415:384] = SA_result_o_13[31:0];
assign SA_result[447:416] = SA_result_o_14[31:0];
assign SA_result[479:448] = SA_result_o_15[31:0];
assign SA_result[511:480] = SA_result_o_16[31:0];

//valid
assign SA_valid[0] = SA_valid_o_1;
assign SA_valid[1] = SA_valid_o_2;
assign SA_valid[2] = SA_valid_o_3;
assign SA_valid[3] = SA_valid_o_4;
assign SA_valid[4] = SA_valid_o_5;
assign SA_valid[5] = SA_valid_o_6;
assign SA_valid[6] = SA_valid_o_7;
assign SA_valid[7] = SA_valid_o_8;
assign SA_valid[8] = SA_valid_o_9;
assign SA_valid[9] = SA_valid_o_10;
assign SA_valid[10] = SA_valid_o_11;
assign SA_valid[11] = SA_valid_o_12;
assign SA_valid[12] = SA_valid_o_13;
assign SA_valid[13] = SA_valid_o_14;
assign SA_valid[14] = SA_valid_o_15;
assign SA_valid[15] = SA_valid_o_16;

SA_col SA_col(
              .clk(clk),
              .rst_n(rst_n),
              .SA_col_fire_in(SA_col_fire_in),
              .SA_col_data_in(SA_col_data_in),
              .SA_col_weight_in(SA_col_weight_in),
              .SA_col_fire_out(SA_col_fire_out),
              .SA_col_data_out(SA_col_data_out),
              .SA_col_weight_out(SA_col_weight_out),
              .SA_col_result(SA_col_result),
              .SA_col_valid(SA_col_valid)
             );

     SA_col SA_array_1 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_1),
                  .SA_col_data_in(SA_data_i_1),
                  .SA_col_weight_in(SA_weight_i_1),
                  .SA_col_fire_out(SA_fire_o_1),
                  .SA_col_data_out(SA_data_o_1),
                  .SA_col_weight_out(SA_weight_o_1),
                  .SA_col_result(SA_result_o_1),
                  .SA_col_valid(SA_valid_o_1)
                 );
     SA_col SA_array_2 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_2),
                  .SA_col_data_in(SA_data_i_2),
                  .SA_col_weight_in(SA_weight_i_2),
                  .SA_col_fire_out(SA_fire_o_2),
                  .SA_col_data_out(SA_data_o_2),
                  .SA_col_weight_out(SA_weight_o_2),
                  .SA_col_result(SA_result_o_2),
                  .SA_col_valid(SA_valid_o_2)
                 );
     SA_col SA_array_3 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_3),
                  .SA_col_data_in(SA_data_i_3),
                  .SA_col_weight_in(SA_weight_i_3),
                  .SA_col_fire_out(SA_fire_o_3),
                  .SA_col_data_out(SA_data_o_3),
                  .SA_col_weight_out(SA_weight_o_3),
                  .SA_col_result(SA_result_o_3),
                  .SA_col_valid(SA_valid_o_3)
                 );
     SA_col SA_array_4 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_4),
                  .SA_col_data_in(SA_data_i_4),
                  .SA_col_weight_in(SA_weight_i_4),
                  .SA_col_fire_out(SA_fire_o_4),
                  .SA_col_data_out(SA_data_o_4),
                  .SA_col_weight_out(SA_weight_o_4),
                  .SA_col_result(SA_result_o_4),
                  .SA_col_valid(SA_valid_o_4)
                 );
     SA_col SA_array_5 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_5),
                  .SA_col_data_in(SA_data_i_5),
                  .SA_col_weight_in(SA_weight_i_5),
                  .SA_col_fire_out(SA_fire_o_5),
                  .SA_col_data_out(SA_data_o_5),
                  .SA_col_weight_out(SA_weight_o_5),
                  .SA_col_result(SA_result_o_5),
                  .SA_col_valid(SA_valid_o_5)
                 );
     SA_col SA_array_6 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_6),
                  .SA_col_data_in(SA_data_i_6),
                  .SA_col_weight_in(SA_weight_i_6),
                  .SA_col_fire_out(SA_fire_o_6),
                  .SA_col_data_out(SA_data_o_6),
                  .SA_col_weight_out(SA_weight_o_6),
                  .SA_col_result(SA_result_o_6),
                  .SA_col_valid(SA_valid_o_6)
                 );
     SA_col SA_array_7 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_7),
                  .SA_col_data_in(SA_data_i_7),
                  .SA_col_weight_in(SA_weight_i_7),
                  .SA_col_fire_out(SA_fire_o_7),
                  .SA_col_data_out(SA_data_o_7),
                  .SA_col_weight_out(SA_weight_o_7),
                  .SA_col_result(SA_result_o_7),
                  .SA_col_valid(SA_valid_o_7)
                 );
     SA_col SA_array_8 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_8),
                  .SA_col_data_in(SA_data_i_8),
                  .SA_col_weight_in(SA_weight_i_8),
                  .SA_col_fire_out(SA_fire_o_8),
                  .SA_col_data_out(SA_data_o_8),
                  .SA_col_weight_out(SA_weight_o_8),
                  .SA_col_result(SA_result_o_8),
                  .SA_col_valid(SA_valid_o_8)
                 );
     SA_col SA_array_9 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_9),
                  .SA_col_data_in(SA_data_i_9),
                  .SA_col_weight_in(SA_weight_i_9),
                  .SA_col_fire_out(SA_fire_o_9),
                  .SA_col_data_out(SA_data_o_9),
                  .SA_col_weight_out(SA_weight_o_9),
                  .SA_col_result(SA_result_o_9),
                  .SA_col_valid(SA_valid_o_9)
                 );
     SA_col SA_array_10 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_10),
                  .SA_col_data_in(SA_data_i_10),
                  .SA_col_weight_in(SA_weight_i_10),
                  .SA_col_fire_out(SA_fire_o_10),
                  .SA_col_data_out(SA_data_o_10),
                  .SA_col_weight_out(SA_weight_o_10),
                  .SA_col_result(SA_result_o_10),
                  .SA_col_valid(SA_valid_o_10)
                 );
     SA_col SA_array_11 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_11),
                  .SA_col_data_in(SA_data_i_11),
                  .SA_col_weight_in(SA_weight_i_11),
                  .SA_col_fire_out(SA_fire_o_11),
                  .SA_col_data_out(SA_data_o_11),
                  .SA_col_weight_out(SA_weight_o_11),
                  .SA_col_result(SA_result_o_11),
                  .SA_col_valid(SA_valid_o_11)
                 );
     SA_col SA_array_12 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_12),
                  .SA_col_data_in(SA_data_i_12),
                  .SA_col_weight_in(SA_weight_i_12),
                  .SA_col_fire_out(SA_fire_o_12),
                  .SA_col_data_out(SA_data_o_12),
                  .SA_col_weight_out(SA_weight_o_12),
                  .SA_col_result(SA_result_o_12),
                  .SA_col_valid(SA_valid_o_12)
                 );
     SA_col SA_array_13 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_13),
                  .SA_col_data_in(SA_data_i_13),
                  .SA_col_weight_in(SA_weight_i_13),
                  .SA_col_fire_out(SA_fire_o_13),
                  .SA_col_data_out(SA_data_o_13),
                  .SA_col_weight_out(SA_weight_o_13),
                  .SA_col_result(SA_result_o_13),
                  .SA_col_valid(SA_valid_o_13)
                 );
     SA_col SA_array_14 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_14),
                  .SA_col_data_in(SA_data_i_14),
                  .SA_col_weight_in(SA_weight_i_14),
                  .SA_col_fire_out(SA_fire_o_14),
                  .SA_col_data_out(SA_data_o_14),
                  .SA_col_weight_out(SA_weight_o_14),
                  .SA_col_result(SA_result_o_14),
                  .SA_col_valid(SA_valid_o_14)
                 );
     SA_col SA_array_15 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_15),
                  .SA_col_data_in(SA_data_i_15),
                  .SA_col_weight_in(SA_weight_i_15),
                  .SA_col_fire_out(SA_fire_o_15),
                  .SA_col_data_out(SA_data_o_15),
                  .SA_col_weight_out(SA_weight_o_15),
                  .SA_col_result(SA_result_o_15),
                  .SA_col_valid(SA_valid_o_15)
                 );
     SA_col SA_array_16 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i_16),
                  .SA_col_data_in(SA_data_i_16),
                  .SA_col_weight_in(SA_weight_i_16),
                  .SA_col_fire_out(SA_fire_o_16),
                  .SA_col_data_out(SA_data_o_16),
                  .SA_col_weight_out(SA_weight_o_16),
                  .SA_col_result(SA_result_o_16),
                  .SA_col_valid(SA_valid_o_16)
                 );
endmodule

