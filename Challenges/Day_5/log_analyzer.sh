#!/bin/bash

# Check if the log file path is provided as a command-line argument
if [ $# -ne 1 ]; then
  echo "Usage: sudo $0 <path_to_log_file>"
  exit 1
fi

log_file="$1"

# Check if the log file exists
if [ ! -f "$log_file" ]; then
  echo "Error: Log file not found!"
  exit 1
fi

# Get the current date for the summary report
current_date=$(date "+%Y-%m-%d")

# Step 1: Error Count
error_count=$(grep -c -i -E "ERROR|Failed" "$log_file")

# Step 2: Critical Events
critical_events=$(grep -n -i "CRITICAL" "$log_file")

# Step 3: Top 5 Error Messages
top_errors=$(grep -i -E "ERROR|Failed" "$log_file" | sort | uniq -c | sort -nr | head -n 5)

# Step 4: Summary Report
summary_report="summary_report_${current_date}.txt"

echo "Date of analysis: $current_date" > "$summary_report"
echo "Log file name: $log_file" >> "$summary_report"
echo "Total lines processed: $(wc -l < "$log_file")" >> "$summary_report"
echo "Total error count: $error_count" >> "$summary_report"

if [ -n "$top_errors" ]; then
  echo -e "\nTop 5 Error Messages:" >> "$summary_report"
  echo "$top_errors" >> "$summary_report"
fi

if [ -n "$critical_events" ]; then
  echo -e "\nList of Critical Events with Line Numbers:" >> "$summary_report"
  echo "$critical_events" >> "$summary_report"
fi

echo "Summary report generated: $summary_report"

# Optional Enhancement: Archive or Move Processed Log Files
archive_dir="/home/ubuntu/BashBlaze-7-Days-of-Bash-Scripting-Challenge/"
if [ ! -d "$archive_dir" ]; then
  echo "Creating archive directory..."
  mkdir -p "$archive_dir"
fi

if [ -d "$archive_dir" ]; then
  mv "$log_file" "$archive_dir"
  echo "Log file archived/moved to: $archive_dir"
else
  echo "Error: Archive directory not found or cannot be created!"
fi

