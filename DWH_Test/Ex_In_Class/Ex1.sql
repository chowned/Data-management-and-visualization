SALES TABLE()
CITY    DATE        AMOUNT
TURIN   10-10-22    100
TURIN   11-10-22    200
TURIN   12-10-22    300
TURIN   13-10-22    400
MILAN   10-10-22    120
MILAN   11-10-22    230
MILAN   12-10-22    340
MILAN   14-10-22    460
ROME    10-10-22    120
ROME    11-10-22    240
ROME    12-10-22    350
ROME    14-10-22    470

CREATE TABLE SalesEX1(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(255),
    dated DATE,
    amount int
);

INSERT INTO `SalesEX1`(city,dated,amount) VALUES('TURIN','22-10-10',100);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('TURIN','22-10-11',200);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('TURIN','22-10-12',300);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('TURIN','22-10-13',400);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('MILAN','22-10-10',120);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('MILAN','22-10-11',230);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('MILAN','22-10-12',340);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('MILAN','22-10-14',460);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('ROME','22-10-10',120);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('ROME','22-10-11',240);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('ROME','22-10-12',350);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('ROME','22-10-14',470);

select city, 
dated,
amount,
avg (amount) over (partition by city
order by dated
rows 2 preceding)
from `SalesEX1`;

--average over current and two previous rows

select city, 
dated,
amount,
avg (amount) over (partition by city
order by dated
rows 2 preceding)
from `SalesEX1`
order by city;


-- pag6 query
-- average over current row and sales of two previous days

select 
dated
amount,
avg (amount) over (partition by city
order by dated
range between interval '2' day 
preceding and current row
)
as Last3DaysAverage
from `SalesEX1`
order by dated;
