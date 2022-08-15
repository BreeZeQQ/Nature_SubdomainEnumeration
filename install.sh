#!/bin/bash

apt-get update > /dev/null
echo "[!]Installing Sublist3r"
apt-get install sublist3r -y > /dev/null
echo "[+]Sublist3r Installed Successfully"
echo "[!]Downloading Aquatone_1"
wget "https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip" > /dev/null
echo "[+]Downloaded Aquatone_1"
echo "[!]Unzipping..."
unzip aquatone_linux_amd64_1.7.0.zip
echo "[+]Unzipped"
mv aquatone /usr/bin/aquatone
echo "[+]Aquatone_1 Installed Successfully"
echo "[!]Installing Amass"
apt-get install amass -y > /dev/null
echo "[+]Amass Installed Successfully"
echo "[!]Installing Aquatone_2"
gem install aquatone > /dev/null
echo "[+]Aquatone_2 Installed"
echo "[!]Installing golang for Subfinder"
apt-get install golang -y > /dev/null
echo "[+]golang Installed Successfully"
echo "[!]Installing Subfinder"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest > /dev/null
cp ~/go/bin/subfinder /bin/subfinder
echo "[+]Subfinder Installed Successfully"
echo "[!]Installing DNSMap"
apt-get install dnsmap -y > /dev/null
echo "[+]DNSMap Installed Successfully"
echo "[!]Installing Fierce"
apt-get install fierce -y > /dev/null
echo "[+]Fierce Installed Successfully"
rm LICENSE.txt
rm aquatone_linux_amd64_1.7.0.zip
rm README.md
chmod +x nature.sh
echo "---------------------------------------"
echo "ALL requirements installed Successfully"
echo "---------------------------------------"
