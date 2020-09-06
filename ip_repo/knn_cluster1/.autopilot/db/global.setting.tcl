
set TopModule "knn_cluster1"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c ../src/sdsoc/digitrec.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile /home/ylxiao/ws_192/F200831_DoBlink_FPGA2021/hls/dg_reg/knn_cluster1/knn_cluster1.directive
set TBFiles {verilog {../src/host/check_result.cpp ../src/host/check_result.h ../src/host/digit_recognition_host.cpp ../src/host/testing_data.h ../src/host/training_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h} bc {../src/host/check_result.cpp ../src/host/check_result.h ../src/host/digit_recognition_host.cpp ../src/host/testing_data.h ../src/host/training_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h} sc {../src/host/check_result.cpp ../src/host/check_result.h ../src/host/digit_recognition_host.cpp ../src/host/testing_data.h ../src/host/training_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h} vhdl {../src/host/check_result.cpp ../src/host/check_result.h ../src/host/digit_recognition_host.cpp ../src/host/testing_data.h ../src/host/training_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h} c {} cas {../src/host/check_result.cpp ../src/host/check_result.h ../src/host/digit_recognition_host.cpp ../src/host/testing_data.h ../src/host/training_data.h ../src/host/typedefs.h ../src/host/utils.cpp ../src/host/utils.h}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile knn_cluster1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
