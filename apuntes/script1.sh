#!/bin/bash
# ==============================================
#                   Variables
# ==============================================
operatingSystem=$(uname -o)
deviceArchitecture=$(uname -m)
showPath=$(pwd)
echo dos2unix *.sh
# ==============================================
#                  Light colors
# ==============================================
black="\e[1;30m"
blue="\e[1;34m"
green="\e[1;32m"
cyan="\e[1;36m"
red="\e[1;31m"
purple="\e[1;35m"
yellow="\e[1;33m"
white="\e[1;37m"
# ==============================================
#                  Dark colors
# ==============================================
blackDark="\e[0;30m"
blueDark="\e[0;34m"
greenDark="\e[0;32m"
cyanDark="\e[0;36m"
redDark="\e[0;31m"
purpleDark="\e[0;35m"
yellowDark="\e[0;33m"
whiteDark="\e[0;37m"

id_user=$(id -u)


if [ $id_user != 0 ]; then
  echo "Por favor ejecute el script con sudo ./$0"
  exit 1
fi

function realizarBackup(){
  echo -n "Ingrese el nombre del archivo a comprimir: " && read -r archivo
  echo
  date="$(date +%Y-%m-%d-%H%M%S)"
  echo backup_dir="/directorio/backup"
  echo source="$HOME/directorio"
  echo tar -cvzpf $backup_dir/backup_dir-$DATE.tar.gz $source
  echo "tar -cvf backup.tar ./luishino"
  tar -cvf $archivo ./$archivo


} 

function restaurarBackup(){
  echo -n "Ingrese el nombre del archivo a descomprimir: " && read -r archivoecho 
  echo
  tar -xf $archivoecho
}


function mostrarMenu(){
echo examen Sistema operativo
whoami
    sleep 0.5
    echo -e ${green}"
          ${yellow}.:.:. ${white}Web Tool coded by: @Luishiño ${yellow}.:.:.${white}
${redBack}:: Disclaimer: Developers assume no liability and are not    ::${blackBack}
${redBack}:: responsible for any misuse or damage caused by WebPhoenix ::${blackBack}"${white}


  echo "------------Menu--------------"
  echo "------------------------------"
  echo "1. Realizar Backup"
  echo "2. Restaurar Backup"
  echo "3. Encriptar Directorio"
  echo "4. Desencriptar Directorio"
  echo "7. Salir"
}

while :; do 
  mostrarMenu 
  echo -n "Ingrese opción: " && read -r opcion
  case "$opcion" in
    1) realizarBackup 
    ;;
    2) restaurarBackup 
    ;;
    # puedes ir agregando mas opciones :v 
    *) echo "Opcion inválida o inexistente"
      break 
    ;;
  esac
done
