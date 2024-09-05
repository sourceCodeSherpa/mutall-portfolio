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