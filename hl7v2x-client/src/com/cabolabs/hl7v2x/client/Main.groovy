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
         println 'usage: hl7v2xsend hl7v2x_message_file server_ip server_port'
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
      
      
      // setup
      String server_ip = args[1]
      String msg_string = msg_file.text 
      
      boolean useTls = false
      HapiContext context = new DefaultHapiContext()
      Parser p = context.getPipeParser()
      Message msg = p.parse(msg_string)
      

      Connection connection = context.newClient(server_ip, server_port, useTls)
      Initiator initiator = connection.getInitiator()
      Message response = initiator.sendAndReceive(msg)
      
      String responseString = p.encode(response)
      println("Received response:\n" + responseString)
      
      connection.close()
   }
}
