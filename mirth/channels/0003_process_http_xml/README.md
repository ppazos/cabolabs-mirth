# 0003 Process HTTP XML

Canal que recibe un pedido HTTP con:

Cuerpo:
```
<mensaje>
    <persona>
        <nombre>Pablo</nombre>
    </persona>
</mensaje>
```

Parametro: parametro1 (si es vacío falla el source filter y retorna un error)

Header: Authorization


## Pedido HTTP completo

Mirth transforma los pedidos HTTP en un XML procesable por E4X.
Dentro del elemento "Content" está nuestro mensaje codificado en base64 porque en el
Source Connector tenemos como tipos binarios "application/, image/, video/, audio/"
y application/ detecta application/xml como binario. El Source Transformer Step 2
muestra cómo pasar de base64 al objeto XML.

Este es el XML a procesar:

```
<HttpRequest>
   <RemoteAddress>127.0.0.1</RemoteAddress>
   <RequestUrl>http://localhost:1235/canalHttp1235/</RequestUrl>
   <Method>POST</Method>
   <RequestPath>parametro1=aaa</RequestPath>
   <RequestContextPath>/canalHttp1235/</RequestContextPath>
   <Parameters>
      <parametro1>aaa</parametro1>
   </Parameters>
   <Header>
      <Accept-Language>es,en-US;q=0.8,en;q=0.6</Accept-Language>
      <Authorization>secret</Authorization>
      <Host>localhost:1235</Host>
      <Content-Length>80</Content-Length>
      <Accept-Encoding>gzip, deflate</Accept-Encoding>
      <DNT>1</DNT>
      <User-Agent>Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36</User-Agent>
      <Origin>chrome-extension://gmodihnfibbjdecbanmpmbmeffnmloel</Origin>
      <Connection>keep-alive</Connection>
      <Content-Type>application/xml</Content-Type>
      <Accept>*/*</Accept>
   </Header>
   <Content encoding="Base64" multipart="no">PG1lbnNhamU+CiAgICA8cGVyc29uYT4KICAgICAgICA8bm9tYnJlPlBhYmxvPC9ub21icmU+CiAg&#13;
ICA8L3BlcnNvbmE+CjwvbWVuc2FqZT4=&#13;
   </Content>
</HttpRequest>
```

