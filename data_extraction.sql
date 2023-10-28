ALTER SESSION SET NLS_NUMERIC_CHARACTERS = '. '; -- use '.' instead of ',' for decimal places

-- BUILD INSERTS FOR THE BOOKINGS TABLE
SELECT DISTINCT
    'INSERT INTO bookings(flight_id, passenger_id, price, booking_id, seat) VALUES(' ||
    f.flight_id || ', ' || p.passenger_id || ', ' || b.price || ', ' || b.booking_id || ', ' || '''' || TRIM(b.seat) || '''' || ');'
FROM
    arruda.air_flights f
    INNER JOIN arruda.air_bookings b ON b.flight_id = f.flight_id
    INNER JOIN arruda.air_passengers p ON p.passenger_id = b.passenger_id;

-- BUILD INSERTS FOR THE PASSENGERS TABLE
SELECT DISTINCT
    'INSERT INTO passengers(passenger_id, passportno, firstname, lastname, birthdate, sex, street, city, zip, country, emailaddress, telephoneno) VALUES(' ||
    p.passenger_id || ', ''' || TRIM(p.passportno) || ''', ''' || p.firstname || ''', ''' || p.lastname || ''', ''' || 
    TO_CHAR(pd.birthdate, 'yyyy-mm-dd hh24:mi:ss') || ''', ''' || pd.sex || ''', ''' || pd.street || ''', ''' ||
    pd.city || ''', ' || pd.zip || ', ''' || pd.country || ''', ''' || pd.emailaddress || ''', ''' || 
    pd.telephoneno || ''');'
FROM
    arruda.air_passengers p
    INNER JOIN arruda.air_passengers_details pd ON p.passenger_id = pd.passenger_id;

-- BUILD INSERTS FOR THE AIRPLANES TABLE
SELECT DISTINCT
    'INSERT INTO airplanes(airline_id, capacity, airplane_id) VALUES(' ||
    al.airline_id || ', ' || ap.capacity || ', ' || ap.airplane_id || ');'
FROM
    arruda.air_airlines al
    INNER JOIN arruda.air_airplanes ap ON al.airline_id = ap.airline_id;

-- BUILD INSERTS FOR THE FLIGHTS TABLE
SELECT DISTINCT
    'INSERT INTO flights(airplane_id, departure, flight_id, flightno, arrival, airline_id) VALUES(' ||
    ap.airplane_id ||  ', ' || '''' || TO_CHAR(f.departure,'yyyy-mm-dd hh24:mi:ss') || ''', ' || f.flight_id || ', ' || 
    '''' || TRIM(f.flightno) || ''', ' || '''' || TO_CHAR(f.arrival,'yyyy-mm-dd hh24:mi:ss') || ''', ' || f.airline_id || ');'
FROM
    air_airplanes ap
    INNER JOIN air_flights f ON ap.airplane_id = f.airplane_id;