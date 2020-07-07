--View
--1

Create View getTotalAmount
As
select CAR_USER.License_No,Fname,Lname,Rental_Amount,Insurance_Amount,Tot_Amount
from RESERVATION inner join CAR_USER
on CAR_USER.License_No= RESERVATION.License_No


--select *from getTotalAmount

--2
create view WhoUsePromoCode
as
select OFFER_DETAILS.Promo_Code,Description,Promo_Type,Tot_Amount
from OFFER_DETAILS inner join RESERVATION
on RESERVATION.Promo_Code=OFFER_DETAILS.Promo_Code

--3

create view RentalCarInformation
as
select CAR.Car_Type,Seating_Capacity,Model,Year,Color,Price_Per_Day
from CAR_TYPE inner join CAR
on  CAR.Car_Type=CAR_TYPE.Car_Type
