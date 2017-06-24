# 0009 Chain & Email

## (english)

**0009_channel1_check_adt.xml**

This channel receives HL7 v2.x via MLLP on port 6669. The source filter checks if the inbound message is ADT, it it's not, it creates a variable *error* and sets it to *true*, but allows the message to go through.

Two destinations, each one with a filter, checks if error is true or false. The JS destination is executed if error == false, and logs the received message. The Channel Writer destination is executed when error == true, and forwards the message to the channel 2.

**0009_channel2_error_email.xml**

This channel receives forwarded messages from channel 1, and sends email notifications about the message type not being of the exact type (ADT) expeted by channel 1.


## (español)

**0009_channel1_check_adt.xml**

Este canal recibe mensajes HL7 v2.x y verifica el tipo de mensaje. Solo puede procesar ADT.
Si el tipo de mensaje es ADT, se ejecuta un destino, si no es ADT se ejecuta otro (filtros en conectores destino).

El destino que se ejecuta cuando el mensaje no es ADT es un Chanel Writer que apunta a 0009_chain_error_no_adt_email

**0009_channel2_error_email.xml**

Canal que recibe los errores del canal 0009_verifica_adt_chain_error cuando recibe un mensaje que no es ADT.

Le llega el mensaje completo y envía una notificación por email indicando que el mensaje no es del tipo esperado.
