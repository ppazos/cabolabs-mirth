package paquete;

import java.util.UUID;

public class Servicio {

   // Constructor
   public Servicio() {}

   public static String toUpper(String s)
   {
      return s.toUpperCase();
   }

   public static String toLower(String s)
   {
      return s.toLowerCase();
   }

   public static int size(String s)
   {
      return s.length();
   }

   public static String uuid()
   {
      return UUID.randomUUID().toString();
   }
}
