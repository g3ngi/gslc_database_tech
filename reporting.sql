-- 1. Report Master Vendor
select * from Vendor;

-- 2. Report Master Product
select * from Product;

-- 3. Report purchasing per vendor
select v.Vendor_ID, v.Vendor_Name, v.Vendor_Add, sum(pd.Price * pd.Quantity) as 'SubTotal'
from Vendor v
join Purchase p on v.Vendor_ID = p.Vendor_ID
join Purchase_Detail pd on p.Purchase_ID = pd.Purchase_ID
group by v.Vendor_ID, v.Vendor_Name, v.Vendor_Add;

-- 4. Report purchasing per vendor
select p.Product_ID, p.Product_Name, pd.Quantity, sum(pd.price * pd.Quantity) as 'SubTotal'
from Product p
join Purchase_Detail pd on p.Product_ID = pd.Product_ID
group by p.Product_ID, p.Product_Name, pd.Quantity;
