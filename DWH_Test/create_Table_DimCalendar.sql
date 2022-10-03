/******** Tested on MariaDB *********/

CREATE TABLE DimCalendar(
	CalendarKeyId int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	DateKey int NULL,
	Date date NULL,
	Day tinyint NULL,
	Weekday tinyint NULL,
	WeekDayName varchar(10) NULL,
	DayOfWeekInMonth tinyint NULL,
	DayOfYear smallint NULL,
	WeekOfMonth tinyint NULL,
	WeekOfYear tinyint NULL,
	Month tinyint NULL,
	MonthName varchar(10) NULL,
	Quarter tinyint NULL,
	QuarterName varchar(6) NULL,
	Year smallint NULL,
	YearMonth int NULL
);
