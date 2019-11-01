`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:41:52 10/22/2019
// Design Name:   buffer_ram_dp
// Module Name:   C:/Users/UECCI/Documents/GitHub/SPARTAN6-ATMEGA-MAX5864/lab/P001-ProyectoCamara/src/ramdp/TB_ram.v
// Project Name:  P001-ProyectoCamara
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: buffer_ram_dp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_ram;

	// Inputs
	reg clk;
	reg [16:0] addr_in;
	reg [15:0] data_in;
	reg regwrite;
	reg [16:0] addr_out;
	reg regread;

	// Outputs
	wire [15:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	buffer_ram_dp uut (
		.clk(clk), 
		.addr_in(addr_in), 
		.data_in(data_in), 
		.regwrite(regwrite), 
		.data_out(data_out), 
		.addr_out(addr_out), 
		.regread(regread)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		addr_in = 0;
		data_in = 0;
		regwrite = 0;
		addr_out = 0;
		regread = 0;

#100;
//-------------------------Lectura de los valores por defecto---------------------
//Lee los datos cada medio ciclo de reloj
//Lee los datos de los registros 0 a 99
        regread=1;
	for (addr_out = 0; addr_out <100 ; addr_out = addr_out + 1) begin
				 #1 $display("el valor de memoria %d =  %d", addr_out,data_out) ;
	end 
 //--------------------------Escritura de datos-------------------------------------
 //Escribe los datos cada flanco de bajada
 //Escribe los datos de los registros 0 a 100
		  regread=0;
		  regwrite=1;
		  data_in=234;
		  addr_out=0;
		  addr_in=0;
		for (addr_in = 0; addr_in <100 ; addr_in = addr_in + 1) begin//Escribe 
					#1 $display("escirbir en la memoria %d  el valor de %d", addr_in,data_in);
					#1 data_in=data_in+1;
	end 
//------------------------Lectura de los nuevos datos----------------------------
//Lee los datos cada 2 flancos de bajada
//Lee los datos de los registros 0 a 149
//si la memoria esta bien de 0 a 99 estaran los datos escritos en la parte anterior
//y de 100 a 149 estaran los datos que posee la memoria por defecto
		 data_in=0;
		 addr_out=0;
		 addr_in=0;
		 regread=1;
		 regwrite=0;
	for (addr_out = 0; addr_out <150 ; addr_out = addr_out + 1) begin
	@(posedge clk) #1	
	#1 $display("el valor de memoria %d =  %d", addr_out,data_out) ;
	end 

	end
    always #1 clk= ~clk;  
endmodule