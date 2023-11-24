module mux41(i,sel,y);
input [3:0] i;
input [1:0] sel;
output reg y;
always@(*)
    begin
    case (sel)
    2'b00:y=i[0];
    2'b01:y=i[1];
    2'b10:y=i[2];
    2'b11:y=i[3];
    default:y=1'b0;
    endcase
    end
endmodule

module mux81(i,sel,y);
input [7:0] i;
input [2:0] sel;
output reg y;
wire y1,y2;

mux41 m1(i[3:0],sel[1:0],y1);
mux41 m2(i[7:4],sel[2:1],y2);

always@(*)
    begin
    if(sel==0)
    y=y1;
    else
    y=y2;
    end
    
endmodule
