# 0013_adt_to_json

## (english)

**0013_adt_to_json_en.xml**

This Channel receives HL7 v2.x via MLLP on port 6685. The Source Transformer extracts some data and creates a JS object.
The objects is serialized to a JSON string and forwarded as the message to the Destination. a JS Destination just logs
the message.


## (español)

**0013_adt_to_json.xml**

Este ejemplo recibe un mensaje HL7 v2.5 ADT_A04 por MLLP en el puerto 6685, 
y lo transforma (en parte) en un mensaje JSON.

Mensaje de ejemplo:

```
MSH|^~\&|REGADT|MCM|IFENG||199112311501||ADT^A04^ADT_A01|000001|P|2.5.1|||
EVN|A04|200301101500|200301101400|01||200301101410
PID|||191919^^^GENHOS^MR~371-66-9256^^^USSSA^SS|253763|MASSIE^JAMES^A||19560129|M|||171 ZOBER-LEIN^^ISHPEMING^MI^49849^""^||(900)485-5344|(900)485-5344||S|C|10199925^^^GENHOS^AN|371-66-9256||
NK1|1|MASSIE^ELLEN|SPOUSE|171 ZOBERLEIN^^ISHPEMING^MI^49849^""^|(900)485-5344|(900)545-1234~(900)545-1200|EC1^FIRST EMERGENCY CONTACT
NK1|2|MASSIE^MARYLOU|MOTHER|300 ZOBERLEIN^^ISHPEMING^MI^49849^""^|(900)485-5344|(900)545-1234~(900)545-1200|EC2^SECOND EMERGENCY CONTACT
PV1||O|O/R||||0148^ADDISON,JAMES|0148^ADDISON,JAMES|0148^ADDISON,JAMES|AMB|||||||0148^ADDISON,JAMES|S|1400|A|||||||||||||||||||GENHOS|||||199501101410|
```
