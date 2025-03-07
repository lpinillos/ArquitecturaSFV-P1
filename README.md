# ArquitecturaSFV-P1

# Evaluación Práctica - Ingeniería de Software V

## Información del Estudiante
- **Nombre:** Luis Fernando Pinillos Sanchez
- **Código:** A00381323
- **Fecha:** 07/03/2025

## Resumen de la Solución
[Breve descripción de tu implementación]

## Dockerfile
![image](https://github.com/user-attachments/assets/a9ca7eff-5404-43bd-a9c7-9cdca10efc0c)

- Se hace uso de una imagen oficial de Nodejs, especificamente de la versión 14 debido a que esta es una versión LTS. También se hace uso de alpine debido a que es una versión mas ligera.
- El WORKDIR se definió asi debido a que es una ruta estandar para contenedores de Nodejs, lo cual facilita que el resto de comandos se ejecute en esa ruta.
- Se copian el package.json y el package-lock.json debido a que queremos copiar todas las dependencias, tomando en consideración los cambios que pueden tener estos archivos.
- Luego se hace el npm install para poder instalar todas las dependencias.
- Después de instalar las dependencias, copiamos todo el codigo fuente al contenedor.
- Se expone el puerto 8080 para que la aplicación sea accesible por fuera del contenedor.
- Se definen las variables de entorno para facilitar su gestión, por ejemplo la variable de entorno de puerto nos permite modificar el puerto sin necesidad de modificar el codigo. En cuanto al NODE_ENV=production, esto se hace porque muchos frameworks y librerias optimizan su rendimiento en este modo.
- Por último, se define el comando de ejecución de la aplicación.

## Script de Automatización
[Describe cómo funciona tu script y las funcionalidades implementadas]

## Principios DevOps Aplicados
1. [Principio 1]
2. [Principio 2]
3. [Principio 3]

## Captura de Pantalla
[Incluye al menos una captura de pantalla que muestre tu aplicación funcionando en el contenedor]

![image](https://github.com/user-attachments/assets/3f51217d-8b14-4121-8fad-3eae76222479)

![image](https://github.com/user-attachments/assets/e0c02529-52e9-4bd8-8836-e8bf13a3ba68)

## Mejoras Futuras
[Describe al menos 3 mejoras que podrían implementarse en el futuro]

- Se podria implementar un manejo de errores mas detallado.
- 

## Instrucciones para Ejecutar
[Instrucciones paso a paso para ejecutar tu solución]

clona el repositorio
