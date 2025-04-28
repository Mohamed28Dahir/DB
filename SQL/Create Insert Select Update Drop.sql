--Create DB
--Create Table
--Insert
     --Insert a specific columns
--Select
--Update
		--NB.Always use WHERE if you want to update specific records.
		--If you forget WHERE, it will update all rows.
	 --Update one row 
	 --Update multiple columns
	 --Update all rows 
--Drop
	 --Drop DB
	 --Drop Table

  --Create DB
Create Database Mohamed5
Use Mohamed5
  --Create Table
Create Table Zakia7(
FName Varchar(100),
SName Varchar(100),
Tell Int
)

  --Insert
INSERT INTO Zakia7 (FName, SName, Tell) VALUES
			('Zakia Abdinur', 'Elmi', 616002264),
			('Mohamed Dahir', 'Osman', 613040142),
			('Amran Abdinur', 'Elmi', 616002264),
			('Khadar', 'Omar', 618456789),
			('Fartun', 'Abdirahman', 619567890);

    --Insert a specific columns
INSERT INTO Zakia7 (FName, Tell) VALUES
			('Ayaan', 615123456),
			('Abdi', 616234567),
			('Hodan', 617345678);

  --Select
Select *from Zakia7

  --Update
     --Update one row   
UPDATE Zakia7
SET SName = 'Ahmed'
WHERE FName = 'Ayaan';
 
     --Update multiple columns
UPDATE Zakia7
SET 
    FName = 'Layla',
    Tell = 615987654
WHERE SName = 'Hodan';

   --Update all rows 
UPDATE Zakia7
SET Tell = 615000000;

--Drop
	--Drop DB
Drop Database 

    --Drop Table
Drop Table Zakia7

