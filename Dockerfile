# from scratch para codigo que esta autocompidado de forma estatica de la libreia. "ALPINE" sera la libreria deseada.
FROM alpine 
# para crear la carpeta y moverte dentro mkdir -p /app y cd /app.
# usar mkdir y cd es una mala practica
WORKDIR /app
#Ahora vamos a copiar el codigo fuente. Carpeta donde se encuentra el código fuente. "." es el contexto del docker. Izquierda fuera del contenedor derecha dentro del contenedor.
COPY src .
