# 0014_router_json

Recibe JSON por HTTP (http://localhost:8686/router/) y rutea según el valor de destination utilizando 
router.routeMessageByChannelId (ver API http://javadocs.mirthcorp.com/connect/3.1.0/user-api/com/mirth/connect/server/userutil/VMRouter.html )

```
{
    "destination": "H2",
    "message": {
        "patient": {
            "name": "Pablo"
        }
    }
}
```
