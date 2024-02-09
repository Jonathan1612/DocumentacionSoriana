select https://urldefense.com/v3/__http://a.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNi_BcQbUl$  as 'transferId', https://urldefense.com/v3/__http://b.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNiz33V6A-$  as 'transferLocationId', c.externalId as 'origin', d.externalId as 'destination', a.trackingNumber as 'transferTrackingNumber', b.trackingNumber as 'transferLocationTrackingNumber', a.transferReason, a.status as 'transferStatus', b.status as 'transferLocationStatus', a.type as 'transferType', a.approvedAt as 'managerApprovedAt', a.updatedAt, b.regionalApprovedAt, b.uuid, a.createdAt, b.claimTrackingNumber, b.cancelledAt, b.uuid from transfers as a left join transferslocations as b on b.transferId = https://urldefense.com/v3/__http://a.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNi_BcQbUl$  left join locations as c on a.fromLocationId = https://urldefense.com/v3/__http://c.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNiwgnG9uY$  left join locations as d on b.locationId = https://urldefense.com/v3/__http://d.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNi9tIlAHn$  where c.externalId in (998) and a.trackingNumber in (1737) and a.type ='STORE';
select * from locations where externalId in (5548);
SELECT https://urldefense.com/v3/__http://transfersproductsquantities.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNixXFMBx3$ , transfers.trackingNumber as 'transferTrackingNumber', transfers.status as 'status', originLocation.externalId as 'origin', destinationLocation.externalId as 'destination', transfersproductsquantities.createdAt, transfersproductsquantities.quantity as 'sent', transfersproductsquantities.receivedQuantity as 'received', transfersproductsquantities.requestedQuantity as 'requested', productsquantities.sku as 'sku', productsquantities.sapNumber as 'sapNumber', https://urldefense.com/v3/__http://products.name__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNi-mpe11r$  as 'product' FROM transfers LEFT JOIN transferslocations ON transferslocations.transferId = https://urldefense.com/v3/__http://transfers.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNi1gAGdf2$  LEFT JOIN locations originLocation ON https://urldefense.com/v3/__http://originLocation.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNi7WlAStf$  = transfers.fromLocationId LEFT JOIN locations destinationLocation ON https://urldefense.com/v3/__http://destinationLocation.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNi3jFmKQt$  = transferslocations.locationId LEFT JOIN transfersproductsquantities ON transfersproductsquantities.transferLocationId = https://urldefense.com/v3/__http://transferslocations.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNi-HEyWi8$  LEFT JOIN productsquantities ON https://urldefense.com/v3/__http://productsquantities.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNiyzdVb10$  = transfersproductsquantities.productQuantityId LEFT JOIN products ON https://urldefense.com/v3/__http://products.id__;!!CQ-O-_qA!tMo4dvqqhAm5r8nP7ye1s5p0WKZRA-wjKxpMXDtVJq46jyyWM40BoPpzj_og3n_bYA7MPNvLKrtNi9KklSYh$  = productsquantities.productId
	WHERE
	transfers.type ='STORE'
	AND originLocation.externalId in (396)
	AND transfers.trackingNumber in (4979, 4989, 4982, 4983, 4849, 4865, 4931);
select * from locations where externalId in (1029);
select * from locationsinfo where id in (883);
select * from locationsinfo where locationId in (883);
select * from locationsinfo where id in (146);
select * from transfers where id in (340835);
select * from transferslocations where transferId in (340835);
select * from transferslocations where id in (210482, 210628, 211094, 211368, 211390, 211400, 211455);
select * from transfersproductsquantities where transferLocationId in (210482, 210628, 211094, 211368, 211390, 211400, 211455);
select * from transfersproductsquantities where id in (6066213, 6056405);
select * from transfers where trackingNumber in (29567) and fromLocatio;

select * from transfers 
    LEFT JOIN locationsinfo on transferLocationTrackingNumber in (114)
    where trackingNumber in (29567)
    
    
describe locationsinfo;
    
    
    