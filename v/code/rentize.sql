-- 
-- how many clients are there in the mutallco_rental database?
SELECT COUNT(`name`)
FROM
    client;
-- 
-- list all clients
SELECT
    client, `name`, title
FROM
    client;
-- 
-- list all clients that pay rent quarterly
SELECT
    client, `name`, title
FROM
    client
WHERE
    client.quarterly = 1;