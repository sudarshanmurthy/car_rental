--Insert
INSERT 
INTO Car.RENTAL_LOCATION (Location_ID,Phone,Email,Street_Name,State,Zip_Code) 
VALUES 
(101,'5312513266','cem@gmail.com','980 Addison Road, Seatle','WA',75122)

insert
INTO Car.RENTAL_LOCATION
(Location_ID,Phone,Email,Street_Name,State,Zip_Code) 
VALUES 
(102,'9726032222','mali@gmail.com',' 111, Berlington Road, Portland','WA',75243)
insert
INTO Car.RENTAL_LOCATION
(Location_ID,Phone,Email,Street_Name,State,Zip_Code) 
VALUES 
(103,'9721903121','sena@gmail.com',' 9855 Shadow Way, Seatle','WA',75211)
insert INTO Car.RENTAL_LOCATION
(Location_ID,Phone,Email,Street_Name,State,Zip_Code) 
VALUES 
(104,'721903121','hazal@gmail.com','434 Harrodswood Road, Seatle','WA',76512)
insert INTO Car.RENTAL_LOCATION
(Location_ID,Phone,Email,Street_Name,State,Zip_Code) 
VALUES 
(105,'5026981045','gözde@gmail.com','7788 internal Drive, Seatle','WA',77888)

-- Insert Car.CarType
INSERT INTO 
Car.CAR_TYPE 
(Car_Type,Price_Per_Day) 
VALUES 
('Economy',50)
INSERT INTO Car.CAR_TYPE
(Car_Type,Price_Per_Day) 
VALUES 
('Standard',75)
INSERT INTO Car.CAR_TYPE
(Car_Type,Price_Per_Day) 
VALUES 
('SUV',100)
INSERT INTO Car.CAR_TYPE
(Car_Type,Price_Per_Day) 
VALUES 
('MiniVan',150)
INSERT INTO Car.CAR_TYPE
(Car_Type,Price_Per_Day) 
VALUES 
('Premium',200)

--insert Car.INSURANCE

INSERT
INTO Car.INSURANCE
(Insurance_Type,Bodily_Coverage,Medical_Coverage,Collision_Coverage) 
VALUES 
('Liability',25000.00,50000.00,0.00)
INSERT INTO Car.INSURANCE
(Insurance_Type,Bodily_Coverage,Medical_Coverage,Collision_Coverage) 
VALUES 
('Comprehensive',50000,50000,50000)

--INSERT Car.CAR_INSURANCE
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('Economy','Liability',9.99)
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('Standard','Liability',10.99)
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('SUV','Liability',12.99)
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('MiniVan','Liability',14.99)
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('Premium','Liability',19.99)
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('Economy','Comprehensive',19.99)
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('Standard','Comprehensive',19.99)
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('SUV','Comprehensive',24.99)
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('MiniVan','Comprehensive',29.99)
INSERT INTO Car.CAR_INSURANCE
(Car_Type,Insurance_Type,Insurance_Price)
VALUES
('Premium','Comprehensive',49.99)

--INSERT Car.CAR_USER

INSERT 
INTO Car.CAR_USER
(License_No,FName,Lname,Email,Address,Phone,DOB,USER_TYPE)
VALUES
('E12905109','Mehmet','Onde','mali@gmail.com','1701 N.Campbell Rd, Dallas, TX-75243','5426895259',('1995/05/20'),'Guest')

INSERT INTO Car.CAR_USER
(License_No,FNAME,LNAME,Email,Address,Phone,DOB,USER_TYPE)
VALUES
('G30921561','Sena','Bulut','senabulut@hotmail.com','101 Meritline drive','5426895257',('1996/08/3'),'Customer')
INSERT INTO Car.CAR_USER
(License_No,FNAME,LNAME,Email,Address,Phone,DOB,USER_TYPE)
VALUES
('R12098127','Hazal','Fýrat','hazalfirat@hotmail.com','43 Greenville Road','5426895256',('1997/03/23'),'Guest')
INSERT INTO Car.CAR_USER
(License_No,FNAME,LNAME,Email,Address,Phone,DOB,USER_TYPE)
VALUES
('M12098127','Cem','Cebi','cemberkecebi@gmail.com','43 Greenville Road','5426895255',('1997/07/20'),'Customer')
INSERT INTO Car.CAR_USER
(License_No,FNAME,LNAME,Email,Address,Phone,DOB,USER_TYPE)
VALUES
('M12098187','Gözde','Sismanoglu','gozde@gmail.com','43 Greenville Road','5426895261',('1997/09/2'),'Customer')


--INSERT USER_CREDENTIALS
INSERT
INTO Car.USER_CREDENTIALS
(Login_ID,Password,Year_Of_Membership,License_No)
VALUES
('gozde','1234','2015','M12098187')
INSERT INTO Car.USER_CREDENTIALS
(Login_ID,Password,Year_Of_Membership,License_No)
VALUES
('sena','1234','2017','G30921561')
INSERT INTO Car.USER_CREDENTIALS
(Login_ID,Password,Year_Of_Membership,License_No)
VALUES
('cem','1234','2016','M12098127')
INSERT INTO Car.USER_CREDENTIALS
(Login_ID,Password,Year_Of_Membership,License_No)
VALUES
('hazal','1234','2016','R12098127')
INSERT INTO Car.USER_CREDENTIALS
(Login_ID,Password,Year_Of_Membership,License_No)
VALUES
('mali','1234','2016','E12905109')


--Insert Car.CARD_DETAILS
INSERT
INTO Car.CARD_DETAILS
(Login_ID,Name_On_Card,Card_No,Expiry_Date,CVV,Billing_Address)
VALUES
('mali','Mehmet Ali Onde','4735111122223333',('2018/01/15'),'287','1530 S.Campbell Rd, Dallas, TX 75251')
INSERT INTO Car.CARD_DETAILS
(Login_ID,Name_On_Card,Card_No,Expiry_Date,CVV,Billing_Address)
VALUES
('sena','Sena Bulut','4233908110921001',('2018/01/15'),'419','101 Meritline drive')
INSERT INTO Car.CARD_DETAILS
(Login_ID,Name_On_Card,Card_No,Expiry_Date,CVV,Billing_Address)
VALUES
('gozde','Gozde Sismanuglu','823990811009209',('2020/01/15'),'419','43 Greenville Road')
INSERT INTO Car.CARD_DETAILS
(Login_ID,Name_On_Card,Card_No,Expiry_Date,CVV,Billing_Address)
VALUES
('hazal','Hazal Fýrat','1200000210921909',('2019/05/15'),'419','43 Greenville Road')
INSERT INTO Car.CARD_DETAILS
(Login_ID,Name_On_Card,Card_No,Expiry_Date,CVV,Billing_Address)
VALUES
('cem','Cem Berke Çebi','4533777190721001',('2018/01/15'),'419','43 Greenville Road')


--INSERT Car.CAR
INSERT
INTO Car.CAR
(VIN,Location_ID,Reg_No,Status,Seating_Capacity,Disability_Friendly,Car_Type,Model,Year,Color)
VALUES
('F152206785240289',101,'TXF101','Available',5,'N','Economy','Mazda3','2007','Gold')
INSERT INTO Car.CAR
(VIN,Location_ID,Reg_No,Status,Seating_Capacity,Disability_Friendly,Car_Type,Model,Year,Color)
VALUES
('T201534710589051',101,'KYQ101','Available',5,'Y','Standard','Toyota Camry','2012','Grey')
INSERT INTO Car.CAR
(VIN,Location_ID,Reg_No,Status,Seating_Capacity,Disability_Friendly,Car_Type,Model,Year,Color)
VALUES
('E902103289341098',102,'XYZ671','Available',5,NULL,'Premium','BMW','2015','Black')
INSERT INTO Car.CAR
(VIN,Location_ID,Reg_No,Status,Seating_Capacity,Disability_Friendly,Car_Type,Model,Year,Color)
VALUES
('R908891209418173',103,'DOP391','Unavailable',7,NULL,'SUV','Mercedes','2014','White')
INSERT INTO Car.CAR
(VIN,Location_ID,Reg_No,Status,Seating_Capacity,Disability_Friendly,Car_Type,Model,Year,Color)
VALUES
('N892993994858292',104,'RAC829','Available',15,NULL,'MiniVan','Volvo','2013','Black')

--INSERT Car.OFFER_DETAILS
INSERT 
INTO Car.OFFER_DETAILS
(PROMO_CODE,Description,PROMO_TYPE,Is_One_Time,PERCENTAGE,Discounted_Amount,Status)
VALUES
('CHRISTMAS10','Christmas 10% offer','Percentage','N',10.00,NULL,'Available')
INSERT 
INTO Car.OFFER_DETAILS
(PROMO_CODE,Description,PROMO_TYPE,Is_One_Time,PERCENTAGE,Discounted_Amount,Status)
VALUES
('July25','July $25.00 discount','Discounted Amount','Y',NULL,25.00,'Expired')
INSERT 
INTO Car.OFFER_DETAILS
(PROMO_CODE,Description,PROMO_TYPE,Is_One_Time,PERCENTAGE,Discounted_Amount,Status)
VALUES
('LaborDay5','Labor Day $5.00 offer','Discounted Amount','Y',NULL,5.00,'Expired')
INSERT 
INTO Car.OFFER_DETAILS
(PROMO_CODE,Description,PROMO_TYPE,Is_One_Time,PERCENTAGE,Discounted_Amount,Status)
VALUES
('NewYear10','New Year 10% offer','Percentage','N',10.00,NULL,'Available')
INSERT 
INTO Car.OFFER_DETAILS
(PROMO_CODE,Description,PROMO_TYPE,Is_One_Time,PERCENTAGE,Discounted_Amount,Status)
VALUES
('blackfriday','blackfriday 15% offer','Percentage','N',15.00,NULL,'Expired')


--Insert Car.RESERVATION
INSERT 
INTO Car.RESERVATION
(Reservation_ID,Start_Date,End_Date,Meter_Start,Meter_End,Rental_Amount,Insurance_Amount,Status,Actual_End_Date,License_No,VIN,Promo_Code,Additional_Amount,Tot_Amount,Penalty_Amount,Insurance_Type,Drop_Location_ID)
VALUES
(1,('2017/11/06'),('2017/11/12'),81256,81300,119.70,9.95,'Completed',('2017/11/12'),'E12905109','F152206785240289',NULL,NULL,129.65,0.00,'Liability',101)
INSERT INTO  Car.RESERVATION
(Reservation_ID,Start_Date,End_Date,Meter_Start,Meter_End,Rental_Amount,Insurance_Amount,Status,Actual_End_Date,License_No,VIN,Promo_Code,Additional_Amount,Tot_Amount,Penalty_Amount,Insurance_Type,Drop_Location_ID)
VALUES
(2,('2017/10/20'),('2017/10/24'),76524,76590,119.80,9.95,'Completed',('2017/10/24'),'G30921561','T201534710589051',NULL,NULL,129.75,0.00,'Liability',101)
INSERT INTO  Car.RESERVATION
(Reservation_ID,Start_Date,End_Date,Meter_Start,Meter_End,Rental_Amount,Insurance_Amount,Status,Actual_End_Date,License_No,VIN,Promo_Code,Additional_Amount,Tot_Amount,Penalty_Amount,Insurance_Type,Drop_Location_ID)
VALUES
(3,('2017/12/06'),('2017/12/12'),82001,NULL,659.40,29.95,'Reserved',NULL,'M12098127','N892993994858292','NewYear10',NULL,689.35,0.00,'Comprehensive',104)
INSERT INTO  Car.RESERVATION
(Reservation_ID,Start_Date,End_Date,Meter_Start,Meter_End,Rental_Amount,Insurance_Amount,Status,Actual_End_Date,License_No,VIN,Promo_Code,Additional_Amount,Tot_Amount,Penalty_Amount,Insurance_Type,Drop_Location_ID)
VALUES
(4,('2017/09/01'),('2017/09/02'),51000,51100,89.95,24.95,'Completed',('2017/09/02'),'M12098187','R908891209418173',NULL,NULL,114.90,0.00,'Comprehensive',103)
INSERT INTO  Car.RESERVATION
(Reservation_ID,Start_Date,End_Date,Meter_Start,Meter_End,Rental_Amount,Insurance_Amount,Status,Actual_End_Date,License_No,VIN,Promo_Code,Additional_Amount,Tot_Amount,Penalty_Amount,Insurance_Type,Drop_Location_ID)
VALUES
(5,('2017/08/13'),('2017/08/15'),51000,51100,299.00,99.9,'Completed',('2017/08/15'),'R12098127','E902103289341098',NULL,NULL,398.90,0.00,'Comprehensive',105)


--Insert Car.PAYMENT

INSERT 
INTO Car.PAYMENT
(Payment_ID,Amount_Paid,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Reservation_ID,Login_ID,Saved_Card_No,Paid_By_Cash)
VALUES
(1001,129.65,'4735111122223333',('2018/01/15'),'Mehmet Ali Onde','100','1530 S.Campbell Rd, Dallas, TX 75251',1,NULL,NULL,NULL)
INSERT INTO Car.PAYMENT
(Payment_ID,Amount_Paid,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Reservation_ID,Login_ID,Saved_Card_No,Paid_By_Cash)
VALUES
(1002,300.00,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,'Y')
INSERT INTO Car.PAYMENT
(Payment_ID,Amount_Paid,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Reservation_ID,Login_ID,Saved_Card_No,Paid_By_Cash)
VALUES
(1003,98.90,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,'Y')
INSERT INTO Car.PAYMENT
(Payment_ID,Amount_Paid,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Reservation_ID,Login_ID,Saved_Card_No,Paid_By_Cash)
VALUES
(1004,689.35,NULL,NULL,NULL,NULL,NULL,3,'cem','4735111122223333',NULL)
INSERT INTO Car.PAYMENT
(Payment_ID,Amount_Paid,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Reservation_ID,Login_ID,Saved_Card_No,Paid_By_Cash)
VALUES
(1005,114.91,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,'Y')

--Insert Car.ADDITIONAL_DRIVER
INSERT 
INTO Car.ADDITIONAL_DRIVER
(Reservation_ID,Name,DOB)
VALUES
(1,'William',('1970/07/15'))
INSERT INTO Car.ADDITIONAL_DRIVER
(Reservation_ID,Name,DOB)
VALUES
(2,'Green',('1987/06/15'))
INSERT INTO Car.ADDITIONAL_DRIVER
(Reservation_ID,Name,DOB)
VALUES
(2,'Robert',('1990/12/17'))
INSERT INTO Car.ADDITIONAL_DRIVER
(Reservation_ID,Name,DOB)
VALUES
(4,'Brad',('1966/12/12'))
INSERT INTO Car.ADDITIONAL_DRIVER
(Reservation_ID,Name,DOB)
VALUES
(5,'Steve',('1976/05/28'))


--INSERT Car.ACCESSORIES

INSERT 
INTO Car.ACCESSORIES
(Accessory_ID,Type,Amount)
VALUES
(1,'GPS Navigation',49.95)
INSERT INTO Car.ACCESSORIES
(Accessory_ID,Type,Amount)
VALUES
(2,'GPS Navigation',49.95)
INSERT INTO Car.ACCESSORIES
(Accessory_ID,Type,Amount)
VALUES
(3,'GPS Navigation',49.95)
INSERT INTO Car.ACCESSORIES
(Accessory_ID,Type,Amount)
VALUES
(4,'Baby Seater',29.95)
INSERT INTO Car.ACCESSORIES
(Accessory_ID,Type,Amount)
VALUES
(5,'Baby Seater',29.95)


--INSERT Car.ACCESSORY_RESERVED
INSERT 
INTO Car.ACCESSORY_RESERVED
(Accessory_ID,Reservation_ID)
VALUES
(1,1)
INSERT INTO Car.ACCESSORY_RESERVED
(Accessory_ID,Reservation_ID)
VALUES
(1,4)
INSERT INTO Car.ACCESSORY_RESERVED
(Accessory_ID,Reservation_ID)
VALUES
(5,5)
INSERT INTO Car.ACCESSORY_RESERVED
(Accessory_ID,Reservation_ID)
VALUES
(5,2)
INSERT INTO Car.ACCESSORY_RESERVED
(Accessory_ID,Reservation_ID)
VALUES
(2,4)