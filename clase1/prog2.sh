#!/bin/bash


echo "---------------------MENU----------------------"
echo "GESTION DEPERMISOS PARA EL USUARIO(Propietario)"
echo "-----------------------------------------------"
echo "1. Permiso de Lectura"
echo "2. Permiso de Escritura"
echo "3. Permiso de Ejecucion"
echo "4. Permiso de Lectura y Escritura"
echo "5. Permiso de Lectura y Ejecucion"
echo "6. Mostrar Permisos"
echo "7. Salir"
echo "------------------------------------------------"
echo "Digite una opcion:"
read op
case $op in
1) echo "Ingrese el nombre del archivo: "
   read archivo 
   chmod 400 $archivo ;;
2) echo "Ingrese el nombre del archivo: "
   read archivo
   chmod 200 $archivo ;;
3) echo "Ingrese el nombre del archivo: "
   read archivo
   chmod 100 $archivo ;;
4) echo "Ingrese el nombre del archivo: "
   read archivo
   chmod 600 $archivo ;;
5) echo "Ingrese el nombre del archivo: "
   read archivo
   chmod 500 $archivo ;;
6) ls -l ;;
7) exit ;;
esac