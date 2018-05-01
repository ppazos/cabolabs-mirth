# B01 Variable Mappings

## (english)

**B01_variable_mappings_en.xml**

This Channel receives HL7 v2.x messages via MLLP on port 6663. Has Transformer
steps that map message data to variables, and has two Destinations: one JS just
logs the variables and the other DB Writer inserts the values of the variables
into a database.

This activity is similar to 0008, but 0008 reads files instead of
receiving messages, and do not writes on a database. But both show
how to extract and map input data to variables.

Just to make it more interesting, the sex data mapper transform values from
M / F to masculine / feminine, and the JS destination has a filter by that value:
any other than masculine / feminine sex is filtered.

Test with HL7 v2.x messages that have the patient's dob, no dob will make the DB
insert fail. Input data check can be easily implemented but the idea of this is
to make the simples example possible. After finishing the workshop you can add
those checks when doing real implementations.

Create the tables on the database from the terminal: mysql -u username -p mirth_tests < mysql_database_tables.sql

## (español)

**B01_variable_mappings.xml**

Recibe mensajes HL7 v2.x por MLLP, extrae datos de pacientes y los mapea a variables.

Se agrega un destination filter para no dejar pasar los mensajes que tienen un valor de sexo inválido.

Destination 2 es un Database Writer que está deshabilitado, para usarlo necesita instalar MySQL, crear
la base de datos "mirth_tests" y la tabla "pacientes" según:
https://github.com/ppazos/cabolabs-mirth/blob/master/mirth/mysql_database_tables.sql

Para crear las tablas en una base de datos existente desde la terminal: mysql -u username -p mirth_tests < mysql_database_tables.sql
