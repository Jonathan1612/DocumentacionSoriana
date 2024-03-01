### No mandar pdf si ya estan en estatus finales como COMPLETED o ARRIVED ya que se cambiaria el estatus. Para eso preguntar si persiste la incidencia

PDF de transfverencias, estatus enviado a destino en los dos estatus

    curl --location -g --request POST 'http://172.14.3.58:8000/graphql' --header 'Content-Type: application/json' --data-raw '{"query":"  mutation closeTransfer($transferID: ID!, $lockName: String!) {\n    closeTransfer(transferID: $transferID, lockName: $lockName) {\n      leftAt\n    }\n  }","variables":{"transferID":"1868116", "lockName": ""}}'

    Hola buen día, se realizo el reenvió de los pdf solicitados, favor de validar.

    Gracias, saludos


**Nota:** *Cundo esten en estatus finales pedirle a Daniel limas arvolution que los accionen.*
    

### Reenviuo de PDF para el reenvio del correo regional
### Para cuando este en APPROVED aun no esta autorizado por el regional

    curl --location -g --request POST 'http://172.14.3.58:8000/graphql' \
    --header 'Content-Type: application/json' \
    --data-raw '{"query":"  mutation transferApproval($transferID: ID!$isApproved: Boolean!) {\n    transferApproval(transferID: $transferID, isApproved: $isApproved) {\n      isSuccess\n    }\n  }","variables":{"transferID": 2738304, "isApproved": true}}'



    Hola buen día, se realizo el reenvió de la transferencia para que regional lo pueda ver, favor de validar.

    Gracias, saludos

Nota: la factura s eguarda en purchaseorders por el numero de factura

## Consultar detalles de un producnto hacia SAP

    curl --location 'http://172.14.3.58:8000/graphql' \

    --header 'Content-Type: application/json' \

    --data '{"query":"query productDetailsSAPInfo(\r\n    $sku: String!\r\n    $locationSlug: String!\r\n    $statusToFilter: [ProductQuantityStoreStatus]\r\n  ) {\r\n    productDetailsForLocation(sku: $sku, locationSlug: $locationSlug) {\r\n      id\r\n      unit\r\n      sku\r\n      sapRefreshLocationStock: getLocationStock(\r\n        locationSlug: $locationSlug\r\n        statusToFilter: $statusToFilter\r\n        flag: \"\"\r\n      ) {\r\n        sapInfo {\r\n          Material {\r\n            DescriptionNode_DESC_NODO,\r\n            DescriptionHierarchy_DESC_CATEG,\r\n            MiddlePrice_VERPR,\r\n            SafetyStock_EISLO,\r\n            UnitNumerator_UMREZ,\r\n            Planning_DISMM,\r\n            UnitSettlement_BSTME,\r\n            Unit_BASE_UOM,\r\n            STOCKS {\r\n              Warehouse_LGORT\r\n              QtyAvailable_LABST\r\n            },\r\n            Material_MAKTX\r\n          }\r\n        }\r\n        updatedAt\r\n      }\r\n    }\r\n  }","variables":{"sku":"7501123013340","locationSlug":"CITY-CLUB-GOMEZ-PALACIO-MMUQ1O2B"}}'


## Descargar embarque


    curl --location -g --request POST 'http://172.14.3.58:8000/graphql' \
    --header 'Content-Type: application/json' \
    --data-raw '{"query":"  mutation TruckStartOffloading($shipmentLocationId: ID!) {\n    truckStartOffloading(shipmentLocationId: $shipmentLocationId) {\n      isSuccess\n    }\n  }","variables":{"shipmentLocationId":"681984"}}'