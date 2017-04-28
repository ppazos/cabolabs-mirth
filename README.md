# cabolabs-mirth

Ejemplos de Mirth Connect con propósitos educativos.

Creado y mantenido por www.CaboLabs.com


## Setup:

1. Crear base de datos mirth_tests en MySQL
2. Crear tablas (mirth/mysql_database_tables.sql)


## Ejecutar hl7v2x-client

    hl7v2xsend.bat ../hl7v2x/ADT_A03_ADT_A03.hl7 localhost 6661
    
    Debe modificar "localhost" por la IP donde esté corriendo el canal de Mirth que escuche MLLP,
    y "6661" por el puerto donde escuche ese canal.
