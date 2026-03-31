#!/bin/bash
# Script 1: System Identity Report
# Author: Laksh Mahajan
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Laksh Mahajan"
REG_NO="24BCY10255"
SOFTWARE_CHOICE="LibreOffice"

# --- System Information ---
DISTRO=$(cat /etc/fedora-release)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# --- Display ---
echo "========================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Date and Time   : $CURRENT_DATE"
echo ""
echo "License: Fedora Linux is distributed under"
echo "various free software licenses, mainly the GPL."
echo "========================================="
