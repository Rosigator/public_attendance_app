# Configuración del proyecto

## En la raíz del proyecto

1. Generar el secreto del jwt ejecutando el comando npm run secret, y copiar el valor que genera.
2. Ejecutar "docker-compose up" para levantar los contenedores de redis, redisinsight y postgreSQL.

## Dentro de la carpeta de NextJS

1. Instalar las dependencias con el gestor de paquetes preferido.
2. Copiar el .env.example como .env, y rellenar los correspondientes campos. El secreto de NextAuth debería ser el que generamos con npm run secret en la raíz.
3. Migrar las tablas corriendo el comando "npm run migrate --name nombre_migracion".

