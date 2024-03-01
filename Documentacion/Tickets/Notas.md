## Cuando se ve en el monitor y no en MySql  se envia a

EMBARQUE INEXISTENTE mysql no trae informacion no existe
 
Se manda a
 
/Aplicativo Evolución Soriana/Recibo de CEDIS/Falla al visualizar el embarque	
 
Hola
Se reasigna por categoría incorrecta.
Saludos.

## Movimientos a revisar en las devoliciones
    311 
    161

## Movimientos a revisar en las embarques
    101 
    351

    
## Movimientos a revisar en las transferencia entre tiendas
    303 
    305
        
## Movimientos a revisar en las transferencia entre tiendas y citis
    981 
    982 

## Cuando no se ve en el monitor y si en MySql  se envia a

## Cuando se ven en ambos se manda a VoBo


Ticket: NC 2024-025710

Cedis: 5549
Embarque: 2036616
Pedido: 2106653555
Guia: 2217979

Error: Cons.: Salida de mercancía p.posición pedidos 2106653555 00001 no contab.todavía

INC 2024-029374

Cedis: 5549
Embarque: 2036744
Pedido: 2106655236
Guia: 2218156

Error: Cons.: Salida de mercancía p.posición pedidos 2106655236 00001 no contab.todavía





COntactos SAP

GENTE DE SAP PARA ENVIARLES CORREOS SAP
 
t_alejandroroc@soriana.com 
t_rogelior@soriana.com
t_josers@soriana.com
t_davidmam@soriana.com


Hola Compañeros de SAP
 
De su apoyo para quitar el marcado de la posición de borrado
 
Pedido 2106846687

Posición 44,45
 
Y con el estado bloqueo de compra.
 
Saludos Cordiales.

DAG


Inventarios mensuales en Agoste, problemas con 702 en el almacen 6, ir reportando conforme van salendo a Claudia


### Comando para entrar al ssh

    ssh -i "./jonathancm.txt" jonathancm@20.115.93.16

### No mandar pdf si ya estan en estatus finales como COMPLETED o ARRIVED ya que se cambiaria el estatus. Para eso preguntar si persiste la incidencia

    PDF de transfverencias, estatus enviado a destino en los dos estatus
    curl --location -g --request POST 'http://172.14.3.58:8000/graphql' --header 'Content-Type: application/json' --data-raw '{"query":"  mutation closeTransfer($transferID: ID!, $lockName: String!) {\n    closeTransfer(transferID: $transferID, lockName: $lockName) {\n      leftAt\n    }\n  }","variables":{"transferID":"1868116", "lockName": ""}}'

    Hola buen día, se realizo el reenvió de los pdf solicitados, favor de validar.

    Gracias, saludos
    

### Reenviuo de PDF para el reenvio del correo regional
### Para cuando este en APPROVED aun no esta autorizado por el regional

    curl --location -g --request POST 'http://172.14.3.58:8000/graphql' \
    --header 'Content-Type: application/json' \
    --data-raw '{"query":"  mutation transferApproval($transferID: ID!$isApproved: Boolean!) {\n    transferApproval(transferID: $transferID, isApproved: $isApproved) {\n      isSuccess\n    }\n  }","variables":{"transferID": 2738304, "isApproved": true}}'



    Hola buen día, se realizo el reenvió de la transferencia para que regional lo pueda ver, favor de validar.

    Gracias, saludos

Nota: la factura s eguarda en purchaseorders por el numero de factura

## Error
Título:	
TRENZA RELLENA.
Descripción:	

Buenas tardes.

Tenemos un problema con la descripcion del codigo  de la trensa rellena, la cual en el asistente electronico y en bascula aparece correctamente  el codigo y la descripcion, pero al momento de generar la merma de este codigo aparece con la descripcion de Hamburguesa parrillera 14 pz.

Por lo que solicito de su apoyo para corregir la descripcion del codigo en el sistema de mermas 

Solucion:

    Hola buenas tardes;

    Para solucionar el incidente por favor diríjanse al equipo de compras y dígales que 

    Estimado usuario para poder dar solución a lo reportado es necesario se ponga en contacto con el área de compras, para que gestione la homologación de descripción.

    Saludos.


El usuario de proteccion que se usa para dar ciertos vistos buenos, solo cuando se pide el usuario, esto aplica en varios casos y tambien puede ser el usuario de gerencia, cuestion de validar

Gerente subgerente y recibidor 


## explosionar aplica todo de la misma manera

## posiciones de traslado

    revisar 351 mandar a cedis, si ya lo tienen corregir con lo que hizo daniel



## Cartas de reclamacion

    Estas se le indica al usuario que ellos mismos pueden reenviar la carta de reclamacion y se les indica en donde con la siguiente imagen.



    Si son devoluciones generadas en login reasignar a service desk indicando eso.


## Nota de entra

    El documento que se genera a partir de un recibo de proveedor correcto
    recibo de proveedor
    remisones


Es estok minimo solo aplica para transferencias, en devoluciones no aplica no se mayo r al invewntario que se tiene
La tienda es la que hace su ajuste de inventatios si es que tienen mas piesas en existencia ellos hacen el ejuste no nosotros