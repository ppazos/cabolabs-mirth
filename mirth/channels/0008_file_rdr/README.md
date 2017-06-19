# 0008 File Reader Outbox

## (english)

**0008_file_rdr_en.xml**

This Channel reads CSV files from the inbox folder, maps it's contents to variables and the
Destination Connector just logs the variables out.

This is the basic example of a file-based outbox. An app that can't send messages, writes files out,
those files are read by Mirth, processed, and data can be mapped to a XML or JSON message and sent
to a desintation or stored in a database.

The outbox folder contains a couple of sample CSV files. After processed, those files will have
a .done extension. If you want to execute the Channel again just remove the .done


## (español)

**0008_bandeja_de_entrada_file.xml**

Este canal lee archivos CSV desde la carpeta inbox, extrae sus datos a variables y muestra los
valores de las variables en el conector destino.

Este es un ejemplo simple de inbox con archivos. Luego de que el archivo es procesado, sus datos
podrían usarse para generar mensajes XML o JSON y enviarlos a un destino, o para escribir en una
base de datos.

La carpeta inbox contiene algunos archivos de ejemplo con resultados de laboratorio en formado CSV.
Al ser procesados, el canal agregará la extensión .done. Para volver a ejecutar el canal, solo
remueve la extensión .done de los archivos.
