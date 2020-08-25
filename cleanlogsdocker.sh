#!/bin/bash

#Script para borrar los logs de un contenedor
#dar permisos de ejcucion con: chmod +x ./docker-clean-logs.sh
# detener el contenedor: docker stop <container_name>
# ejecutar el script ./cleanlogsdocker.sh <container_name>
# arrancar el contenedor: docker satart <container_name>


rm $(docker inspect $1 | grep -G '"LogPath": "*"' | sed -e 's/.*"LogPath": "//g' | sed -e 's/",//g');