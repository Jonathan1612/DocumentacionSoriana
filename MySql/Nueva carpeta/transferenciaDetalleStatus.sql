-- -------------------------------------------------------------------------------------
-- Obtiene detalle y estatus de la transferencia entre tienda
-- -------------------------------------------------------------------------------------
SELECT
	transfers.id as "TransferID",
	transfers.trackingNumber as 'Folio de Embarque',
    transferslocations.trackingNumber as "Folio de transferencia",
    transferslocations.claimTrackingNumber as "Folio de reclamacion",
	transfers.status as 'Estatus Origen',
    transferslocations.status as 'Estatus Destino',
	UPPER(originLocation.name) as 'Tienda origen',
	originLocation.externalId as 'Codigo tienda origen',
	UPPER(destinationLocation.`name`) as 'Tienda destino',
	destinationLocation.externalId as 'Codigo tienda destino',
	date(transfers.createdAt) as 'Fecha',
	productsquantities.sku as 'Codigo de barras',
	productsquantities.sapNumber as 'Material',
	products.name as 'Descripcion',
	transfersproductsquantities.quantity as 'Cantidad enviada',
	transfers.approvedAt as "tiene aprobacion gerente",
    transferslocations.regionalApprovedAt as "tiene autorizacion de regional"
	-- REPLACE(JSON_EXTRACT(destinationLocation.emails, "$.regional[1]"), "\"", '') as 'Correo regional',
	-- CONCAT("http://172.14.3.58:8000/api/v1/transfers/regional-approval/", transferslocations.uuid, "?approved=true") as 'Liga para aprobar',
	-- CONCAT("http://172.14.3.58:8000/api/v1/transfers/regional-approval/", transferslocations.uuid, "?approved=false") as 'Liga para cancelar'
FROM transfers
LEFT JOIN transferslocations ON transferslocations.transferId = transfers.id
LEFT JOIN locations originLocation ON originLocation.id = transfers.fromLocationId
LEFT JOIN locations destinationLocation ON destinationLocation.id = transferslocations.locationId
LEFT JOIN transfersproductsquantities ON transfersproductsquantities.transferLocationId = transferslocations.id
LEFT JOIN productsquantities ON productsquantities.id = transfersproductsquantities.productQuantityId
LEFT JOIN products ON products.id = productsquantities.productId
WHERE 
	transfers.type = 'STORE' 
	-- AND transfersproductsquantities.quantity > 0
 	AND transfers.trackingNumber in (138,141,143,144,153)	-- Folio Embarque (de Tienda Origen)
	-- AND transferslocations.trackingNumber In (138,141,143,144,153)	    -- Folio Transferencia (de Tienda Destino)
	--  AND originLocation.externalId in (919)       	-- Tienda Origen
	AND destinationLocation.externalId in (22);	-- Tienda Desti3671, 3672, 3673, 3674, 3675, 3676 3677 Y 3978no
    
    

-- 11703979

