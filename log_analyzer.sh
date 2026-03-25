#!/bin/bash


read -p "Enter the path of the log file" log_file_path


if [ -f $log_file_path ]; then

    echo "-------------------------------"
    echo "LOG ANALYSIS REPORT"
    echo "-------------------------------"

    total=$(wc -l < $log_file_path)
    echo "Total counts of log file is : $total"

    errors=$(grep -c "ERROR" $log_file_path)
    echo "Total error : $errors"

    warning=$(grep -c "WARNING" $log_file_path)
    echo "Total warning : $warning"

    info=$(grep -c "INFO" $log_file_path)
    echo "Total Info : $info"

    echo "-------------------------------"
    echo "Last 5 lines of log file"
    echo "-------------------------------"
    tail -5 $log_file_path


     # Save report to file
    report_file="/mnt/c/Users/kathi/Desktop/shell_practice/analysis_report.txt"
    
    echo "----------------------------" > $report_file
    echo "LOG ANALYSIS REPORT $(date)" >> $report_file
    echo "----------------------------" >> $report_file
    echo "Total lines    : $total" >> $report_file
    echo "Total errors   : $errors" >> $report_file
    echo "Total warnings : $warnings" >> $report_file
    echo "Total info     : $info" >> $report_file
    
    echo "----------------------------"
    echo "📁 Report saved to: $report_file"

else
    echo "File not found! Please check the path again"
    exit 1

fi

