#!/bin/bash
echo "Preparando reporte..."
sleep 1
#ejecutando un retraso de 1 seg
(cat /etc/passwd | awk -F':' '{print $1}') > listUsers
#redireccionando en un fichero "listUsers" la lista de usuarios
cont=0
date=$(date +%Y-%m-%d_%H:%M:%S)
echo "REPORTE DE USUARIOS CON FECHA $date">> reporte$date
#LEYENDO LINEA POR LINEA "USUARIO POR USUARIO" para luego con el comando chage redireccionar hacia un fichero
#la informacion del periodo de expiracion de cada cuenta y contrasena de un usuario en concreto
while IFS= read -r line
do	
	let cont++
	echo "-------------------------" >> reporte$date
	echo "REPORTE DE USUARIO: $line" >> reporte$date
	echo " " >> reporte$date
	chage -l $line >> reporte$date

	echo "-------------------------" >> reporte$date
done < listUsers
echo "REPORTE DE USUARIOS CON FECHA $date">> reporte$date
echo "Reporte finalizado con exito"
#echo "MOSTRANDO REPORTE...."
#cat reporte$date