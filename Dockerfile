# Especifica la imagen base. Puedes usar una imagen existente de Docker Hub o crear la tuya propia.
FROM ubuntu:20.04

# Actualiza los paquetes en la imagen base e instala software adicional.
RUN apt-get update && apt-get install
RUN apt-get update && apt-get install -y ansible
RUN ansible-galaxy collection install kubernetes.core
RUN apt-get update && apt-get install
# Establece un directorio de trabajo en el contenedor.
WORKDIR /usr/

# Define un comando para ejecutar cuando se inicie un contenedor basado en esta imagen.
CMD  ["bash /run.sh"]
