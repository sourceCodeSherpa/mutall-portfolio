-- 
-- backup the database (NOT better than exporting and importing)
-- CREATE DATABASE mutall_ranix_backup;
-- USE mutall_ranix_backup;
-- CREATE TABLE operator_backup SELECT * FROM mutall_ranix.operator;
-- CREATE TABLE flow_backup SELECT * FROM mutall_ranix.flow;
-- CREATE TABLE stock_backup SELECT * FROM mutall_ranix.stock;
-- CREATE TABLE earning_backup SELECT * FROM mutall_ranix.earning;
-- 
-- identify the operator 27 with associated data
-- SELECT * FROM mutall_ranix.flow WHERE operator = 27;
-- SELECT * FROM mutall_ranix.stock WHERE operator = 27;
-- SELECT * FROM mutall_ranix.earning WHERE operator = 27;
-- 
-- edit/update foreign keys in flow and stock tables
-- UPDATE mutall_ranix.flow SET operator = 26 WHERE operator = 27;
-- UPDATE mutall_ranix.stock SET operator = 26 WHERE operator = 27;
-- UPDATE mutall_ranix.earning SET operator = 26 WHERE operator = 27;
-- delete operator 27 with associated data
-- DELETE FROM mutall_ranix.operator WHERE operator = 27;

--
/*
*
+-------------|--------------------------------|
|flow         |datetime     |  direction       |
|----------------------------------------------+
|  54         | 5664-547-48 |                  |
|----------------------------------------------|
*
*/
--list all stock data
-- select * from stock;
--list all flow data
-- select * from flow;
-- list all stock and flow data in one table using Union
-- SELECT
--     stock, `session`, vehicle
-- FROM 
--     stock
-- WHERE
--     operator=26;


-- list all stock and flow data in one table using Inner Join
SELECT
    stock.stock,
    flow.operator,
    vehicle.reg_no
FROM
    stock
   INNER JOIN operator ON stock.operator = operator.operator
   inner join vehicle on stock.vehicle= vehicle.vehicle
   INNER JOIN flow ON flow.operator = operator.operator;