# 0006 ADT 2 XML Transformation

Este canal recibe mensajes ADT de HL7 v2.x y los transforma en XML con datos del paciente.

Para extraer los datos y hacer el mapeo se utilizan Message Builders en el Source Transformer: Message Segment (destino), Mapping (origen)

Filtra todos los mensajes que no sean ADT en el source filter.