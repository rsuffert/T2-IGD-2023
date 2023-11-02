USE airplanes_flights;

-- Q3
SELECT * FROM airplanes WHERE airline_id = 2 ORDER BY capacity DESC;
-- Result:
-- [airline_id, capacity, airplane_id]
--      2,        221,          3
--      2,        10,           4
--      2,        145,          5
--      2,        92,           6

-- Q4
SELECT * FROM flights WHERE airplane_id = 4 ORDER BY departure DESC;
-- Result:
-- [airplane_id, departure, airline_id, arrival, flight_id, flightno]
-- 4, '2023-10-31 18:30:00', 789, '2023-10-31 21:45:00', 7532, 'XYZ654'
-- 4, '2023-10-31 16:30:00', 123, '2023-10-31 18:30:00', 753, 'XYZ456'