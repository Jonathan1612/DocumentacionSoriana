use soriana;

call consultarFoliosDeDevolucion("22", "73512,73457");


SHOW CREATE PROCEDURE consultarFoliosDeDevolucion;


-- PENDIENTE DATOS DE ENVIO a DESTRUIDO POR VENCIMIENTO
CALL cambiarEstatusADestruidoPorVencimientoASetDeCargos ("","");

-- POR ENTREGA DE MANO A DESTRUIDO POR VENCIMIENTO
call cambiarEstatusADestruidoPorVencimientoASetDeCargos ("", "");

-- PENDIENTE DATOS DE ENVIO a POR ENTREGA EN MANO
CALL cambiarTipoDeDevolucionASetDeCargosFedex ("", "");

--  POR ENTREGA DE MANO a DEVUELTO AL PROVEEDOR
CALL cambiarEstatusAEntregadoASetDeCargos ("","");

-- PENDIENTE CONFIRMACION DE TRANSPORTISTA a DESTRUIDO POR VENCIMIENTO
CALL cambiarEstatusADestruidoPorVencimientoASetDeCargos ("","");

CALL cambiarTipoDeDevolucionASetDeCargosFedex("","");



