-- list all stock data collected by 'Joshua Wairua'
SELECT
    --columns to display
    vehicle.reg_no, stock.`datetime`
FROM
    --source of data
    stock
INNER JOIN
    vehicle
ON
    stock.vehicle = vehicle.vehicle
INNER JOIN
    operator
ON
    stock.operator = operator.operator
WHERE
    --condition to show filtered results
    operator.`name` = "Joshua Wairua";

