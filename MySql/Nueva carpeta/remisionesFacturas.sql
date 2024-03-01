select
    c.externalId as "Det",
    c.name as "Nombre de determinante",
    d.number as "Numero de proveedor",
    d.name as "Proveedor",
    a.trackingNumber as "Folio de acuse",
    a.discardedProductsTrackingNumber as "Folio de ficha de salida",
    b.name as "Remision/Factura",
    b.status as "Estado", 
    b.sapMaterialDocument as "Documento de material SAP",
    b.createdManually as "Remision manual",
    a.createdAt as "Fecha de creacion",
    b.updatedAt as "Fecha de modificacion"
from
    purchaseordersgroups as a
    left join purchaseorders as b on b.purchaseOrderGroupId = a.id
    left join locations as c on a.locationId = c.id
    left join suppliers as d on a.supplierId = d.id
where
    b.name like "%12964%"  -- remision o factura
  -- a.trackingNumber in (12031) 
    and c.externalId in (897);  -- tienda