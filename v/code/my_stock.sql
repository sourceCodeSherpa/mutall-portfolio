/*
        +-------------|--------------------------------|
        |reg_no       | session   |  datetime        |
        |----------------------------------------------+
        |  kba324p    | opening   |  4pm             |
        |----------------------------------------------|
*/
-- list all stock data collected by 'Joshua Wairua'
select
    --columns to display
    vehicle.reg_no, stock.`session`, stock.`datetime`
from
    --source of data
    stock
inner join vehicle on stock.vehicle = vehicle.vehicle
inner join operator on stock.operator = operator.operator
where
    --condition to show filtered results
    operator.`name` = "Joshua Wairua";

