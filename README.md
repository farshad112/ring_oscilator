# ring_oscillator
Parameterized ring oscillator design in verilog. A simple testbench is developed using SystemVerilog. The test is performed by comparing measured and expected frequency computed using the equation: f= 1/(2*t*n). where n= number of stage of inverter and t= delay of a single inverter.

# Project Structure
This project is organized in following manner,
<br/>
<ui>![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png)ring_oscillator <br/>
&nbsp;&nbsp;|   
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) doc : contains project documents like testcase plan, verification plan etc. <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|->&nbsp;&nbsp;<ui>![docxIcon](http://icons.iconarchive.com/icons/treetog/file-type/16/docx-win-icon.png) ring_osc_testcase_plan.docx <br/>
&nbsp;&nbsp;|->&nbsp;&nbsp;![FolderIcon](http://icons.iconarchive.com/icons/paomedia/small-n-flat/16/folder-icon.png) rtl : contains rtl code of ring oscillator  
