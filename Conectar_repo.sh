#!/bin/bash

read -p "ingrese la url de la pagina a conectar : " URL 
read -p "Ingrese el nombre de la rama para entrar (o crear) : " rama

git checkout "$rama"

# Verificar si el cambio de rama fue exitoso
if [ $? -eq 0 ]; then
  echo "Se cambió correctamente a la rama '$rama'."
else
  echo "La rama '$rama' no existe. Creando una nueva rama."
  git checkout -b "$rama"
fi

git remote add origin $URL

echo "cambiando a la rama"
git branch -M "$rama"
echo "la rama a sido cambiada con exito"
git push -u origin main