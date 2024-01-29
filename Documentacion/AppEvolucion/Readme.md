Contactos 



curl --location -g --request POST 'http://172.14.3.58:8000/graphql' \
--header 'Content-Type: application/json' \
--data-raw '{"query":"  query sendPdf($purchaseOrderGroupId: ID!) {\n    sendPdf(purchaseOrderGroupId: $purchaseOrderGroupId) {\n      isSuccess\n    }\n  }","variables":{"purchaseOrderGroupId":"6227667"}}'


