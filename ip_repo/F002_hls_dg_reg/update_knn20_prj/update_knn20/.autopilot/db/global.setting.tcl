
set TopModule "update_knn20"
set ClockPeriod 4
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
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
set SourceFiles {sc {} c {../../../../input_files/hls_src/dg_reg/sdsoc/digitrec.cpp ../../../../input_files/hls_src/dg_reg/host/check_result.cpp ../../../../input_files/hls_src/dg_reg/host/utils.cpp}}
set SourceFlags {sc {} c {{} {} {}}}
set DirectiveFile /mnt/icgridio2/unsafe/ylxiao/F200905_hls/pr_flow/workspace/F002_hls_dg_reg/update_knn20_prj/update_knn20/update_knn20.directive
set TBFiles {verilog ../../../../input_files/hls_src/dg_reg/host/digit_recognition_host.cpp bc ../../../../input_files/hls_src/dg_reg/host/digit_recognition_host.cpp sc ../../../../input_files/hls_src/dg_reg/host/digit_recognition_host.cpp vhdl ../../../../input_files/hls_src/dg_reg/host/digit_recognition_host.cpp c {} cas ../../../../input_files/hls_src/dg_reg/host/digit_recognition_host.cpp}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound ../../input_files/hls_src/dg_reg/host/digit_recognition_host.cpp
set AppFile ../vivado_hls.app
set ApsFile update_knn20.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
