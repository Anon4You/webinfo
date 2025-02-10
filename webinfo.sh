#!/usr/bin/env bash

## WebInfo 	: 	Website information gathering 
## Author 	: 	https://t.me/nullxvoid 
## Version 	: 	3.0


# net check 

ping -c 1 google.com >/dev/null 2>&1
if [ "$?" != '0' ]; then
  printf "Internet tera baap on karega madarchod!!\n"
  exit 1
fi

# Requirements packages
command -v whois > /dev/null 2>&1 || { echo >&2 "whois not found!, Installing... whois"; apt install whois -y 1; }
command -v traceroute > /dev/null 2>&1 || { echo >&2 "traceroute not found!, Installing.... traceroute"; apt install traceroute -y 1; }
command -v nmap > /dev/null 2>&1 || { echo >&2 "nmap not found!, Installing... nmap"; apt install nmap -y 1; }
command -v host > /dev/null 2>&1 || { echo >&2 "host not found!, Installing... dnsutils"; apt install dnsutils -y 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "curl not found!, Installing... curl"; apt install curl -y 1; }
command -v openssl > /dev/null 2>&1 || { echo >&2 "openssl not found!, Installing... openssl-tools"; apt install openssl-tool -y 1; }

# user interupt 

usr_intrp(){
  printf "\e[0m\e[1;36m\n\vCTRL+C Pressed!, Exiting...\n"
  sleep 1
  terminate
}
trap usr_intrp SIGINT
trap usr_intrp SIGTSTP


# color variables

red="\e[31m" green="\e[32m" yellow="\e[33m"
blue="\e[34m" pink="\e[35m" cyan="\e[36m"
white="\e[37m" black="\e[30m" reset="\e[0m\n"
filred="\e[41;1m" boldw="\e[0;1m"


banner(){
  clear
  printf "${cyan}
   .       __        _               ,__
 /       |    ___  \\ ___  \` , __   /  \`   __.
 |       |  .'   \` |/   \\ | |'  \`. |__  .'   \\
 |  /\\   /  |----' |    \` | |    | |    |    |
 |,'  \\,'   \`.___, \`___,' / /    | |     \`._.'
                                  /
${yellow}\t\t\t\t\tVersion 3.0${reset}
   ${filred} Website information gathering tool ${reset}
   Author :- Alienkrishn [Anon4You]

 "
}

main(){
  banner
  printf "
  ${boldw}[01]${yellow} Whois lookup  ${boldw} [08]${yellow} Geoip lookup
  ${boldw}[02]${yellow} Dns lookup    ${boldw} [09]${yellow} Nmap scan
  ${boldw}[03]${yellow} Host lookup   ${boldw} [10]${yellow} Http Headers
  ${boldw}[04]${yellow} Traceroute    ${boldw} [11]${yellow} Page Link
  ${boldw}[05]${yellow} ReverseDns    ${boldw} [12]${yellow} Http Status
  ${boldw}[06]${yellow} SSL Info      ${boldw} [13]${yellow} Subdomains
  ${boldw}[07]${yellow} DNS Record  

  ${boldw}[q]${cyan} To Exit ${reset}
"
  read -p "Choose An Option : " opt 
  if [[ ${opt} == 1 || ${opt} == 01 ]]; then
    Whois 
  elif [[ ${opt} == 2 || ${opt} == 02 ]]; then
    Dns
  elif [[ ${opt} == 3 || ${opt} == 03 ]]; then
    Host
  elif [[ ${opt} == 4 || ${opt} == 04 ]]; then
    Traceroute
  elif [[ ${opt} == 5 || ${opt} == 05 ]]; then
    Reverse
  elif [[ ${opt} == 6 || ${opt} == 06 ]]; then
    SslInfo
  elif [[ ${opt} == 7 || ${opt} == 07 ]]; then
    DnsRecord
  elif [[ ${opt} == 8 || ${opt} == 08 ]]; then
    Geoip
  elif [[ ${opt} == 9 || ${opt} == 09 ]]; then
    Nmap
  elif [[ ${opt} == 10 ]]; then
    HttpHeaders
  elif [[ ${opt} == 11 ]]; then
    Pagelink
  elif [[ ${opt} == 12 ]]; then
    HttpStatus
  elif [[ ${opt} == 13 ]]; then
    Subdomains
  elif [[ ${opt} == q ]]; then
    terminate
  else
    printf "Abe dikhta nahi hai kya gandu..."
    sleep 2;main
  fi
}

Whois(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    whois ${target}
    Whois
  fi
}

Dns(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    curl https://api.hackertarget.com/dnslookup/?q=${target}
    Dns
  fi
}

Host(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    host ${target}
    Host
  fi
}

Traceroute(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    traceroute ${target}
    Traceroute
  fi
}

Reverse(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    curl https://api.hackertarget.com/reversedns/?q=${target}
    Reverse
  fi
}

Geoip(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    curl https://api.hackertarget.com/geoip/?q=${target}
    Geoip
  fi
}

HttpHeaders(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    curl https://api.hackertarget.com/httpheaders/?q=${target}
    HttpHeaders
  fi
}

Nmap(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    nmap ${target}
    Nmap
  fi
}

Pagelink(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    curl https://api.hackertarget.com/pagelinks/?q=${target}
    Pagelink
  fi
}

HttpStatus(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    http_code=$(curl -o /dev/null -s -w "%{http_code}\n" ${target})
    printf "HTTP Status Code for ${target}: ${http_code}\n"
    HttpStatus
  fi
}

SslInfo(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    echo | openssl s_client -servername ${target} -connect ${target}:443 2>/dev/null | openssl x509 -text
    SslInfo
  fi
}

Subdomains(){
  exitorback
  read -p "Choose or Enter Domain : " target
  clear
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    curl https://api.hackertarget.com/subdomaintoip/?q=${target}
    Subdomains
  fi
}

DnsRecord(){
  exitorback
  read -p "Choose or Enter Domain : " target
  if [[ ${target} == b ]]; then
    main
  elif [[ ${target} == q ]]; then
    terminate
  else
    read -p "Enter DNS Record Type (A, MX, TXT, etc.): " record_type
    dig ${target} ${record_type}
    DnsRecord
  fi
}


 
exitorback(){
  printf "\n
  ${boldw}[b]${cyan} Back ${boldw}[q]${cyan} Exit ${reset}
  ${boldw}${green}EXAMPLE :- example.com ${reset}
  "
}

terminate(){
  printf "${red}Thanks for using this tool..${reset}"
  sleep 1; exit 0
}

main
