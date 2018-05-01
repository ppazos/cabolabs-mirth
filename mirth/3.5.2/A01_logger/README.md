# A01_logger

## (english)

**A01_logger.xml**

Channel that receives HL7 v2.x via MLLP on port 6661 and stores the message in a local folder.
The message can be sent through HAPI Test Panel or using our hl7v2xsend command: https://github.com/ppazos/cabolabs-mirth/tree/master/hl7v2x-client
Here you can find sample messages: https://github.com/ppazos/cabolabs-mirth/tree/master/hl7v2x

On each component of the channel and the Global Scripts, a log is executed, generating a log on the dashboard.

We'll check if the order of those messages is the same as the order we saw in the Mirth Connect intro of session 1.

## (español)

**A01_logger.xml**

Canal que recibe HL7 v2.x por MLLP en el puerto 6661 y lo guarda en una carpeta local.
Los mensajes pueden ser enviados por HAPI Test Panel, o mediante nuestro comando hl7v2xsend: https://github.com/ppazos/cabolabs-mirth/tree/master/hl7v2x-client
Aquí puedes encontrar mensajes de ejemplo: https://github.com/ppazos/cabolabs-mirth/tree/master/hl7v2x

Se hace un log en cada script, transformador y filtro para mostar el orden de ejecución de los mismos.

Verificaremos en el Dashboard de Mirth Connect que los logs están en el orden que vismo en la clase 1.
