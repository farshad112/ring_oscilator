# ring_oscillator
Parameterized ring oscillator design in verilog. A simple testbench is developed using SystemVerilog. The test is performed by comparing measured and expected frequency computed using the equation: f= 1/(2*t*n). where n= number of stage of inverter and t= delay of a single inverter.

# Project Structure
This project is organized in following manner,
<br/>
<ui>![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) ring_oscillator <br/>
&nbsp;&nbsp;|   
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) doc : contains project documents like testcase plan, verification plan etc. <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;<ui>![docxIcon](http://icons.iconarchive.com/icons/treetog/file-type/16/docx-win-icon.png) ring_osc_testcase_plan.docx <br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) rtl : contains rtl code of ring oscillator  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) verilog : contains verilog code of Ring Oscillator <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->![Verilog File](http://icons.iconarchive.com/icons/untergunter/leaf-mimes/16/text-x-generic-icon.png) ring_oscillator.v <br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) scripts : contains scripts for running tests.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->![shell script](http://icons.iconarchive.com/icons/guillendesign/variations-2/16/Script-Console-icon.png) runscript.ps1 : script for ruuning tests with Questasim or modelsim on windows <br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) sim : contains simulation work directory. This is where you should open a terminal to run your tests.<br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) spec : contains RTL design specification.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;<ui>![docxIcon](http://icons.iconarchive.com/icons/treetog/file-type/16/docx-win-icon.png) ring_oscillator_design.docx <br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) tb: Contains Simple SystemVerilog testbench files.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;![Verilog File](http://icons.iconarchive.com/icons/untergunter/leaf-mimes/16/text-x-generic-icon.png) ring_osc_defines.sv <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;![Verilog File](http://icons.iconarchive.com/icons/untergunter/leaf-mimes/16/text-x-generic-icon.png) simple_tb.sv <br/>  
