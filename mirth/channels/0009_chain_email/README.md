# 0009 Chain de canales con verificación de error y envío de email

## 0009_verifica_adt_chain_error

Este canal recibe mensajes HL7 v2.x y verifica el tipo de mensaje. Solo puede procesar ADT.
Si el tipo de mensaje es ADT, se ejecuta un destino, si no es ADT se ejecuta otro (filtros en conectores destino).

El destino que se ejecuta cuando el mensaje no es ADT es un Chanel Writer que apunta a 0009_chain_error_no_adt_email


## 0009_chain_error_no_adt_email

Canal que recibe los errores del canal 0009_verifica_adt_chain_error cuando recibe un mensaje que no es ADT.

Le llega el mensaje completo y envía una notificación por email indicando que el mensaje no es del tipo esperado.
