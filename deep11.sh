#!/bin/bash

# Function to print messages in red
print_red() {
  echo -e "\033[31m$1\033[0m"
}

# Function to print messages in green
print_green() {
  echo -e "\033[32m$1\033[0m"
}

# Function to print messages in yellow
print_yellow() {
  echo -e "\033[33m$1\033[0m"
}

# Function to print commands in green
print_command() {
    echo -e "${GREEN}Running: $1${NC}"
}

# The commands with printed messages before execution
print_green "wget"
wget https://dtdreport.inet.co.th/index.php/s/6FFDTDHK8D5y84Y/download/Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb

print_command "chmod5555555555555555555"
chmod 777 Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb

print_yellow "dpkg555555555555555555555"
dpkg -i Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb

print_command "/opt/ds_agent/dsa_control -r"
sudo /opt/ds_agent/dsa_control -r

print_command "/opt/ds_agent/dsa_control -a with ACTIVATIONURL"
sudo /opt/ds_agent/dsa_control -a $ACTIVATIONURL "policyid:13"

print_red "/opt/ds_agent/dsa_control -a dsm://203.151.126.177:4120/ with policyid:13"
sudo /opt/ds_agent/dsa_control -a dsm://203.151.126.177:4120/ "policyid:13"

echo -e "${GREEN}Installation complete${NC}"
