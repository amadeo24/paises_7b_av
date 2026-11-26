# Países 7B

CRUD de países con Express, MySQL y una interfaz web.

## Base de datos

Desde el directorio del proyecto, abre MySQL como administrador:

```bash
sudo mysql
```

En el prompt de MySQL, ejecuta el script SQL usando su ruta completa. En esta instalación:

```sql
SOURCE /home/ciata14/zalaza/paises/database.sql;
```

Crea un usuario local para la aplicación y elige una clave propia (reemplaza el texto de ejemplo):

```sql
CREATE USER IF NOT EXISTS 'paises_user'@'localhost' IDENTIFIED BY 'ELIGE_UNA_CLAVE';
GRANT SELECT, INSERT, UPDATE, DELETE ON Paises_7B.* TO 'paises_user'@'localhost';
EXIT;
```

## Iniciar

```bash
cd /home/ciata14/zalaza/paises
read -rsp "Clave MySQL: " DB_PASSWORD; echo
export DB_USER=paises_user DB_PASSWORD
npm start
```

Abre http://localhost:3000. La clave se solicita en la terminal y no se guarda en el repositorio.

La aplicación también acepta `DB_HOST` y `DB_NAME`; por defecto usa `localhost` y `Paises_7B`.

## Repositorio y VS Code

Este proyecto está vinculado al repositorio `amadeo24/paises_7b_av` y está bajo la carpeta `zalaza`. Para abrirlo desde una terminal:

```bash
code /home/ciata14/zalaza/paises
```

Revisa la cuenta activa desde el menú **Accounts** de VS Code. Cierra sesión solo si aparece una cuenta que no te pertenece; no compartas contraseñas ni tokens.
