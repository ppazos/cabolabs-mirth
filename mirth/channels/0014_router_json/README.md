# 0014_router_json

## (english)

**0014_router.xml**

This channel receives a JSON message, and based on the "destination" attribute, explicitly routes that message to another channel.

The destintation channels are 0014_router_hosp_a.xml and 0014_router_hosp_b.xml


## (español)

**0014_router.xml**


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
