#!/bin/sh

date=`date +%Y%m%d%H%M`

samples=10




gpsprof -n $samples -f space -t space -T png | gnuplot >gps-${date}-space.png
gpsprof -n $samples -f time -t time -T png | gnuplot >gps-${date}-time.png
gpsprof -n $samples -f instrumented -t instrumented -T png | gnuplot >gps-${date}-instrumented.png
gpsprof -n $samples -f uninstrumented -t uninstrumented -T png | gnuplot >gps-${date}-uninstrumented.png




