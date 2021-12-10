-- Create tables
create table cars (
	Vehicle_Name varchar(75) not null,
	Full_Name varchar(150) not null,
	Price int,
	StockType varchar(30),
	Distance_from_30332 float,
	Dealership varchar(150),
	Year varchar(75),
	Make varchar(75),
	Model varchar(75)
);

create table ratings (
	Vehicle_Name varchar(75) not null,
	Rating float
);

-- Verify imports
select *
from cars;

select * 
from ratings;

select c.vehicle_name, c.full_name, c.price, c.stocktype, c.distance_from_30332, c. dealership, c.year, c.make, c.model, r.rating
from cars as c
left join ratings as r on
c.vehicle_name = r.vehicle_name;