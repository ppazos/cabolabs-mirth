# C04_router_json

## (english)

**C04_router.xml**

This channel receives a JSON message, and based on the "destination" attribute, explicitly
routes that message to another channel.

The destination channels are C04_router_hosp_a.xml and C04_router_hosp_b.xml


## (español)

**C04_router.xml**


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
