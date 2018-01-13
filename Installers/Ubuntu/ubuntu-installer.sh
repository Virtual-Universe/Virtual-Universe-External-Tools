#!/bin/bash
# This installer is to allow a fast setup of
# Virtual Universe on both debian and Ubuntu
# The Idea came from WhiteCore-Sim which we give many thanks
# Emperor Starfinder <emperor@secondgalaxy.com>
# July 31, 2017

# Install Mono 4.4 and above
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/ubuntu xenial main" | sudo tee /etc/apt/sources.list.d/mono-official.list
sudo apt-get update
# Install mono-complete for the entire set of required mono tools
sudo apt-get install mono-complete -y
sudo apt-get update
# Install MySQL Server
sudo apt-get install mysql-server -y
sudo apt-get update
# Secure Database Server
sudo mysql_secure_installation
sudo apt-get update
# Restart the database server
sudo systemctl restart mysql.service
# Install Git
sudo apt-get install git-core -y
sudo apt-get update
# Setting up Virtual Universe
cd /
git clone https://github.com/Virtual-Universe/Virtual-Universe.git
cd Virtual-Universe/
./runprebuild.sh
xbuild
