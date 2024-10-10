#!/bin/bash

cd /d "C:\Users\Xion\Desktop\Proyecto_Final\Proyecto_Final"

if [ -d ".git" ]; then
  echo "Mostrando el historial de commits recientes..."

  git log --oneline --decorate --graph --all
  
  echo "Historial de commits mostrado arriba."
else
  echo "Este directorio no es un repositorio Git."
fi
