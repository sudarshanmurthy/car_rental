--QUERIES

--1

select offer_details.Promo_code,Description,Promo_Type,Tot_Amount
from offer_details inner join reservation
on reservation.Promo_code=offer_details.Promo_code;


--2

select car_user.license_no,Fname,Lname,Rental_Amount,Insurance_Amount,Tot_Amount
from reservation inner join  car_user
on car_user.license_no = reservation.license_no;


--3

select count(VIN)
from car_user
where seating_capacity>4;

--4


select count(amount_paid)
from payment
where paid_by_cash='Y';


--5

select count(license_no)
from car_user
where address like '%Greenville%';

--6

select amount_paid
from payment
where reservation_id in (select reservation_id
                        from reservation
                        where VIN in (select VIN
                                    from car
                                    where car_type='Minivan'));



--7



select fname as firstname,lname as lastname
from car_user
where license_no in (select license_no
                        from reservation
                        where reservation_id in (select reservation_id
                                                from payment
                                                 where amount_paid>100::MONEY
                                                order by amount_paidd desc ));



--8



select fname as firstname,lname as lastname
from car_user
where exists  (select *
                        from reservation
                        where exists  (select reservation_id
                                                from additional_driver
                                                  ));



--9

select reservation_id
from reservation
where drop_location_id in(select location_id
                        from rental_location
                        where zip_code='76512');



--10


select amount_paid
from payment
where reservation_id in(select reservation_id
                        from reservation
                        where license_no in (
                                            select license_no
                                            from car_user
                                                            ));




--11

select fname,lname,email
from car_user
where license_no in(select license_no
                    from reservation
                    where Promo_code in(
                                        select Promo_code
                                        from offer_details
                                        where is_one_time='N'
                                                              ));


--12



select fname,lname
from car_user
where license_no in(select license_no
				   from reservation 
				   where VIN in (select VIN
								from car
								where disability_friendly='Y'));


--13
select fname,lname
from car_user
where license_no in(select license_no
				   from user_credentials 
				   where year_of_membership='2016');