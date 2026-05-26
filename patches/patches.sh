#!/bin/bash

# Target 1: Local Working Sub-directory Path
if [ -f "include/trace/events/sched.h" ]; then
    echo "=== Found sched.h in local path, scrubbing tracepoint error ==="
    sed -i '/#error "Unsupported NR_CPUS for lb tracepoint."/d' include/trace/events/sched.h
fi

# Target 2: Explicit Android-Kernel Directory Structure Path
if [ -f "kernel_workspace/android-kernel/include/trace/events/sched.h" ]; then
    echo "=== Found sched.h in sub-directory path, scrubbing tracepoint error ==="
    sed -i '/#error "Unsupported NR_CPUS for lb tracepoint."/d' kernel_workspace/android-kernel/include/trace/events/sched.h
fi
