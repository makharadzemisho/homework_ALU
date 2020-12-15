`timescale 1ns / 1ps

module ALU_testbench;

	// Inputs
	reg [31:0] port_A;
	reg [31:0] port_B;
	reg [3:0] cmd;
	reg [1:0] OP;

	// Outputs
	wire [31:0] ALU_output;
	wire [3:0] ALU_Flags;

	// Instantiate the Unit Under Test (UUT)
	ALU_Homework uut (
		.port_A(port_A), 
		.port_B(port_B), 
		.cmd(cmd), 
		.OP(OP), 
		.ALU_output(ALU_output), 
		.ALU_Flags(ALU_Flags)
	);

	initial begin
		// Initialize Inputs
		port_A = 0;
		port_B = 0;
		cmd = 0;
		OP = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
      port_A = 32'h11111;
		port_B = 32'h00001; 
		OP=0;
		
		cmd = 1;
		#50;	
		cmd = 2;
		#50;	
		cmd = 3;
		#50;	
		cmd = 4;
		#50;	
		cmd = 10;
		#50;	
		cmd = 12;
		#50;		
		OP=1;
		port_A=15;
		port_B=14;
		cmd=0;
		#50;	
		cmd[3] = 1;
		
		#50;
		OP=2;
		cmd = 4'b0100;
		port_A = 32'hFFFFFFFF;
		port_B = 20;

	end
      
endmodule

