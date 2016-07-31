Lee de la tabla pacientes donde guarda el canal 0002, los registros no procesados, los marca como procesados, y los muestra en el destino. Es la base para crear bandejas de entrada y salida por medio de una base de datos y utilizar los transformadores del canal para enviar el mensaje a otro sistema.

El resultado que se muestra en el destino JavaScript Writer es el registro leido codificado como XML:

```
<result>
    <apellido>MASSIE</apellido>
    <nombre>JAMES</nombre>
    <id>4</id>
    <nacimiento>1956-01-29</nacimiento>
    <procesado>0</procesado>
    <sexo>masculino</sexo>
</result>
```
