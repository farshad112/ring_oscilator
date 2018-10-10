//////////////////////////////////////////////////////////////////////
// File Name: ring_oscillator.v
// Author: Farshad
// Email: farshad112@gmail.com
// Date Created: 9-Oct-2018
// Description: Parameterized Ring oscillator
// License: MIT opensource License v3.0
// Copyright (c) 2018, Farshad
/* ###################### License Begin ##############################
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
######################### License End ################################ */
///////////////////////////////////////////////////////////////////// 

`timescale 1ns/1ps

module ring_oscillator#(
                        parameter NO_STAGES=3,      // No of inverter stage
                        parameter INV_DELAY_ns=2       // Delay of single inverter in ns

                        )(
                            input wire en,
                            output wire clk_out
                        );    
    
    wire [NO_STAGES:0] wi;
    assign wi[0] = en ? wi[NO_STAGES] : 0;
    assign clk_out = en ? wi[NO_STAGES] : 0;
    genvar i;
    generate
        for(i = 0; i < NO_STAGES; i = i+1) begin
            if(i==0) begin
                `ifndef R_OSC_SYNTHESIS
                    not #(INV_DELAY_ns) (wi[i+1], wi[0]);
                `else
                    not (wi[i+1], wi[0]);
                `endif        
            end
            else if(i>= NO_STAGES) begin
                `ifndef R_OSC_SYNTHESIS
                    not #(INV_DELAY_ns) (wi[i+1], wi[i]);
                `else
                    not (wi[i+1], wi[i]);
                `endif    
            end
            else begin
                `ifndef R_OSC_SYNTHESIS
                    not #(INV_DELAY_ns) (wi[i+1], wi[i]);
                `else    
                    not (wi[i+1], wi[i]);
                `endif    
            end
        end
    endgenerate   
    
endmodule                        