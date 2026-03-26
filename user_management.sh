#!/bin/bash


log_file="/mnt/c/Users/kathi/Desktop/shell_practice/user_management.log"


echo "========================"
echo "USER MANAGEMENT SCRIPT"
echo "$(date)"
echo "========================"

echo "1. Add User"
echo "2. Delete User"
echo "3. List Users"
echo "4. Check if User Exists"
echo "========================"


read -p "Enter your choice (1-4): " choice