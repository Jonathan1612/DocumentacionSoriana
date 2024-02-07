## cambiarEstadoDeAprobacionDeComercialACargosDeDevolucion

- Este procedimiento almacenado se encarga de cambiar el estado de aprobación de vobo de usuario comercial a una serie de cargos que así lo requieran. El estado en el que los folios deben de estar es `APPROVAL_REQUESTED` y pasan al estado de `PENDING_APPROVALS`.
- Una vez en el estado de `PENDING_APPROVALS`, el cronjob de envío de solicitud de aprobación que se ejecuta cada 15 minutos se puede llevar los cargos pendientes. Luego de este proceso, la solicitud de aprobación ya debería de aparecer en SAP.
- Enviar set de folios como una cadena de texto, cada folio separado por una coma y sin espacios.
 
### Firma

```sql
CALL cambiarEstadoDeAprobacionDeComercialACargosDeDevolucion(IN tienda INT, IN folios TEXT);
```
