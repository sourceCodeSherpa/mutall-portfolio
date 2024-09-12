/*
        +-------------|-----------------------|
        |   client name    |     room no.     |
        |-------------------------------------+
        |  john doe        |       1          |
        |-------------------------------------|
*/
-- list clients names and the room they are assigned to
select
-- columns to display
    client.`name` as "client name", room.uid as "room no."
from
-- data source
    client
INNER JOIN agreement ON client.client = agreement.client
INNER JOIN room ON agreement.room = room.uid