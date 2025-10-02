#!/bin/bash

if [ ! -f "angular.json" ]; then
  echo "No se encontró un proyecto de Angular. Creando uno nuevo..."
  ng new my-app --directory=./ --skip-git --skip-install --strict=false
fi

# Instalar dependencias solo si node_modules no existe
if [ ! -d "node_modules" ]; then
  npm install
fi

# Ejecutar Angular dev server
exec ng serve --host 0.0.0.0
