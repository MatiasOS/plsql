# Final de bases de datos 1

## Tables creation
### Artículo
CREATE TABLE articulo(
    id_articulo integer PRIMARY KEY,
    descripcion varchar(40) NOT NULL,
    peso integer NOT NULL
    );

### Proveedor
CREATE TABLE proveedor(
    id_proveedor integer PRIMARY KEY,
    apellido varchar(40) NOT NULL,
    nombre varchar(40) NOT NULL,
    rubro varchar(40) NOT NULL,
    ciudad varchar(40) NOT NULL
    );

### Envío
CREATE TABLE envio(
    id_proveedor integer REFERENCES proveedor,
    id_articulo integer REFERENCES articulo,
    cantidad integer NOT NULL,
    PRIMARY KEY(id_proveedor, id_articulo)
    );
    
