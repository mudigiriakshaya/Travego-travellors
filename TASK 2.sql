#TASK II
#a.How many females and how many male passengers traveled a minimum distance of 600 KMs?

SELECT COUNT(*) AS FemalePassengers FROM PASSENGER WHERE GENDER = 'F' AND DISTANCE >= 600;



#Write a query to display the passenger details whose travel distance is greater than 500 and
#who are traveling in a sleeper bus.
SELECT * FROM PASSENGER WHERE DISTANCE > 500 AND BUS_TYPE = 'Sleeper';


#c.Select passenger names whose names start with character 'S'  
SELECT PASSENGER_NAME FROM PASSENGER WHERE PASSENGER_NAME LIKE 'S%'; 

#d.Calculate price charged for each passenger displaying 
#Passenger name, Boarding City, Destination City, Bus_Type, Price in the output
SELECT * FROM passenger; 
SELECT* FROM PRICE;
SELECT Passenger_name, Boarding_City, Destination_City, PASSENGER.Bus_Type, SUM(Price) AS PRICES FROM PASSENGER 
INNER JOIN PRICE ON PASSENGER.PASSENGER_ID=PRICE.ID 
GROUP BY Passenger_name, Boarding_City, Destination_City, PASSENGER.Bus_Type; 

#e.What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?  

SELECT * FROM PRICE;
SELECT PASSENGER_NAME,PRICE,PRICE.DISTANCE FROM PASSENGER INNER JOIN PRICE ON 
PASSENGER.PASSENGER_ID=PRICE.ID WHERE PRICE.DISTANCE=1000 AND PRICE.BUS_TYPE='SITTING'; 

#f.What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
SELECT * FROM PASSENGER;
SELECT BUS_TYPE FROM PASSENGER WHERE BOARDING_CITY='Bengaluru' AND DESTINATION_CITY='Panaji';
# FROM BANGULURE TO PANAJI NO DATA AVAILABLE
# FROM PANAJI TO BENGALURE
SELECT PASSENGER.BUS_TYPE ,PASSENGER_NAME, PRICE FROM PASSENGER
INNER JOIN PRICE
ON PASSENGER.PASSENGER_ID=PRICE.ID WHERE BOARDING_CITY='PANAJI' AND DESTINATION_CITY='BENGALURU' AND
PASSENGER_NAME='PALLAVI';


#ALTER THE COLUMN CATEGORY WITH THE VALUE "NON-AC" WHERE THE BUS TYPE IS SLEEPER 
SET SQL_SAFE_UPDATES=0;
UPDATE PASSENGER SET CATEGORY="NON-AC" WHERE BUS_TYPE='SLEEPER';
SELECT * FROM PASSENGER;

#DELETE ANY ENTRY FROM THE TABLE WHERE THE PASSENGERNAME IS PIYUSH AND COMMIT THIS CHANGE IN THE DATABASE
DELETE FROM PASSENGER WHERE PASSENGER_NAME = 'PIYUSH';
SET SQL_SAFE_UPDATES=0;

#Truncate the table passenger and comment on the number of rows in the table (explain if required)

TRUNCATE TABLE PASSENGER;

#Delete the table passenger from the database. 

DROP TABLE PASSENGER;

    
SELECT * FROM PASSENGER;




