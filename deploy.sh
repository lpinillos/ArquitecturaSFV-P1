#!/bin/bash

# Verificar si Docker está instalado
if ! command -v docker &> /dev/null
then
    echo "Docker no está instalado. Por favor, instala Docker primero."
    exit 1
fi

# Construir la imagen de Docker
echo "Construyendo la imagen de Docker..."
docker build -t my-node-app .

# Verificar si la construcción fue exitosa
if [ $? -ne 0 ]; then
    echo "Error al construir la imagen de Docker."
    exit 1
fi

# Ejecutar el contenedor
echo "Ejecutando el contenedor..."
docker run -d -p 8080:8080 -e PORT=8080 -e NODE_ENV=production my-node-app

# Verificar si el contenedor está en ejecución
if [ $? -ne 0 ]; then
    echo "Error al ejecutar el contenedor."
    exit 1
fi

# Esperar un momento para que el contenedor se inicie
sleep 5

# Realizar una prueba básica
echo "Realizando prueba básica..."
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080)

if [ "$response" == "200" ]; then
    echo "La aplicación está funcionando correctamente."
else
    echo "Error: La aplicación no está respondiendo correctamente. Código de estado: $response"
    exit 1
fi

echo "Resumen: Todo ha sido ejecutado con éxito."
