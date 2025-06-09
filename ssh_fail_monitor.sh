#!/bin/bash
# SSH failed login monitor

log_file=/var/log/auth.log
report_file=~/ssh_fail_report.txt

echo "SSH Failed Login Report - $(date)" > $report_file
echo "---------------------------------" >> $report_file

grep "Failed password" $log_file >> $report_file

echo "Report saved to $report_file"

