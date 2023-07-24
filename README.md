# Diplomado
El siguiente repositorio forma parte del examen referente al tema de docker
# Pasos para probar el contenedor:
1. Clocar el repositorio utilizando git
```bash
$ git clone https://github.com/Kevincastillo98/Diplomado
```
2. Abrir el directorio **Diplomado**
```bash
  $ cd Diplomado
```
3. Asegurarse de tener instalado docker dentro del equipo, en caso de no estar instalado, seguir los pasos detallados en la [Documentación oficial](https://docs.docker.com/engine/install/ubuntu/)

4. Creación de la imagen:
```bash
$ docker build -t kevincastillo/diplomado:v1 .
```
5. Inicialización del contenedor y exposición de puertos mediante port forwarding:
```bash
$ docker run -d -p 8080:80 -p 2222:22 kevincastillo/diplomado:v1
```
6. Para acceder al servidor web, abra una ventana en su navegador e ingresar la dirección http://127.0.0.1:8080

   ![image](https://github.com/Kevincastillo98/Diplomado/assets/32142163/5e567b06-da2e-456b-98e9-a07e0349bc99)


8. Para acceder al servicio de ssh abra una terminal y coloque el siguiente comando:
   ```bash
   ssh webuser@127.0.0.1 -p 22222
   ```
**La contraseña de acceso se encuentra en el archivo PDF de la entrega realizada**
