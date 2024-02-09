


-- consultarMaterialEnEmbarque
-- Este procedimiento almacenado consulta un material para un embarque.
-- Con este procedimiento almacenado podemos obtener información del material. Para obtener información relacionada a SAP, SLS o CEDIS, consultar la columa de xmlData. Estos datos están en formato JSON.
-- El caso de uso de este programa es para consultar y validar la información de un material dentro de un embarque, por ejemplo, luego de haber sido borrado.

CALL consultarMaterialEnEmbarque(IN embarque VARCHAR(50), IN material VARCHAR(50));

call consultarMaterialEnEmbarque(8008423)