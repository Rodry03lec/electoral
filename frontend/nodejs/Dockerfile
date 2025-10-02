FROM node:20

# Instalar Angular CLI
RUN npm install -g @angular/cli
WORKDIR /app
COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
EXPOSE 4200
ENTRYPOINT ["docker-entrypoint.sh"]