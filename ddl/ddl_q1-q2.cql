DROP KEYSPACE IF EXISTS bookings_passengers;
CREATE KEYSPACE IF NOT EXISTS bookings_passengers
WITH replication = {
    'class': 'SimpleStrategy',
    'replication_factor': 1
};
USE bookings_passengers;

CREATE TABLE bookings (
    flight_id       varint,
    passenger_id    varint,
    price           float,
    booking_id      varint,
    seat            ascii,
    PRIMARY KEY (flight_id, booking_id)
) WITH CLUSTERING ORDER BY (booking_id ASC);

CREATE TABLE passengers (
    passenger_id    varint,
    passportno      ascii,
    firstname       text,
    lastname        text,
    birthdate       date,
    sex             ascii,
    street          text,
    city            text,
    zip             varint,
    country         text,
    emailaddress    ascii,
    telephoneno     ascii,
    PRIMARY KEY (passenger_id)
);