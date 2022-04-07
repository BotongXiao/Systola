`timescale 1ns/1ns

module SA(clk, rst_n, SA_fire_in, SA_data_in, SA_weight_in, SA_fire_out, SA_data_out, SA_weight_out, SA_result);

input clk;
input rst_n;
input SA_fire_in;
input [31:0] SA_data_in;
input [31:0] SA_weight_in;
output SA_fire_out;
output [31:0] SA_data_out;
output [31:0] SA_weight_out;
output [511:0] SA_result;

SA_col SA_col(
              .clk(clk),
              .rst_n(rst_n),
              .SA_col_fire_in(SA_col_fire_in),
              .SA_col_data_in(SA_col_data_in),
              .SA_col_weight_in(SA_col_weight_in),
              .SA_col_fire_out(SA_col_fire_out),
              .SA_col_data_out(SA_col_data_out),
              .SA_col_weight_out(SA_col_weight_out),
              .SA_col_result(SA_col_result)
             );

wire [3:0] SA_fire_i;
wire [127:0] SA_data_i;
wire [31:0] SA_weight_i;
wire [3:0] SA_fire_o;
wire [127:0] SA_data_o;
wire [31:0] SA_weight_o;
wire [511:0] SA_result_o;

       SA_col SA_array[3:0](
                  .clk(clk),
                  .rst_n(rst_n),
                  .SA_col_fire_in(SA_fire_i),
                  .SA_col_data_in(SA_data_i),
                  .SA_col_weight_in(SA_weight_i),
                  .SA_col_fire_out(SA_fire_o),
                  .SA_col_data_out(SA_data_o),
                  .SA_col_weight_out(SA_weight_o),
                  .SA_col_result(SA_result_o)
                 );

//fire
assign SA_array[0].SA_col_fire_in = SA_fire_in;
assign SA_fire_out = SA_array[0].SA_col_fire_out;

genvar k;
generate
  for(k=0;k<3;k=k+1)
  begin:signal_array
     assign SA_array[k+1].SA_col_fire_in = SA_array[k].SA_col_fire_out;
     assign SA_array[k+1].SA_col_data_in = SA_array[k].SA_col_data_out;
  end
endgenerate

//weight
assign SA_weight_i = SA_weight_in;
assign SA_weight_out = SA_weight_o;
assign SA_result = SA_result_o;

//data
assign SA_array[0].SA_col_data_in[31:0] = SA_data_in[31:0];
assign SA_data_out[31:0] = SA_array[3].SA_col_data_out[31:0];


endmodule

/*

module SA_col(clk, rst_n, SA_col_fire_in, SA_col_data_in, SA_col_weight_in, SA_col_fire_out, SA_col_data_out, SA_col_weight_out, SA_col_result);

input clk;
input rst_n;
input SA_col_fire_in;
input [31:0] SA_col_data_in;
input [7:0] SA_col_weight_in;
output SA_col_fire_out;
output [31:0] SA_col_data_out;
output [7:0] SA_col_weight_out;
output [127:0] SA_col_result;

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


wire [3:0] fire_i;
wire [31:0] data_i;
wire [31:0] weight_i;
wire [3:0] fire_o;
wire [31:0] data_o;
wire [31:0] weight_o;
wire [127:0] result_o;

     PE PE_col[3:0] (
                  .clk(clk),
                  .rst_n(rst_n),
                  .fire_in(fire_i),
                  .data_in(data_i),
                  .weight_in(weight_i),
                  .fire_out(fire_o),
                  .data_out(data_o),
                  .weight_out(weight_o),
                  .result(result_o)
                 );


//fire
assign PE_col[0].fire_in = SA_col_fire_in;
assign SA_col_fire_out = PE_col[0].fire_out;

genvar i;
generate
  for(i=0;i<3;i=i+1)
  begin:signal_col
     assign PE_col[i+1].fire_in = PE_col[i].fire_out;
     assign PE_col[i+1].weight_in = PE_col[i].weight_out;
  end
endgenerate

//data
assign data_i = SA_col_data_in;
assign SA_col_data_out = data_o;
assign SA_col_result = result_o;
//weight
assign PE_col[0].weight_in[7:0] = SA_col_weight_in[7:0];
assign SA_col_weight_out[7:0] = PE_col[3].weight_out[7:0];

endmodule

*/
