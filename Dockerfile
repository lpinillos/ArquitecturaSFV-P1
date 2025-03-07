# Hacemos uso de una imagen oficial de Nodejs
FROM node:14-alpine

# Definimos un directorio base para el contenedor
WORKDIR /usr/src/app

# Hacemos copia del archivo package.json y package-lock.json
COPY package*.json ./

# Se hace la instalacion de dependencias
RUN npm install

# Se copia el resto del codigo fuente al contenedor
COPY . .

# Exponemos el puerto 3000
EXPOSE 8080

# Definimos la variable de entorno
ENV PORT=8080
ENV NODE_ENV=production

# Se coloca el comando de ejecucion de la app
CMD ["node", "app.js"]
