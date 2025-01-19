module ring_counter (
    input clk,    
    input rst,        
    output reg [3:0] out    
);

always @(posedge clk or posedge rst) 
    begin
    if (rst)
        out <= 4'b0001;  
    else
        out <= {out[2:0],out[3]};
end
endmodule