DROP KEYSPACE IF EXISTS airplanes_flights;
CREATE KEYSPACE IF NOT EXISTS airplanes_flights
WITH replication = {
    'class': 'SimpleStrategy'.
    'replication_factor': 1
};
USE airplanes_flights;