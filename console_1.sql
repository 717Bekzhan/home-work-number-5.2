create table cars (
                      id SERIAL PRIMARY KEY,
                      brand VARCHAR(50) NOT NULL,
                      model VARCHAR(50) NOT NULL,
                      year_of_issue int NOT NULL,
                      price DECIMAL(8,2) NOT NULL ,
                      color VARCHAR(50) NOT NULL
);

insert into cars (id, brand, model, year_of_issue, price, color) values (1, 'Chevrolet', 'Express 2500', 1998, 34650.37, 'Khaki');
insert into cars (id, brand, model, year_of_issue, price, color) values (2, 'GMC', 'Sierra 3500', 2011, 78888.61, 'Maroon');
insert into cars (id, brand, model, year_of_issue, price, color) values (3, 'Nissan', 'Quest', 2006, 97402.51, 'Red');
insert into cars (id, brand, model, year_of_issue, price, color) values (4, 'Audi', 'TT', 2004, 46828.97, 'Khaki');
insert into cars (id, brand, model, year_of_issue, price, color) values (5, 'Toyota', 'Tacoma', 1998, 85491.51, 'Red');
insert into cars (id, brand, model, year_of_issue, price, color) values (6, 'Mercedes-Benz', 'SL-Class', 2008, 88509.36, 'Aquamarine');
insert into cars (id, brand, model, year_of_issue, price, color) values (7, 'Ford', 'F350', 2008, 56821.13, 'Puce');
insert into cars (id, brand, model, year_of_issue, price, color) values (8, 'Lincoln', 'MKZ', 2012, 26718.95, 'Teal');
insert into cars (id, brand, model, year_of_issue, price, color) values (9, 'Kia', 'Sportage', 1999, 54196.82, 'Teal');
insert into cars (id, brand, model, year_of_issue, price, color) values (10, 'Suzuki', 'Sidekick', 1998, 26352.88, 'Blue');
insert into cars (id, brand, model, year_of_issue, price, color) values (11, 'Saab', '900', 1988, 71842.49, 'Indigo');
insert into cars (id, brand, model, year_of_issue, price, color) values (12, 'Toyota', 'Corolla', 2001, 38602.3, 'Red');
insert into cars (id, brand, model, year_of_issue, price, color) values (13, 'Ford', 'Explorer Sport Trac', 2008, 14719.25, 'Green');

select brand, model, price from cars;                            --Display only car’s brands & car’s models & car’s price
select count(*) from cars;                                       --Display quantity of all cars
select * from cars where brand = 'Toyota';                       --Display all cars where brand is Toyota
select * from cars where color in ('Red','Blue');                --Display all Red and Blue cars
select * from cars where year_of_issue > 2000 and year_of_issue < 2010; --Display all cars where issued year between 2000 and 2010
select count(*) from cars where brand = 'Chevrolet';              --Display quantity of cars where car’s brand is Chevrolet
select avg(year_of_issue) from cars;                              -- Display the average year of manufacture of cars
select * from cars where brand in ('Audi','Toyota','Kia','Ford'); -- Display the cars where brand equals to Audi, Toyota, Kia and Ford
select * from cars where  cars.brand like 'T%';                   --Display cars where car’s model starts with ’T’
select * from cars where cars.model   like  '%e';                 --Display cars where car’s model end with ‘e
select * from cars where brand like '_____';                            -- Display brands where contains only 5 symbols
select sum(price) from cars where brand = 'Toyota';               -- Display all amounts where car's brand is Toyota
select * from cars where price = (select max(price)from cars)
or price=( select min(price)from cars) order by price desc;   --Display the most expensive car & the sheepest car

select * from cars where brand not like 'Toyota';                  --Display all cars where car's brand not TOYOTA
select * from cars order by price limit 10;                         -- Display 10 the most expensive cars
select * from cars order by year_of_issue limit all offset 5;       --Display the newest cars between 5th to 15th
select * from cars where year_of_issue between 1995 and 2005;       --Display cars where car's year of issue not between 1995 and 2005;
select color,count(*) as amount_of_cars from cars group by color order by count(*) desc; --Display most cars in one color
