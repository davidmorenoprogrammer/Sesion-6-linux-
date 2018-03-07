#!/bin/bash 
es_directorio=`test -d $1 && echo true || echo false` 
num_entero=`echo $2 | grep -q "[0-9]\+" && echo true || echo false` 
if [ $# -eq 2 ] 
then 
if [ $es_directorio == "true" ] && [ $num_entero == "true" ] 
then 
find $1 -size -$2 > archivosSizN.txt
echo "El fichero ha sido creado." 
else 
echo "¡El directorio no existe o el parámetro no es un entero!" 
fi 
else 
echo "¡Ha introducido un número incorrecto de parámetros!" 
fi

