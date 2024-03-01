
CALL consultarEmbarque(4764 );
 
call consultarCacheDeMaterialesSapParaTienda(1030,3053814);  -- (tienda,material)
 
call consultarMaterialEnEmbarque(16238,3053814);   -- (embarque,material)    este para sacar el ID   
 
select * from palletsproducts where id in (138897703);       -- este para modificar la capacidad de empaque poniendo el ID  