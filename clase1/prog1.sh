#!/bin/bash


echo "------------Menu--------------"
echo "------------------------------"
echo "1. Comprimir un archivo"
echo "2. Descomprimir un archivo"
echo "3. Mostrar calendario (mes/anio)"
echo "4. Abrir programa"
echo "5. Apagar sistema"
echo "6. Reiniciar sistema"
echo "7. Salir"
echo "-------------------------------"
echo "Digite una opcion:"
read op
case $op in
1) echo "Ingrese el nombre del archivo a comprimir: "
   read archivo 
   gzip $archivo ;;
2) echo "Ingrese el nombre del archivo a descomprimir"
   read archivo
   gzip -d $archivo ;;
3) echo "Digite el numero del anio: "
   read a
   echo "Digite el numero del mes: "
   read m
   if [ $m -le 12 ]; then 
   cal $m $a
   fi
echo " Calendario con anio $a y mes $m" ;;
4) echo "Ingrese el nombre del archivo a ejecutar: "
   read archivo 
   sh $archivo ;;
5) shutdown -h now;;
6) shutdown -r now;;
7) exit ;;
esac