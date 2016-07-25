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

