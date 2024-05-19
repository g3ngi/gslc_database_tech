-- buat database purchasing
create database purchasing;

-- masuk ke purchasing
use purchasing;

-- buat table vendor
create table Vendor (
    Vendor_ID int primary key,
    Vendor_Name char(150) not null,
    Vendor_Add char(100)
);

-- buat table purchase
create table Purchase (
    Purchase_ID int primary key,
    Purchase_Date Date,
    Vendor_ID int, 
    Vendor_RefNo char(25),
    foreign key(Vendor_ID) references Vendor(Vendor_ID)
);

-- buat table product 
create table Product(
    Product_ID int primary key,
    Product_Name char(50),
    Stock int
);


-- buat table Purchase_Detail
create table Purchase_Detail(
    Purchase_ID int,
    Product_ID int,
    Quantity int,
    Price int,
    foreign key(Product_ID) references Product(Product_ID),
    foreign key(Purchase_ID) references Purchase(Purchase_ID) 
);


-- add vendor baru
insert into Vendor
values
(1, 'CV_Aufa', 'Jl. Jeruk Kebon 1'),
(2, 'Agung_Jaya', 'Jl. 54U'),
(3, 'Danis_Mekar', 'Jl. saudara'),
(4, 'Sumber_Farrel', 'Jl. thamrin'),
(5, 'PT_Kenzie', 'Jl. Haji Nawi');

-- add value ke Purchase
insert into Purchase
values
(1, '2023-01-01', 3, 'REF001'),
(2, '2023-01-02', 1, 'REF002'),
(3, '2023-01-03', 4, 'REF003'),
(4, '2023-02-01', 2, 'REF004'),
(5, '2023-02-15', 5, 'REF005'),
(6, '2023-03-01', 1, 'REF006');

-- add product baru
insert into Product
values
(1, 'Product_A', 100),
(2, 'Product_B', 150),
(3, 'Product_C', 200),
(4, 'Product_D', 250),
(5, 'Product_E', 300);

-- add purchase detail 
insert into Purchase_Detail
values
(1, 1, 10, 5000), 
(1, 2, 20, 7000), 
(2, 3, 15, 8000), 
(3, 4, 30, 6000), 
(4, 5, 25, 9000), 
(5, 1, 12, 5000), 
(5, 3, 22, 8000), 
(6, 2, 18, 7000), 
(6, 4, 27, 6000); 



