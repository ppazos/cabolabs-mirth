# 0011_http_xml_java

Ejemplo de ejecución de código Java desde Mirth.

El canal recibe un mensaje XML por HTTP, y en función de un parámetro "action" ejecuta una determinada acción sobre los datos recibidos, y esa acción está implementada en código Java como una librería externa a Mirth Connnect.

Ejemplo de mensaje XML:

```
<mensaje>
    <nombre>Pablo</nombre>
</mensaje>
```

URL: http://localhost:6674/java/
