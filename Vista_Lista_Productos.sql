 create view VW_ListaProductos
 as
 Select p.Id as IdProducto, p.IdTipo, p.Precio, p.Nombre, p.Talle, p.Descripcion, p.Color, p.UrlImagen, 
 p.Estado, p.StockMinimo, p.StockActual, tp.Id, tp.Nombre as TipoNombre  from Producto as p join TipoProducto
 as tp on p.IdTipo = tp.Id
 
 select p.*, tp.* from Producto as p join TipoProducto tp on tp.Id = p.IdTipo

 
create view VW_ListaPromedioCompras
 as 
 select IdUsuario,U.NombreUsuario, nombre, apellido, 
 (select COUNT(*) from Pedidos as p where dp.IdUsuario=p.IdUsuario ) as 'CantidadCompras',
 (select isnull(AVG(P.importe),0) from Pedidos as p where dp.IdUsuario=p.IdUsuario) as 'PromedioCompras'
 from DatosPersonales as dp join Usuarios u ON u.Id=dp.IdUsuario
 

 select Idusuario, NombreUsuario, nombre, Apellido, CantidadCompras, PromedioCompras from VW_ListaPromedioCompras

 select 
 AVG(*) from pedidos as p where IdUsuario = @
 from


 select * from usuarios

 update Usuarios set IdTipoUsuario = 1 WHERE id = 17