
?
Command: %s
53*	vivadotcl2
route_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7z010Z17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7z010Z17-349h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
route_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
�Combinatorial Loop Alert: 2 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2,
 "(
COPY/cx2/nor1_outCOPY/cx2/nor1_out2�
 "B
COPY/cx2/nor1_out_inferred_i_1	COPY/cx2/nor1_out_inferred_i_1"B
COPY/cx2/nor2_out_inferred_i_1	COPY/cx2/nor2_out_inferred_i_121
 +DRC|Netlist|Design Level|Combinatorial Loop8ZLUTLP-1h px� 
�
�Combinatorial Loop Alert: 2 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2
 "
	M/cm/nor2	M/cm/nor22j
 "2
M/cm/nor2_inferred_i_1	M/cm/nor2_inferred_i_1"2
M/cm/nor3_inferred_i_1	M/cm/nor3_inferred_i_121
 +DRC|Netlist|Design Level|Combinatorial Loop8ZLUTLP-1h px� 
�
�Combinatorial Loop Alert: 469 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2.
 "*
B/cb/CB_Send_out_aB/cb/CB_Send_out_a2�
 "2
B/cb/cf/Ack_out_INST_0	B/cb/cf/Ack_out_INST_0",
PS/c/Ack_out_INST_0	PS/c/Ack_out_INST_0"6
M/cm/cj_a/Ack_out_INST_0	M/cm/cj_a/Ack_out_INST_0"6
M/cm/cj_b/Ack_out_INST_0	M/cm/cj_b/Ack_out_INST_0"<
COPY/cx2/cf1/Ack_out_INST_0	COPY/cx2/cf1/Ack_out_INST_0"4
FP/ce/cf/Ack_out_INST_0	FP/ce/cf/Ack_out_INST_0"2
MMCAM/c/Ack_out_INST_0	MMCAM/c/Ack_out_INST_0"&
c/Ack_out_INST_0	c/Ack_out_INST_0",
MA/c/Ack_out_INST_0	MA/c/Ack_out_INST_0":
MMRAM/ce/cf/Ack_out_INST_0	MMRAM/ce/cf/Ack_out_INST_0"8
B/cb/CB_Send_out_a_INST_0	B/cb/CB_Send_out_a_INST_0"8
B/cb/CB_Send_out_b_INST_0	B/cb/CB_Send_out_b_INST_0",
M/cm/cj_b/CP_INST_0	M/cm/cj_b/CP_INST_0",
M/cm/cj_a/CP_INST_0	M/cm/cj_a/CP_INST_0"=
M/cm/cj_b/Send_out_INST_0	M/cm/cj_b/Send_out_INST_0:..."
(the first 15 of 469 listed)21
 +DRC|Netlist|Design Level|Combinatorial Loop8ZLUTLP-1h px� 
Y
DRC finished with %s
79*	vivadotcl2
0 Errors, 3 Critical WarningsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
D

Starting %s Task
103*constraints2	
RoutingZ18-103h px� 
k
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
8Z35-254h px� 
L

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101h px� 
I
%s*common20
.Phase 1 Build RT Design | Checksum: 26a34fe36
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2101.375 ; gain = 2.473h px� 
R

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101h px� 
{
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64h px� 
W

Phase %s%s
101*constraints2
2.1 2
Fix Topology ConstraintsZ18-101h px� 
T
%s*common2;
9Phase 2.1 Fix Topology Constraints | Checksum: 26a34fe36
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2129.258 ; gain = 30.355h px� 
P

Phase %s%s
101*constraints2
2.2 2
Pre Route CleanupZ18-101h px� 
M
%s*common24
2Phase 2.2 Pre Route Cleanup | Checksum: 26a34fe36
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2129.258 ; gain = 30.355h px� 
O
%s*common26
4Phase 2 Router Initialization | Checksum: 252746d32
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2166.652 ; gain = 67.750h px� 
K

Phase %s%s
101*constraints2
3 2
Global RoutingZ18-101h px� 
H
%s*common2/
-Phase 3 Global Routing | Checksum: 252746d32
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2166.652 ; gain = 67.750h px� 
L

Phase %s%s
101*constraints2
4 2
Initial RoutingZ18-101h px� 
W

Phase %s%s
101*constraints2
4.1 2
Initial Net Routing PassZ18-101h px� 
T
%s*common2;
9Phase 4.1 Initial Net Routing Pass | Checksum: 1f43f2777
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
I
%s*common20
.Phase 4 Initial Routing | Checksum: 1f43f2777
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
O

Phase %s%s
101*constraints2
5 2
Rip-up And RerouteZ18-101h px� 
Q

Phase %s%s
101*constraints2
5.1 2
Global Iteration 0Z18-101h px� 
N
%s*common25
3Phase 5.1 Global Iteration 0 | Checksum: 1e16925f0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
L
%s*common23
1Phase 5 Rip-up And Reroute | Checksum: 1e16925f0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
X

Phase %s%s
101*constraints2
6 2
Delay and Skew OptimizationZ18-101h px� 
U
%s*common2<
:Phase 6 Delay and Skew Optimization | Checksum: 1e16925f0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
J

Phase %s%s
101*constraints2
7 2
Post Hold FixZ18-101h px� 
L

Phase %s%s
101*constraints2
7.1 2
Hold Fix IterZ18-101h px� 
I
%s*common20
.Phase 7.1 Hold Fix Iter | Checksum: 1e16925f0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
G
%s*common2.
,Phase 7 Post Hold Fix | Checksum: 1e16925f0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
K

Phase %s%s
101*constraints2
8 2
Route finalizeZ18-101h px� 
H
%s*common2/
-Phase 8 Route finalize | Checksum: 1e16925f0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
R

Phase %s%s
101*constraints2
9 2
Verifying routed netsZ18-101h px� 
O
%s*common26
4Phase 9 Verifying routed nets | Checksum: 1e16925f0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
O

Phase %s%s
101*constraints2
10 2
Depositing RoutesZ18-101h px� 
L
%s*common23
1Phase 10 Depositing Routes | Checksum: 229a23402
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
R

Phase %s%s
101*constraints2
11 2
Post Process RoutingZ18-101h px� 
O
%s*common26
4Phase 11 Post Process Routing | Checksum: 229a23402
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
Y

Phase %s%s
101*constraints2
12 2
Post-Route Event ProcessingZ18-101h px� 
V
%s*common2=
;Phase 12 Post-Route Event Processing | Checksum: 1a1b3bffd
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
E
%s*common2,
*Ending Routing Task | Checksum: 1a1b3bffd
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:09 . Memory (MB): peak = 2182.918 ; gain = 84.016h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
752
132
62
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
route_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
route_design: 2

00:00:132

00:00:222

2182.9182
84.016Z17-268h px� 
�
Executing command : %s
56330*	planAhead2b
`report_drc -file JOIN_DDP_drc_routed.rpt -pb JOIN_DDP_drc_routed.pb -rpx JOIN_DDP_drc_routed.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2b
`report_drc -file JOIN_DDP_drc_routed.rpt -pb JOIN_DDP_drc_routed.pb -rpx JOIN_DDP_drc_routed.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
eC:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.runs/impl_1/JOIN_DDP_drc_routed.rpteC:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.runs/impl_1/JOIN_DDP_drc_routed.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
�
Executing command : %s
56330*	planAhead2�
�report_methodology -file JOIN_DDP_methodology_drc_routed.rpt -pb JOIN_DDP_methodology_drc_routed.pb -rpx JOIN_DDP_methodology_drc_routed.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file JOIN_DDP_methodology_drc_routed.rpt -pb JOIN_DDP_methodology_drc_routed.pb -rpx JOIN_DDP_methodology_drc_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
G
$Running Methodology with %s threads
74*drc2
2Z23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
qC:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.runs/impl_1/JOIN_DDP_methodology_drc_routed.rptqC:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.runs/impl_1/JOIN_DDP_methodology_drc_routed.rpt8Z2-1520h px� 
R
%s completed successfully
29*	vivadotcl2
report_methodologyZ4-42h px� 
�
Executing command : %s
56330*	planAhead2�
�report_timing_summary -max_paths 10 -report_unconstrained -file JOIN_DDP_timing_summary_routed.rpt -pb JOIN_DDP_timing_summary_routed.pb -rpx JOIN_DDP_timing_summary_routed.rpx -warn_on_violation Z12-24828h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -1, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
�
iThere are no user specified timing constraints. Timing constraints are needed for proper timing analysis.200*timingZ38-313h px� 
�
)Running report commands "%s" in parallel.56334*	planAhead2/
-report_incremental_reuse, report_route_statusZ12-24838h px� 
Y
+Running report generation with %s threads.
56333*	planAhead2
2Z12-24831h px� 
�
Executing command : %s
56330*	planAhead2F
Dreport_incremental_reuse -file JOIN_DDP_incremental_reuse_routed.rptZ12-24828h px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
Executing command : %s
56330*	planAhead2R
Preport_route_status -file JOIN_DDP_route_status.rpt -pb JOIN_DDP_route_status.pbZ12-24828h px� 
�
Executing command : %s
56330*	planAhead2r
preport_power -file JOIN_DDP_power_routed.rpt -pb JOIN_DDP_power_summary_routed.pb -rpx JOIN_DDP_power_routed.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2r
preport_power -file JOIN_DDP_power_routed.rpt -pb JOIN_DDP_power_summary_routed.pb -rpx JOIN_DDP_power_routed.rpxZ4-113h px� 
P
/No user defined clocks was found in the design!216*powerZ33-232h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
922
152
62
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
report_powerZ4-42h px� 
�
Executing command : %s
56330*	planAhead2F
Dreport_clock_utilization -file JOIN_DDP_clock_utilization_routed.rptZ12-24828h px� 
�
jFailed to find the Oracle tile group with name '%s'. This is required for Clock regions and Virtual grid.
996*device2
HSR_BOUNDARY_TOPZ21-9320h px� 
E
"Failed to initialize Virtual grid.736*deviceZ21-2174h px� 
�
Executing command : %s
56330*	planAhead2�
�report_bus_skew -warn_on_violation -file JOIN_DDP_bus_skew_routed.rpt -pb JOIN_DDP_bus_skew_routed.pb -rpx JOIN_DDP_bus_skew_routed.rpxZ12-24828h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -1, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
generate_parallel_reports: 2

00:00:092

00:00:052

2182.9182
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0062

2183.7812
0.863Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:012
00:00:00.3872

2183.7812
0.863Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002
00:00:00.0012

2183.7812
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:002
00:00:00.0632

2183.7812
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0052

2183.7812
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0202

2183.7812
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:012
00:00:00.4902

2183.7812
0.863Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2c
aC:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.runs/impl_1/JOIN_DDP_routed.dcpZ17-1381h px� 


End Record