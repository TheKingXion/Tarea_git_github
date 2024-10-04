#!/bin/bash

read -p "ingrese link a clonar" link_repo

git clone "$link_repo"

repo_name=$(basename "$link_repo" .git)

cd nombre-repositorio

read -p "ingresa un nombre para tu rama" nueva_rama

git checkout -b $nueva_rama

git branch

git push -u origin $nueva_rama

read -p "la rama a sido creada y subida con exito"