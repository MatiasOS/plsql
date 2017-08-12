CREATE TABLE articulo(
    id_articulo integer PRIMARY KEY,
    descripcion varchar(40) NOT NULL,
    peso integer NOT NULL
    );

CREATE TABLE proveedor(
    id_proveedor integer PRIMARY KEY,
    apellido varchar(40) NOT NULL,
    nombre varchar(40) NOT NULL,
    rubro varchar(40) NOT NULL,
    ciudad varchar(40) NOT NULL,
    );

CREATE TABLE proveedor(
    id_proveedor integer REFERENCES proveedor,
    id_articulo integer REFERENCES articulo,
    apellido varchar(40) NOT NULL,
    PRIMARY KEY(id_proveedor, id_articulo)
    );