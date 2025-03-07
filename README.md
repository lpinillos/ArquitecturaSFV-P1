# ArquitecturaSFV-P1

## Evaluación Práctica - Ingeniería de Software V

### Información del Estudiante
- **Nombre:** Luis Fernando Pinillos Sanchez  
- **Código:** A00381323  
- **Fecha:** 07/03/2025  

## Resumen de la Solución
[Breve descripción de la implementación]

## Dockerfile
![Dockerfile](https://github.com/user-attachments/assets/a9ca7eff-5404-43bd-a9c7-9cdca10efc0c)

- Se utiliza una imagen oficial de **Node.js**, específicamente la versión 14 LTS, debido a su estabilidad y soporte extendido. Se elige **Alpine** por ser una versión ligera.
- Se define el **WORKDIR** en una ruta estándar para contenedores de Node.js, lo que facilita la ejecución de comandos dentro del contenedor.
- Se copian `package.json` y `package-lock.json` para garantizar la instalación de todas las dependencias, considerando posibles cambios en estos archivos.
- Se ejecuta `npm install` para instalar las dependencias necesarias.
- Se copia el código fuente al contenedor.
- Se expone el puerto **8080** para permitir el acceso a la aplicación desde fuera del contenedor.
- Se configuran variables de entorno para facilitar la gestión, permitiendo modificar el puerto sin alterar el código. Se establece `NODE_ENV=production` para optimizar el rendimiento de las librerías y frameworks.
- Finalmente, se define el comando de ejecución de la aplicación.

## Script de Automatización
[Descripción del funcionamiento del script y sus funcionalidades]

## Principios DevOps Aplicados
1. Automatización: pues se ejecuta el codigo para ejecutar docker de forma automatica
2. Infraestructura como codigo: pues se creo el dockerfile para definir la infraestructura.
3. [Principio 3]

## Captura de Pantalla
Capturas de la aplicación en ejecución dentro del contenedor:

![Ejecución 1](https://github.com/user-attachments/assets/3f51217d-8b14-4121-8fad-3eae76222479)

![Ejecución 2](https://github.com/user-attachments/assets/e0c02529-52e9-4bd8-8836-e8bf13a3ba68)

## Mejoras Futuras
[Propuestas de mejora para el futuro]

- Implementar un manejo de errores más detallado.
- [Mejora 2]
- [Mejora 3]

## Instrucciones para Ejecutar
Pasos para ejecutar la solución:

```sh
# Clonar el repositorio
git clone https://github.com/lpinillos/ArquitecturaSFV-P1.git

# Acceder al directorio del proyecto
git cd ArquitecturaSFV-P1.git

# Dar permisos de ejecución al script\sudo chmod +x deploy.sh

# Ejecutar el script de despliegue
sudo ./deploy.sh

# Verificar la implementación
curl http://localhost:8080
