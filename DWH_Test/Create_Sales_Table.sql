
CREATE TABLE Sales(  
    City VARCHAR2(255) NOT NULL,
    Month INTEGER NOT NULL,
    Amount INTEGER
    
);
ALTER TABLE Sales
ADD CONSTRAINT pk_sales PRIMARY KEY(City, Month)

INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Milano',7,110);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Milano',8,10);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Milano',9,90);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Milano',10,80);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Milano',11,40);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Milano',12,140);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Torino',7,70);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Torino',8,30);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Torino',9,80);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Torino',10,100);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Torino',11,50);
INSERT INTO "SALES"("CITY","MONTH","AMOUNT") VALUES('Torino',12,150);