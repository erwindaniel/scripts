#!/bin/bash

#para actualizar varios directorios con los cambios de varios repositorios git, previamente deben haberse clonado y guardado las credenciales de acceso
#se ejecuta con ./actualziarvariosgit.sh


#aqui se añaden todos los que se necesiten

repos=( 
  "/d/Repositorio/App1"
  "/d/Repositorio/App2"
  "/d/Repositorio/App3"
  
)

echo ""
echo "Getting latest for" ${#repos[@]} "repositories using pull 
--rebase"

#reversa los cambios, deja en la rama develop y obtiene lo ultimo del repositorio central

for repo in "${repos[@]}"
do
  echo ""
  echo "****** Getting latest for" ${repo} "******"
  cd "${repo}"
  git checkout .
  git checkout develop
  git pull
  echo "******************************************"
done
