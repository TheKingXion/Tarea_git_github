#!/bin/bash


mkdir "AutomaticoGIt"
git init
touch "AutomaticoGIt/README.md"
read -p "Ingresa el mensaje del commit: " mensaje
git add .
git commit -m "$mensaje"

echo "Cambios subidos con éxito."
