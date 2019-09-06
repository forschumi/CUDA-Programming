#!/bin/sh

printf '\n===================================================\n'
printf 'cd 02*'
printf '\n===================================================\n'
cd 02*

printf '\ng++ hello.cpp\n'
g++ hello.cpp
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 hello1.cu\n'
nvcc -arch=sm_35 hello1.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 hello2.cu\n'
nvcc -arch=sm_35 hello2.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 hello3.cu\n'
nvcc -arch=sm_35 hello3.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 hello4.cu\n'
nvcc -arch=sm_35 hello4.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 hello5.cu\n'
nvcc -arch=sm_35 hello5.cu
printf '\n./a.out\n'
./a.out

printf '\n===================================================\n'
printf 'cd ../03*'
printf '\n===================================================\n'
cd ../03*

printf '\ng++ add.cpp\n'
g++ add.cpp
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 add1.cu\n'
nvcc -arch=sm_35 add1.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 add2wrong.cu\n'
nvcc -arch=sm_35 add2wrong.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 add3if.cu\n'
nvcc -arch=sm_35 add3if.cu
printf '\n./a.out\n'
./a.out

printf '\n===================================================\n'
printf 'cd ../04*'
printf '\n===================================================\n'
cd ../04*

printf '\nnvcc -arch=sm_35 add4check_api.cu\n'
nvcc add4check_api.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 add5check_kernel.cu\n'
nvcc add5check_kernel.cu
printf '\n./a.out\n'
./a.out

printf '\n===================================================\n'
printf 'cd ../05*'
printf '\n===================================================\n'
cd ../05*

printf '\ng++ -O3 add.cpp\n'
g++ -O3 add.cpp
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 add.cu\n'
nvcc -arch=sm_35 add.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 1\n'
nvprof --unified-memory-profiling off ./a.out 1
printf '\nnvprof --unified-memory-profiling off ./a.out 1000\n'
nvprof --unified-memory-profiling off ./a.out 1000

printf '\nnvcc -arch=sm_35 -DUSE_DP add.cu\n'
nvcc -arch=sm_35 -DUSE_DP add.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 1\n'
nvprof --unified-memory-profiling off ./a.out 1

printf '\ng++ -O3 arithmetic.cpp\n'
g++ -O3 arithmetic.cpp
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 arithmetic.cu\n'
nvcc -arch=sm_35 arithmetic.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 100000000 128\n'
nvprof --unified-memory-profiling off ./a.out 100000000 128
printf '\nnvprof --unified-memory-profiling off ./a.out 10000000 128\n'
nvprof --unified-memory-profiling off ./a.out 10000000 128
printf '\nnvprof --unified-memory-profiling off ./a.out 1000000 128\n'
nvprof --unified-memory-profiling off ./a.out 1000000 128
printf '\nnvprof --unified-memory-profiling off ./a.out 100000 128\n'
nvprof --unified-memory-profiling off ./a.out 100000 128
printf '\nnvprof --unified-memory-profiling off ./a.out 10000 128\n'
nvprof --unified-memory-profiling off ./a.out 10000 128
printf '\nnvprof --unified-memory-profiling off ./a.out 1000 128\n'
nvprof --unified-memory-profiling off ./a.out 1000 128
printf '\nnvprof --unified-memory-profiling off ./a.out 100000000 32\n'
nvprof --unified-memory-profiling off ./a.out 100000000 32
printf '\nnvprof --unified-memory-profiling off ./a.out 100000000 64\n'
nvprof --unified-memory-profiling off ./a.out 100000000 64
printf '\nnvprof --unified-memory-profiling off ./a.out 100000000 256\n'
nvprof --unified-memory-profiling off ./a.out 100000000 256
printf '\nnvprof --unified-memory-profiling off ./a.out 100000000 512\n'
nvprof --unified-memory-profiling off ./a.out 100000000 512
printf '\nnvprof --unified-memory-profiling off ./a.out 100000000 1024\n'
nvprof --unified-memory-profiling off ./a.out 100000000 1024

printf '\n===================================================\n'
printf 'cd ../07*'
printf '\n===================================================\n'
cd ../07*

printf '\nnvcc -arch=sm_35 add_unified.cu\n'
nvcc -arch=sm_35 add_unified.cu
printf '\nnvprof --unified-memory-profiling off ./a.out\n'
nvprof --unified-memory-profiling off ./a.out

printf '\n===================================================\n'
printf 'cd ../08*'
printf '\n===================================================\n'
cd ../08*

printf '\nnvcc -arch=sm_35 copy.cu\n'
nvcc -arch=sm_35 copy.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10000 16 16\n'
nvprof --unified-memory-profiling off ./a.out 10000 16 16

printf '\nnvcc -arch=sm_35 transpose1global_coalesced_read.cu\n'
nvcc -arch=sm_35 transpose1global_coalesced_read.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10000 16 16\n'
nvprof --unified-memory-profiling off ./a.out 10000 16 16

printf '\nnvcc -arch=sm_35 transpose2global_coalesced_write.cu\n'
nvcc -arch=sm_35 transpose2global_coalesced_write.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10000 16 16\n'
nvprof --unified-memory-profiling off ./a.out 10000 16 16

printf '\nnvcc -arch=sm_35 transpose3global_ldg.cu\n'
nvcc -arch=sm_35 transpose3global_ldg.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10000 16 16\n'
nvprof --unified-memory-profiling off ./a.out 10000 16 16

printf '\nnvcc -arch=sm_35 transpose4shared_with_confilict.cu\n'
nvcc -arch=sm_35 transpose4shared_with_conflict.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10000 16 16\n'
nvprof --unified-memory-profiling off ./a.out 10000 16 16
printf '\nnvprof --metrics shared_load_transactions_per_request,shared_store_transactions_per_request ./a.out 10000 16 16\n'
nvprof --metrics shared_load_transactions_per_request,shared_store_transactions_per_request ./a.out 10000 16 16

printf '\nnvcc -arch=sm_35 transpose5shared_without_conflict.cu\n'
nvcc -arch=sm_35 transpose5shared_without_conflict.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10000 16 16\n'
nvprof --unified-memory-profiling off ./a.out 10000 16 16
printf '\nnvprof --metrics shared_load_transactions_per_request,shared_store_transactions_per_request ./a.out 10000 16 16\n'
nvprof --metrics shared_load_transactions_per_request,shared_store_transactions_per_request ./a.out 10000 16 16

printf '\n===================================================\n'
printf 'cd ../09*'
printf '\n===================================================\n'
cd ../09*

printf '\ng++ -O3 reduce1.cpp\n'
g++ -O3 reduce1.cpp
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 reduce2one_kernel.cu\n'
nvcc -arch=sm_35 reduce2one_kernel.cu
printf '\nnvprof --unified-memory-profiling off ./a.out\n'
nvprof --unified-memory-profiling off ./a.out

printf '\nnvcc -arch=sm_35 reduce3two_kernels.cu\n'
nvcc -arch=sm_35 reduce3two_kernels.cu
printf '\nnvprof --unified-memory-profiling off ./a.out\n'
nvprof --unified-memory-profiling off ./a.out

printf '\nnvcc -arch=sm_35 reduce4more_parallelism.cu\n'
nvcc -arch=sm_35 reduce4more_parallelism.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10\n'
nvprof --unified-memory-profiling off ./a.out 10

printf '\n===================================================\n'
printf 'cd ../10*'
printf '\n===================================================\n'
cd ../10*

printf '\nnvcc -arch=sm_35 reduce5atomic_global.cu\n'
nvcc -arch=sm_35 reduce5atomic_global.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10\n'
nvprof --unified-memory-profiling off ./a.out 10

printf '\nnvcc -arch=sm_35 reduce6atomic_shared.cu\n'
nvcc -arch=sm_35 reduce6atomic_shared.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10\n'
nvprof --unified-memory-profiling off ./a.out 10

printf '\n===================================================\n'
printf 'cd ../11*'
printf '\n===================================================\n'
cd ../11*

printf '\nnvcc -arch=sm_35 reduce7syncwarp.cu\n'
nvcc -arch=sm_35 reduce7syncwarp.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10\n'
nvprof --unified-memory-profiling off ./a.out 10

printf '\nnvcc -arch=sm_35 reduce8shfl.cu\n'
nvcc -arch=sm_35 reduce8shfl.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10\n'
nvprof --unified-memory-profiling off ./a.out 10

printf '\nnvcc -arch=sm_35 reduce9cp.cu\n'
nvcc -arch=sm_35 reduce9cp.cu
printf '\nnvprof --unified-memory-profiling off ./a.out 10\n'
nvprof --unified-memory-profiling off ./a.out 10

printf '\n===================================================\n'
printf 'cd ../12*'
printf '\n===================================================\n'
cd ../12*

printf '\nnvcc -arch=sm_35 host_kernel.cu\n'
nvcc -arch=sm_35 host_kernel.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 kernel_kernel.cu\n'
nvcc -arch=sm_35 kernel_kernel.cu
printf '\n./a.out>t.txt\n'
./a.out>t.txt

printf '\nnvcc -arch=sm_35 kernel_transfer.cu\n'
nvcc -arch=sm_35 kernel_transfer.cu
printf '\n./a.out>t2.txt\n'
./a.out>t2.txt

printf '\n===================================================\n'
printf 'cd ../13*'
printf '\n===================================================\n'
cd ../13*

printf '\nnvcc -arch=sm_35 thrust_scan_vector.cu\n'
nvcc -arch=sm_35 thrust_scan_vector.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 thrust_scan_pointer.cu\n'
nvcc -arch=sm_35 thrust_scan_pointer.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 -lcublas cublas_gemm.cu\n'
nvcc -arch=sm_35 -lcublas cublas_gemm.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 -lcusolver cusolver.cu\n'
nvcc -arch=sm_35 -lcusolver cusolver.cu
printf '\n./a.out\n'
./a.out

printf '\nnvcc -arch=sm_35 -lcurand curand_host1.cu\n'
nvcc -arch=sm_35 -lcurand curand_host1.cu
printf '\n./a.out>x1.txt\n'
./a.out>x1.txt

printf '\nnvcc -arch=sm_35 -lcurand curand_host2.cu\n'
nvcc -arch=sm_35 -lcurand curand_host2.cu
printf '\n./a.out>x2.txt\n'
./a.out>x2.txt

printf '\n===================================================\n'
printf 'cd ../16*'
printf '\n===================================================\n'
cd ../16*

printf '\nmake -j6\n'
make -j6
printf '\n./ljmd 10 1000\n'
./ljmd 10 1000

printf '\n===================================================\n'
printf 'cd ../17*'
printf '\n===================================================\n'
cd ../17*

printf '\nmake -j6\n'
make -j6
printf '\n./ljmd 40 1000\n'
./ljmd 40 1000
printf '\nnvprof --unified-memory-profiling off ./ljmd 40 1000\n'
nvprof --unified-memory-profiling off ./ljmd 40 1000

printf '\n===================================================\n'
printf 'cd ../18*'
printf '\n===================================================\n'
cd ../18*

printf '\nmake -j6\n'
make -j6
printf '\n./ljmd 40 1000\n'
./ljmd 40 1000
printf '\nnvprof --unified-memory-profiling off ./ljmd 40 1000\n'
nvprof --unified-memory-profiling off ./ljmd 40 1000

printf '\n===================================================\n'
printf 'cd ../19*'
printf '\n===================================================\n'
cd ../19*

printf '\nmake -j6\n'
make -j6
printf '\n./ljmd 40 1000\n'
./ljmd 40 1000
printf '\nnvprof --unified-memory-profiling off ./ljmd 40 1000\n'
nvprof --unified-memory-profiling off ./ljmd 40 1000

printf '\nmake clean\n'
make clean
printf '\nmake -j6 -f makefile.ldg\n'
make -j6 -f makefile.ldg
printf '\n./ljmd 40 1000\n'
./ljmd 40 1000
printf '\nnvprof --unified-memory-profiling off ./ljmd 40 1000\n'
nvprof --unified-memory-profiling off ./ljmd 40 1000

printf '\nmake clean\n'
make clean
printf '\nmake -j6 -f makefile.fast_math\n'
make -j6 -f makefile.fast_math
printf '\n./ljmd 40 1000\n'
./ljmd 40 1000
printf '\nnvprof --unified-memory-profiling off ./ljmd 40 1000\n'
nvprof --unified-memory-profiling off ./ljmd 40 1000

printf '\n===================================================\n'
printf 'cd ../20*'
printf '\n===================================================\n'
cd ../20*

printf '\nmake -j6\n'
make
printf '\n./ljmd 40 1000\n'
./ljmd 40 1000
printf '\nnvprof --unified-memory-profiling off ./ljmd 40 1000\n'
nvprof --unified-memory-profiling off ./ljmd 40 1000

