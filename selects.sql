-- Select for N:N relation without join (usefull for views)
SELECT  e.id_proveedor,
        p.apellido,
        p.nombre,
        e.id_articulo,
        a.descripcion,
        a.peso,
        e.cantidad
FROM    proveedor p,
        articulo a,
        envio e
WHERE   a.id_articulo = e.id_articulo AND
        p.id_proveedor = e.id_proveedor AND
        ciudad = 'tandil';
-- Select for N:N relation with join
SELECT  e.id_proveedor,
        p.apellido,
        p.nombre,
        e.id_articulo,
        a.descripcion,
        a.peso,
        e.cantidad
FROM    proveedor p
INNER JOIN envio e ON (p.id_proveedor = e.id_proveedor)
INNER JOIN articulo a ON (a.id_articulo = e.id_articulo)
WHERE   ciudad = 'tandil';