-- creating database bloddonationdb
drop database if exists blooddonationdb;
create database if not exists blooddonationdb;
use blooddonationdb;
-- creating table donor_T which contains information about the donors
-- who have donated blood
CREATE TABLE donor_T (
  donor_id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  blood_type VARCHAR(5) NOT NULL,
  gender VARCHAR(10) NOT NULL,
  birth_date DATE NOT NULL,
  weight FLOAT NOT NULL,
  last_donation DATE,
  PRIMARY KEY (donor_id)
);

-- inserting values to donor_T tables
INSERT INTO donor_T (donor_id,first_name, last_name, email, phone, blood_type, gender, birth_date, weight, last_donation) VALUES
('100','Johnny', 'Doe', 'john.doe@example.com', '1234567890', 'A+', 'Male', '1990-01-01', 150, NULL),
('101','Jane', 'Doe', 'jane.doe@example.com', '0987654321', 'O+', 'Female', '1995-02-02', 120, '2022-12-01'),
('102','Bob', 'Smith', 'bob.smith@example.com', '1112223333', 'AB-', 'Male', '1985-03-03', 170, NULL),
('103','Sally', 'Jones', 'sally.jones@example.com', '4445556666', 'B+', 'Female', '1998-04-04', 140, '2021-10-15'),
('104','Mike', 'Brown', 'mike.brown@example.com', '7778889999', 'O-', 'Male', '1992-05-05', 160, '2022-02-20'),
('105','Linda', 'Davis', 'linda.davis@example.com', '4445556666', 'A+', 'Female', '1979-06-06', 130, '2021-12-05'),
('106','Tom', 'Wilson', 'tom.wilson@example.com', '5556667777', 'B-', 'Male', '1996-07-07', 155, NULL),
('107','Sarah', 'Taylor', 'sarah.taylor@example.com', '8889990000', 'AB+', 'Female', '1988-08-08', 145, '2022-01-10'),
('108','Jack', 'Clark', 'jack.clark@example.com', '7778889999', 'O-', 'Male', '1991-09-09', 170, '2022-03-25'),
('109','Amy', 'White', 'amy.white@example.com', '2223334444', 'A-', 'Female', '1993-10-10', 125, NULL),
('110','Bill', 'Walker', 'bill.walker@example.com', '5556667777', 'B+', 'Male', '1986-11-11', 165, '2022-02-15'),
('111','Karen', 'Hall', 'karen.hall@example.com', '4445556666', 'AB-', 'Female', '1990-12-12', 140, '2021-11-20'),
('112','Dave', 'Carter', 'dave.carter@example.com', '1112223333', 'O+', 'Male', '1997-01-13', 175, NULL),
('113','Julie', 'Lee', 'julie.lee@example.com', '7778889999', 'A+', 'Female', '1982-02-14', 120, '2022-03-05'),
('114','Frank', 'Adams', 'frank.adams@example.com', '3334445555', 'B-', 'Male', '1994-03-15', 160, '2022-01-01'),
('115','Ann', 'Baker', 'ann.baker@example.com', '8889990000', 'AB+', 'Female', '1987-04-16', 130, '2022-02-28'),
('116','Rob', 'Miller', 'rob.miller@example.com', '5556667777', 'O+','Male', '1994-03-15', 160, '2022-01-01'),
('117','John', 'Smith', 'john.smith@example.com', '5555555555', 'A+', 'Male', '1980-09-12', 180, '2022-03-20'),
('118','Amanda', 'Johnson', 'amanda.johnson@example.com', '5554443333', 'AB+', 'Female', '1992-11-30', 135, '2022-02-15'),
('119','James', 'Davis', 'james.davis@example.com', '5552221111', 'O+', 'Male', '1982-06-01', 200, NULL),
('120','Emily', 'Wilson', 'emily.wilson@example.com', '5556668888', 'B-', 'Female', '1999-04-15', 120, '2021-11-10'),
('121','Peter', 'Brown', 'peter.brown@example.com', '5557778888', 'AB+', 'Male', '1975-02-22', 190, '2022-01-20'),
('122','Jennifer', 'Garcia', 'jennifer.garcia@example.com', '5553334444', 'A+', 'Female', '1987-12-05', 140, NULL),
('123','Mark', 'Taylor', 'mark.taylor@example.com', '5558887777', 'O-', 'Male', '1991-09-30', 170, '2022-02-10'),
('124','Melanie', 'Anderson', 'melanie.anderson@example.com', '5551112222', 'B+', 'Female', '1994-08-20', 150, '2022-03-15'),
('125','David', 'Thomas', 'david.thomas@example.com', '5552223333', 'A-', 'Male', '1986-05-25', 160, NULL),
('126','Jessica', 'Clark', 'jessica.clark@example.com', '5554445555', 'O+', 'Female', '1997-01-07', 125, '2021-10-20'),
('127','Richard', 'Roberts', 'richard.roberts@example.com', '5556667777', 'AB-', 'Male', '1981-07-10', 175, '2022-01-05'),
('128','Laura', 'Hernandez', 'laura.hernandez@example.com', '5557778888', 'B-', 'Female', '1993-03-18', 130, NULL),
('129','William', 'Nelson', 'william.nelson@example.com', '5559990000', 'O-', 'Male', '1984-08-15', 185, '2022-03-05'),
('130','Karen', 'Turner', 'karen.turner@example.com', '5552223333', 'A+', 'Female', '1990-12-01', 135, NULL),
('131','Matthew', 'Collins', 'matthew.collins@example.com', '5554445555', 'AB+', 'Male', '1978-09-05', 200, '2022-02-25'),
('132','Elizabeth', 'Parker', 'elizabeth.parker@example.com', '5556667777', 'B+', 'Female', '1983-04-30', 140, '2021-11-30'),
('133','Christopher', 'Ramirez','christopher.ramirez@example.com', '5556667777', 'B+', 'Male', '1983-04-30', 140, '2021-11-30'),
('134','Jacob', 'Walker', 'j.walker@email.com', '888-777-6666', 'O-', 'Male', '1983-09-05', 180, '2021-12-25'),
('135','Sofia', 'Hall', 's.hall@email.com', '123-456-7890', 'A-', 'Female', '1994-04-23', 140, '2022-03-08'),
('136','Aiden', 'Young', 'a.young@email.com', '555-444-3333', 'B+', 'Male', '1997-05-17', 175, '2022-03-25'),
('137','Lily', 'Allen', 'l.allen@email.com', '444-555-6666', 'O-', 'Female', '1988-12-30', 150, '2021-10-15'),
('138','Evan', 'King', 'e.king@email.com', '222-333-4444', 'A+', 'Male', '1995-08-06', 160, '2022-04-10'),
('139','Aaliyah', 'Wright', 'a.wright@email.com', '777-777-7777', 'B-', 'Female', '1992-01-14', 115, '2022-01-20'),
('140','Mason', 'Lopez', 'm.lopez@email.com', '111-111-1111', 'AB+', 'Male', '1996-10-11', 190, '2022-03-30'),
('141','Elizabeth', 'Scott', 'e.scott@email.com', '888-777-6666', 'O+', 'Female', '1981-05-03', 130, '2021-11-10'),
('142','Benjamin', 'Green', 'b.green@email.com', '444-444-4444', 'A-', 'Male', '1993-11-22', 155, '2022-02-20'),
('143','Aurora', 'Baker', 'a.baker@email.com', '222-333-4444', 'B-','Female', '1981-05-03', 130, '2021-11-10'),
('144','Peter', 'Brown', 'peter.brown@example.com', '5557778888', 'AB+', 'Male', '1975-02-22', 190, '2022-01-20'),
('145','Jennifer', 'Garcia', 'jennifer.garcia@example.com', '5553334444', 'A+', 'Female', '1987-12-05', 140, NULL),
('146','Mark', 'Taylor', 'mark.taylor@example.com', '5558887777', 'O-', 'Male', '1991-09-30', 170, '2022-02-10'),
('147','Melanie', 'Anderson', 'melanie.anderson@example.com', '5551112222', 'B+', 'Female', '1994-08-20', 150, '2022-03-15'),
('148','David', 'Thomas', 'david.thomas@example.com', '5552223333', 'A-', 'Male', '1986-05-25', 160, NULL),
('149','Jessica', 'Clark', 'jessica.clark@example.com', '5554445555', 'O+', 'Female', '1997-01-07', 125, '2021-10-20'),
('150','Richard', 'Roberts', 'richard.roberts@example.com', '5556667777', 'AB-', 'Male', '1981-07-10', 175, '2022-01-05'),
('151','Laura', 'Hernandez', 'laura.hernandez@example.com', '5557778888', 'B-', 'Female', '1993-03-18', 130, NULL);

-- creating table blood_types_T which comprises of 8 blood types
CREATE TABLE blood_types_T (
  blood_type_id INT NOT NULL,
  blood_type_name VARCHAR(5) NOT NULL,
  PRIMARY KEY (blood_type_id)
);

INSERT INTO blood_types_T (blood_type_id,blood_type_name) VALUES
('1','A+'),
('2','A-'),
('3','B+'),
('4','B-'),
('5','AB+'),
('6','AB-'),
('7','O+'),
('8','O-');

-- creating table recipient_T which contains information about the recipients
-- who receive blood donations

CREATE TABLE recipient_T (
  recipient_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  blood_type_id INT NOT NULL,
  gender VARCHAR(10) NOT NULL,
  blood_type VARCHAR(5) NOT NULL,
  age INT NOT NULL,
  address VARCHAR(100) NOT NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(50) NOT NULL,
  zip_code VARCHAR(10) NOT NULL,
  PRIMARY KEY (recipient_id),
  FOREIGN KEY (blood_type_id) REFERENCES blood_types_T (blood_type_id)
);

-- inserting patient information
INSERT INTO recipient_T (recipient_id, first_name, last_name, email, phone, blood_type_id, gender, blood_type, age, address, city, state, zip_code) VALUES
('1000','John', 'Doe', 'johndoe@example.com', '555-1234', 1, 'Male', 'A+', 35, '123 Main St', 'Anytown', 'CA', '12345'),
('1001','Jane', 'Doe', 'janedoe@example.com', '555-5678', 2, 'Female', 'A+',28, '456 Elm St', 'Othertown', 'NY', '67890'),
('1002','Bob', 'Smith', 'bobsmith@example.com', '555-9012', 3, 'Male', 'A+', 42, '789 Oak St', 'Somewhere', 'FL', '34567'),
('1003','Alice', 'Johnson', 'alicejohnson@example.com', '555-3456', 4, 'Female', 'A+', 52, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1004','Tom', 'Williams', 'tomwilliams@example.com', '555-7890', 5, 'Male', 'A+', 20, '654 Cedar St', 'Anytown', 'CA', '12345'),
('1005','Samantha', 'Brown', 'samanthabrown@example.com', '555-2345', 6, 'Female', 'A+',29, '987 Maple St', 'Othertown', 'NY', '67890'),
('1006','David', 'Davis', 'daviddavis@example.com', '555-6789', 7, 'Male', 'B+',39, '654 Cedar St', 'Somewhere', 'FL', '34567'),
('1007','Sarah', 'Jones', 'sarahjones@example.com', '555-0123', 8, 'Female', 'AB+', 48, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1008','Michael', 'Garcia', 'michaelgarcia@example.com', '555-4567', 1, 'Male', 'AB+',25, '123 Main St', 'Anytown', 'CA', '12345'),
('1009','Michelle', 'Martinez', 'michellemartinez@example.com', '555-8901', 2, 'Female','AB+', 31, '456 Elm St', 'Othertown', 'NY', '67890'),
('1010','Jose', 'Hernandez', 'josehernandez@example.com', '555-2345', 3, 'Male', 'B+',43, '789 Oak St', 'Somewhere', 'FL', '34567'),
('1011','Maria', 'Lopez', 'marialopez@example.com', '555-6789', 4, 'Female','B+', 55, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1012','Christopher', 'Clark', 'christopherclark@example.com', '555-0123', 5, 'Male','B+', 19, '654 Cedar St', 'Anytown', 'CA', '12345'),
('1013','Ashley', 'Rodriguez', 'ashleyrodriguez@example.com', '555-4567', 6, 'Female','B-', 27, '987 Maple St', 'Othertown', 'NY', '67890'),
('1014','Daniel', 'Lee', 'daniellee@example.com', '555-8901', 7, 'Male','AB-', 37, '654 Cedar St', 'Somewhere', 'FL', '34567'),
('1015','Michael', 'Smith', 'm.smith@email.com', '555-555-1212', 8, 'Male', 'O+',35, '654 Cedar St', 'Somewhere', 'FL', '34567'),
('1016','Sarah', 'Johnson', 's.johnson@email.com', '111-222-3333', 1, 'Female', 'O+',37, '654 Cedar St', 'Somewhere', 'FL', '34567'),
('1017','David', 'Lee', 'd.lee@email.com', '999-888-7777', 2, 'Male','O-', 40, '654 Cedar St', 'Somewhere', 'FL', '34567'),
('1018','Emily', 'Davis', 'e.davis@email.com', '777-777-7777', 3, 'Female','B-', 60, '654 Cedar St', 'Somewhere', 'FL', '34567'),
('1019','Kevin', 'Chen', 'k.chen@email.com', '123-123-1234', 4, 'Male','O+', 52, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1020','Olivia', 'Miller', 'o.miller@email.com', '456-789-0123', 5, 'Female','AB-', 56, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1021','Daniel', 'Kim', 'd.kim@email.com', '222-333-4444', 6, 'Male','AB-', 22, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1022','Samantha', 'Wong', 's.wong@email.com', '888-888-8888', 7, 'Female', 'A-',80, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1023','Matthew', 'Nguyen', 'm.nguyen@email.com', '777-777-8888', 8, 'Male','A-', 90, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1024','Rachel', 'Garcia', 'r.garcia@email.com', '333-444-5555', 1, 'Female','A-', 44, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1025','Alex', 'Wang', 'a.wang@email.com', '555-444-3333', 2, 'Male','A-', 26, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1026','Ava', 'Lopez', 'a.lopez@email.com', '777-888-9999', 2, 'Female','A-', 27, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1027','Jacob', 'Martinez', 'j.martinez@email.com', '222-333-4444', 4, 'Male','A-', 22, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1028','Emma', 'Taylor', 'e.taylor@email.com', '111-222-3333', 5, 'Female','A-', 72, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1029','William', 'Anderson', 'w.anderson@email.com', '444-555-6666', 6, 'Male','O+', 44, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1030','Sophia', 'White', 's.white@email.com', '333-444-5555', 7, 'Female','O+', 50, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1031','Christopher', 'Thomas', 'c.thomas@email.com', '777-777-7777', 8, 'Male','O+', 21, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1032','Avery', 'Jackson', 'a.jackson@email.com', '999-888-7777', 1, 'Female', 'O+', 27, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1033','Ryan', 'Harris', 'r.harris@email.com', '888-777-6666', 2, 'Male','O+', 43, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1034','Chloe', 'Martin', 'c.martin@email.com', '123-456-7890', 3, 'Female', 'O-', 30, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1035','Joshua', 'Thompson', 'j.thompson@email.com', '555-444-3333', 4, 'Male', 'O-', 33, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1036','Natalie', 'Garcia', 'n.garcia@email.com', '444-555-6666', 5, 'Female', 'O+', 20, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1037','Brandon', 'Davis', 'b.davis@email.com', '222-333-4444', 6, 'Male','AB-', 35, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1038','Mia', 'Rodriguez', 'm.rodriguez@email.com', '777-777-7777', 7, 'Female','AB+', 40, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1039','Ethan', 'Hernandez', 'e.hernandez@email.com', '111-111-1111', 1, 'Male','AB-', 44, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1040','Isabella', 'Lopez', 'i.lopez@email.com', '888-777-6666', 1, 'Female', 'O+',47, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1041','Andrew', 'Gonzalez', 'a.gonzalez@email.com', '444-444-4444', 2, 'Male','O+', 49, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1042','Grace', 'Wilson', 'g.wilson@email.com', '222-333-4444', 1, 'Female','O+', 50 , '321 Pine St', 'Nowhere', 'TX', '89012'),
('1043','Nicholas', 'Jackson', 'n.jackson@email.com','222-333-4444', 2, 'Female', 'O-', 38, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1044','Isabella', 'Hernandez', 'i.hernandez@email.com', '888-777-6666', 1, 'Female', 'O-',50 , '321 Pine St', 'Nowhere', 'TX', '89012'),
('1045','Olivia', 'Martinez', 'o.martinez@email.com', '777-888-9999', 1, 'Female','O+', 49 , '321 Pine St', 'Nowhere', 'TX', '89012'),
('1046','Elijah', 'Robinson', 'e.robinson@email.com', '111-222-3333', 2, 'Male', 'O-', 52, '321 Pine St', 'Nowhere', 'TX', '89012'),
('1047','Aria', 'Clark', 'a.clark@email.com', '444-555-6666', 1, 'Female', 'AB+',20, '654 Cedar St', 'Anytown', 'CA', '12345'),
('1048','Daniel', 'Lewis', 'd.lewis@email.com', '777-777-7777', 1, 'Male', 'A+',20, '654 Cedar St', 'Anytown', 'CA', '12345'),
('1049','Madison', 'Lee', 'm.lee@email.com', '999-888-7777', 1, 'Female', 'A+', 20,'654 Cedar St', 'Anytown', 'CA', '12345'),
('1050','Peter', 'Brown', 'peter.brown@example.com', '5557778888', 1, 'Male', 'B+', 20,'654 Cedar St', 'Anytown', 'CA', '12346');

-- creating table donation_center_T which contains information about the donation 
-- centers where the blood collection takes place
drop table if exists donation_center_T;
CREATE TABLE donation_center_T (
  donation_center_id INT PRIMARY KEY,
  donor_id int not null,
  center_name VARCHAR(200) NOT NULL,
  address VARCHAR(100) NOT NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(2) NOT NULL,
  phone_number VARCHAR(10),
  email VARCHAR(200),
  contact_person VARCHAR(200),
  FOREIGN KEY (donor_id) REFERENCES donor_T (donor_id)
);

insert into donation_center_T (donation_center_id, donor_id, center_name, address, city, state, phone_number, email, contact_person) values 
(00001, '100','LifeSouth Community Blood Centers', '5580 Heffernan Circle', 'Minneapolis', 'MN', '6124057748', 'lifesouth@email.com', 'Nazifah Kamin'),
(00002, '101','Ochsner Blood Bank', '17718 Cottonwood Lane', 'Topeka', 'KS', '7853883362', 'ochsner@email.com', 'Harry Holden'),
(00003, '102', 'Versiti Michigan', '34758 Eagle Crest Junction', 'Muskegon', 'MI', '2316375546', 'versitimichigan@email.com', 'Tom James'),
(00004, '103', 'Baylor Scott & White Blood Center', '50032 Colorado Drive', 'Houston', 'TX', '7138365105', 'baylorscott@email.com', 'Penelope Richard'),
(00005, '104', 'Atlanta Blood Services', '087 Emmet Drive', 'Savannah', 'GA', '9127048923', 'atlbloodservices@email.com', 'Susan Reel'),
(00006, '105','Blood Assurance', '63 Straubel Terrace', 'Memphis', 'TN', '9013158259', 'bloodassurance@email.com', 'Kate Moss'),
(00007, '106','New York Blood Center', '601 Victoria Center', 'Buffalo', 'NY', '7167559597', 'nybloodcenter@email.com', 'Tim Kendall'),
(00008, '107','UCLA Blood & Platelet Center', '75 Karstens Avenue', 'Mountain View', 'CA', '6503338181', 'uclabloodcenter@email.com', 'Anthony Rodriguez'),
(00009, '108' ,'Carter BloodCare', '14478 Heffernan Plaza', 'Beaumont', 'TX', '9361037625', 'carterbloodcare@email.com', 'Dawn Piper'),
(00010, '109', 'Community Blood Center', '2 Ridge Oak Point', 'Warren', 'OH', '3308902378', 'communitybloodcenter@email.com', 'Omar Willow'),
(00011, '110', 'Innovative Transfusion Medicine', '089 Express Park', 'Tampa', 'FL', '8135028273', 'innovativemed@email.com', 'John Wick'),
(00012, '111','Blood Bank of Hawaii', '9718 Lukken Terrace', 'Honolulu', 'HI', '8088609332', 'bloodbankhi@email.com', 'Kylie Trent'),
(00013,'112', 'Bloodworks Northwest', '315 Anniversary Center', 'Beaverton', 'OR', '5039453439', 'bloodbanknorthwest@email.com', 'Layla Mohamed'),
(00014, '113','Hoxworth Blood Center', '6211 Waubesa Lane', 'Akron', 'OH', '3309658413', 'hoxworthbc@email.com', 'Hailey Bieber'),
(00015, '114','Coastal Bend Blood Center', '16871 Oriole Park', 'Waco', 'TX', '2541637755', 'coastalbendbc@email.com', 'Selena Gomez'),
(00016, '115', 'Blood Bank of Arizona', '6 3rd Terrace', 'Phoenix', 'AZ', '6237303810', 'bbarizona@email.com', 'Sarah Jones'),
(00017, '116', 'District of Columbia Blood Bank', '29414 Messerschmidt Street', 'Washington', 'DC', '2025373708', 'distofcolombiabb@email.com', 'Jacob Smith'),
(00018, '117','Kansas Blood Center', '46787 Elmside Crossing', 'Wichita', 'KS', '3162997861', 'kansasbc@email.com', 'Oliver Davis'),
(00019, '118', 'Nevada Community Blood Bank', '253 Marquette Court', 'Reno', 'NV', '7759183977', 'nvcommbb@email.com', 'Mia Wilson'),
(00020, '119','Versiti Ohio', '7 Oneill Court', 'Columbus', 'OH', '5037590560', 'versitioh@email.com', 'Emma Lee'),
(00021, '120','Marsh Regional Blood Center', '6254 Jenna Center', 'Nashville', 'TE', '2029167776', 'marshregbc@email.com', 'Noah Garcia'),
(00022, '121', 'Stanford Blood Center', '9269 Elgar Trail', 'Anaheim', 'CA', '7141548956', 'stanfordbc@email.com', 'Sophia Brown'),
(00023, '122','Gulf Coast Regional Blood Center', '09835 Kropf Crossing', 'Corpus Christi', 'TX', '3612997162', 'gulfcoastbc@email.com', 'Ethan Miller'),
(00024, '123', 'LifeStream Blood Bank', '19 Bartelt Lane', 'Metairie', 'LA', '5041945095', 'lifestreambb@email.com', 'Isabella Martinez'),
(00025, '124','Blood Center of Northcentral Wisconsin', '27936 Badeau Point', 'Milwaukee', 'WI', '9208339789', 'bloodcenterofwi@email.com', 'Ava Jackson'),
(00026, '125','The Blood Connection', '7548 Thierer Hill', 'Syracuse', 'NY', '3154556903', 'thebloodconnection@email.com', 'William Taylor'),
(00027, '126', 'Memorial Blood Centers', '22 Pearson Crossing', 'Milwaukee', 'WI', '5203979714', 'memorialbc@email.com', 'James Anderson'),
(00028, '127', 'Cascade Regional Blood Services', '00265 Surrey Junction', 'Seattle', 'WA', '9134705465', 'cascaderegionalbs@email.com', 'Benjamin Thomas'),
(00029, '128', 'Inova Blood Donor Services', '22076 Independence Alley', 'Richmond', 'VI', '5033913524', 'inovabloodds@email.com', 'Charlotte Hernandez'),
(00030, '129' ,'LifeSouth Community Blood Centers', '6 Magdeline Terrace', 'Clearwater', 'FL', '7278495742', 'lifesouthcommbc@email.com', 'Michael Martin'),
(00031, '130' ,'Northern California Community Blood Bank', '95308 2nd Plaza', 'San Jose', 'CA', '4087215653', 'northcalicommbc@email.com', 'Evelyn Moore'),
(00032, '131','Versailles Ohio', '124 Kipling Drive', 'Cleveland', 'OH', '4408345110', 'versaillesoh@email.com', 'Daniel Clark'),
(00033, '132','Miller-Keystone Blood Center', '420 Haas Alley', 'Harrisburg', 'PA', '7174557549', 'millerkeystonebc@email.com', 'Logan Lewis'),
(00034, '133','Rhode Island Blood Center', '4636 Hagan Parkway', 'Newport', 'RI', '7852529386', 'ribc@email.com', 'Harper Walker'),
(00035, '134', 'SunCoast Blood Centers', '00 Hudson Place', 'Tampa', 'FL', '8139653363', 'scbc@email.com', 'Aiden Hall'),
(00036, '135', 'LifeSouth Community Blood Centers', '23 Hoffman Street', 'Mobile', 'AL', '2515350329', 'lifesouthcommbc@email.com', 'Mason Young'),
(00037, '136','Atlanta Blood Services', '14274 Anzinger Circle', 'Atlanta', 'GA', '6781499693', 'atlantabc@email.com', 'Abigail Allen'),
(00038, '137','Versiti Illinois', '952 Elmside Road', 'Chicago', 'IL', '2082002134', 'versitiil@email.com', 'Elijah King'),
(00039, '138','Winter Haven Hospital Community Blood Center', '1853 Lakewood Drive', 'Pensacola', 'FL', '8502824338', 'whhcbc@email.com', 'Emily Wright'),
(00040, '139','ImpactLife', '7 Westridge Park', 'Chicago', 'IL', '3127793775', 'impactlife@email.com', 'Elizabeth Scott'),
(00041, '140','ConnectLife', '1 Crescent Oaks Court', 'Brooklyn', 'NY', '4052795343', 'connectlife@email.com', 'Sofia Green'),
(00042, '141','Bloodworks Northwest', '0 Crest Line Circle', 'Washington', 'DC', '2027903236', 'bloodworksnw@email.com', 'Joshua Baker'),
(00043, '142','OneBlood', '6923 Basil Park', 'West Palm Beach', 'FL', '5618943785', 'oneblood@email.com', 'Madison Adams'),
(00044, '143','We Are Blood', '7 Dexter Point', 'Houston', 'TX', '7137375743', 'weareblood@email.com', 'Avery Nelson'),
(00045, '144','North Jersey Blood Bank', '21303 Redwing Point', 'New Brunswick', 'NJ', '7326066280', 'njbb@email.com', 'Jayden Carter'),
(00046, '145','Arkansas Blood Institute', '74 Milwaukee Junction', 'Anchorage', 'AK', '9073546094', 'akbi@email.com', 'Amelia Perez'),
(00047, '146', 'Texas Blood Institute', '40769 Nelson Lane', 'El Paso', 'TX', '9159153546', 'tbi@email.com', 'Joseph Roberts'),
(00048, '147', 'Versiti Indiana', '26302 Sage Court', 'Anderson', 'IN', '7655351842', 'versitiin@email.com', 'Mia Turner'),
(00049, '148','Coastal Bend Blood Center', '51800 Monica Point', 'Corpus Cristi', 'TX', '5205912703', 'cbbc@email.com', 'Avery Phillips'),
(00050, '149', 'Hendrick Regional Blood Center', '95 Arizona Plaza', 'Tyler', 'TX', '9032459657', 'hrbc@email.com', 'Alexander Campbell');

-- creating table labs_T which includes information related to laboratory testing
-- of blood samples collected during the donation drive
drop table if exists labs_T;
CREATE TABLE labs_T(
lab_id INT PRIMARY KEY,
donor_id INT NOT NULL,
blood_type VARCHAR(10) NOT NULL,
FOREIGN KEY (donor_id) REFERENCES donor_t(donor_id)
);
insert into labs_T (lab_id, donor_id, blood_type) values
(1, 100, 'A+'),
(2, 101, 'A-'),
(3, 102, 'B+'),
(4, 103, 'B-'),
(5, 104, 'AB+'),
(6, 105, 'AB-'),
(7, 106, 'O+'),
(8, 107, 'O-'),
(9, 108, 'A+'),
(10, 109, 'A-'),
(11, 110, 'B+'),
(12, 111, 'B-'),
(13, 112, 'AB+'),
(14, 113, 'AB-'),
(15, 114, 'O+'),
(16, 115, 'O-'),
(17, 116, 'A+'),
(18, 117, 'A-'),
(19, 118, 'B+'),
(20, 119, 'B-'),
(21, 120, 'AB+'),
(22, 121, 'AB-'),
(23, 122, 'O+'),
(24, 123, 'O-'),
(25, 124, 'A+'),
(26, 125, 'A-'),
(27, 126, 'B+'),
(28, 127, 'B-'),
(29, 128, 'AB+'),
(30, 129, 'AB-'),
(31, 130, 'O+'),
(32, 131, 'O-'),
(33, 132, 'A+'),
(34, 133, 'A-'),
(35, 134, 'B+'),
(36, 135, 'B-'),
(37, 136, 'AB+'),
(38, 137, 'AB-'),
(39, 138, 'O+'),
(40, 139, 'O-'),
(41, 140, 'A+'),
(42, 141, 'A-'),
(43, 142, 'B+'),
(44, 143, 'B-'),
(45, 144, 'AB+'),
(46, 145, 'AB-'),
(47, 146, 'O+'),
(48, 147, 'O-'),
(49, 148, 'A+'),
(50, 149, 'A-');

-- creating table staff_T which is used to manage and track the staff 
-- members working in the blood donation drive program
drop table if exists staff_T;
CREATE TABLE staff_T (
staff_id INT NOT NULL,
staff_first_name VARCHAR(50) NOT NULL,
staff_last_name VARCHAR(50) NOT NULL,
staff_phone VARCHAR(20) NOT NULL,
job_title VARCHAR(20) NOT NULL,
donation_center_id INT NOT NULL,
PRIMARY KEY (staff_id),
FOREIGN KEY (donation_center_id) REFERENCES donation_center_T (donation_center_id)
);

INSERT INTO staff_T (staff_id, staff_first_name, staff_last_name, staff_phone, job_title, donation_center_id) VALUES
('501', 'Nazifah', 'Kamin', '888-1234', 'Doctor', '00001'),
('502', 'Harry', 'Holden', '888-0101', 'Intern', '00002'),
('503', 'Tom', 'James', '888-1722', 'Intern', '00003'),
('504', 'Penelope', 'Richard', '888-1411', 'Volunteer', '00004'),
('505', 'Susan', 'Reel', '888-2544', 'Nurse', '00005'),
('506', 'Kate', 'Moss', '888-3521', 'Nurse', '00006'),
('507', 'Tim', 'Kendall', '888-8989', 'Intern', '00007'),
('508', 'Anthony', 'Rodriguez', '888-7624', 'Doctor', '00008'),
('509', 'Dawn', 'Piper', '888-7321', 'Volunteer', '00009'),
('510', 'Omar', 'Willow', '888-3248', 'Nurse', '00010'),
('511', 'John', 'Wick', '888-5432', 'Intern', '00011'),
('512', 'Kylie', 'Trent', '888-9012', 'Doctor', '00012'),
('513', 'Layla', 'Mohamed', '888-9898', 'Doctor', '00013'),
('514', 'Hailey', 'Bieber', '888-9434', 'Volunteer', '00014'),
('515', 'Selena', 'Gomez', '888-8552', 'Nurse', '00015'),
('516', 'Sarah', 'Jones', '888-1234', 'Doctor', '00016'),
('517', 'Jacob', 'Smith', '888-0101', 'Intern', '00017'),
('518', 'Oliver', 'Davis', '888-1722', 'Intern', '00018'),
('519','Mia', 'Wilson', '888-1411', 'Volunteer', '00019'),
('520', 'Emma', 'Lee', '888-2544', 'Nurse', '00020'),
('521', 'Noah', 'Garcia', '888-3521', 'Nurse', '00021'),
('522', 'Sophia', 'Brown', '888-8989', 'Intern', '00022'),
('523', 'Ethan', 'Miller', '888-7624', 'Doctor', '00023'),
('524', 'Isabella', 'Martinez', '888-7321', 'Volunteer', '00024'),
('525', 'Ava', 'Jackson', '888-3248', 'Nurse', '00025'),
('526', 'William', 'Taylor', '888-5432', 'Intern', '00026'),
('527', 'James', 'Anderson', '888-9012', 'Doctor', '00027'),
('528', 'Benjamin', 'Thomas', '888-9898', 'Doctor', '00028'),
('529', 'Charlotte', 'Hernandez', '888-9434', 'Volunteer', '00029'),
('530', 'Michael', 'Martin', '888-8552', 'Nurse', '00030'),
('531', 'Evelyn', 'Moore', '888-1234', 'Doctor', '00031'),
('532', 'Daniel', 'Clark', '888-0101', 'Intern', '00032'),
('533', 'Logan', 'Lewis', '888-1722', 'Intern', '00033'),
('534', 'Harper', 'Walker', '888-1411', 'Volunteer', '00034'),
('535', 'Aiden', 'Hall', '888-2544', 'Nurse', '00035'),
('536', 'Mason', 'Young', '888-3521', 'Nurse', '00036'),
('537', 'Abigail', 'Allen', '888-8989', 'Intern', '00037'),
('538', 'Elijah', 'King', '888-7624', 'Doctor', '00038'),
('539', 'Emily', 'Wright', '888-7321', 'Volunteer', '00039'),
('540', 'Elizabeth', 'Scott', '888-3248', 'Nurse', '00040'),
('541', 'Sofia', 'Green', '888-5432', 'Intern', '00041'),
('542', 'Joshua', 'Baker', '888-9012', 'Doctor', '00042'),
('543', 'Madison', 'Adams', '888-9898', 'Doctor', '00043'),
('544', 'Avery', 'Nelson', '888-9434', 'Volunteer', '00044'),
('545', 'Jayden', 'Carter', '888-8552', 'Nurse', '00045'),
('546', 'Amelia', 'Perez', '888-1234', 'Doctor', '00046'),
('547', 'Joseph', 'Roberts', '888-0101', 'Intern', '00047'),
('548', 'Mia', 'Turner', '888-1722', 'Intern', '00048'),
('549', 'Avery', 'Phillips', '888-1411', 'Volunteer', '00049'),
('550', 'Alexander', 'Campbell', '888-2544', 'Nurse', '00050');

-- creating hospital_T table which is used to manage and track the hospitals that 
-- participate in the blood donation drive program
drop table if exists hospital_T;
CREATE TABLE hospital_T (
  hospital_id INT NOT NULL,
  hospital_name VARCHAR(50) NOT NULL,
  hospital_address VARCHAR (50) NOT NULL,
  hospital_city VARCHAR(25) NOT NULL,
  hospital_state VARCHAR(20) NOT NULL,
  hospital_zipcode VARCHAR(10) NOT NULL,
staff_id INT NOT NULL,
  PRIMARY KEY (hospital_id),
  FOREIGN KEY (staff_id) REFERENCES staff_T(staff_id)
);
INSERT INTO hospital_T (hospital_id, hospital_name, hospital_address, hospital_city, hospital_state, hospital_zipcode, staff_ID) 
VALUES
('001', 'Great Health', '264 Retha Rapid', 'East Rylee', 'NC', '38464', '501'),  
('002', 'Healthy Hearts', '967 Lyla Streets', 'West Dante', 'LO', '58625', '502'),  
('003', 'Baylor', '111 Alison Points', 'New Onie', 'GA', '00331', '503'),  
('004', 'Bellville Medical', '487 Muller Skyway', 'East Hound', 'NY', '37664', '504'),  
('005', 'Medical City', '144 Ofelia Land', 'Kingman', 'AR', '38999', '505'),  
('006', 'Big Bend', '2165 Renee Street', 'Irving', 'MN', '42846', '506'),  
('007', 'Advent Health', '6494 Rob Lane', 'Plano', 'TX', '37552', '507'),  
('008', 'Baptist Hospital', '9715 Farrell Light', 'West Vegas', 'VI', '78462', '508'),  
('009', 'Ascension', '435 Bailey Station', 'Fairbanks', 'WA', '10372', '509'),  
('010', 'Cleveland Emergency', '200 Zachery Hills', 'Troy', 'NC', '48621', '510'),  
('011', 'Del Sol Medical', '735 Berge Knolls', 'Tuscany', 'WY', '21334', '511'),  
('012', 'Dell Soton', '428 Jordan Spur', 'Anchorage', 'IA', '64224', '512'),  
('013', 'DeMar Healthcare', '12642 Armstrong Ridges', 'Cordova', 'FL', '95367', '513'), 
('014', 'Grace Medical', '302 Harris Port', 'Haines', 'CA', '28462', '514'),  
('015', 'Gonzales Medical Center', '859 McLaughlin Vista', 'Homer', 'CO', '75322', '515'),  
('016', 'Harlingen Medical Center', '630 Lizeth Hill', 'Glendale', 'AL', '07432', '516'),  
('017', 'Harris Health System', '701 Gerhard Locks', 'Mesa', 'AK', '65444', '517'),
('018', 'Mercy Health', '2550 Cherry Tree Lane', 'Burlington', 'VT', '05401', '518'),
('019', 'Mount Sinai Hospital', '1500 S Fairfield Ave', 'Chicago', 'IL', '60608', '519'),
('020', 'North Shore Medical Center', '81 Highland Avenue', 'Salem', 'MA', '01970', '520'),
('021', 'NYU Langone Health', '550 1st Ave', 'New York', 'NY', '10016', '521'),
('022', 'Orlando Health', '52 W Underwood St', 'Orlando', 'FL', '32806', '522'),
('023', 'Parkview Regional Medical Center', '11109 Parkview Plaza Dr', 'Fort Wayne', 'IN', '46845', '523'),
('024', 'Penn Presbyterian Medical Center', '51 N 39th St', 'Philadelphia', 'PA', '19104', '524'),
('025', 'Piedmont Atlanta Hospital', '1968 Peachtree Rd NW', 'Atlanta', 'GA', '30309', '525'),
('026', 'Providence Portland Medical Center', '4805 NE Glisan St', 'Portland', 'OR', '97213', '526'),
('027', 'Rady Childrens Hospital', '3020 Childrens Way', 'San Diego', 'CA', '92123', '527'),
('028', 'Riverside Methodist Hospital', '3535 Olentangy River Rd', 'Columbus', 'OH', '43214', '528'),
('029', 'Scripps Mercy Hospital San Diego', '4077 Fifth Ave', 'San Diego', 'CA', '92103', '529'),
('030', 'Sentara Norfolk General Hospital', '600 Gresham Dr', 'Norfolk', 'VA', '23507', '530'),
('031', 'St. Davids North Austin Medical Center', '12221 N Mopac Expy', 'Austin', 'TX', '78758', '531'),
('032', 'St. Josephs Hospital', '350 W Thomas Rd', 'Phoenix', 'AZ', '85013', '532'),
('033', 'St. Jude Childrens Research Hospital', '262 Danny Thomas Pl', 'Memphis', 'TN', '38105', '533'),
('034', 'St. Louis Childrens Hospital', '1 Childrens Pl', 'St. Louis', 'MO', '63110', '534'),
('035', 'St. Mary Medical Center', '1050 Linden Ave', 'Long Beach', 'CA', '90813', '535'),
('036', 'Stanford Health Care-Stanford Hospital', '300 Pasteur Dr', 'Stanford', 'CA', '94305', '536'),
('037', 'Tampa General Hospital', '1 Tampa General Cir', 'Tampa', 'FL', '33606', '537'),
('038', 'Texas Childrens Hospital', '6621 Fannin St', 'Houston', 'TX', '77030', '538'),
('039', 'The Johns Hopkins Hospital', '1800 Orleans St', 'Baltimore', 'MD', '21287', '539'),
('040', 'UCHealth University of Colorado Hospital', '12605 E 16th Ave', 'Aurora', 'CO', '80045', '540'),
('041', 'UChicago Medicine', '5841 S Maryland Ave', 'Chicago', 'IL', '60637', '541'),
('042', 'UCSF Medical Center', '505 Parnassus Ave', 'San Francisco', 'CA', '94143', '542'),
('043', 'City General', '257 Pine St', 'Columbus', 'OH', '43215', '543'),
('044', 'Sunrise Hospital', '4385 Boulder Hwy', 'Las Vegas', 'NV', '89121', '544'),
('045', 'Valley Medical Center', '400 S 43rd St', 'Renton', 'WA', '98055', '545'),
('046', 'Kaiser Permanente', '25825 S Vermont Ave', 'Harbor City', 'CA', '90710', '546'),
('047', 'Adventist Health', '1011 Baldwin Ave', 'Arcadia', 'CA', '91007', '547'),
('048', 'St. Lukes Hospital', '5901 Monclova Rd', 'Maumee', 'OH', '43537', '548'),
('049', 'Barnes Hospital', '1 Barnes Jewish Hospital Plaza', 'St. Louis', 'MO', '63110', '549'),
('050', 'St. Josephines Hospital', '350 W Thomas Rd', 'Phoenix', 'AZ', '85013', '550');

-- creating recipient_medical_history_T table which contains information about
-- the medical history of the recipients who receive blood donations.
drop table if exists recipient_medical_history_T;
create table recipient_medical_history_T(
recipient_id INT NOT NULL,
blood_type_id INT NOT NULL,
diseases varchar(40) not null,
infections varchar(400)not null,
reason varchar(400) not null,
accepted_blood_type varchar(40) not null,
FOREIGN KEY (blood_type_id) references blood_types_T (blood_type_id),
FOREIGN KEY (recipient_id) references recipient_T (recipient_id)
);

INSERT INTO recipient_medical_history_T (recipient_id, blood_type_id, diseases, infections, reason, accepted_blood_type) VALUES
('1000','1','Blood poisoning (sepsis)', 'abc ',"When germs get into a person's body, they can cause an infection", 'O'),
('1001','2','Bone cancer', 'def', 'A mass of unusual cells growing in a bone', 'A+'),
('1002', '3','Brain tumours', 'ghi', 'changes in the DNA inside cells', 'B-'),
('1003', '4','Chest infection', 'jkl', ' Most bronchitis cases are caused by viruses, whereas most pneumonia cases are due to bacteria', 'AB+'),
('1004', '5','Chickenpox', 'mno', 'varicella-zoster virus', 'O+'),
('1005', '6','Chronic fatigue syndrome', 'pqr', "a change in the person's immune system and the way it responds to infection or stress", 'B-'),
('1006', '7','Cirrhosis', 'stu', "excessive drinking of alcohol, hepatitis B and C virus infections, and fatty liver that's caused by obesity and diabetes", 'O-'),
('1007', '8','Cold sore', 'vwx', 'Viral infection or fever', 'AB+'),
('1008', '5','Coma', 'yza', 'Traumatic brain injuries, stroke,etc..', 'A+'),
('1009', '1','Conjunctivitis', 'bcd', 'Viruses, bacteria, allergies, etc..', 'B-'),
('1010', '2','Constipation', 'efg', 'not eating enough fibre, such as fruit, vegetables and cereals', 'A+'),
('1011', '1','Coronavirus (COVID-19)', 'hij', 'COVID-19 is caused by the SARS-CoV-2 virus', 'B+'),
('1012', '4','Cough', 'klm', 'Asthma and COPD (emphysema or chronic bronchitis), the common cold and flu', 'AB-'),
('1013', '4','Dehydration', 'nop', 'Diarrhea, vomiting, Fever, Excessive sweating', 'O+'),
('1014','5','Dental abscess', 'qrs', "poor oral hygiene – plaque can build-up on your teeth if you don't floss and brush your teeth regularl", 'B-'),
('1015','6','Diabetes', 'tuv', 'Overweight, obesity, and physical inactivity', 'A-'),
('1016','7','Diarrhoea', 'wxy', 'Viruses. Viruses that can cause diarrhea include Norwalk virus (also known as norovirus), enteric adenoviruses, astrovirus, cytomegalovirus and viral hepatitis, bacteria and parasites', 'AB+'),
('1017','8','Discoid eczema', 'zab', 'The cause of discoid eczema is unknown, although it may occur as a result of having particularly dry skin', 'O-'),
('1018','4','Dizziness (Lightheadedness)', 'cde', 'inner ear disturbance, motion sickness and medication effects', 'AB+'),
('1019','2','Dry mouth', 'fgh', "diabetes, stroke, yeast infection (thrush) in your mouth or Alzheimer's disease, or due to autoimmune diseases, such as Sjogren's syndrome or HIV/AIDS", 'A+'),
('1020','2','Ebola virus disease', 'ijk', 'bats or nonhuman primates being the most likely source', 'O-'),
('1021','6','Ectopic pregnancy', 'lmn', 'a fertilized egg gets stuck on its way to the uterus, often because the fallopian tube is damaged by inflammation or is misshapen', 'A+'),
('1022','5','Endometriosis', 'opq', 'Retrograde menstrual flow', 'B-'),
('1023','4','Epilepsy', 'rst', 'an imbalance of nerve-signaling chemicals called neurotransmitters, tumors, strokes, and brain damage from illness or injury, or some combination of these', 'A-'),
('1024','5','Eye cancer', 'uvw', 'shadows, flashes of light, or wiggly lines in your vision', 'AB+'),
('1025','6','Fever in adults', 'xyz', 'bacterial or viral infection', 'O-'),
('1026','7','Fever in children', 'aabbcc', 'Colds, flu and other viral infections are the most common cause', 'AB+'),
('1027','8','Flu', 'bbccddd', ' an influenza virus', 'A+'),
('1028','8','Foetal alcohol syndrome', 'ccddee', 'when a person is exposed to alcohol before birth', 'B+'),
('1029','3','Food poisoning', 'ddeeff', 'not cooking food thoroughly, not correctly storing food below 5C', 'AB-'),
('1030','5','Gallstones', 'eeffgg', 'bile contains too much cholesterol, too much bilirubin, or not enough bile salts', 'O-'),
('1031','1','Gastroenteritis', 'ffgghh', 'viruses, bacteria, bacterial toxins, parasites, particular chemicals and some drugs','B-'),
('1032','3','Genital herpes', 'gghhii', 'unprotected vaginal, anal or oral sex', 'AB-'),
('1033','4','Gum disease', 'hhiijj', 'a build-up of plaque on the teeth', 'O+'),
('1034','5','Haemorrhoids (piles)', 'iijjkk', 'increased pressure due to pregnancy, being overweight, or straining during bowel movements', 'A+'),
('1035','6','Hay fever', 'jjkkll', 'the nose and/or eyes coming into contact with environmental allergens, such as pollens (grasses, weeds or trees), dust mite, moulds and animal dander', 'B+'),
('1036','7','Headaches', 'kkllmm', 'stress, muscular tension, dental or jaw problems, infections, diet, eye problems, hormonal influences, medications', 'A+'),
('1037','3','HIV', 'llmmnn', 'sexual contact, illicit injection drug use or sharing needles, contact with infected blood, or from mother to child during pregnancy, childbirth or breastfeeding', 'O+'),
('1038','7','Hyperhidrosis', 'mmnnoo', 'Diabetes, Menopause hot flashes, Thyroid problems, Some types of cancer, Nervous system disorders, Infections', 'A-'),
('1039','4','Insomnia', 'nnoopp', 'stress and anxiety, a poor sleeping environment', 'O+'),
('1040','4','Itching', 'ooppqq', 'Allergic reactions to food, insect bites, pollen, and medicines', 'B+'),
('1041','2','Kidney cancer', 'ppqqrr', 'Older age, smoking, obesity, high blood pressure, long-term dialysis, and a family history of kidney cancer', 'AB-'),
('1042','3','Kidney infection', 'qqrrss', 'bacteria or viruses', 'B+'),
('1043','4','Kidney stones', 'rrsstt', 'drinking too little water, exercise (too much or too little), obesity, weight loss surgery, or eating food with too much salt or sugar', 'O-'),
('1044','5','Liver cancer', 'ssttuu', ' chronic (long-term) infection with hepatitis B virus (HBV) or hepatitis C virus (HCV)', 'AB+'),
('1045','6','Lung cancer', 'ttuuvv', 'Cigarette smoking is the number one cause of lung cancer', 'A+'),
('1046','7','Malaria', 'uuvvww', 'being bitten by an infective female Anopheles mosquito', 'A-'),
('1047','8','Mouth cancer', 'vvwwxx', 'tobacco and alcohol consumption', 'B-'),
('1048','4','Obesity', 'wwxxyy', 'eating patterns, physical activity levels, and sleep routines', 'O+'),
('1049','5','Skin cancer (melanoma)', 'xxyyzz', ' exposure to ultraviolet (UV) light as well as gene changes', 'B+');

-- Creating table blood_donation_history_T which contains information about the 
-- history of blood donations that have been made during the drive
drop table if exists blood_donation_history_T;
create table blood_donation_history_T(
Donor_ID INT NOT NULL,
Donation_Center_ID INT NOT NULL,
Date_From date,
FOREIGN KEY (donor_id) REFERENCES donor_T (donor_id)
);
INSERT INTO blood_donation_history_T (Donor_ID, Donation_Center_ID, Date_From) VALUES
('100', '21001', '2021-05-12'),
('101', '54002', '2021-02-22'),
('102', '62003', '2021-08-16'),
('103', '54004', '2021-01-15'),
('104', '10005', '2021-09-06'),
('105', '88006', '2021-02-25'),
('106','19007', '2021-01-17'),
('107','42008', '2021-06-29'),
('108', '65009', '2021-07-14'),
('109', '3010', '2021-05-22'),
('110', '7011', '2021-09-11'),
('111', '9012', '2021-05-09'),
('112','5013', '2021-10-22'),
('113','6014', '2021-11-11'),
('114','3015', '2021-10-19'),
('115','4816', '2021-05-01'),
('116','9017', '2021-01-01'),
('117','7018', '2021-02-13'),
('118','8019', '2021-08-16'),
('119','2020', '2021-05-30'),
('120','9021', '2021-01-12'),
('121','6022', '2021-09-11'),
('122','4023', '2021-05-19'),
('123','3024', '2021-06-15'),
('124','1025', '2021-09-15'),
('125','1526', '2021-02-11'),
('126','9027', '2021-06-06'),
('127','4028', '2021-10-10'),
('128','1029', '2021-07-17'),
('129','6030', '2021-09-10'),
('130','5031', '2021-11-10'),
('131','7032', '2021-03-15'),
('132','4033', '2021-09-10'),
('133','9034', '2021-01-16'),
('134','2035', '2021-12-29'),
('135','4036', '2021-12-23'),
('136','5037', '2021-09-21'),
('137','3038', '2021-01-25'),
('138','8039', '2021-04-21'),
('139','7040', '2021-02-10'),
('140','1041', '2021-03-23'),
('141','4042', '2021-12-02'),
('142','7043', '2021-09-14'),
('143','9044', '2021-01-28'),
('144','2045', '2021-05-22'),
('145','9046', '2021-03-30'),
('146','3047', '2021-07-16'),
('147','4048', '2021-10-19'),
('148','7049', '2021-11-11'),
('149','5050', '2021-11-20');

-- request_T table comprises of information about the requests for blood that 
-- have been made by hospitals or other medical facilities
Drop TABLE IF EXISTS request_T;
CREATE TABLE REQUEST_T (
Request_ID INT NOT NULL,
Requester_phone VARCHAR(20) NOT NULL,
Request_Amount INT NOT NULL,
Request_Date DATE,
Recipient_ID INT NOT NULL,
PRIMARY KEY(REQUEST_ID),
FOREIGN KEY (Recipient_ID) REFERENCES Recipient_T (Recipient_ID)
);

INSERT INTO REQUEST_T (Request_ID, Requester_Phone, Request_Amount, Request_Date,Recipient_ID) VALUES
('01', '1234567890' ,'150', '2023-04-01', '1000'),
('02','1234567899','250','2023-02-01','1001'),
('03', '1234556676', '150','2023-01-01','1002'),
('04', '1234556677','120','2022-01-02','1003'),
('05', '12345566767', '180','2023-01-09','1004'),
('06', '12345566767', '150','2023-09-09','1005'),
('07', '1122334455', '150','2023-03-02','1006'),
('08', '6677889900', '180','2023-08-01','1007'),
('09', '4455667788', '60','2023-02-19','1008'),
('010','3344556677', '120','2023-03-19','1009'),
('011', '1122334455', '150','2023-02-21','1010'),
('012', '2244668800', '210','2023-01-20','1011'),
('013', '1122334567', '180','2023-01-15','1012'),
('014', '11998877665', '150','2023-01-12','1013'),
('015', '9988776655', '120','2023-05-10','1014'),
('016', '12345566767', '90','2023-01-20','1015'),
('017', '12345566767', '120','2023-01-20','1016'),
('018', '12345566767', '150','2023-01-20','1017'),
('019', '12345566767', '90','2022-10-15','1018'),
('020', '12345566767', '110','2023-03-18','1019'),
('021', '12345566767', '130','2023-01-18','1020'),
('022', '12345566767', '180','2023-04-18','1021'),
('023', '1234567890', '500', '2023-04-12', 1022),
('024', '1234567899', '200', '2023-04-13', 1023),
('025',  '1234556676', '300', '2023-04-14', 1024),
('026', '1234556677', '100', '2023-04-15', 1025),
('027', '12345566767', '150', '2023-04-16', 1026),
('028', '12345566767', '50', '2023-04-17', 1027),
('029', '1122334455', '400', '2023-04-18', 1028),
('030', '6677889900', '250', '2023-04-19', 1029),
('031', '4455667788', '150', '2023-04-20', 1030),
('032', '3344556677', '300', '2023-04-21', 1031),
('033', '1122334455', '200', '2023-04-22', 1032),
('034', '2244668800', '100', '2023-04-23', 1033),
('035','1122334567', '150', '2023-04-24', 1034),
('036', '11998877665', '50', '2023-04-25', 1035),
('037','9988776655', '400', '2023-04-26', 1036),
('038', '12345566767', '250', '2023-04-27', 1037),
('039', '12345566767', '150', '2023-04-28', 1038),
('040', '12345566767', '200', '2023-04-29', 1039),
('041', '12345566767', '300', '2023-04-30', 1040),
('042', '12345566767', '100', '2023-05-01', 1041),
('043', '12345566767', '150', '2023-05-02', 1042),
('044', '12345566767', '50', '2023-05-03', 1043),
('045', '12345596767', '60','2023-05-03','1044'),
('046', '12345066767', '90','2023-05-03','1045'),
('047','12345565767', '150','2023-05-03','1046'),
('048','12345166767', '90','2023-05-03','1047'),
('049', '12345526767', '100','2023-05-03','1048'),
('050', '12345536767', '150','2023-05-03','1049'),
('051', '12345564767', '120','2023-05-03','1050');

-- creating blood_inventory_T table which contains information about the
-- inventory of available blood that are currently in stock.
DROP TABLE IF EXISTS blood_inventory_T;
CREATE TABLE IF NOT EXISTS blood_inventory_T (
blood_inventory_id INT UNSIGNED NOT NULL,
blood_type_id INT NOT NULL,
blood_expiry_date DATE NOT NULL,
blood_storage_location VARCHAR(20) NOT NULL DEFAULT '',
blood_category VARCHAR(5) NOT NULL DEFAULT '',
PRIMARY KEY (blood_inventory_id),
FOREIGN KEY (blood_type_id) REFERENCES blood_types_T (blood_type_id)
);

INSERT INTO blood_inventory_T VALUES
('001',1,'2022/02/12','FRIDGE 1','A'),
('002',2,'2022/03/16','FRIDGE 2','A'),
('003',3,'2022/05/24','FRIDGE 2','A'),
('004',4,'2022/06/12','FRIDGE 2','A'),
('005',5,'2022/04/02','FRIDGE 1','B'),
('006',6,'2022/06/28','FRIDGE 3','AB'),
('007',7,'2022/06/23','FRIDGE 3','0'),
('008',8,'2022/03/16','FRIDGE 3','A'),
('009',1,'2022/05/14','FRIDGE 1','A'),
('010',1,'2022/07/01','FRIDGE 1','A'),
('011',1,'2022/04/19','FRIDGE 2','A'),
('012',2,'2022/04/08','FRIDGE 1','B'),
('013',2,'2022/05/07','FRIDGE 3','B'),
('014',2,'2022/04/29','FRIDGE 3','B'),
('015',2,'2022/04/28','FRIDGE 3','B'),
('016',1,'2022/04/27','FRIDGE 3','B'),
('017',2,'2022/04/26','FRIDGE 3','B'),
('018',3,'2022/04/25','FRIDGE 3','B'),
('019',3,'2022/04/24','FRIDGE 3','B'),
('020',3,'2022/04/23','FRIDGE 3','B'),
('021',4,'2022/04/22','FRIDGE 3','B'),
('022',5,'2022/04/21','FRIDGE 3','B'),
('023',4,'2022/03/29','FRIDGE 2','O'),
('024',5,'2022/03/28','FRIDGE 2','O'),
('025',6,'2022/03/27','FRIDGE 2','O'),
('026',7,'2022/03/26','FRIDGE 2','O'),
('027',8,'2022/03/25','FRIDGE 2','O'),
('028',1,'2022/03/24','FRIDGE 2','O'),
('029',2,'2022/03/23','FRIDGE 2','O'),
('030',3,'2022/03/22','FRIDGE 2','O'),
('031',4,'2022/03/21','FRIDGE 2','O'),
('032',5,'2022/03/21','FRIDGE 2','O'),
('033',6,'2022/02/28','FRIDGE 1','AB'),
('034',7,'2022/02/22','FRIDGE 1','AB'),
('035',8,'2022/02/08','FRIDGE 1','AB'),
('036',1,'2022/02/07','FRIDGE 1','AB'),
('037',2,'2022/02/06','FRIDGE 1','AB'),
('038',3,'2022/02/05','FRIDGE 1','AB'),
('039',3,'2022/02/04','FRIDGE 3','AB'),
('040',4,'2022/02/03','FRIDGE 2','AB'),
('041',5,'2022/07/22','FRIDGE 1','AB'),
('042',1,'2022/07/09','FRIDGE 3','A+'),
('043',2,'2022/07/08','FRIDGE 2','A-'),
('044',3,'2022/07/07','FRIDGE 1','A+'),
('045',4,'2022/07/06','FRIDGE 3','A-'),
('046',5,'2022/07/05','FRIDGE 2','A+'),
('047',6,'2022/07/04','FRIDGE 1','A-'),
('048',7,'2022/07/03','FRIDGE 3','A+'),
('049',8,'2022/07/02','FRIDGE 1','A-'),
('050',1,'2022/07/01','FRIDGE 2','A+'),
('051',2,'2022/08/13','FRIDGE 1','A-');

-- creating donor_medical_history_T table which contains information about
-- the medical history of the donors who donate blood
CREATE TABLE IF NOT EXISTS donor_medical_history_T (
donor_id INT NOT NULL,
diseases VARCHAR(30) DEFAULT '',
infections VARCHAR(30) DEFAULT '',
covid_vaccination_status VARCHAR(20) DEFAULT '',
eligibility_status CHAR(1) DEFAULT '',
FOREIGN KEY (donor_id) REFERENCES donor_T(donor_id)
);

INSERT INTO donor_medical_history_T Values 
(100,'Malaria',NULL,'Y','N'),
(101,NULL,'cough','Y','Y'),
(102,NULL,'fever','N','N'),
(103,'Ebola',NULL,'Y','N'),
(104,NULL,NULL,'Y','Y'),
(105,'HIV',NULL,'Y','N'),
(106,'TB','cough','Y','Y'),
(107,NULL,NULL,'N','Y'),
(108,NULL,'fever','Y','N'),
(109,'Malaria','cough','Y','N'),
(110,'HIV','cough','Y','N'),
(111,NULL,'flu','Y','Y'),
(112,'Ebola',NULL,'Y','N'),
(113,NULL,NULL,'Y','Y'),
(114,NULL,'cough','Y','Y'),
(115,NULL,'cough','Y','Y'),
(116,'Hepatitis B',NULL,'Y','N'),
(117,'Chicken Pox','cough','Y','Y'),
(118,NULL,'cough','Y','Y'),
(119,'TB','cough','Y','Y'),
(120,NULL,'cough','Y','Y'),
(121,NULL,'fever','Y','N'),
(122,NULL,'fever','N','N'),
(123,NULL,'cough','N','Y'),
(124,'Malaria',NULL,'Y','N'),
(125,NULL,'cough','Y','Y'),
(126,NULL,NULL,'Y','Y'),
(127,NULL,NULL,'Y','Y'),
(131,NULL,NULL,'Y','Y'),
(137,NULL,NULL,'Y','Y'),
(143,NULL,NULL,'Y','Y'),
(147,NULL,NULL,'Y','Y'),
(149,NULL,NULL,'Y','Y'),
(135,NULL,NULL,'Y','Y'),
(128,'Chicken Pox','cough','Y','Y'),
(136,'Chicken Pox','cough','Y','Y'),
(145,'Chicken Pox','cough','Y','Y'),
(141,'Chicken Pox','cough','Y','Y'),
(129,'HIV',NULL,'Y','N'),
(133,'HIV',NULL,'Y','N'),
(146,'HIV',NULL,'Y','N'),
(140,'HIV',NULL,'Y','N'),
(130,NULL,'fever','N','N'),
(138,NULL,'fever','N','N'),
(142,NULL,'fever','N','N'),
(148,NULL,'fever','N','N'),
(132,'TB','cough','Y','Y'),
(144,'TB','cough','Y','Y'),
(150,'TB','cough','Y','Y'),
(134,'Hepatitis C',NULL,'Y','N');

-- Creating table donation_T which contains information about the blood donations
-- like quantity donated and donor details
Drop Table if exists Donation_T;
CREATE TABLE Donation_T(
Donor_USER_ID INT NOT NULL AUTO_INCREMENT,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Donor_Age INT, 
blood_type_id int NOT NULL,
Quantity INT NOT NULL,
PRIMARY KEY(Donor_USER_ID),
FOREIGN KEY( Blood_Type_ID) References Blood_Types_T( Blood_Type_ID)
);

INSERT INTO Donation_T(Donor_User_ID, First_name, Last_Name, Donor_Age, Blood_Type_ID, Quantity) VALUES
('11','Jane', 'Doe', '22', '2', '250'),
('12','Bob', 'Doe', '18', '1', '190'),
('13','Bill', 'Smith', '20','3', '180'),
('14','Billy', 'Jones', '22','4','90'),
('15','Tony', 'Williams', '25','7','110'),
('16','Will', 'Smith', '26', '8', '120'),
('17','Kumar', 'Ramanujam', '35', '5', '150'),
('18','Tom', 'Jones', '36', '6', '160'),
('19','David', 'Schwartz', '22', '1', '190'),
('20','Nick', 'Jones', '23', '7', '120'),
('21','Kim', 'Smith', '28', '5', '130'),
('22','Edward', 'Thomas', '29', '7', '120'),
('23','John', 'Depp', '30', '4', '130'),
('24','kate', 'Williamson', '31', '8', '190'),
('25','Billy', 'James', '25','6', '180'),
('26','Juniper', 'Kingston', '41', '4', '160'),
('27','Landwin', 'Paul', '42', '8', '170'),
('28','Frost', 'Ricardo', '39', '1', '180'),
('29','Willulf', 'Hector', '25', '1', '190'),
('30','Snorri', 'Douglas', '28', '7', '180'),
('31','Forri', 'Scott', '27', '5', '60'),
('32','Ava', 'Tommy', '32', '8', '90'),
('33','Ivy', 'Tristin', '33', '3', '120'),
('34','Liam', 'Troy', '36', '5', '150'),
('35','Ethan', 'Victor', '42', '1', '180'),
('36','Claude', 'Morris', '29', '2', '210'),
('37','Joshua', 'Orlando', '19', '6', '220'),
('38','Glen', 'Keith', '26', '4', '150'),
('39','Harvey', 'Stefan', '25', '6', '180'),
('40','Blake', 'Ernest', '24', '1', '120'),
('41','Antonio', 'Robin', '23', '8', '150'),
('42','Connor', 'samuel', '20', '2', '180'),
('43','Julian', 'Benjamin', '42', '7', '220'),
('44','Harold', 'Luka', '28', '2', '90'),
('45','Hunter', 'Terry', '30', '3', '120'),
('46','Shane', 'Cedric', '29', '2', '150'),
('47','Aaron', 'James', '25', '3', '60'),
('48','Angelina', 'Waltham', '26', '4','90'),
('49','Bradley', 'Brooks', '26', '7', '200'),
('50','Bailey', 'Barker', '19', '7', '150'),
('51','Lilly', 'Robert', '22', '4', '160'),
('52','Julie', 'Adams', '29', '1', '180'),
('53','Georgia', 'Atkinson', '31', '8', '190'),
('54','Donald', 'Jones', '28', '7', '210'),
('55','Dallin', '', '24', '7', '200'),
('56','Charlton', 'Doe', '32', '8', '90'),
('57','Byron', 'Doe', '21', '4', '70'),
('58','Darwin', 'Doe', '22', '6', '80'),
('59','Brandon', '', '19', '3', '120'),
('60','John', 'Bernadin', '22', '1', '90'),
('61','Baldwin', 'Jones', '26', '5', '60');

show tables;

######VIEW######

-- View all donor and recipient blood types matches
DROP VIEW if exists donor_recipient_bloodtype_V;
CREATE VIEW donor_recipient_bloodtype_V AS
SELECT d.donor_id, d.first_name AS donor_first_name, d.last_name AS donor_last_name, d.email AS donor_email, 
       r.recipient_id, r.first_name AS recipient_first_name, r.last_name AS recipient_last_name, r.email AS recipient_email, 
       b.blood_type_name
FROM donor_T AS d
JOIN recipient_T AS r ON d.blood_type = r.blood_type
JOIN blood_types_T AS b ON d.blood_type = b.blood_type_name;
select * from donor_recipient_bloodtype_V;

######stored procedures######

-- Donors who have donated blood in the past to figure out potential candidates
-- for future donations

DROP PROCEDURE IF EXISTS past_donor_info;

DELIMITER // 
CREATE PROCEDURE past_donor_info()
BEGIN

SELECT concat(first_name,' ',last_name) as 'Name', blood_type, gender from donor_T 
where last_donation IS NOT NULL group by donor_id;

END //
DELIMITER ;
CALL past_donor_info();

-- number of donors available wrt their blood_types for future inventory management
-- to be prepared for unforeseen situations

DROP PROCEDURE IF EXISTS donor_count;

DELIMITER // 
CREATE PROCEDURE donor_count()
BEGIN
SELECT COUNT(*) AS donor_count, blood_type
FROM donor_T
group by blood_type;
END //
DELIMITER ;
CALL donor_count();

-- Select the donor id, first and last name of patients where the state their hospital
-- is situated is California
DROP PROCEDURE IF EXISTS cali_donation_center;
DELIMITER //

CREATE PROCEDURE cali_donation_center()
BEGIN
SELECT donor_id, first_name, last_name
FROM donor_t
WHERE donor_id IN (
    SELECT donor_id
    FROM hospital_t
    WHERE hospital_state = 'CA'
    GROUP BY donor_id
);
END //
DELIMITER ;
CALL cali_donation_center();

####TRIGGERS####

-- Whenever there's a change in the donation center details i.e. when a donor donates 
-- blood again the donation center details and the staff details associated with him 
-- changes and at this event a BEFORE update trigger is invoked and the old location 
-- and staff details is stored in the audit tables for future references

drop table if exists donation_center_audit_T;
CREATE TABLE donation_center_audit_T (
  donation_center_id INT PRIMARY KEY,
  donor_id int not null,
  center_name VARCHAR(200) NOT NULL,
  address VARCHAR(100) NOT NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(2) NOT NULL,
  phone_number VARCHAR(10),
  email VARCHAR(200),
  contact_person VARCHAR(200),
  FOREIGN KEY (donor_id) REFERENCES donor_T (donor_id),
  changedat DATETIME DEFAULT NULL,
  action VARCHAR(50) DEFAULT NULL
);

DROP TRIGGER IF EXISTS before_donation_center_update;
CREATE TRIGGER before_donation_center_update
BEFORE UPDATE ON donation_center_T
FOR EACH ROW
INSERT INTO donation_center_audit_T
SET action = 'update',
donation_center_id = OLD.donation_center_id,
donor_id = OLD.donor_id,
center_name = OLD.center_name, 
address = OLD.address,
city = OLD.city, 
state = OLD.state,
phone_number= OLD.phone_number, 
email = OLD.email, 
contact_person = OLD.contact_person,
changedat = NOW();

update donation_center_T set 
center_name = 'Ochsner Blood Bank',
address = '17718 Cottonwood Lane',
city = 'Topeka', 
state = 'KS', 
phone_number = '7853883362', 
email = 'ochsner@email.com',
contact_person = 'Asmita Shetty' where donation_center_id = '00001';
select * from donation_center_audit_T;
select * from donation_center_T where donation_center_id = '00001';

drop table if exists staff_audit_T;
CREATE TABLE staff_audit_T (
staff_id INT NOT NULL AUTO_INCREMENT,
staff_first_name VARCHAR(50) NOT NULL,
staff_last_name VARCHAR(50) NOT NULL,
staff_phone VARCHAR(20) NOT NULL,
job_title VARCHAR(20) NOT NULL,
donation_center_id INT NOT NULL,
PRIMARY KEY (staff_id),
FOREIGN KEY (donation_center_id) REFERENCES donation_center_T (donation_center_id),
changedat DATETIME DEFAULT NULL,
action VARCHAR(50) DEFAULT NULL
);

DROP TRIGGER IF EXISTS before_donation_center_update_staff;
CREATE TRIGGER before_donation_center_update_staff
BEFORE UPDATE ON staff_T
FOR EACH ROW
INSERT INTO staff_audit_T
SET action = 'update',
donation_center_id = OLD.donation_center_id,
staff_first_name = OLD.staff_first_name,
staff_last_name = OLD.staff_last_name,
job_title = OLD.job_title,
staff_phone = OLD.staff_phone,
changedat = NOW();

update staff_T set 
staff_first_name = 'Asmita', 
staff_last_name = 'Shetty',
staff_phone = '878-1234' 
where donation_center_id ='00001';
select * from staff_audit_T;
#updated 
select * from staff_t where donation_center_id = '00001'; 


-- Now, we are going to create a delete trigger for the labs_t table. 
-- When a lab is removed from our system, we can delete their record and then store it in our audit table.
-- Create audit table.
CREATE TABLE IF NOT EXISTS labs_T_Audit_1 (
  lab_id INT,
  donor_id INT,
  blood_type VARCHAR(10),
  audit_action VARCHAR(10),
  audit_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Now, we create the delete trigger
-- Create trigger for AFTER delete
DROP TRIGGER IF EXISTS labs_T_Delete_After;
DELIMITER //
CREATE TRIGGER labs_T_Delete_After
AFTER DELETE ON labs_T
FOR EACH ROW
BEGIN
  INSERT INTO labs_T_Audit_1 (lab_id, donor_id, blood_type, audit_action)
  VALUES (OLD.lab_id, OLD.donor_id, OLD.blood_type, 'DELETE');
END //

DELIMITER ;
-- Now, let's test out the delete trigger
DELETE FROM labs_T WHERE lab_id = 6 ; 
-- Let us check the audit table
select * from labs_T_audit_1; 
-- Now, we can ensure that it has been deleted from the db
select * from labs_T where lab_id = 6; 

-- Create audit table for labs_T after an insert of new lab
Drop table if exists labs_T_Audit_2;
CREATE TABLE IF NOT EXISTS labs_T_Audit_2 (
  lab_id INT,
  donor_id INT,
  blood_type VARCHAR(10),
  audit_action VARCHAR(10),
  audit_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the insert trigger
DROP TRIGGER IF EXISTS labs_T_Insert;
DELIMITER //
CREATE TRIGGER labs_T_Insert
AFTER INSERT ON labs_T
FOR EACH ROW
BEGIN
  INSERT INTO labs_T_Audit_2 (lab_id, donor_id, blood_type, audit_action)
  VALUES (NEW.lab_id, NEW.donor_id, NEW.blood_type, 'INSERT');
END //
DELIMITER ;
-- Insert a record into the labs_T table
INSERT INTO labs_T (lab_id, donor_id, blood_type) VALUES (90, 110, 'O+');

-- Query the labs_T_Audit table to check if the trigger has captured the new record
SELECT * FROM labs_T_Audit_2 WHERE lab_id = 90;

-- Query the labs_T table to verify that the record has been inserted
SELECT * FROM labs_T WHERE lab_id = 90;


-- Display all triggers
show triggers;

###FUNCTION###

-- function to fetch blood type using blood_type_id
DROP FUNCTION IF EXISTS GET_DONOR_BLOODTYPE;
DELIMITER //
CREATE FUNCTION GET_DONOR_BLOODTYPE
(
BLOOD_TYPE_ID_PARAM INT
)
RETURNS VARCHAR(5)
DETERMINISTIC
BEGIN
DECLARE BLOOD_TYPE_VAR VARCHAR(5);
SELECT blood_type_name INTO BLOOD_TYPE_VAR
FROM blood_types_T
WHERE BLOOD_TYPE_ID = BLOOD_TYPE_ID_PARAM;
RETURN BLOOD_TYPE_VAR;
END //
DELIMITER ;
SELECT GET_DONOR_BLOODTYPE('3');

/*This function is used to find the staff ID of staff members using their first names and then selects all
 information for that staff member from the "staff_T" table using the retrieved staff ID.*/
DELIMITER //
CREATE FUNCTION get_staff_id
(
staff_first_name_param VARCHAR(50)
)
RETURNS int
DETERMINISTIC
BEGIN
DECLARE staff_id_var INT;
SELECT staff_id INTO staff_id_var FROM staff_T
WHERE staff_first_name = staff_first_name_param;
RETURN (staff_id_var);
END //

SELECT * FROM staff_T WHERE staff_id = get_staff_id('Abigail');


/*This function is used to find the hospital ID using hospital names and then selects all
 information for that hospital from the "hospital_T" table using the retrieved hospital ID.*/
DELIMITER //
CREATE FUNCTION get_hospital_id
(
hospital_name_param VARCHAR(50)
)
RETURNS int
DETERMINISTIC
BEGIN
DECLARE hospital_id_var INT;
SELECT hospital_id INTO hospital_id_var FROM hospital_T
WHERE hospital_name = hospital_name_param;
RETURN (hospital_id_var);
END //

SELECT * FROM hospital_T WHERE hospital_id = get_hospital_id("Tampa General Hospital");

###### SIMPLE QUERIES ######
/* This query will return the number of staff in the "staff_T" table */
SELECT COUNT(*) AS 'Number of Staff' from staff_t;

/*This query will return the information on donors who have not made any blood donations. */
SELECT * FROM donor_T WHERE last_donation IS NULL; 

/* This query displays the full name of donors in an easy-to-read format. 
Using the CONCAT function, the first and last name are returned in a single column and we have used an alias ‘Donor Full Name’ 
to label that returning column. */
SELECT CONCAT(first_name, ' ', last_name) AS `Donor Full Name` FROM donor_T;

/*This query retrieves the donor’s information for donors that last donated before December 25, 2021.*/
SELECT * FROM donor_T WHERE last_donation < '2021-12-25';

/* This query returns the results of all the nurses who are included in the staff table of this database.*/ 
SELECT * FROM staff_T WHERE job_title = 'Nurse';

#fetch donor details
select * from donor_T;

#fetch patient details
select * from recipient_T;

#donors who have donated blood in the past
SELECT concat(first_name,' ',last_name) as 'Name', blood_type, gender from donor_T 
where last_donation IS NOT NULL group by donor_id;

#number of donors available with respect to their blood_types to check blood supplies
#This information can be useful in a blood donation drive to help organizers plan 
#donation campaigns and ensure that an adequate supply of blood is available for 
#patients who need it 
SELECT COUNT(*) AS donor_count, blood_type FROM donor_T
group by blood_type;

-- Find the number of donation centers that are in Texas
select count(*) from donation_center_t where state = "TX";

-- Select all the donor's information that have O- as the blood type
select * from labs_t where blood_type = "O-";

-- Select the number of donation centers from each state and find out which state has more number of donation centers
Select state, count(*) AS count from donation_center_t group by state order by count desc;

-- Find the number of people from a each family that have donated blood
-- and the family that had more number of people that donated
select last_name, count(*) AS TOTAL from donor_t group by last_name order by TOTAL desc;

-- Find the amount of blood samples requested by a requester from lowest to highest
Select request_id, request_amount from REQUEST_T order by Request_Amount;

-- All the Requests post 4th April
select * FROM Request_T where Request_date > 04-04-2023;

-- Arranging all the donation quantities in ascending order of their donation in the donation Table(Donation_T)
select Donor_user_id, blood_type_id, quantity from Donation_T order By Quantity;

/* This query check for the blood details of donors whose blood expires before April 1st 2022 */
select blood_inventory_id, blood_type_id, blood_expiry_date, blood_storage_location, blood_category 
from blood_inventory_T where blood_expiry_date < '2022-04-01';

/* This query groups donor blood categories according to expiry date and their locations. 
It gives the user the ability to choose blood which might expire soon and needs to be used first. 
It also shows which blood expires last and can be used last. */
select blood_category,blood_storage_location, min(blood_expiry_date) as 'Use 1st', max(blood_expiry_date) as 'Use Last' 
from blood_inventory_T group by blood_category, blood_storage_location;

/* This query gives us the donor IDs of donors who are eligible to donate blood */
select donor_id, eligibility_status from donor_medical_history_T where eligibility_status = 'Y';

/* This query shows if a person who has not taken a covid vaccination and is suffering from cough can donate blood or not. 
The output shows that the person can donate blood */
select donor_id, diseases, infections, covid_vaccination_status, eligibility_status 
from donor_medical_history_T where (infections = 'cough' and covid_vaccination_status = 'N');

/* This query tells us that a person suffering from Malaria, Ebola, HIV or Hepatits B cannot donate his/her blood*/
select donor_id, diseases, infections, covid_vaccination_status, eligibility_status 
from donor_medical_history_T where diseases in ('malaria','ebola','hiv','hepatitis b');

#####COMPLEX QUERIES######
/* This self-join query searches through the donor table to retrieve the findings of all pairs of donors who have the same blood type. 
The WHERE clause helps to ensure there are no duplicates.*/
SELECT CONCAT(d.first_name,' ', d.last_name) AS 'Donor Name', d.blood_type,CONCAT(d1.first_name, ' ', d1.last_name) 
AS 'Matching Donor Name', d1.blood_type
FROM donor_T d
JOIN donor_T d1 ON d.blood_type = d1.blood_type
WHERE d.donor_id < d1.donor_id;

/*This subquery retrieves the donation center name, address, city, and state of the donation center where there is 
at least one doctor present as staff. */
SELECT center_name, address, city, state FROM donation_center_T
WHERE donation_center_id IN 
(SELECT donation_center_id 
FROM staff_T 
WHERE job_title = "Doctor");

-- Get the name of the donor and the blood type
SELECT donor_t.last_name, blood_types_t.blood_type_name
FROM donor_t
CROSS JOIN blood_types_t;

/*This will give you a result set that combines the columns from both tables where there is a matching donor_id.
 The INNER JOIN keyword will only return rows where there is a match in both tables.*/
SELECT donor_T.donor_id, concat(donor_T.first_name,' ', donor_T.last_name) as 'Full Name', 
donor_T.phone, donor_T.blood_type, donor_T.gender, donor_T.birth_date, 
donor_T.weight, donor_T.last_donation, donor_medical_history_T.diseases, 
donor_medical_history_T.infections, donor_medical_history_T.covid_vaccination_status AS 'Covid Vaccinated?', 
donor_medical_history_T.eligibility_status FROM donor_T
INNER JOIN donor_medical_history_T ON donor_T.donor_id = donor_medical_history_T.donor_id;

/*This query selects all columns from both tables and uses the NATURAL JOIN clause to join the two tables on the blood_type_id
 column. The resulting table will have columns for blood_inventory_id, blood_expiry_date, blood_storage_location, blood_category,
 blood_type_id, and blood_type_name.*/
SELECT * FROM blood_inventory_T
NATURAL JOIN blood_types_T;

/*This query selects all columns from both tables and uses the LEFT OUTER JOIN clause to join the two tables on the blood_type_id
 column. The resulting table will have columns for blood_type_id, blood_type_name, blood_inventory_id, blood_expiry_date,
 blood_storage_location, and blood_category. If there is no matching row in the blood_inventory table, the columns for
 blood_inventory_id, blood_expiry_date, blood_storage_location, and blood_category will be filled with null values.*/
SELECT * FROM blood_types_T
LEFT OUTER JOIN blood_inventory_T
ON blood_types_T.blood_type_id = blood_inventory_T.blood_type_id;




