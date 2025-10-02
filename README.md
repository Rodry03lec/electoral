# DESARROLLO LARAVEL Y ANGULAR
> cuando es un nuevo proyecto desde cero crear dos carpetas src en backend y fronend
```
mkdir backend/src
mkdir frontend/src
```
>luego ejecuta el siguiente comando
```
docker compose up --build
docker compose ps
docker compose start
docker compose stop
```
>para desarrollo dar permisos
```
sudo chown -R $USER:$USER frontend/src backend/src/storage/ backend/src/app/ backend/src/resources
```
>Para interaccion con el contenedor
```
docker exec -it frontend_app bash 
docker exec -it backend_app bash 
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