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
3. Asegurarse de tener instalado docker dentro del equipo, en caso de no estar instalado, seguir los pasos detallados en la [Documentación oficial] (https://docs.docker.com/engine/install/ubuntu/)

4. Creación de la imagen:
```bash
$ docker build -t kevincastillo/diplomado:v1 .
```
5. Inicialización del contenedor y exposición de puertos mediante port forwarding:
```bash
$ docker run -d -p 8080:80 -p 2222:22 kevincastillo/diplomado:v1
```
