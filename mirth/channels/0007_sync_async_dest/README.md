# 0007 Sync/Async Destintaions

## (english)

**0007_async_destinations.xml**

This channel receives HL7 v2.x via MLLP on port 6671. Does nothin to the message,
Has three different destinations that are executed in parallel and we measure the
execution time and make some logs to understand this behavior.


**0007_sync_destinations.xml**

This channel receives HL7 v2.x via MLLP on port 6672. Does nothing to the message.
Has three different destinations that are executed in series and we measure the
execution time and make some logs to understand this behavior.



## (español)


**0007_async_destinations.xml**


**0007_sync_destinations.xml**
