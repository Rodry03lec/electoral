#!/bin/bash
set -e
if ! command -v laravel >/dev/null 2>&1; then
    composer global require laravel/installer
    ln -s /root/.composer/vendor/bin/laravel /usr/local/bin/laravel
fi
# Iniciar PHP-FPM
exec php-fpm