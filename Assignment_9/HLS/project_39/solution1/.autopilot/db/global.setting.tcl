
set TopModule "zadoff_chu_generator_hls"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix zadoff_chu_generator_hls_
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
set TargetInfo xczu7ev:-ffvc1156:-2-e
set SourceFiles {sc {} c ../Sources/zff_chu.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile C:/Users/velic/OneDrive/Desktop/vitis-hls/Assignment_9/HLS/project_39/solution1/solution1.directive
set TBFiles {verilog {../Sources/zff_chu_tb.cpp ../../../MATLAB/real_matlab.txt ../../../MATLAB/imag_matlab.txt} bc {../Sources/zff_chu_tb.cpp ../../../MATLAB/real_matlab.txt ../../../MATLAB/imag_matlab.txt} vhdl {../Sources/zff_chu_tb.cpp ../../../MATLAB/real_matlab.txt ../../../MATLAB/imag_matlab.txt} sc {../Sources/zff_chu_tb.cpp ../../../MATLAB/real_matlab.txt ../../../MATLAB/imag_matlab.txt} cas {../Sources/zff_chu_tb.cpp ../../../MATLAB/real_matlab.txt ../../../MATLAB/imag_matlab.txt} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
