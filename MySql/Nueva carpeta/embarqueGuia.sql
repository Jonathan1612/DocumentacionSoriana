/*
	Obtener #Embarque en base al #Guía
*/
	SELECT 
		b.number as "no de embarque",
		a.externalId as "guia",
		c.externalId as "CEDIS",
		c.name as "nombre de CEDIS",
		d.externalId as "tienda destino",
		d.name as "nombre de tienda destino",
		a.arrivedAt as "fecha de arribo",
		a.offloadingAt as "inicio de descarga", 
		a.readyToLeaveAt as "inicio de control de marchamos",
		a.leftAt as "inicio de recibo a detalle", 
		a.finishedAt as "fecha de conclusion",
		b.createdAt as "fecha de creacion",
		a.deletedAt as "fecha de borrado",
		b.processingAt as "fecha de inicio de procesado",
		a.claimMissingTrackingNumber as "folio de reclamacion",
		a.sapTransferMovements as "tranferencias"
FROM shipmentslocations as a
	left join shipments as b on a.shipmentId = b.id
	left join locations as c on a.locationFromId = c.id
	left join locations as d on a.locationToId = d.id
    where a.externalId = 246086
  --  where a.externalId = 1779282