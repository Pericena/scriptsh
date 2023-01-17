#!/bin/bash 
#variables

id_user=$(id -u)

# comentario para luishino :v 
#if [ $id_user != 0 ]; then
#  echo "Por favor ejecute el script con sudo ./$0"
#  exit 1
#fi

function realizarBackup(){
  echo -n "Ingrese el nombre del archivo a comprimir: " && read -r archivo
  echo
  echo "tar -cvf backup.tar ./luishino"
  tar -cvf $archivo ./$archivo

  date="$(date +%Y-%m-%d-%H%M%S)"
  backup_dir="/directorio/backup"
  source="$HOME/sourcedirectory"
  tar -cvzpf $BACKUP_DIR/backup-$DATE.tar.gz $SOURCE
} 

function restaurarBackup(){
  echo -n "Ingrese el nombre del archivo a descomprimir: " && read -r archivoecho 
  echo
  tar -xf $archivoecho
}


function mostrarMenu(){
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
