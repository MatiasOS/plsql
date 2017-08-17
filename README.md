# Final de bases de datos 1

## Creación de tablas
### N:N
```sql
CREATE TABLE articulo(
    id_articulo integer PRIMARY KEY,
    descripcion varchar(40) NOT NULL,
    peso integer NOT NULL
    );
```
```sql
CREATE TABLE proveedor(
    id_proveedor integer PRIMARY KEY,
    apellido varchar(40) NOT NULL,
    nombre varchar(40) NOT NULL,
    rubro varchar(40) NOT NULL,
    ciudad varchar(40) NOT NULL
    );
```
```sql
CREATE TABLE envio(
    id_proveedor integer REFERENCES proveedor,
    id_articulo integer REFERENCES articulo,
    cantidad integer NOT NULL,
    PRIMARY KEY(id_proveedor, id_articulo)
    );
```
###  1:N
```sql
CREATE TABLE persona(
    id_persona integer PRIMARY KEY,
    nombre varchar(40) NOT NULL,
    peso integer NOT NULL,
    id_empresa integer  REFERENCES empresa
    );
```
```sql
CREATE TABLE empresa(
    id_empresa integer PRIMARY KEY,
    nombre varchar(40) NOT NULL,
    ciudad varchar(40) NOT NULL
    );
```
###  Strong : weak
```sql
/*
CREATE TABLE persona(
    id_persona integer PRIMARY KEY,
    nombre varchar(40) NOT NULL,
    peso integer NOT NULL,
    id_empresa integer  REFERENCES empresa
    );
*/
```
```sql
CREATE TABLE historial(
    id_entrada integer REFERENCES persona NOT NULL,
    id_persona integer NOT NULL,
    descripcion varchar(40) NOT NULL,
    peso integer NOT NULL,
    PRIMARY KEY(id_entrada, id_persona)
    );
```