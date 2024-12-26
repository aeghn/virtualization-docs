#!/usr/bin/env bash

# 检查qemu进程PID的smaps中透明大页大小
for pid in $(sudo virsh list --name | xargs pgrep -f); do
  sudo cat /proc/$pid/cmdline
  echo "\n-------------"
  sudo grep -P 'AnonHugePages:\s+(?!0)\d+' /proc/${pid}/smaps | awk 'BEGIN{TOTAL=0}{total+=$2} END{print total}'
done
grep AnonHugePages /proc/meminfo
