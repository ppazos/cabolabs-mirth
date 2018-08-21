@Grab('com.github.groovy-wslite:groovy-wslite:1.1.2')
import wslite.soap.*
import groovy.util.XmlSlurper

def client = new SOAPClient("http://localhost:15551/services/c06?wsdl")
def response = client.send(SOAPAction:'') {
  envelopeAttributes "xmlns:lns":"http://ws.connectors.connect.mirth.com/"
  body {
    'lns:acceptMessage' {
      // Se pasa xml como string porque el servicio de Mirth recibe string
      arg0('<paciente><nombre></nombre></paciente>')
    }
  }
}

println response.text // respuesta SOAP, XML como string
println response.acceptMessageResponse.return.text() // texto de la respuesta con XML

// Parsea el resultado porque el servicio de Mirth responde como String
//def xml = new XmlSlurper().parseText( response.acceptMessageResponse.return.text() )
//println xml.nombre.text()
