## agregarFechaDeExpiracionACargosDeDevolucion

- Este procedimiento almacenado se encarga de agregar fecha de expiración a todos los cargos de devolución que así lo requieran. Esto es, que se encuentren en el estado de `TO_DELIVER_BY_HAND` y no tengan fecha capturada en el campo de `expirationDate`.
- Este procedimiento almacenado ejecuta un barrido de todos los folios que se encuentren en el mismo estado, por lo que es probable que solo se necesite ejecutar una vez cada cierto tiempo.
- No se necesita ningún parámetro de entrada.

### Firma

```sql
CALL agregarFechaDeExpiracionACargosDeDevolucion();
```
