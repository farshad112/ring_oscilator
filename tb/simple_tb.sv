//////////////////////////////////////////////////////////////////////
// File Name: simple_tb.sv
// Author: Farshad
// Email: farshad112@gmail.com
// Date Created: 9-Oct-2018
// Description: Parameterized Ring oscillator Testbench
// License: MIT opensource License v3.0
// Copyright (c) 2018, Farshad
/* ###################### License Begin ##############################
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
######################### License End ################################ */
///////////////////////////////////////////////////////////////////// 
`timescale 1ns/1ps
`include "ring_osc_defines.sv"

module ring_osc_tb();
    logic en_i;
    logic clk_o;

    // local variables
    real prev_time = 0;     // store previous clk posedge
    real curr_time = 0;     // store current clk posedge
    bit first_sample;       // Update measurement flag 
    real clk_freq;          // clk freq (measured)
    real exp_clk_freq;      // expected clk freq (calculated from equation)
    
    parameter NO_INV_STAGE=3;
    
    ring_oscillator #(
                        .NO_STAGES(NO_INV_STAGE),
                        .INV_DELAY_ns(`INVERTER_DELAY_NS)
                    ) DUT (
                        .en(en_i),
                        .clk_out(clk_o)
                    );
                     
    initial begin
        en_i = 0;
        #10ns;
        en_i = 1;
        #20ns;
        $monitor("@:%t clk_out:%0b", $time, clk_o);
        
        #100ns;
        $finish();
    end

    
    // Measure output clk freq
    always @(posedge clk_o) begin
        if(!first_sample) begin
            prev_time = $time;
            first_sample = 1;
        end
        else begin
            curr_time = $time;
            // measure clk freq in hz
            clk_freq = (1.0 / (curr_time - prev_time)) * 1e9;
            //$display("TimeDiff: %0e", (curr_time - prev_time));
            //$display("@:%t clk_freq: %0e", $time, clk_freq);
            // calculate expected clk freq in hz
            exp_clk_freq = ( 1.0/ (2 * NO_INV_STAGE * `INVERTER_DELAY_NS) ) * 1e9;  
            //$display("@:%t exp clk_freq: %0e", $time, exp_clk_freq);
            
            // freq check
            if(exp_clk_freq != clk_freq) begin
                $error("Expected and Measured Freq does not match. Expected Freq: %0e but Measured Freq: %0e", exp_clk_freq, clk_freq);
            end
            // update time 
            prev_time = curr_time;
        end
    end
    
endmodule 