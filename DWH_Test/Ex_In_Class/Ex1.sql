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

INSERT INTO `SalesEX1`(city,dated,amount) VALUES('TURIN','10-10-22',100);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('TURIN','11-10-22',200);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('TURIN','12-10-22',300);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('TURIN','13-10-22',400);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('MILAN','10-10-22',120);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('MILAN','11-10-22',230);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('MILAN','12-10-22',340);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('MILAN','14-10-22',460);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('ROME','10-10-22',120);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('ROME','11-10-22',240);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('ROME','12-10-22',350);
INSERT INTO `SalesEX1`(city,dated,amount) VALUES('ROME','14-10-22',470);
