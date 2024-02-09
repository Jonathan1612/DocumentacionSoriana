
-- ------------------------------
-- RECIBO EMBARQUE:
-- ------------------------------
select 
	shipmentslocations.id as 'shipmentLocationId',
	shipments.number as "Embarque",
    shipmentslocations.externalId as "Guia",
    shipmentslocations.receiveType as "Tipo de recibo",
	destination.externalId as "Tienda",
	origin.externalId as "CEDIS",
	JSON_UNQUOTE(JSON_EXTRACT(palletsproducts.xmlData, '$[0].Id_Fol_Trsf')) as "Transferencia",
	productsquantities.sapNumber as "Material",
	productsquantities.sku as "Codigo",
	products.name as "Producto",
	productsquantities.unit as "Unidad de medida", 
	productsquantities.quantity as "Cap. de empaque",
	JSON_UNQUOTE(JSON_EXTRACT(palletsproducts.xmlData, '$[0].Cap_Empaque')) as "Cap. empaque cedis",
	palletsproducts.quantitySent as "Cantidad enviada",
	palletsproducts.quantityReceived as "Cantidad recibida",
    palletsproducts.missingProductQuantity	as "Cantidad faltante",
    palletsproducts.extraProductQuantity as "Cantidad Sobrante",
    palletsproducts.damagedProductQuantity as "Cantidad dañada",
    -- pallets.updatedAt		AS 'Fecha Capturado',
    shipmentslocations.arrivedAt as "Fecha Arribo",
    shipmentslocations.offloadingAt as "Fecha Descarga",
    shipmentslocations.finishedAt as "Fecha Concluido",
    shipmentslocations.automaticCloseAt as "FechaCierreAutom"
    -- palletsproducts.deletedAt as "FechaEliminadoPallet",
    -- palletsproducts.id as "IdPallet"
from palletsproducts
	left join productsquantities
		on palletsproducts.productQuantityId = productsquantities.id
	left join products
		on productsquantities.productId = products.id
	left join pallets
		on palletsproducts.palletId = pallets.id
	left join shipments
		on pallets.shipmentId = shipments.id
	left join shipmentslocations
		on  shipmentslocations.shipmentId = shipments.id
	left join locations as destination
		on  shipmentslocations.locationToId = destination.id
	left join locations as origin
		on  shipmentslocations.locationFromId = origin.id
where 
	-- shipmentslocations.createdAt > "2023-07-01 00:00:00" and
    -- shipmentslocations.receiveType in ('TRUSTED')
	shipments.number IN (244939);			 	-- Embarque
	-- and
	-- shipmentslocations.externalId IN (2474338)	and -- Guia 
	-- productsquantities.sapNumber IN ('11499667') and
	-- and
	-- destination.externalId >= 1001 -- );
	-- AND
	-- palletsproducts.quantitySent <> 	palletsproducts.quantityReceived
	-- AND
	-- pallets.deletedAt	is null
	-- and
	-- shipmentslocations.arrivedAt is not null
	-- and
	-- shipmentslocations.offloadingAt is null;
   
-- call consultarembarque(824017);
-- 211320000001
-- 211290000001