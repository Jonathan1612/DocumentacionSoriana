SELECT
	transfers.trackingNumber as 'Folio de Embarque',
    transfers.status as 'Estatus',
    transfers.type as 'Tipo',
    transferslocations.trackingNumber as "folio de transferencia",
    transferslocations.claimTrackingNumber as "folio de reclamacion",
	#transfers.status as 'Estado',
	UPPER(originLocation.name) as 'Tienda origen',
	originLocation.externalId as 'Codigo tienda origen',
	UPPER(destinationLocation.`name`) as 'Tienda destino',
	destinationLocation.externalId as 'Codigo tienda destino',
	date(transfers.createdAt) as 'Fecha',
	transfersproductsquantities.quantity as 'Cantidad enviada',
	productsquantities.sku as 'Codigo de barras',
	productsquantities.sapNumber as 'Material',
	products.name as 'Descripcion',
	REPLACE(JSON_EXTRACT(destinationLocation.emails, "$.regional[1]"), "\"", '') as 'Correo regional',
    REPLACE(JSON_EXTRACT(originLocation.emails, "$.regional[1]"), "\"", '') as 'Correo Origen ',
		CONCAT("http://172.14.3.58:8000/api/v1/transfers/regional-approval/", transferslocations.uuid, "?approved=true") as 'Liga para aprobar',
		CONCAT("http://172.14.3.58:8000/api/v1/transfers/regional-approval/", transferslocations.uuid, "?approved=false") as 'Liga para cancelar'
FROM transfers
LEFT JOIN transferslocations ON transferslocations.transferId = transfers.id
LEFT JOIN locations originLocation ON originLocation.id = transfers.fromLocationId
LEFT JOIN locations destinationLocation ON destinationLocation.id = transferslocations.locationId
LEFT JOIN transfersproductsquantities ON transfersproductsquantities.transferLocationId = transferslocations.id
LEFT JOIN productsquantities ON productsquantities.id = transfersproductsquantities.productQuantityId
LEFT JOIN products ON products.id = productsquantities.productId
WHERE 
	transfers.type = 'STORE' 
	-- AND transfers.status = 'APPROVED' 
	AND transfersproductsquantities.quantity > 0
	AND transfers.trackingNumber in (30688)
    AND originLocation.externalId in (81);
    
    
