

//iverilog -o "test_tb.vvp" test_tb.v test.v
//iverilog -o "compile_demo.vvp" compile_demo.v
//vvp compile_demo.vvp
`timescale 1ns/1ns
module compile_demo ;
reg clk;
initial begin
    clk = 1'b0;
    forever begin
        #10 clk = ~clk;
    end
end

initial begin
    # 1000 $finish;
end

initial begin
    $dumpfile("compile_demo.vcd");
    $dumpvars(0 , compile_demo);
end
  
endmodule