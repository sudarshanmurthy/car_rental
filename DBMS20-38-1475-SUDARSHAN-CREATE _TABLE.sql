create database CarRental

create schema Car


CREATE TABLE Car.RENTAL_LOCATION
(
  Location_ID INT PRIMARY KEY,  
  Phone CHAR(10) NOT NULL,
  Email VARCHAR(25),
  Street_Name VARCHAR(40) NOT NULL,
  State CHAR(2) NOT NULL,
  Zip_Code CHAR(6) NOT NULL
);

CREATE TABLE Car.CAR_TYPE
(
  Car_Type VARCHAR(15) PRIMARY KEY,
  Price_Per_Day money NOT NULL  
);

CREATE TABLE Car.INSURANCE
(
  Insurance_Type VARCHAR(15) PRIMARY KEY,
  Bodily_Coverage money NOT NULL,
  Medical_Coverage money NOT NULL,
  Collision_Coverage money NOT NULL
);

CREATE TABLE Car.CAR_INSURANCE
(
  Car_Type VARCHAR(15),
  Insurance_Type VARCHAR(15),
  Insurance_Price money NOT NULL,
  PRIMARY KEY(Car_Type,Insurance_Type),
  CONSTRAINT CARTYPEFK
  FOREIGN KEY (Car_Type) REFERENCES Car.CAR_TYPE(Car_Type)
              ON DELETE CASCADE,
  CONSTRAINT INSURANCETYPEFK
  FOREIGN KEY (Insurance_Type) REFERENCES Car.INSURANCE(Insurance_Type)
              ON DELETE CASCADE            
);

CREATE TABLE Car.CAR_USER
(
  License_No VARCHAR(15) PRIMARY KEY,
  Fname VARCHAR(15) NOT NULL,
  Lname VARCHAR(15) NOT NULL,
  Email VARCHAR(25) NOT NULL UNIQUE,
  Address VARCHAR(100) NOT NULL,
  Phone CHAR(10) NOT NULL,
  DOB DATE NOT NULL,
  User_Type VARCHAR(10) NOT NULL
);

CREATE TABLE Car.USER_CREDENTIALS
(
  Login_ID VARCHAR(15) PRIMARY KEY,
  Password VARCHAR(15) NOT NULL,
  Year_Of_Membership Char(4) NOT NULL ,
  License_No VARCHAR(15) NOT NULL,
  CONSTRAINT USRLIC
  FOREIGN KEY (License_No) REFERENCES Car.CAR_USER(License_No)
              ON DELETE CASCADE
);

CREATE TABLE Car.CARD_DETAILS
(
  Login_ID VARCHAR(15) NOT NULL,
  Name_On_Card VARCHAR(50) NOT NULL,
  Card_No CHAR(16) NOT NULL,
  Expiry_Date DATE NOT NULL,
  CVV CHAR(3) NOT NULL,
  Billing_Address VARCHAR(50) NOT NULL,
  PRIMARY KEY(Login_ID,Card_No),
  CONSTRAINT USRCARDFK
  FOREIGN KEY (Login_ID) REFERENCES Car.USER_CREDENTIALS(Login_ID)
              ON DELETE CASCADE
);

CREATE TABLE Car.CAR
(
  VIN CHAR(17) PRIMARY KEY,
  Location_ID INT NOT NULL,
  Reg_No VARCHAR(15) UNIQUE,
  Status VARCHAR(15) NOT NULL,
  Seating_Capacity INT NOT NULL,
  Disability_Friendly CHAR(1),
  Car_Type VARCHAR(15) NOT NULL, 
  Model VARCHAR(20),
  Year CHAR(4),
  Color VARCHAR(10),
  CONSTRAINT CARVINTYPEFK
  FOREIGN KEY (Car_Type) REFERENCES Car.CAR_TYPE(Car_Type)
              ON DELETE CASCADE,
  CONSTRAINT CARVINRENTALFK
  FOREIGN KEY (Rental_Location_ID) REFERENCES Car.RENTAL_LOCATION(Location_ID)
              ON DELETE CASCADE         
);

CREATE TABLE Car.OFFER_DETAILS
(
  Promo_Code VARCHAR(15) PRIMARY KEY,
  Description VARCHAR(50),
  Promo_Type VARCHAR(20) NOT NULL,
  Is_One_Time CHAR(1),
  Percentage DECIMAL(5,2),
  Discounted_Amount Money,
  Status VARCHAR(10) NOT NULL
);
CREATE TABLE Car.RESERVATION
(
  Reservation_ID INT PRIMARY KEY,
  Start_Date DATE NOT NULL,
  End_Date DATE NOT NULL,
  Meter_Start INT NOT NULL,
  Meter_End INT,
  Rental_Amount money NOT NULL,
  Insurance_Amount money NOT NULL,
  Actual_End_Date DATE NULL,
  Status VARCHAR(10) NOT NULL,
  License_No VARCHAR(15) NOT NULL,
  VIN CHAR(17) NOT NULL,
  Promo_Code VARCHAR(15),
  Additional_Amount money,
  Tot_Amount money NOT NULL,
  Insurance_Type VARCHAR(15),
  Penalty_Amount money,
  Drop_Location_ID INT,  
  CONSTRAINT RSERVLOCATIONFK
  FOREIGN KEY (Drop_Location_ID) REFERENCES Car.RENTAL_LOCATION(Location_ID)
              ON DELETE CASCADE,
  CONSTRAINT RESLICENSEFK
  FOREIGN KEY (License_No) REFERENCES Car.CAR_USER(License_No)
              ON DELETE CASCADE,
  --CONSTRAINT VINRESERVATIONFK
  --FOREIGN KEY (VIN) REFERENCES Car.CAR(VIN) -Bu eklenecek
  --            ON DELETE CASCADE,
  CONSTRAINT PROMORESERVATIONFK
  FOREIGN KEY (Promo_Code) REFERENCES Car.OFFER_DETAILS(Promo_Code)
              ON DELETE CASCADE,
  CONSTRAINT INSURESERVATIONFK
  FOREIGN KEY (Insurance_Type) REFERENCES Car.INSURANCE(Insurance_Type)
              ON DELETE CASCADE
);
CREATE TABLE Car.PAYMENT
(
  Payment_ID INT PRIMARY KEY,
  Amount_Paid Money NOT NULL,
  Card_No CHAR(16),
  Expiry_Date DATE,
  Name_On_Card VARCHAR(50),
  CVV CHAR(3),
  Billing_Address VARCHAR(50),
  Reservation_ID INT NOT NULL,
  Login_ID VARCHAR(15),
  Saved_Card_No CHAR(16),
  Paid_By_Cash CHAR(1),
  CONSTRAINT PAYMENTRESERVATIONFK
  FOREIGN KEY (Reservation_ID) REFERENCES Car.RESERVATION(Reservation_ID)
              ON DELETE CASCADE,
  --CONSTRAINT PAYMENTLOGINFK
  --FOREIGN KEY (Login_ID,Saved_Card_No) REFERENCES Car.CARD_DETAILS(Login_ID,Card_No)
  --            ON DELETE CASCADE
);
CREATE TABLE Car.ADDITIONAL_DRIVER
(
  Reservation_ID INT,
  NAME VARCHAR(50) NOT NULL,  
  DOB DATE NOT NULL,
  PRIMARY KEY(Reservation_ID,NAME),
  CONSTRAINT ADDTIONALFK
  FOREIGN KEY (Reservation_ID) REFERENCES Car.RESERVATION(Reservation_ID)
              ON DELETE CASCADE
);

CREATE TABLE Car.ACCESSORIES
(
  Accessory_ID INT PRIMARY KEY,
  Type VARCHAR(15) NOT NULL,
  Amount money NOT NULL
);
CREATE TABLE Car.ACCESSORY_RESERVED
(
  Accessory_ID INT,
  Reservation_ID INT,
  PRIMARY KEY(Accessory_ID,Reservation_ID),
  CONSTRAINT ACCESSORYRESERVFK
  FOREIGN KEY (Reservation_ID) REFERENCES Car.RESERVATION(Reservation_ID)
              ON DELETE CASCADE,
  CONSTRAINT ACCESSFK
  FOREIGN KEY (Accessory_ID) REFERENCES Car.ACCESSORIES(Accessory_ID)
              ON DELETE CASCADE
);