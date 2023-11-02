DROP KEYSPACE IF EXISTS airplanes_flights;
CREATE KEYSPACE IF NOT EXISTS airplanes_flights
WITH replication = {
    'class': 'SimpleStrategy',
    'replication_factor': 1
};
USE airplanes_flights;

CREATE TABLE airplanes (
    airline_id      varint,
    capacity        varint,
    airplane_id     varint,
    PRIMARY KEY (airline_id, capacity, airplane_id)
) WITH CLUSTERING ORDER BY (capacity DESC, airplane_id ASC);

CREATE TABLE flights (
    airplane_id     varint,
    departure       timestamp,
    flight_id       varint,
    flightno        ascii,
    arrival         timestamp,
    airline_id      varint,
    PRIMARY KEY (airplane_id, departure, flight_id)
) WITH CLUSTERING ORDER BY (departure DESC, flight_id ASC);