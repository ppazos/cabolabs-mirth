# 0010_soap_receiver

Ejemplo de canal con source connector Web Service Listener, que recibe XML y da como respuesta el mismo XML recibido.

Como cliente se puede utilizar https://github.com/ppazos/cabolabs-mirth/blob/master/soap/client_groovy/0010_client_script.groovy

```
def client = new SOAPClient("http://localhost:6681/services/mirth?wsdl")
def response = client.send(SOAPAction:'') {
  envelopeAttributes "xmlns:lns":"http://ws.connectors.connect.mirth.com/"
  body {
    'lns:acceptMessage' {
      arg0('<paciente><nombre>Pablo</nombre></paciente>')
    }
  }
}

println response.text // respuesta SOAP, XML como string
println response.acceptMessageResponse.return.text() // texto de la respuesta con XML

// Parsea el resultado porque el servicio de Mirth responde como String
def xml = new XmlSlurper().parseText( response.acceptMessageResponse.return.text() )
println xml.nombre.text()
```
