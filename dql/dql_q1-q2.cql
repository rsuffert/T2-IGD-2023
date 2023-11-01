USE bookings_passengers;

-- Q1
SELECT * FROM bookings WHERE flight_id = 1;
-- Result:
-- [flight_id, passenger_id, price, booking_id, seat]
--      1,          1,       251.0,     1,      'A1'
--      1,          1,       250.0,     2,      'A2'

-- Q2
SELECT * FROM passengers WHERE passenger_id = 1;
-- Result:
-- [passenger_id, birthdate, city, country, emailaddress, firstname, lastname, passportno, sex, street, telephoneno, zip]
--  1, '1990-01-15', 'New York', 'USA', 'johndoe@gmail.com', 'John', 'Doe', 'P123456', 'M', '123 Main St', '555-123-4567', 10001