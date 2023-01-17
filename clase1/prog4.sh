echo "Ingresa el nombre del archivo"
read archivo
echo "----------------------------EJERCICIO4-------------------------------------"
echo "1) Mostrar la cantidad de veces que existe una palabra(leida por tecleado)
en el archiva de texto"
echo "2) Ordenar las lineas archivos de texto en forma descendente"
echo "3) Elimanar una linea (leida por tecleado) del archivo de texto "
echo "---------------------------------------------------------------------------"
echo "Digite un opcion:"
read op
case $op in
1) echo "Ingrese la palabra a buscar"
	read palabra
	echo "cantidad:"
	grep -o $palabra $archivo | wc -l;;
2) sort $archivo -r ;;
3) echo "Ingrese el numero de linea a eliminar"
	read nl
	sed -i $nl"d" $archivo;;
esac