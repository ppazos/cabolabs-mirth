# B06 EHRServer Tests

## (english)

**B06_ehrserver_client.xml**

This Channel executes a JS Reader each 30 seconds just to allow the destinations to connect to the EHRServer, and
call the authentication, query and get ehrs services from the EHRServer (https://cloudehrserver.com)

We use Wireshark to monitor the network traffic between Mirth Connect and the EHRServer.


## (español)

**B016_ehrserver_client.xml**

Este canal prueba la conexión con un servidor HTTP, utilizando la API REST del EHRServer (https://cloudehrserver.com).

Primero lista historias clínicas, y luego ejecuta una consulta de datos.

Utilizamos Wireshark para monitorear el tráfico de la red entre Mirth y EHRServer en la nube.
