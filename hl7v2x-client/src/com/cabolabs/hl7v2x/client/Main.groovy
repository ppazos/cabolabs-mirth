/**
 *
 */
package com.cabolabs.hl7v2x.client

import ca.uhn.hl7v2.DefaultHapiContext
import ca.uhn.hl7v2.HL7Exception
import ca.uhn.hl7v2.HapiContext
import ca.uhn.hl7v2.app.Connection
import ca.uhn.hl7v2.app.ConnectionListener
import ca.uhn.hl7v2.app.HL7Service
import ca.uhn.hl7v2.app.Initiator
import ca.uhn.hl7v2.model.Message
import ca.uhn.hl7v2.parser.Parser
import ca.uhn.hl7v2.protocol.ReceivingApplication
import ca.uhn.hl7v2.protocol.ReceivingApplicationExceptionHandler
import ca.uhn.hl7v2.util.Hl7InputStreamMessageIterator

/**
 * @author pab
 *
 */
class Main {

   /**
    * in 0: out folder
    * in 1: server IP
    * in 2: server port
    */
   static main(args)
   {
      // input processing

      if (args.size() < 3 || args[0] == 'help')
      {
         println 'usage: hl7v2xsend hl7v2x_message_file server_ip server_port [number_of_messages]'
         System.exit(0)
      }

      def msg_file = new File(args[0])
      if (!msg_file.exists())
      {
         println "Message file "+ args[0] + " doesn't exists"
         System.exit(0)
      }

      if (!msg_file.canRead())
      {
         println "Can't read message file "+ args[0] + ", check permissions"
         System.exit(0)
      }

      int server_port
      try
      {
         server_port = args[2].toInteger()
      }
      catch (e)
      {
         println "Port "+ args[2] + " should be a valid positive integer number"
         System.exit(0)
      }

      int number_of_messages = 1
      try
      {
         number_of_messages = args[3].toInteger()
      }
      catch (e) {}


      // setup
      String server_ip = args[1]
      String msg_string = msg_file.text

      boolean useTls = false
      HapiContext context = new DefaultHapiContext()
      Parser p = context.getPipeParser()
      Message msg = p.parse(msg_string)


      Connection connection
      Initiator initiator
      Message response
      String responseString

      for (int i=0; i<number_of_messages; i++)
      {
         println "Send "+ (i+1) + ' ====================================='
         // the first one will connect, the next ones will return the same connection not create a new one
         connection = context.newClient(server_ip, server_port, useTls)
         initiator = connection.getInitiator()
         response = initiator.sendAndReceive(msg)
         responseString = p.encode(response)
         print "Received response:\n" + responseString.normalize()
         println '==============================================='
      }

      connection.close()
   }
}
