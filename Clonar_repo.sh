#!/bin/bash

read -p "Ingresa la URL del repositorio a clonar: " repo_url

read -p "Ingresa el nombre de la rama : " branch_name

# Clonar el repositorio
git clone "$repo_url"

# Extraer el nombre del repositorio (la última parte de la URL sin .git)
repo_name=$(basename "$repo_url" .git)

# Cambiar al directorio del repositorio clonado
cd "$repo_name" || { echo "No se pudo acceder al repositorio clonado"; exit 1; }

git checkout "$branch_name"

# Verificar si el cambio de rama fue exitoso
if [ $? -eq 0 ]; then
  echo "Se cambió correctamente a la rama '$branch_name'."
else
  echo "La rama '$branch_name' no existe. Creando una nueva rama."
  git checkout -b "$branch_name"
fi
