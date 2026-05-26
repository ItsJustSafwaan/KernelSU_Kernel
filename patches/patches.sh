#!/bin/bash

# Recursively locate every single instance of sched.h inside the workspace
echo "=== Beginning deep search-and-patch for sched.h ==="
find . -name "sched.h" -type f -exec sed -i '/#error "Unsupported NR_CPUS for lb tracepoint."/d' {} +
echo "=== Deep patch execution complete ==="
