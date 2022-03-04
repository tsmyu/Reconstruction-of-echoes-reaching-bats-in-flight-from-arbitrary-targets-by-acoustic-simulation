#!/bin/sh

module load Frameworks/2.0/cuda-10.0
file=$1
infile="$file".cu
outfile="$file".exe
nvcc $infile -I /usr/include/mpi -L /usr/lib/openmpi/lib -lmpi -arch sm_52 -O2 -o $outfile -Xcompiler -fopenmp
