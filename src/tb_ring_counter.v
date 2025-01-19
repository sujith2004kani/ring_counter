module tb_ring_counter;
reg clk;
reg rst;
wire [3:0] out;
ring_counter uut (.clk(clk), .rst(rst), .out(out));
always begin
    #5 clk = ~clk;
end
initial begin
    clk = 0;
    rst = 0;
    rst = 1;
    #10;
    rst = 0;
    #100;
    $finish;
end
initial begin
    $monitor("Time = %0t | Reset = %b | Out = %b", $time, rst, out);
end
endmodule
