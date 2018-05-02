# B03 Sync/Async Destinations

## (english)

**B03_async_destinations.xml**

This channel receives HL7 v2.x via MLLP on port 6671. Does nothin to the message,
Has three different destinations that are executed in parallel and we measure the
execution time and make some logs to understand this behavior.


**B03_sync_destinations.xml**

This channel receives HL7 v2.x via MLLP on port 6672. Does nothing to the message.
Has three different destinations that are executed in series and we measure the
execution time and make some logs to understand this behavior.



## (español)


**B03_async_destinations.xml**

Muestra cómo se ejecutan varios destinos en paralelo, aumentando la velocidad de
ejecución.

**B03_sync_destinations.xml**

Muestra cómo se ejecutan varios destinos en serie, que es la configuración por
defecto de Mirht cuando un canal tiene más de unb destino.
