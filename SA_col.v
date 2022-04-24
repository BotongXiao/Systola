module SA_col(clk, rst_n, SA_col_fire_in, SA_col_data_in, SA_col_weight_in, SA_col_fire_out, SA_col_data_out, SA_col_weight_out, SA_col_result, SA_col_valid);

input clk;
input rst_n;
input SA_col_fire_in;
input [127:0] SA_col_data_in;
input [7:0] SA_col_weight_in;
output SA_col_fire_out;
output [127:0] SA_col_data_out;
output [7:0] SA_col_weight_out;
output reg [31:0] SA_col_result;
output reg SA_col_valid;


wire [15:0] fire;
wire [15:0] fire_valid;

wire signed[7:0] weight_in;
wire signed[7:0] data_in;
wire fire_in;
wire [7:0] weight_out;
wire [7:0] data_out;
wire fire_out;
wire [31:0] result;


wire fire_i_1;
wire [7:0] data_i_1;
wire [7:0] weight_i_1;
wire fire_o_1;
wire [7:0] data_o_1;
wire [7:0] weight_o_1;
wire [31:0] result_o_1;

wire fire_i_2;
wire [7:0] data_i_2;
wire [7:0] weight_i_2;
wire fire_o_2;
wire [7:0] data_o_2;
wire [7:0] weight_o_2;
wire [31:0] result_o_2;

wire fire_i_3;
wire [7:0] data_i_3;
wire [7:0] weight_i_3;
wire fire_o_3;
wire [7:0] data_o_3;
wire [7:0] weight_o_3;
wire [31:0] result_o_3;

wire fire_i_4;
wire [7:0] data_i_4;
wire [7:0] weight_i_4;
wire fire_o_4;
wire [7:0] data_o_4;
wire [7:0] weight_o_4;
wire [31:0] result_o_4;

wire fire_i_5;
wire [7:0] data_i_5;
wire [7:0] weight_i_5;
wire fire_o_5;
wire [7:0] data_o_5;
wire [7:0] weight_o_5;
wire [31:0] result_o_5;

wire fire_i_6;
wire [7:0] data_i_6;
wire [7:0] weight_i_6;
wire fire_o_6;
wire [7:0] data_o_6;
wire [7:0] weight_o_6;
wire [31:0] result_o_6;

wire fire_i_7;
wire [7:0] data_i_7;
wire [7:0] weight_i_7;
wire fire_o_7;
wire [7:0] data_o_7;
wire [7:0] weight_o_7;
wire [31:0] result_o_7;

wire fire_i_8;
wire [7:0] data_i_8;
wire [7:0] weight_i_8;
wire fire_o_8;
wire [7:0] data_o_8;
wire [7:0] weight_o_8;
wire [31:0] result_o_8;

wire fire_i_9;
wire [7:0] data_i_9;
wire [7:0] weight_i_9;
wire fire_o_9;
wire [7:0] data_o_9;
wire [7:0] weight_o_9;
wire [31:0] result_o_9;

wire fire_i_10;
wire [7:0] data_i_10;
wire [7:0] weight_i_10;
wire fire_o_10;
wire [7:0] data_o_10;
wire [7:0] weight_o_10;
wire [31:0] result_o_10;

wire fire_i_11;
wire [7:0] data_i_11;
wire [7:0] weight_i_11;
wire fire_o_11;
wire [7:0] data_o_11;
wire [7:0] weight_o_11;
wire [31:0] result_o_11;

wire fire_i_12;
wire [7:0] data_i_12;
wire [7:0] weight_i_12;
wire fire_o_12;
wire [7:0] data_o_12;
wire [7:0] weight_o_12;
wire [31:0] result_o_12;

wire fire_i_13;
wire [7:0] data_i_13;
wire [7:0] weight_i_13;
wire fire_o_13;
wire [7:0] data_o_13;
wire [7:0] weight_o_13;
wire [31:0] result_o_13;

wire fire_i_14;
wire [7:0] data_i_14;
wire [7:0] weight_i_14;
wire fire_o_14;
wire [7:0] data_o_14;
wire [7:0] weight_o_14;
wire [31:0] result_o_14;

wire fire_i_15;
wire [7:0] data_i_15;
wire [7:0] weight_i_15;
wire fire_o_15;
wire [7:0] data_o_15;
wire [7:0] weight_o_15;
wire [31:0] result_o_15;

wire fire_i_16;
wire [7:0] data_i_16;
wire [7:0] weight_i_16;
wire fire_o_16;
wire [7:0] data_o_16;
wire [7:0] weight_o_16;
wire [31:0] result_o_16;


//fire
assign fire_i_1 = SA_col_fire_in;
assign fire_i_2 = fire_o_1;
assign fire_i_3 = fire_o_2;
assign fire_i_4 = fire_o_3;
assign fire_i_5 = fire_o_4;
assign fire_i_6 = fire_o_5;
assign fire_i_7 = fire_o_6;
assign fire_i_8 = fire_o_7;
assign fire_i_9 = fire_o_8;
assign fire_i_10 = fire_o_9;
assign fire_i_11 = fire_o_10;
assign fire_i_12 = fire_o_11;
assign fire_i_13 = fire_o_12;
assign fire_i_14 = fire_o_13;
assign fire_i_15 = fire_o_14;
assign fire_i_16 = fire_o_15;
assign SA_col_fire_out = fire_o_1;

//weight
assign weight_i_1 = SA_col_weight_in;
assign weight_i_2 = weight_o_1;
assign weight_i_3 = weight_o_2;
assign weight_i_4 = weight_o_3;
assign weight_i_5 = weight_o_4;
assign weight_i_6 = weight_o_5;
assign weight_i_7 = weight_o_6;
assign weight_i_8 = weight_o_7;
assign weight_i_9 = weight_o_8;
assign weight_i_10 = weight_o_9;
assign weight_i_11 = weight_o_10;
assign weight_i_12 = weight_o_11;
assign weight_i_13 = weight_o_12;
assign weight_i_14 = weight_o_13;
assign weight_i_15 = weight_o_14;
assign weight_i_16 = weight_o_15;
assign SA_col_weight_out = weight_o_16;

//data_in
assign data_i_1 = SA_col_data_in[7:0];
assign data_i_2 = SA_col_data_in[15:8];
assign data_i_3 = SA_col_data_in[23:16];
assign data_i_4 = SA_col_data_in[31:24];
assign data_i_5 = SA_col_data_in[39:32];
assign data_i_6 = SA_col_data_in[47:40];
assign data_i_7 = SA_col_data_in[55:48];
assign data_i_8 = SA_col_data_in[63:56];
assign data_i_9 = SA_col_data_in[71:64];
assign data_i_10 = SA_col_data_in[79:72];
assign data_i_11 = SA_col_data_in[87:80];
assign data_i_12 = SA_col_data_in[95:88];
assign data_i_13 = SA_col_data_in[103:96];
assign data_i_14 = SA_col_data_in[111:104];
assign data_i_15 = SA_col_data_in[119:112];
assign data_i_16 = SA_col_data_in[127:120];

//data_out
assign SA_col_data_out[7:0] = data_o_1;
assign SA_col_data_out[15:8] = data_o_2;
assign SA_col_data_out[23:16] = data_o_3;
assign SA_col_data_out[31:24] = data_o_4;
assign SA_col_data_out[39:32] = data_o_5;
assign SA_col_data_out[47:40] = data_o_6;
assign SA_col_data_out[55:48] = data_o_7;
assign SA_col_data_out[63:56] = data_o_8;
assign SA_col_data_out[71:64] = data_o_9;
assign SA_col_data_out[79:72] = data_o_10;
assign SA_col_data_out[87:80] = data_o_11;
assign SA_col_data_out[95:88] = data_o_12;
assign SA_col_data_out[103:96] = data_o_13;
assign SA_col_data_out[111:104] = data_o_14;
assign SA_col_data_out[119:112] = data_o_15;
assign SA_col_data_out[127:120] = data_o_16;


assign fire = {fire_o_16, fire_o_15, fire_o_14, fire_o_13, fire_o_12, fire_o_11, fire_o_10, fire_o_9, fire_o_8, fire_o_7, fire_o_6, fire_o_5, fire_o_4, fire_o_3, fire_o_2, fire_o_1};

assign fire_valid = {fire_i_16, fire_i_15, fire_i_14, fire_i_13, fire_i_12, fire_i_11, fire_i_10, fire_i_9, fire_i_8, fire_i_7, fire_i_6, fire_i_5, fire_i_4, fire_i_3, fire_i_2, fire_i_1};


//valid
always@(posedge clk or negedge rst_n)
begin
   if(!rst_n)
      SA_col_valid <= 1'b0;
   else if(fire_valid == 16'hfffe)
      SA_col_valid <= 1'b1;
   else if(fire == 16'h7fff)
      SA_col_valid <= 1'b0;
end


//result                 
always@(fire or SA_col_valid)
begin
   if(SA_col_valid)
     begin
     casex(fire)
       16'bxxxxxxxxxxxxxxx0 : SA_col_result = result_o_1;
       16'bxxxxxxxxxxxxxx01 : SA_col_result = result_o_2;
       16'bxxxxxxxxxxxxx011 : SA_col_result = result_o_3;
       16'bxxxxxxxxxxxx0111 : SA_col_result = result_o_4;
       16'bxxxxxxxxxxx01111 : SA_col_result = result_o_5;
       16'bxxxxxxxxxx011111 : SA_col_result = result_o_6;
       16'bxxxxxxxxx0111111 : SA_col_result = result_o_7;
       16'bxxxxxxxx01111111 : SA_col_result = result_o_8;
       16'bxxxxxxx011111111 : SA_col_result = result_o_9;
       16'bxxxxxx0111111111 : SA_col_result = result_o_10;
       16'bxxxxx01111111111 : SA_col_result = result_o_11;
       16'bxxxx011111111111 : SA_col_result = result_o_12;
       16'bxxx0111111111111 : SA_col_result = result_o_13;
       16'bxx01111111111111 : SA_col_result = result_o_14;
       16'bx011111111111111 : SA_col_result = result_o_15;
       16'b0111111111111111 : SA_col_result = result_o_16;
       default : SA_col_result = 32'd0;       
     endcase            
     end
   else
       SA_col_result = 32'd0;                   
end


PE PE(
      .clk(clk),
      .rst_n(rst_n),
      .fire_in(fire_in),
      .data_in(data_in),
      .weight_in(weight_in),
      .fire_out(fire_out),
      .data_out(data_out),
      .weight_out(weight_out),
      .result(result)
     );

     PE PE_col_1 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_1),
                  .data_in(data_i_1),
                  .weight_in(weight_i_1),
                  .fire_out(fire_o_1),
                  .data_out(data_o_1),
                  .weight_out(weight_o_1),
                  .result(result_o_1)
                 );
     PE PE_col_2 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_2),
                  .data_in(data_i_2),
                  .weight_in(weight_i_2),
                  .fire_out(fire_o_2),
                  .data_out(data_o_2),
                  .weight_out(weight_o_2),
                  .result(result_o_2)
                 );
     PE PE_col_3 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_3),
                  .data_in(data_i_3),
                  .weight_in(weight_i_3),
                  .fire_out(fire_o_3),
                  .data_out(data_o_3),
                  .weight_out(weight_o_3),
                  .result(result_o_3)
                 );
     PE PE_col_4 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_4),
                  .data_in(data_i_4),
                  .weight_in(weight_i_4),
                  .fire_out(fire_o_4),
                  .data_out(data_o_4),
                  .weight_out(weight_o_4),
                  .result(result_o_4)
                 );
     PE PE_col_5 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_5),
                  .data_in(data_i_5),
                  .weight_in(weight_i_5),
                  .fire_out(fire_o_5),
                  .data_out(data_o_5),
                  .weight_out(weight_o_5),
                  .result(result_o_5)
                 );
     PE PE_col_6 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_6),
                  .data_in(data_i_6),
                  .weight_in(weight_i_6),
                  .fire_out(fire_o_6),
                  .data_out(data_o_6),
                  .weight_out(weight_o_6),
                  .result(result_o_6)
                 );
     PE PE_col_7 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_7),
                  .data_in(data_i_7),
                  .weight_in(weight_i_7),
                  .fire_out(fire_o_7),
                  .data_out(data_o_7),
                  .weight_out(weight_o_7),
                  .result(result_o_7)
                 );
     PE PE_col_8 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_8),
                  .data_in(data_i_8),
                  .weight_in(weight_i_8),
                  .fire_out(fire_o_8),
                  .data_out(data_o_8),
                  .weight_out(weight_o_8),
                  .result(result_o_8)
                 );
     PE PE_col_9 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_9),
                  .data_in(data_i_9),
                  .weight_in(weight_i_9),
                  .fire_out(fire_o_9),
                  .data_out(data_o_9),
                  .weight_out(weight_o_9),
                  .result(result_o_9)
                 );
     PE PE_col_10 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_10),
                  .data_in(data_i_10),
                  .weight_in(weight_i_10),
                  .fire_out(fire_o_10),
                  .data_out(data_o_10),
                  .weight_out(weight_o_10),
                  .result(result_o_10)
                 );
     PE PE_col_11 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_11),
                  .data_in(data_i_11),
                  .weight_in(weight_i_11),
                  .fire_out(fire_o_11),
                  .data_out(data_o_11),
                  .weight_out(weight_o_11),
                  .result(result_o_11)
                 );
     PE PE_col_12 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_12),
                  .data_in(data_i_12),
                  .weight_in(weight_i_12),
                  .fire_out(fire_o_12),
                  .data_out(data_o_12),
                  .weight_out(weight_o_12),
                  .result(result_o_12)
                 );
     PE PE_col_13 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_13),
                  .data_in(data_i_13),
                  .weight_in(weight_i_13),
                  .fire_out(fire_o_13),
                  .data_out(data_o_13),
                  .weight_out(weight_o_13),
                  .result(result_o_13)
                 );
     PE PE_col_14 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_14),
                  .data_in(data_i_14),
                  .weight_in(weight_i_14),
                  .fire_out(fire_o_14),
                  .data_out(data_o_14),
                  .weight_out(weight_o_14),
                  .result(result_o_14)
                 );
     PE PE_col_15 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_15),
                  .data_in(data_i_15),
                  .weight_in(weight_i_15),
                  .fire_out(fire_o_15),
                  .data_out(data_o_15),
                  .weight_out(weight_o_15),
                  .result(result_o_15)
                 );
     PE PE_col_16 (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i_16),
                  .data_in(data_i_16),
                  .weight_in(weight_i_16),
                  .fire_out(fire_o_16),
                  .data_out(data_o_16),
                  .weight_out(weight_o_16),
                  .result(result_o_16)
                 );

endmodule
