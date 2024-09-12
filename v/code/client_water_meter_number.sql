/*
        +-------------|------------------------------------|
        |   client name  |  room no.  |  water meter no.   |
        |--------------------------------------------------+
        |  john doe      |    1      |   2342455           |
        |--------------------------------------------------|
*/
-- list clients names and the room and water meter number they are assigned to
select
-- columns to display
    client.`name` as "client name", room.uid as "room no.", wmeter.wmeter as "water meter no." 
from
-- source of data
    client
inner join agreement on client.client = agreement.client
inner join room on agreement.room = room.uid
inner join wconnection on room.uid = wconnection.room
inner join wmeter on wconnection.wmeter = wmeter.wmeter