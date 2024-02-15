# Bloqueo Total

**Título:**
ERROR EMBARQUE

**Descripción:**
no permite dar arribo a embarque

![](./img/bloqueoAlaCompra.png) 

Se revisa el embarque en MySql con el siguiente escript 

    call consultarEmbarque(2096452);

Si aparece un mensaje similar a este 

![](./img/bloqueoAlaCompra2.png) 

Se manda a VoBo con el siguiente mensaje

    Estimado usuario, 
        
    El mensaje que regresa el sistema no es un error, es una validación ya que un material con status de Bloqueo a la Compra y con estatus de Baja del Articulo no es válido para generar movimientos en la APP (Ajustes, Mermas, Transferencias, etc.) Se revisa en el sistema y se detecta que el material está en status BC y BZ para su tienda, cambio realizado por el área de compras.
    ‌Seria necesario acercarse con el equipo de compras para mayor información.

    Gracias, saludos