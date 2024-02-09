select 
d.externalId as 'Tienda', 
e.trackingNumber as 'Folio', 
b.sapNumber as 'SKU', 
b.sku as 'EAN', 
c.name as 'Descripcion', 
b.quantity as 'Capacidad de empaque', 
b.unit as 'Unidad', a.totalQuantity as 'Cant. total', 
a.receivedQuantity as 'Cant. a devolver', 
JSON_UNQUOTE( JSON_EXTRACT( g.sapInfo,'$.Material.STOCKS[1].Warehouse_LGORT')) as 'Almacén', 
JSON_UNQUOTE(JSON_EXTRACT( g.sapInfo,'$.Material.STOCKS[1].QtyAvailable_LABST')) as 'Cant. en almacén', 
e.createdAt as 'Fecha de folio', g.updatedAt as 'Ult. fecha de modificación de cache'
from 
returnorderproductquantity as a 
left join productsquantities as b on a.productQuantityId = b.id 
left join products as c on b.productId = c.id left join returnorders as e on a.returnOrderId = e.id 
left join returnordergroups as f on e.returnOrderGroupId = f.id left join locations as d on e.locationId = d.id 
left join locationsstocks as g on g.productQuantityId = b.id and g.locationId = d.id
	where
		d.externalId in (573) and
		e.trackingNumber in (4490525)
        -- b.sapNumber IN (377153);
		-- order by e.createdAt desc limit 100;