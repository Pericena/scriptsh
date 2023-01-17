echo "1. Crear usuario con identificador y nombre completo"
echo "2. Modificar identificador del usuario y nombre completo"
echo "3. Crear usuario con fecha de expiracion"
echo "4. Crear super usuario"
echo "5. Eliminar usuario"
echo "6. Crear grupo con nro de identificador"
echo "7. Agregar usuario a un grupo"
echo "8. Eliminar grupo"
echo "9. Salir"
echo "------------------------------------------------"
echo "Elegi una opcion:"
read op
case $op in
1) echo "Ingrese el identificador numerico: "
   read num 
   echo "Ingrese el nombre completo"
   read nom
   echo "Ingrese el nombre usuario"
   read user
   useradd -u $num -c $nom $user ;;

2) echo "Ingrese el nombre usuario"
   read user
   echo "Ingrese el identificador numerico: "
   read num 
   echo "Ingrese el nombre completo"
   read nom
   usermod -u $num -c $nom $user ;;
 
3) echo "Ingrese el nombre usuario"
   read user
   echo "Ingrese fecha expiracion ej: 2023/12/31 = "
   read fecha
   useradd -e $fecha $user ;;

4) echo "Ingrese el nombre usuario administrador"
   read user
   useradd -u 0 -g 0 -o $user ;;
5) echo "Ingrese el nombre usuario para borrar"
   read user
   userdel -rf $user ;;

6) echo "Ingrese el nombre del grupo: "
   read group_name
   echo "Ingrese el identificador numerico: "
   read num 
   groupadd -u $num $group_name ;;

7) echo "Ingrese el nombre de usuario a anadir"
   read user
   echo "Ingrese el nombre del grupo a anadir"
   read grupo
   usermod -g $grupo $user ;;

8) echo "Ingrese el nombre del grupo: "
   read group_name
   groupdel $group_name ;;
9) exit ;;
esac