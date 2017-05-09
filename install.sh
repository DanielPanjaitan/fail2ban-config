#!/bin/bash
doing_update(){
  echo "=============DOING SYSTEM UPDATE============="
  #apt-get update
}

install_packages(){
  echo "=============INSTALLING PACKAGES============="
  #apt install fail2ban -y
  #apt install sendmail -y
}

config_packages(){
  echo "=============CONFIGURING PACKAGES============="
   #wget https://raw.githubusercontent.com/DanielPanjaitan/fail2ban-config/master/jail.local -P /etc/fail2ban/
   #rm -rf /etc/fail2ban/action.d/iptables-multiport.conf
   #wget https://raw.githubusercontent.com/DanielPanjaitan/fail2ban-config/master/iptables-multiport.conf -P /etc/fail2ban/action.d/
   #systemctl status fail2ban
} 

main (){
if (( $EUID != 0 )); then
     echo "=============PLEASE RUN AS ROOT============="
     echo "=============INSTALLATION FAILED============="
    exit 0
fi
  doing_update
  install_packages
  config_packages
  echo "=============INSTALLATION COMPLETE============="
  exit 0
}
main
