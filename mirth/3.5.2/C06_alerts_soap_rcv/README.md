# C06_alerts_soap_rcv

## (english)

**C06_alerts_soap_rcv.xml**

TBD


## (español)

**C06_alerts_soap_rcv.xml**

El canal recibe por SOAP un XML y verifica si el nombre del paciente es vacío. Si lo es lanza una excepción.
En el destino, lanza una alerta explícita. Tanto la alerta como la excepción son capturadas por una alerta
configurada para este canal. La alerta envía un correo electrónico con información.

WSDL (luego de hacer deploy): http://localhost:15551/services/c06?wsdl

Para enviar el pedido SOAP: $ groovy C06_soap_client.groovy

Necesita instalar Groovy: http://groovy-lang.org/
También puede hacerse la prueba desde un cliente como SoapUI: https://www.soapui.org/
