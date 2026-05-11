module tb(clk,rst);
    
    output reg clk, rst; // Declare clk and rst as reg types for simulation purposes
    top risc_v(clk,rst, checker1, checker2, checker3, checker4, checker5, checker6, checker7, checker8, checker9, checker10, checker11, checker12, checker13, checker14, checker15,checker16, checker17, checker18, checker19, checker20, checker21, checker22, checker23, checker24, checker25,checker26, checker27, checker28, checker29, checker30, checker31);
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end
    // Reset generation
    initial begin
        rst = 1; // Assert reset
        #10 rst = 0; // Deassert reset after 10 time units
    end
    // Simulation time
    initial begin
        #10000; // Run the simulation for 1000 time units
        $stop; // End the simulation
    end
endmodule