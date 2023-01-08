#!/bin/bash

# Rearrange screen
clear
figlet 'Bites The Dust' | lolcat
echo 'By: Sh0gun'| lolcat

# Workflow
url=$1;
nmap $url;
dnsenum --enum $url;
xterm -e ./nuclei -u $url -t nuclei-templates/fuzzing
xterm -e ./gobuster dir $url -w wordlists/SecLists/Discovery/Web-Content/common.txt

