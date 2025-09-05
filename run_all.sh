#!/bin/bash

# usage: nohup ./run_all.sh > run_all.log 2>&1 &



# Keep Mac awake during all runs
caffeinate -i bash <<'EOF'

# Go to working directory
cd "/Users/yunhalee/Documents/LOCAETA/RCM/INMAP/inmap-1.9.6-gridsplit" || exit 1

# List of runs (add or remove as needed)
runs=(
  "current_easyhard"
  "current_easyhard_base"
  "2050_easyhard_decarb95"
  "2050_easyhard_decarb95_base"
  "2050_easyhard_noIRA_111D"
  "2050_easyhard_noIRA_111D_base"     
)

# Loop through runs one by one
for run_name in "${runs[@]}"; do
    echo "=== Starting run: $run_name ==="

    mkdir -p "outputs/$run_name"

    ./inmap run steady -s --config "eval/nei2020Config_${run_name}.toml"

    echo "=== Finished run: $run_name ==="
done

EOF