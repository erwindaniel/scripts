#!/bin/sh
##Author: Erwin Daniel Suarez erwin.suarez@eldevops.com
##Este script edita un archivo de texto y cambia una parte de este
##Util para cambios de parametros, urls, direcciones de bases de datos
##Usa el comando sed para editar el archivo 
#el / no es reconocido, y debe anteponerse dos \\

## llamado: ./cambiotexto.sh "'"http:\\/\\/miurl.com"'", "'"http:\\/\\/miotraurl\\/api\\/"'" miarchivo


url1=$1
url2=$2
archivoaEditar=$3

#se muestran para control de como recibe las variables
echo $1
echo $2
echo $3

sed -i -e "s/\(url: \).*/\1$1/" \
-e "s/\(url_api: \).*/\1$2/" $3

#muestra como quedó el archivo despues del cambio
echo "archivo Editado"
cat $3

