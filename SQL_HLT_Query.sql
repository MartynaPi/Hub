CREATE DATABASE TeslaRecords
CREATE TABLE tbl_TeslaAccidentsAll
(
    [Id] INT IDENTITY(1,1) PRIMARY KEY, 
    [YearTime] INT NOT NULL,
	[Country] VARCHAR(32) NOT NULL,
	[StateId] VARCHAR(5) NOT NULL,
	[Deaths] INT NOT NULL,
)

INSERT INTO tbl_TeslaAccidentsAll(YearTime, Country, StateId, Deaths)
VALUES 
('2021', 'USA', 'IA', 3),
('2021', 'USA', 'FL', 2),
('2021', 'Denmark', 'DN', 1),
('2020', 'Portugal', 'PR', 1),
('2020', 'USA', 'TX', 1)

select * from tbl_TeslaAccidents