#!/bin/bash
set -e

APP_DIR="/var/www/html"

#Si la carpeta está vacía (sin Laravel), inicializamos un nuevo proyecto
if [ -z "$(ls -A $APP_DIR)" ]; then
    echo "No se encontró un proyecto Laravel. Creando uno nuevo..."
    composer create-project --prefer-dist laravel/laravel . 
else
    echo "Proyecto Laravel existente detectado. Usándolo..."
fi

# Asignar permisos necesarios para Laravel
chown -R www-data:www-data $APP_DIR/storage $APP_DIR/bootstrap/cache
chmod -R 775 $APP_DIR/storage $APP_DIR/bootstrap/cache

#composer install
# Limpiar y volver a enlazar el storage

#rm -rf $APP_DIR/public/storage
#php artisan storage:link
# Volver a enlazar storage si hace falta
if [ ! -L "$APP_DIR/public/storage" ]; then
    echo "🔗 Creando enlace simbólico storage..."
    php artisan storage:link || true
fi

#Asegurar permisos en la carpeta public
chmod -R 777 $APP_DIR/public
chown -R www-data:www-data $APP_DIR/public

#Opcional: ejecutar migraciones automáticas si existe `.env`
if [ -f "$APP_DIR/.env" ]; then
    echo "🛠 Ejecutando migraciones..."
    php artisan migrate --force || true
fi
# Iniciar PHP-FPM
exec php-fpm