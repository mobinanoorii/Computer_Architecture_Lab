module decoder(x,z,y);
input z;
input [2:0] x;
output [7:0] y;
reg [7:0] y;

always @(z or x)
case({z,x})
4'b1000: y=8'b10000000;
4'b1001: y=8'b01000000;
4'b1010: y=8'b00100000;
4'b1011: y=8'b00010000;
4'b1100: y=8'b0000100;
4'b1101: y=8'b00000100;
4'b1110: y=8'b00000010;
4'b1111: y=8'b00000001;
default: y=0;
endcase

endmodule