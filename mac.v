module mac(
   input wire clk,rst,enable,
   input wire [7:0]in_A,
     output reg [7:0] acc
);

always@(posedge clk)begin
    if(!rst)begin
        acc<= 8'b0;
    end else begin
        if(enable)begin
           acc<= acc+(in_A* 8'd4);  //accumulator
        end else begin
           acc<=acc;   //hold
        end
    end
end
endmodule
