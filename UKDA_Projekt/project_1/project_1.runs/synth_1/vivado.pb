
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:062

00:00:062	
473.2852	
178.660Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/utils_1/imports/synth_1/BMP180_I2C_Com.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2a
_C:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/utils_1/imports/synth_1/BMP180_I2C_Com.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
j
Command: %s
53*	vivadotcl29
7synth_design -top BMP180_I2C_Com -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
12276Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1326.203 ; gain = 439.480
h px� 
�
synthesizing module '%s'638*oasys2
BMP180_I2C_Com2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
468@Z8-638h px� 
�
default block is never used226*oasys2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
978@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BMP180_I2C_Com2
02
12Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
468@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2	
ac1_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1358@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2	
ac2_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1368@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2	
ac3_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1378@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2	
ac4_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2	
ac5_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1398@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2	
ac6_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1408@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
b1_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1418@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
b2_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1428@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
mb_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1438@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
mc_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1448@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
md_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1458@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
reg_addr_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1598@Z8-6014h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1433.543 ; gain = 546.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1433.543 ; gain = 546.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1433.543 ; gain = 546.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1433.5432
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
w
Parsing XDC File [%s]
179*designutils26
2C:/Users/canyo/Desktop/UKDA/L3_file/constraint.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils26
2C:/Users/canyo/Desktop/UKDA/L3_file/constraint.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project24
2C:/Users/canyo/Desktop/UKDA/L3_file/constraint.xdc2"
 .Xil/BMP180_I2C_Com_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1484.2152
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0092

1484.2152
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
y
3inferred FSM for state register '%s' in module '%s'802*oasys2
actual_state_reg2
BMP180_I2C_ComZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                    init |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_              start_cond |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_               send_addr |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_               write_reg |                              100 |                              100
h p
x
� 
y
%s
*synth2a
_               read_data |                              101 |                              101
h p
x
� 
y
%s
*synth2a
_               stop_cond |                              110 |                              110
h p
x
� 
y
%s
*synth2a
_                 compute |                              111 |                              111
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
actual_state_reg2

sequential2
BMP180_I2C_ComZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
scl_internal_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
828@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
sda_internal_reg2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
898@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   8 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:23 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:23 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:23 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2

scl_OBUF2
1st2
scl_internal_reg__0/Q2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
828@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2

scl_OBUF2
2nd2
scl_internal_reg/Q2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1548@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2

sda_OBUF2
1st2
sda_internal_reg__0/Q2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
898@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2

sda_OBUF2
2nd2
sda_internal_reg/Q2Y
UC:/Users/canyo/Desktop/UKDA/project_1/project_1.srcs/sources_1/new/BMP180_I2C_Com.vhd2
1488@Z8-6859h px� 
2
%s
*synth2

Report Check Netlist: 
h p
x
� 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
� 
c
%s
*synth2K
I|      |Item              |Errors |Warnings |Status |Description       |
h p
x
� 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
� 
c
%s
*synth2K
I|1     |multi_driven_nets |      0|        2|Failed |Multi driven nets |
h p
x
� 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|      |Cell  |Count |
h px� 
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|1     |BUFG  |     2|
h px� 
1
%s*synth2
|2     |LUT1  |     1|
h px� 
1
%s*synth2
|3     |LUT2  |     1|
h px� 
1
%s*synth2
|4     |LUT3  |     3|
h px� 
1
%s*synth2
|5     |LUT4  |     3|
h px� 
1
%s*synth2
|6     |FDCE  |     3|
h px� 
1
%s*synth2
|7     |FDRE  |     3|
h px� 
1
%s*synth2
|8     |FDSE  |     1|
h px� 
1
%s*synth2
|9     |LD    |     2|
h px� 
1
%s*synth2
|10    |IBUF  |     3|
h px� 
1
%s*synth2
|11    |OBUF  |    33|
h px� 
1
%s*synth2
|12    |OBUFT |     1|
h px� 
1
%s*synth2
+------+------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1484.215 ; gain = 597.492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 4 critical warnings and 3 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:25 . Memory (MB): peak = 1484.215 ; gain = 546.820
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1484.215 ; gain = 597.492
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1484.2152
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
2Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1484.2152
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2G
E  A total of 2 instances were transformed.
  LD => LDCE: 2 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

a2238288Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
262
152
42
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:292

00:00:332

1484.2152

1006.949Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0032

1484.2152
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2Q
OC:/Users/canyo/Desktop/UKDA/project_1/project_1.runs/synth_1/BMP180_I2C_Com.dcpZ17-1381h px� 
�
%s4*runtcl2t
rExecuting : report_utilization -file BMP180_I2C_Com_utilization_synth.rpt -pb BMP180_I2C_Com_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Nov 27 11:28:18 2024Z17-206h px� 


End Record