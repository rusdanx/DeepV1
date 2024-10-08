#!/bin/bash

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to print commands in green
print_command() {
    echo -e "${GREEN}Running: $1${NC}"
}

# The commands with printed messages before execution
print_command "wget"
wget https://dtdreport.inet.co.th/index.php/s/6FFDTDHK8D5y84Y/download/Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb

print_command "chmod"
chmod 777 Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb

print_command "dpkg"
dpkg -i Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb

print_command "/opt/ds_agent/dsa_control -r"
sudo /opt/ds_agent/dsa_control -r

print_command "/opt/ds_agent/dsa_control -a with ACTIVATIONURL"
sudo /opt/ds_agent/dsa_control -a $ACTIVATIONURL "policyid:13"

print_command "/opt/ds_agent/dsa_control -a dsm://203.151.126.177:4120/ with policyid:13"
sudo /opt/ds_agent/dsa_control -a dsm://203.151.126.177:4120/ "policyid:13"

echo -e "${GREEN}Installation complete${NC}"
