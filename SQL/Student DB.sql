CREATE Database  Student
CREATE TABLE student_Info (
    Id INT ,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Age INT,
    Gender VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255)
)

INSERT INTO student_Info (Id, First_name, Last_name, Age, Gender, Email, Phone, Address)
VALUES 
(1, 'Abdi', 'Mohamed', 22, 'Male', 'abdi.mohamed@example.so', '+252612345678', 'Mogadishu, Somalia'),
(2, 'Hodan', 'Ali', 20, 'Female', 'hodan.ali@example.so', '+252615678910', 'Hargeisa, Somalia'),
(3, 'Ahmed', 'Warsame', 23, 'Male', 'ahmed.warsame@example.so', '+252618765432', 'Kismayo, Somalia'),
(4, 'Nasteexo', 'Abdi', 21, 'Female', 'nasteexo.abdi@example.so', '+252619876543', 'Garowe, Somalia'),
(5, 'Mohamud', 'Yusuf', 24, 'Male', 'mohamud.yusuf@example.so', '+252612349876', 'Baidoa, Somalia'),
(6, 'Fartun', 'Omar', 19, 'Female', 'fartun.omar@example.so', '+252617123456', 'Mogadishu, Somalia'),
(7, 'Abdirahman', 'Hassan', 22, 'Male', 'abdirahman.hassan@example.so', '+252619876321', 'Hargeisa, Somalia'),
(8, 'Safiya', 'Mohamud', 20, 'Female', 'safiya.mohamud@example.so', '+252615674321', 'Bosaso, Somalia'),
(9, 'Jama', 'Ismail', 23, 'Male', 'jama.ismail@example.so', '+252612345321', 'Kismayo, Somalia'),
(10, 'Ifrah', 'Abdullahi', 21, 'Female', 'ifrah.abdullahi@example.so', '+252618765321', 'Garowe, Somalia'),
(11, 'Hassan', 'Farah', 24, 'Male', 'hassan.farah@example.so', '+252614321567', 'Baidoa, Somalia'),
(12, 'Ayaan', 'Mohamed', 19, 'Female', 'ayaan.mohamed@example.so', '+252613216789', 'Mogadishu, Somalia'),
(13, 'Khalid', 'Yusuf', 22, 'Male', 'khalid.yusuf@example.so', '+252615678432', 'Hargeisa, Somalia'),
(14, 'Zahra', 'Ali', 20, 'Female', 'zahra.ali@example.so', '+252616543210', 'Bosaso, Somalia'),
(15, 'Liban', 'Abdi', 23, 'Male', 'liban.abdi@example.so', '+252612678543', 'Kismayo, Somalia'),
(16, 'Amal', 'Warsame', 21, 'Female', 'amal.warsame@example.so', '+252617654321', 'Garowe, Somalia'),
(17, 'Ibrahim', 'Omar', 24, 'Male', 'ibrahim.omar@example.so', '+252614321890', 'Baidoa, Somalia'),
(18, 'Ruqiya', 'Hassan', 19, 'Female', 'ruqiya.hassan@example.so', '+252612345890', 'Mogadishu, Somalia'),
(19, 'Salman', 'Mohamud', 22, 'Male', 'salman.mohamud@example.so', '+252619876543', 'Hargeisa, Somalia'),
(20, 'Nasra', 'Farah', 20, 'Female', 'nasra.farah@example.so', '+252615674321', 'Bosaso, Somalia'),
(21, 'Yasir', 'Ismail', 23, 'Male', 'yasir.ismail@example.so', '+252612345678', 'Kismayo, Somalia'),
(22, 'Sagal', 'Abdullahi', 21, 'Female', 'sagal.abdullahi@example.so', '+252618765432', 'Garowe, Somalia'),
(23, 'Mustafa', 'Ali', 24, 'Male', 'mustafa.ali@example.so', '+252614321678', 'Baidoa, Somalia'),
(24, 'Muna', 'Yusuf', 19, 'Female', 'muna.yusuf@example.so', '+252613216543', 'Mogadishu, Somalia'),
(25, 'Hoodo', 'Jama', 22, 'Female', 'hoodo.jama@example.so', '+252617654789', 'Hargeisa, Somalia'),
(26, 'Abdinasir', 'Omar', 23, 'Male', 'abdinasir.omar@example.so', '+252612345900', 'Bosaso, Somalia'),
(27, 'Fatima', 'Mohamud', 20, 'Female', 'fatima.mohamud@example.so', '+252615678123', 'Kismayo, Somalia'),
(28, 'Mahad', 'Farah', 24, 'Male', 'mahad.farah@example.so', '+252614321999', 'Garowe, Somalia'),
(29, 'Rahma', 'Ismail', 19, 'Female', 'rahma.ismail@example.so', '+252618765111', 'Baidoa, Somalia'),
(30, 'Hamza', 'Ali', 22, 'Male', 'hamza.ali@example.so', '+252612345876', 'Mogadishu, Somalia'),
(31, 'Kawsar', 'Yusuf', 21, 'Female', 'kawsar.yusuf@example.so', '+252617654222', 'Hargeisa, Somalia'),
(32, 'Mohamed', 'Jama', 23, 'Male', 'mohamed.jama@example.so', '+252612345432', 'Bosaso, Somalia'),
(33, 'Halima', 'Omar', 20, 'Female', 'halima.omar@example.so', '+252615678888', 'Kismayo, Somalia'),
(34, 'Bashir', 'Mohamud', 24, 'Male', 'bashir.mohamud@example.so', '+252614321555', 'Garowe, Somalia'),
(35, 'Zakia', 'Farah', 19, 'Female', 'zakia.farah@example.so', '+252618765777', 'Baidoa, Somalia'),
(36, 'Yahya', 'Ismail', 22, 'Male', 'yahya.ismail@example.so', '+252612345999', 'Mogadishu, Somalia'),
(37, 'Shukri', 'Ali', 21, 'Female', 'shukri.ali@example.so', '+252617654333', 'Hargeisa, Somalia'),
(38, 'Samira', 'Yusuf', 20, 'Female', 'samira.yusuf@example.so', '+252616543111', 'Bosaso, Somalia'),
(39, 'Adan', 'Jama', 23, 'Male', 'adan.jama@example.so', '+252612345666', 'Kismayo, Somalia'),
(40, 'Maryan', 'Omar', 24, 'Female', 'maryan.omar@example.so', '+252615678777', 'Garowe, Somalia');


