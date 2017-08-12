# Final de bases de datos 1

## Creación de tablas
### Artículo
```sql
CREATE TABLE articulo(
    id_articulo integer PRIMARY KEY,
    descripcion varchar(40) NOT NULL,
    peso integer NOT NULL
    );
```
### Proveedor
```sql
CREATE TABLE proveedor(
    id_proveedor integer PRIMARY KEY,
    apellido varchar(40) NOT NULL,
    nombre varchar(40) NOT NULL,
    rubro varchar(40) NOT NULL,
    ciudad varchar(40) NOT NULL
    );
```

### Envío
```sql
CREATE TABLE envio(
    id_proveedor integer REFERENCES proveedor,
    id_articulo integer REFERENCES articulo,
    cantidad integer NOT NULL,
    PRIMARY KEY(id_proveedor, id_articulo)
    );
  ```  

## Inserts
### Artículos
```sql
INSERT INTO articulo VALUES(1, 'zapatilla', 800);
INSERT INTO articulo VALUES(2, 'botin', 830);
INSERT INTO articulo VALUES(3, 'zapato', 1130);
INSERT INTO articulo VALUES(4, 'zapato trabajo', 1730);
```

### Proveedor
```sql
INSERT INTO proveedor VALUES(1, 'apellido1', 'nombre', 'calzado', 'tandil');
INSERT INTO proveedor VALUES(2, 'apellido2', 'nombre', 'calzado', 'tandil');
INSERT INTO proveedor VALUES(3, 'apellido3', 'nombre', 'calzado', 'caba');
INSERT INTO proveedor VALUES(4, 'apellido4', 'nombre', 'calzado', 'caba');
```

### Envío
```sql
INSERT INTO envio VALUES(1, 4, 121);
INSERT INTO envio VALUES(1, 3, 12);
INSERT INTO envio VALUES(2, 1, 12);
INSERT INTO envio VALUES(2, 2, 176);
```