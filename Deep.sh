wget https://dtdreport.inet.co.th/index.php/s/6FFDTDHK8D5y84Y/download/Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb &&
chmod 777 Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb &&
dpkg -i Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb &&
/opt/ds_agent/dsa_control -r &&
/opt/ds_agent/dsa_control -a $ACTIVATIONURL "policyid:13" &&
/opt/ds_agent/dsa_control -a dsm://203.151.126.177:4120/ "policyid:13" 
echo "installed"