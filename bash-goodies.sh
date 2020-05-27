#!/bin/bash
mkdir ~/.bash-goodies
cd ~/.bash-goodies
# shorten URLs
echo "Installing shortener"
echo 'curl -F "shorten=$1" https://0x0.st' > shorten
echo 'alias shorten="bash ~/.bash-goodies/shorten"' >> ~/.bashrc
chmod -u=rwx shorten
# show weather
echo "Installing weather"
echo "curl wttr.in/\"$1\"" > weather
echo 'alias weather="bash ~/.bash-goodies/weather"' >> ~/.bashrc
chmod -u=rwx weather
# cheatsheet
echo "Installing Cheatsheet"
echo "curl cheat.sh/$1" > cheat
echo 'alias cheat="bash ~/.bash-goodies/cheat"' >> ~/.bashrc
chmod -u=rwx cheat
# up one folder
echo "alias ..=\"cd ..\"" >> ~/.bashrc
# blockchain coins rate
echo "alias rate=\"curl rate.sx\"" >> ~/.bashrc
# my IP
echo "alias myip=\"curl http://ipecho.net/plain; echo\"" >> ~/.bashrc

