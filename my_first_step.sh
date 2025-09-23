#!/bin/bash
#File: my_first_step.sh

echo "=== My System Information +++"

#Show current date & time
echo "Date & Time:  $(date)"
#Explanantion: $(date) date command & includes its output

#SHow current user
echo "Current User: $(whoami)"
#Explaination: whoami shows your name

#Show Hostname
echo "computer Name: $(hostname)"
# Explaination: Hostname shows your username

#show current directory
echo "current directory: $(pwd)"

# Show disk usage for current directory
echo "Disk Usage: "
du -sh
# Explaination: du = disk usage, -s = summary, -h = human readable, . = current directory

# Count files in current directory
file_count=$(ls -l | wc -l)
echo "File in current directory: $file_count"
# Explaination: ls -l lists files one per line, wc -l counts lines

echo "=== Script completed successfully! ==="
