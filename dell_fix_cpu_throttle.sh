#!/usr/bin/bash

###############################################################################
# dell_fix_cpu_throttle.sh
#
# This shell script is to unblock the CPU throttle on Dell Optiplex due to
# power adapter not being detected properly in BIOS.
#
#
###############################################################################


#segmentation fault without previous commands

# This program should live in /usr/local/sbin

sudo wrmsr -a 0x1a0 0x850089
sudo echo 0 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo
