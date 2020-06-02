module alarmSound (input logic clk, input logic rst, input logic d, output logic q);

	
	//This module will simulate a square wave regarding the internal 50MHz clock
	
	int counter = 0;

	
	always@(posedge clk)
	
	//If d is active, then the set minutes and set hours is equal to the current minutes and hours on the clock
	if (d)
	
	begin
	
	if (counter < 25)
	
	begin
	counter <= counter + 1;
	end
	
	if (counter > 24 || rst)
	
	begin
	counter <= 0;
	q = 0;
	end
	
	//If the counter according to clock is even, our output (wave) is 0
	if (counter % 2 == 0)
	begin
	q = 0;
	end
	
	//If the counter according to clock is odd, our putput (wave) is 1, completing one period of the square wave
	if (counter % 2 == 1)
	begin
	q = 1;
	end
	
	
	
	
	
	end
	
	


endmodule
