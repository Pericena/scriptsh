#!/bin/bash



# ==============================================

#                   Variables

# ==============================================

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

# ==============================================

#               Background colors

# ==============================================

blackBack=$(setterm -background black)

blueBack=$(setterm -background blue)

greenBack=$(setterm -background green)

cyanBack=$(setterm -background cyan)

redBack=$(setterm -background red)

yellowBack=$(setterm -background yellow)

whiteBack=$(setterm -background white)

# ==============================================

#               Banner EsCorrecto

# ==============================================

function EsCorrecto() {

    sleep 0.5

	clear

    echo -e ${green}"

          ${yellow}.:.:. ${white}Tool Sistema Operativo II ${yellow}.:.:.${white}

${redBack}::  Realizado con exito     ::${blackBack}"${white}

}

# ==============================================

#             Invalid option message

# ==============================================

#function invalid() {

#    echo -e ${yellow}"

#[${red}!${yellow}] ${red}Invalid option!"${white}

#    sleep 0.5

#}

# ==============================================

#                   Option menu

# ==============================================

function menu() {

    EsCorrecto

backup_dir=backup

mkdir $backup_dir>null

echo -e -n ${red}"

[${green}01${red}] ${yellow}Realizar Backup${red}

[${green}02${red}] ${yellow}Restaurar Backup${red}

[${green}03${red}] ${yellow}Encriptar Directorio${red}

[${green}03${red}] ${yellow}Desencriptar Directorio${red}

[${green}00${red}] ${yellow}Salir${red}

[${green}*${red}] ${green}Ingrese una opcion: "${white}

	read -r option

    if [[ "${option}" == "0" || "${option}" == "00" ]]; then

        exit

    elif [[ "${option}" == "1" || "${option}" == "01" ]]; then

        clear

		#EsCorrecto

echo lista de usuarios

ls -Sr /home	

echo -e -n ${red}"

[${green}*${red}] ${green}Ingrese el nombre del usuario para el Backup:: "${white}

        read -r archivo

        #echo -e ""

		tar -cvf $archivo.tar ./$archivo>null

        mv  $archivo.tar $backup_dir/

        rm -rf null

    elif [[ "${option}" == "2" || "${option}" == "02" ]]; then

        #EsCorrecto

        rm -rf null

	ls -Sr ./$backup_dir

        echo -e -n ${red}"		

[${green}*${red}] ${green}Ingrese el nombre del usuario para la restauracion: "${white}

        read -r archivo

        #EsCorrecto

        echo -e ""

		tar -xf ./$backup_dir/$archivo.tar -C /home

    elif [[ "${option}" == "3" || "${option}" == "03" ]]; then

        #EsCorrecto

        echo -e -n ${red}"

[${green}*${red}] ${green}Ingrese el nombre del directorio para encriptar: "${white}&& read -r archivo

        #EsCorrecto
	
	echo Se genera key para gpt 
	gpg --full-generate-key
	
	read -r correo
	echo gpg -a -r videos684@gmail.com -e $archivo
	gpg -r $correo -e $archivo.tar
	sleep 1

	echo "DIRECTORIO CIFRADO CORRECTAMENTE"

	ls /home

	elif [[ "${option}" == "4" || "${option}" == "04" ]]; then

        #EsCorrecto

        echo -e -n ${red}"

[${green}*${red}] ${green}Ingrese el nombre del directorio para desencriptar: "${white}&& read -r archivo

        #EsCorrecto

	gpg -d $archivo.tar.gpg

	sleep 1

	echo "DIRECTORIO DESCIFRADO CORRECTAMENTE"

	ls /home

	elif [[ "${option}" == "5" || "${option}" == "05" ]]; then

        exit

    fi

}

# ==============================================

#              Declaring functions

# ==============================================

menu