use classicmodels;
select * from products;
select avg(buyPrice) as 'Giatrungbinh' from products;
select count(productcode) from products;
select max(buyPrice) from products;
select min(buyPrice) from products;
select sum(quantityInStock) from products where productLine='Motorcycles';
select ucase(productName) from products;
select lcase(productName) from products;
select length(productName) from products where productCode='S10_1678';
select now() from products;
select productVendor, count(productcode) from products
where productline = 'Motorcycles'
group by productVendor
order by productVendor;
select productVendor, count(productcode) from products
where productline = 'Motorcycles'
group by productVendor
having count(productcode)>10
order by productVendor;