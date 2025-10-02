# DESARROLLO LARAVEL Y ANGULAR
>luego ejecuta el siguiente comando
```
docker compose up --build -d
docker compose ps
docker compose start
docker compose stop
```
> Para crear proyectos entre por shell
```
docker exec -it laravel_app bash 
docker exec -it angular_app bash 
```
>creacion de proyectos
```
ng new hola_mundo
laravel new hola-mundo

ng s --host 0.0.0.0
php artisan serve --host 0.0.0.0
```
>para desarrollo dar permisos
```
sudo chown -R $USER:$USER frontend/angular backend/laravel
```
>comandos necesarios
```
ng g environments
```
>Para ver los logs
```
docker logs -f frontend_app
docker logs -f backend_app
```