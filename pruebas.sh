#!/bin/bash

# Pedir el mensaje del commit al usuario
read -p "Ingresa el mensaje del commit: " mensaje

# Añadir todos los archivos
git add .

# Realizar el commit con el mensaje proporcionado
git commit -m "$mensaje"

# Verificar si hay un repositorio remoto configurado
remote=$(git remote)
if [ -z "$remote" ]; then
  echo "No hay repositorio remoto configurado. Configura un repositorio remoto primero."
  exit 1
fi

# Subir los cambios al repositorio remoto (a la rama actual)
git push origin $(git branch --show-current)

echo "Cambios subidos a GitHub con éxito."
