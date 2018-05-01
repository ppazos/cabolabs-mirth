# B02 Database Reader

## (english)

**B02_db_reader_en.xml**

Source Connector reads from MySQL **mirth_tests** database, **patients** table, populated
by the activity 0002. Each record has a **processed** column that is false by default and
is set to true when read by this channel.

Each unprocessed record is read with this format:

```
<result>
    <lastname>MASSIE</lastname>
    <name>JAMES</name>
    <id>4</id>
    <dob>1956-01-29</dob>
    <processed>0</processed>
    <sex>masculino</sex>
</result>
```

The JS destination just shows the record processed by the channel.


## (español)

**B02_db_reader.xml**

Lee de la tabla pacientes donde guarda el canal 0002, los registros no procesados, los marca
como procesados, y los muestra en el destino. Es la base para crear bandejas de entrada y
salida por medio de una base de datos y utilizar los transformadores del canal para enviar
el mensaje a otro sistema.

El resultado que se muestra en el destino JavaScript Writer es el registro leido
codificado como XML:

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
