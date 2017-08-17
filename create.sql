-- N:N

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
    ciudad varchar(40) NOT NULL
    );

CREATE TABLE envio(
    id_proveedor integer REFERENCES proveedor,
    id_articulo integer REFERENCES articulo,
    cantidad integer NOT NULL,
    PRIMARY KEY(id_proveedor, id_articulo)
    );

-- 1:N
CREATE TABLE persona(
    id_persona integer PRIMARY KEY,
    nombre varchar(40) NOT NULL,
    peso integer NOT NULL,
    id_empresa integer  REFERENCES empresa
    );

CREATE TABLE empresa(
    id_empresa integer PRIMARY KEY,
    nombre varchar(40) NOT NULL,
    ciudad varchar(40) NOT NULL
    );

-- Strong : weak
/*
CREATE TABLE persona(
    id_persona integer PRIMARY KEY,
    nombre varchar(40) NOT NULL,
    peso integer NOT NULL,
    id_empresa integer  REFERENCES empresa
    );
*/
CREATE TABLE historial(
    id_entrada integer REFERENCES persona NOT NULL,
    id_persona integer NOT NULL,
    descripcion varchar(40) NOT NULL,
    peso integer NOT NULL,
    PRIMARY KEY(id_entrada, id_persona)
    );
