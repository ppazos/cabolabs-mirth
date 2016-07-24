# 0001_logger

Canal simple que recibe HL7 v2.x por MLLP en el puerto 6661 y lo guarda en un directorio.
Se hace un log en cada script, transformador y filtro para mostar el orden de ejecución de los mismos.
Los mensajes pueden ser enviados por HAPI Test Panel, no importa el tipo de mensaje.