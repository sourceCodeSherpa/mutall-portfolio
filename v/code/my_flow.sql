/*
        +-------------|--------------------------------|
        |reg_no       | direction   |  datetime        |
        |----------------------------------------------+
        |  kba324p    | incoming    |  4pm             |
        |----------------------------------------------|
*/
-- select all flow data collected by 'Joshua Wairua'
select
--columns to display
    vehicle.reg_no, flow.direction, flow.datetime
from
-- source of data
    flow
inner join vehicle on flow.vehicle = vehicle.vehicle
inner join operator on flow.operator = operator.operator
where
-- condition to filter results
    operator.`name` = "Joshua Wairua";
    