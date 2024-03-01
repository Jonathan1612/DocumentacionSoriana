
-- Transferencias entre Tiendas

select
    c.externalId as "origen",
    d.externalId as "destino",
    a.trackingNumber as "folio de embarque",
    b.trackingNumber as "folio de transferencia",
    b.claimTrackingNumber as "folio de reclamacion",
    a.status as "estado origen",
    b.status as "estado destino",
    a.type as "tipo",
    a.approvedAt as "tiene aprobacion",
    b.regionalApprovedAt as "tiene autorizacion de regional",
    b.uuid as "uuid",
    a.createdAt as "creacion",
    a.updatedAt as "actualizacion"
from
    transfers as a
    left join transferslocations as b on b.transferId = a.id
    left join locations as c on a.fromLocationId = c.id
    left join locations as d on b.locationId = d.id
where
    c.externalId in (449)						-- Tienda Origen (la que envia)
    and a.type = "STORE"
    and a.trackingNumber in (133)	-- Folio de la tienda que envia
    -- and d.externalId = 307
    ;

-- fromLocationId 	= Tienda Origen
-- b.locationId 	=  Tienda Destino
-- a.trackingNumber	= Folios de Tienda que envia
-- b.trackingNumber	= Folios de Tienda que recibe

