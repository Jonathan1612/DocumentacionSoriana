
CALL consultarEmbarque(163775);
 
call consultarCacheDeMaterialesSapParaTienda(0135,11326145);  -- (tienda,material)
 
call consultarMaterialEnEmbarque(163775,11326145);   -- (embarque,material)    este para sacar el ID   
 
select * from palletsproducts where id in (135132749,135132749,135809084,135809084);       -- este para modificar la capacidad de empaque poniendo el ID  