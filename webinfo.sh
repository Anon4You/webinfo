#!/data/data/com.termux/files/usr/bin/bash
clear
command -v figlet > /dev/null 2>&1 || { echo >&2 "Installing figlet"; pkg install figlet -y 1; }
command -v whois > /dev/null 2>&1 || { echo >&2 "Installing whois"; pkg install whois -y 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "Installing curl"; pkg install curl -y 1; }
command -v traceroute > /dev/null 2>&1 || { echo >&2 "Installing traceroute"; pkg install traceroute -y 1; }
command -v nmap > /dev/null 2>&1 || { echo >&2 "Installing nmap"; pkg install nmap -y 1; }
command -v host > /dev/null 2>&1 || { echo >&2 "Installing dnsutils"; pkg install dnsutils -y 1; }
clear
echo $'\33[32;1m'""
figlet -f smblock "                     Webinfo"
echo ""

echo $'\e[36;1m'"                   by Anon4You"$'\e[31;1m'" ["$'\e[37;1m'"Alienkrishn"$'\e[31;1m'"]"
echo
echo $'\33[31;1m'"--------------------------------------------------------------"
echo $'\e[37;1m'"Website information gathering tool"$'\e[32;1m'" | "$'\e[37;1m'"Learn more about victim"
echo
read -p "Target-» " xx
echo " "
echo $'\e[31m'"["$'\e[0;1m'"01"$'\e[31m'"]"$'\e[32;1m'" Whois"
echo $'\e[31m'"["$'\e[0;1m'"02"$'\e[31m'"]"$'\e[32;1m'" Dnslookup"
echo $'\e[31m'"["$'\e[0;1m'"03"$'\e[31m'"]"$'\e[32;1m'" Host"
echo $'\e[31m'"["$'\e[0;1m'"04"$'\e[31m'"]"$'\e[32;1m'" Traceroute"
echo $'\e[31m'"["$'\e[0;1m'"05"$'\e[31m'"]"$'\e[32;1m'" Reversedns"
echo $'\e[31m'"["$'\e[0;1m'"06"$'\e[31m'"]"$'\e[32;1m'" GeoIp"
echo $'\e[31m'"["$'\e[0;1m'"07"$'\e[31m'"]"$'\e[32;1m'" Nmap"
echo $'\e[31m'"["$'\e[0;1m'"08"$'\e[31m'"]"$'\e[32;1m'" Http"
echo $'\e[31m'"["$'\e[0;1m'"09"$'\e[31m'"]"$'\e[32;1m'" Pagelinks"
echo $'\e[31m'"["$'\e[0;1m'"10"$'\e[31m'"]"$'\e[32;1m'" Practical Video"
echo $'\e[31m'"["$'\e[0;1m'"00"$'\e[31m'"]"$'\e[32;1m'" Exit"
echo $'\e[31m'"["$'\e[0;1m'"99"$'\e[31m'"]"$'\e[32;1m'" Back"
echo " "
echo $'\e[31;1m'
read -p 'Choose-» ' zz
echo $'\e[32m'
if [ $zz = 1 ] ; then
echo whois $xx
sleep 2
clear
whois $xx
fi

if [ $zz = 2 ] 
then
echo dnslookup $xx
sleep 2
clear
curl https://api.hackertarget.com/dnslookup/?q=$xx
fi

if [ $zz = 3 ] ; then
echo host $xx
sleep 2
clear
host $xx
fi

if [ $zz = 4 ] ; then
echo traceroute $xx
sleep 2
clear
traceroute $xx
fi

if [ $zz = 6 ] ; then
echo geoip $xx
sleep 2
clear
curl https://api.hackertarget.com/geoip/?q=$xx
fi

if [ $zz = 5 ] ; then
echo reversedns $xx
sleep 2
clear
curl https://api.hackertarget.com/reversedns/?q=$xx
fi

if [ $zz = 7 ] ; then
echo nmap $xx
sleep 2
clear
nmap $xx
fi

if [ $zz = 8 ] ; then
echo http $xx
sleep 2
clear
curl https://api.hackertarget.com/httpheaders/?q=$xx
fi

if [ $zz = 9 ] ; then
echo pagelinks $xx
sleep 2
clear
curl https://api.hackertarget.com/pagelinks/?q=$xx
fi

if [ $zz = 10 ] ; then
echo opening video link with xdg-open
sleep 2
xdg-open ""
fi
if [ $zz = 00 ] ; then
str="exiting tool..."

for ((i = 0; i < ${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 000.1
done
echo "thanks for using this tool"
exit
fi

if [ $zz = 0 ] ; then
str="exiting tool..."
for ((i = 0; i < ${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 000.1
done
echo "thanks for using this tool"
exit
fi
if [ $zz = 99 ] ; then
bash webinfo.sh
fi

