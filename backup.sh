#!/bin/bash

cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
white="${Escape}[0m";
RedF="${Escape}[31m";
GreenF="${Escape}[32m";
LighGreenF="${Escape}[92m"
YellowF="${Escape}[33m";
BlueF="${Escape}[34m";
CyanF="${Escape}[36m";
Reset="${Escape}[0m";


spinlong ()
{
    bar=" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
}

function checkinternet()
{
  ping -c 1 google.com > /dev/null 2>&1
  if [[ "$?" != 0 ]]
  then
    echo -e $yellow " Checking For Internet: ${RedF}FAILED"
    echo
    echo -e $red "This Script Needs An Active Internet Connection"
    echo && sleep 2
    exit
  else
    echo -e $yellow " Checking For Internet: ${LighGreenF}CONNECTED"
  fi
}

spinlong 
sleep 3
checkinternet
sleep 2


printf "${red}"
figlet BACKUP

echo ""
echo -e $lightgreen "[+] READING DATABASE"

echo -e $yellow "[✓] INSTALLING DEPENDENCIES...."
apt install wget > /dev/null 2>&1
apt install git > /dev/null 2>&1
apt install curl > /dev/null 2>&1
apt install openjdk-17 > /dev/null 2>&1
pip install maryam > /dev/null 2>&1
apt install nano > /dev/null 2>&1
apt install python > /dev/null 2>&1 
apt install python2 > /dev/null 2>&1
apt install python3 > /dev/null 2>&1
apt install python3-venv > /dev/null 2>&1
apt install ruby > /dev/null 2>&1
apt install perl > /dev/null 2>&1
apt-get install -y aircrack-ng > /dev/null 2>&1
apt install netcat
apt install nodejs > /dev/null 2>&1
npm install pm2 -g > /dev/null 2>&1


echo -e $red "[✓] Dependencies installed √ "
echo ""
echo -e $lightgreen "[=] INSTALLING IMPORTANT TOOLS"
sleep 2
echo ""
echo -e $yellow "[ ! ] Installing Metasploit-Framework "
apt-get install metasploit-framework -y > /dev/null 2>&1
sleep 2
echo ""
echo -e $yellow "[ ! ] Installing AndroRat "
git clone https://github.com/karma9874/AndroRAT.git > /dev/null 2>&1
sleep 2 
echo "" 
echo -e $yellow "[ ! ] Installing L3MON "
git clone https://github.com/D3VL/L3MON.git > /dev/null 2>&1
sleep 2
echo ""
echo -e $yellow "[ ! ] Installing Android Ransomeware builder "
git clone https://github.com/termuxhackers-id/SARA.git > /dev/null 2>&1
sleep 2
echo ""
echo -e $yellow "[ ! ] Installing Beef-Framework "
git clone https://github.com/beefproject/beef.git > /dev/null 2>&1
sleep 2
echo ""
echo -e $yellow "[ ! ] Installing Mobile Security Framework "
git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git
sleep 2
echo ""
echo -e $red " ************************************************ "
echo -e $red " *           INSTALLATION COMPLETED             * "
echo -e $red " ************************************************ "
