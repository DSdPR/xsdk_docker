#!/bin/bash
source opt/Xilinx/SDK/2018.2/settings64.sh
export SWT_GTK3=0
PATH=/opt/Xilinx/SDK/2018.2/gnu/arm/lin/bin/:$PATH
xsdk
PID=$(pidof eclipse)
while [ -e /proc/$PID ]
do
    wait
done
exit
