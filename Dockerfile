#Utilizamos una imagen base de Ubuntu con versión LTS
FROM ubuntu:18.04

# Actualizamos el sistema e instalamos Apache y SSH
RUN apt-get update && \
    apt-get install -y apache2 openssh-server && \
    rm -rf /var/lib/apt/lists/*

# Creamos un usuario para correr la aplicación y lo configuramos para poder autenticarse por SSH
RUN useradd -ms /bin/bash webuser 

# Generar el hash de la contraseña y establecerla para el usuario
RUN echo 'webuser:$1$SALT$YAvC.eJcH5xkcQTZAQB1I1' | chpasswd -e

# Levantamos los servicios de Apache y SSH
RUN service apache2 start && service ssh start

# Copiamos el contenido de la página web de ejemplo
COPY index.html /var/www/html/

# Asignamos la propiedad de los archivos de la página web al usuario webuser
RUN chown -R webuser:webuser /var/www/html/


# Exponemos los puertos de Apache y SSH
EXPOSE 80 22

# Levantar los servicios de Apache y SSH durante el inicio del contenedor
CMD service apache2 start && service ssh start && tail -f /dev/null
