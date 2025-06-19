use  travelagency;


-- Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(200),
    PassportNumber VARCHAR(50)
);


INSERT INTO Customers (FullName, Email, Phone, Address, PassportNumber) VALUES
('Ahmed Mohamed', 'ahmed.mohamed@example.com', '+252612345678', 'Mogadishu, Somalia', 'SOM1234567'),
('Fatima Abdi', 'fatima.abdi@example.com', '+252698765432', 'Hargeisa, Somaliland', 'SOM2345678'),
('Hassan Ali', 'hassan.ali@example.com', '+252612398765', 'Kismayo, Somalia', 'SOM3456789'),
('Amina Yusuf', 'amina.yusuf@example.com', '+252613456789', 'Garowe, Puntland', 'SOM4567890'),
('Mohamed Warsame', 'mohamed.warsame@example.com', '+252614567890', 'Baidoa, Somalia', 'SOM5678901'),
('Hodan Osman', 'hodan.osman@example.com', '+252615432198', 'Beledweyne, Somalia', 'SOM6789012'),
('Abdirahman Nur', 'abdirahman.nur@example.com', '+252616543210', 'Bosaso, Puntland', 'SOM7890123'),
('Najma Farah', 'najma.farah@example.com', '+252617654321', 'Jowhar, Somalia', 'SOM8901234'),
('Yusuf Mahad', 'yusuf.mahad@example.com', '+252618765432', 'Marka, Somalia', 'SOM9012345'),
('Ruqiya Ahmed', 'ruqiya.ahmed@example.com', '+252619876543', 'Galkayo, Somalia', 'SOM0123456'),
('Liban Abdullahi', 'liban.abdullahi@example.com', '+252612398321', 'Luuq, Somalia', 'SOM1122334'),
('Ifrah Mohamed', 'ifrah.mohamed@example.com', '+252612478561', 'Afgooye, Somalia', 'SOM2233445'),
('Khadar Hussein', 'khadar.hussein@example.com', '+252613498745', 'Dhusamareb, Galmudug', 'SOM3344556'),
('Fartun Hassan', 'fartun.hassan@example.com', '+252614512987', 'Qoryooley, Somalia', 'SOM4455667'),
('Jama Ibrahim', 'jama.ibrahim@example.com', '+252615613479', 'Burao, Somaliland', 'SOM5566778');
select * from Customers;



-- Vendors
CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY AUTO_INCREMENT,
    CompanyName VARCHAR(100),
    Type VARCHAR(50), -- e.g., Hotel, Airline
    ContactInfo VARCHAR(150)
);

INSERT INTO Vendors (CompanyName, Type, ContactInfo) VALUES
('Sahan Travel Services', 'Airline', 'contact@sahanair.so | +252612345001'),
('Banaadir Hotel Group', 'Hotel', 'info@banaadirhotels.so | +252612345002'),
('Puntland Tours & Transport', 'Transport', 'bookings@puntlandtours.so | +252612345003'),
('Hargeisa Royal Inn', 'Hotel', 'reception@hargeisaroyal.so | +252612345004'),
('Jubba Airways', 'Airline', 'support@jubbaairways.so | +252612345005'),
('Somali Nomad Safaris', 'Tour Operator', 'hello@nomadsafaris.so | +252612345006'),
('Galkayo Comfort Hotel', 'Hotel', 'reservations@galkayohotel.so | +252612345007'),
('Mogadishu Express Transport', 'Transport', 'transport@mogexp.so | +252612345008'),
('Kismayo Palm Resort', 'Hotel', 'info@kismayopalm.so | +252612345009'),
('Horn of Africa Adventures', 'Tour Operator', 'tours@hornadventures.so | +252612345010'),
('Hilaac Airways', 'Airline', 'info@hilaacairways.so | +252612345011'),
('Xamar Luxury Hotel', 'Hotel', 'luxury@xamarhotel.so | +252612345012'),
('Daryeel Transport Co.', 'Transport', 'support@daryeeltrans.so | +252612345013'),
('Qaran Tours', 'Tour Operator', 'booking@qarantours.so | +252612345014'),
('Laascaanood Heritage Inn', 'Hotel', 'heritage@laasinn.so | +252612345015'),
('Daljir Express', 'Transport', 'contact@daljirexpress.so | +252612345016'),
('Somlight Holidays', 'Tour Operator', 'hello@somlightholidays.so | +252612345017'),
('Golis Grand Hotel', 'Hotel', 'reception@golishotel.so | +252612345018'),
('Bay Air Services', 'Airline', 'book@bayair.so | +252612345019'),
('Raaxo Travel & Tours', 'Tour Operator', 'raaxo@travel.so | +252612345020');
select * from Vendors;



-- Tour Guides
CREATE TABLE Tour_Guides (
    GuideID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100),
    Phone VARCHAR(20),
    Language VARCHAR(50),
    ExperienceYears INT
);

INSERT INTO Tour_Guides (FullName, Phone, Language, ExperienceYears) VALUES
('Abdullahi Hassan', '+252612001001', 'Somali, English', 5),
('Ifrah Mohamed', '+252612001002', 'Somali, Arabic', 3),
('Liban Abdi', '+252612001003', 'Somali, English, Italian', 7),
('Faduma Yusuf', '+252612001004', 'Somali, English, Arabic', 6),
('Mohamed Ahmed', '+252612001005', 'Somali, English', 4),
('Khadija Noor', '+252612001006', 'Somali, French', 2),
('Sahra Osman', '+252612001007', 'Somali, English, Amharic', 8),
('Abdirahman Warsame', '+252612001008', 'Somali, English', 10),
('Hodan Farah', '+252612001009', 'Somali, Italian, English', 6),
('Jama Abdikarim', '+252612001010', 'Somali, English, Swahili', 9),
('Nasteexo Ali', '+252612001011', 'Somali, English', 4),
('Bashir Mohamed', '+252612001012', 'Somali, Arabic', 6),
('Zahra Hussein', '+252612001013', 'Somali, English, French', 5),
('Mahad Jama', '+252612001014', 'Somali, Italian', 3),
('Ruqiya Farah', '+252612001015', 'Somali, English', 7),
('Ahmed Abdullahi', '+252612001016', 'Somali, Swahili, English', 8),
('Amina Saleban', '+252612001017', 'Somali, Arabic, French', 6),
('Hussein Ibrahim', '+252612001018', 'Somali, English, Amharic', 9),
('Samiira Mahamud', '+252612001019', 'Somali, English', 2),
('Khalif Osman', '+252612001020', 'Somali, Arabic, English', 5);
select* from Tour_Guides;


-- Trips
CREATE TABLE Trips (
    TripID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    Price DECIMAL(10,2),
    GuideID INT,
    VendorID INT,
    FOREIGN KEY (GuideID) REFERENCES Tour_Guides(GuideID),
    FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID)
);

INSERT INTO Trips (Title, Description, StartDate, EndDate, Price, GuideID, VendorID) VALUES
('Mogadishu City Tour', 'Explore historical landmarks, beaches, and markets of Mogadishu.', '2025-07-01', '2025-07-03', 199.99, 1, 1),
('Hargeisa Heritage Walk', 'Discover the rock art at Laas Geel and local culture in Hargeisa.', '2025-07-10', '2025-07-12', 249.50, 2, 2),
('Baidoa Cultural Retreat', 'Experience traditional Somali music, dance, and cuisine.', '2025-08-05', '2025-08-09', 299.00, 3, 3),
('Puntland Coastal Adventure', 'Boat rides, fishing trips, and beach relaxation in Bosaso.', '2025-07-20', '2025-07-24', 349.99, 4, 4),
('Jubba River Safari', 'Wildlife viewing and riverboat adventure in the Jubba basin.', '2025-09-01', '2025-09-04', 275.00, 5, 5),
('Galkayo History & Markets', 'A guided walk through Galkayos historical areas and souks.', '2025-08-15', '2025-08-17', 159.75, 6, 6),
('Luuq River & Village Tour', 'Visit Luuqs ancient villages and riverside scenery.', '2025-08-10', '2025-08-12', 185.25, 7, 7),
('Laascaanood Cultural Weekend', 'Local arts, crafts, and folklore with guided storytelling.', '2025-07-28', '2025-07-30', 210.00, 8, 8),
('Afgooye Agriculture Trail', 'Tour lush farmland and meet Somali farmers near Afgooye.', '2025-09-12', '2025-09-14', 190.99, 9, 9),
('Kismayo Island Getaway', 'Boat trip and beach resort stay in the islands near Kismayo.', '2025-08-20', '2025-08-23', 375.50, 10, 10),
('Qoryooley Nature Walk', 'Guided hikes through forests and bird-watching near Qoryooley.', '2025-10-01', '2025-10-03', 179.99, 11, 11),
('Marka Coastal Retreat', 'Relax on Marka\'s quiet beaches and enjoy fresh seafood.', '2025-10-10', '2025-10-13', 299.99, 12, 12),
('Beledweyne Historical Trek', 'Visit colonial-era sites and the Shabelle River valley.', '2025-09-18', '2025-09-21', 265.50, 13, 13),
('Garowe Cultural Tour', 'Explore Puntland\'s capital with museum and palace visits.', '2025-09-25', '2025-09-28', 310.00, 14, 14),
('Jowhar Waterfall Hike', 'Hike through river valleys and waterfalls near Jowhar.', '2025-11-01', '2025-11-04', 245.00, 15, 15),
('Dhusamareb Desert Safari', 'Camel rides and star-gazing in Galmudug\'s desert landscape.', '2025-10-15', '2025-10-17', 220.00, 16, 16),
('Burao Highland Discovery', 'Explore the cool highlands and hilltop villages of Burao.', '2025-11-05', '2025-11-08', 280.00, 17, 17),
('Laas Geel Rock Art Tour', 'Exclusive tour of the ancient cave paintings outside Hargeisa.', '2025-10-20', '2025-10-22', 260.00, 18, 18),
('Borama Cultural Exchange', 'Stay with local families and participate in traditional crafts.', '2025-11-10', '2025-11-13', 295.00, 19, 19),
('Gedo Regional Explorer', 'A comprehensive tour across towns and villages in Gedo.', '2025-11-15', '2025-11-19', 325.00, 20, 20);

select* from Trips;


-- Bookings
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    TripID INT,
    BookingDate DATE,
    NumberOfPeople INT,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

INSERT INTO Bookings (CustomerID, TripID, BookingDate, NumberOfPeople, Status) VALUES
(1, 2, '2025-06-15', 2, 'Confirmed'),
(2, 5, '2025-06-16', 1, 'Confirmed'),
(3, 7, '2025-06-17', 3, 'Pending'),
(4, 1, '2025-06-18', 4, 'Confirmed'),
(5, 3, '2025-06-19', 2, 'Cancelled'),
(6, 6, '2025-06-20', 1, 'Confirmed'),
(7, 4, '2025-06-21', 5, 'Confirmed'),
(8, 8, '2025-06-22', 2, 'Pending'),
(9, 10, '2025-06-23', 1, 'Confirmed'),
(10, 12, '2025-06-24', 3, 'Confirmed');


select * from Bookings;





-- Payments
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    BookingID INT,
    Amount DECIMAL(10,2),
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    Status VARCHAR(20),
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);


INSERT INTO Payments (BookingID, Amount, PaymentDate, PaymentMethod, Status) VALUES
(1, 499.98, '2025-06-16', 'Credit Card', 'Completed'),
(2, 275.00, '2025-06-17', 'Bank Transfer', 'Completed'),
(3, 555.75, '2025-06-18', 'Cash', 'Pending'),
(4, 799.96, '2025-06-19', 'Credit Card', 'Completed'),
(5, 0.00, '2025-06-20', 'N/A', 'Cancelled'),
(6, 159.75, '2025-06-21', 'Mobile Payment', 'Completed'),
(7, 1749.95, '2025-06-22', 'Credit Card', 'Completed'),
(8, 419.99, '2025-06-23', 'Bank Transfer', 'Pending'),
(9, 375.50, '2025-06-24', 'Cash', 'Completed'),
(10, 899.97, '2025-06-25', 'Mobile Payment', 'Completed');


select * from  payments;




-- Destinations
CREATE TABLE Destinations (
    DestinationID INT PRIMARY KEY AUTO_INCREMENT,
    City VARCHAR(100),
    Country VARCHAR(100),
    Description TEXT
);

INSERT INTO Destinations (City, Country, Description) VALUES
('Mogadishu', 'Somalia', 'Capital city of Somalia, known for its historic sites and coastal beauty.'),
('Hargeisa', 'Somaliland', 'Major city in Somaliland, famous for Laas Geel rock art and cultural heritage.'),
('Bosaso', 'Somalia', 'Key port city in Puntland, important for trade and fishing industries.'),
('Galkayo', 'Somalia', 'Central city with a mix of cultures and vibrant markets.'),
('Kismayo', 'Somalia', 'Port city in southern Somalia, known for beaches and trade.'),
('Berbera', 'Somaliland', 'Coastal city with historic harbor, gateway to the Horn of Africa.'),
('Baidoa', 'Somalia', 'Agricultural hub and historic town in southwestern Somalia.'),
('Garowe', 'Somalia', 'Capital of Puntland, administrative and economic center.'),
('Burao', 'Somaliland', 'Known for livestock markets and scenic highlands.'),
('Jowhar', 'Somalia', 'Agricultural town near the Shabelle River with lush landscapes.');

select * from Destinations;



-- Flights
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY AUTO_INCREMENT,
    TripID INT,
    Airline VARCHAR(100),
    FlightNumber VARCHAR(50),
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    Origin VARCHAR(100),
    Destination VARCHAR(100),
    FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

INSERT INTO Flights (TripID, Airline, FlightNumber, DepartureTime, ArrivalTime, Origin, Destination) VALUES
(1, 'Somali Airlines', 'SM101', '2025-07-01 08:00:00', '2025-07-01 09:30:00', 'Nairobi, Kenya', 'Mogadishu, Somalia'),
(2, 'Hargeisa Wings', 'HW202', '2025-07-10 10:00:00', '2025-07-10 12:00:00', 'Addis Ababa, Ethiopia', 'Hargeisa, Somaliland'),
(3, 'Baidoa Express', 'BX303', '2025-08-05 06:30:00', '2025-08-05 08:00:00', 'Mogadishu, Somalia', 'Baidoa, Somalia'),
(4, 'Puntland Airways', 'PA404', '2025-07-20 09:45:00', '2025-07-20 11:15:00', 'Hargeisa, Somaliland', 'Bosaso, Somalia'),
(5, 'Jubba Jet', 'JJ505', '2025-09-01 14:00:00', '2025-09-01 16:30:00', 'Kampala, Uganda', 'Kismayo, Somalia'),
(6, 'Galkayo Connect', 'GC606', '2025-08-15 07:00:00', '2025-08-15 09:00:00', 'Mogadishu, Somalia', 'Galkayo, Somalia'),
(7, 'Luuq Link', 'LL707', '2025-08-10 15:00:00', '2025-08-10 17:00:00', 'Baidoa, Somalia', 'Luuq, Somalia'),
(8, 'Somlight Airlines', 'SA808', '2025-07-28 08:30:00', '2025-07-28 10:00:00', 'Hargeisa, Somaliland', 'Laascaanood, Somaliland'),
(9, 'Afgooye Air', 'AA909', '2025-09-12 13:00:00', '2025-09-12 14:30:00', 'Mogadishu, Somalia', 'Afgooye, Somalia'),
(10, 'Kismayo Regional', 'KR010', '2025-08-20 11:00:00', '2025-08-20 13:00:00', 'Mogadishu, Somalia', 'Kismayo, Somalia');


select * from Flights ; 




-- Hotels
CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY AUTO_INCREMENT,
    TripID INT,
    Name VARCHAR(100),
    Address VARCHAR(200),
    CheckInDate DATE,
    CheckOutDate DATE,
    FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);


INSERT INTO Hotels (TripID, Name, Address, CheckInDate, CheckOutDate) VALUES
(1, 'Jazeera Palace Hotel', 'Airport Rd, Mogadishu, Somalia', '2025-07-01', '2025-07-03'),
(2, 'Maansoor Hotel Hargeisa', 'Igal Int. Airport Rd, Hargeisa, Somaliland', '2025-07-10', '2025-07-12'),
(3, 'Baidoa Grand Hotel', 'KM5, Baidoa City Center, Somalia', '2025-08-05', '2025-08-09'),
(4, 'Bosaso Sea View Hotel', 'Marine Rd, Bosaso, Puntland', '2025-07-20', '2025-07-24'),
(5, 'Kismayo Royal Resort', 'Near the Port, Kismayo, Somalia', '2025-09-01', '2025-09-04'),
(6, 'Galkayo Star Hotel', 'Market Road, South Galkayo, Somalia', '2025-08-15', '2025-08-17'),
(7, 'Luuq Riverside Inn', 'Shabelle River Bank, Luuq, Somalia', '2025-08-10', '2025-08-12'),
(8, 'Laascaanood Heritage Lodge', 'Old District, Laascaanood, Somaliland', '2025-07-28', '2025-07-30'),
(9, 'Afgooye Agricultural Stay', 'Green Farm Rd, Afgooye, Somalia', '2025-09-12', '2025-09-14'),
(10, 'Kismayo Island Resort', 'Beachfront, Jubba Island, Kismayo', '2025-08-20', '2025-08-23');

select * from Hotels;


-- Reviews
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    TripID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    ReviewDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

INSERT INTO Reviews (CustomerID, TripID, Rating, Comment, ReviewDate) VALUES
(1, 1, 5, 'An unforgettable experience in Mogadishu. Great guide and hotel!', '2025-07-05'),
(2, 2, 4, 'Hargeisa was beautiful and peaceful. The cave tour was amazing.', '2025-07-14'),
(3, 3, 3, 'Trip was good, but the flight was delayed. Still enjoyed Baidoa.', '2025-08-10'),
(4, 4, 5, 'Bosaso was fantastic! Beaches were clean and the seafood was fresh.', '2025-07-25'),
(5, 5, 4, 'Kismayo had excellent views. Wish the trip was a bit longer.', '2025-09-06'),
(6, 6, 5, 'Galkayo surprised me with its culture and warm people.', '2025-08-18'),
(7, 7, 4, 'Luuq was calm and scenic. A great break from the city.', '2025-08-13'),
(8, 8, 5, 'Loved the historical sites in Laascaanood. Guide was very knowledgeable.', '2025-07-31'),
(9, 9, 3, 'Afgooye was okay, but the accommodation could be improved.', '2025-09-15'),
(10, 10, 5, 'Kismayo trip was perfectly organized. Loved every moment!', '2025-08-24');


select * from Reviews;



-- Itinerary Details
CREATE TABLE ItineraryDetails (
    ItineraryID INT PRIMARY KEY AUTO_INCREMENT,
    TripID INT,
    DayNumber INT,
    ActivityDescription TEXT,
    Location VARCHAR(200),
    FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);


-- TripID 1: Mogadishu Tour
INSERT INTO ItineraryDetails (TripID, DayNumber, ActivityDescription, Location) VALUES
(1, 1, 'Arrival in Mogadishu, hotel check-in, evening beach walk along Lido Beach.', 'Mogadishu, Somalia'),
(1, 2, 'Visit National Museum, Bakara Market, and traditional Somali dinner.', 'Mogadishu, Somalia'),

-- TripID 2: Hargeisa & Laas Geel
(2, 1, 'Explore Hargeisa city and its markets, evening cultural performance.', 'Hargeisa, Somaliland'),
(2, 2, 'Day trip to Laas Geel rock art site and picnic lunch.', 'Laas Geel, Somaliland'),

-- TripID 3: Baidoa Heritage Tour
(3, 1, 'Welcome to Baidoa, tour of local farms and markets.', 'Baidoa, Somalia'),
(3, 2, 'Visit historic mosque and meet with local artisans.', 'Baidoa, Somalia'),

-- TripID 4: Bosaso Coastal Trip
(4, 1, 'Arrive in Bosaso, relax at Sea View beach and local seafood tasting.', 'Bosaso, Somalia'),
(4, 2, 'Boat trip along the Gulf of Aden and visit to fish markets.', 'Bosaso, Somalia'),

-- TripID 5: Kismayo Adventure
(5, 1, 'Welcome tour in Kismayo, explore Jubba Island beach.', 'Kismayo, Somalia'),
(5, 2, 'Visit local museums and take part in a fishing village tour.', 'Kismayo, Somalia');


select * from ItineraryDetails;






-- Optional: Filter for one trip only (e.g., TripID = 2)
SELECT 
    i.DayNumber,
    i.ActivityDescription,
    i.Location
FROM ItineraryDetails i
WHERE i.TripID = 2
ORDER BY i.DayNumber;






