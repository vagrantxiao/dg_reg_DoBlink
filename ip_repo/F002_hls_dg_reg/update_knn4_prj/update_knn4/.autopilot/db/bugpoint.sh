export PATH=/scratch/unsafe/SDSoC/Vivado/2019.2/tps/lnx64/binutils-2.26/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/tps/lnx64/gcc-6.2.0/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/tps/win64/msys64/usr/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/tps/win64/msys64/mingw64/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/tools/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/gnu/microblaze/lin/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/tps/lnx64/jre9.0.4/bin:/scratch/unsafe/SDSoC/Vitis/2019.2/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/ids_lite/ISE/bin/lin64:/scratch/unsafe/SDSoC/Vitis/2019.2/gnu/microblaze/lin/bin:/scratch/unsafe/SDSoC/Vitis/2019.2/gnu/arm/lin/bin:/scratch/unsafe/SDSoC/Vitis/2019.2/gnu/microblaze/linux_toolchain/lin64_le/bin:/scratch/unsafe/SDSoC/Vitis/2019.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/scratch/unsafe/SDSoC/Vitis/2019.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/scratch/unsafe/SDSoC/Vitis/2019.2/gnu/aarch64/lin/aarch64-linux/bin:/scratch/unsafe/SDSoC/Vitis/2019.2/gnu/aarch64/lin/aarch64-none/bin:/scratch/unsafe/SDSoC/Vitis/2019.2/gnu/armr5/lin/gcc-arm-none-eabi/bin:/scratch/unsafe/SDSoC/Vitis/2019.2/tps/lnx64/cmake-3.3.2/bin:/home1/s/sgeadmin/ogs-2011p1/bin/linux-x64:/usr/local/bin:/usr/bin:/bin:/usr/lib/mit/bin:/usr/lib/qt3/bin:/usr/local/Qt5.4.0/Tools/QtCreator/bin:.
export LD_LIBRARY_PATH=/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/tools/gdb_v7_2:/scratch/unsafe/SDSoC/Vivado/2019.2/tps/lnx64/dot-2.28/lib:/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/bin:/scratch/unsafe/SDSoC/Vivado/2019.2/lib/lnx64.o/SuSE:/scratch/unsafe/SDSoC/Vivado/2019.2/lib/lnx64.o:/scratch/unsafe/SDSoC/Vivado/2019.2/tps/lnx64/jre9.0.4/lib/:/scratch/unsafe/SDSoC/Vivado/2019.2/tps/lnx64/jre9.0.4/lib//server:/scratch/unsafe/SDSoC/Vitis/2019.2/lib/lnx64.o/SuSE:/scratch/unsafe/SDSoC/Vitis/2019.2/lib/lnx64.o:/scratch/unsafe/SDSoC/Vitis/2019.2/runtime/lib/x86_64:/scratch/unsafe/SDSoC/Vivado/2019.2/bin/../lnx64/tools/dot/lib:/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/tools/fpo_v7_0:/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/tools/fft_v9_1:/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/tools/opencv:/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/tools/fir_v7_0:/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/tools/dds_v6_0:/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/lib/csim
export HDI_APPROOT=/scratch/unsafe/SDSoC/Vivado/2019.2
export XILINX_OPENCL_CLANG=/scratch/unsafe/SDSoC/Vivado/2019.2/lnx64/tools/clang
export RDI_PLATFORM=lnx64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -ptrLegalization -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg  -read-loop-dep  -interface-preproc -directive-preproc -interface-gen  -bram-byte-enable  -deadargelim -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise -complex-op-raise -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -load-elim -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -dce -loop-bound -loop-dep -read-loop-dep -dce  -check-stream -norm-name -legalize  -validate-dataflow -inst-clarity -bitwidth -dump-loop-dep-to-ir -check-all-ssdm  /mnt/icgridio2/unsafe/ylxiao/F200905_hls/pr_flow/workspace/F002_hls_dg_reg/update_knn4_prj/update_knn4/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
