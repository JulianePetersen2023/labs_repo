USE mydb;

ALTER TABLE cars
MODIFY year int,
MODIFY VIN varchar(35),
MODIFY colours varchar(35);

INSERT INTO cars (Car_ID, vin, manufacturer, model, year, colours)
Values (1, 3K096I98581DHSNUP, "Volkswagen", "Tiguan", 2019, "Blue"),
(2, ZM8G7BEUQZ97IH46V, "Peugeot", "Rifter", 2019, "Red"),
(3, RKXVNNIHLVVZOUB4M, "Ford", "Fusion", 2018, "White"),
(4, HKNDGS7CU31E9Z7JW, "Toyota", "RAV4", 2018, "Silver"),
(5, DAM41UDN3CHU2WVF6, "Volvo", "V60", 2019, "Gray"),
(6, DAM41UDN3CHU2WVF6, "Volvo", "V60", 2019, "Gray");

SELECT * FROM cars;

INSERT INTO customer (ID, customer_id, Name, Contact, Adress)
Values (0, 10001, 'Pablo Picasso', 34636176382, Madrid_Spain),
(1, 20001, 'Abraham Lincoln', 13059077086, Miami_US),
(2, 30001, 'Napoléon Bonaparte', 33179754000, Paris_France);

SELECT * FROM customer;

INSERT INTO salesperson (ID, staff_ID, Name, store)
Values (1, 0001, Petey_Cruiser, Madrid),
(1, 0002, Anna_Sthesia, Barcelona),
(1, 0003, Paul_Molive, Berlin),
(1, 0004, Gail_Forcewind, Paris),
(1, 0005, Paige_Turner, Mimia),
(1, 0006, Bob_Frapples, Mexico_City),
(1, 0007, Walter_Melon, Amsterdam),
(1, 0008, Shonda_Leer, Sao_Paulo);

SELECT * FROM salesperson;

INSERT INTO invoice (ID, invoice_no, Date, Car, Customer, Salesperson)
Values (1, 852399038, 22-08-2018, 1, 1, 3),
(2, 731166526, 31-12-2018, 3, 3, 5),
(3, 271135104, 22-01-2019, 2, 2, 7);

SELECT * FROM invoice;
