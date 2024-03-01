select
    locations.externalId as "centro",
    suppliers.number as "proveedor",
    purchaseordersgroups.trackingNumber as "acuse",
    purchaseorders.sapMaterialDocument as "matdoc",
    productsquantities.sapNumber as "material",
    productsquantities.sku as "sku",
    products.name as "producto",
    productsquantities.quantity as "cap. de empaque",
    productsquantities.unit as "unidad de medidad",
    purchaseordersproductsquantities.quantity as "cant.",
    purchaseordersproductsquantities.receivedQuantity as "cant. recibida",
    purchaseordersproductsquantities.damagedQuantity as "cant. danada",
    purchaseordersproductsquantities.sapInfo as "sap data", 
    purchaseordersproductsquantities.xmlData as "xml data"
from
    purchaseordersproductsquantities
    left join productsquantities on purchaseordersproductsquantities.productQuantityId = productsquantities.id
    left join products on productsquantities.productId = products.id
    left join purchaseorders on purchaseordersproductsquantities.purchaseOrderId=purchaseorders.id
    left join purchaseordersgroups on purchaseorders.purchaseOrderGroupId = purchaseordersgroups.id
    left join locations on purchaseordersgroups.locationId = locations.id
    left join suppliers on purchaseordersgroups.supplierId = suppliers.id
where
     purchaseordersgroups.trackingNumber like ('%199172%') 
   -- and purchaseorders.name		like ("%199172%")
    and
    locations.externalId in (247);