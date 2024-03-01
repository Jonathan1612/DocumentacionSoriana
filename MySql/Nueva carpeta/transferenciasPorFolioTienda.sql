SELECT
	originLocation.externalId as 'tienda origen',
	UPPER(originLocation.name) as 'nombre tienda origen',
	destinationLocation.externalId as 'tienda destino',
	UPPER(destinationLocation.name) as 'nombre tienda destino',	
	transfers.trackingNumber as 'folio de embarque',
	transferslocations.trackingNumber as 'folio de transferencia',
	transfers.status as 'estatus',
	date(transfers.createdAt) as 'fecha',
	transfers.regionalApprovedAt as 'fecha de aprobacion de regional',
	transfersproductsquantities.quantity as 'cantidad enviada',
	transfersproductsquantities.receivedQuantity as 'cantidad recibida',
	transfersproductsquantities.requestedQuantity as 'cantidad solicitada',
	transfersproductsquantities.damagedQuantity as 'cantidad danada',
	transfersproductsquantities.authorisedType as 'autorizacion',
	productsquantities.sku as 'codigo de barras',
	productsquantities.sapNumber as 'material',
	products.name as 'descripcion'
FROM transfers
LEFT JOIN transferslocations ON transferslocations.transferId = transfers.id
LEFT JOIN locations originLocation ON originLocation.id = transfers.fromLocationId
LEFT JOIN locations destinationLocation ON destinationLocation.id = transferslocations.locationId
LEFT JOIN transfersproductsquantities ON transfersproductsquantities.transferLocationId = transferslocations.id
LEFT JOIN productsquantities ON productsquantities.id = transfersproductsquantities.productQuantityId
LEFT JOIN products ON products.id = productsquantities.productId
WHERE
-- Buscar por folio de transferencia y por tienda origen
    originLocation.externalId in (449) and
    transfers.trackingNumber in (1590,1591);
