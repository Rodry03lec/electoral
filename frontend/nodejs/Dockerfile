FROM node:20

RUN npm install -g @angular/cli
WORKDIR /app
COPY package*.json ./
#RUN npm install
EXPOSE 4200
#CMD ["ng", "serve", "--host", "0.0.0.0"]
COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
# Comando por defecto
ENTRYPOINT ["docker-entrypoint.sh"]