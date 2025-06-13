CREATE Database LMS
use LMS
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    YearPublished YEAR
);

INSERT INTO Books (Title, Author, Genre, YearPublished) VALUES
('Xeer Ilaaliye', ' Maxamed Daahir Afrax', 'Political Fiction', 1980),
('Maana-Faay', 'Sheikh Aadan Siiro', 'Social Novel', 1979),
('Aqoondarro Waa Nacab Jacayl', 'Faarax Maxamed Jaamac "Cawl"', 'Romance', 1974),
('Gurmad', ' Maxamed Daahir Afrax', 'Drama', 1988),
('Gaso Ganuun iyo Gasiin', 'Hassan Sheikh Mumin', 'Poetry/Drama', 1975),
('Heelloy', 'Hadraawi', 'Poetry', 1973),
('Dhulkoo La Iibsado', 'Nuruddin Farah', 'Political Fiction', 1993),
('Links', 'Nuruddin Farah', 'Modern Fiction', 2003),
('From a Crooked Rib', 'Nuruddin Farah', 'Feminist Fiction', 1970),
('Sweet and Sour Milk', 'Nuruddin Farah', 'Political Fiction', 1979);

INSERT INTO Books (Title, Author, Genre, YearPublished) VALUES
('Saxarlaay ha Fududaan', 'Faarax Maxamed Jaamac "Cawl"', 'Satire', 1984),
('Afkaar iyo Aragti', 'Maxamed Ibraahim Warsame "Hadraawi"', 'Essays', 1982),
('Dagaal Dumar', 'Fowsiya X. Aden', 'Fiction', 1998),
('Silsiladdii Sayidka', 'Abdillahi Suldaan Timacadde', 'Poetry/History', 1971),
('Xaaskayga Oo Kale', 'Shire Jaamac Axmed', 'Drama', 1990),
('Nolol iyo Neecaw', 'Asli Qasim', 'Romance', 2005),
('Dhibta Dhalinyarada', 'Cabdiraxmaan Cabdi Xasan', 'Social Commentary', 2010),
('Baadi Goob', 'Cismaan Cabdi Daauud', 'Mystery', 2004),
('Qurux iyo Qasaaro', 'Khadra Xuseen', 'Romance', 2012),
('Han iyo Hammuun', 'Sahra Maxamed', 'Motivational', 2015),
('Dharaar', 'Cabdullaahi S. Maxamed', 'Memoir', 2001),
('Qarni iyo Qalin', 'Cabdikariin Faarax', 'Biography', 2013),
('Wasiirka Qarniga', 'Khaalid Y. Xasan', 'Political Thriller', 2016),
('Maqal iyo Muuqaal', 'Axmed Aw Geedi', 'Cultural Essays', 2000),
('Hablihii Hilaaca', 'Saynab Mahamud', 'Coming of Age', 2007),
('Ayaan-Daran', 'Khaalid Cali Xasan', 'Drama', 2011),
('Rajo iyo Run', 'Fardowsa A. Warsame', 'Inspirational Fiction', 2014),
('Dhalanteed', 'Cabdixakiin Dhoore', 'Mystery/Thriller', 2017),
('Haween iyo Halgankii', 'Shukri Abdi', 'Historical Fiction', 2020),
('Sheekooyin Somaliyeed', 'Various Authors', 'Folktales', 1968);

select* from Books;

CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    JoinDate DATE NOT NULL
);

INSERT INTO Members (Name, Email, JoinDate) VALUES
('Khadar Maxamed', 'khadar.maxamed@example.com', '2022-01-15'),
('Hodan Cabdi', 'hodan.cabdi@example.com', '2021-11-05'),
('Abdirahman Ismail', 'abdirahman.ismail@example.com', '2023-03-18'),
('Fartun Ahmed', 'fartun.ahmed@example.com', '2024-02-22'),
('Liban Yusuf', 'liban.yusuf@example.com', '2020-09-30'),
('Asha Ali', 'asha.ali@example.com', '2021-06-10'),
('Jamaal Mohamed', 'jamaal.mohamed@example.com', '2022-08-01'),
('Najma Farah', 'najma.farah@example.com', '2023-12-19'),
('Sahra Warsame', 'sahra.warsame@example.com', '2024-01-11'),
('Yasin Abdullahi', 'yasin.abdullahi@example.com', '2023-04-05'),
('Halima Hassan', 'halima.hassan@example.com', '2020-10-14'),
('Mustafa Nur', 'mustafa.nur@example.com', '2021-07-23'),
('Ruqiya Osman', 'ruqiya.osman@example.com', '2022-05-28'),
('Hamdi Aden', 'hamdi.aden@example.com', '2024-03-09'),
('Bashir Omar', 'bashir.omar@example.com', '2022-11-17'),
('Nimo Abdi', 'nimo.abdi@example.com', '2023-02-06'),
('Faysal Barre', 'faysal.barre@example.com', '2020-04-20'),
('Ifrah Ahmed', 'ifrah.ahmed@example.com', '2021-09-13'),
('Hussein Moalim', 'hussein.moalim@example.com', '2023-07-01'),
('Zahra Ali', 'zahra.ali@example.com', '2024-06-01'),
('Muna Abshir', 'muna.abshir@example.com', '2021-05-10'),
('Abdiwahab Hassan', 'abdiwahab.hassan@example.com', '2023-08-23'),
('Faiza Yusuf', 'faiza.yusuf@example.com', '2020-02-14'),
('Ibrahim Mohamed', 'ibrahim.mohamed@example.com', '2022-06-18'),
('Leyla Jama', 'leyla.jama@example.com', '2024-04-09'),
('Khaalid A. Barre', 'khaalid.barre@example.com', '2021-12-29'),
('Maryan Farah', 'maryan.farah@example.com', '2023-01-16'),
('Ahmed Warsame', 'ahmed.warsame@example.com', '2022-03-21'),
('Roda Hassan', 'roda.hassan@example.com', '2020-08-11'),
('Ismail Noor', 'ismail.noor@example.com', '2024-05-17'),
('Asma Abdullahi', 'asma.abdullahi@example.com', '2023-10-02'),
('Mohamed Abdi', 'mohamed.abdi@example.com', '2022-09-14'),
('Zakia Omar', 'zakia.omar@example.com', '2021-01-25'),
('Nasir Mahamud', 'nasir.mahamud@example.com', '2020-12-04'),
('Shukri Ahmed', 'shukri.ahmed@example.com', '2024-02-28'),
('Salman Hersi', 'salman.hersi@example.com', '2023-06-30'),
('Hibo Awale', 'hibo.awale@example.com', '2021-04-07'),
('Mahad Isse', 'mahad.isse@example.com', '2022-10-19'),
('Khadijo Salad', 'khadijo.salad@example.com', '2020-11-03'),
('Yasmin Abdinasir', 'yasmin.abdinasir@example.com', '2023-09-27');
select* from Members;

create table Borrow (
Borrow int primary key auto_increment,
BookID int,
MemberID int,
BorrowDate Date NOT NULL,
ReturnDate Date,
foreign key (BookID) References Books(BookID),
foreign key (MemberID) References Members(MemberID)
);

INSERT INTO Borrow (BookID, MemberID, BorrowDate, ReturnDate) VALUES
(3, 5, '2024-02-10', '2024-02-20'),
(12, 18, '2024-05-05', NULL),
(7, 2, '2023-11-01', '2023-11-21'),
(14, 23, '2024-01-15', '2024-01-25'),
(1, 10, '2024-03-05', '2024-03-15'),
(9, 3, '2024-04-22', NULL),
(25, 19, '2023-09-10', '2023-09-24'),
(6, 8, '2024-02-18', '2024-03-01'),
(17, 1, '2024-05-01', NULL),
(20, 14, '2023-12-07', '2023-12-17'),
(30, 22, '2024-06-01', NULL),
(2, 7, '2024-01-30', '2024-02-08'),
(11, 13, '2024-02-14', '2024-02-24'),
(5, 9, '2023-10-11', '2023-10-25'),
(21, 11, '2024-04-09', NULL),
(27, 25, '2023-08-05', '2023-08-19'),
(4, 16, '2024-03-22', '2024-04-02'),
(15, 6, '2023-07-14', '2023-07-30'),
(18, 28, '2024-01-05', NULL),
(8, 20, '2024-05-25', '2024-06-05');

select* from Borrow;


SELECT bo.Title, m.Name, b.BorrowDate
FROM Borrow b
JOIN Books bo ON b.BookID = bo.BookID
JOIN Members m ON b.MemberID = m.MemberID
WHERE b.BorrowDate >= CURDATE() - INTERVAL 30 DAY;


SELECT bo.Title, COUNT(*) AS TimesBorrowed
FROM Borrow b
JOIN Books bo ON b.BookID = bo.BookID
GROUP BY bo.Title
ORDER BY TimesBorrowed DESC
LIMIT 5;

SELECT bo.Title, b.BorrowDate, b.ReturnDate
FROM Borrow b
JOIN Books bo ON b.BookID = bo.BookID
WHERE b.MemberID = 5;


