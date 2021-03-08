# from scratch para codigo que esta autocompidado de forma estatica de la libreia. "ALPINE" sera la libreria deseada.
FROM alpine 
# para crear la carpeta y moverte dentro mkdir -p /app y cd /app.
# usar mkdir y cd es una mala practica
WORKDIR /app
#Ahora vamos a copiar el codigo fuente. Carpeta donde se encuentra el código fuente. "." es el contexto del docker. Izquierda fuera del contenedor derecha dentro del contenedor.
COPY src .
# instala el paquete. Es equivalente "yum install" apk es para alpine.
RUN apk add php
# vamos realizar los comandos que queramos que corran en nuestra aplicacion
# esto es que queremos "php index.php" cuando carguemos la imagen cogeremos el binario de php
ENTRYPOINT /usr/bin/php
#incorporamos las opciones para ejecutar el comando -S para el interfaz de red 0.0.0.0 son todos y el puerto.
CMD -f index.php -S 0.0.0.0:8080
