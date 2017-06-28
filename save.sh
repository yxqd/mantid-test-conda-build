#!/usr/bin/env bash

outdir=$1

mkdir $outdir
mv mantid/log.systemtests $outdir
mv mantid/conda-recipes $outdir
mv mantid/build $outdir
mkdir -p $outdir/mantid/Testing/SystemTests/scripts
cp -a mantid/Testing/SystemTests/scripts/* $outdir/mantid/Testing/SystemTests/scripts
