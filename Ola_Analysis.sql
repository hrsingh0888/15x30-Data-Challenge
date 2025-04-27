use ola;

#1. Retrive all successful booking

create view Successfull_bookings as 
select * from bookings 
where Booking_Status = 'Success';
select * from Successfull_bookings;

#2. Find average ride distance for each vehicle type;
select Vehicle_Type, AVG(Ride_Distance)
as avg_distance from bookings
Group By Vehicle_Type;

#3. Get total number of cancelled ride by Customer
Create view Ride_Canceled_By_Customers as 
select Count(*) from Bookings
where Booking_Status = "Canceled by Customer"

select * from Ride_Canceled_By_Customers;

#4. List the top 5 Customers who booked the highest number of rides
select Customer_ID, Count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides DESC LIMIT 5;

#5. Get the number of rides canceled by drivers due to personal and car related issues:
Create view Ride_Canceled_By_Driver as 
select Count(*) from bookings 
where Canceled_Rides_by_Driver = 'Personal & Car related issue';
select * from Ride_Canceled_By_Driver;

#6. Find the maximum and minimum driver rating for Prime Sedan:
create view Max_Min_Rating_of_PrimeSedan as
select max(Driver_Ratings) as max_rating,
Min(Driver_Ratings) as min_rating
from bookings
where Vehicle_Type = 'Prime Sedan';
select * from Max_Min_Rating_of_PrimeSedan;

#7. Retrive all rides where payment was made using UPI:
Select * from bookings
where Payment_Method = 'UPI';